glabel func_8006B9EC
/* 6C5EC 8006B9EC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6C5F0 8006B9F0 AFA40020 */  sw         $a0, 0x20($sp)
/* 6C5F4 8006B9F4 97AE0022 */  lhu        $t6, 0x22($sp)
/* 6C5F8 8006B9F8 3C18800F */  lui        $t8, 0x800f
/* 6C5FC 8006B9FC 000E7880 */  sll        $t7, $t6, 2
/* 6C600 8006BA00 01EE7823 */  subu       $t7, $t7, $t6
/* 6C604 8006BA04 000F7880 */  sll        $t7, $t7, 2
/* 6C608 8006BA08 01EE7821 */  addu       $t7, $t7, $t6
/* 6C60C 8006BA0C 000F7880 */  sll        $t7, $t7, 2
/* 6C610 8006BA10 01EE7823 */  subu       $t7, $t7, $t6
/* 6C614 8006BA14 000F78C0 */  sll        $t7, $t7, 3
/* 6C618 8006BA18 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 6C61C 8006BA1C 01F81021 */  addu       $v0, $t7, $t8
/* 6C620 8006BA20 3C014820 */  lui        $at, 0x4820
/* 6C624 8006BA24 44813000 */  mtc1       $at, $f6
/* 6C628 8006BA28 C4440148 */  lwc1       $f4, 0x148($v0)
/* 6C62C 8006BA2C AFA50024 */  sw         $a1, 0x24($sp)
/* 6C630 8006BA30 46062202 */  mul.s      $f8, $f4, $f6
/* 6C634 8006BA34 AFBF001C */  sw         $ra, 0x1c($sp)
/* 6C638 8006BA38 97A40026 */  lhu        $a0, 0x26($sp)
/* 6C63C 8006BA3C 84450088 */  lh         $a1, 0x88($v0)
/* 6C640 8006BA40 4459F800 */  cfc1       $t9, $31
/* 6C644 8006BA44 8446008C */  lh         $a2, 0x8c($v0)
/* 6C648 8006BA48 37210003 */  ori        $at, $t9, 3
/* 6C64C 8006BA4C 38210002 */  xori       $at, $at, 2
/* 6C650 8006BA50 44C1F800 */  ctc1       $at, $31
/* 6C654 8006BA54 3C080003 */  lui        $t0, 3
/* 6C658 8006BA58 460042A4 */  cvt.w.s    $f10, $f8
/* 6C65C 8006BA5C AFA80010 */  sw         $t0, 0x10($sp)
/* 6C660 8006BA60 44075000 */  mfc1       $a3, $f10
/* 6C664 8006BA64 44D9F800 */  ctc1       $t9, $31
/* 6C668 8006BA68 0C00BB2B */  jal        func_8002ECAC
/* 6C66C 8006BA6C 00000000 */   nop
/* 6C670 8006BA70 8FBF001C */  lw         $ra, 0x1c($sp)
/* 6C674 8006BA74 27BD0020 */  addiu      $sp, $sp, 0x20
/* 6C678 8006BA78 03E00008 */  jr         $ra
/* 6C67C 8006BA7C 00000000 */   nop
