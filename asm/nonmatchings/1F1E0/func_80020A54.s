glabel func_80020A54
/* 21654 80020A54 3C03800F */  lui        $v1, %hi(gActors)
/* 21658 80020A58 2463F510 */  addiu      $v1, $v1, %lo(gActors)
/* 2165C 80020A5C 240200C8 */  addiu      $v0, $zero, 0xc8
/* 21660 80020A60 24040198 */  addiu      $a0, $zero, 0x198
.L80020A64:
/* 21664 80020A64 00440019 */  multu      $v0, $a0
/* 21668 80020A68 24420001 */  addiu      $v0, $v0, 1
/* 2166C 80020A6C 3058FFFF */  andi       $t8, $v0, 0xffff
/* 21670 80020A70 2B0100CC */  slti       $at, $t8, 0xcc
/* 21674 80020A74 03001025 */  or         $v0, $t8, $zero
/* 21678 80020A78 00007012 */  mflo       $t6
/* 2167C 80020A7C 006E7821 */  addu       $t7, $v1, $t6
/* 21680 80020A80 1420FFF8 */  bnez       $at, .L80020A64
/* 21684 80020A84 ADE00080 */   sw        $zero, 0x80($t7)
/* 21688 80020A88 03E00008 */  jr         $ra
/* 2168C 80020A8C 00000000 */   nop