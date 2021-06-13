glabel func_80023A08
/* 24608 80023A08 240EFFF4 */  addiu      $t6, $zero, -0xc
/* 2460C 80023A0C 3C01800C */  lui        $at, %hi(D_800BE580)
/* 24610 80023A10 A42EE580 */  sh         $t6, %lo(D_800BE580)($at)
/* 24614 80023A14 3C014200 */  lui        $at, 0x4200
/* 24618 80023A18 44812000 */  mtc1       $at, $f4
/* 2461C 80023A1C 3C01800C */  lui        $at, %hi(gEyeY)
/* 24620 80023A20 E424E5AC */  swc1       $f4, %lo(gEyeY)($at)
/* 24624 80023A24 3C01800C */  lui        $at, %hi(D_800BE70C)
/* 24628 80023A28 240F0002 */  addiu      $t7, $zero, 2
/* 2462C 80023A2C 03E00008 */  jr         $ra
/* 24630 80023A30 A02FE70C */   sb        $t7, %lo(D_800BE70C)($at)
