glabel func_8006A0B8
/* 6ACB8 8006A0B8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6ACBC 8006A0BC 000E7880 */  sll        $t7, $t6, 2
/* 6ACC0 8006A0C0 01EE7823 */  subu       $t7, $t7, $t6
/* 6ACC4 8006A0C4 000F7880 */  sll        $t7, $t7, 2
/* 6ACC8 8006A0C8 01EE7821 */  addu       $t7, $t7, $t6
/* 6ACCC 8006A0CC 000F7880 */  sll        $t7, $t7, 2
/* 6ACD0 8006A0D0 3C014040 */  lui        $at, 0x4040
/* 6ACD4 8006A0D4 01EE7823 */  subu       $t7, $t7, $t6
/* 6ACD8 8006A0D8 3C18800F */  lui        $t8, %hi(gActors)
/* 6ACDC 8006A0DC 44817800 */  mtc1       $at, $f15
/* 6ACE0 8006A0E0 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 6ACE4 8006A0E4 000F78C0 */  sll        $t7, $t7, 3
/* 6ACE8 8006A0E8 01F81021 */  addu       $v0, $t7, $t8
/* 6ACEC 8006A0EC 3C014800 */  lui        $at, 0x4800
/* 6ACF0 8006A0F0 44813000 */  mtc1       $at, $f6
/* 6ACF4 8006A0F4 C4400118 */  lwc1       $f0, 0x118($v0)
/* 6ACF8 8006A0F8 C4440148 */  lwc1       $f4, 0x148($v0)
/* 6ACFC 8006A0FC 46003202 */  mul.s      $f8, $f6, $f0
/* 6AD00 8006A100 240A0001 */  addiu      $t2, $zero, 1
/* 6AD04 8006A104 C442011C */  lwc1       $f2, 0x11c($v0)
/* 6AD08 8006A108 44807000 */  mtc1       $zero, $f14
/* 6AD0C 8006A10C 46082282 */  mul.s      $f10, $f4, $f8
/* 6AD10 8006A110 AFA40000 */  sw         $a0, ($sp)
/* 6AD14 8006A114 3C0E800D */  lui        $t6, 0x800d
/* 6AD18 8006A118 4459F800 */  cfc1       $t9, $31
/* 6AD1C 8006A11C 00000000 */  nop
/* 6AD20 8006A120 37210003 */  ori        $at, $t9, 3
/* 6AD24 8006A124 38210002 */  xori       $at, $at, 2
/* 6AD28 8006A128 44C1F800 */  ctc1       $at, $31
/* 6AD2C 8006A12C 3C014F00 */  lui        $at, 0x4f00
/* 6AD30 8006A130 46005424 */  cvt.w.s    $f16, $f10
/* 6AD34 8006A134 44D9F800 */  ctc1       $t9, $31
/* 6AD38 8006A138 44088000 */  mfc1       $t0, $f16
/* 6AD3C 8006A13C 00000000 */  nop
/* 6AD40 8006A140 4449F800 */  cfc1       $t1, $31
/* 6AD44 8006A144 44CAF800 */  ctc1       $t2, $31
/* 6AD48 8006A148 AC4800EC */  sw         $t0, 0xec($v0)
/* 6AD4C 8006A14C 460014A4 */  cvt.w.s    $f18, $f2
/* 6AD50 8006A150 444AF800 */  cfc1       $t2, $31
/* 6AD54 8006A154 00000000 */  nop
/* 6AD58 8006A158 314A0078 */  andi       $t2, $t2, 0x78
/* 6AD5C 8006A15C 11400012 */  beqz       $t2, .L8006A1A8
/* 6AD60 8006A160 00000000 */   nop
/* 6AD64 8006A164 44819000 */  mtc1       $at, $f18
/* 6AD68 8006A168 240A0001 */  addiu      $t2, $zero, 1
/* 6AD6C 8006A16C 46121481 */  sub.s      $f18, $f2, $f18
/* 6AD70 8006A170 3C018000 */  lui        $at, 0x8000
/* 6AD74 8006A174 44CAF800 */  ctc1       $t2, $31
/* 6AD78 8006A178 00000000 */  nop
/* 6AD7C 8006A17C 460094A4 */  cvt.w.s    $f18, $f18
/* 6AD80 8006A180 444AF800 */  cfc1       $t2, $31
/* 6AD84 8006A184 00000000 */  nop
/* 6AD88 8006A188 314A0078 */  andi       $t2, $t2, 0x78
/* 6AD8C 8006A18C 15400004 */  bnez       $t2, .L8006A1A0
/* 6AD90 8006A190 00000000 */   nop
/* 6AD94 8006A194 440A9000 */  mfc1       $t2, $f18
/* 6AD98 8006A198 10000007 */  b          .L8006A1B8
/* 6AD9C 8006A19C 01415025 */   or        $t2, $t2, $at
.L8006A1A0:
/* 6ADA0 8006A1A0 10000005 */  b          .L8006A1B8
/* 6ADA4 8006A1A4 240AFFFF */   addiu     $t2, $zero, -1
.L8006A1A8:
/* 6ADA8 8006A1A8 440A9000 */  mfc1       $t2, $f18
/* 6ADAC 8006A1AC 00000000 */  nop
/* 6ADB0 8006A1B0 0540FFFB */  bltz       $t2, .L8006A1A0
/* 6ADB4 8006A1B4 00000000 */   nop
.L8006A1B8:
/* 6ADB8 8006A1B8 314BFFFF */  andi       $t3, $t2, 0xffff
/* 6ADBC 8006A1BC 44C9F800 */  ctc1       $t1, $31
/* 6ADC0 8006A1C0 05610003 */  bgez       $t3, .L8006A1D0
/* 6ADC4 8006A1C4 000B6043 */   sra       $t4, $t3, 1
/* 6ADC8 8006A1C8 25610001 */  addiu      $at, $t3, 1
/* 6ADCC 8006A1CC 00016043 */  sra        $t4, $at, 1
.L8006A1D0:
/* 6ADD0 8006A1D0 000C6840 */  sll        $t5, $t4, 1
/* 6ADD4 8006A1D4 46001180 */  add.s      $f6, $f2, $f0
/* 6ADD8 8006A1D8 01CD7021 */  addu       $t6, $t6, $t5
/* 6ADDC 8006A1DC 85CE7E68 */  lh         $t6, 0x7e68($t6)
/* 6ADE0 8006A1E0 E446011C */  swc1       $f6, 0x11c($v0)
/* 6ADE4 8006A1E4 C444011C */  lwc1       $f4, 0x11c($v0)
/* 6ADE8 8006A1E8 A44E0084 */  sh         $t6, 0x84($v0)
/* 6ADEC 8006A1EC 46002321 */  cvt.d.s    $f12, $f4
/* 6ADF0 8006A1F0 462C703E */  c.le.d     $f14, $f12
/* 6ADF4 8006A1F4 00000000 */  nop
/* 6ADF8 8006A1F8 45000004 */  bc1f       .L8006A20C
/* 6ADFC 8006A1FC 00000000 */   nop
/* 6AE00 8006A200 462E6201 */  sub.d      $f8, $f12, $f14
/* 6AE04 8006A204 462042A0 */  cvt.s.d    $f10, $f8
/* 6AE08 8006A208 E44A011C */  swc1       $f10, 0x11c($v0)
.L8006A20C:
/* 6AE0C 8006A20C 03E00008 */  jr         $ra
/* 6AE10 8006A210 00000000 */   nop
