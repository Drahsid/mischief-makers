glabel func_80085E60
/* 86A60 80085E60 308EFFFF */  andi       $t6, $a0, 0xffff
/* 86A64 80085E64 000E7880 */  sll        $t7, $t6, 2
/* 86A68 80085E68 01EE7823 */  subu       $t7, $t7, $t6
/* 86A6C 80085E6C 000F7880 */  sll        $t7, $t7, 2
/* 86A70 80085E70 01EE7821 */  addu       $t7, $t7, $t6
/* 86A74 80085E74 000F7880 */  sll        $t7, $t7, 2
/* 86A78 80085E78 01EE7823 */  subu       $t7, $t7, $t6
/* 86A7C 80085E7C 3C18800F */  lui        $t8, %hi(gActors)
/* 86A80 80085E80 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 86A84 80085E84 000F78C0 */  sll        $t7, $t7, 3
/* 86A88 80085E88 01F81021 */  addu       $v0, $t7, $t8
/* 86A8C 80085E8C 945900D8 */  lhu        $t9, 0xd8($v0)
/* 86A90 80085E90 3C01800E */  lui        $at, %hi(D_800E3DBC)
/* 86A94 80085E94 00194080 */  sll        $t0, $t9, 2
/* 86A98 80085E98 00280821 */  addu       $at, $at, $t0
/* 86A9C 80085E9C C4203DBC */  lwc1       $f0, %lo(D_800E3DBC)($at)
/* 86AA0 80085EA0 AFA40000 */  sw         $a0, ($sp)
/* 86AA4 80085EA4 E44000B4 */  swc1       $f0, 0xb4($v0)
/* 86AA8 80085EA8 03E00008 */  jr         $ra
/* 86AAC 80085EAC E44000B8 */   swc1      $f0, 0xb8($v0)
