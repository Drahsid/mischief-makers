glabel func_80031324
/* 31F24 80031324 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 31F28 80031328 AFBF001C */  sw         $ra, 0x1c($sp)
/* 31F2C 8003132C AFA40020 */  sw         $a0, 0x20($sp)
/* 31F30 80031330 AFA50024 */  sw         $a1, 0x24($sp)
/* 31F34 80031334 AFA60028 */  sw         $a2, 0x28($sp)
/* 31F38 80031338 AFA7002C */  sw         $a3, 0x2c($sp)
/* 31F3C 8003133C 2405002D */  addiu      $a1, $zero, 0x2d
/* 31F40 80031340 0C00A12E */  jal        func_800284B8
/* 31F44 80031344 24040010 */   addiu     $a0, $zero, 0x10
/* 31F48 80031348 8FAF002C */  lw         $t7, 0x2c($sp)
/* 31F4C 8003134C 34448000 */  ori        $a0, $v0, 0x8000
/* 31F50 80031350 308EFFFF */  andi       $t6, $a0, 0xffff
/* 31F54 80031354 97A50022 */  lhu        $a1, 0x22($sp)
/* 31F58 80031358 8FA60024 */  lw         $a2, 0x24($sp)
/* 31F5C 8003135C 8FA70028 */  lw         $a3, 0x28($sp)
/* 31F60 80031360 01C02025 */  or         $a0, $t6, $zero
/* 31F64 80031364 0C00C429 */  jal        func_800310A4
/* 31F68 80031368 AFAF0010 */   sw        $t7, 0x10($sp)
/* 31F6C 8003136C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 31F70 80031370 27BD0020 */  addiu      $sp, $sp, 0x20
/* 31F74 80031374 03E00008 */  jr         $ra
/* 31F78 80031378 00000000 */   nop
