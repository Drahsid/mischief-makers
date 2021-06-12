glabel func_8003DF78
/* 3EB78 8003DF78 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3EB7C 8003DF7C 3C03800C */  lui        $v1, %hi(D_800BE4E0)
/* 3EB80 8003DF80 9463E4E0 */  lhu        $v1, %lo(D_800BE4E0)($v1)
/* 3EB84 8003DF84 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3EB88 8003DF88 306E0007 */  andi       $t6, $v1, 7
/* 3EB8C 8003DF8C AFA40028 */  sw         $a0, 0x28($sp)
/* 3EB90 8003DF90 AFA5002C */  sw         $a1, 0x2c($sp)
/* 3EB94 8003DF94 AFA60030 */  sw         $a2, 0x30($sp)
/* 3EB98 8003DF98 15C00014 */  bnez       $t6, .L8003DFEC
/* 3EB9C 8003DF9C AFA70034 */   sw        $a3, 0x34($sp)
/* 3EBA0 8003DFA0 2404FFFA */  addiu      $a0, $zero, -6
/* 3EBA4 8003DFA4 0C01728D */  jal        func_8005CA34
/* 3EBA8 8003DFA8 24050007 */   addiu     $a1, $zero, 7
/* 3EBAC 8003DFAC 0C0005E3 */  jal        func_8000178C
/* 3EBB0 8003DFB0 00000000 */   nop
/* 3EBB4 8003DFB4 304F0003 */  andi       $t7, $v0, 3
/* 3EBB8 8003DFB8 11E00007 */  beqz       $t7, .L8003DFD8
/* 3EBBC 8003DFBC 00000000 */   nop
/* 3EBC0 8003DFC0 0C000CD3 */  jal        func_8000334C
/* 3EBC4 8003DFC4 24040043 */   addiu     $a0, $zero, 0x43
/* 3EBC8 8003DFC8 3C03800C */  lui        $v1, %hi(D_800BE4E0)
/* 3EBCC 8003DFCC 9463E4E0 */  lhu        $v1, %lo(D_800BE4E0)($v1)
/* 3EBD0 8003DFD0 10000007 */  b          .L8003DFF0
/* 3EBD4 8003DFD4 30780007 */   andi      $t8, $v1, 7
.L8003DFD8:
/* 3EBD8 8003DFD8 0C000CD3 */  jal        func_8000334C
/* 3EBDC 8003DFDC 24040045 */   addiu     $a0, $zero, 0x45
/* 3EBE0 8003DFE0 3C03800C */  lui        $v1, %hi(D_800BE4E0)
/* 3EBE4 8003DFE4 9463E4E0 */  lhu        $v1, %lo(D_800BE4E0)($v1)
/* 3EBE8 8003DFE8 00000000 */  nop
.L8003DFEC:
/* 3EBEC 8003DFEC 30780007 */  andi       $t8, $v1, 7
.L8003DFF0:
/* 3EBF0 8003DFF0 17000045 */  bnez       $t8, .L8003E108
/* 3EBF4 8003DFF4 24010005 */   addiu     $at, $zero, 5
/* 3EBF8 8003DFF8 0C0005E3 */  jal        func_8000178C
/* 3EBFC 8003DFFC 00000000 */   nop
/* 3EC00 8003E000 0C0005E3 */  jal        func_8000178C
/* 3EC04 8003E004 A7A20022 */   sh        $v0, 0x22($sp)
/* 3EC08 8003E008 97B9002E */  lhu        $t9, 0x2e($sp)
/* 3EC0C 8003E00C 97AA0022 */  lhu        $t2, 0x22($sp)
/* 3EC10 8003E010 00194080 */  sll        $t0, $t9, 2
/* 3EC14 8003E014 01194023 */  subu       $t0, $t0, $t9
/* 3EC18 8003E018 00084080 */  sll        $t0, $t0, 2
/* 3EC1C 8003E01C 01194021 */  addu       $t0, $t0, $t9
/* 3EC20 8003E020 00084080 */  sll        $t0, $t0, 2
/* 3EC24 8003E024 24040020 */  addiu      $a0, $zero, 0x20
/* 3EC28 8003E028 314B003F */  andi       $t3, $t2, 0x3f
/* 3EC2C 8003E02C 008B6023 */  subu       $t4, $a0, $t3
/* 3EC30 8003E030 3C09800F */  lui        $t1, %hi(D_800EF510)
/* 3EC34 8003E034 01194023 */  subu       $t0, $t0, $t9
/* 3EC38 8003E038 448C2000 */  mtc1       $t4, $f4
/* 3EC3C 8003E03C 000840C0 */  sll        $t0, $t0, 3
/* 3EC40 8003E040 2529F510 */  addiu      $t1, $t1, %lo(D_800EF510)
/* 3EC44 8003E044 01091821 */  addu       $v1, $t0, $t1
/* 3EC48 8003E048 468021A0 */  cvt.s.w    $f6, $f4
/* 3EC4C 8003E04C 846D0088 */  lh         $t5, 0x88($v1)
/* 3EC50 8003E050 C7A80030 */  lwc1       $f8, 0x30($sp)
/* 3EC54 8003E054 448D8000 */  mtc1       $t5, $f16
/* 3EC58 8003E058 46083282 */  mul.s      $f10, $f6, $f8
/* 3EC5C 8003E05C 3C013F80 */  lui        $at, 0x3f80
/* 3EC60 8003E060 44816000 */  mtc1       $at, $f12
/* 3EC64 8003E064 3059003F */  andi       $t9, $v0, 0x3f
/* 3EC68 8003E068 468084A0 */  cvt.s.w    $f18, $f16
/* 3EC6C 8003E06C 00994023 */  subu       $t0, $a0, $t9
/* 3EC70 8003E070 44884000 */  mtc1       $t0, $f8
/* 3EC74 8003E074 46125100 */  add.s      $f4, $f10, $f18
/* 3EC78 8003E078 8469008C */  lh         $t1, 0x8c($v1)
/* 3EC7C 8003E07C 444EF800 */  cfc1       $t6, $31
/* 3EC80 8003E080 C7AA0034 */  lwc1       $f10, 0x34($sp)
/* 3EC84 8003E084 35C10003 */  ori        $at, $t6, 3
/* 3EC88 8003E088 38210002 */  xori       $at, $at, 2
/* 3EC8C 8003E08C 44C1F800 */  ctc1       $at, $31
/* 3EC90 8003E090 84670090 */  lh         $a3, 0x90($v1)
/* 3EC94 8003E094 460021A4 */  cvt.w.s    $f6, $f4
/* 3EC98 8003E098 44892000 */  mtc1       $t1, $f4
/* 3EC9C 8003E09C 44CEF800 */  ctc1       $t6, $31
/* 3ECA0 8003E0A0 44053000 */  mfc1       $a1, $f6
/* 3ECA4 8003E0A4 46804420 */  cvt.s.w    $f16, $f8
/* 3ECA8 8003E0A8 24E70004 */  addiu      $a3, $a3, 4
/* 3ECAC 8003E0AC 00076C00 */  sll        $t5, $a3, 0x10
/* 3ECB0 8003E0B0 460A8482 */  mul.s      $f18, $f16, $f10
/* 3ECB4 8003E0B4 00057C00 */  sll        $t7, $a1, 0x10
/* 3ECB8 8003E0B8 000F2C03 */  sra        $a1, $t7, 0x10
/* 3ECBC 8003E0BC 000D3C03 */  sra        $a3, $t5, 0x10
/* 3ECC0 8003E0C0 468021A0 */  cvt.s.w    $f6, $f4
/* 3ECC4 8003E0C4 46069200 */  add.s      $f8, $f18, $f6
/* 3ECC8 8003E0C8 444AF800 */  cfc1       $t2, $31
/* 3ECCC 8003E0CC 00000000 */  nop
/* 3ECD0 8003E0D0 35410003 */  ori        $at, $t2, 3
/* 3ECD4 8003E0D4 38210002 */  xori       $at, $at, 2
/* 3ECD8 8003E0D8 44C1F800 */  ctc1       $at, $31
/* 3ECDC 8003E0DC 00000000 */  nop
/* 3ECE0 8003E0E0 46004424 */  cvt.w.s    $f16, $f8
/* 3ECE4 8003E0E4 44068000 */  mfc1       $a2, $f16
/* 3ECE8 8003E0E8 44CAF800 */  ctc1       $t2, $31
/* 3ECEC 8003E0EC 00065C00 */  sll        $t3, $a2, 0x10
/* 3ECF0 8003E0F0 0C00FBB0 */  jal        func_8003EEC0
/* 3ECF4 8003E0F4 000B3403 */   sra       $a2, $t3, 0x10
/* 3ECF8 8003E0F8 3C03800C */  lui        $v1, %hi(D_800BE4E0)
/* 3ECFC 8003E0FC 9463E4E0 */  lhu        $v1, %lo(D_800BE4E0)($v1)
/* 3ED00 8003E100 00000000 */  nop
/* 3ED04 8003E104 24010005 */  addiu      $at, $zero, 5
.L8003E108:
/* 3ED08 8003E108 0061001A */  div        $zero, $v1, $at
/* 3ED0C 8003E10C 97B8002E */  lhu        $t8, 0x2e($sp)
/* 3ED10 8003E110 3C08800F */  lui        $t0, 0x800f
/* 3ED14 8003E114 0018C880 */  sll        $t9, $t8, 2
/* 3ED18 8003E118 0338C823 */  subu       $t9, $t9, $t8
/* 3ED1C 8003E11C 0019C880 */  sll        $t9, $t9, 2
/* 3ED20 8003E120 0338C821 */  addu       $t9, $t9, $t8
/* 3ED24 8003E124 0019C880 */  sll        $t9, $t9, 2
/* 3ED28 8003E128 0338C823 */  subu       $t9, $t9, $t8
/* 3ED2C 8003E12C 0019C8C0 */  sll        $t9, $t9, 3
/* 3ED30 8003E130 2508F510 */  addiu      $t0, $t0, -0xaf0
/* 3ED34 8003E134 03281821 */  addu       $v1, $t9, $t0
/* 3ED38 8003E138 00007810 */  mfhi       $t7
/* 3ED3C 8003E13C 15E00039 */  bnez       $t7, .L8003E224
/* 3ED40 8003E140 8FBF0014 */   lw        $ra, 0x14($sp)
/* 3ED44 8003E144 0C0005E3 */  jal        func_8000178C
/* 3ED48 8003E148 AFA3001C */   sw        $v1, 0x1c($sp)
/* 3ED4C 8003E14C 0C0005E3 */  jal        func_8000178C
/* 3ED50 8003E150 A7A20022 */   sh        $v0, 0x22($sp)
/* 3ED54 8003E154 97A90022 */  lhu        $t1, 0x22($sp)
/* 3ED58 8003E158 240B0020 */  addiu      $t3, $zero, 0x20
/* 3ED5C 8003E15C 312A003F */  andi       $t2, $t1, 0x3f
/* 3ED60 8003E160 016A6023 */  subu       $t4, $t3, $t2
/* 3ED64 8003E164 448C5000 */  mtc1       $t4, $f10
/* 3ED68 8003E168 8FA3001C */  lw         $v1, 0x1c($sp)
/* 3ED6C 8003E16C 46805120 */  cvt.s.w    $f4, $f10
/* 3ED70 8003E170 846D0088 */  lh         $t5, 0x88($v1)
/* 3ED74 8003E174 C7B20030 */  lwc1       $f18, 0x30($sp)
/* 3ED78 8003E178 448D4000 */  mtc1       $t5, $f8
/* 3ED7C 8003E17C 46122182 */  mul.s      $f6, $f4, $f18
/* 3ED80 8003E180 3C01800F */  lui        $at, %hi(D_800EBBDC)
/* 3ED84 8003E184 C42CBBDC */  lwc1       $f12, %lo(D_800EBBDC)($at)
/* 3ED88 8003E188 3059003F */  andi       $t9, $v0, 0x3f
/* 3ED8C 8003E18C 46804420 */  cvt.s.w    $f16, $f8
/* 3ED90 8003E190 24080020 */  addiu      $t0, $zero, 0x20
/* 3ED94 8003E194 01194823 */  subu       $t1, $t0, $t9
/* 3ED98 8003E198 46103280 */  add.s      $f10, $f6, $f16
/* 3ED9C 8003E19C 44899000 */  mtc1       $t1, $f18
/* 3EDA0 8003E1A0 444EF800 */  cfc1       $t6, $31
/* 3EDA4 8003E1A4 846B008C */  lh         $t3, 0x8c($v1)
/* 3EDA8 8003E1A8 35C10003 */  ori        $at, $t6, 3
/* 3EDAC 8003E1AC 38210002 */  xori       $at, $at, 2
/* 3EDB0 8003E1B0 44C1F800 */  ctc1       $at, $31
/* 3EDB4 8003E1B4 C7A60034 */  lwc1       $f6, 0x34($sp)
/* 3EDB8 8003E1B8 46005124 */  cvt.w.s    $f4, $f10
/* 3EDBC 8003E1BC 448B5000 */  mtc1       $t3, $f10
/* 3EDC0 8003E1C0 44CEF800 */  ctc1       $t6, $31
/* 3EDC4 8003E1C4 44052000 */  mfc1       $a1, $f4
/* 3EDC8 8003E1C8 46809220 */  cvt.s.w    $f8, $f18
/* 3EDCC 8003E1CC 84670090 */  lh         $a3, 0x90($v1)
/* 3EDD0 8003E1D0 00057C00 */  sll        $t7, $a1, 0x10
/* 3EDD4 8003E1D4 46064402 */  mul.s      $f16, $f8, $f6
/* 3EDD8 8003E1D8 24E70004 */  addiu      $a3, $a3, 4
/* 3EDDC 8003E1DC 00077400 */  sll        $t6, $a3, 0x10
/* 3EDE0 8003E1E0 000E3C03 */  sra        $a3, $t6, 0x10
/* 3EDE4 8003E1E4 46805120 */  cvt.s.w    $f4, $f10
/* 3EDE8 8003E1E8 000F2C03 */  sra        $a1, $t7, 0x10
/* 3EDEC 8003E1EC 46048480 */  add.s      $f18, $f16, $f4
/* 3EDF0 8003E1F0 444AF800 */  cfc1       $t2, $31
/* 3EDF4 8003E1F4 00000000 */  nop
/* 3EDF8 8003E1F8 35410003 */  ori        $at, $t2, 3
/* 3EDFC 8003E1FC 38210002 */  xori       $at, $at, 2
/* 3EE00 8003E200 44C1F800 */  ctc1       $at, $31
/* 3EE04 8003E204 00000000 */  nop
/* 3EE08 8003E208 46009224 */  cvt.w.s    $f8, $f18
/* 3EE0C 8003E20C 44064000 */  mfc1       $a2, $f8
/* 3EE10 8003E210 44CAF800 */  ctc1       $t2, $31
/* 3EE14 8003E214 00066400 */  sll        $t4, $a2, 0x10
/* 3EE18 8003E218 0C00FC4E */  jal        func_8003F138
/* 3EE1C 8003E21C 000C3403 */   sra       $a2, $t4, 0x10
/* 3EE20 8003E220 8FBF0014 */  lw         $ra, 0x14($sp)
.L8003E224:
/* 3EE24 8003E224 27BD0028 */  addiu      $sp, $sp, 0x28
/* 3EE28 8003E228 03E00008 */  jr         $ra
/* 3EE2C 8003E22C 00000000 */   nop
