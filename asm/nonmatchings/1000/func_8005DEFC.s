glabel func_8005DEFC
/* 5EAFC 8005DEFC 3C038018 */  lui        $v1, %hi(D_80178418)
/* 5EB00 8005DF00 84638418 */  lh         $v1, %lo(D_80178418)($v1)
/* 5EB04 8005DF04 3C0E8018 */  lui        $t6, %hi(D_801783F8)
/* 5EB08 8005DF08 10600007 */  beqz       $v1, .L8005DF28
/* 5EB0C 8005DF0C 00000000 */   nop
/* 5EB10 8005DF10 85CE83F8 */  lh         $t6, %lo(D_801783F8)($t6)
/* 5EB14 8005DF14 00000000 */  nop
/* 5EB18 8005DF18 31CF8000 */  andi       $t7, $t6, 0x8000
/* 5EB1C 8005DF1C 006F1825 */  or         $v1, $v1, $t7
/* 5EB20 8005DF20 0003C400 */  sll        $t8, $v1, 0x10
/* 5EB24 8005DF24 00181C03 */  sra        $v1, $t8, 0x10
.L8005DF28:
/* 5EB28 8005DF28 03E00008 */  jr         $ra
/* 5EB2C 8005DF2C 00601025 */   or        $v0, $v1, $zero
