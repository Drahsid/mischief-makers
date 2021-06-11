glabel func_8008EA4C
/* 8F64C 8008EA4C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8F650 8008EA50 000E7880 */  sll        $t7, $t6, 2
/* 8F654 8008EA54 01EE7823 */  subu       $t7, $t7, $t6
/* 8F658 8008EA58 000F7880 */  sll        $t7, $t7, 2
/* 8F65C 8008EA5C 01EE7821 */  addu       $t7, $t7, $t6
/* 8F660 8008EA60 000F7880 */  sll        $t7, $t7, 2
/* 8F664 8008EA64 3C05800F */  lui        $a1, %hi(gActors)
/* 8F668 8008EA68 01EE7823 */  subu       $t7, $t7, $t6
/* 8F66C 8008EA6C 24A5F510 */  addiu      $a1, $a1, %lo(gActors)
/* 8F670 8008EA70 000F78C0 */  sll        $t7, $t7, 3
/* 8F674 8008EA74 00AF1821 */  addu       $v1, $a1, $t7
/* 8F678 8008EA78 4458F800 */  cfc1       $t8, $31
/* 8F67C 8008EA7C 24020001 */  addiu      $v0, $zero, 1
/* 8F680 8008EA80 44C2F800 */  ctc1       $v0, $31
/* 8F684 8008EA84 C4640440 */  lwc1       $f4, 0x440($v1)
/* 8F688 8008EA88 AFA40000 */  sw         $a0, ($sp)
/* 8F68C 8008EA8C 460021A4 */  cvt.w.s    $f6, $f4
/* 8F690 8008EA90 3C014F00 */  lui        $at, 0x4f00
/* 8F694 8008EA94 4442F800 */  cfc1       $v0, $31
/* 8F698 8008EA98 00000000 */  nop
/* 8F69C 8008EA9C 30420078 */  andi       $v0, $v0, 0x78
/* 8F6A0 8008EAA0 10400012 */  beqz       $v0, .L8008EAEC
/* 8F6A4 8008EAA4 00000000 */   nop
/* 8F6A8 8008EAA8 44813000 */  mtc1       $at, $f6
/* 8F6AC 8008EAAC 24020001 */  addiu      $v0, $zero, 1
/* 8F6B0 8008EAB0 46062181 */  sub.s      $f6, $f4, $f6
/* 8F6B4 8008EAB4 3C018000 */  lui        $at, 0x8000
/* 8F6B8 8008EAB8 44C2F800 */  ctc1       $v0, $31
/* 8F6BC 8008EABC 00000000 */  nop
/* 8F6C0 8008EAC0 460031A4 */  cvt.w.s    $f6, $f6
/* 8F6C4 8008EAC4 4442F800 */  cfc1       $v0, $31
/* 8F6C8 8008EAC8 00000000 */  nop
/* 8F6CC 8008EACC 30420078 */  andi       $v0, $v0, 0x78
/* 8F6D0 8008EAD0 14400004 */  bnez       $v0, .L8008EAE4
/* 8F6D4 8008EAD4 00000000 */   nop
/* 8F6D8 8008EAD8 44023000 */  mfc1       $v0, $f6
/* 8F6DC 8008EADC 10000007 */  b          .L8008EAFC
/* 8F6E0 8008EAE0 00411025 */   or        $v0, $v0, $at
.L8008EAE4:
/* 8F6E4 8008EAE4 10000005 */  b          .L8008EAFC
/* 8F6E8 8008EAE8 2402FFFF */   addiu     $v0, $zero, -1
.L8008EAEC:
/* 8F6EC 8008EAEC 44023000 */  mfc1       $v0, $f6
/* 8F6F0 8008EAF0 00000000 */  nop
/* 8F6F4 8008EAF4 0440FFFB */  bltz       $v0, .L8008EAE4
/* 8F6F8 8008EAF8 00000000 */   nop
.L8008EAFC:
/* 8F6FC 8008EAFC 44D8F800 */  ctc1       $t8, $31
/* 8F700 8008EB00 3059FFFF */  andi       $t9, $v0, 0xffff
/* 8F704 8008EB04 1320000C */  beqz       $t9, .L8008EB38
/* 8F708 8008EB08 00194080 */   sll       $t0, $t9, 2
/* 8F70C 8008EB0C 01194023 */  subu       $t0, $t0, $t9
/* 8F710 8008EB10 00084080 */  sll        $t0, $t0, 2
/* 8F714 8008EB14 01194021 */  addu       $t0, $t0, $t9
/* 8F718 8008EB18 00084080 */  sll        $t0, $t0, 2
/* 8F71C 8008EB1C 01194023 */  subu       $t0, $t0, $t9
/* 8F720 8008EB20 000840C0 */  sll        $t0, $t0, 3
/* 8F724 8008EB24 00A82021 */  addu       $a0, $a1, $t0
/* 8F728 8008EB28 8C890080 */  lw         $t1, 0x80($a0)
/* 8F72C 8008EB2C 2401F57F */  addiu      $at, $zero, -0xa81
/* 8F730 8008EB30 01215024 */  and        $t2, $t1, $at
/* 8F734 8008EB34 AC8A0080 */  sw         $t2, 0x80($a0)
.L8008EB38:
/* 8F738 8008EB38 44804000 */  mtc1       $zero, $f8
/* 8F73C 8008EB3C 03E00008 */  jr         $ra
/* 8F740 8008EB40 E4680440 */   swc1      $f8, 0x440($v1)
