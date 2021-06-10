glabel func_80079F50
/* 7AB50 80079F50 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 7AB54 80079F54 240A0198 */  addiu      $t2, $zero, 0x198
/* 7AB58 80079F58 01EA0019 */  multu      $t7, $t2
/* 7AB5C 80079F5C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 7AB60 80079F60 3C09800F */  lui        $t1, %hi(D_800EF510)
/* 7AB64 80079F64 2529F510 */  addiu      $t1, $t1, %lo(D_800EF510)
/* 7AB68 80079F68 AFA40000 */  sw         $a0, ($sp)
/* 7AB6C 80079F6C 01C02025 */  or         $a0, $t6, $zero
/* 7AB70 80079F70 AFA50004 */  sw         $a1, 4($sp)
/* 7AB74 80079F74 01E02825 */  or         $a1, $t7, $zero
/* 7AB78 80079F78 0000C012 */  mflo       $t8
/* 7AB7C 80079F7C 01381021 */  addu       $v0, $t1, $t8
/* 7AB80 80079F80 8C590098 */  lw         $t9, 0x98($v0)
/* 7AB84 80079F84 01CA0019 */  multu      $t6, $t2
/* 7AB88 80079F88 372B0200 */  ori        $t3, $t9, 0x200
/* 7AB8C 80079F8C A44E00D6 */  sh         $t6, 0xd6($v0)
/* 7AB90 80079F90 AC4B0098 */  sw         $t3, 0x98($v0)
/* 7AB94 80079F94 3C19800E */  lui        $t9, %hi(D_800D82BC)
/* 7AB98 80079F98 273982BC */  addiu      $t9, $t9, %lo(D_800D82BC)
/* 7AB9C 80079F9C 00006012 */  mflo       $t4
/* 7ABA0 80079FA0 012C3021 */  addu       $a2, $t1, $t4
/* 7ABA4 80079FA4 94C30084 */  lhu        $v1, 0x84($a2)
/* 7ABA8 80079FA8 C4C000B4 */  lwc1       $f0, 0xb4($a2)
/* 7ABAC 80079FAC 2463CFCA */  addiu      $v1, $v1, -0x3036
/* 7ABB0 80079FB0 04610003 */  bgez       $v1, .L80079FC0
/* 7ABB4 80079FB4 00036843 */   sra       $t5, $v1, 1
/* 7ABB8 80079FB8 24610001 */  addiu      $at, $v1, 1
/* 7ABBC 80079FBC 00016843 */  sra        $t5, $at, 1
.L80079FC0:
/* 7ABC0 80079FC0 000D7040 */  sll        $t6, $t5, 1
/* 7ABC4 80079FC4 31CFFFFF */  andi       $t7, $t6, 0xffff
/* 7ABC8 80079FC8 000FC040 */  sll        $t8, $t7, 1
/* 7ABCC 80079FCC 03194021 */  addu       $t0, $t8, $t9
/* 7ABD0 80079FD0 850B0000 */  lh         $t3, ($t0)
/* 7ABD4 80079FD4 8CCF0080 */  lw         $t7, 0x80($a2)
/* 7ABD8 80079FD8 448B2000 */  mtc1       $t3, $f4
/* 7ABDC 80079FDC 31F80020 */  andi       $t8, $t7, 0x20
/* 7ABE0 80079FE0 468021A0 */  cvt.s.w    $f6, $f4
/* 7ABE4 80079FE4 46060202 */  mul.s      $f8, $f0, $f6
/* 7ABE8 80079FE8 444CF800 */  cfc1       $t4, $31
/* 7ABEC 80079FEC 00000000 */  nop
/* 7ABF0 80079FF0 35810003 */  ori        $at, $t4, 3
/* 7ABF4 80079FF4 38210002 */  xori       $at, $at, 2
/* 7ABF8 80079FF8 44C1F800 */  ctc1       $at, $31
/* 7ABFC 80079FFC 00000000 */  nop
/* 7AC00 8007A000 460042A4 */  cvt.w.s    $f10, $f8
/* 7AC04 8007A004 44075000 */  mfc1       $a3, $f10
/* 7AC08 8007A008 44CCF800 */  ctc1       $t4, $31
/* 7AC0C 8007A00C 00076C00 */  sll        $t5, $a3, 0x10
/* 7AC10 8007A010 000D7403 */  sra        $t6, $t5, 0x10
/* 7AC14 8007A014 13000004 */  beqz       $t8, .L8007A028
/* 7AC18 8007A018 01C03825 */   or        $a3, $t6, $zero
/* 7AC1C 8007A01C 000E3823 */  negu       $a3, $t6
/* 7AC20 8007A020 0007CC00 */  sll        $t9, $a3, 0x10
/* 7AC24 8007A024 00193C03 */  sra        $a3, $t9, 0x10
.L8007A028:
/* 7AC28 8007A028 850C0002 */  lh         $t4, 2($t0)
/* 7AC2C 8007A02C 8CD80088 */  lw         $t8, 0x88($a2)
/* 7AC30 8007A030 448C8000 */  mtc1       $t4, $f16
/* 7AC34 8007A034 0007CC00 */  sll        $t9, $a3, 0x10
/* 7AC38 8007A038 468084A0 */  cvt.s.w    $f18, $f16
/* 7AC3C 8007A03C 03195821 */  addu       $t3, $t8, $t9
/* 7AC40 8007A040 AC4B0104 */  sw         $t3, 0x104($v0)
/* 7AC44 8007A044 46120102 */  mul.s      $f4, $f0, $f18
/* 7AC48 8007A048 8CCC008C */  lw         $t4, 0x8c($a2)
/* 7AC4C 8007A04C 444DF800 */  cfc1       $t5, $31
/* 7AC50 8007A050 00000000 */  nop
/* 7AC54 8007A054 35A10003 */  ori        $at, $t5, 3
/* 7AC58 8007A058 38210002 */  xori       $at, $at, 2
/* 7AC5C 8007A05C 44C1F800 */  ctc1       $at, $31
/* 7AC60 8007A060 00000000 */  nop
/* 7AC64 8007A064 460021A4 */  cvt.w.s    $f6, $f4
/* 7AC68 8007A068 440F3000 */  mfc1       $t7, $f6
/* 7AC6C 8007A06C 44CDF800 */  ctc1       $t5, $31
/* 7AC70 8007A070 000F6C00 */  sll        $t5, $t7, 0x10
/* 7AC74 8007A074 018D7021 */  addu       $t6, $t4, $t5
/* 7AC78 8007A078 AC4E0108 */  sw         $t6, 0x108($v0)
/* 7AC7C 8007A07C 8CCF0090 */  lw         $t7, 0x90($a2)
/* 7AC80 8007A080 00000000 */  nop
/* 7AC84 8007A084 25F8FFF8 */  addiu      $t8, $t7, -8
/* 7AC88 8007A088 03E00008 */  jr         $ra
/* 7AC8C 8007A08C AC58010C */   sw        $t8, 0x10c($v0)
