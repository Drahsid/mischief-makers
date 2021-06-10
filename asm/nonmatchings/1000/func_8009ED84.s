glabel func_8009ED84
/* 9F984 8009ED84 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9F988 8009ED88 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9F98C 8009ED8C AFA40020 */  sw         $a0, 0x20($sp)
/* 9F990 8009ED90 AFA50024 */  sw         $a1, 0x24($sp)
/* 9F994 8009ED94 3C0E7FFF */  lui        $t6, 0x7fff
/* 9F998 8009ED98 35CEFFFF */  ori        $t6, $t6, 0xffff
/* 9F99C 8009ED9C AFAE001C */  sw         $t6, 0x1c($sp)
/* 9F9A0 8009EDA0 8FAF0020 */  lw         $t7, 0x20($sp)
/* 9F9A4 8009EDA4 8DF80000 */  lw         $t8, ($t7)
/* 9F9A8 8009EDA8 13000003 */  beqz       $t8, .L8009EDB8
/* 9F9AC 8009EDAC 00000000 */   nop
/* 9F9B0 8009EDB0 10000007 */  b          .L8009EDD0
/* 9F9B4 8009EDB4 00000000 */   nop
.L8009EDB8:
/* 9F9B8 8009EDB8 3C04800F */  lui        $a0, %hi(D_800ED9D8)
/* 9F9BC 8009EDBC 3C05800F */  lui        $a1, %hi(D_800ED9E4)
/* 9F9C0 8009EDC0 24A5D9E4 */  addiu      $a1, $a1, %lo(D_800ED9E4)
/* 9F9C4 8009EDC4 2484D9D8 */  addiu      $a0, $a0, %lo(D_800ED9D8)
/* 9F9C8 8009EDC8 0C026E74 */  jal        func_8009B9D0
/* 9F9CC 8009EDCC 24060133 */   addiu     $a2, $zero, 0x133
.L8009EDD0:
/* 9F9D0 8009EDD0 8FB90024 */  lw         $t9, 0x24($sp)
/* 9F9D4 8009EDD4 AF200000 */  sw         $zero, ($t9)
/* 9F9D8 8009EDD8 8FA80020 */  lw         $t0, 0x20($sp)
/* 9F9DC 8009EDDC 8D090000 */  lw         $t1, ($t0)
/* 9F9E0 8009EDE0 11200017 */  beqz       $t1, .L8009EE40
/* 9F9E4 8009EDE4 AFA90018 */   sw        $t1, 0x18($sp)
.L8009EDE8:
/* 9F9E8 8009EDE8 8FAA0018 */  lw         $t2, 0x18($sp)
/* 9F9EC 8009EDEC 8FAC0020 */  lw         $t4, 0x20($sp)
/* 9F9F0 8009EDF0 8FAF001C */  lw         $t7, 0x1c($sp)
/* 9F9F4 8009EDF4 8D4B0010 */  lw         $t3, 0x10($t2)
/* 9F9F8 8009EDF8 8D8D0020 */  lw         $t5, 0x20($t4)
/* 9F9FC 8009EDFC 016D7023 */  subu       $t6, $t3, $t5
/* 9FA00 8009EE00 01CF082A */  slt        $at, $t6, $t7
/* 9FA04 8009EE04 1020000A */  beqz       $at, .L8009EE30
/* 9FA08 8009EE08 00000000 */   nop
/* 9FA0C 8009EE0C 8FB80018 */  lw         $t8, 0x18($sp)
/* 9FA10 8009EE10 8FB90024 */  lw         $t9, 0x24($sp)
/* 9FA14 8009EE14 AF380000 */  sw         $t8, ($t9)
/* 9FA18 8009EE18 8FA80018 */  lw         $t0, 0x18($sp)
/* 9FA1C 8009EE1C 8FAA0020 */  lw         $t2, 0x20($sp)
/* 9FA20 8009EE20 8D090010 */  lw         $t1, 0x10($t0)
/* 9FA24 8009EE24 8D4C0020 */  lw         $t4, 0x20($t2)
/* 9FA28 8009EE28 012C5823 */  subu       $t3, $t1, $t4
/* 9FA2C 8009EE2C AFAB001C */  sw         $t3, 0x1c($sp)
.L8009EE30:
/* 9FA30 8009EE30 8FAD0018 */  lw         $t5, 0x18($sp)
/* 9FA34 8009EE34 8DAE0000 */  lw         $t6, ($t5)
/* 9FA38 8009EE38 15C0FFEB */  bnez       $t6, .L8009EDE8
/* 9FA3C 8009EE3C AFAE0018 */   sw        $t6, 0x18($sp)
.L8009EE40:
/* 9FA40 8009EE40 8FAF0024 */  lw         $t7, 0x24($sp)
/* 9FA44 8009EE44 8DF80000 */  lw         $t8, ($t7)
/* 9FA48 8009EE48 10000003 */  b          .L8009EE58
/* 9FA4C 8009EE4C 8F020010 */   lw        $v0, 0x10($t8)
/* 9FA50 8009EE50 10000001 */  b          .L8009EE58
/* 9FA54 8009EE54 00000000 */   nop
.L8009EE58:
/* 9FA58 8009EE58 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9FA5C 8009EE5C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 9FA60 8009EE60 03E00008 */  jr         $ra
/* 9FA64 8009EE64 00000000 */   nop
/* 9FA68 8009EE68 00000000 */  nop
/* 9FA6C 8009EE6C 00000000 */  nop
