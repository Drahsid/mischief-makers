glabel func_8003137C
/* 31F7C 8003137C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 31F80 80031380 AFBF001C */  sw         $ra, 0x1c($sp)
/* 31F84 80031384 AFA40020 */  sw         $a0, 0x20($sp)
/* 31F88 80031388 AFA50024 */  sw         $a1, 0x24($sp)
/* 31F8C 8003138C AFA60028 */  sw         $a2, 0x28($sp)
/* 31F90 80031390 0C00A14A */  jal        func_80028528
/* 31F94 80031394 AFA7002C */   sw        $a3, 0x2c($sp)
/* 31F98 80031398 8FAF002C */  lw         $t7, 0x2c($sp)
/* 31F9C 8003139C 34448000 */  ori        $a0, $v0, 0x8000
/* 31FA0 800313A0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 31FA4 800313A4 8FA50020 */  lw         $a1, 0x20($sp)
/* 31FA8 800313A8 8FA60024 */  lw         $a2, 0x24($sp)
/* 31FAC 800313AC 8FA70028 */  lw         $a3, 0x28($sp)
/* 31FB0 800313B0 01C02025 */  or         $a0, $t6, $zero
/* 31FB4 800313B4 0C00C3E5 */  jal        func_80030F94
/* 31FB8 800313B8 AFAF0010 */   sw        $t7, 0x10($sp)
/* 31FBC 800313BC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 31FC0 800313C0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 31FC4 800313C4 03E00008 */  jr         $ra
/* 31FC8 800313C8 00000000 */   nop
