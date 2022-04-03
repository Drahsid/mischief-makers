#ifndef COMMON_INCLUDE_H
#define COMMON_INCLUDE_H
//all common header files in one #include
#include "Alphabet.h"
#include "SFX.h"
#include "Scene.h"
#include "inttypes.h"
#include "data_symbols.h"
#include "function_symbols.h"
#include "actor.h"

//macros for common func patterns. save on typing.
#define MODi(x,y,z) x=ModInRange_i(x,y,z)
#define MODf(x,y,z) x=ModInRange_f(x,y,z)
#define ACTORINIT(i,t)\
        gActors[i].actorType=t;\
        Actor_Spawn(i)
#define thisActor gActors[index]
#define ALPHAINDEX(x) x*2+0x2d2 //get the letter's graphic index.
#define RNG(x) Rand()&x //common RNG func

//in case we want to change the cosine table.
#define COSLEN (sizeof(gCosineLookup)/sizeof(float))-1
#define COSPiOver2 (sizeof(gCosineLookup)/sizeof(float))/4
#define COS(x) gCosineLookup[x&COSLEN]
#define SIN(x) gCosineLookup[x-COSPiOver2&COSLEN] //cos(x-pi/2)=sin(x)
#define NEGSIN(x) gCosineLookup[x+COSPiOver2&COSLEN]//cos(x+pi/2)=-sin(x)
#endif
