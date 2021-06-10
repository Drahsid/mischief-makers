glabel func_8005D338
/* 5DF38 8005D338 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5DF3C 8005D33C 000E7880 */  sll        $t7, $t6, 2
/* 5DF40 8005D340 01EE7823 */  subu       $t7, $t7, $t6
/* 5DF44 8005D344 000F7880 */  sll        $t7, $t7, 2
/* 5DF48 8005D348 01EE7821 */  addu       $t7, $t7, $t6
/* 5DF4C 8005D34C 000F7880 */  sll        $t7, $t7, 2
/* 5DF50 8005D350 01EE7823 */  subu       $t7, $t7, $t6
/* 5DF54 8005D354 000F78C0 */  sll        $t7, $t7, 3
/* 5DF58 8005D358 3C02800F */  lui        $v0, %hi(D_800EF682)
/* 5DF5C 8005D35C 004F1021 */  addu       $v0, $v0, $t7
/* 5DF60 8005D360 9458F682 */  lhu        $t8, %lo(D_800EF682)($v0)
/* 5DF64 8005D364 AFA40000 */  sw         $a0, ($sp)
/* 5DF68 8005D368 03E00008 */  jr         $ra
/* 5DF6C 8005D36C 33021FFF */   andi      $v0, $t8, 0x1fff
