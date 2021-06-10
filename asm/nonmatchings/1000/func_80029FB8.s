glabel func_80029FB8
/* 2ABB8 80029FB8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2ABBC 80029FBC AFA40020 */  sw         $a0, 0x20($sp)
/* 2ABC0 80029FC0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2ABC4 80029FC4 AFA50024 */  sw         $a1, 0x24($sp)
/* 2ABC8 80029FC8 AFA60028 */  sw         $a2, 0x28($sp)
/* 2ABCC 80029FCC 00057400 */  sll        $t6, $a1, 0x10
/* 2ABD0 80029FD0 0006C400 */  sll        $t8, $a2, 0x10
/* 2ABD4 80029FD4 97A40022 */  lhu        $a0, 0x22($sp)
/* 2ABD8 80029FD8 00183403 */  sra        $a2, $t8, 0x10
/* 2ABDC 80029FDC 000E2C03 */  sra        $a1, $t6, 0x10
/* 2ABE0 80029FE0 0C00A792 */  jal        func_80029E48
/* 2ABE4 80029FE4 AFA7002C */   sw        $a3, 0x2c($sp)
/* 2ABE8 80029FE8 97A40022 */  lhu        $a0, 0x22($sp)
/* 2ABEC 80029FEC 87A5002E */  lh         $a1, 0x2e($sp)
/* 2ABF0 80029FF0 87A60032 */  lh         $a2, 0x32($sp)
/* 2ABF4 80029FF4 0C00A7C0 */  jal        func_80029F00
/* 2ABF8 80029FF8 A7A2001E */   sh        $v0, 0x1e($sp)
/* 2ABFC 80029FFC 97A8001E */  lhu        $t0, 0x1e($sp)
/* 2AC00 8002A000 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2AC04 8002A004 00481025 */  or         $v0, $v0, $t0
/* 2AC08 8002A008 3049FFFF */  andi       $t1, $v0, 0xffff
/* 2AC0C 8002A00C 01201025 */  or         $v0, $t1, $zero
/* 2AC10 8002A010 03E00008 */  jr         $ra
/* 2AC14 8002A014 27BD0020 */   addiu     $sp, $sp, 0x20
