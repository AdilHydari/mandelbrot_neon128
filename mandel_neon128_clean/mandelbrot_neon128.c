/*
  https://rosettacode.org/wiki/Mandelbrot_set#PPM_non_interactive VERY GOOD REFERENCE
  convert -normalize pic.ppm pic.png

  The resulting pic.png is still gray, but the levels will be nicer. You
  can also add colors, for instance:

  convert -negate -normalize -fill blue -tint 100 pic.ppm pic.png

*/

#include <arm_neon.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <stdint.h>


int main(int argc, char* argv[])
{
  // /* Parse the command line arguments. */
  // if (argc != 1) {
  //   printf("Usage:   %s <xmin> <xmax> <ymin> <ymax> <maxiter> <xres> <yres> <out.ppm>\n", argv[0]);
  //   printf("Example: %s 0.27085 0.27100 0.004640 0.004810 1000 640 480 pic.ppm\n", argv[0]);
  //   exit(EXIT_FAILURE);
  // }

  // const float xmin = atof(argv[1]);
  // const float xmax = atof(argv[2]);
  // const float ymin = atof(argv[3]);
  // const float ymax = atof(argv[4]);
  // const char* filename = argv[0];

//   /* Open the file and write the header. */

  /* The window in the plane. */
  struct spec {
    int width;
    int height;
    int depth;
    float xlim[2];
    float ylim[2];
    int iterations;
};
  struct spec spec = {
    .width = 1440,
    .height = 1080,
    .depth = 256,
    .xlim = {-2.5, 1.5},
    .ylim = {-1.5, 1.5},
    .iterations = 256
  };

  /*
    const dx4 = vdupq_n_f32(4*dx);  
    vectordcount = vdupq_n_f32(one); //   1   1   1   1
    vectory = (y, y, y, y);
    for (int j = 0; j < height; j += 4) {

  
    vectorx = (x, x+dx, x+2dx, x+3dx);
    for (int i = 0; i < width; i += 4) {


      // inner mandelbrot loop
      for (int k = 0; k < iterations; k++) {
        float32x4_t zr = vectorx;
        float32x4_t zi = vectory;
        float32x4_t zr2 = vmulq_f32(zr, zr);
        float32x4_t zi2 = vmulq_f32(zi, zi);
        float32x4_t zrzi = vaddq_f32(zr2, zi2);
        //for (k = 1; k < maxiter && (u2 + v2 < 4.0); k++)
          if (vgetq_lane_u32(vcgeq_f32(mk, vdupq_n_f32(iterations)),0)
              && vgetq_lane_u32(vcgeq_f32(mk, vdupq_n_f32(iterations)),1)
              && vgetq_lane_u32(vcgeq_f32(mk, vdupq_n_f32(iterations)),2)
              && vgetq_lane_u32(vcgeq_f32(mk, vdupq_n_f32(iterations)),3)
              && vgetq_lane_u32(vcltq_f32(zrzi,threshold),0)
              && vgetq_lane_u32(vcltq_f32(zrzi,threshold),1)
              && vgetq_lane_u32(vcltq



    vectorx = vaddq_f32(vectorx, dx4);
    }
      vectory = vaddq_f32(vectory, dy);
    }
  
  
  */
    const struct spec *s;
    float32x4_t xmin = vdupq_n_f32(s->xlim[0]);
    float32x4_t ymin = vdupq_n_f32(s->ylim[0]);
    float32x4_t xscale = vdupq_n_f32((s->xlim[1] - s->xlim[0]) / s->width);
    float32x4_t yscale = vdupq_n_f32((s->ylim[1] - s->ylim[0]) / s->height);
    float32x4_t threshold = vdupq_n_f32(4);
    float32x4_t one = vdupq_n_f32(1);
    float32x4_t iter_scale = vdupq_n_f32(1.0f / s->iterations);
    float32x4_t depth_scale = vdupq_n_f32(s->depth - 1);
    float32x4_t c0123;
    // FILE * fp = fopen(filename,"wb");
    // if (fp == NULL) {
    //   printf("Error opening file: %s\n", filename);
    //   exit(EXIT_FAILURE);
    // }
    // char *comment="# Mandelbrot set";/* comment should start with # */

    // /*write ASCII header to the file*/
    // fprintf(fp,
    //         "P6\n# Mandelbrot, maxiter=%d\n",
    //         s->iterations);
    for (int i = 0; i < 4; i++)
        c0123 = vsetq_lane_f32(i, c0123, i); //recurse through the 4 lane vector (resolution) using c0123
    for (int y = 0; y < s->height; y++) {
        for (int i = 0; i < s->width; i += 4) {
            float32x4_t mx = vaddq_f32(vdupq_n_f32(x), c0123);
            float32x4_t my = vdupq_n_f32(y);
            float32x4_t cr = vaddq_f32(vmulq_f32(mx, xscale), xmin);
            float32x4_t ci = vaddq_f32(vmulq_f32(my, yscale), ymin);
            float32x4_t zr = cr;
            float32x4_t zi = ci;
            int k = 1;
            float32x4_t mk = vdupq_n_f32(k);
            for(k=1; k < s->iterations; k++) {
              float32x4_t zr2 = vmulq_f32(zr, zr);
              float32x4_t zi2 = vmulq_f32(zi, zi);
              float32x4_t zrzi = vaddq_f32(zr2, zi2);
              //for (k = 1; k < maxiter && (u2 + v2 < 4.0); k++)
                if (vgetq_lane_u32(vcgeq_f32(mk, vdupq_n_f32(s->iterations)),0)
                    && vgetq_lane_u32(vcgeq_f32(mk, vdupq_n_f32(s->iterations)),1)
                    && vgetq_lane_u32(vcgeq_f32(mk, vdupq_n_f32(s->iterations)),2)
                    && vgetq_lane_u32(vcgeq_f32(mk, vdupq_n_f32(s->iterations)),3)
                    && vgetq_lane_u32(vcltq_f32(zrzi,threshold),0)
                    && vgetq_lane_u32(vcltq_f32(zrzi,threshold),1)
                    && vgetq_lane_u32(vcltq_f32(zrzi,threshold),2)
                    && vgetq_lane_u32(vcltq_f32(zrzi,threshold),3)) {
                  float32x4_t zr1 = vaddq_f32(vsubq_f32(vmulq_f32(zr, zr),vmulq_f32(zi,zi)),cr);
                  float32x4_t zi1 = vaddq_f32(vaddq_f32(vmulq_f32(zr, zr),vmulq_f32(zi,zi)),cr);
                  float32x4_t mag2 = vaddq_f32(zr2, zi2);
                  uint32x4_t thresholding = vcltq_f32(mag2,threshold);
                  //increment mk
                  const uint32x4_t uone = vreinterpretq_u32_f32(one);
                  float32x4_t inc = vreinterpretq_f32_u32(vandq_u32(thresholding, uone));
                  mk = vaddq_f32(inc, mk); 
                }
            }
        mk = vmulq_f32(mk, iter_scale); //mk is multiplied by iteration scale in order to reflect the number of iterations
        mk= vrecpeq_f32(vrsqrteq_f32(mk)); //an inverse square root is performed on mk in order to normalize the mk vector into a unit vector with a length of one, this can then be reinterpreted as an unsigned integer, as it is only one lane. From there, we can cast a type of (unsigned char*)&, which is the type of the color array; which stores all the pixels for the madelbrot set. We can then write those pixels into a temporary allocated pixel matrix, with the same parameters as defined by the color matrix, from there it is a simple matrix copy from the temp matrix to the actual allocated image (color).
        mk = vmulq_f32(mk, depth_scale); //mk is multiplied by depth scale in order to reflect the depth (of the pixel) in the mandelbrot set
        unsigned char *color =malloc(spec.width * spec.height * 3);
        
        if (k >= s->iterations) {
        /* interior */
          const unsigned char black[] = {0, 0, 0, 0, 0, 0};
          fwrite (black, 6, 1, stdout);
      }
        else {
        /* exterior */
          unsigned char color[6];
          color[0] = k >> 8;
          color[1] = k & 255;
          color[2] = k >> 8;
          color[3] = k & 255;
          color[4] = k >> 8;
          color[5] = k & 255;
          fwrite(color, 6, 1, stdout);
      };
        }
    }
  fclose(stdout);
  return 0;
}
  // const float32x4_t xmin = vdupq_n_f32(atof(argv[1]));
  // const float32x4_t xmax = vdupq_n_f32(atof(argv[2]));
  // const float32x4_t ymin = vdupq_n_f32(atof(argv[3]));
  // const float32x4_t ymax = vdupq_n_f32(atof(argv[4]));

