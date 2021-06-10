glabel func_8006B310
/* 6BF10 8006B310 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6BF14 8006B314 AFA40018 */  sw         $a0, 0x18($sp)
/* 6BF18 8006B318 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6BF1C 8006B31C 97A4001A */  lhu        $a0, 0x1a($sp)
/* 6BF20 8006B320 0C00A33A */  jal        func_80028CE8
/* 6BF24 8006B324 00000000 */   nop
/* 6BF28 8006B328 97AE001A */  lhu        $t6, 0x1a($sp)
/* 6BF2C 8006B32C 3C18800F */  lui        $t8, 0x800f
/* 6BF30 8006B330 000E7880 */  sll        $t7, $t6, 2
/* 6BF34 8006B334 01EE7823 */  subu       $t7, $t7, $t6
/* 6BF38 8006B338 000F7880 */  sll        $t7, $t7, 2
/* 6BF3C 8006B33C 01EE7821 */  addu       $t7, $t7, $t6
/* 6BF40 8006B340 000F7880 */  sll        $t7, $t7, 2
/* 6BF44 8006B344 01EE7823 */  subu       $t7, $t7, $t6
/* 6BF48 8006B348 000F78C0 */  sll        $t7, $t7, 3
/* 6BF4C 8006B34C 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 6BF50 8006B350 01F81021 */  addu       $v0, $t7, $t8
/* 6BF54 8006B354 3C0140A0 */  lui        $at, 0x40a0
/* 6BF58 8006B358 44812000 */  mtc1       $at, $f4
/* 6BF5C 8006B35C C44000B4 */  lwc1       $f0, 0xb4($v0)
/* 6BF60 8006B360 8C490080 */  lw         $t1, 0x80($v0)
/* 6BF64 8006B364 46040182 */  mul.s      $f6, $f0, $f4
/* 6BF68 8006B368 A04000DA */  sb         $zero, 0xda($v0)
/* 6BF6C 8006B36C 3C05800E */  lui        $a1, 0x800e
/* 6BF70 8006B370 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6BF74 8006B374 4459F800 */  cfc1       $t9, $31
/* 6BF78 8006B378 00000000 */  nop
/* 6BF7C 8006B37C 37210003 */  ori        $at, $t9, 3
/* 6BF80 8006B380 38210002 */  xori       $at, $at, 2
/* 6BF84 8006B384 44C1F800 */  ctc1       $at, $31
/* 6BF88 8006B388 3C01C0A0 */  lui        $at, 0xc0a0
/* 6BF8C 8006B38C 46003224 */  cvt.w.s    $f8, $f6
/* 6BF90 8006B390 44815000 */  mtc1       $at, $f10
/* 6BF94 8006B394 44D9F800 */  ctc1       $t9, $31
/* 6BF98 8006B398 44034000 */  mfc1       $v1, $f8
/* 6BF9C 8006B39C 460A0402 */  mul.s      $f16, $f0, $f10
/* 6BFA0 8006B3A0 A44300A6 */  sh         $v1, 0xa6($v0)
/* 6BFA4 8006B3A4 A44300A4 */  sh         $v1, 0xa4($v0)
/* 6BFA8 8006B3A8 4448F800 */  cfc1       $t0, $31
/* 6BFAC 8006B3AC 00000000 */  nop
/* 6BFB0 8006B3B0 35010003 */  ori        $at, $t0, 3
/* 6BFB4 8006B3B4 38210002 */  xori       $at, $at, 2
/* 6BFB8 8006B3B8 44C1F800 */  ctc1       $at, $31
/* 6BFBC 8006B3BC 2401FAFF */  addiu      $at, $zero, -0x501
/* 6BFC0 8006B3C0 460084A4 */  cvt.w.s    $f18, $f16
/* 6BFC4 8006B3C4 01215024 */  and        $t2, $t1, $at
/* 6BFC8 8006B3C8 44049000 */  mfc1       $a0, $f18
/* 6BFCC 8006B3CC AC4A0080 */  sw         $t2, 0x80($v0)
/* 6BFD0 8006B3D0 A44400A8 */  sh         $a0, 0xa8($v0)
/* 6BFD4 8006B3D4 A44400A2 */  sh         $a0, 0xa2($v0)
/* 6BFD8 8006B3D8 94A53574 */  lhu        $a1, 0x3574($a1)
/* 6BFDC 8006B3DC 3C010002 */  lui        $at, 2
/* 6BFE0 8006B3E0 01456025 */  or         $t4, $t2, $a1
/* 6BFE4 8006B3E4 24AE1000 */  addiu      $t6, $a1, 0x1000
/* 6BFE8 8006B3E8 018E7825 */  or         $t7, $t4, $t6
/* 6BFEC 8006B3EC 01E1C825 */  or         $t9, $t7, $at
/* 6BFF0 8006B3F0 3C01FFFE */  lui        $at, 0xfffe
/* 6BFF4 8006B3F4 3421FFFF */  ori        $at, $at, 0xffff
/* 6BFF8 8006B3F8 8C4A0098 */  lw         $t2, 0x98($v0)
/* 6BFFC 8006B3FC 03214824 */  and        $t1, $t9, $at
/* 6C000 8006B400 2401FFDF */  addiu      $at, $zero, -0x21
/* 6C004 8006B404 01415824 */  and        $t3, $t2, $at
/* 6C008 8006B408 3C014140 */  lui        $at, 0x4140
/* 6C00C 8006B40C 44812000 */  mtc1       $at, $f4
/* 6C010 8006B410 AC4C0080 */  sw         $t4, 0x80($v0)
/* 6C014 8006B414 3C01BF80 */  lui        $at, 0xbf80
/* 6C018 8006B418 44813000 */  mtc1       $at, $f6
/* 6C01C 8006B41C AC4F0080 */  sw         $t7, 0x80($v0)
/* 6C020 8006B420 AC590080 */  sw         $t9, 0x80($v0)
/* 6C024 8006B424 312D0280 */  andi       $t5, $t1, 0x280
/* 6C028 8006B428 44C8F800 */  ctc1       $t0, $31
/* 6C02C 8006B42C AC490080 */  sw         $t1, 0x80($v0)
/* 6C030 8006B430 AC4B0098 */  sw         $t3, 0x98($v0)
/* 6C034 8006B434 AC4D0160 */  sw         $t5, 0x160($v0)
/* 6C038 8006B438 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6C03C 8006B43C E4440118 */  swc1       $f4, 0x118($v0)
/* 6C040 8006B440 03E00008 */  jr         $ra
/* 6C044 8006B444 E446011C */   swc1      $f6, 0x11c($v0)
