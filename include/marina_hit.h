#ifndef MARINA_HIT_H
#define MARINA_HIT_H

#include <PR/ultratypes.h>

// return values when Marina takes damage
typedef enum {
    MARINADMG_NONE,
    MARINADMG_HIT,
    MARINADMG_1HP,
    MARINADMG_KO,
    MARINADMG_OVERKILL
} MarinaDamage;

void MarinaHit_Noop(u16 actor_0, u16 actor_1);
s32 func_80058F9C(u16 actor_index);

void func_800576A0(u16 actor_index);
void func_80057848(u16 actor_index);
void func_80057C98(u16 actor_index);
void Marina_ShockState(u16 actor_index);
void func_8005878C(u16 actor_index);

#endif
