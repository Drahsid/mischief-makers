glabel func_8002EDC8
/* 2F9C8 8002EDC8 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 2F9CC 8002EDCC AFBF0024 */  sw         $ra, 0x24($sp)
/* 2F9D0 8002EDD0 AFB00020 */  sw         $s0, 0x20($sp)
/* 2F9D4 8002EDD4 AFA40040 */  sw         $a0, 0x40($sp)
/* 2F9D8 8002EDD8 AFA50044 */  sw         $a1, 0x44($sp)
/* 2F9DC 8002EDDC 00C08025 */  or         $s0, $a2, $zero
/* 2F9E0 8002EDE0 AFA7004C */  sw         $a3, 0x4c($sp)
/* 2F9E4 8002EDE4 2405007A */  addiu      $a1, $zero, 0x7a
/* 2F9E8 8002EDE8 0C00A12E */  jal        func_800284B8
/* 2F9EC 8002EDEC 24040070 */   addiu     $a0, $zero, 0x70
/* 2F9F0 8002EDF0 10400078 */  beqz       $v0, .L8002EFD4
/* 2F9F4 8002EDF4 A7A2003E */   sh        $v0, 0x3e($sp)
/* 2F9F8 8002EDF8 97A30046 */  lhu        $v1, 0x46($sp)
/* 2F9FC 8002EDFC 3C02800F */  lui        $v0, %hi(gActors)
/* 2FA00 8002EE00 306E1000 */  andi       $t6, $v1, 0x1000
/* 2FA04 8002EE04 11C0000B */  beqz       $t6, .L8002EE34
/* 2FA08 8002EE08 2442F510 */   addiu     $v0, $v0, %lo(gActors)
/* 2FA0C 8002EE0C 8C4F0088 */  lw         $t7, 0x88($v0)
/* 2FA10 8002EE10 8FB8004C */  lw         $t8, 0x4c($sp)
/* 2FA14 8002EE14 8C59008C */  lw         $t9, 0x8c($v0)
/* 2FA18 8002EE18 8FA80050 */  lw         $t0, 0x50($sp)
/* 2FA1C 8002EE1C AFA30028 */  sw         $v1, 0x28($sp)
/* 2FA20 8002EE20 01F82023 */  subu       $a0, $t7, $t8
/* 2FA24 8002EE24 0C00A538 */  jal        func_800294E0
/* 2FA28 8002EE28 03282823 */   subu      $a1, $t9, $t0
/* 2FA2C 8002EE2C 8FA30028 */  lw         $v1, 0x28($sp)
/* 2FA30 8002EE30 00408025 */  or         $s0, $v0, $zero
.L8002EE34:
/* 2FA34 8002EE34 30620300 */  andi       $v0, $v1, 0x300
/* 2FA38 8002EE38 24010100 */  addiu      $at, $zero, 0x100
/* 2FA3C 8002EE3C 10410008 */  beq        $v0, $at, .L8002EE60
/* 2FA40 8002EE40 306C4000 */   andi      $t4, $v1, 0x4000
/* 2FA44 8002EE44 24010200 */  addiu      $at, $zero, 0x200
/* 2FA48 8002EE48 10410009 */  beq        $v0, $at, .L8002EE70
/* 2FA4C 8002EE4C 24010300 */   addiu     $at, $zero, 0x300
/* 2FA50 8002EE50 1041000B */  beq        $v0, $at, .L8002EE80
/* 2FA54 8002EE54 00000000 */   nop
/* 2FA58 8002EE58 1000000C */  b          .L8002EE8C
/* 2FA5C 8002EE5C 00000000 */   nop
.L8002EE60:
/* 2FA60 8002EE60 26100080 */  addiu      $s0, $s0, 0x80
/* 2FA64 8002EE64 32090300 */  andi       $t1, $s0, 0x300
/* 2FA68 8002EE68 10000008 */  b          .L8002EE8C
/* 2FA6C 8002EE6C 01208025 */   or        $s0, $t1, $zero
.L8002EE70:
/* 2FA70 8002EE70 26100040 */  addiu      $s0, $s0, 0x40
/* 2FA74 8002EE74 320A0380 */  andi       $t2, $s0, 0x380
/* 2FA78 8002EE78 10000004 */  b          .L8002EE8C
/* 2FA7C 8002EE7C 01408025 */   or        $s0, $t2, $zero
.L8002EE80:
/* 2FA80 8002EE80 26100020 */  addiu      $s0, $s0, 0x20
/* 2FA84 8002EE84 320B03C0 */  andi       $t3, $s0, 0x3c0
/* 2FA88 8002EE88 01608025 */  or         $s0, $t3, $zero
.L8002EE8C:
/* 2FA8C 8002EE8C 11800008 */  beqz       $t4, .L8002EEB0
/* 2FA90 8002EE90 3C01800E */   lui       $at, %hi(D_800E3580)
/* 2FA94 8002EE94 97A40042 */  lhu        $a0, 0x42($sp)
/* 2FA98 8002EE98 A4203580 */  sh         $zero, %lo(D_800E3580)($at)
/* 2FA9C 8002EE9C 00002825 */  or         $a1, $zero, $zero
/* 2FAA0 8002EEA0 0C00AA88 */  jal        func_8002AA20
/* 2FAA4 8002EEA4 AFA30028 */   sw        $v1, 0x28($sp)
/* 2FAA8 8002EEA8 8FA30028 */  lw         $v1, 0x28($sp)
/* 2FAAC 8002EEAC 00000000 */  nop
.L8002EEB0:
/* 2FAB0 8002EEB0 306D8000 */  andi       $t5, $v1, 0x8000
/* 2FAB4 8002EEB4 11A00037 */  beqz       $t5, .L8002EF94
/* 2FAB8 8002EEB8 3C02800C */   lui       $v0, 0x800c
/* 2FABC 8002EEBC 97AE0042 */  lhu        $t6, 0x42($sp)
/* 2FAC0 8002EEC0 3C014980 */  lui        $at, 0x4980
/* 2FAC4 8002EEC4 000E7880 */  sll        $t7, $t6, 2
/* 2FAC8 8002EEC8 01EE7823 */  subu       $t7, $t7, $t6
/* 2FACC 8002EECC 000F7880 */  sll        $t7, $t7, 2
/* 2FAD0 8002EED0 01EE7821 */  addu       $t7, $t7, $t6
/* 2FAD4 8002EED4 000F7880 */  sll        $t7, $t7, 2
/* 2FAD8 8002EED8 44812000 */  mtc1       $at, $f4
/* 2FADC 8002EEDC 01EE7823 */  subu       $t7, $t7, $t6
/* 2FAE0 8002EEE0 000F78C0 */  sll        $t7, $t7, 3
/* 2FAE4 8002EEE4 3C01800F */  lui        $at, %hi(gActors+0xB4)
/* 2FAE8 8002EEE8 002F0821 */  addu       $at, $at, $t7
/* 2FAEC 8002EEEC C426F5C4 */  lwc1       $f6, %lo(gActors+0xB4)($at)
/* 2FAF0 8002EEF0 321903FF */  andi       $t9, $s0, 0x3ff
/* 2FAF4 8002EEF4 46062002 */  mul.s      $f0, $f4, $f6
/* 2FAF8 8002EEF8 2442CCD0 */  addiu      $v0, $v0, -0x3330
/* 2FAFC 8002EEFC 00194080 */  sll        $t0, $t9, 2
/* 2FB00 8002EF00 8FB8004C */  lw         $t8, 0x4c($sp)
/* 2FB04 8002EF04 00484821 */  addu       $t1, $v0, $t0
/* 2FB08 8002EF08 C5300000 */  lwc1       $f16, ($t1)
/* 2FB0C 8002EF0C 44984000 */  mtc1       $t8, $f8
/* 2FB10 8002EF10 46008482 */  mul.s      $f18, $f16, $f0
/* 2FB14 8002EF14 260DFF00 */  addiu      $t5, $s0, -0x100
/* 2FB18 8002EF18 31AE03FF */  andi       $t6, $t5, 0x3ff
/* 2FB1C 8002EF1C 000E7880 */  sll        $t7, $t6, 2
/* 2FB20 8002EF20 468042A0 */  cvt.s.w    $f10, $f8
/* 2FB24 8002EF24 8FAC0050 */  lw         $t4, 0x50($sp)
/* 2FB28 8002EF28 004FC021 */  addu       $t8, $v0, $t7
/* 2FB2C 8002EF2C 46125100 */  add.s      $f4, $f10, $f18
/* 2FB30 8002EF30 C70A0000 */  lwc1       $f10, ($t8)
/* 2FB34 8002EF34 444AF800 */  cfc1       $t2, $31
/* 2FB38 8002EF38 448C4000 */  mtc1       $t4, $f8
/* 2FB3C 8002EF3C 35410003 */  ori        $at, $t2, 3
/* 2FB40 8002EF40 38210002 */  xori       $at, $at, 2
/* 2FB44 8002EF44 44C1F800 */  ctc1       $at, $31
/* 2FB48 8002EF48 00000000 */  nop
/* 2FB4C 8002EF4C 460021A4 */  cvt.w.s    $f6, $f4
/* 2FB50 8002EF50 44CAF800 */  ctc1       $t2, $31
/* 2FB54 8002EF54 440B3000 */  mfc1       $t3, $f6
/* 2FB58 8002EF58 46005482 */  mul.s      $f18, $f10, $f0
/* 2FB5C 8002EF5C AFAB004C */  sw         $t3, 0x4c($sp)
/* 2FB60 8002EF60 46804420 */  cvt.s.w    $f16, $f8
/* 2FB64 8002EF64 46128100 */  add.s      $f4, $f16, $f18
/* 2FB68 8002EF68 4459F800 */  cfc1       $t9, $31
/* 2FB6C 8002EF6C 00000000 */  nop
/* 2FB70 8002EF70 37210003 */  ori        $at, $t9, 3
/* 2FB74 8002EF74 38210002 */  xori       $at, $at, 2
/* 2FB78 8002EF78 44C1F800 */  ctc1       $at, $31
/* 2FB7C 8002EF7C 00000000 */  nop
/* 2FB80 8002EF80 460021A4 */  cvt.w.s    $f6, $f4
/* 2FB84 8002EF84 44083000 */  mfc1       $t0, $f6
/* 2FB88 8002EF88 44D9F800 */  ctc1       $t9, $31
/* 2FB8C 8002EF8C AFA80050 */  sw         $t0, 0x50($sp)
/* 2FB90 8002EF90 00000000 */  nop
.L8002EF94:
/* 2FB94 8002EF94 306900FF */  andi       $t1, $v1, 0xff
/* 2FB98 8002EF98 1520000E */  bnez       $t1, .L8002EFD4
/* 2FB9C 8002EF9C 24040080 */   addiu     $a0, $zero, 0x80
/* 2FBA0 8002EFA0 24050080 */  addiu      $a1, $zero, 0x80
/* 2FBA4 8002EFA4 0C00A6C0 */  jal        func_80029B00
/* 2FBA8 8002EFA8 2406FF80 */   addiu     $a2, $zero, -0x80
/* 2FBAC 8002EFAC 10400009 */  beqz       $v0, .L8002EFD4
/* 2FBB0 8002EFB0 00002825 */   or        $a1, $zero, $zero
/* 2FBB4 8002EFB4 8FAA0050 */  lw         $t2, 0x50($sp)
/* 2FBB8 8002EFB8 8FAB0054 */  lw         $t3, 0x54($sp)
/* 2FBBC 8002EFBC 97A4003E */  lhu        $a0, 0x3e($sp)
/* 2FBC0 8002EFC0 8FA7004C */  lw         $a3, 0x4c($sp)
/* 2FBC4 8002EFC4 00103400 */  sll        $a2, $s0, 0x10
/* 2FBC8 8002EFC8 AFAA0010 */  sw         $t2, 0x10($sp)
/* 2FBCC 8002EFCC 0C00B7F0 */  jal        func_8002DFC0
/* 2FBD0 8002EFD0 AFAB0014 */   sw        $t3, 0x14($sp)
.L8002EFD4:
/* 2FBD4 8002EFD4 8FBF0024 */  lw         $ra, 0x24($sp)
/* 2FBD8 8002EFD8 8FB00020 */  lw         $s0, 0x20($sp)
/* 2FBDC 8002EFDC 03E00008 */  jr         $ra
/* 2FBE0 8002EFE0 27BD0040 */   addiu     $sp, $sp, 0x40
