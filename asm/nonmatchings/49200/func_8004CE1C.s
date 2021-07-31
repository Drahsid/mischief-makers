glabel func_8004CE1C
/* 4DA1C 8004CE1C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 4DA20 8004CE20 AFA40048 */  sw         $a0, 0x48($sp)
/* 4DA24 8004CE24 97AE004A */  lhu        $t6, 0x4a($sp)
/* 4DA28 8004CE28 3C18800F */  lui        $t8, 0x800f
/* 4DA2C 8004CE2C 000E7880 */  sll        $t7, $t6, 2
/* 4DA30 8004CE30 01EE7823 */  subu       $t7, $t7, $t6
/* 4DA34 8004CE34 000F7880 */  sll        $t7, $t7, 2
/* 4DA38 8004CE38 01EE7821 */  addu       $t7, $t7, $t6
/* 4DA3C 8004CE3C 000F7880 */  sll        $t7, $t7, 2
/* 4DA40 8004CE40 01EE7823 */  subu       $t7, $t7, $t6
/* 4DA44 8004CE44 AFB00018 */  sw         $s0, 0x18($sp)
/* 4DA48 8004CE48 000F78C0 */  sll        $t7, $t7, 3
/* 4DA4C 8004CE4C 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 4DA50 8004CE50 01F88021 */  addu       $s0, $t7, $t8
/* 4DA54 8004CE54 920300D0 */  lbu        $v1, 0xd0($s0)
/* 4DA58 8004CE58 97A4004A */  lhu        $a0, 0x4a($sp)
/* 4DA5C 8004CE5C 1060000B */  beqz       $v1, .L8004CE8C
/* 4DA60 8004CE60 AFBF001C */   sw        $ra, 0x1c($sp)
/* 4DA64 8004CE64 24010001 */  addiu      $at, $zero, 1
/* 4DA68 8004CE68 1061000D */  beq        $v1, $at, .L8004CEA0
/* 4DA6C 8004CE6C 2401000A */   addiu     $at, $zero, 0xa
/* 4DA70 8004CE70 10610043 */  beq        $v1, $at, .L8004CF80
/* 4DA74 8004CE74 240B0021 */   addiu     $t3, $zero, 0x21
/* 4DA78 8004CE78 2401000B */  addiu      $at, $zero, 0xb
/* 4DA7C 8004CE7C 10610047 */  beq        $v1, $at, .L8004CF9C
/* 4DA80 8004CE80 97A4004A */   lhu       $a0, 0x4a($sp)
/* 4DA84 8004CE84 10000096 */  b          .L8004D0E0
/* 4DA88 8004CE88 24010014 */   addiu     $at, $zero, 0x14
.L8004CE8C:
/* 4DA8C 8004CE8C 0C0174DC */  jal        func_8005D370
/* 4DA90 8004CE90 24050021 */   addiu     $a1, $zero, 0x21
/* 4DA94 8004CE94 24190001 */  addiu      $t9, $zero, 1
/* 4DA98 8004CE98 AE00017C */  sw         $zero, 0x17c($s0)
/* 4DA9C 8004CE9C A21900D0 */  sb         $t9, 0xd0($s0)
.L8004CEA0:
/* 4DAA0 8004CEA0 0C012325 */  jal        func_80048C94
/* 4DAA4 8004CEA4 00002025 */   or        $a0, $zero, $zero
/* 4DAA8 8004CEA8 24010003 */  addiu      $at, $zero, 3
/* 4DAAC 8004CEAC 0041001A */  div        $zero, $v0, $at
/* 4DAB0 8004CEB0 8E0400EC */  lw         $a0, 0xec($s0)
/* 4DAB4 8004CEB4 00002825 */  or         $a1, $zero, $zero
/* 4DAB8 8004CEB8 00003012 */  mflo       $a2
/* 4DABC 8004CEBC 0C00A607 */  jal        func_8002981C
/* 4DAC0 8004CEC0 00000000 */   nop
/* 4DAC4 8004CEC4 AE0200EC */  sw         $v0, 0xec($s0)
/* 4DAC8 8004CEC8 0C012325 */  jal        func_80048C94
/* 4DACC 8004CECC 2404000F */   addiu     $a0, $zero, 0xf
/* 4DAD0 8004CED0 AE0200F0 */  sw         $v0, 0xf0($s0)
/* 4DAD4 8004CED4 3C088013 */  lui        $t0, %hi(D_801373D8)
/* 4DAD8 8004CED8 950873D8 */  lhu        $t0, %lo(D_801373D8)($t0)
/* 4DADC 8004CEDC 27A50030 */  addiu      $a1, $sp, 0x30
/* 4DAE0 8004CEE0 31090020 */  andi       $t1, $t0, 0x20
/* 4DAE4 8004CEE4 11200012 */  beqz       $t1, .L8004CF30
/* 4DAE8 8004CEE8 3C063F80 */   lui       $a2, 0x3f80
/* 4DAEC 8004CEEC 44822000 */  mtc1       $v0, $f4
/* 4DAF0 8004CEF0 3C013FF4 */  lui        $at, 0x3ff4
/* 4DAF4 8004CEF4 468021A1 */  cvt.d.w    $f6, $f4
/* 4DAF8 8004CEF8 44814800 */  mtc1       $at, $f9
/* 4DAFC 8004CEFC 44804000 */  mtc1       $zero, $f8
/* 4DB00 8004CF00 00000000 */  nop
/* 4DB04 8004CF04 46283282 */  mul.d      $f10, $f6, $f8
/* 4DB08 8004CF08 444BF800 */  cfc1       $t3, $31
/* 4DB0C 8004CF0C 00000000 */  nop
/* 4DB10 8004CF10 35610003 */  ori        $at, $t3, 3
/* 4DB14 8004CF14 38210002 */  xori       $at, $at, 2
/* 4DB18 8004CF18 44C1F800 */  ctc1       $at, $31
/* 4DB1C 8004CF1C 00000000 */  nop
/* 4DB20 8004CF20 46205424 */  cvt.w.d    $f16, $f10
/* 4DB24 8004CF24 44CBF800 */  ctc1       $t3, $31
/* 4DB28 8004CF28 E61000F0 */  swc1       $f16, 0xf0($s0)
/* 4DB2C 8004CF2C 00000000 */  nop
.L8004CF30:
/* 4DB30 8004CF30 860D00B0 */  lh         $t5, 0xb0($s0)
/* 4DB34 8004CF34 860E008C */  lh         $t6, 0x8c($s0)
/* 4DB38 8004CF38 86190090 */  lh         $t9, 0x90($s0)
/* 4DB3C 8004CF3C 860C0088 */  lh         $t4, 0x88($s0)
/* 4DB40 8004CF40 01AE7821 */  addu       $t7, $t5, $t6
/* 4DB44 8004CF44 25F80004 */  addiu      $t8, $t7, 4
/* 4DB48 8004CF48 240901AA */  addiu      $t1, $zero, 0x1aa
/* 4DB4C 8004CF4C 97A4004A */  lhu        $a0, 0x4a($sp)
/* 4DB50 8004CF50 27280001 */  addiu      $t0, $t9, 1
/* 4DB54 8004CF54 AFB80034 */  sw         $t8, 0x34($sp)
/* 4DB58 8004CF58 AFA80038 */  sw         $t0, 0x38($sp)
/* 4DB5C 8004CF5C AFA9003C */  sw         $t1, 0x3c($sp)
/* 4DB60 8004CF60 AFA00040 */  sw         $zero, 0x40($sp)
/* 4DB64 8004CF64 24070014 */  addiu      $a3, $zero, 0x14
/* 4DB68 8004CF68 0C0167CC */  jal        func_80059F30
/* 4DB6C 8004CF6C AFAC0030 */   sw        $t4, 0x30($sp)
/* 4DB70 8004CF70 240A0014 */  addiu      $t2, $zero, 0x14
/* 4DB74 8004CF74 A20A00D0 */  sb         $t2, 0xd0($s0)
/* 4DB78 8004CF78 10000058 */  b          .L8004D0DC
/* 4DB7C 8004CF7C 314300FF */   andi      $v1, $t2, 0xff
.L8004CF80:
/* 4DB80 8004CF80 240C000B */  addiu      $t4, $zero, 0xb
/* 4DB84 8004CF84 AE0B0170 */  sw         $t3, 0x170($s0)
/* 4DB88 8004CF88 AE00017C */  sw         $zero, 0x17c($s0)
/* 4DB8C 8004CF8C A20C00D0 */  sb         $t4, 0xd0($s0)
/* 4DB90 8004CF90 10000052 */  b          .L8004D0DC
/* 4DB94 8004CF94 318300FF */   andi      $v1, $t4, 0xff
/* 4DB98 8004CF98 97A4004A */  lhu        $a0, 0x4a($sp)
.L8004CF9C:
/* 4DB9C 8004CF9C 0C017506 */  jal        func_8005D418
/* 4DBA0 8004CFA0 00000000 */   nop
/* 4DBA4 8004CFA4 14400004 */  bnez       $v0, .L8004CFB8
/* 4DBA8 8004CFA8 00000000 */   nop
/* 4DBAC 8004CFAC 920300D0 */  lbu        $v1, 0xd0($s0)
/* 4DBB0 8004CFB0 1000004B */  b          .L8004D0E0
/* 4DBB4 8004CFB4 24010014 */   addiu     $at, $zero, 0x14
.L8004CFB8:
/* 4DBB8 8004CFB8 0C01230A */  jal        func_80048C28
/* 4DBBC 8004CFBC 24040001 */   addiu     $a0, $zero, 1
/* 4DBC0 8004CFC0 24010004 */  addiu      $at, $zero, 4
/* 4DBC4 8004CFC4 10410008 */  beq        $v0, $at, .L8004CFE8
/* 4DBC8 8004CFC8 2404000F */   addiu     $a0, $zero, 0xf
/* 4DBCC 8004CFCC 24010006 */  addiu      $at, $zero, 6
/* 4DBD0 8004CFD0 10410007 */  beq        $v0, $at, .L8004CFF0
/* 4DBD4 8004CFD4 24010008 */   addiu     $at, $zero, 8
/* 4DBD8 8004CFD8 10410007 */  beq        $v0, $at, .L8004CFF8
/* 4DBDC 8004CFDC 24050380 */   addiu     $a1, $zero, 0x380
/* 4DBE0 8004CFE0 10000005 */  b          .L8004CFF8
/* 4DBE4 8004CFE4 24050080 */   addiu     $a1, $zero, 0x80
.L8004CFE8:
/* 4DBE8 8004CFE8 10000003 */  b          .L8004CFF8
/* 4DBEC 8004CFEC 24050030 */   addiu     $a1, $zero, 0x30
.L8004CFF0:
/* 4DBF0 8004CFF0 10000001 */  b          .L8004CFF8
/* 4DBF4 8004CFF4 24050380 */   addiu     $a1, $zero, 0x380
.L8004CFF8:
/* 4DBF8 8004CFF8 0C012325 */  jal        func_80048C94
/* 4DBFC 8004CFFC AFA5002C */   sw        $a1, 0x2c($sp)
/* 4DC00 8004D000 8FA5002C */  lw         $a1, 0x2c($sp)
/* 4DC04 8004D004 44822000 */  mtc1       $v0, $f4
/* 4DC08 8004D008 30AD03FF */  andi       $t5, $a1, 0x3ff
/* 4DC0C 8004D00C 000D7080 */  sll        $t6, $t5, 2
/* 4DC10 8004D010 3C01800C */  lui        $at, %hi(D_800BCCD0)
/* 4DC14 8004D014 468021A0 */  cvt.s.w    $f6, $f4
/* 4DC18 8004D018 002E0821 */  addu       $at, $at, $t6
/* 4DC1C 8004D01C C432CCD0 */  lwc1       $f18, %lo(D_800BCCD0)($at)
/* 4DC20 8004D020 00000000 */  nop
/* 4DC24 8004D024 46069202 */  mul.s      $f8, $f18, $f6
/* 4DC28 8004D028 444FF800 */  cfc1       $t7, $31
/* 4DC2C 8004D02C 00000000 */  nop
/* 4DC30 8004D030 35E10003 */  ori        $at, $t7, 3
/* 4DC34 8004D034 38210002 */  xori       $at, $at, 2
/* 4DC38 8004D038 44C1F800 */  ctc1       $at, $31
/* 4DC3C 8004D03C 00000000 */  nop
/* 4DC40 8004D040 460042A4 */  cvt.w.s    $f10, $f8
/* 4DC44 8004D044 44045000 */  mfc1       $a0, $f10
/* 4DC48 8004D048 44CFF800 */  ctc1       $t7, $31
/* 4DC4C 8004D04C 0C0171B4 */  jal        func_8005C6D0
/* 4DC50 8004D050 00000000 */   nop
/* 4DC54 8004D054 8E180080 */  lw         $t8, 0x80($s0)
/* 4DC58 8004D058 8FA5002C */  lw         $a1, 0x2c($sp)
/* 4DC5C 8004D05C 33190020 */  andi       $t9, $t8, 0x20
/* 4DC60 8004D060 13200003 */  beqz       $t9, .L8004D070
/* 4DC64 8004D064 AE0200EC */   sw        $v0, 0xec($s0)
/* 4DC68 8004D068 00024823 */  negu       $t1, $v0
/* 4DC6C 8004D06C AE0900EC */  sw         $t1, 0xec($s0)
.L8004D070:
/* 4DC70 8004D070 2404000F */  addiu      $a0, $zero, 0xf
/* 4DC74 8004D074 0C012325 */  jal        func_80048C94
/* 4DC78 8004D078 AFA5002C */   sw        $a1, 0x2c($sp)
/* 4DC7C 8004D07C 8FA5002C */  lw         $a1, 0x2c($sp)
/* 4DC80 8004D080 44822000 */  mtc1       $v0, $f4
/* 4DC84 8004D084 24AAFF00 */  addiu      $t2, $a1, -0x100
/* 4DC88 8004D088 314B03FF */  andi       $t3, $t2, 0x3ff
/* 4DC8C 8004D08C 000B6080 */  sll        $t4, $t3, 2
/* 4DC90 8004D090 3C01800C */  lui        $at, %hi(D_800BCCD0)
/* 4DC94 8004D094 468024A0 */  cvt.s.w    $f18, $f4
/* 4DC98 8004D098 002C0821 */  addu       $at, $at, $t4
/* 4DC9C 8004D09C C430CCD0 */  lwc1       $f16, %lo(D_800BCCD0)($at)
/* 4DCA0 8004D0A0 240F0014 */  addiu      $t7, $zero, 0x14
/* 4DCA4 8004D0A4 46128182 */  mul.s      $f6, $f16, $f18
/* 4DCA8 8004D0A8 A20F00D0 */  sb         $t7, 0xd0($s0)
/* 4DCAC 8004D0AC 31E300FF */  andi       $v1, $t7, 0xff
/* 4DCB0 8004D0B0 444DF800 */  cfc1       $t5, $31
/* 4DCB4 8004D0B4 00000000 */  nop
/* 4DCB8 8004D0B8 35A10003 */  ori        $at, $t5, 3
/* 4DCBC 8004D0BC 38210002 */  xori       $at, $at, 2
/* 4DCC0 8004D0C0 44C1F800 */  ctc1       $at, $31
/* 4DCC4 8004D0C4 00000000 */  nop
/* 4DCC8 8004D0C8 46003224 */  cvt.w.s    $f8, $f6
/* 4DCCC 8004D0CC 440E4000 */  mfc1       $t6, $f8
/* 4DCD0 8004D0D0 44CDF800 */  ctc1       $t5, $31
/* 4DCD4 8004D0D4 AE0E00F0 */  sw         $t6, 0xf0($s0)
/* 4DCD8 8004D0D8 00000000 */  nop
.L8004D0DC:
/* 4DCDC 8004D0DC 24010014 */  addiu      $at, $zero, 0x14
.L8004D0E0:
/* 4DCE0 8004D0E0 14610013 */  bne        $v1, $at, .L8004D130
/* 4DCE4 8004D0E4 24180024 */   addiu     $t8, $zero, 0x24
/* 4DCE8 8004D0E8 8E0A0080 */  lw         $t2, 0x80($s0)
/* 4DCEC 8004D0EC 3C01FF3C */  lui        $at, 0xff3c
/* 4DCF0 8004D0F0 3421FFFF */  ori        $at, $at, 0xffff
/* 4DCF4 8004D0F4 01415824 */  and        $t3, $t2, $at
/* 4DCF8 8004D0F8 8608008C */  lh         $t0, 0x8c($s0)
/* 4DCFC 8004D0FC 3C010002 */  lui        $at, 2
/* 4DD00 8004D100 24190004 */  addiu      $t9, $zero, 4
/* 4DD04 8004D104 01616825 */  or         $t5, $t3, $at
/* 4DD08 8004D108 AE0B0080 */  sw         $t3, 0x80($s0)
/* 4DD0C 8004D10C 2509FFFF */  addiu      $t1, $t0, -1
/* 4DD10 8004D110 AE180170 */  sw         $t8, 0x170($s0)
/* 4DD14 8004D114 AE19017C */  sw         $t9, 0x17c($s0)
/* 4DD18 8004D118 A609008C */  sh         $t1, 0x8c($s0)
/* 4DD1C 8004D11C AE0D0080 */  sw         $t5, 0x80($s0)
/* 4DD20 8004D120 0C000CD3 */  jal        SFX_Play_1
/* 4DD24 8004D124 24040024 */   addiu     $a0, $zero, 0x24
/* 4DD28 8004D128 240E0016 */  addiu      $t6, $zero, 0x16
/* 4DD2C 8004D12C A60E00D0 */  sh         $t6, 0xd0($s0)
.L8004D130:
/* 4DD30 8004D130 8FBF001C */  lw         $ra, 0x1c($sp)
/* 4DD34 8004D134 8FB00018 */  lw         $s0, 0x18($sp)
/* 4DD38 8004D138 03E00008 */  jr         $ra
/* 4DD3C 8004D13C 27BD0048 */   addiu     $sp, $sp, 0x48
