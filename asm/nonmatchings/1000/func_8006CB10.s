glabel func_8006CB10
/* 6D710 8006CB10 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6D714 8006CB14 AFA40020 */  sw         $a0, 0x20($sp)
/* 6D718 8006CB18 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6D71C 8006CB1C 97A40022 */  lhu        $a0, 0x22($sp)
/* 6D720 8006CB20 0C01B1EE */  jal        func_8006C7B8
/* 6D724 8006CB24 00000000 */   nop
/* 6D728 8006CB28 97A40022 */  lhu        $a0, 0x22($sp)
/* 6D72C 8006CB2C 0C01A621 */  jal        func_80069884
/* 6D730 8006CB30 A7A2001E */   sh        $v0, 0x1e($sp)
/* 6D734 8006CB34 97A3001E */  lhu        $v1, 0x1e($sp)
/* 6D738 8006CB38 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6D73C 8006CB3C 00621825 */  or         $v1, $v1, $v0
/* 6D740 8006CB40 3062FFFF */  andi       $v0, $v1, 0xffff
/* 6D744 8006CB44 03E00008 */  jr         $ra
/* 6D748 8006CB48 27BD0020 */   addiu     $sp, $sp, 0x20
