#define FUNC_8007CFE0_EXT_ARGS , u16 arg6
#define Actor_Initialize_RET void
#include "common.h"
#include "7D8E0.h"

extern u16 D_800D9A54[];

extern u8 D_800E0F00[];
extern s16 D_800E0F08[]; // x,y pairs used in func_8007D384
extern u16* D_800E0F88[];

void func_8007CCE0(u32 val) {
    u16 count;
    u32 tens_place;

    if (val > 99999999) {
        val = 99999999;
    }
    tens_place = 10000000;
    for (count = 0; count < 8; ) {
        D_800E0F00[count++] = val / tens_place;
        val %= tens_place;
        tens_place /= 10;
    }
}

void func_8007CD68(u16 actor_index, u16 arg1, s16 pos_x, s16 pos_y, u16 arg4, u16 arg5, s32 arg6) {
    gActors[actor_index].actorType = 0x29;
    Actor_Initialize(actor_index);
    gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE;
    gActors[actor_index].posX.whole = pos_x;
    gActors[actor_index].posY.whole = pos_y;
    gActors[actor_index].var_150 = arg4;
    gActors[actor_index].var_154 = arg1;
    gActors[actor_index].var_15C = arg6;
    gActors[actor_index].unk_14C = arg5;
}

s32 func_8007CE24(u16 actor_index, u16 arg1, s16 pos_x, s16 pos_y, u16 arg4) {
    gActors[actor_index].actorType = 0x28;
    Actor_Initialize(actor_index);
    gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE;
    gActors[actor_index].posX.whole = pos_x;
    gActors[actor_index].posY.whole = pos_y;
    gActors[actor_index].var_150 = arg4;
    gActors[actor_index].var_154 = arg1;
}

void func_8007CEB8(u16 actor_index, u16 arg1, s16 pos_x, s16 pos_y, u16 arg4, u16 arg5, u16 arg6, u16 arg7, u16 arg8) {
    gActors[actor_index].actorType = 0x27;
    Actor_Initialize(actor_index);
    gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE;
    gActors[actor_index].posX.whole = pos_x;
    gActors[actor_index].posY.whole = pos_y;
    gActors[actor_index].var_154 = arg1;
    gActors[actor_index].unk_11C = arg7;
    gActors[actor_index].unk_120 = arg6;
    gActors[actor_index].unk_124 = arg4;
    gActors[actor_index].unk_128 = arg5;
    gActors[actor_index].unk_16C = arg8 & 1;
}

void func_8007CFE0(u16 actor_index, u16 arg1, s16 pos_x, s16 pos_y, u16 arg4, u16 arg5, u16 arg6) {
    gActors[actor_index].actorType = 0x26;
    Actor_Initialize(actor_index);
    gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE;
    gActors[actor_index].posX.whole = pos_x;
    gActors[actor_index].posY.whole = pos_y;
    gActors[actor_index].var_110 = arg1;
    gActors[actor_index].unk_114 = arg5;
    gActors[actor_index].unk_118 = arg4;
    gActors[actor_index].unk_16C = arg6 & 1;
}

// spawns a text box over an actor for a few moments.
// ...in the japanese version.
// @param index index of "speaking" actor
// @param text "string" to display
// @param off_x x-position offset of text.
// @param off_y y-position offset of text.
// @param arg4 unused(?)
// @returns index of actor, 0 if failed or English version.
u16 SpawnTextBubble(u16 index, u16* text, s16 off_x, s16 off_y, s32 arg4) {
    return 0;
}

u16 func_8007D0F4(u16 actor_index, u16* text, s16 pos_x, s16 pos_y, u16 arg4) {
    u16 free_actor;

    free_actor = Actor_RangeFindInactive(0x8C, 0x90);
    if (free_actor != 0) {
        gActors[free_actor].actorType = 0x35;
        Actor_Initialize(free_actor);
        gActors[free_actor].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
        gActors[free_actor].flags = ACTOR_FLAG_ACTIVE;
        gActors[free_actor].colorA = 0;
        gActors[free_actor].var_150 = (s32)text;
        gActors[free_actor].var_154 = actor_index;
        gActors[free_actor].unk_114 = (f32) (arg4 & 0x7FFF);
        gActors[free_actor].unk_118 = (f32) (arg4 & 0x8000);
        gActors[free_actor].var_158 = pos_x;
        gActors[free_actor].var_15C = pos_y;
        gActors[free_actor].posX.whole = pos_x;
        gActors[free_actor].posY.whole = pos_y;
        gActors[free_actor].posZ.raw = 0x800000;
        gActors[free_actor].scaleX = 0.0f;
        gActors[free_actor].scaleY = 0.0f;
    }
    return free_actor;
}

