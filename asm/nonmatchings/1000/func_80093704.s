glabel func_80093704
/* 94304 80093704 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 94308 80093708 AFBF0024 */  sw         $ra, 0x24($sp)
/* 9430C 8009370C AFB10020 */  sw         $s1, 0x20($sp)
/* 94310 80093710 AFB0001C */  sw         $s0, 0x1c($sp)
/* 94314 80093714 0C00A14A */  jal        func_80028528
/* 94318 80093718 AFA40038 */   sw        $a0, 0x38($sp)
/* 9431C 8009371C 1040009F */  beqz       $v0, .L8009399C
/* 94320 80093720 3051FFFF */   andi      $s1, $v0, 0xffff
/* 94324 80093724 00117080 */  sll        $t6, $s1, 2
/* 94328 80093728 01D17023 */  subu       $t6, $t6, $s1
/* 9432C 8009372C 000E7080 */  sll        $t6, $t6, 2
/* 94330 80093730 01D17021 */  addu       $t6, $t6, $s1
/* 94334 80093734 000E7080 */  sll        $t6, $t6, 2
/* 94338 80093738 01D17023 */  subu       $t6, $t6, $s1
/* 9433C 8009373C 3C0F800F */  lui        $t7, %hi(gActors)
/* 94340 80093740 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 94344 80093744 000E70C0 */  sll        $t6, $t6, 3
/* 94348 80093748 01CF8021 */  addu       $s0, $t6, $t7
/* 9434C 8009374C 24180034 */  addiu      $t8, $zero, 0x34
/* 94350 80093750 A61800D2 */  sh         $t8, 0xd2($s0)
/* 94354 80093754 0C0078B4 */  jal        func_8001E2D0
/* 94358 80093758 3224FFFF */   andi      $a0, $s1, 0xffff
/* 9435C 8009375C 97A4003A */  lhu        $a0, 0x3a($sp)
/* 94360 80093760 3C09800F */  lui        $t1, 0x800f
/* 94364 80093764 00044080 */  sll        $t0, $a0, 2
/* 94368 80093768 01044023 */  subu       $t0, $t0, $a0
/* 9436C 8009376C 00084080 */  sll        $t0, $t0, 2
/* 94370 80093770 01044021 */  addu       $t0, $t0, $a0
/* 94374 80093774 00084080 */  sll        $t0, $t0, 2
/* 94378 80093778 01044023 */  subu       $t0, $t0, $a0
/* 9437C 8009377C 000840C0 */  sll        $t0, $t0, 3
/* 94380 80093780 2529F510 */  addiu      $t1, $t1, -0xaf0
/* 94384 80093784 2419000B */  addiu      $t9, $zero, 0xb
/* 94388 80093788 01095021 */  addu       $t2, $t0, $t1
/* 9438C 8009378C AE190080 */  sw         $t9, 0x80($s0)
/* 94390 80093790 A6000088 */  sh         $zero, 0x88($s0)
/* 94394 80093794 A600008C */  sh         $zero, 0x8c($s0)
/* 94398 80093798 AFAA0028 */  sw         $t2, 0x28($sp)
/* 9439C 8009379C 954B00D0 */  lhu        $t3, 0xd0($t2)
/* 943A0 800937A0 24180319 */  addiu      $t8, $zero, 0x319
/* 943A4 800937A4 296100F6 */  slti       $at, $t3, 0xf6
/* 943A8 800937A8 1420000F */  bnez       $at, .L800937E8
/* 943AC 800937AC 241900C8 */   addiu     $t9, $zero, 0xc8
/* 943B0 800937B0 3C014150 */  lui        $at, 0x4150
/* 943B4 800937B4 44810000 */  mtc1       $at, $f0
/* 943B8 800937B8 3C0E800E */  lui        $t6, %hi(D_800D9284)
/* 943BC 800937BC 240C0311 */  addiu      $t4, $zero, 0x311
/* 943C0 800937C0 240D00DA */  addiu      $t5, $zero, 0xda
/* 943C4 800937C4 25CE9284 */  addiu      $t6, $t6, %lo(D_800D9284)
/* 943C8 800937C8 240FFFE0 */  addiu      $t7, $zero, -0x20
/* 943CC 800937CC A60C0094 */  sh         $t4, 0x94($s0)
/* 943D0 800937D0 A60D0084 */  sh         $t5, 0x84($s0)
/* 943D4 800937D4 AE0E018C */  sw         $t6, 0x18c($s0)
/* 943D8 800937D8 A60F0090 */  sh         $t7, 0x90($s0)
/* 943DC 800937DC E60000B4 */  swc1       $f0, 0xb4($s0)
/* 943E0 800937E0 10000047 */  b          .L80093900
/* 943E4 800937E4 E60000B8 */   swc1      $f0, 0xb8($s0)
.L800937E8:
/* 943E8 800937E8 3C0142B4 */  lui        $at, 0x42b4
/* 943EC 800937EC 44812000 */  mtc1       $at, $f4
/* 943F0 800937F0 3C014130 */  lui        $at, 0x4130
/* 943F4 800937F4 44813000 */  mtc1       $at, $f6
/* 943F8 800937F8 3C014140 */  lui        $at, 0x4140
/* 943FC 800937FC 44814000 */  mtc1       $at, $f8
/* 94400 80093800 3C08800E */  lui        $t0, %hi(D_800D99A4)
/* 94404 80093804 250899A4 */  addiu      $t0, $t0, %lo(D_800D99A4)
/* 94408 80093808 A6180094 */  sh         $t8, 0x94($s0)
/* 9440C 8009380C A6190084 */  sh         $t9, 0x84($s0)
/* 94410 80093810 AE08018C */  sw         $t0, 0x18c($s0)
/* 94414 80093814 3C09800C */  lui        $t1, %hi(D_800BE4E0)
/* 94418 80093818 E60400C4 */  swc1       $f4, 0xc4($s0)
/* 9441C 8009381C E60600B4 */  swc1       $f6, 0xb4($s0)
/* 94420 80093820 E60800B8 */  swc1       $f8, 0xb8($s0)
/* 94424 80093824 9529E4E0 */  lhu        $t1, %lo(D_800BE4E0)($t1)
/* 94428 80093828 2401000C */  addiu      $at, $zero, 0xc
/* 9442C 8009382C 0121001A */  div        $zero, $t1, $at
/* 94430 80093830 00005010 */  mfhi       $t2
/* 94434 80093834 15400031 */  bnez       $t2, .L800938FC
/* 94438 80093838 240B0100 */   addiu     $t3, $zero, 0x100
/* 9443C 8009383C 0C0005E3 */  jal        func_8000178C
/* 94440 80093840 00000000 */   nop
/* 94444 80093844 0C0005E3 */  jal        func_8000178C
/* 94448 80093848 A7A20032 */   sh        $v0, 0x32($sp)
/* 9444C 8009384C 97AB0032 */  lhu        $t3, 0x32($sp)
/* 94450 80093850 240C0080 */  addiu      $t4, $zero, 0x80
/* 94454 80093854 018B6823 */  subu       $t5, $t4, $t3
/* 94458 80093858 448D5000 */  mtc1       $t5, $f10
/* 9445C 8009385C 3C013FE8 */  lui        $at, 0x3fe8
/* 94460 80093860 46805420 */  cvt.s.w    $f16, $f10
/* 94464 80093864 44810800 */  mtc1       $at, $f1
/* 94468 80093868 44800000 */  mtc1       $zero, $f0
/* 9446C 8009386C 460084A1 */  cvt.d.s    $f18, $f16
/* 94470 80093870 46209102 */  mul.d      $f4, $f18, $f0
/* 94474 80093874 24190080 */  addiu      $t9, $zero, 0x80
/* 94478 80093878 03224023 */  subu       $t0, $t9, $v0
/* 9447C 8009387C 44884000 */  mtc1       $t0, $f8
/* 94480 80093880 97A4003A */  lhu        $a0, 0x3a($sp)
/* 94484 80093884 444EF800 */  cfc1       $t6, $31
/* 94488 80093888 3C063ECC */  lui        $a2, 0x3ecc
/* 9448C 8009388C 35C10003 */  ori        $at, $t6, 3
/* 94490 80093890 38210002 */  xori       $at, $at, 2
/* 94494 80093894 44C1F800 */  ctc1       $at, $31
/* 94498 80093898 34C6CCCD */  ori        $a2, $a2, 0xcccd
/* 9449C 8009389C 462021A4 */  cvt.w.d    $f6, $f4
/* 944A0 800938A0 AFAC0014 */  sw         $t4, 0x14($sp)
/* 944A4 800938A4 44CEF800 */  ctc1       $t6, $31
/* 944A8 800938A8 44073000 */  mfc1       $a3, $f6
/* 944AC 800938AC 468042A0 */  cvt.s.w    $f10, $f8
/* 944B0 800938B0 00077C00 */  sll        $t7, $a3, 0x10
/* 944B4 800938B4 000F3C03 */  sra        $a3, $t7, 0x10
/* 944B8 800938B8 46005421 */  cvt.d.s    $f16, $f10
/* 944BC 800938BC 46208482 */  mul.d      $f18, $f16, $f0
/* 944C0 800938C0 00002825 */  or         $a1, $zero, $zero
/* 944C4 800938C4 4449F800 */  cfc1       $t1, $31
/* 944C8 800938C8 00000000 */  nop
/* 944CC 800938CC 35210003 */  ori        $at, $t1, 3
/* 944D0 800938D0 38210002 */  xori       $at, $at, 2
/* 944D4 800938D4 44C1F800 */  ctc1       $at, $31
/* 944D8 800938D8 00000000 */  nop
/* 944DC 800938DC 46209124 */  cvt.w.d    $f4, $f18
/* 944E0 800938E0 440A2000 */  mfc1       $t2, $f4
/* 944E4 800938E4 44C9F800 */  ctc1       $t1, $31
/* 944E8 800938E8 0C00FEC8 */  jal        func_8003FB20
/* 944EC 800938EC AFAA0010 */   sw        $t2, 0x10($sp)
/* 944F0 800938F0 97A4003A */  lhu        $a0, 0x3a($sp)
/* 944F4 800938F4 00000000 */  nop
/* 944F8 800938F8 240B0100 */  addiu      $t3, $zero, 0x100
.L800938FC:
/* 944FC 800938FC A60B0090 */  sh         $t3, 0x90($s0)
.L80093900:
/* 94500 80093900 00046880 */  sll        $t5, $a0, 2
/* 94504 80093904 01A46823 */  subu       $t5, $t5, $a0
/* 94508 80093908 000D6880 */  sll        $t5, $t5, 2
/* 9450C 8009390C 01A46821 */  addu       $t5, $t5, $a0
/* 94510 80093910 000D6880 */  sll        $t5, $t5, 2
/* 94514 80093914 01A46823 */  subu       $t5, $t5, $a0
/* 94518 80093918 3C0E800F */  lui        $t6, %hi(gActors)
/* 9451C 8009391C 25CEF510 */  addiu      $t6, $t6, %lo(gActors)
/* 94520 80093920 000D68C0 */  sll        $t5, $t5, 3
/* 94524 80093924 01AE1021 */  addu       $v0, $t5, $t6
/* 94528 80093928 8C4F0E40 */  lw         $t7, 0xe40($v0)
/* 9452C 8009392C 3C0A8018 */  lui        $t2, 0x8018
/* 94530 80093930 05E10003 */  bgez       $t7, .L80093940
/* 94534 80093934 000FC143 */   sra       $t8, $t7, 5
/* 94538 80093938 25E1001F */  addiu      $at, $t7, 0x1f
/* 9453C 8009393C 0001C143 */  sra        $t8, $at, 5
.L80093940:
/* 94540 80093940 A218009C */  sb         $t8, 0x9c($s0)
/* 94544 80093944 8C590E40 */  lw         $t9, 0xe40($v0)
/* 94548 80093948 8FAC0028 */  lw         $t4, 0x28($sp)
/* 9454C 8009394C 07210003 */  bgez       $t9, .L8009395C
/* 94550 80093950 00194103 */   sra       $t0, $t9, 4
/* 94554 80093954 2721000F */  addiu      $at, $t9, 0xf
/* 94558 80093958 00014103 */  sra        $t0, $at, 4
.L8009395C:
/* 9455C 8009395C A208009D */  sb         $t0, 0x9d($s0)
/* 94560 80093960 A208009E */  sb         $t0, 0x9e($s0)
/* 94564 80093964 954A26B2 */  lhu        $t2, 0x26b2($t2)
/* 94568 80093968 3C0142F0 */  lui        $at, 0x42f0
/* 9456C 8009396C A20A009F */  sb         $t2, 0x9f($s0)
/* 94570 80093970 8D8B0080 */  lw         $t3, 0x80($t4)
/* 94574 80093974 00000000 */  nop
/* 94578 80093978 11600005 */  beqz       $t3, .L80093990
/* 9457C 8009397C 00000000 */   nop
/* 94580 80093980 0C00C756 */  jal        func_80031D58
/* 94584 80093984 3225FFFF */   andi      $a1, $s1, 0xffff
/* 94588 80093988 10000005 */  b          .L800939A0
/* 9458C 8009398C 97A4003A */   lhu       $a0, 0x3a($sp)
.L80093990:
/* 94590 80093990 44813000 */  mtc1       $at, $f6
/* 94594 80093994 00000000 */  nop
/* 94598 80093998 E6060148 */  swc1       $f6, 0x148($s0)
.L8009399C:
/* 9459C 8009399C 97A4003A */  lhu        $a0, 0x3a($sp)
.L800939A0:
/* 945A0 800939A0 3C0E800F */  lui        $t6, 0x800f
/* 945A4 800939A4 00046880 */  sll        $t5, $a0, 2
/* 945A8 800939A8 01A46823 */  subu       $t5, $t5, $a0
/* 945AC 800939AC 000D6880 */  sll        $t5, $t5, 2
/* 945B0 800939B0 01A46821 */  addu       $t5, $t5, $a0
/* 945B4 800939B4 000D6880 */  sll        $t5, $t5, 2
/* 945B8 800939B8 01A46823 */  subu       $t5, $t5, $a0
/* 945BC 800939BC 000D68C0 */  sll        $t5, $t5, 3
/* 945C0 800939C0 01CD7021 */  addu       $t6, $t6, $t5
/* 945C4 800939C4 95CEF5E0 */  lhu        $t6, -0xa20($t6)
/* 945C8 800939C8 3C0F800C */  lui        $t7, %hi(D_800BE4E0)
/* 945CC 800939CC 29C100F5 */  slti       $at, $t6, 0xf5
/* 945D0 800939D0 1020008B */  beqz       $at, .L80093C00
/* 945D4 800939D4 8FBF0024 */   lw        $ra, 0x24($sp)
/* 945D8 800939D8 95EFE4E0 */  lhu        $t7, %lo(D_800BE4E0)($t7)
/* 945DC 800939DC 24010006 */  addiu      $at, $zero, 6
/* 945E0 800939E0 01E1001A */  div        $zero, $t7, $at
/* 945E4 800939E4 0000C010 */  mfhi       $t8
/* 945E8 800939E8 17000085 */  bnez       $t8, .L80093C00
/* 945EC 800939EC 8FBF0024 */   lw        $ra, 0x24($sp)
/* 945F0 800939F0 0C00A14A */  jal        func_80028528
/* 945F4 800939F4 00000000 */   nop
/* 945F8 800939F8 10400080 */  beqz       $v0, .L80093BFC
/* 945FC 800939FC 3051FFFF */   andi      $s1, $v0, 0xffff
/* 94600 80093A00 0011C880 */  sll        $t9, $s1, 2
/* 94604 80093A04 0331C823 */  subu       $t9, $t9, $s1
/* 94608 80093A08 0019C880 */  sll        $t9, $t9, 2
/* 9460C 80093A0C 0331C821 */  addu       $t9, $t9, $s1
/* 94610 80093A10 0019C880 */  sll        $t9, $t9, 2
/* 94614 80093A14 0331C823 */  subu       $t9, $t9, $s1
/* 94618 80093A18 3C08800F */  lui        $t0, %hi(gActors)
/* 9461C 80093A1C 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 94620 80093A20 0019C8C0 */  sll        $t9, $t9, 3
/* 94624 80093A24 03288021 */  addu       $s0, $t9, $t0
/* 94628 80093A28 2409006F */  addiu      $t1, $zero, 0x6f
/* 9462C 80093A2C A60900D2 */  sh         $t1, 0xd2($s0)
/* 94630 80093A30 0C0078B4 */  jal        func_8001E2D0
/* 94634 80093A34 3224FFFF */   andi      $a0, $s1, 0xffff
/* 94638 80093A38 960A0094 */  lhu        $t2, 0x94($s0)
/* 9463C 80093A3C 3C0E800E */  lui        $t6, %hi(D_800D98F4)
/* 94640 80093A40 240B000B */  addiu      $t3, $zero, 0xb
/* 94644 80093A44 240D00C8 */  addiu      $t5, $zero, 0xc8
/* 94648 80093A48 25CE98F4 */  addiu      $t6, $t6, %lo(D_800D98F4)
/* 9464C 80093A4C 354C0309 */  ori        $t4, $t2, 0x309
/* 94650 80093A50 A60C0094 */  sh         $t4, 0x94($s0)
/* 94654 80093A54 AE0B0080 */  sw         $t3, 0x80($s0)
/* 94658 80093A58 A60D0084 */  sh         $t5, 0x84($s0)
/* 9465C 80093A5C 0C0005E3 */  jal        func_8000178C
/* 94660 80093A60 AE0E018C */   sw        $t6, 0x18c($s0)
/* 94664 80093A64 240F0080 */  addiu      $t7, $zero, 0x80
/* 94668 80093A68 01E2C023 */  subu       $t8, $t7, $v0
/* 9466C 80093A6C 44984000 */  mtc1       $t8, $f8
/* 94670 80093A70 3C013FF4 */  lui        $at, 0x3ff4
/* 94674 80093A74 468042A0 */  cvt.s.w    $f10, $f8
/* 94678 80093A78 44819800 */  mtc1       $at, $f19
/* 9467C 80093A7C 44809000 */  mtc1       $zero, $f18
/* 94680 80093A80 46005421 */  cvt.d.s    $f16, $f10
/* 94684 80093A84 46328102 */  mul.d      $f4, $f16, $f18
/* 94688 80093A88 4459F800 */  cfc1       $t9, $31
/* 9468C 80093A8C 00000000 */  nop
/* 94690 80093A90 37210003 */  ori        $at, $t9, 3
/* 94694 80093A94 38210002 */  xori       $at, $at, 2
/* 94698 80093A98 44C1F800 */  ctc1       $at, $31
/* 9469C 80093A9C 00000000 */  nop
/* 946A0 80093AA0 462021A4 */  cvt.w.d    $f6, $f4
/* 946A4 80093AA4 44083000 */  mfc1       $t0, $f6
/* 946A8 80093AA8 44D9F800 */  ctc1       $t9, $31
/* 946AC 80093AAC 0C0005E3 */  jal        func_8000178C
/* 946B0 80093AB0 A6080088 */   sh        $t0, 0x88($s0)
/* 946B4 80093AB4 24090080 */  addiu      $t1, $zero, 0x80
/* 946B8 80093AB8 01225023 */  subu       $t2, $t1, $v0
/* 946BC 80093ABC 448A4000 */  mtc1       $t2, $f8
/* 946C0 80093AC0 3C01800F */  lui        $at, %hi(D_800ED430)
/* 946C4 80093AC4 468042A0 */  cvt.s.w    $f10, $f8
/* 946C8 80093AC8 3C0C800C */  lui        $t4, %hi(D_800BE73C)
/* 946CC 80093ACC 8D8CE73C */  lw         $t4, %lo(D_800BE73C)($t4)
/* 946D0 80093AD0 C433D430 */  lwc1       $f19, %lo(D_800ED430)($at)
/* 946D4 80093AD4 C432D434 */  lwc1       $f18, -0x2bcc($at)
/* 946D8 80093AD8 46005421 */  cvt.d.s    $f16, $f10
/* 946DC 80093ADC 46328102 */  mul.d      $f4, $f16, $f18
/* 946E0 80093AE0 05810003 */  bgez       $t4, .L80093AF0
/* 946E4 80093AE4 000C5B03 */   sra       $t3, $t4, 0xc
/* 946E8 80093AE8 25810FFF */  addiu      $at, $t4, 0xfff
/* 946EC 80093AEC 00015B03 */  sra        $t3, $at, 0xc
.L80093AF0:
/* 946F0 80093AF0 448B3000 */  mtc1       $t3, $f6
/* 946F4 80093AF4 00000000 */  nop
/* 946F8 80093AF8 46803221 */  cvt.d.w    $f8, $f6
/* 946FC 80093AFC 46282281 */  sub.d      $f10, $f4, $f8
/* 94700 80093B00 444DF800 */  cfc1       $t5, $31
/* 94704 80093B04 00000000 */  nop
/* 94708 80093B08 35A10003 */  ori        $at, $t5, 3
/* 9470C 80093B0C 38210002 */  xori       $at, $at, 2
/* 94710 80093B10 44C1F800 */  ctc1       $at, $31
/* 94714 80093B14 00000000 */  nop
/* 94718 80093B18 46205424 */  cvt.w.d    $f16, $f10
/* 9471C 80093B1C 440E8000 */  mfc1       $t6, $f16
/* 94720 80093B20 44CDF800 */  ctc1       $t5, $31
/* 94724 80093B24 0C0005E3 */  jal        func_8000178C
/* 94728 80093B28 A60E008C */   sh        $t6, 0x8c($s0)
/* 9472C 80093B2C 304F003F */  andi       $t7, $v0, 0x3f
/* 94730 80093B30 448F9000 */  mtc1       $t7, $f18
/* 94734 80093B34 3C014180 */  lui        $at, 0x4180
/* 94738 80093B38 44817000 */  mtc1       $at, $f14
/* 9473C 80093B3C 468090A0 */  cvt.s.w    $f2, $f18
/* 94740 80093B40 3C01C280 */  lui        $at, 0xc280
/* 94744 80093B44 44813000 */  mtc1       $at, $f6
/* 94748 80093B48 24080060 */  addiu      $t0, $zero, 0x60
/* 9474C 80093B4C 46023101 */  sub.s      $f4, $f6, $f2
/* 94750 80093B50 44803000 */  mtc1       $zero, $f6
/* 94754 80093B54 4458F800 */  cfc1       $t8, $31
/* 94758 80093B58 2409007F */  addiu      $t1, $zero, 0x7f
/* 9475C 80093B5C 37010003 */  ori        $at, $t8, 3
/* 94760 80093B60 38210002 */  xori       $at, $at, 2
/* 94764 80093B64 44C1F800 */  ctc1       $at, $31
/* 94768 80093B68 3C014280 */  lui        $at, 0x4280
/* 9476C 80093B6C 46002224 */  cvt.w.s    $f8, $f4
/* 94770 80093B70 44818000 */  mtc1       $at, $f16
/* 94774 80093B74 44D8F800 */  ctc1       $t8, $31
/* 94778 80093B78 3C014010 */  lui        $at, 0x4010
/* 9477C 80093B7C 46028481 */  sub.s      $f18, $f16, $f2
/* 94780 80093B80 44813800 */  mtc1       $at, $f7
/* 94784 80093B84 460E9303 */  div.s      $f12, $f18, $f14
/* 94788 80093B88 44194000 */  mfc1       $t9, $f8
/* 9478C 80093B8C 3C01800F */  lui        $at, 0x800f
/* 94790 80093B90 A6190090 */  sh         $t9, 0x90($s0)
/* 94794 80093B94 240A0010 */  addiu      $t2, $zero, 0x10
/* 94798 80093B98 460E1283 */  div.s      $f10, $f2, $f14
/* 9479C 80093B9C 46006021 */  cvt.d.s    $f0, $f12
/* 947A0 80093BA0 46260102 */  mul.d      $f4, $f0, $f6
/* 947A4 80093BA4 E60C011C */  swc1       $f12, 0x11c($s0)
/* 947A8 80093BA8 46202220 */  cvt.s.d    $f8, $f4
/* 947AC 80093BAC E60800B4 */  swc1       $f8, 0xb4($s0)
/* 947B0 80093BB0 E60A0118 */  swc1       $f10, 0x118($s0)
/* 947B4 80093BB4 C42AD43C */  lwc1       $f10, -0x2bc4($at)
/* 947B8 80093BB8 C42BD438 */  lwc1       $f11, -0x2bc8($at)
/* 947BC 80093BBC A208009F */  sb         $t0, 0x9f($s0)
/* 947C0 80093BC0 462A0402 */  mul.d      $f16, $f0, $f10
/* 947C4 80093BC4 A209009C */  sb         $t1, 0x9c($s0)
/* 947C8 80093BC8 AE0A0150 */  sw         $t2, 0x150($s0)
/* 947CC 80093BCC 3C01800F */  lui        $at, %hi(D_800ED444)
/* 947D0 80093BD0 462084A0 */  cvt.s.d    $f18, $f16
/* 947D4 80093BD4 E61200B8 */  swc1       $f18, 0xb8($s0)
/* 947D8 80093BD8 C426D444 */  lwc1       $f6, %lo(D_800ED444)($at)
/* 947DC 80093BDC C427D440 */  lwc1       $f7, -0x2bc0($at)
/* 947E0 80093BE0 3C0142B4 */  lui        $at, 0x42b4
/* 947E4 80093BE4 46260102 */  mul.d      $f4, $f0, $f6
/* 947E8 80093BE8 44815000 */  mtc1       $at, $f10
/* 947EC 80093BEC 00000000 */  nop
/* 947F0 80093BF0 E60A00C4 */  swc1       $f10, 0xc4($s0)
/* 947F4 80093BF4 46202220 */  cvt.s.d    $f8, $f4
/* 947F8 80093BF8 E6080114 */  swc1       $f8, 0x114($s0)
.L80093BFC:
/* 947FC 80093BFC 8FBF0024 */  lw         $ra, 0x24($sp)
.L80093C00:
/* 94800 80093C00 8FB0001C */  lw         $s0, 0x1c($sp)
/* 94804 80093C04 8FB10020 */  lw         $s1, 0x20($sp)
/* 94808 80093C08 03E00008 */  jr         $ra
/* 9480C 80093C0C 27BD0038 */   addiu     $sp, $sp, 0x38
