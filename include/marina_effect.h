#ifndef MARINA_EFFECT_H
#define MARINA_EFFECT_H

#include <PR/ultratypes.h>

typedef enum {
    MARINAEFF_NONE,

    // particle effects index stored in gPlayerActor.unk_180_s16[0]
    // and read as gPlayerActor.unk_180_u8[1]

    MARINAEFF_DASH,
    MARINAEFF_2,
    MARINAEFF_BURN,

    // particle effects index stored in gPlayerActor.unk_180_u8[3]

    MARINAEFF_4,
    MARINAEFF_5,
    MARINAEFF_INVULN,
    MARINAEFF_SHOCK,
    MARINAEFF_TELEPORT
} MarinaEffects;


extern u16 MarinaEffect_SpawnParticle(u16 actor_index, s32* pos);
extern void MarinaEffect_Set(u16, s32);


u16 MarinaEffect_Grab(u16 actor_index, f32 scale);
void MarinaEffect_Noop(u16 actor_index);
void MarinaEffect_Dash(u16 actor_index);
void MarinaEffect_Type2(u16 actor_index);
void MarinaEffect_Burn(u16 actor_index);
void MarinaEffect_Update(u16 actor_index);

#endif