u16 func_8007D1E8(u16 actor_index, u16* text, s16 off_x, s16 off_y, u16 arg4, u16* palette) {
    u16 actor;

    actor = SpawnTextBubble(actor_index, text, off_x, off_y, (s32) arg4);
    if (actor != 0) {
        gActors[actor].graphicFlags |= ACTOR_GFLAG_PALETTE;
        gActors[actor].graphicFlags &= ~ACTOR_GFLAG_UNK8;
        if (palette != 0) {
            gActors[actor].palette_18C = palette;
        }
        else {
            gActors[actor].palette_18C = D_800D9AE4;
        }
    }
    return actor;
}

u16 func_8007D290(u16 actor_index) {
    u16 free_actor;

    free_actor = Actor_RangeFindInactive_90ToC0();
    if (free_actor != 0) {
        gActors[free_actor].actorType = 0x34;
        Actor_Initialize(free_actor);
        if (gActors[actor_index].unk_18C != 0) {
            gActors[free_actor].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_PALETTE;
        }
        else {
            gActors[free_actor].graphicFlags = ACTOR_GFLAG_UNK11;
        }
        gActors[free_actor].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[free_actor].posZ.raw = gActors[actor_index].posZ.raw + 1;
        gActors[free_actor].unk_18C = gActors[actor_index].unk_18C;
        if (free_actor < actor_index) {
            gActors[free_actor].unk_148 = 0.0f;
        }
        else {
            gActors[free_actor].unk_148 = 1.0f;
        }
    }
    return free_actor;
}

void func_8007D384(u16 arg0, u16 xy_index) {
    u16 free_actor;
    u16 index;

    free_actor = Actor_RangeFindInactive_90ToC0();
    if (free_actor != 0) {
        index = xy_index & 0x7FFF;
        func_8007CFE0(free_actor, arg0, D_800E0F08[index + 4], D_800E0F08[index + 5], 0, 0xF0, 1);
    }
}

void func_8007D3EC(u16 actor_index) {
    if (gActors[actor_index].colorA > 0x80) {
        gActors[actor_index].colorA = 0x90;
    }
}

void func_8007D438(u16 actor_index, u16 alpha) {
    gActors[actor_index].colorA = gActors[actor_index].scaleY * alpha;
}

void func_8007D520(u16 actor_index) {
    gActors[actor_index].flags = 0;
}

void func_8007D554(u16 actor_index) {
    u16* vals;
    u16 free_actor;
    u16 x;
    s16 y;
    u16 graphic_flags;
    u16 var_s5;
    u16 command;

    if (gActors[actor_index].state == 0) {
        gActors[actor_index].state++;
        gActors[actor_index].colorA = 0;
        gActors[actor_index].scaleY = 0.0f;
    }
    graphic_flags = 0;
    vals = D_800E0F88[(u16)gActors[actor_index].var_110];
    y = 0;
    x = 0;
    while (vals[0] != ALPHA_NULL) {
        for (; vals[0] >= 0x8001; vals++) {
            command = vals[0];
            switch (command & 0x7F00) {
            case 0x100:
                var_s5 = command & 0xFF;
                graphic_flags = ACTOR_GFLAG_PALETTE;
                break;
            case 0x200:
                gActors[actor_index].var_158 = command & 0xFF;
                break;
            case 0x4000:
                x += command & 0xFF;
                break;
            case 0x400:
                x = 0;
                y -= 0x13;
                break;
            }
        }

        free_actor = func_8007D290(actor_index);
        if (free_actor != 0) {
            gActors[free_actor].graphicFlags |= graphic_flags;
            gActors[free_actor].palette_18C = &D_800D9A54[var_s5];
            gActors[free_actor].graphicIndex = (vals[0] * 2) + 0x2D2;
            gActors[free_actor].posX.whole = gActors[actor_index].posX.whole + (gActors[actor_index].scaleX * x);
            gActors[free_actor].posY.whole = gActors[actor_index].posY.whole + (gActors[actor_index].scaleY * y);
            x += gActors[actor_index].var_158;
            vals++;
        }
        else {
            break;
        }
    }
}

