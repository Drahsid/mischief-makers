.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osSetEventMesg
/* 9B2F0 8009A6F0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9B2F4 8009A6F4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9B2F8 8009A6F8 AFA40028 */  sw         $a0, 0x28($sp)
/* 9B2FC 8009A6FC AFA5002C */  sw         $a1, 0x2c($sp)
/* 9B300 8009A700 AFA60030 */  sw         $a2, 0x30($sp)
/* 9B304 8009A704 AFB00018 */  sw         $s0, 0x18($sp)
/* 9B308 8009A708 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9B30C 8009A70C 2DC10017 */  sltiu      $at, $t6, 0x17
/* 9B310 8009A710 14200007 */  bnez       $at, .L8009A730
/* 9B314 8009A714 00000000 */   nop
/* 9B318 8009A718 24040009 */  addiu      $a0, $zero, 9
/* 9B31C 8009A71C 24050001 */  addiu      $a1, $zero, 1
/* 9B320 8009A720 0C0297B4 */  jal        __osError
/* 9B324 8009A724 8FA60028 */   lw        $a2, 0x28($sp)
/* 9B328 8009A728 10000014 */  b          .L8009A77C
/* 9B32C 8009A72C 00000000 */   nop
.L8009A730:
/* 9B330 8009A730 0C0297A4 */  jal        __osDisableInt
/* 9B334 8009A734 00000000 */   nop
/* 9B338 8009A738 00408025 */  or         $s0, $v0, $zero
/* 9B33C 8009A73C 8FAF0028 */  lw         $t7, 0x28($sp)
/* 9B340 8009A740 3C198018 */  lui        $t9, %hi(__osEventStateTab)
/* 9B344 8009A744 27395530 */  addiu      $t9, $t9, %lo(__osEventStateTab)
/* 9B348 8009A748 000FC0C0 */  sll        $t8, $t7, 3
/* 9B34C 8009A74C 03194021 */  addu       $t0, $t8, $t9
/* 9B350 8009A750 AFA80020 */  sw         $t0, 0x20($sp)
/* 9B354 8009A754 8FA9002C */  lw         $t1, 0x2c($sp)
/* 9B358 8009A758 8FAA0020 */  lw         $t2, 0x20($sp)
/* 9B35C 8009A75C AD490000 */  sw         $t1, ($t2)
/* 9B360 8009A760 8FAB0030 */  lw         $t3, 0x30($sp)
/* 9B364 8009A764 8FAC0020 */  lw         $t4, 0x20($sp)
/* 9B368 8009A768 AD8B0004 */  sw         $t3, 4($t4)
/* 9B36C 8009A76C 0C0297AC */  jal        __osRestoreInt
/* 9B370 8009A770 02002025 */   or        $a0, $s0, $zero
/* 9B374 8009A774 10000001 */  b          .L8009A77C
/* 9B378 8009A778 00000000 */   nop
.L8009A77C:
/* 9B37C 8009A77C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9B380 8009A780 8FB00018 */  lw         $s0, 0x18($sp)
/* 9B384 8009A784 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9B388 8009A788 03E00008 */  jr         $ra
/* 9B38C 8009A78C 00000000 */   nop