//   printf("xmin: %f, ymin: %f, ", xmin[0], ymin[0]);
//   printf("xscale: %f, yscale: %f\n", xscale[0], yscale[0]);

//   /* Maximum number of iterations, at most 65535. */
//   const int maxiter = (atoi(argv[5]));

//   /* Image size, width is given, height is computed. */
//   const float32x4_t xres = vdupq_n_f32(strtol(argv[6], NULL, 10));
//   const float32x4_t yres = vdupq_n_f32(strtol(argv[7], NULL, 10)); //(xres*(ymax-ymin))/(xmax-xmin);

//   printf("xres: %f, yres: %f\n", xres[0], yres[0]);
//   /* The output file name */
//   const char* filename = argv[8];

//   /* Open the file and write the header. */
//   FILE * fp = fopen(filename,"wb");
//   if (fp == NULL) {
//     printf("Error opening file: %s\n", filename);
//     exit(EXIT_FAILURE);
//   }
//   char *comment="# Mandelbrot set";/* comment should start with # */

//   /*write ASCII header to the file*/
//   fprintf(fp,
//           "P6\n# Mandelbrot, maxiter=%d\n",
//           maxiter);

//   /* Step size */
//   float32x4_t stepx=(vsubq_f32(xmax,xmin)/xres);
//   float32x4_t stepy=(vsubq_f32(ymax,ymin)/yres);

