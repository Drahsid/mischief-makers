glabel func_8009333C
/* 93F3C 8009333C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 93F40 80093340 AFA40040 */  sw         $a0, 0x40($sp)
/* 93F44 80093344 97AE0042 */  lhu        $t6, 0x42($sp)
/* 93F48 80093348 3C18800F */  lui        $t8, 0x800f
/* 93F4C 8009334C 000E7880 */  sll        $t7, $t6, 2
/* 93F50 80093350 01EE7823 */  subu       $t7, $t7, $t6
/* 93F54 80093354 000F7880 */  sll        $t7, $t7, 2
/* 93F58 80093358 01EE7821 */  addu       $t7, $t7, $t6
/* 93F5C 8009335C 000F7880 */  sll        $t7, $t7, 2
/* 93F60 80093360 01EE7823 */  subu       $t7, $t7, $t6
/* 93F64 80093364 000F78C0 */  sll        $t7, $t7, 3
/* 93F68 80093368 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 93F6C 8009336C 01F81021 */  addu       $v0, $t7, $t8
/* 93F70 80093370 8C460B10 */  lw         $a2, 0xb10($v0)
/* 93F74 80093374 AFBF0034 */  sw         $ra, 0x34($sp)
/* 93F78 80093378 00063023 */  negu       $a2, $a2
/* 93F7C 8009337C 0006CC00 */  sll        $t9, $a2, 0x10
/* 93F80 80093380 24090098 */  addiu      $t1, $zero, 0x98
/* 93F84 80093384 3C0A0068 */  lui        $t2, 0x68
/* 93F88 80093388 3C0B0120 */  lui        $t3, 0x120
/* 93F8C 8009338C AFAB001C */  sw         $t3, 0x1c($sp)
/* 93F90 80093390 AFAA0018 */  sw         $t2, 0x18($sp)
/* 93F94 80093394 AFA90010 */  sw         $t1, 0x10($sp)
/* 93F98 80093398 00193403 */  sra        $a2, $t9, 0x10
/* 93F9C 8009339C AFA20038 */  sw         $v0, 0x38($sp)
/* 93FA0 800933A0 24042800 */  addiu      $a0, $zero, 0x2800
/* 93FA4 800933A4 AFA00014 */  sw         $zero, 0x14($sp)
/* 93FA8 800933A8 AFA00020 */  sw         $zero, 0x20($sp)
/* 93FAC 800933AC AFA00024 */  sw         $zero, 0x24($sp)
/* 93FB0 800933B0 AFA00028 */  sw         $zero, 0x28($sp)
/* 93FB4 800933B4 00002825 */  or         $a1, $zero, $zero
/* 93FB8 800933B8 0C00F5A3 */  jal        func_8003D68C
/* 93FBC 800933BC 2407FF68 */   addiu     $a3, $zero, -0x98
/* 93FC0 800933C0 8FA20038 */  lw         $v0, 0x38($sp)
/* 93FC4 800933C4 240C0098 */  addiu      $t4, $zero, 0x98
/* 93FC8 800933C8 3C0DFF98 */  lui        $t5, 0xff98
/* 93FCC 800933CC 3C0E0120 */  lui        $t6, 0x120
/* 93FD0 800933D0 84450B12 */  lh         $a1, 0xb12($v0)
/* 93FD4 800933D4 AFAE001C */  sw         $t6, 0x1c($sp)
/* 93FD8 800933D8 AFAD0018 */  sw         $t5, 0x18($sp)
/* 93FDC 800933DC AFAC0010 */  sw         $t4, 0x10($sp)
/* 93FE0 800933E0 24042800 */  addiu      $a0, $zero, 0x2800
/* 93FE4 800933E4 00003025 */  or         $a2, $zero, $zero
/* 93FE8 800933E8 2407FF68 */  addiu      $a3, $zero, -0x98
/* 93FEC 800933EC AFA00014 */  sw         $zero, 0x14($sp)
/* 93FF0 800933F0 AFA00020 */  sw         $zero, 0x20($sp)
/* 93FF4 800933F4 AFA00024 */  sw         $zero, 0x24($sp)
/* 93FF8 800933F8 0C00F5A3 */  jal        func_8003D68C
/* 93FFC 800933FC AFA00028 */   sw        $zero, 0x28($sp)
/* 94000 80093400 8FBF0034 */  lw         $ra, 0x34($sp)
/* 94004 80093404 27BD0040 */  addiu      $sp, $sp, 0x40
/* 94008 80093408 03E00008 */  jr         $ra
/* 9400C 8009340C 00000000 */   nop
