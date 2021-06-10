glabel func_8005DF40
/* 5EB40 8005DF40 3C018018 */  lui        $at, %hi(D_801783F4)
/* 5EB44 8005DF44 A42483F4 */  sh         $a0, %lo(D_801783F4)($at)
/* 5EB48 8005DF48 3C018018 */  lui        $at, %hi(D_801783F6)
/* 5EB4C 8005DF4C AFA40000 */  sw         $a0, ($sp)
/* 5EB50 8005DF50 AFA50004 */  sw         $a1, 4($sp)
/* 5EB54 8005DF54 03E00008 */  jr         $ra
/* 5EB58 8005DF58 A42583F6 */   sh        $a1, %lo(D_801783F6)($at)
