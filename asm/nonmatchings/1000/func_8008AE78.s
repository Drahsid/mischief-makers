glabel func_8008AE78
/* 8BA78 8008AE78 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8BA7C 8008AE7C 000E7880 */  sll        $t7, $t6, 2
/* 8BA80 8008AE80 01EE7823 */  subu       $t7, $t7, $t6
/* 8BA84 8008AE84 000F7880 */  sll        $t7, $t7, 2
/* 8BA88 8008AE88 01EE7821 */  addu       $t7, $t7, $t6
/* 8BA8C 8008AE8C 000F7880 */  sll        $t7, $t7, 2
/* 8BA90 8008AE90 01EE7823 */  subu       $t7, $t7, $t6
/* 8BA94 8008AE94 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 8BA98 8008AE98 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 8BA9C 8008AE9C 000F78C0 */  sll        $t7, $t7, 3
/* 8BAA0 8008AEA0 01F81021 */  addu       $v0, $t7, $t8
/* 8BAA4 8008AEA4 944300D8 */  lhu        $v1, 0xd8($v0)
/* 8BAA8 8008AEA8 8C590150 */  lw         $t9, 0x150($v0)
/* 8BAAC 8008AEAC 306AF000 */  andi       $t2, $v1, 0xf000
/* 8BAB0 8008AEB0 000A5B03 */  sra        $t3, $t2, 0xc
/* 8BAB4 8008AEB4 3328000F */  andi       $t0, $t9, 0xf
/* 8BAB8 8008AEB8 00084C00 */  sll        $t1, $t0, 0x10
/* 8BABC 8008AEBC 000B63C0 */  sll        $t4, $t3, 0xf
/* 8BAC0 8008AEC0 AC490154 */  sw         $t1, 0x154($v0)
/* 8BAC4 8008AEC4 AC4C0158 */  sw         $t4, 0x158($v0)
/* 8BAC8 8008AEC8 3C18800C */  lui        $t8, %hi(D_800BE55C)
/* 8BACC 8008AECC 8F18E55C */  lw         $t8, %lo(D_800BE55C)($t8)
/* 8BAD0 8008AED0 8C4F008C */  lw         $t7, 0x8c($v0)
/* 8BAD4 8008AED4 30650F00 */  andi       $a1, $v1, 0xf00
/* 8BAD8 8008AED8 00056A03 */  sra        $t5, $a1, 8
/* 8BADC 8008AEDC 000D74C0 */  sll        $t6, $t5, 0x13
/* 8BAE0 8008AEE0 01F83021 */  addu       $a2, $t7, $t8
/* 8BAE4 8008AEE4 00CEC821 */  addu       $t9, $a2, $t6
/* 8BAE8 8008AEE8 00CE4023 */  subu       $t0, $a2, $t6
/* 8BAEC 8008AEEC 306900FF */  andi       $t1, $v1, 0xff
/* 8BAF0 8008AEF0 AFA40000 */  sw         $a0, ($sp)
/* 8BAF4 8008AEF4 AC59015C */  sw         $t9, 0x15c($v0)
/* 8BAF8 8008AEF8 AC480160 */  sw         $t0, 0x160($v0)
/* 8BAFC 8008AEFC 03E00008 */  jr         $ra
/* 8BB00 8008AF00 AC490164 */   sw        $t1, 0x164($v0)
