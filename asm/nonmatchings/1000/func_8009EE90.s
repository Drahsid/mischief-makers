glabel func_8009EE90
/* 9FA90 8009EE90 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9FA94 8009EE94 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9FA98 8009EE98 AFA40028 */  sw         $a0, 0x28($sp)
/* 9FA9C 8009EE9C AFA5002C */  sw         $a1, 0x2c($sp)
/* 9FAA0 8009EEA0 8FAE002C */  lw         $t6, 0x2c($sp)
/* 9FAA4 8009EEA4 8FAF0028 */  lw         $t7, 0x28($sp)
/* 9FAA8 8009EEA8 ADEE0000 */  sw         $t6, ($t7)
/* 9FAAC 8009EEAC 8FB80028 */  lw         $t8, 0x28($sp)
/* 9FAB0 8009EEB0 AF000004 */  sw         $zero, 4($t8)
/* 9FAB4 8009EEB4 8FB90028 */  lw         $t9, 0x28($sp)
/* 9FAB8 8009EEB8 AF200010 */  sw         $zero, 0x10($t9)
/* 9FABC 8009EEBC 8FA80028 */  lw         $t0, 0x28($sp)
/* 9FAC0 8009EEC0 AD00000C */  sw         $zero, 0xc($t0)
/* 9FAC4 8009EEC4 8FAA0028 */  lw         $t2, 0x28($sp)
/* 9FAC8 8009EEC8 24090001 */  addiu      $t1, $zero, 1
/* 9FACC 8009EECC AD490014 */  sw         $t1, 0x14($t2)
/* 9FAD0 8009EED0 AFA00024 */  sw         $zero, 0x24($sp)
.L8009EED4:
/* 9FAD4 8009EED4 8FAB0028 */  lw         $t3, 0x28($sp)
/* 9FAD8 8009EED8 8FAC0024 */  lw         $t4, 0x24($sp)
/* 9FADC 8009EEDC 016C6821 */  addu       $t5, $t3, $t4
/* 9FAE0 8009EEE0 A1A000A8 */  sb         $zero, 0xa8($t5)
/* 9FAE4 8009EEE4 8FAF0024 */  lw         $t7, 0x24($sp)
/* 9FAE8 8009EEE8 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9FAEC 8009EEEC 000FC080 */  sll        $t8, $t7, 2
/* 9FAF0 8009EEF0 01D8C821 */  addu       $t9, $t6, $t8
/* 9FAF4 8009EEF4 AF200058 */  sw         $zero, 0x58($t9)
/* 9FAF8 8009EEF8 8FA80028 */  lw         $t0, 0x28($sp)
/* 9FAFC 8009EEFC 8FA90024 */  lw         $t1, 0x24($sp)
/* 9FB00 8009EF00 01095021 */  addu       $t2, $t0, $t1
/* 9FB04 8009EF04 A1400098 */  sb         $zero, 0x98($t2)
/* 9FB08 8009EF08 8FAB0028 */  lw         $t3, 0x28($sp)
/* 9FB0C 8009EF0C 8FAD0024 */  lw         $t5, 0x24($sp)
/* 9FB10 8009EF10 8D6C0000 */  lw         $t4, ($t3)
/* 9FB14 8009EF14 000D7880 */  sll        $t7, $t5, 2
/* 9FB18 8009EF18 018F7021 */  addu       $t6, $t4, $t7
/* 9FB1C 8009EF1C 8DD80000 */  lw         $t8, ($t6)
/* 9FB20 8009EF20 AFB80020 */  sw         $t8, 0x20($sp)
/* 9FB24 8009EF24 8FB90020 */  lw         $t9, 0x20($sp)
/* 9FB28 8009EF28 1320001B */  beqz       $t9, .L8009EF98
/* 9FB2C 8009EF2C 00000000 */   nop
/* 9FB30 8009EF30 8FA80024 */  lw         $t0, 0x24($sp)
/* 9FB34 8009EF34 24090001 */  addiu      $t1, $zero, 1
/* 9FB38 8009EF38 01095004 */  sllv       $t2, $t1, $t0
/* 9FB3C 8009EF3C AFAA001C */  sw         $t2, 0x1c($sp)
/* 9FB40 8009EF40 8FAB0028 */  lw         $t3, 0x28($sp)
/* 9FB44 8009EF44 8FAC001C */  lw         $t4, 0x1c($sp)
/* 9FB48 8009EF48 8D6D0004 */  lw         $t5, 4($t3)
/* 9FB4C 8009EF4C 01AC7825 */  or         $t7, $t5, $t4
/* 9FB50 8009EF50 AD6F0004 */  sw         $t7, 4($t3)
/* 9FB54 8009EF54 8FA80024 */  lw         $t0, 0x24($sp)
/* 9FB58 8009EF58 8FAE002C */  lw         $t6, 0x2c($sp)
/* 9FB5C 8009EF5C 8FB80020 */  lw         $t8, 0x20($sp)
/* 9FB60 8009EF60 8FA90028 */  lw         $t1, 0x28($sp)
/* 9FB64 8009EF64 00085080 */  sll        $t2, $t0, 2
/* 9FB68 8009EF68 01D8C821 */  addu       $t9, $t6, $t8
/* 9FB6C 8009EF6C 012A6821 */  addu       $t5, $t1, $t2
/* 9FB70 8009EF70 ADB90018 */  sw         $t9, 0x18($t5)
/* 9FB74 8009EF74 8FA40028 */  lw         $a0, 0x28($sp)
/* 9FB78 8009EF78 0C027F42 */  jal        func_8009FD08
/* 9FB7C 8009EF7C 8FA50024 */   lw        $a1, 0x24($sp)
/* 9FB80 8009EF80 8FAF0024 */  lw         $t7, 0x24($sp)
/* 9FB84 8009EF84 8FAC0028 */  lw         $t4, 0x28($sp)
/* 9FB88 8009EF88 000F5880 */  sll        $t3, $t7, 2
/* 9FB8C 8009EF8C 018B7021 */  addu       $t6, $t4, $t3
/* 9FB90 8009EF90 10000006 */  b          .L8009EFAC
/* 9FB94 8009EF94 ADC200B8 */   sw        $v0, 0xb8($t6)
.L8009EF98:
/* 9FB98 8009EF98 8FA80024 */  lw         $t0, 0x24($sp)
/* 9FB9C 8009EF9C 8FB80028 */  lw         $t8, 0x28($sp)
/* 9FBA0 8009EFA0 00084880 */  sll        $t1, $t0, 2
/* 9FBA4 8009EFA4 03095021 */  addu       $t2, $t8, $t1
/* 9FBA8 8009EFA8 AD400018 */  sw         $zero, 0x18($t2)
.L8009EFAC:
/* 9FBAC 8009EFAC 8FB90024 */  lw         $t9, 0x24($sp)
/* 9FBB0 8009EFB0 272D0001 */  addiu      $t5, $t9, 1
/* 9FBB4 8009EFB4 2DA10010 */  sltiu      $at, $t5, 0x10
/* 9FBB8 8009EFB8 1420FFC6 */  bnez       $at, .L8009EED4
/* 9FBBC 8009EFBC AFAD0024 */   sw        $t5, 0x24($sp)
/* 9FBC0 8009EFC0 8FAF0028 */  lw         $t7, 0x28($sp)
/* 9FBC4 8009EFC4 3C013FF0 */  lui        $at, 0x3ff0
/* 9FBC8 8009EFC8 44812800 */  mtc1       $at, $f5
/* 9FBCC 8009EFCC 8DEC0000 */  lw         $t4, ($t7)
/* 9FBD0 8009EFD0 44802000 */  mtc1       $zero, $f4
/* 9FBD4 8009EFD4 8D8B0040 */  lw         $t3, 0x40($t4)
/* 9FBD8 8009EFD8 448B3000 */  mtc1       $t3, $f6
/* 9FBDC 8009EFDC 05610005 */  bgez       $t3, .L8009EFF4
/* 9FBE0 8009EFE0 46803220 */   cvt.s.w   $f8, $f6
/* 9FBE4 8009EFE4 3C014F80 */  lui        $at, 0x4f80
/* 9FBE8 8009EFE8 44815000 */  mtc1       $at, $f10
/* 9FBEC 8009EFEC 00000000 */  nop
/* 9FBF0 8009EFF0 460A4200 */  add.s      $f8, $f8, $f10
.L8009EFF4:
/* 9FBF4 8009EFF4 46004421 */  cvt.d.s    $f16, $f8
/* 9FBF8 8009EFF8 46302483 */  div.d      $f18, $f4, $f16
/* 9FBFC 8009EFFC 462091A0 */  cvt.s.d    $f6, $f18
/* 9FC00 8009F000 E5E60008 */  swc1       $f6, 8($t7)
/* 9FC04 8009F004 10000001 */  b          .L8009F00C
/* 9FC08 8009F008 00000000 */   nop
.L8009F00C:
/* 9FC0C 8009F00C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9FC10 8009F010 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9FC14 8009F014 03E00008 */  jr         $ra
/* 9FC18 8009F018 00000000 */   nop
