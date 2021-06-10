glabel func_8006C8B8
/* 6D4B8 8006C8B8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6D4BC 8006C8BC AFA40020 */  sw         $a0, 0x20($sp)
/* 6D4C0 8006C8C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6D4C4 8006C8C4 97A40022 */  lhu        $a0, 0x22($sp)
/* 6D4C8 8006C8C8 0C01A715 */  jal        func_80069C54
/* 6D4CC 8006C8CC 00000000 */   nop
/* 6D4D0 8006C8D0 97A40022 */  lhu        $a0, 0x22($sp)
/* 6D4D4 8006C8D4 0C01B1EE */  jal        func_8006C7B8
/* 6D4D8 8006C8D8 A7A2001E */   sh        $v0, 0x1e($sp)
/* 6D4DC 8006C8DC 97A3001E */  lhu        $v1, 0x1e($sp)
/* 6D4E0 8006C8E0 97A40022 */  lhu        $a0, 0x22($sp)
/* 6D4E4 8006C8E4 00627025 */  or         $t6, $v1, $v0
/* 6D4E8 8006C8E8 0C01A621 */  jal        func_80069884
/* 6D4EC 8006C8EC A7AE001E */   sh        $t6, 0x1e($sp)
/* 6D4F0 8006C8F0 97A3001E */  lhu        $v1, 0x1e($sp)
/* 6D4F4 8006C8F4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6D4F8 8006C8F8 00621825 */  or         $v1, $v1, $v0
/* 6D4FC 8006C8FC 3062FFFF */  andi       $v0, $v1, 0xffff
/* 6D500 8006C900 03E00008 */  jr         $ra
/* 6D504 8006C904 27BD0020 */   addiu     $sp, $sp, 0x20
