CFLAGS = -g -lm `sdl2-config --cflags --libs` -lpng -lz 

mandelbrot_monochrome_simple: mandelbrot_single_thread_v2.c
	gcc -o mandelbrot mandelbrot_single_thread_v2.c $(CFLAGS) 
mandelbrot_neon128: mandelbrot_neon128.c
	gcc $(CFLAGS) -O3 -o mandelbrot mandelbrot_neon128.c 
mandelbrot_exp: mandelbrot_exp.c
	gcc -o mandelbrot mandelbrot_exp.c $(CFLAGS) 