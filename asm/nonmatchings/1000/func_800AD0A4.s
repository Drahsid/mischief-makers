glabel func_800AD0A4
/* ADCA4 800AD0A4 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* ADCA8 800AD0A8 AFBF0014 */  sw         $ra, 0x14($sp)
/* ADCAC 800AD0AC AFA40040 */  sw         $a0, 0x40($sp)
/* ADCB0 800AD0B0 AFA50044 */  sw         $a1, 0x44($sp)
/* ADCB4 800AD0B4 AFA60048 */  sw         $a2, 0x48($sp)
/* ADCB8 800AD0B8 8FAE0044 */  lw         $t6, 0x44($sp)
/* ADCBC 800AD0BC 8DCF0010 */  lw         $t7, 0x10($t6)
/* ADCC0 800AD0C0 AFAF002C */  sw         $t7, 0x2c($sp)
/* ADCC4 800AD0C4 8FB8002C */  lw         $t8, 0x2c($sp)
/* ADCC8 800AD0C8 93190034 */  lbu        $t9, 0x34($t8)
/* ADCCC 800AD0CC 1720002C */  bnez       $t9, .L800AD180
/* ADCD0 800AD0D0 00000000 */   nop
/* ADCD4 800AD0D4 8FA80040 */  lw         $t0, 0x40($sp)
/* ADCD8 800AD0D8 8D090050 */  lw         $t1, 0x50($t0)
/* ADCDC 800AD0DC AFA90028 */  sw         $t1, 0x28($sp)
/* ADCE0 800AD0E0 8FAA0028 */  lw         $t2, 0x28($sp)
/* ADCE4 800AD0E4 11400026 */  beqz       $t2, .L800AD180
/* ADCE8 800AD0E8 00000000 */   nop
.L800AD0EC:
/* ADCEC 800AD0EC 8FAB0028 */  lw         $t3, 0x28($sp)
/* ADCF0 800AD0F0 8D6C0000 */  lw         $t4, ($t3)
/* ADCF4 800AD0F4 AFAC0024 */  sw         $t4, 0x24($sp)
/* ADCF8 800AD0F8 8FAD0028 */  lw         $t5, 0x28($sp)
/* ADCFC 800AD0FC AFAD0020 */  sw         $t5, 0x20($sp)
/* ADD00 800AD100 8FAE0024 */  lw         $t6, 0x24($sp)
/* ADD04 800AD104 AFAE001C */  sw         $t6, 0x1c($sp)
/* ADD08 800AD108 8FAF0020 */  lw         $t7, 0x20($sp)
/* ADD0C 800AD10C 24010006 */  addiu      $at, $zero, 6
/* ADD10 800AD110 85F8000C */  lh         $t8, 0xc($t7)
/* ADD14 800AD114 17010015 */  bne        $t8, $at, .L800AD16C
/* ADD18 800AD118 00000000 */   nop
/* ADD1C 800AD11C 8FB90020 */  lw         $t9, 0x20($sp)
/* ADD20 800AD120 8FA90044 */  lw         $t1, 0x44($sp)
/* ADD24 800AD124 8F280010 */  lw         $t0, 0x10($t9)
/* ADD28 800AD128 15090010 */  bne        $t0, $t1, .L800AD16C
/* ADD2C 800AD12C 00000000 */   nop
/* ADD30 800AD130 8FAA001C */  lw         $t2, 0x1c($sp)
/* ADD34 800AD134 11400007 */  beqz       $t2, .L800AD154
/* ADD38 800AD138 00000000 */   nop
/* ADD3C 800AD13C 8FAB001C */  lw         $t3, 0x1c($sp)
/* ADD40 800AD140 8FAD0020 */  lw         $t5, 0x20($sp)
/* ADD44 800AD144 8D6C0008 */  lw         $t4, 8($t3)
/* ADD48 800AD148 8DAE0008 */  lw         $t6, 8($t5)
/* ADD4C 800AD14C 018E7821 */  addu       $t7, $t4, $t6
/* ADD50 800AD150 AD6F0008 */  sw         $t7, 8($t3)
.L800AD154:
/* ADD54 800AD154 0C026EBB */  jal        func_8009BAEC
/* ADD58 800AD158 8FA40028 */   lw        $a0, 0x28($sp)
/* ADD5C 800AD15C 8FA50040 */  lw         $a1, 0x40($sp)
/* ADD60 800AD160 8FA40028 */  lw         $a0, 0x28($sp)
/* ADD64 800AD164 0C026EAE */  jal        func_8009BAB8
/* ADD68 800AD168 24A50048 */   addiu     $a1, $a1, 0x48
.L800AD16C:
/* ADD6C 800AD16C 8FB80024 */  lw         $t8, 0x24($sp)
/* ADD70 800AD170 AFB80028 */  sw         $t8, 0x28($sp)
/* ADD74 800AD174 8FB90028 */  lw         $t9, 0x28($sp)
/* ADD78 800AD178 1720FFDC */  bnez       $t9, .L800AD0EC
/* ADD7C 800AD17C 00000000 */   nop
.L800AD180:
/* ADD80 800AD180 8FA8002C */  lw         $t0, 0x2c($sp)
/* ADD84 800AD184 A1000033 */  sb         $zero, 0x33($t0)
/* ADD88 800AD188 8FAA002C */  lw         $t2, 0x2c($sp)
/* ADD8C 800AD18C 24090003 */  addiu      $t1, $zero, 3
/* ADD90 800AD190 A1490034 */  sb         $t1, 0x34($t2)
/* ADD94 800AD194 8FAD002C */  lw         $t5, 0x2c($sp)
/* ADD98 800AD198 A1A00030 */  sb         $zero, 0x30($t5)
/* ADD9C 800AD19C 8FAC0040 */  lw         $t4, 0x40($sp)
/* ADDA0 800AD1A0 8FAF0048 */  lw         $t7, 0x48($sp)
/* ADDA4 800AD1A4 8FB8002C */  lw         $t8, 0x2c($sp)
/* ADDA8 800AD1A8 8D8E001C */  lw         $t6, 0x1c($t4)
/* ADDAC 800AD1AC 01CF5821 */  addu       $t3, $t6, $t7
/* ADDB0 800AD1B0 AF0B0024 */  sw         $t3, 0x24($t8)
/* ADDB4 800AD1B4 8FB90040 */  lw         $t9, 0x40($sp)
/* ADDB8 800AD1B8 8FA50044 */  lw         $a1, 0x44($sp)
/* ADDBC 800AD1BC 00003025 */  or         $a2, $zero, $zero
/* ADDC0 800AD1C0 0C02DF14 */  jal        func_800B7C50
/* ADDC4 800AD1C4 8F240014 */   lw        $a0, 0x14($t9)
/* ADDC8 800AD1C8 8FA80040 */  lw         $t0, 0x40($sp)
/* ADDCC 800AD1CC 8FA50044 */  lw         $a1, 0x44($sp)
/* ADDD0 800AD1D0 00003025 */  or         $a2, $zero, $zero
/* ADDD4 800AD1D4 8FA70048 */  lw         $a3, 0x48($sp)
/* ADDD8 800AD1D8 0C02B768 */  jal        func_800ADDA0
/* ADDDC 800AD1DC 8D040014 */   lw        $a0, 0x14($t0)
/* ADDE0 800AD1E0 24090005 */  addiu      $t1, $zero, 5
/* ADDE4 800AD1E4 A7A90030 */  sh         $t1, 0x30($sp)
/* ADDE8 800AD1E8 8FAA0044 */  lw         $t2, 0x44($sp)
/* ADDEC 800AD1EC AFAA0034 */  sw         $t2, 0x34($sp)
/* ADDF0 800AD1F0 8FA40040 */  lw         $a0, 0x40($sp)
/* ADDF4 800AD1F4 27A50030 */  addiu      $a1, $sp, 0x30
/* ADDF8 800AD1F8 8FA60048 */  lw         $a2, 0x48($sp)
/* ADDFC 800AD1FC 0C02B620 */  jal        func_800AD880
/* ADE00 800AD200 24840048 */   addiu     $a0, $a0, 0x48
/* ADE04 800AD204 10000001 */  b          .L800AD20C
/* ADE08 800AD208 00000000 */   nop
.L800AD20C:
/* ADE0C 800AD20C 8FBF0014 */  lw         $ra, 0x14($sp)
/* ADE10 800AD210 27BD0040 */  addiu      $sp, $sp, 0x40
/* ADE14 800AD214 03E00008 */  jr         $ra
/* ADE18 800AD218 00000000 */   nop
