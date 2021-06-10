glabel func_8006ABEC
/* 6B7EC 8006ABEC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6B7F0 8006ABF0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6B7F4 8006ABF4 AFA40020 */  sw         $a0, 0x20($sp)
/* 6B7F8 8006ABF8 00803025 */  or         $a2, $a0, $zero
/* 6B7FC 8006ABFC AFA50024 */  sw         $a1, 0x24($sp)
/* 6B800 8006AC00 30C4FFFF */  andi       $a0, $a2, 0xffff
/* 6B804 8006AC04 0C01A76A */  jal        func_80069DA8
/* 6B808 8006AC08 A7A60022 */   sh        $a2, 0x22($sp)
/* 6B80C 8006AC0C 97A60022 */  lhu        $a2, 0x22($sp)
/* 6B810 8006AC10 3C0F800F */  lui        $t7, 0x800f
/* 6B814 8006AC14 00067080 */  sll        $t6, $a2, 2
/* 6B818 8006AC18 01C67023 */  subu       $t6, $t6, $a2
/* 6B81C 8006AC1C 000E7080 */  sll        $t6, $t6, 2
/* 6B820 8006AC20 01C67021 */  addu       $t6, $t6, $a2
/* 6B824 8006AC24 000E7080 */  sll        $t6, $t6, 2
/* 6B828 8006AC28 01C67023 */  subu       $t6, $t6, $a2
/* 6B82C 8006AC2C 000E70C0 */  sll        $t6, $t6, 3
/* 6B830 8006AC30 25EFF510 */  addiu      $t7, $t7, -0xaf0
/* 6B834 8006AC34 01CF1021 */  addu       $v0, $t6, $t7
/* 6B838 8006AC38 8C5800F0 */  lw         $t8, 0xf0($v0)
/* 6B83C 8006AC3C 00000000 */  nop
/* 6B840 8006AC40 07010040 */  bgez       $t8, .L8006AD44
/* 6B844 8006AC44 8FBF0014 */   lw        $ra, 0x14($sp)
/* 6B848 8006AC48 8C430098 */  lw         $v1, 0x98($v0)
/* 6B84C 8006AC4C 00000000 */  nop
/* 6B850 8006AC50 30790020 */  andi       $t9, $v1, 0x20
/* 6B854 8006AC54 1320003B */  beqz       $t9, .L8006AD44
/* 6B858 8006AC58 8FBF0014 */   lw        $ra, 0x14($sp)
/* 6B85C 8006AC5C 8C480150 */  lw         $t0, 0x150($v0)
/* 6B860 8006AC60 24190150 */  addiu      $t9, $zero, 0x150
/* 6B864 8006AC64 00084900 */  sll        $t1, $t0, 4
/* 6B868 8006AC68 05210016 */  bgez       $t1, .L8006ACC4
/* 6B86C 8006AC6C 3C013FE0 */   lui       $at, 0x3fe0
/* 6B870 8006AC70 2404008B */  addiu      $a0, $zero, 0x8b
/* 6B874 8006AC74 30C5FFFF */  andi       $a1, $a2, 0xffff
/* 6B878 8006AC78 0C000DB2 */  jal        func_800036C8
/* 6B87C 8006AC7C AFA2001C */   sw        $v0, 0x1c($sp)
/* 6B880 8006AC80 8FA2001C */  lw         $v0, 0x1c($sp)
/* 6B884 8006AC84 3C010001 */  lui        $at, 1
/* 6B888 8006AC88 8C4B0080 */  lw         $t3, 0x80($v0)
/* 6B88C 8006AC8C 8C4F0098 */  lw         $t7, 0x98($v0)
/* 6B890 8006AC90 01616025 */  or         $t4, $t3, $at
/* 6B894 8006AC94 3C01FFFD */  lui        $at, 0xfffd
/* 6B898 8006AC98 3421FFFF */  ori        $at, $at, 0xffff
/* 6B89C 8006AC9C 01817024 */  and        $t6, $t4, $at
/* 6B8A0 8006ACA0 2401FFBF */  addiu      $at, $zero, -0x41
/* 6B8A4 8006ACA4 240A00D0 */  addiu      $t2, $zero, 0xd0
/* 6B8A8 8006ACA8 AC4C0080 */  sw         $t4, 0x80($v0)
/* 6B8AC 8006ACAC 01E1C024 */  and        $t8, $t7, $at
/* 6B8B0 8006ACB0 A44A00D0 */  sh         $t2, 0xd0($v0)
/* 6B8B4 8006ACB4 AC4000F0 */  sw         $zero, 0xf0($v0)
/* 6B8B8 8006ACB8 AC580098 */  sw         $t8, 0x98($v0)
/* 6B8BC 8006ACBC 10000020 */  b          .L8006AD40
/* 6B8C0 8006ACC0 AC4E0080 */   sw        $t6, 0x80($v0)
.L8006ACC4:
/* 6B8C4 8006ACC4 8C4A00EC */  lw         $t2, 0xec($v0)
/* 6B8C8 8006ACC8 44815800 */  mtc1       $at, $f11
/* 6B8CC 8006ACCC 448A2000 */  mtc1       $t2, $f4
/* 6B8D0 8006ACD0 44805000 */  mtc1       $zero, $f10
/* 6B8D4 8006ACD4 468021A0 */  cvt.s.w    $f6, $f4
/* 6B8D8 8006ACD8 8C4C0080 */  lw         $t4, 0x80($v0)
/* 6B8DC 8006ACDC 8FA80024 */  lw         $t0, 0x24($sp)
/* 6B8E0 8006ACE0 46003221 */  cvt.d.s    $f8, $f6
/* 6B8E4 8006ACE4 462A4402 */  mul.d      $f16, $f8, $f10
/* 6B8E8 8006ACE8 24090001 */  addiu      $t1, $zero, 1
/* 6B8EC 8006ACEC A45900D0 */  sh         $t9, 0xd0($v0)
/* 6B8F0 8006ACF0 A44900E6 */  sh         $t1, 0xe6($v0)
/* 6B8F4 8006ACF4 AC4000F0 */  sw         $zero, 0xf0($v0)
/* 6B8F8 8006ACF8 444BF800 */  cfc1       $t3, $31
/* 6B8FC 8006ACFC AC4800E8 */  sw         $t0, 0xe8($v0)
/* 6B900 8006AD00 35610003 */  ori        $at, $t3, 3
/* 6B904 8006AD04 38210002 */  xori       $at, $at, 2
/* 6B908 8006AD08 44C1F800 */  ctc1       $at, $31
/* 6B90C 8006AD0C 3C010001 */  lui        $at, 1
/* 6B910 8006AD10 01816825 */  or         $t5, $t4, $at
/* 6B914 8006AD14 3C01FFFD */  lui        $at, 0xfffd
/* 6B918 8006AD18 462084A4 */  cvt.w.d    $f18, $f16
/* 6B91C 8006AD1C 3421FFFF */  ori        $at, $at, 0xffff
/* 6B920 8006AD20 01A17824 */  and        $t7, $t5, $at
/* 6B924 8006AD24 2401FFBF */  addiu      $at, $zero, -0x41
/* 6B928 8006AD28 44CBF800 */  ctc1       $t3, $31
/* 6B92C 8006AD2C 0061C024 */  and        $t8, $v1, $at
/* 6B930 8006AD30 AC4D0080 */  sw         $t5, 0x80($v0)
/* 6B934 8006AD34 E45200EC */  swc1       $f18, 0xec($v0)
/* 6B938 8006AD38 AC4F0080 */  sw         $t7, 0x80($v0)
/* 6B93C 8006AD3C AC580098 */  sw         $t8, 0x98($v0)
.L8006AD40:
/* 6B940 8006AD40 8FBF0014 */  lw         $ra, 0x14($sp)
.L8006AD44:
/* 6B944 8006AD44 27BD0020 */  addiu      $sp, $sp, 0x20
/* 6B948 8006AD48 03E00008 */  jr         $ra
/* 6B94C 8006AD4C 00000000 */   nop
