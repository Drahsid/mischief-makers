#include <actor.h>
#include <common.h>
#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

void func_800235E0(void) {
    D_800BE72C = 0;
    D_800BE730 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800235F4.s")

void func_80023668(void) {}

void func_80023670(void) {}

void func_80023678(void) {
    D_800BE578 = 2;
    D_800BE6FC = 1;
    D_800BE584 = -0xC;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800236A0.s")

void func_80023798(void) {
    D_800BE578 = (int16_t)((int32_t)D_800BE558 / 2);
    D_800BE580 = -0xC;
    gEyeY = 32.0f;
    D_800BE6A8 = 1;
    D_800BE70C = 2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800237F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023894.s")

void func_80023948(void) {
    D_800BE580 = -0xC;
    gEyeY = 32.0f;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023968.s")

void func_80023A08(void) {
    D_800BE580 = -0xC;
    gEyeY = 32.0f;
    D_800BE70C = 2;
}

void func_80023A34(void) {
    func_800237F0();
    if ((D_800BE6AC & 0xA400) == 0) {
        D_800BE544 = 0x8000;
        D_800BE550 = (int32_t)(gPlayerPosXMirror + 0x200000);
        D_800BE554 = (int32_t)gPlayerPosYMirror;
        D_800BE704 = 1;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023AA4.s")

void func_80023AC4(void) {}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023ACC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023AFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023BC0.s")

void func_80023BF8(void) {}

void func_80023C00(void) {
    D_800BE578 = 2;
    D_800BE57C = 2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023C18.s")

void func_80023D48(void) {
    D_800BE544 = 0x30;
    D_800BE57C = 2;
    D_800BE584 = -0xC;
}

void func_80023D70(void) {
    D_800BE578 = (int16_t)D_800BE558;
    D_800BE580 = (int16_t)(D_800BE55C + 0x60);
}

void func_80023D98(void) {
    D_800BE578 = 2;
    D_800BE580 = -0xC;
}

void func_80023DB4(void) {}

void func_80023DBC(void) {
    D_800BE544 = 0x30;
    D_800BE57C = 2;
    D_800BE584 = -0xC;
    D_800BE674 = 1;
}

void func_80023DF0(void) {}

void func_80023DF8(void) {
    D_800BE578 = 2;
    D_800BE580 = -0xC;
}

void func_80023E14(void) {}

void func_80023E1C(void) {
    D_800BE57C = 2;
    D_800BE584 = -0xC;
}

void func_80023E38(void) {}

void func_80023E40(void) {}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023E48.s")

void func_80023E6C(void) {}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023E74.s")

void func_80023E98(void) {
    D_800BE57C = 2;
    D_800BE584 = -0xC;
}

void func_80023EB4(void) {
    func_80023E98();
    D_800BE674 = 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023EDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023F5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80024004.s")

void func_80024074(void) {
    int32_t temp_v0 = 1;
    D_800BE70C = 3;
    D_800BE6A8 = 2;
    // fake match? This doesn't seem very human
    D_800BE708 = *((int32_t*)&temp_v0);
    D_800BE710 = *((int32_t*)&temp_v0);
    D_800BE71C = 0x1000000;
    D_800BE720 = 0;
    D_800BE724 = 0x1C00000;
    D_800BE728 = 0xFFFF0000;
    D_800BE72C = 0;
    D_800BE730 = 0;
    D_800BE638 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800240E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80024428.s")

void func_800244F8(void) {
    D_800BE70C = 3;
    D_800BE6A8 = 2;
    D_800BE710 = 1;
    D_800BE72C = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80024528.s")

void func_80024584(void) {
    D_800BE70C = 3;
    D_800BE6A8 = 2;
    D_800BE710 = 1;
}

void func_800245AC(void) {}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800245B4.s")

void func_800245F0(void) {}

void func_800245F8(void) {}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80024600.s")

void func_80024624(void) {
    D_800BE588 = 2;
    D_800BE704 = 1;
    D_800BE708 = 1;
    D_800CBF58 = 1U;
    func_800235E0();
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80024668.s")

void func_80024854(void) {
    D_800BE544 = 0x8000;
    D_800BE704 = 1;
    D_800BE708 = 1;
    D_800BE588 = 3;
    D_800CC428 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002488C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800249B8.s")

void func_80024D5C(void) {
    D_800BE588 = 3;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80024D6C.s")

void func_80024DA8(void) {
    D_800BE544 = 0x8000;
    D_800BE704 = 1;
    D_800BE708 = 1;
    D_800BE588 = 3;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80024DD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80024E18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80024EA0.s")

void func_80025084(void) {}

void func_8002508C(void) {}

void func_80025094(void) {
    D_800BE588 = 0;
    D_800BE58C = 1;
    D_800BE584 = -0x4C;
    D_8013746C = &D_800C71A0;
    if (D_800BE5D0 != 0x16) {
        gEyeX = -128.0f;
        gEyeY = 128.0f;
    }
    func_800235E0();
}

void func_80025114(void) {
    func_800235F4();
    if ((D_800BE4E0 & 1) != 0) {
        D_800BE57C = (int16_t)(D_800BE57C + 1);
    }
}

void func_8002515C(void) {
    D_800BE580 = -0x18;
    D_800BE57C = 2;
    D_800BE584 = -0xC;
}

void func_80025184(void) {
    int16_t temp_v0;

    temp_v0 = D_800BE558;
    D_800BE578 = (int16_t)(((int32_t)temp_v0 / 4) & 0x1FF);
    D_800BE57C = (int16_t)(((int32_t)temp_v0 / 8) & 0x1FF);
}

void func_800251CC(void) {
    D_800BE57C = 2;
    D_800BE584 = -0xC;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800251E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80025254.s")

void func_800252BC(void) {
    D_800BE704 = 1;
    D_800BE708 = 1;
    D_800CBF58 = 2;
    func_800235E0();
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800252F8.s")

void func_80025380(void) {
    D_800BE578 = 2;
    D_800BE580 = -0xC;
    D_800BE70C = 4;
}

void func_800253A8(void) {}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800253B0.s")


void func_80025578(void) { // mismatches when D_800CCFDC declared Array
    if (*(&D_800CCFDC + D_800BE5D0) != 255) {
        BGM_Play(*(&D_800CCFDC + D_800BE5D0));
    }
}
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800255B4.s")

void func_80025B7C(void) {
    func_8002694C(D_800BE5D0);
    func_80026A18(D_800BE5D0);
    func_80026B04(D_800BE5D0);
    func_80026BD0(D_800BE5D0);
    func_80026874(D_800BE5D0);
    func_80026C9C(D_800BE5D0);
    func_8002729C(D_800BE5D0);
    func_80025E00();
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80025BFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80025C38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80025E00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80025E6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80025EC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80025F70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002601C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800260C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026174.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026220.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026428.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026494.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002653C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026584.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800265FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026694.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002670C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026784.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800267FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026874.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002694C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026A18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026B04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026BD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026C9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026D88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026E60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026F2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80027018.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800270E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800271B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002729C.s")

void func_80027370(uint16_t index, uint16_t pos_x, uint16_t pos_y, uint16_t pos_z) {
    gActors[index].unk_0xD2 = 0;
    func_8001E2D0(index);
    gActors[index].unk_0x94 |= 0x800;
    gActors[index].unk_0x188 = 0;
    gActors[index].pos.x = pos_x;
    gActors[index].pos.y = pos_y;
    gActors[index].pos.z = pos_z;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800273FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80027468.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80027510.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80027588.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80027644.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800276DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80027800.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800278E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80027A44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80027A88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80027AC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80027B28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80027C40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80027D94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002801C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80028150.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80028260.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800282F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80028380.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800283BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800284B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800284B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80028528.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002854C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800285E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80028638.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002865C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80028680.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800286A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800286C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80028704.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80028744.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002877C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002884C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800288EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80028980.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800289CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800289E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80028AE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80028B1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80028B90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80028C00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80028C08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80028C80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80028CE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80028DAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80028E1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029044.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029134.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800291AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800294E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800295D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029600.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029628.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029650.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029678.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029798.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002981C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029860.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800298D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002995C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800299B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029A7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029B00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029B74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029BB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029C44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029CC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029D58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029DEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029E48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029F00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029FB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002A018.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002A090.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002A0C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002A118.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002A170.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002A1C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002A200.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002A258.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002A2B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002A320.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002A404.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002A464.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002A4C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002A4FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002A57C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002A658.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002A898.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002A900.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002A990.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002AA20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002ABE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002AC30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002AC7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002ACFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002AD7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002AE44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002AEB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002AEF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002AF7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002B010.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002B140.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002B1D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002B25C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002B2D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002B330.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002B400.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002B4D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002B5A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002B6E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002B7B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002B7F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002B82C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002B8F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002B954.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002B9D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002BACC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002BB04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002BC10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002BC90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002C044.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002C140.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002C1D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002C1E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002C218.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002C328.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002C3C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002C510.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002C5C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002C6DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002C6E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002CCD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002D040.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002D260.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002D2F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002D3C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002D488.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002D5E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002D670.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002D904.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002DB0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002DC74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002DFC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002E288.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002E500.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002E89C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002EBB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002ECAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002ED34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002ED48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002EDC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002EFE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002F154.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002F1C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002F2A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002F420.s")

void RedGem_Cap(void) {if (gRedGems >= 9999) gRedGems = 9999;}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002F6D4.s")
/*
void gem_collision(u16 arg0, u16 arg1, s32 arg2, s16 arg3, s16 arg4) {
    u16 temp_v1;
    u16 temp_v1_2;
    u16 temp_v1_3;

    if (arg2 == &Data_RedGem) {
        gRedGems++;
        RedGem_Cap();
        func_8003FB20(arg0, 0, 1.0, arg3, (s32) arg4, (s32) ((gPlayerActorIndex * 0x198) + 0x800F0000)->unk-A60);
        if (arg1 != 0) {
            func_80003828(0x57, arg0);
            return;
        }
        func_800036C8(0x57, arg0);
        return;
    }
    if (arg2 == &Data_BlueGem) {
        temp_v1 = gPlayerActorIndex;
        if (temp_v1) gActors[temp_v1_2].health += 0x1E;
        else Actor_AddHP(0, 0x1E);
        func_800337F4(arg3, arg4, 4, 0x132);
        if (arg1 != 0) {
            func_80003828(0x95, arg0);
            return;
        }
        func_800036C8(0x95, arg0);
        return;
    }
    if (arg2 == &Data_YellowGem) {
        YellowGem_setFlag();
        temp_v1_2 = gPlayerActorIndex;
        if (temp_v1_2) gActors[temp_v1_2].health+=0x1f4;
        else Actor_AddHP(0, 0x1F4);
        func_8003F9CC(2.5, arg3, arg4, 0);
        if (arg1 != 0) {
            func_80003828(0x3B, arg0);
            return;
        }
        func_800036C8(0x3B, arg0);
        return;
    }
    func_8003F8B0(1.0, arg3, arg4, ((gPlayerActorIndex * 0x198) + 0x800F0000)->unk-A60);
    temp_v1_3 = gPlayerActorIndex;
    if (temp_v1_3) gActors[temp_v1_3].health+=0x12c;
    else Actor_AddHP(0, 0x12C);
    if (arg1 != 0) {
        func_80003828(0x125, arg0);
        return;
    }
    func_800036C8(0x125, arg0);
}
*/
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/gem_collision.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002FC30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002FD48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002FEF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80030008.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800303A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80030964.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800309C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80030A24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80030A74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80030B0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80030B84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80030BB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80030D9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80030E58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80030F94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800310A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003119C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800311EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003123C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80031284.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800312CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80031324.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003137C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800313CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003141C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80031CAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80031D58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80031DDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80031E38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800320F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800327B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80032900.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80032E60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800330A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80033204.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800333A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80033428.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003358C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800335E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800336B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800337F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800338F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80033948.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800339AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800339BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80033B54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80033CB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80033DE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80033E7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800340CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80034644.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003480C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800348E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800349C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80034A0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80034D14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80034D80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80034E10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003510C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800351C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80035218.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003526C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800352C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80035394.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80035524.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80035824.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80035878.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800358CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800358DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80035978.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80035A20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80035C44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80035D34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80035E90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003667C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800366E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800367D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800369A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80036A60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80036B44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80036C14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80036CE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80036DC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003707C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800370AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800374D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003766C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80037B18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80037B90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80038398.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800384FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80038600.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80038704.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80038794.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80038868.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80038C94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80038D1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80038E1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80038FF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800390BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80039134.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003929C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80039468.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80039644.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80039724.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80039838.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80039894.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800398F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80039970.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80039A1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80039ADC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80039C1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80039DA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80039E7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003A120.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003A958.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003A9B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003AA18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003AB24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003AC30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003B630.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003B8CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003BE3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003C328.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003D518.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003D5A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003D628.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003D68C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003D794.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003DBD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003DF78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003E230.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003E52C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003E640.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003E6A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003E854.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003EAE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003EC0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003ED48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003EDF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003EEC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003EF98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003F05C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003F138.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003F248.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003F360.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003F6A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003F7A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003F8B0.s")

void func_8003F9CC(float f, uint16_t a, uint16_t b, uint32_t c) {}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003F9E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003FB20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003FD0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003FE4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003FE90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003FED8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003FF20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003FF68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80040098.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8004023C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800404AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80040564.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800405C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800406A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800407D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80040858.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8004089C.s")
/*
int32_t  func_800409E0(u32 Index){
  u32 uVar1;

  uVar1 = Index & 0xffff;
  if ((0 < gActors[uVar1].health) && (gActors[uVar1].unk_0xD4 == 0) &&
      ((gActors[uVar1].flag & 3) == 3) && (0x50 < gActors[uVar1].unk_0xD0_h)) {
    return 0;
  }
  return 1;
}
*/
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800409E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80040A64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80040AB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80040B4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80040E08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80041018.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8004151C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8004168C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8004172C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8004178C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8004185C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800418A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80042290.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80042308.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80042310.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80042324.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80042338.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80042340.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80042348.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80042350.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80042358.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80042360.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800423A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800427E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80042864.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800429A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80042A0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80042AEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80042B2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80042B94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80042C10.s")
