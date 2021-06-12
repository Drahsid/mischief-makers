glabel func_8001FF30
/* 20B30 8001FF30 3C02800F */  lui        $v0, %hi(D_800EF510)
/* 20B34 8001FF34 2442F510 */  addiu      $v0, $v0, %lo(D_800EF510)
/* 20B38 8001FF38 8C4E0098 */  lw         $t6, 0x98($v0)
/* 20B3C 8001FF3C 3C010008 */  lui        $at, 8
/* 20B40 8001FF40 34210600 */  ori        $at, $at, 0x600
/* 20B44 8001FF44 01C17824 */  and        $t7, $t6, $at
/* 20B48 8001FF48 03E00008 */  jr         $ra
/* 20B4C 8001FF4C AC4F0098 */   sw        $t7, 0x98($v0)
