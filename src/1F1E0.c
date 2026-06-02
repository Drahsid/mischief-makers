#include "common.h"
#include "actor.h"
#include "cosine.h"
#include "boot.h"
#include "debug_level_select.h"
#include "input.h"
#include "music.h"

typedef void (*UnkFunc800CA1C0)(u16, u16, Actor*);

extern u16 gRngSeed;
extern u16 gAudioFadeMode;

extern u16 D_800BE4D0;
extern u16 D_800BE4D4;
extern u16 D_800BE4D8;
extern u16 D_800BE4DC;
extern u16 D_800BE4E0;
extern u16 D_800BE500;
extern u16 D_800BE530;
extern u16 D_800BE534;
extern u16 D_800BE544;
extern s16 D_800BE590;
extern u16 D_800BE5D0;
extern u16 D_800BE668;
extern u16 D_800BE6B4;
extern u16 D_800BE6B8;
extern u16 D_800BE704;
extern u16 D_800BE708;

extern s32 D_800CA254; // unknown type
extern s32 D_800CA26C; // unknown type
extern s32 D_800CA280; // unknown type
extern s32 D_800CA28C; // unknown type
extern s32 D_800CA2A0; // unknown type

extern s16 D_800C7CA4[];
extern s16 D_800C7CAC[];
extern s16 D_800C7CB4[];
extern s16 D_800C7CBC[];
extern u16 D_800C83F8[];
extern u16 D_800CA234;
extern u16 D_800CA2B0[];

extern UnkFunc800CA1C0 D_800CA1C0[];
extern u16 D_800CA230;
extern u16 D_800CA238; // attract demo index
extern u16 D_800CA23C;
extern u16 D_800CA240;
extern u16 D_800CA244;
extern u16 D_800CA248;
extern u16 D_800CA24C;
extern u16 D_800CA250;
extern s16 D_800CBF40;
extern u16* D_800CBDFC[];
extern u16* D_800CBE0C[];

extern u16 D_800D28E4;
extern u16 D_800D28E8;
extern u16 D_800D2908;
extern u16 D_800D2918;
extern u16 D_800D291C;
extern u16 D_800D2920;
extern u16 D_800D2924;
extern u16 D_800D2978[];

extern s16 D_800E13DC[];
extern s16 D_800E13FC[];

extern u16 D_80104098[];
extern u8 D_8010CDF0[0x10000];
extern u16 D_8011CDF8[];
extern u16 D_8011CF20[];
extern s16 D_8011D048[];
extern s16 D_8011D170[];
extern s16 D_8011D290[];
extern s16 D_8011D3D0[];
extern s16 D_8011D4F0[];
extern s16 D_8011D610[];
extern s16 D_8011D730[];
extern s16 D_8011D850[];
extern u32 D_80137458;
extern u32 D_801374DC; // time duration

extern u16 D_80178136;
extern s16 D_801781C0[]; // some volume setting
extern u16 D_801781C8;
extern u16 D_801781CA;
extern u16 D_801781CC;
extern u16 D_801781CE;
extern u16 D_801781D0;
extern u16 D_801781D2;
extern u16 D_801781D4;
extern u16 D_801781DC;
extern u16 D_801781E0;
extern u16 D_801782B8;

extern void GameState_Loading(void);
extern void Sound_StartFade(u16, u16);
extern void func_8001107C(void);
extern void func_800122B0(void);
extern void func_80012830(void);
extern u8 func_80012AB4(s16 arg0, s16 arg1);
extern void func_80014AF0(void);
extern void func_80014C44(void);
extern void func_80016CB4(void);
extern void func_80016D94(void);
extern void func_8001751C(void);
extern void func_8001DE30(void);
extern void func_8001FF30(void);
extern void func_8001FF50(void);
extern void func_80022470(void);
extern void func_800253B0(void);
extern void func_800457C8(void);
extern void func_80047C98(void);
extern void func_80047CCC(void);
extern void func_8004ED10(u16);
extern u8 func_8005C870(u8);
extern void func_8005C8A4(void);
extern void func_8005F6D4(void);
extern void func_80083518(s32, s32, s16, s32); // guess on types
extern void func_800836A0(s32, s32, s32*, s32); // guess on types
extern void func_80083A74(s32, s32, s32); // guess
extern void func_80083C54(s16, s32, s32); // guess
extern void func_8008C528(u16); // guess
extern void func_8008CA90(void);

// quantizes NEGSIN to `n` number of angles
#define UPPER_N_BITS(n, s) (((1 << ((n) / 2)) - 1) << ((s) - ((n) / 2)))
#define NEGSIN_QUANTIZE(x, n) gCosineLookup[(((x) + COSPiOver2) & UPPER_N_BITS(n, 10)) & COSLEN]

s32 func_8001E5E0(u16 actor0, u16 actor1, s32 arg2) {
    s32 v;
    f32 sp20;

    sp20 = sqrtf(gActors[actor0].unk_0E2);
    v = Math_Atan2(gActors[actor0].posX.raw - gActors[actor1].posX.raw, gActors[actor0].posY.raw - gActors[actor1].posY.raw);
    return NEGSIN_QUANTIZE(v, 2) * (sp20 * arg2 * 2);
}

