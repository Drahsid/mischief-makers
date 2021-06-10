glabel func_800AE1A0
/* AEDA0 800AE1A0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AEDA4 800AE1A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* AEDA8 800AE1A8 AFA40028 */  sw         $a0, 0x28($sp)
/* AEDAC 800AE1AC AFA5002C */  sw         $a1, 0x2c($sp)
/* AEDB0 800AE1B0 AFA60030 */  sw         $a2, 0x30($sp)
/* AEDB4 800AE1B4 AFA0001C */  sw         $zero, 0x1c($sp)
/* AEDB8 800AE1B8 8FAE0028 */  lw         $t6, 0x28($sp)
/* AEDBC 800AE1BC 8DCF0014 */  lw         $t7, 0x14($t6)
/* AEDC0 800AE1C0 11E0000C */  beqz       $t7, .L800AE1F4
/* AEDC4 800AE1C4 AFAF0024 */   sw        $t7, 0x24($sp)
/* AEDC8 800AE1C8 8FB80024 */  lw         $t8, 0x24($sp)
/* AEDCC 800AE1CC 8FB9002C */  lw         $t9, 0x2c($sp)
/* AEDD0 800AE1D0 AF380000 */  sw         $t8, ($t9)
/* AEDD4 800AE1D4 0C026EBB */  jal        func_8009BAEC
/* AEDD8 800AE1D8 8FA40024 */   lw        $a0, 0x24($sp)
/* AEDDC 800AE1DC 8FA50028 */  lw         $a1, 0x28($sp)
/* AEDE0 800AE1E0 8FA40024 */  lw         $a0, 0x24($sp)
/* AEDE4 800AE1E4 0C026EAE */  jal        func_8009BAB8
/* AEDE8 800AE1E8 24A5000C */   addiu     $a1, $a1, 0xc
/* AEDEC 800AE1EC 1000002D */  b          .L800AE2A4
/* AEDF0 800AE1F0 00000000 */   nop
.L800AE1F4:
/* AEDF4 800AE1F4 8FA80028 */  lw         $t0, 0x28($sp)
/* AEDF8 800AE1F8 8D090004 */  lw         $t1, 4($t0)
/* AEDFC 800AE1FC 1120000C */  beqz       $t1, .L800AE230
/* AEE00 800AE200 AFA90024 */   sw        $t1, 0x24($sp)
/* AEE04 800AE204 8FAA0024 */  lw         $t2, 0x24($sp)
/* AEE08 800AE208 8FAB002C */  lw         $t3, 0x2c($sp)
/* AEE0C 800AE20C AD6A0000 */  sw         $t2, ($t3)
/* AEE10 800AE210 0C026EBB */  jal        func_8009BAEC
/* AEE14 800AE214 8FA40024 */   lw        $a0, 0x24($sp)
/* AEE18 800AE218 8FA50028 */  lw         $a1, 0x28($sp)
/* AEE1C 800AE21C 8FA40024 */  lw         $a0, 0x24($sp)
/* AEE20 800AE220 0C026EAE */  jal        func_8009BAB8
/* AEE24 800AE224 24A5000C */   addiu     $a1, $a1, 0xc
/* AEE28 800AE228 1000001E */  b          .L800AE2A4
/* AEE2C 800AE22C 00000000 */   nop
.L800AE230:
/* AEE30 800AE230 8FAC0028 */  lw         $t4, 0x28($sp)
/* AEE34 800AE234 8D8D000C */  lw         $t5, 0xc($t4)
/* AEE38 800AE238 11A0001A */  beqz       $t5, .L800AE2A4
/* AEE3C 800AE23C AFAD0024 */   sw        $t5, 0x24($sp)
.L800AE240:
/* AEE40 800AE240 8FAE0024 */  lw         $t6, 0x24($sp)
/* AEE44 800AE244 AFAE0020 */  sw         $t6, 0x20($sp)
/* AEE48 800AE248 8FAF0020 */  lw         $t7, 0x20($sp)
/* AEE4C 800AE24C 87A80032 */  lh         $t0, 0x32($sp)
/* AEE50 800AE250 8DF80008 */  lw         $t8, 8($t7)
/* AEE54 800AE254 87190016 */  lh         $t9, 0x16($t8)
/* AEE58 800AE258 0119082A */  slt        $at, $t0, $t9
/* AEE5C 800AE25C 1420000D */  bnez       $at, .L800AE294
/* AEE60 800AE260 00000000 */   nop
/* AEE64 800AE264 8DE900D8 */  lw         $t1, 0xd8($t7)
/* AEE68 800AE268 1520000A */  bnez       $t1, .L800AE294
/* AEE6C 800AE26C 00000000 */   nop
/* AEE70 800AE270 8FAA0020 */  lw         $t2, 0x20($sp)
/* AEE74 800AE274 8FAB002C */  lw         $t3, 0x2c($sp)
/* AEE78 800AE278 AD6A0000 */  sw         $t2, ($t3)
/* AEE7C 800AE27C 8FAC0020 */  lw         $t4, 0x20($sp)
/* AEE80 800AE280 8D8D0008 */  lw         $t5, 8($t4)
/* AEE84 800AE284 85AE0016 */  lh         $t6, 0x16($t5)
/* AEE88 800AE288 A7AE0032 */  sh         $t6, 0x32($sp)
/* AEE8C 800AE28C 24180001 */  addiu      $t8, $zero, 1
/* AEE90 800AE290 AFB8001C */  sw         $t8, 0x1c($sp)
.L800AE294:
/* AEE94 800AE294 8FB90024 */  lw         $t9, 0x24($sp)
/* AEE98 800AE298 8F280000 */  lw         $t0, ($t9)
/* AEE9C 800AE29C 1500FFE8 */  bnez       $t0, .L800AE240
/* AEEA0 800AE2A0 AFA80024 */   sw        $t0, 0x24($sp)
.L800AE2A4:
/* AEEA4 800AE2A4 10000003 */  b          .L800AE2B4
/* AEEA8 800AE2A8 8FA2001C */   lw        $v0, 0x1c($sp)
/* AEEAC 800AE2AC 10000001 */  b          .L800AE2B4
/* AEEB0 800AE2B0 00000000 */   nop
.L800AE2B4:
/* AEEB4 800AE2B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* AEEB8 800AE2B8 27BD0028 */  addiu      $sp, $sp, 0x28
/* AEEBC 800AE2BC 03E00008 */  jr         $ra
/* AEEC0 800AE2C0 00000000 */   nop
/* AEEC4 800AE2C4 00000000 */  nop
/* AEEC8 800AE2C8 00000000 */  nop
/* AEECC 800AE2CC 00000000 */  nop
