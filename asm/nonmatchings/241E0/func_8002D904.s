glabel func_8002D904
/* 2E504 8002D904 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2E508 8002D908 000E7880 */  sll        $t7, $t6, 2
/* 2E50C 8002D90C 01EE7823 */  subu       $t7, $t7, $t6
/* 2E510 8002D910 000F7880 */  sll        $t7, $t7, 2
/* 2E514 8002D914 01EE7821 */  addu       $t7, $t7, $t6
/* 2E518 8002D918 000F7880 */  sll        $t7, $t7, 2
/* 2E51C 8002D91C 01EE7823 */  subu       $t7, $t7, $t6
/* 2E520 8002D920 3C18800F */  lui        $t8, %hi(gActors)
/* 2E524 8002D924 3C014880 */  lui        $at, 0x4880
/* 2E528 8002D928 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 2E52C 8002D92C 000F78C0 */  sll        $t7, $t7, 3
/* 2E530 8002D930 44810000 */  mtc1       $at, $f0
/* 2E534 8002D934 01F81021 */  addu       $v0, $t7, $t8
/* 2E538 8002D938 AC450158 */  sw         $a1, 0x158($v0)
/* 2E53C 8002D93C 3C08800C */  lui        $t0, %hi(D_800BCCD0)
/* 2E540 8002D940 2508CCD0 */  addiu      $t0, $t0, %lo(D_800BCCD0)
/* 2E544 8002D944 AFA40000 */  sw         $a0, ($sp)
/* 2E548 8002D948 01C02025 */  or         $a0, $t6, $zero
/* 2E54C 8002D94C 04A10004 */  bgez       $a1, .L8002D960
/* 2E550 8002D950 0005CC03 */   sra       $t9, $a1, 0x10
/* 2E554 8002D954 3401FFFF */  ori        $at, $zero, 0xffff
/* 2E558 8002D958 00250821 */  addu       $at, $at, $a1
/* 2E55C 8002D95C 0001CC03 */  sra        $t9, $at, 0x10
.L8002D960:
/* 2E560 8002D960 03202825 */  or         $a1, $t9, $zero
/* 2E564 8002D964 44852000 */  mtc1       $a1, $f4
/* 2E568 8002D968 3C01800F */  lui        $at, %hi(D_800EB870)
/* 2E56C 8002D96C 468021A1 */  cvt.d.w    $f6, $f4
/* 2E570 8002D970 C429B870 */  lwc1       $f9, %lo(D_800EB870)($at)
/* 2E574 8002D974 C428B874 */  lwc1       $f8, -0x478c($at)
/* 2E578 8002D978 332903FF */  andi       $t1, $t9, 0x3ff
/* 2E57C 8002D97C 46283282 */  mul.d      $f10, $f6, $f8
/* 2E580 8002D980 00095080 */  sll        $t2, $t1, 2
/* 2E584 8002D984 010A5821 */  addu       $t3, $t0, $t2
/* 2E588 8002D988 C5720000 */  lwc1       $f18, ($t3)
/* 2E58C 8002D98C 272DFF00 */  addiu      $t5, $t9, -0x100
/* 2E590 8002D990 46009102 */  mul.s      $f4, $f18, $f0
/* 2E594 8002D994 46205420 */  cvt.s.d    $f16, $f10
/* 2E598 8002D998 31AE03FF */  andi       $t6, $t5, 0x3ff
/* 2E59C 8002D99C 000E7880 */  sll        $t7, $t6, 2
/* 2E5A0 8002D9A0 444CF800 */  cfc1       $t4, $31
/* 2E5A4 8002D9A4 010FC021 */  addu       $t8, $t0, $t7
/* 2E5A8 8002D9A8 35810003 */  ori        $at, $t4, 3
/* 2E5AC 8002D9AC 38210002 */  xori       $at, $at, 2
/* 2E5B0 8002D9B0 44C1F800 */  ctc1       $at, $31
/* 2E5B4 8002D9B4 C7080000 */  lwc1       $f8, ($t8)
/* 2E5B8 8002D9B8 460021A4 */  cvt.w.s    $f6, $f4
/* 2E5BC 8002D9BC E45000C4 */  swc1       $f16, 0xc4($v0)
/* 2E5C0 8002D9C0 44CCF800 */  ctc1       $t4, $31
/* 2E5C4 8002D9C4 44033000 */  mfc1       $v1, $f6
/* 2E5C8 8002D9C8 46004282 */  mul.s      $f10, $f8, $f0
/* 2E5CC 8002D9CC AC430150 */  sw         $v1, 0x150($v0)
/* 2E5D0 8002D9D0 4459F800 */  cfc1       $t9, $31
/* 2E5D4 8002D9D4 00000000 */  nop
/* 2E5D8 8002D9D8 37210003 */  ori        $at, $t9, 3
/* 2E5DC 8002D9DC 38210002 */  xori       $at, $at, 2
/* 2E5E0 8002D9E0 44C1F800 */  ctc1       $at, $31
/* 2E5E4 8002D9E4 00000000 */  nop
/* 2E5E8 8002D9E8 46005424 */  cvt.w.s    $f16, $f10
/* 2E5EC 8002D9EC 44068000 */  mfc1       $a2, $f16
/* 2E5F0 8002D9F0 44D9F800 */  ctc1       $t9, $31
/* 2E5F4 8002D9F4 AC460154 */  sw         $a2, 0x154($v0)
/* 2E5F8 8002D9F8 04610003 */  bgez       $v1, .L8002DA08
/* 2E5FC 8002D9FC 00033943 */   sra       $a3, $v1, 5
/* 2E600 8002DA00 2461001F */  addiu      $at, $v1, 0x1f
/* 2E604 8002DA04 00013943 */  sra        $a3, $at, 5
.L8002DA08:
/* 2E608 8002DA08 AC470164 */  sw         $a3, 0x164($v0)
/* 2E60C 8002DA0C 04C10003 */  bgez       $a2, .L8002DA1C
/* 2E610 8002DA10 00064943 */   sra       $t1, $a2, 5
/* 2E614 8002DA14 24C1001F */  addiu      $at, $a2, 0x1f
/* 2E618 8002DA18 00014943 */  sra        $t1, $at, 5
.L8002DA1C:
/* 2E61C 8002DA1C 04E10005 */  bgez       $a3, .L8002DA34
/* 2E620 8002DA20 AC490168 */   sw        $t1, 0x168($v0)
/* 2E624 8002DA24 8C4A0164 */  lw         $t2, 0x164($v0)
/* 2E628 8002DA28 00000000 */  nop
/* 2E62C 8002DA2C 000A5823 */  negu       $t3, $t2
/* 2E630 8002DA30 AC4B0164 */  sw         $t3, 0x164($v0)
.L8002DA34:
/* 2E634 8002DA34 8C430168 */  lw         $v1, 0x168($v0)
/* 2E638 8002DA38 00000000 */  nop
/* 2E63C 8002DA3C 04610003 */  bgez       $v1, .L8002DA4C
/* 2E640 8002DA40 00000000 */   nop
/* 2E644 8002DA44 00036023 */  negu       $t4, $v1
/* 2E648 8002DA48 AC4C0168 */  sw         $t4, 0x168($v0)
.L8002DA4C:
/* 2E64C 8002DA4C 8C4D0150 */  lw         $t5, 0x150($v0)
/* 2E650 8002DA50 24040003 */  addiu      $a0, $zero, 3
/* 2E654 8002DA54 000D7023 */  negu       $t6, $t5
/* 2E658 8002DA58 01C4001A */  div        $zero, $t6, $a0
/* 2E65C 8002DA5C 8C580154 */  lw         $t8, 0x154($v0)
/* 2E660 8002DA60 14800002 */  bnez       $a0, .L8002DA6C
/* 2E664 8002DA64 00000000 */   nop
/* 2E668 8002DA68 0007000D */  break      7
.L8002DA6C:
/* 2E66C 8002DA6C 2401FFFF */   addiu     $at, $zero, -1
/* 2E670 8002DA70 14810004 */  bne        $a0, $at, .L8002DA84
/* 2E674 8002DA74 3C018000 */   lui       $at, 0x8000
/* 2E678 8002DA78 15C10002 */  bne        $t6, $at, .L8002DA84
/* 2E67C 8002DA7C 00000000 */   nop
/* 2E680 8002DA80 0006000D */  break      6
.L8002DA84:
/* 2E684 8002DA84 0018C823 */   negu      $t9, $t8
/* 2E688 8002DA88 8C4300F8 */  lw         $v1, 0xf8($v0)
/* 2E68C 8002DA8C 00000000 */  nop
/* 2E690 8002DA90 00035023 */  negu       $t2, $v1
/* 2E694 8002DA94 00007812 */  mflo       $t7
/* 2E698 8002DA98 AC4F00EC */  sw         $t7, 0xec($v0)
/* 2E69C 8002DA9C 00000000 */  nop
/* 2E6A0 8002DAA0 0324001A */  div        $zero, $t9, $a0
/* 2E6A4 8002DAA4 14800002 */  bnez       $a0, .L8002DAB0
/* 2E6A8 8002DAA8 00000000 */   nop
/* 2E6AC 8002DAAC 0007000D */  break      7
.L8002DAB0:
/* 2E6B0 8002DAB0 2401FFFF */   addiu     $at, $zero, -1
/* 2E6B4 8002DAB4 14810004 */  bne        $a0, $at, .L8002DAC8
/* 2E6B8 8002DAB8 3C018000 */   lui       $at, 0x8000
/* 2E6BC 8002DABC 17210002 */  bne        $t9, $at, .L8002DAC8
/* 2E6C0 8002DAC0 00000000 */   nop
/* 2E6C4 8002DAC4 0006000D */  break      6
.L8002DAC8:
/* 2E6C8 8002DAC8 00004812 */   mflo      $t1
/* 2E6CC 8002DACC AC4900F0 */  sw         $t1, 0xf0($v0)
/* 2E6D0 8002DAD0 18600003 */  blez       $v1, .L8002DAE0
/* 2E6D4 8002DAD4 00000000 */   nop
/* 2E6D8 8002DAD8 10000002 */  b          .L8002DAE4
/* 2E6DC 8002DADC AC4300F8 */   sw        $v1, 0xf8($v0)
.L8002DAE0:
/* 2E6E0 8002DAE0 AC4A00F8 */  sw         $t2, 0xf8($v0)
.L8002DAE4:
/* 2E6E4 8002DAE4 8C4B00EC */  lw         $t3, 0xec($v0)
/* 2E6E8 8002DAE8 00000000 */  nop
/* 2E6EC 8002DAEC 19600005 */  blez       $t3, .L8002DB04
/* 2E6F0 8002DAF0 00000000 */   nop
/* 2E6F4 8002DAF4 8C4C00F8 */  lw         $t4, 0xf8($v0)
/* 2E6F8 8002DAF8 00000000 */  nop
/* 2E6FC 8002DAFC 000C6823 */  negu       $t5, $t4
/* 2E700 8002DB00 AC4D00F8 */  sw         $t5, 0xf8($v0)
.L8002DB04:
/* 2E704 8002DB04 03E00008 */  jr         $ra
/* 2E708 8002DB08 00000000 */   nop