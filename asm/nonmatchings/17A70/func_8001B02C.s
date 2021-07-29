glabel func_8001B02C
/* 1BC2C 8001B02C 3C048018 */  lui        $a0, %hi(gCurrentStage)
/* 1BC30 8001B030 3C058017 */  lui        $a1, %hi(gWorldProgress)
/* 1BC34 8001B034 24A51B18 */  addiu      $a1, $a1, %lo(gWorldProgress)
/* 1BC38 8001B038 24848162 */  addiu      $a0, $a0, %lo(gCurrentStage)
/* 1BC3C 8001B03C 94820000 */  lhu        $v0, ($a0)
/* 1BC40 8001B040 90A30000 */  lbu        $v1, ($a1)
/* 1BC44 8001B044 00000000 */  nop
/* 1BC48 8001B048 0043082A */  slt        $at, $v0, $v1
/* 1BC4C 8001B04C 14200008 */  bnez       $at, .L8001B070
/* 1BC50 8001B050 2861003B */   slti      $at, $v1, 0x3b
/* 1BC54 8001B054 10200006 */  beqz       $at, .L8001B070
/* 1BC58 8001B058 244F0001 */   addiu     $t7, $v0, 1
/* 1BC5C 8001B05C A48F0000 */  sh         $t7, ($a0)
/* 1BC60 8001B060 A0AF0000 */  sb         $t7, ($a1)
/* 1BC64 8001B064 24180001 */  addiu      $t8, $zero, 1
/* 1BC68 8001B068 3C018018 */  lui        $at, %hi(D_80178152)
/* 1BC6C 8001B06C A4388152 */  sh         $t8, %lo(D_80178152)($at)
.L8001B070:
/* 1BC70 8001B070 03E00008 */  jr         $ra
/* 1BC74 8001B074 00000000 */   nop
