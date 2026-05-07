#include "common.h"
#include "actor.h"

extern void func_80028638(void);
extern void func_8002865C(void);
extern void func_80028680(void);
extern void func_800286A4(void);

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80027370.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800273FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80027468.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80027510.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80027588.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80027644.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800276DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80027800.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800278E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80027A44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80027A88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80027AC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80027B28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80027C40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80027D94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002801C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80028150.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80028260.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800282F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80028380.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800283BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800284B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800284B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80028528.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002854C.s")

void Actor_ClearRange(u16 actor_index, u16 end) {
    while (actor_index < end) {
        gActors[actor_index].flags = 0;
        actor_index++;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80028638.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002865C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80028680.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800286A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800286C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80028704.s")

void Actor_ClearSceneActors(void) {
    func_80028638();
    func_8002865C();
    func_80028680();
    func_800286A4();
}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002877C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002884C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800288EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80028980.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800289CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800289E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80028AE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80028B1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80028B90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80028C00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80028C08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80028C80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80028CE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80028DAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80028E1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029044.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029134.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800291AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800294E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800295D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029600.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029628.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029650.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029678.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029798.s")

s32 Math_ApproachS32(s32 current, s32 target, s32 step) {
    if ((current - target) > 0) {
        if (step >= (current - target)) {
            current = target;
        }
        else {
            current -= step;
        }
    }
    else if ((current - target) >= -step) {
        current = target;
    }
    else {
        current += step;
    }
    return current;
}

f32 Math_ApproachF32(f32 current, f32 target, f32 step) {
    if ((current - target) > 0) {
        if (step >= (current - target)) {
            current = target;
        }
        else {
            current -= step;
        }
    }
    else if ((current - target) >= -step) {
        current = target;
    }
    else {
        current += step;
    }
    return current;
}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800298D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002995C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800299B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029A7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029B00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029B74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029BB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029C44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029CC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029D58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029DEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029E48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029F00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029FB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002A018.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002A090.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002A0C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002A118.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002A170.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002A1C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002A200.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002A258.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002A2B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002A320.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002A404.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002A464.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002A4C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002A4FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002A57C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002A658.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002A898.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002A900.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002A990.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002AA20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002ABE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002AC30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002AC7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002ACFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002AD7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002AE44.s")

void Actor_SetColorRgb(u16 actor_index, u16 color) {
    gActors[actor_index].colorR = color;
    gActors[actor_index].colorG = color;
    gActors[actor_index].colorB = color;
}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002AEF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002AF7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002B010.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002B140.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002B1D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002B25C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002B2D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002B330.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002B400.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002B4D0.s")

u16 Palette_AdjustRgb5551(u16 color, s16 blue_offset, s16 green_offset, s16 red_offset) {
    s16 clamped_blue;
    s16 clamped_green;
    s16 clamped_red;

    clamped_blue = ((color / 2) & 0x1F) + blue_offset;
    clamped_green = ((color / 0x40) & 0x1F) + green_offset;
    clamped_red = ((color / 0x800) & 0x1F) + red_offset;

    if (clamped_blue < 0) {
        clamped_blue = 0;
    }
    else if (clamped_blue >= 0x20) {
        clamped_blue = 0x1F;
    }

    if (clamped_green < 0) {
        clamped_green = 0;
    }
    else if (clamped_green >= 0x20) {
        clamped_green = 0x1F;
    }

    if (clamped_red < 0) {
        clamped_red = 0;
    }
    else if (clamped_red >= 0x20) {
        clamped_red = 0x1F;
    }

    return (clamped_red << 11) | (clamped_green << 6) | (clamped_blue << 1) | (color & 1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002B6E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002B7B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002B7F4.s")

void Palette_AdjustRgb5551Array(u16* src, u16* dst, s16 count, s16 blue_offset, s16 green_offset, s16 red_offset) {
    u16 result;
    while (count > 0) {
        result = Palette_AdjustRgb5551(*src, blue_offset, green_offset, red_offset);
        count--;
        src++;
        dst++;
        dst[-1] = result; // wtf??
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002B8F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002B954.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002B9D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002BACC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002BB04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002BC10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002BC90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002C044.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002C140.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002C1D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002C1E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002C218.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002C328.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002C3C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002C510.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002C5C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002C6DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002C6E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002CCD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002D040.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002D260.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002D2F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002D3C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002D488.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002D5E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002D670.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002D904.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002DB0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002DC74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002DFC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002E288.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002E500.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002E89C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002EBB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002ECAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002ED34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002ED48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002EDC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002EFE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002F154.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002F1C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002F2A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002F420.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002F6AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002F6D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002F93C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002FC30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002FD48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002FEF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80030008.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800303A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80030964.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800309C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80030A24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80030A74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80030B0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80030B84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80030BB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80030D9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80030E58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80030F94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800310A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003119C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800311EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003123C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80031284.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800312CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80031324.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003137C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800313CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003141C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80031CAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80031D58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80031DDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80031E38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800320F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800327B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80032900.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80032E60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800330A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80033204.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800333A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80033428.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003358C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800335E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800336B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800337F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800338F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80033948.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800339AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800339BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80033B54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80033CB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80033DE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80033E7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800340CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80034644.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003480C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800348E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800349C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80034A0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80034D14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80034D80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80034E10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003510C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800351C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80035218.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003526C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800352C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80035394.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80035524.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80035824.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80035878.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800358CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800358DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80035978.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80035A20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80035C44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80035D34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80035E90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003667C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800366E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800367D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800369A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80036A60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80036B44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80036C14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80036CE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80036DC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003707C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800370AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800374D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003766C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80037B18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80037B90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80038398.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800384FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80038600.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80038704.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80038794.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80038868.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80038C94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80038D1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80038E1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80038FF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800390BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80039134.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003929C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80039468.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80039644.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80039724.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80039838.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80039894.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800398F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80039970.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80039A1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80039ADC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80039C1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80039DA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80039E7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003A120.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003A958.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003A9B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003AA18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003AB24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003AC30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003B630.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003B8CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003BE3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003C328.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003D518.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003D5A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003D628.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003D68C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003D794.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003DBD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003DF78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003E230.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003E52C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003E640.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003E6A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003E854.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003EAE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003EC0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003ED48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003EDF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003EEC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003EF98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003F05C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003F138.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003F248.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003F360.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003F6A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003F7A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003F8B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003F9CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003F9E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003FB20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003FD0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003FE4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003FE90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003FED8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003FF20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003FF68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80040098.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8004023C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800404AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80040564.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800405C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800406A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800407D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80040858.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8004089C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800409E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80040A64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80040AB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80040B4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80040E08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80041018.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8004151C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8004168C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8004172C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8004178C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8004185C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800418A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80042290.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80042308.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80042310.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80042324.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80042338.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80042340.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80042348.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80042350.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80042358.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80042360.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800423A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800427E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80042864.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800429A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80042A0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80042AEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80042B2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80042B94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80042C10.s")
