glabel func_8001CC34
/* 1D834 8001CC34 3C038017 */  lui        $v1, %hi(gWorldProgress)
/* 1D838 8001CC38 90631B18 */  lbu        $v1, %lo(gWorldProgress)($v1)
/* 1D83C 8001CC3C 24010018 */  addiu      $at, $zero, 0x18
/* 1D840 8001CC40 10610008 */  beq        $v1, $at, .L8001CC64
/* 1D844 8001CC44 00601025 */   or        $v0, $v1, $zero
/* 1D848 8001CC48 24010025 */  addiu      $at, $zero, 0x25
/* 1D84C 8001CC4C 10410005 */  beq        $v0, $at, .L8001CC64
/* 1D850 8001CC50 24010031 */   addiu     $at, $zero, 0x31
/* 1D854 8001CC54 10410003 */  beq        $v0, $at, .L8001CC64
/* 1D858 8001CC58 24010038 */   addiu     $at, $zero, 0x38
/* 1D85C 8001CC5C 14410005 */  bne        $v0, $at, .L8001CC74
/* 1D860 8001CC60 2841003A */   slti      $at, $v0, 0x3a
.L8001CC64:
/* 1D864 8001CC64 2463FFFF */  addiu      $v1, $v1, -1
/* 1D868 8001CC68 3062FFFF */  andi       $v0, $v1, 0xffff
/* 1D86C 8001CC6C 00401825 */  or         $v1, $v0, $zero
/* 1D870 8001CC70 2841003A */  slti       $at, $v0, 0x3a
.L8001CC74:
/* 1D874 8001CC74 10200003 */  beqz       $at, .L8001CC84
/* 1D878 8001CC78 2402003A */   addiu     $v0, $zero, 0x3a
/* 1D87C 8001CC7C 03E00008 */  jr         $ra
/* 1D880 8001CC80 00601025 */   or        $v0, $v1, $zero
.L8001CC84:
/* 1D884 8001CC84 03E00008 */  jr         $ra
/* 1D888 8001CC88 00000000 */   nop
