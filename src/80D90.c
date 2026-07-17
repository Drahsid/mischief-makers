#include "common.h"
#include "actor.h"
#include "common_structs.h"
#include "28EF0.h"
#include "80D90.h"

void func_80080190(u16 actor_index) {
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

void func_800801D8(u16 base_actor_index, s16* vals, u16* arg2) {
    s32 temp_s1;
    s32 temp_t7;
    s32 var_s6;
    s32 var_v0;
    u16* array_base;
    u16* var_s5;
    u16** array;
    u16 var_s7;
    u16 actor_index;
    s32 mask;
    s32 sp58;
    s32 sp54;

    array = (u16**)(gActors[base_actor_index].unk_178);
    array_base = array[arg2[0]];
    sp58 = arg2[1] * gActors[base_actor_index].unk_120;
    sp54 = arg2[2] * gActors[base_actor_index].unk_120;
    temp_t7 = TO_FIXED(array_base[0]);
    gActors[base_actor_index].var_160 = (temp_t7 - gActors[base_actor_index].var_158) / sp58;
    temp_t7 = TO_FIXED(array_base[1]);
    gActors[base_actor_index].unk_164 = (temp_t7 - gActors[base_actor_index].var_15C) / sp58;
    array_base += 2;

    for (var_s7 = 0; vals[0] != 0x7FFF; vals += 5, var_s7 += 2) {
        actor_index = vals[0] + base_actor_index;
        if (gActors[base_actor_index].unk_13C_f32 != 0.0f) {
            var_s5 = &array_base[vals[4]];
        }
        else {
            var_s5 = &array_base[var_s7];
        }
        temp_s1 = gActors[actor_index].unk_174;
        temp_t7 = TO_FIXED(var_s5[0]);
        var_s6 = temp_t7 - temp_s1;
        if (gActors[actor_index].unk_188 & 0x200) {
            mask = 0x03FFFFFF;
            if (func_8002995C(temp_t7, temp_s1) > 0) {
                var_v0 = (temp_s1 + 0xFF000000) & mask;
            }
            else {
                var_v0 = (temp_s1 + 0x01000000) & mask;
            }
        }
        else {
            var_v0 = TO_FIXED(vals[3]);
        }
        if (var_s6 != 0) {
            if (var_s6 > 0) {
                if ((var_v0 < temp_t7) && (temp_s1 < var_v0)) {
                    var_s6 += 0xFC000000;
                }
                if (1) {} // fakematch
            }
            else if ((temp_t7 < var_v0) && (var_v0 < temp_s1)) {
                var_s6 += 0x04000000;
            }
        }
        temp_s1 = gActors[actor_index].var_154;
        gActors[actor_index].unk_164 = var_s6 / sp58;
        temp_t7 = TO_FIXED(var_s5[1]);
        gActors[actor_index].unk_168 = (temp_t7 - temp_s1) / sp58;
    }
    gActors[base_actor_index].unk_11C = sp58 - sp54;
}

void func_800805B8(u16 base_actor_index, s16* vals) {
    u16 actor_1;
    u16 actor_2;

    gActors[base_actor_index].var_150 = gActors[base_actor_index].unk_170 / FIXED_UNIT(1.0);

    for (; *vals != 0x7FFF; vals += 5) {
        actor_1 = vals[0] + base_actor_index;
        actor_2 = vals[1] + base_actor_index;
        gActors[actor_1].var_150 = gActors[actor_1].unk_174 / FIXED_UNIT(1.0) + gActors[actor_2].var_150;
        if ((gActors[actor_1].flags & ACTOR_FLAG_DRAW) && (gActors[actor_1].graphicIndex != 0)) {
            gActors[actor_1].colorA = gActors[base_actor_index].colorA;
            gActors[actor_1].graphicFlags &= ~ACTOR_GFLAG_UNK4;
            gActors[actor_1].graphicFlags |= (gActors[base_actor_index].graphicFlags & (ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4));
            gActors[actor_1].colorR = gActors[base_actor_index].colorR;
            gActors[actor_1].colorG = gActors[base_actor_index].colorG;
            gActors[actor_1].colorB = gActors[base_actor_index].colorB;
        }
        if (gActors[base_actor_index].unk_138 != 0.0f) {
            if (gActors[actor_1].unk_188 & 0x800) {
                gActors[actor_1].rotateZ = (((0x600 - gActors[actor_1].unk_184) - gActors[actor_1].var_150) & 0x3FF) * (f32)DEG_PER_INDEX;
                gActors[actor_1].flags &= ~ACTOR_FLAG_FLIPPED;
            }
            else {
                gActors[actor_1].rotateZ = (((0x400 - gActors[actor_1].unk_184) - gActors[actor_1].var_150) & 0x3FF) * (f32)DEG_PER_INDEX;
                gActors[actor_1].flags |= ACTOR_FLAG_FLIPPED;
            }
        }
        else if (gActors[actor_1].unk_188 & 0x800) {
            gActors[actor_1].rotateZ = ((gActors[actor_1].var_150 + gActors[actor_1].unk_184 + 0x200) & 0x3FF) * (f32)DEG_PER_INDEX;
            gActors[actor_1].flags |= ACTOR_FLAG_FLIPPED;
        }
        else {
            gActors[actor_1].rotateZ = ((gActors[actor_1].var_150 + gActors[actor_1].unk_184) & 0x3FF) * (f32)DEG_PER_INDEX;
            gActors[actor_1].flags &= ~ACTOR_FLAG_FLIPPED;
        }
    }
}

void func_80080818(u16 actor_index, s16* vals) {
    u16 actor_1;

    gActors[actor_index].var_158 += gActors[actor_index].var_160;
    gActors[actor_index].var_15C += gActors[actor_index].unk_164;
    for (; *vals != 0x7FFF; vals += 5) {
        actor_1 = *vals + actor_index;
        gActors[actor_1].unk_174 += gActors[actor_1].unk_164;
        gActors[actor_1].unk_174 &= 0x03FFFFFF;
        gActors[actor_1].var_154 += gActors[actor_1].unk_168;
    }
}

void func_800808D0(u16 actor_index, s16* vals) {
    f32 scale;
    f32 pos;
    f32 scale_2;
    s32 backup_15C;
    s32 backup_158;
    u16 actor_2;
    u16 actor_1;

    scale = gActors[actor_index].unk_168;
    scale /= 10000.0f;
    backup_158 = gActors[actor_index].var_158;
    backup_15C = gActors[actor_index].var_15C;
    gActors[actor_index].var_158 = 0;
    gActors[actor_index].var_15C = 0;
    for (; vals[0] != 0x7FFF; vals += 5) {
        actor_1 = vals[0] + actor_index;
        actor_2 = vals[1] + actor_index;
        scale_2 = vals[2];
        scale_2 += gActors[actor_1].var_154 / 65536.0f;
        scale_2 += gActors[actor_index].var_154 / 65536.0f;
        scale_2 += gActors[actor_1].unk_138;
        gActors[actor_1].scaleX = scale;
        gActors[actor_1].scaleY = scale;
        pos = COS(gActors[actor_1].var_150) * scale_2 * 65536.0f * scale;
        if (gActors[actor_index].unk_138 != 0.0f) {
            gActors[actor_1].var_158 = gActors[actor_2].var_158 - (s32) pos;
        }
        else {
            gActors[actor_1].var_158 = gActors[actor_2].var_158 + (s32) pos;
        }
        pos = SIN(gActors[actor_1].var_150) * scale_2 * 65536.0f * scale;
        gActors[actor_1].var_15C = gActors[actor_2].var_15C + (s32) pos;
    }
    gActors[actor_index].var_158 = backup_158;
    gActors[actor_index].var_15C = backup_15C;
}

void func_80080AEC(u16 base_actor_index, s16* vals) {
    f32 temp_f0;
    s32 dx;
    s32 dy;
    s32 dz;
    u16 actor_index;

    if (gActors[base_actor_index].unk_138 != 0.0f) {
        dy = -gActors[base_actor_index].var_158;
    }
    else {
        dy = gActors[base_actor_index].var_158;
    }
    dz = gActors[base_actor_index].var_15C;
    if (gActors[base_actor_index].graphicFlags & ACTOR_GFLAG_SCALE) {
        temp_f0 = gActors[base_actor_index].unk_168;
        temp_f0 /= 10000.0f;
        dy = (s32) (dy * temp_f0);
        dz = (s32) (dz * temp_f0);
    }

    actor_index = (u16) gActors[base_actor_index].unk_128;
    if (base_actor_index == actor_index) {
        dx = gActors[base_actor_index].posX.raw + dy;
    }
    else {
        dx = gActors[actor_index].posX.raw - gActors[actor_index].var_158;
        gActors[base_actor_index].posX.raw = dx + dy;
    }

    actor_index = (u16) gActors[base_actor_index].unk_12C;
    if (base_actor_index == actor_index) {
        dy = gActors[base_actor_index].posY.raw + dz;
    }
    else {
        dy = gActors[actor_index].posY.raw - gActors[actor_index].var_15C;
        gActors[base_actor_index].posY.raw = dy + dz;
    }

    actor_index = (u16) gActors[base_actor_index].unk_130;
    if (base_actor_index == actor_index) {
        dz = gActors[base_actor_index].posZ.raw;
    }
    else {
        dz = gActors[actor_index].posZ.raw - gActors[actor_index].unk_13C_f32;
    }

    for (; vals[0] != 0x7FFF; vals += 5) {
        actor_index = vals[0] + base_actor_index;
        gActors[actor_index].posX.raw = gActors[actor_index].var_158 + dx;
        gActors[actor_index].posY.raw = gActors[actor_index].var_15C + dy;
        gActors[actor_index].posZ.raw = gActors[actor_index].unk_13C_f32 + dz;
    }
}

void func_80080ED4(u16 base_actor_index, s16* vals) {
    s16* vals_it;
    s32 vals_index;
    u16 actor_1;
    u16 actor_2;

    for (vals_it = vals; *vals_it != 0x7FFF; vals_it += 5) {
        actor_1 = *vals_it + base_actor_index;
        gActors[actor_1].unk_178 = gActors[actor_1].unk_174;
        gActors[actor_1].unk_17C = gActors[actor_1].var_154;
    }

    for (vals_it = vals; *vals_it != 0x7FFF; vals_it += 5) {
        actor_1 = vals_it[0] + base_actor_index;
        vals_index = (vals_it[4] / 2) * 5;
        actor_2 = vals[vals_index] + base_actor_index;
        gActors[actor_1].unk_174 = gActors[actor_2].unk_178;
        gActors[actor_1].var_154 = gActors[actor_2].unk_17C;
    }
}

void func_80080FF8(u16 base_actor_index, s16* vals) {
    u16 actor_index;

    for (; *vals != 0x7FFF; vals += 5) {
        actor_index = vals[0] + base_actor_index;
        gActors[actor_index].unk_174 = gActors[actor_index].unk_178;
        gActors[actor_index].var_154 = gActors[actor_index].unk_17C;
    }
}

void func_8008105C(u16 base_actor_index, s16* vals_1, s16* vals_2) {
    u16 var_v1;
    u16 actor_index;
    u16 temp_v0;

    if (base_actor_index & 0x8000) {
        var_v1 = 0x200;
        base_actor_index = base_actor_index & 0x7FFF;
    } else {
        var_v1 = 0;
    }
    gActors[base_actor_index].flags |= ACTOR_FLAG_ACTIVE;
    gActors[base_actor_index].unk_128 = base_actor_index;
    gActors[base_actor_index].unk_12C = base_actor_index;
    gActors[base_actor_index].unk_130 = base_actor_index;
    gActors[base_actor_index].unk_168 = 0x2710;
    gActors[base_actor_index].unk_120 = 1.0f;

    for (; vals_1[0] != 0x7FFF; vals_1 += 5, vals_2 += 3) {
        actor_index = vals_1[0] + base_actor_index;
        gActors[actor_index].actorType = 0x21;
        Actor_Initialize(actor_index);
        gActors[actor_index].var_0D8 = 0;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        gActors[actor_index].graphicIndex = vals_2[0];
        temp_v0 = vals_2[1];
        gActors[actor_index].unk_13C_f32 = vals_2[2];
        gActors[actor_index].unk_188 = (temp_v0 & 0x800) | var_v1;
        gActors[actor_index].unk_184 = temp_v0 & 0x3FF;
        if (temp_v0 & 0x400) {
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
            if (temp_v0 & 0x8000) {
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
            }
            if (gActors[base_actor_index].graphicFlags & ACTOR_GFLAG_SCALE) {
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
            }
            if (!(temp_v0 & 0x4000) && (gActors[base_actor_index].graphicFlags & ACTOR_GFLAG_PALETTE)) {
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE;
                gActors[actor_index].unk_18C = gActors[base_actor_index].unk_18C;
            }
        }
    }
}

void func_80081260(u16 actor_index, s16* vals_1, s16* vals_2) {
    u16 temp_s1;
    u16 index;

    for (; vals_1[0] != 0x7FFF; vals_1 += 5, vals_2 += 3) {
        index = vals_1[0] + actor_index;
        gActors[index].graphicIndex = vals_2[0];
        temp_s1 = vals_2[1];
        gActors[index].unk_13C_f32 = vals_2[2];
        gActors[index].unk_188 = temp_s1 & 0x800;
        gActors[index].unk_184 = temp_s1 & 0x3FF;
        gActors[index].scaleX = 1.0f;
        gActors[index].scaleY = 1.0f;
        gActors[index].unk_138 = 0.0f;
        Actor_SetColorRgb(actor_index, 0);
        if (temp_s1 & 0x400) {
            gActors[index].flags |= ACTOR_FLAG_DRAW;
            if (temp_s1 & 0x8000) {
                gActors[index].graphicFlags |= ACTOR_GFLAG_ROTZ;
            }
            else {
                gActors[index].graphicFlags &= ~ACTOR_GFLAG_ROTZ;
            }
            if (gActors[actor_index].graphicFlags & ACTOR_GFLAG_SCALE) {
                gActors[index].graphicFlags |= ACTOR_GFLAG_SCALE;
            }
            else {
                // should be ~ACTOR_GFLAG_SCALE, but compiler assigns to s5
                gActors[index].graphicFlags &= (0xFFFF & ~ACTOR_GFLAG_SCALE);
            }
            if (!(temp_s1 & 0x4000) && (gActors[actor_index].graphicFlags & ACTOR_GFLAG_PALETTE)) {
                gActors[index].graphicFlags |= ACTOR_GFLAG_PALETTE;
                gActors[index].unk_18C = gActors[actor_index].unk_18C;
            }
            else {
                gActors[index].graphicFlags &= ~ACTOR_GFLAG_PALETTE;
            }
        } else {
            gActors[index].graphicFlags = 0;
            gActors[index].flags &= ~ACTOR_FLAG_DRAW;
            gActors[index].graphicIndex = 0;
        }
    }
}

void func_80081478(u16 base_actor_index, s16* vals, u16 array_index) {
    u16 src_index;
    u16* src_vals;
    u16* src_base;
    u16 index;
    u16** array;

    array = (u16**)(gActors[base_actor_index].unk_178);
    src_vals = array[array_index];
    gActors[base_actor_index].var_158 = src_vals[0] << 0x10;
    gActors[base_actor_index].var_15C = src_vals[1] << 0x10;
    src_vals += 2;
    for (src_index = 0; *vals != 0x7FFF; vals += 5, src_index += 2) {
        index = *vals + base_actor_index;
        if (gActors[base_actor_index].unk_13C_f32 != 0.0f) {
            src_base = &src_vals[vals[4]];
        }
        else {
            src_base = &src_vals[src_index];
        }
        ;
        gActors[index].unk_174 = src_base[0] << 0x10;
        gActors[index].var_154 = src_base[1] << 0x10;
        gActors[index].unk_164 = 0;
        gActors[index].unk_168 = 0;
    }
}

void func_80081584(u16 actor_index, s16* vals, void* arg2) {
    u16 actor_1;

    for (; *vals != 0x7FFF; vals += 5) {
        actor_1 = *vals + actor_index;
        gActors[actor_1].graphicFlags |= ACTOR_GFLAG_PALETTE;
        gActors[actor_1].colorR = gActors[actor_index].colorR;
        gActors[actor_1].colorG = gActors[actor_index].colorG;
        gActors[actor_1].colorB = gActors[actor_index].colorB;
        if (gActors[actor_1].graphicIndex != 0) {
            gActors[actor_1].palette_18C = arg2;
        }
    }
}

void func_80081644(u16 base_actor_index, s16* vals) {
    u16 actor_index;

    for (; *vals != 0x7FFF; vals += 5) {
        actor_index = *vals + base_actor_index;
        gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_PALETTE;
    }
}

void func_800816AC(u16 base_actor_index, s16* vals, u32 flags) {
    u16 actor_index;

    for (; vals[0] != 0x7FFF; vals += 5) {
        actor_index = vals[0] + base_actor_index;
        gActors[actor_index].flags |= flags;
        if (gActors[actor_index].graphicIndex == 0) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
        }
    }
}

