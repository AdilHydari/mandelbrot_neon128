#include <SDL2/SDL.h>
#include <stdio.h>
#include <math.h>
#include <complex.h>

#define WIDTH 1920
#define HEIGHT 1080

void drawMandelbrot(SDL_Renderer *renderer) {
    for (int y = 0; y < HEIGHT; y++) {
        for (int x = 0; x < WIDTH; x++) {
            double zx = 0;
            double zy = 0;
            double cx = ((double)x - WIDTH/2) * 4.0 / WIDTH;
            double cy = ((double)y - HEIGHT/2) * 4.0 / HEIGHT;
            int iterations = 0;
            
            while (zx * zx + zy * zy < 4 && iterations < 1000) {
                double xtemp = zx * zx - zy * zy + cx;
                zy = 2 * zx * zy + cy;
                zx = xtemp;
                iterations++;
            }
            
            if (iterations == 1000) {
                SDL_SetRenderDrawColor(renderer, 0, 0, 0, 255);
            } else {
                double color = (double)iterations / 1000;
                SDL_SetRenderDrawColor(renderer, color * 255, color * 255, color * 255, 255);
            }
            
            SDL_RenderDrawPoint(renderer, x, y);
        }
    }
}

int main(int argc, char *argv[]) {
    SDL_Window *window;
    SDL_Renderer *renderer;
    
    SDL_Init(SDL_INIT_VIDEO);
    SDL_CreateWindowAndRenderer(WIDTH, HEIGHT, 0, &window, &renderer);
    
    SDL_Event event;
    int running = 1;
    
    while (running) {
        while (SDL_PollEvent(&event)) {
            if (event.type == SDL_QUIT) {
                running = 0;
            }
        }
        
        SDL_SetRenderDrawColor(renderer, 255, 255, 255, 255);
        SDL_RenderClear(renderer);
        
        drawMandelbrot(renderer);
        
        SDL_RenderPresent(renderer);
    }
    
    SDL_DestroyRenderer(renderer);
    SDL_DestroyWindow(window);
    SDL_Quit();
    
    return 0;
}
