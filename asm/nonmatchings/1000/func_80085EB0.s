glabel func_80085EB0
/* 86AB0 80085EB0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 86AB4 80085EB4 000E7880 */  sll        $t7, $t6, 2
/* 86AB8 80085EB8 01EE7823 */  subu       $t7, $t7, $t6
/* 86ABC 80085EBC 000F7880 */  sll        $t7, $t7, 2
/* 86AC0 80085EC0 01EE7821 */  addu       $t7, $t7, $t6
/* 86AC4 80085EC4 000F7880 */  sll        $t7, $t7, 2
/* 86AC8 80085EC8 01EE7823 */  subu       $t7, $t7, $t6
/* 86ACC 80085ECC 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 86AD0 80085ED0 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 86AD4 80085ED4 000F78C0 */  sll        $t7, $t7, 3
/* 86AD8 80085ED8 01F81021 */  addu       $v0, $t7, $t8
/* 86ADC 80085EDC 944800D8 */  lhu        $t0, 0xd8($v0)
/* 86AE0 80085EE0 3C0A800E */  lui        $t2, %hi(D_800E3DE4)
/* 86AE4 80085EE4 254A3DE4 */  addiu      $t2, $t2, %lo(D_800E3DE4)
/* 86AE8 80085EE8 000848C0 */  sll        $t1, $t0, 3
/* 86AEC 80085EEC 012A1821 */  addu       $v1, $t1, $t2
/* 86AF0 80085EF0 8C6B0000 */  lw         $t3, ($v1)
/* 86AF4 80085EF4 8C6C0004 */  lw         $t4, 4($v1)
/* 86AF8 80085EF8 AFA40000 */  sw         $a0, ($sp)
/* 86AFC 80085EFC AC4B00F8 */  sw         $t3, 0xf8($v0)
/* 86B00 80085F00 03E00008 */  jr         $ra
/* 86B04 80085F04 AC4C00FC */   sw        $t4, 0xfc($v0)