glabel osViSetSpecialFeatures
/* 9B390 8009A790 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9B394 8009A794 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9B398 8009A798 AFA40028 */  sw         $a0, 0x28($sp)
/* 9B39C 8009A79C AFB00018 */  sw         $s0, 0x18($sp)
/* 9B3A0 8009A7A0 3C0E800F */  lui        $t6, %hi(__osViDevMgr)
/* 9B3A4 8009A7A4 8DCE9790 */  lw         $t6, %lo(__osViDevMgr)($t6)
/* 9B3A8 8009A7A8 15C00006 */  bnez       $t6, .L8009A7C4
/* 9B3AC 8009A7AC 00000000 */   nop
/* 9B3B0 8009A7B0 2404002C */  addiu      $a0, $zero, 0x2c
/* 9B3B4 8009A7B4 0C0297B4 */  jal        __osError
/* 9B3B8 8009A7B8 00002825 */   or        $a1, $zero, $zero
/* 9B3BC 8009A7BC 10000075 */  b          .L8009A994
/* 9B3C0 8009A7C0 00000000 */   nop
.L8009A7C4:
/* 9B3C4 8009A7C4 8FAF0028 */  lw         $t7, 0x28($sp)
/* 9B3C8 8009A7C8 11E00004 */  beqz       $t7, .L8009A7DC
/* 9B3CC 8009A7CC 00000000 */   nop
/* 9B3D0 8009A7D0 2DE10081 */  sltiu      $at, $t7, 0x81
/* 9B3D4 8009A7D4 14200007 */  bnez       $at, .L8009A7F4
/* 9B3D8 8009A7D8 00000000 */   nop
.L8009A7DC:
/* 9B3DC 8009A7DC 2404002B */  addiu      $a0, $zero, 0x2b
/* 9B3E0 8009A7E0 24050001 */  addiu      $a1, $zero, 1
/* 9B3E4 8009A7E4 0C0297B4 */  jal        __osError
/* 9B3E8 8009A7E8 8FA60028 */   lw        $a2, 0x28($sp)
/* 9B3EC 8009A7EC 10000069 */  b          .L8009A994
/* 9B3F0 8009A7F0 00000000 */   nop
.L8009A7F4:
/* 9B3F4 8009A7F4 0C0297A4 */  jal        __osDisableInt
/* 9B3F8 8009A7F8 00000000 */   nop
/* 9B3FC 8009A7FC 00408025 */  or         $s0, $v0, $zero
/* 9B400 8009A800 8FB80028 */  lw         $t8, 0x28($sp)
/* 9B404 8009A804 33190001 */  andi       $t9, $t8, 1
/* 9B408 8009A808 13200006 */  beqz       $t9, .L8009A824
/* 9B40C 8009A80C 00000000 */   nop
/* 9B410 8009A810 3C08800F */  lui        $t0, %hi(__osViNext)
/* 9B414 8009A814 8D08A5D4 */  lw         $t0, %lo(__osViNext)($t0)
/* 9B418 8009A818 8D09000C */  lw         $t1, 0xc($t0)
/* 9B41C 8009A81C 352A0008 */  ori        $t2, $t1, 8
/* 9B420 8009A820 AD0A000C */  sw         $t2, 0xc($t0)
.L8009A824:
/* 9B424 8009A824 8FAB0028 */  lw         $t3, 0x28($sp)
/* 9B428 8009A828 316C0002 */  andi       $t4, $t3, 2
/* 9B42C 8009A82C 11800007 */  beqz       $t4, .L8009A84C
/* 9B430 8009A830 00000000 */   nop
/* 9B434 8009A834 3C0D800F */  lui        $t5, %hi(__osViNext)
/* 9B438 8009A838 8DADA5D4 */  lw         $t5, %lo(__osViNext)($t5)
/* 9B43C 8009A83C 2401FFF7 */  addiu      $at, $zero, -9
/* 9B440 8009A840 8DAE000C */  lw         $t6, 0xc($t5)
/* 9B444 8009A844 01C17824 */  and        $t7, $t6, $at
/* 9B448 8009A848 ADAF000C */  sw         $t7, 0xc($t5)
.L8009A84C:
/* 9B44C 8009A84C 8FB80028 */  lw         $t8, 0x28($sp)
/* 9B450 8009A850 33190004 */  andi       $t9, $t8, 4
/* 9B454 8009A854 13200006 */  beqz       $t9, .L8009A870
/* 9B458 8009A858 00000000 */   nop
/* 9B45C 8009A85C 3C09800F */  lui        $t1, %hi(__osViNext)
/* 9B460 8009A860 8D29A5D4 */  lw         $t1, %lo(__osViNext)($t1)
/* 9B464 8009A864 8D2A000C */  lw         $t2, 0xc($t1)
/* 9B468 8009A868 35480004 */  ori        $t0, $t2, 4
/* 9B46C 8009A86C AD28000C */  sw         $t0, 0xc($t1)
.L8009A870:
/* 9B470 8009A870 8FAB0028 */  lw         $t3, 0x28($sp)
/* 9B474 8009A874 316C0008 */  andi       $t4, $t3, 8
/* 9B478 8009A878 11800007 */  beqz       $t4, .L8009A898
/* 9B47C 8009A87C 00000000 */   nop
/* 9B480 8009A880 3C0E800F */  lui        $t6, %hi(__osViNext)
/* 9B484 8009A884 8DCEA5D4 */  lw         $t6, %lo(__osViNext)($t6)
/* 9B488 8009A888 2401FFFB */  addiu      $at, $zero, -5
/* 9B48C 8009A88C 8DCF000C */  lw         $t7, 0xc($t6)
/* 9B490 8009A890 01E16824 */  and        $t5, $t7, $at
/* 9B494 8009A894 ADCD000C */  sw         $t5, 0xc($t6)
.L8009A898:
/* 9B498 8009A898 8FB80028 */  lw         $t8, 0x28($sp)
/* 9B49C 8009A89C 33190010 */  andi       $t9, $t8, 0x10
/* 9B4A0 8009A8A0 13200006 */  beqz       $t9, .L8009A8BC
/* 9B4A4 8009A8A4 00000000 */   nop
/* 9B4A8 8009A8A8 3C0A800F */  lui        $t2, %hi(__osViNext)
/* 9B4AC 8009A8AC 8D4AA5D4 */  lw         $t2, %lo(__osViNext)($t2)
/* 9B4B0 8009A8B0 8D48000C */  lw         $t0, 0xc($t2)
/* 9B4B4 8009A8B4 35090010 */  ori        $t1, $t0, 0x10
/* 9B4B8 8009A8B8 AD49000C */  sw         $t1, 0xc($t2)
.L8009A8BC:
/* 9B4BC 8009A8BC 8FAB0028 */  lw         $t3, 0x28($sp)
/* 9B4C0 8009A8C0 316C0020 */  andi       $t4, $t3, 0x20
/* 9B4C4 8009A8C4 11800007 */  beqz       $t4, .L8009A8E4
/* 9B4C8 8009A8C8 00000000 */   nop
/* 9B4CC 8009A8CC 3C0F800F */  lui        $t7, %hi(__osViNext)
/* 9B4D0 8009A8D0 8DEFA5D4 */  lw         $t7, %lo(__osViNext)($t7)
/* 9B4D4 8009A8D4 2401FFEF */  addiu      $at, $zero, -0x11
/* 9B4D8 8009A8D8 8DED000C */  lw         $t5, 0xc($t7)
/* 9B4DC 8009A8DC 01A17024 */  and        $t6, $t5, $at
/* 9B4E0 8009A8E0 ADEE000C */  sw         $t6, 0xc($t7)
.L8009A8E4:
/* 9B4E4 8009A8E4 8FB80028 */  lw         $t8, 0x28($sp)
/* 9B4E8 8009A8E8 33190040 */  andi       $t9, $t8, 0x40
/* 9B4EC 8009A8EC 1320000D */  beqz       $t9, .L8009A924
/* 9B4F0 8009A8F0 00000000 */   nop
/* 9B4F4 8009A8F4 3C08800F */  lui        $t0, %hi(__osViNext)
/* 9B4F8 8009A8F8 8D08A5D4 */  lw         $t0, %lo(__osViNext)($t0)
/* 9B4FC 8009A8FC 3C010001 */  lui        $at, 1
/* 9B500 8009A900 8D09000C */  lw         $t1, 0xc($t0)
/* 9B504 8009A904 01215025 */  or         $t2, $t1, $at
/* 9B508 8009A908 AD0A000C */  sw         $t2, 0xc($t0)
/* 9B50C 8009A90C 3C0B800F */  lui        $t3, %hi(__osViNext)
/* 9B510 8009A910 8D6BA5D4 */  lw         $t3, %lo(__osViNext)($t3)
/* 9B514 8009A914 2401FCFF */  addiu      $at, $zero, -0x301
/* 9B518 8009A918 8D6C000C */  lw         $t4, 0xc($t3)
/* 9B51C 8009A91C 01816824 */  and        $t5, $t4, $at
/* 9B520 8009A920 AD6D000C */  sw         $t5, 0xc($t3)
.L8009A924:
/* 9B524 8009A924 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9B528 8009A928 31CF0080 */  andi       $t7, $t6, 0x80
/* 9B52C 8009A92C 11E00010 */  beqz       $t7, .L8009A970
/* 9B530 8009A930 00000000 */   nop
/* 9B534 8009A934 3C18800F */  lui        $t8, %hi(__osViNext)
/* 9B538 8009A938 8F18A5D4 */  lw         $t8, %lo(__osViNext)($t8)
/* 9B53C 8009A93C 3C01FFFE */  lui        $at, 0xfffe
/* 9B540 8009A940 3421FFFF */  ori        $at, $at, 0xffff
/* 9B544 8009A944 8F19000C */  lw         $t9, 0xc($t8)
/* 9B548 8009A948 03214824 */  and        $t1, $t9, $at
/* 9B54C 8009A94C AF09000C */  sw         $t1, 0xc($t8)
/* 9B550 8009A950 3C0A800F */  lui        $t2, %hi(__osViNext)
/* 9B554 8009A954 8D4AA5D4 */  lw         $t2, %lo(__osViNext)($t2)
/* 9B558 8009A958 8D4C0008 */  lw         $t4, 8($t2)
/* 9B55C 8009A95C 8D48000C */  lw         $t0, 0xc($t2)
/* 9B560 8009A960 8D8D0004 */  lw         $t5, 4($t4)
/* 9B564 8009A964 31AB0300 */  andi       $t3, $t5, 0x300
/* 9B568 8009A968 010B7025 */  or         $t6, $t0, $t3
/* 9B56C 8009A96C AD4E000C */  sw         $t6, 0xc($t2)
.L8009A970:
/* 9B570 8009A970 3C0F800F */  lui        $t7, %hi(__osViNext)
/* 9B574 8009A974 8DEFA5D4 */  lw         $t7, %lo(__osViNext)($t7)
/* 9B578 8009A978 95F90000 */  lhu        $t9, ($t7)
/* 9B57C 8009A97C 37290008 */  ori        $t1, $t9, 8
/* 9B580 8009A980 A5E90000 */  sh         $t1, ($t7)
/* 9B584 8009A984 0C0297AC */  jal        __osRestoreInt
/* 9B588 8009A988 02002025 */   or        $a0, $s0, $zero
/* 9B58C 8009A98C 10000001 */  b          .L8009A994
/* 9B590 8009A990 00000000 */   nop
.L8009A994:
/* 9B594 8009A994 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9B598 8009A998 8FB00018 */  lw         $s0, 0x18($sp)
/* 9B59C 8009A99C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9B5A0 8009A9A0 03E00008 */  jr         $ra
/* 9B5A4 8009A9A4 00000000 */   nop
/* 9B5A8 8009A9A8 00000000 */  nop
/* 9B5AC 8009A9AC 00000000 */  nop
