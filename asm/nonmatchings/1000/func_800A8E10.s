glabel func_800A8E10
/* A9A10 800A8E10 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A9A14 800A8E14 AFBF001C */  sw         $ra, 0x1c($sp)
/* A9A18 800A8E18 AFA40030 */  sw         $a0, 0x30($sp)
/* A9A1C 800A8E1C AFB00018 */  sw         $s0, 0x18($sp)
/* A9A20 800A8E20 AFA00024 */  sw         $zero, 0x24($sp)
/* A9A24 800A8E24 44802000 */  mtc1       $zero, $f4
/* A9A28 800A8E28 00000000 */  nop
/* A9A2C 800A8E2C E7A4002C */  swc1       $f4, 0x2c($sp)
/* A9A30 800A8E30 8FAE0030 */  lw         $t6, 0x30($sp)
/* A9A34 800A8E34 AFAE0028 */  sw         $t6, 0x28($sp)
/* A9A38 800A8E38 8FAF0024 */  lw         $t7, 0x24($sp)
/* A9A3C 800A8E3C 2DE101B0 */  sltiu      $at, $t7, 0x1b0
/* A9A40 800A8E40 10200010 */  beqz       $at, .L800A8E84
/* A9A44 800A8E44 00000000 */   nop
.L800A8E48:
/* A9A48 800A8E48 8FB90024 */  lw         $t9, 0x24($sp)
/* A9A4C 800A8E4C 8FB80028 */  lw         $t8, 0x28($sp)
/* A9A50 800A8E50 240801B0 */  addiu      $t0, $zero, 0x1b0
/* A9A54 800A8E54 24060002 */  addiu      $a2, $zero, 2
/* A9A58 800A8E58 01192823 */  subu       $a1, $t0, $t9
/* A9A5C 800A8E5C 0C02A254 */  jal        func_800A8950
/* A9A60 800A8E60 03192021 */   addu      $a0, $t8, $t9
/* A9A64 800A8E64 8FA90024 */  lw         $t1, 0x24($sp)
/* A9A68 800A8E68 00408025 */  or         $s0, $v0, $zero
/* A9A6C 800A8E6C 01305021 */  addu       $t2, $t1, $s0
/* A9A70 800A8E70 AFAA0024 */  sw         $t2, 0x24($sp)
/* A9A74 800A8E74 8FAB0024 */  lw         $t3, 0x24($sp)
/* A9A78 800A8E78 2D6101B0 */  sltiu      $at, $t3, 0x1b0
/* A9A7C 800A8E7C 1420FFF2 */  bnez       $at, .L800A8E48
/* A9A80 800A8E80 00000000 */   nop
.L800A8E84:
/* A9A84 800A8E84 10000001 */  b          .L800A8E8C
/* A9A88 800A8E88 00000000 */   nop
.L800A8E8C:
/* A9A8C 800A8E8C 8FBF001C */  lw         $ra, 0x1c($sp)
/* A9A90 800A8E90 8FB00018 */  lw         $s0, 0x18($sp)
/* A9A94 800A8E94 27BD0030 */  addiu      $sp, $sp, 0x30
/* A9A98 800A8E98 03E00008 */  jr         $ra
/* A9A9C 800A8E9C 00000000 */   nop
