glabel func_80044360
/* 44F60 80044360 3C0E8018 */  lui        $t6, %hi(D_801782C0)
/* 44F64 80044364 95CE82C0 */  lhu        $t6, %lo(D_801782C0)($t6)
/* 44F68 80044368 3C188010 */  lui        $t8, %hi(D_801069E0)
/* 44F6C 8004436C 000E78C0 */  sll        $t7, $t6, 3
/* 44F70 80044370 01EE7821 */  addu       $t7, $t7, $t6
/* 44F74 80044374 000F7900 */  sll        $t7, $t7, 4
/* 44F78 80044378 271869E0 */  addiu      $t8, $t8, %lo(D_801069E0)
/* 44F7C 8004437C 01F81021 */  addu       $v0, $t7, $t8
/* 44F80 80044380 2419000A */  addiu      $t9, $zero, 0xa
/* 44F84 80044384 A4590080 */  sh         $t9, 0x80($v0)
/* 44F88 80044388 03E00008 */  jr         $ra
/* 44F8C 8004438C AC40008C */   sw        $zero, 0x8c($v0)
