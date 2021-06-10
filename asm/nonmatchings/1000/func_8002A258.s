glabel func_8002A258
/* 2AE58 8002A258 3086FFFF */  andi       $a2, $a0, 0xffff
/* 2AE5C 8002A25C 00067080 */  sll        $t6, $a2, 2
/* 2AE60 8002A260 01C67023 */  subu       $t6, $t6, $a2
/* 2AE64 8002A264 000E7080 */  sll        $t6, $t6, 2
/* 2AE68 8002A268 01C67021 */  addu       $t6, $t6, $a2
/* 2AE6C 8002A26C 000E7080 */  sll        $t6, $t6, 2
/* 2AE70 8002A270 01C67023 */  subu       $t6, $t6, $a2
/* 2AE74 8002A274 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 2AE78 8002A278 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2AE7C 8002A27C 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 2AE80 8002A280 000E70C0 */  sll        $t6, $t6, 3
/* 2AE84 8002A284 AFA40020 */  sw         $a0, 0x20($sp)
/* 2AE88 8002A288 01CF1821 */  addu       $v1, $t6, $t7
/* 2AE8C 8002A28C AFBF0014 */  sw         $ra, 0x14($sp)
/* 2AE90 8002A290 8C6400FC */  lw         $a0, 0xfc($v1)
/* 2AE94 8002A294 0C00A824 */  jal        func_8002A090
/* 2AE98 8002A298 AFA3001C */   sw        $v1, 0x1c($sp)
/* 2AE9C 8002A29C 8FA3001C */  lw         $v1, 0x1c($sp)
/* 2AEA0 8002A2A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2AEA4 8002A2A4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2AEA8 8002A2A8 03E00008 */  jr         $ra
/* 2AEAC 8002A2AC AC6200FC */   sw        $v0, 0xfc($v1)