void func_8007D880(u16 actor_index, f32 arg1) {
    f32 var_f26;
    f32 var_f20;
    u16 free_actor;
    u16 command;
    u16* vals;

    var_f20 = 0.0f;
    for (vals = D_800E0F88[gActors[actor_index].var_150]; (command = vals[0]) != ALPHA_NULL; vals++) {
        if (command & 0x8000) {
            var_f20 += arg1 / 2.5;
        }
        else {
            var_f20 += arg1;
        }
    }

    gActors[actor_index].scaleX = gActors[actor_index].scaleY * (var_f20 / (arg1 * 0.9));
    var_f20 = gActors[actor_index].scaleY * (-(var_f20 - arg1) / 2);
    var_f26 = gActors[actor_index].scaleY * arg1;
    for (vals = D_800E0F88[gActors[actor_index].var_150]; (command = vals[0]) != ALPHA_NULL; vals++) {
        if (command & 0x8000) {
            var_f20 += (arg1 / 2.5) * gActors[actor_index].scaleY;
        }
        else {
            free_actor = func_8007D290(actor_index);
            if (free_actor != 0) {
                gActors[free_actor].graphicFlags |= ACTOR_GFLAG_SCALE;
                gActors[free_actor].graphicIndex = (command * 2) + 0x2D2;
                gActors[free_actor].posX.whole = gActors[actor_index].posX.whole + var_f20;
                gActors[free_actor].posY.whole = gActors[actor_index].posY.whole;
                gActors[free_actor].colorA = (f32)gActors[actor_index].colorA * 2.0;
                var_f20 += var_f26;
            }
            else {
                break;
            }
        }
    }
}

void func_8007DB84(u16 actor_index) {
    f32 temp_f0;
    u16 index;
    u16 count;
    s32 var_s3;
    s16 angle;
    u16 free_actor;

    gActors[actor_index].var_158 += gActors[actor_index].var_160;
    gActors[actor_index].var_160 = 0;
    if (gActors[actor_index].var_158 < 0) {
        gActors[actor_index].var_158 = 0;
    }
    if (gActors[actor_index].var_15C < gActors[actor_index].var_158) {
        gActors[actor_index].var_158 = gActors[actor_index].var_15C;
    }
    func_8007CCE0(gActors[actor_index].var_158);
    var_s3 = FALSE;
    index = 8 - gActors[actor_index].unk_14C;
    angle = FROM_FIXED(gActors[actor_index].unk_188);
    for (count = 0; count < gActors[actor_index].unk_14C; count++, index++) {
        free_actor = func_8007D290(actor_index);
        if (free_actor != 0) {
            temp_f0 = ((((gActors[actor_index].unk_14C / 2) - (gActors[actor_index].unk_14C - count)) * 9.0f) * gActors[actor_index].scaleX) + (gActors[actor_index].scaleX * 4.5);
            gActors[free_actor].posX.raw = (temp_f0 * (65536.0f * COS(angle))) + gActors[actor_index].posX.raw;
            gActors[free_actor].posY.raw = (temp_f0 * (65536.0f * SIN(angle))) + gActors[actor_index].posY.raw;
            gActors[free_actor].graphicIndex = (D_800E0F00[index] * 2) + 0x2D2;
            if ((index >= 7) || (D_800E0F00[index] != 0) || var_s3) {
                var_s3 = TRUE;
            }
            else {
                gActors[free_actor].unk_18C += 8;
            }
        }
        else {
            break;
        }
    }
}

