glabel func_8005EE24
/* 5FA24 8005EE24 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5FA28 8005EE28 000E7880 */  sll        $t7, $t6, 2
/* 5FA2C 8005EE2C 01EE7823 */  subu       $t7, $t7, $t6
/* 5FA30 8005EE30 000F7880 */  sll        $t7, $t7, 2
/* 5FA34 8005EE34 3C198018 */  lui        $t9, %hi(D_80178418)
/* 5FA38 8005EE38 87398418 */  lh         $t9, %lo(D_80178418)($t9)
/* 5FA3C 8005EE3C 01EE7821 */  addu       $t7, $t7, $t6
/* 5FA40 8005EE40 000F7880 */  sll        $t7, $t7, 2
/* 5FA44 8005EE44 44993000 */  mtc1       $t9, $f6
/* 5FA48 8005EE48 01EE7823 */  subu       $t7, $t7, $t6
/* 5FA4C 8005EE4C 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 5FA50 8005EE50 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 5FA54 8005EE54 000F78C0 */  sll        $t7, $t7, 3
/* 5FA58 8005EE58 46803220 */  cvt.s.w    $f8, $f6
/* 5FA5C 8005EE5C 01F81021 */  addu       $v0, $t7, $t8
/* 5FA60 8005EE60 C444014C */  lwc1       $f4, 0x14c($v0)
/* 5FA64 8005EE64 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5FA68 8005EE68 46082032 */  c.eq.s     $f4, $f8
/* 5FA6C 8005EE6C AFBF0014 */  sw         $ra, 0x14($sp)
/* 5FA70 8005EE70 45010003 */  bc1t       .L8005EE80
/* 5FA74 8005EE74 AFA40020 */   sw        $a0, 0x20($sp)
/* 5FA78 8005EE78 1000007F */  b          .L8005F078
/* 5FA7C 8005EE7C AC400080 */   sw        $zero, 0x80($v0)
.L8005EE80:
/* 5FA80 8005EE80 904300D1 */  lbu        $v1, 0xd1($v0)
/* 5FA84 8005EE84 24050001 */  addiu      $a1, $zero, 1
/* 5FA88 8005EE88 1060000B */  beqz       $v1, .L8005EEB8
/* 5FA8C 8005EE8C 3C088018 */   lui       $t0, 0x8018
/* 5FA90 8005EE90 10650011 */  beq        $v1, $a1, .L8005EED8
/* 5FA94 8005EE94 2401000A */   addiu     $at, $zero, 0xa
/* 5FA98 8005EE98 1061001F */  beq        $v1, $at, .L8005EF18
/* 5FA9C 8005EE9C 3C0D8018 */   lui       $t5, 0x8018
/* 5FAA0 8005EEA0 2401000B */  addiu      $at, $zero, 0xb
/* 5FAA4 8005EEA4 1061002A */  beq        $v1, $at, .L8005EF50
/* 5FAA8 8005EEA8 3C0F8018 */   lui       $t7, 0x8018
/* 5FAAC 8005EEAC 904400D0 */  lbu        $a0, 0xd0($v0)
/* 5FAB0 8005EEB0 1000002E */  b          .L8005EF6C
/* 5FAB4 8005EEB4 00000000 */   nop
.L8005EEB8:
/* 5FAB8 8005EEB8 850883F0 */  lh         $t0, -0x7c10($t0)
/* 5FABC 8005EEBC 24010002 */  addiu      $at, $zero, 2
/* 5FAC0 8005EEC0 15010002 */  bne        $t0, $at, .L8005EECC
/* 5FAC4 8005EEC4 24090001 */   addiu     $t1, $zero, 1
/* 5FAC8 8005EEC8 A04900D1 */  sb         $t1, 0xd1($v0)
.L8005EECC:
/* 5FACC 8005EECC 904400D0 */  lbu        $a0, 0xd0($v0)
/* 5FAD0 8005EED0 10000026 */  b          .L8005EF6C
/* 5FAD4 8005EED4 24050001 */   addiu     $a1, $zero, 1
.L8005EED8:
/* 5FAD8 8005EED8 3C038018 */  lui        $v1, %hi(D_801783F0)
/* 5FADC 8005EEDC 846383F0 */  lh         $v1, %lo(D_801783F0)($v1)
/* 5FAE0 8005EEE0 24010003 */  addiu      $at, $zero, 3
/* 5FAE4 8005EEE4 14610006 */  bne        $v1, $at, .L8005EF00
/* 5FAE8 8005EEE8 240A0001 */   addiu     $t2, $zero, 1
/* 5FAEC 8005EEEC 3C013F80 */  lui        $at, 0x3f80
/* 5FAF0 8005EEF0 44815000 */  mtc1       $at, $f10
/* 5FAF4 8005EEF4 AC400150 */  sw         $zero, 0x150($v0)
/* 5FAF8 8005EEF8 A04A00D0 */  sb         $t2, 0xd0($v0)
/* 5FAFC 8005EEFC E44A00B4 */  swc1       $f10, 0xb4($v0)
.L8005EF00:
/* 5FB00 8005EF00 14A30002 */  bne        $a1, $v1, .L8005EF0C
/* 5FB04 8005EF04 00000000 */   nop
/* 5FB08 8005EF08 AC400080 */  sw         $zero, 0x80($v0)
.L8005EF0C:
/* 5FB0C 8005EF0C 904400D0 */  lbu        $a0, 0xd0($v0)
/* 5FB10 8005EF10 10000016 */  b          .L8005EF6C
/* 5FB14 8005EF14 00000000 */   nop
.L8005EF18:
/* 5FB18 8005EF18 904B00D0 */  lbu        $t3, 0xd0($v0)
/* 5FB1C 8005EF1C 240C000A */  addiu      $t4, $zero, 0xa
/* 5FB20 8005EF20 15600002 */  bnez       $t3, .L8005EF2C
/* 5FB24 8005EF24 240E000B */   addiu     $t6, $zero, 0xb
/* 5FB28 8005EF28 A04C00D0 */  sb         $t4, 0xd0($v0)
.L8005EF2C:
/* 5FB2C 8005EF2C 85AD83F0 */  lh         $t5, -0x7c10($t5)
/* 5FB30 8005EF30 00000000 */  nop
/* 5FB34 8005EF34 29A10002 */  slti       $at, $t5, 2
/* 5FB38 8005EF38 14200002 */  bnez       $at, .L8005EF44
/* 5FB3C 8005EF3C 00000000 */   nop
/* 5FB40 8005EF40 A04E00D1 */  sb         $t6, 0xd1($v0)
.L8005EF44:
/* 5FB44 8005EF44 904400D0 */  lbu        $a0, 0xd0($v0)
/* 5FB48 8005EF48 10000008 */  b          .L8005EF6C
/* 5FB4C 8005EF4C 00000000 */   nop
.L8005EF50:
/* 5FB50 8005EF50 85EF83F0 */  lh         $t7, -0x7c10($t7)
/* 5FB54 8005EF54 24010002 */  addiu      $at, $zero, 2
/* 5FB58 8005EF58 11E10002 */  beq        $t7, $at, .L8005EF64
/* 5FB5C 8005EF5C 00000000 */   nop
/* 5FB60 8005EF60 AC400080 */  sw         $zero, 0x80($v0)
.L8005EF64:
/* 5FB64 8005EF64 904400D0 */  lbu        $a0, 0xd0($v0)
/* 5FB68 8005EF68 00000000 */  nop
.L8005EF6C:
/* 5FB6C 8005EF6C 10800006 */  beqz       $a0, .L8005EF88
/* 5FB70 8005EF70 00000000 */   nop
/* 5FB74 8005EF74 10850018 */  beq        $a0, $a1, .L8005EFD8
/* 5FB78 8005EF78 00000000 */   nop
/* 5FB7C 8005EF7C C44000B4 */  lwc1       $f0, 0xb4($v0)
/* 5FB80 8005EF80 1000003D */  b          .L8005F078
/* 5FB84 8005EF84 E44000B8 */   swc1      $f0, 0xb8($v0)
.L8005EF88:
/* 5FB88 8005EF88 C45000B4 */  lwc1       $f16, 0xb4($v0)
/* 5FB8C 8005EF8C C4520110 */  lwc1       $f18, 0x110($v0)
/* 5FB90 8005EF90 3C013FF8 */  lui        $at, 0x3ff8
/* 5FB94 8005EF94 46128180 */  add.s      $f6, $f16, $f18
/* 5FB98 8005EF98 44814800 */  mtc1       $at, $f9
/* 5FB9C 8005EF9C E44600B4 */  swc1       $f6, 0xb4($v0)
/* 5FBA0 8005EFA0 C44000B4 */  lwc1       $f0, 0xb4($v0)
/* 5FBA4 8005EFA4 44804000 */  mtc1       $zero, $f8
/* 5FBA8 8005EFA8 46000121 */  cvt.d.s    $f4, $f0
/* 5FBAC 8005EFAC 4624403E */  c.le.d     $f8, $f4
/* 5FBB0 8005EFB0 3C013FC0 */  lui        $at, 0x3fc0
/* 5FBB4 8005EFB4 4500002F */  bc1f       .L8005F074
/* 5FBB8 8005EFB8 2418000F */   addiu     $t8, $zero, 0xf
/* 5FBBC 8005EFBC 44815000 */  mtc1       $at, $f10
/* 5FBC0 8005EFC0 24190001 */  addiu      $t9, $zero, 1
/* 5FBC4 8005EFC4 E44A00B4 */  swc1       $f10, 0xb4($v0)
/* 5FBC8 8005EFC8 C44000B4 */  lwc1       $f0, 0xb4($v0)
/* 5FBCC 8005EFCC AC580150 */  sw         $t8, 0x150($v0)
/* 5FBD0 8005EFD0 10000028 */  b          .L8005F074
/* 5FBD4 8005EFD4 A05900D0 */   sb        $t9, 0xd0($v0)
.L8005EFD8:
/* 5FBD8 8005EFD8 8C430150 */  lw         $v1, 0x150($v0)
/* 5FBDC 8005EFDC 00000000 */  nop
/* 5FBE0 8005EFE0 10600004 */  beqz       $v1, .L8005EFF4
/* 5FBE4 8005EFE4 2468FFFF */   addiu     $t0, $v1, -1
/* 5FBE8 8005EFE8 C44000B4 */  lwc1       $f0, 0xb4($v0)
/* 5FBEC 8005EFEC 10000021 */  b          .L8005F074
/* 5FBF0 8005EFF0 AC480150 */   sw        $t0, 0x150($v0)
.L8005EFF4:
/* 5FBF4 8005EFF4 C45000B4 */  lwc1       $f16, 0xb4($v0)
/* 5FBF8 8005EFF8 C4520114 */  lwc1       $f18, 0x114($v0)
/* 5FBFC 8005EFFC 3C013FF0 */  lui        $at, 0x3ff0
/* 5FC00 8005F000 46128180 */  add.s      $f6, $f16, $f18
/* 5FC04 8005F004 44812800 */  mtc1       $at, $f5
/* 5FC08 8005F008 E44600B4 */  swc1       $f6, 0xb4($v0)
/* 5FC0C 8005F00C C44000B4 */  lwc1       $f0, 0xb4($v0)
/* 5FC10 8005F010 44802000 */  mtc1       $zero, $f4
/* 5FC14 8005F014 46000221 */  cvt.d.s    $f8, $f0
/* 5FC18 8005F018 4624403E */  c.le.d     $f8, $f4
/* 5FC1C 8005F01C 3C038018 */  lui        $v1, %hi(D_801782E2)
/* 5FC20 8005F020 45000014 */  bc1f       .L8005F074
/* 5FC24 8005F024 246382E2 */   addiu     $v1, $v1, %lo(D_801782E2)
/* 5FC28 8005F028 3C013F80 */  lui        $at, 0x3f80
/* 5FC2C 8005F02C 44815000 */  mtc1       $at, $f10
/* 5FC30 8005F030 84690000 */  lh         $t1, ($v1)
/* 5FC34 8005F034 8C4A0154 */  lw         $t2, 0x154($v0)
/* 5FC38 8005F038 8444015A */  lh         $a0, 0x15a($v0)
/* 5FC3C 8005F03C 8445015E */  lh         $a1, 0x15e($v0)
/* 5FC40 8005F040 00003025 */  or         $a2, $zero, $zero
/* 5FC44 8005F044 AFA20018 */  sw         $v0, 0x18($sp)
/* 5FC48 8005F048 E44A00B4 */  swc1       $f10, 0xb4($v0)
/* 5FC4C 8005F04C AC490150 */  sw         $t1, 0x150($v0)
/* 5FC50 8005F050 0C01782C */  jal        func_8005E0B0
/* 5FC54 8005F054 A46A0000 */   sh        $t2, ($v1)
/* 5FC58 8005F058 8FA20018 */  lw         $v0, 0x18($sp)
/* 5FC5C 8005F05C 3C018018 */  lui        $at, %hi(D_801782E2)
/* 5FC60 8005F060 8C4B0150 */  lw         $t3, 0x150($v0)
/* 5FC64 8005F064 00000000 */  nop
/* 5FC68 8005F068 A42B82E2 */  sh         $t3, %lo(D_801782E2)($at)
/* 5FC6C 8005F06C C44000B4 */  lwc1       $f0, 0xb4($v0)
/* 5FC70 8005F070 AC400080 */  sw         $zero, 0x80($v0)
.L8005F074:
/* 5FC74 8005F074 E44000B8 */  swc1       $f0, 0xb8($v0)
.L8005F078:
/* 5FC78 8005F078 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5FC7C 8005F07C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 5FC80 8005F080 03E00008 */  jr         $ra
/* 5FC84 8005F084 00000000 */   nop
