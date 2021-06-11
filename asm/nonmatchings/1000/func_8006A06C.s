glabel func_8006A06C
/* 6AC6C 8006A06C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6AC70 8006A070 000E7880 */  sll        $t7, $t6, 2
/* 6AC74 8006A074 01EE7823 */  subu       $t7, $t7, $t6
/* 6AC78 8006A078 000F7880 */  sll        $t7, $t7, 2
/* 6AC7C 8006A07C 01EE7821 */  addu       $t7, $t7, $t6
/* 6AC80 8006A080 000F7880 */  sll        $t7, $t7, 2
/* 6AC84 8006A084 01EE7823 */  subu       $t7, $t7, $t6
/* 6AC88 8006A088 3C18800F */  lui        $t8, %hi(gActors)
/* 6AC8C 8006A08C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 6AC90 8006A090 000F78C0 */  sll        $t7, $t7, 3
/* 6AC94 8006A094 44856000 */  mtc1       $a1, $f12
/* 6AC98 8006A098 44802000 */  mtc1       $zero, $f4
/* 6AC9C 8006A09C 01F81021 */  addu       $v0, $t7, $t8
/* 6ACA0 8006A0A0 241900A0 */  addiu      $t9, $zero, 0xa0
/* 6ACA4 8006A0A4 AFA40000 */  sw         $a0, ($sp)
/* 6ACA8 8006A0A8 A45900D0 */  sh         $t9, 0xd0($v0)
/* 6ACAC 8006A0AC E44C0118 */  swc1       $f12, 0x118($v0)
/* 6ACB0 8006A0B0 03E00008 */  jr         $ra
/* 6ACB4 8006A0B4 E444011C */   swc1      $f4, 0x11c($v0)
