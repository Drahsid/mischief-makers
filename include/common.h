#ifndef COMMON_INCLUDE_H
#define COMMON_INCLUDE_H

#include "music.h"
#include "input.h"
#include "inttypes.h"
#include "common_structs.h"
#include "globalData.h"
#include "linker.h"
#include "cosine.h"
#include "letterbox.h"
#include "gameText.h"
#include "festival.h"
#include "overlays.h"
#include "marina.h"

typedef s32 DEFAULT_INT; // use this to explicitly show when the original programmer likely forgot to write the return type

#include "function_symbols.h"
#include "data_symbols.h"

#define FRAMEBUFFER0 ((void*)0x801DA800)
#define FRAMEBUFFER1 ((void*)0x803DA800)

// hard-coded palette addresses.

#define PALETTE_802209E0 ((u16*)0x802209E0) // used by life bar
#define PALETTE_80222220 ((u16*)0x80222220)
#define PALETTE_80202C90 ((u16*)0x80202C90)
#define PALETTE_8022D4C8 ((u16*)0x8022D4C8)
#define PALETTE_8022D4E8 ((u16*)0x8022D4E8)
#define PALETTE_8022D508 ((u16*)0x8022D508)
#define PALETTE_8022D528 ((u16*)0x8022D528)
#define PALETTE_8022D548 ((u16*)0x8022D548)
#define PALETTE_8022D568 ((u16*)0x8022D568)
#define PALETTE_8022D588 ((u16*)0x8022D588)
#define PALETTE_8022D5C8 ((u16*)0x8022D5C8)
#define PALETTE_8022D5E8 ((u16*)0x8022D5E8)
#define PALETTE_8022D608 ((u16*)0x8022D608)
#define PALETTE_8022D628 ((u16*)0x8022D628)
#define PALETTE_8022D648 ((u16*)0x8022D648)
#define PALETTE_8022D668 ((u16*)0x8022D668)
#define PALETTE_8022D688 ((u16*)0x8022D688)
#define PALETTE_80266618 ((u16*)0x80266618)
#define PALETTE_80266818 ((u16*)0x80266818)
#define PALETTE_802684F8 ((u16*)0x802684F8)
#define PALETTE_802E5ED8 ((u16*)0x802E5ED8)
#define PALETTE_802F8068 ((u16*)0x802F8068)
#define PALETTE_80340240 ((u16*)0x80340240)
#define PALETTE_80342068 ((u16*)0x80342068)
#define PALETTE_80342040 ((u16*)0x80342040)
#define PALETTE_8034E4C8 ((u16*)0x8034E4C8)
#define PALETTE_80343B68 ((u16*)0x80343B68)
#define PALETTE_803524C8 ((u16*)0x803524C8)
#define PALETTE_80352B90 ((u16*)0x80352B90)
#define PALETTE_80355F90 ((u16*)0x80355F90)
#define PALETTE_80380000 ((u16*)0x80380000)
#define PALETTE_80380200 ((u16*)0x80380200)
#define PALETTE_80380400 ((u16*)0x80380400)
#define PALETTE_803D3050 ((u16*)0x803D3050)
#define PALETTE_803D3250 ((u16*)0x803D3250)
#define PALETTE_803DA200 ((u16*)0x803DA200)
#define PALETTE_803DA400 ((u16*)0x803DA400)
#define PALETTE_803DA600 ((u16*)0x803DA600)

// hard-coded texture addresses

#define TEXTURE_80265218 ((u8*)0x80265218)
#define TEXTURE_80265618 ((u8*)0x80265618)
#define TEXTURE_80265A18 ((u8*)0x80265A18)

#define TEXTURE_802678F8 ((u8*)0x802678F8)
#define TEXTURE_80267CF8 ((u8*)0x80267CF8)
#define TEXTURE_802680F8 ((u8*)0x802680F8)

#define TEXTURE_803D2050 ((u8*)0x803D2050)
#define TEXTURE_803D2450 ((u8*)0x803D2450)

#define SCREEN_WIDTH (320)
#define SCREEN_HEIGHT (240)

#define ARRAYLENGTH(arr) (s32)(sizeof(arr)/sizeof(arr[0]))
#define ARRAYEND(arr) arr+ARRAYLENGTH(arr) //for stacks and a few while loops.

#define ABS(x) ((x) > 0 ? (x) : -(x))
#define SQ(x) ((x) * (x))

#ifndef osInitialize
#define osInitialize __osInitialize_common
#endif



extern u32 gFramesInPlayTime;

#endif
