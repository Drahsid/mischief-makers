glabel func_80023D48
/* 24948 80023D48 240E0030 */  addiu      $t6, $zero, 0x30
/* 2494C 80023D4C 3C01800C */  lui        $at, %hi(D_800BE544)
/* 24950 80023D50 A42EE544 */  sh         $t6, %lo(D_800BE544)($at)
/* 24954 80023D54 3C01800C */  lui        $at, %hi(D_800BE57C)
/* 24958 80023D58 240F0002 */  addiu      $t7, $zero, 2
/* 2495C 80023D5C A42FE57C */  sh         $t7, %lo(D_800BE57C)($at)
/* 24960 80023D60 3C01800C */  lui        $at, %hi(D_800BE584)
/* 24964 80023D64 2418FFF4 */  addiu      $t8, $zero, -0xc
/* 24968 80023D68 03E00008 */  jr         $ra
/* 2496C 80023D6C A438E584 */   sh        $t8, %lo(D_800BE584)($at)
