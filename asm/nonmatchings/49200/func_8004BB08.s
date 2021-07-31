glabel func_8004BB08
/* 4C708 8004BB08 308EFFFF */  andi       $t6, $a0, 0xffff
/* 4C70C 8004BB0C 000E7880 */  sll        $t7, $t6, 2
/* 4C710 8004BB10 01EE7823 */  subu       $t7, $t7, $t6
/* 4C714 8004BB14 000F7880 */  sll        $t7, $t7, 2
/* 4C718 8004BB18 01EE7821 */  addu       $t7, $t7, $t6
/* 4C71C 8004BB1C 000F7880 */  sll        $t7, $t7, 2
/* 4C720 8004BB20 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4C724 8004BB24 01EE7823 */  subu       $t7, $t7, $t6
/* 4C728 8004BB28 3C18800F */  lui        $t8, %hi(gActors)
/* 4C72C 8004BB2C AFB00018 */  sw         $s0, 0x18($sp)
/* 4C730 8004BB30 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 4C734 8004BB34 000F78C0 */  sll        $t7, $t7, 3
/* 4C738 8004BB38 01F88021 */  addu       $s0, $t7, $t8
/* 4C73C 8004BB3C 9219012E */  lbu        $t9, 0x12e($s0)
/* 4C740 8004BB40 AFBF001C */  sw         $ra, 0x1c($sp)
/* 4C744 8004BB44 AFA40020 */  sw         $a0, 0x20($sp)
/* 4C748 8004BB48 37280041 */  ori        $t0, $t9, 0x41
/* 4C74C 8004BB4C 01C02025 */  or         $a0, $t6, $zero
/* 4C750 8004BB50 A208012E */  sb         $t0, 0x12e($s0)
/* 4C754 8004BB54 0C012518 */  jal        func_80049460
/* 4C758 8004BB58 A7AE0022 */   sh        $t6, 0x22($sp)
/* 4C75C 8004BB5C 10400003 */  beqz       $v0, .L8004BB6C
/* 4C760 8004BB60 24090004 */   addiu     $t1, $zero, 4
/* 4C764 8004BB64 100000E0 */  b          .L8004BEE8
/* 4C768 8004BB68 A2090140 */   sb        $t1, 0x140($s0)
.L8004BB6C:
/* 4C76C 8004BB6C 920A00D0 */  lbu        $t2, 0xd0($s0)
/* 4C770 8004BB70 2401BFBF */  addiu      $at, $zero, -0x4041
/* 4C774 8004BB74 15400035 */  bnez       $t2, .L8004BC4C
/* 4C778 8004BB78 00000000 */   nop
/* 4C77C 8004BB7C 8E0B0080 */  lw         $t3, 0x80($s0)
/* 4C780 8004BB80 240400AE */  addiu      $a0, $zero, 0xae
/* 4C784 8004BB84 01616024 */  and        $t4, $t3, $at
/* 4C788 8004BB88 0C000CD3 */  jal        SFX_Play_1
/* 4C78C 8004BB8C AE0C0080 */   sw        $t4, 0x80($s0)
/* 4C790 8004BB90 0C000CD3 */  jal        SFX_Play_1
/* 4C794 8004BB94 240400B4 */   addiu     $a0, $zero, 0xb4
/* 4C798 8004BB98 97A40022 */  lhu        $a0, 0x22($sp)
/* 4C79C 8004BB9C 0C017026 */  jal        func_8005C098
/* 4C7A0 8004BBA0 24050001 */   addiu     $a1, $zero, 1
/* 4C7A4 8004BBA4 3C02800D */  lui        $v0, %hi(D_800D4000)
/* 4C7A8 8004BBA8 24424000 */  addiu      $v0, $v0, %lo(D_800D4000)
/* 4C7AC 8004BBAC 8E190080 */  lw         $t9, 0x80($s0)
/* 4C7B0 8004BBB0 804F0002 */  lb         $t7, 2($v0)
/* 4C7B4 8004BBB4 8058000B */  lb         $t8, 0xb($v0)
/* 4C7B8 8004BBB8 240D0001 */  addiu      $t5, $zero, 1
/* 4C7BC 8004BBBC 240E0016 */  addiu      $t6, $zero, 0x16
/* 4C7C0 8004BBC0 33280020 */  andi       $t0, $t9, 0x20
/* 4C7C4 8004BBC4 A60000E4 */  sh         $zero, 0xe4($s0)
/* 4C7C8 8004BBC8 A20D00DA */  sb         $t5, 0xda($s0)
/* 4C7CC 8004BBCC A20E00DB */  sb         $t6, 0xdb($s0)
/* 4C7D0 8004BBD0 A60F00A6 */  sh         $t7, 0xa6($s0)
/* 4C7D4 8004BBD4 1500000B */  bnez       $t0, .L8004BC04
/* 4C7D8 8004BBD8 A61800A8 */   sh        $t8, 0xa8($s0)
/* 4C7DC 8004BBDC 80490009 */  lb         $t1, 9($v0)
/* 4C7E0 8004BBE0 A60000A2 */  sh         $zero, 0xa2($s0)
/* 4C7E4 8004BBE4 252A0008 */  addiu      $t2, $t1, 8
/* 4C7E8 8004BBE8 A60A00A4 */  sh         $t2, 0xa4($s0)
/* 4C7EC 8004BBEC 0C012325 */  jal        func_80048C94
/* 4C7F0 8004BBF0 2404000B */   addiu     $a0, $zero, 0xb
/* 4C7F4 8004BBF4 240B0004 */  addiu      $t3, $zero, 4
/* 4C7F8 8004BBF8 AE0200EC */  sw         $v0, 0xec($s0)
/* 4C7FC 8004BBFC 1000000C */  b          .L8004BC30
/* 4C800 8004BC00 A20B0182 */   sb        $t3, 0x182($s0)
.L8004BC04:
/* 4C804 8004BC04 804C0009 */  lb         $t4, 9($v0)
/* 4C808 8004BC08 240DFFF8 */  addiu      $t5, $zero, -8
/* 4C80C 8004BC0C 01AC7023 */  subu       $t6, $t5, $t4
/* 4C810 8004BC10 A60000A4 */  sh         $zero, 0xa4($s0)
/* 4C814 8004BC14 A60E00A2 */  sh         $t6, 0xa2($s0)
/* 4C818 8004BC18 0C012325 */  jal        func_80048C94
/* 4C81C 8004BC1C 2404000B */   addiu     $a0, $zero, 0xb
/* 4C820 8004BC20 00027823 */  negu       $t7, $v0
/* 4C824 8004BC24 2418000C */  addiu      $t8, $zero, 0xc
/* 4C828 8004BC28 AE0F00EC */  sw         $t7, 0xec($s0)
/* 4C82C 8004BC2C A2180182 */  sb         $t8, 0x182($s0)
.L8004BC30:
/* 4C830 8004BC30 2419005B */  addiu      $t9, $zero, 0x5b
/* 4C834 8004BC34 24080002 */  addiu      $t0, $zero, 2
/* 4C838 8004BC38 24090001 */  addiu      $t1, $zero, 1
/* 4C83C 8004BC3C AE190170 */  sw         $t9, 0x170($s0)
/* 4C840 8004BC40 AE08017C */  sw         $t0, 0x17c($s0)
/* 4C844 8004BC44 AE000150 */  sw         $zero, 0x150($s0)
/* 4C848 8004BC48 A20900D0 */  sb         $t1, 0xd0($s0)
.L8004BC4C:
/* 4C84C 8004BC4C 8E0A0098 */  lw         $t2, 0x98($s0)
/* 4C850 8004BC50 00000000 */  nop
/* 4C854 8004BC54 314B0001 */  andi       $t3, $t2, 1
/* 4C858 8004BC58 15600005 */  bnez       $t3, .L8004BC70
/* 4C85C 8004BC5C 00000000 */   nop
/* 4C860 8004BC60 8E0D0150 */  lw         $t5, 0x150($s0)
/* 4C864 8004BC64 00000000 */  nop
/* 4C868 8004BC68 11A0001B */  beqz       $t5, .L8004BCD8
/* 4C86C 8004BC6C 00000000 */   nop
.L8004BC70:
/* 4C870 8004BC70 8E020150 */  lw         $v0, 0x150($s0)
/* 4C874 8004BC74 00000000 */  nop
/* 4C878 8004BC78 1440000C */  bnez       $v0, .L8004BCAC
/* 4C87C 8004BC7C 24590001 */   addiu     $t9, $v0, 1
/* 4C880 8004BC80 960C0172 */  lhu        $t4, 0x172($s0)
/* 4C884 8004BC84 8E0F00EC */  lw         $t7, 0xec($s0)
/* 4C888 8004BC88 8E1800F0 */  lw         $t8, 0xf0($s0)
/* 4C88C 8004BC8C 358E4000 */  ori        $t6, $t4, 0x4000
/* 4C890 8004BC90 8E020150 */  lw         $v0, 0x150($s0)
/* 4C894 8004BC94 A60E0172 */  sh         $t6, 0x172($s0)
/* 4C898 8004BC98 AE0000EC */  sw         $zero, 0xec($s0)
/* 4C89C 8004BC9C AE0000F0 */  sw         $zero, 0xf0($s0)
/* 4C8A0 8004BCA0 AE0F0104 */  sw         $t7, 0x104($s0)
/* 4C8A4 8004BCA4 AE180108 */  sw         $t8, 0x108($s0)
/* 4C8A8 8004BCA8 24590001 */  addiu      $t9, $v0, 1
.L8004BCAC:
/* 4C8AC 8004BCAC 2B210005 */  slti       $at, $t9, 5
/* 4C8B0 8004BCB0 1420008D */  bnez       $at, .L8004BEE8
/* 4C8B4 8004BCB4 AE190150 */   sw        $t9, 0x150($s0)
/* 4C8B8 8004BCB8 96090172 */  lhu        $t1, 0x172($s0)
/* 4C8BC 8004BCBC 8E0B0104 */  lw         $t3, 0x104($s0)
/* 4C8C0 8004BCC0 8E0D0108 */  lw         $t5, 0x108($s0)
/* 4C8C4 8004BCC4 312ABFFF */  andi       $t2, $t1, 0xbfff
/* 4C8C8 8004BCC8 A60A0172 */  sh         $t2, 0x172($s0)
/* 4C8CC 8004BCCC AE000150 */  sw         $zero, 0x150($s0)
/* 4C8D0 8004BCD0 AE0B00EC */  sw         $t3, 0xec($s0)
/* 4C8D4 8004BCD4 AE0D00F0 */  sw         $t5, 0xf0($s0)
.L8004BCD8:
/* 4C8D8 8004BCD8 8E0C0080 */  lw         $t4, 0x80($s0)
/* 4C8DC 8004BCDC 3C010081 */  lui        $at, 0x81
/* 4C8E0 8004BCE0 3C020003 */  lui        $v0, 3
/* 4C8E4 8004BCE4 01817024 */  and        $t6, $t4, $at
/* 4C8E8 8004BCE8 AE0200F8 */  sw         $v0, 0xf8($s0)
/* 4C8EC 8004BCEC 11C0000A */  beqz       $t6, .L8004BD18
/* 4C8F0 8004BCF0 AE0200FC */   sw        $v0, 0xfc($s0)
/* 4C8F4 8004BCF4 8E0400EC */  lw         $a0, 0xec($s0)
/* 4C8F8 8004BCF8 0C0171B4 */  jal        func_8005C6D0
/* 4C8FC 8004BCFC 00000000 */   nop
/* 4C900 8004BD00 3C010001 */  lui        $at, 1
/* 4C904 8004BD04 34210001 */  ori        $at, $at, 1
/* 4C908 8004BD08 0041082A */  slt        $at, $v0, $at
/* 4C90C 8004BD0C 14200002 */  bnez       $at, .L8004BD18
/* 4C910 8004BD10 240F0004 */   addiu     $t7, $zero, 4
/* 4C914 8004BD14 A20F0183 */  sb         $t7, 0x183($s0)
.L8004BD18:
/* 4C918 8004BD18 920200D0 */  lbu        $v0, 0xd0($s0)
/* 4C91C 8004BD1C 24010001 */  addiu      $at, $zero, 1
/* 4C920 8004BD20 14410053 */  bne        $v0, $at, .L8004BE70
/* 4C924 8004BD24 24010002 */   addiu     $at, $zero, 2
/* 4C928 8004BD28 82180170 */  lb         $t8, 0x170($s0)
/* 4C92C 8004BD2C 00000000 */  nop
/* 4C930 8004BD30 1700000C */  bnez       $t8, .L8004BD64
/* 4C934 8004BD34 00000000 */   nop
/* 4C938 8004BD38 82020171 */  lb         $v0, 0x171($s0)
/* 4C93C 8004BD3C 24010002 */  addiu      $at, $zero, 2
/* 4C940 8004BD40 10400004 */  beqz       $v0, .L8004BD54
/* 4C944 8004BD44 00000000 */   nop
/* 4C948 8004BD48 10410002 */  beq        $v0, $at, .L8004BD54
/* 4C94C 8004BD4C 24010004 */   addiu     $at, $zero, 4
/* 4C950 8004BD50 14410004 */  bne        $v0, $at, .L8004BD64
.L8004BD54:
/* 4C954 8004BD54 3C018013 */   lui       $at, %hi(D_801370D2)
/* 4C958 8004BD58 97A40022 */  lhu        $a0, 0x22($sp)
/* 4C95C 8004BD5C 0C017094 */  jal        func_8005C250
/* 4C960 8004BD60 A42070D2 */   sh        $zero, %lo(D_801370D2)($at)
.L8004BD64:
/* 4C964 8004BD64 3C198013 */  lui        $t9, %hi(D_801373D8)
/* 4C968 8004BD68 973973D8 */  lhu        $t9, %lo(D_801373D8)($t9)
/* 4C96C 8004BD6C 00000000 */  nop
/* 4C970 8004BD70 33280080 */  andi       $t0, $t9, 0x80
/* 4C974 8004BD74 11000022 */  beqz       $t0, .L8004BE00
/* 4C978 8004BD78 00000000 */   nop
/* 4C97C 8004BD7C 8E090080 */  lw         $t1, 0x80($s0)
/* 4C980 8004BD80 240D0004 */  addiu      $t5, $zero, 4
/* 4C984 8004BD84 312A0020 */  andi       $t2, $t1, 0x20
/* 4C988 8004BD88 15400005 */  bnez       $t2, .L8004BDA0
/* 4C98C 8004BD8C 3C018013 */   lui       $at, 0x8013
/* 4C990 8004BD90 240B000C */  addiu      $t3, $zero, 0xc
/* 4C994 8004BD94 3C018013 */  lui        $at, %hi(D_801373F0)
/* 4C998 8004BD98 10000002 */  b          .L8004BDA4
/* 4C99C 8004BD9C A02B73F0 */   sb        $t3, %lo(D_801373F0)($at)
.L8004BDA0:
/* 4C9A0 8004BDA0 A02D73F0 */  sb         $t5, 0x73f0($at)
.L8004BDA4:
/* 4C9A4 8004BDA4 97A40022 */  lhu        $a0, 0x22($sp)
/* 4C9A8 8004BDA8 0C012410 */  jal        func_80049040
/* 4C9AC 8004BDAC 00000000 */   nop
/* 4C9B0 8004BDB0 1440000E */  bnez       $v0, .L8004BDEC
/* 4C9B4 8004BDB4 24190011 */   addiu     $t9, $zero, 0x11
/* 4C9B8 8004BDB8 240C004A */  addiu      $t4, $zero, 0x4a
/* 4C9BC 8004BDBC 97A40022 */  lhu        $a0, 0x22($sp)
/* 4C9C0 8004BDC0 AE0C0170 */  sw         $t4, 0x170($s0)
/* 4C9C4 8004BDC4 0C017026 */  jal        func_8005C098
/* 4C9C8 8004BDC8 24050001 */   addiu     $a1, $zero, 1
/* 4C9CC 8004BDCC 3C0E8013 */  lui        $t6, %hi(D_801373F0)
/* 4C9D0 8004BDD0 81CE73F0 */  lb         $t6, %lo(D_801373F0)($t6)
/* 4C9D4 8004BDD4 240F0001 */  addiu      $t7, $zero, 1
/* 4C9D8 8004BDD8 24180009 */  addiu      $t8, $zero, 9
/* 4C9DC 8004BDDC A20F00D0 */  sb         $t7, 0xd0($s0)
/* 4C9E0 8004BDE0 A21800D1 */  sb         $t8, 0xd1($s0)
/* 4C9E4 8004BDE4 10000002 */  b          .L8004BDF0
/* 4C9E8 8004BDE8 A20E0182 */   sb        $t6, 0x182($s0)
.L8004BDEC:
/* 4C9EC 8004BDEC A61900D0 */  sh         $t9, 0xd0($s0)
.L8004BDF0:
/* 4C9F0 8004BDF0 AE00017C */  sw         $zero, 0x17c($s0)
/* 4C9F4 8004BDF4 24080003 */  addiu      $t0, $zero, 3
/* 4C9F8 8004BDF8 1000003B */  b          .L8004BEE8
/* 4C9FC 8004BDFC A208017D */   sb        $t0, 0x17d($s0)
.L8004BE00:
/* 4CA00 8004BE00 0C012325 */  jal        func_80048C94
/* 4CA04 8004BE04 00002025 */   or        $a0, $zero, $zero
/* 4CA08 8004BE08 8E0400EC */  lw         $a0, 0xec($s0)
/* 4CA0C 8004BE0C 00002825 */  or         $a1, $zero, $zero
/* 4CA10 8004BE10 04410003 */  bgez       $v0, .L8004BE20
/* 4CA14 8004BE14 000230C3 */   sra       $a2, $v0, 3
/* 4CA18 8004BE18 24410007 */  addiu      $at, $v0, 7
/* 4CA1C 8004BE1C 000130C3 */  sra        $a2, $at, 3
.L8004BE20:
/* 4CA20 8004BE20 0C00A607 */  jal        func_8002981C
/* 4CA24 8004BE24 00000000 */   nop
/* 4CA28 8004BE28 97A40022 */  lhu        $a0, 0x22($sp)
/* 4CA2C 8004BE2C 0C017506 */  jal        func_8005D418
/* 4CA30 8004BE30 AE0200EC */   sw        $v0, 0xec($s0)
/* 4CA34 8004BE34 10400008 */  beqz       $v0, .L8004BE58
/* 4CA38 8004BE38 2409005C */   addiu     $t1, $zero, 0x5c
/* 4CA3C 8004BE3C AE00017C */  sw         $zero, 0x17c($s0)
/* 4CA40 8004BE40 240A0003 */  addiu      $t2, $zero, 3
/* 4CA44 8004BE44 240B0002 */  addiu      $t3, $zero, 2
/* 4CA48 8004BE48 AE090170 */  sw         $t1, 0x170($s0)
/* 4CA4C 8004BE4C A20A017D */  sb         $t2, 0x17d($s0)
/* 4CA50 8004BE50 10000025 */  b          .L8004BEE8
/* 4CA54 8004BE54 A20B00D0 */   sb        $t3, 0xd0($s0)
.L8004BE58:
/* 4CA58 8004BE58 8E0D0080 */  lw         $t5, 0x80($s0)
/* 4CA5C 8004BE5C 00000000 */  nop
/* 4CA60 8004BE60 35AC0080 */  ori        $t4, $t5, 0x80
/* 4CA64 8004BE64 10000020 */  b          .L8004BEE8
/* 4CA68 8004BE68 AE0C0080 */   sw        $t4, 0x80($s0)
/* 4CA6C 8004BE6C 24010002 */  addiu      $at, $zero, 2
.L8004BE70:
/* 4CA70 8004BE70 1441001E */  bne        $v0, $at, .L8004BEEC
/* 4CA74 8004BE74 8FBF001C */   lw        $ra, 0x1c($sp)
/* 4CA78 8004BE78 0C012325 */  jal        func_80048C94
/* 4CA7C 8004BE7C 00002025 */   or        $a0, $zero, $zero
/* 4CA80 8004BE80 8E0400EC */  lw         $a0, 0xec($s0)
/* 4CA84 8004BE84 00002825 */  or         $a1, $zero, $zero
/* 4CA88 8004BE88 0C00A607 */  jal        func_8002981C
/* 4CA8C 8004BE8C 00403025 */   or        $a2, $v0, $zero
/* 4CA90 8004BE90 97A40022 */  lhu        $a0, 0x22($sp)
/* 4CA94 8004BE94 0C017506 */  jal        func_8005D418
/* 4CA98 8004BE98 AE0200EC */   sw        $v0, 0xec($s0)
/* 4CA9C 8004BE9C 10400008 */  beqz       $v0, .L8004BEC0
/* 4CAA0 8004BEA0 240E0003 */   addiu     $t6, $zero, 3
/* 4CAA4 8004BEA4 8E0F0080 */  lw         $t7, 0x80($s0)
/* 4CAA8 8004BEA8 AE00017C */  sw         $zero, 0x17c($s0)
/* 4CAAC 8004BEAC 24190003 */  addiu      $t9, $zero, 3
/* 4CAB0 8004BEB0 35F84000 */  ori        $t8, $t7, 0x4000
/* 4CAB4 8004BEB4 A20E017D */  sb         $t6, 0x17d($s0)
/* 4CAB8 8004BEB8 AE180080 */  sw         $t8, 0x80($s0)
/* 4CABC 8004BEBC A61900D0 */  sh         $t9, 0xd0($s0)
.L8004BEC0:
/* 4CAC0 8004BEC0 97A40022 */  lhu        $a0, 0x22($sp)
/* 4CAC4 8004BEC4 0C012410 */  jal        func_80049040
/* 4CAC8 8004BEC8 00000000 */   nop
/* 4CACC 8004BECC 10400007 */  beqz       $v0, .L8004BEEC
/* 4CAD0 8004BED0 8FBF001C */   lw        $ra, 0x1c($sp)
/* 4CAD4 8004BED4 97A40022 */  lhu        $a0, 0x22($sp)
/* 4CAD8 8004BED8 0C0174DC */  jal        func_8005D370
/* 4CADC 8004BEDC 24050027 */   addiu     $a1, $zero, 0x27
/* 4CAE0 8004BEE0 24080016 */  addiu      $t0, $zero, 0x16
/* 4CAE4 8004BEE4 A60800D0 */  sh         $t0, 0xd0($s0)
.L8004BEE8:
/* 4CAE8 8004BEE8 8FBF001C */  lw         $ra, 0x1c($sp)
.L8004BEEC:
/* 4CAEC 8004BEEC 8FB00018 */  lw         $s0, 0x18($sp)
/* 4CAF0 8004BEF0 03E00008 */  jr         $ra
/* 4CAF4 8004BEF4 27BD0020 */   addiu     $sp, $sp, 0x20
