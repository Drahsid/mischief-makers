#ifndef COSINE_H
#define COSINE_H

#include <PR/ultratypes.h>

// Mischief Makers uses a 1024-step table of the cosine function for its sine/cosine math.
extern f32 gCosineLookup[1024];

//there is a second float table in the game that goes unused.
extern f32 gUnusedFloatTable[512];

#define COSLEN ((sizeof(gCosineLookup)/sizeof(f32))-1)
#define COSPiOver2 ((sizeof(gCosineLookup)/sizeof(f32))/4)
#define RadStep (f64)360.0/(sizeof(gCosineLookup)/sizeof(f32))// = 0.3515625. used for sin/cos lookups
#define COS(x) gCosineLookup[x&COSLEN]
#define SIN(x) gCosineLookup[x-COSPiOver2&COSLEN] //cos(x-pi/2)=sin(x)
#define NEGSIN(x) gCosineLookup[x+COSPiOver2&COSLEN]//cos(x+pi/2)=-sin(x)

#endif

