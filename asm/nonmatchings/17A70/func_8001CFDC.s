glabel func_8001CFDC
/* 1DBDC 8001CFDC 3C02800F */  lui        $v0, %hi(D_800F7510)
/* 1DBE0 8001CFE0 24427510 */  addiu      $v0, $v0, %lo(D_800F7510)
/* 1DBE4 8001CFE4 8C4E33D4 */  lw         $t6, 0x33d4($v0)
/* 1DBE8 8001CFE8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1DBEC 8001CFEC 25CF0001 */  addiu      $t7, $t6, 1
/* 1DBF0 8001CFF0 AC4F33D4 */  sw         $t7, 0x33d4($v0)
/* 1DBF4 8001CFF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1DBF8 8001CFF8 944433D6 */  lhu        $a0, 0x33d6($v0)
/* 1DBFC 8001CFFC 27A5001E */  addiu      $a1, $sp, 0x1e
/* 1DC00 8001D000 27A6001C */  addiu      $a2, $sp, 0x1c
/* 1DC04 8001D004 0C006C1E */  jal        func_8001B078
/* 1DC08 8001D008 27A7001A */   addiu     $a3, $sp, 0x1a
/* 1DC0C 8001D00C 97B8001E */  lhu        $t8, 0x1e($sp)
/* 1DC10 8001D010 3C02800F */  lui        $v0, %hi(D_800F7510)
/* 1DC14 8001D014 2B010006 */  slti       $at, $t8, 6
/* 1DC18 8001D018 14200005 */  bnez       $at, .L8001D030
/* 1DC1C 8001D01C 24427510 */   addiu     $v0, $v0, %lo(D_800F7510)
/* 1DC20 8001D020 8C5933D4 */  lw         $t9, 0x33d4($v0)
/* 1DC24 8001D024 00000000 */  nop
/* 1DC28 8001D028 27280001 */  addiu      $t0, $t9, 1
/* 1DC2C 8001D02C AC4833D4 */  sw         $t0, 0x33d4($v0)
.L8001D030:
/* 1DC30 8001D030 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1DC34 8001D034 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1DC38 8001D038 03E00008 */  jr         $ra
/* 1DC3C 8001D03C 00000000 */   nop