void func_8007DF44(u16 actor_index) {
    u16 free_actor;
    u16 index;
    s16 angle;
    f32 temp_f0_3;

    gActors[actor_index].unk_14C += gActors[actor_index].unk_134;
    if (gActors[actor_index].var_150 & 0x8000) {
        gActors[actor_index].graphicFlags = 0;
        return;
    }

    if (gActors[actor_index].unk_14C < 0.0f) {
        if ((gActors[actor_index].unk_138 != 0.0f) || (gActors[actor_index].unk_13C_f32 != 0.0f) || (gActors[actor_index].unk_140_f32 != 0.0f) || (gActors[actor_index].unk_144 != 0.0f) || (gActors[actor_index].unk_148 != 0.0f)) {
            gActors[actor_index].unk_14C = 9.0f;
            gActors[actor_index].unk_148 -= 1.0f;
            if (gActors[actor_index].unk_148 < 0.0f) {
                if ((gActors[actor_index].unk_138 != 0.0f) || (gActors[actor_index].unk_13C_f32 != 0.0f) || (gActors[actor_index].unk_140_f32 != 0.0f) || (gActors[actor_index].unk_144 != 0.0f)) {
                    gActors[actor_index].unk_148 = 9.0f;
                    gActors[actor_index].unk_144 -= 1.0f;
                    if (gActors[actor_index].unk_144 < 0.0f) {
                        if ((gActors[actor_index].unk_138 != 0.0f) || (gActors[actor_index].unk_13C_f32 != 0.0f) || (gActors[actor_index].unk_140_f32 != 0.0f)) {
                            gActors[actor_index].unk_144 = 9.0f;
                            gActors[actor_index].unk_140_f32 -= 1.0f;
                            if (gActors[actor_index].unk_140_f32 < 0.0f) {
                                if ((gActors[actor_index].unk_138 != 0.0f) || (gActors[actor_index].unk_13C_f32 != 0.0f)) {
                                    gActors[actor_index].unk_140_f32 = 5.0f;
                                    gActors[actor_index].unk_13C_f32 -= 1.0f;
                                    if (gActors[actor_index].unk_13C_f32 < 0.0f) {
                                        if (gActors[actor_index].unk_138 != 0.0f) {
                                            gActors[actor_index].unk_13C_f32 = 9.0f;
                                            gActors[actor_index].unk_138 -= 1.0f;
                                        } else {
                                            gActors[actor_index].unk_13C_f32 = 0.0f;
                                        }
                                    }
                                } else {
                                    gActors[actor_index].unk_140_f32 = 0.0f;
                                }
                            }
                        } else {
                            gActors[actor_index].unk_144 = 0.0f;
                        }
                    }
                } else {
                    gActors[actor_index].unk_148 = 0.0f;
                }
            }
        } else {
            gActors[actor_index].unk_14C = 0.0f;
        }
    } else if (gActors[actor_index].unk_14C > 9.0f) {
        if ((gActors[actor_index].unk_138 == 9.0f) && (gActors[actor_index].unk_13C_f32 == 9.0f) && (gActors[actor_index].unk_140_f32 == 5.0f) &&
            (gActors[actor_index].unk_144 == 9.0f) && (gActors[actor_index].unk_148 == 9.0f)) {
            gActors[actor_index].unk_14C = 9.0f;
        } else {
            gActors[actor_index].unk_14C = 0.0f;
            gActors[actor_index].unk_148 += 1.0f;
            if (gActors[actor_index].unk_148 > 9.0f) {
                gActors[actor_index].unk_148 = 0.0f;
                gActors[actor_index].unk_144 += 1.0f;
                if (gActors[actor_index].unk_144 > 9.0f) {
                    gActors[actor_index].unk_140_f32 += 1.0f;
                    gActors[actor_index].unk_144 = 0.0f;
                    if (gActors[actor_index].unk_140_f32 > 5.0f) {
                        gActors[actor_index].unk_140_f32 = 0.0f;
                        gActors[actor_index].unk_13C_f32 += 1.0f;
                        if (gActors[actor_index].unk_13C_f32 > 9.0f) {
                            gActors[actor_index].unk_13C_f32 = 0.0f;
                            gActors[actor_index].unk_138 += 1.0f;
                        }
                    }
                }
            }
        }
    }

    angle = FROM_FIXED(gActors[actor_index].unk_188);
    for (index = 0; index < 8; index++) {
        free_actor = func_8007D290(actor_index);
        if (free_actor != 0) {
            temp_f0_3 = (((index * 9) - 0x24) * gActors[actor_index].scaleX) + (gActors[actor_index].scaleX * 4.5);
            gActors[free_actor].posX.raw = (temp_f0_3 * (65536.0f * COS(angle))) + gActors[actor_index].posX.raw;
            gActors[free_actor].posY.raw = (temp_f0_3 * (65536.0f * SIN(angle))) + gActors[actor_index].posY.raw;
            gActors[free_actor].scaleY = gActors[actor_index].scaleY;
            switch (index) {
            case 0:
                gActors[free_actor].graphicIndex = ((u16)gActors[actor_index].unk_138 * 2) + 0x2D2;
                if (gActors[actor_index].unk_138 == 0.0f) {
                    gActors[free_actor].unk_18C += 8;
                }
                break;
            case 1:
                gActors[free_actor].graphicIndex = ((u16)gActors[actor_index].unk_13C_f32 * 2) + 0x2D2;
                if ((gActors[actor_index].unk_138 == 0.0f) && (gActors[actor_index].unk_13C_f32 == 0.0f)) {
                    gActors[free_actor].unk_18C += 8;
                }
                break;
            case 2:
                gActors[free_actor].graphicIndex = 0x35C;
                gActors[free_actor].posY.whole -= 2;
                break;
            case 3:
                gActors[free_actor].graphicIndex = ((u16)gActors[actor_index].unk_140_f32 * 2) + 0x2D2;
                if ((gActors[actor_index].unk_138 == 0.0f) && (gActors[actor_index].unk_13C_f32 == 0.0f) && (gActors[actor_index].unk_140_f32 == 0.0f)) {
                    gActors[free_actor].unk_18C += 8;
                }
                break;
            case 4:
                gActors[free_actor].graphicIndex = ((u16)gActors[actor_index].unk_144 * 2) + 0x2D2;
                if ((gActors[actor_index].unk_138 == 0.0f) && (gActors[actor_index].unk_13C_f32 == 0.0f) && (gActors[actor_index].unk_140_f32 == 0.0f) && (gActors[actor_index].unk_144 == 0.0f)) {
                    gActors[free_actor].unk_18C += 8;
                }
                break;
            case 5:
                gActors[free_actor].graphicIndex = 0x35C;
                gActors[free_actor].posY.whole -= 2;
                break;
            case 6:
                gActors[free_actor].graphicIndex = ((u16)gActors[actor_index].unk_148 * 2) + 0x2D2;
                break;
            case 7:
                gActors[free_actor].graphicIndex = ((u16)gActors[actor_index].unk_14C * 2) + 0x2D2;
                break;
            }
        }
    }
}

