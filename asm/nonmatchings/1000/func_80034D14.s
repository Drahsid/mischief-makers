glabel func_80034D14
/* 35914 80034D14 308EFFFF */  andi       $t6, $a0, 0xffff
/* 35918 80034D18 000E7880 */  sll        $t7, $t6, 2
/* 3591C 80034D1C 01EE7823 */  subu       $t7, $t7, $t6
/* 35920 80034D20 000F7880 */  sll        $t7, $t7, 2
/* 35924 80034D24 01EE7821 */  addu       $t7, $t7, $t6
/* 35928 80034D28 000F7880 */  sll        $t7, $t7, 2
/* 3592C 80034D2C 01EE7823 */  subu       $t7, $t7, $t6
/* 35930 80034D30 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 35934 80034D34 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 35938 80034D38 000F78C0 */  sll        $t7, $t7, 3
/* 3593C 80034D3C 01F81021 */  addu       $v0, $t7, $t8
/* 35940 80034D40 8C590168 */  lw         $t9, 0x168($v0)
/* 35944 80034D44 8C48016C */  lw         $t0, 0x16c($v0)
/* 35948 80034D48 44992000 */  mtc1       $t9, $f4
/* 3594C 80034D4C 44885000 */  mtc1       $t0, $f10
/* 35950 80034D50 3C01447A */  lui        $at, 0x447a
/* 35954 80034D54 468021A0 */  cvt.s.w    $f6, $f4
/* 35958 80034D58 44810000 */  mtc1       $at, $f0
/* 3595C 80034D5C AFA40000 */  sw         $a0, ($sp)
/* 35960 80034D60 46805420 */  cvt.s.w    $f16, $f10
/* 35964 80034D64 00000000 */  nop
/* 35968 80034D68 46003203 */  div.s      $f8, $f6, $f0
/* 3596C 80034D6C 00000000 */  nop
/* 35970 80034D70 46008483 */  div.s      $f18, $f16, $f0
/* 35974 80034D74 E44800B4 */  swc1       $f8, 0xb4($v0)
/* 35978 80034D78 03E00008 */  jr         $ra
/* 3597C 80034D7C E45200B8 */   swc1      $f18, 0xb8($v0)