s32 func_8001E6F4(u16 actor0, u16 actor1, s32 arg2) {
    s32 v;
    f32 sp20;

    sp20 = sqrtf(gActors[actor0].unk_0E2);
    v = Math_Atan2(gActors[actor0].posX.raw - gActors[actor1].posX.raw, gActors[actor0].posY.raw - gActors[actor1].posY.raw);
    return SIN(v) * (sp20 * arg2 * 2);
}

void func_8001E808(s32 arg0, s32 arg1) {
}

void func_8001E814(u16 arg0, u16 arg1) {
    if ((gActors[arg0].velocityX.raw != 0) || (gActors[arg0].velocityY.raw != 0)) {
        gActors[arg1].unk_0F8.raw = gActors[arg0].velocityX.raw;
        gActors[arg1].unk_0FC.raw = gActors[arg0].velocityY.raw;
    }
    else {
        gActors[arg1].unk_0F8.raw = func_8001E5E0(arg0, arg1, 0x2000);
        gActors[arg1].unk_0FC.raw = func_8001E6F4(arg0, arg1, 0x2000);
    }
}

void func_8001E8E4(u16 arg0, u16 arg1) {
    if (!(gActors[arg0].flags & ACTOR_FLAG_FLIPPED)) {
        gActors[arg1].unk_0F8.raw = gActors[arg0].unk_0F8.raw;
    }
    else {
        gActors[arg1].unk_0F8.raw = -gActors[arg0].unk_0F8.raw;
    }
    gActors[arg1].unk_0FC.raw = gActors[arg0].unk_0FC.raw;
}

void func_8001E964(u16 arg0, u16 arg1) {
    if (gActors[arg1].posX.whole < gActors[arg0].posX.whole) {
        gActors[arg1].unk_0F8.raw = -gActors[arg0].unk_0F8.raw;
    }
    else {
        gActors[arg1].unk_0F8.raw = gActors[arg0].unk_0F8.raw;
    }
    gActors[arg1].unk_0FC.raw = gActors[arg0].unk_0FC.raw;
}

void func_8001E9DC(u16 arg0, u16 arg1) {
    gActors[arg1].unk_0F8.raw = gActors[arg0].unk_0F8.raw * COS(func_8000178C() * 4);
    gActors[arg1].unk_0FC.raw = gActors[arg0].unk_0FC.raw * COS(func_8000178C());
}

void func_8001EADC(u16 arg0, u16 arg1) {
    if ((gActors[arg1].unk_0DE == 0xB) || (gActors[arg1].unk_0DE == 0xE) || (gActors[arg1].unk_0DE == 0xF)) {
        gActors[arg1].flags_098 &= ~ACTOR_FLAG3_UNK1;
        gActors[arg0].flags_098 ^= (ACTOR_FLAG3_UNK1 | ACTOR_FLAG3_UNK0);
        gActors[arg0].unk_0DC = gActors[arg0].unk_0DA;
        gActors[arg0].unk_0DD = gActors[arg0].unk_0DB;
    }
    else {
        func_8001E9DC(arg0, arg1);
    }
}

void func_8001EB8C(u16 arg0, u16 arg1) {
    gActors[arg1].unk_0DC = gActors[arg0].unk_0DA;
    gActors[arg1].unk_0DD = gActors[arg0].unk_0DB;
    D_800CA1C0[gActors[arg0].unk_0DB](arg0, arg1, gActors);
}

