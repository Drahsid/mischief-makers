glabel func_800A8F04
/* A9B04 800A8F04 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A9B08 800A8F08 AFBF001C */  sw         $ra, 0x1c($sp)
/* A9B0C 800A8F0C AFA40030 */  sw         $a0, 0x30($sp)
/* A9B10 800A8F10 AFB00018 */  sw         $s0, 0x18($sp)
/* A9B14 800A8F14 AFA0002C */  sw         $zero, 0x2c($sp)
/* A9B18 800A8F18 27AE0030 */  addiu      $t6, $sp, 0x30
/* A9B1C 800A8F1C AFAE0028 */  sw         $t6, 0x28($sp)
/* A9B20 800A8F20 8FAF002C */  lw         $t7, 0x2c($sp)
/* A9B24 800A8F24 29E10004 */  slti       $at, $t7, 4
/* A9B28 800A8F28 10200010 */  beqz       $at, .L800A8F6C
/* A9B2C 800A8F2C 00000000 */   nop
.L800A8F30:
/* A9B30 800A8F30 8FB9002C */  lw         $t9, 0x2c($sp)
/* A9B34 800A8F34 8FB80028 */  lw         $t8, 0x28($sp)
/* A9B38 800A8F38 24080004 */  addiu      $t0, $zero, 4
/* A9B3C 800A8F3C 24060008 */  addiu      $a2, $zero, 8
/* A9B40 800A8F40 01192823 */  subu       $a1, $t0, $t9
/* A9B44 800A8F44 0C02A254 */  jal        func_800A8950
/* A9B48 800A8F48 03192021 */   addu      $a0, $t8, $t9
/* A9B4C 800A8F4C 8FA9002C */  lw         $t1, 0x2c($sp)
/* A9B50 800A8F50 00408025 */  or         $s0, $v0, $zero
/* A9B54 800A8F54 01305021 */  addu       $t2, $t1, $s0
/* A9B58 800A8F58 AFAA002C */  sw         $t2, 0x2c($sp)
/* A9B5C 800A8F5C 8FAB002C */  lw         $t3, 0x2c($sp)
/* A9B60 800A8F60 29610004 */  slti       $at, $t3, 4
/* A9B64 800A8F64 1420FFF2 */  bnez       $at, .L800A8F30
/* A9B68 800A8F68 00000000 */   nop
.L800A8F6C:
/* A9B6C 800A8F6C 10000001 */  b          .L800A8F74
/* A9B70 800A8F70 00000000 */   nop
.L800A8F74:
/* A9B74 800A8F74 8FBF001C */  lw         $ra, 0x1c($sp)
/* A9B78 800A8F78 8FB00018 */  lw         $s0, 0x18($sp)
/* A9B7C 800A8F7C 27BD0030 */  addiu      $sp, $sp, 0x30
/* A9B80 800A8F80 03E00008 */  jr         $ra
/* A9B84 800A8F84 00000000 */   nop
