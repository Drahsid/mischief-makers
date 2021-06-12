glabel func_80044F9C
/* 45B9C 80044F9C 3C0E8018 */  lui        $t6, %hi(D_801782C0)
/* 45BA0 80044FA0 95CE82C0 */  lhu        $t6, %lo(D_801782C0)($t6)
/* 45BA4 80044FA4 3C188010 */  lui        $t8, %hi(D_801069E0)
/* 45BA8 80044FA8 000E78C0 */  sll        $t7, $t6, 3
/* 45BAC 80044FAC 01EE7821 */  addu       $t7, $t7, $t6
/* 45BB0 80044FB0 000F7900 */  sll        $t7, $t7, 4
/* 45BB4 80044FB4 271869E0 */  addiu      $t8, $t8, %lo(D_801069E0)
/* 45BB8 80044FB8 01F81021 */  addu       $v0, $t7, $t8
/* 45BBC 80044FBC 24190036 */  addiu      $t9, $zero, 0x36
/* 45BC0 80044FC0 A4590080 */  sh         $t9, 0x80($v0)
/* 45BC4 80044FC4 3C088018 */  lui        $t0, %hi(D_801782C2)
/* 45BC8 80044FC8 950882C2 */  lhu        $t0, %lo(D_801782C2)($t0)
/* 45BCC 80044FCC 3C0A800D */  lui        $t2, %hi(D_800D19B8)
/* 45BD0 80044FD0 00084880 */  sll        $t1, $t0, 2
/* 45BD4 80044FD4 01495021 */  addu       $t2, $t2, $t1
/* 45BD8 80044FD8 8D4A19B8 */  lw         $t2, %lo(D_800D19B8)($t2)
/* 45BDC 80044FDC 03E00008 */  jr         $ra
/* 45BE0 80044FE0 AC4A008C */   sw        $t2, 0x8c($v0)
