glabel func_80002A2C
/* 362C 80002A2C 3C0E8017 */  lui        $t6, %hi(D_8016E6F4)
/* 3630 80002A30 8DCEE6F4 */  lw         $t6, %lo(D_8016E6F4)($t6)
/* 3634 80002A34 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 3638 80002A38 000478C0 */  sll        $t7, $a0, 3
/* 363C 80002A3C AFBF0024 */  sw         $ra, 0x24($sp)
/* 3640 80002A40 AFA50034 */  sw         $a1, 0x34($sp)
/* 3644 80002A44 01CF1021 */  addu       $v0, $t6, $t7
/* 3648 80002A48 8C580008 */  lw         $t8, 8($v0)
/* 364C 80002A4C 3C038017 */  lui        $v1, %hi(D_8016E714)
/* 3650 80002A50 2463E714 */  addiu      $v1, $v1, %lo(D_8016E714)
/* 3654 80002A54 8C470004 */  lw         $a3, 4($v0)
/* 3658 80002A58 33190001 */  andi       $t9, $t8, 1
/* 365C 80002A5C AC780000 */  sw         $t8, ($v1)
/* 3660 80002A60 13200003 */  beqz       $t9, .L80002A70
/* 3664 80002A64 03003025 */   or        $a2, $t8, $zero
/* 3668 80002A68 27060001 */  addiu      $a2, $t8, 1
/* 366C 80002A6C AC660000 */  sw         $a2, ($v1)
.L80002A70:
/* 3670 80002A70 8FA40034 */  lw         $a0, 0x34($sp)
/* 3674 80002A74 00C02825 */  or         $a1, $a2, $zero
/* 3678 80002A78 0C026DB8 */  jal        func_8009B6E0
/* 367C 80002A7C AFA7002C */   sw        $a3, 0x2c($sp)
/* 3680 80002A80 3C038017 */  lui        $v1, %hi(D_8016E714)
/* 3684 80002A84 2463E714 */  addiu      $v1, $v1, %lo(D_8016E714)
/* 3688 80002A88 8C6A0000 */  lw         $t2, ($v1)
/* 368C 80002A8C 8FA90034 */  lw         $t1, 0x34($sp)
/* 3690 80002A90 3C0B8017 */  lui        $t3, %hi(D_8016E728)
/* 3694 80002A94 8FA7002C */  lw         $a3, 0x2c($sp)
/* 3698 80002A98 256BE728 */  addiu      $t3, $t3, %lo(D_8016E728)
/* 369C 80002A9C 3C048017 */  lui        $a0, %hi(D_8016E748)
/* 36A0 80002AA0 2484E748 */  addiu      $a0, $a0, %lo(D_8016E748)
/* 36A4 80002AA4 AFAB0018 */  sw         $t3, 0x18($sp)
/* 36A8 80002AA8 00002825 */  or         $a1, $zero, $zero
/* 36AC 80002AAC 00003025 */  or         $a2, $zero, $zero
/* 36B0 80002AB0 AFAA0014 */  sw         $t2, 0x14($sp)
/* 36B4 80002AB4 0C026DE4 */  jal        func_8009B790
/* 36B8 80002AB8 AFA90010 */   sw        $t1, 0x10($sp)
/* 36BC 80002ABC 3C048017 */  lui        $a0, %hi(D_8016E728)
/* 36C0 80002AC0 2484E728 */  addiu      $a0, $a0, %lo(D_8016E728)
/* 36C4 80002AC4 00002825 */  or         $a1, $zero, $zero
/* 36C8 80002AC8 0C026B44 */  jal        func_8009AD10
/* 36CC 80002ACC 24060001 */   addiu     $a2, $zero, 1
/* 36D0 80002AD0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 36D4 80002AD4 27BD0030 */  addiu      $sp, $sp, 0x30
/* 36D8 80002AD8 03E00008 */  jr         $ra
/* 36DC 80002ADC 00000000 */   nop