glabel func_80000400
/* 1000 80000400 3C08800F */  lui        $t0, %hi(D_800EF4D0)
/* 1004 80000404 3C090009 */  lui        $t1, 9
/* 1008 80000408 2508F4D0 */  addiu      $t0, $t0, %lo(D_800EF4D0)
/* 100C 8000040C 3529C2D0 */  ori        $t1, $t1, 0xc2d0
.L80000410:
/* 1010 80000410 2129FFF8 */  addi       $t1, $t1, -8
/* 1014 80000414 AD000000 */  sw         $zero, ($t0)
/* 1018 80000418 AD000004 */  sw         $zero, 4($t0)
/* 101C 8000041C 1520FFFC */  bnez       $t1, .L80000410
/* 1020 80000420 21080008 */   addi      $t0, $t0, 8
/* 1024 80000424 3C0A8000 */  lui        $t2, %hi(mainproc)
/* 1028 80000428 3C1D8012 */  lui        $sp, %hi(D_80124670)
/* 102C 8000042C 254A06BC */  addiu      $t2, $t2, %lo(mainproc)
/* 1030 80000430 01400008 */  jr         $t2
/* 1034 80000434 27BD4670 */   addiu     $sp, $sp, %lo(D_80124670)
/* 1038 80000438 00000000 */  nop
/* 103C 8000043C 00000000 */  nop
/* 1040 80000440 00000000 */  nop
/* 1044 80000444 00000000 */  nop
/* 1048 80000448 00000000 */  nop
/* 104C 8000044C 00000000 */  nop