//   float32x4_t x, y; /* Coordinates of the current point in image*/
//    /* Coordinates of the point in the mandelbrot set */
//   int i,j; /* Pixel iterator */
//   int k; /* Iteration iterator */

//   for (j = 0; j < strtol(argv[6], NULL, 10); j++) { //iterate through y axis
//     float32x4_t mj = vdupq_n_f32(j);
//     y = ymin + mj * stepy; 
//     for(i = 0; i < strtol(argv[7], NULL, 10); i++) { //iterate through x axis
//         float32x4_t mi = vdupq_n_f32(i);
//         x = xmin + mi * stepx;
//         float Zx = 0.0;
//         float Zy = 0.0;
//         float Zx2 = Zx*Zx;
//         float Zy2 = Zy*Zy;
//         float32x4_t ZZx = vdupq_n_f32(Zx);
//         float32x4_t ZZy = vdupq_n_f32(Zy);
//         float32x4_t ZZx2;
//         float32x4_t ZZy2;
//       /* iterate the point */
//         float32x4_t mmaxiter = vdupq_n_f32(maxiter);
//         float32x4_t mk = vdupq_n_f32(k);
//         float32x4_t mcl;
//         float32x4_t mcl2 = vdupq_n_f32(4.0);
//         float32x4_t two = vdupq_n_f32(2);
//       for (k = 1; (k < maxiter && (Zx2 + Zy2 < 4.0)); k++) {
//             ZZy = vaddq_f32(vmulq_f32(vmulq_f32(two,ZZx),ZZy),y);
//             ZZx = vaddq_f32(vsubq_f32(ZZx2,ZZy2),x);
//             ZZx2 = vmulq_f32(ZZx, ZZx);
//             ZZy2 = vmulq_f32(ZZy,ZZy);
//       };
//       /* compute  pixel color and write it to file */
//       if (vdups_laneq_u32(vcgeq_f32(mk, mmaxiter),3)) {
//         /* interior */
//         // 48 bit color = 6 bytes
//         const unsigned char black[] = {0, 0, 0, 0, 0, 0};
//         fwrite (black, 6, 1, fp);
//       }
//       /*
//       By splitting k into high and low bytes by logic shifting 8 bits (1 byte), the code uses this information to create a gradient effect in the image. 
//       The high byte is used for the Red and Blue channels, and the low byte is used for the Green channel. 
//       This creates a smoother transition of colors in the image, with the high byte contributing to the overall color 
//       and the low byte fine-tuning the shade of green.
//       The high byte will be used for RB, and low for G
//       */
//       else {
//         /* exterior */
//         uint32x4_t color[6];
//         uint32x4_t mmk = vdupq_n_u32(k);
//         uint32x4_t ZSS = vdupq_n_u32(255);
//         color[0] = vshrq_n_u32(mmk, 8); //MSB
//         color[1] = vandq_u32(mmk,ZSS); //LSB
//         color[2] = vshrq_n_u32(mmk, 8);
//         color[3] = vandq_u32(mmk,ZSS);
//         color[4] = vshrq_n_u32(mmk, 8);
//         color[5] = vandq_u32(mmk,ZSS);
//         fwrite(color, 6, 1, fp);
//       };
//     }
//   }
//   fclose(fp);
//   return 0;
// }

