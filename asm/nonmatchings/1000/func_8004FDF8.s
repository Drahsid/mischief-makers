glabel func_8004FDF8
/* 509F8 8004FDF8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 509FC 8004FDFC AFA40028 */  sw         $a0, 0x28($sp)
/* 50A00 8004FE00 AFBF001C */  sw         $ra, 0x1c($sp)
/* 50A04 8004FE04 97A4002A */  lhu        $a0, 0x2a($sp)
/* 50A08 8004FE08 0C013DF6 */  jal        func_8004F7D8
/* 50A0C 8004FE0C AFB00018 */   sw        $s0, 0x18($sp)
/* 50A10 8004FE10 97AE002A */  lhu        $t6, 0x2a($sp)
/* 50A14 8004FE14 3C18800F */  lui        $t8, 0x800f
/* 50A18 8004FE18 000E7880 */  sll        $t7, $t6, 2
/* 50A1C 8004FE1C 01EE7823 */  subu       $t7, $t7, $t6
/* 50A20 8004FE20 000F7880 */  sll        $t7, $t7, 2
/* 50A24 8004FE24 01EE7821 */  addu       $t7, $t7, $t6
/* 50A28 8004FE28 000F7880 */  sll        $t7, $t7, 2
/* 50A2C 8004FE2C 01EE7823 */  subu       $t7, $t7, $t6
/* 50A30 8004FE30 000F78C0 */  sll        $t7, $t7, 3
/* 50A34 8004FE34 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 50A38 8004FE38 3C088013 */  lui        $t0, %hi(D_80137458)
/* 50A3C 8004FE3C 8D087458 */  lw         $t0, %lo(D_80137458)($t0)
/* 50A40 8004FE40 01F88021 */  addu       $s0, $t7, $t8
/* 50A44 8004FE44 961900D6 */  lhu        $t9, 0xd6($s0)
/* 50A48 8004FE48 00084BC0 */  sll        $t1, $t0, 0xf
/* 50A4C 8004FE4C 0520000B */  bltz       $t1, .L8004FE7C
/* 50A50 8004FE50 A7B90026 */   sh        $t9, 0x26($sp)
/* 50A54 8004FE54 0C012410 */  jal        func_80049040
/* 50A58 8004FE58 01C02025 */   or        $a0, $t6, $zero
/* 50A5C 8004FE5C 10400007 */  beqz       $v0, .L8004FE7C
/* 50A60 8004FE60 00000000 */   nop
/* 50A64 8004FE64 97A4002A */  lhu        $a0, 0x2a($sp)
/* 50A68 8004FE68 0C0174DC */  jal        func_8005D370
/* 50A6C 8004FE6C 24050028 */   addiu     $a1, $zero, 0x28
/* 50A70 8004FE70 240A001A */  addiu      $t2, $zero, 0x1a
/* 50A74 8004FE74 1000008A */  b          .L800500A0
/* 50A78 8004FE78 A60A00D0 */   sh        $t2, 0xd0($s0)
.L8004FE7C:
/* 50A7C 8004FE7C 0C012325 */  jal        func_80048C94
/* 50A80 8004FE80 00002025 */   or        $a0, $zero, $zero
/* 50A84 8004FE84 8E0400EC */  lw         $a0, 0xec($s0)
/* 50A88 8004FE88 00002825 */  or         $a1, $zero, $zero
/* 50A8C 8004FE8C 0C00A607 */  jal        func_8002981C
/* 50A90 8004FE90 00403025 */   or        $a2, $v0, $zero
/* 50A94 8004FE94 920B00D0 */  lbu        $t3, 0xd0($s0)
/* 50A98 8004FE98 AE0200EC */  sw         $v0, 0xec($s0)
/* 50A9C 8004FE9C 1560000A */  bnez       $t3, .L8004FEC8
/* 50AA0 8004FEA0 240C0065 */   addiu     $t4, $zero, 0x65
/* 50AA4 8004FEA4 AE000150 */  sw         $zero, 0x150($s0)
/* 50AA8 8004FEA8 AE000154 */  sw         $zero, 0x154($s0)
/* 50AAC 8004FEAC AE0C0170 */  sw         $t4, 0x170($s0)
/* 50AB0 8004FEB0 0C000CD3 */  jal        func_8000334C
/* 50AB4 8004FEB4 240400B3 */   addiu     $a0, $zero, 0xb3
/* 50AB8 8004FEB8 920D00D0 */  lbu        $t5, 0xd0($s0)
/* 50ABC 8004FEBC 00000000 */  nop
/* 50AC0 8004FEC0 25AF0001 */  addiu      $t7, $t5, 1
/* 50AC4 8004FEC4 A20F00D0 */  sb         $t7, 0xd0($s0)
.L8004FEC8:
/* 50AC8 8004FEC8 82180170 */  lb         $t8, 0x170($s0)
/* 50ACC 8004FECC 00000000 */  nop
/* 50AD0 8004FED0 17000007 */  bnez       $t8, .L8004FEF0
/* 50AD4 8004FED4 00000000 */   nop
/* 50AD8 8004FED8 82190171 */  lb         $t9, 0x171($s0)
/* 50ADC 8004FEDC 24010007 */  addiu      $at, $zero, 7
/* 50AE0 8004FEE0 17210003 */  bne        $t9, $at, .L8004FEF0
/* 50AE4 8004FEE4 00000000 */   nop
/* 50AE8 8004FEE8 0C000CD3 */  jal        func_8000334C
/* 50AEC 8004FEEC 240400C2 */   addiu     $a0, $zero, 0xc2
.L8004FEF0:
/* 50AF0 8004FEF0 3C038013 */  lui        $v1, %hi(D_801373E0)
/* 50AF4 8004FEF4 246373E0 */  addiu      $v1, $v1, %lo(D_801373E0)
/* 50AF8 8004FEF8 80680012 */  lb         $t0, 0x12($v1)
/* 50AFC 8004FEFC 00000000 */  nop
/* 50B00 8004FF00 1500001F */  bnez       $t0, .L8004FF80
/* 50B04 8004FF04 00000000 */   nop
/* 50B08 8004FF08 80620010 */  lb         $v0, 0x10($v1)
/* 50B0C 8004FF0C 00000000 */  nop
/* 50B10 8004FF10 28410005 */  slti       $at, $v0, 5
/* 50B14 8004FF14 1420001A */  bnez       $at, .L8004FF80
/* 50B18 8004FF18 00000000 */   nop
/* 50B1C 8004FF1C 2841000C */  slti       $at, $v0, 0xc
/* 50B20 8004FF20 10200017 */  beqz       $at, .L8004FF80
/* 50B24 8004FF24 00000000 */   nop
/* 50B28 8004FF28 8E090154 */  lw         $t1, 0x154($s0)
/* 50B2C 8004FF2C 97AE0026 */  lhu        $t6, 0x26($sp)
/* 50B30 8004FF30 29210008 */  slti       $at, $t1, 8
/* 50B34 8004FF34 10200012 */  beqz       $at, .L8004FF80
/* 50B38 8004FF38 000E5080 */   sll       $t2, $t6, 2
/* 50B3C 8004FF3C 014E5023 */  subu       $t2, $t2, $t6
/* 50B40 8004FF40 000A5080 */  sll        $t2, $t2, 2
/* 50B44 8004FF44 014E5021 */  addu       $t2, $t2, $t6
/* 50B48 8004FF48 000A5080 */  sll        $t2, $t2, 2
/* 50B4C 8004FF4C 014E5023 */  subu       $t2, $t2, $t6
/* 50B50 8004FF50 3C0B800F */  lui        $t3, %hi(gActors)
/* 50B54 8004FF54 256BF510 */  addiu      $t3, $t3, %lo(gActors)
/* 50B58 8004FF58 000A50C0 */  sll        $t2, $t2, 3
/* 50B5C 8004FF5C 014B1021 */  addu       $v0, $t2, $t3
/* 50B60 8004FF60 8C4C0098 */  lw         $t4, 0x98($v0)
/* 50B64 8004FF64 3C010002 */  lui        $at, 2
/* 50B68 8004FF68 01816825 */  or         $t5, $t4, $at
/* 50B6C 8004FF6C AC4D0098 */  sw         $t5, 0x98($v0)
/* 50B70 8004FF70 8E0F0154 */  lw         $t7, 0x154($s0)
/* 50B74 8004FF74 00000000 */  nop
/* 50B78 8004FF78 25F80001 */  addiu      $t8, $t7, 1
/* 50B7C 8004FF7C AE180154 */  sw         $t8, 0x154($s0)
.L8004FF80:
/* 50B80 8004FF80 8E190150 */  lw         $t9, 0x150($s0)
/* 50B84 8004FF84 8E080154 */  lw         $t0, 0x154($s0)
/* 50B88 8004FF88 3C0A800C */  lui        $t2, %hi(D_800BE4E0)
/* 50B8C 8004FF8C 03284821 */  addu       $t1, $t9, $t0
/* 50B90 8004FF90 AE090150 */  sw         $t1, 0x150($s0)
/* 50B94 8004FF94 954AE4E0 */  lhu        $t2, %lo(D_800BE4E0)($t2)
/* 50B98 8004FF98 240D03E8 */  addiu      $t5, $zero, 0x3e8
/* 50B9C 8004FF9C 314B0001 */  andi       $t3, $t2, 1
/* 50BA0 8004FFA0 256C0004 */  addiu      $t4, $t3, 4
/* 50BA4 8004FFA4 01AC001A */  div        $zero, $t5, $t4
/* 50BA8 8004FFA8 846E000E */  lh         $t6, 0xe($v1)
/* 50BAC 8004FFAC 15800002 */  bnez       $t4, .L8004FFB8
/* 50BB0 8004FFB0 00000000 */   nop
/* 50BB4 8004FFB4 0007000D */  break      7
.L8004FFB8:
/* 50BB8 8004FFB8 2401FFFF */   addiu     $at, $zero, -1
/* 50BBC 8004FFBC 15810004 */  bne        $t4, $at, .L8004FFD0
/* 50BC0 8004FFC0 3C018000 */   lui       $at, 0x8000
/* 50BC4 8004FFC4 15A10002 */  bne        $t5, $at, .L8004FFD0
/* 50BC8 8004FFC8 00000000 */   nop
/* 50BCC 8004FFCC 0006000D */  break      6
.L8004FFD0:
/* 50BD0 8004FFD0 8E090150 */   lw        $t1, 0x150($s0)
/* 50BD4 8004FFD4 82190170 */  lb         $t9, 0x170($s0)
/* 50BD8 8004FFD8 97A4002A */  lhu        $a0, 0x2a($sp)
/* 50BDC 8004FFDC 00007812 */  mflo       $t7
/* 50BE0 8004FFE0 00000000 */  nop
/* 50BE4 8004FFE4 00000000 */  nop
/* 50BE8 8004FFE8 01CF001A */  div        $zero, $t6, $t7
/* 50BEC 8004FFEC 15E00002 */  bnez       $t7, .L8004FFF8
/* 50BF0 8004FFF0 00000000 */   nop
/* 50BF4 8004FFF4 0007000D */  break      7
.L8004FFF8:
/* 50BF8 8004FFF8 2401FFFF */   addiu     $at, $zero, -1
/* 50BFC 8004FFFC 15E10004 */  bne        $t7, $at, .L80050010
/* 50C00 80050000 3C018000 */   lui       $at, 0x8000
/* 50C04 80050004 15C10002 */  bne        $t6, $at, .L80050010
/* 50C08 80050008 00000000 */   nop
/* 50C0C 8005000C 0006000D */  break      6
.L80050010:
/* 50C10 80050010 0000C012 */   mflo      $t8
/* 50C14 80050014 03384021 */  addu       $t0, $t9, $t8
/* 50C18 80050018 A2080170 */  sb         $t0, 0x170($s0)
/* 50C1C 8005001C 05210004 */  bgez       $t1, .L80050030
/* 50C20 80050020 312A0003 */   andi      $t2, $t1, 3
/* 50C24 80050024 11400002 */  beqz       $t2, .L80050030
/* 50C28 80050028 00000000 */   nop
/* 50C2C 8005002C 254AFFFC */  addiu      $t2, $t2, -4
.L80050030:
/* 50C30 80050030 0C017506 */  jal        func_8005D418
/* 50C34 80050034 AE0A0150 */   sw        $t2, 0x150($s0)
/* 50C38 80050038 1040001A */  beqz       $v0, .L800500A4
/* 50C3C 8005003C 8FBF001C */   lw        $ra, 0x1c($sp)
/* 50C40 80050040 8E020154 */  lw         $v0, 0x154($s0)
/* 50C44 80050044 00000000 */  nop
/* 50C48 80050048 10400002 */  beqz       $v0, .L80050054
/* 50C4C 8005004C 244BFFFF */   addiu     $t3, $v0, -1
/* 50C50 80050050 AE0B0154 */  sw         $t3, 0x154($s0)
.L80050054:
/* 50C54 80050054 97A4002A */  lhu        $a0, 0x2a($sp)
/* 50C58 80050058 0C0174F6 */  jal        func_8005D3D8
/* 50C5C 8005005C 00000000 */   nop
/* 50C60 80050060 3C028013 */  lui        $v0, %hi(D_801373F0)
/* 50C64 80050064 804273F0 */  lb         $v0, %lo(D_801373F0)($v0)
/* 50C68 80050068 240C007F */  addiu      $t4, $zero, 0x7f
/* 50C6C 8005006C 28410005 */  slti       $at, $v0, 5
/* 50C70 80050070 14200009 */  bnez       $at, .L80050098
/* 50C74 80050074 240E0004 */   addiu     $t6, $zero, 4
/* 50C78 80050078 2841000C */  slti       $at, $v0, 0xc
/* 50C7C 8005007C 10200006 */  beqz       $at, .L80050098
/* 50C80 80050080 3C0D8013 */   lui       $t5, %hi(D_801373F2)
/* 50C84 80050084 81AD73F2 */  lb         $t5, %lo(D_801373F2)($t5)
/* 50C88 80050088 00000000 */  nop
/* 50C8C 8005008C 29A1000E */  slti       $at, $t5, 0xe
/* 50C90 80050090 14200004 */  bnez       $at, .L800500A4
/* 50C94 80050094 8FBF001C */   lw        $ra, 0x1c($sp)
.L80050098:
/* 50C98 80050098 A20C0171 */  sb         $t4, 0x171($s0)
/* 50C9C 8005009C A60E00D0 */  sh         $t6, 0xd0($s0)
.L800500A0:
/* 50CA0 800500A0 8FBF001C */  lw         $ra, 0x1c($sp)
.L800500A4:
/* 50CA4 800500A4 8FB00018 */  lw         $s0, 0x18($sp)
/* 50CA8 800500A8 03E00008 */  jr         $ra
/* 50CAC 800500AC 27BD0028 */   addiu     $sp, $sp, 0x28
