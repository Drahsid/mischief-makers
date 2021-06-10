glabel func_8006CAD4
/* 6D6D4 8006CAD4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6D6D8 8006CAD8 AFA40020 */  sw         $a0, 0x20($sp)
/* 6D6DC 8006CADC AFBF0014 */  sw         $ra, 0x14($sp)
/* 6D6E0 8006CAE0 97A40022 */  lhu        $a0, 0x22($sp)
/* 6D6E4 8006CAE4 0C01B1EE */  jal        func_8006C7B8
/* 6D6E8 8006CAE8 00000000 */   nop
/* 6D6EC 8006CAEC 97A40022 */  lhu        $a0, 0x22($sp)
/* 6D6F0 8006CAF0 0C01A621 */  jal        func_80069884
/* 6D6F4 8006CAF4 A7A2001E */   sh        $v0, 0x1e($sp)
/* 6D6F8 8006CAF8 97A3001E */  lhu        $v1, 0x1e($sp)
/* 6D6FC 8006CAFC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6D700 8006CB00 00621825 */  or         $v1, $v1, $v0
/* 6D704 8006CB04 3062FFFF */  andi       $v0, $v1, 0xffff
/* 6D708 8006CB08 03E00008 */  jr         $ra
/* 6D70C 8006CB0C 27BD0020 */   addiu     $sp, $sp, 0x20
