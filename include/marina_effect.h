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

typedef struct {
    u8 randModulo;
    u8 red;
    u8 green;
    u8 blue;
    u16 actorIndex;
    u8 pad6[2];
    s32 pos[3];
    u8 pad14[4];
    s32 graphicIndex;
    s32 angle;
    f32 scale;
} ShockParticleStruct;

u16 func_8005A1A4(u16 actor_index, s32* pos, f32 scale);
u16 func_8005A320(u16 actor_index, s32* arg1, s32 angle, f32 scale);
u16 func_8005A7D0(u16 actor_index, s32* arg1, f32 arg2, f32 arg3);
s32 func_8005A930(ShockParticleStruct* arg0);

extern u16 MarinaEffect_SpawnParticle(u16 actor_index, s32* pos);
extern void MarinaEffect_Set(u16, s32);

u16 MarinaEffect_Grab(u16 actor_index, f32 scale);
void MarinaEffect_Noop(u16 actor_index);
void MarinaEffect_Dash(u16 actor_index);
void MarinaEffect_Type2(u16 actor_index);
void MarinaEffect_Burn(u16 actor_index);
void MarinaEffect_Update(u16 actor_index);

void ActorUpdate_MarinaAfterImage(u16 actor_index);

#endif
