glabel func_80019E48
/* 1AA48 80019E48 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1AA4C 80019E4C AFBF001C */  sw         $ra, 0x1c($sp)
/* 1AA50 80019E50 240E0001 */  addiu      $t6, $zero, 1
/* 1AA54 80019E54 AFAE0010 */  sw         $t6, 0x10($sp)
/* 1AA58 80019E58 24040032 */  addiu      $a0, $zero, 0x32
/* 1AA5C 80019E5C 00002825 */  or         $a1, $zero, $zero
/* 1AA60 80019E60 00003025 */  or         $a2, $zero, $zero
/* 1AA64 80019E64 0C009CFF */  jal        func_800273FC
/* 1AA68 80019E68 2407003A */   addiu     $a3, $zero, 0x3a
/* 1AA6C 80019E6C 3C0F800F */  lui        $t7, %hi(D_800F4540)
/* 1AA70 80019E70 8DEF4540 */  lw         $t7, %lo(D_800F4540)($t7)
/* 1AA74 80019E74 3C017000 */  lui        $at, 0x7000
/* 1AA78 80019E78 01E1C025 */  or         $t8, $t7, $at
/* 1AA7C 80019E7C 3C01800F */  lui        $at, %hi(D_800F4540)
/* 1AA80 80019E80 24190001 */  addiu      $t9, $zero, 1
/* 1AA84 80019E84 AC384540 */  sw         $t8, %lo(D_800F4540)($at)
/* 1AA88 80019E88 AFB90010 */  sw         $t9, 0x10($sp)
/* 1AA8C 80019E8C 24040033 */  addiu      $a0, $zero, 0x33
/* 1AA90 80019E90 00002825 */  or         $a1, $zero, $zero
/* 1AA94 80019E94 00003025 */  or         $a2, $zero, $zero
/* 1AA98 80019E98 0C009CFF */  jal        func_800273FC
/* 1AA9C 80019E9C 3407FFDA */   ori       $a3, $zero, 0xffda
/* 1AAA0 80019EA0 3C08800F */  lui        $t0, %hi(D_800F46D8)
/* 1AAA4 80019EA4 8D0846D8 */  lw         $t0, %lo(D_800F46D8)($t0)
/* 1AAA8 80019EA8 3C015000 */  lui        $at, 0x5000
/* 1AAAC 80019EAC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1AAB0 80019EB0 01014825 */  or         $t1, $t0, $at
/* 1AAB4 80019EB4 3C01800F */  lui        $at, %hi(D_800F46D8)
/* 1AAB8 80019EB8 AC2946D8 */  sw         $t1, %lo(D_800F46D8)($at)
/* 1AABC 80019EBC 03E00008 */  jr         $ra
/* 1AAC0 80019EC0 27BD0020 */   addiu     $sp, $sp, 0x20
