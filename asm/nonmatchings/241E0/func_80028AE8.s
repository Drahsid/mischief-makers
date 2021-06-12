glabel func_80028AE8
/* 296E8 80028AE8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 296EC 80028AEC AFBF0014 */  sw         $ra, 0x14($sp)
/* 296F0 80028AF0 AFA40018 */  sw         $a0, 0x18($sp)
/* 296F4 80028AF4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 296F8 80028AF8 3C05800D */  lui        $a1, %hi(D_800D36FC)
/* 296FC 80028AFC 01C02025 */  or         $a0, $t6, $zero
/* 29700 80028B00 24A536FC */  addiu      $a1, $a1, %lo(D_800D36FC)
/* 29704 80028B04 0C00A279 */  jal        func_800289E4
/* 29708 80028B08 24067FFF */   addiu     $a2, $zero, 0x7fff
/* 2970C 80028B0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 29710 80028B10 27BD0018 */  addiu      $sp, $sp, 0x18
/* 29714 80028B14 03E00008 */  jr         $ra
/* 29718 80028B18 00000000 */   nop
