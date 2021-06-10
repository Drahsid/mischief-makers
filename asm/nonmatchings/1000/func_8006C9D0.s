glabel func_8006C9D0
/* 6D5D0 8006C9D0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6D5D4 8006C9D4 AFA40020 */  sw         $a0, 0x20($sp)
/* 6D5D8 8006C9D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6D5DC 8006C9DC 97A40022 */  lhu        $a0, 0x22($sp)
/* 6D5E0 8006C9E0 0C01B1EE */  jal        func_8006C7B8
/* 6D5E4 8006C9E4 00000000 */   nop
/* 6D5E8 8006C9E8 97A40022 */  lhu        $a0, 0x22($sp)
/* 6D5EC 8006C9EC 0C01A621 */  jal        func_80069884
/* 6D5F0 8006C9F0 A7A2001E */   sh        $v0, 0x1e($sp)
/* 6D5F4 8006C9F4 97A3001E */  lhu        $v1, 0x1e($sp)
/* 6D5F8 8006C9F8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6D5FC 8006C9FC 00621825 */  or         $v1, $v1, $v0
/* 6D600 8006CA00 3062FFFF */  andi       $v0, $v1, 0xffff
/* 6D604 8006CA04 03E00008 */  jr         $ra
/* 6D608 8006CA08 27BD0020 */   addiu     $sp, $sp, 0x20
