glabel func_80029C44
/* 2A844 80029C44 3C02800E */  lui        $v0, %hi(D_800E3578)
/* 2A848 80029C48 8C423578 */  lw         $v0, %lo(D_800E3578)($v0)
/* 2A84C 80029C4C 00047400 */  sll        $t6, $a0, 0x10
/* 2A850 80029C50 000E7C03 */  sra        $t7, $t6, 0x10
/* 2A854 80029C54 0005C400 */  sll        $t8, $a1, 0x10
/* 2A858 80029C58 00064400 */  sll        $t0, $a2, 0x10
/* 2A85C 80029C5C 00075400 */  sll        $t2, $a3, 0x10
/* 2A860 80029C60 01E2082A */  slt        $at, $t7, $v0
/* 2A864 80029C64 000A5C03 */  sra        $t3, $t2, 0x10
/* 2A868 80029C68 00084C03 */  sra        $t1, $t0, 0x10
/* 2A86C 80029C6C 0018CC03 */  sra        $t9, $t8, 0x10
/* 2A870 80029C70 AFA40000 */  sw         $a0, ($sp)
/* 2A874 80029C74 AFA50004 */  sw         $a1, 4($sp)
/* 2A878 80029C78 AFA60008 */  sw         $a2, 8($sp)
/* 2A87C 80029C7C 1020000D */  beqz       $at, .L80029CB4
/* 2A880 80029C80 AFA7000C */   sw        $a3, 0xc($sp)
/* 2A884 80029C84 0059082A */  slt        $at, $v0, $t9
/* 2A888 80029C88 1020000A */  beqz       $at, .L80029CB4
/* 2A88C 80029C8C 3C02800E */   lui       $v0, %hi(D_800E357C)
/* 2A890 80029C90 8C42357C */  lw         $v0, %lo(D_800E357C)($v0)
/* 2A894 80029C94 00000000 */  nop
/* 2A898 80029C98 0049082A */  slt        $at, $v0, $t1
/* 2A89C 80029C9C 10200005 */  beqz       $at, .L80029CB4
/* 2A8A0 80029CA0 0162082A */   slt       $at, $t3, $v0
/* 2A8A4 80029CA4 10200004 */  beqz       $at, .L80029CB8
/* 2A8A8 80029CA8 00001025 */   or        $v0, $zero, $zero
/* 2A8AC 80029CAC 03E00008 */  jr         $ra
/* 2A8B0 80029CB0 24020001 */   addiu     $v0, $zero, 1
.L80029CB4:
/* 2A8B4 80029CB4 00001025 */  or         $v0, $zero, $zero
.L80029CB8:
/* 2A8B8 80029CB8 03E00008 */  jr         $ra
/* 2A8BC 80029CBC 00000000 */   nop