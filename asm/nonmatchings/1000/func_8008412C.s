glabel func_8008412C
/* 84D2C 8008412C AFA7000C */  sw         $a3, 0xc($sp)
/* 84D30 80084130 30EFFFFF */  andi       $t7, $a3, 0xffff
/* 84D34 80084134 01E03825 */  or         $a3, $t7, $zero
/* 84D38 80084138 AFA40000 */  sw         $a0, ($sp)
/* 84D3C 8008413C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 84D40 80084140 01C02025 */  or         $a0, $t6, $zero
/* 84D44 80084144 44856000 */  mtc1       $a1, $f12
/* 84D48 80084148 44867000 */  mtc1       $a2, $f14
/* 84D4C 8008414C 04E10003 */  bgez       $a3, .L8008415C
/* 84D50 80084150 00071043 */   sra       $v0, $a3, 1
/* 84D54 80084154 24E10001 */  addiu      $at, $a3, 1
/* 84D58 80084158 00011043 */  sra        $v0, $at, 1
.L8008415C:
/* 84D5C 8008415C 18400004 */  blez       $v0, .L80084170
/* 84D60 80084160 00044080 */   sll       $t0, $a0, 2
/* 84D64 80084164 44822000 */  mtc1       $v0, $f4
/* 84D68 80084168 10000005 */  b          .L80084180
/* 84D6C 8008416C 46802020 */   cvt.s.w   $f0, $f4
.L80084170:
/* 84D70 80084170 0002C023 */  negu       $t8, $v0
/* 84D74 80084174 44983000 */  mtc1       $t8, $f6
/* 84D78 80084178 00000000 */  nop
/* 84D7C 8008417C 46803020 */  cvt.s.w    $f0, $f6
.L80084180:
/* 84D80 80084180 44809000 */  mtc1       $zero, $f18
/* 84D84 80084184 1840000E */  blez       $v0, .L800841C0
/* 84D88 80084188 00001825 */   or        $v1, $zero, $zero
/* 84D8C 8008418C 46000202 */  mul.s      $f8, $f0, $f0
/* 84D90 80084190 00000000 */  nop
/* 84D94 80084194 46087083 */  div.s      $f2, $f14, $f8
/* 84D98 80084198 460012A1 */  cvt.d.s    $f10, $f2
/* 84D9C 8008419C 46001121 */  cvt.d.s    $f4, $f2
/* 84DA0 800841A0 46245180 */  add.d      $f6, $f10, $f4
/* 84DA4 800841A4 46203420 */  cvt.s.d    $f16, $f6
.L800841A8:
/* 84DA8 800841A8 24630001 */  addiu      $v1, $v1, 1
/* 84DAC 800841AC 3079FFFF */  andi       $t9, $v1, 0xffff
/* 84DB0 800841B0 0322082A */  slt        $at, $t9, $v0
/* 84DB4 800841B4 03201825 */  or         $v1, $t9, $zero
/* 84DB8 800841B8 1420FFFB */  bnez       $at, .L800841A8
/* 84DBC 800841BC 46109480 */   add.s     $f18, $f18, $f16
.L800841C0:
/* 84DC0 800841C0 01044023 */  subu       $t0, $t0, $a0
/* 84DC4 800841C4 00084080 */  sll        $t0, $t0, 2
/* 84DC8 800841C8 01044021 */  addu       $t0, $t0, $a0
/* 84DCC 800841CC 00084080 */  sll        $t0, $t0, 2
/* 84DD0 800841D0 44874000 */  mtc1       $a3, $f8
/* 84DD4 800841D4 3C014780 */  lui        $at, 0x4780
/* 84DD8 800841D8 01044023 */  subu       $t0, $t0, $a0
/* 84DDC 800841DC 3C09800F */  lui        $t1, %hi(D_800EF510)
/* 84DE0 800841E0 44818000 */  mtc1       $at, $f16
/* 84DE4 800841E4 2529F510 */  addiu      $t1, $t1, %lo(D_800EF510)
/* 84DE8 800841E8 000840C0 */  sll        $t0, $t0, 3
/* 84DEC 800841EC 01091821 */  addu       $v1, $t0, $t1
/* 84DF0 800841F0 04E10005 */  bgez       $a3, .L80084208
/* 84DF4 800841F4 468042A0 */   cvt.s.w   $f10, $f8
/* 84DF8 800841F8 3C014F80 */  lui        $at, 0x4f80
/* 84DFC 800841FC 44812000 */  mtc1       $at, $f4
/* 84E00 80084200 00000000 */  nop
/* 84E04 80084204 46045280 */  add.s      $f10, $f10, $f4
.L80084208:
/* 84E08 80084208 00000000 */  nop
/* 84E0C 8008420C 460A6183 */  div.s      $f6, $f12, $f10
/* 84E10 80084210 46103202 */  mul.s      $f8, $f6, $f16
/* 84E14 80084214 444AF800 */  cfc1       $t2, $31
/* 84E18 80084218 00000000 */  nop
/* 84E1C 8008421C 35410003 */  ori        $at, $t2, 3
/* 84E20 80084220 38210002 */  xori       $at, $at, 2
/* 84E24 80084224 44C1F800 */  ctc1       $at, $31
/* 84E28 80084228 00000000 */  nop
/* 84E2C 8008422C 46004124 */  cvt.w.s    $f4, $f8
/* 84E30 80084230 44CAF800 */  ctc1       $t2, $31
/* 84E34 80084234 440B2000 */  mfc1       $t3, $f4
/* 84E38 80084238 46109282 */  mul.s      $f10, $f18, $f16
/* 84E3C 8008423C AC6B00EC */  sw         $t3, 0xec($v1)
/* 84E40 80084240 444CF800 */  cfc1       $t4, $31
/* 84E44 80084244 00000000 */  nop
/* 84E48 80084248 35810003 */  ori        $at, $t4, 3
/* 84E4C 8008424C 38210002 */  xori       $at, $at, 2
/* 84E50 80084250 44C1F800 */  ctc1       $at, $31
/* 84E54 80084254 00000000 */  nop
/* 84E58 80084258 460051A4 */  cvt.w.s    $f6, $f10
/* 84E5C 8008425C 44CCF800 */  ctc1       $t4, $31
/* 84E60 80084260 440D3000 */  mfc1       $t5, $f6
/* 84E64 80084264 46000202 */  mul.s      $f8, $f0, $f0
/* 84E68 80084268 AC6D00F0 */  sw         $t5, 0xf0($v1)
/* 84E6C 8008426C 46087103 */  div.s      $f4, $f14, $f8
/* 84E70 80084270 460020A1 */  cvt.d.s    $f2, $f4
/* 84E74 80084274 46221280 */  add.d      $f10, $f2, $f2
/* 84E78 80084278 462051A0 */  cvt.s.d    $f6, $f10
/* 84E7C 8008427C 46103202 */  mul.s      $f8, $f6, $f16
/* 84E80 80084280 444EF800 */  cfc1       $t6, $31
/* 84E84 80084284 00000000 */  nop
/* 84E88 80084288 35C10003 */  ori        $at, $t6, 3
/* 84E8C 8008428C 38210002 */  xori       $at, $at, 2
/* 84E90 80084290 44C1F800 */  ctc1       $at, $31
/* 84E94 80084294 00000000 */  nop
/* 84E98 80084298 46004124 */  cvt.w.s    $f4, $f8
/* 84E9C 8008429C 44022000 */  mfc1       $v0, $f4
/* 84EA0 800842A0 44CEF800 */  ctc1       $t6, $31
/* 84EA4 800842A4 03E00008 */  jr         $ra
/* 84EA8 800842A8 00000000 */   nop
