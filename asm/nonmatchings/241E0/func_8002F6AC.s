glabel func_8002F6AC
/* 302AC 8002F6AC 3C028018 */  lui        $v0, %hi(gRedGems)
/* 302B0 8002F6B0 24428136 */  addiu      $v0, $v0, %lo(gRedGems)
/* 302B4 8002F6B4 944E0000 */  lhu        $t6, ($v0)
/* 302B8 8002F6B8 240F270F */  addiu      $t7, $zero, 0x270f
/* 302BC 8002F6BC 29C1270F */  slti       $at, $t6, 0x270f
/* 302C0 8002F6C0 14200002 */  bnez       $at, .L8002F6CC
/* 302C4 8002F6C4 00000000 */   nop
/* 302C8 8002F6C8 A44F0000 */  sh         $t7, ($v0)
.L8002F6CC:
/* 302CC 8002F6CC 03E00008 */  jr         $ra
/* 302D0 8002F6D0 00000000 */   nop
