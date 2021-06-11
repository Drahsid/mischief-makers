glabel func_8006E000
/* 6EC00 8006E000 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6EC04 8006E004 AFA40020 */  sw         $a0, 0x20($sp)
/* 6EC08 8006E008 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6EC0C 8006E00C 97A40022 */  lhu        $a0, 0x22($sp)
/* 6EC10 8006E010 0C01B242 */  jal        func_8006C908
/* 6EC14 8006E014 00000000 */   nop
/* 6EC18 8006E018 14400073 */  bnez       $v0, .L8006E1E8
/* 6EC1C 8006E01C 3C0F800F */   lui       $t7, %hi(gActors)
/* 6EC20 8006E020 97A60022 */  lhu        $a2, 0x22($sp)
/* 6EC24 8006E024 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 6EC28 8006E028 00067080 */  sll        $t6, $a2, 2
/* 6EC2C 8006E02C 01C67023 */  subu       $t6, $t6, $a2
/* 6EC30 8006E030 000E7080 */  sll        $t6, $t6, 2
/* 6EC34 8006E034 01C67021 */  addu       $t6, $t6, $a2
/* 6EC38 8006E038 000E7080 */  sll        $t6, $t6, 2
/* 6EC3C 8006E03C 01C67023 */  subu       $t6, $t6, $a2
/* 6EC40 8006E040 000E70C0 */  sll        $t6, $t6, 3
/* 6EC44 8006E044 01CF1821 */  addu       $v1, $t6, $t7
/* 6EC48 8006E048 946200D0 */  lhu        $v0, 0xd0($v1)
/* 6EC4C 8006E04C 24010130 */  addiu      $at, $zero, 0x130
/* 6EC50 8006E050 1441002D */  bne        $v0, $at, .L8006E108
/* 6EC54 8006E054 24580001 */   addiu     $t8, $v0, 1
/* 6EC58 8006E058 A47800D0 */  sh         $t8, 0xd0($v1)
/* 6EC5C 8006E05C 30C4FFFF */  andi       $a0, $a2, 0xffff
/* 6EC60 8006E060 0C01B1BC */  jal        func_8006C6F0
/* 6EC64 8006E064 AFA3001C */   sw        $v1, 0x1c($sp)
/* 6EC68 8006E068 8FA3001C */  lw         $v1, 0x1c($sp)
/* 6EC6C 8006E06C 3C010002 */  lui        $at, 2
/* 6EC70 8006E070 8C790080 */  lw         $t9, 0x80($v1)
/* 6EC74 8006E074 8C6B0098 */  lw         $t3, 0x98($v1)
/* 6EC78 8006E078 03214025 */  or         $t0, $t9, $at
/* 6EC7C 8006E07C 3C01FFFE */  lui        $at, 0xfffe
/* 6EC80 8006E080 3421FFFF */  ori        $at, $at, 0xffff
/* 6EC84 8006E084 01015024 */  and        $t2, $t0, $at
/* 6EC88 8006E088 2401FFDF */  addiu      $at, $zero, -0x21
/* 6EC8C 8006E08C 01616024 */  and        $t4, $t3, $at
/* 6EC90 8006E090 444FF800 */  cfc1       $t7, $31
/* 6EC94 8006E094 3C014100 */  lui        $at, 0x4100
/* 6EC98 8006E098 44812000 */  mtc1       $at, $f4
/* 6EC9C 8006E09C 35E10003 */  ori        $at, $t7, 3
/* 6ECA0 8006E0A0 38210002 */  xori       $at, $at, 2
/* 6ECA4 8006E0A4 44C1F800 */  ctc1       $at, $31
/* 6ECA8 8006E0A8 C466011C */  lwc1       $f6, 0x11c($v1)
/* 6ECAC 8006E0AC C46A0120 */  lwc1       $f10, 0x120($v1)
/* 6ECB0 8006E0B0 46003224 */  cvt.w.s    $f8, $f6
/* 6ECB4 8006E0B4 AC680080 */  sw         $t0, 0x80($v1)
/* 6ECB8 8006E0B8 44CFF800 */  ctc1       $t7, $31
/* 6ECBC 8006E0BC 44184000 */  mfc1       $t8, $f8
/* 6ECC0 8006E0C0 3C0D800E */  lui        $t5, %hi(D_800E1C00)
/* 6ECC4 8006E0C4 4459F800 */  cfc1       $t9, $31
/* 6ECC8 8006E0C8 25AD1C00 */  addiu      $t5, $t5, %lo(D_800E1C00)
/* 6ECCC 8006E0CC 37210003 */  ori        $at, $t9, 3
/* 6ECD0 8006E0D0 38210002 */  xori       $at, $at, 2
/* 6ECD4 8006E0D4 44C1F800 */  ctc1       $at, $31
/* 6ECD8 8006E0D8 240E0001 */  addiu      $t6, $zero, 1
/* 6ECDC 8006E0DC 46005424 */  cvt.w.s    $f16, $f10
/* 6ECE0 8006E0E0 97A60022 */  lhu        $a2, 0x22($sp)
/* 6ECE4 8006E0E4 44088000 */  mfc1       $t0, $f16
/* 6ECE8 8006E0E8 44D9F800 */  ctc1       $t9, $31
/* 6ECEC 8006E0EC AC6A0080 */  sw         $t2, 0x80($v1)
/* 6ECF0 8006E0F0 AC6C0098 */  sw         $t4, 0x98($v1)
/* 6ECF4 8006E0F4 A46E00E6 */  sh         $t6, 0xe6($v1)
/* 6ECF8 8006E0F8 AC6D00E8 */  sw         $t5, 0xe8($v1)
/* 6ECFC 8006E0FC E4640144 */  swc1       $f4, 0x144($v1)
/* 6ED00 8006E100 AC7800F0 */  sw         $t8, 0xf0($v1)
/* 6ED04 8006E104 AC6800EC */  sw         $t0, 0xec($v1)
.L8006E108:
/* 6ED08 8006E108 44800000 */  mtc1       $zero, $f0
/* 6ED0C 8006E10C C4720124 */  lwc1       $f18, 0x124($v1)
/* 6ED10 8006E110 3C010002 */  lui        $at, 2
/* 6ED14 8006E114 46120032 */  c.eq.s     $f0, $f18
/* 6ED18 8006E118 240F0101 */  addiu      $t7, $zero, 0x101
/* 6ED1C 8006E11C 4501001A */  bc1t       .L8006E188
/* 6ED20 8006E120 00000000 */   nop
/* 6ED24 8006E124 8C6900F0 */  lw         $t1, 0xf0($v1)
/* 6ED28 8006E128 34218000 */  ori        $at, $at, 0x8000
/* 6ED2C 8006E12C 0121082A */  slt        $at, $t1, $at
/* 6ED30 8006E130 10200015 */  beqz       $at, .L8006E188
/* 6ED34 8006E134 240D0001 */   addiu     $t5, $zero, 1
/* 6ED38 8006E138 8C6400EC */  lw         $a0, 0xec($v1)
/* 6ED3C 8006E13C E4600124 */  swc1       $f0, 0x124($v1)
/* 6ED40 8006E140 1080000B */  beqz       $a0, .L8006E170
/* 6ED44 8006E144 3C0B800E */   lui       $t3, 0x800e
/* 6ED48 8006E148 8C620080 */  lw         $v0, 0x80($v1)
/* 6ED4C 8006E14C 00000000 */  nop
/* 6ED50 8006E150 304A0020 */  andi       $t2, $v0, 0x20
/* 6ED54 8006E154 15400003 */  bnez       $t2, .L8006E164
/* 6ED58 8006E158 01401025 */   or        $v0, $t2, $zero
/* 6ED5C 8006E15C 1C800004 */  bgtz       $a0, .L8006E170
/* 6ED60 8006E160 00000000 */   nop
.L8006E164:
/* 6ED64 8006E164 10400005 */  beqz       $v0, .L8006E17C
/* 6ED68 8006E168 3C0C800E */   lui       $t4, %hi(D_800E1D30)
/* 6ED6C 8006E16C 04810003 */  bgez       $a0, .L8006E17C
.L8006E170:
/* 6ED70 8006E170 256B1D0C */   addiu     $t3, $t3, 0x1d0c
/* 6ED74 8006E174 10000003 */  b          .L8006E184
/* 6ED78 8006E178 AC6B00E8 */   sw        $t3, 0xe8($v1)
.L8006E17C:
/* 6ED7C 8006E17C 258C1D30 */  addiu      $t4, $t4, %lo(D_800E1D30)
/* 6ED80 8006E180 AC6C00E8 */  sw         $t4, 0xe8($v1)
.L8006E184:
/* 6ED84 8006E184 A46D00E6 */  sh         $t5, 0xe6($v1)
.L8006E188:
/* 6ED88 8006E188 8C6E00F0 */  lw         $t6, 0xf0($v1)
/* 6ED8C 8006E18C 30C4FFFF */  andi       $a0, $a2, 0xffff
/* 6ED90 8006E190 05C10003 */  bgez       $t6, .L8006E1A0
/* 6ED94 8006E194 00000000 */   nop
/* 6ED98 8006E198 1000000F */  b          .L8006E1D8
/* 6ED9C 8006E19C A46F00D0 */   sh        $t7, 0xd0($v1)
.L8006E1A0:
/* 6EDA0 8006E1A0 0C01A54E */  jal        func_80069538
/* 6EDA4 8006E1A4 AFA3001C */   sw        $v1, 0x1c($sp)
/* 6EDA8 8006E1A8 8FA3001C */  lw         $v1, 0x1c($sp)
/* 6EDAC 8006E1AC 10400004 */  beqz       $v0, .L8006E1C0
/* 6EDB0 8006E1B0 3C0141E0 */   lui       $at, 0x41e0
/* 6EDB4 8006E1B4 44812000 */  mtc1       $at, $f4
/* 6EDB8 8006E1B8 00000000 */  nop
/* 6EDBC 8006E1BC E464013C */  swc1       $f4, 0x13c($v1)
.L8006E1C0:
/* 6EDC0 8006E1C0 8C780098 */  lw         $t8, 0x98($v1)
/* 6EDC4 8006E1C4 00000000 */  nop
/* 6EDC8 8006E1C8 33190010 */  andi       $t9, $t8, 0x10
/* 6EDCC 8006E1CC 13200003 */  beqz       $t9, .L8006E1DC
/* 6EDD0 8006E1D0 97A40022 */   lhu       $a0, 0x22($sp)
/* 6EDD4 8006E1D4 AC6000F0 */  sw         $zero, 0xf0($v1)
.L8006E1D8:
/* 6EDD8 8006E1D8 97A40022 */  lhu        $a0, 0x22($sp)
.L8006E1DC:
/* 6EDDC 8006E1DC 3C05800E */  lui        $a1, %hi(D_800E1C78)
/* 6EDE0 8006E1E0 0C01AAFB */  jal        func_8006ABEC
/* 6EDE4 8006E1E4 24A51C78 */   addiu     $a1, $a1, %lo(D_800E1C78)
.L8006E1E8:
/* 6EDE8 8006E1E8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6EDEC 8006E1EC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 6EDF0 8006E1F0 03E00008 */  jr         $ra
/* 6EDF4 8006E1F4 00000000 */   nop