void func_80081720(u16 base_actor_index, s16* vals, u32 flags_mask) {
    u16 actor_index;

    for (; vals[0] != 0x7FFF; vals += 0x5) {
        actor_index = vals[0] + base_actor_index;
        gActors[actor_index].flags &= ~0 - flags_mask;
    }
}

void func_80081790(u16 actor_index, void* arg1) {
    gActors[actor_index].unk_174 = (s32)arg1;
    gActors[actor_index].unk_16C = 0;
    gActors[actor_index].unk_124 = 0.0f;
    gActors[actor_index].unk_11C = 0.0f;
}

void func_800817D8(u16 actor_index, u16 actor_offset, s16 scale) {
    gActors[actor_index + actor_offset].scaleX =
        ((gActors[actor_index].unk_168 / 10000.0f) / scale) *
        (gActors[actor_index + actor_offset].var_154 / FIXED_UNIT(1.0) + scale);
}

void func_800818C0(u16 actor_index, u16 actor_offset, s16 scale) {
    gActors[actor_index + actor_offset].scaleY =
        ((gActors[actor_index].unk_168 / 10000.0f) / scale) *
        ((gActors[actor_index + actor_offset].var_154 / FIXED_UNIT(1.0)) + scale);
}

// this function is cursed
// - needs variables all on same line to match
// - infitely loops with a break
// - recursively calls itself
void func_800819A8(u16 actor_index, s16* arg1) {\
    u16* var_a3;\
    u16* temp_a2;\
    s32 temp_toggle;\
    s32 pad[3];\
    s32 temp_s2;\
    u32 var_v0;\
    for (;;) {
        gActors[actor_index].unk_16C = 0;
        var_a3 = (u16*)gActors[actor_index].unk_174;
        var_v0 = (u32)gActors[actor_index].unk_124;
        temp_a2 = (u16*)((uintptr_t)var_a3 + (var_v0 * 2));
        gActors[actor_index].unk_11C -= 1.0f;
        if (gActors[actor_index].unk_11C <= 0.0f) {
            switch (temp_a2[3]) {
            default:
                func_80080818(actor_index, arg1);
                func_800801D8(actor_index, arg1, &var_a3[var_v0] + 3);
                gActors[actor_index].unk_124 += 3.0f;
                break;
            case 0x7FFB:
                gActors[actor_index].unk_13C_f32 = 0.0f;
                gActors[actor_index].unk_124 += 1.0f;
                actor_index += 0;
                continue;
            case 0x7FFC:
                temp_toggle = (s32)gActors[actor_index].unk_13C_f32;
                gActors[actor_index].unk_13C_f32 = temp_toggle ^ 1;
                gActors[actor_index].unk_124 += 1.0f;
                actor_index += 0;
                continue;
            case 0x7FFD:
                temp_s2 = temp_a2[4];
                gActors[actor_index].unk_124 += 2.0f;
                func_800819A8(actor_index, arg1);
                gActors[actor_index].unk_16C = temp_s2;
                return;
            case 0x7FFE:
                if (((var_a3[0] & 0xFFFF) == (var_a3[0] * 0)) && (var_a3[1] == 0)) {
                    var_a3 += 3;
                    gActors[actor_index].unk_124 = 3.0f;
                }
                else {
                    gActors[actor_index].unk_124 = 0.0f;
                }
                func_800801D8(actor_index, arg1, var_a3);
                actor_index += 0;
                continue;
            case 0x7FFF:
                gActors[actor_index].unk_11C = -1.0f;
                break;
            }
            func_800805B8(actor_index, arg1);
            func_800808D0(actor_index, arg1);
            func_80080AEC(actor_index, arg1);
            break;
        }
        else {
            func_80080818(actor_index, arg1);
            func_800805B8(actor_index, arg1);
            func_800808D0(actor_index, arg1);
            func_80080AEC(actor_index, arg1);
            break;
        }
    }
}

void func_80081CBC(u32 arg0, u32 arg1) {
}

void func_80081CC8(u32 arg0, u32 arg1) {
}

void func_80081CD4(u32 arg0, u32 arg1, u32 arg2) {
}

void func_80081CE4(u32 arg0, u32 arg1) {
}

void func_80081CF0(u32 arg0, u32 arg1) {
}

void func_80081CFC(u32 arg0, u32 arg1) {
}

void func_80081D08(u32 arg0, u32 arg1) {
}
