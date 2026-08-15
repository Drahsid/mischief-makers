#ifndef FILE_8F080_H
#define FILE_8F080_H

#include <PR/ultratypes.h>

void func_8008F498(u16 actor_index, u16 list_index);
void func_8009351C(u16 actor_index);
void func_80094C5C(u16 actor_index);

// BUG: inconsistent prototype!
#ifndef func_80094CF8_RET
#define func_80094CF8_RET void
#endif
func_80094CF8_RET func_80094CF8(u16 actor_index, u16 arg1);

void func_80094FE4(u16 actor_index);
void func_80095928(u16 actor_index);
void func_80095A8C(u16 actor_index);
void func_80096AC4(u16 actor_index);

#endif