void func_8001EC1C(void) {
    u16 index_s1;
    u16 count_a2;
    u16 index_fp;
    u16 index_s4;
    s16 spCE6;
    u16 count_t0;
    u16 var_t3;
    u16 actor_index;
    u16 spCDE;
    u16 pad;
    s32 var_t2;
    u16 spBB8[0x90];
    u16 spA98[0x90];
    s16 sp978[0x90];
    s16 sp858[0x90];
    s16 sp738[0x90];
    s16 sp618[0x90];
    s16 sp4F8[0x90];
    s16 sp3D8[0x90];
    s16 sp2B8[0x90];
    s16 sp198[0x90];
    s16 sp78[0x90];

    if (!(D_80137458 & 0x10) && (gGameState == 6)) {
        count_a2 = 0;
        index_s1 = 0;
        spBB8[0] = 0;
        sp978[0] = gActors[0].posX.whole + gActors[0].hitboxBX1 + 0x30;
        sp738[0] = (gActors[0].posX.whole + gActors[0].hitboxBX0) - 0x30;
        sp3D8[0] = gActors[0].posY.whole + gActors[0].hitboxBY0 + 0x28;
        sp198[0] = (gActors[0].posY.whole + gActors[0].hitboxBY1) - 0x28;
        count_t0 = 1;
        for (; index_s1 < 0x90; index_s1++) {
            if (gActors[index_s1].flags & ACTOR_FLAG_UNK7) {
                spBB8[count_t0] = index_s1;
                sp978[count_t0] = gActors[index_s1].posX.whole + gActors[index_s1].hitboxAX1;
                sp738[count_t0] = gActors[index_s1].posX.whole + gActors[index_s1].hitboxAX0;
                sp3D8[count_t0] = gActors[index_s1].posY.whole + gActors[index_s1].hitboxAY0;
                sp198[count_t0++] = gActors[index_s1].posY.whole + gActors[index_s1].hitboxAY1;
            }
            if ((gActors[index_s1].flags & ACTOR_FLAG_UNK10) != 0) {
                spA98[count_a2] = index_s1;
                sp858[count_a2] = gActors[index_s1].posX.whole + gActors[index_s1].hitboxBX1;
                sp618[count_a2] = gActors[index_s1].posX.whole + gActors[index_s1].hitboxBX0;
                sp2B8[count_a2] = gActors[index_s1].posY.whole + gActors[index_s1].hitboxBY0;
                sp78[count_a2++] = gActors[index_s1].posY.whole + gActors[index_s1].hitboxBY1;
            }
        }
        for (index_fp = 0; index_fp < count_a2; index_fp++) {
            actor_index = spA98[index_fp];
            gActors[actor_index].unk_0E2 = 0;
            for (index_s4 = 0; index_s4 < count_t0; index_s4++) {
                index_s1 = spBB8[index_s4];
                if (index_s1 != actor_index) {
                    if (((gActors[actor_index].unk_0D4 == 0) || ((gActors[index_s1].unk_0DB == 0x13))) && (sp738[index_s4] < sp858[index_fp]) &&
                        (sp618[index_fp] < sp978[index_s4]) && (sp198[index_s4] < sp2B8[index_fp]) && (sp78[index_fp] < sp3D8[index_s4])) {

                        if (index_s4 == 0) {
                            if (((gActors[index_s1].unk_0DB != 0x15) || (gActors[actor_index].actorType != 0x17)) &&
                                (!(gActors[index_s1].flags & ACTOR_FLAG_ATTACHED) || (gActors[index_s1].unk_0D6 != actor_index))) {
                                gActors[index_s1].flags_098 |= ACTOR_FLAG3_UNK11;
                            }
                        }
                        else {
                            do {
                                if ((gActors[actor_index].unk_0DF & 0x20) & 0xFF) { // fakematch? `& 0xFF` for regalloc
                                    if ((gActors[index_s1].unk_0DA & 0x20) == 0) {
                                        break;
                                    }

                                    if (gActors[index_s1].unk_0DB == 0x12) {
                                        gActors[index_s1].unk_0F8.raw = gActors[actor_index].velocityX.raw;
                                        gActors[index_s1].unk_0FC.raw = gActors[actor_index].velocityY.raw;
                                    }
                                }
                                else if (gActors[index_s1].unk_0DB == 0x12) {
                                    break;
                                }

                                if (gActors[index_s1].unk_0DB < 0x15) {
                                    // This unreachable branch preserves IDO's reload before the contact-owner store.
                                    if ((!gActors) && (!gActors)) {
                                    }
                                    gActors[index_s1].unk_0D6 = actor_index;
                                }
                                if (((gActors[index_s1].unk_0DB != 0x15) || (gActors[actor_index].actorType != 0x17)) &&
                                    (!(gActors[index_s1].flags & ACTOR_FLAG_ATTACHED) || (gActors[index_s1].unk_0D6 != actor_index))) {
                                    gActors[index_s1].flags_098 |= ACTOR_FLAG3_UNK0;
                                    if (gActors[index_s1].unk_0DB < 0x17) {
                                        gActors[actor_index].unk_0D6 = index_s1;
                                        gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK1;
                                        gActors[actor_index].unk_0E2 += gActors[index_s1].damage;
                                    }
                                }
                            } while (0);
                        }
                    }
                }
            }
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) {
                func_8001EB8C(gActors[actor_index].unk_0D6, actor_index);
            }
            if (!(gActors[actor_index].flags & ACTOR_FLAG_UNK15)) {
                if (gActors[actor_index].unk_0E2 < gActors[actor_index].health) {
                    gActors[actor_index].health -= gActors[actor_index].unk_0E2;
                }
                else {
                    gActors[actor_index].health = 0;
                }
            }
        }

        count_a2 = 0;
        index_s1 = 0;
        spBB8[0] = 0;
        sp978[0] = gActors[0].posX.whole + gActors[0].hitboxBX1 + 0x30;
        sp738[0] = (gActors[0].posX.whole + gActors[0].hitboxBX0) - 0x30;
        sp3D8[0] = gActors[0].posY.whole + gActors[0].hitboxBY0 + 0x28;
        sp198[0] = (gActors[0].posY.whole + gActors[0].hitboxBY1) - 0x28;
        count_t0 = 1;
        for (; index_s1 < 0x90; index_s1++) {
            if (((gActors[index_s1].flags_098 & ACTOR_FLAG3_UNK1) == 0) && (gActors[index_s1].flags & ACTOR_FLAG_UNK11)) {
                spBB8[count_t0] = index_s1;
                sp978[count_t0] = gActors[index_s1].posX.whole + gActors[index_s1].hitboxAX1;
                sp738[count_t0] = gActors[index_s1].posX.whole + gActors[index_s1].hitboxAX0;
                sp3D8[count_t0] = gActors[index_s1].posY.whole + gActors[index_s1].hitboxAY0;
                sp198[count_t0++] = gActors[index_s1].posY.whole + gActors[index_s1].hitboxAY1;
            }
            if (gActors[index_s1].unk_0D4 == 0) {
                if ((gActors[index_s1].health >= 0) && ((gActors[index_s1].flags_098 & ACTOR_FLAG3_UNK1) == 0) && (gActors[index_s1].flags & ACTOR_FLAG_UNK12) && ((index_s1 == 0) || (gActors[index_s1].health != 0))) {
                    spA98[count_a2] = index_s1;
                    sp858[count_a2] = gActors[index_s1].posX.whole + gActors[index_s1].hitboxBX1;
                    sp618[count_a2] = gActors[index_s1].posX.whole + gActors[index_s1].hitboxBX0;
                    sp2B8[count_a2] = gActors[index_s1].posY.whole + gActors[index_s1].hitboxBY0;
                    sp78[count_a2++] = gActors[index_s1].posY.whole + gActors[index_s1].hitboxBY1;
                }
            }
        }

        for (index_s4 = 0; index_s4 < count_t0; index_s4++) {
            index_s1 = spBB8[index_s4];
            var_t2 = 0x80000001;
            var_t3 = 0x7FFF;
            for (index_fp = 0; index_fp < count_a2; index_fp++) {
                actor_index = spA98[index_fp];
                if ((actor_index != 0xFFFF) && (index_s1 != actor_index)) {
                    if (gActors[actor_index].unk_0DB != 0x18) {
                        if (gActors[actor_index].posZ.raw >= var_t2) {
                            spCDE = ABS(gActors[index_s1].posX.whole - gActors[actor_index].posX.whole) +
                                    ABS(gActors[index_s1].posY.whole - gActors[actor_index].posY.whole);
                            if ((var_t2 == gActors[actor_index].posZ.raw) && (var_t3 < spCDE)) {
                                continue;
                            }
                        }
                        else {
                            continue;
                        }
                    }

                    if ((sp738[index_s4] < sp858[index_fp]) && (sp618[index_fp] < sp978[index_s4]) && (sp198[index_s4] < sp2B8[index_fp])) {
                        if (sp78[index_fp] < sp3D8[index_s4]) {
                            if (index_s4 == 0) {
                                if (!(gActors[index_s1].flags_098 & ACTOR_FLAG3_UNK0)) {
                                    gActors[index_s1].flags_098 |= ACTOR_FLAG3_UNK11;
                                }
                                break;
                            }
                            else if (gActors[actor_index].unk_0DB == 0x18) {
                                gActors[actor_index].unk_0D6 = index_s1;
                                gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK0;
                            }
                            else {
                                var_t2 = gActors[actor_index].posZ.raw;
                                var_t3 = spCDE;
                                spA98[index_fp] = 0xFFFF;
                                gActors[index_s1].unk_0D6 = actor_index;
                                gActors[index_s1].flags_098 |= ACTOR_FLAG3_UNK8;
                            }
                        }
                    }
                }
            }
        }

        if (spCDE) {} // fakematch to get lh/sh spCDE around for loop above

        if (gGameState == 6) {
            count_t0 = 0;
            count_a2 = 0;
            index_s1 = 0;
            for (; index_s1 < 0x90; index_s1++) {
                if (!(gActors[index_s1].flags_098 & ACTOR_FLAG3_UNK1) && (gActors[index_s1].flags & ACTOR_FLAG_UNK9)) {
                    spBB8[count_t0] = index_s1;
                    sp978[count_t0] = gActors[index_s1].posX.whole + gActors[index_s1].hitboxAX1;
                    sp738[count_t0] = gActors[index_s1].posX.whole + gActors[index_s1].hitboxAX0;
                    sp3D8[count_t0] = gActors[index_s1].posY.whole + gActors[index_s1].hitboxAY0;
                    sp198[count_t0++] = gActors[index_s1].posY.whole + gActors[index_s1].hitboxAY1;
                }
                if (gActors[index_s1].flags & ACTOR_FLAG_UNK8) {
                    spA98[count_a2] = index_s1;
                    sp858[count_a2] = gActors[index_s1].posX.whole + gActors[index_s1].hitboxBX1;
                    sp618[count_a2] = gActors[index_s1].posX.whole + gActors[index_s1].hitboxBX0;
                    sp4F8[count_a2] = gActors[index_s1].posX.whole;
                    sp2B8[count_a2] = gActors[index_s1].posY.whole + gActors[index_s1].hitboxBY0;
                    sp78[count_a2++] = gActors[index_s1].posY.whole + gActors[index_s1].hitboxBY1;
                }
            }

            for (index_fp = 0; index_fp < count_a2; index_fp++) {
                actor_index = spA98[index_fp];
                spCE6 = gActors[actor_index].unk_0E2;
                gActors[actor_index].unk_0E2 = 0;
                for (index_s4 = 0; index_s4 < count_t0; index_s4++) {
                    index_s1 = spBB8[index_s4];
                    if (index_s1 != actor_index) {
                        if (((gActors[actor_index].unk_0D4 == 0) || ((gActors[index_s1].unk_0DB == 0x13))) && (sp738[index_s4] < sp858[index_fp]) && (sp618[index_fp] < sp978[index_s4]) && (sp198[index_s4] < sp2B8[index_fp])) {
                            if (sp78[index_fp] < sp3D8[index_s4]) {
                                gActors[index_s1].flags_098 |= ACTOR_FLAG3_UNK0;
                                if ((gActors[index_s1].unk_0DB < 0x14) || (gActors[index_s1].unk_0DB == 0x18)) {
                                    gActors[index_s1].unk_0D6 = actor_index;
                                }
                                if ((actor_index == 0) && !(gActors[actor_index].flags & ACTOR_FLAG_UNK15) && (gActors[index_s1].unk_0DA & 4)) {
                                    gActors[actor_index].unk_0D4 = 0x3C;
                                }
                                if ((actor_index != 0) || !(gActors[actor_index].flags & ACTOR_FLAG_UNK15) || (gActors[index_s1].unk_0DB == 0x13)) {
                                    if (gActors[index_s1].unk_0DB < 0x14) {
                                        gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK1;
                                        gActors[actor_index].unk_0E2 += gActors[index_s1].damage;
                                        gActors[actor_index].unk_0D6 = index_s1;
                                        func_8001EB8C(index_s1, actor_index);
                                    }
                                }
                            }
                        }
                    }
                }
                if (actor_index == 0) {
                    if (gActors[actor_index].unk_0E2 == 0) {
                        gActors[actor_index].unk_0E2 = spCE6;
                    }
                }
                else if (!(gActors[actor_index].flags & ACTOR_FLAG_UNK15)) {
                    if (gActors[actor_index].unk_0E2 < gActors[actor_index].health) {
                        gActors[actor_index].health -= gActors[actor_index].unk_0E2;
                    }
                    else {
                        gActors[actor_index].health = 0;
                    }
                }
            }
        }
    }
}

