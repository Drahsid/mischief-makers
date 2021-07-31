glabel func_8002B954
/* 2C554 8002B954 3C18800C */  lui        $t8, %hi(D_800BE4D8)
/* 2C558 8002B958 9718E4D8 */  lhu        $t8, %lo(D_800BE4D8)($t8)
/* 2C55C 8002B95C AFA40000 */  sw         $a0, ($sp)
/* 2C560 8002B960 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2C564 8002B964 01C02025 */  or         $a0, $t6, $zero
/* 2C568 8002B968 AFA50004 */  sw         $a1, 4($sp)
/* 2C56C 8002B96C 17000017 */  bnez       $t8, .L8002B9CC
/* 2C570 8002B970 30AFFFFF */   andi      $t7, $a1, 0xffff
/* 2C574 8002B974 31F90080 */  andi       $t9, $t7, 0x80
/* 2C578 8002B978 13200003 */  beqz       $t9, .L8002B988
/* 2C57C 8002B97C 01E01025 */   or        $v0, $t7, $zero
/* 2C580 8002B980 03E00008 */  jr         $ra
/* 2C584 8002B984 24020001 */   addiu     $v0, $zero, 1
.L8002B988:
/* 2C588 8002B988 30480040 */  andi       $t0, $v0, 0x40
/* 2C58C 8002B98C 1100000F */  beqz       $t0, .L8002B9CC
/* 2C590 8002B990 00044880 */   sll       $t1, $a0, 2
/* 2C594 8002B994 01244823 */  subu       $t1, $t1, $a0
/* 2C598 8002B998 00094880 */  sll        $t1, $t1, 2
/* 2C59C 8002B99C 01244821 */  addu       $t1, $t1, $a0
/* 2C5A0 8002B9A0 00094880 */  sll        $t1, $t1, 2
/* 2C5A4 8002B9A4 01244823 */  subu       $t1, $t1, $a0
/* 2C5A8 8002B9A8 000948C0 */  sll        $t1, $t1, 3
/* 2C5AC 8002B9AC 3C0A800F */  lui        $t2, %hi(gActors+0xF0)
/* 2C5B0 8002B9B0 01495021 */  addu       $t2, $t2, $t1
/* 2C5B4 8002B9B4 8D4AF600 */  lw         $t2, %lo(gActors+0xF0)($t2)
/* 2C5B8 8002B9B8 00000000 */  nop
/* 2C5BC 8002B9BC 05410004 */  bgez       $t2, .L8002B9D0
/* 2C5C0 8002B9C0 00001025 */   or        $v0, $zero, $zero
/* 2C5C4 8002B9C4 03E00008 */  jr         $ra
/* 2C5C8 8002B9C8 24020001 */   addiu     $v0, $zero, 1
.L8002B9CC:
/* 2C5CC 8002B9CC 00001025 */  or         $v0, $zero, $zero
.L8002B9D0:
/* 2C5D0 8002B9D0 03E00008 */  jr         $ra
/* 2C5D4 8002B9D4 00000000 */   nop
