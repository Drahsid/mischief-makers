glabel func_8006D914
/* 6E514 8006D914 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6E518 8006D918 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6E51C 8006D91C AFA40018 */  sw         $a0, 0x18($sp)
/* 6E520 8006D920 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6E524 8006D924 01C02025 */  or         $a0, $t6, $zero
/* 6E528 8006D928 0C01B22E */  jal        func_8006C8B8
/* 6E52C 8006D92C A7AE001A */   sh        $t6, 0x1a($sp)
/* 6E530 8006D930 97A4001A */  lhu        $a0, 0x1a($sp)
/* 6E534 8006D934 14400017 */  bnez       $v0, .L8006D994
/* 6E538 8006D938 00047880 */   sll       $t7, $a0, 2
/* 6E53C 8006D93C 01E47823 */  subu       $t7, $t7, $a0
/* 6E540 8006D940 000F7880 */  sll        $t7, $t7, 2
/* 6E544 8006D944 01E47821 */  addu       $t7, $t7, $a0
/* 6E548 8006D948 000F7880 */  sll        $t7, $t7, 2
/* 6E54C 8006D94C 01E47823 */  subu       $t7, $t7, $a0
/* 6E550 8006D950 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 6E554 8006D954 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 6E558 8006D958 000F78C0 */  sll        $t7, $t7, 3
/* 6E55C 8006D95C 01F81021 */  addu       $v0, $t7, $t8
/* 6E560 8006D960 944300D0 */  lhu        $v1, 0xd0($v0)
/* 6E564 8006D964 240100A0 */  addiu      $at, $zero, 0xa0
/* 6E568 8006D968 14610008 */  bne        $v1, $at, .L8006D98C
/* 6E56C 8006D96C 24790001 */   addiu     $t9, $v1, 1
/* 6E570 8006D970 3C013F80 */  lui        $at, 0x3f80
/* 6E574 8006D974 44812000 */  mtc1       $at, $f4
/* 6E578 8006D978 44803000 */  mtc1       $zero, $f6
/* 6E57C 8006D97C A45900D0 */  sh         $t9, 0xd0($v0)
/* 6E580 8006D980 A44000E6 */  sh         $zero, 0xe6($v0)
/* 6E584 8006D984 E4440118 */  swc1       $f4, 0x118($v0)
/* 6E588 8006D988 E446011C */  swc1       $f6, 0x11c($v0)
.L8006D98C:
/* 6E58C 8006D98C 0C01A82E */  jal        func_8006A0B8
/* 6E590 8006D990 00000000 */   nop
.L8006D994:
/* 6E594 8006D994 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6E598 8006D998 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6E59C 8006D99C 03E00008 */  jr         $ra
/* 6E5A0 8006D9A0 00000000 */   nop