void func_8001F88C(void) {
    u16 index;

    if (!(D_80137458 & 0x10)) {
        for (index = 0, D_800BE4D0 = 0, D_800BE4D4 = 0; index < 144; index++) {
            if (gActors[index].flags & ACTOR_FLAG_UNK18) {
                D_8011CF20[D_800BE4D0] = index;
                D_8011D170[D_800BE4D0] = gActors[index].posX.whole + gActors[index].hitboxBX1;
                D_8011D3D0[D_800BE4D0] = gActors[index].posX.whole + gActors[index].hitboxBX0;
                D_8011D610[D_800BE4D0] = gActors[index].posY.whole + gActors[index].hitboxBY0;
                D_8011D850[D_800BE4D0] = gActors[index].posY.whole + gActors[index].hitboxBY1;
                D_800BE4D0++;
            }
            if (gActors[index].flags & ACTOR_FLAG_UNK13) {
                D_8011CDF8[D_800BE4D4] = index;
                D_8011D048[D_800BE4D4] = gActors[index].posX.whole + gActors[index].hitboxBX1;
                D_8011D290[D_800BE4D4] = gActors[index].posX.whole + gActors[index].hitboxBX0;
                D_8011D4F0[D_800BE4D4] = gActors[index].posY.whole + gActors[index].hitboxBY0;
                D_8011D730[D_800BE4D4] = gActors[index].posY.whole + gActors[index].hitboxBY0 - 8;
                D_800BE4D4++;
            }
        }
    }
}

