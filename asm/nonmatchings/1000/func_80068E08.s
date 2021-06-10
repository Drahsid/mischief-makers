glabel func_80068E08
/* 69A08 80068E08 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 69A0C 80068E0C AFA40020 */  sw         $a0, 0x20($sp)
/* 69A10 80068E10 AFBF0014 */  sw         $ra, 0x14($sp)
/* 69A14 80068E14 97A40022 */  lhu        $a0, 0x22($sp)
/* 69A18 80068E18 0C01A37E */  jal        func_80068DF8
/* 69A1C 80068E1C 00000000 */   nop
/* 69A20 80068E20 97A40022 */  lhu        $a0, 0x22($sp)
/* 69A24 80068E24 0C01A380 */  jal        func_80068E00
/* 69A28 80068E28 A7A2001E */   sh        $v0, 0x1e($sp)
/* 69A2C 80068E2C 97AE001E */  lhu        $t6, 0x1e($sp)
/* 69A30 80068E30 8FBF0014 */  lw         $ra, 0x14($sp)
/* 69A34 80068E34 004E1025 */  or         $v0, $v0, $t6
/* 69A38 80068E38 304FFFFF */  andi       $t7, $v0, 0xffff
/* 69A3C 80068E3C 01E01025 */  or         $v0, $t7, $zero
/* 69A40 80068E40 03E00008 */  jr         $ra
/* 69A44 80068E44 27BD0020 */   addiu     $sp, $sp, 0x20
