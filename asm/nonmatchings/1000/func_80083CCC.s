glabel func_80083CCC
/* 848CC 80083CCC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 848D0 80083CD0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 848D4 80083CD4 0C0295C8 */  jal        func_800A5720
/* 848D8 80083CD8 00000000 */   nop
/* 848DC 80083CDC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 848E0 80083CE0 3C018018 */  lui        $at, %hi(D_80182018)
/* 848E4 80083CE4 AC232018 */  sw         $v1, %lo(D_80182018)($at)
/* 848E8 80083CE8 03E00008 */  jr         $ra
/* 848EC 80083CEC 27BD0018 */   addiu     $sp, $sp, 0x18
