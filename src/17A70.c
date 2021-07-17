#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80016E70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001751C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80017680.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_800176F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80017770.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80017800.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80017F08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80017FE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001809C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_800180FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001817C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_800188CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80018E00.s")

#ifdef NON_MATCHING
// Needs a lot of work
void func_800191B8(void) {
    int16_t temp_t3;
    int32_t temp_a0;
    int32_t temp_t6_2;
    int32_t temp_t7;
    int32_t temp_t8_2;
    uint16_t temp_v0;
    uint8_t* temp_v1;
    uint8_t* temp_v1_2;
    uint8_t* temp_v1_3;
    uint8_t temp_a2;
    uint8_t temp_a2_2;
    uint8_t temp_t6;
    uint8_t temp_t8;
    uint8_t temp_v0_2;
    int new_var;
    uint8_t temp_v0_3;
    int32_t phi_a2;
    int32_t phi_a2_2;
    int32_t phi_a0;
    int32_t phi_v0;

    temp_v0 = gGameSubState;
    if (temp_v0 != 0) {
        if (temp_v0 != 1) {
            if (temp_v0 == 2) {
                D_800C5008 = (uint8_t)0;
                D_80171B18 = (int8_t)D_80178162;
                gGameState = (uint16_t)0xC;
                gGameSubState = (uint16_t)0x41U;
            }
        }
        else {
            func_80017770();
            func_80017680(D_800BE504, &D_800F026E);

            if (temp_v0 != 0) {
                temp_t6 = gActors.unk_0xBC6 - 1;
                gActors.unk_0xBC6 = temp_t6;
                if ((temp_t6 & 0xFF) == 0xFF) {
                    gActors.unk_0xBC6 = (uint8_t)0x15U;
                }
                func_80003380(0x22);
            }

            func_80017680(D_800BE508, &D_800F0406);

            if (temp_v0 != 0) {
                temp_t8 = gActors.unk_0xBC6 + 1;
                gActors.unk_0xBC6 = temp_t8;
                if ((temp_t8 & 0xFF) == 0x16) {
                    gActors.unk_0xBC6 = (uint8_t)0U;
                }
                func_80003380(0x22);
            }

            func_80017680(D_800BE50C, &D_800F059E);

            if (temp_v0 != 0) {
                temp_v1 = (&D_80178170) + gActors.unk_0xBC6;
                temp_a2 = *temp_v1;
                if (((int32_t)temp_a2) > 0) {
                    *temp_v1 = (uint8_t)(temp_a2 - 1);
                    func_80003380(0x22);
                }
            }

            func_80017680(D_800BE510, &D_800F0736);

            if (temp_v0 != 0) {
                temp_v0_2 = gActors.unk_0xBC6;
                temp_v1_2 = (&D_80178170) + temp_v0_2;
                temp_a2_2 = *temp_v1_2;
                if (((int32_t)(temp_a2_2 & 0xFF)) < ((*((&D_800C823C) + (temp_v0_2 * 2))) - 1)) {
                    *temp_v1_2 = (uint8_t)(temp_a2_2 + 1);
                    func_80003380(0x22, &D_800C823C, temp_a2_2);
                }
            }

            temp_v0_3 = gActors.unk_0xBC6;
            temp_t3 = (*((&D_80178170) + temp_v0_3)) + (*((&D_80178188) + temp_v0_3));
            temp_t8_2 = (temp_t3 & 0xFFFF) * 2;
            D_80178162 = temp_t3;
            D_800BE5D0 = *((&D_800C8378) + temp_t8_2);
            D_800D28E4 = *((&D_800C83F8) + temp_t8_2);
            func_80018E00(&D_80178162);
            if ((D_800BE4FC & D_800BE500) != 0) {
                func_80003A38();
                func_80043918();
                gGameSubState = (uint16_t)(gGameSubState + 1);
                return;
            }
        }
    }
    else {
        phi_a2 = 0;
    loop_5:
        temp_t7 = (phi_a2 + 1) & 0xFFFF;
        *((&D_80178170) + phi_a2) = (uint8_t)0;
        phi_a2 = temp_t7;
        if (temp_t7 < 0x16) {
            goto loop_5;
        }
        phi_a2_2 = 0;
    loop_7:
        temp_v1_3 = (&D_80178188) + phi_a2_2;
        phi_a0 = 0;
        *temp_v1_3 = (uint8_t)0U;
        phi_v0 = 0;
        if (phi_a0 > 0) {
        loop_8:
            temp_t6_2 = (phi_v0 + 1) & 0xFFFF;
            *temp_v1_3 = (uint8_t)((*temp_v1_3) + (*((&D_800C823C) + (phi_v0 * 2))));
            phi_v0 = temp_t6_2;
            if (temp_t6_2 < phi_a0) {
                goto loop_8;
            }
        }

        temp_a0 = (phi_a2_2 + 1) & 0xFFFF;
        phi_a2_2 = temp_a0;
        phi_a0 = temp_a0;
        if (!(&gActors)) {
        }
        if (temp_a0 < 0x16) {
            goto loop_7;
        }

        gActors.unk_0xBC6 = (uint8_t)0U;
        D_800BE5D0 = 0;
        func_80018E00((int16_t*)temp_a0, &D_800C823C, temp_a0, &D_80178188);
        D_801376BD = (uint8_t)0;
        D_801376B9 = (uint8_t)1;
        D_801376A9 = (uint8_t)0xC0;
        new_var = 0xC0;
        D_801376AD = (uint8_t)new_var;
        D_801376B1 = (uint8_t)0xC0;
        D_801376B5 = (uint8_t)0xFF;
        gGameSubState = (uint16_t)(gGameSubState + 1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_800191B8.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80019520.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80019688.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_800197A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001983C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_800198B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_800199DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80019A80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80019E48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80019EC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80019F04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80019FB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001A15C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001A254.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001A584.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001A758.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001A7E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001A838.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001A890.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001A96C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001ACA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001B004.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001B02C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001B078.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001B1A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001B1F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001B23C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001B244.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001B2F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001B3D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001B460.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001C7A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001C7F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001C834.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001C8B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001C97C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001CA68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001CAA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001CB6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001CC34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001CC8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001CD30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001CE04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001CF14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001CFDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001D040.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001D0A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001D240.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001D5B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001D60C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001D654.s")