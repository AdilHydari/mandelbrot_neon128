//doesn't work that well, prints out binary on stdout but i cant figure out how to turn that into png, will instead be using sdl2 to open a window and write to that

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "mandelbrot.h"

void mandel_single_thread(unsigned char *image, const struct ids *id);

void mandel_single_thread(unsigned char *image, const struct ids *id){
  float xdiff = id->xmax - id->xmin;
  float ydiff = id->ymax - id->ymin;
  float iteration_scale = 1.0f / id->iterations;
  float depth_scale = id->depth - 1; //256 bits, but we have to take away 0 since we are doing the cr=zr and ci=zi logic
   for (int y = 0; y < id->height; y++) {
        for (int x = 0; x < id->width; x++) {
            float cr = x * xdiff / id->width + id->xmin;
            float ci = y * ydiff / id->height + id->ymin;
            float zr = cr;
            float zi = ci;
            int k = 0;
            float mk = 0.0f;
            while (++k < id->iterations) {
                float zr1 = zr * zr - zi * zi + cr;
                float zi1 = zr * zi + zr * zi + ci;
                zr = zr1;
                zi = zi1;
                mk += 1.0f;
                if (zr * zr + zi * zi >= 4.0f)
                    break;
            }
            mk *= iteration_scale;
            mk = sqrtf(mk);
            mk *= depth_scale;
            int pixel = mk;
            image[y * id->width * 3 + x * 3 + 0] = pixel;
            image[y * id->width * 3 + x * 3 + 1] = pixel;
            image[y * id->width * 3 + x * 3 + 2] = pixel;
        }
    }
}

int main(int argc, char *argv[]){
  struct ids id = {
  //specs for the branches/fractals
  .xmin = -2,
  .xmax = 2,
  .ymin = -2,
  .ymax = 2,
  .iterations = 256,
  //specs for image
  .width = 3024,
  .height = 1890,
  .depth = 256
};

  unsigned char *image = malloc(id.width * id.height * 3);
  FILE * fp = fopen("pic.ppm","wb");
  char *comment="# Mandelbrot set";
  mandel_single_thread(image, &id);
  fprintf(fp, "P6\n# Mandelbrot");
  fwrite(image, id.width * id.height, 3, fp);
  fclose(fp);
  return 0;
}
