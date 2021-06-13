glabel func_8002DFC0
/* 2EBC0 8002DFC0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2EBC4 8002DFC4 AFB10018 */  sw         $s1, 0x18($sp)
/* 2EBC8 8002DFC8 3091FFFF */  andi       $s1, $a0, 0xffff
/* 2EBCC 8002DFCC 00117080 */  sll        $t6, $s1, 2
/* 2EBD0 8002DFD0 01D17023 */  subu       $t6, $t6, $s1
/* 2EBD4 8002DFD4 000E7080 */  sll        $t6, $t6, 2
/* 2EBD8 8002DFD8 01D17021 */  addu       $t6, $t6, $s1
/* 2EBDC 8002DFDC 000E7080 */  sll        $t6, $t6, 2
/* 2EBE0 8002DFE0 01D17023 */  subu       $t6, $t6, $s1
/* 2EBE4 8002DFE4 3C0F800F */  lui        $t7, %hi(gActors)
/* 2EBE8 8002DFE8 AFB00014 */  sw         $s0, 0x14($sp)
/* 2EBEC 8002DFEC 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 2EBF0 8002DFF0 000E70C0 */  sll        $t6, $t6, 3
/* 2EBF4 8002DFF4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 2EBF8 8002DFF8 AFA40020 */  sw         $a0, 0x20($sp)
/* 2EBFC 8002DFFC 01CF8021 */  addu       $s0, $t6, $t7
/* 2EC00 8002E000 24180024 */  addiu      $t8, $zero, 0x24
/* 2EC04 8002E004 AFA50024 */  sw         $a1, 0x24($sp)
/* 2EC08 8002E008 AFA7002C */  sw         $a3, 0x2c($sp)
/* 2EC0C 8002E00C A61800D2 */  sh         $t8, 0xd2($s0)
/* 2EC10 8002E010 3224FFFF */  andi       $a0, $s1, 0xffff
/* 2EC14 8002E014 0C0078B4 */  jal        func_8001E2D0
/* 2EC18 8002E018 AFA60028 */   sw        $a2, 0x28($sp)
/* 2EC1C 8002E01C 24190009 */  addiu      $t9, $zero, 9
/* 2EC20 8002E020 24080407 */  addiu      $t0, $zero, 0x407
/* 2EC24 8002E024 240900D8 */  addiu      $t1, $zero, 0xd8
/* 2EC28 8002E028 240A00A0 */  addiu      $t2, $zero, 0xa0
/* 2EC2C 8002E02C A6190094 */  sh         $t9, 0x94($s0)
/* 2EC30 8002E030 AE080080 */  sw         $t0, 0x80($s0)
/* 2EC34 8002E034 A6090084 */  sh         $t1, 0x84($s0)
/* 2EC38 8002E038 A20A009F */  sb         $t2, 0x9f($s0)
/* 2EC3C 8002E03C 3224FFFF */  andi       $a0, $s1, 0xffff
/* 2EC40 8002E040 0C00ABAD */  jal        func_8002AEB4
/* 2EC44 8002E044 24050050 */   addiu     $a1, $zero, 0x50
/* 2EC48 8002E048 3C01800F */  lui        $at, %hi(D_800EB8AC)
/* 2EC4C 8002E04C C420B8AC */  lwc1       $f0, %lo(D_800EB8AC)($at)
/* 2EC50 8002E050 240B0020 */  addiu      $t3, $zero, 0x20
/* 2EC54 8002E054 240C0004 */  addiu      $t4, $zero, 4
/* 2EC58 8002E058 240D0002 */  addiu      $t5, $zero, 2
/* 2EC5C 8002E05C 240E0032 */  addiu      $t6, $zero, 0x32
/* 2EC60 8002E060 A20B00DF */  sb         $t3, 0xdf($s0)
/* 2EC64 8002E064 A20C00DA */  sb         $t4, 0xda($s0)
/* 2EC68 8002E068 A20D00DB */  sb         $t5, 0xdb($s0)
/* 2EC6C 8002E06C A60E00E4 */  sh         $t6, 0xe4($s0)
/* 2EC70 8002E070 3224FFFF */  andi       $a0, $s1, 0xffff
/* 2EC74 8002E074 24050002 */  addiu      $a1, $zero, 2
/* 2EC78 8002E078 E60000B4 */  swc1       $f0, 0xb4($s0)
/* 2EC7C 8002E07C 0C00AAF9 */  jal        func_8002ABE4
/* 2EC80 8002E080 E60000B8 */   swc1      $f0, 0xb8($s0)
/* 2EC84 8002E084 3C014800 */  lui        $at, 0x4800
/* 2EC88 8002E088 44810000 */  mtc1       $at, $f0
/* 2EC8C 8002E08C 8FA60028 */  lw         $a2, 0x28($sp)
/* 2EC90 8002E090 8FB90034 */  lw         $t9, 0x34($sp)
/* 2EC94 8002E094 3C010001 */  lui        $at, 1
/* 2EC98 8002E098 34212000 */  ori        $at, $at, 0x2000
/* 2EC9C 8002E09C 03214021 */  addu       $t0, $t9, $at
/* 2ECA0 8002E0A0 AE060158 */  sw         $a2, 0x158($s0)
/* 2ECA4 8002E0A4 8FAF002C */  lw         $t7, 0x2c($sp)
/* 2ECA8 8002E0A8 8FB80030 */  lw         $t8, 0x30($sp)
/* 2ECAC 8002E0AC AE080090 */  sw         $t0, 0x90($s0)
/* 2ECB0 8002E0B0 AE0F0088 */  sw         $t7, 0x88($s0)
/* 2ECB4 8002E0B4 AE18008C */  sw         $t8, 0x8c($s0)
/* 2ECB8 8002E0B8 3C05800C */  lui        $a1, %hi(D_800BCCD0)
/* 2ECBC 8002E0BC 24A5CCD0 */  addiu      $a1, $a1, %lo(D_800BCCD0)
/* 2ECC0 8002E0C0 04C10004 */  bgez       $a2, .L8002E0D4
/* 2ECC4 8002E0C4 00064C03 */   sra       $t1, $a2, 0x10
/* 2ECC8 8002E0C8 3401FFFF */  ori        $at, $zero, 0xffff
/* 2ECCC 8002E0CC 00260821 */  addu       $at, $at, $a2
/* 2ECD0 8002E0D0 00014C03 */  sra        $t1, $at, 0x10
.L8002E0D4:
/* 2ECD4 8002E0D4 01203025 */  or         $a2, $t1, $zero
/* 2ECD8 8002E0D8 44862000 */  mtc1       $a2, $f4
/* 2ECDC 8002E0DC 3C01800F */  lui        $at, %hi(D_800EB8B0)
/* 2ECE0 8002E0E0 468021A1 */  cvt.d.w    $f6, $f4
/* 2ECE4 8002E0E4 C429B8B0 */  lwc1       $f9, %lo(D_800EB8B0)($at)
/* 2ECE8 8002E0E8 C428B8B4 */  lwc1       $f8, -0x474c($at)
/* 2ECEC 8002E0EC 312A03FF */  andi       $t2, $t1, 0x3ff
/* 2ECF0 8002E0F0 46283282 */  mul.d      $f10, $f6, $f8
/* 2ECF4 8002E0F4 000A5880 */  sll        $t3, $t2, 2
/* 2ECF8 8002E0F8 00AB6021 */  addu       $t4, $a1, $t3
/* 2ECFC 8002E0FC C5920000 */  lwc1       $f18, ($t4)
/* 2ED00 8002E100 252EFF00 */  addiu      $t6, $t1, -0x100
/* 2ED04 8002E104 46009102 */  mul.s      $f4, $f18, $f0
/* 2ED08 8002E108 46205420 */  cvt.s.d    $f16, $f10
/* 2ED0C 8002E10C 31CF03FF */  andi       $t7, $t6, 0x3ff
/* 2ED10 8002E110 000FC080 */  sll        $t8, $t7, 2
/* 2ED14 8002E114 444DF800 */  cfc1       $t5, $31
/* 2ED18 8002E118 00B8C821 */  addu       $t9, $a1, $t8
/* 2ED1C 8002E11C 35A10003 */  ori        $at, $t5, 3
/* 2ED20 8002E120 38210002 */  xori       $at, $at, 2
/* 2ED24 8002E124 44C1F800 */  ctc1       $at, $31
/* 2ED28 8002E128 C7280000 */  lwc1       $f8, ($t9)
/* 2ED2C 8002E12C 460021A4 */  cvt.w.s    $f6, $f4
/* 2ED30 8002E130 E61000C4 */  swc1       $f16, 0xc4($s0)
/* 2ED34 8002E134 44CDF800 */  ctc1       $t5, $31
/* 2ED38 8002E138 44023000 */  mfc1       $v0, $f6
/* 2ED3C 8002E13C 46004282 */  mul.s      $f10, $f8, $f0
/* 2ED40 8002E140 3225FFFF */  andi       $a1, $s1, 0xffff
/* 2ED44 8002E144 AE020150 */  sw         $v0, 0x150($s0)
/* 2ED48 8002E148 4448F800 */  cfc1       $t0, $31
/* 2ED4C 8002E14C 00000000 */  nop
/* 2ED50 8002E150 35010003 */  ori        $at, $t0, 3
/* 2ED54 8002E154 38210002 */  xori       $at, $at, 2
/* 2ED58 8002E158 44C1F800 */  ctc1       $at, $31
/* 2ED5C 8002E15C 00000000 */  nop
/* 2ED60 8002E160 46005424 */  cvt.w.s    $f16, $f10
/* 2ED64 8002E164 44038000 */  mfc1       $v1, $f16
/* 2ED68 8002E168 44C8F800 */  ctc1       $t0, $31
/* 2ED6C 8002E16C AE030154 */  sw         $v1, 0x154($s0)
/* 2ED70 8002E170 04410003 */  bgez       $v0, .L8002E180
/* 2ED74 8002E174 000220C3 */   sra       $a0, $v0, 3
/* 2ED78 8002E178 24410007 */  addiu      $at, $v0, 7
/* 2ED7C 8002E17C 000120C3 */  sra        $a0, $at, 3
.L8002E180:
/* 2ED80 8002E180 AE040164 */  sw         $a0, 0x164($s0)
/* 2ED84 8002E184 04610003 */  bgez       $v1, .L8002E194
/* 2ED88 8002E188 000348C3 */   sra       $t1, $v1, 3
/* 2ED8C 8002E18C 24610007 */  addiu      $at, $v1, 7
/* 2ED90 8002E190 000148C3 */  sra        $t1, $at, 3
.L8002E194:
/* 2ED94 8002E194 04810005 */  bgez       $a0, .L8002E1AC
/* 2ED98 8002E198 AE090168 */   sw        $t1, 0x168($s0)
/* 2ED9C 8002E19C 8E0A0164 */  lw         $t2, 0x164($s0)
/* 2EDA0 8002E1A0 00000000 */  nop
/* 2EDA4 8002E1A4 000A5823 */  negu       $t3, $t2
/* 2EDA8 8002E1A8 AE0B0164 */  sw         $t3, 0x164($s0)
.L8002E1AC:
/* 2EDAC 8002E1AC 8E020168 */  lw         $v0, 0x168($s0)
/* 2EDB0 8002E1B0 240B0080 */  addiu      $t3, $zero, 0x80
/* 2EDB4 8002E1B4 04410003 */  bgez       $v0, .L8002E1C4
/* 2EDB8 8002E1B8 00000000 */   nop
/* 2EDBC 8002E1BC 00026023 */  negu       $t4, $v0
/* 2EDC0 8002E1C0 AE0C0168 */  sw         $t4, 0x168($s0)
.L8002E1C4:
/* 2EDC4 8002E1C4 8E0D0150 */  lw         $t5, 0x150($s0)
/* 2EDC8 8002E1C8 24020003 */  addiu      $v0, $zero, 3
/* 2EDCC 8002E1CC 000D7023 */  negu       $t6, $t5
/* 2EDD0 8002E1D0 01C2001A */  div        $zero, $t6, $v0
/* 2EDD4 8002E1D4 8E180154 */  lw         $t8, 0x154($s0)
/* 2EDD8 8002E1D8 14400002 */  bnez       $v0, .L8002E1E4
/* 2EDDC 8002E1DC 00000000 */   nop
/* 2EDE0 8002E1E0 0007000D */  break      7
.L8002E1E4:
/* 2EDE4 8002E1E4 2401FFFF */   addiu     $at, $zero, -1
/* 2EDE8 8002E1E8 14410004 */  bne        $v0, $at, .L8002E1FC
/* 2EDEC 8002E1EC 3C018000 */   lui       $at, 0x8000
/* 2EDF0 8002E1F0 15C10002 */  bne        $t6, $at, .L8002E1FC
/* 2EDF4 8002E1F4 00000000 */   nop
/* 2EDF8 8002E1F8 0006000D */  break      6
.L8002E1FC:
/* 2EDFC 8002E1FC 0018C823 */   negu      $t9, $t8
/* 2EE00 8002E200 97A90026 */  lhu        $t1, 0x26($sp)
/* 2EE04 8002E204 240C0200 */  addiu      $t4, $zero, 0x200
/* 2EE08 8002E208 312A0001 */  andi       $t2, $t1, 1
/* 2EE0C 8002E20C 00007812 */  mflo       $t7
/* 2EE10 8002E210 AE0F00EC */  sw         $t7, 0xec($s0)
/* 2EE14 8002E214 00000000 */  nop
/* 2EE18 8002E218 0322001A */  div        $zero, $t9, $v0
/* 2EE1C 8002E21C 14400002 */  bnez       $v0, .L8002E228
/* 2EE20 8002E220 00000000 */   nop
/* 2EE24 8002E224 0007000D */  break      7
.L8002E228:
/* 2EE28 8002E228 2401FFFF */   addiu     $at, $zero, -1
/* 2EE2C 8002E22C 14410004 */  bne        $v0, $at, .L8002E240
/* 2EE30 8002E230 3C018000 */   lui       $at, 0x8000
/* 2EE34 8002E234 17210002 */  bne        $t9, $at, .L8002E240
/* 2EE38 8002E238 00000000 */   nop
/* 2EE3C 8002E23C 0006000D */  break      6
.L8002E240:
/* 2EE40 8002E240 3C014100 */   lui       $at, 0x4100
/* 2EE44 8002E244 44819000 */  mtc1       $at, $f18
/* 2EE48 8002E248 00000000 */  nop
/* 2EE4C 8002E24C E6120118 */  swc1       $f18, 0x118($s0)
/* 2EE50 8002E250 00004012 */  mflo       $t0
/* 2EE54 8002E254 AE0800F0 */  sw         $t0, 0xf0($s0)
/* 2EE58 8002E258 11400003 */  beqz       $t2, .L8002E268
/* 2EE5C 8002E25C 00000000 */   nop
/* 2EE60 8002E260 10000002 */  b          .L8002E26C
/* 2EE64 8002E264 AE0B015C */   sw        $t3, 0x15c($s0)
.L8002E268:
/* 2EE68 8002E268 AE0C015C */  sw         $t4, 0x15c($s0)
.L8002E26C:
/* 2EE6C 8002E26C 0C000DB2 */  jal        func_800036C8
/* 2EE70 8002E270 2404002E */   addiu     $a0, $zero, 0x2e
/* 2EE74 8002E274 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2EE78 8002E278 8FB00014 */  lw         $s0, 0x14($sp)
/* 2EE7C 8002E27C 8FB10018 */  lw         $s1, 0x18($sp)
/* 2EE80 8002E280 03E00008 */  jr         $ra
/* 2EE84 8002E284 27BD0020 */   addiu     $sp, $sp, 0x20
