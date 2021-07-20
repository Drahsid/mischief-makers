glabel func_8001A96C
/* 1B56C 8001A96C 3C048018 */  lui        $a0, %hi(D_801781E0)
/* 1B570 8001A970 3C0E8018 */  lui        $t6, %hi(D_80178150)
/* 1B574 8001A974 95CE8150 */  lhu        $t6, %lo(D_80178150)($t6)
/* 1B578 8001A978 948481E0 */  lhu        $a0, %lo(D_801781E0)($a0)
/* 1B57C 8001A97C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1B580 8001A980 008E082A */  slt        $at, $a0, $t6
/* 1B584 8001A984 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1B588 8001A988 AFB10018 */  sw         $s1, 0x18($sp)
/* 1B58C 8001A98C 10200012 */  beqz       $at, .L8001A9D8
/* 1B590 8001A990 AFB00014 */   sw        $s0, 0x14($sp)
/* 1B594 8001A994 3C10800C */  lui        $s0, %hi(D_800BE4E4)
/* 1B598 8001A998 9610E4E4 */  lhu        $s0, %lo(D_800BE4E4)($s0)
/* 1B59C 8001A99C 00000000 */  nop
/* 1B5A0 8001A9A0 06010003 */  bgez       $s0, .L8001A9B0
/* 1B5A4 8001A9A4 00107883 */   sra       $t7, $s0, 2
/* 1B5A8 8001A9A8 26010003 */  addiu      $at, $s0, 3
/* 1B5AC 8001A9AC 00017883 */  sra        $t7, $at, 2
.L8001A9B0:
/* 1B5B0 8001A9B0 01E08025 */  or         $s0, $t7, $zero
/* 1B5B4 8001A9B4 06010004 */  bgez       $s0, .L8001A9C8
/* 1B5B8 8001A9B8 32180003 */   andi      $t8, $s0, 3
/* 1B5BC 8001A9BC 13000002 */  beqz       $t8, .L8001A9C8
/* 1B5C0 8001A9C0 00000000 */   nop
/* 1B5C4 8001A9C4 2718FFFC */  addiu      $t8, $t8, -4
.L8001A9C8:
/* 1B5C8 8001A9C8 0018CC00 */  sll        $t9, $t8, 0x10
/* 1B5CC 8001A9CC 00194C03 */  sra        $t1, $t9, 0x10
/* 1B5D0 8001A9D0 10000002 */  b          .L8001A9DC
/* 1B5D4 8001A9D4 01208025 */   or        $s0, $t1, $zero
.L8001A9D8:
/* 1B5D8 8001A9D8 24100001 */  addiu      $s0, $zero, 1
.L8001A9DC:
/* 1B5DC 8001A9DC 3082FFFF */  andi       $v0, $a0, 0xffff
/* 1B5E0 8001A9E0 2401003C */  addiu      $at, $zero, 0x3c
/* 1B5E4 8001A9E4 0041001A */  div        $zero, $v0, $at
/* 1B5E8 8001A9E8 24050003 */  addiu      $a1, $zero, 3
/* 1B5EC 8001A9EC 00103C00 */  sll        $a3, $s0, 0x10
/* 1B5F0 8001A9F0 0007CC03 */  sra        $t9, $a3, 0x10
/* 1B5F4 8001A9F4 3C06800D */  lui        $a2, %hi(D_800C9520)
/* 1B5F8 8001A9F8 00408825 */  or         $s1, $v0, $zero
/* 1B5FC 8001A9FC 24C69520 */  addiu      $a2, $a2, %lo(D_800C9520)
/* 1B600 8001AA00 03203825 */  or         $a3, $t9, $zero
/* 1B604 8001AA04 2404000A */  addiu      $a0, $zero, 0xa
/* 1B608 8001AA08 00001810 */  mfhi       $v1
/* 1B60C 8001AA0C 00035140 */  sll        $t2, $v1, 5
/* 1B610 8001AA10 01435023 */  subu       $t2, $t2, $v1
/* 1B614 8001AA14 000A5080 */  sll        $t2, $t2, 2
/* 1B618 8001AA18 01435021 */  addu       $t2, $t2, $v1
/* 1B61C 8001AA1C 000A5080 */  sll        $t2, $t2, 2
/* 1B620 8001AA20 0145001A */  div        $zero, $t2, $a1
/* 1B624 8001AA24 14A00002 */  bnez       $a1, .L8001AA30
/* 1B628 8001AA28 00000000 */   nop
/* 1B62C 8001AA2C 0007000D */  break      7
.L8001AA30:
/* 1B630 8001AA30 2401FFFF */   addiu     $at, $zero, -1
/* 1B634 8001AA34 14A10004 */  bne        $a1, $at, .L8001AA48
/* 1B638 8001AA38 3C018000 */   lui       $at, 0x8000
/* 1B63C 8001AA3C 15410002 */  bne        $t2, $at, .L8001AA48
/* 1B640 8001AA40 00000000 */   nop
/* 1B644 8001AA44 0006000D */  break      6
.L8001AA48:
/* 1B648 8001AA48 24010064 */   addiu     $at, $zero, 0x64
/* 1B64C 8001AA4C 00005812 */  mflo       $t3
/* 1B650 8001AA50 00000000 */  nop
/* 1B654 8001AA54 00000000 */  nop
/* 1B658 8001AA58 0161001A */  div        $zero, $t3, $at
/* 1B65C 8001AA5C 00006010 */  mfhi       $t4
/* 1B660 8001AA60 29810032 */  slti       $at, $t4, 0x32
/* 1B664 8001AA64 10200011 */  beqz       $at, .L8001AAAC
/* 1B668 8001AA68 00000000 */   nop
/* 1B66C 8001AA6C 00036880 */  sll        $t5, $v1, 2
/* 1B670 8001AA70 01A36821 */  addu       $t5, $t5, $v1
/* 1B674 8001AA74 01A5001A */  div        $zero, $t5, $a1
/* 1B678 8001AA78 14A00002 */  bnez       $a1, .L8001AA84
/* 1B67C 8001AA7C 00000000 */   nop
/* 1B680 8001AA80 0007000D */  break      7
.L8001AA84:
/* 1B684 8001AA84 2401FFFF */   addiu     $at, $zero, -1
/* 1B688 8001AA88 14A10004 */  bne        $a1, $at, .L8001AA9C
/* 1B68C 8001AA8C 3C018000 */   lui       $at, 0x8000
/* 1B690 8001AA90 15A10002 */  bne        $t5, $at, .L8001AA9C
/* 1B694 8001AA94 00000000 */   nop
/* 1B698 8001AA98 0006000D */  break      6
.L8001AA9C:
/* 1B69C 8001AA9C 00001012 */   mflo      $v0
/* 1B6A0 8001AAA0 304EFFFF */  andi       $t6, $v0, 0xffff
/* 1B6A4 8001AAA4 10000011 */  b          .L8001AAEC
/* 1B6A8 8001AAA8 01C01025 */   or        $v0, $t6, $zero
.L8001AAAC:
/* 1B6AC 8001AAAC 00037880 */  sll        $t7, $v1, 2
/* 1B6B0 8001AAB0 01E37821 */  addu       $t7, $t7, $v1
/* 1B6B4 8001AAB4 01E5001A */  div        $zero, $t7, $a1
/* 1B6B8 8001AAB8 14A00002 */  bnez       $a1, .L8001AAC4
/* 1B6BC 8001AABC 00000000 */   nop
/* 1B6C0 8001AAC0 0007000D */  break      7
.L8001AAC4:
/* 1B6C4 8001AAC4 2401FFFF */   addiu     $at, $zero, -1
/* 1B6C8 8001AAC8 14A10004 */  bne        $a1, $at, .L8001AADC
/* 1B6CC 8001AACC 3C018000 */   lui       $at, 0x8000
/* 1B6D0 8001AAD0 15E10002 */  bne        $t7, $at, .L8001AADC
/* 1B6D4 8001AAD4 00000000 */   nop
/* 1B6D8 8001AAD8 0006000D */  break      6
.L8001AADC:
/* 1B6DC 8001AADC 00001012 */   mflo      $v0
/* 1B6E0 8001AAE0 24420001 */  addiu      $v0, $v0, 1
/* 1B6E4 8001AAE4 3058FFFF */  andi       $t8, $v0, 0xffff
/* 1B6E8 8001AAE8 03001025 */  or         $v0, $t8, $zero
.L8001AAEC:
/* 1B6EC 8001AAEC 34018CA0 */  ori        $at, $zero, 0x8ca0
/* 1B6F0 8001AAF0 16210009 */  bne        $s1, $at, .L8001AB18
/* 1B6F4 8001AAF4 24050005 */   addiu     $a1, $zero, 5
/* 1B6F8 8001AAF8 3C06800D */  lui        $a2, %hi(D_800C9554)
/* 1B6FC 8001AAFC 24C69554 */  addiu      $a2, $a2, %lo(D_800C9554)
/* 1B700 8001AB00 24040009 */  addiu      $a0, $zero, 9
/* 1B704 8001AB04 24050005 */  addiu      $a1, $zero, 5
/* 1B708 8001AB08 0C020E04 */  jal        func_80083810
/* 1B70C 8001AB0C 00003825 */   or        $a3, $zero, $zero
/* 1B710 8001AB10 10000061 */  b          .L8001AC98
/* 1B714 8001AB14 8FBF001C */   lw        $ra, 0x1c($sp)
.L8001AB18:
/* 1B718 8001AB18 0C020E04 */  jal        func_80083810
/* 1B71C 8001AB1C A7A2002C */   sh        $v0, 0x2c($sp)
/* 1B720 8001AB20 97A3002C */  lhu        $v1, 0x2c($sp)
/* 1B724 8001AB24 2401000A */  addiu      $at, $zero, 0xa
/* 1B728 8001AB28 0061001A */  div        $zero, $v1, $at
/* 1B72C 8001AB2C 00103C00 */  sll        $a3, $s0, 0x10
/* 1B730 8001AB30 00075C03 */  sra        $t3, $a3, 0x10
/* 1B734 8001AB34 01603825 */  or         $a3, $t3, $zero
/* 1B738 8001AB38 2404000E */  addiu      $a0, $zero, 0xe
/* 1B73C 8001AB3C 24050005 */  addiu      $a1, $zero, 5
/* 1B740 8001AB40 AFA30024 */  sw         $v1, 0x24($sp)
/* 1B744 8001AB44 00003012 */  mflo       $a2
/* 1B748 8001AB48 24C60051 */  addiu      $a2, $a2, 0x51
/* 1B74C 8001AB4C 00064C00 */  sll        $t1, $a2, 0x10
/* 1B750 8001AB50 0C020DE7 */  jal        func_8008379C
/* 1B754 8001AB54 00093403 */   sra       $a2, $t1, 0x10
/* 1B758 8001AB58 8FA30024 */  lw         $v1, 0x24($sp)
/* 1B75C 8001AB5C 2401000A */  addiu      $at, $zero, 0xa
/* 1B760 8001AB60 0061001A */  div        $zero, $v1, $at
/* 1B764 8001AB64 00103C00 */  sll        $a3, $s0, 0x10
/* 1B768 8001AB68 00077403 */  sra        $t6, $a3, 0x10
/* 1B76C 8001AB6C 01C03825 */  or         $a3, $t6, $zero
/* 1B770 8001AB70 2404000F */  addiu      $a0, $zero, 0xf
/* 1B774 8001AB74 24050005 */  addiu      $a1, $zero, 5
/* 1B778 8001AB78 00003010 */  mfhi       $a2
/* 1B77C 8001AB7C 24C60051 */  addiu      $a2, $a2, 0x51
/* 1B780 8001AB80 00066400 */  sll        $t4, $a2, 0x10
/* 1B784 8001AB84 0C020DE7 */  jal        func_8008379C
/* 1B788 8001AB88 000C3403 */   sra       $a2, $t4, 0x10
/* 1B78C 8001AB8C 2408003C */  addiu      $t0, $zero, 0x3c
/* 1B790 8001AB90 0228001A */  div        $zero, $s1, $t0
/* 1B794 8001AB94 15000002 */  bnez       $t0, .L8001ABA0
/* 1B798 8001AB98 00000000 */   nop
/* 1B79C 8001AB9C 0007000D */  break      7
.L8001ABA0:
/* 1B7A0 8001ABA0 2401FFFF */   addiu     $at, $zero, -1
/* 1B7A4 8001ABA4 15010004 */  bne        $t0, $at, .L8001ABB8
/* 1B7A8 8001ABA8 3C018000 */   lui       $at, 0x8000
/* 1B7AC 8001ABAC 16210002 */  bne        $s1, $at, .L8001ABB8
/* 1B7B0 8001ABB0 00000000 */   nop
/* 1B7B4 8001ABB4 0006000D */  break      6
.L8001ABB8:
/* 1B7B8 8001ABB8 00103C00 */   sll       $a3, $s0, 0x10
/* 1B7BC 8001ABBC 00075403 */  sra        $t2, $a3, 0x10
/* 1B7C0 8001ABC0 01403825 */  or         $a3, $t2, $zero
/* 1B7C4 8001ABC4 2404000B */  addiu      $a0, $zero, 0xb
/* 1B7C8 8001ABC8 24050005 */  addiu      $a1, $zero, 5
/* 1B7CC 8001ABCC 00001012 */  mflo       $v0
/* 1B7D0 8001ABD0 304FFFFF */  andi       $t7, $v0, 0xffff
/* 1B7D4 8001ABD4 01E08825 */  or         $s1, $t7, $zero
/* 1B7D8 8001ABD8 01E8001A */  div        $zero, $t7, $t0
/* 1B7DC 8001ABDC 01E01025 */  or         $v0, $t7, $zero
/* 1B7E0 8001ABE0 15000002 */  bnez       $t0, .L8001ABEC
/* 1B7E4 8001ABE4 00000000 */   nop
/* 1B7E8 8001ABE8 0007000D */  break      7
.L8001ABEC:
/* 1B7EC 8001ABEC 2401FFFF */   addiu     $at, $zero, -1
/* 1B7F0 8001ABF0 15010004 */  bne        $t0, $at, .L8001AC04
/* 1B7F4 8001ABF4 3C018000 */   lui       $at, 0x8000
/* 1B7F8 8001ABF8 16210002 */  bne        $s1, $at, .L8001AC04
/* 1B7FC 8001ABFC 00000000 */   nop
/* 1B800 8001AC00 0006000D */  break      6
.L8001AC04:
/* 1B804 8001AC04 2401000A */   addiu     $at, $zero, 0xa
/* 1B808 8001AC08 00001810 */  mfhi       $v1
/* 1B80C 8001AC0C 3078FFFF */  andi       $t8, $v1, 0xffff
/* 1B810 8001AC10 03001825 */  or         $v1, $t8, $zero
/* 1B814 8001AC14 0301001A */  div        $zero, $t8, $at
/* 1B818 8001AC18 AFB80024 */  sw         $t8, 0x24($sp)
/* 1B81C 8001AC1C 00003012 */  mflo       $a2
/* 1B820 8001AC20 24C60051 */  addiu      $a2, $a2, 0x51
/* 1B824 8001AC24 0006CC00 */  sll        $t9, $a2, 0x10
/* 1B828 8001AC28 0C020DE7 */  jal        func_8008379C
/* 1B82C 8001AC2C 00193403 */   sra       $a2, $t9, 0x10
/* 1B830 8001AC30 8FA30024 */  lw         $v1, 0x24($sp)
/* 1B834 8001AC34 2401000A */  addiu      $at, $zero, 0xa
/* 1B838 8001AC38 0061001A */  div        $zero, $v1, $at
/* 1B83C 8001AC3C 00103C00 */  sll        $a3, $s0, 0x10
/* 1B840 8001AC40 00076C03 */  sra        $t5, $a3, 0x10
/* 1B844 8001AC44 01A03825 */  or         $a3, $t5, $zero
/* 1B848 8001AC48 2404000C */  addiu      $a0, $zero, 0xc
/* 1B84C 8001AC4C 24050005 */  addiu      $a1, $zero, 5
/* 1B850 8001AC50 00003010 */  mfhi       $a2
/* 1B854 8001AC54 24C60051 */  addiu      $a2, $a2, 0x51
/* 1B858 8001AC58 00065C00 */  sll        $t3, $a2, 0x10
/* 1B85C 8001AC5C 0C020DE7 */  jal        func_8008379C
/* 1B860 8001AC60 000B3403 */   sra       $a2, $t3, 0x10
/* 1B864 8001AC64 2401003C */  addiu      $at, $zero, 0x3c
/* 1B868 8001AC68 0221001A */  div        $zero, $s1, $at
/* 1B86C 8001AC6C 00103C00 */  sll        $a3, $s0, 0x10
/* 1B870 8001AC70 0007CC03 */  sra        $t9, $a3, 0x10
/* 1B874 8001AC74 03203825 */  or         $a3, $t9, $zero
/* 1B878 8001AC78 24040009 */  addiu      $a0, $zero, 9
/* 1B87C 8001AC7C 24050005 */  addiu      $a1, $zero, 5
/* 1B880 8001AC80 00007012 */  mflo       $t6
/* 1B884 8001AC84 25C60051 */  addiu      $a2, $t6, 0x51
/* 1B888 8001AC88 00067C00 */  sll        $t7, $a2, 0x10
/* 1B88C 8001AC8C 0C020DE7 */  jal        func_8008379C
/* 1B890 8001AC90 000F3403 */   sra       $a2, $t7, 0x10
/* 1B894 8001AC94 8FBF001C */  lw         $ra, 0x1c($sp)
.L8001AC98:
/* 1B898 8001AC98 8FB00014 */  lw         $s0, 0x14($sp)
/* 1B89C 8001AC9C 8FB10018 */  lw         $s1, 0x18($sp)
/* 1B8A0 8001ACA0 03E00008 */  jr         $ra
/* 1B8A4 8001ACA4 27BD0030 */   addiu     $sp, $sp, 0x30
