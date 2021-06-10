glabel func_8001CA68
/* 1D668 8001CA68 3C04800F */  lui        $a0, %hi(D_800EF510)
/* 1D66C 8001CA6C 2484F510 */  addiu      $a0, $a0, %lo(D_800EF510)
/* 1D670 8001CA70 00001025 */  or         $v0, $zero, $zero
/* 1D674 8001CA74 00001825 */  or         $v1, $zero, $zero
/* 1D678 8001CA78 24050198 */  addiu      $a1, $zero, 0x198
.L8001CA7C:
/* 1D67C 8001CA7C 00650019 */  multu      $v1, $a1
/* 1D680 8001CA80 24420001 */  addiu      $v0, $v0, 1
/* 1D684 8001CA84 3043FFFF */  andi       $v1, $v0, 0xffff
/* 1D688 8001CA88 28610007 */  slti       $at, $v1, 7
/* 1D68C 8001CA8C 00601025 */  or         $v0, $v1, $zero
/* 1D690 8001CA90 00007012 */  mflo       $t6
/* 1D694 8001CA94 008E7821 */  addu       $t7, $a0, $t6
/* 1D698 8001CA98 1420FFF8 */  bnez       $at, .L8001CA7C
/* 1D69C 8001CA9C ADE07340 */   sw        $zero, 0x7340($t7)
/* 1D6A0 8001CAA0 03E00008 */  jr         $ra
/* 1D6A4 8001CAA4 00000000 */   nop
