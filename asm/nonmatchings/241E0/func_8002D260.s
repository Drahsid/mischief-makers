glabel func_8002D260
/* 2DE60 8002D260 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2DE64 8002D264 000E7880 */  sll        $t7, $t6, 2
/* 2DE68 8002D268 01EE7823 */  subu       $t7, $t7, $t6
/* 2DE6C 8002D26C 000F7880 */  sll        $t7, $t7, 2
/* 2DE70 8002D270 01EE7821 */  addu       $t7, $t7, $t6
/* 2DE74 8002D274 000F7880 */  sll        $t7, $t7, 2
/* 2DE78 8002D278 01EE7823 */  subu       $t7, $t7, $t6
/* 2DE7C 8002D27C 3C18800F */  lui        $t8, %hi(gActors)
/* 2DE80 8002D280 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 2DE84 8002D284 000F78C0 */  sll        $t7, $t7, 3
/* 2DE88 8002D288 01F81021 */  addu       $v0, $t7, $t8
/* 2DE8C 8002D28C C4400110 */  lwc1       $f0, 0x110($v0)
/* 2DE90 8002D290 44802000 */  mtc1       $zero, $f4
/* 2DE94 8002D294 845900A6 */  lh         $t9, 0xa6($v0)
/* 2DE98 8002D298 844900A8 */  lh         $t1, 0xa8($v0)
/* 2DE9C 8002D29C 844B00A2 */  lh         $t3, 0xa2($v0)
/* 2DEA0 8002D2A0 844D00A4 */  lh         $t5, 0xa4($v0)
/* 2DEA4 8002D2A4 46002032 */  c.eq.s     $f4, $f0
/* 2DEA8 8002D2A8 27280002 */  addiu      $t0, $t9, 2
/* 2DEAC 8002D2AC 252AFFFE */  addiu      $t2, $t1, -2
/* 2DEB0 8002D2B0 256CFFFE */  addiu      $t4, $t3, -2
/* 2DEB4 8002D2B4 25AE0002 */  addiu      $t6, $t5, 2
/* 2DEB8 8002D2B8 AFA40000 */  sw         $a0, ($sp)
/* 2DEBC 8002D2BC A44800A6 */  sh         $t0, 0xa6($v0)
/* 2DEC0 8002D2C0 A44A00A8 */  sh         $t2, 0xa8($v0)
/* 2DEC4 8002D2C4 A44C00A2 */  sh         $t4, 0xa2($v0)
/* 2DEC8 8002D2C8 45010007 */  bc1t       .L8002D2E8
/* 2DECC 8002D2CC A44E00A4 */   sh        $t6, 0xa4($v0)
/* 2DED0 8002D2D0 3C013F80 */  lui        $at, 0x3f80
/* 2DED4 8002D2D4 44813000 */  mtc1       $at, $f6
/* 2DED8 8002D2D8 00000000 */  nop
/* 2DEDC 8002D2DC 46060201 */  sub.s      $f8, $f0, $f6
/* 2DEE0 8002D2E0 03E00008 */  jr         $ra
/* 2DEE4 8002D2E4 E4480110 */   swc1      $f8, 0x110($v0)
.L8002D2E8:
/* 2DEE8 8002D2E8 AC400080 */  sw         $zero, 0x80($v0)
/* 2DEEC 8002D2EC 03E00008 */  jr         $ra
/* 2DEF0 8002D2F0 00000000 */   nop
