glabel func_8003141C
/* 3201C 8003141C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 32020 80031420 000E7880 */  sll        $t7, $t6, 2
/* 32024 80031424 01EE7823 */  subu       $t7, $t7, $t6
/* 32028 80031428 000F7880 */  sll        $t7, $t7, 2
/* 3202C 8003142C 01EE7821 */  addu       $t7, $t7, $t6
/* 32030 80031430 000F7880 */  sll        $t7, $t7, 2
/* 32034 80031434 01EE7823 */  subu       $t7, $t7, $t6
/* 32038 80031438 3C18800F */  lui        $t8, %hi(gActors)
/* 3203C 8003143C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 32040 80031440 000F78C0 */  sll        $t7, $t7, 3
/* 32044 80031444 01F81821 */  addu       $v1, $t7, $t8
/* 32048 80031448 946200D0 */  lhu        $v0, 0xd0($v1)
/* 3204C 8003144C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 32050 80031450 AFA40040 */  sw         $a0, 0x40($sp)
/* 32054 80031454 01C02025 */  or         $a0, $t6, $zero
/* 32058 80031458 10400054 */  beqz       $v0, .L800315AC
/* 3205C 8003145C AFBF0014 */   sw        $ra, 0x14($sp)
/* 32060 80031460 8C6200E8 */  lw         $v0, 0xe8($v1)
/* 32064 80031464 3C19800E */  lui        $t9, %hi(D_800E1380)
/* 32068 80031468 27391380 */  addiu      $t9, $t9, %lo(D_800E1380)
/* 3206C 8003146C 13220009 */  beq        $t9, $v0, .L80031494
/* 32070 80031470 00000000 */   nop
/* 32074 80031474 844A0000 */  lh         $t2, ($v0)
/* 32078 80031478 00000000 */  nop
/* 3207C 8003147C 15400005 */  bnez       $t2, .L80031494
/* 32080 80031480 00000000 */   nop
/* 32084 80031484 846B00E6 */  lh         $t3, 0xe6($v1)
/* 32088 80031488 00000000 */  nop
/* 3208C 8003148C 11600010 */  beqz       $t3, .L800314D0
/* 32090 80031490 00000000 */   nop
.L80031494:
/* 32094 80031494 9066009F */  lbu        $a2, 0x9f($v1)
/* 32098 80031498 00000000 */  nop
/* 3209C 8003149C 14C00005 */  bnez       $a2, .L800314B4
/* 320A0 800314A0 00000000 */   nop
/* 320A4 800314A4 8C6C0154 */  lw         $t4, 0x154($v1)
/* 320A8 800314A8 00000000 */  nop
/* 320AC 800314AC 05800008 */  bltz       $t4, .L800314D0
/* 320B0 800314B0 00000000 */   nop
.L800314B4:
/* 320B4 800314B4 C4600148 */  lwc1       $f0, 0x148($v1)
/* 320B8 800314B8 44802000 */  mtc1       $zero, $f4
/* 320BC 800314BC 00000000 */  nop
/* 320C0 800314C0 46002032 */  c.eq.s     $f4, $f0
/* 320C4 800314C4 00000000 */  nop
/* 320C8 800314C8 45000003 */  bc1f       .L800314D8
/* 320CC 800314CC 00000000 */   nop
.L800314D0:
/* 320D0 800314D0 100001F2 */  b          .L80031C9C
/* 320D4 800314D4 AC600080 */   sw        $zero, 0x80($v1)
.L800314D8:
/* 320D8 800314D8 8C62017C */  lw         $v0, 0x17c($v1)
/* 320DC 800314DC 00000000 */  nop
/* 320E0 800314E0 10400008 */  beqz       $v0, .L80031504
/* 320E4 800314E4 00000000 */   nop
/* 320E8 800314E8 0040F809 */  jalr       $v0
/* 320EC 800314EC AFA30020 */   sw        $v1, 0x20($sp)
/* 320F0 800314F0 8FA30020 */  lw         $v1, 0x20($sp)
/* 320F4 800314F4 00000000 */  nop
/* 320F8 800314F8 9066009F */  lbu        $a2, 0x9f($v1)
/* 320FC 800314FC C4600148 */  lwc1       $f0, 0x148($v1)
/* 32100 80031500 00000000 */  nop
.L80031504:
/* 32104 80031504 8C6D0154 */  lw         $t5, 0x154($v1)
/* 32108 80031508 8C6E0164 */  lw         $t6, 0x164($v1)
/* 3210C 8003150C 3C013F80 */  lui        $at, 0x3f80
/* 32110 80031510 44813000 */  mtc1       $at, $f6
/* 32114 80031514 01AE7821 */  addu       $t7, $t5, $t6
/* 32118 80031518 AC6F0154 */  sw         $t7, 0x154($v1)
/* 3211C 8003151C 00062400 */  sll        $a0, $a2, 0x10
/* 32120 80031520 46060201 */  sub.s      $f8, $f0, $f6
/* 32124 80031524 0004C403 */  sra        $t8, $a0, 0x10
/* 32128 80031528 84650156 */  lh         $a1, 0x156($v1)
/* 3212C 8003152C E4680148 */  swc1       $f8, 0x148($v1)
/* 32130 80031530 03002025 */  or         $a0, $t8, $zero
/* 32134 80031534 0C00AB91 */  jal        func_8002AE44
/* 32138 80031538 AFA30020 */   sw        $v1, 0x20($sp)
/* 3213C 8003153C 8FA30020 */  lw         $v1, 0x20($sp)
/* 32140 80031540 305900FF */  andi       $t9, $v0, 0xff
/* 32144 80031544 240100FF */  addiu      $at, $zero, 0xff
/* 32148 80031548 17210003 */  bne        $t9, $at, .L80031558
/* 3214C 8003154C A062009F */   sb        $v0, 0x9f($v1)
/* 32150 80031550 240A00FE */  addiu      $t2, $zero, 0xfe
/* 32154 80031554 A06A009F */  sb         $t2, 0x9f($v1)
.L80031558:
/* 32158 80031558 C46A0110 */  lwc1       $f10, 0x110($v1)
/* 3215C 8003155C C4700118 */  lwc1       $f16, 0x118($v1)
/* 32160 80031560 C4640114 */  lwc1       $f4, 0x114($v1)
/* 32164 80031564 C466011C */  lwc1       $f6, 0x11c($v1)
/* 32168 80031568 46105480 */  add.s      $f18, $f10, $f16
/* 3216C 8003156C C46A00B4 */  lwc1       $f10, 0xb4($v1)
/* 32170 80031570 46062200 */  add.s      $f8, $f4, $f6
/* 32174 80031574 E4720110 */  swc1       $f18, 0x110($v1)
/* 32178 80031578 E4680114 */  swc1       $f8, 0x114($v1)
/* 3217C 8003157C C4700110 */  lwc1       $f16, 0x110($v1)
/* 32180 80031580 C4660114 */  lwc1       $f6, 0x114($v1)
/* 32184 80031584 C46400B8 */  lwc1       $f4, 0xb8($v1)
/* 32188 80031588 8C6B0160 */  lw         $t3, 0x160($v1)
/* 3218C 8003158C 8C6C0150 */  lw         $t4, 0x150($v1)
/* 32190 80031590 46105480 */  add.s      $f18, $f10, $f16
/* 32194 80031594 016C6821 */  addu       $t5, $t3, $t4
/* 32198 80031598 46062200 */  add.s      $f8, $f4, $f6
/* 3219C 8003159C 946200D0 */  lhu        $v0, 0xd0($v1)
/* 321A0 800315A0 E47200B4 */  swc1       $f18, 0xb4($v1)
/* 321A4 800315A4 E46800B8 */  swc1       $f8, 0xb8($v1)
/* 321A8 800315A8 AC6D0160 */  sw         $t5, 0x160($v1)
.L800315AC:
/* 321AC 800315AC 8C6F0160 */  lw         $t7, 0x160($v1)
/* 321B0 800315B0 244E0001 */  addiu      $t6, $v0, 1
/* 321B4 800315B4 A46E00D0 */  sh         $t6, 0xd0($v1)
/* 321B8 800315B8 05E10004 */  bgez       $t7, .L800315CC
/* 321BC 800315BC 000FC403 */   sra       $t8, $t7, 0x10
/* 321C0 800315C0 3401FFFF */  ori        $at, $zero, 0xffff
/* 321C4 800315C4 002F0821 */  addu       $at, $at, $t7
/* 321C8 800315C8 0001C403 */  sra        $t8, $at, 0x10
.L800315CC:
/* 321CC 800315CC 331903FF */  andi       $t9, $t8, 0x3ff
/* 321D0 800315D0 44995000 */  mtc1       $t9, $f10
/* 321D4 800315D4 3C01800F */  lui        $at, %hi(D_800EB930)
/* 321D8 800315D8 46805421 */  cvt.d.w    $f16, $f10
/* 321DC 800315DC C433B930 */  lwc1       $f19, %lo(D_800EB930)($at)
/* 321E0 800315E0 C432B934 */  lwc1       $f18, -0x46cc($at)
/* 321E4 800315E4 8C6A0178 */  lw         $t2, 0x178($v1)
/* 321E8 800315E8 46328102 */  mul.d      $f4, $f16, $f18
/* 321EC 800315EC 3C013F80 */  lui        $at, 0x3f80
/* 321F0 800315F0 462021A0 */  cvt.s.d    $f6, $f4
/* 321F4 800315F4 11400024 */  beqz       $t2, .L80031688
/* 321F8 800315F8 E46600C4 */   swc1      $f6, 0xc4($v1)
/* 321FC 800315FC C4680128 */  lwc1       $f8, 0x128($v1)
/* 32200 80031600 44815000 */  mtc1       $at, $f10
/* 32204 80031604 44802000 */  mtc1       $zero, $f4
/* 32208 80031608 460A4401 */  sub.s      $f16, $f8, $f10
/* 3220C 8003160C E4700128 */  swc1       $f16, 0x128($v1)
/* 32210 80031610 C4720128 */  lwc1       $f18, 0x128($v1)
/* 32214 80031614 00000000 */  nop
/* 32218 80031618 4604903C */  c.lt.s     $f18, $f4
/* 3221C 8003161C 00000000 */  nop
/* 32220 80031620 45000019 */  bc1f       .L80031688
/* 32224 80031624 00000000 */   nop
/* 32228 80031628 8C620178 */  lw         $v0, 0x178($v1)
/* 3222C 8003162C 3C0D800D */  lui        $t5, 0x800d
/* 32230 80031630 84440000 */  lh         $a0, ($v0)
/* 32234 80031634 00000000 */  nop
/* 32238 80031638 10800012 */  beqz       $a0, .L80031684
/* 3223C 8003163C 00000000 */   nop
/* 32240 80031640 04810004 */  bgez       $a0, .L80031654
/* 32244 80031644 00045840 */   sll       $t3, $a0, 1
/* 32248 80031648 004B1021 */  addu       $v0, $v0, $t3
/* 3224C 8003164C 84440000 */  lh         $a0, ($v0)
/* 32250 80031650 00000000 */  nop
.L80031654:
/* 32254 80031654 00046080 */  sll        $t4, $a0, 2
/* 32258 80031658 01AC6821 */  addu       $t5, $t5, $t4
/* 3225C 8003165C 8DAD1810 */  lw         $t5, 0x1810($t5)
/* 32260 80031660 24420004 */  addiu      $v0, $v0, 4
/* 32264 80031664 AC6D018C */  sw         $t5, 0x18c($v1)
/* 32268 80031668 844EFFFE */  lh         $t6, -2($v0)
/* 3226C 8003166C AC620178 */  sw         $v0, 0x178($v1)
/* 32270 80031670 448E3000 */  mtc1       $t6, $f6
/* 32274 80031674 00000000 */  nop
/* 32278 80031678 46803220 */  cvt.s.w    $f8, $f6
/* 3227C 8003167C 10000002 */  b          .L80031688
/* 32280 80031680 E4680128 */   swc1      $f8, 0x128($v1)
.L80031684:
/* 32284 80031684 AC600178 */  sw         $zero, 0x178($v1)
.L80031688:
/* 32288 80031688 8C6F0158 */  lw         $t7, 0x158($v1)
/* 3228C 8003168C 8C780168 */  lw         $t8, 0x168($v1)
/* 32290 80031690 8C6A015C */  lw         $t2, 0x15c($v1)
/* 32294 80031694 8C6B016C */  lw         $t3, 0x16c($v1)
/* 32298 80031698 01F8C821 */  addu       $t9, $t7, $t8
/* 3229C 8003169C 014B6021 */  addu       $t4, $t2, $t3
/* 322A0 800316A0 8C7800F0 */  lw         $t8, 0xf0($v1)
/* 322A4 800316A4 8C6D00EC */  lw         $t5, 0xec($v1)
/* 322A8 800316A8 C4600130 */  lwc1       $f0, 0x130($v1)
/* 322AC 800316AC 44805000 */  mtc1       $zero, $f10
/* 322B0 800316B0 AC6C015C */  sw         $t4, 0x15c($v1)
/* 322B4 800316B4 030C5021 */  addu       $t2, $t8, $t4
/* 322B8 800316B8 8C6C0174 */  lw         $t4, 0x174($v1)
/* 322BC 800316BC 8C6B00F4 */  lw         $t3, 0xf4($v1)
/* 322C0 800316C0 4600503E */  c.le.s     $f10, $f0
/* 322C4 800316C4 01B97821 */  addu       $t7, $t5, $t9
/* 322C8 800316C8 016C6821 */  addu       $t5, $t3, $t4
/* 322CC 800316CC AC790158 */  sw         $t9, 0x158($v1)
/* 322D0 800316D0 AC6F00EC */  sw         $t7, 0xec($v1)
/* 322D4 800316D4 AC6A00F0 */  sw         $t2, 0xf0($v1)
/* 322D8 800316D8 450000F2 */  bc1f       .L80031AA4
/* 322DC 800316DC AC6D00F4 */   sw        $t5, 0xf4($v1)
/* 322E0 800316E0 444EF800 */  cfc1       $t6, $31
/* 322E4 800316E4 24020001 */  addiu      $v0, $zero, 1
/* 322E8 800316E8 44C2F800 */  ctc1       $v0, $31
/* 322EC 800316EC 3C19800F */  lui        $t9, %hi(gActors)
/* 322F0 800316F0 46000424 */  cvt.w.s    $f16, $f0
/* 322F4 800316F4 3C014F00 */  lui        $at, 0x4f00
/* 322F8 800316F8 4442F800 */  cfc1       $v0, $31
/* 322FC 800316FC 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 32300 80031700 30420078 */  andi       $v0, $v0, 0x78
/* 32304 80031704 10400012 */  beqz       $v0, .L80031750
/* 32308 80031708 00000000 */   nop
/* 3230C 8003170C 44818000 */  mtc1       $at, $f16
/* 32310 80031710 24020001 */  addiu      $v0, $zero, 1
/* 32314 80031714 46100401 */  sub.s      $f16, $f0, $f16
/* 32318 80031718 3C018000 */  lui        $at, 0x8000
/* 3231C 8003171C 44C2F800 */  ctc1       $v0, $31
/* 32320 80031720 00000000 */  nop
/* 32324 80031724 46008424 */  cvt.w.s    $f16, $f16
/* 32328 80031728 4442F800 */  cfc1       $v0, $31
/* 3232C 8003172C 00000000 */  nop
/* 32330 80031730 30420078 */  andi       $v0, $v0, 0x78
/* 32334 80031734 14400004 */  bnez       $v0, .L80031748
/* 32338 80031738 00000000 */   nop
/* 3233C 8003173C 44028000 */  mfc1       $v0, $f16
/* 32340 80031740 10000007 */  b          .L80031760
/* 32344 80031744 00411025 */   or        $v0, $v0, $at
.L80031748:
/* 32348 80031748 10000005 */  b          .L80031760
/* 3234C 8003174C 2402FFFF */   addiu     $v0, $zero, -1
.L80031750:
/* 32350 80031750 44028000 */  mfc1       $v0, $f16
/* 32354 80031754 00000000 */  nop
/* 32358 80031758 0440FFFB */  bltz       $v0, .L80031748
/* 3235C 8003175C 00000000 */   nop
.L80031760:
/* 32360 80031760 304FFFFF */  andi       $t7, $v0, 0xffff
/* 32364 80031764 000FC080 */  sll        $t8, $t7, 2
/* 32368 80031768 030FC023 */  subu       $t8, $t8, $t7
/* 3236C 8003176C 0018C080 */  sll        $t8, $t8, 2
/* 32370 80031770 030FC021 */  addu       $t8, $t8, $t7
/* 32374 80031774 0018C080 */  sll        $t8, $t8, 2
/* 32378 80031778 030FC023 */  subu       $t8, $t8, $t7
/* 3237C 8003177C 0018C0C0 */  sll        $t8, $t8, 3
/* 32380 80031780 03193821 */  addu       $a3, $t8, $t9
/* 32384 80031784 8CEA0080 */  lw         $t2, 0x80($a3)
/* 32388 80031788 44CEF800 */  ctc1       $t6, $31
/* 3238C 8003178C 314B0002 */  andi       $t3, $t2, 2
/* 32390 80031790 116000C2 */  beqz       $t3, .L80031A9C
/* 32394 80031794 00000000 */   nop
/* 32398 80031798 94EC00D2 */  lhu        $t4, 0xd2($a3)
/* 3239C 8003179C 3C014F80 */  lui        $at, 0x4f80
/* 323A0 800317A0 448C9000 */  mtc1       $t4, $f18
/* 323A4 800317A4 05810004 */  bgez       $t4, .L800317B8
/* 323A8 800317A8 46809120 */   cvt.s.w   $f4, $f18
/* 323AC 800317AC 44813000 */  mtc1       $at, $f6
/* 323B0 800317B0 00000000 */  nop
/* 323B4 800317B4 46062100 */  add.s      $f4, $f4, $f6
.L800317B8:
/* 323B8 800317B8 C468014C */  lwc1       $f8, 0x14c($v1)
/* 323BC 800317BC 00000000 */  nop
/* 323C0 800317C0 46082032 */  c.eq.s     $f4, $f8
/* 323C4 800317C4 00000000 */  nop
/* 323C8 800317C8 450000B4 */  bc1f       .L80031A9C
/* 323CC 800317CC 00000000 */   nop
/* 323D0 800317D0 8C6D0080 */  lw         $t5, 0x80($v1)
/* 323D4 800317D4 00000000 */  nop
/* 323D8 800317D8 31AE8000 */  andi       $t6, $t5, 0x8000
/* 323DC 800317DC 11C00080 */  beqz       $t6, .L800319E0
/* 323E0 800317E0 00000000 */   nop
/* 323E4 800317E4 C46A00B4 */  lwc1       $f10, 0xb4($v1)
/* 323E8 800317E8 C4700140 */  lwc1       $f16, 0x140($v1)
/* 323EC 800317EC C47200B8 */  lwc1       $f18, 0xb8($v1)
/* 323F0 800317F0 46105082 */  mul.s      $f2, $f10, $f16
/* 323F4 800317F4 C4660144 */  lwc1       $f6, 0x144($v1)
/* 323F8 800317F8 AFA30020 */  sw         $v1, 0x20($sp)
/* 323FC 800317FC AFA70018 */  sw         $a3, 0x18($sp)
/* 32400 80031800 46069382 */  mul.s      $f14, $f18, $f6
/* 32404 80031804 E7A20038 */  swc1       $f2, 0x38($sp)
/* 32408 80031808 46021102 */  mul.s      $f4, $f2, $f2
/* 3240C 8003180C E7AE0034 */  swc1       $f14, 0x34($sp)
/* 32410 80031810 460E7202 */  mul.s      $f8, $f14, $f14
/* 32414 80031814 0C0295C4 */  jal        func_800A5710
/* 32418 80031818 46082300 */   add.s     $f12, $f4, $f8
/* 3241C 8003181C 3C014780 */  lui        $at, 0x4780
/* 32420 80031820 44815000 */  mtc1       $at, $f10
/* 32424 80031824 C7A20038 */  lwc1       $f2, 0x38($sp)
/* 32428 80031828 460A0402 */  mul.s      $f16, $f0, $f10
/* 3242C 8003182C C7AE0034 */  lwc1       $f14, 0x34($sp)
/* 32430 80031830 444FF800 */  cfc1       $t7, $31
/* 32434 80031834 00000000 */  nop
/* 32438 80031838 35E10003 */  ori        $at, $t7, 3
/* 3243C 8003183C 38210002 */  xori       $at, $at, 2
/* 32440 80031840 44C1F800 */  ctc1       $at, $31
/* 32444 80031844 00000000 */  nop
/* 32448 80031848 460084A4 */  cvt.w.s    $f18, $f16
/* 3244C 8003184C 44CFF800 */  ctc1       $t7, $31
/* 32450 80031850 44189000 */  mfc1       $t8, $f18
/* 32454 80031854 00000000 */  nop
/* 32458 80031858 4459F800 */  cfc1       $t9, $31
/* 3245C 8003185C AFB80028 */  sw         $t8, 0x28($sp)
/* 32460 80031860 37210003 */  ori        $at, $t9, 3
/* 32464 80031864 38210002 */  xori       $at, $at, 2
/* 32468 80031868 44C1F800 */  ctc1       $at, $31
/* 3246C 8003186C 00000000 */  nop
/* 32470 80031870 460011A4 */  cvt.w.s    $f6, $f2
/* 32474 80031874 44D9F800 */  ctc1       $t9, $31
/* 32478 80031878 44043000 */  mfc1       $a0, $f6
/* 3247C 8003187C 00000000 */  nop
/* 32480 80031880 444AF800 */  cfc1       $t2, $31
/* 32484 80031884 00000000 */  nop
/* 32488 80031888 35410003 */  ori        $at, $t2, 3
/* 3248C 8003188C 38210002 */  xori       $at, $at, 2
/* 32490 80031890 44C1F800 */  ctc1       $at, $31
/* 32494 80031894 00000000 */  nop
/* 32498 80031898 46007124 */  cvt.w.s    $f4, $f14
/* 3249C 8003189C 44052000 */  mfc1       $a1, $f4
/* 324A0 800318A0 44CAF800 */  ctc1       $t2, $31
/* 324A4 800318A4 0C00A538 */  jal        func_800294E0
/* 324A8 800318A8 00000000 */   nop
/* 324AC 800318AC 8FA30020 */  lw         $v1, 0x20($sp)
/* 324B0 800318B0 8FAF0028 */  lw         $t7, 0x28($sp)
/* 324B4 800318B4 8C6B0160 */  lw         $t3, 0x160($v1)
/* 324B8 800318B8 448F4000 */  mtc1       $t7, $f8
/* 324BC 800318BC 3C09800C */  lui        $t1, %hi(D_800BCCD0)
/* 324C0 800318C0 2529CCD0 */  addiu      $t1, $t1, %lo(D_800BCCD0)
/* 324C4 800318C4 46804020 */  cvt.s.w    $f0, $f8
/* 324C8 800318C8 8FA70018 */  lw         $a3, 0x18($sp)
/* 324CC 800318CC 05610004 */  bgez       $t3, .L800318E0
/* 324D0 800318D0 000B6403 */   sra       $t4, $t3, 0x10
/* 324D4 800318D4 3401FFFF */  ori        $at, $zero, 0xffff
/* 324D8 800318D8 002B0821 */  addu       $at, $at, $t3
/* 324DC 800318DC 00016403 */  sra        $t4, $at, 0x10
.L800318E0:
/* 324E0 800318E0 01827021 */  addu       $t6, $t4, $v0
/* 324E4 800318E4 31D803FF */  andi       $t8, $t6, 0x3ff
/* 324E8 800318E8 0018C880 */  sll        $t9, $t8, 2
/* 324EC 800318EC 01395021 */  addu       $t2, $t1, $t9
/* 324F0 800318F0 C54A0000 */  lwc1       $f10, ($t2)
/* 324F4 800318F4 25CCFF00 */  addiu      $t4, $t6, -0x100
/* 324F8 800318F8 46005402 */  mul.s      $f16, $f10, $f0
/* 324FC 800318FC 318D03FF */  andi       $t5, $t4, 0x3ff
/* 32500 80031900 000D7080 */  sll        $t6, $t5, 2
/* 32504 80031904 012E7821 */  addu       $t7, $t1, $t6
/* 32508 80031908 444BF800 */  cfc1       $t3, $31
/* 3250C 8003190C C5E60000 */  lwc1       $f6, ($t7)
/* 32510 80031910 35610003 */  ori        $at, $t3, 3
/* 32514 80031914 38210002 */  xori       $at, $at, 2
/* 32518 80031918 44C1F800 */  ctc1       $at, $31
/* 3251C 8003191C C46A0134 */  lwc1       $f10, 0x134($v1)
/* 32520 80031920 460084A4 */  cvt.w.s    $f18, $f16
/* 32524 80031924 8C6F00F0 */  lw         $t7, 0xf0($v1)
/* 32528 80031928 44CBF800 */  ctc1       $t3, $31
/* 3252C 8003192C 44059000 */  mfc1       $a1, $f18
/* 32530 80031930 46003102 */  mul.s      $f4, $f6, $f0
/* 32534 80031934 AC650088 */  sw         $a1, 0x88($v1)
/* 32538 80031938 8C6B00EC */  lw         $t3, 0xec($v1)
/* 3253C 8003193C C4720138 */  lwc1       $f18, 0x138($v1)
/* 32540 80031940 4458F800 */  cfc1       $t8, $31
/* 32544 80031944 00000000 */  nop
/* 32548 80031948 37010003 */  ori        $at, $t8, 3
/* 3254C 8003194C 38210002 */  xori       $at, $at, 2
/* 32550 80031950 44C1F800 */  ctc1       $at, $31
/* 32554 80031954 00000000 */  nop
/* 32558 80031958 46002224 */  cvt.w.s    $f8, $f4
/* 3255C 8003195C 44064000 */  mfc1       $a2, $f8
/* 32560 80031960 44D8F800 */  ctc1       $t8, $31
/* 32564 80031964 AC66008C */  sw         $a2, 0x8c($v1)
/* 32568 80031968 8CF90088 */  lw         $t9, 0x88($a3)
/* 3256C 8003196C 00000000 */  nop
/* 32570 80031970 00B95021 */  addu       $t2, $a1, $t9
/* 32574 80031974 014B6021 */  addu       $t4, $t2, $t3
/* 32578 80031978 444AF800 */  cfc1       $t2, $31
/* 3257C 8003197C AC6C0088 */  sw         $t4, 0x88($v1)
/* 32580 80031980 35410003 */  ori        $at, $t2, 3
/* 32584 80031984 38210002 */  xori       $at, $at, 2
/* 32588 80031988 44C1F800 */  ctc1       $at, $31
/* 3258C 8003198C 8CED008C */  lw         $t5, 0x8c($a3)
/* 32590 80031990 46005424 */  cvt.w.s    $f16, $f10
/* 32594 80031994 00CD7021 */  addu       $t6, $a2, $t5
/* 32598 80031998 44CAF800 */  ctc1       $t2, $31
/* 3259C 8003199C 01CFC021 */  addu       $t8, $t6, $t7
/* 325A0 800319A0 AC78008C */  sw         $t8, 0x8c($v1)
/* 325A4 800319A4 4458F800 */  cfc1       $t8, $31
/* 325A8 800319A8 440D8000 */  mfc1       $t5, $f16
/* 325AC 800319AC 37010003 */  ori        $at, $t8, 3
/* 325B0 800319B0 38210002 */  xori       $at, $at, 2
/* 325B4 800319B4 44C1F800 */  ctc1       $at, $31
/* 325B8 800319B8 84790088 */  lh         $t9, 0x88($v1)
/* 325BC 800319BC 460091A4 */  cvt.w.s    $f6, $f18
/* 325C0 800319C0 846F008C */  lh         $t7, 0x8c($v1)
/* 325C4 800319C4 440C3000 */  mfc1       $t4, $f6
/* 325C8 800319C8 032D7021 */  addu       $t6, $t9, $t5
/* 325CC 800319CC 44D8F800 */  ctc1       $t8, $31
/* 325D0 800319D0 01ECC821 */  addu       $t9, $t7, $t4
/* 325D4 800319D4 A46E0088 */  sh         $t6, 0x88($v1)
/* 325D8 800319D8 1000001F */  b          .L80031A58
/* 325DC 800319DC A479008C */   sh        $t9, 0x8c($v1)
.L800319E0:
/* 325E0 800319E0 4459F800 */  cfc1       $t9, $31
/* 325E4 800319E4 8C6D00EC */  lw         $t5, 0xec($v1)
/* 325E8 800319E8 37210003 */  ori        $at, $t9, 3
/* 325EC 800319EC 8CEE0088 */  lw         $t6, 0x88($a3)
/* 325F0 800319F0 38210002 */  xori       $at, $at, 2
/* 325F4 800319F4 44C1F800 */  ctc1       $at, $31
/* 325F8 800319F8 C4640134 */  lwc1       $f4, 0x134($v1)
/* 325FC 800319FC 01AEC021 */  addu       $t8, $t5, $t6
/* 32600 80031A00 46002224 */  cvt.w.s    $f8, $f4
/* 32604 80031A04 AC780088 */  sw         $t8, 0x88($v1)
/* 32608 80031A08 8CEB008C */  lw         $t3, 0x8c($a3)
/* 3260C 80031A0C 8C6A00F0 */  lw         $t2, 0xf0($v1)
/* 32610 80031A10 44D9F800 */  ctc1       $t9, $31
/* 32614 80031A14 014B7821 */  addu       $t7, $t2, $t3
/* 32618 80031A18 AC6F008C */  sw         $t7, 0x8c($v1)
/* 3261C 80031A1C 444FF800 */  cfc1       $t7, $31
/* 32620 80031A20 C46A0138 */  lwc1       $f10, 0x138($v1)
/* 32624 80031A24 35E10003 */  ori        $at, $t7, 3
/* 32628 80031A28 38210002 */  xori       $at, $at, 2
/* 3262C 80031A2C 44C1F800 */  ctc1       $at, $31
/* 32630 80031A30 846C0088 */  lh         $t4, 0x88($v1)
/* 32634 80031A34 46005424 */  cvt.w.s    $f16, $f10
/* 32638 80031A38 44184000 */  mfc1       $t8, $f8
/* 3263C 80031A3C 440E8000 */  mfc1       $t6, $f16
/* 32640 80031A40 846B008C */  lh         $t3, 0x8c($v1)
/* 32644 80031A44 01985021 */  addu       $t2, $t4, $t8
/* 32648 80031A48 44CFF800 */  ctc1       $t7, $31
/* 3264C 80031A4C 016E6021 */  addu       $t4, $t3, $t6
/* 32650 80031A50 A46A0088 */  sh         $t2, 0x88($v1)
/* 32654 80031A54 A46C008C */  sh         $t4, 0x8c($v1)
.L80031A58:
/* 32658 80031A58 8CF80090 */  lw         $t8, 0x90($a3)
/* 3265C 80031A5C C472013C */  lwc1       $f18, 0x13c($v1)
/* 32660 80031A60 44983000 */  mtc1       $t8, $f6
/* 32664 80031A64 00000000 */  nop
/* 32668 80031A68 46803120 */  cvt.s.w    $f4, $f6
/* 3266C 80031A6C 46049200 */  add.s      $f8, $f18, $f4
/* 32670 80031A70 444AF800 */  cfc1       $t2, $31
/* 32674 80031A74 00000000 */  nop
/* 32678 80031A78 35410003 */  ori        $at, $t2, 3
/* 3267C 80031A7C 38210002 */  xori       $at, $at, 2
/* 32680 80031A80 44C1F800 */  ctc1       $at, $31
/* 32684 80031A84 00000000 */  nop
/* 32688 80031A88 460042A4 */  cvt.w.s    $f10, $f8
/* 3268C 80031A8C 440F5000 */  mfc1       $t7, $f10
/* 32690 80031A90 44CAF800 */  ctc1       $t2, $31
/* 32694 80031A94 10000081 */  b          .L80031C9C
/* 32698 80031A98 AC6F0090 */   sw        $t7, 0x90($v1)
.L80031A9C:
/* 3269C 80031A9C 1000007F */  b          .L80031C9C
/* 326A0 80031AA0 AC600080 */   sw        $zero, 0x80($v1)
.L80031AA4:
/* 326A4 80031AA4 8C790080 */  lw         $t9, 0x80($v1)
/* 326A8 80031AA8 3C18800C */  lui        $t8, 0x800c
/* 326AC 80031AAC 332D8000 */  andi       $t5, $t9, 0x8000
/* 326B0 80031AB0 11A0007A */  beqz       $t5, .L80031C9C
/* 326B4 80031AB4 3C0A800C */   lui       $t2, %hi(D_800BE558)
/* 326B8 80031AB8 C47000B4 */  lwc1       $f16, 0xb4($v1)
/* 326BC 80031ABC C4660140 */  lwc1       $f6, 0x140($v1)
/* 326C0 80031AC0 8718E560 */  lh         $t8, -0x1aa0($t8)
/* 326C4 80031AC4 46068082 */  mul.s      $f2, $f16, $f6
/* 326C8 80031AC8 854AE558 */  lh         $t2, %lo(D_800BE558)($t2)
/* 326CC 80031ACC 8C6B0184 */  lw         $t3, 0x184($v1)
/* 326D0 80031AD0 8C6E00EC */  lw         $t6, 0xec($v1)
/* 326D4 80031AD4 C47200B8 */  lwc1       $f18, 0xb8($v1)
/* 326D8 80031AD8 C4640144 */  lwc1       $f4, 0x144($v1)
/* 326DC 80031ADC 030A7823 */  subu       $t7, $t8, $t2
/* 326E0 80031AE0 46049382 */  mul.s      $f14, $f18, $f4
/* 326E4 80031AE4 000FCC00 */  sll        $t9, $t7, 0x10
/* 326E8 80031AE8 016E6021 */  addu       $t4, $t3, $t6
/* 326EC 80031AEC 01996821 */  addu       $t5, $t4, $t9
/* 326F0 80031AF0 AC6D0184 */  sw         $t5, 0x184($v1)
/* 326F4 80031AF4 46021202 */  mul.s      $f8, $f2, $f2
/* 326F8 80031AF8 3C0F800C */  lui        $t7, %hi(D_800BE55C)
/* 326FC 80031AFC 3C0A800C */  lui        $t2, %hi(D_800BE564)
/* 32700 80031B00 854AE564 */  lh         $t2, %lo(D_800BE564)($t2)
/* 32704 80031B04 85EFE55C */  lh         $t7, %lo(D_800BE55C)($t7)
/* 32708 80031B08 8C6E00F0 */  lw         $t6, 0xf0($v1)
/* 3270C 80031B0C 8C6B0188 */  lw         $t3, 0x188($v1)
/* 32710 80031B10 460E7282 */  mul.s      $f10, $f14, $f14
/* 32714 80031B14 014F6023 */  subu       $t4, $t2, $t7
/* 32718 80031B18 000CCC00 */  sll        $t9, $t4, 0x10
/* 3271C 80031B1C 016EC021 */  addu       $t8, $t3, $t6
/* 32720 80031B20 03196821 */  addu       $t5, $t8, $t9
/* 32724 80031B24 AC6D0188 */  sw         $t5, 0x188($v1)
/* 32728 80031B28 460A4300 */  add.s      $f12, $f8, $f10
/* 3272C 80031B2C E7AE0034 */  swc1       $f14, 0x34($sp)
/* 32730 80031B30 E7A20038 */  swc1       $f2, 0x38($sp)
/* 32734 80031B34 0C0295C4 */  jal        func_800A5710
/* 32738 80031B38 AFA30020 */   sw        $v1, 0x20($sp)
/* 3273C 80031B3C 3C014780 */  lui        $at, 0x4780
/* 32740 80031B40 44818000 */  mtc1       $at, $f16
/* 32744 80031B44 C7A20038 */  lwc1       $f2, 0x38($sp)
/* 32748 80031B48 46100182 */  mul.s      $f6, $f0, $f16
/* 3274C 80031B4C C7AE0034 */  lwc1       $f14, 0x34($sp)
/* 32750 80031B50 444BF800 */  cfc1       $t3, $31
/* 32754 80031B54 00000000 */  nop
/* 32758 80031B58 35610003 */  ori        $at, $t3, 3
/* 3275C 80031B5C 38210002 */  xori       $at, $at, 2
/* 32760 80031B60 44C1F800 */  ctc1       $at, $31
/* 32764 80031B64 00000000 */  nop
/* 32768 80031B68 460034A4 */  cvt.w.s    $f18, $f6
/* 3276C 80031B6C 44CBF800 */  ctc1       $t3, $31
/* 32770 80031B70 440E9000 */  mfc1       $t6, $f18
/* 32774 80031B74 00000000 */  nop
/* 32778 80031B78 444AF800 */  cfc1       $t2, $31
/* 3277C 80031B7C AFAE0028 */  sw         $t6, 0x28($sp)
/* 32780 80031B80 35410003 */  ori        $at, $t2, 3
/* 32784 80031B84 38210002 */  xori       $at, $at, 2
/* 32788 80031B88 44C1F800 */  ctc1       $at, $31
/* 3278C 80031B8C 00000000 */  nop
/* 32790 80031B90 46001124 */  cvt.w.s    $f4, $f2
/* 32794 80031B94 44CAF800 */  ctc1       $t2, $31
/* 32798 80031B98 44042000 */  mfc1       $a0, $f4
/* 3279C 80031B9C 00000000 */  nop
/* 327A0 80031BA0 444FF800 */  cfc1       $t7, $31
/* 327A4 80031BA4 00000000 */  nop
/* 327A8 80031BA8 35E10003 */  ori        $at, $t7, 3
/* 327AC 80031BAC 38210002 */  xori       $at, $at, 2
/* 327B0 80031BB0 44C1F800 */  ctc1       $at, $31
/* 327B4 80031BB4 00000000 */  nop
/* 327B8 80031BB8 46007224 */  cvt.w.s    $f8, $f14
/* 327BC 80031BBC 44054000 */  mfc1       $a1, $f8
/* 327C0 80031BC0 44CFF800 */  ctc1       $t7, $31
/* 327C4 80031BC4 0C00A538 */  jal        func_800294E0
/* 327C8 80031BC8 00000000 */   nop
/* 327CC 80031BCC 8FA30020 */  lw         $v1, 0x20($sp)
/* 327D0 80031BD0 8FAB0028 */  lw         $t3, 0x28($sp)
/* 327D4 80031BD4 8C6C0160 */  lw         $t4, 0x160($v1)
/* 327D8 80031BD8 448B5000 */  mtc1       $t3, $f10
/* 327DC 80031BDC 3C09800C */  lui        $t1, %hi(D_800BCCD0)
/* 327E0 80031BE0 2529CCD0 */  addiu      $t1, $t1, %lo(D_800BCCD0)
/* 327E4 80031BE4 05810004 */  bgez       $t4, .L80031BF8
/* 327E8 80031BE8 000CC403 */   sra       $t8, $t4, 0x10
/* 327EC 80031BEC 3401FFFF */  ori        $at, $zero, 0xffff
/* 327F0 80031BF0 002C0821 */  addu       $at, $at, $t4
/* 327F4 80031BF4 0001C403 */  sra        $t8, $at, 0x10
.L80031BF8:
/* 327F8 80031BF8 03026821 */  addu       $t5, $t8, $v0
/* 327FC 80031BFC 31AE03FF */  andi       $t6, $t5, 0x3ff
/* 32800 80031C00 000E5080 */  sll        $t2, $t6, 2
/* 32804 80031C04 46805020 */  cvt.s.w    $f0, $f10
/* 32808 80031C08 8C6C0184 */  lw         $t4, 0x184($v1)
/* 3280C 80031C0C 012A7821 */  addu       $t7, $t1, $t2
/* 32810 80031C10 C5F00000 */  lwc1       $f16, ($t7)
/* 32814 80031C14 448C9000 */  mtc1       $t4, $f18
/* 32818 80031C18 46008182 */  mul.s      $f6, $f16, $f0
/* 3281C 80031C1C 25ADFF00 */  addiu      $t5, $t5, -0x100
/* 32820 80031C20 31AB03FF */  andi       $t3, $t5, 0x3ff
/* 32824 80031C24 000B7080 */  sll        $t6, $t3, 2
/* 32828 80031C28 46809120 */  cvt.s.w    $f4, $f18
/* 3282C 80031C2C 8C6F0188 */  lw         $t7, 0x188($v1)
/* 32830 80031C30 012E5021 */  addu       $t2, $t1, $t6
/* 32834 80031C34 46043200 */  add.s      $f8, $f6, $f4
/* 32838 80031C38 C5500000 */  lwc1       $f16, ($t2)
/* 3283C 80031C3C 4458F800 */  cfc1       $t8, $31
/* 32840 80031C40 448F3000 */  mtc1       $t7, $f6
/* 32844 80031C44 37010003 */  ori        $at, $t8, 3
/* 32848 80031C48 38210002 */  xori       $at, $at, 2
/* 3284C 80031C4C 44C1F800 */  ctc1       $at, $31
/* 32850 80031C50 00000000 */  nop
/* 32854 80031C54 460042A4 */  cvt.w.s    $f10, $f8
/* 32858 80031C58 44D8F800 */  ctc1       $t8, $31
/* 3285C 80031C5C 44195000 */  mfc1       $t9, $f10
/* 32860 80031C60 46008482 */  mul.s      $f18, $f16, $f0
/* 32864 80031C64 AC790088 */  sw         $t9, 0x88($v1)
/* 32868 80031C68 46803120 */  cvt.s.w    $f4, $f6
/* 3286C 80031C6C 46049200 */  add.s      $f8, $f18, $f4
/* 32870 80031C70 444CF800 */  cfc1       $t4, $31
/* 32874 80031C74 00000000 */  nop
/* 32878 80031C78 35810003 */  ori        $at, $t4, 3
/* 3287C 80031C7C 38210002 */  xori       $at, $at, 2
/* 32880 80031C80 44C1F800 */  ctc1       $at, $31
/* 32884 80031C84 00000000 */  nop
/* 32888 80031C88 460042A4 */  cvt.w.s    $f10, $f8
/* 3288C 80031C8C 44185000 */  mfc1       $t8, $f10
/* 32890 80031C90 44CCF800 */  ctc1       $t4, $31
/* 32894 80031C94 AC78008C */  sw         $t8, 0x8c($v1)
/* 32898 80031C98 00000000 */  nop
.L80031C9C:
/* 3289C 80031C9C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 328A0 80031CA0 27BD0040 */  addiu      $sp, $sp, 0x40
/* 328A4 80031CA4 03E00008 */  jr         $ra
/* 328A8 80031CA8 00000000 */   nop