glabel func_80072628
/* 73228 80072628 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 7322C 8007262C AFA40038 */  sw         $a0, 0x38($sp)
/* 73230 80072630 AFBF0024 */  sw         $ra, 0x24($sp)
/* 73234 80072634 97A4003A */  lhu        $a0, 0x3a($sp)
/* 73238 80072638 0C01B22E */  jal        func_8006C8B8
/* 7323C 8007263C 00000000 */   nop
/* 73240 80072640 144000A5 */  bnez       $v0, .L800728D8
/* 73244 80072644 3C18800F */   lui       $t8, %hi(D_800EF510)
/* 73248 80072648 97AE003A */  lhu        $t6, 0x3a($sp)
/* 7324C 8007264C 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 73250 80072650 000E7880 */  sll        $t7, $t6, 2
/* 73254 80072654 01EE7823 */  subu       $t7, $t7, $t6
/* 73258 80072658 000F7880 */  sll        $t7, $t7, 2
/* 7325C 8007265C 01EE7821 */  addu       $t7, $t7, $t6
/* 73260 80072660 000F7880 */  sll        $t7, $t7, 2
/* 73264 80072664 01EE7823 */  subu       $t7, $t7, $t6
/* 73268 80072668 000F78C0 */  sll        $t7, $t7, 3
/* 7326C 8007266C 01F84021 */  addu       $t0, $t7, $t8
/* 73270 80072670 951900D0 */  lhu        $t9, 0xd0($t0)
/* 73274 80072674 00000000 */  nop
/* 73278 80072678 2729FBD0 */  addiu      $t1, $t9, -0x430
/* 7327C 8007267C 2D210023 */  sltiu      $at, $t1, 0x23
/* 73280 80072680 1020008C */  beqz       $at, .L800728B4
/* 73284 80072684 00094880 */   sll       $t1, $t1, 2
/* 73288 80072688 3C01800F */  lui        $at, %hi(D_800EC744)
/* 7328C 8007268C 00290821 */  addu       $at, $at, $t1
/* 73290 80072690 8C29C744 */  lw         $t1, %lo(D_800EC744)($at)
/* 73294 80072694 00000000 */  nop
/* 73298 80072698 01200008 */  jr         $t1
/* 7329C 8007269C 00000000 */   nop
/* 732A0 800726A0 97A5003A */  lhu        $a1, 0x3a($sp)
/* 732A4 800726A4 AD000158 */  sw         $zero, 0x158($t0)
/* 732A8 800726A8 240400A1 */  addiu      $a0, $zero, 0xa1
/* 732AC 800726AC 0C000DB2 */  jal        func_800036C8
/* 732B0 800726B0 AFA8002C */   sw        $t0, 0x2c($sp)
/* 732B4 800726B4 8FA8002C */  lw         $t0, 0x2c($sp)
/* 732B8 800726B8 24010430 */  addiu      $at, $zero, 0x430
/* 732BC 800726BC 950400D0 */  lhu        $a0, 0xd0($t0)
/* 732C0 800726C0 3C0A800E */  lui        $t2, 0x800e
/* 732C4 800726C4 10810006 */  beq        $a0, $at, .L800726E0
/* 732C8 800726C8 240D0001 */   addiu     $t5, $zero, 1
/* 732CC 800726CC 24010440 */  addiu      $at, $zero, 0x440
/* 732D0 800726D0 10810007 */  beq        $a0, $at, .L800726F0
/* 732D4 800726D4 3C0B800E */   lui       $t3, 0x800e
/* 732D8 800726D8 24010450 */  addiu      $at, $zero, 0x450
/* 732DC 800726DC 14810007 */  bne        $a0, $at, .L800726FC
.L800726E0:
/* 732E0 800726E0 254A22CC */   addiu     $t2, $t2, 0x22cc
/* 732E4 800726E4 950400D0 */  lhu        $a0, 0xd0($t0)
/* 732E8 800726E8 10000004 */  b          .L800726FC
/* 732EC 800726EC AD0A00E8 */   sw        $t2, 0xe8($t0)
.L800726F0:
/* 732F0 800726F0 256B2314 */  addiu      $t3, $t3, 0x2314
/* 732F4 800726F4 950400D0 */  lhu        $a0, 0xd0($t0)
/* 732F8 800726F8 AD0B00E8 */  sw         $t3, 0xe8($t0)
.L800726FC:
/* 732FC 800726FC 248C0001 */  addiu      $t4, $a0, 1
/* 73300 80072700 A50C00D0 */  sh         $t4, 0xd0($t0)
/* 73304 80072704 A50D00E6 */  sh         $t5, 0xe6($t0)
/* 73308 80072708 8D0E0158 */  lw         $t6, 0x158($t0)
/* 7330C 8007270C 240100F0 */  addiu      $at, $zero, 0xf0
/* 73310 80072710 15C1001A */  bne        $t6, $at, .L8007277C
/* 73314 80072714 24050020 */   addiu     $a1, $zero, 0x20
/* 73318 80072718 950400D0 */  lhu        $a0, 0xd0($t0)
/* 7331C 8007271C 24010431 */  addiu      $at, $zero, 0x431
/* 73320 80072720 10810009 */  beq        $a0, $at, .L80072748
/* 73324 80072724 3C18800E */   lui       $t8, 0x800e
/* 73328 80072728 24010441 */  addiu      $at, $zero, 0x441
/* 7332C 8007272C 10810006 */  beq        $a0, $at, .L80072748
/* 73330 80072730 24010451 */   addiu     $at, $zero, 0x451
/* 73334 80072734 1081000A */  beq        $a0, $at, .L80072760
/* 73338 80072738 3C09800E */   lui       $t1, 0x800e
/* 7333C 8007273C 240F0001 */  addiu      $t7, $zero, 1
/* 73340 80072740 1000000C */  b          .L80072774
/* 73344 80072744 A50F00E6 */   sh        $t7, 0xe6($t0)
.L80072748:
/* 73348 80072748 271822F8 */  addiu      $t8, $t8, 0x22f8
/* 7334C 8007274C 950400D0 */  lhu        $a0, 0xd0($t0)
/* 73350 80072750 24190001 */  addiu      $t9, $zero, 1
/* 73354 80072754 AD1800E8 */  sw         $t8, 0xe8($t0)
/* 73358 80072758 10000006 */  b          .L80072774
/* 7335C 8007275C A51900E6 */   sh        $t9, 0xe6($t0)
.L80072760:
/* 73360 80072760 25292330 */  addiu      $t1, $t1, 0x2330
/* 73364 80072764 240A0001 */  addiu      $t2, $zero, 1
/* 73368 80072768 950400D0 */  lhu        $a0, 0xd0($t0)
/* 7336C 8007276C AD0900E8 */  sw         $t1, 0xe8($t0)
/* 73370 80072770 A50A00E6 */  sh         $t2, 0xe6($t0)
.L80072774:
/* 73374 80072774 248B0001 */  addiu      $t3, $a0, 1
/* 73378 80072778 A50B00D0 */  sh         $t3, 0xd0($t0)
.L8007277C:
/* 7337C 8007277C 97A4003A */  lhu        $a0, 0x3a($sp)
/* 73380 80072780 0C00A23B */  jal        func_800288EC
/* 73384 80072784 AFA8002C */   sw        $t0, 0x2c($sp)
/* 73388 80072788 8FA8002C */  lw         $t0, 0x2c($sp)
/* 7338C 8007278C 14400049 */  bnez       $v0, .L800728B4
/* 73390 80072790 3C01C080 */   lui       $at, 0xc080
/* 73394 80072794 850C008C */  lh         $t4, 0x8c($t0)
/* 73398 80072798 C50400B4 */  lwc1       $f4, 0xb4($t0)
/* 7339C 8007279C 44813000 */  mtc1       $at, $f6
/* 733A0 800727A0 448C5000 */  mtc1       $t4, $f10
/* 733A4 800727A4 46062202 */  mul.s      $f8, $f4, $f6
/* 733A8 800727A8 85070090 */  lh         $a3, 0x90($t0)
/* 733AC 800727AC 97A4003A */  lhu        $a0, 0x3a($sp)
/* 733B0 800727B0 24E7FFFF */  addiu      $a3, $a3, -1
/* 733B4 800727B4 46805420 */  cvt.s.w    $f16, $f10
/* 733B8 800727B8 0007C400 */  sll        $t8, $a3, 0x10
/* 733BC 800727BC 85050088 */  lh         $a1, 0x88($t0)
/* 733C0 800727C0 46104480 */  add.s      $f18, $f8, $f16
/* 733C4 800727C4 3C090001 */  lui        $t1, 1
/* 733C8 800727C8 444DF800 */  cfc1       $t5, $31
/* 733CC 800727CC 3C0A0008 */  lui        $t2, 8
/* 733D0 800727D0 35A10003 */  ori        $at, $t5, 3
/* 733D4 800727D4 38210002 */  xori       $at, $at, 2
/* 733D8 800727D8 44C1F800 */  ctc1       $at, $31
/* 733DC 800727DC 240B0004 */  addiu      $t3, $zero, 4
/* 733E0 800727E0 46009124 */  cvt.w.s    $f4, $f18
/* 733E4 800727E4 AFAB0018 */  sw         $t3, 0x18($sp)
/* 733E8 800727E8 44062000 */  mfc1       $a2, $f4
/* 733EC 800727EC 44CDF800 */  ctc1       $t5, $31
/* 733F0 800727F0 00067400 */  sll        $t6, $a2, 0x10
/* 733F4 800727F4 000E3403 */  sra        $a2, $t6, 0x10
/* 733F8 800727F8 AFAA0014 */  sw         $t2, 0x14($sp)
/* 733FC 800727FC AFA90010 */  sw         $t1, 0x10($sp)
/* 73400 80072800 00183C03 */  sra        $a3, $t8, 0x10
/* 73404 80072804 0C00CF9F */  jal        func_80033E7C
/* 73408 80072808 AFA8002C */   sw        $t0, 0x2c($sp)
/* 7340C 8007280C 8FA8002C */  lw         $t0, 0x2c($sp)
/* 73410 80072810 10000029 */  b          .L800728B8
/* 73414 80072814 8D020158 */   lw        $v0, 0x158($t0)
/* 73418 80072818 950C0084 */  lhu        $t4, 0x84($t0)
/* 7341C 8007281C 24016846 */  addiu      $at, $zero, 0x6846
/* 73420 80072820 15810003 */  bne        $t4, $at, .L80072830
/* 73424 80072824 3C06C000 */   lui       $a2, 0xc000
/* 73428 80072828 10000002 */  b          .L80072834
/* 7342C 8007282C 2402FFFF */   addiu     $v0, $zero, -1
.L80072830:
/* 73430 80072830 00001025 */  or         $v0, $zero, $zero
.L80072834:
/* 73434 80072834 244D0004 */  addiu      $t5, $v0, 4
/* 73438 80072838 244E000A */  addiu      $t6, $v0, 0xa
/* 7343C 8007283C 448E5000 */  mtc1       $t6, $f10
/* 73440 80072840 448D3000 */  mtc1       $t5, $f6
/* 73444 80072844 468052A0 */  cvt.s.w    $f10, $f10
/* 73448 80072848 44804000 */  mtc1       $zero, $f8
/* 7344C 8007284C 97A4003A */  lhu        $a0, 0x3a($sp)
/* 73450 80072850 468031A0 */  cvt.s.w    $f6, $f6
/* 73454 80072854 44075000 */  mfc1       $a3, $f10
/* 73458 80072858 AFA8002C */  sw         $t0, 0x2c($sp)
/* 7345C 8007285C 44053000 */  mfc1       $a1, $f6
/* 73460 80072860 0C0199E3 */  jal        func_8006678C
/* 73464 80072864 E7A80010 */   swc1      $f8, 0x10($sp)
/* 73468 80072868 8FA8002C */  lw         $t0, 0x2c($sp)
/* 7346C 8007286C 10000012 */  b          .L800728B8
/* 73470 80072870 8D020158 */   lw        $v0, 0x158($t0)
/* 73474 80072874 95020084 */  lhu        $v0, 0x84($t0)
/* 73478 80072878 24016819 */  addiu      $at, $zero, 0x6819
/* 7347C 8007287C 10410003 */  beq        $v0, $at, .L8007288C
/* 73480 80072880 3C0540E0 */   lui       $a1, 0x40e0
/* 73484 80072884 2401681A */  addiu      $at, $zero, 0x681a
/* 73488 80072888 1441000A */  bne        $v0, $at, .L800728B4
.L8007288C:
/* 7348C 8007288C 3C01C0C0 */   lui       $at, 0xc0c0
/* 73490 80072890 44810000 */  mtc1       $at, $f0
/* 73494 80072894 97A4003A */  lhu        $a0, 0x3a($sp)
/* 73498 80072898 44060000 */  mfc1       $a2, $f0
/* 7349C 8007289C 3C074140 */  lui        $a3, 0x4140
/* 734A0 800728A0 AFA8002C */  sw         $t0, 0x2c($sp)
/* 734A4 800728A4 0C0199E3 */  jal        func_8006678C
/* 734A8 800728A8 E7A00010 */   swc1      $f0, 0x10($sp)
/* 734AC 800728AC 8FA8002C */  lw         $t0, 0x2c($sp)
/* 734B0 800728B0 00000000 */  nop
.L800728B4:
/* 734B4 800728B4 8D020158 */  lw         $v0, 0x158($t0)
.L800728B8:
/* 734B8 800728B8 00000000 */  nop
/* 734BC 800728BC 28414000 */  slti       $at, $v0, 0x4000
/* 734C0 800728C0 10200002 */  beqz       $at, .L800728CC
/* 734C4 800728C4 244F0001 */   addiu     $t7, $v0, 1
/* 734C8 800728C8 AD0F0158 */  sw         $t7, 0x158($t0)
.L800728CC:
/* 734CC 800728CC 97A4003A */  lhu        $a0, 0x3a($sp)
/* 734D0 800728D0 0C01A6E5 */  jal        func_80069B94
/* 734D4 800728D4 00000000 */   nop
.L800728D8:
/* 734D8 800728D8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 734DC 800728DC 27BD0038 */  addiu      $sp, $sp, 0x38
/* 734E0 800728E0 03E00008 */  jr         $ra
/* 734E4 800728E4 00000000 */   nop
