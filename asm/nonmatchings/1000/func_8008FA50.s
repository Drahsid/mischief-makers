glabel func_8008FA50
/* 90650 8008FA50 30AEFFFF */  andi       $t6, $a1, 0xffff
/* 90654 8008FA54 000E7880 */  sll        $t7, $t6, 2
/* 90658 8008FA58 01EE7823 */  subu       $t7, $t7, $t6
/* 9065C 8008FA5C 000F7880 */  sll        $t7, $t7, 2
/* 90660 8008FA60 01EE7821 */  addu       $t7, $t7, $t6
/* 90664 8008FA64 000F7880 */  sll        $t7, $t7, 2
/* 90668 8008FA68 01EE7823 */  subu       $t7, $t7, $t6
/* 9066C 8008FA6C 3C18800F */  lui        $t8, %hi(gActors)
/* 90670 8008FA70 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 90674 8008FA74 000F78C0 */  sll        $t7, $t7, 3
/* 90678 8008FA78 01F81021 */  addu       $v0, $t7, $t8
/* 9067C 8008FA7C 8C430154 */  lw         $v1, 0x154($v0)
/* 90680 8008FA80 AFA40000 */  sw         $a0, ($sp)
/* 90684 8008FA84 0003C823 */  negu       $t9, $v1
/* 90688 8008FA88 AFA50004 */  sw         $a1, 4($sp)
/* 9068C 8008FA8C 01C02825 */  or         $a1, $t6, $zero
/* 90690 8008FA90 07210004 */  bgez       $t9, .L8008FAA4
/* 90694 8008FA94 00194403 */   sra       $t0, $t9, 0x10
/* 90698 8008FA98 3401FFFF */  ori        $at, $zero, 0xffff
/* 9069C 8008FA9C 00390821 */  addu       $at, $at, $t9
/* 906A0 8008FAA0 00014403 */  sra        $t0, $at, 0x10
.L8008FAA4:
/* 906A4 8008FAA4 44882000 */  mtc1       $t0, $f4
/* 906A8 8008FAA8 00002025 */  or         $a0, $zero, $zero
/* 906AC 8008FAAC 468021A0 */  cvt.s.w    $f6, $f4
/* 906B0 8008FAB0 3C050004 */  lui        $a1, 4
/* 906B4 8008FAB4 00003825 */  or         $a3, $zero, $zero
/* 906B8 8008FAB8 E4460138 */  swc1       $f6, 0x138($v0)
/* 906BC 8008FABC 94C90000 */  lhu        $t1, ($a2)
/* 906C0 8008FAC0 00000000 */  nop
/* 906C4 8008FAC4 1120000F */  beqz       $t1, .L8008FB04
.L8008FAC8:
/* 906C8 8008FAC8 0064082A */   slt       $at, $v1, $a0
/* 906CC 8008FACC 10200005 */  beqz       $at, .L8008FAE4
/* 906D0 8008FAD0 00075040 */   sll       $t2, $a3, 1
/* 906D4 8008FAD4 00CA5821 */  addu       $t3, $a2, $t2
/* 906D8 8008FAD8 956C0000 */  lhu        $t4, ($t3)
/* 906DC 8008FADC 03E00008 */  jr         $ra
/* 906E0 8008FAE0 A44C0084 */   sh        $t4, 0x84($v0)
.L8008FAE4:
/* 906E4 8008FAE4 24E70001 */  addiu      $a3, $a3, 1
/* 906E8 8008FAE8 30EDFFFF */  andi       $t5, $a3, 0xffff
/* 906EC 8008FAEC 000D7040 */  sll        $t6, $t5, 1
/* 906F0 8008FAF0 00CE7821 */  addu       $t7, $a2, $t6
/* 906F4 8008FAF4 95F80000 */  lhu        $t8, ($t7)
/* 906F8 8008FAF8 01A03825 */  or         $a3, $t5, $zero
/* 906FC 8008FAFC 1700FFF2 */  bnez       $t8, .L8008FAC8
/* 90700 8008FB00 00852021 */   addu      $a0, $a0, $a1
.L8008FB04:
/* 90704 8008FB04 0007C840 */  sll        $t9, $a3, 1
/* 90708 8008FB08 00D94021 */  addu       $t0, $a2, $t9
/* 9070C 8008FB0C 9509FFFE */  lhu        $t1, -2($t0)
/* 90710 8008FB10 00000000 */  nop
/* 90714 8008FB14 A4490084 */  sh         $t1, 0x84($v0)
/* 90718 8008FB18 03E00008 */  jr         $ra
/* 9071C 8008FB1C 00000000 */   nop
