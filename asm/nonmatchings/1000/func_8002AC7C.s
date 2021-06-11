glabel func_8002AC7C
/* 2B87C 8002AC7C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2B880 8002AC80 000E4880 */  sll        $t1, $t6, 2
/* 2B884 8002AC84 012E4823 */  subu       $t1, $t1, $t6
/* 2B888 8002AC88 00094880 */  sll        $t1, $t1, 2
/* 2B88C 8002AC8C 012E4821 */  addu       $t1, $t1, $t6
/* 2B890 8002AC90 00094880 */  sll        $t1, $t1, 2
/* 2B894 8002AC94 012E4823 */  subu       $t1, $t1, $t6
/* 2B898 8002AC98 3C0A800F */  lui        $t2, %hi(gActors)
/* 2B89C 8002AC9C 254AF510 */  addiu      $t2, $t2, %lo(gActors)
/* 2B8A0 8002ACA0 000948C0 */  sll        $t1, $t1, 3
/* 2B8A4 8002ACA4 012A1021 */  addu       $v0, $t1, $t2
/* 2B8A8 8002ACA8 8C4B0080 */  lw         $t3, 0x80($v0)
/* 2B8AC 8002ACAC 00057C00 */  sll        $t7, $a1, 0x10
/* 2B8B0 8002ACB0 0006CC00 */  sll        $t9, $a2, 0x10
/* 2B8B4 8002ACB4 00194403 */  sra        $t0, $t9, 0x10
/* 2B8B8 8002ACB8 000FC403 */  sra        $t8, $t7, 0x10
/* 2B8BC 8002ACBC AFA50004 */  sw         $a1, 4($sp)
/* 2B8C0 8002ACC0 AFA60008 */  sw         $a2, 8($sp)
/* 2B8C4 8002ACC4 316C0020 */  andi       $t4, $t3, 0x20
/* 2B8C8 8002ACC8 01003025 */  or         $a2, $t0, $zero
/* 2B8CC 8002ACCC 03002825 */  or         $a1, $t8, $zero
/* 2B8D0 8002ACD0 11800006 */  beqz       $t4, .L8002ACEC
/* 2B8D4 8002ACD4 AFA40000 */   sw        $a0, ($sp)
/* 2B8D8 8002ACD8 00186823 */  negu       $t5, $t8
/* 2B8DC 8002ACDC 00087023 */  negu       $t6, $t0
/* 2B8E0 8002ACE0 A44D00A4 */  sh         $t5, 0xa4($v0)
/* 2B8E4 8002ACE4 03E00008 */  jr         $ra
/* 2B8E8 8002ACE8 A44E00A2 */   sh        $t6, 0xa2($v0)
.L8002ACEC:
/* 2B8EC 8002ACEC A44500A2 */  sh         $a1, 0xa2($v0)
/* 2B8F0 8002ACF0 A44600A4 */  sh         $a2, 0xa4($v0)
/* 2B8F4 8002ACF4 03E00008 */  jr         $ra
/* 2B8F8 8002ACF8 00000000 */   nop
