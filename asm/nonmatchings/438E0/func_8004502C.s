glabel func_8004502C
/* 45C2C 8004502C 3C0E8018 */  lui        $t6, %hi(D_801782C0)
/* 45C30 80045030 95CE82C0 */  lhu        $t6, %lo(D_801782C0)($t6)
/* 45C34 80045034 3C188010 */  lui        $t8, %hi(D_801069E0)
/* 45C38 80045038 000E78C0 */  sll        $t7, $t6, 3
/* 45C3C 8004503C 01EE7821 */  addu       $t7, $t7, $t6
/* 45C40 80045040 000F7900 */  sll        $t7, $t7, 4
/* 45C44 80045044 271869E0 */  addiu      $t8, $t8, %lo(D_801069E0)
/* 45C48 80045048 01F81021 */  addu       $v0, $t7, $t8
/* 45C4C 8004504C 24190038 */  addiu      $t9, $zero, 0x38
/* 45C50 80045050 A4590080 */  sh         $t9, 0x80($v0)
/* 45C54 80045054 3C088018 */  lui        $t0, %hi(D_801782C2)
/* 45C58 80045058 950882C2 */  lhu        $t0, %lo(D_801782C2)($t0)
/* 45C5C 8004505C 3C0A800D */  lui        $t2, %hi(D_800D19B8)
/* 45C60 80045060 00084880 */  sll        $t1, $t0, 2
/* 45C64 80045064 01495021 */  addu       $t2, $t2, $t1
/* 45C68 80045068 8D4A19B8 */  lw         $t2, %lo(D_800D19B8)($t2)
/* 45C6C 8004506C 03E00008 */  jr         $ra
/* 45C70 80045070 AC4A008C */   sw        $t2, 0x8c($v0)