u8 func_8001FA78(u16 actor_index, s16 arg1, s16 arg2) {
    u16 var_a3;
    u16 index;

    var_a3 = actor_index;
    if ((gActors[actor_index].flags & ACTOR_FLAG_ATTACHED) || (gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK9 | ACTOR_FLAG3_UNK10))) {
        var_a3 = gActors[actor_index].unk_0D6;
    }
    
    for (index = 0; index < D_800BE4D0; index++) {
        if ((actor_index != D_8011CF20[index]) && (var_a3 != D_8011CF20[index]) &&
            (D_8011D170[index] >= arg1) && (arg1 >= D_8011D3D0[index]) &&
            (D_8011D610[index] >= arg2) && (arg2 >= D_8011D850[index])) {
            D_800BE4DC = D_8011CF20[index];
            return 0xC0;
        }
    }

    for (index = 0; index < D_800BE4D4; index++) {
        if ((actor_index != D_8011CDF8[index]) && (var_a3 != D_8011CDF8[index]) &&
            (D_8011D048[index] >= arg1) && (arg1 >= D_8011D290[index]) &&
            (D_8011D4F0[index] >= arg2) && (arg2 >= D_8011D730[index])) {
            D_800BE4DC = D_8011CDF8[index];
            return 0x40;
        }
    }

    D_800BE4DC = 0;
    return 0;
}

u8 func_8001FCA0(u16 actor_index, s16 arg1, s16 arg2) {
    u8 temp_v0;
    u16 index;

    temp_v0 = func_8005C870(func_80012AB4(arg1, arg2));
    D_800BE4DC = 0;
    D_800BE4D8 = 0;
    if (temp_v0 != 0) {
        return temp_v0;
    }
    for (index = 0; index < D_800BE4D0; index++) {
        if ((D_8011D170[index] >= arg1) && (arg1 >= D_8011D3D0[index]) &&
            (D_8011D610[index] >= arg2) && (arg2 >= D_8011D850[index]) &&
            (actor_index != D_8011CF20[index])) {
            D_800BE4DC = D_8011CF20[index];
            D_800BE4D8 = 1;
            return 0xC0;
        }
    }

    for (index = 0; index < D_800BE4D4; index++) {
        if ((D_8011D048[index] >= arg1) && (arg1 >= D_8011D290[index]) &&
            (D_8011D4F0[index] >= arg2) && (arg2 >= D_8011D730[index]) &&
            (actor_index != D_8011CDF8[index])) {
            D_800BE4DC = D_8011CDF8[index];
            D_800BE4D8 = 1;
            return 0x40;
        }
    }

    return 0;
}

void func_8001FEB0(void) {
    u32 index;

    for (index = 0; index < ARRAYLENGTH(D_8010CDF0); index++) {
        if (D_8010CDF0[index] == 0x34) {
            D_8010CDF0[index] = 0xF8;
        }
    }

    for (index = 0; D_800D2978[index] != 0; index += 3) {
        D_800D2978[index] &= 0xFFFF7FFF;
    }
}

