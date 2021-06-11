glabel func_80067E9C
/* 68A9C 80067E9C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 68AA0 80067EA0 000E7880 */  sll        $t7, $t6, 2
/* 68AA4 80067EA4 01EE7823 */  subu       $t7, $t7, $t6
/* 68AA8 80067EA8 000F7880 */  sll        $t7, $t7, 2
/* 68AAC 80067EAC 01EE7821 */  addu       $t7, $t7, $t6
/* 68AB0 80067EB0 000F7880 */  sll        $t7, $t7, 2
/* 68AB4 80067EB4 01EE7823 */  subu       $t7, $t7, $t6
/* 68AB8 80067EB8 3C18800F */  lui        $t8, %hi(gActors)
/* 68ABC 80067EBC 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 68AC0 80067EC0 000F78C0 */  sll        $t7, $t7, 3
/* 68AC4 80067EC4 01F81021 */  addu       $v0, $t7, $t8
/* 68AC8 80067EC8 845900E6 */  lh         $t9, 0xe6($v0)
/* 68ACC 80067ECC AFA40000 */  sw         $a0, ($sp)
/* 68AD0 80067ED0 17200005 */  bnez       $t9, .L80067EE8
/* 68AD4 80067ED4 3C08800E */   lui       $t0, %hi(D_800E1700)
/* 68AD8 80067ED8 25081700 */  addiu      $t0, $t0, %lo(D_800E1700)
/* 68ADC 80067EDC 24090001 */  addiu      $t1, $zero, 1
/* 68AE0 80067EE0 A44900E6 */  sh         $t1, 0xe6($v0)
/* 68AE4 80067EE4 AC4800E8 */  sw         $t0, 0xe8($v0)
.L80067EE8:
/* 68AE8 80067EE8 03E00008 */  jr         $ra
/* 68AEC 80067EEC 00000000 */   nop
