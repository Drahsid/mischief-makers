glabel func_8009A17C
/* 9AD7C 8009A17C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 9AD80 8009A180 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9AD84 8009A184 AFA40038 */  sw         $a0, 0x38($sp)
/* 9AD88 8009A188 AFA5003C */  sw         $a1, 0x3c($sp)
/* 9AD8C 8009A18C AFB00018 */  sw         $s0, 0x18($sp)
/* 9AD90 8009A190 8FAE0038 */  lw         $t6, 0x38($sp)
/* 9AD94 8009A194 AFAE0034 */  sw         $t6, 0x34($sp)
/* 9AD98 8009A198 8FAF003C */  lw         $t7, 0x3c($sp)
/* 9AD9C 8009A19C 25F80003 */  addiu      $t8, $t7, 3
/* 9ADA0 8009A1A0 0018C882 */  srl        $t9, $t8, 2
/* 9ADA4 8009A1A4 AFB90030 */  sw         $t9, 0x30($sp)
/* 9ADA8 8009A1A8 8FA80038 */  lw         $t0, 0x38($sp)
/* 9ADAC 8009A1AC 31090003 */  andi       $t1, $t0, 3
/* 9ADB0 8009A1B0 15200025 */  bnez       $t1, .L8009A248
/* 9ADB4 8009A1B4 00000000 */   nop
/* 9ADB8 8009A1B8 8FAA0030 */  lw         $t2, 0x30($sp)
/* 9ADBC 8009A1BC 01408025 */  or         $s0, $t2, $zero
/* 9ADC0 8009A1C0 254BFFFF */  addiu      $t3, $t2, -1
/* 9ADC4 8009A1C4 1200001E */  beqz       $s0, .L8009A240
/* 9ADC8 8009A1C8 AFAB0030 */   sw        $t3, 0x30($sp)
.L8009A1CC:
/* 9ADCC 8009A1CC 8FAC0034 */  lw         $t4, 0x34($sp)
/* 9ADD0 8009A1D0 3C010400 */  lui        $at, 0x400
/* 9ADD4 8009A1D4 0181082B */  sltu       $at, $t4, $at
/* 9ADD8 8009A1D8 1420000F */  bnez       $at, .L8009A218
/* 9ADDC 8009A1DC 00000000 */   nop
/* 9ADE0 8009A1E0 3C010500 */  lui        $at, 0x500
/* 9ADE4 8009A1E4 0181082B */  sltu       $at, $t4, $at
/* 9ADE8 8009A1E8 1020000B */  beqz       $at, .L8009A218
/* 9ADEC 8009A1EC 00000000 */   nop
/* 9ADF0 8009A1F0 8FAD0034 */  lw         $t5, 0x34($sp)
/* 9ADF4 8009A1F4 27A5002C */  addiu      $a1, $sp, 0x2c
/* 9ADF8 8009A1F8 25AE0004 */  addiu      $t6, $t5, 4
/* 9ADFC 8009A1FC AFAE0034 */  sw         $t6, 0x34($sp)
/* 9AE00 8009A200 0C02A418 */  jal        func_800A9060
/* 9AE04 8009A204 01A02025 */   or        $a0, $t5, $zero
/* 9AE08 8009A208 0C02A3C1 */  jal        func_800A8F04
/* 9AE0C 8009A20C 8FA4002C */   lw        $a0, 0x2c($sp)
/* 9AE10 8009A210 10000006 */  b          .L8009A22C
/* 9AE14 8009A214 00000000 */   nop
.L8009A218:
/* 9AE18 8009A218 8FAF0034 */  lw         $t7, 0x34($sp)
/* 9AE1C 8009A21C 8DE40000 */  lw         $a0, ($t7)
/* 9AE20 8009A220 25F80004 */  addiu      $t8, $t7, 4
/* 9AE24 8009A224 0C02A3C1 */  jal        func_800A8F04
/* 9AE28 8009A228 AFB80034 */   sw        $t8, 0x34($sp)
.L8009A22C:
/* 9AE2C 8009A22C 8FB90030 */  lw         $t9, 0x30($sp)
/* 9AE30 8009A230 03208025 */  or         $s0, $t9, $zero
/* 9AE34 8009A234 2728FFFF */  addiu      $t0, $t9, -1
/* 9AE38 8009A238 1600FFE4 */  bnez       $s0, .L8009A1CC
/* 9AE3C 8009A23C AFA80030 */   sw        $t0, 0x30($sp)
.L8009A240:
/* 9AE40 8009A240 10000014 */  b          .L8009A294
/* 9AE44 8009A244 00000000 */   nop
.L8009A248:
/* 9AE48 8009A248 8FA90030 */  lw         $t1, 0x30($sp)
/* 9AE4C 8009A24C 01208025 */  or         $s0, $t1, $zero
/* 9AE50 8009A250 252AFFFF */  addiu      $t2, $t1, -1
/* 9AE54 8009A254 1200000F */  beqz       $s0, .L8009A294
/* 9AE58 8009A258 AFAA0030 */   sw        $t2, 0x30($sp)
.L8009A25C:
/* 9AE5C 8009A25C 27A40028 */  addiu      $a0, $sp, 0x28
/* 9AE60 8009A260 8FA50034 */  lw         $a1, 0x34($sp)
/* 9AE64 8009A264 0C02A475 */  jal        func_800A91D4
/* 9AE68 8009A268 24060004 */   addiu     $a2, $zero, 4
/* 9AE6C 8009A26C 0C02A3C1 */  jal        func_800A8F04
/* 9AE70 8009A270 8FA40028 */   lw        $a0, 0x28($sp)
/* 9AE74 8009A274 8FAB0034 */  lw         $t3, 0x34($sp)
/* 9AE78 8009A278 256C0004 */  addiu      $t4, $t3, 4
/* 9AE7C 8009A27C AFAC0034 */  sw         $t4, 0x34($sp)
/* 9AE80 8009A280 8FAD0030 */  lw         $t5, 0x30($sp)
/* 9AE84 8009A284 01A08025 */  or         $s0, $t5, $zero
/* 9AE88 8009A288 25AEFFFF */  addiu      $t6, $t5, -1
/* 9AE8C 8009A28C 1600FFF3 */  bnez       $s0, .L8009A25C
/* 9AE90 8009A290 AFAE0030 */   sw        $t6, 0x30($sp)
.L8009A294:
/* 9AE94 8009A294 0C02A3A8 */  jal        func_800A8EA0
/* 9AE98 8009A298 00000000 */   nop
/* 9AE9C 8009A29C 10000001 */  b          .L8009A2A4
/* 9AEA0 8009A2A0 00000000 */   nop
.L8009A2A4:
/* 9AEA4 8009A2A4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9AEA8 8009A2A8 8FB00018 */  lw         $s0, 0x18($sp)
/* 9AEAC 8009A2AC 27BD0038 */  addiu      $sp, $sp, 0x38
/* 9AEB0 8009A2B0 03E00008 */  jr         $ra
/* 9AEB4 8009A2B4 00000000 */   nop
