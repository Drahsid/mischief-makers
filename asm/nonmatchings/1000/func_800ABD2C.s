glabel func_800ABD2C
/* AC92C 800ABD2C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* AC930 800ABD30 AFBF001C */  sw         $ra, 0x1c($sp)
/* AC934 800ABD34 AFA40038 */  sw         $a0, 0x38($sp)
/* AC938 800ABD38 AFB00018 */  sw         $s0, 0x18($sp)
/* AC93C 800ABD3C 8FAE0038 */  lw         $t6, 0x38($sp)
/* AC940 800ABD40 8DCF0018 */  lw         $t7, 0x18($t6)
/* AC944 800ABD44 15E00003 */  bnez       $t7, .L800ABD54
/* AC948 800ABD48 00000000 */   nop
/* AC94C 800ABD4C 10000034 */  b          .L800ABE20
/* AC950 800ABD50 00000000 */   nop
.L800ABD54:
/* AC954 800ABD54 8FB80038 */  lw         $t8, 0x38($sp)
/* AC958 800ABD58 27A50028 */  addiu      $a1, $sp, 0x28
/* AC95C 800ABD5C 0C02DCEB */  jal        func_800B73AC
/* AC960 800ABD60 8F040018 */   lw        $a0, 0x18($t8)
/* AC964 800ABD64 87B00028 */  lh         $s0, 0x28($sp)
/* AC968 800ABD68 24010001 */  addiu      $at, $zero, 1
/* AC96C 800ABD6C 12010009 */  beq        $s0, $at, .L800ABD94
/* AC970 800ABD70 00000000 */   nop
/* AC974 800ABD74 24010003 */  addiu      $at, $zero, 3
/* AC978 800ABD78 1201000D */  beq        $s0, $at, .L800ABDB0
/* AC97C 800ABD7C 00000000 */   nop
/* AC980 800ABD80 24010004 */  addiu      $at, $zero, 4
/* AC984 800ABD84 12010011 */  beq        $s0, $at, .L800ABDCC
/* AC988 800ABD88 00000000 */   nop
/* AC98C 800ABD8C 1000001C */  b          .L800ABE00
/* AC990 800ABD90 00000000 */   nop
.L800ABD94:
/* AC994 800ABD94 8FA40038 */  lw         $a0, 0x38($sp)
/* AC998 800ABD98 0C02AF8D */  jal        func_800ABE34
/* AC99C 800ABD9C 27A50028 */   addiu     $a1, $sp, 0x28
/* AC9A0 800ABDA0 0C02AF09 */  jal        func_800ABC24
/* AC9A4 800ABDA4 8FA40038 */   lw        $a0, 0x38($sp)
/* AC9A8 800ABDA8 1000001B */  b          .L800ABE18
/* AC9AC 800ABDAC 00000000 */   nop
.L800ABDB0:
/* AC9B0 800ABDB0 8FA40038 */  lw         $a0, 0x38($sp)
/* AC9B4 800ABDB4 0C02B2B3 */  jal        func_800ACACC
/* AC9B8 800ABDB8 27A50028 */   addiu     $a1, $sp, 0x28
/* AC9BC 800ABDBC 0C02AF09 */  jal        func_800ABC24
/* AC9C0 800ABDC0 8FA40038 */   lw        $a0, 0x38($sp)
/* AC9C4 800ABDC4 10000014 */  b          .L800ABE18
/* AC9C8 800ABDC8 00000000 */   nop
.L800ABDCC:
/* AC9CC 800ABDCC 8FA80038 */  lw         $t0, 0x38($sp)
/* AC9D0 800ABDD0 24190002 */  addiu      $t9, $zero, 2
/* AC9D4 800ABDD4 AD19002C */  sw         $t9, 0x2c($t0)
/* AC9D8 800ABDD8 24090010 */  addiu      $t1, $zero, 0x10
/* AC9DC 800ABDDC A7A90028 */  sh         $t1, 0x28($sp)
/* AC9E0 800ABDE0 8FA40038 */  lw         $a0, 0x38($sp)
/* AC9E4 800ABDE4 3C067FFF */  lui        $a2, 0x7fff
/* AC9E8 800ABDE8 34C6FFFF */  ori        $a2, $a2, 0xffff
/* AC9EC 800ABDEC 27A50028 */  addiu      $a1, $sp, 0x28
/* AC9F0 800ABDF0 0C02B620 */  jal        func_800AD880
/* AC9F4 800ABDF4 24840048 */   addiu     $a0, $a0, 0x48
/* AC9F8 800ABDF8 10000007 */  b          .L800ABE18
/* AC9FC 800ABDFC 00000000 */   nop
.L800ABE00:
/* ACA00 800ABE00 3C04800F */  lui        $a0, %hi(D_800EE070)
/* ACA04 800ABE04 3C05800F */  lui        $a1, %hi(D_800EE078)
/* ACA08 800ABE08 24A5E078 */  addiu      $a1, $a1, %lo(D_800EE078)
/* ACA0C 800ABE0C 2484E070 */  addiu      $a0, $a0, %lo(D_800EE070)
/* ACA10 800ABE10 0C026E74 */  jal        func_8009B9D0
/* ACA14 800ABE14 2406019C */   addiu     $a2, $zero, 0x19c
.L800ABE18:
/* ACA18 800ABE18 10000001 */  b          .L800ABE20
/* ACA1C 800ABE1C 00000000 */   nop
.L800ABE20:
/* ACA20 800ABE20 8FBF001C */  lw         $ra, 0x1c($sp)
/* ACA24 800ABE24 8FB00018 */  lw         $s0, 0x18($sp)
/* ACA28 800ABE28 27BD0038 */  addiu      $sp, $sp, 0x38
/* ACA2C 800ABE2C 03E00008 */  jr         $ra
/* ACA30 800ABE30 00000000 */   nop
