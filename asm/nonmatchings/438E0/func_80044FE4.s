glabel func_80044FE4
/* 45BE4 80044FE4 3C0E8018 */  lui        $t6, %hi(D_801782C0)
/* 45BE8 80044FE8 95CE82C0 */  lhu        $t6, %lo(D_801782C0)($t6)
/* 45BEC 80044FEC 3C188010 */  lui        $t8, %hi(D_801069E0)
/* 45BF0 80044FF0 000E78C0 */  sll        $t7, $t6, 3
/* 45BF4 80044FF4 01EE7821 */  addu       $t7, $t7, $t6
/* 45BF8 80044FF8 000F7900 */  sll        $t7, $t7, 4
/* 45BFC 80044FFC 271869E0 */  addiu      $t8, $t8, %lo(D_801069E0)
/* 45C00 80045000 01F81021 */  addu       $v0, $t7, $t8
/* 45C04 80045004 24190037 */  addiu      $t9, $zero, 0x37
/* 45C08 80045008 A4590080 */  sh         $t9, 0x80($v0)
/* 45C0C 8004500C 3C088018 */  lui        $t0, %hi(D_801782C2)
/* 45C10 80045010 950882C2 */  lhu        $t0, %lo(D_801782C2)($t0)
/* 45C14 80045014 3C0A800D */  lui        $t2, %hi(D_800D19B8)
/* 45C18 80045018 00084880 */  sll        $t1, $t0, 2
/* 45C1C 8004501C 01495021 */  addu       $t2, $t2, $t1
/* 45C20 80045020 8D4A19B8 */  lw         $t2, %lo(D_800D19B8)($t2)
/* 45C24 80045024 03E00008 */  jr         $ra
/* 45C28 80045028 AC4A008C */   sw        $t2, 0x8c($v0)
