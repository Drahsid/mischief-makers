glabel func_80079EB8
/* 7AAB8 80079EB8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 7AABC 80079EBC 000E7880 */  sll        $t7, $t6, 2
/* 7AAC0 80079EC0 01EE7823 */  subu       $t7, $t7, $t6
/* 7AAC4 80079EC4 000F7880 */  sll        $t7, $t7, 2
/* 7AAC8 80079EC8 01EE7821 */  addu       $t7, $t7, $t6
/* 7AACC 80079ECC 000F7880 */  sll        $t7, $t7, 2
/* 7AAD0 80079ED0 01EE7823 */  subu       $t7, $t7, $t6
/* 7AAD4 80079ED4 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 7AAD8 80079ED8 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 7AADC 80079EDC 000F78C0 */  sll        $t7, $t7, 3
/* 7AAE0 80079EE0 01F81021 */  addu       $v0, $t7, $t8
/* 7AAE4 80079EE4 44801000 */  mtc1       $zero, $f2
/* 7AAE8 80079EE8 C4400118 */  lwc1       $f0, 0x118($v0)
/* 7AAEC 80079EEC AFA40000 */  sw         $a0, ($sp)
/* 7AAF0 80079EF0 4600103E */  c.le.s     $f2, $f0
/* 7AAF4 80079EF4 3C013F80 */  lui        $at, 0x3f80
/* 7AAF8 80079EF8 45000013 */  bc1f       .L80079F48
/* 7AAFC 80079EFC 00000000 */   nop
/* 7AB00 80079F00 44812000 */  mtc1       $at, $f4
/* 7AB04 80079F04 00000000 */  nop
/* 7AB08 80079F08 46040181 */  sub.s      $f6, $f0, $f4
/* 7AB0C 80079F0C E4460118 */  swc1       $f6, 0x118($v0)
/* 7AB10 80079F10 C4480118 */  lwc1       $f8, 0x118($v0)
/* 7AB14 80079F14 00000000 */  nop
/* 7AB18 80079F18 46081032 */  c.eq.s     $f2, $f8
/* 7AB1C 80079F1C 00000000 */  nop
/* 7AB20 80079F20 45000009 */  bc1f       .L80079F48
/* 7AB24 80079F24 00000000 */   nop
/* 7AB28 80079F28 8C490080 */  lw         $t1, 0x80($v0)
/* 7AB2C 80079F2C 8C4A015C */  lw         $t2, 0x15c($v0)
/* 7AB30 80079F30 8C590154 */  lw         $t9, 0x154($v0)
/* 7AB34 80079F34 8C480158 */  lw         $t0, 0x158($v0)
/* 7AB38 80079F38 012A5825 */  or         $t3, $t1, $t2
/* 7AB3C 80079F3C AC4B0080 */  sw         $t3, 0x80($v0)
/* 7AB40 80079F40 AC5900EC */  sw         $t9, 0xec($v0)
/* 7AB44 80079F44 AC4800F0 */  sw         $t0, 0xf0($v0)
.L80079F48:
/* 7AB48 80079F48 03E00008 */  jr         $ra
/* 7AB4C 80079F4C 00000000 */   nop
