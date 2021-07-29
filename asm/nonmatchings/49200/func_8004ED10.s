glabel func_8004ED10
/* 4F910 8004ED10 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4F914 8004ED14 AFB10018 */  sw         $s1, 0x18($sp)
/* 4F918 8004ED18 3C118013 */  lui        $s1, %hi(D_801373E0)
/* 4F91C 8004ED1C 263173E0 */  addiu      $s1, $s1, %lo(D_801373E0)
/* 4F920 8004ED20 8E2E0078 */  lw         $t6, 0x78($s1)
/* 4F924 8004ED24 AFBF001C */  sw         $ra, 0x1c($sp)
/* 4F928 8004ED28 31CF0008 */  andi       $t7, $t6, 8
/* 4F92C 8004ED2C AFB00014 */  sw         $s0, 0x14($sp)
/* 4F930 8004ED30 15E00158 */  bnez       $t7, .L8004F294
/* 4F934 8004ED34 AFA40030 */   sw        $a0, 0x30($sp)
/* 4F938 8004ED38 97B80032 */  lhu        $t8, 0x32($sp)
/* 4F93C 8004ED3C 3C08800F */  lui        $t0, 0x800f
/* 4F940 8004ED40 0018C880 */  sll        $t9, $t8, 2
/* 4F944 8004ED44 0338C823 */  subu       $t9, $t9, $t8
/* 4F948 8004ED48 0019C880 */  sll        $t9, $t9, 2
/* 4F94C 8004ED4C 0338C821 */  addu       $t9, $t9, $t8
/* 4F950 8004ED50 0019C880 */  sll        $t9, $t9, 2
/* 4F954 8004ED54 0338C823 */  subu       $t9, $t9, $t8
/* 4F958 8004ED58 0019C8C0 */  sll        $t9, $t9, 3
/* 4F95C 8004ED5C 2508F510 */  addiu      $t0, $t0, -0xaf0
/* 4F960 8004ED60 03288021 */  addu       $s0, $t9, $t0
/* 4F964 8004ED64 960900D0 */  lhu        $t1, 0xd0($s0)
/* 4F968 8004ED68 00000000 */  nop
/* 4F96C 8004ED6C 15200003 */  bnez       $t1, .L8004ED7C
/* 4F970 8004ED70 00000000 */   nop
/* 4F974 8004ED74 0C012A58 */  jal        func_8004A960
/* 4F978 8004ED78 03002025 */   or        $a0, $t8, $zero
.L8004ED7C:
/* 4F97C 8004ED7C 3C03800C */  lui        $v1, %hi(D_800BE5E4)
/* 4F980 8004ED80 960A0094 */  lhu        $t2, 0x94($s0)
/* 4F984 8004ED84 2463E5E4 */  addiu      $v1, $v1, %lo(D_800BE5E4)
/* 4F988 8004ED88 00001025 */  or         $v0, $zero, $zero
/* 4F98C 8004ED8C A4600000 */  sh         $zero, ($v1)
/* 4F990 8004ED90 846C0000 */  lh         $t4, ($v1)
/* 4F994 8004ED94 314BF781 */  andi       $t3, $t2, 0xf781
/* 4F998 8004ED98 A60B0094 */  sh         $t3, 0x94($s0)
/* 4F99C 8004ED9C A202009D */  sb         $v0, 0x9d($s0)
/* 4F9A0 8004EDA0 A202009C */  sb         $v0, 0x9c($s0)
/* 4F9A4 8004EDA4 A200009E */  sb         $zero, 0x9e($s0)
/* 4F9A8 8004EDA8 3C01800C */  lui        $at, %hi(D_800BE5E0)
/* 4F9AC 8004EDAC A42CE5E0 */  sh         $t4, %lo(D_800BE5E0)($at)
/* 4F9B0 8004EDB0 A6200070 */  sh         $zero, 0x70($s1)
/* 4F9B4 8004EDB4 AE000090 */  sw         $zero, 0x90($s0)
/* 4F9B8 8004EDB8 3C04800D */  lui        $a0, %hi(D_800D57E0)
/* 4F9BC 8004EDBC 8C8457E0 */  lw         $a0, %lo(D_800D57E0)($a0)
/* 4F9C0 8004EDC0 24056000 */  addiu      $a1, $zero, 0x6000
/* 4F9C4 8004EDC4 0C00A607 */  jal        func_8002981C
/* 4F9C8 8004EDC8 24060400 */   addiu     $a2, $zero, 0x400
/* 4F9CC 8004EDCC 3C01800D */  lui        $at, %hi(D_800D57E0)
/* 4F9D0 8004EDD0 AC2257E0 */  sw         $v0, %lo(D_800D57E0)($at)
/* 4F9D4 8004EDD4 9203012F */  lbu        $v1, 0x12f($s0)
/* 4F9D8 8004EDD8 3C058013 */  lui        $a1, %hi(D_801370CE)
/* 4F9DC 8004EDDC 28610004 */  slti       $at, $v1, 4
/* 4F9E0 8004EDE0 10200003 */  beqz       $at, .L8004EDF0
/* 4F9E4 8004EDE4 24A570CE */   addiu     $a1, $a1, %lo(D_801370CE)
/* 4F9E8 8004EDE8 246D0001 */  addiu      $t5, $v1, 1
/* 4F9EC 8004EDEC A20D012F */  sb         $t5, 0x12f($s0)
.L8004EDF0:
/* 4F9F0 8004EDF0 3C0E800C */  lui        $t6, %hi(buttonHold)
/* 4F9F4 8004EDF4 95CEE4F8 */  lhu        $t6, %lo(buttonHold)($t6)
/* 4F9F8 8004EDF8 3C068013 */  lui        $a2, %hi(D_801370CC)
/* 4F9FC 8004EDFC 24C670CC */  addiu      $a2, $a2, %lo(D_801370CC)
/* 4FA00 8004EE00 3C0F800C */  lui        $t7, %hi(buttonPress)
/* 4FA04 8004EE04 A4CE0000 */  sh         $t6, ($a2)
/* 4FA08 8004EE08 95EFE4FC */  lhu        $t7, %lo(buttonPress)($t7)
/* 4FA0C 8004EE0C 3C02800C */  lui        $v0, %hi(D_800BE5F4)
/* 4FA10 8004EE10 A4AF0000 */  sh         $t7, ($a1)
/* 4FA14 8004EE14 8C42E5F4 */  lw         $v0, %lo(D_800BE5F4)($v0)
/* 4FA18 8004EE18 00000000 */  nop
/* 4FA1C 8004EE1C 10400021 */  beqz       $v0, .L8004EEA4
/* 4FA20 8004EE20 305900FF */   andi      $t9, $v0, 0xff
/* 4FA24 8004EE24 24010002 */  addiu      $at, $zero, 2
/* 4FA28 8004EE28 17210006 */  bne        $t9, $at, .L8004EE44
/* 4FA2C 8004EE2C 3C028012 */   lui       $v0, 0x8012
/* 4FA30 8004EE30 97A40032 */  lhu        $a0, 0x32($sp)
/* 4FA34 8004EE34 0C01216B */  jal        func_800485AC
/* 4FA38 8004EE38 00000000 */   nop
/* 4FA3C 8004EE3C 1000001A */  b          .L8004EEA8
/* 4FA40 8004EE40 97A40032 */   lhu       $a0, 0x32($sp)
.L8004EE44:
/* 4FA44 8004EE44 3C038012 */  lui        $v1, %hi(D_8011DD70)
/* 4FA48 8004EE48 3C048012 */  lui        $a0, %hi(D_8011DDF0)
/* 4FA4C 8004EE4C 2484DDF0 */  addiu      $a0, $a0, %lo(D_8011DDF0)
/* 4FA50 8004EE50 2463DD70 */  addiu      $v1, $v1, %lo(D_8011DD70)
/* 4FA54 8004EE54 244225F0 */  addiu      $v0, $v0, 0x25f0
.L8004EE58:
/* 4FA58 8004EE58 24630008 */  addiu      $v1, $v1, 8
/* 4FA5C 8004EE5C A4400002 */  sh         $zero, 2($v0)
/* 4FA60 8004EE60 A460FFFA */  sh         $zero, -6($v1)
/* 4FA64 8004EE64 A4400004 */  sh         $zero, 4($v0)
/* 4FA68 8004EE68 A460FFFC */  sh         $zero, -4($v1)
/* 4FA6C 8004EE6C A4400006 */  sh         $zero, 6($v0)
/* 4FA70 8004EE70 A460FFFE */  sh         $zero, -2($v1)
/* 4FA74 8004EE74 24420008 */  addiu      $v0, $v0, 8
/* 4FA78 8004EE78 A440FFF8 */  sh         $zero, -8($v0)
/* 4FA7C 8004EE7C 1464FFF6 */  bne        $v1, $a0, .L8004EE58
/* 4FA80 8004EE80 A460FFF8 */   sh        $zero, -8($v1)
/* 4FA84 8004EE84 240C0064 */  addiu      $t4, $zero, 0x64
/* 4FA88 8004EE88 97A40032 */  lhu        $a0, 0x32($sp)
/* 4FA8C 8004EE8C A4A00000 */  sh         $zero, ($a1)
/* 4FA90 8004EE90 A4C00000 */  sh         $zero, ($a2)
/* 4FA94 8004EE94 A200012F */  sb         $zero, 0x12f($s0)
/* 4FA98 8004EE98 A22C0012 */  sb         $t4, 0x12($s1)
/* 4FA9C 8004EE9C 0C01216B */  jal        func_800485AC
/* 4FAA0 8004EEA0 A2200013 */   sb        $zero, 0x13($s1)
.L8004EEA4:
/* 4FAA4 8004EEA4 97A40032 */  lhu        $a0, 0x32($sp)
.L8004EEA8:
/* 4FAA8 8004EEA8 0C012180 */  jal        func_80048600
/* 4FAAC 8004EEAC 00000000 */   nop
/* 4FAB0 8004EEB0 3C018013 */  lui        $at, %hi(D_801373D8)
/* 4FAB4 8004EEB4 A42273D8 */  sh         $v0, %lo(D_801373D8)($at)
/* 4FAB8 8004EEB8 8E240050 */  lw         $a0, 0x50($s1)
/* 4FABC 8004EEBC 00000000 */  nop
/* 4FAC0 8004EEC0 1080000A */  beqz       $a0, .L8004EEEC
/* 4FAC4 8004EEC4 2405FFE0 */   addiu     $a1, $zero, -0x20
/* 4FAC8 8004EEC8 0C020E81 */  jal        func_80083A04
/* 4FACC 8004EECC 24060040 */   addiu     $a2, $zero, 0x40
/* 4FAD0 8004EED0 3C0D800C */  lui        $t5, %hi(D_800BE4E0)
/* 4FAD4 8004EED4 95ADE4E0 */  lhu        $t5, %lo(D_800BE4E0)($t5)
/* 4FAD8 8004EED8 00000000 */  nop
/* 4FADC 8004EEDC 31AE007F */  andi       $t6, $t5, 0x7f
/* 4FAE0 8004EEE0 15C00002 */  bnez       $t6, .L8004EEEC
/* 4FAE4 8004EEE4 00000000 */   nop
/* 4FAE8 8004EEE8 AE200050 */  sw         $zero, 0x50($s1)
.L8004EEEC:
/* 4FAEC 8004EEEC 8E240054 */  lw         $a0, 0x54($s1)
/* 4FAF0 8004EEF0 00000000 */  nop
/* 4FAF4 8004EEF4 1080000A */  beqz       $a0, .L8004EF20
/* 4FAF8 8004EEF8 2405FFE0 */   addiu     $a1, $zero, -0x20
/* 4FAFC 8004EEFC 0C020E81 */  jal        func_80083A04
/* 4FB00 8004EF00 24060030 */   addiu     $a2, $zero, 0x30
/* 4FB04 8004EF04 3C0F800C */  lui        $t7, %hi(D_800BE4E0)
/* 4FB08 8004EF08 95EFE4E0 */  lhu        $t7, %lo(D_800BE4E0)($t7)
/* 4FB0C 8004EF0C 00000000 */  nop
/* 4FB10 8004EF10 31F9007F */  andi       $t9, $t7, 0x7f
/* 4FB14 8004EF14 17200002 */  bnez       $t9, .L8004EF20
/* 4FB18 8004EF18 00000000 */   nop
/* 4FB1C 8004EF1C AE200054 */  sw         $zero, 0x54($s1)
.L8004EF20:
/* 4FB20 8004EF20 8E240058 */  lw         $a0, 0x58($s1)
/* 4FB24 8004EF24 00000000 */  nop
/* 4FB28 8004EF28 1080000A */  beqz       $a0, .L8004EF54
/* 4FB2C 8004EF2C 2405FFE0 */   addiu     $a1, $zero, -0x20
/* 4FB30 8004EF30 0C020E81 */  jal        func_80083A04
/* 4FB34 8004EF34 24060020 */   addiu     $a2, $zero, 0x20
/* 4FB38 8004EF38 3C08800C */  lui        $t0, %hi(D_800BE4E0)
/* 4FB3C 8004EF3C 9508E4E0 */  lhu        $t0, %lo(D_800BE4E0)($t0)
/* 4FB40 8004EF40 00000000 */  nop
/* 4FB44 8004EF44 3109007F */  andi       $t1, $t0, 0x7f
/* 4FB48 8004EF48 15200002 */  bnez       $t1, .L8004EF54
/* 4FB4C 8004EF4C 00000000 */   nop
/* 4FB50 8004EF50 AE200058 */  sw         $zero, 0x58($s1)
.L8004EF54:
/* 4FB54 8004EF54 8E24005C */  lw         $a0, 0x5c($s1)
/* 4FB58 8004EF58 00000000 */  nop
/* 4FB5C 8004EF5C 1080000A */  beqz       $a0, .L8004EF88
/* 4FB60 8004EF60 2405FFE0 */   addiu     $a1, $zero, -0x20
/* 4FB64 8004EF64 0C020E81 */  jal        func_80083A04
/* 4FB68 8004EF68 24060010 */   addiu     $a2, $zero, 0x10
/* 4FB6C 8004EF6C 3C18800C */  lui        $t8, %hi(D_800BE4E0)
/* 4FB70 8004EF70 9718E4E0 */  lhu        $t8, %lo(D_800BE4E0)($t8)
/* 4FB74 8004EF74 00000000 */  nop
/* 4FB78 8004EF78 330A007F */  andi       $t2, $t8, 0x7f
/* 4FB7C 8004EF7C 15400002 */  bnez       $t2, .L8004EF88
/* 4FB80 8004EF80 00000000 */   nop
/* 4FB84 8004EF84 AE20005C */  sw         $zero, 0x5c($s1)
.L8004EF88:
/* 4FB88 8004EF88 8E0B0080 */  lw         $t3, 0x80($s0)
/* 4FB8C 8004EF8C 8E2D0078 */  lw         $t5, 0x78($s1)
/* 4FB90 8004EF90 2401FFF7 */  addiu      $at, $zero, -9
/* 4FB94 8004EF94 01616024 */  and        $t4, $t3, $at
/* 4FB98 8004EF98 000D73C0 */  sll        $t6, $t5, 0xf
/* 4FB9C 8004EF9C 05C1000D */  bgez       $t6, .L8004EFD4
/* 4FBA0 8004EFA0 AE0C0080 */   sw        $t4, 0x80($s0)
/* 4FBA4 8004EFA4 35990008 */  ori        $t9, $t4, 8
/* 4FBA8 8004EFA8 9608012C */  lhu        $t0, 0x12c($s0)
/* 4FBAC 8004EFAC 921800DC */  lbu        $t8, 0xdc($s0)
/* 4FBB0 8004EFB0 8E2C0060 */  lw         $t4, 0x60($s1)
/* 4FBB4 8004EFB4 8E0B0088 */  lw         $t3, 0x88($s0)
/* 4FBB8 8004EFB8 3109FFF8 */  andi       $t1, $t0, 0xfff8
/* 4FBBC 8004EFBC 330AFFFE */  andi       $t2, $t8, 0xfffe
/* 4FBC0 8004EFC0 016C6821 */  addu       $t5, $t3, $t4
/* 4FBC4 8004EFC4 AE190080 */  sw         $t9, 0x80($s0)
/* 4FBC8 8004EFC8 A609012C */  sh         $t1, 0x12c($s0)
/* 4FBCC 8004EFCC A20A00DC */  sb         $t2, 0xdc($s0)
/* 4FBD0 8004EFD0 AE0D0088 */  sw         $t5, 0x88($s0)
.L8004EFD4:
/* 4FBD4 8004EFD4 97A40032 */  lhu        $a0, 0x32($sp)
/* 4FBD8 8004EFD8 0C0121D0 */  jal        func_80048740
/* 4FBDC 8004EFDC 00000000 */   nop
/* 4FBE0 8004EFE0 97A40032 */  lhu        $a0, 0x32($sp)
/* 4FBE4 8004EFE4 0C0163E7 */  jal        func_80058F9C
/* 4FBE8 8004EFE8 00000000 */   nop
/* 4FBEC 8004EFEC 14400004 */  bnez       $v0, .L8004F000
/* 4FBF0 8004EFF0 00000000 */   nop
/* 4FBF4 8004EFF4 97A40032 */  lhu        $a0, 0x32($sp)
/* 4FBF8 8004EFF8 0C0126B0 */  jal        func_80049AC0
/* 4FBFC 8004EFFC 00000000 */   nop
.L8004F000:
/* 4FC00 8004F000 961900D0 */  lhu        $t9, 0xd0($s0)
/* 4FC04 8004F004 8E0E0080 */  lw         $t6, 0x80($s0)
/* 4FC08 8004F008 332800FF */  andi       $t0, $t9, 0xff
/* 4FC0C 8004F00C 2401F57F */  addiu      $at, $zero, -0xa81
/* 4FC10 8004F010 00084880 */  sll        $t1, $t0, 2
/* 4FC14 8004F014 3C19800D */  lui        $t9, 0x800d
/* 4FC18 8004F018 01C17824 */  and        $t7, $t6, $at
/* 4FC1C 8004F01C AE0F0080 */  sw         $t7, 0x80($s0)
/* 4FC20 8004F020 A600012C */  sh         $zero, 0x12c($s0)
/* 4FC24 8004F024 A200012E */  sb         $zero, 0x12e($s0)
/* 4FC28 8004F028 0329C821 */  addu       $t9, $t9, $t1
/* 4FC2C 8004F02C 8F393DB0 */  lw         $t9, 0x3db0($t9)
/* 4FC30 8004F030 97A40032 */  lhu        $a0, 0x32($sp)
/* 4FC34 8004F034 0320F809 */  jalr       $t9
/* 4FC38 8004F038 00000000 */   nop
/* 4FC3C 8004F03C 97A40032 */  lhu        $a0, 0x32($sp)
/* 4FC40 8004F040 0C0122EC */  jal        func_80048BB0
/* 4FC44 8004F044 00000000 */   nop
/* 4FC48 8004F048 8E180080 */  lw         $t8, 0x80($s0)
/* 4FC4C 8004F04C 00000000 */  nop
/* 4FC50 8004F050 00185180 */  sll        $t2, $t8, 6
/* 4FC54 8004F054 05410030 */  bgez       $t2, .L8004F118
/* 4FC58 8004F058 97A40032 */   lhu       $a0, 0x32($sp)
/* 4FC5C 8004F05C 960500D6 */  lhu        $a1, 0xd6($s0)
/* 4FC60 8004F060 97A40032 */  lhu        $a0, 0x32($sp)
/* 4FC64 8004F064 A6250070 */  sh         $a1, 0x70($s1)
/* 4FC68 8004F068 0C0174CE */  jal        func_8005D338
/* 4FC6C 8004F06C A7A50024 */   sh        $a1, 0x24($sp)
/* 4FC70 8004F070 97A50024 */  lhu        $a1, 0x24($sp)
/* 4FC74 8004F074 28410066 */  slti       $at, $v0, 0x66
/* 4FC78 8004F078 10200014 */  beqz       $at, .L8004F0CC
/* 4FC7C 8004F07C 00057880 */   sll       $t7, $a1, 2
/* 4FC80 8004F080 97A40032 */  lhu        $a0, 0x32($sp)
/* 4FC84 8004F084 0C012681 */  jal        func_80049A04
/* 4FC88 8004F088 A7A50024 */   sh        $a1, 0x24($sp)
/* 4FC8C 8004F08C 97A50024 */  lhu        $a1, 0x24($sp)
/* 4FC90 8004F090 3C0C800F */  lui        $t4, 0x800f
/* 4FC94 8004F094 00055880 */  sll        $t3, $a1, 2
/* 4FC98 8004F098 01655823 */  subu       $t3, $t3, $a1
/* 4FC9C 8004F09C 000B5880 */  sll        $t3, $t3, 2
/* 4FCA0 8004F0A0 01655821 */  addu       $t3, $t3, $a1
/* 4FCA4 8004F0A4 000B5880 */  sll        $t3, $t3, 2
/* 4FCA8 8004F0A8 01655823 */  subu       $t3, $t3, $a1
/* 4FCAC 8004F0AC 000B58C0 */  sll        $t3, $t3, 3
/* 4FCB0 8004F0B0 258CF510 */  addiu      $t4, $t4, -0xaf0
/* 4FCB4 8004F0B4 016C1821 */  addu       $v1, $t3, $t4
/* 4FCB8 8004F0B8 8C6D0108 */  lw         $t5, 0x108($v1)
/* 4FCBC 8004F0BC 00000000 */  nop
/* 4FCC0 8004F0C0 01A27021 */  addu       $t6, $t5, $v0
/* 4FCC4 8004F0C4 AC6E0108 */  sw         $t6, 0x108($v1)
/* 4FCC8 8004F0C8 00057880 */  sll        $t7, $a1, 2
.L8004F0CC:
/* 4FCCC 8004F0CC 01E57823 */  subu       $t7, $t7, $a1
/* 4FCD0 8004F0D0 000F7880 */  sll        $t7, $t7, 2
/* 4FCD4 8004F0D4 01E57821 */  addu       $t7, $t7, $a1
/* 4FCD8 8004F0D8 000F7880 */  sll        $t7, $t7, 2
/* 4FCDC 8004F0DC 01E57823 */  subu       $t7, $t7, $a1
/* 4FCE0 8004F0E0 3C08800F */  lui        $t0, %hi(gActors)
/* 4FCE4 8004F0E4 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 4FCE8 8004F0E8 000F78C0 */  sll        $t7, $t7, 3
/* 4FCEC 8004F0EC 01E81821 */  addu       $v1, $t7, $t0
/* 4FCF0 8004F0F0 8C690104 */  lw         $t1, 0x104($v1)
/* 4FCF4 8004F0F4 8E1900EC */  lw         $t9, 0xec($s0)
/* 4FCF8 8004F0F8 8C6A0108 */  lw         $t2, 0x108($v1)
/* 4FCFC 8004F0FC 0139C021 */  addu       $t8, $t1, $t9
/* 4FD00 8004F100 AC780104 */  sw         $t8, 0x104($v1)
/* 4FD04 8004F104 8E0B00F0 */  lw         $t3, 0xf0($s0)
/* 4FD08 8004F108 00000000 */  nop
/* 4FD0C 8004F10C 014B6021 */  addu       $t4, $t2, $t3
/* 4FD10 8004F110 AC6C0108 */  sw         $t4, 0x108($v1)
/* 4FD14 8004F114 97A40032 */  lhu        $a0, 0x32($sp)
.L8004F118:
/* 4FD18 8004F118 0C017514 */  jal        func_8005D450
/* 4FD1C 8004F11C 00000000 */   nop
/* 4FD20 8004F120 97A40032 */  lhu        $a0, 0x32($sp)
/* 4FD24 8004F124 3C05800D */  lui        $a1, %hi(D_800D4000)
/* 4FD28 8004F128 0C0172AA */  jal        func_8005CAA8
/* 4FD2C 8004F12C 24A54000 */   addiu     $a1, $a1, %lo(D_800D4000)
/* 4FD30 8004F130 97A40032 */  lhu        $a0, 0x32($sp)
/* 4FD34 8004F134 0C016FE9 */  jal        func_8005BFA4
/* 4FD38 8004F138 00000000 */   nop
/* 4FD3C 8004F13C 97A40032 */  lhu        $a0, 0x32($sp)
/* 4FD40 8004F140 0C017178 */  jal        func_8005C5E0
/* 4FD44 8004F144 00000000 */   nop
/* 4FD48 8004F148 24010001 */  addiu      $at, $zero, 1
/* 4FD4C 8004F14C 14410007 */  bne        $v0, $at, .L8004F16C
/* 4FD50 8004F150 00000000 */   nop
/* 4FD54 8004F154 860D013C */  lh         $t5, 0x13c($s0)
/* 4FD58 8004F158 240E0006 */  addiu      $t6, $zero, 6
/* 4FD5C 8004F15C 29A1001F */  slti       $at, $t5, 0x1f
/* 4FD60 8004F160 14200002 */  bnez       $at, .L8004F16C
/* 4FD64 8004F164 00000000 */   nop
/* 4FD68 8004F168 A20E0183 */  sb         $t6, 0x183($s0)
.L8004F16C:
/* 4FD6C 8004F16C 8E020098 */  lw         $v0, 0x98($s0)
/* 4FD70 8004F170 3C01FFDF */  lui        $at, 0xffdf
/* 4FD74 8004F174 304F0002 */  andi       $t7, $v0, 2
/* 4FD78 8004F178 11E00005 */  beqz       $t7, .L8004F190
/* 4FD7C 8004F17C 3421F9FF */   ori       $at, $at, 0xf9ff
/* 4FD80 8004F180 8E0800F8 */  lw         $t0, 0xf8($s0)
/* 4FD84 8004F184 8E0900FC */  lw         $t1, 0xfc($s0)
/* 4FD88 8004F188 AE280068 */  sw         $t0, 0x68($s1)
/* 4FD8C 8004F18C AE29006C */  sw         $t1, 0x6c($s1)
.L8004F190:
/* 4FD90 8004F190 8E38007C */  lw         $t8, 0x7c($s1)
/* 4FD94 8004F194 0041C824 */  and        $t9, $v0, $at
/* 4FD98 8004F198 270A0001 */  addiu      $t2, $t8, 1
/* 4FD9C 8004F19C AE220064 */  sw         $v0, 0x64($s1)
/* 4FDA0 8004F1A0 AE190098 */  sw         $t9, 0x98($s0)
/* 4FDA4 8004F1A4 AE2A007C */  sw         $t2, 0x7c($s1)
/* 4FDA8 8004F1A8 3C01800F */  lui        $at, %hi(D_800EF630)
/* 4FDAC 8004F1AC C424F630 */  lwc1       $f4, %lo(D_800EF630)($at)
/* 4FDB0 8004F1B0 C6060124 */  lwc1       $f6, 0x124($s0)
/* 4FDB4 8004F1B4 C6100128 */  lwc1       $f16, 0x128($s0)
/* 4FDB8 8004F1B8 46062202 */  mul.s      $f8, $f4, $f6
/* 4FDBC 8004F1BC 3C0C800C */  lui        $t4, 0x800c
/* 4FDC0 8004F1C0 8E0B0088 */  lw         $t3, 0x88($s0)
/* 4FDC4 8004F1C4 3C0F800C */  lui        $t7, 0x800c
/* 4FDC8 8004F1C8 E60800B4 */  swc1       $f8, 0xb4($s0)
/* 4FDCC 8004F1CC C42AF630 */  lwc1       $f10, -0x9d0($at)
/* 4FDD0 8004F1D0 3C01800C */  lui        $at, 0x800c
/* 4FDD4 8004F1D4 46105482 */  mul.s      $f18, $f10, $f16
/* 4FDD8 8004F1D8 3C19800C */  lui        $t9, 0x800c
/* 4FDDC 8004F1DC E61200B8 */  swc1       $f18, 0xb8($s0)
/* 4FDE0 8004F1E0 8D8CE558 */  lw         $t4, -0x1aa8($t4)
/* 4FDE4 8004F1E4 8DEFE55C */  lw         $t7, -0x1aa4($t7)
/* 4FDE8 8004F1E8 016C6821 */  addu       $t5, $t3, $t4
/* 4FDEC 8004F1EC AC2DE5D8 */  sw         $t5, -0x1a28($at)
/* 4FDF0 8004F1F0 8E0E008C */  lw         $t6, 0x8c($s0)
/* 4FDF4 8004F1F4 3C01800C */  lui        $at, %hi(D_800BE5DC)
/* 4FDF8 8004F1F8 01CF4021 */  addu       $t0, $t6, $t7
/* 4FDFC 8004F1FC AC28E5DC */  sw         $t0, %lo(D_800BE5DC)($at)
/* 4FE00 8004F200 8E0900EC */  lw         $t1, 0xec($s0)
/* 4FE04 8004F204 3C01800C */  lui        $at, %hi(D_800BE5E8)
/* 4FE08 8004F208 AC29E5E8 */  sw         $t1, %lo(D_800BE5E8)($at)
/* 4FE0C 8004F20C 8E0300F0 */  lw         $v1, 0xf0($s0)
/* 4FE10 8004F210 3C01800C */  lui        $at, %hi(D_800BE5EC)
/* 4FE14 8004F214 9739E5D0 */  lhu        $t9, -0x1a30($t9)
/* 4FE18 8004F218 AC23E5EC */  sw         $v1, %lo(D_800BE5EC)($at)
/* 4FE1C 8004F21C 24010046 */  addiu      $at, $zero, 0x46
/* 4FE20 8004F220 1721001D */  bne        $t9, $at, .L8004F298
/* 4FE24 8004F224 8FBF001C */   lw        $ra, 0x1c($sp)
/* 4FE28 8004F228 44833000 */  mtc1       $v1, $f6
/* 4FE2C 8004F22C 3C01C112 */  lui        $at, 0xc112
/* 4FE30 8004F230 46803221 */  cvt.d.w    $f8, $f6
/* 4FE34 8004F234 44812800 */  mtc1       $at, $f5
/* 4FE38 8004F238 44802000 */  mtc1       $zero, $f4
/* 4FE3C 8004F23C 00000000 */  nop
/* 4FE40 8004F240 4624403E */  c.le.d     $f8, $f4
/* 4FE44 8004F244 00000000 */  nop
/* 4FE48 8004F248 4500000B */  bc1f       .L8004F278
/* 4FE4C 8004F24C 00000000 */   nop
/* 4FE50 8004F250 8E380044 */  lw         $t8, 0x44($s1)
/* 4FE54 8004F254 00000000 */  nop
/* 4FE58 8004F258 1700000F */  bnez       $t8, .L8004F298
/* 4FE5C 8004F25C 8FBF001C */   lw        $ra, 0x1c($sp)
/* 4FE60 8004F260 0C000CD3 */  jal        func_8000334C
/* 4FE64 8004F264 2404003E */   addiu     $a0, $zero, 0x3e
/* 4FE68 8004F268 0440000A */  bltz       $v0, .L8004F294
/* 4FE6C 8004F26C 240A0001 */   addiu     $t2, $zero, 1
/* 4FE70 8004F270 10000008 */  b          .L8004F294
/* 4FE74 8004F274 AE2A0044 */   sw        $t2, 0x44($s1)
.L8004F278:
/* 4FE78 8004F278 8E2B0044 */  lw         $t3, 0x44($s1)
/* 4FE7C 8004F27C 00000000 */  nop
/* 4FE80 8004F280 11600005 */  beqz       $t3, .L8004F298
/* 4FE84 8004F284 8FBF001C */   lw        $ra, 0x1c($sp)
/* 4FE88 8004F288 0C000CB1 */  jal        func_800032C4
/* 4FE8C 8004F28C 2404003E */   addiu     $a0, $zero, 0x3e
/* 4FE90 8004F290 AE200044 */  sw         $zero, 0x44($s1)
.L8004F294:
/* 4FE94 8004F294 8FBF001C */  lw         $ra, 0x1c($sp)
.L8004F298:
/* 4FE98 8004F298 8FB00014 */  lw         $s0, 0x14($sp)
/* 4FE9C 8004F29C 8FB10018 */  lw         $s1, 0x18($sp)
/* 4FEA0 8004F2A0 03E00008 */  jr         $ra
/* 4FEA4 8004F2A4 27BD0030 */   addiu     $sp, $sp, 0x30
/* 4FEA8 8004F2A8 00000000 */  nop
/* 4FEAC 8004F2AC 00000000 */  nop