void func_8007EA14(u16* str, s32 graphic_flags, s32 pos_x, s32 pos_y, s32 pos_z, u16* palette, u8 red, u8 green, u8 blue, u16 alpha, s16 angle, f32 scale) {
    f32 var_f22;
    s32 sp70;
    u16 sp86;
    u16 free_actor;
    u16* str_it;
    f32 x_off;
    u16 var_s4;

    var_f22 = -1.0f;
    for (str_it = str; *str_it != ALPHA_NULL; str_it++) {
        var_f22 += 1.0f;
    }

    sp70 = graphic_flags & ACTOR_GFLAG_UNK8;
    sp86 = (sp70) ? 0x10 : 0x8;
    if (sp86 == 0x10) {
        x_off = pos_x - (var_f22 * 327680.0f);
    }

    for (str_it = str, var_s4 = 0; *str_it != ALPHA_NULL; str_it++, var_s4++) {
        if ((*str_it & 0x4000) == 0) {
            free_actor = Actor_RangeFindInactive_90ToC0();
            if (free_actor != 0) {
                gActors[free_actor].actorType = 0x34;
                Actor_Initialize(free_actor);
                gActors[free_actor].graphicFlags = graphic_flags & ~(ACTOR_GFLAG_3DOBJ | ACTOR_GFLAG_UNK8);
                gActors[free_actor].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
                gActors[free_actor].graphicIndex = (*str_it * 2) + 0x2D2;
                if (sp86 == 0x10) {
                    gActors[free_actor].posX.raw = x_off;
                    x_off += Text_GetWidth2(str_it) << 0x10;
                    gActors[free_actor].posY.raw = pos_y;
                }
                else {
                    x_off = ((var_f22 / 2) - (var_f22 - var_s4)) * sp86 * scale;
                    gActors[free_actor].posX.raw = (COS(angle) * 65536.0f * x_off) + pos_x;
                    gActors[free_actor].posY.raw = (SIN(angle) * 65536.0f * x_off) + pos_y;
                }
                gActors[free_actor].posZ.raw = pos_z;
                if (sp70) {
                    gActors[free_actor].scaleX = scale;
                    gActors[free_actor].scaleY = scale;
                    gActors[free_actor].colorA = alpha;
                    gActors[free_actor].colorR = red;
                    gActors[free_actor].rotateZ = INDEX_TO_DEG(angle);
                    gActors[free_actor].colorG = green;
                    gActors[free_actor].colorB = blue;
                }
                else {
                    gActors[free_actor].palette_18C = palette;
                }
                if (graphic_flags & ACTOR_GFLAG_3DOBJ) {
                    gActors[free_actor].unk_138_arr[4] = 1.0f;
                }
                else {
                    gActors[free_actor].unk_138_arr[4] = 0.0f;
                }
            }
            else {
                break;
            }
        }
        else {
            if (sp86 == 0x10) {
                x_off += 917504.0f;
            }
        }
    }
}

