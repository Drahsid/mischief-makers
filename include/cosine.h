#ifndef COSINE_H
#define COSINE_H

#include <PR/ultratypes.h>

// Mischief Makers uses a 1024-step table of the cosine function for its sine/cosine math.
extern f32 gCosineLookup[1024];

//there is a second float table in the game that goes unused.
extern f32 gUnusedFloatTable[512];

#define COS_MASK (ARRAYLENGTH(gCosineLookup) - 1)
#define COS_DEG_180 (ARRAYLENGTH(gCosineLookup) / 2)
#define COS_DEG_90 (ARRAYLENGTH(gCosineLookup) / 4)
#define COS_DEG_45 (ARRAYLENGTH(gCosineLookup) / 8)
#define DEG_PER_INDEX (360.0 / (ARRAYLENGTH(gCosineLookup))) // = 0.3515625. used for sin/cos lookups
#define COS(x) gCosineLookup[(x) & COS_MASK]
#define SIN(x) gCosineLookup[((x) - (s32)COS_DEG_90) & COS_MASK] //cos(x-pi/2)=sin(x)
#define NEGSIN(x) gCosineLookup[((x) + COS_DEG_90) & COS_MASK] //cos(x+pi/2)=-sin(x)
#define DEG_TO_INDEX(degrees) ((degrees) / DEG_PER_INDEX)
#define INDEX_TO_DEG(index) ((index) * DEG_PER_INDEX)

#endif
