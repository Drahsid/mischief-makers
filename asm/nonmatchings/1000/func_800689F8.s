glabel func_800689F8
/* 695F8 800689F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 695FC 800689FC AFBF0014 */  sw         $ra, 0x14($sp)
/* 69600 80068A00 2404000C */  addiu      $a0, $zero, 0xc
/* 69604 80068A04 00002825 */  or         $a1, $zero, $zero
/* 69608 80068A08 0C00A6C0 */  jal        func_80029B00
/* 6960C 80068A0C 2406FFD0 */   addiu     $a2, $zero, -0x30
/* 69610 80068A10 8FBF0014 */  lw         $ra, 0x14($sp)
/* 69614 80068A14 10400004 */  beqz       $v0, .L80068A28
/* 69618 80068A18 00001025 */   or        $v0, $zero, $zero
/* 6961C 80068A1C 10000002 */  b          .L80068A28
/* 69620 80068A20 24020002 */   addiu     $v0, $zero, 2
/* 69624 80068A24 00001025 */  or         $v0, $zero, $zero
.L80068A28:
/* 69628 80068A28 03E00008 */  jr         $ra
/* 6962C 80068A2C 27BD0018 */   addiu     $sp, $sp, 0x18
