#include "BGM.h"
#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

void func_80012C50(uint16_t index, uint16_t arg1, uint16_t arg2) {
    Actor* actor;

    func_80027510(index, &D_800E13DC, arg1, arg2, 0x403);
    actor = &gActors[index];
    actor->unk_0x94 |= 0x200;
    actor->unk_0x18C = &gData_RedGem;
}

void func_80012CD4(void) {
    uint16_t index;
    Actor* actor = &gActors[48];

    gActors[49].flag = gActors[50].flag = 0; // Whitespace memes

    for (index = 65; index < 98; index++) {
        gActors[index].flag = 0;
    }

    func_80027D94(0x33, &D_800C7E14, 0xFFA0, 0x50, 0x403, 0, 0x40, 0x40, 1.0f, 1.0f);
    func_800273FC(48, 0x262, 0xFFFE, 3, 0x402);

    actor->unk_0x94 |= 0x100F;
    actor->unk_0xB4 = 6.0f;
    actor->unk_0x12C_f = 6.0f;
    actor->unk_0xBC = 90.0f;
    actor->rgba.a = 0;

    BGM_Play(BGM_INT);
    D_80178130 = 0x2C0;
    gGameSubState += 1;
}

void GamePlay_Continue_PayGems(uint16_t arg0) {
    uint16_t index;

    if (gRedGems >= arg0) {
        gContinueChoice = arg0 / 10;

        // iterates over 1 actor? is this intended?
        for (index = 0x30; index < 0x31; index++) {
            gActors[index].flag = 0;
        }

        for (index = 0x32; index < 0x5E; index++) {
            gActors[index].flag = 0;
        }

        for (index = 0x41; index < 0x4B; index++) {
            func_80027510(index, &D_800E13DC, 0, 0xA0, 0x403);
            gActors[index].unk_0x94 |= 0x200;
            gActors[index].unk_0x18C = (uint32_t)&gData_RedGem;
            gActors[index].unk_0x154 = 0xC0;
            gActors[index].unk_0x158 = (int32_t)((index * 0x3FF) + 0xFFFEFC41) / 10;
        }

        D_80178130 = 0x180;
        gGameSubState = 6;
        return;
    }
    SFX_Play_1(0x134);
}

#pragma GLOBAL_ASM("asm/nonmatchings/13850/GamePlay_Tick_Continue.s")
