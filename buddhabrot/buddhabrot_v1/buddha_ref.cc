/*  Nebulabrot / Buddhabrot generator.
    http://en.wikipedia.org/wiki/User_talk:Michael.Pohoreski/Buddhabrot.cpp
 
    Optimized version by by Michael Pohoreski
    Original version by Evercat
 
        g++ -Wall -O2 buddhabrot.cpp -o buddhabrot.x
        buddhabrot.x -v 20000 4000 3000
 
   Released under the GNU Free Documentation License
   or the GNU Public License, whichever you prefer.
*/
 
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <stdint.h> // uint16_t uint32_t
#include <string.h> // memset()

// Macros 
////////////////////////////////////////////////////////////////////////////////////
#define VERBOSE if(Verbose)

#define reduce(x) (x)       // Macro to reduce greyscale, can use sqrt(n), log(n), etc, or just (n)
 
// Globals 
////////////////////////////////////////////////////////////////////////////////////
 
    // Input parameters
    double   World_MinX        = -2.102613;
    double   World_MaxX        =  1.200613;
    double   World_MinY        = -1.237710;
    double   World_MaxY        =  1.239710;
    int      Max_Depth         = 1000;
    int      Width             = 1024; // image width
    int      Height            =  768; // image height

    bool     Auto_Brightness   = true;
    // Default MaxDepth = 1000 @ 1042x768 has MaxGreyscale = 5010 -> 230/5010 = filter out bottom 4.590808% of image
    int      Greyscale_Bias    = -230;        // color = (monochrome + bias) * intensity_scale = 5010 - 230 = 4780

    float    R_Scale           = 0.09; // Default: (5010 - 230) * 0.09 = 430.2
    float    G_Scale           = 0.11; // Default: (5010 - 230) * 0.11 = 525.8
    float    B_Scale           = 0.18; // Default: (5010 - 230) * 0.18 = 860.4

    bool     Verbose           = false;
    bool     Save_Raw_Greyscale= false;

    // Output
    uint16_t*Greyscale_Texels  = NULL; // [ HEIGHT ][ WIDTH ] 16-bit monochrome
    uint8_t *Color_Texels      = NULL; // [ HEIGHT ][ WIDTH ] 24-bit RGB

////////////////////////////////////////////////////////////////////////////////////
int Arg_GetInt( const char * arg )
{
    if (arg[0] < '0' || arg[0] > '9')
        return 1;

    int n = atoi( arg );
    if( n < 0)
        n = 1;
    return n;
}

int BMP_Greyscale16bitMaxValue( const uint16_t *greyscaleTexels, const int width, const int height )
{
    const uint16_t *pSrc = greyscaleTexels;
    const int pixels = width * height;
    int brightness = 0;

    for( int i = 0; i < pixels; i++ )
    {
        if( brightness < *pSrc )
            brightness = *pSrc;
        pSrc++;
    }

    return brightness;
}

void BMP_Greyscale16bitToColor24bit( const uint16_t* greyscaleTexels, const int width, const int height, uint8_t* colorTexels )
{
    const int pixels = width * height;
    const uint16_t *pSrc = greyscaleTexels;
          uint8_t  *pDst = colorTexels;

    for( int i = 0; i < pixels; i++ )
    {
        int greyscale = *pSrc++ + Greyscale_Bias; // low pass noise filter
        int r = (int)(greyscale * R_Scale);
        int g = (int)(greyscale * G_Scale);
        int b = (int)(greyscale * B_Scale);
         
        if (r > 255) r = 255; if (r < 0) r = 0;
        if (g > 255) g = 255; if (g < 0) g = 0;
        if (b > 255) b = 255; if (b < 0) b = 0;

        *pDst++ = r;
        *pDst++ = g;
        *pDst++ = b;
    }
}

