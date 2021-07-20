glabel func_80023BC0
/* 247C0 80023BC0 240E0002 */  addiu      $t6, $zero, 2
/* 247C4 80023BC4 3C01800C */  lui        $at, %hi(D_800BE57C)
/* 247C8 80023BC8 A42EE57C */  sh         $t6, %lo(D_800BE57C)($at)
/* 247CC 80023BCC 3C01800C */  lui        $at, %hi(D_800BE584)
/* 247D0 80023BD0 240FFFF4 */  addiu      $t7, $zero, -0xc
/* 247D4 80023BD4 3C028010 */  lui        $v0, %hi(D_80104098)
/* 247D8 80023BD8 A42FE584 */  sh         $t7, %lo(D_800BE584)($at)
/* 247DC 80023BDC 24424098 */  addiu      $v0, $v0, %lo(D_80104098)
/* 247E0 80023BE0 A4402880 */  sh         $zero, 0x2880($v0)
/* 247E4 80023BE4 A4402920 */  sh         $zero, 0x2920($v0)
/* 247E8 80023BE8 3C01800D */  lui        $at, %hi(D_800CA230)
/* 247EC 80023BEC 24180001 */  addiu      $t8, $zero, 1
/* 247F0 80023BF0 03E00008 */  jr         $ra
/* 247F4 80023BF4 A438A230 */   sh        $t8, %lo(D_800CA230)($at)
