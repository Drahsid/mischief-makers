glabel func_8007EF58
/* 7FB58 8007EF58 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7FB5C 8007EF5C 30AF0100 */  andi       $t7, $a1, 0x100
/* 7FB60 8007EF60 AFBF001C */  sw         $ra, 0x1c($sp)
/* 7FB64 8007EF64 AFA50024 */  sw         $a1, 0x24($sp)
/* 7FB68 8007EF68 AFA60028 */  sw         $a2, 0x28($sp)
/* 7FB6C 8007EF6C 11E00005 */  beqz       $t7, .L8007EF84
/* 7FB70 8007EF70 AFA7002C */   sw        $a3, 0x2c($sp)
/* 7FB74 8007EF74 3C014180 */  lui        $at, 0x4180
/* 7FB78 8007EF78 44816000 */  mtc1       $at, $f12
/* 7FB7C 8007EF7C 10000005 */  b          .L8007EF94
/* 7FB80 8007EF80 94820000 */   lhu       $v0, ($a0)
.L8007EF84:
/* 7FB84 8007EF84 3C014100 */  lui        $at, 0x4100
/* 7FB88 8007EF88 44816000 */  mtc1       $at, $f12
/* 7FB8C 8007EF8C 00000000 */  nop
/* 7FB90 8007EF90 94820000 */  lhu        $v0, ($a0)
.L8007EF94:
/* 7FB94 8007EF94 34038FFF */  ori        $v1, $zero, 0x8fff
/* 7FB98 8007EF98 44800000 */  mtc1       $zero, $f0
/* 7FB9C 8007EF9C 10620013 */  beq        $v1, $v0, .L8007EFEC
/* 7FBA0 8007EFA0 3C014004 */   lui       $at, 0x4004
/* 7FBA4 8007EFA4 44811800 */  mtc1       $at, $f3
/* 7FBA8 8007EFA8 44801000 */  mtc1       $zero, $f2
/* 7FBAC 8007EFAC 00000000 */  nop
/* 7FBB0 8007EFB0 30588000 */  andi       $t8, $v0, 0x8000
.L8007EFB4:
/* 7FBB4 8007EFB4 13000008 */  beqz       $t8, .L8007EFD8
/* 7FBB8 8007EFB8 00000000 */   nop
/* 7FBBC 8007EFBC 460061A1 */  cvt.d.s    $f6, $f12
/* 7FBC0 8007EFC0 00000000 */  nop
/* 7FBC4 8007EFC4 46223203 */  div.d      $f8, $f6, $f2
/* 7FBC8 8007EFC8 46000121 */  cvt.d.s    $f4, $f0
/* 7FBCC 8007EFCC 46282280 */  add.d      $f10, $f4, $f8
/* 7FBD0 8007EFD0 10000002 */  b          .L8007EFDC
/* 7FBD4 8007EFD4 46205020 */   cvt.s.d   $f0, $f10
.L8007EFD8:
/* 7FBD8 8007EFD8 460C0000 */  add.s      $f0, $f0, $f12
.L8007EFDC:
/* 7FBDC 8007EFDC 94820002 */  lhu        $v0, 2($a0)
/* 7FBE0 8007EFE0 24840002 */  addiu      $a0, $a0, 2
/* 7FBE4 8007EFE4 1462FFF3 */  bne        $v1, $v0, .L8007EFB4
/* 7FBE8 8007EFE8 30588000 */   andi      $t8, $v0, 0x8000
.L8007EFEC:
/* 7FBEC 8007EFEC 3C01800F */  lui        $at, %hi(D_800ECFF0)
/* 7FBF0 8007EFF0 C433CFF0 */  lwc1       $f19, %lo(D_800ECFF0)($at)
/* 7FBF4 8007EFF4 C432CFF4 */  lwc1       $f18, -0x300c($at)
/* 7FBF8 8007EFF8 46006421 */  cvt.d.s    $f16, $f12
/* 7FBFC 8007EFFC 46328182 */  mul.d      $f6, $f16, $f18
/* 7FC00 8007F000 46000121 */  cvt.d.s    $f4, $f0
/* 7FC04 8007F004 C7A20038 */  lwc1       $f2, 0x38($sp)
/* 7FC08 8007F008 C7B2003C */  lwc1       $f18, 0x3c($sp)
/* 7FC0C 8007F00C 8FA40024 */  lw         $a0, 0x24($sp)
/* 7FC10 8007F010 46262203 */  div.d      $f8, $f4, $f6
/* 7FC14 8007F014 460012A1 */  cvt.d.s    $f10, $f2
/* 7FC18 8007F018 8FA50028 */  lw         $a1, 0x28($sp)
/* 7FC1C 8007F01C 8FA6002C */  lw         $a2, 0x2c($sp)
/* 7FC20 8007F020 8FA70030 */  lw         $a3, 0x30($sp)
/* 7FC24 8007F024 E7B20014 */  swc1       $f18, 0x14($sp)
/* 7FC28 8007F028 462A4402 */  mul.d      $f16, $f8, $f10
/* 7FC2C 8007F02C 462080A0 */  cvt.s.d    $f2, $f16
/* 7FC30 8007F030 0C01FB9C */  jal        func_8007EE70
/* 7FC34 8007F034 E7A20010 */   swc1      $f2, 0x10($sp)
/* 7FC38 8007F038 1040000B */  beqz       $v0, .L8007F068
/* 7FC3C 8007F03C 00024080 */   sll       $t0, $v0, 2
/* 7FC40 8007F040 01024023 */  subu       $t0, $t0, $v0
/* 7FC44 8007F044 00084080 */  sll        $t0, $t0, 2
/* 7FC48 8007F048 01024021 */  addu       $t0, $t0, $v0
/* 7FC4C 8007F04C 00084080 */  sll        $t0, $t0, 2
/* 7FC50 8007F050 01024023 */  subu       $t0, $t0, $v0
/* 7FC54 8007F054 97B90036 */  lhu        $t9, 0x36($sp)
/* 7FC58 8007F058 000840C0 */  sll        $t0, $t0, 3
/* 7FC5C 8007F05C 3C01800F */  lui        $at, %hi(D_800EF5AF)
/* 7FC60 8007F060 00280821 */  addu       $at, $at, $t0
/* 7FC64 8007F064 A039F5AF */  sb         $t9, %lo(D_800EF5AF)($at)
.L8007F068:
/* 7FC68 8007F068 8FBF001C */  lw         $ra, 0x1c($sp)
/* 7FC6C 8007F06C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7FC70 8007F070 03E00008 */  jr         $ra
/* 7FC74 8007F074 00000000 */   nop
