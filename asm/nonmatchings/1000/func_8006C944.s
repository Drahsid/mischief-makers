glabel func_8006C944
/* 6D544 8006C944 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6D548 8006C948 AFA40020 */  sw         $a0, 0x20($sp)
/* 6D54C 8006C94C AFBF0014 */  sw         $ra, 0x14($sp)
/* 6D550 8006C950 97A40022 */  lhu        $a0, 0x22($sp)
/* 6D554 8006C954 0C01A715 */  jal        func_80069C54
/* 6D558 8006C958 00000000 */   nop
/* 6D55C 8006C95C 97A40022 */  lhu        $a0, 0x22($sp)
/* 6D560 8006C960 0C01B1EE */  jal        func_8006C7B8
/* 6D564 8006C964 A7A2001E */   sh        $v0, 0x1e($sp)
/* 6D568 8006C968 97A3001E */  lhu        $v1, 0x1e($sp)
/* 6D56C 8006C96C 97A40022 */  lhu        $a0, 0x22($sp)
/* 6D570 8006C970 00627025 */  or         $t6, $v1, $v0
/* 6D574 8006C974 0C01A621 */  jal        func_80069884
/* 6D578 8006C978 A7AE001E */   sh        $t6, 0x1e($sp)
/* 6D57C 8006C97C 97A3001E */  lhu        $v1, 0x1e($sp)
/* 6D580 8006C980 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6D584 8006C984 00621825 */  or         $v1, $v1, $v0
/* 6D588 8006C988 3062FFFF */  andi       $v0, $v1, 0xffff
/* 6D58C 8006C98C 03E00008 */  jr         $ra
/* 6D590 8006C990 27BD0020 */   addiu     $sp, $sp, 0x20
