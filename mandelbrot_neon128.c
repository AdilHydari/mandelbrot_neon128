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
  /* Parse the command line arguments. */
  if (argc != 9) {
    printf("Usage:   %s <xmin> <xmax> <ymin> <ymax> <maxiter> <xres> <yres> <out.ppm>\n", argv[0]);
    printf("Example: %s 0.27085 0.27100 0.004640 0.004810 1000 640 480 pic.ppm\n", argv[0]);
    exit(EXIT_FAILURE);
  }

  // const float xmin = atof(argv[1]);
  // const float xmax = atof(argv[2]);
  // const float ymin = atof(argv[3]);
  // const float ymax = atof(argv[4]);
  /* The window in the plane. */
  const float xmin = (atof(argv[1]));
  const float xmax = (atof(argv[2]));
  const float ymin = (atof(argv[3]));
  const float ymax = (atof(argv[4]));

  printf("xmin: %f, xmax: %f, ymin: %f, ymax: %f\n", xmin, xmax, ymin, ymax);

  /* Maximum number of iterations, at most 65535. */
  const int maxiter = (atoi(argv[5]));

  /* Image size, width is given, height is computed. */
  const int xres = (strtol(argv[6], NULL, 10));
  const int yres = (strtol(argv[7], NULL, 10)); //(xres*(ymax-ymin))/(xmax-xmin);

  printf("xres: %i, yres: %i\n", xres, yres);
  /* The output file name */
  const char* filename = argv[8];

  /* Open the file and write the header. */
  FILE * fp = fopen(filename,"wb");
  if (fp == NULL) {
    printf("Error opening file: %s\n", filename);
    exit(EXIT_FAILURE);
  }
  char *comment="# Mandelbrot set";/* comment should start with # */

  /*write ASCII header to the file*/
  fprintf(fp,
          "P6\n# Mandelbrot, maxiter=%d\n",
          maxiter);

  /* Step size */
  float stepx=((xmax - xmin)/xres);
  float stepy=((ymax-ymin)/yres);

  float x, y; /* Coordinates of the current point in image*/
   /* Coordinates of the point in the mandelbrot set */
  int i,j; /* Pixel iterator */
  int k; /* Iteration iterator */

  for (j = 0; j < maxiter; j++) { //iterate through y axis
    y = ymin + j * stepy; 
    float32x4_t my = vdupq_n_f32(y);
    for(i = 0; i < strtol(argv[7], NULL, 10); i++) { //iterate through x axis
        x = xmin + i * stepx;
        float32x4_t mx = vdupq_n_f32(x);
        float Zx = 0.0;
        float Zy = 0.0;
        float Zx2 = Zx*Zx;
        float Zy2 = Zy*Zy;
        float32x4_t ZZx = vdupq_n_f32(Zx);
        float32x4_t ZZy = vdupq_n_f32(Zy);
        float32x4_t ZZx2;
        float32x4_t ZZy2;
      /* iterate the point */
        float32x4_t mmaxiter = vdupq_n_f32(maxiter);
        float32x4_t mk = vdupq_n_f32(k);
        float32x4_t mcl;
        float32x4_t mcl2 = vdupq_n_f32(4.0);
        float32x4_t two = vdupq_n_f32(2);
      for (k = 1; (k < maxiter && (Zx2 + Zy2 < 4.0)); k++) {
            ZZy = vaddq_f32(vmulq_f32(vmulq_f32(two,ZZx),ZZy),my);
            ZZx = vaddq_f32(vsubq_f32(ZZx2,ZZy2),mx);
            ZZx2 = vmulq_f32(ZZx, ZZx);
            ZZy2 = vmulq_f32(ZZy,ZZy);
      };
      /* compute  pixel color and write it to file */
      if (vdups_laneq_u32(vcgeq_f32(mk, mmaxiter),3)) {
        /* interior */
        // 48 bit color = 6 bytes
        const unsigned char black[] = {0, 0, 0, 0, 0, 0};
        fwrite (black, 6, 1, fp);
      }
      /*
      By splitting k into high and low bytes by logic shifting 8 bits (1 byte), the code uses this information to create a gradient effect in the image. 
      The high byte is used for the Red and Blue channels, and the low byte is used for the Green channel. 
      This creates a smoother transition of colors in the image, with the high byte contributing to the overall color 
      and the low byte fine-tuning the shade of green.
      The high byte will be used for RB, and low for G
      */
      else {
        /* exterior */
        uint32x4_t color[6];
        uint32x4_t mmk = vdupq_n_u32(k);
        uint32x4_t ZSS = vdupq_n_u32(255);
        color[0] = vshrq_n_u32(mmk, 8); //MSB
        color[1] = vandq_u32(mmk,ZSS); //LSB
        color[2] = vshrq_n_u32(mmk, 8);
        color[3] = vandq_u32(mmk,ZSS);
        color[4] = vshrq_n_u32(mmk, 8);
        color[5] = vandq_u32(mmk,ZSS);
        fwrite(color, 6, 1, fp);
      };
    }
  }
  fclose(fp);
  return 0;
}

