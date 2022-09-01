#include "BGM.h"
#include "common.h"

void Continue_DrawRedGem(uint16_t index, uint16_t arg1, uint16_t arg2) {
    Actor* actor;

    Text_SpawnIcon(index, &gIcon_YellowGem, arg1, arg2, 0x403);
    actor = &thisActor;
    actor->flag2 |= 0x200;
    actor->unk_0x18C._p = gSpriteData_RedGem;
}

void GameOver(void) {
    uint16_t index;
    Actor* actor = &gActors[48];

    gActors[49].flag = gActors[50].flag = 0; // Whitespace memes

    for (index = 65; index < 98; index++) {
        thisActor.flag = 0;
    }

    Text_PrintAlphaAtColorScale(0x33, D_800C7E14, 0xFFA0, 0x50, 0x403, 0, 0x40, 0x40, 1.0f, 1.0f);
    Text_SpawnAt2(48, 0x262, 0xFFFE, 3, 0x402);

    actor->flag2 |= 0x100F;
    actor->scaleX = 6.0f;
    actor->unk_0x12C._f = 6.0f;
    actor->rotateX = 90.0f;
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
            thisActor.flag = 0;
        }

        for (index = 0x32; index < 0x5E; index++) {
            thisActor.flag = 0;
        }

        for (index = 0x41; index < 0x4B; index++) {
            Text_SpawnIcon(index, &gIcon_YellowGem, 0, 0xA0, 0x403);
            thisActor.flag2 |= 0x200;
            thisActor.unk_0x18C._w = (uint32_t)gSpriteData_RedGem; //mismatch otherwise.
            thisActor.unk_0x154._w = 0xC0;
            thisActor.unk_0x158._w = (int32_t)((index * 0x3FF) + 0xFFFEFC41) / 10;
        }

        D_80178130 = 0x180;
        gGameSubState = 6;
        return;
    }
    SFX_Play_1(0x134); //"wrong answer" buzzer
}

#pragma GLOBAL_ASM("asm/nonmatchings/GameOver/GamePlay_Tick_Continue.s")
