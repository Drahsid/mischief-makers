glabel func_80023AA4
/* 246A4 80023AA4 3C028010 */  lui        $v0, %hi(D_80104098)
/* 246A8 80023AA8 24424098 */  addiu      $v0, $v0, %lo(D_80104098)
/* 246AC 80023AAC A4402880 */  sh         $zero, 0x2880($v0)
/* 246B0 80023AB0 A4402920 */  sh         $zero, 0x2920($v0)
/* 246B4 80023AB4 240E0001 */  addiu      $t6, $zero, 1
/* 246B8 80023AB8 3C01800D */  lui        $at, %hi(D_800CA230)
/* 246BC 80023ABC 03E00008 */  jr         $ra
/* 246C0 80023AC0 A42EA230 */   sh        $t6, %lo(D_800CA230)($at)
