glabel func_8006DCB8
/* 6E8B8 8006DCB8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6E8BC 8006DCBC AFBF0014 */  sw         $ra, 0x14($sp)
/* 6E8C0 8006DCC0 AFA40020 */  sw         $a0, 0x20($sp)
/* 6E8C4 8006DCC4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6E8C8 8006DCC8 01C02025 */  or         $a0, $t6, $zero
/* 6E8CC 8006DCCC 0C01B22E */  jal        func_8006C8B8
/* 6E8D0 8006DCD0 A7AE0022 */   sh        $t6, 0x22($sp)
/* 6E8D4 8006DCD4 97A40022 */  lhu        $a0, 0x22($sp)
/* 6E8D8 8006DCD8 14400041 */  bnez       $v0, .L8006DDE0
/* 6E8DC 8006DCDC 00047880 */   sll       $t7, $a0, 2
/* 6E8E0 8006DCE0 01E47823 */  subu       $t7, $t7, $a0
/* 6E8E4 8006DCE4 000F7880 */  sll        $t7, $t7, 2
/* 6E8E8 8006DCE8 01E47821 */  addu       $t7, $t7, $a0
/* 6E8EC 8006DCEC 000F7880 */  sll        $t7, $t7, 2
/* 6E8F0 8006DCF0 01E47823 */  subu       $t7, $t7, $a0
/* 6E8F4 8006DCF4 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 6E8F8 8006DCF8 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 6E8FC 8006DCFC 000F78C0 */  sll        $t7, $t7, 3
/* 6E900 8006DD00 01F81021 */  addu       $v0, $t7, $t8
/* 6E904 8006DD04 944300D0 */  lhu        $v1, 0xd0($v0)
/* 6E908 8006DD08 240100C0 */  addiu      $at, $zero, 0xc0
/* 6E90C 8006DD0C 1461000B */  bne        $v1, $at, .L8006DD3C
/* 6E910 8006DD10 24790001 */   addiu     $t9, $v1, 1
/* 6E914 8006DD14 44802000 */  mtc1       $zero, $f4
/* 6E918 8006DD18 3C08800E */  lui        $t0, %hi(D_800E1A8C)
/* 6E91C 8006DD1C 25081A8C */  addiu      $t0, $t0, %lo(D_800E1A8C)
/* 6E920 8006DD20 24090001 */  addiu      $t1, $zero, 1
/* 6E924 8006DD24 240A0016 */  addiu      $t2, $zero, 0x16
/* 6E928 8006DD28 A45900D0 */  sh         $t9, 0xd0($v0)
/* 6E92C 8006DD2C A44900E6 */  sh         $t1, 0xe6($v0)
/* 6E930 8006DD30 AC4800E8 */  sw         $t0, 0xe8($v0)
/* 6E934 8006DD34 AC4A0158 */  sw         $t2, 0x158($v0)
/* 6E938 8006DD38 E4440118 */  swc1       $f4, 0x118($v0)
.L8006DD3C:
/* 6E93C 8006DD3C 8C4B0158 */  lw         $t3, 0x158($v0)
/* 6E940 8006DD40 00000000 */  nop
/* 6E944 8006DD44 2563FFFF */  addiu      $v1, $t3, -1
/* 6E948 8006DD48 18600006 */  blez       $v1, .L8006DD64
/* 6E94C 8006DD4C AC430158 */   sw        $v1, 0x158($v0)
/* 6E950 8006DD50 0C01A6E5 */  jal        func_80069B94
/* 6E954 8006DD54 AFA2001C */   sw        $v0, 0x1c($sp)
/* 6E958 8006DD58 8FA2001C */  lw         $v0, 0x1c($sp)
/* 6E95C 8006DD5C 10000013 */  b          .L8006DDAC
/* 6E960 8006DD60 844F00E6 */   lh        $t7, 0xe6($v0)
.L8006DD64:
/* 6E964 8006DD64 14600010 */  bnez       $v1, .L8006DDA8
/* 6E968 8006DD68 3C01C750 */   lui       $at, 0xc750
/* 6E96C 8006DD6C C4460148 */  lwc1       $f6, 0x148($v0)
/* 6E970 8006DD70 44814000 */  mtc1       $at, $f8
/* 6E974 8006DD74 00000000 */  nop
/* 6E978 8006DD78 46083282 */  mul.s      $f10, $f6, $f8
/* 6E97C 8006DD7C 444DF800 */  cfc1       $t5, $31
/* 6E980 8006DD80 00000000 */  nop
/* 6E984 8006DD84 35A10003 */  ori        $at, $t5, 3
/* 6E988 8006DD88 38210002 */  xori       $at, $at, 2
/* 6E98C 8006DD8C 44C1F800 */  ctc1       $at, $31
/* 6E990 8006DD90 00000000 */  nop
/* 6E994 8006DD94 46005424 */  cvt.w.s    $f16, $f10
/* 6E998 8006DD98 440E8000 */  mfc1       $t6, $f16
/* 6E99C 8006DD9C 44CDF800 */  ctc1       $t5, $31
/* 6E9A0 8006DDA0 AC4E00EC */  sw         $t6, 0xec($v0)
/* 6E9A4 8006DDA4 00000000 */  nop
.L8006DDA8:
/* 6E9A8 8006DDA8 844F00E6 */  lh         $t7, 0xe6($v0)
.L8006DDAC:
/* 6E9AC 8006DDAC 00000000 */  nop
/* 6E9B0 8006DDB0 15E0000C */  bnez       $t7, .L8006DDE4
/* 6E9B4 8006DDB4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 6E9B8 8006DDB8 44809000 */  mtc1       $zero, $f18
/* 6E9BC 8006DDBC C4440118 */  lwc1       $f4, 0x118($v0)
/* 6E9C0 8006DDC0 3C014040 */  lui        $at, 0x4040
/* 6E9C4 8006DDC4 46049032 */  c.eq.s     $f18, $f4
/* 6E9C8 8006DDC8 24180060 */  addiu      $t8, $zero, 0x60
/* 6E9CC 8006DDCC 45000005 */  bc1f       .L8006DDE4
/* 6E9D0 8006DDD0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 6E9D4 8006DDD4 44813000 */  mtc1       $at, $f6
/* 6E9D8 8006DDD8 A45800D0 */  sh         $t8, 0xd0($v0)
/* 6E9DC 8006DDDC E446013C */  swc1       $f6, 0x13c($v0)
.L8006DDE0:
/* 6E9E0 8006DDE0 8FBF0014 */  lw         $ra, 0x14($sp)
.L8006DDE4:
/* 6E9E4 8006DDE4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 6E9E8 8006DDE8 03E00008 */  jr         $ra
/* 6E9EC 8006DDEC 00000000 */   nop
