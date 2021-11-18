#include "BGM.h"
#include "common.h"
//these look to be camera functions, some that are level-specific.
void Camera_RotateReset(void) {
    gCameraRot = 0;
    gCameraRotDelta = 0;
}
/*\
void Camera_ApplyRotate(void){
    int x;
    gCameraRot+=gCameraRotDelta;
    x=gCameraRot;
    if(gCameraRot<0) x=gCameraRot+0xFFFF;
    gUpX =gCosineLookup[(x >> 0x10) - 0x100U & 0x3ff];
    gUpY =gCosineLookup[x >> 0x10 & 0x3ff];
}*/

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/Camera_ApplyRotate.s")

void func_80023668(void) {}

void func_80023670(void) {}

void func_80023678(void) {
    D_800BE578 = 2;
    D_800BE6FC = 1;
    D_800BE584 = -0xC;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800236A0.s")

void func_80023798(void) {
    D_800BE578 = (int16_t)((int32_t)gScreenPosCurrentX._hi / 2);
    D_800BE580 = -0xC;
    gEyeY = 32.0f;
    D_800BE6A8 = 1;
    D_800BE70C = 2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800237F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023894.s")
//"tightrope ride" camera funcs
void CameraInit_TightropeRide(void) {
    D_800BE580 = -0xC;
    gEyeY = 32.0f;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/CameraTick_TightropeRide.s")
//"Magma Rafts" camera func
void CameraInit_MagmaRafts(void) {
    D_800BE580 = -0xC;
    gEyeY = 32.0f;
    D_800BE70C = 2;
}

void CameraTick_MagmaRafts(void) {
    func_800237F0();
    if ((gDebugBitfeild & 0xA400) == 0) { //this freezes the camera otherwise
        D_800BE544 = 0x8000;
        gScreenPosTargetX._w = (int32_t)(gPlayerPosXMirror._w + 0x200000);
        gScreenPosTargetY._w = (int32_t)gPlayerPosYMirror._w;
        D_800BE704 = 1;
    }
}

void func_80023AA4(void){
    HealthBar.Active=0;
    HealthFace.Active=0;
    D_800CA230=1;
}

void func_80023AC4(void) {}
//camera func for "Scene 3"
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023ACC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023AFC.s")
//camera func for "Scene 4"
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023BC0.s")

void func_80023BF8(void) {}
//camera funcs for "migen brawl"
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
    D_800BE578 = gScreenPosCurrentX._hi;
    D_800BE580 = gScreenPosCurrentY._hi + 0x60;
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
//2 of the Mt. Snow levels
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023EDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023F5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/CameraTick_ClanballLift.s")

void CameraInit_SeasickClimb(void) {
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
    gCameraRot = 0;
    gCameraRotDelta = 0;
    D_800BE638 = 0;
}
//looks like this does the "seasick climb" effect
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/CameraTick_SeasickClimb_Rocking.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/CameraTick_SeasickClimb.s")
//Camera funcs for "Vertigo!"
void CameraInit_Vertigo(void) {
    D_800BE70C = 3;
    D_800BE6A8 = 2;
    D_800BE710 = 1;
    gCameraRot = 0;
}
/*
void CameraTick_Vertigo(){
    int32_t rot=gCameraRot;
    if(gCameraRot<0) rot=gCameraRot+0xFFFF;
    rot=rot>>0x10;
    gUpX=gCosineLookup[rot - 0x100 & 0x3FF];
    gUpY=gCosineLookup[rot & 0x3FF];

}*/
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/CameraTick_Vertigo.s")

void CameraInit_Freefall(void) {
    D_800BE70C = 3;
    D_800BE6A8 = 2;
    D_800BE710 = 1;
}

void CameraTick_Freefall(void) {}

void func_800245B4(void){
    D_800BE578 = 2;
    D_800BE580 = -0xc;
    D_800BE57C = 2;
    D_800BE584 = -0xc;
    HealthBar.Active=0;
    HealthFace.Active=0;
}

void func_800245F0(void) {}

void func_800245F8(void) {}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80024600.s")

void CameraInit_Beastector(void) {
    D_800BE588 = 2;
    D_800BE704 = 1;
    D_800BE708 = 1;
    gLetterboxMode = 1U;
    Camera_RotateReset();
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/CameraTick_Beastector.s")

void func_80024854(void) {
    D_800BE544 = 0x8000;
    D_800BE704 = 1;
    D_800BE708 = 1;
    D_800BE588 = 3;
    D_800CC428 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002488C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800249B8.s")

void CameraInit_ClanceWar2(void) {
    D_800BE588 = 3;
}

void CameraTick_ClanceWar2(){
    D_800BE73C=(gScreenPosCurrentX._hi-gScreenPosNextX._hi)*0x10000;
    func_8002488C();
}
//camera funcs for "Bee's the one"
void func_80024DA8(void) {
    D_800BE544 = 0x8000;
    D_800BE704 = 1;
    D_800BE708 = 1;
    D_800BE588 = 3;
}

#ifdef NON_MATCHING
void func_80024DD8(void) {
    uint16_t* x = D_800CC228;
    uint16_t* y = D_80380400;
    uint16_t i;
    for (i = 0; i < 256; i++) {
        *y = *x;
        x++;
        y++;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80024DD8.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80024E18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/CameraTick_BeesTheOne.s")
//Splashscreen camera funcs.
void func_80025084(void) {}

void func_8002508C(void) {}

void func_80025094(void) {
    D_800BE588 = 0;
    D_800BE58C = 1;
    D_800BE584 = -0x4C;
    D_8013746C = &D_800C71A0;
    if (gCurrentScene != 0x16) { //if we aren't on "Trapped!?"
        gEyeX = -128.0f;
        gEyeY = 128.0f;
    }
    Camera_RotateReset();
}
//used for Merco's fight
void func_80025114(void) {
    Camera_ApplyRotate();
    if ((gSceneFrames & 1))
        D_800BE57C++;
}

void func_8002515C(void) {
    D_800BE580 = -0x18;
    D_800BE57C = 2;
    D_800BE584 = -0xC;
}

void func_80025184(void) {
    D_800BE578 = (int16_t)(((int32_t)gScreenPosCurrentX._hi / 4) & 0x1FF);
    D_800BE57C = (int16_t)(((int32_t)gScreenPosCurrentX._hi / 8) & 0x1FF);
}
// camera funcs for cave stages
void func_800251CC(void) {
    D_800BE57C = 2;
    D_800BE584 = -0xC;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800251E8.s")
//"aster's tryke" camera tick
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80025254.s")

void CameraInit_PhoenixGamma(void) {
    D_800BE704 = 1;
    D_800BE708 = 1;
    gLetterboxMode = 2;
    Camera_RotateReset();
}

void CameraTick_PhoenixGamma(void){
    Camera_ApplyRotate();
    if(gLetterboxMode == 2){
        if(gScreenPosCurrentY._hi<256){
            gScreenPosCurrentY._hi+=0x400;
            gScreenPosTargetY._hi+=0x400;
        }
        if(gScreenPosCurrentY._hi>0X500){
            gScreenPosCurrentY._hi-=0x400;
            gScreenPosTargetY._hi-=0x400;
        }
    }
}

void func_80025380(void) {
    D_800BE578 = 2;
    D_800BE580 = -0xC;
    D_800BE70C = 4;
}

void func_800253A8(void) {}
// determines lifebar's position?
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800253B0.s")

uint8_t gSceneBGMs[] = {
    BGM_ESPERANCE,
    BGM_VOLCANIC,
    0xff,
    0xff,
    0xff,
    0xff,
    0xff,
    BGM_YUJYA,
    0xff,
    0xff,
    BGM_YUJYA,
    BGM_OPENING_TITLE,
    BGM_ESPERANCE,
    BGM_VOLCANIC,
    BGM_TO1,
    0xff,
    0xff,
    0xff,
    0xff,
    BGM_BOSS,
    BGM_BONO,
    0xff,
    BGM_REVENGE,
    BGM_WOODS,
    BGM_GLOOMY,
    BGM_BOSS,
    BGM_BOSS,
    0xff,
    BGM_DETERMINATION,
    0xff,
    BGM_BONO,
    BGM_OUT,
    BGM_ESPERANCE,
    BGM_WOODS,
    BGM_BONO,
    BGM_BONO,
    BGM_LIKE_A_WIND,
    BGM_MARINA,
    BGM_VOLCANIC,
    BGM_OUT,
    BGM_MARINA,
    0xff,
    BGM_A_CAVE,
    BGM_A_CAVE,
    BGM_A_CAVE,
    BGM_A_CAVE,
    BGM_OUT,
    BGM_MARINA,
    BGM_OBAKESONG,
    BGM_A_CAVE,
    BGM_A_CAVE,
    BGM_A_CAVE,
    BGM_ESPERANCE,
    BGM_HURRY,
    BGM_LIKE_A_WIND,
    BGM_HURRY,
    BGM_LIKE_A_WIND,
    0xff,
    0xff,
    BGM_OUT,
    BGM_GIMMICK,
    BGM_MARINA,
    BGM_GIMMICK,
    BGM_BONO,
    0x0f,
    BGM_LETHE,
    BGM_DETERMINATION,
    BGM_HURRY,
    BGM_ESPERANCE,
    BGM_VOLCANIC,
    BGM_VOLCANIC,
    BGM_MARINA,
    BGM_BONO,
    BGM_TO1,
    BGM_TO1,
    BGM_TO1,
    BGM_TO1,
    BGM_HURRY,
    BGM_HURRY,
    0xff,
    BGM_TO1,
    BGM_TO1,
    BGM_TO1,
    BGM_TO1,
    BGM_TO1,
    BGM_YUJYA,
    BGM_REVENGE,
    BGM_TO1};

void PlaySceneBGM(void) {
    if (gSceneBGMs[gCurrentScene] != 255) {
        BGM_Play(gSceneBGMs[gCurrentScene]);
    }
}
//stage init?
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800255B4.s") 
//multiple romcopy funcs
void LoadSceneFiles(void) {
    func_8002694C(gCurrentScene);
    func_80026A18(gCurrentScene);
    func_80026B04(gCurrentScene);
    func_80026BD0(gCurrentScene);
    func_80026874(gCurrentScene);
    func_80026C9C(gCurrentScene);
    func_8002729C(gCurrentScene);
    func_80025E00();
}

void func_80025BFC(void) {
    uint32_t* phi_v1;
    uint32_t* phi_a0;
    uint16_t index;

    for (index = 0, phi_v1 = (uint32_t*)0x80380000, phi_a0 = (uint32_t*)0x803DA200; index < 0x180; index++) {
        *phi_a0 = *phi_v1;
        phi_a0++;
        phi_v1++;
        // though below makes more sense, above is required to match? Feels fake
        // phi_a0[index] = phi_v1[index];
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/InitScene.s")
