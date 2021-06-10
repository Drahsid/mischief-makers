glabel func_8005E09C
/* 5EC9C 8005E09C 00047040 */  sll        $t6, $a0, 1
/* 5ECA0 8005E0A0 3C018018 */  lui        $at, %hi(D_801783F8)
/* 5ECA4 8005E0A4 002E0821 */  addu       $at, $at, $t6
/* 5ECA8 8005E0A8 03E00008 */  jr         $ra
/* 5ECAC 8005E0AC A42583F8 */   sh        $a1, %lo(D_801783F8)($at)
