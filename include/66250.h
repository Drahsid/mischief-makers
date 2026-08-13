#ifndef FILE_66250_H
#define FILE_66250_H

#include <PR/ultratypes.h>

extern s16 D_800E19C0[]; // graphic list
extern s16 D_800E1BF4[]; // graphic list
extern s16 D_800E1C00[]; // graphic list
extern s16 D_800E1C1C[]; // graphic list
extern s16 D_800E1C2C[]; // graphic list
extern s16 D_800E1CC4[]; // graphic list
extern s16 D_800E1CE8[]; // graphic list
extern s16 D_800E1D0C[]; // graphic list

void func_80065650(u16 actor_index);
void func_80066BCC(u16 actor_index);
void func_80067E50(u16 actor_index, s16* graphic_list);
void func_80067E9C(u16 actor_index);
void func_80067EF0(u16 actor_index);
void func_80067F98(u16 actor_index);
void func_80067FEC(u16 actor_index);
void func_80069E18(u16 actor_index);
void func_8006B940(u16 actor_0, u16 actor_1);
void func_8006BA80(u16 arg0_unused, u16 actor_index);
void func_8006BB8C(u16 actor_0, u16 actor_1);
void func_8006CB88(u16 actor_index);
u16 func_8006CC70(u16 actor_index);
void func_8006CD5C(u16 actor_index);
u16 func_80073320(u16 actor_index);
u16 func_800734C4(u16 actor_index, u16 arg1);
u16 func_80073558(u16 actor_index, u16 arg1);
u16 func_800735EC(u16 actor_index, u16 arg1);
void func_80073680(u16* arg0, u16 actor_index, u16 arg2);
void func_80073744(u16 actor_index);

// Clancer_Update protoype differs from implementation
void Clancer_Update(u16 actor_index);

#endif
