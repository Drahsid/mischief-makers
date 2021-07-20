glabel func_80044EC4
/* 45AC4 80044EC4 3C0E8018 */  lui        $t6, %hi(D_801782C0)
/* 45AC8 80044EC8 95CE82C0 */  lhu        $t6, %lo(D_801782C0)($t6)
/* 45ACC 80044ECC 3C188010 */  lui        $t8, %hi(D_801069E0)
/* 45AD0 80044ED0 000E78C0 */  sll        $t7, $t6, 3
/* 45AD4 80044ED4 01EE7821 */  addu       $t7, $t7, $t6
/* 45AD8 80044ED8 000F7900 */  sll        $t7, $t7, 4
/* 45ADC 80044EDC 271869E0 */  addiu      $t8, $t8, %lo(D_801069E0)
/* 45AE0 80044EE0 01F81021 */  addu       $v0, $t7, $t8
/* 45AE4 80044EE4 24190033 */  addiu      $t9, $zero, 0x33
/* 45AE8 80044EE8 A4590080 */  sh         $t9, 0x80($v0)
/* 45AEC 80044EEC 3C088018 */  lui        $t0, %hi(D_801782C2)
/* 45AF0 80044EF0 950882C2 */  lhu        $t0, %lo(D_801782C2)($t0)
/* 45AF4 80044EF4 3C0A800D */  lui        $t2, %hi(D_800D19B8)
/* 45AF8 80044EF8 00084880 */  sll        $t1, $t0, 2
/* 45AFC 80044EFC 01495021 */  addu       $t2, $t2, $t1
/* 45B00 80044F00 8D4A19B8 */  lw         $t2, %lo(D_800D19B8)($t2)
/* 45B04 80044F04 03E00008 */  jr         $ra
/* 45B08 80044F08 AC4A008C */   sw        $t2, 0x8c($v0)
