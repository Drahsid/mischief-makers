glabel func_80025380
/* 25F80 80025380 240E0002 */  addiu      $t6, $zero, 2
/* 25F84 80025384 3C01800C */  lui        $at, %hi(D_800BE578)
/* 25F88 80025388 A42EE578 */  sh         $t6, %lo(D_800BE578)($at)
/* 25F8C 8002538C 3C01800C */  lui        $at, %hi(D_800BE580)
/* 25F90 80025390 240FFFF4 */  addiu      $t7, $zero, -0xc
/* 25F94 80025394 A42FE580 */  sh         $t7, %lo(D_800BE580)($at)
/* 25F98 80025398 3C01800C */  lui        $at, %hi(D_800BE70C)
/* 25F9C 8002539C 24180004 */  addiu      $t8, $zero, 4
/* 25FA0 800253A0 03E00008 */  jr         $ra
/* 25FA4 800253A4 A038E70C */   sb        $t8, %lo(D_800BE70C)($at)
