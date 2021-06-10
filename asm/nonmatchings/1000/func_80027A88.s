glabel func_80027A88
/* 28688 80027A88 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2868C 80027A8C 00802825 */  or         $a1, $a0, $zero
/* 28690 80027A90 AFBF0014 */  sw         $ra, 0x14($sp)
/* 28694 80027A94 24A50002 */  addiu      $a1, $a1, 2
/* 28698 80027A98 0C009E91 */  jal        func_80027A44
/* 2869C 80027A9C AFA50020 */   sw        $a1, 0x20($sp)
/* 286A0 80027AA0 8FA40020 */  lw         $a0, 0x20($sp)
/* 286A4 80027AA4 0C009E91 */  jal        func_80027A44
/* 286A8 80027AA8 A7A2001E */   sh        $v0, 0x1e($sp)
/* 286AC 80027AAC 97AE001E */  lhu        $t6, 0x1e($sp)
/* 286B0 80027AB0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 286B4 80027AB4 004E1021 */  addu       $v0, $v0, $t6
/* 286B8 80027AB8 304FFFFF */  andi       $t7, $v0, 0xffff
/* 286BC 80027ABC 01E01025 */  or         $v0, $t7, $zero
/* 286C0 80027AC0 03E00008 */  jr         $ra
/* 286C4 80027AC4 27BD0020 */   addiu     $sp, $sp, 0x20
