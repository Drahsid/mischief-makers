#ifndef STAGE_RUNTIME_H
#define STAGE_RUNTIME_H

#include <PR/ultratypes.h>

void func_80042D84(u16 arg0);
void func_80043478(void);
void func_80043918(void);
void func_80043D04(u16* spawn);

// BUG: inconsistent prototype!
#ifndef func_8004400C_ARGS
#define func_8004400C_ARGS u16* arg0, s16 pos_x, s16 pos_y
#endif
void func_8004400C(func_8004400C_ARGS);

// BUG: inconsistent prototype!
#ifndef func_80045544_ARGS
#define func_80045544_ARGS u16 actor_index, u16 actor_end
#endif
void func_80045544(func_80045544_ARGS);

// BUG: inconsistent prototype!
#ifndef func_80045610_ARGS
#define func_80045610_ARGS u16 actor_index, u16 actor_end
#endif
void func_80045610(func_80045610_ARGS);

void func_800457C8(void);
void func_80046274(u32 arg0, u32 arg1);
void func_8004667C(void);

// BUG: inconsistent prototype!
#ifndef func_800467EC_ARGS
#define func_800467EC_ARGS u16 actor_index
#endif
void func_800467EC(func_800467EC_ARGS);

void SpawnText_READY(void);
void SpawnText_READY_2(void);

// BUG: inconsistent prototype!
#ifndef func_800475EC_RET
#define func_800475EC_RET s16
#endif
func_800475EC_RET func_800475EC(void);

void func_80047648(s16 arg0);
void func_80047CCC(void);

#endif
