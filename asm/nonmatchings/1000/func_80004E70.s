glabel func_80004E70
/* 5A70 80004E70 00051880 */  sll        $v1, $a1, 2
/* 5A74 80004E74 240E000F */  addiu      $t6, $zero, 0xf
/* 5A78 80004E78 006E7804 */  sllv       $t7, $t6, $v1
/* 5A7C 80004E7C 008FC024 */  and        $t8, $a0, $t7
/* 5A80 80004E80 00781006 */  srlv       $v0, $t8, $v1
/* 5A84 80004E84 3059FFFF */  andi       $t9, $v0, 0xffff
/* 5A88 80004E88 03E00008 */  jr         $ra
/* 5A8C 80004E8C 03201025 */   or        $v0, $t9, $zero
