glabel func_80031DDC
/* 329DC 80031DDC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 329E0 80031DE0 000E7880 */  sll        $t7, $t6, 2
/* 329E4 80031DE4 01EE7823 */  subu       $t7, $t7, $t6
/* 329E8 80031DE8 000F7880 */  sll        $t7, $t7, 2
/* 329EC 80031DEC 01EE7821 */  addu       $t7, $t7, $t6
/* 329F0 80031DF0 000F7880 */  sll        $t7, $t7, 2
/* 329F4 80031DF4 01EE7823 */  subu       $t7, $t7, $t6
/* 329F8 80031DF8 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 329FC 80031DFC 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 32A00 80031E00 000F78C0 */  sll        $t7, $t7, 3
/* 32A04 80031E04 01F81021 */  addu       $v0, $t7, $t8
/* 32A08 80031E08 C4400148 */  lwc1       $f0, 0x148($v0)
/* 32A0C 80031E0C 44802000 */  mtc1       $zero, $f4
/* 32A10 80031E10 3C013F80 */  lui        $at, 0x3f80
/* 32A14 80031E14 46002032 */  c.eq.s     $f4, $f0
/* 32A18 80031E18 44813000 */  mtc1       $at, $f6
/* 32A1C 80031E1C 45000003 */  bc1f       .L80031E2C
/* 32A20 80031E20 AFA40000 */   sw        $a0, ($sp)
/* 32A24 80031E24 C4400148 */  lwc1       $f0, 0x148($v0)
/* 32A28 80031E28 AC400080 */  sw         $zero, 0x80($v0)
.L80031E2C:
/* 32A2C 80031E2C 46060201 */  sub.s      $f8, $f0, $f6
/* 32A30 80031E30 03E00008 */  jr         $ra
/* 32A34 80031E34 E4480148 */   swc1      $f8, 0x148($v0)
