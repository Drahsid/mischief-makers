glabel func_8009DE40
/* 9EA40 8009DE40 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 9EA44 8009DE44 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9EA48 8009DE48 AFA40050 */  sw         $a0, 0x50($sp)
/* 9EA4C 8009DE4C AFA50054 */  sw         $a1, 0x54($sp)
/* 9EA50 8009DE50 8FAE0054 */  lw         $t6, 0x54($sp)
/* 9EA54 8009DE54 00000000 */  nop
/* 9EA58 8009DE58 25CF0004 */  addiu      $t7, $t6, 4
/* 9EA5C 8009DE5C AFAF004C */  sw         $t7, 0x4c($sp)
/* 9EA60 8009DE60 AFA00028 */  sw         $zero, 0x28($sp)
/* 9EA64 8009DE64 AFA0001C */  sw         $zero, 0x1c($sp)
/* 9EA68 8009DE68 8FB80054 */  lw         $t8, 0x54($sp)
/* 9EA6C 8009DE6C 240100FF */  addiu      $at, $zero, 0xff
/* 9EA70 8009DE70 93190008 */  lbu        $t9, 8($t8)
/* 9EA74 8009DE74 00000000 */  nop
/* 9EA78 8009DE78 1721009D */  bne        $t9, $at, .L8009E0F0
/* 9EA7C 8009DE7C 00000000 */   nop
/* 9EA80 8009DE80 8FA80054 */  lw         $t0, 0x54($sp)
/* 9EA84 8009DE84 24010051 */  addiu      $at, $zero, 0x51
/* 9EA88 8009DE88 91090009 */  lbu        $t1, 9($t0)
/* 9EA8C 8009DE8C 00000000 */  nop
/* 9EA90 8009DE90 15210097 */  bne        $t1, $at, .L8009E0F0
/* 9EA94 8009DE94 00000000 */   nop
/* 9EA98 8009DE98 8FAA0050 */  lw         $t2, 0x50($sp)
/* 9EA9C 8009DE9C 00000000 */  nop
/* 9EAA0 8009DEA0 8D4B0024 */  lw         $t3, 0x24($t2)
/* 9EAA4 8009DEA4 00000000 */  nop
/* 9EAA8 8009DEA8 AFAB0034 */  sw         $t3, 0x34($sp)
/* 9EAAC 8009DEAC 8FAC004C */  lw         $t4, 0x4c($sp)
/* 9EAB0 8009DEB0 00000000 */  nop
/* 9EAB4 8009DEB4 918D0007 */  lbu        $t5, 7($t4)
/* 9EAB8 8009DEB8 918F0008 */  lbu        $t7, 8($t4)
/* 9EABC 8009DEBC 91880009 */  lbu        $t0, 9($t4)
/* 9EAC0 8009DEC0 000D7400 */  sll        $t6, $t5, 0x10
/* 9EAC4 8009DEC4 000FC200 */  sll        $t8, $t7, 8
/* 9EAC8 8009DEC8 01D8C825 */  or         $t9, $t6, $t8
/* 9EACC 8009DECC 03284825 */  or         $t1, $t9, $t0
/* 9EAD0 8009DED0 AFA90038 */  sw         $t1, 0x38($sp)
/* 9EAD4 8009DED4 8FAA0038 */  lw         $t2, 0x38($sp)
/* 9EAD8 8009DED8 8FA40050 */  lw         $a0, 0x50($sp)
/* 9EADC 8009DEDC 448A2000 */  mtc1       $t2, $f4
/* 9EAE0 8009DEE0 00000000 */  nop
/* 9EAE4 8009DEE4 46802120 */  cvt.s.w    $f4, $f4
/* 9EAE8 8009DEE8 44052000 */  mfc1       $a1, $f4
/* 9EAEC 8009DEEC 0C02788C */  jal        func_8009E230
/* 9EAF0 8009DEF0 00000000 */   nop
/* 9EAF4 8009DEF4 8FAB0050 */  lw         $t3, 0x50($sp)
/* 9EAF8 8009DEF8 00000000 */  nop
/* 9EAFC 8009DEFC 8D6D0050 */  lw         $t5, 0x50($t3)
/* 9EB00 8009DF00 00000000 */  nop
/* 9EB04 8009DF04 AFAD0024 */  sw         $t5, 0x24($sp)
/* 9EB08 8009DF08 8FAF0024 */  lw         $t7, 0x24($sp)
/* 9EB0C 8009DF0C 00000000 */  nop
/* 9EB10 8009DF10 11E00047 */  beqz       $t7, .L8009E030
/* 9EB14 8009DF14 00000000 */   nop
.L8009DF18:
/* 9EB18 8009DF18 8FB80024 */  lw         $t8, 0x24($sp)
/* 9EB1C 8009DF1C 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9EB20 8009DF20 8F0C0008 */  lw         $t4, 8($t8)
/* 9EB24 8009DF24 00000000 */  nop
/* 9EB28 8009DF28 01CCC821 */  addu       $t9, $t6, $t4
/* 9EB2C 8009DF2C AFB90028 */  sw         $t9, 0x28($sp)
/* 9EB30 8009DF30 8FA80024 */  lw         $t0, 0x24($sp)
/* 9EB34 8009DF34 00000000 */  nop
/* 9EB38 8009DF38 8D090000 */  lw         $t1, ($t0)
/* 9EB3C 8009DF3C 00000000 */  nop
/* 9EB40 8009DF40 AFA90020 */  sw         $t1, 0x20($sp)
/* 9EB44 8009DF44 8FAA0024 */  lw         $t2, 0x24($sp)
/* 9EB48 8009DF48 24010015 */  addiu      $at, $zero, 0x15
/* 9EB4C 8009DF4C 854B000C */  lh         $t3, 0xc($t2)
/* 9EB50 8009DF50 00000000 */  nop
/* 9EB54 8009DF54 1561002F */  bne        $t3, $at, .L8009E014
/* 9EB58 8009DF58 00000000 */   nop
/* 9EB5C 8009DF5C 8FA40024 */  lw         $a0, 0x24($sp)
/* 9EB60 8009DF60 0C026EBB */  jal        func_8009BAEC
/* 9EB64 8009DF64 00000000 */   nop
/* 9EB68 8009DF68 8FAD001C */  lw         $t5, 0x1c($sp)
/* 9EB6C 8009DF6C 00000000 */  nop
/* 9EB70 8009DF70 11A00007 */  beqz       $t5, .L8009DF90
/* 9EB74 8009DF74 00000000 */   nop
/* 9EB78 8009DF78 8FA40024 */  lw         $a0, 0x24($sp)
/* 9EB7C 8009DF7C 8FA5001C */  lw         $a1, 0x1c($sp)
/* 9EB80 8009DF80 0C026EAE */  jal        func_8009BAB8
/* 9EB84 8009DF84 00000000 */   nop
/* 9EB88 8009DF88 1000000A */  b          .L8009DFB4
/* 9EB8C 8009DF8C 00000000 */   nop
.L8009DF90:
/* 9EB90 8009DF90 8FAF0024 */  lw         $t7, 0x24($sp)
/* 9EB94 8009DF94 00000000 */  nop
/* 9EB98 8009DF98 ADE00000 */  sw         $zero, ($t7)
/* 9EB9C 8009DF9C 8FB80024 */  lw         $t8, 0x24($sp)
/* 9EBA0 8009DFA0 00000000 */  nop
/* 9EBA4 8009DFA4 AF000004 */  sw         $zero, 4($t8)
/* 9EBA8 8009DFA8 8FAE0024 */  lw         $t6, 0x24($sp)
/* 9EBAC 8009DFAC 00000000 */  nop
/* 9EBB0 8009DFB0 AFAE001C */  sw         $t6, 0x1c($sp)
.L8009DFB4:
/* 9EBB4 8009DFB4 8FAC0028 */  lw         $t4, 0x28($sp)
/* 9EBB8 8009DFB8 00000000 */  nop
/* 9EBBC 8009DFBC AFAC002C */  sw         $t4, 0x2c($sp)
/* 9EBC0 8009DFC0 8FB90020 */  lw         $t9, 0x20($sp)
/* 9EBC4 8009DFC4 00000000 */  nop
/* 9EBC8 8009DFC8 1320000E */  beqz       $t9, .L8009E004
/* 9EBCC 8009DFCC 00000000 */   nop
/* 9EBD0 8009DFD0 8FA90024 */  lw         $t1, 0x24($sp)
/* 9EBD4 8009DFD4 8FA80028 */  lw         $t0, 0x28($sp)
/* 9EBD8 8009DFD8 8D2A0008 */  lw         $t2, 8($t1)
/* 9EBDC 8009DFDC 00000000 */  nop
/* 9EBE0 8009DFE0 010A5823 */  subu       $t3, $t0, $t2
/* 9EBE4 8009DFE4 AFAB0028 */  sw         $t3, 0x28($sp)
/* 9EBE8 8009DFE8 8FAD0020 */  lw         $t5, 0x20($sp)
/* 9EBEC 8009DFEC 8FB80024 */  lw         $t8, 0x24($sp)
/* 9EBF0 8009DFF0 8DAF0008 */  lw         $t7, 8($t5)
/* 9EBF4 8009DFF4 8F0E0008 */  lw         $t6, 8($t8)
/* 9EBF8 8009DFF8 00000000 */  nop
/* 9EBFC 8009DFFC 01EE6021 */  addu       $t4, $t7, $t6
/* 9EC00 8009E000 ADAC0008 */  sw         $t4, 8($t5)
.L8009E004:
/* 9EC04 8009E004 8FB9002C */  lw         $t9, 0x2c($sp)
/* 9EC08 8009E008 8FA90024 */  lw         $t1, 0x24($sp)
/* 9EC0C 8009E00C 00000000 */  nop
/* 9EC10 8009E010 AD390008 */  sw         $t9, 8($t1)
.L8009E014:
/* 9EC14 8009E014 8FA80020 */  lw         $t0, 0x20($sp)
/* 9EC18 8009E018 00000000 */  nop
/* 9EC1C 8009E01C AFA80024 */  sw         $t0, 0x24($sp)
/* 9EC20 8009E020 8FAA0024 */  lw         $t2, 0x24($sp)
/* 9EC24 8009E024 00000000 */  nop
/* 9EC28 8009E028 1540FFBB */  bnez       $t2, .L8009DF18
/* 9EC2C 8009E02C 00000000 */   nop
.L8009E030:
/* 9EC30 8009E030 8FAB001C */  lw         $t3, 0x1c($sp)
/* 9EC34 8009E034 00000000 */  nop
/* 9EC38 8009E038 AFAB0024 */  sw         $t3, 0x24($sp)
/* 9EC3C 8009E03C 8FB80024 */  lw         $t8, 0x24($sp)
/* 9EC40 8009E040 00000000 */  nop
/* 9EC44 8009E044 1300002A */  beqz       $t8, .L8009E0F0
/* 9EC48 8009E048 00000000 */   nop
.L8009E04C:
/* 9EC4C 8009E04C 8FAF0024 */  lw         $t7, 0x24($sp)
/* 9EC50 8009E050 00000000 */  nop
/* 9EC54 8009E054 8DEE0000 */  lw         $t6, ($t7)
/* 9EC58 8009E058 00000000 */  nop
/* 9EC5C 8009E05C AFAE0020 */  sw         $t6, 0x20($sp)
/* 9EC60 8009E060 8FAC0024 */  lw         $t4, 0x24($sp)
/* 9EC64 8009E064 8FB90034 */  lw         $t9, 0x34($sp)
/* 9EC68 8009E068 8D8D0008 */  lw         $t5, 8($t4)
/* 9EC6C 8009E06C 00000000 */  nop
/* 9EC70 8009E070 01B9001A */  div        $zero, $t5, $t9
/* 9EC74 8009E074 17200002 */  bnez       $t9, .L8009E080
/* 9EC78 8009E078 00000000 */   nop
/* 9EC7C 8009E07C 0007000D */  break      7
.L8009E080:
/* 9EC80 8009E080 2401FFFF */   addiu     $at, $zero, -1
/* 9EC84 8009E084 17210004 */  bne        $t9, $at, .L8009E098
/* 9EC88 8009E088 3C018000 */   lui       $at, 0x8000
/* 9EC8C 8009E08C 15A10002 */  bne        $t5, $at, .L8009E098
/* 9EC90 8009E090 00000000 */   nop
/* 9EC94 8009E094 0006000D */  break      6
.L8009E098:
/* 9EC98 8009E098 00004812 */   mflo      $t1
/* 9EC9C 8009E09C AFA90030 */  sw         $t1, 0x30($sp)
/* 9ECA0 8009E0A0 00000000 */  nop
/* 9ECA4 8009E0A4 8FA80050 */  lw         $t0, 0x50($sp)
/* 9ECA8 8009E0A8 8FAB0030 */  lw         $t3, 0x30($sp)
/* 9ECAC 8009E0AC 8D0A0024 */  lw         $t2, 0x24($t0)
/* 9ECB0 8009E0B0 8FAF0024 */  lw         $t7, 0x24($sp)
/* 9ECB4 8009E0B4 014B0019 */  multu      $t2, $t3
/* 9ECB8 8009E0B8 0000C012 */  mflo       $t8
/* 9ECBC 8009E0BC ADF80008 */  sw         $t8, 8($t7)
/* 9ECC0 8009E0C0 00000000 */  nop
/* 9ECC4 8009E0C4 8FA40050 */  lw         $a0, 0x50($sp)
/* 9ECC8 8009E0C8 8FA50024 */  lw         $a1, 0x24($sp)
/* 9ECCC 8009E0CC 0C027842 */  jal        func_8009E108
/* 9ECD0 8009E0D0 24840048 */   addiu     $a0, $a0, 0x48
/* 9ECD4 8009E0D4 8FAE0020 */  lw         $t6, 0x20($sp)
/* 9ECD8 8009E0D8 00000000 */  nop
/* 9ECDC 8009E0DC AFAE0024 */  sw         $t6, 0x24($sp)
/* 9ECE0 8009E0E0 8FAC0024 */  lw         $t4, 0x24($sp)
/* 9ECE4 8009E0E4 00000000 */  nop
/* 9ECE8 8009E0E8 1580FFD8 */  bnez       $t4, .L8009E04C
/* 9ECEC 8009E0EC 00000000 */   nop
.L8009E0F0:
/* 9ECF0 8009E0F0 10000001 */  b          .L8009E0F8
/* 9ECF4 8009E0F4 00000000 */   nop
.L8009E0F8:
/* 9ECF8 8009E0F8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9ECFC 8009E0FC 27BD0050 */  addiu      $sp, $sp, 0x50
/* 9ED00 8009E100 03E00008 */  jr         $ra
/* 9ED04 8009E104 00000000 */   nop
