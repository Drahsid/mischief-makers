glabel func_800033F0
/* 3FF0 800033F0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3FF4 800033F4 00053600 */  sll        $a2, $a1, 0x18
/* 3FF8 800033F8 00067603 */  sra        $t6, $a2, 0x18
/* 3FFC 800033FC AFBF001C */  sw         $ra, 0x1c($sp)
/* 4000 80003400 AFA50024 */  sw         $a1, 0x24($sp)
/* 4004 80003404 240F00FF */  addiu      $t7, $zero, 0xff
/* 4008 80003408 01C03025 */  or         $a2, $t6, $zero
/* 400C 8000340C AFAF0010 */  sw         $t7, 0x10($sp)
/* 4010 80003410 2405FFFF */  addiu      $a1, $zero, -1
/* 4014 80003414 AFA00014 */  sw         $zero, 0x14($sp)
/* 4018 80003418 0C000C08 */  jal        func_80003020
/* 401C 8000341C 24070081 */   addiu     $a3, $zero, 0x81
/* 4020 80003420 8FBF001C */  lw         $ra, 0x1c($sp)
/* 4024 80003424 27BD0020 */  addiu      $sp, $sp, 0x20
/* 4028 80003428 03E00008 */  jr         $ra
/* 402C 8000342C 00000000 */   nop
