glabel func_8009BD44
/* 9C944 8009BD44 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9C948 8009BD48 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9C94C 8009BD4C AFA40028 */  sw         $a0, 0x28($sp)
/* 9C950 8009BD50 AFA5002C */  sw         $a1, 0x2c($sp)
/* 9C954 8009BD54 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9C958 8009BD58 AFAE0024 */  sw         $t6, 0x24($sp)
/* 9C95C 8009BD5C 8FAF002C */  lw         $t7, 0x2c($sp)
/* 9C960 8009BD60 AFAF0020 */  sw         $t7, 0x20($sp)
/* 9C964 8009BD64 8FB80028 */  lw         $t8, 0x28($sp)
/* 9C968 8009BD68 24014231 */  addiu      $at, $zero, 0x4231
/* 9C96C 8009BD6C 87190000 */  lh         $t9, ($t8)
/* 9C970 8009BD70 13210006 */  beq        $t9, $at, .L8009BD8C
/* 9C974 8009BD74 00000000 */   nop
/* 9C978 8009BD78 24040071 */  addiu      $a0, $zero, 0x71
/* 9C97C 8009BD7C 0C0297B4 */  jal        func_800A5ED0
/* 9C980 8009BD80 00002825 */   or        $a1, $zero, $zero
/* 9C984 8009BD84 10000027 */  b          .L8009BE24
/* 9C988 8009BD88 00000000 */   nop
.L8009BD8C:
/* 9C98C 8009BD8C 8FA80028 */  lw         $t0, 0x28($sp)
/* 9C990 8009BD90 AFA0001C */  sw         $zero, 0x1c($sp)
/* 9C994 8009BD94 85090002 */  lh         $t1, 2($t0)
/* 9C998 8009BD98 19200020 */  blez       $t1, .L8009BE1C
/* 9C99C 8009BD9C 00000000 */   nop
.L8009BDA0:
/* 9C9A0 8009BDA0 8FAB001C */  lw         $t3, 0x1c($sp)
/* 9C9A4 8009BDA4 8FAA0028 */  lw         $t2, 0x28($sp)
/* 9C9A8 8009BDA8 8FAF0024 */  lw         $t7, 0x24($sp)
/* 9C9AC 8009BDAC 000B6080 */  sll        $t4, $t3, 2
/* 9C9B0 8009BDB0 014C6821 */  addu       $t5, $t2, $t4
/* 9C9B4 8009BDB4 8DAE0004 */  lw         $t6, 4($t5)
/* 9C9B8 8009BDB8 01CFC021 */  addu       $t8, $t6, $t7
/* 9C9BC 8009BDBC ADB80004 */  sw         $t8, 4($t5)
/* 9C9C0 8009BDC0 8FA8001C */  lw         $t0, 0x1c($sp)
/* 9C9C4 8009BDC4 8FB90028 */  lw         $t9, 0x28($sp)
/* 9C9C8 8009BDC8 00084880 */  sll        $t1, $t0, 2
/* 9C9CC 8009BDCC 03295821 */  addu       $t3, $t9, $t1
/* 9C9D0 8009BDD0 8D6A0004 */  lw         $t2, 4($t3)
/* 9C9D4 8009BDD4 11400009 */  beqz       $t2, .L8009BDFC
/* 9C9D8 8009BDD8 00000000 */   nop
/* 9C9DC 8009BDDC 8FAE001C */  lw         $t6, 0x1c($sp)
/* 9C9E0 8009BDE0 8FAC0028 */  lw         $t4, 0x28($sp)
/* 9C9E4 8009BDE4 8FA50024 */  lw         $a1, 0x24($sp)
/* 9C9E8 8009BDE8 000E7880 */  sll        $t7, $t6, 2
/* 9C9EC 8009BDEC 018FC021 */  addu       $t8, $t4, $t7
/* 9C9F0 8009BDF0 8F040004 */  lw         $a0, 4($t8)
/* 9C9F4 8009BDF4 0C026F8D */  jal        func_8009BE34
/* 9C9F8 8009BDF8 8FA60020 */   lw        $a2, 0x20($sp)
.L8009BDFC:
/* 9C9FC 8009BDFC 8FAD001C */  lw         $t5, 0x1c($sp)
/* 9CA00 8009BE00 8FB90028 */  lw         $t9, 0x28($sp)
/* 9CA04 8009BE04 25A80001 */  addiu      $t0, $t5, 1
/* 9CA08 8009BE08 AFA8001C */  sw         $t0, 0x1c($sp)
/* 9CA0C 8009BE0C 87290002 */  lh         $t1, 2($t9)
/* 9CA10 8009BE10 0109082A */  slt        $at, $t0, $t1
/* 9CA14 8009BE14 1420FFE2 */  bnez       $at, .L8009BDA0
/* 9CA18 8009BE18 00000000 */   nop
.L8009BE1C:
/* 9CA1C 8009BE1C 10000001 */  b          .L8009BE24
/* 9CA20 8009BE20 00000000 */   nop
.L8009BE24:
/* 9CA24 8009BE24 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9CA28 8009BE28 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9CA2C 8009BE2C 03E00008 */  jr         $ra
/* 9CA30 8009BE30 00000000 */   nop
