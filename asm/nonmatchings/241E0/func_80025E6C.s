glabel func_80025E6C
/* 26A6C 80025E6C 3C040021 */  lui        $a0, 0x21
/* 26A70 80025E70 3C0E8029 */  lui        $t6, 0x8029
/* 26A74 80025E74 3C0F0025 */  lui        $t7, 0x25
/* 26A78 80025E78 24844B40 */  addiu      $a0, $a0, 0x4b40
/* 26A7C 80025E7C 3C028013 */  lui        $v0, %hi(D_801376E4)
/* 26A80 80025E80 35CE6000 */  ori        $t6, $t6, 0x6000
/* 26A84 80025E84 25EF8F40 */  addiu      $t7, $t7, -0x70c0
/* 26A88 80025E88 244276E4 */  addiu      $v0, $v0, %lo(D_801376E4)
/* 26A8C 80025E8C 01E43023 */  subu       $a2, $t7, $a0
/* 26A90 80025E90 AC4E0000 */  sw         $t6, ($v0)
/* 26A94 80025E94 00CEC021 */  addu       $t8, $a2, $t6
/* 26A98 80025E98 3C018013 */  lui        $at, %hi(D_801376E8)
/* 26A9C 80025E9C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 26AA0 80025EA0 AC3876E8 */  sw         $t8, %lo(D_801376E8)($at)
/* 26AA4 80025EA4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 26AA8 80025EA8 8C450000 */  lw         $a1, ($v0)
/* 26AAC 80025EAC 0C00047C */  jal        func_800011F0
/* 26AB0 80025EB0 00000000 */   nop
/* 26AB4 80025EB4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 26AB8 80025EB8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 26ABC 80025EBC 03E00008 */  jr         $ra
/* 26AC0 80025EC0 00000000 */   nop
