glabel func_8005EC20
/* 5F820 8005EC20 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 5F824 8005EC24 AFB00018 */  sw         $s0, 0x18($sp)
/* 5F828 8005EC28 00048400 */  sll        $s0, $a0, 0x10
/* 5F82C 8005EC2C 00107403 */  sra        $t6, $s0, 0x10
/* 5F830 8005EC30 AFBF001C */  sw         $ra, 0x1c($sp)
/* 5F834 8005EC34 AFA40030 */  sw         $a0, 0x30($sp)
/* 5F838 8005EC38 AFA50034 */  sw         $a1, 0x34($sp)
/* 5F83C 8005EC3C 01C08025 */  or         $s0, $t6, $zero
/* 5F840 8005EC40 AFA60038 */  sw         $a2, 0x38($sp)
/* 5F844 8005EC44 240500D0 */  addiu      $a1, $zero, 0xd0
/* 5F848 8005EC48 0C00A12E */  jal        func_800284B8
/* 5F84C 8005EC4C 24040030 */   addiu     $a0, $zero, 0x30
/* 5F850 8005EC50 14400003 */  bnez       $v0, .L8005EC60
/* 5F854 8005EC54 3044FFFF */   andi      $a0, $v0, 0xffff
/* 5F858 8005EC58 1000006E */  b          .L8005EE14
/* 5F85C 8005EC5C 00801025 */   or        $v0, $a0, $zero
.L8005EC60:
/* 5F860 8005EC60 00047880 */  sll        $t7, $a0, 2
/* 5F864 8005EC64 01E47823 */  subu       $t7, $t7, $a0
/* 5F868 8005EC68 000F7880 */  sll        $t7, $t7, 2
/* 5F86C 8005EC6C 01E47821 */  addu       $t7, $t7, $a0
/* 5F870 8005EC70 000F7880 */  sll        $t7, $t7, 2
/* 5F874 8005EC74 01E47823 */  subu       $t7, $t7, $a0
/* 5F878 8005EC78 3C18800F */  lui        $t8, %hi(gActors)
/* 5F87C 8005EC7C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 5F880 8005EC80 000F78C0 */  sll        $t7, $t7, 3
/* 5F884 8005EC84 01F81821 */  addu       $v1, $t7, $t8
/* 5F888 8005EC88 2419003A */  addiu      $t9, $zero, 0x3a
/* 5F88C 8005EC8C A47900D2 */  sh         $t9, 0xd2($v1)
/* 5F890 8005EC90 0C0078B4 */  jal        func_8001E2D0
/* 5F894 8005EC94 AFA30024 */   sw        $v1, 0x24($sp)
/* 5F898 8005EC98 8FA30024 */  lw         $v1, 0x24($sp)
/* 5F89C 8005EC9C 3C048018 */  lui        $a0, 0x8018
/* 5F8A0 8005ECA0 94680094 */  lhu        $t0, 0x94($v1)
/* 5F8A4 8005ECA4 8C6A0080 */  lw         $t2, 0x80($v1)
/* 5F8A8 8005ECA8 35090B41 */  ori        $t1, $t0, 0xb41
/* 5F8AC 8005ECAC 354B0009 */  ori        $t3, $t2, 9
/* 5F8B0 8005ECB0 A4690094 */  sh         $t1, 0x94($v1)
/* 5F8B4 8005ECB4 AC6B0080 */  sw         $t3, 0x80($v1)
/* 5F8B8 8005ECB8 848482E2 */  lh         $a0, -0x7d1e($a0)
/* 5F8BC 8005ECBC 3C018026 */  lui        $at, 0x8026
/* 5F8C0 8005ECC0 342151F8 */  ori        $at, $at, 0x51f8
/* 5F8C4 8005ECC4 000460C0 */  sll        $t4, $a0, 3
/* 5F8C8 8005ECC8 8FAE0038 */  lw         $t6, 0x38($sp)
/* 5F8CC 8005ECCC 01816821 */  addu       $t5, $t4, $at
/* 5F8D0 8005ECD0 24010002 */  addiu      $at, $zero, 2
/* 5F8D4 8005ECD4 15C1001B */  bne        $t6, $at, .L8005ED44
/* 5F8D8 8005ECD8 AC6D018C */   sw        $t5, 0x18c($v1)
/* 5F8DC 8005ECDC 06010012 */  bgez       $s0, .L8005ED28
/* 5F8E0 8005ECE0 3C0F800E */   lui       $t7, %hi(D_800E164C)
/* 5F8E4 8005ECE4 25EF164C */  addiu      $t7, $t7, %lo(D_800E164C)
/* 5F8E8 8005ECE8 24180001 */  addiu      $t8, $zero, 1
/* 5F8EC 8005ECEC AC6F00E8 */  sw         $t7, 0xe8($v1)
/* 5F8F0 8005ECF0 A47800E6 */  sh         $t8, 0xe6($v1)
/* 5F8F4 8005ECF4 02002025 */  or         $a0, $s0, $zero
/* 5F8F8 8005ECF8 0C0171B4 */  jal        func_8005C6D0
/* 5F8FC 8005ECFC AFA30024 */   sw        $v1, 0x24($sp)
/* 5F900 8005ED00 0002C880 */  sll        $t9, $v0, 2
/* 5F904 8005ED04 3C08800D */  lui        $t0, %hi(D_800D1954)
/* 5F908 8005ED08 01194021 */  addu       $t0, $t0, $t9
/* 5F90C 8005ED0C 8D081954 */  lw         $t0, %lo(D_800D1954)($t0)
/* 5F910 8005ED10 8FA30024 */  lw         $v1, 0x24($sp)
/* 5F914 8005ED14 3C048018 */  lui        $a0, %hi(D_801782E2)
/* 5F918 8005ED18 AC68018C */  sw         $t0, 0x18c($v1)
/* 5F91C 8005ED1C 848482E2 */  lh         $a0, %lo(D_801782E2)($a0)
/* 5F920 8005ED20 10000006 */  b          .L8005ED3C
/* 5F924 8005ED24 240B000A */   addiu     $t3, $zero, 0xa
.L8005ED28:
/* 5F928 8005ED28 94690094 */  lhu        $t1, 0x94($v1)
/* 5F92C 8005ED2C A4700084 */  sh         $s0, 0x84($v1)
/* 5F930 8005ED30 312AFDFF */  andi       $t2, $t1, 0xfdff
/* 5F934 8005ED34 A46A0094 */  sh         $t2, 0x94($v1)
/* 5F938 8005ED38 240B000A */  addiu      $t3, $zero, 0xa
.L8005ED3C:
/* 5F93C 8005ED3C 10000004 */  b          .L8005ED50
/* 5F940 8005ED40 A46B00D0 */   sh        $t3, 0xd0($v1)
.L8005ED44:
/* 5F944 8005ED44 00106040 */  sll        $t4, $s0, 1
/* 5F948 8005ED48 258D0372 */  addiu      $t5, $t4, 0x372
/* 5F94C 8005ED4C A46D0084 */  sh         $t5, 0x84($v1)
.L8005ED50:
/* 5F950 8005ED50 3C013F80 */  lui        $at, 0x3f80
/* 5F954 8005ED54 44810000 */  mtc1       $at, $f0
/* 5F958 8005ED58 87A20036 */  lh         $v0, 0x36($sp)
/* 5F95C 8005ED5C 240EFF85 */  addiu      $t6, $zero, -0x7b
/* 5F960 8005ED60 A46E0088 */  sh         $t6, 0x88($v1)
/* 5F964 8005ED64 3C0F8018 */  lui        $t7, %hi(D_801783F6)
/* 5F968 8005ED68 E46000B8 */  swc1       $f0, 0xb8($v1)
/* 5F96C 8005ED6C E46000B4 */  swc1       $f0, 0xb4($v1)
/* 5F970 8005ED70 85EF83F6 */  lh         $t7, %lo(D_801783F6)($t7)
/* 5F974 8005ED74 84790088 */  lh         $t9, 0x88($v1)
/* 5F978 8005ED78 25F80013 */  addiu      $t8, $t7, 0x13
/* 5F97C 8005ED7C A478008C */  sh         $t8, 0x8c($v1)
/* 5F980 8005ED80 846B008C */  lh         $t3, 0x8c($v1)
/* 5F984 8005ED84 04410004 */  bgez       $v0, .L8005ED98
/* 5F988 8005ED88 3048001F */   andi      $t0, $v0, 0x1f
/* 5F98C 8005ED8C 11000002 */  beqz       $t0, .L8005ED98
/* 5F990 8005ED90 00000000 */   nop
/* 5F994 8005ED94 2508FFE0 */  addiu      $t0, $t0, -0x20
.L8005ED98:
/* 5F998 8005ED98 000848C0 */  sll        $t1, $t0, 3
/* 5F99C 8005ED9C 240F0400 */  addiu      $t7, $zero, 0x400
/* 5F9A0 8005EDA0 03295021 */  addu       $t2, $t9, $t1
/* 5F9A4 8005EDA4 A46A0088 */  sh         $t2, 0x88($v1)
/* 5F9A8 8005EDA8 04410003 */  bgez       $v0, .L8005EDB8
/* 5F9AC 8005EDAC 00026143 */   sra       $t4, $v0, 5
/* 5F9B0 8005EDB0 2441001F */  addiu      $at, $v0, 0x1f
/* 5F9B4 8005EDB4 00016143 */  sra        $t4, $at, 5
.L8005EDB8:
/* 5F9B8 8005EDB8 000C6880 */  sll        $t5, $t4, 2
/* 5F9BC 8005EDBC 01AC6821 */  addu       $t5, $t5, $t4
/* 5F9C0 8005EDC0 3C013F00 */  lui        $at, 0x3f00
/* 5F9C4 8005EDC4 44812000 */  mtc1       $at, $f4
/* 5F9C8 8005EDC8 000D6880 */  sll        $t5, $t5, 2
/* 5F9CC 8005EDCC 016D7023 */  subu       $t6, $t3, $t5
/* 5F9D0 8005EDD0 A46E008C */  sh         $t6, 0x8c($v1)
/* 5F9D4 8005EDD4 A46F0090 */  sh         $t7, 0x90($v1)
/* 5F9D8 8005EDD8 AC600188 */  sw         $zero, 0x188($v1)
/* 5F9DC 8005EDDC 3C01800F */  lui        $at, %hi(D_800EBFCC)
/* 5F9E0 8005EDE0 E4640110 */  swc1       $f4, 0x110($v1)
/* 5F9E4 8005EDE4 C426BFCC */  lwc1       $f6, %lo(D_800EBFCC)($at)
/* 5F9E8 8005EDE8 AC640154 */  sw         $a0, 0x154($v1)
/* 5F9EC 8005EDEC AC700158 */  sw         $s0, 0x158($v1)
/* 5F9F0 8005EDF0 3C188018 */  lui        $t8, %hi(D_80178418)
/* 5F9F4 8005EDF4 AC62015C */  sw         $v0, 0x15c($v1)
/* 5F9F8 8005EDF8 E4660114 */  swc1       $f6, 0x114($v1)
/* 5F9FC 8005EDFC 87188418 */  lh         $t8, %lo(D_80178418)($t8)
/* 5FA00 8005EE00 00000000 */  nop
/* 5FA04 8005EE04 44984000 */  mtc1       $t8, $f8
/* 5FA08 8005EE08 00000000 */  nop
/* 5FA0C 8005EE0C 468042A0 */  cvt.s.w    $f10, $f8
/* 5FA10 8005EE10 E46A014C */  swc1       $f10, 0x14c($v1)
.L8005EE14:
/* 5FA14 8005EE14 8FBF001C */  lw         $ra, 0x1c($sp)
/* 5FA18 8005EE18 8FB00018 */  lw         $s0, 0x18($sp)
/* 5FA1C 8005EE1C 03E00008 */  jr         $ra
/* 5FA20 8005EE20 27BD0030 */   addiu     $sp, $sp, 0x30
