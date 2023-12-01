#include "arm_neon.h"
#include <fstream>
#include <iostream>
#include <chrono>
#include <thread>
#include "simde/x86/avx2.h"
#include <vector>
#include "EasyBMP.hpp" //very easy lib to use, the webp api seems much more complicated to create a colormap, at leats with easybmp I can actually read the code and figure out how to use the primitives
#include "webp/encode.h"

struct ColorScheme {
  EasyBMP::RGBColor mapping [8];

  ColorScheme () {
    mapping[0].SetColor(255, 0, 0);
    mapping[1].SetColor(238, 51, 0);
    mapping[2].SetColor(9, 1, 47);
    mapping[3].SetColor(4, 4, 73);
    mapping[4].SetColor(0, 7, 100);
    mapping[5].SetColor(12, 44, 138);
    mapping[6].SetColor(24, 82, 177);
    mapping[7].SetColor(57, 125, 209);
  }

  EasyBMP::RGBColor Color (int itr) {
    return mapping[itr % 8];
  }
};

template <class CS = ColorScheme>
struct MandelbrotMultiThreaded {
  int height;
  int width;
  int max;

  float xres;
  float yres;
  float x0, y0;
  float xl, yl, yh;

  CS cs;

  void Configure (
    int   height, 
    int   width,
    int   max = 128,
    float xl = -0.745,
    float xh = 0.325,
    float yl = -0.325,
    float yh = 0.325 
  ) {
    this->x0      = xl;
    this->y0      = yl;
    this->xl      = xl;
    this->yl      = yl;
    this->yh      = yh;
    this->xres    = (xh - xl) / width;
    this->yres    = (yh - yl) / height;
    this->max     = max;
    this->width   = width;
    this->height  = height;
  }

  void LineRenderer (int i, EasyBMP::Image *buff) {
    float xres2 = xres*2;
    float xres3 = xres*3;
    /*
    fvec_t x01 = simde_mm256_add_ps(simde_mm256_set1_ps(xl), simde_mm256_setr_ps(0, xres, 2*xres, 3*xres, 4*xres, 5*xres, 6*xres, 7*xres));
    fvec_t x02 = simde_mm256_add_ps(simde_mm256_set1_ps(8*xres + xl), simde_mm256_setr_ps(0, xres, 2*xres, 3*xres, 4*xres, 5*xres, 6*xres, 7*xres));
    fvec_t y0 = simde_mm256_set1_ps((i) * yres - yh);
*/

    float x_iter[4] = {0, xres,xres2,xres3};
    float32x4_t x01 = vaddq_f32( vdupq_n_f32(xl), (vld1q_f32((x_iter)))); //simde_mm256_setr_ps (0, xres, 2*xres, 3*xres, 4*xres, 5*xres, 6*xres, 7*xres));
    float32x4_t x02 = vaddq_f32(vdupq_n_f32(8*xres + xl), vld1q_f32((x_iter)));
    float32x4_t y0 = vdupq_n_f32((i) * yres - yh);

    for (int xc = 0; xc < width; xc += 8) {
      int32x4_t itr1  = vdupq_n_s32(0);
      int32x4_t itr2  = vdupq_n_s32(0);
      float32x4_t x1    = vdupq_n_f32(0);
      float32x4_t x2    = vdupq_n_f32(0);
      float32x4_t y1    = vdupq_n_f32(0);
      float32x4_t y2    = vdupq_n_f32(0);
      float32x4_t ab1   = vdupq_n_f32(0);
      float32x4_t ab2   = vdupq_n_f32(0);

      int32x4_t aCmp1 = vdupq_n_s32(0);
      int32x4_t aCmp2 = vdupq_n_s32(0);
      int32x4_t iCmp1 = vdupq_n_s32(0);
      int32x4_t iCmp2 = vdupq_n_s32(0);
      
      int cond1 = 1;
      int cond2 = 1;

      // manually unrolled loop by factor of 2
      // decreases register dependency hazards and increases perf
      while (cond1==0 | cond2==0) {
        auto xx1   = vmulq_f32(x1, x1);
        auto xx2   = vmulq_f32(x2, x2);
        auto yy1   = vmulq_f32(y1, y1);
        auto yy2   = vmulq_f32(y2, y2);
        auto xyn1  = vmulq_f32(x1, y1);
        auto xyn2  = vmulq_f32(x2, y2);
        auto xy1   = vaddq_f32(xyn1, xyn1);
        auto xy2   = vaddq_f32(xyn2, xyn2);
        auto xn1   = vsubq_f32(xx1, yy1);
        auto xn2   = vsubq_f32(xx2, yy2);
        ab1        = vaddq_f32(xx1, yy1);
        ab2        = vaddq_f32(xx2, yy2);
        y1         = vaddq_f32(xy1, y0);
        y2         = vaddq_f32(xy2, y0);
        x1         = vaddq_f32(xn1, x01);
        x2         = vaddq_f32(xn2, x02); 
        aCmp1      = vreinterpretq_s32_u32(vcltq_f32(ab1, vdupq_n_f32(4)));
        aCmp2      = vreinterpretq_s32_u32(vcltq_f32(ab2, vdupq_n_f32(4)));
        iCmp1      = vreinterpretq_s32_u32(vceqq_s32(itr1, vdupq_n_s32(max)));
        iCmp2      = vreinterpretq_s32_u32(vceqq_s32(itr2, vdupq_n_s32(max)));
        int32x4_t s32 = vandq_s32((vmvnq_s32(iCmp1)),(aCmp1));
        cond1 = (vgetq_lane_s32(s32, 0) == 0 | vgetq_lane_s32(s32, 1) == 0);
        int32x4_t s32_2 = vandq_s32((vmvnq_s32(iCmp2)),(aCmp2));
        cond2 = (vgetq_lane_s32(s32_2, 0) == 0 | vgetq_lane_s32(s32_2, 1) == 0);
        // int32x4_t cond1t = vbicq_s32(iCmp1, aCmp1); 
        // cond1 = !(vgetq_lane_s32(cond1t, 0) | vgetq_lane_s32(cond1t, 1));
        // int32x4_t cond2t = vbicq_s32(iCmp2, aCmp2);
        // cond2 = !(vgetq_lane_s32(cond2t, 0) | vgetq_lane_s32(cond2t, 1));
        // only add one to the iterations of those whose ab < 4 and itr < max
        // aCmp = 1 for ab < 4
        // iCmp = 0 for itr < max
        auto inc1  = vbicq_s32(vmvnq_s32(iCmp1), aCmp1);
        auto inc2  = vbicq_s32(vmvnq_s32(iCmp2), aCmp2);
        // inc = -1 for (itr < max) & (ab < 4)
        // itr = itr - inc [- (-1) = + 1]
        itr1       = vsubq_s32(itr1, inc1);
        itr2       = vsubq_s32(itr2, inc2);
      }

      x01 = vaddq_f32(x01, vdupq_n_f32(8*xres));
      x02 = vaddq_f32(x02, vdupq_n_f32(8*xres));
      // collect results and update buffer
      int res[8] __attribute__ ((aligned(16)));
      vst1q_s32((int32_t*)res, itr1);
      vst1q_s32((int32_t*)(res + 4), itr2);
      for (int c = 0; c < 8; ++c) {
        buff->SetPixel(xc + c, i, cs.Color(res[c]));
      }
    }
  }

