CFLAGS = -g -Wall

mandelbrot: neon.cc
	g++ -fopenmp -march=armv8-a -O3 -o neon neon.cc
mandelbrot_neon: neon_copy.cc
	g++ -fopenmp -march=armv8-a -O3 -o neon neon_copy.cc