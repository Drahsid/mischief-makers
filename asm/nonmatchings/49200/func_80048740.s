glabel func_80048740
/* 49340 80048740 3C068013 */  lui        $a2, %hi(D_801373E0)
/* 49344 80048744 24C673E0 */  addiu      $a2, $a2, %lo(D_801373E0)
/* 49348 80048748 80C20012 */  lb         $v0, 0x12($a2)
/* 4934C 8004874C AFA40000 */  sw         $a0, ($sp)
/* 49350 80048750 2841003C */  slti       $at, $v0, 0x3c
/* 49354 80048754 10200004 */  beqz       $at, .L80048768
/* 49358 80048758 3C19800C */   lui       $t9, 0x800c
/* 4935C 8004875C 244E0001 */  addiu      $t6, $v0, 1
/* 49360 80048760 10000002 */  b          .L8004876C
/* 49364 80048764 A0CE0012 */   sb        $t6, 0x12($a2)
.L80048768:
/* 49368 80048768 A4C0000E */  sh         $zero, 0xe($a2)
.L8004876C:
/* 4936C 8004876C 84C2000E */  lh         $v0, 0xe($a2)
/* 49370 80048770 3C0D800C */  lui        $t5, 0x800c
/* 49374 80048774 28410005 */  slti       $at, $v0, 5
/* 49378 80048778 14200002 */  bnez       $at, .L80048784
/* 4937C 8004877C 244FFFFB */   addiu     $t7, $v0, -5
/* 49380 80048780 A4CF000E */  sh         $t7, 0xe($a2)
.L80048784:
/* 49384 80048784 80C70013 */  lb         $a3, 0x13($a2)
/* 49388 80048788 3C0F800C */  lui        $t7, 0x800c
/* 4938C 8004878C 28E10014 */  slti       $at, $a3, 0x14
/* 49390 80048790 10200002 */  beqz       $at, .L8004879C
/* 49394 80048794 24F80001 */   addiu     $t8, $a3, 1
/* 49398 80048798 A0D80013 */  sb         $t8, 0x13($a2)
.L8004879C:
/* 4939C 8004879C 9739E52C */  lhu        $t9, -0x1ad4($t9)
/* 493A0 800487A0 95ADE530 */  lhu        $t5, -0x1ad0($t5)
/* 493A4 800487A4 95EFE534 */  lhu        $t7, -0x1acc($t7)
/* 493A8 800487A8 032D7025 */  or         $t6, $t9, $t5
/* 493AC 800487AC 3C198013 */  lui        $t9, %hi(D_801370CE)
/* 493B0 800487B0 973970CE */  lhu        $t9, %lo(D_801370CE)($t9)
/* 493B4 800487B4 01CFC027 */  nor        $t8, $t6, $t7
/* 493B8 800487B8 03382024 */  and        $a0, $t9, $t8
/* 493BC 800487BC 308DFFFF */  andi       $t5, $a0, 0xffff
/* 493C0 800487C0 11A000F9 */  beqz       $t5, .L80048BA8
/* 493C4 800487C4 3C03800C */   lui       $v1, %hi(gButton_CUp)
/* 493C8 800487C8 3C05800C */  lui        $a1, %hi(gButton_CDown)
/* 493CC 800487CC 94A5E520 */  lhu        $a1, %lo(gButton_CDown)($a1)
/* 493D0 800487D0 9463E524 */  lhu        $v1, %lo(gButton_CUp)($v1)
/* 493D4 800487D4 01A01025 */  or         $v0, $t5, $zero
/* 493D8 800487D8 00653825 */  or         $a3, $v1, $a1
/* 493DC 800487DC 01A77024 */  and        $t6, $t5, $a3
/* 493E0 800487E0 14EE0004 */  bne        $a3, $t6, .L800487F4
/* 493E4 800487E4 3C08800C */   lui       $t0, 0x800c
/* 493E8 800487E8 00E07827 */  not        $t7, $a3
/* 493EC 800487EC 01AF2024 */  and        $a0, $t5, $t7
/* 493F0 800487F0 3082FFFF */  andi       $v0, $a0, 0xffff
.L800487F4:
/* 493F4 800487F4 3C07800C */  lui        $a3, %hi(gButton_CLeft)
/* 493F8 800487F8 94E7E51C */  lhu        $a3, %lo(gButton_CLeft)($a3)
/* 493FC 800487FC 9508E528 */  lhu        $t0, -0x1ad8($t0)
/* 49400 80048800 00E57825 */  or         $t7, $a3, $a1
/* 49404 80048804 00E84825 */  or         $t1, $a3, $t0
/* 49408 80048808 0049C024 */  and        $t8, $v0, $t1
/* 4940C 8004880C 15380004 */  bne        $t1, $t8, .L80048820
/* 49410 80048810 01E3C825 */   or        $t9, $t7, $v1
/* 49414 80048814 01206827 */  not        $t5, $t1
/* 49418 80048818 004D2024 */  and        $a0, $v0, $t5
/* 4941C 8004881C 3082FFFF */  andi       $v0, $a0, 0xffff
.L80048820:
/* 49420 80048820 03284825 */  or         $t1, $t9, $t0
/* 49424 80048824 0049C024 */  and        $t8, $v0, $t1
/* 49428 80048828 13000022 */  beqz       $t8, .L800488B4
/* 4942C 8004882C 3C0E8018 */   lui       $t6, 0x8018
/* 49430 80048830 00432024 */  and        $a0, $v0, $v1
/* 49434 80048834 10800002 */  beqz       $a0, .L80048840
/* 49438 80048838 00451824 */   and       $v1, $v0, $a1
/* 4943C 8004883C A0C00010 */  sb         $zero, 0x10($a2)
.L80048840:
/* 49440 80048840 10600003 */  beqz       $v1, .L80048850
/* 49444 80048844 00487024 */   and       $t6, $v0, $t0
/* 49448 80048848 240D0008 */  addiu      $t5, $zero, 8
/* 4944C 8004884C A0CD0010 */  sb         $t5, 0x10($a2)
.L80048850:
/* 49450 80048850 11C00009 */  beqz       $t6, .L80048878
/* 49454 80048854 00476824 */   and       $t5, $v0, $a3
/* 49458 80048858 240F0004 */  addiu      $t7, $zero, 4
/* 4945C 8004885C 10800003 */  beqz       $a0, .L8004886C
/* 49460 80048860 A0CF0010 */   sb        $t7, 0x10($a2)
/* 49464 80048864 24190002 */  addiu      $t9, $zero, 2
/* 49468 80048868 A0D90010 */  sb         $t9, 0x10($a2)
.L8004886C:
/* 4946C 8004886C 10600002 */  beqz       $v1, .L80048878
/* 49470 80048870 24180006 */   addiu     $t8, $zero, 6
/* 49474 80048874 A0D80010 */  sb         $t8, 0x10($a2)
.L80048878:
/* 49478 80048878 11A00009 */  beqz       $t5, .L800488A0
/* 4947C 8004887C 24180063 */   addiu     $t8, $zero, 0x63
/* 49480 80048880 240E000C */  addiu      $t6, $zero, 0xc
/* 49484 80048884 10800003 */  beqz       $a0, .L80048894
/* 49488 80048888 A0CE0010 */   sb        $t6, 0x10($a2)
/* 4948C 8004888C 240F000E */  addiu      $t7, $zero, 0xe
/* 49490 80048890 A0CF0010 */  sb         $t7, 0x10($a2)
.L80048894:
/* 49494 80048894 10600002 */  beqz       $v1, .L800488A0
/* 49498 80048898 2419000A */   addiu     $t9, $zero, 0xa
/* 4949C 8004889C A0D90010 */  sb         $t9, 0x10($a2)
.L800488A0:
/* 494A0 800488A0 240D0008 */  addiu      $t5, $zero, 8
/* 494A4 800488A4 A4D8000E */  sh         $t8, 0xe($a2)
/* 494A8 800488A8 A0CD0011 */  sb         $t5, 0x11($a2)
/* 494AC 800488AC 03E00008 */  jr         $ra
/* 494B0 800488B0 A0C00012 */   sb        $zero, 0x12($a2)
.L800488B4:
/* 494B4 800488B4 95CE81F8 */  lhu        $t6, -0x7e08($t6)
/* 494B8 800488B8 01207827 */  not        $t7, $t1
/* 494BC 800488BC 15C000BA */  bnez       $t6, .L80048BA8
/* 494C0 800488C0 004F2024 */   and       $a0, $v0, $t7
/* 494C4 800488C4 80C70013 */  lb         $a3, 0x13($a2)
/* 494C8 800488C8 3099FFFF */  andi       $t9, $a0, 0xffff
/* 494CC 800488CC 28E10002 */  slti       $at, $a3, 2
/* 494D0 800488D0 03202025 */  or         $a0, $t9, $zero
/* 494D4 800488D4 00001825 */  or         $v1, $zero, $zero
/* 494D8 800488D8 24080001 */  addiu      $t0, $zero, 1
/* 494DC 800488DC 14200022 */  bnez       $at, .L80048968
/* 494E0 800488E0 00002825 */   or        $a1, $zero, $zero
/* 494E4 800488E4 3C18800C */  lui        $t8, %hi(gButton_DUp)
/* 494E8 800488E8 3C0D800C */  lui        $t5, %hi(gButton_DDown)
/* 494EC 800488EC 95ADE508 */  lhu        $t5, %lo(gButton_DDown)($t5)
/* 494F0 800488F0 9718E504 */  lhu        $t8, %lo(gButton_DUp)($t8)
/* 494F4 800488F4 3C0F800C */  lui        $t7, %hi(gButton_DLeft)
/* 494F8 800488F8 030D7025 */  or         $t6, $t8, $t5
/* 494FC 800488FC 95EFE50C */  lhu        $t7, %lo(gButton_DLeft)($t7)
/* 49500 80048900 3C18800C */  lui        $t8, %hi(gButton_DRight)
/* 49504 80048904 9718E510 */  lhu        $t8, %lo(gButton_DRight)($t8)
/* 49508 80048908 03201025 */  or         $v0, $t9, $zero
/* 4950C 8004890C 3C0A8012 */  lui        $t2, %hi(gInputBuffer)
/* 49510 80048910 01CFC825 */  or         $t9, $t6, $t7
/* 49514 80048914 254ADD70 */  addiu      $t2, $t2, %lo(gInputBuffer)
/* 49518 80048918 00004825 */  or         $t1, $zero, $zero
/* 4951C 8004891C 03386025 */  or         $t4, $t9, $t8
.L80048920:
/* 49520 80048920 00086840 */  sll        $t5, $t0, 1
/* 49524 80048924 014D7021 */  addu       $t6, $t2, $t5
/* 49528 80048928 95CF0000 */  lhu        $t7, ($t6)
/* 4952C 8004892C 00000000 */  nop
/* 49530 80048930 01ECC824 */  and        $t9, $t7, $t4
/* 49534 80048934 01391825 */  or         $v1, $t1, $t9
/* 49538 80048938 3069FFFF */  andi       $t1, $v1, 0xffff
/* 4953C 8004893C 01226824 */  and        $t5, $t1, $v0
/* 49540 80048940 15A00009 */  bnez       $t5, .L80048968
/* 49544 80048944 01201825 */   or        $v1, $t1, $zero
/* 49548 80048948 25080001 */  addiu      $t0, $t0, 1
/* 4954C 8004894C 0008CC00 */  sll        $t9, $t0, 0x10
/* 49550 80048950 00194403 */  sra        $t0, $t9, 0x10
/* 49554 80048954 24A50001 */  addiu      $a1, $a1, 1
/* 49558 80048958 0107082A */  slt        $at, $t0, $a3
/* 4955C 8004895C 00057400 */  sll        $t6, $a1, 0x10
/* 49560 80048960 1420FFEF */  bnez       $at, .L80048920
/* 49564 80048964 000E2C03 */   sra       $a1, $t6, 0x10
.L80048968:
/* 49568 80048968 0107082A */  slt        $at, $t0, $a3
/* 4956C 8004896C 1020008E */  beqz       $at, .L80048BA8
/* 49570 80048970 00832025 */   or        $a0, $a0, $v1
/* 49574 80048974 3C07800C */  lui        $a3, %hi(gButton_DUp)
/* 49578 80048978 3C08800C */  lui        $t0, %hi(gButton_DDown)
/* 4957C 8004897C 9508E508 */  lhu        $t0, %lo(gButton_DDown)($t0)
/* 49580 80048980 94E7E504 */  lhu        $a3, %lo(gButton_DUp)($a3)
/* 49584 80048984 3C0A800C */  lui        $t2, %hi(gButton_DLeft)
/* 49588 80048988 954AE50C */  lhu        $t2, %lo(gButton_DLeft)($t2)
/* 4958C 8004898C 3C0B800C */  lui        $t3, %hi(gButton_DRight)
/* 49590 80048990 00E84825 */  or         $t1, $a3, $t0
/* 49594 80048994 956BE510 */  lhu        $t3, %lo(gButton_DRight)($t3)
/* 49598 80048998 308DFFFF */  andi       $t5, $a0, 0xffff
/* 4959C 8004899C 01A97824 */  and        $t7, $t5, $t1
/* 495A0 800489A0 012A7025 */  or         $t6, $t1, $t2
/* 495A4 800489A4 01A01025 */  or         $v0, $t5, $zero
/* 495A8 800489A8 152F0004 */  bne        $t1, $t7, .L800489BC
/* 495AC 800489AC 01CB6025 */   or        $t4, $t6, $t3
/* 495B0 800489B0 0120C827 */  not        $t9, $t1
/* 495B4 800489B4 01B92024 */  and        $a0, $t5, $t9
/* 495B8 800489B8 3082FFFF */  andi       $v0, $a0, 0xffff
.L800489BC:
/* 495BC 800489BC 014B1825 */  or         $v1, $t2, $t3
/* 495C0 800489C0 00436824 */  and        $t5, $v0, $v1
/* 495C4 800489C4 146D0003 */  bne        $v1, $t5, .L800489D4
/* 495C8 800489C8 00607027 */   not       $t6, $v1
/* 495CC 800489CC 004E2024 */  and        $a0, $v0, $t6
/* 495D0 800489D0 3082FFFF */  andi       $v0, $a0, 0xffff
.L800489D4:
/* 495D4 800489D4 004CC824 */  and        $t9, $v0, $t4
/* 495D8 800489D8 13200073 */  beqz       $t9, .L80048BA8
/* 495DC 800489DC 004B7024 */   and       $t6, $v0, $t3
/* 495E0 800489E0 80C30010 */  lb         $v1, 0x10($a2)
/* 495E4 800489E4 00472024 */  and        $a0, $v0, $a3
/* 495E8 800489E8 3078FFFF */  andi       $t8, $v1, 0xffff
/* 495EC 800489EC 10800002 */  beqz       $a0, .L800489F8
/* 495F0 800489F0 03001825 */   or        $v1, $t8, $zero
/* 495F4 800489F4 A0C00010 */  sb         $zero, 0x10($a2)
.L800489F8:
/* 495F8 800489F8 00483824 */  and        $a3, $v0, $t0
/* 495FC 800489FC 10E00002 */  beqz       $a3, .L80048A08
/* 49600 80048A00 240D0008 */   addiu     $t5, $zero, 8
/* 49604 80048A04 A0CD0010 */  sb         $t5, 0x10($a2)
.L80048A08:
/* 49608 80048A08 11C00009 */  beqz       $t6, .L80048A30
/* 4960C 80048A0C 004A6824 */   and       $t5, $v0, $t2
/* 49610 80048A10 240F0004 */  addiu      $t7, $zero, 4
/* 49614 80048A14 10800003 */  beqz       $a0, .L80048A24
/* 49618 80048A18 A0CF0010 */   sb        $t7, 0x10($a2)
/* 4961C 80048A1C 24190002 */  addiu      $t9, $zero, 2
/* 49620 80048A20 A0D90010 */  sb         $t9, 0x10($a2)
.L80048A24:
/* 49624 80048A24 10E00002 */  beqz       $a3, .L80048A30
/* 49628 80048A28 24180006 */   addiu     $t8, $zero, 6
/* 4962C 80048A2C A0D80010 */  sb         $t8, 0x10($a2)
.L80048A30:
/* 49630 80048A30 11A00008 */  beqz       $t5, .L80048A54
/* 49634 80048A34 240E000C */   addiu     $t6, $zero, 0xc
/* 49638 80048A38 10800003 */  beqz       $a0, .L80048A48
/* 4963C 80048A3C A0CE0010 */   sb        $t6, 0x10($a2)
/* 49640 80048A40 240F000E */  addiu      $t7, $zero, 0xe
/* 49644 80048A44 A0CF0010 */  sb         $t7, 0x10($a2)
.L80048A48:
/* 49648 80048A48 10E00002 */  beqz       $a3, .L80048A54
/* 4964C 80048A4C 2419000A */   addiu     $t9, $zero, 0xa
/* 49650 80048A50 A0D90010 */  sb         $t9, 0x10($a2)
.L80048A54:
/* 49654 80048A54 80D80010 */  lb         $t8, 0x10($a2)
/* 49658 80048A58 A0C50011 */  sb         $a1, 0x11($a2)
/* 4965C 80048A5C 10780002 */  beq        $v1, $t8, .L80048A68
/* 49660 80048A60 00000000 */   nop
/* 49664 80048A64 A4C0000E */  sh         $zero, 0xe($a2)
.L80048A68:
/* 49668 80048A68 80C20011 */  lb         $v0, 0x11($a2)
/* 4966C 80048A6C 00000000 */  nop
/* 49670 80048A70 28410008 */  slti       $at, $v0, 8
/* 49674 80048A74 10200007 */  beqz       $at, .L80048A94
/* 49678 80048A78 2841000A */   slti      $at, $v0, 0xa
/* 4967C 80048A7C 84CD000E */  lh         $t5, 0xe($a2)
/* 49680 80048A80 00000000 */  nop
/* 49684 80048A84 25AE0064 */  addiu      $t6, $t5, 0x64
/* 49688 80048A88 10000040 */  b          .L80048B8C
/* 4968C 80048A8C A4CE000E */   sh        $t6, 0xe($a2)
/* 49690 80048A90 2841000A */  slti       $at, $v0, 0xa
.L80048A94:
/* 49694 80048A94 10200015 */  beqz       $at, .L80048AEC
/* 49698 80048A98 2841000E */   slti      $at, $v0, 0xe
/* 4969C 80048A9C 84CF000E */  lh         $t7, 0xe($a2)
/* 496A0 80048AA0 3C01800F */  lui        $at, %hi(D_800EBD60)
/* 496A4 80048AA4 448F2000 */  mtc1       $t7, $f4
/* 496A8 80048AA8 C429BD60 */  lwc1       $f9, %lo(D_800EBD60)($at)
/* 496AC 80048AAC 468021A1 */  cvt.d.w    $f6, $f4
/* 496B0 80048AB0 C428BD64 */  lwc1       $f8, -0x429c($at)
/* 496B4 80048AB4 00000000 */  nop
/* 496B8 80048AB8 46283280 */  add.d      $f10, $f6, $f8
/* 496BC 80048ABC 4459F800 */  cfc1       $t9, $31
/* 496C0 80048AC0 00000000 */  nop
/* 496C4 80048AC4 37210003 */  ori        $at, $t9, 3
/* 496C8 80048AC8 38210002 */  xori       $at, $at, 2
/* 496CC 80048ACC 44C1F800 */  ctc1       $at, $31
/* 496D0 80048AD0 00000000 */  nop
/* 496D4 80048AD4 46205424 */  cvt.w.d    $f16, $f10
/* 496D8 80048AD8 44188000 */  mfc1       $t8, $f16
/* 496DC 80048ADC 44D9F800 */  ctc1       $t9, $31
/* 496E0 80048AE0 1000002A */  b          .L80048B8C
/* 496E4 80048AE4 A4D8000E */   sh        $t8, 0xe($a2)
/* 496E8 80048AE8 2841000E */  slti       $at, $v0, 0xe
.L80048AEC:
/* 496EC 80048AEC 10200014 */  beqz       $at, .L80048B40
/* 496F0 80048AF0 00000000 */   nop
/* 496F4 80048AF4 84CD000E */  lh         $t5, 0xe($a2)
/* 496F8 80048AF8 3C014049 */  lui        $at, 0x4049
/* 496FC 80048AFC 448D9000 */  mtc1       $t5, $f18
/* 49700 80048B00 44813800 */  mtc1       $at, $f7
/* 49704 80048B04 46809121 */  cvt.d.w    $f4, $f18
/* 49708 80048B08 44803000 */  mtc1       $zero, $f6
/* 4970C 80048B0C 00000000 */  nop
/* 49710 80048B10 46262200 */  add.d      $f8, $f4, $f6
/* 49714 80048B14 444EF800 */  cfc1       $t6, $31
/* 49718 80048B18 00000000 */  nop
/* 4971C 80048B1C 35C10003 */  ori        $at, $t6, 3
/* 49720 80048B20 38210002 */  xori       $at, $at, 2
/* 49724 80048B24 44C1F800 */  ctc1       $at, $31
/* 49728 80048B28 00000000 */  nop
/* 4972C 80048B2C 462042A4 */  cvt.w.d    $f10, $f8
/* 49730 80048B30 440F5000 */  mfc1       $t7, $f10
/* 49734 80048B34 44CEF800 */  ctc1       $t6, $31
/* 49738 80048B38 10000014 */  b          .L80048B8C
/* 4973C 80048B3C A4CF000E */   sh        $t7, 0xe($a2)
.L80048B40:
/* 49740 80048B40 84D9000E */  lh         $t9, 0xe($a2)
/* 49744 80048B44 3C014039 */  lui        $at, 0x4039
/* 49748 80048B48 44998000 */  mtc1       $t9, $f16
/* 4974C 80048B4C 44812800 */  mtc1       $at, $f5
/* 49750 80048B50 468084A1 */  cvt.d.w    $f18, $f16
/* 49754 80048B54 44802000 */  mtc1       $zero, $f4
/* 49758 80048B58 00000000 */  nop
/* 4975C 80048B5C 46249180 */  add.d      $f6, $f18, $f4
/* 49760 80048B60 4458F800 */  cfc1       $t8, $31
/* 49764 80048B64 00000000 */  nop
/* 49768 80048B68 37010003 */  ori        $at, $t8, 3
/* 4976C 80048B6C 38210002 */  xori       $at, $at, 2
/* 49770 80048B70 44C1F800 */  ctc1       $at, $31
/* 49774 80048B74 00000000 */  nop
/* 49778 80048B78 46203224 */  cvt.w.d    $f8, $f6
/* 4977C 80048B7C 440D4000 */  mfc1       $t5, $f8
/* 49780 80048B80 44D8F800 */  ctc1       $t8, $31
/* 49784 80048B84 A4CD000E */  sh         $t5, 0xe($a2)
/* 49788 80048B88 00000000 */  nop
.L80048B8C:
/* 4978C 80048B8C 84CE000E */  lh         $t6, 0xe($a2)
/* 49790 80048B90 240F03E8 */  addiu      $t7, $zero, 0x3e8
/* 49794 80048B94 29C103E9 */  slti       $at, $t6, 0x3e9
/* 49798 80048B98 14200002 */  bnez       $at, .L80048BA4
/* 4979C 80048B9C 00000000 */   nop
/* 497A0 80048BA0 A4CF000E */  sh         $t7, 0xe($a2)
.L80048BA4:
/* 497A4 80048BA4 A0C00012 */  sb         $zero, 0x12($a2)
.L80048BA8:
/* 497A8 80048BA8 03E00008 */  jr         $ra
/* 497AC 80048BAC 00000000 */   nop
