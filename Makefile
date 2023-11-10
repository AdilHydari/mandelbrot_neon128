CFLAGS = -g -Wall

mandelbrot_monochrome_simple: mandelbrot_single_thread_v2.c
	gcc -march=armv8-a -c -O2 mandelbrot_single_thread_v2.c $(CFLAGS) -lm `sdl2-config --cflags --libs`
mandelbrot_neon128: mandelbrot_neon128.c
	gcc $(CFLAGS) -o mandelbrot -march=armv8-a -O2 mandelbrot_neon128.c
mandelbrot_neon128_v2: mandelbrot_neon128.c
	gcc $(CFLAGS) -o mandelbrot -march=armv8-a -O2 mandelbrot_neon128_v2.c 
mandelbrot_exp: mandelbrot_exp.c
	gcc -o mandelbrot mandelbrot_exp.c $(CFLAGS) -lm `sdl2-config --cflags --libs`