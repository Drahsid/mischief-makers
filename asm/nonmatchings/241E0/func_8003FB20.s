glabel func_8003FB20
/* 40720 8003FB20 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 40724 8003FB24 AFB70044 */  sw         $s7, 0x44($sp)
/* 40728 8003FB28 0007BC00 */  sll        $s7, $a3, 0x10
/* 4072C 8003FB2C AFBE0048 */  sw         $fp, 0x48($sp)
/* 40730 8003FB30 87BE0062 */  lh         $fp, 0x62($sp)
/* 40734 8003FB34 E7B60024 */  swc1       $f22, 0x24($sp)
/* 40738 8003FB38 AFA50054 */  sw         $a1, 0x54($sp)
/* 4073C 8003FB3C AFA7005C */  sw         $a3, 0x5c($sp)
/* 40740 8003FB40 00172C03 */  sra        $a1, $s7, 0x10
/* 40744 8003FB44 4486B000 */  mtc1       $a2, $f22
/* 40748 8003FB48 AFBF004C */  sw         $ra, 0x4c($sp)
/* 4074C 8003FB4C AFA40050 */  sw         $a0, 0x50($sp)
/* 40750 8003FB50 87A70066 */  lh         $a3, 0x66($sp)
/* 40754 8003FB54 00A0B825 */  or         $s7, $a1, $zero
/* 40758 8003FB58 AFB60040 */  sw         $s6, 0x40($sp)
/* 4075C 8003FB5C AFB5003C */  sw         $s5, 0x3c($sp)
/* 40760 8003FB60 AFB40038 */  sw         $s4, 0x38($sp)
/* 40764 8003FB64 AFB30034 */  sw         $s3, 0x34($sp)
/* 40768 8003FB68 AFB20030 */  sw         $s2, 0x30($sp)
/* 4076C 8003FB6C AFB1002C */  sw         $s1, 0x2c($sp)
/* 40770 8003FB70 AFB00028 */  sw         $s0, 0x28($sp)
/* 40774 8003FB74 E7B70020 */  swc1       $f23, 0x20($sp)
/* 40778 8003FB78 E7B50018 */  swc1       $f21, 0x18($sp)
/* 4077C 8003FB7C E7B4001C */  swc1       $f20, 0x1c($sp)
/* 40780 8003FB80 240400CE */  addiu      $a0, $zero, 0xce
/* 40784 8003FB84 0C00C4A1 */  jal        func_80031284
/* 40788 8003FB88 03C03025 */   or        $a2, $fp, $zero
/* 4078C 8003FB8C 1040001D */  beqz       $v0, .L8003FC04
/* 40790 8003FB90 3044FFFF */   andi      $a0, $v0, 0xffff
/* 40794 8003FB94 24120198 */  addiu      $s2, $zero, 0x198
/* 40798 8003FB98 00920019 */  multu      $a0, $s2
/* 4079C 8003FB9C 3C11800F */  lui        $s1, %hi(D_800EF510)
/* 407A0 8003FBA0 2631F510 */  addiu      $s1, $s1, %lo(D_800EF510)
/* 407A4 8003FBA4 24180001 */  addiu      $t8, $zero, 1
/* 407A8 8003FBA8 2419FFF0 */  addiu      $t9, $zero, -0x10
/* 407AC 8003FBAC 3C01800F */  lui        $at, 0x800f
/* 407B0 8003FBB0 4600B021 */  cvt.d.s    $f0, $f22
/* 407B4 8003FBB4 2405007F */  addiu      $a1, $zero, 0x7f
/* 407B8 8003FBB8 00007812 */  mflo       $t7
/* 407BC 8003FBBC 022F1021 */  addu       $v0, $s1, $t7
/* 407C0 8003FBC0 A4580094 */  sh         $t8, 0x94($v0)
/* 407C4 8003FBC4 AC590154 */  sw         $t9, 0x154($v0)
/* 407C8 8003FBC8 C424BC8C */  lwc1       $f4, -0x4374($at)
/* 407CC 8003FBCC C425BC88 */  lwc1       $f5, -0x4378($at)
/* 407D0 8003FBD0 3C01800F */  lui        $at, %hi(D_800EBC94)
/* 407D4 8003FBD4 46240182 */  mul.d      $f6, $f0, $f4
/* 407D8 8003FBD8 462030A0 */  cvt.s.d    $f2, $f6
/* 407DC 8003FBDC E44200B4 */  swc1       $f2, 0xb4($v0)
/* 407E0 8003FBE0 E44200B8 */  swc1       $f2, 0xb8($v0)
/* 407E4 8003FBE4 C428BC94 */  lwc1       $f8, %lo(D_800EBC94)($at)
/* 407E8 8003FBE8 C429BC90 */  lwc1       $f9, -0x4370($at)
/* 407EC 8003FBEC 00000000 */  nop
/* 407F0 8003FBF0 46280282 */  mul.d      $f10, $f0, $f8
/* 407F4 8003FBF4 46205320 */  cvt.s.d    $f12, $f10
/* 407F8 8003FBF8 E44C0110 */  swc1       $f12, 0x110($v0)
/* 407FC 8003FBFC 0C00ABAD */  jal        func_8002AEB4
/* 40800 8003FC00 E44C0114 */   swc1      $f12, 0x114($v0)
.L8003FC04:
/* 40804 8003FC04 3C013FD0 */  lui        $at, 0x3fd0
/* 40808 8003FC08 3C11800F */  lui        $s1, %hi(D_800EF510)
/* 4080C 8003FC0C 4481A800 */  mtc1       $at, $f21
/* 40810 8003FC10 4480A000 */  mtc1       $zero, $f20
/* 40814 8003FC14 2631F510 */  addiu      $s1, $s1, %lo(D_800EF510)
/* 40818 8003FC18 24120198 */  addiu      $s2, $zero, 0x198
/* 4081C 8003FC1C 00008025 */  or         $s0, $zero, $zero
/* 40820 8003FC20 24160002 */  addiu      $s6, $zero, 2
/* 40824 8003FC24 3C150080 */  lui        $s5, 0x80
/* 40828 8003FC28 3C140100 */  lui        $s4, 0x100
/* 4082C 8003FC2C 24130009 */  addiu      $s3, $zero, 9
.L8003FC30:
/* 40830 8003FC30 87A70066 */  lh         $a3, 0x66($sp)
/* 40834 8003FC34 240401D6 */  addiu      $a0, $zero, 0x1d6
/* 40838 8003FC38 02E02825 */  or         $a1, $s7, $zero
/* 4083C 8003FC3C 0C00C4A1 */  jal        func_80031284
/* 40840 8003FC40 03C03025 */   or        $a2, $fp, $zero
/* 40844 8003FC44 1040001D */  beqz       $v0, .L8003FCBC
/* 40848 8003FC48 3044FFFF */   andi      $a0, $v0, 0xffff
/* 4084C 8003FC4C 00520019 */  multu      $v0, $s2
/* 40850 8003FC50 4600B021 */  cvt.d.s    $f0, $f22
/* 40854 8003FC54 46340402 */  mul.d      $f16, $f0, $f20
/* 40858 8003FC58 46200100 */  add.d      $f4, $f0, $f0
/* 4085C 8003FC5C 2409FFF0 */  addiu      $t1, $zero, -0x10
/* 40860 8003FC60 3C01800F */  lui        $at, 0x800f
/* 40864 8003FC64 462084A0 */  cvt.s.d    $f18, $f16
/* 40868 8003FC68 462021A0 */  cvt.s.d    $f6, $f4
/* 4086C 8003FC6C 00004012 */  mflo       $t0
/* 40870 8003FC70 02281821 */  addu       $v1, $s1, $t0
/* 40874 8003FC74 A4730094 */  sh         $s3, 0x94($v1)
/* 40878 8003FC78 AC690154 */  sw         $t1, 0x154($v1)
/* 4087C 8003FC7C E47200B4 */  swc1       $f18, 0xb4($v1)
/* 40880 8003FC80 E46600B8 */  swc1       $f6, 0xb8($v1)
/* 40884 8003FC84 C428BC9C */  lwc1       $f8, -0x4364($at)
/* 40888 8003FC88 C429BC98 */  lwc1       $f9, -0x4368($at)
/* 4088C 8003FC8C 00000000 */  nop
/* 40890 8003FC90 46280282 */  mul.d      $f10, $f0, $f8
/* 40894 8003FC94 12000002 */  beqz       $s0, .L8003FCA0
/* 40898 8003FC98 462050A0 */   cvt.s.d   $f2, $f10
/* 4089C 8003FC9C AC740160 */  sw         $s4, 0x160($v1)
.L8003FCA0:
/* 408A0 8003FCA0 00920019 */  multu      $a0, $s2
/* 408A4 8003FCA4 2405007F */  addiu      $a1, $zero, 0x7f
/* 408A8 8003FCA8 00005012 */  mflo       $t2
/* 408AC 8003FCAC 022A1021 */  addu       $v0, $s1, $t2
/* 408B0 8003FCB0 E4420114 */  swc1       $f2, 0x114($v0)
/* 408B4 8003FCB4 0C00ABAD */  jal        func_8002AEB4
/* 408B8 8003FCB8 AC550150 */   sw        $s5, 0x150($v0)
.L8003FCBC:
/* 408BC 8003FCBC 26100001 */  addiu      $s0, $s0, 1
/* 408C0 8003FCC0 320BFFFF */  andi       $t3, $s0, 0xffff
/* 408C4 8003FCC4 16CBFFDA */  bne        $s6, $t3, .L8003FC30
/* 408C8 8003FCC8 01608025 */   or        $s0, $t3, $zero
/* 408CC 8003FCCC 8FBF004C */  lw         $ra, 0x4c($sp)
/* 408D0 8003FCD0 C7B50018 */  lwc1       $f21, 0x18($sp)
/* 408D4 8003FCD4 C7B4001C */  lwc1       $f20, 0x1c($sp)
/* 408D8 8003FCD8 C7B70020 */  lwc1       $f23, 0x20($sp)
/* 408DC 8003FCDC C7B60024 */  lwc1       $f22, 0x24($sp)
/* 408E0 8003FCE0 8FB00028 */  lw         $s0, 0x28($sp)
/* 408E4 8003FCE4 8FB1002C */  lw         $s1, 0x2c($sp)
/* 408E8 8003FCE8 8FB20030 */  lw         $s2, 0x30($sp)
/* 408EC 8003FCEC 8FB30034 */  lw         $s3, 0x34($sp)
/* 408F0 8003FCF0 8FB40038 */  lw         $s4, 0x38($sp)
/* 408F4 8003FCF4 8FB5003C */  lw         $s5, 0x3c($sp)
/* 408F8 8003FCF8 8FB60040 */  lw         $s6, 0x40($sp)
/* 408FC 8003FCFC 8FB70044 */  lw         $s7, 0x44($sp)
/* 40900 8003FD00 8FBE0048 */  lw         $fp, 0x48($sp)
/* 40904 8003FD04 03E00008 */  jr         $ra
/* 40908 8003FD08 27BD0050 */   addiu     $sp, $sp, 0x50
