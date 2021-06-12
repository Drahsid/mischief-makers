glabel func_800312CC
/* 31ECC 800312CC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 31ED0 800312D0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 31ED4 800312D4 AFA40020 */  sw         $a0, 0x20($sp)
/* 31ED8 800312D8 AFA50024 */  sw         $a1, 0x24($sp)
/* 31EDC 800312DC AFA60028 */  sw         $a2, 0x28($sp)
/* 31EE0 800312E0 AFA7002C */  sw         $a3, 0x2c($sp)
/* 31EE4 800312E4 2405002D */  addiu      $a1, $zero, 0x2d
/* 31EE8 800312E8 0C00A12E */  jal        func_800284B8
/* 31EEC 800312EC 24040010 */   addiu     $a0, $zero, 0x10
/* 31EF0 800312F0 8FAF002C */  lw         $t7, 0x2c($sp)
/* 31EF4 800312F4 34448000 */  ori        $a0, $v0, 0x8000
/* 31EF8 800312F8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 31EFC 800312FC 8FA50020 */  lw         $a1, 0x20($sp)
/* 31F00 80031300 8FA60024 */  lw         $a2, 0x24($sp)
/* 31F04 80031304 8FA70028 */  lw         $a3, 0x28($sp)
/* 31F08 80031308 01C02025 */  or         $a0, $t6, $zero
/* 31F0C 8003130C 0C00C3E5 */  jal        func_80030F94
/* 31F10 80031310 AFAF0010 */   sw        $t7, 0x10($sp)
/* 31F14 80031314 8FBF001C */  lw         $ra, 0x1c($sp)
/* 31F18 80031318 27BD0020 */  addiu      $sp, $sp, 0x20
/* 31F1C 8003131C 03E00008 */  jr         $ra
/* 31F20 80031320 00000000 */   nop
