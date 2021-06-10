glabel func_8008CF10
/* 8DB10 8008CF10 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8DB14 8008CF14 000E7880 */  sll        $t7, $t6, 2
/* 8DB18 8008CF18 01EE7823 */  subu       $t7, $t7, $t6
/* 8DB1C 8008CF1C 000F7880 */  sll        $t7, $t7, 2
/* 8DB20 8008CF20 01EE7821 */  addu       $t7, $t7, $t6
/* 8DB24 8008CF24 000F7880 */  sll        $t7, $t7, 2
/* 8DB28 8008CF28 01EE7823 */  subu       $t7, $t7, $t6
/* 8DB2C 8008CF2C 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 8DB30 8008CF30 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 8DB34 8008CF34 000F78C0 */  sll        $t7, $t7, 3
/* 8DB38 8008CF38 01F81021 */  addu       $v0, $t7, $t8
/* 8DB3C 8008CF3C 24030008 */  addiu      $v1, $zero, 8
/* 8DB40 8008CF40 2419FFF2 */  addiu      $t9, $zero, -0xe
/* 8DB44 8008CF44 2408FFF8 */  addiu      $t0, $zero, -8
/* 8DB48 8008CF48 AFA40000 */  sw         $a0, ($sp)
/* 8DB4C 8008CF4C A44300AE */  sh         $v1, 0xae($v0)
/* 8DB50 8008CF50 A45900B0 */  sh         $t9, 0xb0($v0)
/* 8DB54 8008CF54 A44800AA */  sh         $t0, 0xaa($v0)
/* 8DB58 8008CF58 03E00008 */  jr         $ra
/* 8DB5C 8008CF5C A44300AC */   sh        $v1, 0xac($v0)
