glabel func_800AE370
/* AEF70 800AE370 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AEF74 800AE374 AFBF0014 */  sw         $ra, 0x14($sp)
/* AEF78 800AE378 AFA40020 */  sw         $a0, 0x20($sp)
/* AEF7C 800AE37C AFA50024 */  sw         $a1, 0x24($sp)
/* AEF80 800AE380 AFA60028 */  sw         $a2, 0x28($sp)
/* AEF84 800AE384 AFA7002C */  sw         $a3, 0x2c($sp)
/* AEF88 800AE388 8FAE0024 */  lw         $t6, 0x24($sp)
/* AEF8C 800AE38C 8DCF0008 */  lw         $t7, 8($t6)
/* AEF90 800AE390 11E00042 */  beqz       $t7, .L800AE49C
/* AEF94 800AE394 00000000 */   nop
/* AEF98 800AE398 0C027AE8 */  jal        func_8009EBA0
/* AEF9C 800AE39C 00000000 */   nop
/* AEFA0 800AE3A0 AFA2001C */  sw         $v0, 0x1c($sp)
/* AEFA4 800AE3A4 8FB8001C */  lw         $t8, 0x1c($sp)
/* AEFA8 800AE3A8 17000006 */  bnez       $t8, .L800AE3C4
/* AEFAC 800AE3AC 00000000 */   nop
/* AEFB0 800AE3B0 2404006A */  addiu      $a0, $zero, 0x6a
/* AEFB4 800AE3B4 0C0297B4 */  jal        func_800A5ED0
/* AEFB8 800AE3B8 00002825 */   or        $a1, $zero, $zero
/* AEFBC 800AE3BC 10000039 */  b          .L800AE4A4
/* AEFC0 800AE3C0 00000000 */   nop
.L800AE3C4:
/* AEFC4 800AE3C4 93B9003B */  lbu        $t9, 0x3b($sp)
/* AEFC8 800AE3C8 07210004 */  bgez       $t9, .L800AE3DC
/* AEFCC 800AE3CC 00000000 */   nop
/* AEFD0 800AE3D0 93A8003B */  lbu        $t0, 0x3b($sp)
/* AEFD4 800AE3D4 00084823 */  negu       $t1, $t0
/* AEFD8 800AE3D8 A3A9003B */  sb         $t1, 0x3b($sp)
.L800AE3DC:
/* AEFDC 800AE3DC 8FAC0024 */  lw         $t4, 0x24($sp)
/* AEFE0 800AE3E0 8FAA0020 */  lw         $t2, 0x20($sp)
/* AEFE4 800AE3E4 8FB8001C */  lw         $t8, 0x1c($sp)
/* AEFE8 800AE3E8 8D8D0008 */  lw         $t5, 8($t4)
/* AEFEC 800AE3EC 8D4B001C */  lw         $t3, 0x1c($t2)
/* AEFF0 800AE3F0 8DAE00D8 */  lw         $t6, 0xd8($t5)
/* AEFF4 800AE3F4 016E7821 */  addu       $t7, $t3, $t6
/* AEFF8 800AE3F8 AF0F0004 */  sw         $t7, 4($t8)
/* AEFFC 800AE3FC 8FB9001C */  lw         $t9, 0x1c($sp)
/* AF000 800AE400 AF200000 */  sw         $zero, ($t9)
/* AF004 800AE404 8FA9001C */  lw         $t1, 0x1c($sp)
/* AF008 800AE408 2408000D */  addiu      $t0, $zero, 0xd
/* AF00C 800AE40C A5280008 */  sh         $t0, 8($t1)
/* AF010 800AE410 8FAA0024 */  lw         $t2, 0x24($sp)
/* AF014 800AE414 8FAD001C */  lw         $t5, 0x1c($sp)
/* AF018 800AE418 854C001A */  lh         $t4, 0x1a($t2)
/* AF01C 800AE41C A5AC000A */  sh         $t4, 0xa($t5)
/* AF020 800AE420 93AB0037 */  lbu        $t3, 0x37($sp)
/* AF024 800AE424 8FAE001C */  lw         $t6, 0x1c($sp)
/* AF028 800AE428 A1CB0012 */  sb         $t3, 0x12($t6)
/* AF02C 800AE42C 87AF0032 */  lh         $t7, 0x32($sp)
/* AF030 800AE430 8FB8001C */  lw         $t8, 0x1c($sp)
/* AF034 800AE434 A70F0010 */  sh         $t7, 0x10($t8)
/* AF038 800AE438 93B9003B */  lbu        $t9, 0x3b($sp)
/* AF03C 800AE43C 8FA8001C */  lw         $t0, 0x1c($sp)
/* AF040 800AE440 A1190013 */  sb         $t9, 0x13($t0)
/* AF044 800AE444 C7A4002C */  lwc1       $f4, 0x2c($sp)
/* AF048 800AE448 8FA9001C */  lw         $t1, 0x1c($sp)
/* AF04C 800AE44C E524000C */  swc1       $f4, 0xc($t1)
/* AF050 800AE450 8FA40020 */  lw         $a0, 0x20($sp)
/* AF054 800AE454 0C027B50 */  jal        func_8009ED40
/* AF058 800AE458 8FA5003C */   lw        $a1, 0x3c($sp)
/* AF05C 800AE45C 8FAA001C */  lw         $t2, 0x1c($sp)
/* AF060 800AE460 AD420014 */  sw         $v0, 0x14($t2)
/* AF064 800AE464 8FAC0028 */  lw         $t4, 0x28($sp)
/* AF068 800AE468 8FAD001C */  lw         $t5, 0x1c($sp)
/* AF06C 800AE46C ADAC0018 */  sw         $t4, 0x18($t5)
/* AF070 800AE470 8FAB0024 */  lw         $t3, 0x24($sp)
/* AF074 800AE474 8D6E0008 */  lw         $t6, 8($t3)
/* AF078 800AE478 8DCF000C */  lw         $t7, 0xc($t6)
/* AF07C 800AE47C AFAF0018 */  sw         $t7, 0x18($sp)
/* AF080 800AE480 8FB80018 */  lw         $t8, 0x18($sp)
/* AF084 800AE484 24050003 */  addiu      $a1, $zero, 3
/* AF088 800AE488 8FA6001C */  lw         $a2, 0x1c($sp)
/* AF08C 800AE48C 8F190008 */  lw         $t9, 8($t8)
/* AF090 800AE490 03002025 */  or         $a0, $t8, $zero
/* AF094 800AE494 0320F809 */  jalr       $t9
/* AF098 800AE498 00000000 */   nop
.L800AE49C:
/* AF09C 800AE49C 10000001 */  b          .L800AE4A4
/* AF0A0 800AE4A0 00000000 */   nop
.L800AE4A4:
/* AF0A4 800AE4A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* AF0A8 800AE4A8 27BD0020 */  addiu      $sp, $sp, 0x20
/* AF0AC 800AE4AC 03E00008 */  jr         $ra
/* AF0B0 800AE4B0 00000000 */   nop
/* AF0B4 800AE4B4 00000000 */  nop
/* AF0B8 800AE4B8 00000000 */  nop
/* AF0BC 800AE4BC 00000000 */  nop
