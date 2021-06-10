glabel func_80068B8C
/* 6978C 80068B8C 3C18800E */  lui        $t8, %hi(D_800E3584)
/* 69790 80068B90 8F183584 */  lw         $t8, %lo(D_800E3584)($t8)
/* 69794 80068B94 AFA40000 */  sw         $a0, ($sp)
/* 69798 80068B98 0018CBC0 */  sll        $t9, $t8, 0xf
/* 6979C 80068B9C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 697A0 80068BA0 AFA50004 */  sw         $a1, 4($sp)
/* 697A4 80068BA4 0721000D */  bgez       $t9, .L80068BDC
/* 697A8 80068BA8 30AFFFFF */   andi      $t7, $a1, 0xffff
/* 697AC 80068BAC 000E4080 */  sll        $t0, $t6, 2
/* 697B0 80068BB0 010E4023 */  subu       $t0, $t0, $t6
/* 697B4 80068BB4 00084080 */  sll        $t0, $t0, 2
/* 697B8 80068BB8 010E4021 */  addu       $t0, $t0, $t6
/* 697BC 80068BBC 00084080 */  sll        $t0, $t0, 2
/* 697C0 80068BC0 010E4023 */  subu       $t0, $t0, $t6
/* 697C4 80068BC4 000840C0 */  sll        $t0, $t0, 3
/* 697C8 80068BC8 3C01800F */  lui        $at, %hi(D_800EF5E0)
/* 697CC 80068BCC 00280821 */  addu       $at, $at, $t0
/* 697D0 80068BD0 A42FF5E0 */  sh         $t7, %lo(D_800EF5E0)($at)
/* 697D4 80068BD4 03E00008 */  jr         $ra
/* 697D8 80068BD8 24020001 */   addiu     $v0, $zero, 1
.L80068BDC:
/* 697DC 80068BDC 00001025 */  or         $v0, $zero, $zero
/* 697E0 80068BE0 03E00008 */  jr         $ra
/* 697E4 80068BE4 00000000 */   nop
