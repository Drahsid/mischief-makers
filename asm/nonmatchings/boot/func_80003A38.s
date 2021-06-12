glabel func_80003A38
/* 4638 80003A38 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 463C 80003A3C 3C048017 */  lui        $a0, %hi(D_8016DFE4)
/* 4640 80003A40 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4644 80003A44 8C84DFE4 */  lw         $a0, %lo(D_8016DFE4)($a0)
/* 4648 80003A48 0C027FD0 */  jal        func_8009FF40
/* 464C 80003A4C 00000000 */   nop
/* 4650 80003A50 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4654 80003A54 3C01800F */  lui        $at, %hi(D_800EF4D0)
/* 4658 80003A58 A020F4D0 */  sb         $zero, %lo(D_800EF4D0)($at)
/* 465C 80003A5C 03E00008 */  jr         $ra
/* 4660 80003A60 27BD0018 */   addiu     $sp, $sp, 0x18
