glabel func_80074938
/* 75538 80074938 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 7553C 8007493C 30A3FFFF */  andi       $v1, $a1, 0xffff
/* 75540 80074940 AFB20020 */  sw         $s2, 0x20($sp)
/* 75544 80074944 30620001 */  andi       $v0, $v1, 1
/* 75548 80074948 3092FFFF */  andi       $s2, $a0, 0xffff
/* 7554C 8007494C AFBF0024 */  sw         $ra, 0x24($sp)
/* 75550 80074950 AFA40038 */  sw         $a0, 0x38($sp)
/* 75554 80074954 3046FFFF */  andi       $a2, $v0, 0xffff
/* 75558 80074958 AFB1001C */  sw         $s1, 0x1c($sp)
/* 7555C 8007495C AFB00018 */  sw         $s0, 0x18($sp)
/* 75560 80074960 AFA5003C */  sw         $a1, 0x3c($sp)
/* 75564 80074964 30C4FFFF */  andi       $a0, $a2, 0xffff
/* 75568 80074968 AFA60028 */  sw         $a2, 0x28($sp)
/* 7556C 8007496C AFA2002C */  sw         $v0, 0x2c($sp)
/* 75570 80074970 0C01D0AE */  jal        func_800742B8
/* 75574 80074974 AFA30030 */   sw        $v1, 0x30($sp)
/* 75578 80074978 8FA30030 */  lw         $v1, 0x30($sp)
/* 7557C 8007497C 8FA60028 */  lw         $a2, 0x28($sp)
/* 75580 80074980 104000A4 */  beqz       $v0, .L80074C14
/* 75584 80074984 3051FFFF */   andi      $s1, $v0, 0xffff
/* 75588 80074988 00117880 */  sll        $t7, $s1, 2
/* 7558C 8007498C 01F17823 */  subu       $t7, $t7, $s1
/* 75590 80074990 000F7880 */  sll        $t7, $t7, 2
/* 75594 80074994 01F17821 */  addu       $t7, $t7, $s1
/* 75598 80074998 000F7880 */  sll        $t7, $t7, 2
/* 7559C 8007499C 01F17823 */  subu       $t7, $t7, $s1
/* 755A0 800749A0 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 755A4 800749A4 30791F00 */  andi       $t9, $v1, 0x1f00
/* 755A8 800749A8 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 755AC 800749AC 000F78C0 */  sll        $t7, $t7, 3
/* 755B0 800749B0 01F88021 */  addu       $s0, $t7, $t8
/* 755B4 800749B4 07210003 */  bgez       $t9, .L800749C4
/* 755B8 800749B8 00194203 */   sra       $t0, $t9, 8
/* 755BC 800749BC 272100FF */  addiu      $at, $t9, 0xff
/* 755C0 800749C0 00014203 */  sra        $t0, $at, 8
.L800749C4:
/* 755C4 800749C4 A60800D8 */  sh         $t0, 0xd8($s0)
/* 755C8 800749C8 3224FFFF */  andi       $a0, $s1, 0xffff
/* 755CC 800749CC 0C01D201 */  jal        func_80074804
/* 755D0 800749D0 30C5FFFF */   andi      $a1, $a2, 0xffff
/* 755D4 800749D4 960900D8 */  lhu        $t1, 0xd8($s0)
/* 755D8 800749D8 3245FFFF */  andi       $a1, $s2, 0xffff
/* 755DC 800749DC 312A0001 */  andi       $t2, $t1, 1
/* 755E0 800749E0 1140000E */  beqz       $t2, .L80074A1C
/* 755E4 800749E4 24040052 */   addiu     $a0, $zero, 0x52
/* 755E8 800749E8 860B00E4 */  lh         $t3, 0xe4($s0)
/* 755EC 800749EC 960D0094 */  lhu        $t5, 0x94($s0)
/* 755F0 800749F0 05610003 */  bgez       $t3, .L80074A00
/* 755F4 800749F4 000B6043 */   sra       $t4, $t3, 1
/* 755F8 800749F8 25610001 */  addiu      $at, $t3, 1
/* 755FC 800749FC 00016043 */  sra        $t4, $at, 1
.L80074A00:
/* 75600 80074A00 31AEFFFE */  andi       $t6, $t5, 0xfffe
/* 75604 80074A04 A60C00E4 */  sh         $t4, 0xe4($s0)
/* 75608 80074A08 A60E0094 */  sh         $t6, 0x94($s0)
/* 7560C 80074A0C 0C000DB2 */  jal        func_800036C8
/* 75610 80074A10 240400D6 */   addiu     $a0, $zero, 0xd6
/* 75614 80074A14 10000004 */  b          .L80074A28
/* 75618 80074A18 00127880 */   sll       $t7, $s2, 2
.L80074A1C:
/* 7561C 80074A1C 0C000DB2 */  jal        func_800036C8
/* 75620 80074A20 3245FFFF */   andi      $a1, $s2, 0xffff
/* 75624 80074A24 00127880 */  sll        $t7, $s2, 2
.L80074A28:
/* 75628 80074A28 01F27823 */  subu       $t7, $t7, $s2
/* 7562C 80074A2C 000F7880 */  sll        $t7, $t7, 2
/* 75630 80074A30 01F27821 */  addu       $t7, $t7, $s2
/* 75634 80074A34 000F7880 */  sll        $t7, $t7, 2
/* 75638 80074A38 01F27823 */  subu       $t7, $t7, $s2
/* 7563C 80074A3C 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 75640 80074A40 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 75644 80074A44 000F78C0 */  sll        $t7, $t7, 3
/* 75648 80074A48 01F83021 */  addu       $a2, $t7, $t8
/* 7564C 80074A4C 8CC80080 */  lw         $t0, 0x80($a2)
/* 75650 80074A50 8E190080 */  lw         $t9, 0x80($s0)
/* 75654 80074A54 31090020 */  andi       $t1, $t0, 0x20
/* 75658 80074A58 03295021 */  addu       $t2, $t9, $t1
/* 7565C 80074A5C AE0A0080 */  sw         $t2, 0x80($s0)
/* 75660 80074A60 AFA60030 */  sw         $a2, 0x30($sp)
/* 75664 80074A64 3224FFFF */  andi       $a0, $s1, 0xffff
/* 75668 80074A68 0C01D12B */  jal        func_800744AC
/* 7566C 80074A6C 3245FFFF */   andi      $a1, $s2, 0xffff
/* 75670 80074A70 3C04800C */  lui        $a0, %hi(D_800BCCD0)
/* 75674 80074A74 304B03FF */  andi       $t3, $v0, 0x3ff
/* 75678 80074A78 2484CCD0 */  addiu      $a0, $a0, %lo(D_800BCCD0)
/* 7567C 80074A7C 000B6080 */  sll        $t4, $t3, 2
/* 75680 80074A80 3C01C700 */  lui        $at, 0xc700
/* 75684 80074A84 008C6821 */  addu       $t5, $a0, $t4
/* 75688 80074A88 44816000 */  mtc1       $at, $f12
/* 7568C 80074A8C C5A00000 */  lwc1       $f0, ($t5)
/* 75690 80074A90 2458FF00 */  addiu      $t8, $v0, -0x100
/* 75694 80074A94 460C0102 */  mul.s      $f4, $f0, $f12
/* 75698 80074A98 330803FF */  andi       $t0, $t8, 0x3ff
/* 7569C 80074A9C 0008C880 */  sll        $t9, $t0, 2
/* 756A0 80074AA0 00994821 */  addu       $t1, $a0, $t9
/* 756A4 80074AA4 444EF800 */  cfc1       $t6, $31
/* 756A8 80074AA8 C5220000 */  lwc1       $f2, ($t1)
/* 756AC 80074AAC 35C10003 */  ori        $at, $t6, 3
/* 756B0 80074AB0 38210002 */  xori       $at, $at, 2
/* 756B4 80074AB4 44C1F800 */  ctc1       $at, $31
/* 756B8 80074AB8 8FAC002C */  lw         $t4, 0x2c($sp)
/* 756BC 80074ABC 460021A4 */  cvt.w.s    $f6, $f4
/* 756C0 80074AC0 8FA60030 */  lw         $a2, 0x30($sp)
/* 756C4 80074AC4 44CEF800 */  ctc1       $t6, $31
/* 756C8 80074AC8 440F3000 */  mfc1       $t7, $f6
/* 756CC 80074ACC 460C1202 */  mul.s      $f8, $f2, $f12
/* 756D0 80074AD0 00401825 */  or         $v1, $v0, $zero
/* 756D4 80074AD4 00032400 */  sll        $a0, $v1, 0x10
/* 756D8 80074AD8 AE0F00EC */  sw         $t7, 0xec($s0)
/* 756DC 80074ADC 444AF800 */  cfc1       $t2, $31
/* 756E0 80074AE0 00000000 */  nop
/* 756E4 80074AE4 35410003 */  ori        $at, $t2, 3
/* 756E8 80074AE8 38210002 */  xori       $at, $at, 2
/* 756EC 80074AEC 44C1F800 */  ctc1       $at, $31
/* 756F0 80074AF0 3C014620 */  lui        $at, 0x4620
/* 756F4 80074AF4 460042A4 */  cvt.w.s    $f10, $f8
/* 756F8 80074AF8 440B5000 */  mfc1       $t3, $f10
/* 756FC 80074AFC 44CAF800 */  ctc1       $t2, $31
/* 75700 80074B00 1180001B */  beqz       $t4, .L80074B70
/* 75704 80074B04 AE0B00F0 */   sw        $t3, 0xf0($s0)
/* 75708 80074B08 3C014690 */  lui        $at, 0x4690
/* 7570C 80074B0C 44816000 */  mtc1       $at, $f12
/* 75710 80074B10 00000000 */  nop
/* 75714 80074B14 460C0402 */  mul.s      $f16, $f0, $f12
/* 75718 80074B18 444DF800 */  cfc1       $t5, $31
/* 7571C 80074B1C 00000000 */  nop
/* 75720 80074B20 35A10003 */  ori        $at, $t5, 3
/* 75724 80074B24 38210002 */  xori       $at, $at, 2
/* 75728 80074B28 44C1F800 */  ctc1       $at, $31
/* 7572C 80074B2C 00000000 */  nop
/* 75730 80074B30 460084A4 */  cvt.w.s    $f18, $f16
/* 75734 80074B34 44CDF800 */  ctc1       $t5, $31
/* 75738 80074B38 440E9000 */  mfc1       $t6, $f18
/* 7573C 80074B3C 460C1102 */  mul.s      $f4, $f2, $f12
/* 75740 80074B40 AE0E0158 */  sw         $t6, 0x158($s0)
/* 75744 80074B44 444FF800 */  cfc1       $t7, $31
/* 75748 80074B48 00000000 */  nop
/* 7574C 80074B4C 35E10003 */  ori        $at, $t7, 3
/* 75750 80074B50 38210002 */  xori       $at, $at, 2
/* 75754 80074B54 44C1F800 */  ctc1       $at, $31
/* 75758 80074B58 00000000 */  nop
/* 7575C 80074B5C 460021A4 */  cvt.w.s    $f6, $f4
/* 75760 80074B60 44183000 */  mfc1       $t8, $f6
/* 75764 80074B64 44CFF800 */  ctc1       $t7, $31
/* 75768 80074B68 1000001A */  b          .L80074BD4
/* 7576C 80074B6C AE18015C */   sw        $t8, 0x15c($s0)
.L80074B70:
/* 75770 80074B70 44816000 */  mtc1       $at, $f12
/* 75774 80074B74 00000000 */  nop
/* 75778 80074B78 460C0202 */  mul.s      $f8, $f0, $f12
/* 7577C 80074B7C 4448F800 */  cfc1       $t0, $31
/* 75780 80074B80 00000000 */  nop
/* 75784 80074B84 35010003 */  ori        $at, $t0, 3
/* 75788 80074B88 38210002 */  xori       $at, $at, 2
/* 7578C 80074B8C 44C1F800 */  ctc1       $at, $31
/* 75790 80074B90 00000000 */  nop
/* 75794 80074B94 460042A4 */  cvt.w.s    $f10, $f8
/* 75798 80074B98 44C8F800 */  ctc1       $t0, $31
/* 7579C 80074B9C 44195000 */  mfc1       $t9, $f10
/* 757A0 80074BA0 460C1402 */  mul.s      $f16, $f2, $f12
/* 757A4 80074BA4 AE190158 */  sw         $t9, 0x158($s0)
/* 757A8 80074BA8 4449F800 */  cfc1       $t1, $31
/* 757AC 80074BAC 00000000 */  nop
/* 757B0 80074BB0 35210003 */  ori        $at, $t1, 3
/* 757B4 80074BB4 38210002 */  xori       $at, $at, 2
/* 757B8 80074BB8 44C1F800 */  ctc1       $at, $31
/* 757BC 80074BBC 00000000 */  nop
/* 757C0 80074BC0 460084A4 */  cvt.w.s    $f18, $f16
/* 757C4 80074BC4 440A9000 */  mfc1       $t2, $f18
/* 757C8 80074BC8 44C9F800 */  ctc1       $t1, $31
/* 757CC 80074BCC AE0A015C */  sw         $t2, 0x15c($s0)
/* 757D0 80074BD0 00000000 */  nop
.L80074BD4:
/* 757D4 80074BD4 8E0B0080 */  lw         $t3, 0x80($s0)
/* 757D8 80074BD8 00036823 */  negu       $t5, $v1
/* 757DC 80074BDC 316C0020 */  andi       $t4, $t3, 0x20
/* 757E0 80074BE0 11800006 */  beqz       $t4, .L80074BFC
/* 757E4 80074BE4 000D7400 */   sll       $t6, $t5, 0x10
/* 757E8 80074BE8 3C010200 */  lui        $at, 0x200
/* 757EC 80074BEC 01C17821 */  addu       $t7, $t6, $at
/* 757F0 80074BF0 AE0F016C */  sw         $t7, 0x16c($s0)
/* 757F4 80074BF4 10000002 */  b          .L80074C00
/* 757F8 80074BF8 00032400 */   sll       $a0, $v1, 0x10
.L80074BFC:
/* 757FC 80074BFC AE04016C */  sw         $a0, 0x16c($s0)
.L80074C00:
/* 75800 80074C00 AE040170 */  sw         $a0, 0x170($s0)
/* 75804 80074C04 AE120184 */  sw         $s2, 0x184($s0)
/* 75808 80074C08 94D800D2 */  lhu        $t8, 0xd2($a2)
/* 7580C 80074C0C 00000000 */  nop
/* 75810 80074C10 AE180188 */  sw         $t8, 0x188($s0)
.L80074C14:
/* 75814 80074C14 8FBF0024 */  lw         $ra, 0x24($sp)
/* 75818 80074C18 02201025 */  or         $v0, $s1, $zero
/* 7581C 80074C1C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 75820 80074C20 8FB00018 */  lw         $s0, 0x18($sp)
/* 75824 80074C24 8FB20020 */  lw         $s2, 0x20($sp)
/* 75828 80074C28 03E00008 */  jr         $ra
/* 7582C 80074C2C 27BD0038 */   addiu     $sp, $sp, 0x38
