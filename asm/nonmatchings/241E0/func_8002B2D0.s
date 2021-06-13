glabel func_8002B2D0
/* 2BED0 8002B2D0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2BED4 8002B2D4 000E7880 */  sll        $t7, $t6, 2
/* 2BED8 8002B2D8 01EE7823 */  subu       $t7, $t7, $t6
/* 2BEDC 8002B2DC 000F7880 */  sll        $t7, $t7, 2
/* 2BEE0 8002B2E0 01EE7821 */  addu       $t7, $t7, $t6
/* 2BEE4 8002B2E4 000F7880 */  sll        $t7, $t7, 2
/* 2BEE8 8002B2E8 01EE7823 */  subu       $t7, $t7, $t6
/* 2BEEC 8002B2EC 3C18800F */  lui        $t8, %hi(gActors)
/* 2BEF0 8002B2F0 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 2BEF4 8002B2F4 000F78C0 */  sll        $t7, $t7, 3
/* 2BEF8 8002B2F8 01F81021 */  addu       $v0, $t7, $t8
/* 2BEFC 8002B2FC 94590094 */  lhu        $t9, 0x94($v0)
/* 2BF00 8002B300 3C09800C */  lui        $t1, %hi(D_800BE4E0)
/* 2BF04 8002B304 3328FFEF */  andi       $t0, $t9, 0xffef
/* 2BF08 8002B308 A4480094 */  sh         $t0, 0x94($v0)
/* 2BF0C 8002B30C 9529E4E0 */  lhu        $t1, %lo(D_800BE4E0)($t1)
/* 2BF10 8002B310 AFA40000 */  sw         $a0, ($sp)
/* 2BF14 8002B314 00095023 */  negu       $t2, $t1
/* 2BF18 8002B318 314B000F */  andi       $t3, $t2, 0xf
/* 2BF1C 8002B31C 000B18C0 */  sll        $v1, $t3, 3
/* 2BF20 8002B320 A043009C */  sb         $v1, 0x9c($v0)
/* 2BF24 8002B324 A043009D */  sb         $v1, 0x9d($v0)
/* 2BF28 8002B328 03E00008 */  jr         $ra
/* 2BF2C 8002B32C A043009E */   sb        $v1, 0x9e($v0)