  void RenderMultiThreaded (EasyBMP::Image *buff) {
    // use openMP to handle threading for us
    // tell the compiler to create a task queue
    // it is faster because different sections of the set take different time
    // so dynamic scheduling performs better than static
    #pragma omp parallel for schedule(dynamic)
    for (int i = 0; i < height; ++i) {
      LineRenderer(i, buff);
    }
  }

  auto RenderWithTime (EasyBMP::Image *buff, int runs = 1) {
    // find the number of available threads
    const int pars = std::thread::hardware_concurrency();
    std::cout << "Using " << pars << " threads" << std::endl;

    auto start = std::chrono::high_resolution_clock::now();
    while (runs--) RenderMultiThreaded(buff);
    auto end = std::chrono::high_resolution_clock::now();
    auto dur = std::chrono::duration_cast<std::chrono::nanoseconds>(end-start).count();
    return dur;
  }
};

int main (int argc, char **argv) {

  int w = 640;
  int h = 480;
  int M = 128;
  int C = 1;

  float xl = -0.745;
  float xh = 0.325;
  float yl = -0.325;
  float yh = 0.325; 

  if (argc >= 3) {
    w = atoi(argv[1]);
    h = atoi(argv[2]);
  }

  if (argc >= 4) {
    M = atoi(argv[3]);
  }

  if (argc >= 5) {
    C = atoi(argv[4]);
  }

  EasyBMP::Image bmp (w, h, "render.bmp");
  MandelbrotMultiThreaded<ColorScheme> mb;
  mb.Configure(h,w,M,xl,xh,yl,yh);

  auto dur = mb.RenderWithTime(&bmp, C);

  std::cout << 
    "Rendering done\n"
    "Avg time per frame: " 
    << (dur / (double)C) * 1e-6 << " (ms)\n"
    "Total time taken:   "
    << dur * 1e-6 << " (ms)" << std::endl;

  bmp.Write();
  return 0;
}
