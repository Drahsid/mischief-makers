glabel func_800289E4
/* 295E4 800289E4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 295E8 800289E8 AFB60030 */  sw         $s6, 0x30($sp)
/* 295EC 800289EC 3C16800E */  lui        $s6, %hi(D_800E3580)
/* 295F0 800289F0 26D63580 */  addiu      $s6, $s6, %lo(D_800E3580)
/* 295F4 800289F4 AFB20020 */  sw         $s2, 0x20($sp)
/* 295F8 800289F8 AFBF0034 */  sw         $ra, 0x34($sp)
/* 295FC 800289FC AFB5002C */  sw         $s5, 0x2c($sp)
/* 29600 80028A00 AFB40028 */  sw         $s4, 0x28($sp)
/* 29604 80028A04 AFB30024 */  sw         $s3, 0x24($sp)
/* 29608 80028A08 AFB1001C */  sw         $s1, 0x1c($sp)
/* 2960C 80028A0C AFB00018 */  sw         $s0, 0x18($sp)
/* 29610 80028A10 AFA40038 */  sw         $a0, 0x38($sp)
/* 29614 80028A14 AFA60040 */  sw         $a2, 0x40($sp)
/* 29618 80028A18 A6C00000 */  sh         $zero, ($s6)
/* 2961C 80028A1C 94A20000 */  lhu        $v0, ($a1)
/* 29620 80028A20 00069400 */  sll        $s2, $a2, 0x10
/* 29624 80028A24 00127C03 */  sra        $t7, $s2, 0x10
/* 29628 80028A28 01E09025 */  or         $s2, $t7, $zero
/* 2962C 80028A2C 00A08825 */  or         $s1, $a1, $zero
/* 29630 80028A30 10400023 */  beqz       $v0, .L80028AC0
/* 29634 80028A34 308EFFFF */   andi      $t6, $a0, 0xffff
/* 29638 80028A38 000EC080 */  sll        $t8, $t6, 2
/* 2963C 80028A3C 030EC023 */  subu       $t8, $t8, $t6
/* 29640 80028A40 0018C080 */  sll        $t8, $t8, 2
/* 29644 80028A44 030EC021 */  addu       $t8, $t8, $t6
/* 29648 80028A48 0018C080 */  sll        $t8, $t8, 2
/* 2964C 80028A4C 030EC023 */  subu       $t8, $t8, $t6
/* 29650 80028A50 3C19800F */  lui        $t9, %hi(gActors)
/* 29654 80028A54 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 29658 80028A58 0018C0C0 */  sll        $t8, $t8, 3
/* 2965C 80028A5C 3C14800F */  lui        $s4, %hi(gActors)
/* 29660 80028A60 2694F510 */  addiu      $s4, $s4, %lo(gActors)
/* 29664 80028A64 03199821 */  addu       $s3, $t8, $t9
/* 29668 80028A68 24150198 */  addiu      $s5, $zero, 0x198
/* 2966C 80028A6C 3050FFFF */  andi       $s0, $v0, 0xffff
.L80028A70:
/* 29670 80028A70 02150019 */  multu      $s0, $s5
/* 29674 80028A74 86680088 */  lh         $t0, 0x88($s3)
/* 29678 80028A78 00004812 */  mflo       $t1
/* 2967C 80028A7C 02895021 */  addu       $t2, $s4, $t1
/* 29680 80028A80 854B0088 */  lh         $t3, 0x88($t2)
/* 29684 80028A84 0C00A273 */  jal        func_800289CC
/* 29688 80028A88 010B2023 */   subu      $a0, $t0, $t3
/* 2968C 80028A8C 00021C00 */  sll        $v1, $v0, 0x10
/* 29690 80028A90 00036403 */  sra        $t4, $v1, 0x10
/* 29694 80028A94 0192082A */  slt        $at, $t4, $s2
/* 29698 80028A98 10200005 */  beqz       $at, .L80028AB0
/* 2969C 80028A9C 00000000 */   nop
/* 296A0 80028AA0 000C9400 */  sll        $s2, $t4, 0x10
/* 296A4 80028AA4 00126C03 */  sra        $t5, $s2, 0x10
/* 296A8 80028AA8 A6D00000 */  sh         $s0, ($s6)
/* 296AC 80028AAC 01A09025 */  or         $s2, $t5, $zero
.L80028AB0:
/* 296B0 80028AB0 96220002 */  lhu        $v0, 2($s1)
/* 296B4 80028AB4 26310002 */  addiu      $s1, $s1, 2
/* 296B8 80028AB8 1440FFED */  bnez       $v0, .L80028A70
/* 296BC 80028ABC 3050FFFF */   andi      $s0, $v0, 0xffff
.L80028AC0:
/* 296C0 80028AC0 8FBF0034 */  lw         $ra, 0x34($sp)
/* 296C4 80028AC4 8FB00018 */  lw         $s0, 0x18($sp)
/* 296C8 80028AC8 8FB1001C */  lw         $s1, 0x1c($sp)
/* 296CC 80028ACC 8FB20020 */  lw         $s2, 0x20($sp)
/* 296D0 80028AD0 8FB30024 */  lw         $s3, 0x24($sp)
/* 296D4 80028AD4 8FB40028 */  lw         $s4, 0x28($sp)
/* 296D8 80028AD8 8FB5002C */  lw         $s5, 0x2c($sp)
/* 296DC 80028ADC 8FB60030 */  lw         $s6, 0x30($sp)
/* 296E0 80028AE0 03E00008 */  jr         $ra
/* 296E4 80028AE4 27BD0038 */   addiu     $sp, $sp, 0x38
