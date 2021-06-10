glabel func_8001D040
/* 1DC40 8001D040 3C02800F */  lui        $v0, %hi(D_800F7510)
/* 1DC44 8001D044 24427510 */  addiu      $v0, $v0, %lo(D_800F7510)
/* 1DC48 8001D048 8C4E33D4 */  lw         $t6, 0x33d4($v0)
/* 1DC4C 8001D04C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1DC50 8001D050 25CFFFFF */  addiu      $t7, $t6, -1
/* 1DC54 8001D054 AC4F33D4 */  sw         $t7, 0x33d4($v0)
/* 1DC58 8001D058 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1DC5C 8001D05C 944433D6 */  lhu        $a0, 0x33d6($v0)
/* 1DC60 8001D060 27A5001E */  addiu      $a1, $sp, 0x1e
/* 1DC64 8001D064 27A6001C */  addiu      $a2, $sp, 0x1c
/* 1DC68 8001D068 0C006C1E */  jal        func_8001B078
/* 1DC6C 8001D06C 27A7001A */   addiu     $a3, $sp, 0x1a
/* 1DC70 8001D070 97B8001E */  lhu        $t8, 0x1e($sp)
/* 1DC74 8001D074 3C02800F */  lui        $v0, %hi(D_800F7510)
/* 1DC78 8001D078 2B010006 */  slti       $at, $t8, 6
/* 1DC7C 8001D07C 14200005 */  bnez       $at, .L8001D094
/* 1DC80 8001D080 24427510 */   addiu     $v0, $v0, %lo(D_800F7510)
/* 1DC84 8001D084 8C5933D4 */  lw         $t9, 0x33d4($v0)
/* 1DC88 8001D088 00000000 */  nop
/* 1DC8C 8001D08C 2728FFFF */  addiu      $t0, $t9, -1
/* 1DC90 8001D090 AC4833D4 */  sw         $t0, 0x33d4($v0)
.L8001D094:
/* 1DC94 8001D094 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1DC98 8001D098 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1DC9C 8001D09C 03E00008 */  jr         $ra
/* 1DCA0 8001D0A0 00000000 */   nop
