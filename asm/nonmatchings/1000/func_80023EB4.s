glabel func_80023EB4
/* 24AB4 80023EB4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 24AB8 80023EB8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 24ABC 80023EBC 0C008FA6 */  jal        func_80023E98
/* 24AC0 80023EC0 00000000 */   nop
/* 24AC4 80023EC4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 24AC8 80023EC8 240E0001 */  addiu      $t6, $zero, 1
/* 24ACC 80023ECC 3C01800C */  lui        $at, %hi(D_800BE674)
/* 24AD0 80023ED0 A42EE674 */  sh         $t6, %lo(D_800BE674)($at)
/* 24AD4 80023ED4 03E00008 */  jr         $ra
/* 24AD8 80023ED8 27BD0018 */   addiu     $sp, $sp, 0x18
