glabel func_8008D730
/* 8E330 8008D730 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8E334 8008D734 000E7880 */  sll        $t7, $t6, 2
/* 8E338 8008D738 01EE7823 */  subu       $t7, $t7, $t6
/* 8E33C 8008D73C 000F7880 */  sll        $t7, $t7, 2
/* 8E340 8008D740 01EE7821 */  addu       $t7, $t7, $t6
/* 8E344 8008D744 000F7880 */  sll        $t7, $t7, 2
/* 8E348 8008D748 01EE7823 */  subu       $t7, $t7, $t6
/* 8E34C 8008D74C 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 8E350 8008D750 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 8E354 8008D754 000F78C0 */  sll        $t7, $t7, 3
/* 8E358 8008D758 01F81021 */  addu       $v0, $t7, $t8
/* 8E35C 8008D75C 444AF800 */  cfc1       $t2, $31
/* 8E360 8008D760 24030001 */  addiu      $v1, $zero, 1
/* 8E364 8008D764 44C3F800 */  ctc1       $v1, $31
/* 8E368 8008D768 C4440110 */  lwc1       $f4, 0x110($v0)
/* 8E36C 8008D76C 24190010 */  addiu      $t9, $zero, 0x10
/* 8E370 8008D770 460021A4 */  cvt.w.s    $f6, $f4
/* 8E374 8008D774 34088000 */  ori        $t0, $zero, 0x8000
/* 8E378 8008D778 4443F800 */  cfc1       $v1, $31
/* 8E37C 8008D77C 24090002 */  addiu      $t1, $zero, 2
/* 8E380 8008D780 30630078 */  andi       $v1, $v1, 0x78
/* 8E384 8008D784 AFA40000 */  sw         $a0, ($sp)
/* 8E388 8008D788 A45900D0 */  sh         $t9, 0xd0($v0)
/* 8E38C 8008D78C A4480094 */  sh         $t0, 0x94($v0)
/* 8E390 8008D790 10600013 */  beqz       $v1, .L8008D7E0
/* 8E394 8008D794 AC490080 */   sw        $t1, 0x80($v0)
/* 8E398 8008D798 3C014F00 */  lui        $at, 0x4f00
/* 8E39C 8008D79C 44813000 */  mtc1       $at, $f6
/* 8E3A0 8008D7A0 24030001 */  addiu      $v1, $zero, 1
/* 8E3A4 8008D7A4 46062181 */  sub.s      $f6, $f4, $f6
/* 8E3A8 8008D7A8 3C018000 */  lui        $at, 0x8000
/* 8E3AC 8008D7AC 44C3F800 */  ctc1       $v1, $31
/* 8E3B0 8008D7B0 00000000 */  nop
/* 8E3B4 8008D7B4 460031A4 */  cvt.w.s    $f6, $f6
/* 8E3B8 8008D7B8 4443F800 */  cfc1       $v1, $31
/* 8E3BC 8008D7BC 00000000 */  nop
/* 8E3C0 8008D7C0 30630078 */  andi       $v1, $v1, 0x78
/* 8E3C4 8008D7C4 14600004 */  bnez       $v1, .L8008D7D8
/* 8E3C8 8008D7C8 00000000 */   nop
/* 8E3CC 8008D7CC 44033000 */  mfc1       $v1, $f6
/* 8E3D0 8008D7D0 10000007 */  b          .L8008D7F0
/* 8E3D4 8008D7D4 00611825 */   or        $v1, $v1, $at
.L8008D7D8:
/* 8E3D8 8008D7D8 10000005 */  b          .L8008D7F0
/* 8E3DC 8008D7DC 2403FFFF */   addiu     $v1, $zero, -1
.L8008D7E0:
/* 8E3E0 8008D7E0 44033000 */  mfc1       $v1, $f6
/* 8E3E4 8008D7E4 00000000 */  nop
/* 8E3E8 8008D7E8 0460FFFB */  bltz       $v1, .L8008D7D8
/* 8E3EC 8008D7EC 00000000 */   nop
.L8008D7F0:
/* 8E3F0 8008D7F0 306BFFFF */  andi       $t3, $v1, 0xffff
/* 8E3F4 8008D7F4 316C0010 */  andi       $t4, $t3, 0x10
/* 8E3F8 8008D7F8 44CAF800 */  ctc1       $t2, $31
/* 8E3FC 8008D7FC 11800026 */  beqz       $t4, .L8008D898
/* 8E400 8008D800 01601825 */   or        $v1, $t3, $zero
/* 8E404 8008D804 444FF800 */  cfc1       $t7, $31
/* 8E408 8008D808 24030001 */  addiu      $v1, $zero, 1
/* 8E40C 8008D80C 44C3F800 */  ctc1       $v1, $31
/* 8E410 8008D810 C4480110 */  lwc1       $f8, 0x110($v0)
/* 8E414 8008D814 8C4D0080 */  lw         $t5, 0x80($v0)
/* 8E418 8008D818 460042A4 */  cvt.w.s    $f10, $f8
/* 8E41C 8008D81C 3C010002 */  lui        $at, 2
/* 8E420 8008D820 4443F800 */  cfc1       $v1, $31
/* 8E424 8008D824 01A17025 */  or         $t6, $t5, $at
/* 8E428 8008D828 30630078 */  andi       $v1, $v1, 0x78
/* 8E42C 8008D82C 10600013 */  beqz       $v1, .L8008D87C
/* 8E430 8008D830 AC4E0080 */   sw        $t6, 0x80($v0)
/* 8E434 8008D834 3C014F00 */  lui        $at, 0x4f00
/* 8E438 8008D838 44815000 */  mtc1       $at, $f10
/* 8E43C 8008D83C 24030001 */  addiu      $v1, $zero, 1
/* 8E440 8008D840 460A4281 */  sub.s      $f10, $f8, $f10
/* 8E444 8008D844 3C018000 */  lui        $at, 0x8000
/* 8E448 8008D848 44C3F800 */  ctc1       $v1, $31
/* 8E44C 8008D84C 00000000 */  nop
/* 8E450 8008D850 460052A4 */  cvt.w.s    $f10, $f10
/* 8E454 8008D854 4443F800 */  cfc1       $v1, $31
/* 8E458 8008D858 00000000 */  nop
/* 8E45C 8008D85C 30630078 */  andi       $v1, $v1, 0x78
/* 8E460 8008D860 14600004 */  bnez       $v1, .L8008D874
/* 8E464 8008D864 00000000 */   nop
/* 8E468 8008D868 44035000 */  mfc1       $v1, $f10
/* 8E46C 8008D86C 10000007 */  b          .L8008D88C
/* 8E470 8008D870 00611825 */   or        $v1, $v1, $at
.L8008D874:
/* 8E474 8008D874 10000005 */  b          .L8008D88C
/* 8E478 8008D878 2403FFFF */   addiu     $v1, $zero, -1
.L8008D87C:
/* 8E47C 8008D87C 44035000 */  mfc1       $v1, $f10
/* 8E480 8008D880 00000000 */  nop
/* 8E484 8008D884 0460FFFB */  bltz       $v1, .L8008D874
/* 8E488 8008D888 00000000 */   nop
.L8008D88C:
/* 8E48C 8008D88C 44CFF800 */  ctc1       $t7, $31
/* 8E490 8008D890 3078FFFF */  andi       $t8, $v1, 0xffff
/* 8E494 8008D894 03001825 */  or         $v1, $t8, $zero
.L8008D898:
/* 8E498 8008D898 30790020 */  andi       $t9, $v1, 0x20
/* 8E49C 8008D89C 13200026 */  beqz       $t9, .L8008D938
/* 8E4A0 8008D8A0 306C0040 */   andi      $t4, $v1, 0x40
/* 8E4A4 8008D8A4 444AF800 */  cfc1       $t2, $31
/* 8E4A8 8008D8A8 24030001 */  addiu      $v1, $zero, 1
/* 8E4AC 8008D8AC 44C3F800 */  ctc1       $v1, $31
/* 8E4B0 8008D8B0 C4500110 */  lwc1       $f16, 0x110($v0)
/* 8E4B4 8008D8B4 8C480080 */  lw         $t0, 0x80($v0)
/* 8E4B8 8008D8B8 460084A4 */  cvt.w.s    $f18, $f16
/* 8E4BC 8008D8BC 35091100 */  ori        $t1, $t0, 0x1100
/* 8E4C0 8008D8C0 4443F800 */  cfc1       $v1, $31
/* 8E4C4 8008D8C4 AC490080 */  sw         $t1, 0x80($v0)
/* 8E4C8 8008D8C8 30630078 */  andi       $v1, $v1, 0x78
/* 8E4CC 8008D8CC 10600012 */  beqz       $v1, .L8008D918
/* 8E4D0 8008D8D0 3C014F00 */   lui       $at, 0x4f00
/* 8E4D4 8008D8D4 44819000 */  mtc1       $at, $f18
/* 8E4D8 8008D8D8 24030001 */  addiu      $v1, $zero, 1
/* 8E4DC 8008D8DC 46128481 */  sub.s      $f18, $f16, $f18
/* 8E4E0 8008D8E0 3C018000 */  lui        $at, 0x8000
/* 8E4E4 8008D8E4 44C3F800 */  ctc1       $v1, $31
/* 8E4E8 8008D8E8 00000000 */  nop
/* 8E4EC 8008D8EC 460094A4 */  cvt.w.s    $f18, $f18
/* 8E4F0 8008D8F0 4443F800 */  cfc1       $v1, $31
/* 8E4F4 8008D8F4 00000000 */  nop
/* 8E4F8 8008D8F8 30630078 */  andi       $v1, $v1, 0x78
/* 8E4FC 8008D8FC 14600004 */  bnez       $v1, .L8008D910
/* 8E500 8008D900 00000000 */   nop
/* 8E504 8008D904 44039000 */  mfc1       $v1, $f18
/* 8E508 8008D908 10000007 */  b          .L8008D928
/* 8E50C 8008D90C 00611825 */   or        $v1, $v1, $at
.L8008D910:
/* 8E510 8008D910 10000005 */  b          .L8008D928
/* 8E514 8008D914 2403FFFF */   addiu     $v1, $zero, -1
.L8008D918:
/* 8E518 8008D918 44039000 */  mfc1       $v1, $f18
/* 8E51C 8008D91C 00000000 */  nop
/* 8E520 8008D920 0460FFFB */  bltz       $v1, .L8008D910
/* 8E524 8008D924 00000000 */   nop
.L8008D928:
/* 8E528 8008D928 44CAF800 */  ctc1       $t2, $31
/* 8E52C 8008D92C 306BFFFF */  andi       $t3, $v1, 0xffff
/* 8E530 8008D930 01601825 */  or         $v1, $t3, $zero
/* 8E534 8008D934 306C0040 */  andi       $t4, $v1, 0x40
.L8008D938:
/* 8E538 8008D938 11800005 */  beqz       $t4, .L8008D950
/* 8E53C 8008D93C 00000000 */   nop
/* 8E540 8008D940 8C4D0080 */  lw         $t5, 0x80($v0)
/* 8E544 8008D944 00000000 */  nop
/* 8E548 8008D948 35AE1400 */  ori        $t6, $t5, 0x1400
/* 8E54C 8008D94C AC4E0080 */  sw         $t6, 0x80($v0)
.L8008D950:
/* 8E550 8008D950 03E00008 */  jr         $ra
/* 8E554 8008D954 00000000 */   nop
