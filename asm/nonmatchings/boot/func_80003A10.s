glabel func_80003A10
/* 4610 80003A10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4614 80003A14 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4618 80003A18 0C000E8E */  jal        func_80003A38
/* 461C 80003A1C 00000000 */   nop
/* 4620 80003A20 0C000E99 */  jal        func_80003A64
/* 4624 80003A24 00000000 */   nop
/* 4628 80003A28 8FBF0014 */  lw         $ra, 0x14($sp)
/* 462C 80003A2C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4630 80003A30 03E00008 */  jr         $ra
/* 4634 80003A34 00000000 */   nop