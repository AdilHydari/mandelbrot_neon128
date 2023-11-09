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
  const float32x4_t xmin = vdupq_n_f32(atof(argv[1]));
  const float32x4_t xmax = vdupq_n_f32(atof(argv[2]));
  const float32x4_t ymin = vdupq_n_f32(atof(argv[3]));
  const float32x4_t ymax = vdupq_n_f32(atof(argv[4]));



  /* Maximum number of iterations, at most 65535. */
  const int maxiter = (atoi(argv[5]));

  /* Image size, width is given, height is computed. */
  const float32x4_t xres = vdupq_n_s32(strtol(argv[6], NULL, 10));
  const float32x4_t yres = vdupq_n_s32(strtol(argv[7], NULL, 10)); //(xres*(ymax-ymin))/(xmax-xmin);

  /* The output file name */
  const char* filename = argv[8];

  /* Open the file and write the header. */
  FILE * fp = fopen(filename,"wb");
  char *comment="# Mandelbrot set";/* comment should start with # */

  /*write ASCII header to the file*/
  fprintf(fp,
          "P6\n# Mandelbrot, maxiter=%d\n",
          maxiter);

  /* Step size */
  const float32x4_t stepx=(vsubq_f32(xmax,xmin)/xres);
  const float32x4_t stepy=(vsubq_f32(ymax,ymin)/yres);

  float32x4_t x, y; /* Coordinates of the current point in image*/
   /* Coordinates of the point in the mandelbrot set */
  int i,j; /* Pixel iterator */
  int k; /* Iteration iterator */

  for (j = 0; j < strtol(argv[6], NULL, 10); j++) { //iterate through y axis
    float32x4_t mj = vdupq_n_f32(j);
    y = ymin + mj * stepy; 
    for(i = 0; i < strtol(argv[7], NULL, 10); i++) { //iterate through x axis
        float32x4_t mi = vdupq_n_f32(i);
        x = xmin + mi * stepx;
        struct imaginary {
        float Zx;
        float Zy;
        float Zx2;
        float Zy2;
        };
        struct imaginaries {
          size_t size;
          float* Zxs;
          float* Zys;
          float* Zx2s;
          float* Zy2s;
        };
        struct imaginary Z;
        struct imaginaries const Zs;
        Z.Zx = 0.0;
        Z.Zy = 0.0;
        Z.Zx2 = Z.Zx*Z.Zx;
        Z.Zy2 = Z.Zy*Z.Zy;
      /* iterate the point */
      for (k = 1; k < maxiter && (Z.Zx2 + Z.Zy2 < 4.0); k++) {
            Z.Zy = 2 * Z.Zx * Z.Zy + y;
            Z.Zx = Z.Zx2 - Z.Zy2 + x;
            Z.Zx2 = Z.Zx * Z.Zx;
            Z.Zy2 = Z.Zy * Z.Zy;
      };
      /* compute  pixel color and write it to file */
      if (k >= maxiter) {
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
        unsigned char color[6];
        color[0] = k >> 8; //MSB
        color[1] = k & 255; //LSB
        color[2] = k >> 8;
        color[3] = k & 255;
        color[4] = k >> 8;
        color[5] = k & 255;
        fwrite(color, 6, 1, fp);
      };
    }
  }
  fclose(fp);
  return 0;
}
