glabel func_80044390
/* 44F90 80044390 3C0E8018 */  lui        $t6, %hi(D_801782C0)
/* 44F94 80044394 3C19800D */  lui        $t9, %hi(D_800D37A4)
/* 44F98 80044398 973937A4 */  lhu        $t9, %lo(D_800D37A4)($t9)
/* 44F9C 8004439C 95CE82C0 */  lhu        $t6, %lo(D_801782C0)($t6)
/* 44FA0 800443A0 3C09800D */  lui        $t1, 0x800d
/* 44FA4 800443A4 00194040 */  sll        $t0, $t9, 1
/* 44FA8 800443A8 000E78C0 */  sll        $t7, $t6, 3
/* 44FAC 800443AC 01284821 */  addu       $t1, $t1, $t0
/* 44FB0 800443B0 3C188010 */  lui        $t8, %hi(D_801069E0)
/* 44FB4 800443B4 01EE7821 */  addu       $t7, $t7, $t6
/* 44FB8 800443B8 95293740 */  lhu        $t1, 0x3740($t1)
/* 44FBC 800443BC 000F7900 */  sll        $t7, $t7, 4
/* 44FC0 800443C0 271869E0 */  addiu      $t8, $t8, %lo(D_801069E0)
/* 44FC4 800443C4 01F81021 */  addu       $v0, $t7, $t8
/* 44FC8 800443C8 3C038018 */  lui        $v1, %hi(D_801782C2)
/* 44FCC 800443CC A4490080 */  sh         $t1, 0x80($v0)
/* 44FD0 800443D0 946382C2 */  lhu        $v1, %lo(D_801782C2)($v1)
/* 44FD4 800443D4 3C0B800D */  lui        $t3, %hi(D_800D1968)
/* 44FD8 800443D8 00035080 */  sll        $t2, $v1, 2
/* 44FDC 800443DC 016A5821 */  addu       $t3, $t3, $t2
/* 44FE0 800443E0 8D6B1968 */  lw         $t3, %lo(D_800D1968)($t3)
/* 44FE4 800443E4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 44FE8 800443E8 24010001 */  addiu      $at, $zero, 1
/* 44FEC 800443EC AFBF0014 */  sw         $ra, 0x14($sp)
/* 44FF0 800443F0 14610019 */  bne        $v1, $at, .L80044458
/* 44FF4 800443F4 AC4B008C */   sw        $t3, 0x8c($v0)
/* 44FF8 800443F8 84440084 */  lh         $a0, 0x84($v0)
/* 44FFC 800443FC 84450088 */  lh         $a1, 0x88($v0)
/* 45000 80044400 0C004AAD */  jal        func_80012AB4
/* 45004 80044404 00000000 */   nop
/* 45008 80044408 304C00C0 */  andi       $t4, $v0, 0xc0
/* 4500C 8004440C 15800012 */  bnez       $t4, .L80044458
/* 45010 80044410 3C038018 */   lui       $v1, %hi(D_801782BC)
/* 45014 80044414 8C6382BC */  lw         $v1, %lo(D_801782BC)($v1)
/* 45018 80044418 3C0F8018 */  lui        $t7, %hi(D_801782C0)
/* 4501C 8004441C 946D0000 */  lhu        $t5, ($v1)
/* 45020 80044420 3C198010 */  lui        $t9, %hi(D_801069E0)
/* 45024 80044424 35AE8000 */  ori        $t6, $t5, 0x8000
/* 45028 80044428 A46E0000 */  sh         $t6, ($v1)
/* 4502C 8004442C 95EF82C0 */  lhu        $t7, %lo(D_801782C0)($t7)
/* 45030 80044430 273969E0 */  addiu      $t9, $t9, %lo(D_801069E0)
/* 45034 80044434 000FC0C0 */  sll        $t8, $t7, 3
/* 45038 80044438 030FC021 */  addu       $t8, $t8, $t7
/* 4503C 8004443C 0018C100 */  sll        $t8, $t8, 4
/* 45040 80044440 03191021 */  addu       $v0, $t8, $t9
/* 45044 80044444 84450084 */  lh         $a1, 0x84($v0)
/* 45048 80044448 84460088 */  lh         $a2, 0x88($v0)
/* 4504C 8004444C 8C47008C */  lw         $a3, 0x8c($v0)
/* 45050 80044450 0C01107D */  jal        func_800441F4
/* 45054 80044454 24040046 */   addiu     $a0, $zero, 0x46
.L80044458:
/* 45058 80044458 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4505C 8004445C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 45060 80044460 03E00008 */  jr         $ra
/* 45064 80044464 00000000 */   nop
