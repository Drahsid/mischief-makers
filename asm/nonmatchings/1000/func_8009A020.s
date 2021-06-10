glabel func_8009A020
/* 9AC20 8009A020 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9AC24 8009A024 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9AC28 8009A028 AFA40030 */  sw         $a0, 0x30($sp)
/* 9AC2C 8009A02C AFA50034 */  sw         $a1, 0x34($sp)
/* 9AC30 8009A030 AFA60038 */  sw         $a2, 0x38($sp)
/* 9AC34 8009A034 AFB00018 */  sw         $s0, 0x18($sp)
/* 9AC38 8009A038 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9AC3C 8009A03C AFAE0028 */  sw         $t6, 0x28($sp)
/* 9AC40 8009A040 8FB80030 */  lw         $t8, 0x30($sp)
/* 9AC44 8009A044 240F0002 */  addiu      $t7, $zero, 2
/* 9AC48 8009A048 A30F0008 */  sb         $t7, 8($t8)
/* 9AC4C 8009A04C 8FB90038 */  lw         $t9, 0x38($sp)
/* 9AC50 8009A050 8FA80030 */  lw         $t0, 0x30($sp)
/* 9AC54 8009A054 A1190005 */  sb         $t9, 5($t0)
/* 9AC58 8009A058 AFA0002C */  sw         $zero, 0x2c($sp)
/* 9AC5C 8009A05C 8FA9002C */  lw         $t1, 0x2c($sp)
/* 9AC60 8009A060 8FAA0034 */  lw         $t2, 0x34($sp)
/* 9AC64 8009A064 012A082B */  sltu       $at, $t1, $t2
/* 9AC68 8009A068 10200011 */  beqz       $at, .L8009A0B0
/* 9AC6C 8009A06C 00000000 */   nop
.L8009A070:
/* 9AC70 8009A070 8FAC002C */  lw         $t4, 0x2c($sp)
/* 9AC74 8009A074 8FAB0028 */  lw         $t3, 0x28($sp)
/* 9AC78 8009A078 8FAD0034 */  lw         $t5, 0x34($sp)
/* 9AC7C 8009A07C 24060008 */  addiu      $a2, $zero, 8
/* 9AC80 8009A080 016C2021 */  addu       $a0, $t3, $t4
/* 9AC84 8009A084 0C02A254 */  jal        func_800A8950
/* 9AC88 8009A088 01AC2823 */   subu      $a1, $t5, $t4
/* 9AC8C 8009A08C 8FAE002C */  lw         $t6, 0x2c($sp)
/* 9AC90 8009A090 00408025 */  or         $s0, $v0, $zero
/* 9AC94 8009A094 01D07821 */  addu       $t7, $t6, $s0
/* 9AC98 8009A098 AFAF002C */  sw         $t7, 0x2c($sp)
/* 9AC9C 8009A09C 8FB8002C */  lw         $t8, 0x2c($sp)
/* 9ACA0 8009A0A0 8FB90034 */  lw         $t9, 0x34($sp)
/* 9ACA4 8009A0A4 0319082B */  sltu       $at, $t8, $t9
/* 9ACA8 8009A0A8 1420FFF1 */  bnez       $at, .L8009A070
/* 9ACAC 8009A0AC 00000000 */   nop
.L8009A0B0:
/* 9ACB0 8009A0B0 10000001 */  b          .L8009A0B8
/* 9ACB4 8009A0B4 00000000 */   nop
.L8009A0B8:
/* 9ACB8 8009A0B8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9ACBC 8009A0BC 8FB00018 */  lw         $s0, 0x18($sp)
/* 9ACC0 8009A0C0 27BD0030 */  addiu      $sp, $sp, 0x30
/* 9ACC4 8009A0C4 03E00008 */  jr         $ra
/* 9ACC8 8009A0C8 00000000 */   nop
