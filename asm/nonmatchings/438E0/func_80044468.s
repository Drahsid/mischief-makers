glabel func_80044468
/* 45068 80044468 3C0E8018 */  lui        $t6, %hi(D_801782C0)
/* 4506C 8004446C 3C19800D */  lui        $t9, %hi(D_800D37A4)
/* 45070 80044470 973937A4 */  lhu        $t9, %lo(D_800D37A4)($t9)
/* 45074 80044474 95CE82C0 */  lhu        $t6, %lo(D_801782C0)($t6)
/* 45078 80044478 3C09800D */  lui        $t1, 0x800d
/* 4507C 8004447C 00194040 */  sll        $t0, $t9, 1
/* 45080 80044480 000E78C0 */  sll        $t7, $t6, 3
/* 45084 80044484 01284821 */  addu       $t1, $t1, $t0
/* 45088 80044488 3C188010 */  lui        $t8, %hi(D_801069E0)
/* 4508C 8004448C 01EE7821 */  addu       $t7, $t7, $t6
/* 45090 80044490 95293748 */  lhu        $t1, 0x3748($t1)
/* 45094 80044494 000F7900 */  sll        $t7, $t7, 4
/* 45098 80044498 271869E0 */  addiu      $t8, $t8, %lo(D_801069E0)
/* 4509C 8004449C 01F81021 */  addu       $v0, $t7, $t8
/* 450A0 800444A0 3C038018 */  lui        $v1, %hi(D_801782C2)
/* 450A4 800444A4 A4490080 */  sh         $t1, 0x80($v0)
/* 450A8 800444A8 946382C2 */  lhu        $v1, %lo(D_801782C2)($v1)
/* 450AC 800444AC 3C0B800D */  lui        $t3, %hi(D_800D1968)
/* 450B0 800444B0 00035080 */  sll        $t2, $v1, 2
/* 450B4 800444B4 016A5821 */  addu       $t3, $t3, $t2
/* 450B8 800444B8 8D6B1968 */  lw         $t3, %lo(D_800D1968)($t3)
/* 450BC 800444BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 450C0 800444C0 24010001 */  addiu      $at, $zero, 1
/* 450C4 800444C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 450C8 800444C8 14610019 */  bne        $v1, $at, .L80044530
/* 450CC 800444CC AC4B008C */   sw        $t3, 0x8c($v0)
/* 450D0 800444D0 84440084 */  lh         $a0, 0x84($v0)
/* 450D4 800444D4 84450088 */  lh         $a1, 0x88($v0)
/* 450D8 800444D8 0C004AAD */  jal        func_80012AB4
/* 450DC 800444DC 00000000 */   nop
/* 450E0 800444E0 304C00C0 */  andi       $t4, $v0, 0xc0
/* 450E4 800444E4 15800012 */  bnez       $t4, .L80044530
/* 450E8 800444E8 3C038018 */   lui       $v1, %hi(D_801782BC)
/* 450EC 800444EC 8C6382BC */  lw         $v1, %lo(D_801782BC)($v1)
/* 450F0 800444F0 3C0F8018 */  lui        $t7, %hi(D_801782C0)
/* 450F4 800444F4 946D0000 */  lhu        $t5, ($v1)
/* 450F8 800444F8 3C198010 */  lui        $t9, %hi(D_801069E0)
/* 450FC 800444FC 35AE8000 */  ori        $t6, $t5, 0x8000
/* 45100 80044500 A46E0000 */  sh         $t6, ($v1)
/* 45104 80044504 95EF82C0 */  lhu        $t7, %lo(D_801782C0)($t7)
/* 45108 80044508 273969E0 */  addiu      $t9, $t9, %lo(D_801069E0)
/* 4510C 8004450C 000FC0C0 */  sll        $t8, $t7, 3
/* 45110 80044510 030FC021 */  addu       $t8, $t8, $t7
/* 45114 80044514 0018C100 */  sll        $t8, $t8, 4
/* 45118 80044518 03191021 */  addu       $v0, $t8, $t9
/* 4511C 8004451C 84450084 */  lh         $a1, 0x84($v0)
/* 45120 80044520 84460088 */  lh         $a2, 0x88($v0)
/* 45124 80044524 8C47008C */  lw         $a3, 0x8c($v0)
/* 45128 80044528 0C01107D */  jal        func_800441F4
/* 4512C 8004452C 24040052 */   addiu     $a0, $zero, 0x52
.L80044530:
/* 45130 80044530 8FBF0014 */  lw         $ra, 0x14($sp)
/* 45134 80044534 27BD0018 */  addiu      $sp, $sp, 0x18
/* 45138 80044538 03E00008 */  jr         $ra
/* 4513C 8004453C 00000000 */   nop