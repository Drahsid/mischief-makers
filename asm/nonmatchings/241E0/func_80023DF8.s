glabel func_80023DF8
/* 249F8 80023DF8 240E0002 */  addiu      $t6, $zero, 2
/* 249FC 80023DFC 3C01800C */  lui        $at, %hi(D_800BE578)
/* 24A00 80023E00 A42EE578 */  sh         $t6, %lo(D_800BE578)($at)
/* 24A04 80023E04 3C01800C */  lui        $at, %hi(D_800BE580)
/* 24A08 80023E08 240FFFF4 */  addiu      $t7, $zero, -0xc
/* 24A0C 80023E0C 03E00008 */  jr         $ra
/* 24A10 80023E10 A42FE580 */   sh        $t7, %lo(D_800BE580)($at)
