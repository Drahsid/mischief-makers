glabel func_800ADE90
/* AEA90 800ADE90 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AEA94 800ADE94 AFBF0014 */  sw         $ra, 0x14($sp)
/* AEA98 800ADE98 AFA40020 */  sw         $a0, 0x20($sp)
/* AEA9C 800ADE9C AFA50024 */  sw         $a1, 0x24($sp)
/* AEAA0 800ADEA0 AFA60028 */  sw         $a2, 0x28($sp)
/* AEAA4 800ADEA4 8FAE0024 */  lw         $t6, 0x24($sp)
/* AEAA8 800ADEA8 8DCF0008 */  lw         $t7, 8($t6)
/* AEAAC 800ADEAC 11E00027 */  beqz       $t7, .L800ADF4C
/* AEAB0 800ADEB0 00000000 */   nop
/* AEAB4 800ADEB4 0C027AE8 */  jal        func_8009EBA0
/* AEAB8 800ADEB8 00000000 */   nop
/* AEABC 800ADEBC AFA2001C */  sw         $v0, 0x1c($sp)
/* AEAC0 800ADEC0 8FB8001C */  lw         $t8, 0x1c($sp)
/* AEAC4 800ADEC4 17000006 */  bnez       $t8, .L800ADEE0
/* AEAC8 800ADEC8 00000000 */   nop
/* AEACC 800ADECC 2404006A */  addiu      $a0, $zero, 0x6a
/* AEAD0 800ADED0 0C0297B4 */  jal        func_800A5ED0
/* AEAD4 800ADED4 00002825 */   or        $a1, $zero, $zero
/* AEAD8 800ADED8 1000001E */  b          .L800ADF54
/* AEADC 800ADEDC 00000000 */   nop
.L800ADEE0:
/* AEAE0 800ADEE0 8FA90024 */  lw         $t1, 0x24($sp)
/* AEAE4 800ADEE4 8FB90020 */  lw         $t9, 0x20($sp)
/* AEAE8 800ADEE8 8FAD001C */  lw         $t5, 0x1c($sp)
/* AEAEC 800ADEEC 8D2A0008 */  lw         $t2, 8($t1)
/* AEAF0 800ADEF0 8F28001C */  lw         $t0, 0x1c($t9)
/* AEAF4 800ADEF4 8D4B00D8 */  lw         $t3, 0xd8($t2)
/* AEAF8 800ADEF8 010B6021 */  addu       $t4, $t0, $t3
/* AEAFC 800ADEFC ADAC0004 */  sw         $t4, 4($t5)
/* AEB00 800ADF00 8FAF001C */  lw         $t7, 0x1c($sp)
/* AEB04 800ADF04 240E0007 */  addiu      $t6, $zero, 7
/* AEB08 800ADF08 A5EE0008 */  sh         $t6, 8($t7)
/* AEB0C 800ADF0C C7A40028 */  lwc1       $f4, 0x28($sp)
/* AEB10 800ADF10 8FB8001C */  lw         $t8, 0x1c($sp)
/* AEB14 800ADF14 E704000C */  swc1       $f4, 0xc($t8)
/* AEB18 800ADF18 8FB9001C */  lw         $t9, 0x1c($sp)
/* AEB1C 800ADF1C AF200000 */  sw         $zero, ($t9)
/* AEB20 800ADF20 8FA90024 */  lw         $t1, 0x24($sp)
/* AEB24 800ADF24 8D2A0008 */  lw         $t2, 8($t1)
/* AEB28 800ADF28 8D48000C */  lw         $t0, 0xc($t2)
/* AEB2C 800ADF2C AFA80018 */  sw         $t0, 0x18($sp)
/* AEB30 800ADF30 8FAB0018 */  lw         $t3, 0x18($sp)
/* AEB34 800ADF34 24050003 */  addiu      $a1, $zero, 3
/* AEB38 800ADF38 8FA6001C */  lw         $a2, 0x1c($sp)
/* AEB3C 800ADF3C 8D790008 */  lw         $t9, 8($t3)
/* AEB40 800ADF40 01602025 */  or         $a0, $t3, $zero
/* AEB44 800ADF44 0320F809 */  jalr       $t9
/* AEB48 800ADF48 00000000 */   nop
.L800ADF4C:
/* AEB4C 800ADF4C 10000001 */  b          .L800ADF54
/* AEB50 800ADF50 00000000 */   nop
.L800ADF54:
/* AEB54 800ADF54 8FBF0014 */  lw         $ra, 0x14($sp)
/* AEB58 800ADF58 27BD0020 */  addiu      $sp, $sp, 0x20
/* AEB5C 800ADF5C 03E00008 */  jr         $ra
/* AEB60 800ADF60 00000000 */   nop
/* AEB64 800ADF64 00000000 */  nop
/* AEB68 800ADF68 00000000 */  nop
/* AEB6C 800ADF6C 00000000 */  nop
