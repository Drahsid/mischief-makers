glabel func_80044E34
/* 45A34 80044E34 3C0E8018 */  lui        $t6, %hi(D_801782C0)
/* 45A38 80044E38 95CE82C0 */  lhu        $t6, %lo(D_801782C0)($t6)
/* 45A3C 80044E3C 3C188010 */  lui        $t8, %hi(D_801069E0)
/* 45A40 80044E40 000E78C0 */  sll        $t7, $t6, 3
/* 45A44 80044E44 01EE7821 */  addu       $t7, $t7, $t6
/* 45A48 80044E48 000F7900 */  sll        $t7, $t7, 4
/* 45A4C 80044E4C 271869E0 */  addiu      $t8, $t8, %lo(D_801069E0)
/* 45A50 80044E50 01F81021 */  addu       $v0, $t7, $t8
/* 45A54 80044E54 24190031 */  addiu      $t9, $zero, 0x31
/* 45A58 80044E58 A4590080 */  sh         $t9, 0x80($v0)
/* 45A5C 80044E5C 3C088018 */  lui        $t0, %hi(D_801782C2)
/* 45A60 80044E60 950882C2 */  lhu        $t0, %lo(D_801782C2)($t0)
/* 45A64 80044E64 3C0A800D */  lui        $t2, %hi(D_800D19B8)
/* 45A68 80044E68 00084880 */  sll        $t1, $t0, 2
/* 45A6C 80044E6C 01495021 */  addu       $t2, $t2, $t1
/* 45A70 80044E70 8D4A19B8 */  lw         $t2, %lo(D_800D19B8)($t2)
/* 45A74 80044E74 03E00008 */  jr         $ra
/* 45A78 80044E78 AC4A008C */   sw        $t2, 0x8c($v0)
