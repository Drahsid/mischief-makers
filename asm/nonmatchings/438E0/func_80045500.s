glabel func_80045500
/* 46100 80045500 3C05800D */  lui        $a1, %hi(D_800D36FC)
/* 46104 80045504 3C04800D */  lui        $a0, %hi(D_800D36DC)
/* 46108 80045508 248436DC */  addiu      $a0, $a0, %lo(D_800D36DC)
/* 4610C 8004550C 24A536FC */  addiu      $a1, $a1, %lo(D_800D36FC)
/* 46110 80045510 00001025 */  or         $v0, $zero, $zero
.L80045514:
/* 46114 80045514 00021840 */  sll        $v1, $v0, 1
/* 46118 80045518 24420001 */  addiu      $v0, $v0, 1
/* 4611C 8004551C 3058FFFF */  andi       $t8, $v0, 0xffff
/* 46120 80045520 00837021 */  addu       $t6, $a0, $v1
/* 46124 80045524 2B010010 */  slti       $at, $t8, 0x10
/* 46128 80045528 A5C00000 */  sh         $zero, ($t6)
/* 4612C 8004552C 00A37821 */  addu       $t7, $a1, $v1
/* 46130 80045530 03001025 */  or         $v0, $t8, $zero
/* 46134 80045534 1420FFF7 */  bnez       $at, .L80045514
/* 46138 80045538 A5E00000 */   sh        $zero, ($t7)
/* 4613C 8004553C 03E00008 */  jr         $ra
/* 46140 80045540 00000000 */   nop
