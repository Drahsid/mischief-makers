glabel func_80029B00
/* 2A700 80029B00 3C02800E */  lui        $v0, %hi(D_800E3578)
/* 2A704 80029B04 8C423578 */  lw         $v0, %lo(D_800E3578)($v0)
/* 2A708 80029B08 00047400 */  sll        $t6, $a0, 0x10
/* 2A70C 80029B0C 000E7C03 */  sra        $t7, $t6, 0x10
/* 2A710 80029B10 0005C400 */  sll        $t8, $a1, 0x10
/* 2A714 80029B14 00064400 */  sll        $t0, $a2, 0x10
/* 2A718 80029B18 004F082A */  slt        $at, $v0, $t7
/* 2A71C 80029B1C 00084C03 */  sra        $t1, $t0, 0x10
/* 2A720 80029B20 0018CC03 */  sra        $t9, $t8, 0x10
/* 2A724 80029B24 AFA40000 */  sw         $a0, ($sp)
/* 2A728 80029B28 AFA50004 */  sw         $a1, 4($sp)
/* 2A72C 80029B2C 1020000E */  beqz       $at, .L80029B68
/* 2A730 80029B30 AFA60008 */   sw        $a2, 8($sp)
/* 2A734 80029B34 000F5023 */  negu       $t2, $t7
/* 2A738 80029B38 0142082A */  slt        $at, $t2, $v0
/* 2A73C 80029B3C 1020000A */  beqz       $at, .L80029B68
/* 2A740 80029B40 3C02800E */   lui       $v0, %hi(D_800E357C)
/* 2A744 80029B44 8C42357C */  lw         $v0, %lo(D_800E357C)($v0)
/* 2A748 80029B48 00000000 */  nop
/* 2A74C 80029B4C 0059082A */  slt        $at, $v0, $t9
/* 2A750 80029B50 10200005 */  beqz       $at, .L80029B68
/* 2A754 80029B54 0122082A */   slt       $at, $t1, $v0
/* 2A758 80029B58 10200004 */  beqz       $at, .L80029B6C
/* 2A75C 80029B5C 00001025 */   or        $v0, $zero, $zero
/* 2A760 80029B60 03E00008 */  jr         $ra
/* 2A764 80029B64 24020001 */   addiu     $v0, $zero, 1
.L80029B68:
/* 2A768 80029B68 00001025 */  or         $v0, $zero, $zero
.L80029B6C:
/* 2A76C 80029B6C 03E00008 */  jr         $ra
/* 2A770 80029B70 00000000 */   nop