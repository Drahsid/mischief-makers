glabel func_800695E4
/* 6A1E4 800695E4 3086FFFF */  andi       $a2, $a0, 0xffff
/* 6A1E8 800695E8 00067080 */  sll        $t6, $a2, 2
/* 6A1EC 800695EC 01C67023 */  subu       $t6, $t6, $a2
/* 6A1F0 800695F0 000E7080 */  sll        $t6, $t6, 2
/* 6A1F4 800695F4 01C67021 */  addu       $t6, $t6, $a2
/* 6A1F8 800695F8 000E7080 */  sll        $t6, $t6, 2
/* 6A1FC 800695FC 01C67023 */  subu       $t6, $t6, $a2
/* 6A200 80069600 3C0F800F */  lui        $t7, %hi(gActors)
/* 6A204 80069604 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 6A208 80069608 000E70C0 */  sll        $t6, $t6, 3
/* 6A20C 8006960C 01CF1821 */  addu       $v1, $t6, $t7
/* 6A210 80069610 8478008C */  lh         $t8, 0x8c($v1)
/* 6A214 80069614 3C0141F0 */  lui        $at, 0x41f0
/* 6A218 80069618 44813000 */  mtc1       $at, $f6
/* 6A21C 8006961C C46400B4 */  lwc1       $f4, 0xb4($v1)
/* 6A220 80069620 44985000 */  mtc1       $t8, $f10
/* 6A224 80069624 46062202 */  mul.s      $f8, $f4, $f6
/* 6A228 80069628 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6A22C 8006962C AFA40020 */  sw         $a0, 0x20($sp)
/* 6A230 80069630 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6A234 80069634 46805420 */  cvt.s.w    $f16, $f10
/* 6A238 80069638 84640088 */  lh         $a0, 0x88($v1)
/* 6A23C 8006963C AFA30018 */  sw         $v1, 0x18($sp)
/* 6A240 80069640 46104480 */  add.s      $f18, $f8, $f16
/* 6A244 80069644 4459F800 */  cfc1       $t9, $31
/* 6A248 80069648 00000000 */  nop
/* 6A24C 8006964C 37210003 */  ori        $at, $t9, 3
/* 6A250 80069650 38210002 */  xori       $at, $at, 2
/* 6A254 80069654 44C1F800 */  ctc1       $at, $31
/* 6A258 80069658 00000000 */  nop
/* 6A25C 8006965C 46009124 */  cvt.w.s    $f4, $f18
/* 6A260 80069660 44022000 */  mfc1       $v0, $f4
/* 6A264 80069664 44D9F800 */  ctc1       $t9, $31
/* 6A268 80069668 00024400 */  sll        $t0, $v0, 0x10
/* 6A26C 8006966C 00084C03 */  sra        $t1, $t0, 0x10
/* 6A270 80069670 0C004AAD */  jal        func_80012AB4
/* 6A274 80069674 2525FFFD */   addiu     $a1, $t1, -3
/* 6A278 80069678 8FA30018 */  lw         $v1, 0x18($sp)
/* 6A27C 8006967C 304A0080 */  andi       $t2, $v0, 0x80
/* 6A280 80069680 11400006 */  beqz       $t2, .L8006969C
/* 6A284 80069684 8FBF0014 */   lw        $ra, 0x14($sp)
/* 6A288 80069688 846B008C */  lh         $t3, 0x8c($v1)
/* 6A28C 8006968C 00000000 */  nop
/* 6A290 80069690 256CFFFF */  addiu      $t4, $t3, -1
/* 6A294 80069694 A46C008C */  sh         $t4, 0x8c($v1)
/* 6A298 80069698 8FBF0014 */  lw         $ra, 0x14($sp)
.L8006969C:
/* 6A29C 8006969C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 6A2A0 800696A0 03E00008 */  jr         $ra
/* 6A2A4 800696A4 00000000 */   nop
