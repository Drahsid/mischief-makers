glabel func_800A9F0C
/* AAB0C 800A9F0C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* AAB10 800A9F10 AFBF001C */  sw         $ra, 0x1c($sp)
/* AAB14 800A9F14 AFA40048 */  sw         $a0, 0x48($sp)
/* AAB18 800A9F18 AFB10018 */  sw         $s1, 0x18($sp)
/* AAB1C 800A9F1C AFB00014 */  sw         $s0, 0x14($sp)
/* AAB20 800A9F20 8FB00048 */  lw         $s0, 0x48($sp)
/* AAB24 800A9F24 8E0E0010 */  lw         $t6, 0x10($s0)
/* AAB28 800A9F28 29C10010 */  slti       $at, $t6, 0x10
/* AAB2C 800A9F2C 14200003 */  bnez       $at, .L800A9F3C
/* AAB30 800A9F30 00000000 */   nop
/* AAB34 800A9F34 1000004C */  b          .L800AA068
/* AAB38 800A9F38 2402FFFE */   addiu     $v0, $zero, -2
.L800A9F3C:
/* AAB3C 800A9F3C 8FAF0048 */  lw         $t7, 0x48($sp)
/* AAB40 800A9F40 24010001 */  addiu      $at, $zero, 1
/* AAB44 800A9F44 91F80009 */  lbu        $t8, 9($t7)
/* AAB48 800A9F48 1701001A */  bne        $t8, $at, .L800A9FB4
/* AAB4C 800A9F4C 00000000 */   nop
/* AAB50 800A9F50 8E190010 */  lw         $t9, 0x10($s0)
/* AAB54 800A9F54 3C098019 */  lui        $t1, %hi(D_8018A420)
/* AAB58 800A9F58 2529A420 */  addiu      $t1, $t1, %lo(D_8018A420)
/* AAB5C 800A9F5C 001940C0 */  sll        $t0, $t9, 3
/* AAB60 800A9F60 01098821 */  addu       $s1, $t0, $t1
/* AAB64 800A9F64 8E2A0000 */  lw         $t2, ($s1)
/* AAB68 800A9F68 15400003 */  bnez       $t2, .L800A9F78
/* AAB6C 800A9F6C 00000000 */   nop
/* AAB70 800A9F70 1000003D */  b          .L800AA068
/* AAB74 800A9F74 2402FFFE */   addiu     $v0, $zero, -2
.L800A9F78:
/* AAB78 800A9F78 0C02A45C */  jal        func_800A9170
/* AAB7C 800A9F7C 8E240000 */   lw        $a0, ($s1)
/* AAB80 800A9F80 AFA20024 */  sw         $v0, 0x24($sp)
/* AAB84 800A9F84 8FAB0024 */  lw         $t3, 0x24($sp)
/* AAB88 800A9F88 3C01FC00 */  lui        $at, 0xfc00
/* AAB8C 800A9F8C 3421003F */  ori        $at, $at, 0x3f
/* AAB90 800A9F90 01616024 */  and        $t4, $t3, $at
/* AAB94 800A9F94 2401000D */  addiu      $at, $zero, 0xd
/* AAB98 800A9F98 15810004 */  bne        $t4, $at, .L800A9FAC
/* AAB9C 800A9F9C 00000000 */   nop
/* AABA0 800A9FA0 8E240000 */  lw         $a0, ($s1)
/* AABA4 800A9FA4 0C02A448 */  jal        func_800A9120
/* AABA8 800A9FA8 8E250004 */   lw        $a1, 4($s1)
.L800A9FAC:
/* AABAC 800A9FAC 1000001E */  b          .L800AA028
/* AABB0 800A9FB0 00000000 */   nop
.L800A9FB4:
/* AABB4 800A9FB4 8E0D0010 */  lw         $t5, 0x10($s0)
/* AABB8 800A9FB8 3C0F8019 */  lui        $t7, %hi(D_8018A398)
/* AABBC 800A9FBC 25EFA398 */  addiu      $t7, $t7, %lo(D_8018A398)
/* AABC0 800A9FC0 000D70C0 */  sll        $t6, $t5, 3
/* AABC4 800A9FC4 01CF8821 */  addu       $s1, $t6, $t7
/* AABC8 800A9FC8 8E380000 */  lw         $t8, ($s1)
/* AABCC 800A9FCC 17000003 */  bnez       $t8, .L800A9FDC
/* AABD0 800A9FD0 00000000 */   nop
/* AABD4 800A9FD4 10000024 */  b          .L800AA068
/* AABD8 800A9FD8 2402FFFE */   addiu     $v0, $zero, -2
.L800A9FDC:
/* AABDC 800A9FDC 8E390000 */  lw         $t9, ($s1)
/* AABE0 800A9FE0 8F280000 */  lw         $t0, ($t9)
/* AABE4 800A9FE4 AFA80024 */  sw         $t0, 0x24($sp)
/* AABE8 800A9FE8 8FA90024 */  lw         $t1, 0x24($sp)
/* AABEC 800A9FEC 3C01FC00 */  lui        $at, 0xfc00
/* AABF0 800A9FF0 3421003F */  ori        $at, $at, 0x3f
/* AABF4 800A9FF4 01215024 */  and        $t2, $t1, $at
/* AABF8 800A9FF8 2401000D */  addiu      $at, $zero, 0xd
/* AABFC 800A9FFC 1541000A */  bne        $t2, $at, .L800AA028
/* AAC00 800AA000 00000000 */   nop
/* AAC04 800AA004 8E2B0004 */  lw         $t3, 4($s1)
/* AAC08 800AA008 8E2C0000 */  lw         $t4, ($s1)
/* AAC0C 800AA00C AD8B0000 */  sw         $t3, ($t4)
/* AAC10 800AA010 8E240000 */  lw         $a0, ($s1)
/* AAC14 800AA014 0C029BC4 */  jal        func_800A6F10
/* AAC18 800AA018 24050004 */   addiu     $a1, $zero, 4
/* AAC1C 800AA01C 8E240000 */  lw         $a0, ($s1)
/* AAC20 800AA020 0C029BE4 */  jal        func_800A6F90
/* AAC24 800AA024 24050004 */   addiu     $a1, $zero, 4
.L800AA028:
/* AAC28 800AA028 AE200000 */  sw         $zero, ($s1)
/* AAC2C 800AA02C 920D0004 */  lbu        $t5, 4($s0)
/* AAC30 800AA030 A3AD002C */  sb         $t5, 0x2c($sp)
/* AAC34 800AA034 A7A0002E */  sh         $zero, 0x2e($sp)
/* AAC38 800AA038 8E0E000C */  lw         $t6, 0xc($s0)
/* AAC3C 800AA03C AFAE0034 */  sw         $t6, 0x34($sp)
/* AAC40 800AA040 8E0F0010 */  lw         $t7, 0x10($s0)
/* AAC44 800AA044 AFAF0038 */  sw         $t7, 0x38($sp)
/* AAC48 800AA048 27A40028 */  addiu      $a0, $sp, 0x28
/* AAC4C 800AA04C 24050018 */  addiu      $a1, $zero, 0x18
/* AAC50 800AA050 0C026833 */  jal        func_8009A0CC
/* AAC54 800AA054 24060001 */   addiu     $a2, $zero, 1
/* AAC58 800AA058 10000003 */  b          .L800AA068
/* AAC5C 800AA05C 00001025 */   or        $v0, $zero, $zero
/* AAC60 800AA060 10000001 */  b          .L800AA068
/* AAC64 800AA064 00000000 */   nop
.L800AA068:
/* AAC68 800AA068 8FBF001C */  lw         $ra, 0x1c($sp)
/* AAC6C 800AA06C 8FB00014 */  lw         $s0, 0x14($sp)
/* AAC70 800AA070 8FB10018 */  lw         $s1, 0x18($sp)
/* AAC74 800AA074 03E00008 */  jr         $ra
/* AAC78 800AA078 27BD0048 */   addiu     $sp, $sp, 0x48
