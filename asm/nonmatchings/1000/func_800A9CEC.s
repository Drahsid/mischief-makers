glabel func_800A9CEC
/* AA8EC 800A9CEC 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* AA8F0 800A9CF0 AFBF0024 */  sw         $ra, 0x24($sp)
/* AA8F4 800A9CF4 AFA40050 */  sw         $a0, 0x50($sp)
/* AA8F8 800A9CF8 AFB30020 */  sw         $s3, 0x20($sp)
/* AA8FC 800A9CFC AFB2001C */  sw         $s2, 0x1c($sp)
/* AA900 800A9D00 AFB10018 */  sw         $s1, 0x18($sp)
/* AA904 800A9D04 AFB00014 */  sw         $s0, 0x14($sp)
/* AA908 800A9D08 8FB00050 */  lw         $s0, 0x50($sp)
/* AA90C 800A9D0C 8FAE0050 */  lw         $t6, 0x50($sp)
/* AA910 800A9D10 24010001 */  addiu      $at, $zero, 1
/* AA914 800A9D14 91CF0009 */  lbu        $t7, 9($t6)
/* AA918 800A9D18 15E1000A */  bne        $t7, $at, .L800A9D44
/* AA91C 800A9D1C 00000000 */   nop
/* AA920 800A9D20 3C118019 */  lui        $s1, %hi(D_8018A420)
/* AA924 800A9D24 2631A420 */  addiu      $s1, $s1, %lo(D_8018A420)
/* AA928 800A9D28 3C128019 */  lui        $s2, %hi(D_8018A420)
/* AA92C 800A9D2C 2652A420 */  addiu      $s2, $s2, %lo(D_8018A420)
/* AA930 800A9D30 26520008 */  addiu      $s2, $s2, 8
/* AA934 800A9D34 3C138019 */  lui        $s3, %hi(D_8018A420)
/* AA938 800A9D38 2673A420 */  addiu      $s3, $s3, %lo(D_8018A420)
/* AA93C 800A9D3C 10000009 */  b          .L800A9D64
/* AA940 800A9D40 26730080 */   addiu     $s3, $s3, 0x80
.L800A9D44:
/* AA944 800A9D44 3C118019 */  lui        $s1, %hi(D_8018A398)
/* AA948 800A9D48 2631A398 */  addiu      $s1, $s1, %lo(D_8018A398)
/* AA94C 800A9D4C 3C128019 */  lui        $s2, %hi(D_8018A398)
/* AA950 800A9D50 2652A398 */  addiu      $s2, $s2, %lo(D_8018A398)
/* AA954 800A9D54 26520008 */  addiu      $s2, $s2, 8
/* AA958 800A9D58 3C138019 */  lui        $s3, %hi(D_8018A398)
/* AA95C 800A9D5C 2673A398 */  addiu      $s3, $s3, %lo(D_8018A398)
/* AA960 800A9D60 26730080 */  addiu      $s3, $s3, 0x80
.L800A9D64:
/* AA964 800A9D64 0253082B */  sltu       $at, $s2, $s3
/* AA968 800A9D68 10200014 */  beqz       $at, .L800A9DBC
/* AA96C 800A9D6C 00000000 */   nop
.L800A9D70:
/* AA970 800A9D70 8E580000 */  lw         $t8, ($s2)
/* AA974 800A9D74 1300000B */  beqz       $t8, .L800A9DA4
/* AA978 800A9D78 00000000 */   nop
/* AA97C 800A9D7C 8E590000 */  lw         $t9, ($s2)
/* AA980 800A9D80 8E080010 */  lw         $t0, 0x10($s0)
/* AA984 800A9D84 17280003 */  bne        $t9, $t0, .L800A9D94
/* AA988 800A9D88 00000000 */   nop
/* AA98C 800A9D8C 1000000B */  b          .L800A9DBC
/* AA990 800A9D90 00000000 */   nop
.L800A9D94:
/* AA994 800A9D94 10000005 */  b          .L800A9DAC
/* AA998 800A9D98 00000000 */   nop
/* AA99C 800A9D9C 10000003 */  b          .L800A9DAC
/* AA9A0 800A9DA0 00000000 */   nop
.L800A9DA4:
/* AA9A4 800A9DA4 10000005 */  b          .L800A9DBC
/* AA9A8 800A9DA8 00000000 */   nop
.L800A9DAC:
/* AA9AC 800A9DAC 26520008 */  addiu      $s2, $s2, 8
/* AA9B0 800A9DB0 0253082B */  sltu       $at, $s2, $s3
/* AA9B4 800A9DB4 1420FFEE */  bnez       $at, .L800A9D70
/* AA9B8 800A9DB8 00000000 */   nop
.L800A9DBC:
/* AA9BC 800A9DBC 16530003 */  bne        $s2, $s3, .L800A9DCC
/* AA9C0 800A9DC0 00000000 */   nop
/* AA9C4 800A9DC4 10000043 */  b          .L800A9ED4
/* AA9C8 800A9DC8 2402FFF6 */   addiu     $v0, $zero, -0xa
.L800A9DCC:
/* AA9CC 800A9DCC 8E490000 */  lw         $t1, ($s2)
/* AA9D0 800A9DD0 1520002E */  bnez       $t1, .L800A9E8C
/* AA9D4 800A9DD4 00000000 */   nop
/* AA9D8 800A9DD8 8FAA0050 */  lw         $t2, 0x50($sp)
/* AA9DC 800A9DDC 24010001 */  addiu      $at, $zero, 1
/* AA9E0 800A9DE0 914B0009 */  lbu        $t3, 9($t2)
/* AA9E4 800A9DE4 15610014 */  bne        $t3, $at, .L800A9E38
/* AA9E8 800A9DE8 00000000 */   nop
/* AA9EC 800A9DEC 0C02A45C */  jal        func_800A9170
/* AA9F0 800A9DF0 8E040010 */   lw        $a0, 0x10($s0)
/* AA9F4 800A9DF4 AE420004 */  sw         $v0, 4($s2)
/* AA9F8 800A9DF8 02512823 */  subu       $a1, $s2, $s1
/* AA9FC 800A9DFC 000560C3 */  sra        $t4, $a1, 3
/* AAA00 800A9E00 01802825 */  or         $a1, $t4, $zero
/* AAA04 800A9E04 3C01000F */  lui        $at, 0xf
/* AAA08 800A9E08 3421FFFF */  ori        $at, $at, 0xffff
/* AAA0C 800A9E0C 24A50010 */  addiu      $a1, $a1, 0x10
/* AAA10 800A9E10 00A16824 */  and        $t5, $a1, $at
/* AAA14 800A9E14 01A02825 */  or         $a1, $t5, $zero
/* AAA18 800A9E18 00057180 */  sll        $t6, $a1, 6
/* AAA1C 800A9E1C 01C02825 */  or         $a1, $t6, $zero
/* AAA20 800A9E20 34AF000D */  ori        $t7, $a1, 0xd
/* AAA24 800A9E24 01E02825 */  or         $a1, $t7, $zero
/* AAA28 800A9E28 0C02A448 */  jal        func_800A9120
/* AAA2C 800A9E2C 8E040010 */   lw        $a0, 0x10($s0)
/* AAA30 800A9E30 10000014 */  b          .L800A9E84
/* AAA34 800A9E34 00000000 */   nop
.L800A9E38:
/* AAA38 800A9E38 8E180010 */  lw         $t8, 0x10($s0)
/* AAA3C 800A9E3C 8F190000 */  lw         $t9, ($t8)
/* AAA40 800A9E40 AE590004 */  sw         $t9, 4($s2)
/* AAA44 800A9E44 02514023 */  subu       $t0, $s2, $s1
/* AAA48 800A9E48 000848C3 */  sra        $t1, $t0, 3
/* AAA4C 800A9E4C 3C01000F */  lui        $at, 0xf
/* AAA50 800A9E50 3421FFFF */  ori        $at, $at, 0xffff
/* AAA54 800A9E54 252A0010 */  addiu      $t2, $t1, 0x10
/* AAA58 800A9E58 8E0E0010 */  lw         $t6, 0x10($s0)
/* AAA5C 800A9E5C 01415824 */  and        $t3, $t2, $at
/* AAA60 800A9E60 000B6180 */  sll        $t4, $t3, 6
/* AAA64 800A9E64 358D000D */  ori        $t5, $t4, 0xd
/* AAA68 800A9E68 ADCD0000 */  sw         $t5, ($t6)
/* AAA6C 800A9E6C 8E040010 */  lw         $a0, 0x10($s0)
/* AAA70 800A9E70 0C029BC4 */  jal        func_800A6F10
/* AAA74 800A9E74 24050004 */   addiu     $a1, $zero, 4
/* AAA78 800A9E78 8E040010 */  lw         $a0, 0x10($s0)
/* AAA7C 800A9E7C 0C029BE4 */  jal        func_800A6F90
/* AAA80 800A9E80 24050004 */   addiu     $a1, $zero, 4
.L800A9E84:
/* AAA84 800A9E84 8E0F0010 */  lw         $t7, 0x10($s0)
/* AAA88 800A9E88 AE4F0000 */  sw         $t7, ($s2)
.L800A9E8C:
/* AAA8C 800A9E8C 92180004 */  lbu        $t8, 4($s0)
/* AAA90 800A9E90 A3B8002C */  sb         $t8, 0x2c($sp)
/* AAA94 800A9E94 A7A0002E */  sh         $zero, 0x2e($sp)
/* AAA98 800A9E98 8E19000C */  lw         $t9, 0xc($s0)
/* AAA9C 800A9E9C AFB90034 */  sw         $t9, 0x34($sp)
/* AAAA0 800A9EA0 02514023 */  subu       $t0, $s2, $s1
/* AAAA4 800A9EA4 000848C3 */  sra        $t1, $t0, 3
/* AAAA8 800A9EA8 AFA90038 */  sw         $t1, 0x38($sp)
/* AAAAC 800A9EAC 8E4A0004 */  lw         $t2, 4($s2)
/* AAAB0 800A9EB0 AFAA003C */  sw         $t2, 0x3c($sp)
/* AAAB4 800A9EB4 27A40028 */  addiu      $a0, $sp, 0x28
/* AAAB8 800A9EB8 24050018 */  addiu      $a1, $zero, 0x18
/* AAABC 800A9EBC 0C026833 */  jal        func_8009A0CC
/* AAAC0 800A9EC0 24060001 */   addiu     $a2, $zero, 1
/* AAAC4 800A9EC4 10000003 */  b          .L800A9ED4
/* AAAC8 800A9EC8 00001025 */   or        $v0, $zero, $zero
/* AAACC 800A9ECC 10000001 */  b          .L800A9ED4
/* AAAD0 800A9ED0 00000000 */   nop
.L800A9ED4:
/* AAAD4 800A9ED4 8FBF0024 */  lw         $ra, 0x24($sp)
/* AAAD8 800A9ED8 8FB00014 */  lw         $s0, 0x14($sp)
/* AAADC 800A9EDC 8FB10018 */  lw         $s1, 0x18($sp)
/* AAAE0 800A9EE0 8FB2001C */  lw         $s2, 0x1c($sp)
/* AAAE4 800A9EE4 8FB30020 */  lw         $s3, 0x20($sp)
/* AAAE8 800A9EE8 03E00008 */  jr         $ra
/* AAAEC 800A9EEC 27BD0050 */   addiu     $sp, $sp, 0x50
