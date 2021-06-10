glabel func_8007EE14
/* 7FA14 8007EE14 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 7FA18 8007EE18 3C013F80 */  lui        $at, 0x3f80
/* 7FA1C 8007EE1C 44812000 */  mtc1       $at, $f4
/* 7FA20 8007EE20 8FAE0048 */  lw         $t6, 0x48($sp)
/* 7FA24 8007EE24 8FAF004C */  lw         $t7, 0x4c($sp)
/* 7FA28 8007EE28 AFBF0034 */  sw         $ra, 0x34($sp)
/* 7FA2C 8007EE2C 2418007F */  addiu      $t8, $zero, 0x7f
/* 7FA30 8007EE30 2419007F */  addiu      $t9, $zero, 0x7f
/* 7FA34 8007EE34 2408007F */  addiu      $t0, $zero, 0x7f
/* 7FA38 8007EE38 240900FF */  addiu      $t1, $zero, 0xff
/* 7FA3C 8007EE3C AFA90024 */  sw         $t1, 0x24($sp)
/* 7FA40 8007EE40 AFA80020 */  sw         $t0, 0x20($sp)
/* 7FA44 8007EE44 AFB9001C */  sw         $t9, 0x1c($sp)
/* 7FA48 8007EE48 AFB80018 */  sw         $t8, 0x18($sp)
/* 7FA4C 8007EE4C AFA00028 */  sw         $zero, 0x28($sp)
/* 7FA50 8007EE50 E7A4002C */  swc1       $f4, 0x2c($sp)
/* 7FA54 8007EE54 AFAE0010 */  sw         $t6, 0x10($sp)
/* 7FA58 8007EE58 0C01FA85 */  jal        func_8007EA14
/* 7FA5C 8007EE5C AFAF0014 */   sw        $t7, 0x14($sp)
/* 7FA60 8007EE60 8FBF0034 */  lw         $ra, 0x34($sp)
/* 7FA64 8007EE64 27BD0038 */  addiu      $sp, $sp, 0x38
/* 7FA68 8007EE68 03E00008 */  jr         $ra
/* 7FA6C 8007EE6C 00000000 */   nop
