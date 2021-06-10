glabel func_80023DBC
/* 249BC 80023DBC 240E0030 */  addiu      $t6, $zero, 0x30
/* 249C0 80023DC0 3C01800C */  lui        $at, %hi(D_800BE544)
/* 249C4 80023DC4 A42EE544 */  sh         $t6, %lo(D_800BE544)($at)
/* 249C8 80023DC8 3C01800C */  lui        $at, %hi(D_800BE57C)
/* 249CC 80023DCC 240F0002 */  addiu      $t7, $zero, 2
/* 249D0 80023DD0 A42FE57C */  sh         $t7, %lo(D_800BE57C)($at)
/* 249D4 80023DD4 3C01800C */  lui        $at, %hi(D_800BE584)
/* 249D8 80023DD8 2418FFF4 */  addiu      $t8, $zero, -0xc
/* 249DC 80023DDC A438E584 */  sh         $t8, %lo(D_800BE584)($at)
/* 249E0 80023DE0 3C01800C */  lui        $at, %hi(D_800BE674)
/* 249E4 80023DE4 24190001 */  addiu      $t9, $zero, 1
/* 249E8 80023DE8 03E00008 */  jr         $ra
/* 249EC 80023DEC A439E674 */   sh        $t9, %lo(D_800BE674)($at)
