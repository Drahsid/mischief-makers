glabel func_8002A118
/* 2AD18 8002A118 3086FFFF */  andi       $a2, $a0, 0xffff
/* 2AD1C 8002A11C 00067080 */  sll        $t6, $a2, 2
/* 2AD20 8002A120 01C67023 */  subu       $t6, $t6, $a2
/* 2AD24 8002A124 000E7080 */  sll        $t6, $t6, 2
/* 2AD28 8002A128 01C67021 */  addu       $t6, $t6, $a2
/* 2AD2C 8002A12C 000E7080 */  sll        $t6, $t6, 2
/* 2AD30 8002A130 01C67023 */  subu       $t6, $t6, $a2
/* 2AD34 8002A134 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 2AD38 8002A138 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2AD3C 8002A13C 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 2AD40 8002A140 000E70C0 */  sll        $t6, $t6, 3
/* 2AD44 8002A144 AFA40020 */  sw         $a0, 0x20($sp)
/* 2AD48 8002A148 01CF1821 */  addu       $v1, $t6, $t7
/* 2AD4C 8002A14C AFBF0014 */  sw         $ra, 0x14($sp)
/* 2AD50 8002A150 8C6400EC */  lw         $a0, 0xec($v1)
/* 2AD54 8002A154 0C00A824 */  jal        func_8002A090
/* 2AD58 8002A158 AFA3001C */   sw        $v1, 0x1c($sp)
/* 2AD5C 8002A15C 8FA3001C */  lw         $v1, 0x1c($sp)
/* 2AD60 8002A160 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2AD64 8002A164 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2AD68 8002A168 03E00008 */  jr         $ra
/* 2AD6C 8002A16C AC6200EC */   sw        $v0, 0xec($v1)
