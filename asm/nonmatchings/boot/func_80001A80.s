glabel func_80001A80
/* 2680 80001A80 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2684 80001A84 AFB2001C */  sw         $s2, 0x1c($sp)
/* 2688 80001A88 3C128017 */  lui        $s2, %hi(D_8016D9A8)
/* 268C 80001A8C 2652D9A8 */  addiu      $s2, $s2, %lo(D_8016D9A8)
/* 2690 80001A90 AFB00014 */  sw         $s0, 0x14($sp)
/* 2694 80001A94 8E500004 */  lw         $s0, 4($s2)
/* 2698 80001A98 AFBF0024 */  sw         $ra, 0x24($sp)
/* 269C 80001A9C AFB30020 */  sw         $s3, 0x20($sp)
/* 26A0 80001AA0 1200001E */  beqz       $s0, .L80001B1C
/* 26A4 80001AA4 AFB10018 */   sw        $s1, 0x18($sp)
/* 26A8 80001AA8 3C138017 */  lui        $s3, %hi(D_8016DEB8)
/* 26AC 80001AAC 2673DEB8 */  addiu      $s3, $s3, %lo(D_8016DEB8)
.L80001AB0:
/* 26B0 80001AB0 8E0F000C */  lw         $t7, 0xc($s0)
/* 26B4 80001AB4 8E6E0000 */  lw         $t6, ($s3)
/* 26B8 80001AB8 8E020000 */  lw         $v0, ($s0)
/* 26BC 80001ABC 25F80002 */  addiu      $t8, $t7, 2
/* 26C0 80001AC0 030E082B */  sltu       $at, $t8, $t6
/* 26C4 80001AC4 10200013 */  beqz       $at, .L80001B14
/* 26C8 80001AC8 00408825 */   or        $s1, $v0, $zero
/* 26CC 80001ACC 8E590004 */  lw         $t9, 4($s2)
/* 26D0 80001AD0 00000000 */  nop
/* 26D4 80001AD4 16190002 */  bne        $s0, $t9, .L80001AE0
/* 26D8 80001AD8 00000000 */   nop
/* 26DC 80001ADC AE420004 */  sw         $v0, 4($s2)
.L80001AE0:
/* 26E0 80001AE0 0C026EBB */  jal        func_8009BAEC
/* 26E4 80001AE4 02002025 */   or        $a0, $s0, $zero
/* 26E8 80001AE8 8E450008 */  lw         $a1, 8($s2)
/* 26EC 80001AEC 00000000 */  nop
/* 26F0 80001AF0 10A00005 */  beqz       $a1, .L80001B08
/* 26F4 80001AF4 00000000 */   nop
/* 26F8 80001AF8 0C026EAE */  jal        func_8009BAB8
/* 26FC 80001AFC 02002025 */   or        $a0, $s0, $zero
/* 2700 80001B00 10000004 */  b          .L80001B14
/* 2704 80001B04 00000000 */   nop
.L80001B08:
/* 2708 80001B08 AE500008 */  sw         $s0, 8($s2)
/* 270C 80001B0C AE000000 */  sw         $zero, ($s0)
/* 2710 80001B10 AE000004 */  sw         $zero, 4($s0)
.L80001B14:
/* 2714 80001B14 1620FFE6 */  bnez       $s1, .L80001AB0
/* 2718 80001B18 02208025 */   or        $s0, $s1, $zero
.L80001B1C:
/* 271C 80001B1C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 2720 80001B20 8FB00014 */  lw         $s0, 0x14($sp)
/* 2724 80001B24 8FB10018 */  lw         $s1, 0x18($sp)
/* 2728 80001B28 8FB2001C */  lw         $s2, 0x1c($sp)
/* 272C 80001B2C 8FB30020 */  lw         $s3, 0x20($sp)
/* 2730 80001B30 03E00008 */  jr         $ra
/* 2734 80001B34 27BD0028 */   addiu     $sp, $sp, 0x28