glabel func_8006C994
/* 6D594 8006C994 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6D598 8006C998 AFA40020 */  sw         $a0, 0x20($sp)
/* 6D59C 8006C99C AFBF0014 */  sw         $ra, 0x14($sp)
/* 6D5A0 8006C9A0 97A40022 */  lhu        $a0, 0x22($sp)
/* 6D5A4 8006C9A4 0C01B1EE */  jal        func_8006C7B8
/* 6D5A8 8006C9A8 00000000 */   nop
/* 6D5AC 8006C9AC 97A40022 */  lhu        $a0, 0x22($sp)
/* 6D5B0 8006C9B0 0C01A621 */  jal        func_80069884
/* 6D5B4 8006C9B4 A7A2001E */   sh        $v0, 0x1e($sp)
/* 6D5B8 8006C9B8 97A3001E */  lhu        $v1, 0x1e($sp)
/* 6D5BC 8006C9BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6D5C0 8006C9C0 00621825 */  or         $v1, $v1, $v0
/* 6D5C4 8006C9C4 3062FFFF */  andi       $v0, $v1, 0xffff
/* 6D5C8 8006C9C8 03E00008 */  jr         $ra
/* 6D5CC 8006C9CC 27BD0020 */   addiu     $sp, $sp, 0x20
