glabel func_80023ACC
/* 246CC 80023ACC 3C01800C */  lui        $at, %hi(D_800BE57C)
/* 246D0 80023AD0 A420E57C */  sh         $zero, %lo(D_800BE57C)($at)
/* 246D4 80023AD4 3C01800C */  lui        $at, %hi(D_800BE584)
/* 246D8 80023AD8 3C028010 */  lui        $v0, %hi(D_80104098)
/* 246DC 80023ADC A420E584 */  sh         $zero, %lo(D_800BE584)($at)
/* 246E0 80023AE0 24424098 */  addiu      $v0, $v0, %lo(D_80104098)
/* 246E4 80023AE4 A4402880 */  sh         $zero, 0x2880($v0)
/* 246E8 80023AE8 A4402920 */  sh         $zero, 0x2920($v0)
/* 246EC 80023AEC 3C01800D */  lui        $at, %hi(D_800CA230)
/* 246F0 80023AF0 240E0001 */  addiu      $t6, $zero, 1
/* 246F4 80023AF4 03E00008 */  jr         $ra
/* 246F8 80023AF8 A42EA230 */   sh        $t6, %lo(D_800CA230)($at)
