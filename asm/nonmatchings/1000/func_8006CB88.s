glabel func_8006CB88
/* 6D788 8006CB88 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6D78C 8006CB8C 24060198 */  addiu      $a2, $zero, 0x198
/* 6D790 8006CB90 01C60019 */  multu      $t6, $a2
/* 6D794 8006CB94 3C05800F */  lui        $a1, %hi(D_800EF510)
/* 6D798 8006CB98 24A5F510 */  addiu      $a1, $a1, %lo(D_800EF510)
/* 6D79C 8006CB9C 4458F800 */  cfc1       $t8, $31
/* 6D7A0 8006CBA0 24020001 */  addiu      $v0, $zero, 1
/* 6D7A4 8006CBA4 44C2F800 */  ctc1       $v0, $31
/* 6D7A8 8006CBA8 AFA40000 */  sw         $a0, ($sp)
/* 6D7AC 8006CBAC 3C014F00 */  lui        $at, 0x4f00
/* 6D7B0 8006CBB0 00007812 */  mflo       $t7
/* 6D7B4 8006CBB4 00AF1821 */  addu       $v1, $a1, $t7
/* 6D7B8 8006CBB8 C4640140 */  lwc1       $f4, 0x140($v1)
/* 6D7BC 8006CBBC 00000000 */  nop
/* 6D7C0 8006CBC0 460021A4 */  cvt.w.s    $f6, $f4
/* 6D7C4 8006CBC4 4442F800 */  cfc1       $v0, $31
/* 6D7C8 8006CBC8 00000000 */  nop
/* 6D7CC 8006CBCC 30420078 */  andi       $v0, $v0, 0x78
/* 6D7D0 8006CBD0 10400012 */  beqz       $v0, .L8006CC1C
/* 6D7D4 8006CBD4 00000000 */   nop
/* 6D7D8 8006CBD8 44813000 */  mtc1       $at, $f6
/* 6D7DC 8006CBDC 24020001 */  addiu      $v0, $zero, 1
/* 6D7E0 8006CBE0 46062181 */  sub.s      $f6, $f4, $f6
/* 6D7E4 8006CBE4 3C018000 */  lui        $at, 0x8000
/* 6D7E8 8006CBE8 44C2F800 */  ctc1       $v0, $31
/* 6D7EC 8006CBEC 00000000 */  nop
/* 6D7F0 8006CBF0 460031A4 */  cvt.w.s    $f6, $f6
/* 6D7F4 8006CBF4 4442F800 */  cfc1       $v0, $31
/* 6D7F8 8006CBF8 00000000 */  nop
/* 6D7FC 8006CBFC 30420078 */  andi       $v0, $v0, 0x78
/* 6D800 8006CC00 14400004 */  bnez       $v0, .L8006CC14
/* 6D804 8006CC04 00000000 */   nop
/* 6D808 8006CC08 44023000 */  mfc1       $v0, $f6
/* 6D80C 8006CC0C 10000007 */  b          .L8006CC2C
/* 6D810 8006CC10 00411025 */   or        $v0, $v0, $at
.L8006CC14:
/* 6D814 8006CC14 10000005 */  b          .L8006CC2C
/* 6D818 8006CC18 2402FFFF */   addiu     $v0, $zero, -1
.L8006CC1C:
/* 6D81C 8006CC1C 44023000 */  mfc1       $v0, $f6
/* 6D820 8006CC20 00000000 */  nop
/* 6D824 8006CC24 0440FFFB */  bltz       $v0, .L8006CC14
/* 6D828 8006CC28 00000000 */   nop
.L8006CC2C:
/* 6D82C 8006CC2C 44D8F800 */  ctc1       $t8, $31
/* 6D830 8006CC30 3059FFFF */  andi       $t9, $v0, 0xffff
/* 6D834 8006CC34 1320000C */  beqz       $t9, .L8006CC68
/* 6D838 8006CC38 00000000 */   nop
/* 6D83C 8006CC3C 03260019 */  multu      $t9, $a2
/* 6D840 8006CC40 24010034 */  addiu      $at, $zero, 0x34
/* 6D844 8006CC44 00004012 */  mflo       $t0
/* 6D848 8006CC48 00A82021 */  addu       $a0, $a1, $t0
/* 6D84C 8006CC4C 948900D2 */  lhu        $t1, 0xd2($a0)
/* 6D850 8006CC50 00000000 */  nop
/* 6D854 8006CC54 15210004 */  bne        $t1, $at, .L8006CC68
/* 6D858 8006CC58 00000000 */   nop
/* 6D85C 8006CC5C 44804000 */  mtc1       $zero, $f8
/* 6D860 8006CC60 AC800080 */  sw         $zero, 0x80($a0)
/* 6D864 8006CC64 E4680140 */  swc1       $f8, 0x140($v1)
.L8006CC68:
/* 6D868 8006CC68 03E00008 */  jr         $ra
/* 6D86C 8006CC6C 00000000 */   nop
