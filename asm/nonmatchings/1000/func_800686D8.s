glabel func_800686D8
/* 692D8 800686D8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 692DC 800686DC 000E7880 */  sll        $t7, $t6, 2
/* 692E0 800686E0 01EE7823 */  subu       $t7, $t7, $t6
/* 692E4 800686E4 000F7880 */  sll        $t7, $t7, 2
/* 692E8 800686E8 01EE7821 */  addu       $t7, $t7, $t6
/* 692EC 800686EC 000F7880 */  sll        $t7, $t7, 2
/* 692F0 800686F0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 692F4 800686F4 01EE7823 */  subu       $t7, $t7, $t6
/* 692F8 800686F8 3C18800F */  lui        $t8, %hi(gActors)
/* 692FC 800686FC AFB00018 */  sw         $s0, 0x18($sp)
/* 69300 80068700 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 69304 80068704 000F78C0 */  sll        $t7, $t7, 3
/* 69308 80068708 01F88021 */  addu       $s0, $t7, $t8
/* 6930C 8006870C 861900B0 */  lh         $t9, 0xb0($s0)
/* 69310 80068710 8608008C */  lh         $t0, 0x8c($s0)
/* 69314 80068714 AFBF001C */  sw         $ra, 0x1c($sp)
/* 69318 80068718 AFA40020 */  sw         $a0, 0x20($sp)
/* 6931C 8006871C 86050088 */  lh         $a1, 0x88($s0)
/* 69320 80068720 03283021 */  addu       $a2, $t9, $t0
/* 69324 80068724 01C02025 */  or         $a0, $t6, $zero
/* 69328 80068728 24C6FFF8 */  addiu      $a2, $a2, -8
/* 6932C 8006872C 0C007F28 */  jal        func_8001FCA0
/* 69330 80068730 A7AE0022 */   sh        $t6, 0x22($sp)
/* 69334 80068734 304900C0 */  andi       $t1, $v0, 0xc0
/* 69338 80068738 11200003 */  beqz       $t1, .L80068748
/* 6933C 8006873C 3C014150 */   lui       $at, 0x4150
/* 69340 80068740 10000047 */  b          .L80068860
/* 69344 80068744 00001025 */   or        $v0, $zero, $zero
.L80068748:
/* 69348 80068748 860A0088 */  lh         $t2, 0x88($s0)
/* 6934C 8006874C C60400B4 */  lwc1       $f4, 0xb4($s0)
/* 69350 80068750 44813000 */  mtc1       $at, $f6
/* 69354 80068754 448A5000 */  mtc1       $t2, $f10
/* 69358 80068758 46062202 */  mul.s      $f8, $f4, $f6
/* 6935C 8006875C 860C00B0 */  lh         $t4, 0xb0($s0)
/* 69360 80068760 860D008C */  lh         $t5, 0x8c($s0)
/* 69364 80068764 97A40022 */  lhu        $a0, 0x22($sp)
/* 69368 80068768 46805420 */  cvt.s.w    $f16, $f10
/* 6936C 8006876C 018D3021 */  addu       $a2, $t4, $t5
/* 69370 80068770 24C6FFF8 */  addiu      $a2, $a2, -8
/* 69374 80068774 46088481 */  sub.s      $f18, $f16, $f8
/* 69378 80068778 444BF800 */  cfc1       $t3, $31
/* 6937C 8006877C 00000000 */  nop
/* 69380 80068780 35610003 */  ori        $at, $t3, 3
/* 69384 80068784 38210002 */  xori       $at, $at, 2
/* 69388 80068788 44C1F800 */  ctc1       $at, $31
/* 6938C 8006878C 00000000 */  nop
/* 69390 80068790 46009124 */  cvt.w.s    $f4, $f18
/* 69394 80068794 44052000 */  mfc1       $a1, $f4
/* 69398 80068798 44CBF800 */  ctc1       $t3, $31
/* 6939C 8006879C 0C007F28 */  jal        func_8001FCA0
/* 693A0 800687A0 00000000 */   nop
/* 693A4 800687A4 304E00C0 */  andi       $t6, $v0, 0xc0
/* 693A8 800687A8 11C00026 */  beqz       $t6, .L80068844
/* 693AC 800687AC 3C014150 */   lui       $at, 0x4150
/* 693B0 800687B0 860F0088 */  lh         $t7, 0x88($s0)
/* 693B4 800687B4 C60600B4 */  lwc1       $f6, 0xb4($s0)
/* 693B8 800687B8 44815000 */  mtc1       $at, $f10
/* 693BC 800687BC 448F4000 */  mtc1       $t7, $f8
/* 693C0 800687C0 460A3402 */  mul.s      $f16, $f6, $f10
/* 693C4 800687C4 861900B0 */  lh         $t9, 0xb0($s0)
/* 693C8 800687C8 8608008C */  lh         $t0, 0x8c($s0)
/* 693CC 800687CC 97A40022 */  lhu        $a0, 0x22($sp)
/* 693D0 800687D0 468044A0 */  cvt.s.w    $f18, $f8
/* 693D4 800687D4 03283021 */  addu       $a2, $t9, $t0
/* 693D8 800687D8 24C6FFF8 */  addiu      $a2, $a2, -8
/* 693DC 800687DC 46128100 */  add.s      $f4, $f16, $f18
/* 693E0 800687E0 4458F800 */  cfc1       $t8, $31
/* 693E4 800687E4 00000000 */  nop
/* 693E8 800687E8 37010003 */  ori        $at, $t8, 3
/* 693EC 800687EC 38210002 */  xori       $at, $at, 2
/* 693F0 800687F0 44C1F800 */  ctc1       $at, $31
/* 693F4 800687F4 00000000 */  nop
/* 693F8 800687F8 460021A4 */  cvt.w.s    $f6, $f4
/* 693FC 800687FC 44053000 */  mfc1       $a1, $f6
/* 69400 80068800 44D8F800 */  ctc1       $t8, $31
/* 69404 80068804 0C007F28 */  jal        func_8001FCA0
/* 69408 80068808 00000000 */   nop
/* 6940C 8006880C 304900C0 */  andi       $t1, $v0, 0xc0
/* 69410 80068810 11200003 */  beqz       $t1, .L80068820
/* 69414 80068814 00000000 */   nop
/* 69418 80068818 10000011 */  b          .L80068860
/* 6941C 8006881C 00001025 */   or        $v0, $zero, $zero
.L80068820:
/* 69420 80068820 8E0A0080 */  lw         $t2, 0x80($s0)
/* 69424 80068824 00000000 */  nop
/* 69428 80068828 314B0020 */  andi       $t3, $t2, 0x20
/* 6942C 8006882C 11600003 */  beqz       $t3, .L8006883C
/* 69430 80068830 00000000 */   nop
/* 69434 80068834 1000000A */  b          .L80068860
/* 69438 80068838 24020001 */   addiu     $v0, $zero, 1
.L8006883C:
/* 6943C 8006883C 10000008 */  b          .L80068860
/* 69440 80068840 24020003 */   addiu     $v0, $zero, 3
.L80068844:
/* 69444 80068844 8E0C0080 */  lw         $t4, 0x80($s0)
/* 69448 80068848 24020004 */  addiu      $v0, $zero, 4
/* 6944C 8006884C 318D0020 */  andi       $t5, $t4, 0x20
/* 69450 80068850 11A00003 */  beqz       $t5, .L80068860
/* 69454 80068854 00000000 */   nop
/* 69458 80068858 10000001 */  b          .L80068860
/* 6945C 8006885C 24020002 */   addiu     $v0, $zero, 2
.L80068860:
/* 69460 80068860 8FBF001C */  lw         $ra, 0x1c($sp)
/* 69464 80068864 8FB00018 */  lw         $s0, 0x18($sp)
/* 69468 80068868 03E00008 */  jr         $ra
/* 6946C 8006886C 27BD0020 */   addiu     $sp, $sp, 0x20
