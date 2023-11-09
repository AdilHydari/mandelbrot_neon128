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
  if (argc != 8) {
    printf("Usage:   %s <xmin> <xmax> <ymin> <ymax> <maxiter> <xres> <out.ppm>\n", argv[0]);
    printf("Example: %s 0.27085 0.27100 0.004640 0.004810 1000 1024 pic.ppm\n", argv[0]);
    exit(EXIT_FAILURE);
  }

  /* The window in the plane. */
  const float xmin = atof(argv[1]);
  const float xmax = atof(argv[2]);
  const float ymin = atof(argv[3]);
  const float ymax = atof(argv[4]);



  /* Maximum number of iterations, at most 65535. */
  const uint16_t maxiter = (unsigned short)atoi(argv[5]);

  /* Image size, width is given, height is computed. */
  const int xres = atoi(argv[6]);
  const int yres = (xres*(ymax-ymin))/(xmax-xmin);

  /* The output file name */
  const char* filename = argv[7];

  /* Open the file and write the header. */
  FILE * fp = fopen(filename,"wb");
  char *comment="# Mandelbrot set";/* comment should start with # */

  /*write ASCII header to the file*/
  fprintf(fp,
          "P6\n# Mandelbrot, xmin=%lf, xmax=%lf, ymin=%lf, ymax=%lf, maxiter=%d\n%d\n%d\n%d\n",
          xmin, xmax, ymin, ymax, maxiter, xres, yres, (maxiter < 256 ? 256 : maxiter));

  /* Step size */
  float stepx=(xmax-xmin)/xres;
  float stepy=(ymax-ymin)/yres;

  float x, y; /* Coordinates of the current point in image*/
  float Zx, Zy; /* Coordinates of the point in the mandelbrot set */
  int i,j; /* Pixel iterator */
  int k; /* Iteration iterator */

  for (j = 0; j < yres; j++) { //iterate through y axis
    y = ymin + j * stepy; 
    for(i = 0; i < xres; i++) { //iterate through x axis
        struct imaginary {
        float Zx;
        float Zy;
        float Zx2;
        float Zy2;
        } __attribute__((aligned (64)));
        struct imaginary Z;
        Z.Zx = 0.0;
        Z.Zy = 0.0;
        Z.Zx2 = Z.Zx*Z.Zx;
        Z.Zy2 = Z.Zy*Z.Zy;
        x = xmin + i * stepx;
      /* iterate the point */
      for (k = 1; k < maxiter && (Zx2 + Zy2 < 4.0); k++) {
            Zy = 2 * Zx * Zy + y;
            Zx = Zx2 - Zy2 + x;
            Zx2 = Zx * Zx;
            Zy2 = Zy * Zy;
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
