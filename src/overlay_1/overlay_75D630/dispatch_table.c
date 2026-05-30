#include "common.h"
#include "actor.h"

void func_8019D0A4_75F604(u16 actor_index);
void func_8019B288_75D7E8(u16 actor_index);
void func_8019B56C_75DACC(u16 actor_index);
void func_8019B76C_75DCCC(u16 actor_index);
void func_8019BC80_75E1E0(u16 actor_index);
void func_801A0DF0_763350(u16 actor_index);
void func_801A1340_7638A0(u16 actor_index);
extern u8 D_801A1940_763EA0[];
extern u8 D_801A19B4_763F14[];
extern u8 D_801A2B00_765060[];

void* D_8019B000_75D630[] = {
    (void*)func_8019D0A4_75F604,
    (void*)func_8019B288_75D7E8,
    (void*)func_8019B56C_75DACC,
    (void*)func_8019B76C_75DCCC,
    (void*)func_8019BC80_75E1E0,
    (void*)func_801A0DF0_763350,
    (void*)func_801A1340_7638A0,
    D_801A1940_763EA0,
    D_801A19B4_763F14,
    D_801A2B00_765060,
    NULL,
    NULL,
};
