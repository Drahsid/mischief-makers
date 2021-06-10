glabel func_80024DA8
/* 259A8 80024DA8 340E8000 */  ori        $t6, $zero, 0x8000
/* 259AC 80024DAC 3C01800C */  lui        $at, %hi(D_800BE544)
/* 259B0 80024DB0 A42EE544 */  sh         $t6, %lo(D_800BE544)($at)
/* 259B4 80024DB4 24020001 */  addiu      $v0, $zero, 1
/* 259B8 80024DB8 3C01800C */  lui        $at, %hi(D_800BE704)
/* 259BC 80024DBC A422E704 */  sh         $v0, %lo(D_800BE704)($at)
/* 259C0 80024DC0 3C01800C */  lui        $at, %hi(D_800BE708)
/* 259C4 80024DC4 A422E708 */  sh         $v0, %lo(D_800BE708)($at)
/* 259C8 80024DC8 3C01800C */  lui        $at, %hi(D_800BE588)
/* 259CC 80024DCC 240F0003 */  addiu      $t7, $zero, 3
/* 259D0 80024DD0 03E00008 */  jr         $ra
/* 259D4 80024DD4 A42FE588 */   sh        $t7, %lo(D_800BE588)($at)
