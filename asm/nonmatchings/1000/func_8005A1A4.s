glabel func_8005A1A4
/* 5ADA4 8005A1A4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5ADA8 8005A1A8 AFA40028 */  sw         $a0, 0x28($sp)
/* 5ADAC 8005A1AC AFBF0014 */  sw         $ra, 0x14($sp)
/* 5ADB0 8005A1B0 97A4002A */  lhu        $a0, 0x2a($sp)
/* 5ADB4 8005A1B4 AFA5002C */  sw         $a1, 0x2c($sp)
/* 5ADB8 8005A1B8 0C0164A8 */  jal        func_800592A0
/* 5ADBC 8005A1BC AFA60030 */   sw        $a2, 0x30($sp)
/* 5ADC0 8005A1C0 14400003 */  bnez       $v0, .L8005A1D0
/* 5ADC4 8005A1C4 3046FFFF */   andi      $a2, $v0, 0xffff
/* 5ADC8 8005A1C8 10000051 */  b          .L8005A310
/* 5ADCC 8005A1CC 00C01025 */   or        $v0, $a2, $zero
.L8005A1D0:
/* 5ADD0 8005A1D0 00067080 */  sll        $t6, $a2, 2
/* 5ADD4 8005A1D4 01C67023 */  subu       $t6, $t6, $a2
/* 5ADD8 8005A1D8 000E7080 */  sll        $t6, $t6, 2
/* 5ADDC 8005A1DC 01C67021 */  addu       $t6, $t6, $a2
/* 5ADE0 8005A1E0 000E7080 */  sll        $t6, $t6, 2
/* 5ADE4 8005A1E4 01C67023 */  subu       $t6, $t6, $a2
/* 5ADE8 8005A1E8 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 5ADEC 8005A1EC 3C01800F */  lui        $at, %hi(D_800EBEC8)
/* 5ADF0 8005A1F0 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 5ADF4 8005A1F4 000E70C0 */  sll        $t6, $t6, 3
/* 5ADF8 8005A1F8 C42CBEC8 */  lwc1       $f12, %lo(D_800EBEC8)($at)
/* 5ADFC 8005A1FC 01CF1821 */  addu       $v1, $t6, $t7
/* 5AE00 8005A200 94780094 */  lhu        $t8, 0x94($v1)
/* 5AE04 8005A204 3C0141A0 */  lui        $at, 0x41a0
/* 5AE08 8005A208 44812000 */  mtc1       $at, $f4
/* 5AE0C 8005A20C 2408016A */  addiu      $t0, $zero, 0x16a
/* 5AE10 8005A210 2409FFF6 */  addiu      $t1, $zero, -0xa
/* 5AE14 8005A214 37190209 */  ori        $t9, $t8, 0x209
/* 5AE18 8005A218 A4790094 */  sh         $t9, 0x94($v1)
/* 5AE1C 8005A21C A4680084 */  sh         $t0, 0x84($v1)
/* 5AE20 8005A220 AC690154 */  sw         $t1, 0x154($v1)
/* 5AE24 8005A224 3C01800F */  lui        $at, %hi(D_800EBED4)
/* 5AE28 8005A228 E4640148 */  swc1       $f4, 0x148($v1)
/* 5AE2C 8005A22C C7A60030 */  lwc1       $f6, 0x30($sp)
/* 5AE30 8005A230 C428BED4 */  lwc1       $f8, %lo(D_800EBED4)($at)
/* 5AE34 8005A234 C429BED0 */  lwc1       $f9, -0x4130($at)
/* 5AE38 8005A238 46003021 */  cvt.d.s    $f0, $f6
/* 5AE3C 8005A23C 46280282 */  mul.d      $f10, $f0, $f8
/* 5AE40 8005A240 3C0A8022 */  lui        $t2, 0x8022
/* 5AE44 8005A244 354AD568 */  ori        $t2, $t2, 0xd568
/* 5AE48 8005A248 97A4002A */  lhu        $a0, 0x2a($sp)
/* 5AE4C 8005A24C 8FA5002C */  lw         $a1, 0x2c($sp)
/* 5AE50 8005A250 462050A0 */  cvt.s.d    $f2, $f10
/* 5AE54 8005A254 AC6A018C */  sw         $t2, 0x18c($v1)
/* 5AE58 8005A258 E46200B8 */  swc1       $f2, 0xb8($v1)
/* 5AE5C 8005A25C E46200B4 */  swc1       $f2, 0xb4($v1)
/* 5AE60 8005A260 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 5AE64 8005A264 E7A10018 */  swc1       $f1, 0x18($sp)
/* 5AE68 8005A268 E46C0110 */  swc1       $f12, 0x110($v1)
/* 5AE6C 8005A26C 0C0164A8 */  jal        func_800592A0
/* 5AE70 8005A270 E46C0114 */   swc1      $f12, 0x114($v1)
/* 5AE74 8005A274 3C01800F */  lui        $at, %hi(D_800EBED8)
/* 5AE78 8005A278 C42CBED8 */  lwc1       $f12, %lo(D_800EBED8)($at)
/* 5AE7C 8005A27C C7A10018 */  lwc1       $f1, 0x18($sp)
/* 5AE80 8005A280 C7A0001C */  lwc1       $f0, 0x1c($sp)
/* 5AE84 8005A284 14400003 */  bnez       $v0, .L8005A294
/* 5AE88 8005A288 3046FFFF */   andi      $a2, $v0, 0xffff
/* 5AE8C 8005A28C 10000020 */  b          .L8005A310
/* 5AE90 8005A290 00C01025 */   or        $v0, $a2, $zero
.L8005A294:
/* 5AE94 8005A294 00065880 */  sll        $t3, $a2, 2
/* 5AE98 8005A298 01665823 */  subu       $t3, $t3, $a2
/* 5AE9C 8005A29C 000B5880 */  sll        $t3, $t3, 2
/* 5AEA0 8005A2A0 01665821 */  addu       $t3, $t3, $a2
/* 5AEA4 8005A2A4 000B5880 */  sll        $t3, $t3, 2
/* 5AEA8 8005A2A8 01665823 */  subu       $t3, $t3, $a2
/* 5AEAC 8005A2AC 3C0C800F */  lui        $t4, %hi(D_800EF510)
/* 5AEB0 8005A2B0 258CF510 */  addiu      $t4, $t4, %lo(D_800EF510)
/* 5AEB4 8005A2B4 000B58C0 */  sll        $t3, $t3, 3
/* 5AEB8 8005A2B8 016C1821 */  addu       $v1, $t3, $t4
/* 5AEBC 8005A2BC 946D0094 */  lhu        $t5, 0x94($v1)
/* 5AEC0 8005A2C0 462000A0 */  cvt.s.d    $f2, $f0
/* 5AEC4 8005A2C4 3C0141A0 */  lui        $at, 0x41a0
/* 5AEC8 8005A2C8 44818000 */  mtc1       $at, $f16
/* 5AECC 8005A2CC 3C088022 */  lui        $t0, 0x8022
/* 5AED0 8005A2D0 240F01D6 */  addiu      $t7, $zero, 0x1d6
/* 5AED4 8005A2D4 2418FFF6 */  addiu      $t8, $zero, -0xa
/* 5AED8 8005A2D8 3C190010 */  lui        $t9, 0x10
/* 5AEDC 8005A2DC 3508D4E8 */  ori        $t0, $t0, 0xd4e8
/* 5AEE0 8005A2E0 35AE0209 */  ori        $t6, $t5, 0x209
/* 5AEE4 8005A2E4 A46E0094 */  sh         $t6, 0x94($v1)
/* 5AEE8 8005A2E8 A46F0084 */  sh         $t7, 0x84($v1)
/* 5AEEC 8005A2EC AC780154 */  sw         $t8, 0x154($v1)
/* 5AEF0 8005A2F0 AC790150 */  sw         $t9, 0x150($v1)
/* 5AEF4 8005A2F4 E46200B8 */  swc1       $f2, 0xb8($v1)
/* 5AEF8 8005A2F8 E46200B4 */  swc1       $f2, 0xb4($v1)
/* 5AEFC 8005A2FC E46C0114 */  swc1       $f12, 0x114($v1)
/* 5AF00 8005A300 E46C0110 */  swc1       $f12, 0x110($v1)
/* 5AF04 8005A304 AC68018C */  sw         $t0, 0x18c($v1)
/* 5AF08 8005A308 00C01025 */  or         $v0, $a2, $zero
/* 5AF0C 8005A30C E4700148 */  swc1       $f16, 0x148($v1)
.L8005A310:
/* 5AF10 8005A310 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5AF14 8005A314 27BD0028 */  addiu      $sp, $sp, 0x28
/* 5AF18 8005A318 03E00008 */  jr         $ra
/* 5AF1C 8005A31C 00000000 */   nop
