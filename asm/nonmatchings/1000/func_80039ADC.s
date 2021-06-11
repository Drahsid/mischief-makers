glabel func_80039ADC
/* 3A6DC 80039ADC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 3A6E0 80039AE0 AFA40030 */  sw         $a0, 0x30($sp)
/* 3A6E4 80039AE4 97AE0032 */  lhu        $t6, 0x32($sp)
/* 3A6E8 80039AE8 AFB30028 */  sw         $s3, 0x28($sp)
/* 3A6EC 80039AEC 24130198 */  addiu      $s3, $zero, 0x198
/* 3A6F0 80039AF0 01D30019 */  multu      $t6, $s3
/* 3A6F4 80039AF4 AFB20024 */  sw         $s2, 0x24($sp)
/* 3A6F8 80039AF8 3C12800F */  lui        $s2, %hi(gActors)
/* 3A6FC 80039AFC 2652F510 */  addiu      $s2, $s2, %lo(gActors)
/* 3A700 80039B00 3C0B800D */  lui        $t3, %hi(D_800D25BC)
/* 3A704 80039B04 AFB10020 */  sw         $s1, 0x20($sp)
/* 3A708 80039B08 AFB0001C */  sw         $s0, 0x1c($sp)
/* 3A70C 80039B0C 256B25BC */  addiu      $t3, $t3, %lo(D_800D25BC)
/* 3A710 80039B10 30B1FFFF */  andi       $s1, $a1, 0xffff
/* 3A714 80039B14 AFBF002C */  sw         $ra, 0x2c($sp)
/* 3A718 80039B18 AFA50034 */  sw         $a1, 0x34($sp)
/* 3A71C 80039B1C E7B50010 */  swc1       $f21, 0x10($sp)
/* 3A720 80039B20 00007812 */  mflo       $t7
/* 3A724 80039B24 024FC021 */  addu       $t8, $s2, $t7
/* 3A728 80039B28 971900D8 */  lhu        $t9, 0xd8($t8)
/* 3A72C 80039B2C E7B40014 */  swc1       $f20, 0x14($sp)
/* 3A730 80039B30 332800FF */  andi       $t0, $t9, 0xff
/* 3A734 80039B34 00084880 */  sll        $t1, $t0, 2
/* 3A738 80039B38 01284821 */  addu       $t1, $t1, $t0
/* 3A73C 80039B3C 00095040 */  sll        $t2, $t1, 1
/* 3A740 80039B40 014B8021 */  addu       $s0, $t2, $t3
/* 3A744 80039B44 02002825 */  or         $a1, $s0, $zero
/* 3A748 80039B48 0C00E687 */  jal        func_80039A1C
/* 3A74C 80039B4C 3224FFFF */   andi      $a0, $s1, 0xffff
/* 3A750 80039B50 97A40032 */  lhu        $a0, 0x32($sp)
/* 3A754 80039B54 0C00E63E */  jal        func_800398F8
/* 3A758 80039B58 3225FFFF */   andi      $a1, $s1, 0xffff
/* 3A75C 80039B5C 02330019 */  multu      $s1, $s3
/* 3A760 80039B60 3C013F80 */  lui        $at, 0x3f80
/* 3A764 80039B64 4481A000 */  mtc1       $at, $f20
/* 3A768 80039B68 00000000 */  nop
/* 3A76C 80039B6C 4600A306 */  mov.s      $f12, $f20
/* 3A770 80039B70 00006012 */  mflo       $t4
/* 3A774 80039B74 024C1021 */  addu       $v0, $s2, $t4
/* 3A778 80039B78 84450088 */  lh         $a1, 0x88($v0)
/* 3A77C 80039B7C 8446008C */  lh         $a2, 0x8c($v0)
/* 3A780 80039B80 84470090 */  lh         $a3, 0x90($v0)
/* 3A784 80039B84 0C00FFA4 */  jal        func_8003FE90
/* 3A788 80039B88 00000000 */   nop
/* 3A78C 80039B8C 960D0008 */  lhu        $t5, 8($s0)
/* 3A790 80039B90 00000000 */  nop
/* 3A794 80039B94 31AE8000 */  andi       $t6, $t5, 0x8000
/* 3A798 80039B98 11C00017 */  beqz       $t6, .L80039BF8
/* 3A79C 80039B9C 8FBF002C */   lw        $ra, 0x2c($sp)
.L80039BA0:
/* 3A7A0 80039BA0 26310001 */  addiu      $s1, $s1, 1
/* 3A7A4 80039BA4 322FFFFF */  andi       $t7, $s1, 0xffff
/* 3A7A8 80039BA8 2610000A */  addiu      $s0, $s0, 0xa
/* 3A7AC 80039BAC 01E08825 */  or         $s1, $t7, $zero
/* 3A7B0 80039BB0 02002825 */  or         $a1, $s0, $zero
/* 3A7B4 80039BB4 0C00E687 */  jal        func_80039A1C
/* 3A7B8 80039BB8 31E4FFFF */   andi      $a0, $t7, 0xffff
/* 3A7BC 80039BBC 02330019 */  multu      $s1, $s3
/* 3A7C0 80039BC0 4600A306 */  mov.s      $f12, $f20
/* 3A7C4 80039BC4 0000C012 */  mflo       $t8
/* 3A7C8 80039BC8 02581021 */  addu       $v0, $s2, $t8
/* 3A7CC 80039BCC 84450088 */  lh         $a1, 0x88($v0)
/* 3A7D0 80039BD0 8446008C */  lh         $a2, 0x8c($v0)
/* 3A7D4 80039BD4 84470090 */  lh         $a3, 0x90($v0)
/* 3A7D8 80039BD8 0C00FFB6 */  jal        func_8003FED8
/* 3A7DC 80039BDC 00000000 */   nop
/* 3A7E0 80039BE0 96190008 */  lhu        $t9, 8($s0)
/* 3A7E4 80039BE4 00000000 */  nop
/* 3A7E8 80039BE8 33288000 */  andi       $t0, $t9, 0x8000
/* 3A7EC 80039BEC 1500FFEC */  bnez       $t0, .L80039BA0
/* 3A7F0 80039BF0 00000000 */   nop
/* 3A7F4 80039BF4 8FBF002C */  lw         $ra, 0x2c($sp)
.L80039BF8:
/* 3A7F8 80039BF8 02201025 */  or         $v0, $s1, $zero
/* 3A7FC 80039BFC 8FB10020 */  lw         $s1, 0x20($sp)
/* 3A800 80039C00 C7B50010 */  lwc1       $f21, 0x10($sp)
/* 3A804 80039C04 C7B40014 */  lwc1       $f20, 0x14($sp)
/* 3A808 80039C08 8FB0001C */  lw         $s0, 0x1c($sp)
/* 3A80C 80039C0C 8FB20024 */  lw         $s2, 0x24($sp)
/* 3A810 80039C10 8FB30028 */  lw         $s3, 0x28($sp)
/* 3A814 80039C14 03E00008 */  jr         $ra
/* 3A818 80039C18 27BD0030 */   addiu     $sp, $sp, 0x30
