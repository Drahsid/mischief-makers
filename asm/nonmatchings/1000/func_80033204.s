glabel func_80033204
/* 33E04 80033204 308EFFFF */  andi       $t6, $a0, 0xffff
/* 33E08 80033208 240A0198 */  addiu      $t2, $zero, 0x198
/* 33E0C 8003320C 01CA0019 */  multu      $t6, $t2
/* 33E10 80033210 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 33E14 80033214 3C09800F */  lui        $t1, %hi(D_800EF510)
/* 33E18 80033218 2529F510 */  addiu      $t1, $t1, %lo(D_800EF510)
/* 33E1C 8003321C 3C01800F */  lui        $at, %hi(D_800EB948)
/* 33E20 80033220 C423B948 */  lwc1       $f3, %lo(D_800EB948)($at)
/* 33E24 80033224 C422B94C */  lwc1       $f2, -0x46b4($at)
/* 33E28 80033228 2401FFDF */  addiu      $at, $zero, -0x21
/* 33E2C 8003322C AFA60008 */  sw         $a2, 8($sp)
/* 33E30 80033230 30D8FFFF */  andi       $t8, $a2, 0xffff
/* 33E34 80033234 03003025 */  or         $a2, $t8, $zero
/* 33E38 80033238 44876000 */  mtc1       $a3, $f12
/* 33E3C 8003323C 0000C812 */  mflo       $t9
/* 33E40 80033240 01391021 */  addu       $v0, $t1, $t9
/* 33E44 80033244 8C4B0080 */  lw         $t3, 0x80($v0)
/* 33E48 80033248 01EA0019 */  multu      $t7, $t2
/* 33E4C 8003324C 01616024 */  and        $t4, $t3, $at
/* 33E50 80033250 AC4C0080 */  sw         $t4, 0x80($v0)
/* 33E54 80033254 AFA50004 */  sw         $a1, 4($sp)
/* 33E58 80033258 AFA40000 */  sw         $a0, ($sp)
/* 33E5C 8003325C 3C05800C */  lui        $a1, %hi(D_800BCCD0)
/* 33E60 80033260 24A5CCD0 */  addiu      $a1, $a1, %lo(D_800BCCD0)
/* 33E64 80033264 00006812 */  mflo       $t5
/* 33E68 80033268 012D1821 */  addu       $v1, $t1, $t5
/* 33E6C 8003326C 8C6F0080 */  lw         $t7, 0x80($v1)
/* 33E70 80033270 00000000 */  nop
/* 33E74 80033274 31F80020 */  andi       $t8, $t7, 0x20
/* 33E78 80033278 0198C825 */  or         $t9, $t4, $t8
/* 33E7C 8003327C AC590080 */  sw         $t9, 0x80($v0)
/* 33E80 80033280 C46400C4 */  lwc1       $f4, 0xc4($v1)
/* 33E84 80033284 33280020 */  andi       $t0, $t9, 0x20
/* 33E88 80033288 460021A1 */  cvt.d.s    $f6, $f4
/* 33E8C 8003328C 00000000 */  nop
/* 33E90 80033290 46223203 */  div.d      $f8, $f6, $f2
/* 33E94 80033294 444BF800 */  cfc1       $t3, $31
/* 33E98 80033298 00000000 */  nop
/* 33E9C 8003329C 35610003 */  ori        $at, $t3, 3
/* 33EA0 800332A0 38210002 */  xori       $at, $at, 2
/* 33EA4 800332A4 44C1F800 */  ctc1       $at, $31
/* 33EA8 800332A8 00000000 */  nop
/* 33EAC 800332AC 462042A4 */  cvt.w.d    $f10, $f8
/* 33EB0 800332B0 44075000 */  mfc1       $a3, $f10
/* 33EB4 800332B4 44CBF800 */  ctc1       $t3, $31
/* 33EB8 800332B8 11000004 */  beqz       $t0, .L800332CC
/* 33EBC 800332BC 00C72021 */   addu      $a0, $a2, $a3
/* 33EC0 800332C0 00E62023 */  subu       $a0, $a3, $a2
/* 33EC4 800332C4 10000001 */  b          .L800332CC
/* 33EC8 800332C8 24840200 */   addiu     $a0, $a0, 0x200
.L800332CC:
/* 33ECC 800332CC 308D03FF */  andi       $t5, $a0, 0x3ff
/* 33ED0 800332D0 000D7880 */  sll        $t7, $t5, 2
/* 33ED4 800332D4 00AF7021 */  addu       $t6, $a1, $t7
/* 33ED8 800332D8 C5D00000 */  lwc1       $f16, ($t6)
/* 33EDC 800332DC 3C014780 */  lui        $at, 0x4780
/* 33EE0 800332E0 460C8482 */  mul.s      $f18, $f16, $f12
/* 33EE4 800332E4 44817000 */  mtc1       $at, $f14
/* 33EE8 800332E8 248DFF00 */  addiu      $t5, $a0, -0x100
/* 33EEC 800332EC 31AF03FF */  andi       $t7, $t5, 0x3ff
/* 33EF0 800332F0 460E9002 */  mul.s      $f0, $f18, $f14
/* 33EF4 800332F4 000F7080 */  sll        $t6, $t7, 2
/* 33EF8 800332F8 8C780088 */  lw         $t8, 0x88($v1)
/* 33EFC 800332FC 4459F800 */  cfc1       $t9, $31
/* 33F00 80033300 00000000 */  nop
/* 33F04 80033304 37210003 */  ori        $at, $t9, 3
/* 33F08 80033308 38210002 */  xori       $at, $at, 2
/* 33F0C 8003330C 44C1F800 */  ctc1       $at, $31
/* 33F10 80033310 00000000 */  nop
/* 33F14 80033314 46000124 */  cvt.w.s    $f4, $f0
/* 33F18 80033318 44D9F800 */  ctc1       $t9, $31
/* 33F1C 8003331C 00AEC821 */  addu       $t9, $a1, $t6
/* 33F20 80033320 C7260000 */  lwc1       $f6, ($t9)
/* 33F24 80033324 440B2000 */  mfc1       $t3, $f4
/* 33F28 80033328 460C3202 */  mul.s      $f8, $f6, $f12
/* 33F2C 8003332C 030B6021 */  addu       $t4, $t8, $t3
/* 33F30 80033330 AC4C0088 */  sw         $t4, 0x88($v0)
/* 33F34 80033334 8C78008C */  lw         $t8, 0x8c($v1)
/* 33F38 80033338 460E4002 */  mul.s      $f0, $f8, $f14
/* 33F3C 8003333C 444BF800 */  cfc1       $t3, $31
/* 33F40 80033340 00000000 */  nop
/* 33F44 80033344 35610003 */  ori        $at, $t3, 3
/* 33F48 80033348 38210002 */  xori       $at, $at, 2
/* 33F4C 8003334C 44C1F800 */  ctc1       $at, $31
/* 33F50 80033350 00000000 */  nop
/* 33F54 80033354 460002A4 */  cvt.w.s    $f10, $f0
/* 33F58 80033358 440C5000 */  mfc1       $t4, $f10
/* 33F5C 8003335C 44CBF800 */  ctc1       $t3, $31
/* 33F60 80033360 030C6821 */  addu       $t5, $t8, $t4
/* 33F64 80033364 11000004 */  beqz       $t0, .L80033378
/* 33F68 80033368 AC4D008C */   sw        $t5, 0x8c($v0)
/* 33F6C 8003336C 97AF0012 */  lhu        $t7, 0x12($sp)
/* 33F70 80033370 10000004 */  b          .L80033384
/* 33F74 80033374 00EF2023 */   subu      $a0, $a3, $t7
.L80033378:
/* 33F78 80033378 97AE0012 */  lhu        $t6, 0x12($sp)
/* 33F7C 8003337C 00000000 */  nop
/* 33F80 80033380 01C72021 */  addu       $a0, $t6, $a3
.L80033384:
/* 33F84 80033384 44848000 */  mtc1       $a0, $f16
/* 33F88 80033388 00000000 */  nop
/* 33F8C 8003338C 468084A1 */  cvt.d.w    $f18, $f16
/* 33F90 80033390 46229102 */  mul.d      $f4, $f18, $f2
/* 33F94 80033394 462021A0 */  cvt.s.d    $f6, $f4
/* 33F98 80033398 03E00008 */  jr         $ra
/* 33F9C 8003339C E44600C4 */   swc1      $f6, 0xc4($v0)
