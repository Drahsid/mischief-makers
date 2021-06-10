glabel func_8007D520
/* 7E120 8007D520 308EFFFF */  andi       $t6, $a0, 0xffff
/* 7E124 8007D524 000E7880 */  sll        $t7, $t6, 2
/* 7E128 8007D528 01EE7823 */  subu       $t7, $t7, $t6
/* 7E12C 8007D52C 000F7880 */  sll        $t7, $t7, 2
/* 7E130 8007D530 01EE7821 */  addu       $t7, $t7, $t6
/* 7E134 8007D534 000F7880 */  sll        $t7, $t7, 2
/* 7E138 8007D538 01EE7823 */  subu       $t7, $t7, $t6
/* 7E13C 8007D53C 000F78C0 */  sll        $t7, $t7, 3
/* 7E140 8007D540 3C01800F */  lui        $at, %hi(D_800EF590)
/* 7E144 8007D544 002F0821 */  addu       $at, $at, $t7
/* 7E148 8007D548 AFA40000 */  sw         $a0, ($sp)
/* 7E14C 8007D54C 03E00008 */  jr         $ra
/* 7E150 8007D550 AC20F590 */   sw        $zero, %lo(D_800EF590)($at)
