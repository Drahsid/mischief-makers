glabel func_8001DE30
/* 1EA30 8001DE30 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 1EA34 8001DE34 3C0E800C */  lui        $t6, %hi(D_800BE664)
/* 1EA38 8001DE38 95CEE664 */  lhu        $t6, %lo(D_800BE664)($t6)
/* 1EA3C 8001DE3C AFBF0034 */  sw         $ra, 0x34($sp)
/* 1EA40 8001DE40 AFB70030 */  sw         $s7, 0x30($sp)
/* 1EA44 8001DE44 AFB6002C */  sw         $s6, 0x2c($sp)
/* 1EA48 8001DE48 AFB50028 */  sw         $s5, 0x28($sp)
/* 1EA4C 8001DE4C AFB40024 */  sw         $s4, 0x24($sp)
/* 1EA50 8001DE50 AFB30020 */  sw         $s3, 0x20($sp)
/* 1EA54 8001DE54 AFB2001C */  sw         $s2, 0x1c($sp)
/* 1EA58 8001DE58 AFB10018 */  sw         $s1, 0x18($sp)
/* 1EA5C 8001DE5C 11C0008A */  beqz       $t6, .L8001E088
/* 1EA60 8001DE60 AFB00014 */   sw        $s0, 0x14($sp)
/* 1EA64 8001DE64 3C02800C */  lui        $v0, %hi(D_800BE558)
/* 1EA68 8001DE68 3C03800C */  lui        $v1, %hi(D_800BE55C)
/* 1EA6C 8001DE6C 8442E558 */  lh         $v0, %lo(D_800BE558)($v0)
/* 1EA70 8001DE70 8463E55C */  lh         $v1, %lo(D_800BE55C)($v1)
/* 1EA74 8001DE74 3C108013 */  lui        $s0, %hi(D_8013776C)
/* 1EA78 8001DE78 8E10776C */  lw         $s0, %lo(D_8013776C)($s0)
/* 1EA7C 8001DE7C 2458FF50 */  addiu      $t8, $v0, -0xb0
/* 1EA80 8001DE80 245900B0 */  addiu      $t9, $v0, 0xb0
/* 1EA84 8001DE84 246AFF80 */  addiu      $t2, $v1, -0x80
/* 1EA88 8001DE88 246B0080 */  addiu      $t3, $v1, 0x80
/* 1EA8C 8001DE8C A7B80058 */  sh         $t8, 0x58($sp)
/* 1EA90 8001DE90 A7B90056 */  sh         $t9, 0x56($sp)
/* 1EA94 8001DE94 A7AA004E */  sh         $t2, 0x4e($sp)
/* 1EA98 8001DE98 A7AB004C */  sh         $t3, 0x4c($sp)
/* 1EA9C 8001DE9C 96040000 */  lhu        $a0, ($s0)
/* 1EAA0 8001DEA0 2454FF30 */  addiu      $s4, $v0, -0xd0
/* 1EAA4 8001DEA4 245600D0 */  addiu      $s6, $v0, 0xd0
/* 1EAA8 8001DEA8 2477FF60 */  addiu      $s7, $v1, -0xa0
/* 1EAAC 8001DEAC 3411FFFF */  ori        $s1, $zero, 0xffff
/* 1EAB0 8001DEB0 328FFFFF */  andi       $t7, $s4, 0xffff
/* 1EAB4 8001DEB4 32C8FFFF */  andi       $t0, $s6, 0xffff
/* 1EAB8 8001DEB8 32E9FFFF */  andi       $t1, $s7, 0xffff
/* 1EABC 8001DEBC 247500A0 */  addiu      $s5, $v1, 0xa0
/* 1EAC0 8001DEC0 01E0A025 */  or         $s4, $t7, $zero
/* 1EAC4 8001DEC4 0100B025 */  or         $s6, $t0, $zero
/* 1EAC8 8001DEC8 0120B825 */  or         $s7, $t1, $zero
/* 1EACC 8001DECC 32ACFFFF */  andi       $t4, $s5, 0xffff
/* 1EAD0 8001DED0 12240023 */  beq        $s1, $a0, .L8001DF60
/* 1EAD4 8001DED4 00802825 */   or        $a1, $a0, $zero
/* 1EAD8 8001DED8 3C12800F */  lui        $s2, %hi(D_800EF510)
/* 1EADC 8001DEDC 2652F510 */  addiu      $s2, $s2, %lo(D_800EF510)
/* 1EAE0 8001DEE0 01803025 */  or         $a2, $t4, $zero
/* 1EAE4 8001DEE4 24130198 */  addiu      $s3, $zero, 0x198
.L8001DEE8:
/* 1EAE8 8001DEE8 96020004 */  lhu        $v0, 4($s0)
/* 1EAEC 8001DEEC 97AD004C */  lhu        $t5, 0x4c($sp)
/* 1EAF0 8001DEF0 00C2082A */  slt        $at, $a2, $v0
/* 1EAF4 8001DEF4 14200016 */  bnez       $at, .L8001DF50
/* 1EAF8 8001DEF8 004D082A */   slt       $at, $v0, $t5
/* 1EAFC 8001DEFC 14200018 */  bnez       $at, .L8001DF60
/* 1EB00 8001DF00 00000000 */   nop
/* 1EB04 8001DF04 96020002 */  lhu        $v0, 2($s0)
/* 1EB08 8001DF08 00000000 */  nop
/* 1EB0C 8001DF0C 0054082A */  slt        $at, $v0, $s4
/* 1EB10 8001DF10 1420000F */  bnez       $at, .L8001DF50
/* 1EB14 8001DF14 02C2082A */   slt       $at, $s6, $v0
/* 1EB18 8001DF18 1420000D */  bnez       $at, .L8001DF50
/* 1EB1C 8001DF1C 3085FFFF */   andi      $a1, $a0, 0xffff
/* 1EB20 8001DF20 00B30019 */  multu      $a1, $s3
/* 1EB24 8001DF24 02002025 */  or         $a0, $s0, $zero
/* 1EB28 8001DF28 00007012 */  mflo       $t6
/* 1EB2C 8001DF2C 024E7821 */  addu       $t7, $s2, $t6
/* 1EB30 8001DF30 8DF80080 */  lw         $t8, 0x80($t7)
/* 1EB34 8001DF34 00000000 */  nop
/* 1EB38 8001DF38 17000005 */  bnez       $t8, .L8001DF50
/* 1EB3C 8001DF3C 00000000 */   nop
/* 1EB40 8001DF40 0C0076E8 */  jal        func_8001DBA0
/* 1EB44 8001DF44 AFA60038 */   sw        $a2, 0x38($sp)
/* 1EB48 8001DF48 8FA60038 */  lw         $a2, 0x38($sp)
/* 1EB4C 8001DF4C 00000000 */  nop
.L8001DF50:
/* 1EB50 8001DF50 9604000C */  lhu        $a0, 0xc($s0)
/* 1EB54 8001DF54 2610000C */  addiu      $s0, $s0, 0xc
/* 1EB58 8001DF58 1624FFE3 */  bne        $s1, $a0, .L8001DEE8
/* 1EB5C 8001DF5C 00802825 */   or        $a1, $a0, $zero
.L8001DF60:
/* 1EB60 8001DF60 3C12800F */  lui        $s2, %hi(D_800EF510)
/* 1EB64 8001DF64 2652F510 */  addiu      $s2, $s2, %lo(D_800EF510)
/* 1EB68 8001DF68 12250027 */  beq        $s1, $a1, .L8001E008
/* 1EB6C 8001DF6C 24130198 */   addiu     $s3, $zero, 0x198
/* 1EB70 8001DF70 97A6004E */  lhu        $a2, 0x4e($sp)
/* 1EB74 8001DF74 00000000 */  nop
.L8001DF78:
/* 1EB78 8001DF78 96020004 */  lhu        $v0, 4($s0)
/* 1EB7C 8001DF7C 00000000 */  nop
/* 1EB80 8001DF80 0046082A */  slt        $at, $v0, $a2
/* 1EB84 8001DF84 14200020 */  bnez       $at, .L8001E008
/* 1EB88 8001DF88 00000000 */   nop
/* 1EB8C 8001DF8C 96020002 */  lhu        $v0, 2($s0)
/* 1EB90 8001DF90 00000000 */  nop
/* 1EB94 8001DF94 0054082A */  slt        $at, $v0, $s4
/* 1EB98 8001DF98 14200017 */  bnez       $at, .L8001DFF8
/* 1EB9C 8001DF9C 02C2082A */   slt       $at, $s6, $v0
/* 1EBA0 8001DFA0 14200015 */  bnez       $at, .L8001DFF8
/* 1EBA4 8001DFA4 00000000 */   nop
/* 1EBA8 8001DFA8 97B90058 */  lhu        $t9, 0x58($sp)
/* 1EBAC 8001DFAC 97A80056 */  lhu        $t0, 0x56($sp)
/* 1EBB0 8001DFB0 0322082A */  slt        $at, $t9, $v0
/* 1EBB4 8001DFB4 10200004 */  beqz       $at, .L8001DFC8
/* 1EBB8 8001DFB8 3085FFFF */   andi      $a1, $a0, 0xffff
/* 1EBBC 8001DFBC 0048082A */  slt        $at, $v0, $t0
/* 1EBC0 8001DFC0 1420000D */  bnez       $at, .L8001DFF8
/* 1EBC4 8001DFC4 00000000 */   nop
.L8001DFC8:
/* 1EBC8 8001DFC8 00B30019 */  multu      $a1, $s3
/* 1EBCC 8001DFCC 02002025 */  or         $a0, $s0, $zero
/* 1EBD0 8001DFD0 00004812 */  mflo       $t1
/* 1EBD4 8001DFD4 02495021 */  addu       $t2, $s2, $t1
/* 1EBD8 8001DFD8 8D4B0080 */  lw         $t3, 0x80($t2)
/* 1EBDC 8001DFDC 00000000 */  nop
/* 1EBE0 8001DFE0 15600005 */  bnez       $t3, .L8001DFF8
/* 1EBE4 8001DFE4 00000000 */   nop
/* 1EBE8 8001DFE8 0C0076E8 */  jal        func_8001DBA0
/* 1EBEC 8001DFEC AFA60038 */   sw        $a2, 0x38($sp)
/* 1EBF0 8001DFF0 8FA60038 */  lw         $a2, 0x38($sp)
/* 1EBF4 8001DFF4 00000000 */  nop
.L8001DFF8:
/* 1EBF8 8001DFF8 9604000C */  lhu        $a0, 0xc($s0)
/* 1EBFC 8001DFFC 2610000C */  addiu      $s0, $s0, 0xc
/* 1EC00 8001E000 1624FFDD */  bne        $s1, $a0, .L8001DF78
/* 1EC04 8001E004 00802825 */   or        $a1, $a0, $zero
.L8001E008:
/* 1EC08 8001E008 122500A6 */  beq        $s1, $a1, .L8001E2A4
/* 1EC0C 8001E00C 02E03025 */   or        $a2, $s7, $zero
.L8001E010:
/* 1EC10 8001E010 96020004 */  lhu        $v0, 4($s0)
/* 1EC14 8001E014 00000000 */  nop
/* 1EC18 8001E018 0046082A */  slt        $at, $v0, $a2
/* 1EC1C 8001E01C 142000A2 */  bnez       $at, .L8001E2A8
/* 1EC20 8001E020 8FBF0034 */   lw        $ra, 0x34($sp)
/* 1EC24 8001E024 96020002 */  lhu        $v0, 2($s0)
/* 1EC28 8001E028 00000000 */  nop
/* 1EC2C 8001E02C 0054082A */  slt        $at, $v0, $s4
/* 1EC30 8001E030 1420000F */  bnez       $at, .L8001E070
/* 1EC34 8001E034 02C2082A */   slt       $at, $s6, $v0
/* 1EC38 8001E038 1420000D */  bnez       $at, .L8001E070
/* 1EC3C 8001E03C 3085FFFF */   andi      $a1, $a0, 0xffff
/* 1EC40 8001E040 00B30019 */  multu      $a1, $s3
/* 1EC44 8001E044 02002025 */  or         $a0, $s0, $zero
/* 1EC48 8001E048 00006012 */  mflo       $t4
/* 1EC4C 8001E04C 024C6821 */  addu       $t5, $s2, $t4
/* 1EC50 8001E050 8DAE0080 */  lw         $t6, 0x80($t5)
/* 1EC54 8001E054 00000000 */  nop
/* 1EC58 8001E058 15C00005 */  bnez       $t6, .L8001E070
/* 1EC5C 8001E05C 00000000 */   nop
/* 1EC60 8001E060 0C0076E8 */  jal        func_8001DBA0
/* 1EC64 8001E064 AFA6003C */   sw        $a2, 0x3c($sp)
/* 1EC68 8001E068 8FA6003C */  lw         $a2, 0x3c($sp)
/* 1EC6C 8001E06C 00000000 */  nop
.L8001E070:
/* 1EC70 8001E070 9604000C */  lhu        $a0, 0xc($s0)
/* 1EC74 8001E074 2610000C */  addiu      $s0, $s0, 0xc
/* 1EC78 8001E078 1624FFE5 */  bne        $s1, $a0, .L8001E010
/* 1EC7C 8001E07C 00000000 */   nop
/* 1EC80 8001E080 10000089 */  b          .L8001E2A8
/* 1EC84 8001E084 8FBF0034 */   lw        $ra, 0x34($sp)
.L8001E088:
/* 1EC88 8001E088 3C02800C */  lui        $v0, %hi(D_800BE558)
/* 1EC8C 8001E08C 3C03800C */  lui        $v1, %hi(D_800BE55C)
/* 1EC90 8001E090 8442E558 */  lh         $v0, %lo(D_800BE558)($v0)
/* 1EC94 8001E094 8463E55C */  lh         $v1, %lo(D_800BE55C)($v1)
/* 1EC98 8001E098 3C108013 */  lui        $s0, %hi(D_8013776C)
/* 1EC9C 8001E09C 8E10776C */  lw         $s0, %lo(D_8013776C)($s0)
/* 1ECA0 8001E0A0 2458FF50 */  addiu      $t8, $v0, -0xb0
/* 1ECA4 8001E0A4 245900B0 */  addiu      $t9, $v0, 0xb0
/* 1ECA8 8001E0A8 246AFF80 */  addiu      $t2, $v1, -0x80
/* 1ECAC 8001E0AC 246B0080 */  addiu      $t3, $v1, 0x80
/* 1ECB0 8001E0B0 A7B80058 */  sh         $t8, 0x58($sp)
/* 1ECB4 8001E0B4 A7B90056 */  sh         $t9, 0x56($sp)
/* 1ECB8 8001E0B8 A7AA004E */  sh         $t2, 0x4e($sp)
/* 1ECBC 8001E0BC A7AB004C */  sh         $t3, 0x4c($sp)
/* 1ECC0 8001E0C0 96040000 */  lhu        $a0, ($s0)
/* 1ECC4 8001E0C4 245600D0 */  addiu      $s6, $v0, 0xd0
/* 1ECC8 8001E0C8 2477FF60 */  addiu      $s7, $v1, -0xa0
/* 1ECCC 8001E0CC 247500A0 */  addiu      $s5, $v1, 0xa0
/* 1ECD0 8001E0D0 3411FFFF */  ori        $s1, $zero, 0xffff
/* 1ECD4 8001E0D4 32C8FFFF */  andi       $t0, $s6, 0xffff
/* 1ECD8 8001E0D8 32E9FFFF */  andi       $t1, $s7, 0xffff
/* 1ECDC 8001E0DC 32ACFFFF */  andi       $t4, $s5, 0xffff
/* 1ECE0 8001E0E0 2454FF30 */  addiu      $s4, $v0, -0xd0
/* 1ECE4 8001E0E4 328FFFFF */  andi       $t7, $s4, 0xffff
/* 1ECE8 8001E0E8 0100B025 */  or         $s6, $t0, $zero
/* 1ECEC 8001E0EC 0120B825 */  or         $s7, $t1, $zero
/* 1ECF0 8001E0F0 0180A825 */  or         $s5, $t4, $zero
/* 1ECF4 8001E0F4 12240023 */  beq        $s1, $a0, .L8001E184
/* 1ECF8 8001E0F8 00802825 */   or        $a1, $a0, $zero
/* 1ECFC 8001E0FC 3C12800F */  lui        $s2, %hi(D_800EF510)
/* 1ED00 8001E100 2652F510 */  addiu      $s2, $s2, %lo(D_800EF510)
/* 1ED04 8001E104 01E03025 */  or         $a2, $t7, $zero
/* 1ED08 8001E108 24130198 */  addiu      $s3, $zero, 0x198
.L8001E10C:
/* 1ED0C 8001E10C 96020002 */  lhu        $v0, 2($s0)
/* 1ED10 8001E110 97AD0058 */  lhu        $t5, 0x58($sp)
/* 1ED14 8001E114 0046082A */  slt        $at, $v0, $a2
/* 1ED18 8001E118 14200016 */  bnez       $at, .L8001E174
/* 1ED1C 8001E11C 01A2082A */   slt       $at, $t5, $v0
/* 1ED20 8001E120 14200018 */  bnez       $at, .L8001E184
/* 1ED24 8001E124 00000000 */   nop
/* 1ED28 8001E128 96020004 */  lhu        $v0, 4($s0)
/* 1ED2C 8001E12C 00000000 */  nop
/* 1ED30 8001E130 0057082A */  slt        $at, $v0, $s7
/* 1ED34 8001E134 1420000F */  bnez       $at, .L8001E174
/* 1ED38 8001E138 02A2082A */   slt       $at, $s5, $v0
/* 1ED3C 8001E13C 1420000D */  bnez       $at, .L8001E174
/* 1ED40 8001E140 3085FFFF */   andi      $a1, $a0, 0xffff
/* 1ED44 8001E144 00B30019 */  multu      $a1, $s3
/* 1ED48 8001E148 02002025 */  or         $a0, $s0, $zero
/* 1ED4C 8001E14C 00007012 */  mflo       $t6
/* 1ED50 8001E150 024E7821 */  addu       $t7, $s2, $t6
/* 1ED54 8001E154 8DF80080 */  lw         $t8, 0x80($t7)
/* 1ED58 8001E158 00000000 */  nop
/* 1ED5C 8001E15C 17000005 */  bnez       $t8, .L8001E174
/* 1ED60 8001E160 00000000 */   nop
/* 1ED64 8001E164 0C0076E8 */  jal        func_8001DBA0
/* 1ED68 8001E168 AFA60038 */   sw        $a2, 0x38($sp)
/* 1ED6C 8001E16C 8FA60038 */  lw         $a2, 0x38($sp)
/* 1ED70 8001E170 00000000 */  nop
.L8001E174:
/* 1ED74 8001E174 9604000C */  lhu        $a0, 0xc($s0)
/* 1ED78 8001E178 2610000C */  addiu      $s0, $s0, 0xc
/* 1ED7C 8001E17C 1624FFE3 */  bne        $s1, $a0, .L8001E10C
/* 1ED80 8001E180 00802825 */   or        $a1, $a0, $zero
.L8001E184:
/* 1ED84 8001E184 3C12800F */  lui        $s2, %hi(D_800EF510)
/* 1ED88 8001E188 2652F510 */  addiu      $s2, $s2, %lo(D_800EF510)
/* 1ED8C 8001E18C 12250027 */  beq        $s1, $a1, .L8001E22C
/* 1ED90 8001E190 24130198 */   addiu     $s3, $zero, 0x198
/* 1ED94 8001E194 97A60056 */  lhu        $a2, 0x56($sp)
/* 1ED98 8001E198 00000000 */  nop
.L8001E19C:
/* 1ED9C 8001E19C 96020002 */  lhu        $v0, 2($s0)
/* 1EDA0 8001E1A0 00000000 */  nop
/* 1EDA4 8001E1A4 00C2082A */  slt        $at, $a2, $v0
/* 1EDA8 8001E1A8 14200020 */  bnez       $at, .L8001E22C
/* 1EDAC 8001E1AC 00000000 */   nop
/* 1EDB0 8001E1B0 96020004 */  lhu        $v0, 4($s0)
/* 1EDB4 8001E1B4 00000000 */  nop
/* 1EDB8 8001E1B8 0057082A */  slt        $at, $v0, $s7
/* 1EDBC 8001E1BC 14200017 */  bnez       $at, .L8001E21C
/* 1EDC0 8001E1C0 02A2082A */   slt       $at, $s5, $v0
/* 1EDC4 8001E1C4 14200015 */  bnez       $at, .L8001E21C
/* 1EDC8 8001E1C8 00000000 */   nop
/* 1EDCC 8001E1CC 97B9004E */  lhu        $t9, 0x4e($sp)
/* 1EDD0 8001E1D0 97A8004C */  lhu        $t0, 0x4c($sp)
/* 1EDD4 8001E1D4 0322082A */  slt        $at, $t9, $v0
/* 1EDD8 8001E1D8 10200004 */  beqz       $at, .L8001E1EC
/* 1EDDC 8001E1DC 3085FFFF */   andi      $a1, $a0, 0xffff
/* 1EDE0 8001E1E0 0048082A */  slt        $at, $v0, $t0
/* 1EDE4 8001E1E4 1420000D */  bnez       $at, .L8001E21C
/* 1EDE8 8001E1E8 00000000 */   nop
.L8001E1EC:
/* 1EDEC 8001E1EC 00B30019 */  multu      $a1, $s3
/* 1EDF0 8001E1F0 02002025 */  or         $a0, $s0, $zero
/* 1EDF4 8001E1F4 00004812 */  mflo       $t1
/* 1EDF8 8001E1F8 02495021 */  addu       $t2, $s2, $t1
/* 1EDFC 8001E1FC 8D4B0080 */  lw         $t3, 0x80($t2)
/* 1EE00 8001E200 00000000 */  nop
/* 1EE04 8001E204 15600005 */  bnez       $t3, .L8001E21C
/* 1EE08 8001E208 00000000 */   nop
/* 1EE0C 8001E20C 0C0076E8 */  jal        func_8001DBA0
/* 1EE10 8001E210 AFA60038 */   sw        $a2, 0x38($sp)
/* 1EE14 8001E214 8FA60038 */  lw         $a2, 0x38($sp)
/* 1EE18 8001E218 00000000 */  nop
.L8001E21C:
/* 1EE1C 8001E21C 9604000C */  lhu        $a0, 0xc($s0)
/* 1EE20 8001E220 2610000C */  addiu      $s0, $s0, 0xc
/* 1EE24 8001E224 1624FFDD */  bne        $s1, $a0, .L8001E19C
/* 1EE28 8001E228 00802825 */   or        $a1, $a0, $zero
.L8001E22C:
/* 1EE2C 8001E22C 1225001D */  beq        $s1, $a1, .L8001E2A4
/* 1EE30 8001E230 02C03025 */   or        $a2, $s6, $zero
.L8001E234:
/* 1EE34 8001E234 96020002 */  lhu        $v0, 2($s0)
/* 1EE38 8001E238 00000000 */  nop
/* 1EE3C 8001E23C 00C2082A */  slt        $at, $a2, $v0
/* 1EE40 8001E240 14200019 */  bnez       $at, .L8001E2A8
/* 1EE44 8001E244 8FBF0034 */   lw        $ra, 0x34($sp)
/* 1EE48 8001E248 96020004 */  lhu        $v0, 4($s0)
/* 1EE4C 8001E24C 00000000 */  nop
/* 1EE50 8001E250 0057082A */  slt        $at, $v0, $s7
/* 1EE54 8001E254 1420000F */  bnez       $at, .L8001E294
/* 1EE58 8001E258 02A2082A */   slt       $at, $s5, $v0
/* 1EE5C 8001E25C 1420000D */  bnez       $at, .L8001E294
/* 1EE60 8001E260 3085FFFF */   andi      $a1, $a0, 0xffff
/* 1EE64 8001E264 00B30019 */  multu      $a1, $s3
/* 1EE68 8001E268 02002025 */  or         $a0, $s0, $zero
/* 1EE6C 8001E26C 00006012 */  mflo       $t4
/* 1EE70 8001E270 024C6821 */  addu       $t5, $s2, $t4
/* 1EE74 8001E274 8DAE0080 */  lw         $t6, 0x80($t5)
/* 1EE78 8001E278 00000000 */  nop
/* 1EE7C 8001E27C 15C00005 */  bnez       $t6, .L8001E294
/* 1EE80 8001E280 00000000 */   nop
/* 1EE84 8001E284 0C0076E8 */  jal        func_8001DBA0
/* 1EE88 8001E288 AFA6003C */   sw        $a2, 0x3c($sp)
/* 1EE8C 8001E28C 8FA6003C */  lw         $a2, 0x3c($sp)
/* 1EE90 8001E290 00000000 */  nop
.L8001E294:
/* 1EE94 8001E294 9604000C */  lhu        $a0, 0xc($s0)
/* 1EE98 8001E298 2610000C */  addiu      $s0, $s0, 0xc
/* 1EE9C 8001E29C 1624FFE5 */  bne        $s1, $a0, .L8001E234
/* 1EEA0 8001E2A0 00000000 */   nop
.L8001E2A4:
/* 1EEA4 8001E2A4 8FBF0034 */  lw         $ra, 0x34($sp)
.L8001E2A8:
/* 1EEA8 8001E2A8 8FB00014 */  lw         $s0, 0x14($sp)
/* 1EEAC 8001E2AC 8FB10018 */  lw         $s1, 0x18($sp)
/* 1EEB0 8001E2B0 8FB2001C */  lw         $s2, 0x1c($sp)
/* 1EEB4 8001E2B4 8FB30020 */  lw         $s3, 0x20($sp)
/* 1EEB8 8001E2B8 8FB40024 */  lw         $s4, 0x24($sp)
/* 1EEBC 8001E2BC 8FB50028 */  lw         $s5, 0x28($sp)
/* 1EEC0 8001E2C0 8FB6002C */  lw         $s6, 0x2c($sp)
/* 1EEC4 8001E2C4 8FB70030 */  lw         $s7, 0x30($sp)
/* 1EEC8 8001E2C8 03E00008 */  jr         $ra
/* 1EECC 8001E2CC 27BD0060 */   addiu     $sp, $sp, 0x60
