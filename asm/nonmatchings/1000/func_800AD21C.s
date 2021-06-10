glabel func_800AD21C
/* ADE1C 800AD21C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* ADE20 800AD220 AFBF0014 */  sw         $ra, 0x14($sp)
/* ADE24 800AD224 AFA40030 */  sw         $a0, 0x30($sp)
/* ADE28 800AD228 AFA50034 */  sw         $a1, 0x34($sp)
/* ADE2C 800AD22C AFA60038 */  sw         $a2, 0x38($sp)
/* ADE30 800AD230 AFA00020 */  sw         $zero, 0x20($sp)
/* ADE34 800AD234 240E0001 */  addiu      $t6, $zero, 1
/* ADE38 800AD238 A3AE001F */  sb         $t6, 0x1f($sp)
/* ADE3C 800AD23C 8FAF0030 */  lw         $t7, 0x30($sp)
/* ADE40 800AD240 8DF80050 */  lw         $t8, 0x50($t7)
/* ADE44 800AD244 AFB8002C */  sw         $t8, 0x2c($sp)
/* ADE48 800AD248 8FB9002C */  lw         $t9, 0x2c($sp)
/* ADE4C 800AD24C 13200033 */  beqz       $t9, .L800AD31C
/* ADE50 800AD250 00000000 */   nop
.L800AD254:
/* ADE54 800AD254 8FA8002C */  lw         $t0, 0x2c($sp)
/* ADE58 800AD258 8D090000 */  lw         $t1, ($t0)
/* ADE5C 800AD25C AFA90028 */  sw         $t1, 0x28($sp)
/* ADE60 800AD260 8FAA002C */  lw         $t2, 0x2c($sp)
/* ADE64 800AD264 AFAA0024 */  sw         $t2, 0x24($sp)
/* ADE68 800AD268 8FAC0024 */  lw         $t4, 0x24($sp)
/* ADE6C 800AD26C 8FAB0020 */  lw         $t3, 0x20($sp)
/* ADE70 800AD270 8D8D0008 */  lw         $t5, 8($t4)
/* ADE74 800AD274 016D7021 */  addu       $t6, $t3, $t5
/* ADE78 800AD278 AFAE0020 */  sw         $t6, 0x20($sp)
/* ADE7C 800AD27C 8FAF0024 */  lw         $t7, 0x24($sp)
/* ADE80 800AD280 24010005 */  addiu      $at, $zero, 5
/* ADE84 800AD284 85F8000C */  lh         $t8, 0xc($t7)
/* ADE88 800AD288 1701001F */  bne        $t8, $at, .L800AD308
/* ADE8C 800AD28C 00000000 */   nop
/* ADE90 800AD290 8FB90024 */  lw         $t9, 0x24($sp)
/* ADE94 800AD294 8FA90034 */  lw         $t1, 0x34($sp)
/* ADE98 800AD298 8F280010 */  lw         $t0, 0x10($t9)
/* ADE9C 800AD29C 1509001A */  bne        $t0, $t1, .L800AD308
/* ADEA0 800AD2A0 00000000 */   nop
/* ADEA4 800AD2A4 8FAA0020 */  lw         $t2, 0x20($sp)
/* ADEA8 800AD2A8 8FAC0038 */  lw         $t4, 0x38($sp)
/* ADEAC 800AD2AC 018A082A */  slt        $at, $t4, $t2
/* ADEB0 800AD2B0 10200012 */  beqz       $at, .L800AD2FC
/* ADEB4 800AD2B4 00000000 */   nop
/* ADEB8 800AD2B8 8FAB0028 */  lw         $t3, 0x28($sp)
/* ADEBC 800AD2BC 11600007 */  beqz       $t3, .L800AD2DC
/* ADEC0 800AD2C0 00000000 */   nop
/* ADEC4 800AD2C4 8FAD0028 */  lw         $t5, 0x28($sp)
/* ADEC8 800AD2C8 8FAF0024 */  lw         $t7, 0x24($sp)
/* ADECC 800AD2CC 8DAE0008 */  lw         $t6, 8($t5)
/* ADED0 800AD2D0 8DF80008 */  lw         $t8, 8($t7)
/* ADED4 800AD2D4 01D8C821 */  addu       $t9, $t6, $t8
/* ADED8 800AD2D8 ADB90008 */  sw         $t9, 8($t5)
.L800AD2DC:
/* ADEDC 800AD2DC 0C026EBB */  jal        func_8009BAEC
/* ADEE0 800AD2E0 8FA4002C */   lw        $a0, 0x2c($sp)
/* ADEE4 800AD2E4 8FA50030 */  lw         $a1, 0x30($sp)
/* ADEE8 800AD2E8 8FA4002C */  lw         $a0, 0x2c($sp)
/* ADEEC 800AD2EC 0C026EAE */  jal        func_8009BAB8
/* ADEF0 800AD2F0 24A50048 */   addiu     $a1, $a1, 0x48
/* ADEF4 800AD2F4 10000002 */  b          .L800AD300
/* ADEF8 800AD2F8 00000000 */   nop
.L800AD2FC:
/* ADEFC 800AD2FC A3A0001F */  sb         $zero, 0x1f($sp)
.L800AD300:
/* ADF00 800AD300 10000006 */  b          .L800AD31C
/* ADF04 800AD304 00000000 */   nop
.L800AD308:
/* ADF08 800AD308 8FA80028 */  lw         $t0, 0x28($sp)
/* ADF0C 800AD30C AFA8002C */  sw         $t0, 0x2c($sp)
/* ADF10 800AD310 8FA9002C */  lw         $t1, 0x2c($sp)
/* ADF14 800AD314 1520FFCF */  bnez       $t1, .L800AD254
/* ADF18 800AD318 00000000 */   nop
.L800AD31C:
/* ADF1C 800AD31C 10000003 */  b          .L800AD32C
/* ADF20 800AD320 93A2001F */   lbu       $v0, 0x1f($sp)
/* ADF24 800AD324 10000001 */  b          .L800AD32C
/* ADF28 800AD328 00000000 */   nop
.L800AD32C:
/* ADF2C 800AD32C 8FBF0014 */  lw         $ra, 0x14($sp)
/* ADF30 800AD330 27BD0030 */  addiu      $sp, $sp, 0x30
/* ADF34 800AD334 03E00008 */  jr         $ra
/* ADF38 800AD338 00000000 */   nop
