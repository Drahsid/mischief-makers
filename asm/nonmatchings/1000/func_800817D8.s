glabel func_800817D8
/* 823D8 800817D8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 823DC 800817DC 000E5880 */  sll        $t3, $t6, 2
/* 823E0 800817E0 016E5823 */  subu       $t3, $t3, $t6
/* 823E4 800817E4 000B5880 */  sll        $t3, $t3, 2
/* 823E8 800817E8 016E5821 */  addu       $t3, $t3, $t6
/* 823EC 800817EC 000B5880 */  sll        $t3, $t3, 2
/* 823F0 800817F0 3C03800F */  lui        $v1, %hi(gActors)
/* 823F4 800817F4 016E5823 */  subu       $t3, $t3, $t6
/* 823F8 800817F8 2463F510 */  addiu      $v1, $v1, %lo(gActors)
/* 823FC 800817FC 000B58C0 */  sll        $t3, $t3, 3
/* 82400 80081800 006B6021 */  addu       $t4, $v1, $t3
/* 82404 80081804 8D8D0168 */  lw         $t5, 0x168($t4)
/* 82408 80081808 3C01800F */  lui        $at, %hi(D_800ED028)
/* 8240C 8008180C 448D2000 */  mtc1       $t5, $f4
/* 82410 80081810 C428D028 */  lwc1       $f8, %lo(D_800ED028)($at)
/* 82414 80081814 468021A0 */  cvt.s.w    $f6, $f4
/* 82418 80081818 0006C400 */  sll        $t8, $a2, 0x10
/* 8241C 8008181C 0018CC03 */  sra        $t9, $t8, 0x10
/* 82420 80081820 46083283 */  div.s      $f10, $f6, $f8
/* 82424 80081824 AFA60008 */  sw         $a2, 8($sp)
/* 82428 80081828 03203025 */  or         $a2, $t9, $zero
/* 8242C 8008182C 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 82430 80081830 000E4080 */  sll        $t0, $t6, 2
/* 82434 80081834 44868000 */  mtc1       $a2, $f16
/* 82438 80081838 010E4023 */  subu       $t0, $t0, $t6
/* 8243C 8008183C 000F5080 */  sll        $t2, $t7, 2
/* 82440 80081840 014F5023 */  subu       $t2, $t2, $t7
/* 82444 80081844 00084080 */  sll        $t0, $t0, 2
/* 82448 80081848 010E4021 */  addu       $t0, $t0, $t6
/* 8244C 8008184C 000A5080 */  sll        $t2, $t2, 2
/* 82450 80081850 468084A0 */  cvt.s.w    $f18, $f16
/* 82454 80081854 014F5021 */  addu       $t2, $t2, $t7
/* 82458 80081858 00084080 */  sll        $t0, $t0, 2
/* 8245C 8008185C 010E4023 */  subu       $t0, $t0, $t6
/* 82460 80081860 000A5080 */  sll        $t2, $t2, 2
/* 82464 80081864 46125103 */  div.s      $f4, $f10, $f18
/* 82468 80081868 014F5023 */  subu       $t2, $t2, $t7
/* 8246C 8008186C 000840C0 */  sll        $t0, $t0, 3
/* 82470 80081870 AFA40000 */  sw         $a0, ($sp)
/* 82474 80081874 00684821 */  addu       $t1, $v1, $t0
/* 82478 80081878 000A50C0 */  sll        $t2, $t2, 3
/* 8247C 8008187C 01C02025 */  or         $a0, $t6, $zero
/* 82480 80081880 012A1021 */  addu       $v0, $t1, $t2
/* 82484 80081884 8C4E0154 */  lw         $t6, 0x154($v0)
/* 82488 80081888 AFA50004 */  sw         $a1, 4($sp)
/* 8248C 8008188C 01E02825 */  or         $a1, $t7, $zero
/* 82490 80081890 05C10004 */  bgez       $t6, .L800818A4
/* 82494 80081894 000E7C03 */   sra       $t7, $t6, 0x10
/* 82498 80081898 3401FFFF */  ori        $at, $zero, 0xffff
/* 8249C 8008189C 002E0821 */  addu       $at, $at, $t6
/* 824A0 800818A0 00017C03 */  sra        $t7, $at, 0x10
.L800818A4:
/* 824A4 800818A4 01E6C021 */  addu       $t8, $t7, $a2
/* 824A8 800818A8 44983000 */  mtc1       $t8, $f6
/* 824AC 800818AC 00000000 */  nop
/* 824B0 800818B0 46803220 */  cvt.s.w    $f8, $f6
/* 824B4 800818B4 46044402 */  mul.s      $f16, $f8, $f4
/* 824B8 800818B8 03E00008 */  jr         $ra
/* 824BC 800818BC E45000B4 */   swc1      $f16, 0xb4($v0)
