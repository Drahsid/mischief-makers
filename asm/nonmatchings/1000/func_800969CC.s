glabel func_800969CC
/* 975CC 800969CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 975D0 800969D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 975D4 800969D4 AFA40018 */  sw         $a0, 0x18($sp)
/* 975D8 800969D8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 975DC 800969DC 0C024156 */  jal        func_80090558
/* 975E0 800969E0 01C02025 */   or        $a0, $t6, $zero
/* 975E4 800969E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 975E8 800969E8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 975EC 800969EC 03E00008 */  jr         $ra
/* 975F0 800969F0 00000000 */   nop
