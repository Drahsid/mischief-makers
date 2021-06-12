glabel func_8002AEF8
/* 2BAF8 8002AEF8 3086FFFF */  andi       $a2, $a0, 0xffff
/* 2BAFC 8002AEFC 00067080 */  sll        $t6, $a2, 2
/* 2BB00 8002AF00 01C67023 */  subu       $t6, $t6, $a2
/* 2BB04 8002AF04 000E7080 */  sll        $t6, $t6, 2
/* 2BB08 8002AF08 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2BB0C 8002AF0C 01C67021 */  addu       $t6, $t6, $a2
/* 2BB10 8002AF10 000E7080 */  sll        $t6, $t6, 2
/* 2BB14 8002AF14 01C67023 */  subu       $t6, $t6, $a2
/* 2BB18 8002AF18 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 2BB1C 8002AF1C AFB00018 */  sw         $s0, 0x18($sp)
/* 2BB20 8002AF20 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 2BB24 8002AF24 000E70C0 */  sll        $t6, $t6, 3
/* 2BB28 8002AF28 AFA40020 */  sw         $a0, 0x20($sp)
/* 2BB2C 8002AF2C AFA50024 */  sw         $a1, 0x24($sp)
/* 2BB30 8002AF30 01CF8021 */  addu       $s0, $t6, $t7
/* 2BB34 8002AF34 AFBF001C */  sw         $ra, 0x1c($sp)
/* 2BB38 8002AF38 9204009C */  lbu        $a0, 0x9c($s0)
/* 2BB3C 8002AF3C 87A50026 */  lh         $a1, 0x26($sp)
/* 2BB40 8002AF40 0C00AB91 */  jal        func_8002AE44
/* 2BB44 8002AF44 00000000 */   nop
/* 2BB48 8002AF48 9204009D */  lbu        $a0, 0x9d($s0)
/* 2BB4C 8002AF4C 87A50026 */  lh         $a1, 0x26($sp)
/* 2BB50 8002AF50 0C00AB91 */  jal        func_8002AE44
/* 2BB54 8002AF54 A202009C */   sb        $v0, 0x9c($s0)
/* 2BB58 8002AF58 9204009E */  lbu        $a0, 0x9e($s0)
/* 2BB5C 8002AF5C 87A50026 */  lh         $a1, 0x26($sp)
/* 2BB60 8002AF60 0C00AB91 */  jal        func_8002AE44
/* 2BB64 8002AF64 A202009D */   sb        $v0, 0x9d($s0)
/* 2BB68 8002AF68 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2BB6C 8002AF6C A202009E */  sb         $v0, 0x9e($s0)
/* 2BB70 8002AF70 8FB00018 */  lw         $s0, 0x18($sp)
/* 2BB74 8002AF74 03E00008 */  jr         $ra
/* 2BB78 8002AF78 27BD0020 */   addiu     $sp, $sp, 0x20
