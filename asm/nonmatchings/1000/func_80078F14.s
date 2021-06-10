glabel func_80078F14
/* 79B14 80078F14 3C0F800C */  lui        $t7, %hi(D_800BE4E0)
/* 79B18 80078F18 95EFE4E0 */  lhu        $t7, %lo(D_800BE4E0)($t7)
/* 79B1C 80078F1C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 79B20 80078F20 AFA40018 */  sw         $a0, 0x18($sp)
/* 79B24 80078F24 308EFFFF */  andi       $t6, $a0, 0xffff
/* 79B28 80078F28 31F80001 */  andi       $t8, $t7, 1
/* 79B2C 80078F2C 01C02025 */  or         $a0, $t6, $zero
/* 79B30 80078F30 AFBF0014 */  sw         $ra, 0x14($sp)
/* 79B34 80078F34 17000003 */  bnez       $t8, .L80078F44
/* 79B38 80078F38 AFA5001C */   sw        $a1, 0x1c($sp)
/* 79B3C 80078F3C 0C01E332 */  jal        func_80078CC8
/* 79B40 80078F40 00002825 */   or        $a1, $zero, $zero
.L80078F44:
/* 79B44 80078F44 8FBF0014 */  lw         $ra, 0x14($sp)
/* 79B48 80078F48 27BD0018 */  addiu      $sp, $sp, 0x18
/* 79B4C 80078F4C 03E00008 */  jr         $ra
/* 79B50 80078F50 00000000 */   nop
