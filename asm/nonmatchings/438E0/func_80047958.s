glabel func_80047958
/* 48558 80047958 3C02800D */  lui        $v0, %hi(D_800D28F0)
/* 4855C 8004795C 944228F0 */  lhu        $v0, %lo(D_800D28F0)($v0)
/* 48560 80047960 3C0F800D */  lui        $t7, %hi(D_800D28D0)
/* 48564 80047964 2442FFE1 */  addiu      $v0, $v0, -0x1f
/* 48568 80047968 304EFFFF */  andi       $t6, $v0, 0xffff
/* 4856C 8004796C 01EE7821 */  addu       $t7, $t7, $t6
/* 48570 80047970 91EF28D0 */  lbu        $t7, %lo(D_800D28D0)($t7)
/* 48574 80047974 3C01800C */  lui        $at, %hi(D_800BE5D0)
/* 48578 80047978 A42FE5D0 */  sh         $t7, %lo(D_800BE5D0)($at)
/* 4857C 8004797C 3C01800C */  lui        $at, %hi(gGameState)
/* 48580 80047980 24180005 */  addiu      $t8, $zero, 5
/* 48584 80047984 A438E4F0 */  sh         $t8, %lo(gGameState)($at)
/* 48588 80047988 3C01800C */  lui        $at, %hi(gGameSubState)
/* 4858C 8004798C 03E00008 */  jr         $ra
/* 48590 80047990 A420E4F4 */   sh        $zero, %lo(gGameSubState)($at)