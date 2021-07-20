glabel func_8001983C
/* 1A43C 8001983C 3C01800C */  lui        $at, %hi(D_800BE6E4)
/* 1A440 80019840 A020E6E4 */  sb         $zero, %lo(D_800BE6E4)($at)
/* 1A444 80019844 3C01800C */  lui        $at, %hi(D_800BE6E8)
/* 1A448 80019848 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1A44C 8001984C A020E6E8 */  sb         $zero, %lo(D_800BE6E8)($at)
/* 1A450 80019850 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1A454 80019854 3C01800C */  lui        $at, %hi(D_800BE6EC)
/* 1A458 80019858 0C008C2E */  jal        func_800230B8
/* 1A45C 8001985C A020E6EC */   sb        $zero, %lo(D_800BE6EC)($at)
/* 1A460 80019860 240EFF00 */  addiu      $t6, $zero, -0x100
/* 1A464 80019864 3C01800C */  lui        $at, %hi(D_800BE6CC)
/* 1A468 80019868 AC2EE6CC */  sw         $t6, %lo(D_800BE6CC)($at)
/* 1A46C 8001986C 3C01800C */  lui        $at, %hi(D_800BE6D8)
/* 1A470 80019870 240FFE00 */  addiu      $t7, $zero, -0x200
/* 1A474 80019874 0C0065E8 */  jal        func_800197A0
/* 1A478 80019878 AC2FE6D8 */   sw        $t7, %lo(D_800BE6D8)($at)
/* 1A47C 8001987C 24180001 */  addiu      $t8, $zero, 1
/* 1A480 80019880 3C018013 */  lui        $at, %hi(D_8013747C)
/* 1A484 80019884 A438747C */  sh         $t8, %lo(D_8013747C)($at)
/* 1A488 80019888 3C01800C */  lui        $at, %hi(D_800BE6A8)
/* 1A48C 8001988C A420E6A8 */  sh         $zero, %lo(D_800BE6A8)($at)
/* 1A490 80019890 3C01800C */  lui        $at, %hi(D_800BE594)
/* 1A494 80019894 A420E594 */  sh         $zero, %lo(D_800BE594)($at)
/* 1A498 80019898 3C01800C */  lui        $at, %hi(D_800BE590)
/* 1A49C 8001989C 0C00426C */  jal        func_800109B0
/* 1A4A0 800198A0 A420E590 */   sh        $zero, %lo(D_800BE590)($at)
/* 1A4A4 800198A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1A4A8 800198A8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1A4AC 800198AC 03E00008 */  jr         $ra
/* 1A4B0 800198B0 00000000 */   nop
