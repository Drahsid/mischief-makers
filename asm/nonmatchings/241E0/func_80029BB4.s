glabel func_80029BB4
/* 2A7B4 80029BB4 3C0C800E */  lui        $t4, %hi(D_800E3584)
/* 2A7B8 80029BB8 8D8C3584 */  lw         $t4, %lo(D_800E3584)($t4)
/* 2A7BC 80029BBC 00047400 */  sll        $t6, $a0, 0x10
/* 2A7C0 80029BC0 0005C400 */  sll        $t8, $a1, 0x10
/* 2A7C4 80029BC4 00064400 */  sll        $t0, $a2, 0x10
/* 2A7C8 80029BC8 00075400 */  sll        $t2, $a3, 0x10
/* 2A7CC 80029BCC 000C6BC0 */  sll        $t5, $t4, 0xf
/* 2A7D0 80029BD0 000A5C03 */  sra        $t3, $t2, 0x10
/* 2A7D4 80029BD4 00084C03 */  sra        $t1, $t0, 0x10
/* 2A7D8 80029BD8 0018CC03 */  sra        $t9, $t8, 0x10
/* 2A7DC 80029BDC 000E7C03 */  sra        $t7, $t6, 0x10
/* 2A7E0 80029BE0 AFA40000 */  sw         $a0, ($sp)
/* 2A7E4 80029BE4 AFA50004 */  sw         $a1, 4($sp)
/* 2A7E8 80029BE8 AFA60008 */  sw         $a2, 8($sp)
/* 2A7EC 80029BEC 05A10012 */  bgez       $t5, .L80029C38
/* 2A7F0 80029BF0 AFA7000C */   sw        $a3, 0xc($sp)
/* 2A7F4 80029BF4 3C02800E */  lui        $v0, %hi(D_800E3578)
/* 2A7F8 80029BF8 8C423578 */  lw         $v0, %lo(D_800E3578)($v0)
/* 2A7FC 80029BFC 00000000 */  nop
/* 2A800 80029C00 0059082A */  slt        $at, $v0, $t9
/* 2A804 80029C04 1020000C */  beqz       $at, .L80029C38
/* 2A808 80029C08 01E2082A */   slt       $at, $t7, $v0
/* 2A80C 80029C0C 1020000A */  beqz       $at, .L80029C38
/* 2A810 80029C10 3C02800E */   lui       $v0, %hi(D_800E357C)
/* 2A814 80029C14 8C42357C */  lw         $v0, %lo(D_800E357C)($v0)
/* 2A818 80029C18 00000000 */  nop
/* 2A81C 80029C1C 0049082A */  slt        $at, $v0, $t1
/* 2A820 80029C20 10200005 */  beqz       $at, .L80029C38
/* 2A824 80029C24 0162082A */   slt       $at, $t3, $v0
/* 2A828 80029C28 10200004 */  beqz       $at, .L80029C3C
/* 2A82C 80029C2C 00001025 */   or        $v0, $zero, $zero
/* 2A830 80029C30 03E00008 */  jr         $ra
/* 2A834 80029C34 24020001 */   addiu     $v0, $zero, 1
.L80029C38:
/* 2A838 80029C38 00001025 */  or         $v0, $zero, $zero
.L80029C3C:
/* 2A83C 80029C3C 03E00008 */  jr         $ra
/* 2A840 80029C40 00000000 */   nop
