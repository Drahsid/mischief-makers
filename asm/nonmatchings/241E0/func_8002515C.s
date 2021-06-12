glabel func_8002515C
/* 25D5C 8002515C 240EFFE8 */  addiu      $t6, $zero, -0x18
/* 25D60 80025160 3C01800C */  lui        $at, %hi(D_800BE580)
/* 25D64 80025164 A42EE580 */  sh         $t6, %lo(D_800BE580)($at)
/* 25D68 80025168 3C01800C */  lui        $at, %hi(D_800BE57C)
/* 25D6C 8002516C 240F0002 */  addiu      $t7, $zero, 2
/* 25D70 80025170 A42FE57C */  sh         $t7, %lo(D_800BE57C)($at)
/* 25D74 80025174 3C01800C */  lui        $at, %hi(D_800BE584)
/* 25D78 80025178 2418FFF4 */  addiu      $t8, $zero, -0xc
/* 25D7C 8002517C 03E00008 */  jr         $ra
/* 25D80 80025180 A438E584 */   sh        $t8, %lo(D_800BE584)($at)
