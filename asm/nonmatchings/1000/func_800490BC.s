glabel func_800490BC
/* 49CBC 800490BC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 49CC0 800490C0 000EC880 */  sll        $t9, $t6, 2
/* 49CC4 800490C4 032EC823 */  subu       $t9, $t9, $t6
/* 49CC8 800490C8 0019C880 */  sll        $t9, $t9, 2
/* 49CCC 800490CC 032EC821 */  addu       $t9, $t9, $t6
/* 49CD0 800490D0 0019C880 */  sll        $t9, $t9, 2
/* 49CD4 800490D4 3C03800F */  lui        $v1, %hi(gActors)
/* 49CD8 800490D8 032EC823 */  subu       $t9, $t9, $t6
/* 49CDC 800490DC 2463F510 */  addiu      $v1, $v1, %lo(gActors)
/* 49CE0 800490E0 0019C8C0 */  sll        $t9, $t9, 3
/* 49CE4 800490E4 00791021 */  addu       $v0, $v1, $t9
/* 49CE8 800490E8 8C4800F0 */  lw         $t0, 0xf0($v0)
/* 49CEC 800490EC AFA60008 */  sw         $a2, 8($sp)
/* 49CF0 800490F0 00067C00 */  sll        $t7, $a2, 0x10
/* 49CF4 800490F4 000F3403 */  sra        $a2, $t7, 0x10
/* 49CF8 800490F8 19000003 */  blez       $t0, .L80049108
/* 49CFC 800490FC AFA40000 */   sw        $a0, ($sp)
/* 49D00 80049100 03E00008 */  jr         $ra
/* 49D04 80049104 00001025 */   or        $v0, $zero, $zero
.L80049108:
/* 49D08 80049108 8C490098 */  lw         $t1, 0x98($v0)
/* 49D0C 8004910C 00000000 */  nop
/* 49D10 80049110 312A0020 */  andi       $t2, $t1, 0x20
/* 49D14 80049114 15400003 */  bnez       $t2, .L80049124
/* 49D18 80049118 00000000 */   nop
/* 49D1C 8004911C 03E00008 */  jr         $ra
/* 49D20 80049120 00001025 */   or        $v0, $zero, $zero
.L80049124:
/* 49D24 80049124 44862000 */  mtc1       $a2, $f4
/* 49D28 80049128 C4680120 */  lwc1       $f8, 0x120($v1)
/* 49D2C 8004912C 468021A0 */  cvt.s.w    $f6, $f4
/* 49D30 80049130 8C4E0080 */  lw         $t6, 0x80($v0)
/* 49D34 80049134 AC4000F0 */  sw         $zero, 0xf0($v0)
/* 49D38 80049138 46083282 */  mul.s      $f10, $f6, $f8
/* 49D3C 8004913C 444BF800 */  cfc1       $t3, $31
/* 49D40 80049140 00000000 */  nop
/* 49D44 80049144 35610003 */  ori        $at, $t3, 3
/* 49D48 80049148 38210002 */  xori       $at, $at, 2
/* 49D4C 8004914C 44C1F800 */  ctc1       $at, $31
/* 49D50 80049150 3C01FF3C */  lui        $at, 0xff3c
/* 49D54 80049154 46005424 */  cvt.w.s    $f16, $f10
/* 49D58 80049158 3421B53F */  ori        $at, $at, 0xb53f
/* 49D5C 8004915C 01C17824 */  and        $t7, $t6, $at
/* 49D60 80049160 44068000 */  mfc1       $a2, $f16
/* 49D64 80049164 3C010001 */  lui        $at, 1
/* 49D68 80049168 AC4F0080 */  sw         $t7, 0x80($v0)
/* 49D6C 8004916C 01E1C825 */  or         $t9, $t7, $at
/* 49D70 80049170 44CBF800 */  ctc1       $t3, $31
/* 49D74 80049174 00066400 */  sll        $t4, $a2, 0x10
/* 49D78 80049178 000C6C03 */  sra        $t5, $t4, 0x10
/* 49D7C 8004917C 04A0000B */  bltz       $a1, .L800491AC
/* 49D80 80049180 AC590080 */   sw        $t9, 0x80($v0)
/* 49D84 80049184 844300B0 */  lh         $v1, 0xb0($v0)
/* 49D88 80049188 AC45017C */  sw         $a1, 0x17c($v0)
/* 49D8C 8004918C 01A3082A */  slt        $at, $t5, $v1
/* 49D90 80049190 10200006 */  beqz       $at, .L800491AC
/* 49D94 80049194 00000000 */   nop
/* 49D98 80049198 8448008C */  lh         $t0, 0x8c($v0)
/* 49D9C 8004919C 00000000 */  nop
/* 49DA0 800491A0 01034821 */  addu       $t1, $t0, $v1
/* 49DA4 800491A4 012D5023 */  subu       $t2, $t1, $t5
/* 49DA8 800491A8 A44A008C */  sh         $t2, 0x8c($v0)
.L800491AC:
/* 49DAC 800491AC 24020001 */  addiu      $v0, $zero, 1
/* 49DB0 800491B0 03E00008 */  jr         $ra
/* 49DB4 800491B4 00000000 */   nop