void func_8001FF28(void) {
}

void func_8001FF30(void) {
    gActors[0].flags_098 &= ACTOR_FLAG3_UNK19 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9;
}

void func_8001FF50(void) {
    u16 index;

    for (index = 1; index < 192; index++) {
        gActors[index].flags_098 &= ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK20 | ACTOR_FLAG3_UNK19 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9;
    }
}

void func_8001FFA0(void) {
}

void func_8001FFA8(void) {
    D_800CA230 = 0;
    D_800BE704 = D_801781C8;
    D_800BE708 = D_801781CA;
    D_800BE544 = D_801781CC;
    D_800D2920 = D_801781CE;
    D_800D2924 = D_801781D0;
    D_800D2918 = D_801781D2;
    D_800D291C = D_801781D4;
}

void func_80020024(void) {
    s32 index;

    D_800BE4E0++;
    D_801782B8++;
    if ((D_801781E0 < 36000) && (D_800D28E8 >= 2) && (func_8005DEFC() == 0) && (D_800D28E4 < 97)) {
        D_801781E0++;
    }
    func_800122B0();
    if (gDebugBitfield & 0x2) {
        if ((gButtonPress & D_800BE530) && (D_800BE6B4 != 1)) {
            D_800BE6B4--;
            D_801781DC = 0;
        }

        if ((gButtonPress & D_800BE534) && (D_800BE6B4 != 50)) {
            D_800BE6B4++;
            D_801781DC = 0;
        }
        if ((gFramesInScene % D_800BE6B4) == 0) {
            gButtonPress |= D_801781DC;
            D_801781DC = 0;
        }
        else {
            D_801781DC |= gButtonPress;
            return;
        }
    }
    func_800253B0();
    func_8001F88C();
    func_80014AF0();
    func_80016CB4();
    func_80012830();
    func_80016D94();
    func_8001EC1C();
    func_8001107C();
    if (D_800CA230 == 0) {
        func_8004ED10(0);
        func_8008C528(0x41);
    }
    func_8001FF30();
    func_8001DE30();
    func_8008CA90();
    func_8001751C();
    func_80014C44();
    func_8005C8A4();
    func_8001FF50();
    func_8005F6D4();
    func_80022470();
    if (gGameState == GAMESTATE_GAMEPLAY) {
        func_80047CCC();
    }
    func_80047C98();
    if (gDebugBitfield & 0x4000) {
        for (index = 0; index < 4; index++) {
            func_80083C54(gSfxPlayerFlags[index], -144, 60 - 32 * index);
            func_80083A74(gSfxSequenceIds[index] - 33, -144, 48 - 32 * index);
            func_80083C54(gSfxPlayerVolumes[index], -104, 60 - 32 * index);
        }
    }
}

void func_8002034C(void) {
    u32 val;
    u32 time_remain;

    // 100 days * 24 hr/day * 60 min/hr * 60 sec/min * 60Hz = 518,400,000
    if (gFramesInPlayTime >= 518400000) {
        gFramesInPlayTime = 518399999;
    }
    time_remain = gFramesInPlayTime / 60;
    val = time_remain % 60;
    func_80083518(11, 0, (val / 10) + 0x51, 0);
    func_80083518(12, 0, (val % 10) + 0x51, 0);
    time_remain /= 60;
    val = time_remain % 60;
    func_80083518(8, 0, (val / 10) + 0x51, 0);
    func_80083518(9, 0, (val % 10) + 0x51, 0);
    time_remain /= 60;
    val = time_remain % 24;
    func_80083518(5, 0, (val / 10) + 0x51, 0);
    func_80083518(6, 0, (val % 10) + 0x51, 0);
    time_remain /= 24;
    func_80083518(2, 0, (time_remain / 10) + 0x51, 0);
    func_80083518(3, 0, (time_remain % 10) + 0x51, 0);
}

void func_800205DC(void) {
    u16 val;

    val = D_80178136;
    func_80083518(6, 1, (val % 10) + 0x51, 0);
    val /= 10;
    func_80083518(5, 1, (val % 10) + 0x51, 0);
    val /= 10;
    func_80083518(4, 1, (val % 10) + 0x51, 0);
    val /= 10;
    func_80083518(3, 1, (val % 10) + 0x51, 0);
}

void func_800207DC(void) {
    u64 ret;

    ret = func_8001C7F0(gDebugStageSelectSelectedIndex);
    if (ret != 0) {
        func_800836A0(9, 1, &D_800CA2A0, 0);
    }
    else {
        func_800836A0(9, 1, &D_800CA28C, 0);
    }
}

void func_80020844(void) {
    u16 index;
    u16 jndex;

    for (index = 0; index < 4; index++) {
        gSfxPlayerVolumes[index] = D_801781C0[index];
    }
    Sound_PlaySfx(0xCB);
    
    for (jndex = 204; jndex < 208; jndex++) {
        gActors[jndex].flags = 0;
    }
}

void func_800208D4(void) {
    u16 index;

    for (index = 200; index < 204; index++) {
        gActors[index].flags = 0;
    }
    gMusicVolume = D_800EF4D4;
    gGameStateSubState = 0;
    gGamePaused = 0;
}

