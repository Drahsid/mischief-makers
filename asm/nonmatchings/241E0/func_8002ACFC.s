glabel func_8002ACFC
/* 2B8FC 8002ACFC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2B900 8002AD00 000E4880 */  sll        $t1, $t6, 2
/* 2B904 8002AD04 012E4823 */  subu       $t1, $t1, $t6
/* 2B908 8002AD08 00094880 */  sll        $t1, $t1, 2
/* 2B90C 8002AD0C 012E4821 */  addu       $t1, $t1, $t6
/* 2B910 8002AD10 00094880 */  sll        $t1, $t1, 2
/* 2B914 8002AD14 012E4823 */  subu       $t1, $t1, $t6
/* 2B918 8002AD18 3C0A800F */  lui        $t2, %hi(D_800EF510)
/* 2B91C 8002AD1C 254AF510 */  addiu      $t2, $t2, %lo(D_800EF510)
/* 2B920 8002AD20 000948C0 */  sll        $t1, $t1, 3
/* 2B924 8002AD24 012A1021 */  addu       $v0, $t1, $t2
/* 2B928 8002AD28 8C4B0080 */  lw         $t3, 0x80($v0)
/* 2B92C 8002AD2C 00057C00 */  sll        $t7, $a1, 0x10
/* 2B930 8002AD30 0006CC00 */  sll        $t9, $a2, 0x10
/* 2B934 8002AD34 00194403 */  sra        $t0, $t9, 0x10
/* 2B938 8002AD38 000FC403 */  sra        $t8, $t7, 0x10
/* 2B93C 8002AD3C AFA50004 */  sw         $a1, 4($sp)
/* 2B940 8002AD40 AFA60008 */  sw         $a2, 8($sp)
/* 2B944 8002AD44 316C0020 */  andi       $t4, $t3, 0x20
/* 2B948 8002AD48 01003025 */  or         $a2, $t0, $zero
/* 2B94C 8002AD4C 03002825 */  or         $a1, $t8, $zero
/* 2B950 8002AD50 11800006 */  beqz       $t4, .L8002AD6C
/* 2B954 8002AD54 AFA40000 */   sw        $a0, ($sp)
/* 2B958 8002AD58 00186823 */  negu       $t5, $t8
/* 2B95C 8002AD5C 00087023 */  negu       $t6, $t0
/* 2B960 8002AD60 A44D00AC */  sh         $t5, 0xac($v0)
/* 2B964 8002AD64 03E00008 */  jr         $ra
/* 2B968 8002AD68 A44E00AA */   sh        $t6, 0xaa($v0)
.L8002AD6C:
/* 2B96C 8002AD6C A44500AA */  sh         $a1, 0xaa($v0)
/* 2B970 8002AD70 A44600AC */  sh         $a2, 0xac($v0)
/* 2B974 8002AD74 03E00008 */  jr         $ra
/* 2B978 8002AD78 00000000 */   nop
