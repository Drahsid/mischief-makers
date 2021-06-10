glabel func_8006CB4C
/* 6D74C 8006CB4C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6D750 8006CB50 AFA40020 */  sw         $a0, 0x20($sp)
/* 6D754 8006CB54 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6D758 8006CB58 97A40022 */  lhu        $a0, 0x22($sp)
/* 6D75C 8006CB5C 0C01B1EE */  jal        func_8006C7B8
/* 6D760 8006CB60 00000000 */   nop
/* 6D764 8006CB64 97A40022 */  lhu        $a0, 0x22($sp)
/* 6D768 8006CB68 0C01A621 */  jal        func_80069884
/* 6D76C 8006CB6C A7A2001E */   sh        $v0, 0x1e($sp)
/* 6D770 8006CB70 97A3001E */  lhu        $v1, 0x1e($sp)
/* 6D774 8006CB74 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6D778 8006CB78 00621825 */  or         $v1, $v1, $v0
/* 6D77C 8006CB7C 3062FFFF */  andi       $v0, $v1, 0xffff
/* 6D780 8006CB80 03E00008 */  jr         $ra
/* 6D784 8006CB84 27BD0020 */   addiu     $sp, $sp, 0x20
