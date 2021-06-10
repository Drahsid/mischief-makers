glabel func_8009B790
/* 9C390 8009B790 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9C394 8009B794 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9C398 8009B798 AFA40028 */  sw         $a0, 0x28($sp)
/* 9C39C 8009B79C AFA5002C */  sw         $a1, 0x2c($sp)
/* 9C3A0 8009B7A0 AFA60030 */  sw         $a2, 0x30($sp)
/* 9C3A4 8009B7A4 AFA70034 */  sw         $a3, 0x34($sp)
/* 9C3A8 8009B7A8 AFB10018 */  sw         $s1, 0x18($sp)
/* 9C3AC 8009B7AC AFB00014 */  sw         $s0, 0x14($sp)
/* 9C3B0 8009B7B0 3C0E800F */  lui        $t6, %hi(D_800EA4D0)
/* 9C3B4 8009B7B4 8DCEA4D0 */  lw         $t6, %lo(D_800EA4D0)($t6)
/* 9C3B8 8009B7B8 15C00006 */  bnez       $t6, .L8009B7D4
/* 9C3BC 8009B7BC 00000000 */   nop
/* 9C3C0 8009B7C0 2404001C */  addiu      $a0, $zero, 0x1c
/* 9C3C4 8009B7C4 0C0297B4 */  jal        func_800A5ED0
/* 9C3C8 8009B7C8 00002825 */   or        $a1, $zero, $zero
/* 9C3CC 8009B7CC 10000079 */  b          .L8009B9B4
/* 9C3D0 8009B7D0 2402FFFF */   addiu     $v0, $zero, -1
.L8009B7D4:
/* 9C3D4 8009B7D4 8FAF002C */  lw         $t7, 0x2c($sp)
/* 9C3D8 8009B7D8 11E0000A */  beqz       $t7, .L8009B804
/* 9C3DC 8009B7DC 00000000 */   nop
/* 9C3E0 8009B7E0 24010001 */  addiu      $at, $zero, 1
/* 9C3E4 8009B7E4 11E10007 */  beq        $t7, $at, .L8009B804
/* 9C3E8 8009B7E8 00000000 */   nop
/* 9C3EC 8009B7EC 2404001D */  addiu      $a0, $zero, 0x1d
/* 9C3F0 8009B7F0 24050001 */  addiu      $a1, $zero, 1
/* 9C3F4 8009B7F4 0C0297B4 */  jal        func_800A5ED0
/* 9C3F8 8009B7F8 8FA6002C */   lw        $a2, 0x2c($sp)
/* 9C3FC 8009B7FC 1000006D */  b          .L8009B9B4
/* 9C400 8009B800 2402FFFF */   addiu     $v0, $zero, -1
.L8009B804:
/* 9C404 8009B804 8FB80030 */  lw         $t8, 0x30($sp)
/* 9C408 8009B808 1300000A */  beqz       $t8, .L8009B834
/* 9C40C 8009B80C 00000000 */   nop
/* 9C410 8009B810 24010001 */  addiu      $at, $zero, 1
/* 9C414 8009B814 13010007 */  beq        $t8, $at, .L8009B834
/* 9C418 8009B818 00000000 */   nop
/* 9C41C 8009B81C 2404001E */  addiu      $a0, $zero, 0x1e
/* 9C420 8009B820 24050001 */  addiu      $a1, $zero, 1
/* 9C424 8009B824 0C0297B4 */  jal        func_800A5ED0
/* 9C428 8009B828 8FA60030 */   lw        $a2, 0x30($sp)
/* 9C42C 8009B82C 10000061 */  b          .L8009B9B4
/* 9C430 8009B830 2402FFFF */   addiu     $v0, $zero, -1
.L8009B834:
/* 9C434 8009B834 8FB90034 */  lw         $t9, 0x34($sp)
/* 9C438 8009B838 33280001 */  andi       $t0, $t9, 1
/* 9C43C 8009B83C 11000007 */  beqz       $t0, .L8009B85C
/* 9C440 8009B840 00000000 */   nop
/* 9C444 8009B844 2404001F */  addiu      $a0, $zero, 0x1f
/* 9C448 8009B848 24050001 */  addiu      $a1, $zero, 1
/* 9C44C 8009B84C 0C0297B4 */  jal        func_800A5ED0
/* 9C450 8009B850 8FA60034 */   lw        $a2, 0x34($sp)
/* 9C454 8009B854 10000057 */  b          .L8009B9B4
/* 9C458 8009B858 2402FFFF */   addiu     $v0, $zero, -1
.L8009B85C:
/* 9C45C 8009B85C 8FA90038 */  lw         $t1, 0x38($sp)
/* 9C460 8009B860 312A0007 */  andi       $t2, $t1, 7
/* 9C464 8009B864 11400007 */  beqz       $t2, .L8009B884
/* 9C468 8009B868 00000000 */   nop
/* 9C46C 8009B86C 24040020 */  addiu      $a0, $zero, 0x20
/* 9C470 8009B870 24050001 */  addiu      $a1, $zero, 1
/* 9C474 8009B874 0C0297B4 */  jal        func_800A5ED0
/* 9C478 8009B878 8FA60038 */   lw        $a2, 0x38($sp)
/* 9C47C 8009B87C 1000004D */  b          .L8009B9B4
/* 9C480 8009B880 2402FFFF */   addiu     $v0, $zero, -1
.L8009B884:
/* 9C484 8009B884 8FAB003C */  lw         $t3, 0x3c($sp)
/* 9C488 8009B888 316C0001 */  andi       $t4, $t3, 1
/* 9C48C 8009B88C 11800007 */  beqz       $t4, .L8009B8AC
/* 9C490 8009B890 00000000 */   nop
/* 9C494 8009B894 24040021 */  addiu      $a0, $zero, 0x21
/* 9C498 8009B898 24050001 */  addiu      $a1, $zero, 1
/* 9C49C 8009B89C 0C0297B4 */  jal        func_800A5ED0
/* 9C4A0 8009B8A0 8FA6003C */   lw        $a2, 0x3c($sp)
/* 9C4A4 8009B8A4 10000043 */  b          .L8009B9B4
/* 9C4A8 8009B8A8 2402FFFF */   addiu     $v0, $zero, -1
.L8009B8AC:
/* 9C4AC 8009B8AC 8FAD003C */  lw         $t5, 0x3c($sp)
/* 9C4B0 8009B8B0 11A00006 */  beqz       $t5, .L8009B8CC
/* 9C4B4 8009B8B4 00000000 */   nop
/* 9C4B8 8009B8B8 3C010100 */  lui        $at, 0x100
/* 9C4BC 8009B8BC 34210001 */  ori        $at, $at, 1
/* 9C4C0 8009B8C0 01A1082B */  sltu       $at, $t5, $at
/* 9C4C4 8009B8C4 14200007 */  bnez       $at, .L8009B8E4
/* 9C4C8 8009B8C8 00000000 */   nop
.L8009B8CC:
/* 9C4CC 8009B8CC 24040022 */  addiu      $a0, $zero, 0x22
/* 9C4D0 8009B8D0 24050001 */  addiu      $a1, $zero, 1
/* 9C4D4 8009B8D4 0C0297B4 */  jal        func_800A5ED0
/* 9C4D8 8009B8D8 8FA6003C */   lw        $a2, 0x3c($sp)
/* 9C4DC 8009B8DC 10000035 */  b          .L8009B9B4
/* 9C4E0 8009B8E0 2402FFFF */   addiu     $v0, $zero, -1
.L8009B8E4:
/* 9C4E4 8009B8E4 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9C4E8 8009B8E8 15C00005 */  bnez       $t6, .L8009B900
/* 9C4EC 8009B8EC 00000000 */   nop
/* 9C4F0 8009B8F0 8FB80028 */  lw         $t8, 0x28($sp)
/* 9C4F4 8009B8F4 240F000B */  addiu      $t7, $zero, 0xb
/* 9C4F8 8009B8F8 10000004 */  b          .L8009B90C
/* 9C4FC 8009B8FC A70F0000 */   sh        $t7, ($t8)
.L8009B900:
/* 9C500 8009B900 8FA80028 */  lw         $t0, 0x28($sp)
/* 9C504 8009B904 2419000C */  addiu      $t9, $zero, 0xc
/* 9C508 8009B908 A5190000 */  sh         $t9, ($t0)
.L8009B90C:
/* 9C50C 8009B90C 8FA9002C */  lw         $t1, 0x2c($sp)
/* 9C510 8009B910 8FAA0028 */  lw         $t2, 0x28($sp)
/* 9C514 8009B914 A1490002 */  sb         $t1, 2($t2)
/* 9C518 8009B918 8FAB0040 */  lw         $t3, 0x40($sp)
/* 9C51C 8009B91C 8FAC0028 */  lw         $t4, 0x28($sp)
/* 9C520 8009B920 AD8B0004 */  sw         $t3, 4($t4)
/* 9C524 8009B924 8FAD0038 */  lw         $t5, 0x38($sp)
/* 9C528 8009B928 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9C52C 8009B92C ADCD0008 */  sw         $t5, 8($t6)
/* 9C530 8009B930 8FAF0034 */  lw         $t7, 0x34($sp)
/* 9C534 8009B934 8FB80028 */  lw         $t8, 0x28($sp)
/* 9C538 8009B938 AF0F000C */  sw         $t7, 0xc($t8)
/* 9C53C 8009B93C 8FB9003C */  lw         $t9, 0x3c($sp)
/* 9C540 8009B940 8FA80028 */  lw         $t0, 0x28($sp)
/* 9C544 8009B944 AD190010 */  sw         $t9, 0x10($t0)
/* 9C548 8009B948 8FA90028 */  lw         $t1, 0x28($sp)
/* 9C54C 8009B94C AD200014 */  sw         $zero, 0x14($t1)
/* 9C550 8009B950 8FAA002C */  lw         $t2, 0x2c($sp)
/* 9C554 8009B954 24010001 */  addiu      $at, $zero, 1
/* 9C558 8009B958 1541000A */  bne        $t2, $at, .L8009B984
/* 9C55C 8009B95C 00000000 */   nop
/* 9C560 8009B960 0C02AC78 */  jal        func_800AB1E0
/* 9C564 8009B964 00000000 */   nop
/* 9C568 8009B968 00408825 */  or         $s1, $v0, $zero
/* 9C56C 8009B96C 02202025 */  or         $a0, $s1, $zero
/* 9C570 8009B970 8FA50028 */  lw         $a1, 0x28($sp)
/* 9C574 8009B974 0C02AC14 */  jal        func_800AB050
/* 9C578 8009B978 00003025 */   or        $a2, $zero, $zero
/* 9C57C 8009B97C 10000009 */  b          .L8009B9A4
/* 9C580 8009B980 00408025 */   or        $s0, $v0, $zero
.L8009B984:
/* 9C584 8009B984 0C02AC78 */  jal        func_800AB1E0
/* 9C588 8009B988 00000000 */   nop
/* 9C58C 8009B98C 00408825 */  or         $s1, $v0, $zero
/* 9C590 8009B990 02202025 */  or         $a0, $s1, $zero
/* 9C594 8009B994 8FA50028 */  lw         $a1, 0x28($sp)
/* 9C598 8009B998 0C0278BC */  jal        func_8009E2F0
/* 9C59C 8009B99C 00003025 */   or        $a2, $zero, $zero
/* 9C5A0 8009B9A0 00408025 */  or         $s0, $v0, $zero
.L8009B9A4:
/* 9C5A4 8009B9A4 10000003 */  b          .L8009B9B4
/* 9C5A8 8009B9A8 02001025 */   or        $v0, $s0, $zero
/* 9C5AC 8009B9AC 10000001 */  b          .L8009B9B4
/* 9C5B0 8009B9B0 00000000 */   nop
.L8009B9B4:
/* 9C5B4 8009B9B4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9C5B8 8009B9B8 8FB00014 */  lw         $s0, 0x14($sp)
/* 9C5BC 8009B9BC 8FB10018 */  lw         $s1, 0x18($sp)
/* 9C5C0 8009B9C0 03E00008 */  jr         $ra
/* 9C5C4 8009B9C4 27BD0028 */   addiu     $sp, $sp, 0x28
/* 9C5C8 8009B9C8 00000000 */  nop
/* 9C5CC 8009B9CC 00000000 */  nop
