glabel func_8008F108
/* 8FD08 8008F108 3087FFFF */  andi       $a3, $a0, 0xffff
/* 8FD0C 8008F10C 00077080 */  sll        $t6, $a3, 2
/* 8FD10 8008F110 01C77023 */  subu       $t6, $t6, $a3
/* 8FD14 8008F114 000E7080 */  sll        $t6, $t6, 2
/* 8FD18 8008F118 01C77021 */  addu       $t6, $t6, $a3
/* 8FD1C 8008F11C 000E7080 */  sll        $t6, $t6, 2
/* 8FD20 8008F120 01C77023 */  subu       $t6, $t6, $a3
/* 8FD24 8008F124 3C0F800F */  lui        $t7, %hi(gActors)
/* 8FD28 8008F128 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8FD2C 8008F12C 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 8FD30 8008F130 000E70C0 */  sll        $t6, $t6, 3
/* 8FD34 8008F134 AFA40020 */  sw         $a0, 0x20($sp)
/* 8FD38 8008F138 01CF1821 */  addu       $v1, $t6, $t7
/* 8FD3C 8008F13C AFBF0014 */  sw         $ra, 0x14($sp)
/* 8FD40 8008F140 8C6400EC */  lw         $a0, 0xec($v1)
/* 8FD44 8008F144 AFA3001C */  sw         $v1, 0x1c($sp)
/* 8FD48 8008F148 00002825 */  or         $a1, $zero, $zero
/* 8FD4C 8008F14C 0C00A607 */  jal        func_8002981C
/* 8FD50 8008F150 3C060001 */   lui       $a2, 1
/* 8FD54 8008F154 8FA3001C */  lw         $v1, 0x1c($sp)
/* 8FD58 8008F158 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8FD5C 8008F15C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8FD60 8008F160 03E00008 */  jr         $ra
/* 8FD64 8008F164 AC6200EC */   sw        $v0, 0xec($v1)
