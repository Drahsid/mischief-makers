glabel func_80029A7C
/* 2A67C 80029A7C 3C0A800E */  lui        $t2, %hi(D_800E3584)
/* 2A680 80029A80 8D4A3584 */  lw         $t2, %lo(D_800E3584)($t2)
/* 2A684 80029A84 00047400 */  sll        $t6, $a0, 0x10
/* 2A688 80029A88 0005C400 */  sll        $t8, $a1, 0x10
/* 2A68C 80029A8C 00064400 */  sll        $t0, $a2, 0x10
/* 2A690 80029A90 000A5BC0 */  sll        $t3, $t2, 0xf
/* 2A694 80029A94 00084C03 */  sra        $t1, $t0, 0x10
/* 2A698 80029A98 0018CC03 */  sra        $t9, $t8, 0x10
/* 2A69C 80029A9C 000E7C03 */  sra        $t7, $t6, 0x10
/* 2A6A0 80029AA0 AFA40000 */  sw         $a0, ($sp)
/* 2A6A4 80029AA4 AFA50004 */  sw         $a1, 4($sp)
/* 2A6A8 80029AA8 05610012 */  bgez       $t3, .L80029AF4
/* 2A6AC 80029AAC AFA60008 */   sw        $a2, 8($sp)
/* 2A6B0 80029AB0 3C02800E */  lui        $v0, %hi(D_800E3578)
/* 2A6B4 80029AB4 8C423578 */  lw         $v0, %lo(D_800E3578)($v0)
/* 2A6B8 80029AB8 000F6023 */  negu       $t4, $t7
/* 2A6BC 80029ABC 004F082A */  slt        $at, $v0, $t7
/* 2A6C0 80029AC0 1020000C */  beqz       $at, .L80029AF4
/* 2A6C4 80029AC4 0182082A */   slt       $at, $t4, $v0
/* 2A6C8 80029AC8 1020000A */  beqz       $at, .L80029AF4
/* 2A6CC 80029ACC 3C02800E */   lui       $v0, %hi(D_800E357C)
/* 2A6D0 80029AD0 8C42357C */  lw         $v0, %lo(D_800E357C)($v0)
/* 2A6D4 80029AD4 00000000 */  nop
/* 2A6D8 80029AD8 0059082A */  slt        $at, $v0, $t9
/* 2A6DC 80029ADC 10200005 */  beqz       $at, .L80029AF4
/* 2A6E0 80029AE0 0122082A */   slt       $at, $t1, $v0
/* 2A6E4 80029AE4 10200004 */  beqz       $at, .L80029AF8
/* 2A6E8 80029AE8 00001025 */   or        $v0, $zero, $zero
/* 2A6EC 80029AEC 03E00008 */  jr         $ra
/* 2A6F0 80029AF0 24020001 */   addiu     $v0, $zero, 1
.L80029AF4:
/* 2A6F4 80029AF4 00001025 */  or         $v0, $zero, $zero
.L80029AF8:
/* 2A6F8 80029AF8 03E00008 */  jr         $ra
/* 2A6FC 80029AFC 00000000 */   nop
