glabel func_8005D1B0
/* 5DDB0 8005D1B0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5DDB4 8005D1B4 000E7880 */  sll        $t7, $t6, 2
/* 5DDB8 8005D1B8 01EE7823 */  subu       $t7, $t7, $t6
/* 5DDBC 8005D1BC 000F7880 */  sll        $t7, $t7, 2
/* 5DDC0 8005D1C0 01EE7821 */  addu       $t7, $t7, $t6
/* 5DDC4 8005D1C4 000F7880 */  sll        $t7, $t7, 2
/* 5DDC8 8005D1C8 01EE7823 */  subu       $t7, $t7, $t6
/* 5DDCC 8005D1CC 000F78C0 */  sll        $t7, $t7, 3
/* 5DDD0 8005D1D0 3C02800F */  lui        $v0, %hi(D_800EF5EF)
/* 5DDD4 8005D1D4 004F1021 */  addu       $v0, $v0, $t7
/* 5DDD8 8005D1D8 9058F5EF */  lbu        $t8, %lo(D_800EF5EF)($v0)
/* 5DDDC 8005D1DC AFA40000 */  sw         $a0, ($sp)
/* 5DDE0 8005D1E0 03E00008 */  jr         $ra
/* 5DDE4 8005D1E4 33020003 */   andi      $v0, $t8, 3
