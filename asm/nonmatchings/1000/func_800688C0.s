glabel func_800688C0
/* 694C0 800688C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 694C4 800688C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 694C8 800688C8 24040038 */  addiu      $a0, $zero, 0x38
/* 694CC 800688CC 24050018 */  addiu      $a1, $zero, 0x18
/* 694D0 800688D0 0C00A69F */  jal        func_80029A7C
/* 694D4 800688D4 2406FFE8 */   addiu     $a2, $zero, -0x18
/* 694D8 800688D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 694DC 800688DC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 694E0 800688E0 03E00008 */  jr         $ra
/* 694E4 800688E4 00000000 */   nop
