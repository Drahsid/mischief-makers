glabel func_8008A6E4
/* 8B2E4 8008A6E4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8B2E8 8008A6E8 AFA40020 */  sw         $a0, 0x20($sp)
/* 8B2EC 8008A6EC 97AE0022 */  lhu        $t6, 0x22($sp)
/* 8B2F0 8008A6F0 3C05800F */  lui        $a1, 0x800f
/* 8B2F4 8008A6F4 000E7880 */  sll        $t7, $t6, 2
/* 8B2F8 8008A6F8 01EE7823 */  subu       $t7, $t7, $t6
/* 8B2FC 8008A6FC 000F7880 */  sll        $t7, $t7, 2
/* 8B300 8008A700 01EE7821 */  addu       $t7, $t7, $t6
/* 8B304 8008A704 000F7880 */  sll        $t7, $t7, 2
/* 8B308 8008A708 01EE7823 */  subu       $t7, $t7, $t6
/* 8B30C 8008A70C 24A5F510 */  addiu      $a1, $a1, -0xaf0
/* 8B310 8008A710 000F78C0 */  sll        $t7, $t7, 3
/* 8B314 8008A714 00AF1821 */  addu       $v1, $a1, $t7
/* 8B318 8008A718 946200D0 */  lhu        $v0, 0xd0($v1)
/* 8B31C 8008A71C AFBF0014 */  sw         $ra, 0x14($sp)
/* 8B320 8008A720 1040000A */  beqz       $v0, .L8008A74C
/* 8B324 8008A724 24180002 */   addiu     $t8, $zero, 2
/* 8B328 8008A728 24010001 */  addiu      $at, $zero, 1
/* 8B32C 8008A72C 10410043 */  beq        $v0, $at, .L8008A83C
/* 8B330 8008A730 24010002 */   addiu     $at, $zero, 2
/* 8B334 8008A734 1041004C */  beq        $v0, $at, .L8008A868
/* 8B338 8008A738 24010003 */   addiu     $at, $zero, 3
/* 8B33C 8008A73C 104100A7 */  beq        $v0, $at, .L8008A9DC
/* 8B340 8008A740 97A40022 */   lhu       $a0, 0x22($sp)
/* 8B344 8008A744 100000AA */  b          .L8008A9F0
/* 8B348 8008A748 8C6D0098 */   lw        $t5, 0x98($v1)
.L8008A74C:
/* 8B34C 8008A74C 444AF800 */  cfc1       $t2, $31
/* 8B350 8008A750 C4640110 */  lwc1       $f4, 0x110($v1)
/* 8B354 8008A754 35410003 */  ori        $at, $t2, 3
/* 8B358 8008A758 38210002 */  xori       $at, $at, 2
/* 8B35C 8008A75C 44C1F800 */  ctc1       $at, $31
/* 8B360 8008A760 24190040 */  addiu      $t9, $zero, 0x40
/* 8B364 8008A764 460021A4 */  cvt.w.s    $f6, $f4
/* 8B368 8008A768 2408FFF9 */  addiu      $t0, $zero, -7
/* 8B36C 8008A76C 44023000 */  mfc1       $v0, $f6
/* 8B370 8008A770 240900FF */  addiu      $t1, $zero, 0xff
/* 8B374 8008A774 44CAF800 */  ctc1       $t2, $31
/* 8B378 8008A778 304B0010 */  andi       $t3, $v0, 0x10
/* 8B37C 8008A77C AC780080 */  sw         $t8, 0x80($v1)
/* 8B380 8008A780 A07900DF */  sb         $t9, 0xdf($v1)
/* 8B384 8008A784 A4680090 */  sh         $t0, 0x90($v1)
/* 8B388 8008A788 AC690158 */  sw         $t1, 0x158($v1)
/* 8B38C 8008A78C 1160000B */  beqz       $t3, .L8008A7BC
/* 8B390 8008A790 AC620150 */   sw        $v0, 0x150($v1)
/* 8B394 8008A794 946C0094 */  lhu        $t4, 0x94($v1)
/* 8B398 8008A798 370F0001 */  ori        $t7, $t8, 1
/* 8B39C 8008A79C 3C18800E */  lui        $t8, %hi(D_800E44C8)
/* 8B3A0 8008A7A0 271844C8 */  addiu      $t8, $t8, %lo(D_800E44C8)
/* 8B3A4 8008A7A4 24190001 */  addiu      $t9, $zero, 1
/* 8B3A8 8008A7A8 358D0001 */  ori        $t5, $t4, 1
/* 8B3AC 8008A7AC A46D0094 */  sh         $t5, 0x94($v1)
/* 8B3B0 8008A7B0 AC6F0080 */  sw         $t7, 0x80($v1)
/* 8B3B4 8008A7B4 AC7800E8 */  sw         $t8, 0xe8($v1)
/* 8B3B8 8008A7B8 A47900E6 */  sh         $t9, 0xe6($v1)
.L8008A7BC:
/* 8B3BC 8008A7BC 8C620150 */  lw         $v0, 0x150($v1)
/* 8B3C0 8008A7C0 3C0D800E */  lui        $t5, %hi(D_800E44DC)
/* 8B3C4 8008A7C4 30480020 */  andi       $t0, $v0, 0x20
/* 8B3C8 8008A7C8 1100000B */  beqz       $t0, .L8008A7F8
/* 8B3CC 8008A7CC 25AD44DC */   addiu     $t5, $t5, %lo(D_800E44DC)
/* 8B3D0 8008A7D0 94690094 */  lhu        $t1, 0x94($v1)
/* 8B3D4 8008A7D4 8C6B0080 */  lw         $t3, 0x80($v1)
/* 8B3D8 8008A7D8 240E0001 */  addiu      $t6, $zero, 1
/* 8B3DC 8008A7DC 352A0001 */  ori        $t2, $t1, 1
/* 8B3E0 8008A7E0 356C0001 */  ori        $t4, $t3, 1
/* 8B3E4 8008A7E4 8C620150 */  lw         $v0, 0x150($v1)
/* 8B3E8 8008A7E8 A46A0094 */  sh         $t2, 0x94($v1)
/* 8B3EC 8008A7EC AC6C0080 */  sw         $t4, 0x80($v1)
/* 8B3F0 8008A7F0 AC6D00E8 */  sw         $t5, 0xe8($v1)
/* 8B3F4 8008A7F4 A46E00E6 */  sh         $t6, 0xe6($v1)
.L8008A7F8:
/* 8B3F8 8008A7F8 304F0030 */  andi       $t7, $v0, 0x30
/* 8B3FC 8008A7FC 11E0000B */  beqz       $t7, .L8008A82C
/* 8B400 8008A800 30480F00 */   andi      $t0, $v0, 0xf00
/* 8B404 8008A804 94780094 */  lhu        $t8, 0x94($v1)
/* 8B408 8008A808 00084A03 */  sra        $t1, $t0, 8
/* 8B40C 8008A80C 00095080 */  sll        $t2, $t1, 2
/* 8B410 8008A810 3C0B800E */  lui        $t3, %hi(D_800E44F0)
/* 8B414 8008A814 37190200 */  ori        $t9, $t8, 0x200
/* 8B418 8008A818 A4790094 */  sh         $t9, 0x94($v1)
/* 8B41C 8008A81C 016A5821 */  addu       $t3, $t3, $t2
/* 8B420 8008A820 8D6B44F0 */  lw         $t3, %lo(D_800E44F0)($t3)
/* 8B424 8008A824 00000000 */  nop
/* 8B428 8008A828 AC6B018C */  sw         $t3, 0x18c($v1)
.L8008A82C:
/* 8B42C 8008A82C 946C00D0 */  lhu        $t4, 0xd0($v1)
/* 8B430 8008A830 00000000 */  nop
/* 8B434 8008A834 258D0001 */  addiu      $t5, $t4, 1
/* 8B438 8008A838 A46D00D0 */  sh         $t5, 0xd0($v1)
.L8008A83C:
/* 8B43C 8008A83C 97A40022 */  lhu        $a0, 0x22($sp)
/* 8B440 8008A840 0C0225AB */  jal        func_800896AC
/* 8B444 8008A844 AFA30018 */   sw        $v1, 0x18($sp)
/* 8B448 8008A848 8FA30018 */  lw         $v1, 0x18($sp)
/* 8B44C 8008A84C 10400067 */  beqz       $v0, .L8008A9EC
/* 8B450 8008A850 AC620160 */   sw        $v0, 0x160($v1)
/* 8B454 8008A854 946E00D0 */  lhu        $t6, 0xd0($v1)
/* 8B458 8008A858 00000000 */  nop
/* 8B45C 8008A85C 25CF0001 */  addiu      $t7, $t6, 1
/* 8B460 8008A860 10000062 */  b          .L8008A9EC
/* 8B464 8008A864 A46F00D0 */   sh        $t7, 0xd0($v1)
.L8008A868:
/* 8B468 8008A868 8479008C */  lh         $t9, 0x8c($v1)
/* 8B46C 8008A86C 84B8008C */  lh         $t8, 0x8c($a1)
/* 8B470 8008A870 27280010 */  addiu      $t0, $t9, 0x10
/* 8B474 8008A874 0308082A */  slt        $at, $t8, $t0
/* 8B478 8008A878 14200016 */  bnez       $at, .L8008A8D4
/* 8B47C 8008A87C 00000000 */   nop
/* 8B480 8008A880 84690088 */  lh         $t1, 0x88($v1)
/* 8B484 8008A884 84AA0088 */  lh         $t2, 0x88($a1)
/* 8B488 8008A888 00000000 */  nop
/* 8B48C 8008A88C 012A2023 */  subu       $a0, $t1, $t2
/* 8B490 8008A890 18800003 */  blez       $a0, .L8008A8A0
/* 8B494 8008A894 00041023 */   negu      $v0, $a0
/* 8B498 8008A898 10000001 */  b          .L8008A8A0
/* 8B49C 8008A89C 00801025 */   or        $v0, $a0, $zero
.L8008A8A0:
/* 8B4A0 8008A8A0 28410011 */  slti       $at, $v0, 0x11
/* 8B4A4 8008A8A4 1020000B */  beqz       $at, .L8008A8D4
/* 8B4A8 8008A8A8 00000000 */   nop
/* 8B4AC 8008A8AC 8C6B0160 */  lw         $t3, 0x160($v1)
/* 8B4B0 8008A8B0 24040198 */  addiu      $a0, $zero, 0x198
/* 8B4B4 8008A8B4 01640019 */  multu      $t3, $a0
/* 8B4B8 8008A8B8 00006012 */  mflo       $t4
/* 8B4BC 8008A8BC 00AC1021 */  addu       $v0, $a1, $t4
/* 8B4C0 8008A8C0 8C4D0080 */  lw         $t5, 0x80($v0)
/* 8B4C4 8008A8C4 00000000 */  nop
/* 8B4C8 8008A8C8 35AE1000 */  ori        $t6, $t5, 0x1000
/* 8B4CC 8008A8CC 1000000B */  b          .L8008A8FC
/* 8B4D0 8008A8D0 AC4E0080 */   sw        $t6, 0x80($v0)
.L8008A8D4:
/* 8B4D4 8008A8D4 8C6F0160 */  lw         $t7, 0x160($v1)
/* 8B4D8 8008A8D8 24040198 */  addiu      $a0, $zero, 0x198
/* 8B4DC 8008A8DC 01E40019 */  multu      $t7, $a0
/* 8B4E0 8008A8E0 2401EFFF */  addiu      $at, $zero, -0x1001
/* 8B4E4 8008A8E4 0000C812 */  mflo       $t9
/* 8B4E8 8008A8E8 00B91021 */  addu       $v0, $a1, $t9
/* 8B4EC 8008A8EC 8C580080 */  lw         $t8, 0x80($v0)
/* 8B4F0 8008A8F0 00000000 */  nop
/* 8B4F4 8008A8F4 03014024 */  and        $t0, $t8, $at
/* 8B4F8 8008A8F8 AC480080 */  sw         $t0, 0x80($v0)
.L8008A8FC:
/* 8B4FC 8008A8FC 8C660160 */  lw         $a2, 0x160($v1)
/* 8B500 8008A900 00000000 */  nop
/* 8B504 8008A904 00C40019 */  multu      $a2, $a0
/* 8B508 8008A908 00004812 */  mflo       $t1
/* 8B50C 8008A90C 00A95021 */  addu       $t2, $a1, $t1
/* 8B510 8008A910 8D4B0098 */  lw         $t3, 0x98($t2)
/* 8B514 8008A914 00000000 */  nop
/* 8B518 8008A918 316C0200 */  andi       $t4, $t3, 0x200
/* 8B51C 8008A91C 11800029 */  beqz       $t4, .L8008A9C4
/* 8B520 8008A920 97A40022 */   lhu       $a0, 0x22($sp)
/* 8B524 8008A924 946D00D6 */  lhu        $t5, 0xd6($v1)
/* 8B528 8008A928 00000000 */  nop
/* 8B52C 8008A92C 15A00020 */  bnez       $t5, .L8008A9B0
/* 8B530 8008A930 00000000 */   nop
/* 8B534 8008A934 90AE0140 */  lbu        $t6, 0x140($a1)
/* 8B538 8008A938 24010008 */  addiu      $at, $zero, 8
/* 8B53C 8008A93C 15C1001C */  bne        $t6, $at, .L8008A9B0
/* 8B540 8008A940 00000000 */   nop
/* 8B544 8008A944 846F0088 */  lh         $t7, 0x88($v1)
/* 8B548 8008A948 84B90088 */  lh         $t9, 0x88($a1)
/* 8B54C 8008A94C 00000000 */  nop
/* 8B550 8008A950 01F92023 */  subu       $a0, $t7, $t9
/* 8B554 8008A954 18800003 */  blez       $a0, .L8008A964
/* 8B558 8008A958 00041023 */   negu      $v0, $a0
/* 8B55C 8008A95C 10000001 */  b          .L8008A964
/* 8B560 8008A960 00801025 */   or        $v0, $a0, $zero
.L8008A964:
/* 8B564 8008A964 2841000D */  slti       $at, $v0, 0xd
/* 8B568 8008A968 10200011 */  beqz       $at, .L8008A9B0
/* 8B56C 8008A96C 00000000 */   nop
/* 8B570 8008A970 97A40022 */  lhu        $a0, 0x22($sp)
/* 8B574 8008A974 30C5FFFF */  andi       $a1, $a2, 0xffff
/* 8B578 8008A978 0C022661 */  jal        func_80089984
/* 8B57C 8008A97C AFA30018 */   sw        $v1, 0x18($sp)
/* 8B580 8008A980 97A50022 */  lhu        $a1, 0x22($sp)
/* 8B584 8008A984 0C000DB2 */  jal        func_800036C8
/* 8B588 8008A988 2404011F */   addiu     $a0, $zero, 0x11f
/* 8B58C 8008A98C 8FA30018 */  lw         $v1, 0x18($sp)
/* 8B590 8008A990 240A0001 */  addiu      $t2, $zero, 1
/* 8B594 8008A994 947800D0 */  lhu        $t8, 0xd0($v1)
/* 8B598 8008A998 8C69016C */  lw         $t1, 0x16c($v1)
/* 8B59C 8008A99C 2708FFFF */  addiu      $t0, $t8, -1
/* 8B5A0 8008A9A0 15200007 */  bnez       $t1, .L8008A9C0
/* 8B5A4 8008A9A4 A46800D0 */   sh        $t0, 0xd0($v1)
/* 8B5A8 8008A9A8 10000005 */  b          .L8008A9C0
/* 8B5AC 8008A9AC AC6A016C */   sw        $t2, 0x16c($v1)
.L8008A9B0:
/* 8B5B0 8008A9B0 8CAB0098 */  lw         $t3, 0x98($a1)
/* 8B5B4 8008A9B4 3C010001 */  lui        $at, 1
/* 8B5B8 8008A9B8 01616025 */  or         $t4, $t3, $at
/* 8B5BC 8008A9BC ACAC0098 */  sw         $t4, 0x98($a1)
.L8008A9C0:
/* 8B5C0 8008A9C0 97A40022 */  lhu        $a0, 0x22($sp)
.L8008A9C4:
/* 8B5C4 8008A9C4 0C022684 */  jal        func_80089A10
/* 8B5C8 8008A9C8 AFA30018 */   sw        $v1, 0x18($sp)
/* 8B5CC 8008A9CC 8FA30018 */  lw         $v1, 0x18($sp)
/* 8B5D0 8008A9D0 10000007 */  b          .L8008A9F0
/* 8B5D4 8008A9D4 8C6D0098 */   lw        $t5, 0x98($v1)
/* 8B5D8 8008A9D8 97A40022 */  lhu        $a0, 0x22($sp)
.L8008A9DC:
/* 8B5DC 8008A9DC 0C0227BE */  jal        func_80089EF8
/* 8B5E0 8008A9E0 AFA30018 */   sw        $v1, 0x18($sp)
/* 8B5E4 8008A9E4 8FA30018 */  lw         $v1, 0x18($sp)
/* 8B5E8 8008A9E8 00000000 */  nop
.L8008A9EC:
/* 8B5EC 8008A9EC 8C6D0098 */  lw         $t5, 0x98($v1)
.L8008A9F0:
/* 8B5F0 8008A9F0 8C6F0150 */  lw         $t7, 0x150($v1)
/* 8B5F4 8008A9F4 3C01FFDF */  lui        $at, 0xffdf
/* 8B5F8 8008A9F8 3421F9FF */  ori        $at, $at, 0xf9ff
/* 8B5FC 8008A9FC 01A17024 */  and        $t6, $t5, $at
/* 8B600 8008AA00 31F90010 */  andi       $t9, $t7, 0x10
/* 8B604 8008AA04 17200004 */  bnez       $t9, .L8008AA18
/* 8B608 8008AA08 AC6E0098 */   sw        $t6, 0x98($v1)
/* 8B60C 8008AA0C 97A40022 */  lhu        $a0, 0x22($sp)
/* 8B610 8008AA10 0C022943 */  jal        func_8008A50C
/* 8B614 8008AA14 00000000 */   nop
.L8008AA18:
/* 8B618 8008AA18 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8B61C 8008AA1C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8B620 8008AA20 03E00008 */  jr         $ra
/* 8B624 8008AA24 00000000 */   nop
