glabel func_8005C098
/* 5CC98 8005C098 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5CC9C 8005C09C 000E7880 */  sll        $t7, $t6, 2
/* 5CCA0 8005C0A0 01EE7823 */  subu       $t7, $t7, $t6
/* 5CCA4 8005C0A4 000F7880 */  sll        $t7, $t7, 2
/* 5CCA8 8005C0A8 01EE7821 */  addu       $t7, $t7, $t6
/* 5CCAC 8005C0AC 000F7880 */  sll        $t7, $t7, 2
/* 5CCB0 8005C0B0 01EE7823 */  subu       $t7, $t7, $t6
/* 5CCB4 8005C0B4 000F78C0 */  sll        $t7, $t7, 3
/* 5CCB8 8005C0B8 3C01800F */  lui        $at, %hi(D_800EF690)
/* 5CCBC 8005C0BC 002F0821 */  addu       $at, $at, $t7
/* 5CCC0 8005C0C0 AFA40000 */  sw         $a0, ($sp)
/* 5CCC4 8005C0C4 03E00008 */  jr         $ra
/* 5CCC8 8005C0C8 A425F690 */   sh        $a1, %lo(D_800EF690)($at)