void func_8002092C(void) {
    u16 index;

    for (index = 200; index < 204; index++) {
        ACTOR_INIT(index,0);
        gActors[index].graphicFlags |= ACTOR_GFLAG_UNK11;
        gActors[index].flags |= ACTOR_FLAG_FREEZE_POS;
        gActors[index].unk_188 = 0;
        gActors[index].graphicIndex = 0x8000;
        gActors[index].posX.whole = -2;
        gActors[index].posY.whole = 3;
        gActors[index].posZ.whole = 1025;
        gActors[index].hitboxBX0 = D_800C7CA4[index + 0];
        gActors[index].hitboxBX1 = D_800C7CAC[index + 0];
        gActors[index].hitboxBY1 = D_800C7CB4[index + 0];
        gActors[index].hitboxBY0 = D_800C7CBC[index + 0];
        gActors[index].colorR = 0;
        gActors[index].colorG = 0;
        gActors[index].colorB = 0;
    }
}

void func_80020A54(void) {
    u16 index;

    for (index = 200; index < 204; index++) {
        gActors[index].flags = 0;
    }
}

void func_80020A90(void) {
    u16 actor_index;
    u16 index;
    s16* graphic_list;

    switch (gGameStateSubState) {
    case 0:
        D_800EF4D4 = gMusicVolume;
        gMusicVolume /= 2;
        for (index = 0; index < 4; index++) {
            D_801781C0[index] = gSfxPlayerVolumes[index];
            gSfxPlayerVolumes[index] /= 2;
        }
        Sound_PlaySfx(0xCA);
        func_8002092C();
        gGameStateSubState++;
        /* fallthrough */
    case 1:
        actor_index = 0xC8;
        if (gActors[actor_index + 2].hitboxBX0 == gActors[actor_index + 3].hitboxBX1) {
            func_800273FC(actor_index + 4, 0, 0, 0xC, 0x401);
            gActors[actor_index + 4].flags |= ACTOR_FLAG_UNK30 | ACTOR_FLAG_UNK29 | ACTOR_FLAG_UNK28 | ACTOR_FLAG_FREEZE_POS;
            func_80083454();
            func_800836A0(4, 0, &D_800CA254, 1);
            func_800836A0(5, 2, &D_800CA26C, 0);
            func_800836A0(5, 3, &D_800CA280, 0);
            func_8002034C();
            func_800205DC();
            func_800207DC();
            func_80027510(actor_index + 5, D_800E13DC, 0xFFA8, 0xC, 0x401);
            gActors[actor_index + 5].flags |= ACTOR_FLAG_FREEZE_POS;
            gActors[actor_index + 5].graphicFlags |= ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK6;
            gActors[actor_index + 5].unk_18C = (s32) D_800D88B8;
            func_80027510(actor_index + 6, D_800E13DC, 8, 0xC, 0x401);
            gActors[actor_index + 6].flags |= ACTOR_FLAG_FREEZE_POS;
            gActors[actor_index + 6].graphicFlags |= ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK6;
            gActors[actor_index + 6].unk_18C = (s32) D_800D8C78;
            func_80027510(actor_index + 7, D_800E13FC, 0xFFC4, 0xFFF8, 0x401);
            gActors[actor_index + 7].flags |= ACTOR_FLAG_FREEZE_POS;
            gActors[actor_index + 7].graphicFlags |= ACTOR_GFLAG_UNK6;
            gGameStateSubState = 0x10;
        }
        else {
            gActors[actor_index].hitboxBY1 -= 8;
            gActors[actor_index + 1].hitboxBY0 += 8;
            gActors[actor_index + 2].hitboxBX0 -= 12;
            gActors[actor_index + 3].hitboxBX1 += 12;
        }
        break;
    case 32:
        if ((gActors[0xCF].posY.whole == -28) && (D_800D28E8 >= 2)) {
            for (actor_index = 0; actor_index < 0xC8; actor_index++) {
                gActors[actor_index].flags = 0;
            }
            D_800BE590 = 0;
            D_800CBF40 = 1;
            D_80171B10 = D_801781F0;
            func_80046218(D_800D28E4 - 1, 0);
            gGameStateSubState = 0x23;
        }
        else {
            func_80020844();
            gGameStateSubState++;
        }
        break;
    case 33:
        gGameStateSubState++;
        break;
    case 34:
        actor_index = 0xC8;
        if (gActors[actor_index + 2].hitboxBX0 == 0x90) {
            func_800208D4();
        }
        else {
            gActors[actor_index].hitboxBY1 += 8;
            gActors[actor_index + 1].hitboxBY0 -= 8;
            gActors[actor_index + 2].hitboxBX0 += 12;
            gActors[actor_index + 3].hitboxBX1 -= 12;
        }
        break;
    case 35:
        if (gGameState == 6) {
            func_80047CCC();
        }
        break;
    case 16:
        D_801782B8++;
        func_8002034C();
        if ((gButtonPress & D_800BE504) && (gActors[0xCF].posY.whole != -8)) {
            Sound_PlaySfx(0x22);
            gActors[0xCF].posY.whole = -8;
        }
        if ((gButtonPress & D_800BE508) && (gActors[0xCF].posY.whole != -28)) {
            Sound_PlaySfx(0x22);
            gActors[0xCF].posY.whole = -28;
        }
        break;
    }

    for (actor_index = 0xCD; actor_index < 0xD0; actor_index++) {
        if (gActors[actor_index].flags != 0) {
            gActors[actor_index].graphicTimer--;
            graphic_list = gActors[actor_index].graphicList;
            if (graphic_list) {} // fakematch
            if (gActors[actor_index].graphicTimer == 0) {
                gActors[actor_index].graphicIndex = graphic_list[0];
                gActors[actor_index].graphicTimer = graphic_list[1];
                graphic_list += 2;
                if (graphic_list[0] < 0) {
                    graphic_list += graphic_list[0];
                }
                gActors[actor_index].graphicList = graphic_list;
            }
        }
    }
}

