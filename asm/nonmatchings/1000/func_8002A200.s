glabel func_8002A200
/* 2AE00 8002A200 3086FFFF */  andi       $a2, $a0, 0xffff
/* 2AE04 8002A204 00067080 */  sll        $t6, $a2, 2
/* 2AE08 8002A208 01C67023 */  subu       $t6, $t6, $a2
/* 2AE0C 8002A20C 000E7080 */  sll        $t6, $t6, 2
/* 2AE10 8002A210 01C67021 */  addu       $t6, $t6, $a2
/* 2AE14 8002A214 000E7080 */  sll        $t6, $t6, 2
/* 2AE18 8002A218 01C67023 */  subu       $t6, $t6, $a2
/* 2AE1C 8002A21C 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 2AE20 8002A220 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2AE24 8002A224 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 2AE28 8002A228 000E70C0 */  sll        $t6, $t6, 3
/* 2AE2C 8002A22C AFA40020 */  sw         $a0, 0x20($sp)
/* 2AE30 8002A230 01CF1821 */  addu       $v1, $t6, $t7
/* 2AE34 8002A234 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2AE38 8002A238 8C6400F8 */  lw         $a0, 0xf8($v1)
/* 2AE3C 8002A23C 0C00A824 */  jal        func_8002A090
/* 2AE40 8002A240 AFA3001C */   sw        $v1, 0x1c($sp)
/* 2AE44 8002A244 8FA3001C */  lw         $v1, 0x1c($sp)
/* 2AE48 8002A248 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2AE4C 8002A24C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2AE50 8002A250 03E00008 */  jr         $ra
/* 2AE54 8002A254 AC6200F8 */   sw        $v0, 0xf8($v1)
