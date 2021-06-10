glabel func_8006C908
/* 6D508 8006C908 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6D50C 8006C90C AFA40020 */  sw         $a0, 0x20($sp)
/* 6D510 8006C910 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6D514 8006C914 97A40022 */  lhu        $a0, 0x22($sp)
/* 6D518 8006C918 0C01B1EE */  jal        func_8006C7B8
/* 6D51C 8006C91C 00000000 */   nop
/* 6D520 8006C920 97A40022 */  lhu        $a0, 0x22($sp)
/* 6D524 8006C924 0C01A621 */  jal        func_80069884
/* 6D528 8006C928 A7A2001E */   sh        $v0, 0x1e($sp)
/* 6D52C 8006C92C 97A3001E */  lhu        $v1, 0x1e($sp)
/* 6D530 8006C930 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6D534 8006C934 00621825 */  or         $v1, $v1, $v0
/* 6D538 8006C938 3062FFFF */  andi       $v0, $v1, 0xffff
/* 6D53C 8006C93C 03E00008 */  jr         $ra
/* 6D540 8006C940 27BD0020 */   addiu     $sp, $sp, 0x20