void GameState_Gameplay(void) {
    u32 start_time;

    start_time = osGetTime();
    func_800457C8();
    D_801374DC = osGetTime() - start_time;
    if (gGamePaused) {
        func_80020A90();
    }
    else {
        func_80020024();
    }
}

void func_80021098(void) {
    u16 prev_game_sub_state;

    D_800BE4EC = 1;
    gGameState = GAMESTATE_GAMEPLAY;
    prev_game_sub_state = gGameStateSubState;
    gGameStateSubState = 0;
    D_800CA244--;
    if (D_800CA244 == 0) {
        D_800CA23C++;
        D_800CA240 = gButtonHold = D_800CBDFC[D_800CA238][D_800CA23C];
        D_800CA23C++;
        D_800CA244 = D_800CBDFC[D_800CA238][D_800CA23C];
    }
    else {
        gButtonHold = D_800CA240;
    }

    D_800CA250--;
    if (D_800CA250 == 0) {
        D_800CA248++;
        D_800CA24C = gButtonPress = D_800CBE0C[D_800CA238][D_800CA248] | (gButtonPress & D_800BE500);
        D_800CA248++;
        D_800CA250 = D_800CBE0C[D_800CA238][D_800CA248];
    }
    else {
        gButtonPress = D_800CA24C | (gButtonPress & D_800BE500);
    }
    GameState_Gameplay();
    D_80104098[0x1440] = 0;
    D_80104098[0x1490] = 0;
    gGameState = GAMESTATE_ATTRACT;
    gGameStateSubState = prev_game_sub_state;
}

void GameState_Attract(void) {
    Actor* actors_200;
    s32 var_v0;

    actors_200 = &gActors[200];
    switch (gGameStateSubState) {
    case 0:
        if (D_800CA238 > 3) {
            D_800CA238 = 0;
        }
        gDebugStageSelectSelectedIndex = D_800CA2B0[D_800CA238];
        D_800BE5D0 = gDebugStageSelectSceneIds[gDebugStageSelectSelectedIndex];
        D_800D28E4 = gDebugStageSelectStageIds[gDebugStageSelectSelectedIndex];
        D_800CA234 = 0xA00;
        D_800D2908 = 1;
        gActors[0].health = 1000;
        D_800BE668 = 0x32;
        gRngSeed = 0x1234;
        GameState_Loading();
        gGameState = 0xA;
        gGameStateSubState = 1;
        D_80104098[0x1440] = D_80104098[0x1490] = 0;
        func_8002092C();
        actors_200[0].hitboxBY1 = actors_200[1].hitboxBY0 = actors_200[2].hitboxBX0 = actors_200[3].hitboxBX1 = 0;
        D_800CA23C = 0;
        D_800CA240 = 0;
        D_800CA248 = 0;
        D_800CA24C = 0;
        D_800CA244 = D_800CBDFC[D_800CA238][0];
        D_800CA250 = D_800CBE0C[D_800CA238][0];
        break;
    case 1:
        if (actors_200[2].hitboxBX0 == 0x90) {
            actors_200[0].flags = actors_200[1].flags = actors_200[2].flags = actors_200[3].flags = 0;
        }
        else {
            actors_200[0].hitboxBY1 += 2;
            actors_200[1].hitboxBY0 -= 2;
            actors_200[2].hitboxBX0 += 3;
            actors_200[3].hitboxBX1 -= 3;
        }
        func_80021098();
        if ((D_800CA234-- == 0) || (gButtonPress & D_800BE500)) {
            if (actors_200[0].flags == 0) {
                Sound_StartFade(1, 0x40);
                D_800CA234 = 0x40;
                gGameStateSubState++;
            }
        }
        break;
    case 2:
        func_80021098();
        var_v0 = (D_800CA234--) ^ 0x30;
        if (var_v0 == 0) {
            actors_200[0].flags = actors_200[1].flags = actors_200[2].flags = actors_200[3].flags = 0xB;
            gGameStateSubState++;
        }
        break;
    case 3:
        func_80021098();
        if (actors_200[2].hitboxBX0 == actors_200[3].hitboxBX1) {
            D_800CA238++;
            gAudioFadeMode = 0;
            gGameState = 0;
            gGameStateSubState = 0;
        }
        else {
            actors_200[0].hitboxBY1 -= 2;
            actors_200[1].hitboxBY0 += 2;
            actors_200[2].hitboxBX0 -= 3;
            actors_200[3].hitboxBX1 += 3;
        }
        break;
    }
}

void func_80021620(void) {
    if (gButtonPress & D_800BE534) {
        D_800BE6B8 ^= 0xFF;
    }
}

void func_80021658(void) {
}

void func_80021660(void) {
}

void func_80021668(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
}

void func_8002167C(void) {
}
