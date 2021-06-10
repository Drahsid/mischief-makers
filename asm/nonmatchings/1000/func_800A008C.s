glabel func_800A008C
/* A0C8C 800A008C 3C018018 */  lui        $at, %hi(D_801856C8)
/* A0C90 800A0090 AC2456C8 */  sw         $a0, %lo(D_801856C8)($at)
/* A0C94 800A0094 3C018018 */  lui        $at, %hi(D_801856CC)
/* A0C98 800A0098 AC2656CC */  sw         $a2, %lo(D_801856CC)($at)
/* A0C9C 800A009C 3C018018 */  lui        $at, %hi(D_801856C0)
/* A0CA0 800A00A0 AC2556C0 */  sw         $a1, %lo(D_801856C0)($at)
/* A0CA4 800A00A4 3C018018 */  lui        $at, %hi(D_801856C4)
/* A0CA8 800A00A8 AC2756C4 */  sw         $a3, %lo(D_801856C4)($at)
/* A0CAC 800A00AC 03E00008 */  jr         $ra
/* A0CB0 800A00B0 00000000 */   nop
