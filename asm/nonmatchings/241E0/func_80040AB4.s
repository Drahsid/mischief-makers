glabel func_80040AB4
/* 416B4 80040AB4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 416B8 80040AB8 000E7880 */  sll        $t7, $t6, 2
/* 416BC 80040ABC 01EE7823 */  subu       $t7, $t7, $t6
/* 416C0 80040AC0 000F7880 */  sll        $t7, $t7, 2
/* 416C4 80040AC4 01EE7821 */  addu       $t7, $t7, $t6
/* 416C8 80040AC8 000F7880 */  sll        $t7, $t7, 2
/* 416CC 80040ACC 01EE7823 */  subu       $t7, $t7, $t6
/* 416D0 80040AD0 3C18800F */  lui        $t8, %hi(gActors)
/* 416D4 80040AD4 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 416D8 80040AD8 000F78C0 */  sll        $t7, $t7, 3
/* 416DC 80040ADC 01F81021 */  addu       $v0, $t7, $t8
/* 416E0 80040AE0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 416E4 80040AE4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 416E8 80040AE8 AFA40020 */  sw         $a0, 0x20($sp)
/* 416EC 80040AEC 24190205 */  addiu      $t9, $zero, 0x205
/* 416F0 80040AF0 24081003 */  addiu      $t0, $zero, 0x1003
/* 416F4 80040AF4 240901A8 */  addiu      $t1, $zero, 0x1a8
/* 416F8 80040AF8 240A0040 */  addiu      $t2, $zero, 0x40
/* 416FC 80040AFC 01C02025 */  or         $a0, $t6, $zero
/* 41700 80040B00 A4590094 */  sh         $t9, 0x94($v0)
/* 41704 80040B04 AC480080 */  sw         $t0, 0x80($v0)
/* 41708 80040B08 A4490084 */  sh         $t1, 0x84($v0)
/* 4170C 80040B0C A04A00DF */  sb         $t2, 0xdf($v0)
/* 41710 80040B10 AFA2001C */  sw         $v0, 0x1c($sp)
/* 41714 80040B14 0C00AB0C */  jal        func_8002AC30
/* 41718 80040B18 2405000A */   addiu     $a1, $zero, 0xa
/* 4171C 80040B1C 3C013F80 */  lui        $at, 0x3f80
/* 41720 80040B20 8FA2001C */  lw         $v0, 0x1c($sp)
/* 41724 80040B24 44812000 */  mtc1       $at, $f4
/* 41728 80040B28 3C01437F */  lui        $at, 0x437f
/* 4172C 80040B2C 44813000 */  mtc1       $at, $f6
/* 41730 80040B30 8FBF0014 */  lw         $ra, 0x14($sp)
/* 41734 80040B34 240BFFFF */  addiu      $t3, $zero, -1
/* 41738 80040B38 27BD0020 */  addiu      $sp, $sp, 0x20
/* 4173C 80040B3C A44B0090 */  sh         $t3, 0x90($v0)
/* 41740 80040B40 E444011C */  swc1       $f4, 0x11c($v0)
/* 41744 80040B44 03E00008 */  jr         $ra
/* 41748 80040B48 E4460120 */   swc1      $f6, 0x120($v0)