glabel func_8007A190
/* 7AD90 8007A190 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 7AD94 8007A194 AFA40030 */  sw         $a0, 0x30($sp)
/* 7AD98 8007A198 97AE0032 */  lhu        $t6, 0x32($sp)
/* 7AD9C 8007A19C 3C18800F */  lui        $t8, 0x800f
/* 7ADA0 8007A1A0 000E7880 */  sll        $t7, $t6, 2
/* 7ADA4 8007A1A4 01EE7823 */  subu       $t7, $t7, $t6
/* 7ADA8 8007A1A8 000F7880 */  sll        $t7, $t7, 2
/* 7ADAC 8007A1AC 01EE7821 */  addu       $t7, $t7, $t6
/* 7ADB0 8007A1B0 000F7880 */  sll        $t7, $t7, 2
/* 7ADB4 8007A1B4 01EE7823 */  subu       $t7, $t7, $t6
/* 7ADB8 8007A1B8 AFB00014 */  sw         $s0, 0x14($sp)
/* 7ADBC 8007A1BC 000F78C0 */  sll        $t7, $t7, 3
/* 7ADC0 8007A1C0 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 7ADC4 8007A1C4 01F88021 */  addu       $s0, $t7, $t8
/* 7ADC8 8007A1C8 3C013F80 */  lui        $at, 0x3f80
/* 7ADCC 8007A1CC 44813000 */  mtc1       $at, $f6
/* 7ADD0 8007A1D0 C6040128 */  lwc1       $f4, 0x128($s0)
/* 7ADD4 8007A1D4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 7ADD8 8007A1D8 46062201 */  sub.s      $f8, $f4, $f6
/* 7ADDC 8007A1DC AFB10018 */  sw         $s1, 0x18($sp)
/* 7ADE0 8007A1E0 E6080128 */  swc1       $f8, 0x128($s0)
/* 7ADE4 8007A1E4 24040070 */  addiu      $a0, $zero, 0x70
/* 7ADE8 8007A1E8 0C00A12E */  jal        func_800284B8
/* 7ADEC 8007A1EC 2405007A */   addiu     $a1, $zero, 0x7a
/* 7ADF0 8007A1F0 10400070 */  beqz       $v0, .L8007A3B4
/* 7ADF4 8007A1F4 3051FFFF */   andi      $s1, $v0, 0xffff
/* 7ADF8 8007A1F8 0011C880 */  sll        $t9, $s1, 2
/* 7ADFC 8007A1FC 0331C823 */  subu       $t9, $t9, $s1
/* 7AE00 8007A200 0019C880 */  sll        $t9, $t9, 2
/* 7AE04 8007A204 0331C821 */  addu       $t9, $t9, $s1
/* 7AE08 8007A208 0019C880 */  sll        $t9, $t9, 2
/* 7AE0C 8007A20C 0331C823 */  subu       $t9, $t9, $s1
/* 7AE10 8007A210 3C08800F */  lui        $t0, %hi(gActors)
/* 7AE14 8007A214 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 7AE18 8007A218 0019C8C0 */  sll        $t9, $t9, 3
/* 7AE1C 8007A21C 03281821 */  addu       $v1, $t9, $t0
/* 7AE20 8007A220 A46000D2 */  sh         $zero, 0xd2($v1)
/* 7AE24 8007A224 AFA30024 */  sw         $v1, 0x24($sp)
/* 7AE28 8007A228 0C0078B4 */  jal        func_8001E2D0
/* 7AE2C 8007A22C 3224FFFF */   andi      $a0, $s1, 0xffff
/* 7AE30 8007A230 8FA30024 */  lw         $v1, 0x24($sp)
/* 7AE34 8007A234 86090088 */  lh         $t1, 0x88($s0)
/* 7AE38 8007A238 97A40032 */  lhu        $a0, 0x32($sp)
/* 7AE3C 8007A23C A4690088 */  sh         $t1, 0x88($v1)
/* 7AE40 8007A240 860A008C */  lh         $t2, 0x8c($s0)
/* 7AE44 8007A244 3225FFFF */  andi       $a1, $s1, 0xffff
/* 7AE48 8007A248 A46A008C */  sh         $t2, 0x8c($v1)
/* 7AE4C 8007A24C 860B0090 */  lh         $t3, 0x90($s0)
/* 7AE50 8007A250 00000000 */  nop
/* 7AE54 8007A254 256CFFFF */  addiu      $t4, $t3, -1
/* 7AE58 8007A258 A46C0090 */  sh         $t4, 0x90($v1)
/* 7AE5C 8007A25C 8E190154 */  lw         $t9, 0x154($s0)
/* 7AE60 8007A260 00000000 */  nop
/* 7AE64 8007A264 0320F809 */  jalr       $t9
/* 7AE68 8007A268 00000000 */   nop
/* 7AE6C 8007A26C 44915000 */  mtc1       $s1, $f10
/* 7AE70 8007A270 8FA30024 */  lw         $v1, 0x24($sp)
/* 7AE74 8007A274 06210005 */  bgez       $s1, .L8007A28C
/* 7AE78 8007A278 46805420 */   cvt.s.w   $f16, $f10
/* 7AE7C 8007A27C 3C014F80 */  lui        $at, 0x4f80
/* 7AE80 8007A280 44819000 */  mtc1       $at, $f18
/* 7AE84 8007A284 00000000 */  nop
/* 7AE88 8007A288 46128400 */  add.s      $f16, $f16, $f18
.L8007A28C:
/* 7AE8C 8007A28C E6100118 */  swc1       $f16, 0x118($s0)
/* 7AE90 8007A290 946D00D2 */  lhu        $t5, 0xd2($v1)
/* 7AE94 8007A294 240F0200 */  addiu      $t7, $zero, 0x200
/* 7AE98 8007A298 448D2000 */  mtc1       $t5, $f4
/* 7AE9C 8007A29C 05A10005 */  bgez       $t5, .L8007A2B4
/* 7AEA0 8007A2A0 468021A0 */   cvt.s.w   $f6, $f4
/* 7AEA4 8007A2A4 3C014F80 */  lui        $at, 0x4f80
/* 7AEA8 8007A2A8 44814000 */  mtc1       $at, $f8
/* 7AEAC 8007A2AC 00000000 */  nop
/* 7AEB0 8007A2B0 46083180 */  add.s      $f6, $f6, $f8
.L8007A2B4:
/* 7AEB4 8007A2B4 E606011C */  swc1       $f6, 0x11c($s0)
/* 7AEB8 8007A2B8 8C7800EC */  lw         $t8, 0xec($v1)
/* 7AEBC 8007A2BC 97AE0032 */  lhu        $t6, 0x32($sp)
/* 7AEC0 8007A2C0 44985000 */  mtc1       $t8, $f10
/* 7AEC4 8007A2C4 AC6F0098 */  sw         $t7, 0x98($v1)
/* 7AEC8 8007A2C8 468054A0 */  cvt.s.w    $f18, $f10
/* 7AECC 8007A2CC A46E00D6 */  sh         $t6, 0xd6($v1)
/* 7AED0 8007A2D0 C60000B4 */  lwc1       $f0, 0xb4($s0)
/* 7AED4 8007A2D4 8E1900EC */  lw         $t9, 0xec($s0)
/* 7AED8 8007A2D8 46120402 */  mul.s      $f16, $f0, $f18
/* 7AEDC 8007A2DC 8E0E00F0 */  lw         $t6, 0xf0($s0)
/* 7AEE0 8007A2E0 8E040080 */  lw         $a0, 0x80($s0)
/* 7AEE4 8007A2E4 3225FFFF */  andi       $a1, $s1, 0xffff
/* 7AEE8 8007A2E8 4448F800 */  cfc1       $t0, $31
/* 7AEEC 8007A2EC 30820020 */  andi       $v0, $a0, 0x20
/* 7AEF0 8007A2F0 35010003 */  ori        $at, $t0, 3
/* 7AEF4 8007A2F4 38210002 */  xori       $at, $at, 2
/* 7AEF8 8007A2F8 44C1F800 */  ctc1       $at, $31
/* 7AEFC 8007A2FC 00000000 */  nop
/* 7AF00 8007A300 46008124 */  cvt.w.s    $f4, $f16
/* 7AF04 8007A304 44092000 */  mfc1       $t1, $f4
/* 7AF08 8007A308 44C8F800 */  ctc1       $t0, $31
/* 7AF0C 8007A30C AE090154 */  sw         $t1, 0x154($s0)
/* 7AF10 8007A310 8C6A00F0 */  lw         $t2, 0xf0($v1)
/* 7AF14 8007A314 00000000 */  nop
/* 7AF18 8007A318 448A4000 */  mtc1       $t2, $f8
/* 7AF1C 8007A31C 240A3036 */  addiu      $t2, $zero, 0x3036
/* 7AF20 8007A320 468041A0 */  cvt.s.w    $f6, $f8
/* 7AF24 8007A324 46060282 */  mul.s      $f10, $f0, $f6
/* 7AF28 8007A328 444BF800 */  cfc1       $t3, $31
/* 7AF2C 8007A32C 00000000 */  nop
/* 7AF30 8007A330 35610003 */  ori        $at, $t3, 3
/* 7AF34 8007A334 38210002 */  xori       $at, $at, 2
/* 7AF38 8007A338 44C1F800 */  ctc1       $at, $31
/* 7AF3C 8007A33C 00000000 */  nop
/* 7AF40 8007A340 460054A4 */  cvt.w.s    $f18, $f10
/* 7AF44 8007A344 440C9000 */  mfc1       $t4, $f18
/* 7AF48 8007A348 44CBF800 */  ctc1       $t3, $31
/* 7AF4C 8007A34C AE0C0158 */  sw         $t4, 0x158($s0)
/* 7AF50 8007A350 07210003 */  bgez       $t9, .L8007A360
/* 7AF54 8007A354 00196843 */   sra       $t5, $t9, 1
/* 7AF58 8007A358 27210001 */  addiu      $at, $t9, 1
/* 7AF5C 8007A35C 00016843 */  sra        $t5, $at, 1
.L8007A360:
/* 7AF60 8007A360 AE0D00EC */  sw         $t5, 0xec($s0)
/* 7AF64 8007A364 05C10003 */  bgez       $t6, .L8007A374
/* 7AF68 8007A368 000E7843 */   sra       $t7, $t6, 1
/* 7AF6C 8007A36C 25C10001 */  addiu      $at, $t6, 1
/* 7AF70 8007A370 00017843 */  sra        $t7, $at, 1
.L8007A374:
/* 7AF74 8007A374 10400005 */  beqz       $v0, .L8007A38C
/* 7AF78 8007A378 AE0F00F0 */   sw        $t7, 0xf0($s0)
/* 7AF7C 8007A37C 8E180154 */  lw         $t8, 0x154($s0)
/* 7AF80 8007A380 00000000 */  nop
/* 7AF84 8007A384 1F000007 */  bgtz       $t8, .L8007A3A4
/* 7AF88 8007A388 38890020 */   xori      $t1, $a0, 0x20
.L8007A38C:
/* 7AF8C 8007A38C 14400006 */  bnez       $v0, .L8007A3A8
/* 7AF90 8007A390 00000000 */   nop
/* 7AF94 8007A394 8E080154 */  lw         $t0, 0x154($s0)
/* 7AF98 8007A398 00000000 */  nop
/* 7AF9C 8007A39C 05010002 */  bgez       $t0, .L8007A3A8
/* 7AFA0 8007A3A0 38890020 */   xori      $t1, $a0, 0x20
.L8007A3A4:
/* 7AFA4 8007A3A4 AE090080 */  sw         $t1, 0x80($s0)
.L8007A3A8:
/* 7AFA8 8007A3A8 97A40032 */  lhu        $a0, 0x32($sp)
/* 7AFAC 8007A3AC 0C01E7D4 */  jal        func_80079F50
/* 7AFB0 8007A3B0 A60A0084 */   sh        $t2, 0x84($s0)
.L8007A3B4:
/* 7AFB4 8007A3B4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 7AFB8 8007A3B8 02201025 */  or         $v0, $s1, $zero
/* 7AFBC 8007A3BC 8FB10018 */  lw         $s1, 0x18($sp)
/* 7AFC0 8007A3C0 8FB00014 */  lw         $s0, 0x14($sp)
/* 7AFC4 8007A3C4 03E00008 */  jr         $ra
/* 7AFC8 8007A3C8 27BD0030 */   addiu     $sp, $sp, 0x30
