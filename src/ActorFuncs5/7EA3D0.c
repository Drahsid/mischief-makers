#include "common.h"
u16 D_801B9BC0_7EA690[]={0x580,0x198,0xFFF0,0x2090,0x208,0x128,0,0xFFEB};
u16 D_801B9BD0_7EA6A0[]={0,0x31,0x580,0x184,0,0,0x1600,0,0x90,0x390,0x166,0xFE07,6,13,0,
         0x91,0x390,0x166,0x407,6,13,0,0x92,0x390,0x166,0xFE07,10,13,0,0x93,
         0x390,0x166,0x407,10,13,0xFF00};
u16 D_801B9C18_7EA6E8[]={0,17,0,0,0,0,0x1609,0xFF00};
u16 D_801B9C28_7EA6F8[]={0,48,0,0,0,3,0x75,0xFF00,0,0,0,0};

#ifdef NON_MATCHING
void func_801B9900_7EA3D0(void){
  if (D_800D28E8 == 0) {
      D_800D28FC|=4;
      HealthBar.alpha = 0x40;
      D_800BE544 = 0x8000;
      if (D_800D2908 == 0) {
        D_800D28E8++;
        func_80046148(D_801B9BC0_7EA690,0);
        func_80043A68(D_801B9C18_7EA6E8);
        gLetterboxMode = 0;
      }
      else {
        D_800D28E8 = 0x2000;
        gLetterboxMode = 1;
      }
      D_800BE4EC = 1;
    }
  else if (D_800D28E8 == 1) {
    if (Transition_fadeIn()) {
        D_800D28E8++;
        D_800BE4EC = 1;
      }
    }
  else if (D_800D28E8 == 2) Cutscene_Skip();
  else if (D_800D28E8 == 0x100) {
      D_800D28FC = D_800D28FC & 0xfffffffb | 8;
      gLetterboxMode = 1;
      D_800D28E8++;
    }
  else if ((D_800D28E8 != 0x101) && (D_800D28E8 == 0x1000)) {
      func_80028744();
      D_800D28E8++;
      func_80045FA4(D_801B9BC0_7EA690,0);
      func_80043A68(D_801B9BD0_7EA6A0);
      D_800BE5F4 = 7;
      D_801373E0.unk_0x78|= 1;
      D_800BE4EC = 1;
    }
  else if (D_800D28E8 == 0x1001) {
    if (Transition_fadeIn()) {
      D_800D28E8 = 0x100;
      D_800BE4EC = 1;
    }
  }
  else if (D_800D28E8 == 0x2000) {
    D_800D28E8 = 0x1001;
    func_80045FA4(D_801B9BC0_7EA690,0);
    func_80043A68(D_801B9BD0_7EA6A0);
    D_800BE5F4._w = 7;
    D_801373E0.unk_0x78|=1;
  }
  else if (D_800D28E8 == 0x8000) func_80046188(D_801B9BC0_7EA690,D_801B9C28_7EA6F8);
  else if (D_800D28E8 == 0x8001) {
    if (Transition_fadeIn()) D_800D28E8++;
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs5/7EA3D0/func_801B9900_7EA3D0.s")
#endif