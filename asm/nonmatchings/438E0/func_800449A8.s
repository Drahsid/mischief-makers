glabel func_800449A8
/* 455A8 800449A8 3C0E8018 */  lui        $t6, %hi(D_801782C0)
/* 455AC 800449AC 95CE82C0 */  lhu        $t6, %lo(D_801782C0)($t6)
/* 455B0 800449B0 3C188010 */  lui        $t8, %hi(D_801069E0)
/* 455B4 800449B4 000E78C0 */  sll        $t7, $t6, 3
/* 455B8 800449B8 01EE7821 */  addu       $t7, $t7, $t6
/* 455BC 800449BC 000F7900 */  sll        $t7, $t7, 4
/* 455C0 800449C0 271869E0 */  addiu      $t8, $t8, %lo(D_801069E0)
/* 455C4 800449C4 01F81021 */  addu       $v0, $t7, $t8
/* 455C8 800449C8 24190020 */  addiu      $t9, $zero, 0x20
/* 455CC 800449CC A4590080 */  sh         $t9, 0x80($v0)
/* 455D0 800449D0 3C088018 */  lui        $t0, %hi(D_801782C2)
/* 455D4 800449D4 950882C2 */  lhu        $t0, %lo(D_801782C2)($t0)
/* 455D8 800449D8 3C0B800D */  lui        $t3, %hi(D_800D19A8)
/* 455DC 800449DC 31090003 */  andi       $t1, $t0, 3
/* 455E0 800449E0 00095080 */  sll        $t2, $t1, 2
/* 455E4 800449E4 016A5821 */  addu       $t3, $t3, $t2
/* 455E8 800449E8 8D6B19A8 */  lw         $t3, %lo(D_800D19A8)($t3)
/* 455EC 800449EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 455F0 800449F0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 455F4 800449F4 84440084 */  lh         $a0, 0x84($v0)
/* 455F8 800449F8 84450088 */  lh         $a1, 0x88($v0)
/* 455FC 800449FC 0C004AAD */  jal        func_80012AB4
/* 45600 80044A00 AC4B008C */   sw        $t3, 0x8c($v0)
/* 45604 80044A04 304C00C0 */  andi       $t4, $v0, 0xc0
/* 45608 80044A08 15800007 */  bnez       $t4, .L80044A28
/* 4560C 80044A0C 3C028018 */   lui       $v0, %hi(D_801782BC)
/* 45610 80044A10 8C4282BC */  lw         $v0, %lo(D_801782BC)($v0)
/* 45614 80044A14 00000000 */  nop
/* 45618 80044A18 944D0000 */  lhu        $t5, ($v0)
/* 4561C 80044A1C 00000000 */  nop
/* 45620 80044A20 35AE8000 */  ori        $t6, $t5, 0x8000
/* 45624 80044A24 A44E0000 */  sh         $t6, ($v0)
.L80044A28:
/* 45628 80044A28 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4562C 80044A2C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 45630 80044A30 03E00008 */  jr         $ra
/* 45634 80044A34 00000000 */   nop