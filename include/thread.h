#ifndef GAMETHREAD_H
#define GAMETHREAD_H

#include <ultra64.h>
#include "inttypes.h"

extern OSThread gIdleThread;
extern OSThread gMainThread;
extern OSThread gRmonThread;

#define DRAM_STACK_SIZE (0x400)
#define STACK_SIZE (0x1000)
#define STACK_END(STACK) (STACK + (STACK_SIZE / sizeof(u64)))
#define YEILD_DATA_SIZE (0xDA0)

extern u64 gBootStack[STACK_SIZE / sizeof(u64)]; // 80123670->80124670
extern u64 gIdleStack[STACK_SIZE / sizeof(u64)]; // 80125670->80126670
extern u64 gMainStack[STACK_SIZE / sizeof(u64)]; // 80127670->80128670
extern u64 gRmonStack[STACK_SIZE / sizeof(u64)]; // 80128670->80129670

#endif
