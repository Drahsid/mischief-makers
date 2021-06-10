glabel func_80092E30
/* 93A30 80092E30 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 93A34 80092E34 AFB00018 */  sw         $s0, 0x18($sp)
/* 93A38 80092E38 3090FFFF */  andi       $s0, $a0, 0xffff
/* 93A3C 80092E3C AFBF001C */  sw         $ra, 0x1c($sp)
/* 93A40 80092E40 AFA40028 */  sw         $a0, 0x28($sp)
/* 93A44 80092E44 0C023C5A */  jal        func_8008F168
/* 93A48 80092E48 3204FFFF */   andi      $a0, $s0, 0xffff
/* 93A4C 80092E4C 14400033 */  bnez       $v0, .L80092F1C
/* 93A50 80092E50 00107080 */   sll       $t6, $s0, 2
/* 93A54 80092E54 01D07023 */  subu       $t6, $t6, $s0
/* 93A58 80092E58 000E7080 */  sll        $t6, $t6, 2
/* 93A5C 80092E5C 01D07021 */  addu       $t6, $t6, $s0
/* 93A60 80092E60 000E7080 */  sll        $t6, $t6, 2
/* 93A64 80092E64 01D07023 */  subu       $t6, $t6, $s0
/* 93A68 80092E68 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 93A6C 80092E6C 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 93A70 80092E70 000E70C0 */  sll        $t6, $t6, 3
/* 93A74 80092E74 01CF1821 */  addu       $v1, $t6, $t7
/* 93A78 80092E78 946600D0 */  lhu        $a2, 0xd0($v1)
/* 93A7C 80092E7C 24010240 */  addiu      $at, $zero, 0x240
/* 93A80 80092E80 10C10006 */  beq        $a2, $at, .L80092E9C
/* 93A84 80092E84 00C01025 */   or        $v0, $a2, $zero
/* 93A88 80092E88 24010241 */  addiu      $at, $zero, 0x241
/* 93A8C 80092E8C 1041000D */  beq        $v0, $at, .L80092EC4
/* 93A90 80092E90 3204FFFF */   andi      $a0, $s0, 0xffff
/* 93A94 80092E94 10000022 */  b          .L80092F20
/* 93A98 80092E98 8FBF001C */   lw        $ra, 0x1c($sp)
.L80092E9C:
/* 93A9C 80092E9C 24D80001 */  addiu      $t8, $a2, 1
/* 93AA0 80092EA0 3C05800F */  lui        $a1, %hi(D_800E8CF8)
/* 93AA4 80092EA4 A47800D0 */  sh         $t8, 0xd0($v1)
/* 93AA8 80092EA8 24A58CF8 */  addiu      $a1, $a1, %lo(D_800E8CF8)
/* 93AAC 80092EAC 3204FFFF */  andi       $a0, $s0, 0xffff
/* 93AB0 80092EB0 0C0205E4 */  jal        func_80081790
/* 93AB4 80092EB4 AFA30020 */   sw        $v1, 0x20($sp)
/* 93AB8 80092EB8 8FA30020 */  lw         $v1, 0x20($sp)
/* 93ABC 80092EBC 00000000 */  nop
/* 93AC0 80092EC0 3204FFFF */  andi       $a0, $s0, 0xffff
.L80092EC4:
/* 93AC4 80092EC4 0C023C42 */  jal        func_8008F108
/* 93AC8 80092EC8 AFA30020 */   sw        $v1, 0x20($sp)
/* 93ACC 80092ECC 8FA30020 */  lw         $v1, 0x20($sp)
/* 93AD0 80092ED0 2605000B */  addiu      $a1, $s0, 0xb
/* 93AD4 80092ED4 8C79016C */  lw         $t9, 0x16c($v1)
/* 93AD8 80092ED8 30A9FFFF */  andi       $t1, $a1, 0xffff
/* 93ADC 80092EDC 33280001 */  andi       $t0, $t9, 1
/* 93AE0 80092EE0 11000006 */  beqz       $t0, .L80092EFC
/* 93AE4 80092EE4 3204FFFF */   andi      $a0, $s0, 0xffff
/* 93AE8 80092EE8 01202825 */  or         $a1, $t1, $zero
/* 93AEC 80092EEC 0C023CBA */  jal        func_8008F2E8
/* 93AF0 80092EF0 AFA30020 */   sw        $v1, 0x20($sp)
/* 93AF4 80092EF4 8FA30020 */  lw         $v1, 0x20($sp)
/* 93AF8 80092EF8 00000000 */  nop
.L80092EFC:
/* 93AFC 80092EFC C464011C */  lwc1       $f4, 0x11c($v1)
/* 93B00 80092F00 44803000 */  mtc1       $zero, $f6
/* 93B04 80092F04 240A0110 */  addiu      $t2, $zero, 0x110
/* 93B08 80092F08 4606203C */  c.lt.s     $f4, $f6
/* 93B0C 80092F0C 00000000 */  nop
/* 93B10 80092F10 45000003 */  bc1f       .L80092F20
/* 93B14 80092F14 8FBF001C */   lw        $ra, 0x1c($sp)
/* 93B18 80092F18 A46A00D0 */  sh         $t2, 0xd0($v1)
.L80092F1C:
/* 93B1C 80092F1C 8FBF001C */  lw         $ra, 0x1c($sp)
.L80092F20:
/* 93B20 80092F20 8FB00018 */  lw         $s0, 0x18($sp)
/* 93B24 80092F24 03E00008 */  jr         $ra
/* 93B28 80092F28 27BD0028 */   addiu     $sp, $sp, 0x28
