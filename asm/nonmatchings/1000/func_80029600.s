glabel func_80029600
/* 2A200 80029600 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2A204 80029604 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2A208 80029608 0C00A538 */  jal        func_800294E0
/* 2A20C 8002960C 00000000 */   nop
/* 2A210 80029610 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2A214 80029614 24420080 */  addiu      $v0, $v0, 0x80
/* 2A218 80029618 304E0300 */  andi       $t6, $v0, 0x300
/* 2A21C 8002961C 01C01025 */  or         $v0, $t6, $zero
/* 2A220 80029620 03E00008 */  jr         $ra
/* 2A224 80029624 27BD0018 */   addiu     $sp, $sp, 0x18
