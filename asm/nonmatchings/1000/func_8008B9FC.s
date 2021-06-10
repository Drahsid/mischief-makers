glabel func_8008B9FC
/* 8C5FC 8008B9FC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8C600 8008BA00 AFA40020 */  sw         $a0, 0x20($sp)
/* 8C604 8008BA04 97AE0022 */  lhu        $t6, 0x22($sp)
/* 8C608 8008BA08 3C18800F */  lui        $t8, 0x800f
/* 8C60C 8008BA0C 000E7880 */  sll        $t7, $t6, 2
/* 8C610 8008BA10 01EE7823 */  subu       $t7, $t7, $t6
/* 8C614 8008BA14 000F7880 */  sll        $t7, $t7, 2
/* 8C618 8008BA18 01EE7821 */  addu       $t7, $t7, $t6
/* 8C61C 8008BA1C 000F7880 */  sll        $t7, $t7, 2
/* 8C620 8008BA20 01EE7823 */  subu       $t7, $t7, $t6
/* 8C624 8008BA24 000F78C0 */  sll        $t7, $t7, 3
/* 8C628 8008BA28 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 8C62C 8008BA2C 01F81021 */  addu       $v0, $t7, $t8
/* 8C630 8008BA30 944500D0 */  lhu        $a1, 0xd0($v0)
/* 8C634 8008BA34 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8C638 8008BA38 10A00006 */  beqz       $a1, .L8008BA54
/* 8C63C 8008BA3C 00A01825 */   or        $v1, $a1, $zero
/* 8C640 8008BA40 24010001 */  addiu      $at, $zero, 1
/* 8C644 8008BA44 1061001F */  beq        $v1, $at, .L8008BAC4
/* 8C648 8008BA48 00000000 */   nop
/* 8C64C 8008BA4C 10000042 */  b          .L8008BB58
/* 8C650 8008BA50 8FBF0014 */   lw        $ra, 0x14($sp)
.L8008BA54:
/* 8C654 8008BA54 4459F800 */  cfc1       $t9, $31
/* 8C658 8008BA58 C4440110 */  lwc1       $f4, 0x110($v0)
/* 8C65C 8008BA5C 37210003 */  ori        $at, $t9, 3
/* 8C660 8008BA60 38210002 */  xori       $at, $at, 2
/* 8C664 8008BA64 44C1F800 */  ctc1       $at, $31
/* 8C668 8008BA68 3C0B800E */  lui        $t3, 0x800e
/* 8C66C 8008BA6C 460021A4 */  cvt.w.s    $f6, $f4
/* 8C670 8008BA70 3C0E800E */  lui        $t6, 0x800e
/* 8C674 8008BA74 44083000 */  mfc1       $t0, $f6
/* 8C678 8008BA78 44D9F800 */  ctc1       $t9, $31
/* 8C67C 8008BA7C 24090A09 */  addiu      $t1, $zero, 0xa09
/* 8C680 8008BA80 240A0003 */  addiu      $t2, $zero, 3
/* 8C684 8008BA84 256B44DC */  addiu      $t3, $t3, 0x44dc
/* 8C688 8008BA88 240C0001 */  addiu      $t4, $zero, 1
/* 8C68C 8008BA8C 240DFFF8 */  addiu      $t5, $zero, -8
/* 8C690 8008BA90 25CEE188 */  addiu      $t6, $t6, -0x1e78
/* 8C694 8008BA94 240F001F */  addiu      $t7, $zero, 0x1f
/* 8C698 8008BA98 24B80001 */  addiu      $t8, $a1, 1
/* 8C69C 8008BA9C A4490094 */  sh         $t1, 0x94($v0)
/* 8C6A0 8008BAA0 AC4A0080 */  sw         $t2, 0x80($v0)
/* 8C6A4 8008BAA4 AC4B00E8 */  sw         $t3, 0xe8($v0)
/* 8C6A8 8008BAA8 A44C00E6 */  sh         $t4, 0xe6($v0)
/* 8C6AC 8008BAAC A44D0090 */  sh         $t5, 0x90($v0)
/* 8C6B0 8008BAB0 AC400188 */  sw         $zero, 0x188($v0)
/* 8C6B4 8008BAB4 AC4E018C */  sw         $t6, 0x18c($v0)
/* 8C6B8 8008BAB8 AC4F0164 */  sw         $t7, 0x164($v0)
/* 8C6BC 8008BABC A45800D0 */  sh         $t8, 0xd0($v0)
/* 8C6C0 8008BAC0 AC480150 */  sw         $t0, 0x150($v0)
.L8008BAC4:
/* 8C6C4 8008BAC4 3C19800F */  lui        $t9, %hi(D_800F777C)
/* 8C6C8 8008BAC8 8F39777C */  lw         $t9, %lo(D_800F777C)($t9)
/* 8C6CC 8008BACC 97A40022 */  lhu        $a0, 0x22($sp)
/* 8C6D0 8008BAD0 13200018 */  beqz       $t9, .L8008BB34
/* 8C6D4 8008BAD4 00000000 */   nop
/* 8C6D8 8008BAD8 0C022DF3 */  jal        func_8008B7CC
/* 8C6DC 8008BADC AFA20018 */   sw        $v0, 0x18($sp)
/* 8C6E0 8008BAE0 8FA20018 */  lw         $v0, 0x18($sp)
/* 8C6E4 8008BAE4 3C010010 */  lui        $at, 0x10
/* 8C6E8 8008BAE8 8C480154 */  lw         $t0, 0x154($v0)
/* 8C6EC 8008BAEC 00000000 */  nop
/* 8C6F0 8008BAF0 01014821 */  addu       $t1, $t0, $at
/* 8C6F4 8008BAF4 01205025 */  or         $t2, $t1, $zero
/* 8C6F8 8008BAF8 AC490154 */  sw         $t1, 0x154($v0)
/* 8C6FC 8008BAFC 05410004 */  bgez       $t2, .L8008BB10
/* 8C700 8008BB00 000A5C03 */   sra       $t3, $t2, 0x10
/* 8C704 8008BB04 3401FFFF */  ori        $at, $zero, 0xffff
/* 8C708 8008BB08 002A0821 */  addu       $at, $at, $t2
/* 8C70C 8008BB0C 00015C03 */  sra        $t3, $at, 0x10
.L8008BB10:
/* 8C710 8008BB10 448B4000 */  mtc1       $t3, $f8
/* 8C714 8008BB14 3C01800F */  lui        $at, %hi(D_800ED280)
/* 8C718 8008BB18 468042A1 */  cvt.d.w    $f10, $f8
/* 8C71C 8008BB1C C431D280 */  lwc1       $f17, %lo(D_800ED280)($at)
/* 8C720 8008BB20 C430D284 */  lwc1       $f16, -0x2d7c($at)
/* 8C724 8008BB24 00000000 */  nop
/* 8C728 8008BB28 46305482 */  mul.d      $f18, $f10, $f16
/* 8C72C 8008BB2C 46209120 */  cvt.s.d    $f4, $f18
/* 8C730 8008BB30 E44400C4 */  swc1       $f4, 0xc4($v0)
.L8008BB34:
/* 8C734 8008BB34 97A40022 */  lhu        $a0, 0x22($sp)
/* 8C738 8008BB38 0C022CA1 */  jal        func_8008B284
/* 8C73C 8008BB3C 00000000 */   nop
/* 8C740 8008BB40 10400005 */  beqz       $v0, .L8008BB58
/* 8C744 8008BB44 8FBF0014 */   lw        $ra, 0x14($sp)
/* 8C748 8008BB48 97A40022 */  lhu        $a0, 0x22($sp)
/* 8C74C 8008BB4C 0C022E0C */  jal        func_8008B830
/* 8C750 8008BB50 00000000 */   nop
/* 8C754 8008BB54 8FBF0014 */  lw         $ra, 0x14($sp)
.L8008BB58:
/* 8C758 8008BB58 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8C75C 8008BB5C 03E00008 */  jr         $ra
/* 8C760 8008BB60 00000000 */   nop
