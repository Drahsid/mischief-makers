#ifndef FILE_74A50_H
#define FILE_74A50_H

#include <PR/ultratypes.h>

void ActorUpdate_CatTank(u16 actor_index);
void ActorUpdate_Clanblob(u16 actor_index);

void Clanblob_Update(u16 actor_index);

void func_80073E50(u16 actor_index, u16 graphic_index);
void func_800740C8(u16 actor_index);
u16 func_80074938(u16 actor_index, u16 arg1);
u16 func_80074D28(u16 actor_index, u16 arg1);
s32 func_8007502C(u16 actor_index, u16 arg1);
s32 func_80075324(u16 actor_index, u16 arg1);
void func_80076BF4(u16 actor_index);
void func_80078418(u16 actor_index);
void func_8007A090(u16 actor_index, u16 other_actor_index);
void func_8007A118(u16 actor_index, u16 other_actor_index);
u16 func_8007A3CC(u16 actor_index);
void func_8007B60C(u16 actor_index);
void func_8007B73C(u16 actor_index);
void ActorUpdate_Type3(u16);

#endif