void func_8007EE14(u16* str, s32 graphic_flags, s32 pos_x, s32 pos_y, s32 pos_z, u16* palette) {
    func_8007EA14(str, graphic_flags, pos_x, pos_y, pos_z, palette, 0x7F, 0x7F, 0x7F, 0xFF, 0, 1.0f);
}

u16 func_8007EE70(u32 graphic_flags, s32 pos_x, s32 pos_y, s32 pos_z, f32 scale_x, f32 scale_y) {
    u16 actor_index;

    actor_index = Actor_RangeFindInactive_90ToC0();
    if (actor_index != 0) {
        gActors[actor_index].actorType = 0x34;
        Actor_Initialize(actor_index);
        gActors[actor_index].graphicFlags = graphic_flags & ~ACTOR_GFLAG_3DOBJ;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[actor_index].graphicIndex = 0x2D0;
        gActors[actor_index].posX.raw = pos_x;
        gActors[actor_index].posY.raw = pos_y;
        gActors[actor_index].posZ.raw = pos_z;
        gActors[actor_index].scaleX = scale_x;
        gActors[actor_index].scaleY = scale_y;
        gActors[actor_index].colorA = 0xC0;
        if (graphic_flags & ACTOR_GFLAG_3DOBJ) {
            gActors[actor_index].unk_148 = 1.0f;
        }
        else {
            gActors[actor_index].unk_148 = 0.0f;
        }
    }
    return actor_index;
}

void func_8007EF58(u16* vals, u32 graphic_flags, s32 pos_x, s32 pos_y, s32 pos_z, u16 alpha, f32 scale_x, f32 scale_y) {
    f32 scale_numerator;
    f32 scale_denominator;
    u16 actor_index;

    if (graphic_flags & ACTOR_GFLAG_UNK8) {
        scale_denominator = 16.0f;
    }
    else {
        scale_denominator = 8.0f;
    }

    scale_numerator = 0.0f;
    for (; vals[0] != ALPHA_NULL; vals++) {
        if (vals[0] & 0x8000) {
            scale_numerator += scale_denominator / 2.5;
        }
        else {
            scale_numerator += scale_denominator;
        }
    }
    scale_x = (scale_numerator / (scale_denominator * 0.9)) * scale_x;
    actor_index = func_8007EE70(graphic_flags, pos_x, pos_y, pos_z, scale_x, scale_y);
    if (actor_index != 0) {
        gActors[actor_index].colorA = alpha;
    }
}

void func_8007F078(u16 actor_index) {
    u16 portrait_index;

    portrait_index = gActors[actor_index].var_154;
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].unk_120 -= 1.0f;
        if (gActors[actor_index].unk_120 < 0.0f) {
            gActors[actor_index].state++;
            gPortraits[portrait_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
            gPortraits[portrait_index].graphicIndex = 0x2D0;
            gPortraits[portrait_index].posX.whole = gActors[actor_index].posX.whole;
            gPortraits[portrait_index].posY.whole = gActors[actor_index].posY.whole;
            gPortraits[portrait_index].scaleX = gActors[actor_index].unk_124 / 16;
            gPortraits[portrait_index].scaleY = 0.0f;
        }
        break;
    case 1:
        gPortraits[portrait_index].scaleY = Math_ApproachF32(gPortraits[portrait_index].scaleY, gActors[actor_index].unk_128 / 16, 0.2f);
        if ((gActors[actor_index].unk_16C != 0) && ((gButtonPress & gButton_B) || (gButtonPress & gButton_A))) {
            gActors[actor_index].state++;
        }
        else {
            gActors[actor_index].unk_11C -= 1.0f;
            if (gActors[actor_index].unk_11C < 0.0f) {
                gActors[actor_index].state++;
            }
        }
        break;
    case 2:
        gPortraits[portrait_index].scaleY -= 0.2;
        if (gPortraits[portrait_index].scaleY < 0.0f) {
            gActors[actor_index].flags = 0;
            gPortraits[portrait_index].flags = 0;
        }
        break;
    }
    gActors[portrait_index].colorA = (u8) ((128.0f / (gActors[actor_index].unk_128 / 16)) * gActors[portrait_index].scaleY);
}