// @param colorTexels byte order: r,g,b
void BMP_WriteColor24bit( const char * filename, const uint8_t *colorTexels, const int width, const int height )
{
    uint32_t headers[13];
    FILE * outfile;
    int x, y, n;
 
    // Stupid Windows BMP must have each scanline width padded to 4 bytes
    int extrabytes = (width * 3) % 4;
    int paddedsize = (width * 3 + extrabytes) * height;
    uint32_t biPlanes   =  1      ; // 1 plane
    uint32_t biBitcount = 24 << 16; // of 24-bit RGB

    // Header: Note that the "BM" identifier in bytes 0 and 1 is NOT included in these "headers".
    headers[0]  = paddedsize + 54;      // bfSize (whole file size)
    headers[1]  = 0;                    // bfReserved1 bfReserved2
    headers[2]  = 54;                   // bfOffbits

    headers[3]  = 40;                   // biSize BITMAPHEADER
    headers[4]  = width;                // biWidth
    headers[5]  = height;               // biHeight
    headers[6]  = biBitcount | biPlanes;// biPlanes, biBitcount
    headers[7]  = 0;                    // biCompression
    headers[8]  = paddedsize;           // biSizeImage
    headers[9]  = 0;                    // biXPelsPerMeter
    headers[10] = 0;                    // biYPelsPerMeter
    headers[11] = 0;                    // biClrUsed
    headers[12] = 0;                    // biClrImportant
     
    outfile = fopen(filename, "wb");
    if( outfile )
    { 
        // Output Headers
        fprintf(outfile, "BM");
        for (n = 0; n < 13; n++)
        {
           fprintf( outfile, "%c", ((headers[n]) >>  0) & 0xFF );
           fprintf( outfile, "%c", ((headers[n]) >>  8) & 0xFF );
           fprintf( outfile, "%c", ((headers[n]) >> 16) & 0xFF );
           fprintf( outfile, "%c", ((headers[n]) >> 24) & 0xFF );
        }

        // Stupid Windows BMP are written upside down
        for (y = height - 1; y >= 0; y--)
        {
            const uint8_t* scanline = &colorTexels[ y*width*3 ];
            for (x = 0; x < width; x++)
            {
                // swizzle rgb -> brg
                uint8_t r = *scanline++;
                uint8_t g = *scanline++;
                uint8_t b = *scanline++;
         
                fprintf( outfile, "%c", b );
                fprintf( outfile, "%c", g );
                fprintf( outfile, "%c", r );
           }

           if (extrabytes)      // See above - BMP lines must be of lengths divisible by 4 bytes.
              for (n = 0; n < extrabytes; n++)
                 fprintf( outfile, "%c", 0 );
        }
         
        fclose( outfile );
    }
}

void RAW_WriteGreyscale16bit( const char *filename, uint16_t *greyscaleTexels, const int width, const int height )
{
    FILE *file = fopen( filename, "wb" );
    if( file )
    {
        fwrite( greyscaleTexels, sizeof( uint16_t ), width * height, file );
        fclose( file );
    }
}


// @param wx World X start location
// @param wy World Y start location
// @param sx World to Image scale X
// @param sy World to Image scale Y
inline
void Buddhabrot( double wx, double wy, double sx, double sy, uint16_t *texels, const int width, const int height )
{
    double  r = 0., i = 0.; // current Complex< real, imaginary >
    double  r2    , i2    ; // next    Complex< real, imaginary >
    int     u     , v     ; // texel coords
    for( int depth = 0; depth < Max_Depth; depth++ )
    {
        r2 = ((r * r) - (i * i)) + wx;
        i2 = (2 * r * i)         + wy;

        r = r2;
        i = i2;
        if( (r * r) + (i * i) > 4.0 ) // escapes to infinity, don't render
            return;

        u = (int) ((r - World_MinX) * sx); // texel x
        v = (int) ((i - World_MinY) * sy); // texel y

        if( u < width && v < height && u >= 0 && v >= 0 )
            texels[ (v * width) + u ]++;
    }
}
 
