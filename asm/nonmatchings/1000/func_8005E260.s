glabel func_8005E260
/* 5EE60 8005E260 3086FFFF */  andi       $a2, $a0, 0xffff
/* 5EE64 8005E264 24080198 */  addiu      $t0, $zero, 0x198
/* 5EE68 8005E268 00C80019 */  multu      $a2, $t0
/* 5EE6C 8005E26C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5EE70 8005E270 3C07800F */  lui        $a3, %hi(D_800EF510)
/* 5EE74 8005E274 24E7F510 */  addiu      $a3, $a3, %lo(D_800EF510)
/* 5EE78 8005E278 AFB1001C */  sw         $s1, 0x1c($sp)
/* 5EE7C 8005E27C AFBF0024 */  sw         $ra, 0x24($sp)
/* 5EE80 8005E280 AFB20020 */  sw         $s2, 0x20($sp)
/* 5EE84 8005E284 AFB00018 */  sw         $s0, 0x18($sp)
/* 5EE88 8005E288 AFA40028 */  sw         $a0, 0x28($sp)
/* 5EE8C 8005E28C 240D0134 */  addiu      $t5, $zero, 0x134
/* 5EE90 8005E290 00007012 */  mflo       $t6
/* 5EE94 8005E294 00EE8821 */  addu       $s1, $a3, $t6
/* 5EE98 8005E298 922300D1 */  lbu        $v1, 0xd1($s1)
/* 5EE9C 8005E29C 962500D6 */  lhu        $a1, 0xd6($s1)
/* 5EEA0 8005E2A0 28610002 */  slti       $at, $v1, 2
/* 5EEA4 8005E2A4 1020000B */  beqz       $at, .L8005E2D4
/* 5EEA8 8005E2A8 240E000D */   addiu     $t6, $zero, 0xd
/* 5EEAC 8005E2AC 8E2F0098 */  lw         $t7, 0x98($s1)
/* 5EEB0 8005E2B0 2401EFFF */  addiu      $at, $zero, -0x1001
/* 5EEB4 8005E2B4 31F80200 */  andi       $t8, $t7, 0x200
/* 5EEB8 8005E2B8 13000006 */  beqz       $t8, .L8005E2D4
/* 5EEBC 8005E2BC 240A0002 */   addiu     $t2, $zero, 2
/* 5EEC0 8005E2C0 8E390080 */  lw         $t9, 0x80($s1)
/* 5EEC4 8005E2C4 A62A00D0 */  sh         $t2, 0xd0($s1)
/* 5EEC8 8005E2C8 03214824 */  and        $t1, $t9, $at
/* 5EECC 8005E2CC 922300D1 */  lbu        $v1, 0xd1($s1)
/* 5EED0 8005E2D0 AE290080 */  sw         $t1, 0x80($s1)
.L8005E2D4:
/* 5EED4 8005E2D4 1060000A */  beqz       $v1, .L8005E300
/* 5EED8 8005E2D8 24010001 */   addiu     $at, $zero, 1
/* 5EEDC 8005E2DC 1061001D */  beq        $v1, $at, .L8005E354
/* 5EEE0 8005E2E0 24010002 */   addiu     $at, $zero, 2
/* 5EEE4 8005E2E4 1061006D */  beq        $v1, $at, .L8005E49C
/* 5EEE8 8005E2E8 00067080 */   sll       $t6, $a2, 2
/* 5EEEC 8005E2EC 24010003 */  addiu      $at, $zero, 3
/* 5EEF0 8005E2F0 10610085 */  beq        $v1, $at, .L8005E508
/* 5EEF4 8005E2F4 00000000 */   nop
/* 5EEF8 8005E2F8 10000097 */  b          .L8005E558
/* 5EEFC 8005E2FC 8FBF0024 */   lw        $ra, 0x24($sp)
.L8005E300:
/* 5EF00 8005E300 962B0094 */  lhu        $t3, 0x94($s1)
/* 5EF04 8005E304 44802000 */  mtc1       $zero, $f4
/* 5EF08 8005E308 8E2F0104 */  lw         $t7, 0x104($s1)
/* 5EF0C 8005E30C 356C0001 */  ori        $t4, $t3, 1
/* 5EF10 8005E310 A62C0094 */  sh         $t4, 0x94($s1)
/* 5EF14 8005E314 A62D0084 */  sh         $t5, 0x84($s1)
/* 5EF18 8005E318 A22000DF */  sb         $zero, 0xdf($s1)
/* 5EF1C 8005E31C A22E00DE */  sb         $t6, 0xde($s1)
/* 5EF20 8005E320 05E10006 */  bgez       $t7, .L8005E33C
/* 5EF24 8005E324 E6240110 */   swc1      $f4, 0x110($s1)
/* 5EF28 8005E328 8E380080 */  lw         $t8, 0x80($s1)
/* 5EF2C 8005E32C 00000000 */  nop
/* 5EF30 8005E330 37190020 */  ori        $t9, $t8, 0x20
/* 5EF34 8005E334 10000005 */  b          .L8005E34C
/* 5EF38 8005E338 AE390080 */   sw        $t9, 0x80($s1)
.L8005E33C:
/* 5EF3C 8005E33C 8E290080 */  lw         $t1, 0x80($s1)
/* 5EF40 8005E340 2401FFDF */  addiu      $at, $zero, -0x21
/* 5EF44 8005E344 01215024 */  and        $t2, $t1, $at
/* 5EF48 8005E348 AE2A0080 */  sw         $t2, 0x80($s1)
.L8005E34C:
/* 5EF4C 8005E34C 240B0001 */  addiu      $t3, $zero, 1
/* 5EF50 8005E350 A62B00D0 */  sh         $t3, 0xd0($s1)
.L8005E354:
/* 5EF54 8005E354 00A80019 */  multu      $a1, $t0
/* 5EF58 8005E358 8E2B0108 */  lw         $t3, 0x108($s1)
/* 5EF5C 8005E35C 8E390104 */  lw         $t9, 0x104($s1)
/* 5EF60 8005E360 3C01800F */  lui        $at, 0x800f
/* 5EF64 8005E364 C6260110 */  lwc1       $f6, 0x110($s1)
/* 5EF68 8005E368 00000000 */  nop
/* 5EF6C 8005E36C 46003221 */  cvt.d.s    $f8, $f6
/* 5EF70 8005E370 44803000 */  mtc1       $zero, $f6
/* 5EF74 8005E374 00006012 */  mflo       $t4
/* 5EF78 8005E378 00EC8021 */  addu       $s0, $a3, $t4
/* 5EF7C 8005E37C 8E0D0088 */  lw         $t5, 0x88($s0)
/* 5EF80 8005E380 00000000 */  nop
/* 5EF84 8005E384 AE2D0088 */  sw         $t5, 0x88($s1)
/* 5EF88 8005E388 8E0E008C */  lw         $t6, 0x8c($s0)
/* 5EF8C 8005E38C 01B94821 */  addu       $t1, $t5, $t9
/* 5EF90 8005E390 AE2E008C */  sw         $t6, 0x8c($s1)
/* 5EF94 8005E394 8E0F0090 */  lw         $t7, 0x90($s0)
/* 5EF98 8005E398 01CB6021 */  addu       $t4, $t6, $t3
/* 5EF9C 8005E39C 8E2E010C */  lw         $t6, 0x10c($s1)
/* 5EFA0 8005E3A0 AE2F0090 */  sw         $t7, 0x90($s1)
/* 5EFA4 8005E3A4 AE290088 */  sw         $t1, 0x88($s1)
/* 5EFA8 8005E3A8 01EE7821 */  addu       $t7, $t7, $t6
/* 5EFAC 8005E3AC AE2C008C */  sw         $t4, 0x8c($s1)
/* 5EFB0 8005E3B0 AE2F0090 */  sw         $t7, 0x90($s1)
/* 5EFB4 8005E3B4 86180088 */  lh         $t8, 0x88($s0)
/* 5EFB8 8005E3B8 86390088 */  lh         $t9, 0x88($s1)
/* 5EFBC 8005E3BC 862C008C */  lh         $t4, 0x8c($s1)
/* 5EFC0 8005E3C0 03195023 */  subu       $t2, $t8, $t9
/* 5EFC4 8005E3C4 A62A00AC */  sh         $t2, 0xac($s1)
/* 5EFC8 8005E3C8 A62A00AA */  sh         $t2, 0xaa($s1)
/* 5EFCC 8005E3CC 860B008C */  lh         $t3, 0x8c($s0)
/* 5EFD0 8005E3D0 862F00AA */  lh         $t7, 0xaa($s1)
/* 5EFD4 8005E3D4 016C7023 */  subu       $t6, $t3, $t4
/* 5EFD8 8005E3D8 A62E00B0 */  sh         $t6, 0xb0($s1)
/* 5EFDC 8005E3DC A62E00AE */  sh         $t6, 0xae($s1)
/* 5EFE0 8005E3E0 861800AA */  lh         $t8, 0xaa($s0)
/* 5EFE4 8005E3E4 862900AC */  lh         $t1, 0xac($s1)
/* 5EFE8 8005E3E8 01F8C821 */  addu       $t9, $t7, $t8
/* 5EFEC 8005E3EC A63900AA */  sh         $t9, 0xaa($s1)
/* 5EFF0 8005E3F0 860A00AC */  lh         $t2, 0xac($s0)
/* 5EFF4 8005E3F4 862C00AE */  lh         $t4, 0xae($s1)
/* 5EFF8 8005E3F8 012A5821 */  addu       $t3, $t1, $t2
/* 5EFFC 8005E3FC A62B00AC */  sh         $t3, 0xac($s1)
/* 5F000 8005E400 860D00AE */  lh         $t5, 0xae($s0)
/* 5F004 8005E404 862F00B0 */  lh         $t7, 0xb0($s1)
/* 5F008 8005E408 018D7021 */  addu       $t6, $t4, $t5
/* 5F00C 8005E40C A62E00AE */  sh         $t6, 0xae($s1)
/* 5F010 8005E410 861800B0 */  lh         $t8, 0xb0($s0)
/* 5F014 8005E414 00000000 */  nop
/* 5F018 8005E418 01F8C821 */  addu       $t9, $t7, $t8
/* 5F01C 8005E41C A63900B0 */  sh         $t9, 0xb0($s1)
/* 5F020 8005E420 C42ABF94 */  lwc1       $f10, -0x406c($at)
/* 5F024 8005E424 C42BBF90 */  lwc1       $f11, -0x4070($at)
/* 5F028 8005E428 3C013FF0 */  lui        $at, 0x3ff0
/* 5F02C 8005E42C 462A4400 */  add.d      $f16, $f8, $f10
/* 5F030 8005E430 44813800 */  mtc1       $at, $f7
/* 5F034 8005E434 462084A0 */  cvt.s.d    $f18, $f16
/* 5F038 8005E438 3C013F80 */  lui        $at, 0x3f80
/* 5F03C 8005E43C E6320110 */  swc1       $f18, 0x110($s1)
/* 5F040 8005E440 C6200110 */  lwc1       $f0, 0x110($s1)
/* 5F044 8005E444 00000000 */  nop
/* 5F048 8005E448 46000121 */  cvt.d.s    $f4, $f0
/* 5F04C 8005E44C 4624303E */  c.le.d     $f6, $f4
/* 5F050 8005E450 00000000 */  nop
/* 5F054 8005E454 45000007 */  bc1f       .L8005E474
/* 5F058 8005E458 00000000 */   nop
/* 5F05C 8005E45C 44814000 */  mtc1       $at, $f8
/* 5F060 8005E460 8E290080 */  lw         $t1, 0x80($s1)
/* 5F064 8005E464 E6280110 */  swc1       $f8, 0x110($s1)
/* 5F068 8005E468 352A1000 */  ori        $t2, $t1, 0x1000
/* 5F06C 8005E46C C6200110 */  lwc1       $f0, 0x110($s1)
/* 5F070 8005E470 AE2A0080 */  sw         $t2, 0x80($s1)
.L8005E474:
/* 5F074 8005E474 44050000 */  mfc1       $a1, $f0
/* 5F078 8005E478 0C017873 */  jal        func_8005E1CC
/* 5F07C 8005E47C 30C4FFFF */   andi      $a0, $a2, 0xffff
/* 5F080 8005E480 8E0B0098 */  lw         $t3, 0x98($s0)
/* 5F084 8005E484 240D0003 */  addiu      $t5, $zero, 3
/* 5F088 8005E488 000B6340 */  sll        $t4, $t3, 0xd
/* 5F08C 8005E48C 05800032 */  bltz       $t4, .L8005E558
/* 5F090 8005E490 8FBF0024 */   lw        $ra, 0x24($sp)
/* 5F094 8005E494 1000002F */  b          .L8005E554
/* 5F098 8005E498 A62D00D0 */   sh        $t5, 0xd0($s1)
.L8005E49C:
/* 5F09C 8005E49C 01C67023 */  subu       $t6, $t6, $a2
/* 5F0A0 8005E4A0 000E7080 */  sll        $t6, $t6, 2
/* 5F0A4 8005E4A4 01C67021 */  addu       $t6, $t6, $a2
/* 5F0A8 8005E4A8 000E7080 */  sll        $t6, $t6, 2
/* 5F0AC 8005E4AC 01C67023 */  subu       $t6, $t6, $a2
/* 5F0B0 8005E4B0 000E70C0 */  sll        $t6, $t6, 3
/* 5F0B4 8005E4B4 00EE9021 */  addu       $s2, $a3, $t6
/* 5F0B8 8005E4B8 86440152 */  lh         $a0, 0x152($s2)
/* 5F0BC 8005E4BC 0C0177F2 */  jal        func_8005DFC8
/* 5F0C0 8005E4C0 00000000 */   nop
/* 5F0C4 8005E4C4 24100001 */  addiu      $s0, $zero, 1
/* 5F0C8 8005E4C8 2A010010 */  slti       $at, $s0, 0x10
/* 5F0CC 8005E4CC 1020000B */  beqz       $at, .L8005E4FC
/* 5F0D0 8005E4D0 00107880 */   sll       $t7, $s0, 2
.L8005E4D4:
/* 5F0D4 8005E4D4 024FC021 */  addu       $t8, $s2, $t7
/* 5F0D8 8005E4D8 87040152 */  lh         $a0, 0x152($t8)
/* 5F0DC 8005E4DC 0C0177D7 */  jal        func_8005DF5C
/* 5F0E0 8005E4E0 00000000 */   nop
/* 5F0E4 8005E4E4 26100001 */  addiu      $s0, $s0, 1
/* 5F0E8 8005E4E8 0010CC00 */  sll        $t9, $s0, 0x10
/* 5F0EC 8005E4EC 00198403 */  sra        $s0, $t9, 0x10
/* 5F0F0 8005E4F0 2A010010 */  slti       $at, $s0, 0x10
/* 5F0F4 8005E4F4 1420FFF7 */  bnez       $at, .L8005E4D4
/* 5F0F8 8005E4F8 00107880 */   sll       $t7, $s0, 2
.L8005E4FC:
/* 5F0FC 8005E4FC 240A0003 */  addiu      $t2, $zero, 3
/* 5F100 8005E500 10000014 */  b          .L8005E554
/* 5F104 8005E504 A62A00D0 */   sh        $t2, 0xd0($s1)
.L8005E508:
/* 5F108 8005E508 8E250110 */  lw         $a1, 0x110($s1)
/* 5F10C 8005E50C 0C017873 */  jal        func_8005E1CC
/* 5F110 8005E510 30C4FFFF */   andi      $a0, $a2, 0xffff
/* 5F114 8005E514 C6200110 */  lwc1       $f0, 0x110($s1)
/* 5F118 8005E518 44805000 */  mtc1       $zero, $f10
/* 5F11C 8005E51C 3C01800F */  lui        $at, %hi(D_800EBF98)
/* 5F120 8005E520 4600503C */  c.lt.s     $f10, $f0
/* 5F124 8005E524 240B0004 */  addiu      $t3, $zero, 4
/* 5F128 8005E528 45000008 */  bc1f       .L8005E54C
/* 5F12C 8005E52C 00000000 */   nop
/* 5F130 8005E530 C433BF98 */  lwc1       $f19, %lo(D_800EBF98)($at)
/* 5F134 8005E534 C432BF9C */  lwc1       $f18, -0x4064($at)
/* 5F138 8005E538 46000421 */  cvt.d.s    $f16, $f0
/* 5F13C 8005E53C 46328101 */  sub.d      $f4, $f16, $f18
/* 5F140 8005E540 462021A0 */  cvt.s.d    $f6, $f4
/* 5F144 8005E544 10000003 */  b          .L8005E554
/* 5F148 8005E548 E6260110 */   swc1      $f6, 0x110($s1)
.L8005E54C:
/* 5F14C 8005E54C AE200080 */  sw         $zero, 0x80($s1)
/* 5F150 8005E550 A62B00D0 */  sh         $t3, 0xd0($s1)
.L8005E554:
/* 5F154 8005E554 8FBF0024 */  lw         $ra, 0x24($sp)
.L8005E558:
/* 5F158 8005E558 8FB00018 */  lw         $s0, 0x18($sp)
/* 5F15C 8005E55C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 5F160 8005E560 8FB20020 */  lw         $s2, 0x20($sp)
/* 5F164 8005E564 03E00008 */  jr         $ra
/* 5F168 8005E568 27BD0028 */   addiu     $sp, $sp, 0x28
