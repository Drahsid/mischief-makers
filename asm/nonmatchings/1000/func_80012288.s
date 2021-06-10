glabel func_80012288
/* 12E88 80012288 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12E8C 8001228C AFBF0014 */  sw         $ra, 0x14($sp)
/* 12E90 80012290 240E0016 */  addiu      $t6, $zero, 0x16
/* 12E94 80012294 3C01800F */  lui        $at, %hi(D_800EF5E2)
/* 12E98 80012298 0C004874 */  jal        func_800121D0
/* 12E9C 8001229C A42EF5E2 */   sh        $t6, %lo(D_800EF5E2)($at)
/* 12EA0 800122A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12EA4 800122A4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 12EA8 800122A8 03E00008 */  jr         $ra
/* 12EAC 800122AC 00000000 */   nop
