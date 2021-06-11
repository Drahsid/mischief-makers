glabel func_8006FE28
/* 70A28 8006FE28 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 70A2C 8006FE2C AFBF0014 */  sw         $ra, 0x14($sp)
/* 70A30 8006FE30 AFA40018 */  sw         $a0, 0x18($sp)
/* 70A34 8006FE34 308EFFFF */  andi       $t6, $a0, 0xffff
/* 70A38 8006FE38 01C02025 */  or         $a0, $t6, $zero
/* 70A3C 8006FE3C 0C01B22E */  jal        func_8006C8B8
/* 70A40 8006FE40 A7AE001A */   sh        $t6, 0x1a($sp)
/* 70A44 8006FE44 97A4001A */  lhu        $a0, 0x1a($sp)
/* 70A48 8006FE48 1440001D */  bnez       $v0, .L8006FEC0
/* 70A4C 8006FE4C 00047880 */   sll       $t7, $a0, 2
/* 70A50 8006FE50 01E47823 */  subu       $t7, $t7, $a0
/* 70A54 8006FE54 000F7880 */  sll        $t7, $t7, 2
/* 70A58 8006FE58 01E47821 */  addu       $t7, $t7, $a0
/* 70A5C 8006FE5C 000F7880 */  sll        $t7, $t7, 2
/* 70A60 8006FE60 01E47823 */  subu       $t7, $t7, $a0
/* 70A64 8006FE64 3C18800F */  lui        $t8, %hi(gActors)
/* 70A68 8006FE68 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 70A6C 8006FE6C 000F78C0 */  sll        $t7, $t7, 3
/* 70A70 8006FE70 01F81021 */  addu       $v0, $t7, $t8
/* 70A74 8006FE74 944300D0 */  lhu        $v1, 0xd0($v0)
/* 70A78 8006FE78 24010290 */  addiu      $at, $zero, 0x290
/* 70A7C 8006FE7C 14610007 */  bne        $v1, $at, .L8006FE9C
/* 70A80 8006FE80 24790001 */   addiu     $t9, $v1, 1
/* 70A84 8006FE84 3C08800E */  lui        $t0, %hi(D_800E17A4)
/* 70A88 8006FE88 250817A4 */  addiu      $t0, $t0, %lo(D_800E17A4)
/* 70A8C 8006FE8C 24090001 */  addiu      $t1, $zero, 1
/* 70A90 8006FE90 A45900D0 */  sh         $t9, 0xd0($v0)
/* 70A94 8006FE94 A44900E6 */  sh         $t1, 0xe6($v0)
/* 70A98 8006FE98 AC4800E8 */  sw         $t0, 0xe8($v0)
.L8006FE9C:
/* 70A9C 8006FE9C 844A00E6 */  lh         $t2, 0xe6($v0)
/* 70AA0 8006FEA0 240B0200 */  addiu      $t3, $zero, 0x200
/* 70AA4 8006FEA4 15400004 */  bnez       $t2, .L8006FEB8
/* 70AA8 8006FEA8 3C0140E0 */   lui       $at, 0x40e0
/* 70AAC 8006FEAC 44812000 */  mtc1       $at, $f4
/* 70AB0 8006FEB0 A44B00D0 */  sh         $t3, 0xd0($v0)
/* 70AB4 8006FEB4 E444013C */  swc1       $f4, 0x13c($v0)
.L8006FEB8:
/* 70AB8 8006FEB8 0C01A6E5 */  jal        func_80069B94
/* 70ABC 8006FEBC 00000000 */   nop
.L8006FEC0:
/* 70AC0 8006FEC0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 70AC4 8006FEC4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 70AC8 8006FEC8 03E00008 */  jr         $ra
/* 70ACC 8006FECC 00000000 */   nop
