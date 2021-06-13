glabel func_8001EC1C
/* 1F81C 8001EC1C 27BDF310 */  addiu      $sp, $sp, -0xcf0
/* 1F820 8001EC20 3C0E8013 */  lui        $t6, %hi(D_80137458)
/* 1F824 8001EC24 8DCE7458 */  lw         $t6, %lo(D_80137458)($t6)
/* 1F828 8001EC28 AFBF003C */  sw         $ra, 0x3c($sp)
/* 1F82C 8001EC2C 31CF0010 */  andi       $t7, $t6, 0x10
/* 1F830 8001EC30 AFBE0038 */  sw         $fp, 0x38($sp)
/* 1F834 8001EC34 AFB70034 */  sw         $s7, 0x34($sp)
/* 1F838 8001EC38 AFB60030 */  sw         $s6, 0x30($sp)
/* 1F83C 8001EC3C AFB5002C */  sw         $s5, 0x2c($sp)
/* 1F840 8001EC40 AFB40028 */  sw         $s4, 0x28($sp)
/* 1F844 8001EC44 AFB30024 */  sw         $s3, 0x24($sp)
/* 1F848 8001EC48 AFB20020 */  sw         $s2, 0x20($sp)
/* 1F84C 8001EC4C AFB1001C */  sw         $s1, 0x1c($sp)
/* 1F850 8001EC50 15E00302 */  bnez       $t7, .L8001F85C
/* 1F854 8001EC54 AFB00018 */   sw        $s0, 0x18($sp)
/* 1F858 8001EC58 3C1E800C */  lui        $fp, %hi(gGameState)
/* 1F85C 8001EC5C 97DEE4F0 */  lhu        $fp, %lo(gGameState)($fp)
/* 1F860 8001EC60 24010006 */  addiu      $at, $zero, 6
/* 1F864 8001EC64 17C102FD */  bne        $fp, $at, .L8001F85C
/* 1F868 8001EC68 3C16800F */   lui       $s6, %hi(gActors)
/* 1F86C 8001EC6C 26D6F510 */  addiu      $s6, $s6, %lo(gActors)
/* 1F870 8001EC70 86C3008C */  lh         $v1, 0x8c($s6)
/* 1F874 8001EC74 86C20088 */  lh         $v0, 0x88($s6)
/* 1F878 8001EC78 86D900AA */  lh         $t9, 0xaa($s6)
/* 1F87C 8001EC7C 86CE00AE */  lh         $t6, 0xae($s6)
/* 1F880 8001EC80 86CF00B0 */  lh         $t7, 0xb0($s6)
/* 1F884 8001EC84 86D800AC */  lh         $t8, 0xac($s6)
/* 1F888 8001EC88 03222021 */  addu       $a0, $t9, $v0
/* 1F88C 8001EC8C 01C32821 */  addu       $a1, $t6, $v1
/* 1F890 8001EC90 01E33821 */  addu       $a3, $t7, $v1
/* 1F894 8001EC94 2484FFD0 */  addiu      $a0, $a0, -0x30
/* 1F898 8001EC98 24A50028 */  addiu      $a1, $a1, 0x28
/* 1F89C 8001EC9C 24E7FFD8 */  addiu      $a3, $a3, -0x28
/* 1F8A0 8001ECA0 0302A821 */  addu       $s5, $t8, $v0
/* 1F8A4 8001ECA4 26B50030 */  addiu      $s5, $s5, 0x30
/* 1F8A8 8001ECA8 00003025 */  or         $a2, $zero, $zero
/* 1F8AC 8001ECAC 00008825 */  or         $s1, $zero, $zero
/* 1F8B0 8001ECB0 A7A00BB8 */  sh         $zero, 0xbb8($sp)
/* 1F8B4 8001ECB4 A7B50978 */  sh         $s5, 0x978($sp)
/* 1F8B8 8001ECB8 A7A40738 */  sh         $a0, 0x738($sp)
/* 1F8BC 8001ECBC A7A503D8 */  sh         $a1, 0x3d8($sp)
/* 1F8C0 8001ECC0 A7A70198 */  sh         $a3, 0x198($sp)
/* 1F8C4 8001ECC4 24080001 */  addiu      $t0, $zero, 1
/* 1F8C8 8001ECC8 AFA7005C */  sw         $a3, 0x5c($sp)
/* 1F8CC 8001ECCC AFA50060 */  sw         $a1, 0x60($sp)
/* 1F8D0 8001ECD0 AFA40064 */  sw         $a0, 0x64($sp)
/* 1F8D4 8001ECD4 24170198 */  addiu      $s7, $zero, 0x198
/* 1F8D8 8001ECD8 27B40078 */  addiu      $s4, $sp, 0x78
/* 1F8DC 8001ECDC 27B302B8 */  addiu      $s3, $sp, 0x2b8
/* 1F8E0 8001ECE0 27B20618 */  addiu      $s2, $sp, 0x618
/* 1F8E4 8001ECE4 27B00858 */  addiu      $s0, $sp, 0x858
/* 1F8E8 8001ECE8 27BF0A98 */  addiu      $ra, $sp, 0xa98
/* 1F8EC 8001ECEC 27AD0198 */  addiu      $t5, $sp, 0x198
/* 1F8F0 8001ECF0 27AC03D8 */  addiu      $t4, $sp, 0x3d8
/* 1F8F4 8001ECF4 27AB0738 */  addiu      $t3, $sp, 0x738
/* 1F8F8 8001ECF8 27AA0978 */  addiu      $t2, $sp, 0x978
/* 1F8FC 8001ECFC 27A90BB8 */  addiu      $t1, $sp, 0xbb8
.L8001ED00:
/* 1F900 8001ED00 02370019 */  multu      $s1, $s7
/* 1F904 8001ED04 00081040 */  sll        $v0, $t0, 1
/* 1F908 8001ED08 01227021 */  addu       $t6, $t1, $v0
/* 1F90C 8001ED0C 0000C012 */  mflo       $t8
/* 1F910 8001ED10 02D81821 */  addu       $v1, $s6, $t8
/* 1F914 8001ED14 8C650080 */  lw         $a1, 0x80($v1)
/* 1F918 8001ED18 00000000 */  nop
/* 1F91C 8001ED1C 30B90080 */  andi       $t9, $a1, 0x80
/* 1F920 8001ED20 13200018 */  beqz       $t9, .L8001ED84
/* 1F924 8001ED24 30B80400 */   andi      $t8, $a1, 0x400
/* 1F928 8001ED28 A5D10000 */  sh         $s1, ($t6)
/* 1F92C 8001ED2C 846F00A4 */  lh         $t7, 0xa4($v1)
/* 1F930 8001ED30 84640088 */  lh         $a0, 0x88($v1)
/* 1F934 8001ED34 0142C821 */  addu       $t9, $t2, $v0
/* 1F938 8001ED38 01E4C021 */  addu       $t8, $t7, $a0
/* 1F93C 8001ED3C A7380000 */  sh         $t8, ($t9)
/* 1F940 8001ED40 846E00A2 */  lh         $t6, 0xa2($v1)
/* 1F944 8001ED44 0162C021 */  addu       $t8, $t3, $v0
/* 1F948 8001ED48 01C47821 */  addu       $t7, $t6, $a0
/* 1F94C 8001ED4C A70F0000 */  sh         $t7, ($t8)
/* 1F950 8001ED50 847900A6 */  lh         $t9, 0xa6($v1)
/* 1F954 8001ED54 8467008C */  lh         $a3, 0x8c($v1)
/* 1F958 8001ED58 01827821 */  addu       $t7, $t4, $v0
/* 1F95C 8001ED5C 03277021 */  addu       $t6, $t9, $a3
/* 1F960 8001ED60 A5EE0000 */  sh         $t6, ($t7)
/* 1F964 8001ED64 847800A8 */  lh         $t8, 0xa8($v1)
/* 1F968 8001ED68 25080001 */  addiu      $t0, $t0, 1
/* 1F96C 8001ED6C 310FFFFF */  andi       $t7, $t0, 0xffff
/* 1F970 8001ED70 01A27021 */  addu       $t6, $t5, $v0
/* 1F974 8001ED74 0307C821 */  addu       $t9, $t8, $a3
/* 1F978 8001ED78 A5D90000 */  sh         $t9, ($t6)
/* 1F97C 8001ED7C 01E04025 */  or         $t0, $t7, $zero
/* 1F980 8001ED80 30B80400 */  andi       $t8, $a1, 0x400
.L8001ED84:
/* 1F984 8001ED84 13000018 */  beqz       $t8, .L8001EDE8
/* 1F988 8001ED88 00061040 */   sll       $v0, $a2, 1
/* 1F98C 8001ED8C 03E2C821 */  addu       $t9, $ra, $v0
/* 1F990 8001ED90 A7310000 */  sh         $s1, ($t9)
/* 1F994 8001ED94 846E00AC */  lh         $t6, 0xac($v1)
/* 1F998 8001ED98 84640088 */  lh         $a0, 0x88($v1)
/* 1F99C 8001ED9C 0202C021 */  addu       $t8, $s0, $v0
/* 1F9A0 8001EDA0 01C47821 */  addu       $t7, $t6, $a0
/* 1F9A4 8001EDA4 A70F0000 */  sh         $t7, ($t8)
/* 1F9A8 8001EDA8 847900AA */  lh         $t9, 0xaa($v1)
/* 1F9AC 8001EDAC 02427821 */  addu       $t7, $s2, $v0
/* 1F9B0 8001EDB0 03247021 */  addu       $t6, $t9, $a0
/* 1F9B4 8001EDB4 A5EE0000 */  sh         $t6, ($t7)
/* 1F9B8 8001EDB8 847800AE */  lh         $t8, 0xae($v1)
/* 1F9BC 8001EDBC 8467008C */  lh         $a3, 0x8c($v1)
/* 1F9C0 8001EDC0 02627021 */  addu       $t6, $s3, $v0
/* 1F9C4 8001EDC4 0307C821 */  addu       $t9, $t8, $a3
/* 1F9C8 8001EDC8 A5D90000 */  sh         $t9, ($t6)
/* 1F9CC 8001EDCC 846F00B0 */  lh         $t7, 0xb0($v1)
/* 1F9D0 8001EDD0 24C60001 */  addiu      $a2, $a2, 1
/* 1F9D4 8001EDD4 30CEFFFF */  andi       $t6, $a2, 0xffff
/* 1F9D8 8001EDD8 0282C821 */  addu       $t9, $s4, $v0
/* 1F9DC 8001EDDC 01E7C021 */  addu       $t8, $t7, $a3
/* 1F9E0 8001EDE0 A7380000 */  sh         $t8, ($t9)
/* 1F9E4 8001EDE4 01C03025 */  or         $a2, $t6, $zero
.L8001EDE8:
/* 1F9E8 8001EDE8 26310001 */  addiu      $s1, $s1, 1
/* 1F9EC 8001EDEC 322FFFFF */  andi       $t7, $s1, 0xffff
/* 1F9F0 8001EDF0 29E10090 */  slti       $at, $t7, 0x90
/* 1F9F4 8001EDF4 1420FFC2 */  bnez       $at, .L8001ED00
/* 1F9F8 8001EDF8 01E08825 */   or        $s1, $t7, $zero
/* 1F9FC 8001EDFC AFBE006C */  sw         $fp, 0x6c($sp)
/* 1FA00 8001EE00 0000F025 */  or         $fp, $zero, $zero
/* 1FA04 8001EE04 18C000CD */  blez       $a2, .L8001F13C
/* 1FA08 8001EE08 AFA60054 */   sw        $a2, 0x54($sp)
/* 1FA0C 8001EE0C AFA80050 */  sw         $t0, 0x50($sp)
/* 1FA10 8001EE10 3C080200 */  lui        $t0, 0x200
/* 1FA14 8001EE14 24090012 */  addiu      $t1, $zero, 0x12
/* 1FA18 8001EE18 24070017 */  addiu      $a3, $zero, 0x17
/* 1FA1C 8001EE1C 24060015 */  addiu      $a2, $zero, 0x15
.L8001EE20:
/* 1FA20 8001EE20 001E9040 */  sll        $s2, $fp, 1
/* 1FA24 8001EE24 03B2A821 */  addu       $s5, $sp, $s2
/* 1FA28 8001EE28 96B50A98 */  lhu        $s5, 0xa98($s5)
/* 1FA2C 8001EE2C 8FAE0050 */  lw         $t6, 0x50($sp)
/* 1FA30 8001EE30 02B70019 */  multu      $s5, $s7
/* 1FA34 8001EE34 0000A025 */  or         $s4, $zero, $zero
/* 1FA38 8001EE38 02A09825 */  or         $s3, $s5, $zero
/* 1FA3C 8001EE3C 0000C812 */  mflo       $t9
/* 1FA40 8001EE40 02D98021 */  addu       $s0, $s6, $t9
/* 1FA44 8001EE44 19C00088 */  blez       $t6, .L8001F068
/* 1FA48 8001EE48 A60000E2 */   sh        $zero, 0xe2($s0)
.L8001EE4C:
/* 1FA4C 8001EE4C 00142040 */  sll        $a0, $s4, 1
/* 1FA50 8001EE50 03A48821 */  addu       $s1, $sp, $a0
/* 1FA54 8001EE54 96310BB8 */  lhu        $s1, 0xbb8($s1)
/* 1FA58 8001EE58 00000000 */  nop
/* 1FA5C 8001EE5C 1271007D */  beq        $s3, $s1, .L8001F054
/* 1FA60 8001EE60 8FB90050 */   lw        $t9, 0x50($sp)
/* 1FA64 8001EE64 960F00D4 */  lhu        $t7, 0xd4($s0)
/* 1FA68 8001EE68 00000000 */  nop
/* 1FA6C 8001EE6C 11E00009 */  beqz       $t7, .L8001EE94
/* 1FA70 8001EE70 03A47821 */   addu      $t7, $sp, $a0
/* 1FA74 8001EE74 02370019 */  multu      $s1, $s7
/* 1FA78 8001EE78 24010013 */  addiu      $at, $zero, 0x13
/* 1FA7C 8001EE7C 0000C012 */  mflo       $t8
/* 1FA80 8001EE80 02D8C821 */  addu       $t9, $s6, $t8
/* 1FA84 8001EE84 932E00DB */  lbu        $t6, 0xdb($t9)
/* 1FA88 8001EE88 00000000 */  nop
/* 1FA8C 8001EE8C 15C10070 */  bne        $t6, $at, .L8001F050
/* 1FA90 8001EE90 03A47821 */   addu      $t7, $sp, $a0
.L8001EE94:
/* 1FA94 8001EE94 03B2C021 */  addu       $t8, $sp, $s2
/* 1FA98 8001EE98 87180858 */  lh         $t8, 0x858($t8)
/* 1FA9C 8001EE9C 85EF0738 */  lh         $t7, 0x738($t7)
/* 1FAA0 8001EEA0 03B2C821 */  addu       $t9, $sp, $s2
/* 1FAA4 8001EEA4 01F8082A */  slt        $at, $t7, $t8
/* 1FAA8 8001EEA8 10200069 */  beqz       $at, .L8001F050
/* 1FAAC 8001EEAC 03A47021 */   addu      $t6, $sp, $a0
/* 1FAB0 8001EEB0 87390618 */  lh         $t9, 0x618($t9)
/* 1FAB4 8001EEB4 85CE0978 */  lh         $t6, 0x978($t6)
/* 1FAB8 8001EEB8 03A47821 */  addu       $t7, $sp, $a0
/* 1FABC 8001EEBC 032E082A */  slt        $at, $t9, $t6
/* 1FAC0 8001EEC0 10200063 */  beqz       $at, .L8001F050
/* 1FAC4 8001EEC4 03B2C021 */   addu      $t8, $sp, $s2
/* 1FAC8 8001EEC8 85EF0198 */  lh         $t7, 0x198($t7)
/* 1FACC 8001EECC 871802B8 */  lh         $t8, 0x2b8($t8)
/* 1FAD0 8001EED0 03B2C821 */  addu       $t9, $sp, $s2
/* 1FAD4 8001EED4 01F8082A */  slt        $at, $t7, $t8
/* 1FAD8 8001EED8 1020005D */  beqz       $at, .L8001F050
/* 1FADC 8001EEDC 03A47021 */   addu      $t6, $sp, $a0
/* 1FAE0 8001EEE0 87390078 */  lh         $t9, 0x78($t9)
/* 1FAE4 8001EEE4 85CE03D8 */  lh         $t6, 0x3d8($t6)
/* 1FAE8 8001EEE8 00117880 */  sll        $t7, $s1, 2
/* 1FAEC 8001EEEC 032E082A */  slt        $at, $t9, $t6
/* 1FAF0 8001EEF0 10200057 */  beqz       $at, .L8001F050
/* 1FAF4 8001EEF4 01F17823 */   subu      $t7, $t7, $s1
/* 1FAF8 8001EEF8 000F7880 */  sll        $t7, $t7, 2
/* 1FAFC 8001EEFC 01F17821 */  addu       $t7, $t7, $s1
/* 1FB00 8001EF00 000F7880 */  sll        $t7, $t7, 2
/* 1FB04 8001EF04 01F17823 */  subu       $t7, $t7, $s1
/* 1FB08 8001EF08 000F78C0 */  sll        $t7, $t7, 3
/* 1FB0C 8001EF0C 16800017 */  bnez       $s4, .L8001EF6C
/* 1FB10 8001EF10 02CF1821 */   addu      $v1, $s6, $t7
/* 1FB14 8001EF14 907800DB */  lbu        $t8, 0xdb($v1)
/* 1FB18 8001EF18 00000000 */  nop
/* 1FB1C 8001EF1C 14D80005 */  bne        $a2, $t8, .L8001EF34
/* 1FB20 8001EF20 00000000 */   nop
/* 1FB24 8001EF24 961900D2 */  lhu        $t9, 0xd2($s0)
/* 1FB28 8001EF28 00000000 */  nop
/* 1FB2C 8001EF2C 10F90049 */  beq        $a3, $t9, .L8001F054
/* 1FB30 8001EF30 8FB90050 */   lw        $t9, 0x50($sp)
.L8001EF34:
/* 1FB34 8001EF34 8C6E0080 */  lw         $t6, 0x80($v1)
/* 1FB38 8001EF38 00000000 */  nop
/* 1FB3C 8001EF3C 01C87824 */  and        $t7, $t6, $t0
/* 1FB40 8001EF40 11E00005 */  beqz       $t7, .L8001EF58
/* 1FB44 8001EF44 00000000 */   nop
/* 1FB48 8001EF48 947800D6 */  lhu        $t8, 0xd6($v1)
/* 1FB4C 8001EF4C 00000000 */  nop
/* 1FB50 8001EF50 12780040 */  beq        $s3, $t8, .L8001F054
/* 1FB54 8001EF54 8FB90050 */   lw        $t9, 0x50($sp)
.L8001EF58:
/* 1FB58 8001EF58 8C790098 */  lw         $t9, 0x98($v1)
/* 1FB5C 8001EF5C 00000000 */  nop
/* 1FB60 8001EF60 372E0800 */  ori        $t6, $t9, 0x800
/* 1FB64 8001EF64 1000003A */  b          .L8001F050
/* 1FB68 8001EF68 AC6E0098 */   sw        $t6, 0x98($v1)
.L8001EF6C:
/* 1FB6C 8001EF6C 920F00DF */  lbu        $t7, 0xdf($s0)
/* 1FB70 8001EF70 00000000 */  nop
/* 1FB74 8001EF74 31F80020 */  andi       $t8, $t7, 0x20
/* 1FB78 8001EF78 13000010 */  beqz       $t8, .L8001EFBC
/* 1FB7C 8001EF7C 00000000 */   nop
/* 1FB80 8001EF80 907900DA */  lbu        $t9, 0xda($v1)
/* 1FB84 8001EF84 00000000 */  nop
/* 1FB88 8001EF88 332E0020 */  andi       $t6, $t9, 0x20
/* 1FB8C 8001EF8C 11C00031 */  beqz       $t6, .L8001F054
/* 1FB90 8001EF90 8FB90050 */   lw        $t9, 0x50($sp)
/* 1FB94 8001EF94 906200DB */  lbu        $v0, 0xdb($v1)
/* 1FB98 8001EF98 00000000 */  nop
/* 1FB9C 8001EF9C 1522000B */  bne        $t1, $v0, .L8001EFCC
/* 1FBA0 8001EFA0 28410015 */   slti      $at, $v0, 0x15
/* 1FBA4 8001EFA4 8E0F00EC */  lw         $t7, 0xec($s0)
/* 1FBA8 8001EFA8 906200DB */  lbu        $v0, 0xdb($v1)
/* 1FBAC 8001EFAC AC6F00F8 */  sw         $t7, 0xf8($v1)
/* 1FBB0 8001EFB0 8E1800F0 */  lw         $t8, 0xf0($s0)
/* 1FBB4 8001EFB4 10000004 */  b          .L8001EFC8
/* 1FBB8 8001EFB8 AC7800FC */   sw        $t8, 0xfc($v1)
.L8001EFBC:
/* 1FBBC 8001EFBC 906200DB */  lbu        $v0, 0xdb($v1)
/* 1FBC0 8001EFC0 00000000 */  nop
/* 1FBC4 8001EFC4 11220022 */  beq        $t1, $v0, .L8001F050
.L8001EFC8:
/* 1FBC8 8001EFC8 28410015 */   slti      $at, $v0, 0x15
.L8001EFCC:
/* 1FBCC 8001EFCC 10200003 */  beqz       $at, .L8001EFDC
/* 1FBD0 8001EFD0 00000000 */   nop
/* 1FBD4 8001EFD4 906200DB */  lbu        $v0, 0xdb($v1)
/* 1FBD8 8001EFD8 A47500D6 */  sh         $s5, 0xd6($v1)
.L8001EFDC:
/* 1FBDC 8001EFDC 14C20005 */  bne        $a2, $v0, .L8001EFF4
/* 1FBE0 8001EFE0 00000000 */   nop
/* 1FBE4 8001EFE4 961900D2 */  lhu        $t9, 0xd2($s0)
/* 1FBE8 8001EFE8 00000000 */  nop
/* 1FBEC 8001EFEC 10F90019 */  beq        $a3, $t9, .L8001F054
/* 1FBF0 8001EFF0 8FB90050 */   lw        $t9, 0x50($sp)
.L8001EFF4:
/* 1FBF4 8001EFF4 8C6E0080 */  lw         $t6, 0x80($v1)
/* 1FBF8 8001EFF8 00000000 */  nop
/* 1FBFC 8001EFFC 01C87824 */  and        $t7, $t6, $t0
/* 1FC00 8001F000 11E00005 */  beqz       $t7, .L8001F018
/* 1FC04 8001F004 00000000 */   nop
/* 1FC08 8001F008 947800D6 */  lhu        $t8, 0xd6($v1)
/* 1FC0C 8001F00C 00000000 */  nop
/* 1FC10 8001F010 12780010 */  beq        $s3, $t8, .L8001F054
/* 1FC14 8001F014 8FB90050 */   lw        $t9, 0x50($sp)
.L8001F018:
/* 1FC18 8001F018 8C790098 */  lw         $t9, 0x98($v1)
/* 1FC1C 8001F01C 28410017 */  slti       $at, $v0, 0x17
/* 1FC20 8001F020 372E0001 */  ori        $t6, $t9, 1
/* 1FC24 8001F024 1020000A */  beqz       $at, .L8001F050
/* 1FC28 8001F028 AC6E0098 */   sw        $t6, 0x98($v1)
/* 1FC2C 8001F02C 8E0F0098 */  lw         $t7, 0x98($s0)
/* 1FC30 8001F030 A61100D6 */  sh         $s1, 0xd6($s0)
/* 1FC34 8001F034 35F80002 */  ori        $t8, $t7, 2
/* 1FC38 8001F038 AE180098 */  sw         $t8, 0x98($s0)
/* 1FC3C 8001F03C 846E00E4 */  lh         $t6, 0xe4($v1)
/* 1FC40 8001F040 861900E2 */  lh         $t9, 0xe2($s0)
/* 1FC44 8001F044 00000000 */  nop
/* 1FC48 8001F048 032E7821 */  addu       $t7, $t9, $t6
/* 1FC4C 8001F04C A60F00E2 */  sh         $t7, 0xe2($s0)
.L8001F050:
/* 1FC50 8001F050 8FB90050 */  lw         $t9, 0x50($sp)
.L8001F054:
/* 1FC54 8001F054 26940001 */  addiu      $s4, $s4, 1
/* 1FC58 8001F058 3298FFFF */  andi       $t8, $s4, 0xffff
/* 1FC5C 8001F05C 0319082A */  slt        $at, $t8, $t9
/* 1FC60 8001F060 1420FF7A */  bnez       $at, .L8001EE4C
/* 1FC64 8001F064 0300A025 */   or        $s4, $t8, $zero
.L8001F068:
/* 1FC68 8001F068 8E0E0098 */  lw         $t6, 0x98($s0)
/* 1FC6C 8001F06C 00000000 */  nop
/* 1FC70 8001F070 31CF0002 */  andi       $t7, $t6, 2
/* 1FC74 8001F074 11E00008 */  beqz       $t7, .L8001F098
/* 1FC78 8001F078 00000000 */   nop
/* 1FC7C 8001F07C 960400D6 */  lhu        $a0, 0xd6($s0)
/* 1FC80 8001F080 0C007AE3 */  jal        func_8001EB8C
/* 1FC84 8001F084 32A5FFFF */   andi      $a1, $s5, 0xffff
/* 1FC88 8001F088 24060015 */  addiu      $a2, $zero, 0x15
/* 1FC8C 8001F08C 24070017 */  addiu      $a3, $zero, 0x17
/* 1FC90 8001F090 3C080200 */  lui        $t0, 0x200
/* 1FC94 8001F094 24090012 */  addiu      $t1, $zero, 0x12
.L8001F098:
/* 1FC98 8001F098 8E180080 */  lw         $t8, 0x80($s0)
/* 1FC9C 8001F09C 27DE0001 */  addiu      $fp, $fp, 1
/* 1FCA0 8001F0A0 33198000 */  andi       $t9, $t8, 0x8000
/* 1FCA4 8001F0A4 1720000B */  bnez       $t9, .L8001F0D4
/* 1FCA8 8001F0A8 8FB80054 */   lw        $t8, 0x54($sp)
/* 1FCAC 8001F0AC 860200E2 */  lh         $v0, 0xe2($s0)
/* 1FCB0 8001F0B0 860300E0 */  lh         $v1, 0xe0($s0)
/* 1FCB4 8001F0B4 00000000 */  nop
/* 1FCB8 8001F0B8 0043082A */  slt        $at, $v0, $v1
/* 1FCBC 8001F0BC 10200003 */  beqz       $at, .L8001F0CC
/* 1FCC0 8001F0C0 00627023 */   subu      $t6, $v1, $v0
/* 1FCC4 8001F0C4 10000002 */  b          .L8001F0D0
/* 1FCC8 8001F0C8 A60E00E0 */   sh        $t6, 0xe0($s0)
.L8001F0CC:
/* 1FCCC 8001F0CC A60000E0 */  sh         $zero, 0xe0($s0)
.L8001F0D0:
/* 1FCD0 8001F0D0 8FB80054 */  lw         $t8, 0x54($sp)
.L8001F0D4:
/* 1FCD4 8001F0D4 33CFFFFF */  andi       $t7, $fp, 0xffff
/* 1FCD8 8001F0D8 01F8082A */  slt        $at, $t7, $t8
/* 1FCDC 8001F0DC 1420FF50 */  bnez       $at, .L8001EE20
/* 1FCE0 8001F0E0 01E0F025 */   or        $fp, $t7, $zero
/* 1FCE4 8001F0E4 3C19800C */  lui        $t9, %hi(gGameState)
/* 1FCE8 8001F0E8 9739E4F0 */  lhu        $t9, %lo(gGameState)($t9)
/* 1FCEC 8001F0EC 86CE00AC */  lh         $t6, 0xac($s6)
/* 1FCF0 8001F0F0 86CF0088 */  lh         $t7, 0x88($s6)
/* 1FCF4 8001F0F4 AFB9006C */  sw         $t9, 0x6c($sp)
/* 1FCF8 8001F0F8 86D90088 */  lh         $t9, 0x88($s6)
/* 1FCFC 8001F0FC 86D800AA */  lh         $t8, 0xaa($s6)
/* 1FD00 8001F100 01CFA821 */  addu       $s5, $t6, $t7
/* 1FD04 8001F104 03197021 */  addu       $t6, $t8, $t9
/* 1FD08 8001F108 86D9008C */  lh         $t9, 0x8c($s6)
/* 1FD0C 8001F10C 86D800AE */  lh         $t8, 0xae($s6)
/* 1FD10 8001F110 25CFFFD0 */  addiu      $t7, $t6, -0x30
/* 1FD14 8001F114 03197021 */  addu       $t6, $t8, $t9
/* 1FD18 8001F118 AFAF0064 */  sw         $t7, 0x64($sp)
/* 1FD1C 8001F11C 86D9008C */  lh         $t9, 0x8c($s6)
/* 1FD20 8001F120 86D800B0 */  lh         $t8, 0xb0($s6)
/* 1FD24 8001F124 25CF0028 */  addiu      $t7, $t6, 0x28
/* 1FD28 8001F128 AFAF0060 */  sw         $t7, 0x60($sp)
/* 1FD2C 8001F12C 03197021 */  addu       $t6, $t8, $t9
/* 1FD30 8001F130 25CFFFD8 */  addiu      $t7, $t6, -0x28
/* 1FD34 8001F134 AFAF005C */  sw         $t7, 0x5c($sp)
/* 1FD38 8001F138 26B50030 */  addiu      $s5, $s5, 0x30
.L8001F13C:
/* 1FD3C 8001F13C 8FB80064 */  lw         $t8, 0x64($sp)
/* 1FD40 8001F140 8FB90060 */  lw         $t9, 0x60($sp)
/* 1FD44 8001F144 8FAE005C */  lw         $t6, 0x5c($sp)
/* 1FD48 8001F148 00003025 */  or         $a2, $zero, $zero
/* 1FD4C 8001F14C 00008825 */  or         $s1, $zero, $zero
/* 1FD50 8001F150 A7A00BB8 */  sh         $zero, 0xbb8($sp)
/* 1FD54 8001F154 A7B50978 */  sh         $s5, 0x978($sp)
/* 1FD58 8001F158 24080001 */  addiu      $t0, $zero, 1
/* 1FD5C 8001F15C 0000A025 */  or         $s4, $zero, $zero
/* 1FD60 8001F160 27AD0BB8 */  addiu      $t5, $sp, 0xbb8
/* 1FD64 8001F164 27AC0978 */  addiu      $t4, $sp, 0x978
/* 1FD68 8001F168 27AB0738 */  addiu      $t3, $sp, 0x738
/* 1FD6C 8001F16C 27AA03D8 */  addiu      $t2, $sp, 0x3d8
/* 1FD70 8001F170 27A90198 */  addiu      $t1, $sp, 0x198
/* 1FD74 8001F174 A7B80738 */  sh         $t8, 0x738($sp)
/* 1FD78 8001F178 A7B903D8 */  sh         $t9, 0x3d8($sp)
/* 1FD7C 8001F17C A7AE0198 */  sh         $t6, 0x198($sp)
.L8001F180:
/* 1FD80 8001F180 02370019 */  multu      $s1, $s7
/* 1FD84 8001F184 00007812 */  mflo       $t7
/* 1FD88 8001F188 02CF1821 */  addu       $v1, $s6, $t7
/* 1FD8C 8001F18C 8C650098 */  lw         $a1, 0x98($v1)
/* 1FD90 8001F190 00000000 */  nop
/* 1FD94 8001F194 30B80002 */  andi       $t8, $a1, 2
/* 1FD98 8001F198 1700001C */  bnez       $t8, .L8001F20C
/* 1FD9C 8001F19C 03002825 */   or        $a1, $t8, $zero
/* 1FDA0 8001F1A0 8C790080 */  lw         $t9, 0x80($v1)
/* 1FDA4 8001F1A4 00081040 */  sll        $v0, $t0, 1
/* 1FDA8 8001F1A8 332E0800 */  andi       $t6, $t9, 0x800
/* 1FDAC 8001F1AC 11C00017 */  beqz       $t6, .L8001F20C
/* 1FDB0 8001F1B0 01A27821 */   addu      $t7, $t5, $v0
/* 1FDB4 8001F1B4 A5F10000 */  sh         $s1, ($t7)
/* 1FDB8 8001F1B8 847800A4 */  lh         $t8, 0xa4($v1)
/* 1FDBC 8001F1BC 84640088 */  lh         $a0, 0x88($v1)
/* 1FDC0 8001F1C0 01827021 */  addu       $t6, $t4, $v0
/* 1FDC4 8001F1C4 0304C821 */  addu       $t9, $t8, $a0
/* 1FDC8 8001F1C8 A5D90000 */  sh         $t9, ($t6)
/* 1FDCC 8001F1CC 846F00A2 */  lh         $t7, 0xa2($v1)
/* 1FDD0 8001F1D0 0162C821 */  addu       $t9, $t3, $v0
/* 1FDD4 8001F1D4 01E4C021 */  addu       $t8, $t7, $a0
/* 1FDD8 8001F1D8 A7380000 */  sh         $t8, ($t9)
/* 1FDDC 8001F1DC 846E00A6 */  lh         $t6, 0xa6($v1)
/* 1FDE0 8001F1E0 8467008C */  lh         $a3, 0x8c($v1)
/* 1FDE4 8001F1E4 0142C021 */  addu       $t8, $t2, $v0
/* 1FDE8 8001F1E8 01C77821 */  addu       $t7, $t6, $a3
/* 1FDEC 8001F1EC A70F0000 */  sh         $t7, ($t8)
/* 1FDF0 8001F1F0 847900A8 */  lh         $t9, 0xa8($v1)
/* 1FDF4 8001F1F4 25080001 */  addiu      $t0, $t0, 1
/* 1FDF8 8001F1F8 3118FFFF */  andi       $t8, $t0, 0xffff
/* 1FDFC 8001F1FC 01227821 */  addu       $t7, $t1, $v0
/* 1FE00 8001F200 03277021 */  addu       $t6, $t9, $a3
/* 1FE04 8001F204 A5EE0000 */  sh         $t6, ($t7)
/* 1FE08 8001F208 03004025 */  or         $t0, $t8, $zero
.L8001F20C:
/* 1FE0C 8001F20C 947900D4 */  lhu        $t9, 0xd4($v1)
/* 1FE10 8001F210 00000000 */  nop
/* 1FE14 8001F214 17200027 */  bnez       $t9, .L8001F2B4
/* 1FE18 8001F218 00000000 */   nop
/* 1FE1C 8001F21C 846200E0 */  lh         $v0, 0xe0($v1)
/* 1FE20 8001F220 00000000 */  nop
/* 1FE24 8001F224 04400023 */  bltz       $v0, .L8001F2B4
/* 1FE28 8001F228 00000000 */   nop
/* 1FE2C 8001F22C 14A00021 */  bnez       $a1, .L8001F2B4
/* 1FE30 8001F230 00000000 */   nop
/* 1FE34 8001F234 8C6E0080 */  lw         $t6, 0x80($v1)
/* 1FE38 8001F238 00000000 */  nop
/* 1FE3C 8001F23C 31CF1000 */  andi       $t7, $t6, 0x1000
/* 1FE40 8001F240 11E0001C */  beqz       $t7, .L8001F2B4
/* 1FE44 8001F244 00000000 */   nop
/* 1FE48 8001F248 12200002 */  beqz       $s1, .L8001F254
/* 1FE4C 8001F24C 00000000 */   nop
/* 1FE50 8001F250 10400018 */  beqz       $v0, .L8001F2B4
.L8001F254:
/* 1FE54 8001F254 00061040 */   sll       $v0, $a2, 1
/* 1FE58 8001F258 03A2C021 */  addu       $t8, $sp, $v0
/* 1FE5C 8001F25C A7110A98 */  sh         $s1, 0xa98($t8)
/* 1FE60 8001F260 847900AC */  lh         $t9, 0xac($v1)
/* 1FE64 8001F264 84640088 */  lh         $a0, 0x88($v1)
/* 1FE68 8001F268 03A27821 */  addu       $t7, $sp, $v0
/* 1FE6C 8001F26C 03247021 */  addu       $t6, $t9, $a0
/* 1FE70 8001F270 A5EE0858 */  sh         $t6, 0x858($t7)
/* 1FE74 8001F274 847800AA */  lh         $t8, 0xaa($v1)
/* 1FE78 8001F278 03A27021 */  addu       $t6, $sp, $v0
/* 1FE7C 8001F27C 0304C821 */  addu       $t9, $t8, $a0
/* 1FE80 8001F280 A5D90618 */  sh         $t9, 0x618($t6)
/* 1FE84 8001F284 846F00AE */  lh         $t7, 0xae($v1)
/* 1FE88 8001F288 8467008C */  lh         $a3, 0x8c($v1)
/* 1FE8C 8001F28C 03A2C821 */  addu       $t9, $sp, $v0
/* 1FE90 8001F290 01E7C021 */  addu       $t8, $t7, $a3
/* 1FE94 8001F294 A73802B8 */  sh         $t8, 0x2b8($t9)
/* 1FE98 8001F298 846E00B0 */  lh         $t6, 0xb0($v1)
/* 1FE9C 8001F29C 24C60001 */  addiu      $a2, $a2, 1
/* 1FEA0 8001F2A0 30D9FFFF */  andi       $t9, $a2, 0xffff
/* 1FEA4 8001F2A4 03A2C021 */  addu       $t8, $sp, $v0
/* 1FEA8 8001F2A8 01C77821 */  addu       $t7, $t6, $a3
/* 1FEAC 8001F2AC A70F0078 */  sh         $t7, 0x78($t8)
/* 1FEB0 8001F2B0 03203025 */  or         $a2, $t9, $zero
.L8001F2B4:
/* 1FEB4 8001F2B4 26310001 */  addiu      $s1, $s1, 1
/* 1FEB8 8001F2B8 322EFFFF */  andi       $t6, $s1, 0xffff
/* 1FEBC 8001F2BC 29C10090 */  slti       $at, $t6, 0x90
/* 1FEC0 8001F2C0 1420FFAF */  bnez       $at, .L8001F180
/* 1FEC4 8001F2C4 01C08825 */   or        $s1, $t6, $zero
/* 1FEC8 8001F2C8 1900007F */  blez       $t0, .L8001F4C8
/* 1FECC 8001F2CC 341FFFFF */   ori       $ra, $zero, 0xffff
/* 1FED0 8001F2D0 97A70CDE */  lhu        $a3, 0xcde($sp)
/* 1FED4 8001F2D4 AFA60054 */  sw         $a2, 0x54($sp)
/* 1FED8 8001F2D8 AFA80050 */  sw         $t0, 0x50($sp)
/* 1FEDC 8001F2DC 340DFFFF */  ori        $t5, $zero, 0xffff
/* 1FEE0 8001F2E0 240C0018 */  addiu      $t4, $zero, 0x18
.L8001F2E4:
/* 1FEE4 8001F2E4 00142040 */  sll        $a0, $s4, 1
/* 1FEE8 8001F2E8 8FAF0054 */  lw         $t7, 0x54($sp)
/* 1FEEC 8001F2EC 03A48821 */  addu       $s1, $sp, $a0
/* 1FEF0 8001F2F0 96310BB8 */  lhu        $s1, 0xbb8($s1)
/* 1FEF4 8001F2F4 3C0A8000 */  lui        $t2, 0x8000
/* 1FEF8 8001F2F8 354A0001 */  ori        $t2, $t2, 1
/* 1FEFC 8001F2FC 240B7FFF */  addiu      $t3, $zero, 0x7fff
/* 1FF00 8001F300 19E0006A */  blez       $t7, .L8001F4AC
/* 1FF04 8001F304 0000F025 */   or        $fp, $zero, $zero
.L8001F308:
/* 1FF08 8001F308 001E9040 */  sll        $s2, $fp, 1
/* 1FF0C 8001F30C 27B80A98 */  addiu      $t8, $sp, 0xa98
/* 1FF10 8001F310 02584821 */  addu       $t1, $s2, $t8
/* 1FF14 8001F314 95350000 */  lhu        $s5, ($t1)
/* 1FF18 8001F318 27DE0001 */  addiu      $fp, $fp, 1
/* 1FF1C 8001F31C 11B5005F */  beq        $t5, $s5, .L8001F49C
/* 1FF20 8001F320 8FB80054 */   lw        $t8, 0x54($sp)
/* 1FF24 8001F324 12B1005D */  beq        $s5, $s1, .L8001F49C
/* 1FF28 8001F328 8FB80054 */   lw        $t8, 0x54($sp)
/* 1FF2C 8001F32C 02B70019 */  multu      $s5, $s7
/* 1FF30 8001F330 0000C812 */  mflo       $t9
/* 1FF34 8001F334 02D98021 */  addu       $s0, $s6, $t9
/* 1FF38 8001F338 920800DB */  lbu        $t0, 0xdb($s0)
/* 1FF3C 8001F33C 00000000 */  nop
/* 1FF40 8001F340 1188001F */  beq        $t4, $t0, .L8001F3C0
/* 1FF44 8001F344 03A47821 */   addu      $t7, $sp, $a0
/* 1FF48 8001F348 8E050090 */  lw         $a1, 0x90($s0)
/* 1FF4C 8001F34C 00000000 */  nop
/* 1FF50 8001F350 00AA082A */  slt        $at, $a1, $t2
/* 1FF54 8001F354 14200051 */  bnez       $at, .L8001F49C
/* 1FF58 8001F358 8FB80054 */   lw        $t8, 0x54($sp)
/* 1FF5C 8001F35C 02370019 */  multu      $s1, $s7
/* 1FF60 8001F360 86180088 */  lh         $t8, 0x88($s0)
/* 1FF64 8001F364 00007012 */  mflo       $t6
/* 1FF68 8001F368 02CE1821 */  addu       $v1, $s6, $t6
/* 1FF6C 8001F36C 846F0088 */  lh         $t7, 0x88($v1)
/* 1FF70 8001F370 8467008C */  lh         $a3, 0x8c($v1)
/* 1FF74 8001F374 01F81023 */  subu       $v0, $t7, $t8
/* 1FF78 8001F378 18400003 */  blez       $v0, .L8001F388
/* 1FF7C 8001F37C 00023023 */   negu      $a2, $v0
/* 1FF80 8001F380 10000001 */  b          .L8001F388
/* 1FF84 8001F384 00403025 */   or        $a2, $v0, $zero
.L8001F388:
/* 1FF88 8001F388 8619008C */  lh         $t9, 0x8c($s0)
/* 1FF8C 8001F38C 00000000 */  nop
/* 1FF90 8001F390 00F91023 */  subu       $v0, $a3, $t9
/* 1FF94 8001F394 18400003 */  blez       $v0, .L8001F3A4
/* 1FF98 8001F398 00021823 */   negu      $v1, $v0
/* 1FF9C 8001F39C 10000001 */  b          .L8001F3A4
/* 1FFA0 8001F3A0 00401825 */   or        $v1, $v0, $zero
.L8001F3A4:
/* 1FFA4 8001F3A4 00661021 */  addu       $v0, $v1, $a2
/* 1FFA8 8001F3A8 15450004 */  bne        $t2, $a1, .L8001F3BC
/* 1FFAC 8001F3AC 3047FFFF */   andi      $a3, $v0, 0xffff
/* 1FFB0 8001F3B0 304EFFFF */  andi       $t6, $v0, 0xffff
/* 1FFB4 8001F3B4 016E082A */  slt        $at, $t3, $t6
/* 1FFB8 8001F3B8 14200037 */  bnez       $at, .L8001F498
.L8001F3BC:
/* 1FFBC 8001F3BC 03A47821 */   addu      $t7, $sp, $a0
.L8001F3C0:
/* 1FFC0 8001F3C0 03B2C021 */  addu       $t8, $sp, $s2
/* 1FFC4 8001F3C4 87180858 */  lh         $t8, 0x858($t8)
/* 1FFC8 8001F3C8 85EF0738 */  lh         $t7, 0x738($t7)
/* 1FFCC 8001F3CC 03B2C821 */  addu       $t9, $sp, $s2
/* 1FFD0 8001F3D0 01F8082A */  slt        $at, $t7, $t8
/* 1FFD4 8001F3D4 10200030 */  beqz       $at, .L8001F498
/* 1FFD8 8001F3D8 03A47021 */   addu      $t6, $sp, $a0
/* 1FFDC 8001F3DC 87390618 */  lh         $t9, 0x618($t9)
/* 1FFE0 8001F3E0 85CE0978 */  lh         $t6, 0x978($t6)
/* 1FFE4 8001F3E4 03A47821 */  addu       $t7, $sp, $a0
/* 1FFE8 8001F3E8 032E082A */  slt        $at, $t9, $t6
/* 1FFEC 8001F3EC 1020002A */  beqz       $at, .L8001F498
/* 1FFF0 8001F3F0 03B2C021 */   addu      $t8, $sp, $s2
/* 1FFF4 8001F3F4 85EF0198 */  lh         $t7, 0x198($t7)
/* 1FFF8 8001F3F8 871802B8 */  lh         $t8, 0x2b8($t8)
/* 1FFFC 8001F3FC 03B2C821 */  addu       $t9, $sp, $s2
/* 20000 8001F400 01F8082A */  slt        $at, $t7, $t8
/* 20004 8001F404 10200024 */  beqz       $at, .L8001F498
/* 20008 8001F408 03A47021 */   addu      $t6, $sp, $a0
/* 2000C 8001F40C 87390078 */  lh         $t9, 0x78($t9)
/* 20010 8001F410 85CE03D8 */  lh         $t6, 0x3d8($t6)
/* 20014 8001F414 00000000 */  nop
/* 20018 8001F418 032E082A */  slt        $at, $t9, $t6
/* 2001C 8001F41C 1020001F */  beqz       $at, .L8001F49C
/* 20020 8001F420 8FB80054 */   lw        $t8, 0x54($sp)
/* 20024 8001F424 1680000B */  bnez       $s4, .L8001F454
/* 20028 8001F428 00000000 */   nop
/* 2002C 8001F42C 02370019 */  multu      $s1, $s7
/* 20030 8001F430 00007812 */  mflo       $t7
/* 20034 8001F434 02CF1821 */  addu       $v1, $s6, $t7
/* 20038 8001F438 8C620098 */  lw         $v0, 0x98($v1)
/* 2003C 8001F43C 00000000 */  nop
/* 20040 8001F440 30580001 */  andi       $t8, $v0, 1
/* 20044 8001F444 17000019 */  bnez       $t8, .L8001F4AC
/* 20048 8001F448 34590800 */   ori       $t9, $v0, 0x800
/* 2004C 8001F44C 10000017 */  b          .L8001F4AC
/* 20050 8001F450 AC790098 */   sw        $t9, 0x98($v1)
.L8001F454:
/* 20054 8001F454 15880006 */  bne        $t4, $t0, .L8001F470
/* 20058 8001F458 00000000 */   nop
/* 2005C 8001F45C 8E0E0098 */  lw         $t6, 0x98($s0)
/* 20060 8001F460 A61100D6 */  sh         $s1, 0xd6($s0)
/* 20064 8001F464 35CF0001 */  ori        $t7, $t6, 1
/* 20068 8001F468 1000000B */  b          .L8001F498
/* 2006C 8001F46C AE0F0098 */   sw        $t7, 0x98($s0)
.L8001F470:
/* 20070 8001F470 02370019 */  multu      $s1, $s7
/* 20074 8001F474 8E0A0090 */  lw         $t2, 0x90($s0)
/* 20078 8001F478 30EBFFFF */  andi       $t3, $a3, 0xffff
/* 2007C 8001F47C A53F0000 */  sh         $ra, ($t1)
/* 20080 8001F480 0000C012 */  mflo       $t8
/* 20084 8001F484 02D81821 */  addu       $v1, $s6, $t8
/* 20088 8001F488 8C790098 */  lw         $t9, 0x98($v1)
/* 2008C 8001F48C A47500D6 */  sh         $s5, 0xd6($v1)
/* 20090 8001F490 372E0100 */  ori        $t6, $t9, 0x100
/* 20094 8001F494 AC6E0098 */  sw         $t6, 0x98($v1)
.L8001F498:
/* 20098 8001F498 8FB80054 */  lw         $t8, 0x54($sp)
.L8001F49C:
/* 2009C 8001F49C 33CFFFFF */  andi       $t7, $fp, 0xffff
/* 200A0 8001F4A0 01F8082A */  slt        $at, $t7, $t8
/* 200A4 8001F4A4 1420FF98 */  bnez       $at, .L8001F308
/* 200A8 8001F4A8 01E0F025 */   or        $fp, $t7, $zero
.L8001F4AC:
/* 200AC 8001F4AC 8FAE0050 */  lw         $t6, 0x50($sp)
/* 200B0 8001F4B0 26940001 */  addiu      $s4, $s4, 1
/* 200B4 8001F4B4 3299FFFF */  andi       $t9, $s4, 0xffff
/* 200B8 8001F4B8 032E082A */  slt        $at, $t9, $t6
/* 200BC 8001F4BC 1420FF89 */  bnez       $at, .L8001F2E4
/* 200C0 8001F4C0 0320A025 */   or        $s4, $t9, $zero
/* 200C4 8001F4C4 A7A70CDE */  sh         $a3, 0xcde($sp)
.L8001F4C8:
/* 200C8 8001F4C8 8FAF006C */  lw         $t7, 0x6c($sp)
/* 200CC 8001F4CC 24010006 */  addiu      $at, $zero, 6
/* 200D0 8001F4D0 15E100E2 */  bne        $t7, $at, .L8001F85C
/* 200D4 8001F4D4 240C0018 */   addiu     $t4, $zero, 0x18
/* 200D8 8001F4D8 00004025 */  or         $t0, $zero, $zero
/* 200DC 8001F4DC 00003025 */  or         $a2, $zero, $zero
/* 200E0 8001F4E0 00008825 */  or         $s1, $zero, $zero
/* 200E4 8001F4E4 0000F025 */  or         $fp, $zero, $zero
/* 200E8 8001F4E8 27B50BB8 */  addiu      $s5, $sp, 0xbb8
/* 200EC 8001F4EC 27B40978 */  addiu      $s4, $sp, 0x978
/* 200F0 8001F4F0 27B30738 */  addiu      $s3, $sp, 0x738
/* 200F4 8001F4F4 27B203D8 */  addiu      $s2, $sp, 0x3d8
/* 200F8 8001F4F8 27B00198 */  addiu      $s0, $sp, 0x198
/* 200FC 8001F4FC 27BF0A98 */  addiu      $ra, $sp, 0xa98
/* 20100 8001F500 27AD0858 */  addiu      $t5, $sp, 0x858
/* 20104 8001F504 27AB0618 */  addiu      $t3, $sp, 0x618
/* 20108 8001F508 27AA02B8 */  addiu      $t2, $sp, 0x2b8
/* 2010C 8001F50C 27A90078 */  addiu      $t1, $sp, 0x78
/* 20110 8001F510 27A504F8 */  addiu      $a1, $sp, 0x4f8
.L8001F514:
/* 20114 8001F514 02370019 */  multu      $s1, $s7
/* 20118 8001F518 0000C012 */  mflo       $t8
/* 2011C 8001F51C 02D81821 */  addu       $v1, $s6, $t8
/* 20120 8001F520 8C790098 */  lw         $t9, 0x98($v1)
/* 20124 8001F524 00000000 */  nop
/* 20128 8001F528 332E0002 */  andi       $t6, $t9, 2
/* 2012C 8001F52C 15C0001C */  bnez       $t6, .L8001F5A0
/* 20130 8001F530 00000000 */   nop
/* 20134 8001F534 8C6F0080 */  lw         $t7, 0x80($v1)
/* 20138 8001F538 00081040 */  sll        $v0, $t0, 1
/* 2013C 8001F53C 31F80200 */  andi       $t8, $t7, 0x200
/* 20140 8001F540 13000017 */  beqz       $t8, .L8001F5A0
/* 20144 8001F544 02A2C821 */   addu      $t9, $s5, $v0
/* 20148 8001F548 A7310000 */  sh         $s1, ($t9)
/* 2014C 8001F54C 846E00A4 */  lh         $t6, 0xa4($v1)
/* 20150 8001F550 84640088 */  lh         $a0, 0x88($v1)
/* 20154 8001F554 0282C021 */  addu       $t8, $s4, $v0
/* 20158 8001F558 01C47821 */  addu       $t7, $t6, $a0
/* 2015C 8001F55C A70F0000 */  sh         $t7, ($t8)
/* 20160 8001F560 847900A2 */  lh         $t9, 0xa2($v1)
/* 20164 8001F564 02627821 */  addu       $t7, $s3, $v0
/* 20168 8001F568 03247021 */  addu       $t6, $t9, $a0
/* 2016C 8001F56C A5EE0000 */  sh         $t6, ($t7)
/* 20170 8001F570 847800A6 */  lh         $t8, 0xa6($v1)
/* 20174 8001F574 8467008C */  lh         $a3, 0x8c($v1)
/* 20178 8001F578 02427021 */  addu       $t6, $s2, $v0
/* 2017C 8001F57C 0307C821 */  addu       $t9, $t8, $a3
/* 20180 8001F580 A5D90000 */  sh         $t9, ($t6)
/* 20184 8001F584 846F00A8 */  lh         $t7, 0xa8($v1)
/* 20188 8001F588 25080001 */  addiu      $t0, $t0, 1
/* 2018C 8001F58C 310EFFFF */  andi       $t6, $t0, 0xffff
/* 20190 8001F590 0202C821 */  addu       $t9, $s0, $v0
/* 20194 8001F594 01E7C021 */  addu       $t8, $t7, $a3
/* 20198 8001F598 A7380000 */  sh         $t8, ($t9)
/* 2019C 8001F59C 01C04025 */  or         $t0, $t6, $zero
.L8001F5A0:
/* 201A0 8001F5A0 8C6F0080 */  lw         $t7, 0x80($v1)
/* 201A4 8001F5A4 00061040 */  sll        $v0, $a2, 1
/* 201A8 8001F5A8 31F80100 */  andi       $t8, $t7, 0x100
/* 201AC 8001F5AC 13000019 */  beqz       $t8, .L8001F614
/* 201B0 8001F5B0 03E2C821 */   addu      $t9, $ra, $v0
/* 201B4 8001F5B4 A7310000 */  sh         $s1, ($t9)
/* 201B8 8001F5B8 846E00AC */  lh         $t6, 0xac($v1)
/* 201BC 8001F5BC 84640088 */  lh         $a0, 0x88($v1)
/* 201C0 8001F5C0 01A2C021 */  addu       $t8, $t5, $v0
/* 201C4 8001F5C4 01C47821 */  addu       $t7, $t6, $a0
/* 201C8 8001F5C8 A70F0000 */  sh         $t7, ($t8)
/* 201CC 8001F5CC 847900AA */  lh         $t9, 0xaa($v1)
/* 201D0 8001F5D0 01627821 */  addu       $t7, $t3, $v0
/* 201D4 8001F5D4 03247021 */  addu       $t6, $t9, $a0
/* 201D8 8001F5D8 A5EE0000 */  sh         $t6, ($t7)
/* 201DC 8001F5DC 00A2C021 */  addu       $t8, $a1, $v0
/* 201E0 8001F5E0 A7040000 */  sh         $a0, ($t8)
/* 201E4 8001F5E4 847900AE */  lh         $t9, 0xae($v1)
/* 201E8 8001F5E8 8467008C */  lh         $a3, 0x8c($v1)
/* 201EC 8001F5EC 01427821 */  addu       $t7, $t2, $v0
/* 201F0 8001F5F0 03277021 */  addu       $t6, $t9, $a3
/* 201F4 8001F5F4 A5EE0000 */  sh         $t6, ($t7)
/* 201F8 8001F5F8 847800B0 */  lh         $t8, 0xb0($v1)
/* 201FC 8001F5FC 24C60001 */  addiu      $a2, $a2, 1
/* 20200 8001F600 30CFFFFF */  andi       $t7, $a2, 0xffff
/* 20204 8001F604 01227021 */  addu       $t6, $t1, $v0
/* 20208 8001F608 0307C821 */  addu       $t9, $t8, $a3
/* 2020C 8001F60C A5D90000 */  sh         $t9, ($t6)
/* 20210 8001F610 01E03025 */  or         $a2, $t7, $zero
.L8001F614:
/* 20214 8001F614 26310001 */  addiu      $s1, $s1, 1
/* 20218 8001F618 3238FFFF */  andi       $t8, $s1, 0xffff
/* 2021C 8001F61C 2B010090 */  slti       $at, $t8, 0x90
/* 20220 8001F620 1420FFBC */  bnez       $at, .L8001F514
/* 20224 8001F624 03008825 */   or        $s1, $t8, $zero
/* 20228 8001F628 18C0008D */  blez       $a2, .L8001F860
/* 2022C 8001F62C 8FBF003C */   lw        $ra, 0x3c($sp)
/* 20230 8001F630 AFA80050 */  sw         $t0, 0x50($sp)
/* 20234 8001F634 AFA60054 */  sw         $a2, 0x54($sp)
.L8001F638:
/* 20238 8001F638 001E9040 */  sll        $s2, $fp, 1
/* 2023C 8001F63C 03B2A821 */  addu       $s5, $sp, $s2
/* 20240 8001F640 96B50A98 */  lhu        $s5, 0xa98($s5)
/* 20244 8001F644 8FAF0050 */  lw         $t7, 0x50($sp)
/* 20248 8001F648 02B70019 */  multu      $s5, $s7
/* 2024C 8001F64C 0000A025 */  or         $s4, $zero, $zero
/* 20250 8001F650 02A09825 */  or         $s3, $s5, $zero
/* 20254 8001F654 0000C812 */  mflo       $t9
/* 20258 8001F658 02D98021 */  addu       $s0, $s6, $t9
/* 2025C 8001F65C 860E00E2 */  lh         $t6, 0xe2($s0)
/* 20260 8001F660 A60000E2 */  sh         $zero, 0xe2($s0)
/* 20264 8001F664 19E00062 */  blez       $t7, .L8001F7F0
/* 20268 8001F668 A7AE0CE6 */   sh        $t6, 0xce6($sp)
.L8001F66C:
/* 2026C 8001F66C 00142040 */  sll        $a0, $s4, 1
/* 20270 8001F670 03A48821 */  addu       $s1, $sp, $a0
/* 20274 8001F674 96310BB8 */  lhu        $s1, 0xbb8($s1)
/* 20278 8001F678 00000000 */  nop
/* 2027C 8001F67C 12710057 */  beq        $s3, $s1, .L8001F7DC
/* 20280 8001F680 8FB80050 */   lw        $t8, 0x50($sp)
/* 20284 8001F684 961800D4 */  lhu        $t8, 0xd4($s0)
/* 20288 8001F688 00000000 */  nop
/* 2028C 8001F68C 13000009 */  beqz       $t8, .L8001F6B4
/* 20290 8001F690 03A4C021 */   addu      $t8, $sp, $a0
/* 20294 8001F694 02370019 */  multu      $s1, $s7
/* 20298 8001F698 24010013 */  addiu      $at, $zero, 0x13
/* 2029C 8001F69C 0000C812 */  mflo       $t9
/* 202A0 8001F6A0 02D97021 */  addu       $t6, $s6, $t9
/* 202A4 8001F6A4 91CF00DB */  lbu        $t7, 0xdb($t6)
/* 202A8 8001F6A8 00000000 */  nop
/* 202AC 8001F6AC 15E1004A */  bne        $t7, $at, .L8001F7D8
/* 202B0 8001F6B0 03A4C021 */   addu      $t8, $sp, $a0
.L8001F6B4:
/* 202B4 8001F6B4 03B2C821 */  addu       $t9, $sp, $s2
/* 202B8 8001F6B8 87390858 */  lh         $t9, 0x858($t9)
/* 202BC 8001F6BC 87180738 */  lh         $t8, 0x738($t8)
/* 202C0 8001F6C0 03B27021 */  addu       $t6, $sp, $s2
/* 202C4 8001F6C4 0319082A */  slt        $at, $t8, $t9
/* 202C8 8001F6C8 10200043 */  beqz       $at, .L8001F7D8
/* 202CC 8001F6CC 03A47821 */   addu      $t7, $sp, $a0
/* 202D0 8001F6D0 85CE0618 */  lh         $t6, 0x618($t6)
/* 202D4 8001F6D4 85EF0978 */  lh         $t7, 0x978($t7)
/* 202D8 8001F6D8 03A4C021 */  addu       $t8, $sp, $a0
/* 202DC 8001F6DC 01CF082A */  slt        $at, $t6, $t7
/* 202E0 8001F6E0 1020003D */  beqz       $at, .L8001F7D8
/* 202E4 8001F6E4 03B2C821 */   addu      $t9, $sp, $s2
/* 202E8 8001F6E8 87180198 */  lh         $t8, 0x198($t8)
/* 202EC 8001F6EC 873902B8 */  lh         $t9, 0x2b8($t9)
/* 202F0 8001F6F0 03B27021 */  addu       $t6, $sp, $s2
/* 202F4 8001F6F4 0319082A */  slt        $at, $t8, $t9
/* 202F8 8001F6F8 10200037 */  beqz       $at, .L8001F7D8
/* 202FC 8001F6FC 03A47821 */   addu      $t7, $sp, $a0
/* 20300 8001F700 85CE0078 */  lh         $t6, 0x78($t6)
/* 20304 8001F704 85EF03D8 */  lh         $t7, 0x3d8($t7)
/* 20308 8001F708 00000000 */  nop
/* 2030C 8001F70C 01CF082A */  slt        $at, $t6, $t7
/* 20310 8001F710 10200032 */  beqz       $at, .L8001F7DC
/* 20314 8001F714 8FB80050 */   lw        $t8, 0x50($sp)
/* 20318 8001F718 02370019 */  multu      $s1, $s7
/* 2031C 8001F71C 0000C012 */  mflo       $t8
/* 20320 8001F720 02D81821 */  addu       $v1, $s6, $t8
/* 20324 8001F724 8C790098 */  lw         $t9, 0x98($v1)
/* 20328 8001F728 906200DB */  lbu        $v0, 0xdb($v1)
/* 2032C 8001F72C 372E0001 */  ori        $t6, $t9, 1
/* 20330 8001F730 28410014 */  slti       $at, $v0, 0x14
/* 20334 8001F734 14200003 */  bnez       $at, .L8001F744
/* 20338 8001F738 AC6E0098 */   sw        $t6, 0x98($v1)
/* 2033C 8001F73C 15820002 */  bne        $t4, $v0, .L8001F748
/* 20340 8001F740 00000000 */   nop
.L8001F744:
/* 20344 8001F744 A47500D6 */  sh         $s5, 0xd6($v1)
.L8001F748:
/* 20348 8001F748 1660000C */  bnez       $s3, .L8001F77C
/* 2034C 8001F74C 00000000 */   nop
/* 20350 8001F750 8E0F0080 */  lw         $t7, 0x80($s0)
/* 20354 8001F754 00000000 */  nop
/* 20358 8001F758 31F88000 */  andi       $t8, $t7, 0x8000
/* 2035C 8001F75C 17000007 */  bnez       $t8, .L8001F77C
/* 20360 8001F760 00000000 */   nop
/* 20364 8001F764 907900DA */  lbu        $t9, 0xda($v1)
/* 20368 8001F768 240F003C */  addiu      $t7, $zero, 0x3c
/* 2036C 8001F76C 332E0004 */  andi       $t6, $t9, 4
/* 20370 8001F770 11C00002 */  beqz       $t6, .L8001F77C
/* 20374 8001F774 00000000 */   nop
/* 20378 8001F778 A60F00D4 */  sh         $t7, 0xd4($s0)
.L8001F77C:
/* 2037C 8001F77C 906200DB */  lbu        $v0, 0xdb($v1)
/* 20380 8001F780 16600008 */  bnez       $s3, .L8001F7A4
/* 20384 8001F784 28410014 */   slti      $at, $v0, 0x14
/* 20388 8001F788 8E180080 */  lw         $t8, 0x80($s0)
/* 2038C 8001F78C 24010013 */  addiu      $at, $zero, 0x13
/* 20390 8001F790 33198000 */  andi       $t9, $t8, 0x8000
/* 20394 8001F794 13200002 */  beqz       $t9, .L8001F7A0
/* 20398 8001F798 00000000 */   nop
/* 2039C 8001F79C 1441000E */  bne        $v0, $at, .L8001F7D8
.L8001F7A0:
/* 203A0 8001F7A0 28410014 */   slti      $at, $v0, 0x14
.L8001F7A4:
/* 203A4 8001F7A4 1020000C */  beqz       $at, .L8001F7D8
/* 203A8 8001F7A8 3224FFFF */   andi      $a0, $s1, 0xffff
/* 203AC 8001F7AC 8E0E0098 */  lw         $t6, 0x98($s0)
/* 203B0 8001F7B0 861800E2 */  lh         $t8, 0xe2($s0)
/* 203B4 8001F7B4 35CF0002 */  ori        $t7, $t6, 2
/* 203B8 8001F7B8 AE0F0098 */  sw         $t7, 0x98($s0)
/* 203BC 8001F7BC 847900E4 */  lh         $t9, 0xe4($v1)
/* 203C0 8001F7C0 A61100D6 */  sh         $s1, 0xd6($s0)
/* 203C4 8001F7C4 03197021 */  addu       $t6, $t8, $t9
/* 203C8 8001F7C8 A60E00E2 */  sh         $t6, 0xe2($s0)
/* 203CC 8001F7CC 0C007AE3 */  jal        func_8001EB8C
/* 203D0 8001F7D0 32A5FFFF */   andi      $a1, $s5, 0xffff
/* 203D4 8001F7D4 240C0018 */  addiu      $t4, $zero, 0x18
.L8001F7D8:
/* 203D8 8001F7D8 8FB80050 */  lw         $t8, 0x50($sp)
.L8001F7DC:
/* 203DC 8001F7DC 26940001 */  addiu      $s4, $s4, 1
/* 203E0 8001F7E0 328FFFFF */  andi       $t7, $s4, 0xffff
/* 203E4 8001F7E4 01F8082A */  slt        $at, $t7, $t8
/* 203E8 8001F7E8 1420FFA0 */  bnez       $at, .L8001F66C
/* 203EC 8001F7EC 01E0A025 */   or        $s4, $t7, $zero
.L8001F7F0:
/* 203F0 8001F7F0 16A00007 */  bnez       $s5, .L8001F810
/* 203F4 8001F7F4 27DE0001 */   addiu     $fp, $fp, 1
/* 203F8 8001F7F8 861900E2 */  lh         $t9, 0xe2($s0)
/* 203FC 8001F7FC 87AE0CE6 */  lh         $t6, 0xce6($sp)
/* 20400 8001F800 17200012 */  bnez       $t9, .L8001F84C
/* 20404 8001F804 8FAF0054 */   lw        $t7, 0x54($sp)
/* 20408 8001F808 1000000F */  b          .L8001F848
/* 2040C 8001F80C A60E00E2 */   sh        $t6, 0xe2($s0)
.L8001F810:
/* 20410 8001F810 8E0F0080 */  lw         $t7, 0x80($s0)
/* 20414 8001F814 00000000 */  nop
/* 20418 8001F818 31F88000 */  andi       $t8, $t7, 0x8000
/* 2041C 8001F81C 1700000B */  bnez       $t8, .L8001F84C
/* 20420 8001F820 8FAF0054 */   lw        $t7, 0x54($sp)
/* 20424 8001F824 860200E2 */  lh         $v0, 0xe2($s0)
/* 20428 8001F828 860300E0 */  lh         $v1, 0xe0($s0)
/* 2042C 8001F82C 00000000 */  nop
/* 20430 8001F830 0043082A */  slt        $at, $v0, $v1
/* 20434 8001F834 10200003 */  beqz       $at, .L8001F844
/* 20438 8001F838 0062C823 */   subu      $t9, $v1, $v0
/* 2043C 8001F83C 10000002 */  b          .L8001F848
/* 20440 8001F840 A61900E0 */   sh        $t9, 0xe0($s0)
.L8001F844:
/* 20444 8001F844 A60000E0 */  sh         $zero, 0xe0($s0)
.L8001F848:
/* 20448 8001F848 8FAF0054 */  lw         $t7, 0x54($sp)
.L8001F84C:
/* 2044C 8001F84C 33CEFFFF */  andi       $t6, $fp, 0xffff
/* 20450 8001F850 01CF082A */  slt        $at, $t6, $t7
/* 20454 8001F854 1420FF78 */  bnez       $at, .L8001F638
/* 20458 8001F858 01C0F025 */   or        $fp, $t6, $zero
.L8001F85C:
/* 2045C 8001F85C 8FBF003C */  lw         $ra, 0x3c($sp)
.L8001F860:
/* 20460 8001F860 8FB00018 */  lw         $s0, 0x18($sp)
/* 20464 8001F864 8FB1001C */  lw         $s1, 0x1c($sp)
/* 20468 8001F868 8FB20020 */  lw         $s2, 0x20($sp)
/* 2046C 8001F86C 8FB30024 */  lw         $s3, 0x24($sp)
/* 20470 8001F870 8FB40028 */  lw         $s4, 0x28($sp)
/* 20474 8001F874 8FB5002C */  lw         $s5, 0x2c($sp)
/* 20478 8001F878 8FB60030 */  lw         $s6, 0x30($sp)
/* 2047C 8001F87C 8FB70034 */  lw         $s7, 0x34($sp)
/* 20480 8001F880 8FBE0038 */  lw         $fp, 0x38($sp)
/* 20484 8001F884 03E00008 */  jr         $ra
/* 20488 8001F888 27BD0CF0 */   addiu     $sp, $sp, 0xcf0
