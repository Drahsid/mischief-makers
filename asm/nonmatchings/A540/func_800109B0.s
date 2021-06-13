glabel func_800109B0
/* 115B0 800109B0 44800000 */  mtc1       $zero, $f0
/* 115B4 800109B4 3C01800C */  lui        $at, %hi(gEyeX)
/* 115B8 800109B8 E420E5A8 */  swc1       $f0, %lo(gEyeX)($at)
/* 115BC 800109BC 3C01800C */  lui        $at, %hi(gEyeY)
/* 115C0 800109C0 E420E5AC */  swc1       $f0, %lo(gEyeY)($at)
/* 115C4 800109C4 3C0143E0 */  lui        $at, 0x43e0
/* 115C8 800109C8 44812000 */  mtc1       $at, $f4
/* 115CC 800109CC 3C01800C */  lui        $at, %hi(gEyeZ)
/* 115D0 800109D0 E424E5B0 */  swc1       $f4, %lo(gEyeZ)($at)
/* 115D4 800109D4 3C01800C */  lui        $at, %hi(gAtX)
/* 115D8 800109D8 E420E5B4 */  swc1       $f0, %lo(gAtX)($at)
/* 115DC 800109DC 3C01800C */  lui        $at, %hi(gAtY)
/* 115E0 800109E0 E420E5B8 */  swc1       $f0, %lo(gAtY)($at)
/* 115E4 800109E4 3C01800C */  lui        $at, %hi(gAtZ)
/* 115E8 800109E8 E420E5BC */  swc1       $f0, %lo(gAtZ)($at)
/* 115EC 800109EC 3C01800C */  lui        $at, %hi(gUpX)
/* 115F0 800109F0 E420E5C0 */  swc1       $f0, %lo(gUpX)($at)
/* 115F4 800109F4 3C013F80 */  lui        $at, 0x3f80
/* 115F8 800109F8 44813000 */  mtc1       $at, $f6
/* 115FC 800109FC 3C01800C */  lui        $at, %hi(gUpY)
/* 11600 80010A00 E426E5C4 */  swc1       $f6, %lo(gUpY)($at)
/* 11604 80010A04 3C01800C */  lui        $at, %hi(gUpZ)
/* 11608 80010A08 03E00008 */  jr         $ra
/* 1160C 80010A0C E420E5C8 */   swc1      $f0, %lo(gUpZ)($at)
