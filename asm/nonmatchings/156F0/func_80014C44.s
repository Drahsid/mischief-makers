glabel func_80014C44
/* 15844 80014C44 3C0B800C */  lui        $t3, %hi(D_800BE55C)
/* 15848 80014C48 3C0A800C */  lui        $t2, %hi(D_800BE558)
/* 1584C 80014C4C 3C02800F */  lui        $v0, %hi(gActors)
/* 15850 80014C50 2442F510 */  addiu      $v0, $v0, %lo(gActors)
/* 15854 80014C54 254AE558 */  addiu      $t2, $t2, %lo(D_800BE558)
/* 15858 80014C58 256BE55C */  addiu      $t3, $t3, %lo(D_800BE55C)
/* 1585C 80014C5C 00001825 */  or         $v1, $zero, $zero
/* 15860 80014C60 24090198 */  addiu      $t1, $zero, 0x198
.L80014C64:
/* 15864 80014C64 00690019 */  multu      $v1, $t1
/* 15868 80014C68 24630001 */  addiu      $v1, $v1, 1
/* 1586C 80014C6C 00007012 */  mflo       $t6
/* 15870 80014C70 004E2021 */  addu       $a0, $v0, $t6
/* 15874 80014C74 8C8F0080 */  lw         $t7, 0x80($a0)
/* 15878 80014C78 00000000 */  nop
/* 1587C 80014C7C 11E00026 */  beqz       $t7, .L80014D18
/* 15880 80014C80 3079FFFF */   andi      $t9, $v1, 0xffff
/* 15884 80014C84 948500CC */  lhu        $a1, 0xcc($a0)
/* 15888 80014C88 00000000 */  nop
/* 1588C 80014C8C 10A00021 */  beqz       $a1, .L80014D14
/* 15890 80014C90 30B97FFF */   andi      $t9, $a1, 0x7fff
/* 15894 80014C94 03290019 */  multu      $t9, $t1
/* 15898 80014C98 854D0000 */  lh         $t5, ($t2)
/* 1589C 80014C9C 849800C8 */  lh         $t8, 0xc8($a0)
/* 158A0 80014CA0 00006012 */  mflo       $t4
/* 158A4 80014CA4 004C3821 */  addu       $a3, $v0, $t4
/* 158A8 80014CA8 84EE0088 */  lh         $t6, 0x88($a3)
/* 158AC 80014CAC 856C0000 */  lh         $t4, ($t3)
/* 158B0 80014CB0 01AE7821 */  addu       $t7, $t5, $t6
/* 158B4 80014CB4 01F83023 */  subu       $a2, $t7, $t8
/* 158B8 80014CB8 84ED008C */  lh         $t5, 0x8c($a3)
/* 158BC 80014CBC 84EF00AE */  lh         $t7, 0xae($a3)
/* 158C0 80014CC0 0006CC00 */  sll        $t9, $a2, 0x10
/* 158C4 80014CC4 03203025 */  or         $a2, $t9, $zero
/* 158C8 80014CC8 018D7021 */  addu       $t6, $t4, $t5
/* 158CC 80014CCC 849900CA */  lh         $t9, 0xca($a0)
/* 158D0 80014CD0 01CFC021 */  addu       $t8, $t6, $t7
/* 158D4 80014CD4 8C8D0088 */  lw         $t5, 0x88($a0)
/* 158D8 80014CD8 8C8F008C */  lw         $t7, 0x8c($a0)
/* 158DC 80014CDC 03194023 */  subu       $t0, $t8, $t9
/* 158E0 80014CE0 00086400 */  sll        $t4, $t0, 0x10
/* 158E4 80014CE4 01A67021 */  addu       $t6, $t5, $a2
/* 158E8 80014CE8 01ECC021 */  addu       $t8, $t7, $t4
/* 158EC 80014CEC AC8E0088 */  sw         $t6, 0x88($a0)
/* 158F0 80014CF0 AC98008C */  sw         $t8, 0x8c($a0)
/* 158F4 80014CF4 8CEC00EC */  lw         $t4, 0xec($a3)
/* 158F8 80014CF8 00000000 */  nop
/* 158FC 80014CFC 01CC6821 */  addu       $t5, $t6, $t4
/* 15900 80014D00 AC8D0088 */  sw         $t5, 0x88($a0)
/* 15904 80014D04 8CEF00F0 */  lw         $t7, 0xf0($a3)
/* 15908 80014D08 00000000 */  nop
/* 1590C 80014D0C 030FC021 */  addu       $t8, $t8, $t7
/* 15910 80014D10 AC98008C */  sw         $t8, 0x8c($a0)
.L80014D14:
/* 15914 80014D14 3079FFFF */  andi       $t9, $v1, 0xffff
.L80014D18:
/* 15918 80014D18 2B210090 */  slti       $at, $t9, 0x90
/* 1591C 80014D1C 1420FFD1 */  bnez       $at, .L80014C64
/* 15920 80014D20 03201825 */   or        $v1, $t9, $zero
/* 15924 80014D24 8D450000 */  lw         $a1, ($t2)
/* 15928 80014D28 8C4C0088 */  lw         $t4, 0x88($v0)
/* 1592C 80014D2C 8C4E008C */  lw         $t6, 0x8c($v0)
/* 15930 80014D30 8D6F0000 */  lw         $t7, ($t3)
/* 15934 80014D34 3C03800C */  lui        $v1, %hi(gPlayerPosXMirror)
/* 15938 80014D38 3C04800C */  lui        $a0, %hi(gPlayerPosYMirror)
/* 1593C 80014D3C 844600AA */  lh         $a2, 0xaa($v0)
/* 15940 80014D40 2484E5DC */  addiu      $a0, $a0, %lo(gPlayerPosYMirror)
/* 15944 80014D44 2463E5D8 */  addiu      $v1, $v1, %lo(gPlayerPosXMirror)
/* 15948 80014D48 01853821 */  addu       $a3, $t4, $a1
/* 1594C 80014D4C 01CFC021 */  addu       $t8, $t6, $t7
/* 15950 80014D50 AC670000 */  sw         $a3, ($v1)
/* 15954 80014D54 AC980000 */  sw         $t8, ($a0)
/* 15958 80014D58 3C08800C */  lui        $t0, %hi(D_800BE568)
/* 1595C 80014D5C 8D08E568 */  lw         $t0, %lo(D_800BE568)($t0)
/* 15960 80014D60 0006CC00 */  sll        $t9, $a2, 0x10
/* 15964 80014D64 03276021 */  addu       $t4, $t9, $a3
/* 15968 80014D68 0188082A */  slt        $at, $t4, $t0
/* 1596C 80014D6C 1020001A */  beqz       $at, .L80014DD8
/* 15970 80014D70 03203025 */   or        $a2, $t9, $zero
/* 15974 80014D74 3C098013 */  lui        $t1, %hi(D_801373E0)
/* 15978 80014D78 252973E0 */  addiu      $t1, $t1, %lo(D_801373E0)
/* 1597C 80014D7C 8D270078 */  lw         $a3, 0x78($t1)
/* 15980 80014D80 2401FFF9 */  addiu      $at, $zero, -7
/* 15984 80014D84 30ED0004 */  andi       $t5, $a3, 4
/* 15988 80014D88 11A00003 */  beqz       $t5, .L80014D98
/* 1598C 80014D8C 00E17024 */   and       $t6, $a3, $at
/* 15990 80014D90 AD2E0078 */  sw         $t6, 0x78($t1)
/* 15994 80014D94 01C03825 */  or         $a3, $t6, $zero
.L80014D98:
/* 15998 80014D98 30EF0002 */  andi       $t7, $a3, 2
/* 1599C 80014D9C 11E00035 */  beqz       $t7, .L80014E74
/* 159A0 80014DA0 0106C023 */   subu      $t8, $t0, $a2
/* 159A4 80014DA4 8C4D00EC */  lw         $t5, 0xec($v0)
/* 159A8 80014DA8 03056023 */  subu       $t4, $t8, $a1
/* 159AC 80014DAC AC780000 */  sw         $t8, ($v1)
/* 159B0 80014DB0 05A10004 */  bgez       $t5, .L80014DC4
/* 159B4 80014DB4 AC4C0088 */   sw        $t4, 0x88($v0)
/* 159B8 80014DB8 AC4000EC */  sw         $zero, 0xec($v0)
/* 159BC 80014DBC 3C01800C */  lui        $at, %hi(gPlayerVelXMirror)
/* 159C0 80014DC0 AC20E5E8 */  sw         $zero, %lo(gPlayerVelXMirror)($at)
.L80014DC4:
/* 159C4 80014DC4 8C4F0098 */  lw         $t7, 0x98($v0)
/* 159C8 80014DC8 00000000 */  nop
/* 159CC 80014DCC 35F80004 */  ori        $t8, $t7, 4
/* 159D0 80014DD0 10000028 */  b          .L80014E74
/* 159D4 80014DD4 AC580098 */   sw        $t8, 0x98($v0)
.L80014DD8:
/* 159D8 80014DD8 844800AC */  lh         $t0, 0xac($v0)
/* 159DC 80014DDC 3C06800C */  lui        $a2, %hi(D_800BE56C)
/* 159E0 80014DE0 8CC6E56C */  lw         $a2, %lo(D_800BE56C)($a2)
/* 159E4 80014DE4 0008CC00 */  sll        $t9, $t0, 0x10
/* 159E8 80014DE8 03276021 */  addu       $t4, $t9, $a3
/* 159EC 80014DEC 00CC082A */  slt        $at, $a2, $t4
/* 159F0 80014DF0 1020001A */  beqz       $at, .L80014E5C
/* 159F4 80014DF4 03204025 */   or        $t0, $t9, $zero
/* 159F8 80014DF8 3C098013 */  lui        $t1, %hi(D_801373E0)
/* 159FC 80014DFC 252973E0 */  addiu      $t1, $t1, %lo(D_801373E0)
/* 15A00 80014E00 8D270078 */  lw         $a3, 0x78($t1)
/* 15A04 80014E04 2401FFF9 */  addiu      $at, $zero, -7
/* 15A08 80014E08 30ED0004 */  andi       $t5, $a3, 4
/* 15A0C 80014E0C 11A00003 */  beqz       $t5, .L80014E1C
/* 15A10 80014E10 00E17024 */   and       $t6, $a3, $at
/* 15A14 80014E14 AD2E0078 */  sw         $t6, 0x78($t1)
/* 15A18 80014E18 01C03825 */  or         $a3, $t6, $zero
.L80014E1C:
/* 15A1C 80014E1C 30EF0002 */  andi       $t7, $a3, 2
/* 15A20 80014E20 11E00014 */  beqz       $t7, .L80014E74
/* 15A24 80014E24 00C8C023 */   subu      $t8, $a2, $t0
/* 15A28 80014E28 8C4D00EC */  lw         $t5, 0xec($v0)
/* 15A2C 80014E2C 03056023 */  subu       $t4, $t8, $a1
/* 15A30 80014E30 AC780000 */  sw         $t8, ($v1)
/* 15A34 80014E34 19A00004 */  blez       $t5, .L80014E48
/* 15A38 80014E38 AC4C0088 */   sw        $t4, 0x88($v0)
/* 15A3C 80014E3C AC4000EC */  sw         $zero, 0xec($v0)
/* 15A40 80014E40 3C01800C */  lui        $at, %hi(gPlayerVelXMirror)
/* 15A44 80014E44 AC20E5E8 */  sw         $zero, %lo(gPlayerVelXMirror)($at)
.L80014E48:
/* 15A48 80014E48 8C4F0098 */  lw         $t7, 0x98($v0)
/* 15A4C 80014E4C 00000000 */  nop
/* 15A50 80014E50 35F80008 */  ori        $t8, $t7, 8
/* 15A54 80014E54 10000007 */  b          .L80014E74
/* 15A58 80014E58 AC580098 */   sw        $t8, 0x98($v0)
.L80014E5C:
/* 15A5C 80014E5C 3C098013 */  lui        $t1, %hi(D_801373E0)
/* 15A60 80014E60 252973E0 */  addiu      $t1, $t1, %lo(D_801373E0)
/* 15A64 80014E64 8D390078 */  lw         $t9, 0x78($t1)
/* 15A68 80014E68 00000000 */  nop
/* 15A6C 80014E6C 372C0002 */  ori        $t4, $t9, 2
/* 15A70 80014E70 AD2C0078 */  sw         $t4, 0x78($t1)
.L80014E74:
/* 15A74 80014E74 3C028013 */  lui        $v0, %hi(D_801370D2)
/* 15A78 80014E78 244270D2 */  addiu      $v0, $v0, %lo(D_801370D2)
/* 15A7C 80014E7C 844D0000 */  lh         $t5, ($v0)
/* 15A80 80014E80 3C05800C */  lui        $a1, %hi(D_800BE6A4)
/* 15A84 80014E84 1DA0000D */  bgtz       $t5, .L80014EBC
/* 15A88 80014E88 24A5E6A4 */   addiu     $a1, $a1, %lo(D_800BE6A4)
/* 15A8C 80014E8C 94AE0000 */  lhu        $t6, ($a1)
/* 15A90 80014E90 3C0C800C */  lui        $t4, %hi(D_800BE700)
/* 15A94 80014E94 35D98000 */  ori        $t9, $t6, 0x8000
/* 15A98 80014E98 A4B90000 */  sh         $t9, ($a1)
/* 15A9C 80014E9C 958CE700 */  lhu        $t4, %lo(D_800BE700)($t4)
/* 15AA0 80014EA0 3C018013 */  lui        $at, %hi(D_801370D4)
/* 15AA4 80014EA4 032C6821 */  addu       $t5, $t9, $t4
/* 15AA8 80014EA8 000D7040 */  sll        $t6, $t5, 1
/* 15AAC 80014EAC 25CF0002 */  addiu      $t7, $t6, 2
/* 15AB0 80014EB0 A42F70D4 */  sh         $t7, %lo(D_801370D4)($at)
/* 15AB4 80014EB4 2418000A */  addiu      $t8, $zero, 0xa
/* 15AB8 80014EB8 A4580000 */  sh         $t8, ($v0)
.L80014EBC:
/* 15ABC 80014EBC 3C058013 */  lui        $a1, %hi(D_801370D0)
/* 15AC0 80014EC0 24A570D0 */  addiu      $a1, $a1, %lo(D_801370D0)
/* 15AC4 80014EC4 84B90000 */  lh         $t9, ($a1)
/* 15AC8 80014EC8 3C0F8013 */  lui        $t7, %hi(D_801370D4)
/* 15ACC 80014ECC 272C0001 */  addiu      $t4, $t9, 1
/* 15AD0 80014ED0 A4AC0000 */  sh         $t4, ($a1)
/* 15AD4 80014ED4 84A20000 */  lh         $v0, ($a1)
/* 15AD8 80014ED8 95EF70D4 */  lhu        $t7, %lo(D_801370D4)($t7)
/* 15ADC 80014EDC 304D007F */  andi       $t5, $v0, 0x7f
/* 15AE0 80014EE0 000D7040 */  sll        $t6, $t5, 1
/* 15AE4 80014EE4 3C018013 */  lui        $at, %hi(D_801370D8)
/* 15AE8 80014EE8 002E0821 */  addu       $at, $at, $t6
/* 15AEC 80014EEC A42F70D8 */  sh         $t7, %lo(D_801370D8)($at)
/* 15AF0 80014EF0 84780000 */  lh         $t8, ($v1)
/* 15AF4 80014EF4 3C018013 */  lui        $at, %hi(D_801371D8)
/* 15AF8 80014EF8 002E0821 */  addu       $at, $at, $t6
/* 15AFC 80014EFC A43871D8 */  sh         $t8, %lo(D_801371D8)($at)
/* 15B00 80014F00 84990000 */  lh         $t9, ($a0)
/* 15B04 80014F04 3C018013 */  lui        $at, %hi(D_801372D8)
/* 15B08 80014F08 002E0821 */  addu       $at, $at, $t6
/* 15B0C 80014F0C 03E00008 */  jr         $ra
/* 15B10 80014F10 A43972D8 */   sh        $t9, %lo(D_801372D8)($at)
