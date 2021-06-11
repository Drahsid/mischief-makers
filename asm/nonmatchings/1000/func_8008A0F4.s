glabel func_8008A0F4
/* 8ACF4 8008A0F4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 8ACF8 8008A0F8 AFA40030 */  sw         $a0, 0x30($sp)
/* 8ACFC 8008A0FC AFBF001C */  sw         $ra, 0x1c($sp)
/* 8AD00 8008A100 3C01800E */  lui        $at, %hi(D_800E3580)
/* 8AD04 8008A104 97A40032 */  lhu        $a0, 0x32($sp)
/* 8AD08 8008A108 AFB00018 */  sw         $s0, 0x18($sp)
/* 8AD0C 8008A10C A4203580 */  sh         $zero, %lo(D_800E3580)($at)
/* 8AD10 8008A110 0C00AA88 */  jal        func_8002AA20
/* 8AD14 8008A114 00002825 */   or        $a1, $zero, $zero
/* 8AD18 8008A118 97AE0032 */  lhu        $t6, 0x32($sp)
/* 8AD1C 8008A11C 3C18800F */  lui        $t8, 0x800f
/* 8AD20 8008A120 000E7880 */  sll        $t7, $t6, 2
/* 8AD24 8008A124 01EE7823 */  subu       $t7, $t7, $t6
/* 8AD28 8008A128 000F7880 */  sll        $t7, $t7, 2
/* 8AD2C 8008A12C 01EE7821 */  addu       $t7, $t7, $t6
/* 8AD30 8008A130 000F7880 */  sll        $t7, $t7, 2
/* 8AD34 8008A134 01EE7823 */  subu       $t7, $t7, $t6
/* 8AD38 8008A138 000F78C0 */  sll        $t7, $t7, 3
/* 8AD3C 8008A13C 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 8AD40 8008A140 01F88021 */  addu       $s0, $t7, $t8
/* 8AD44 8008A144 8E190174 */  lw         $t9, 0x174($s0)
/* 8AD48 8008A148 8E0A0178 */  lw         $t2, 0x178($s0)
/* 8AD4C 8008A14C 27280001 */  addiu      $t0, $t9, 1
/* 8AD50 8008A150 010A082A */  slt        $at, $t0, $t2
/* 8AD54 8008A154 14200071 */  bnez       $at, .L8008A31C
/* 8AD58 8008A158 AE080174 */   sw        $t0, 0x174($s0)
/* 8AD5C 8008A15C 240400E0 */  addiu      $a0, $zero, 0xe0
/* 8AD60 8008A160 24050080 */  addiu      $a1, $zero, 0x80
/* 8AD64 8008A164 0C00A6C0 */  jal        func_80029B00
/* 8AD68 8008A168 2406FF80 */   addiu     $a2, $zero, -0x80
/* 8AD6C 8008A16C 1040006A */  beqz       $v0, .L8008A318
/* 8AD70 8008A170 24040030 */   addiu     $a0, $zero, 0x30
/* 8AD74 8008A174 0C00A12E */  jal        func_800284B8
/* 8AD78 8008A178 24050090 */   addiu     $a1, $zero, 0x90
/* 8AD7C 8008A17C 1040005F */  beqz       $v0, .L8008A2FC
/* 8AD80 8008A180 3045FFFF */   andi      $a1, $v0, 0xffff
/* 8AD84 8008A184 00057080 */  sll        $t6, $a1, 2
/* 8AD88 8008A188 01C57023 */  subu       $t6, $t6, $a1
/* 8AD8C 8008A18C 000E7080 */  sll        $t6, $t6, 2
/* 8AD90 8008A190 01C57021 */  addu       $t6, $t6, $a1
/* 8AD94 8008A194 8E0B0150 */  lw         $t3, 0x150($s0)
/* 8AD98 8008A198 000E7080 */  sll        $t6, $t6, 2
/* 8AD9C 8008A19C 01C57023 */  subu       $t6, $t6, $a1
/* 8ADA0 8008A1A0 3C0F800F */  lui        $t7, %hi(gActors)
/* 8ADA4 8008A1A4 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 8ADA8 8008A1A8 000E70C0 */  sll        $t6, $t6, 3
/* 8ADAC 8008A1AC 316CFF00 */  andi       $t4, $t3, 0xff00
/* 8ADB0 8008A1B0 000C6903 */  sra        $t5, $t4, 4
/* 8ADB4 8008A1B4 01CF1021 */  addu       $v0, $t6, $t7
/* 8ADB8 8008A1B8 24180059 */  addiu      $t8, $zero, 0x59
/* 8ADBC 8008A1BC A7AD002C */  sh         $t5, 0x2c($sp)
/* 8ADC0 8008A1C0 A45800D2 */  sh         $t8, 0xd2($v0)
/* 8ADC4 8008A1C4 AFA20024 */  sw         $v0, 0x24($sp)
/* 8ADC8 8008A1C8 30A4FFFF */  andi       $a0, $a1, 0xffff
/* 8ADCC 8008A1CC 0C0078B4 */  jal        func_8001E2D0
/* 8ADD0 8008A1D0 A7A5002E */   sh        $a1, 0x2e($sp)
/* 8ADD4 8008A1D4 97A3002C */  lhu        $v1, 0x2c($sp)
/* 8ADD8 8008A1D8 3C04800C */  lui        $a0, %hi(D_800BCCD0)
/* 8ADDC 8008A1DC 307903FF */  andi       $t9, $v1, 0x3ff
/* 8ADE0 8008A1E0 2484CCD0 */  addiu      $a0, $a0, %lo(D_800BCCD0)
/* 8ADE4 8008A1E4 00194080 */  sll        $t0, $t9, 2
/* 8ADE8 8008A1E8 00884821 */  addu       $t1, $a0, $t0
/* 8ADEC 8008A1EC 3C014800 */  lui        $at, 0x4800
/* 8ADF0 8008A1F0 44813000 */  mtc1       $at, $f6
/* 8ADF4 8008A1F4 C5240000 */  lwc1       $f4, ($t1)
/* 8ADF8 8008A1F8 246CFF00 */  addiu      $t4, $v1, -0x100
/* 8ADFC 8008A1FC 46062202 */  mul.s      $f8, $f4, $f6
/* 8AE00 8008A200 318D03FF */  andi       $t5, $t4, 0x3ff
/* 8AE04 8008A204 000D7080 */  sll        $t6, $t5, 2
/* 8AE08 8008A208 008E7821 */  addu       $t7, $a0, $t6
/* 8AE0C 8008A20C 444AF800 */  cfc1       $t2, $31
/* 8AE10 8008A210 C5F00000 */  lwc1       $f16, ($t7)
/* 8AE14 8008A214 35410003 */  ori        $at, $t2, 3
/* 8AE18 8008A218 38210002 */  xori       $at, $at, 2
/* 8AE1C 8008A21C 44C1F800 */  ctc1       $at, $31
/* 8AE20 8008A220 3C014880 */  lui        $at, 0x4880
/* 8AE24 8008A224 460042A4 */  cvt.w.s    $f10, $f8
/* 8AE28 8008A228 44819000 */  mtc1       $at, $f18
/* 8AE2C 8008A22C 44CAF800 */  ctc1       $t2, $31
/* 8AE30 8008A230 8FA20024 */  lw         $v0, 0x24($sp)
/* 8AE34 8008A234 46128102 */  mul.s      $f4, $f16, $f18
/* 8AE38 8008A238 440B5000 */  mfc1       $t3, $f10
/* 8AE3C 8008A23C 97A5002E */  lhu        $a1, 0x2e($sp)
/* 8AE40 8008A240 AC4B00EC */  sw         $t3, 0xec($v0)
/* 8AE44 8008A244 4458F800 */  cfc1       $t8, $31
/* 8AE48 8008A248 00000000 */  nop
/* 8AE4C 8008A24C 37010003 */  ori        $at, $t8, 3
/* 8AE50 8008A250 38210002 */  xori       $at, $at, 2
/* 8AE54 8008A254 44C1F800 */  ctc1       $at, $31
/* 8AE58 8008A258 3C014F80 */  lui        $at, 0x4f80
/* 8AE5C 8008A25C 460021A4 */  cvt.w.s    $f6, $f4
/* 8AE60 8008A260 44193000 */  mfc1       $t9, $f6
/* 8AE64 8008A264 44D8F800 */  ctc1       $t8, $31
/* 8AE68 8008A268 AC5900F0 */  sw         $t9, 0xf0($v0)
/* 8AE6C 8008A26C 960800D8 */  lhu        $t0, 0xd8($s0)
/* 8AE70 8008A270 00000000 */  nop
/* 8AE74 8008A274 44884000 */  mtc1       $t0, $f8
/* 8AE78 8008A278 05010004 */  bgez       $t0, .L8008A28C
/* 8AE7C 8008A27C 468042A0 */   cvt.s.w   $f10, $f8
/* 8AE80 8008A280 44818000 */  mtc1       $at, $f16
/* 8AE84 8008A284 00000000 */  nop
/* 8AE88 8008A288 46105280 */  add.s      $f10, $f10, $f16
.L8008A28C:
/* 8AE8C 8008A28C E44A0110 */  swc1       $f10, 0x110($v0)
/* 8AE90 8008A290 960900D8 */  lhu        $t1, 0xd8($s0)
/* 8AE94 8008A294 24010001 */  addiu      $at, $zero, 1
/* 8AE98 8008A298 1521000D */  bne        $t1, $at, .L8008A2D0
/* 8AE9C 8008A29C 00000000 */   nop
/* 8AEA0 8008A2A0 860A0088 */  lh         $t2, 0x88($s0)
/* 8AEA4 8008A2A4 00000000 */  nop
/* 8AEA8 8008A2A8 A44A0088 */  sh         $t2, 0x88($v0)
/* 8AEAC 8008A2AC 860B008C */  lh         $t3, 0x8c($s0)
/* 8AEB0 8008A2B0 00000000 */  nop
/* 8AEB4 8008A2B4 256C0008 */  addiu      $t4, $t3, 8
/* 8AEB8 8008A2B8 A44C008C */  sh         $t4, 0x8c($v0)
/* 8AEBC 8008A2BC 860D0090 */  lh         $t5, 0x90($s0)
/* 8AEC0 8008A2C0 00000000 */  nop
/* 8AEC4 8008A2C4 25AEFFFF */  addiu      $t6, $t5, -1
/* 8AEC8 8008A2C8 1000000C */  b          .L8008A2FC
/* 8AECC 8008A2CC A44E0090 */   sh        $t6, 0x90($v0)
.L8008A2D0:
/* 8AED0 8008A2D0 860F0088 */  lh         $t7, 0x88($s0)
/* 8AED4 8008A2D4 00000000 */  nop
/* 8AED8 8008A2D8 A44F0088 */  sh         $t7, 0x88($v0)
/* 8AEDC 8008A2DC 8618008C */  lh         $t8, 0x8c($s0)
/* 8AEE0 8008A2E0 00000000 */  nop
/* 8AEE4 8008A2E4 27190018 */  addiu      $t9, $t8, 0x18
/* 8AEE8 8008A2E8 A459008C */  sh         $t9, 0x8c($v0)
/* 8AEEC 8008A2EC 86080090 */  lh         $t0, 0x90($s0)
/* 8AEF0 8008A2F0 00000000 */  nop
/* 8AEF4 8008A2F4 2509FFFF */  addiu      $t1, $t0, -1
/* 8AEF8 8008A2F8 A4490090 */  sh         $t1, 0x90($v0)
.L8008A2FC:
/* 8AEFC 8008A2FC 0C000DB2 */  jal        func_800036C8
/* 8AF00 8008A300 2404005D */   addiu     $a0, $zero, 0x5d
/* 8AF04 8008A304 8E0A016C */  lw         $t2, 0x16c($s0)
/* 8AF08 8008A308 240B0001 */  addiu      $t3, $zero, 1
/* 8AF0C 8008A30C 15400002 */  bnez       $t2, .L8008A318
/* 8AF10 8008A310 00000000 */   nop
/* 8AF14 8008A314 AE0B016C */  sw         $t3, 0x16c($s0)
.L8008A318:
/* 8AF18 8008A318 AE000174 */  sw         $zero, 0x174($s0)
.L8008A31C:
/* 8AF1C 8008A31C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 8AF20 8008A320 8FB00018 */  lw         $s0, 0x18($sp)
/* 8AF24 8008A324 03E00008 */  jr         $ra
/* 8AF28 8008A328 27BD0030 */   addiu     $sp, $sp, 0x30
