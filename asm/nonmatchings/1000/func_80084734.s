glabel func_80084734
/* 85334 80084734 308EFFFF */  andi       $t6, $a0, 0xffff
/* 85338 80084738 000E7880 */  sll        $t7, $t6, 2
/* 8533C 8008473C 01EE7823 */  subu       $t7, $t7, $t6
/* 85340 80084740 000F7880 */  sll        $t7, $t7, 2
/* 85344 80084744 01EE7821 */  addu       $t7, $t7, $t6
/* 85348 80084748 000F7880 */  sll        $t7, $t7, 2
/* 8534C 8008474C 01EE7823 */  subu       $t7, $t7, $t6
/* 85350 80084750 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 85354 80084754 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 85358 80084758 000F78C0 */  sll        $t7, $t7, 3
/* 8535C 8008475C 01F81021 */  addu       $v0, $t7, $t8
/* 85360 80084760 8C4300F0 */  lw         $v1, 0xf0($v0)
/* 85364 80084764 AFA40000 */  sw         $a0, ($sp)
/* 85368 80084768 1860000D */  blez       $v1, .L800847A0
/* 8536C 8008476C 00000000 */   nop
/* 85370 80084770 8C590098 */  lw         $t9, 0x98($v0)
/* 85374 80084774 24090005 */  addiu      $t1, $zero, 5
/* 85378 80084778 33280010 */  andi       $t0, $t9, 0x10
/* 8537C 8008477C 11000008 */  beqz       $t0, .L800847A0
/* 85380 80084780 00035023 */   negu      $t2, $v1
/* 85384 80084784 A44900D0 */  sh         $t1, 0xd0($v0)
/* 85388 80084788 AC4000EC */  sw         $zero, 0xec($v0)
/* 8538C 8008478C 05410003 */  bgez       $t2, .L8008479C
/* 85390 80084790 000A5843 */   sra       $t3, $t2, 1
/* 85394 80084794 25410001 */  addiu      $at, $t2, 1
/* 85398 80084798 00015843 */  sra        $t3, $at, 1
.L8008479C:
/* 8539C 8008479C AC4B00F0 */  sw         $t3, 0xf0($v0)
.L800847A0:
/* 853A0 800847A0 8C4300EC */  lw         $v1, 0xec($v0)
/* 853A4 800847A4 00000000 */  nop
/* 853A8 800847A8 04610006 */  bgez       $v1, .L800847C4
/* 853AC 800847AC 00000000 */   nop
/* 853B0 800847B0 8C4C0098 */  lw         $t4, 0x98($v0)
/* 853B4 800847B4 00000000 */  nop
/* 853B8 800847B8 318D000C */  andi       $t5, $t4, 0xc
/* 853BC 800847BC 15A00008 */  bnez       $t5, .L800847E0
/* 853C0 800847C0 00000000 */   nop
.L800847C4:
/* 853C4 800847C4 18600027 */  blez       $v1, .L80084864
/* 853C8 800847C8 00000000 */   nop
/* 853CC 800847CC 8C4E0098 */  lw         $t6, 0x98($v0)
/* 853D0 800847D0 00000000 */  nop
/* 853D4 800847D4 31CF0008 */  andi       $t7, $t6, 8
/* 853D8 800847D8 11E00022 */  beqz       $t7, .L80084864
/* 853DC 800847DC 00000000 */   nop
.L800847E0:
/* 853E0 800847E0 8C580154 */  lw         $t8, 0x154($v0)
/* 853E4 800847E4 3C01437F */  lui        $at, 0x437f
/* 853E8 800847E8 3B190001 */  xori       $t9, $t8, 1
/* 853EC 800847EC 13200005 */  beqz       $t9, .L80084804
/* 853F0 800847F0 AC590154 */   sw        $t9, 0x154($v0)
/* 853F4 800847F4 3C01800F */  lui        $at, %hi(D_800ED110)
/* 853F8 800847F8 C424D110 */  lwc1       $f4, %lo(D_800ED110)($at)
/* 853FC 800847FC 10000004 */  b          .L80084810
/* 85400 80084800 E4440114 */   swc1      $f4, 0x114($v0)
.L80084804:
/* 85404 80084804 44813000 */  mtc1       $at, $f6
/* 85408 80084808 00000000 */  nop
/* 8540C 8008480C E4460114 */  swc1       $f6, 0x114($v0)
.L80084810:
/* 85410 80084810 8C4900EC */  lw         $t1, 0xec($v0)
/* 85414 80084814 8C4C00F0 */  lw         $t4, 0xf0($v0)
/* 85418 80084818 00095023 */  negu       $t2, $t1
/* 8541C 8008481C 05410003 */  bgez       $t2, .L8008482C
/* 85420 80084820 000A5843 */   sra       $t3, $t2, 1
/* 85424 80084824 25410001 */  addiu      $at, $t2, 1
/* 85428 80084828 00015843 */  sra        $t3, $at, 1
.L8008482C:
/* 8542C 8008482C 8C4E00F8 */  lw         $t6, 0xf8($v0)
/* 85430 80084830 AC4B00EC */  sw         $t3, 0xec($v0)
/* 85434 80084834 05810003 */  bgez       $t4, .L80084844
/* 85438 80084838 000C6843 */   sra       $t5, $t4, 1
/* 8543C 8008483C 25810001 */  addiu      $at, $t4, 1
/* 85440 80084840 00016843 */  sra        $t5, $at, 1
.L80084844:
/* 85444 80084844 000E7823 */  negu       $t7, $t6
/* 85448 80084848 AC4D00F0 */  sw         $t5, 0xf0($v0)
/* 8544C 8008484C 05E10003 */  bgez       $t7, .L8008485C
/* 85450 80084850 000FC043 */   sra       $t8, $t7, 1
/* 85454 80084854 25E10001 */  addiu      $at, $t7, 1
/* 85458 80084858 0001C043 */  sra        $t8, $at, 1
.L8008485C:
/* 8545C 8008485C AC5800F8 */  sw         $t8, 0xf8($v0)
/* 85460 80084860 AC40015C */  sw         $zero, 0x15c($v0)
.L80084864:
/* 85464 80084864 03E00008 */  jr         $ra
/* 85468 80084868 00000000 */   nop