int main( int argc, char * aArg[] )
{
    int    col = 0;    // Progress status for percent compelete

    int nArg = argc;
    for( int iArg = 1; iArg < nArg; iArg++ )
    {
        const char *pArg = aArg[ iArg ];
        if( strcmp( pArg, "-?" ) == 0 )
        {
            printf(
"Buddhabrot\n"
"Usage: [MaxDepth [ImageWidth [ImageHeight]]]\n"
"-?      Disply help\n"
"-auto   Don't autoscale the greyscale to RGB\n"
"-d [#]  Alt. style to set maximum iteration depth. If no number then display default.\n"
"-w [#]  Alt. style to set image width. If no number then display default.\n"
"-h [#]  Alt. style to set image height. If no number then display default.\n"
"-raw    Save raw 16-bit monochrome image\n"
"-v      Verbose output. Display percent progress bar and greyscale to color scaling coefficients.\n"
"\n"
"Examples:\n"
"        Buddhrabrot -d -w -h -?\n"
"        Buddhrabrot -v -w -h -d 10\n"
            );
            return 0;
        }
        else if( strcmp( pArg, "-v" ) == 0 )
            Verbose = 1;
        else if( strcmp( pArg, "-raw" ) == 0 )
            Save_Raw_Greyscale = true;
        else if( strcmp( pArg, "-auto" ) == 0 )
            Auto_Brightness = false;
        else if( strcmp( pArg, "-w" ) == 0 )
        {
            if ((iArg+1) < nArg)
            {
                pArg = aArg[ iArg+1 ];
                if( pArg[0] >= '0' && pArg[0] <= '9' )
                {
                    Width = Arg_GetInt( pArg );
                    iArg++;
                }
            }
            printf( "Image width: %d\n", Width );
        }
        else if( strcmp( pArg, "-h" ) == 0 )
        {
            if ((iArg+1) < nArg)
            {
                pArg = aArg[ iArg+1 ];
                if( pArg[0] >= '0' && pArg[0] <= '9' )
                {
                    Height = Arg_GetInt( pArg );
                    iArg++;
                }
            }
            printf( "Image height: %d\n", Height );
        }
        else if( strcmp( pArg, "-d" ) == 0 )
        {
            if ((iArg+1) < nArg)
            {
                pArg = aArg[ iArg+1 ];
                if( pArg[0] >= '0' && pArg[0] <= '9' )
                {
                    Max_Depth = Arg_GetInt( pArg );
                    iArg++;
                }
            }
            printf( "Max depth: %d\n", Max_Depth );
        }
        else
        {
            if( iArg < nArg )
            {
                Max_Depth = Arg_GetInt( pArg );
                printf( "Max depth: %d\n", Max_Depth );
                pArg = aArg[ ++iArg ];
            }

            if (iArg < nArg)
            {
                Width = Arg_GetInt( pArg );
                printf( "Image width: %d\n", Width );
                pArg = aArg[ ++iArg ];
            }
                
            if (iArg < nArg)
            {
                Height = Arg_GetInt( pArg );
                printf( "Image height: %d\n", Height );
                pArg = aArg[ ++iArg ];
            }
        }
    }  

    size_t Greyscale_Area = Width * Height;
    size_t Greyscale_Size = Greyscale_Area * sizeof( uint16_t );
    Greyscale_Texels = (uint16_t*) malloc( Greyscale_Size );
    memset( Greyscale_Texels, Greyscale_Size, 0 ); 

    size_t Color_Size = Greyscale_Area * 3 * sizeof( uint8_t );
    Color_Texels = (uint8_t*) malloc( Color_Size );
    memset( Color_Texels, Color_Size, 0 );
 
    int Source_Cols = Width *  10;
    int Source_Rows = Height * 10;   

    int next_percent = 0; // Don't display 0%

    double World_W = World_MaxX - World_MinX;
    double World_H = World_MaxY - World_MinY;

    // Map Source (world space) to Pixels (image space)
    double world_2_image_x = (double)(Width -1) / World_W;
    double world_2_image_y = (double)(Height-1) / World_H;

    double dx = World_W / (Source_Cols - 1);
    double dy = World_H / (Source_Rows - 1);
 
    for( double x = World_MinX; x < World_MaxX; col++, x += dx )
    {
        for( double y = World_MinY; y < World_MaxY; y += dy ) 
        {
            double r = 0., i = 0.;
            for (int depth = 0; depth < Max_Depth; depth++)
            {
                double r2 = ((r * r) - (i * i)) + x; // Zn+1 = Zn^2 + C
                double i2 = (2 * r * i) + y;

                r = r2;
                i = i2;

                if ((r * r) + (i * i) > 4) // escapes to infinite to trace path
                {
                    Buddhabrot( x, y, world_2_image_x, world_2_image_y, Greyscale_Texels, Width, Height );                                        
                    break;
                }
            }
        }

        VERBOSE
        {
            double percent = (100.0 * col) / Source_Cols;
            if( next_percent != (int)percent )
            {
                next_percent = (int)percent;
                printf( "%6.2f%% = %d / %d\n", percent, col, Source_Cols );
            }
        }
    }

    int max_brightness = BMP_Greyscale16bitMaxValue( Greyscale_Texels, Width, Height );
    VERBOSE printf( "Max brightness: %d\n", max_brightness );

    if( Auto_Brightness )
    {
        if( max_brightness < 256)
            Greyscale_Bias = 0;
        Greyscale_Bias = (int)(-0.045 * max_brightness); // low-pass noise filter; if greyscale pixel < bias then greyscale pixel = 0

        R_Scale = 430. / (float)max_brightness;
        G_Scale = 525. / (float)max_brightness;
        B_Scale = 860. / (float)max_brightness;
        VERBOSE printf( "Greyscale bias: %d  R: %5.3f  G: %5.3f  B: %5.3f\n",Greyscale_Bias, R_Scale, G_Scale, B_Scale );
    }

    char filename[256];

    if( Save_Raw_Greyscale )
    {
        sprintf( filename, "buddhabrot_%dx%d_%d.u16.raw", Width, Height, Max_Depth );
        RAW_WriteGreyscale16bit( filename, Greyscale_Texels, Width, Height );
        printf( "Saved: %s\n", filename );
    }

    sprintf(filename, "buddhabrot_%dx%d_depth_%d_colorscaling_%d.bmp", Width, Height, Max_Depth, (int)Auto_Brightness );
    BMP_Greyscale16bitToColor24bit( Greyscale_Texels, Width, Height, Color_Texels );
    BMP_WriteColor24bit( filename, Color_Texels, Width, Height );
    printf( "Saved: %s\n", filename );
 
    return 0;
}