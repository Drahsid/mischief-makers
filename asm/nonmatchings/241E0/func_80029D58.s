glabel func_80029D58
/* 2A958 80029D58 3C0C800E */  lui        $t4, %hi(D_800E3584)
/* 2A95C 80029D5C 8D8C3584 */  lw         $t4, %lo(D_800E3584)($t4)
/* 2A960 80029D60 3C010003 */  lui        $at, 3
/* 2A964 80029D64 00047400 */  sll        $t6, $a0, 0x10
/* 2A968 80029D68 0005C400 */  sll        $t8, $a1, 0x10
/* 2A96C 80029D6C 00064400 */  sll        $t0, $a2, 0x10
/* 2A970 80029D70 00075400 */  sll        $t2, $a3, 0x10
/* 2A974 80029D74 01816824 */  and        $t5, $t4, $at
/* 2A978 80029D78 000A5C03 */  sra        $t3, $t2, 0x10
/* 2A97C 80029D7C 00084C03 */  sra        $t1, $t0, 0x10
/* 2A980 80029D80 0018CC03 */  sra        $t9, $t8, 0x10
/* 2A984 80029D84 000E7C03 */  sra        $t7, $t6, 0x10
/* 2A988 80029D88 AFA40000 */  sw         $a0, ($sp)
/* 2A98C 80029D8C AFA50004 */  sw         $a1, 4($sp)
/* 2A990 80029D90 AFA60008 */  sw         $a2, 8($sp)
/* 2A994 80029D94 11A00012 */  beqz       $t5, .L80029DE0
/* 2A998 80029D98 AFA7000C */   sw        $a3, 0xc($sp)
/* 2A99C 80029D9C 3C02800E */  lui        $v0, %hi(D_800E3578)
/* 2A9A0 80029DA0 8C423578 */  lw         $v0, %lo(D_800E3578)($v0)
/* 2A9A4 80029DA4 00000000 */  nop
/* 2A9A8 80029DA8 0059082A */  slt        $at, $v0, $t9
/* 2A9AC 80029DAC 1020000C */  beqz       $at, .L80029DE0
/* 2A9B0 80029DB0 01E2082A */   slt       $at, $t7, $v0
/* 2A9B4 80029DB4 1020000A */  beqz       $at, .L80029DE0
/* 2A9B8 80029DB8 3C02800E */   lui       $v0, %hi(D_800E357C)
/* 2A9BC 80029DBC 8C42357C */  lw         $v0, %lo(D_800E357C)($v0)
/* 2A9C0 80029DC0 00000000 */  nop
/* 2A9C4 80029DC4 0049082A */  slt        $at, $v0, $t1
/* 2A9C8 80029DC8 10200005 */  beqz       $at, .L80029DE0
/* 2A9CC 80029DCC 0162082A */   slt       $at, $t3, $v0
/* 2A9D0 80029DD0 10200004 */  beqz       $at, .L80029DE4
/* 2A9D4 80029DD4 00001025 */   or        $v0, $zero, $zero
/* 2A9D8 80029DD8 03E00008 */  jr         $ra
/* 2A9DC 80029DDC 24020001 */   addiu     $v0, $zero, 1
.L80029DE0:
/* 2A9E0 80029DE0 00001025 */  or         $v0, $zero, $zero
.L80029DE4:
/* 2A9E4 80029DE4 03E00008 */  jr         $ra
/* 2A9E8 80029DE8 00000000 */   nop