void func_8007F37C(u16 actor_index) {
    s32 pad;
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].unk_118 -= 1.0f;
        if (gActors[actor_index].unk_118 < 0.0f) {
            func_8007D554(actor_index);
        }
        break;
    case 1:
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0xFF, 0x20);
        gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 1.0f, 0.1f);
        func_8007D554(actor_index);
        if ((gActors[actor_index].unk_16C != 0) && ((gButtonPress & gButton_B) || (gButtonPress & gButton_A))) {
            gActors[actor_index].state++;
        }
        else {
            gActors[actor_index].unk_114 -= 1.0f;
            if (gActors[actor_index].unk_114 < 0.0f) {
                gActors[actor_index].state++;
            }
        }
        break;
    case 2:
        gActors[actor_index].scaleY -= 0.2;
        gActors[actor_index].colorA -= 0x20;
        if (gActors[actor_index].scaleY < 0.0f) {
            func_8007D520(actor_index);
        }
        else {
            func_8007D554(actor_index);
        }
        break;
    }
}

void func_8007F560(u16 actor_index) {
    u16* str;
    u16 scale_denominator;
    u16 scale_numerator;
    s32 x;
    s32 y;
    s32 z;
    s32 graphic_flags;

    gActors[actor_index].unk_114 -= 1.0f;
    if ((gActors[actor_index].unk_114 < 0.0f) || !(gActors[gActors[actor_index].var_154].flags & ACTOR_FLAG_ACTIVE)) {
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0, 0x20);
        if (gActors[actor_index].colorA == 0) {
            gActors[actor_index].flags = 0;
            return;
        }
    }
    else {
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0x7F, 0x10);
        gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 1.0f, 0.05f);
    }
    if (gActors[actor_index].var_154 != 0xFFFF) {
        x = gActors[(u16)gActors[actor_index].var_154].posX.raw + (gActors[actor_index].var_158 * gActors[actor_index].scaleY * 65536.0f) ;
        y = gActors[(u16)gActors[actor_index].var_154].posY.raw + (gActors[actor_index].var_15C * gActors[actor_index].scaleY * 65536.0f);
        z = FIXED_UNIT(64.0);
    }
    else {
        x = gActors[actor_index].posX.raw;
        y = gActors[actor_index].posY.raw;
        z = gActors[actor_index].posZ.raw;
    }

    str = (u16*)gActors[actor_index].var_150;
    if (gActors[actor_index].flags & ACTOR_FLAG_UNK8) {
        scale_denominator = 16;
    }
    else {
        scale_denominator = 8;
    }
    scale_numerator = 0;
    for (; *str != ALPHA_NULL; str++) {
        if (*str & 0x8000) {
            scale_numerator += (scale_denominator / 2.5);
        }
        else {
            scale_numerator += scale_denominator;
        }
    }

    gActors[actor_index].scaleX = gActors[actor_index].scaleY * (scale_numerator / (scale_denominator * 0.9));
    if (gActors[actor_index].graphicFlags & ACTOR_GFLAG_UNK8) {
        graphic_flags = gActors[actor_index].graphicFlags | ACTOR_GFLAG_3DOBJ | ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_SCALE;
        func_8007EA14((u16* ) gActors[actor_index].var_150, graphic_flags, x, y, z, NULL, gActors[actor_index].colorR, gActors[actor_index].colorG, gActors[actor_index].colorB, 0xFF, 0, gActors[actor_index].scaleY);
    }
    else {
        graphic_flags = gActors[actor_index].graphicFlags | ACTOR_GFLAG_3DOBJ | ACTOR_GFLAG_UNK11;
        func_8007EE14((u16* ) gActors[actor_index].var_150, graphic_flags, x, y, z, gActors[actor_index].palette_18C);
    }
    graphic_flags = ACTOR_GFLAG_3DOBJ | ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_SCALE;
    func_8007EE70(graphic_flags, x, y, z - 1, gActors[actor_index].scaleX, gActors[actor_index].scaleY);
}
