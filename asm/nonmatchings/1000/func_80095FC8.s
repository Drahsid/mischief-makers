glabel func_80095FC8
/* 96BC8 80095FC8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 96BCC 80095FCC 000E7880 */  sll        $t7, $t6, 2
/* 96BD0 80095FD0 01EE7823 */  subu       $t7, $t7, $t6
/* 96BD4 80095FD4 000F7880 */  sll        $t7, $t7, 2
/* 96BD8 80095FD8 01EE7821 */  addu       $t7, $t7, $t6
/* 96BDC 80095FDC 000F7880 */  sll        $t7, $t7, 2
/* 96BE0 80095FE0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 96BE4 80095FE4 01EE7823 */  subu       $t7, $t7, $t6
/* 96BE8 80095FE8 3C18800F */  lui        $t8, %hi(gActors)
/* 96BEC 80095FEC 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 96BF0 80095FF0 000F78C0 */  sll        $t7, $t7, 3
/* 96BF4 80095FF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 96BF8 80095FF8 AFA40020 */  sw         $a0, 0x20($sp)
/* 96BFC 80095FFC 01F81021 */  addu       $v0, $t7, $t8
/* 96C00 80096000 24190001 */  addiu      $t9, $zero, 1
/* 96C04 80096004 3C05800F */  lui        $a1, %hi(D_800E9414)
/* 96C08 80096008 3C06800F */  lui        $a2, %hi(D_800E93C4)
/* 96C0C 8009600C 01C02025 */  or         $a0, $t6, $zero
/* 96C10 80096010 A4590094 */  sh         $t9, 0x94($v0)
/* 96C14 80096014 24C693C4 */  addiu      $a2, $a2, %lo(D_800E93C4)
/* 96C18 80096018 24A59414 */  addiu      $a1, $a1, %lo(D_800E9414)
/* 96C1C 8009601C AFA2001C */  sw         $v0, 0x1c($sp)
/* 96C20 80096020 0C020417 */  jal        func_8008105C
/* 96C24 80096024 A7AE0022 */   sh        $t6, 0x22($sp)
/* 96C28 80096028 8FA2001C */  lw         $v0, 0x1c($sp)
/* 96C2C 8009602C 3C08800F */  lui        $t0, %hi(D_800E961C)
/* 96C30 80096030 97A40022 */  lhu        $a0, 0x22($sp)
/* 96C34 80096034 2508961C */  addiu      $t0, $t0, %lo(D_800E961C)
/* 96C38 80096038 3C05800F */  lui        $a1, %hi(D_800E95E8)
/* 96C3C 8009603C 24A595E8 */  addiu      $a1, $a1, %lo(D_800E95E8)
/* 96C40 80096040 0C0205E4 */  jal        func_80081790
/* 96C44 80096044 AC480178 */   sw        $t0, 0x178($v0)
/* 96C48 80096048 8FBF0014 */  lw         $ra, 0x14($sp)
/* 96C4C 8009604C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 96C50 80096050 03E00008 */  jr         $ra
/* 96C54 80096054 00000000 */   nop
