glabel func_80031284
/* 31E84 80031284 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 31E88 80031288 AFBF001C */  sw         $ra, 0x1c($sp)
/* 31E8C 8003128C AFA40020 */  sw         $a0, 0x20($sp)
/* 31E90 80031290 AFA50024 */  sw         $a1, 0x24($sp)
/* 31E94 80031294 AFA60028 */  sw         $a2, 0x28($sp)
/* 31E98 80031298 0C00A14A */  jal        func_80028528
/* 31E9C 8003129C AFA7002C */   sw        $a3, 0x2c($sp)
/* 31EA0 800312A0 8FAE002C */  lw         $t6, 0x2c($sp)
/* 31EA4 800312A4 97A50022 */  lhu        $a1, 0x22($sp)
/* 31EA8 800312A8 8FA60024 */  lw         $a2, 0x24($sp)
/* 31EAC 800312AC 8FA70028 */  lw         $a3, 0x28($sp)
/* 31EB0 800312B0 3044FFFF */  andi       $a0, $v0, 0xffff
/* 31EB4 800312B4 0C00C429 */  jal        func_800310A4
/* 31EB8 800312B8 AFAE0010 */   sw        $t6, 0x10($sp)
/* 31EBC 800312BC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 31EC0 800312C0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 31EC4 800312C4 03E00008 */  jr         $ra
/* 31EC8 800312C8 00000000 */   nop
