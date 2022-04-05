#include "common.h"

#ifdef NON_MATCHING
uint32_t func_8004F2B0(uint16_t index){
    if(D_801370CE&gButton_B){
        thisActor.flag&=~0X4040;
        thisActor.unk_0x140=func_80048C28(0);
        if(D_801373D8&~0x80) return 2;
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8004F2B0.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8004F35C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8004F514.s")
//regalloc. redo branching?
#ifdef NON_MATCHING
void func_8004F5B0(uint16_t index){
    if (thisActor.unk_0x140._hu[1] == 0) thisActor.unk_0x140._hu[1] = 1;
    else if (thisActor.unk_0x140._hu[1] != 8) thisActor.unk_0x140._hu[1] = 0;
    else thisActor.unk_0x140._hu[1] = 2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8004F5B0.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8004F614.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8004F7D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8004FB30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8004FC68.s")
//main shake function?
#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8004FDF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800500B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8005060C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8005074C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800508F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800509C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80050F3C.s")

#ifdef NON_MATCHING
void func_80051324(u16 index) { //like, ~95% correct.
    s8 temp_v0_4;
    u16 temp_t9;
    s16 phi_a0;
    s32 phi_a3;

    temp_t9 = thisActor.actorLink;
    func_8004F7D8(index);
    if (func_800491B8(index, 0, -0xE)) {
        thisActor.actorState = 6;
    }
    else {
        if (thisActor.actorState_b[0] == 0) {
            thisActor.unk_0x150._w = 0x10;
            thisActor.speedX._w = thisActor.vel.x_w;
            thisActor.speedY._w = thisActor.vel.y_w;
            if (thisActor.actorState_b[1] == 0x13) {
                thisActor.unk_0x150._w = 0x20;
            }
            thisActor.unk_0x158._w = 0;
            thisActor.actorState_b[0] = 1;
            switch (gPlayerManager.unk_0x10) {
            case 0:
                if (( -ActorMarina_VelByScale(0x1C) * 0.25) <= thisActor.vel.y_w) {
                    thisActor.vel.y_w = ActorMarina_VelByScale(0x1C) * 1.5;
                } else {
                    thisActor.vel.y_w = ActorMarina_VelByScale(0x1C);
                }
                thisActor.unk_0x150._w = 0x18;
                thisActor.unk_0x158._w = ActorMarina_VelByScale(0x13) * D_800EBDD0; //0.358d
                thisActor.unk_0x170._w = 0x55;
                
                break;
            case 8:
                if ((ActorMarina_VelByScale(0x1C) -0xC0000) < thisActor.vel.y_w) {
                    thisActor.vel.y_w -= ActorMarina_VelByScale(0x1C);
                }
                if ((ActorMarina_VelByScale(0x1C) * -2) < thisActor.vel.y_w) {
                    thisActor.vel.y_w = ActorMarina_VelByScale(0x1C) * -2;
                }
                thisActor.unk_0x170._w = 0x58;
                break;
            default:
                thisActor.attackDmg = 0;
                thisActor.unk_0xDA = 0;
                thisActor.unk_0xDB = 0x15;
                thisActor.hitboxAY0 = thisActor.hitboxBY0 - 4;
                thisActor.hitboxAY1 = thisActor.hitboxBY1 + 8;
                if ((gPlayerManager.unk_0x10 & 8) == 0) {
                    thisActor.hitboxAX0 = 0;
                    thisActor.hitboxAX1 = thisActor.hitboxBX1;
                    if (thisActor.vel.x_w < ActorMarina_VelByScale(0x1C)) {
                        thisActor.vel.x_w = ActorMarina_VelByScale(0x1C);
                    }
                    if ((thisActor.flag & 0x20) == 0) {
                        if (thisActor.unk_0x140 != 0) {
                            thisActor.hitboxAX1 = (thisActor.hitboxAX1 + gActors[temp_t9].hitboxBX1) - gActors[temp_t9].hitboxBX0;
                        }
                        thisActor.unk_0x170._w = 0x4F;
                    } else {
                        thisActor.unk_0x170._w = 0x52;
                    }
                } else {
                    thisActor.hitboxAX1 = 0;
                    thisActor.hitboxAX0 = thisActor.hitboxBX0;
                    if (-ActorMarina_VelByScale(0x1C) < thisActor.vel.x_w) {
                        thisActor.vel.x_w = -ActorMarina_VelByScale(0x1C);
                    }
                    phi_a3 = 0x4F;
                    if ((thisActor.flag & 0x20) == 0) {
                        phi_a3 = 0x52;
                    } else if (thisActor.unk_0x140 != 0) {
                        thisActor.hitboxAX0 = (thisActor.hitboxAX0 + gActors[temp_t9].hitboxBX0) - gActors[temp_t9].hitboxBX1;
                    }
                    thisActor.unk_0x170._w = phi_a3;
                }
                if ((ActorMarina_VelByScale(0xF) * 1.5) < thisActor.vel.y_w) {
                    thisActor.vel.y_w = (s32) ((f64) ActorMarina_VelByScale(0xF) * 1.5);
                }
                if (thisActor.vel.y_w < 0) thisActor.vel.y_w = 0;
                break;
            }
            if (thisActor.unk_0x140 == 0) thisActor.unk_0x170._w++;
            func_8005C098(index, 1);
            temp_v0_4 = gPlayerManager.unk_0x10;
            thisActor.flag &= ~0xC30000;
            thisActor.unk_0x17C._w = 0;
            thisActor.unk_0x17C._b[1] = 2;
            thisActor.flag |=0x2000;
            thisActor.unk_0x182 = (u8) temp_v0_4;
            thisActor.unk_0x15C = (s32) temp_v0_4;
            if (thisActor.actorState_b[1] == 0x13) {
                thisActor.unk_0x12C._bu[2] |= 0x40;
                thisActor.vel.x_w = thisActor.speedX._w;
                thisActor.vel.y_w = thisActor.speedY._w;
            }
            SFX_Play_1(0x81);
            goto block_74;
        }
        if (thisActor.actorState_b[1] == 0x12) {
            MODi(thisActor.vel.y_w, -0x60000, thisActor.unk_0x158._w);
            if (ABS(thisActor.vel.x_w)>ActorMarina_VelByScale(0x1C)) MODi(thisActor.vel.x_w, 0, 0x2000);
            MODi(thisActor.unk_0x158._w, ActorMarina_VelByScale(0x13), ActorMarina_VelByScale(0x13) / 16);
            if ((func_8005D338(index) != 0x28) && (func_8005D338(index) != 0x29) && (func_8005D418(index) != 0)) {
                if (thisActor.unk_0x140 == 0) {
                    thisActor.unk_0x170._w = 0x29;
                } else thisActor.unk_0x170._w = 0x28;
            }
            if (thisActor.unk_0x150._w < 4.0) {
                thisActor.unk_0x12C._hu[0] |= 4;
            }
            if (thisActor.unk_0x15C == 0) {
                MODi(thisActor.vel.x_w, 0, ActorMarina_VelByScale(0) / 2);
                thisActor.unk_0x12C._hu[0] |= 8;
                goto block_63;
            }
            if ((thisActor.unk_0x15C != 8) && (thisActor.unk_0x150._w >= 9) && (ABS(thisActor.vel.x_w) >= 0x28000)) {
                if (ABS(thisActor.hitboxAX0) < ABS(thisActor.hitboxAX1)) {
                    phi_a0 = (thisActor.hitboxAX1 + thisActor.pos.x + 1);
                } else {
                    phi_a0 = (thisActor.hitboxAX0 + thisActor.pos.x - 1);
                }
                if ((func_80012AB4(phi_a0, thisActor.pos.y) & 0x80)) {
                    thisActor.unk_0x150._w += 0x10;
                    thisActor.actorState_b[0] = 3;
                    thisActor.actorState_b[1] = 0x13;
                    thisActor.vel.x_w *= 0.75;
                } else {
                    thisActor.flag |= 0x80;
                    goto block_63;
                }
            } else {
                goto block_63;
            }
        } else {
block_63:
            if (thisActor.actorState_b[1] == 0x13) {
                
                phi_a3=ActorMarina_VelByScale(0);
                if (thisActor.actorState_b[0] == 2) {
                    phi_a3 *= 4;
                }
                MODi(thisActor.vel.x_w, 0, phi_a3);
                if (thisActor.actorState_b[0] == 3) {
                    MODi(thisActor.vel.y_w, -0x60000, ActorMarina_VelByScale(0x13) / 2);
                } else {
                    MODi(thisActor.vel.y_w, 0, phi_a3 * 2);
                }
                if ((f64) thisActor.unk_0x150._w < 12.0) {
                    thisActor.unk_0x12C._hu[0] |= 4;
                } else {
                    thisActor.unk_0x12C._bu[2] |= 0x40;
                }
            }
            if (--thisActor.unk_0x150._w == 0) {
                thisActor.flag &= ~0x80;
                thisActor.actorState_b[0] = 2;
                thisActor.actorState_b[1] = 0x1A;
            }
block_74:
            if ((func_8005D338(index) != 0x28) && (func_8005D338(index) != 0x29) && (thisActor.unk_0x170._b[0] == 0)) {
                if ((thisActor.unk_0x170._b[1] == 0) || (thisActor.unk_0x170._b[1] == 3) || (thisActor.unk_0x170._b[1] == 5)) {
                    D_801370D2 = 0;
                    func_8005C250(index);
                }
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80051324.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80051C48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80052004.s")

void func_80052780(uint16_t x,uint16_t y){}

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8005278C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800528F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80052A6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80052C4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80052CD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80053210.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80053358.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800536CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8005396C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80053B28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80053DC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80053F34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800541B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80054320.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80054474.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8005457C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8005498C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80054E18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80054FD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80055188.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800551F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800553EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8005544C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800554AC.s")
void func_8005552C(uint16_t x,uint16_t y){}

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80055538.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800558F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80055C2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80055F8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800562EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8005664C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800569AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80056CCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80056F54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8005701C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80057268.s")

int32_t Actor_AddHP(uint16_t index, int16_t x){
 if(thisActor.health<0) return -1;
 thisActor.health+=x;
 if(thisActor.health>3000){
     thisActor.health=3000;
     return 2;
 }
 return 1;
}
#ifdef NON_MATCHING
int32_t func_8005739C(uint16_t index, int16_t HP){
    if(index==0){
        if(gPlayerActor.unk_0xDC) gPlayerActor.unk_0x13C_h[1]=0;
        else gPlayerActor.unk_0x13C_h[1]=HP/2;
    }
    if(HP!=0){
        if(thisActor.health<1){
            if(index) return 3;
            if(thisActor.health==0) return 3;
        gPlayerActor.health=thisActor.health-HP;
        }
        else{
            thisActor.health-=HP;
            if(thisActor.health<0){
                thisActor.health=0;
                if(index) return 3;
                else return 2;
            }
        }
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8005739C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800574B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800575C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800576A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80057848.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80057C98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800584D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8005878C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80058924.s")

void func_8005896C(uint16_t x, uint16_t y){}

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80058978.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80058A38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80058AE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80058B68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80058C24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80058CAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80058D3C.s")

void func_80058E44(uint16_t index,uint16_t x){
    func_80058924(index);
    thisActor.speedX._w=-thisActor.speedX._w;
    thisActor.speedY._w=thisActor.speedY._w; //...but why?
    thisActor.actorState=43;
}
#ifdef NON_MATCHING
void func_80058EB0(uint16_t index,uint16_t x){
    if((thisActor.flag<<6)<0) func_8004F514(index,thisActor.actorLink);
    func_80058924(index);
    thisActor.unk_0x150._w=thisActor.flag&=~0x1501;
    thisActor.actorState_b[0]=4,thisActor.actorState_b[1]=1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80058EB0.s")
#endif

void func_80058F54(uint16_t index,uint16_t x){
    thisActor.speedX._w=thisActor.vel.x_w;
    thisActor.actorState=42;
}

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80058F9C.s")
