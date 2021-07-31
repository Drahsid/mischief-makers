glabel func_80020A90
/* 21690 80020A90 3C02800C */  lui        $v0, %hi(gGameSubState)
/* 21694 80020A94 9442E4F4 */  lhu        $v0, %lo(gGameSubState)($v0)
/* 21698 80020A98 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2169C 80020A9C 2C410024 */  sltiu      $at, $v0, 0x24
/* 216A0 80020AA0 1020013C */  beqz       $at, L80020F94_21B94
/* 216A4 80020AA4 AFBF001C */   sw        $ra, 0x1c($sp)
/* 216A8 80020AA8 00027080 */  sll        $t6, $v0, 2
/* 216AC 80020AAC 3C01800F */  lui        $at, %hi(jtbl_800EB590)
/* 216B0 80020AB0 002E0821 */  addu       $at, $at, $t6
/* 216B4 80020AB4 8C2EB590 */  lw         $t6, %lo(jtbl_800EB590)($at)
/* 216B8 80020AB8 00000000 */  nop
/* 216BC 80020ABC 01C00008 */  jr         $t6
/* 216C0 80020AC0 00000000 */   nop
glabel L80020AC4_216C4
/* 216C4 80020AC4 3C03800F */  lui        $v1, %hi(D_800EF4D2)
/* 216C8 80020AC8 2463F4D2 */  addiu      $v1, $v1, %lo(D_800EF4D2)
/* 216CC 80020ACC 84620000 */  lh         $v0, ($v1)
/* 216D0 80020AD0 3C01800F */  lui        $at, %hi(D_800EF4D4)
/* 216D4 80020AD4 A422F4D4 */  sh         $v0, %lo(D_800EF4D4)($at)
/* 216D8 80020AD8 3C07800F */  lui        $a3, 0x800f
/* 216DC 80020ADC 3C068018 */  lui        $a2, 0x8018
/* 216E0 80020AE0 04410003 */  bgez       $v0, .L80020AF0
/* 216E4 80020AE4 00027843 */   sra       $t7, $v0, 1
/* 216E8 80020AE8 24410001 */  addiu      $at, $v0, 1
/* 216EC 80020AEC 00017843 */  sra        $t7, $at, 1
.L80020AF0:
/* 216F0 80020AF0 A46F0000 */  sh         $t7, ($v1)
/* 216F4 80020AF4 24C681C0 */  addiu      $a2, $a2, -0x7e40
/* 216F8 80020AF8 24E7F4F8 */  addiu      $a3, $a3, -0xb08
/* 216FC 80020AFC 00002825 */  or         $a1, $zero, $zero
.L80020B00:
/* 21700 80020B00 00051040 */  sll        $v0, $a1, 1
/* 21704 80020B04 00E21821 */  addu       $v1, $a3, $v0
/* 21708 80020B08 84640000 */  lh         $a0, ($v1)
/* 2170C 80020B0C 24A50001 */  addiu      $a1, $a1, 1
/* 21710 80020B10 30A8FFFF */  andi       $t0, $a1, 0xffff
/* 21714 80020B14 00C2C021 */  addu       $t8, $a2, $v0
/* 21718 80020B18 A7040000 */  sh         $a0, ($t8)
/* 2171C 80020B1C 04810003 */  bgez       $a0, .L80020B2C
/* 21720 80020B20 0004C843 */   sra       $t9, $a0, 1
/* 21724 80020B24 24810001 */  addiu      $at, $a0, 1
/* 21728 80020B28 0001C843 */  sra        $t9, $at, 1
.L80020B2C:
/* 2172C 80020B2C 29010004 */  slti       $at, $t0, 4
/* 21730 80020B30 01002825 */  or         $a1, $t0, $zero
/* 21734 80020B34 1420FFF2 */  bnez       $at, .L80020B00
/* 21738 80020B38 A4790000 */   sh        $t9, ($v1)
/* 2173C 80020B3C 0C000CD3 */  jal        SFX_Play_1
/* 21740 80020B40 240400CA */   addiu     $a0, $zero, 0xca
/* 21744 80020B44 0C00824B */  jal        func_8002092C
/* 21748 80020B48 00000000 */   nop
/* 2174C 80020B4C 3C09800C */  lui        $t1, %hi(gGameSubState)
/* 21750 80020B50 9529E4F4 */  lhu        $t1, %lo(gGameSubState)($t1)
/* 21754 80020B54 3C01800C */  lui        $at, %hi(gGameSubState)
/* 21758 80020B58 252A0001 */  addiu      $t2, $t1, 1
/* 2175C 80020B5C A42AE4F4 */  sh         $t2, %lo(gGameSubState)($at)
glabel L80020B60_21760
/* 21760 80020B60 3C028010 */  lui        $v0, %hi(D_801033D0)
/* 21764 80020B64 244233D0 */  addiu      $v0, $v0, %lo(D_801033D0)
/* 21768 80020B68 844B03DA */  lh         $t3, 0x3da($v0)
/* 2176C 80020B6C 844C0574 */  lh         $t4, 0x574($v0)
/* 21770 80020B70 3C0E8010 */  lui        $t6, 0x8010
/* 21774 80020B74 156C006A */  bne        $t3, $t4, .L80020D20
/* 21778 80020B78 3C018010 */   lui       $at, 0x8010
/* 2177C 80020B7C 240D0401 */  addiu      $t5, $zero, 0x401
/* 21780 80020B80 AFAD0010 */  sw         $t5, 0x10($sp)
/* 21784 80020B84 240400CC */  addiu      $a0, $zero, 0xcc
/* 21788 80020B88 00002825 */  or         $a1, $zero, $zero
/* 2178C 80020B8C 00003025 */  or         $a2, $zero, $zero
/* 21790 80020B90 0C009CFF */  jal        func_800273FC
/* 21794 80020B94 2407000C */   addiu     $a3, $zero, 0xc
/* 21798 80020B98 3C0E8010 */  lui        $t6, %hi(D_80103AB0)
/* 2179C 80020B9C 8DCE3AB0 */  lw         $t6, %lo(D_80103AB0)($t6)
/* 217A0 80020BA0 3C017000 */  lui        $at, 0x7000
/* 217A4 80020BA4 34210008 */  ori        $at, $at, 8
/* 217A8 80020BA8 01C17825 */  or         $t7, $t6, $at
/* 217AC 80020BAC 3C018010 */  lui        $at, %hi(D_80103AB0)
/* 217B0 80020BB0 0C020D15 */  jal        func_80083454
/* 217B4 80020BB4 AC2F3AB0 */   sw        $t7, %lo(D_80103AB0)($at)
/* 217B8 80020BB8 3C06800D */  lui        $a2, %hi(D_800CA254)
/* 217BC 80020BBC 24C6A254 */  addiu      $a2, $a2, %lo(D_800CA254)
/* 217C0 80020BC0 24040004 */  addiu      $a0, $zero, 4
/* 217C4 80020BC4 00002825 */  or         $a1, $zero, $zero
/* 217C8 80020BC8 0C020DA8 */  jal        func_800836A0
/* 217CC 80020BCC 24070001 */   addiu     $a3, $zero, 1
/* 217D0 80020BD0 3C06800D */  lui        $a2, %hi(D_800CA26C)
/* 217D4 80020BD4 24C6A26C */  addiu      $a2, $a2, %lo(D_800CA26C)
/* 217D8 80020BD8 24040005 */  addiu      $a0, $zero, 5
/* 217DC 80020BDC 24050002 */  addiu      $a1, $zero, 2
/* 217E0 80020BE0 0C020DA8 */  jal        func_800836A0
/* 217E4 80020BE4 00003825 */   or        $a3, $zero, $zero
/* 217E8 80020BE8 3C06800D */  lui        $a2, %hi(D_800CA280)
/* 217EC 80020BEC 24C6A280 */  addiu      $a2, $a2, %lo(D_800CA280)
/* 217F0 80020BF0 24040005 */  addiu      $a0, $zero, 5
/* 217F4 80020BF4 24050003 */  addiu      $a1, $zero, 3
/* 217F8 80020BF8 0C020DA8 */  jal        func_800836A0
/* 217FC 80020BFC 00003825 */   or        $a3, $zero, $zero
/* 21800 80020C00 0C0080D3 */  jal        func_8002034C
/* 21804 80020C04 00000000 */   nop
/* 21808 80020C08 0C008177 */  jal        RedGem_PrintPause
/* 2180C 80020C0C 00000000 */   nop
/* 21810 80020C10 0C0081F7 */  jal        YellowGem_printProgress
/* 21814 80020C14 00000000 */   nop
/* 21818 80020C18 3C05800E */  lui        $a1, %hi(D_800E13DC)
/* 2181C 80020C1C 24180401 */  addiu      $t8, $zero, 0x401
/* 21820 80020C20 AFB80010 */  sw         $t8, 0x10($sp)
/* 21824 80020C24 24A513DC */  addiu      $a1, $a1, %lo(D_800E13DC)
/* 21828 80020C28 240400CD */  addiu      $a0, $zero, 0xcd
/* 2182C 80020C2C 3406FFA8 */  ori        $a2, $zero, 0xffa8
/* 21830 80020C30 0C009D44 */  jal        func_80027510
/* 21834 80020C34 2407000C */   addiu     $a3, $zero, 0xc
/* 21838 80020C38 3C198010 */  lui        $t9, %hi(D_80103C48)
/* 2183C 80020C3C 8F393C48 */  lw         $t9, %lo(D_80103C48)($t9)
/* 21840 80020C40 3C018010 */  lui        $at, %hi(D_80103C48)
/* 21844 80020C44 37280008 */  ori        $t0, $t9, 8
/* 21848 80020C48 AC283C48 */  sw         $t0, %lo(D_80103C48)($at)
/* 2184C 80020C4C 3C098010 */  lui        $t1, %hi(D_80103C5C)
/* 21850 80020C50 95293C5C */  lhu        $t1, %lo(D_80103C5C)($t1)
/* 21854 80020C54 3C018010 */  lui        $at, %hi(D_80103C5C)
/* 21858 80020C58 352A0240 */  ori        $t2, $t1, 0x240
/* 2185C 80020C5C A42A3C5C */  sh         $t2, %lo(D_80103C5C)($at)
/* 21860 80020C60 3C0B800E */  lui        $t3, %hi(Data_RedGem)
/* 21864 80020C64 256B88B8 */  addiu      $t3, $t3, %lo(Data_RedGem)
/* 21868 80020C68 3C018010 */  lui        $at, %hi(D_80103D54)
/* 2186C 80020C6C 3C05800E */  lui        $a1, %hi(D_800E13DC)
/* 21870 80020C70 240C0401 */  addiu      $t4, $zero, 0x401
/* 21874 80020C74 AC2B3D54 */  sw         $t3, %lo(D_80103D54)($at)
/* 21878 80020C78 AFAC0010 */  sw         $t4, 0x10($sp)
/* 2187C 80020C7C 24A513DC */  addiu      $a1, $a1, %lo(D_800E13DC)
/* 21880 80020C80 240400CE */  addiu      $a0, $zero, 0xce
/* 21884 80020C84 24060008 */  addiu      $a2, $zero, 8
/* 21888 80020C88 0C009D44 */  jal        func_80027510
/* 2188C 80020C8C 2407000C */   addiu     $a3, $zero, 0xc
/* 21890 80020C90 3C0D8010 */  lui        $t5, %hi(D_80103DE0)
/* 21894 80020C94 8DAD3DE0 */  lw         $t5, %lo(D_80103DE0)($t5)
/* 21898 80020C98 3C018010 */  lui        $at, %hi(D_80103DE0)
/* 2189C 80020C9C 35AE0008 */  ori        $t6, $t5, 8
/* 218A0 80020CA0 AC2E3DE0 */  sw         $t6, %lo(D_80103DE0)($at)
/* 218A4 80020CA4 3C0F8010 */  lui        $t7, %hi(D_80103DF4)
/* 218A8 80020CA8 95EF3DF4 */  lhu        $t7, %lo(D_80103DF4)($t7)
/* 218AC 80020CAC 3C018010 */  lui        $at, %hi(D_80103DF4)
/* 218B0 80020CB0 35F80240 */  ori        $t8, $t7, 0x240
/* 218B4 80020CB4 A4383DF4 */  sh         $t8, %lo(D_80103DF4)($at)
/* 218B8 80020CB8 3C19800E */  lui        $t9, %hi(Data_YellowGem)
/* 218BC 80020CBC 27398C78 */  addiu      $t9, $t9, %lo(Data_YellowGem)
/* 218C0 80020CC0 3C018010 */  lui        $at, %hi(D_80103EEC)
/* 218C4 80020CC4 3C05800E */  lui        $a1, %hi(D_800E13FC)
/* 218C8 80020CC8 24080401 */  addiu      $t0, $zero, 0x401
/* 218CC 80020CCC AC393EEC */  sw         $t9, %lo(D_80103EEC)($at)
/* 218D0 80020CD0 AFA80010 */  sw         $t0, 0x10($sp)
/* 218D4 80020CD4 24A513FC */  addiu      $a1, $a1, %lo(D_800E13FC)
/* 218D8 80020CD8 240400CF */  addiu      $a0, $zero, 0xcf
/* 218DC 80020CDC 3406FFC4 */  ori        $a2, $zero, 0xffc4
/* 218E0 80020CE0 0C009D44 */  jal        func_80027510
/* 218E4 80020CE4 3407FFF8 */   ori       $a3, $zero, 0xfff8
/* 218E8 80020CE8 3C098010 */  lui        $t1, %hi(D_80103F78)
/* 218EC 80020CEC 8D293F78 */  lw         $t1, %lo(D_80103F78)($t1)
/* 218F0 80020CF0 3C018010 */  lui        $at, %hi(D_80103F78)
/* 218F4 80020CF4 352A0008 */  ori        $t2, $t1, 8
/* 218F8 80020CF8 AC2A3F78 */  sw         $t2, %lo(D_80103F78)($at)
/* 218FC 80020CFC 3C0B8010 */  lui        $t3, %hi(D_80103F8C)
/* 21900 80020D00 956B3F8C */  lhu        $t3, %lo(D_80103F8C)($t3)
/* 21904 80020D04 3C018010 */  lui        $at, %hi(D_80103F8C)
/* 21908 80020D08 356C0040 */  ori        $t4, $t3, 0x40
/* 2190C 80020D0C A42C3F8C */  sh         $t4, %lo(D_80103F8C)($at)
/* 21910 80020D10 3C01800C */  lui        $at, %hi(gGameSubState)
/* 21914 80020D14 240D0010 */  addiu      $t5, $zero, 0x10
/* 21918 80020D18 1000009E */  b          L80020F94_21B94
/* 2191C 80020D1C A42DE4F4 */   sh        $t5, %lo(gGameSubState)($at)
.L80020D20:
/* 21920 80020D20 85CE3480 */  lh         $t6, 0x3480($t6)
/* 21924 80020D24 3C188010 */  lui        $t8, %hi(D_80103616)
/* 21928 80020D28 25CFFFF8 */  addiu      $t7, $t6, -8
/* 2192C 80020D2C A42F3480 */  sh         $t7, 0x3480($at)
/* 21930 80020D30 87183616 */  lh         $t8, %lo(D_80103616)($t8)
/* 21934 80020D34 3C018010 */  lui        $at, %hi(D_80103616)
/* 21938 80020D38 27190008 */  addiu      $t9, $t8, 8
/* 2193C 80020D3C A4393616 */  sh         $t9, %lo(D_80103616)($at)
/* 21940 80020D40 3C088010 */  lui        $t0, %hi(D_801037AA)
/* 21944 80020D44 850837AA */  lh         $t0, %lo(D_801037AA)($t0)
/* 21948 80020D48 3C018010 */  lui        $at, %hi(D_801037AA)
/* 2194C 80020D4C 2509FFF4 */  addiu      $t1, $t0, -0xc
/* 21950 80020D50 A42937AA */  sh         $t1, %lo(D_801037AA)($at)
/* 21954 80020D54 3C0A8010 */  lui        $t2, %hi(D_80103944)
/* 21958 80020D58 854A3944 */  lh         $t2, %lo(D_80103944)($t2)
/* 2195C 80020D5C 3C018010 */  lui        $at, %hi(D_80103944)
/* 21960 80020D60 254B000C */  addiu      $t3, $t2, 0xc
/* 21964 80020D64 1000008B */  b          L80020F94_21B94
/* 21968 80020D68 A42B3944 */   sh        $t3, %lo(D_80103944)($at)
glabel L80020D6C_2196C
/* 2196C 80020D6C 3C0C8010 */  lui        $t4, %hi(D_80103F84)
/* 21970 80020D70 858C3F84 */  lh         $t4, %lo(D_80103F84)($t4)
/* 21974 80020D74 2401FFE4 */  addiu      $at, $zero, -0x1c
/* 21978 80020D78 15810029 */  bne        $t4, $at, .L80020E20
/* 2197C 80020D7C 3C0D800D */   lui       $t5, %hi(D_800D28E8)
/* 21980 80020D80 95AD28E8 */  lhu        $t5, %lo(D_800D28E8)($t5)
/* 21984 80020D84 00002025 */  or         $a0, $zero, $zero
/* 21988 80020D88 29A10002 */  slti       $at, $t5, 2
/* 2198C 80020D8C 14200024 */  bnez       $at, .L80020E20
/* 21990 80020D90 24070198 */   addiu     $a3, $zero, 0x198
/* 21994 80020D94 3C06800F */  lui        $a2, %hi(gActors)
/* 21998 80020D98 24C6F510 */  addiu      $a2, $a2, %lo(gActors)
.L80020D9C:
/* 2199C 80020D9C 00870019 */  multu      $a0, $a3
/* 219A0 80020DA0 24840001 */  addiu      $a0, $a0, 1
/* 219A4 80020DA4 3098FFFF */  andi       $t8, $a0, 0xffff
/* 219A8 80020DA8 2B0100C8 */  slti       $at, $t8, 0xc8
/* 219AC 80020DAC 03002025 */  or         $a0, $t8, $zero
/* 219B0 80020DB0 00007012 */  mflo       $t6
/* 219B4 80020DB4 00CE7821 */  addu       $t7, $a2, $t6
/* 219B8 80020DB8 1420FFF8 */  bnez       $at, .L80020D9C
/* 219BC 80020DBC ADE00080 */   sw        $zero, 0x80($t7)
/* 219C0 80020DC0 3C01800C */  lui        $at, %hi(D_800BE590)
/* 219C4 80020DC4 A420E590 */  sh         $zero, %lo(D_800BE590)($at)
/* 219C8 80020DC8 3C01800D */  lui        $at, 0x800d
/* 219CC 80020DCC 24190001 */  addiu      $t9, $zero, 1
/* 219D0 80020DD0 3C088018 */  lui        $t0, %hi(YellowGemBitfeildTemp)
/* 219D4 80020DD4 3C04800D */  lui        $a0, %hi(D_800D28E4)
/* 219D8 80020DD8 8D0881F0 */  lw         $t0, %lo(YellowGemBitfeildTemp)($t0)
/* 219DC 80020DDC 948428E4 */  lhu        $a0, %lo(D_800D28E4)($a0)
/* 219E0 80020DE0 A439BF40 */  sh         $t9, -0x40c0($at)
/* 219E4 80020DE4 3C018017 */  lui        $at, %hi(gYellowGemBitfeild)
/* 219E8 80020DE8 3C098018 */  lui        $t1, %hi(YellowGemBitfeildTemp+0x4)
/* 219EC 80020DEC 8D2981F4 */  lw         $t1, %lo(YellowGemBitfeildTemp+0x4)($t1)
/* 219F0 80020DF0 AC281B10 */  sw         $t0, %lo(gYellowGemBitfeild)($at)
/* 219F4 80020DF4 2484FFFF */  addiu      $a0, $a0, -1
/* 219F8 80020DF8 3C018017 */  lui        $at, %hi(gYellowGemBitfeild+0x4)
/* 219FC 80020DFC 308AFFFF */  andi       $t2, $a0, 0xffff
/* 21A00 80020E00 01402025 */  or         $a0, $t2, $zero
/* 21A04 80020E04 00002825 */  or         $a1, $zero, $zero
/* 21A08 80020E08 0C011886 */  jal        func_80046218
/* 21A0C 80020E0C AC291B14 */   sw        $t1, %lo(gYellowGemBitfeild+0x4)($at)
/* 21A10 80020E10 240B0023 */  addiu      $t3, $zero, 0x23
/* 21A14 80020E14 3C01800C */  lui        $at, %hi(gGameSubState)
/* 21A18 80020E18 1000005E */  b          L80020F94_21B94
/* 21A1C 80020E1C A42BE4F4 */   sh        $t3, %lo(gGameSubState)($at)
.L80020E20:
/* 21A20 80020E20 0C008211 */  jal        func_80020844
/* 21A24 80020E24 00000000 */   nop
/* 21A28 80020E28 3C02800C */  lui        $v0, %hi(gGameSubState)
/* 21A2C 80020E2C 2442E4F4 */  addiu      $v0, $v0, %lo(gGameSubState)
/* 21A30 80020E30 944C0000 */  lhu        $t4, ($v0)
/* 21A34 80020E34 00000000 */  nop
/* 21A38 80020E38 258D0001 */  addiu      $t5, $t4, 1
/* 21A3C 80020E3C 10000055 */  b          L80020F94_21B94
/* 21A40 80020E40 A44D0000 */   sh        $t5, ($v0)
glabel L80020E44_21A44
/* 21A44 80020E44 244E0001 */  addiu      $t6, $v0, 1
/* 21A48 80020E48 3C01800C */  lui        $at, %hi(gGameSubState)
/* 21A4C 80020E4C 10000051 */  b          L80020F94_21B94
/* 21A50 80020E50 A42EE4F4 */   sh        $t6, %lo(gGameSubState)($at)
glabel L80020E54_21A54
/* 21A54 80020E54 3C028010 */  lui        $v0, %hi(D_801033D0)
/* 21A58 80020E58 244233D0 */  addiu      $v0, $v0, %lo(D_801033D0)
/* 21A5C 80020E5C 844F03DA */  lh         $t7, 0x3da($v0)
/* 21A60 80020E60 24010090 */  addiu      $at, $zero, 0x90
/* 21A64 80020E64 15E10005 */  bne        $t7, $at, .L80020E7C
/* 21A68 80020E68 3C188010 */   lui       $t8, %hi(D_80103480)
/* 21A6C 80020E6C 0C008235 */  jal        func_800208D4
/* 21A70 80020E70 00000000 */   nop
/* 21A74 80020E74 10000047 */  b          L80020F94_21B94
/* 21A78 80020E78 00000000 */   nop
.L80020E7C:
/* 21A7C 80020E7C 87183480 */  lh         $t8, %lo(D_80103480)($t8)
/* 21A80 80020E80 3C018010 */  lui        $at, %hi(D_80103480)
/* 21A84 80020E84 27190008 */  addiu      $t9, $t8, 8
/* 21A88 80020E88 A4393480 */  sh         $t9, %lo(D_80103480)($at)
/* 21A8C 80020E8C 3C088010 */  lui        $t0, %hi(D_80103616)
/* 21A90 80020E90 85083616 */  lh         $t0, %lo(D_80103616)($t0)
/* 21A94 80020E94 3C018010 */  lui        $at, %hi(D_80103616)
/* 21A98 80020E98 2509FFF8 */  addiu      $t1, $t0, -8
/* 21A9C 80020E9C A4293616 */  sh         $t1, %lo(D_80103616)($at)
/* 21AA0 80020EA0 3C0A8010 */  lui        $t2, %hi(D_801037AA)
/* 21AA4 80020EA4 854A37AA */  lh         $t2, %lo(D_801037AA)($t2)
/* 21AA8 80020EA8 3C018010 */  lui        $at, %hi(D_801037AA)
/* 21AAC 80020EAC 254B000C */  addiu      $t3, $t2, 0xc
/* 21AB0 80020EB0 A42B37AA */  sh         $t3, %lo(D_801037AA)($at)
/* 21AB4 80020EB4 3C0C8010 */  lui        $t4, %hi(D_80103944)
/* 21AB8 80020EB8 858C3944 */  lh         $t4, %lo(D_80103944)($t4)
/* 21ABC 80020EBC 3C018010 */  lui        $at, %hi(D_80103944)
/* 21AC0 80020EC0 258DFFF4 */  addiu      $t5, $t4, -0xc
/* 21AC4 80020EC4 10000033 */  b          L80020F94_21B94
/* 21AC8 80020EC8 A42D3944 */   sh        $t5, %lo(D_80103944)($at)
glabel L80020ECC_21ACC
/* 21ACC 80020ECC 3C0E800C */  lui        $t6, %hi(gGameState)
/* 21AD0 80020ED0 95CEE4F0 */  lhu        $t6, %lo(gGameState)($t6)
/* 21AD4 80020ED4 24010006 */  addiu      $at, $zero, 6
/* 21AD8 80020ED8 15C1002E */  bne        $t6, $at, L80020F94_21B94
/* 21ADC 80020EDC 00000000 */   nop
/* 21AE0 80020EE0 0C011F33 */  jal        func_80047CCC
/* 21AE4 80020EE4 00000000 */   nop
/* 21AE8 80020EE8 1000002A */  b          L80020F94_21B94
/* 21AEC 80020EEC 00000000 */   nop
glabel L80020EF0_21AF0
/* 21AF0 80020EF0 3C028018 */  lui        $v0, %hi(gStageTimeReal)
/* 21AF4 80020EF4 244282B8 */  addiu      $v0, $v0, %lo(gStageTimeReal)
/* 21AF8 80020EF8 944F0000 */  lhu        $t7, ($v0)
/* 21AFC 80020EFC 00000000 */  nop
/* 21B00 80020F00 25F80001 */  addiu      $t8, $t7, 1
/* 21B04 80020F04 0C0080D3 */  jal        func_8002034C
/* 21B08 80020F08 A4580000 */   sh        $t8, ($v0)
/* 21B0C 80020F0C 3C02800C */  lui        $v0, %hi(gButtonPress)
/* 21B10 80020F10 3C19800C */  lui        $t9, %hi(gButton_DUp)
/* 21B14 80020F14 9739E504 */  lhu        $t9, %lo(gButton_DUp)($t9)
/* 21B18 80020F18 9442E4FC */  lhu        $v0, %lo(gButtonPress)($v0)
/* 21B1C 80020F1C 3C098010 */  lui        $t1, %hi(D_80103F84)
/* 21B20 80020F20 00594024 */  and        $t0, $v0, $t9
/* 21B24 80020F24 1100000C */  beqz       $t0, .L80020F58
/* 21B28 80020F28 00000000 */   nop
/* 21B2C 80020F2C 85293F84 */  lh         $t1, %lo(D_80103F84)($t1)
/* 21B30 80020F30 2401FFF8 */  addiu      $at, $zero, -8
/* 21B34 80020F34 11210008 */  beq        $t1, $at, .L80020F58
/* 21B38 80020F38 00000000 */   nop
/* 21B3C 80020F3C 0C000CD3 */  jal        SFX_Play_1
/* 21B40 80020F40 24040022 */   addiu     $a0, $zero, 0x22
/* 21B44 80020F44 3C02800C */  lui        $v0, %hi(gButtonPress)
/* 21B48 80020F48 240AFFF8 */  addiu      $t2, $zero, -8
/* 21B4C 80020F4C 3C018010 */  lui        $at, %hi(D_80103F84)
/* 21B50 80020F50 9442E4FC */  lhu        $v0, %lo(gButtonPress)($v0)
/* 21B54 80020F54 A42A3F84 */  sh         $t2, %lo(D_80103F84)($at)
.L80020F58:
/* 21B58 80020F58 3C0B800C */  lui        $t3, %hi(gButton_DDown)
/* 21B5C 80020F5C 956BE508 */  lhu        $t3, %lo(gButton_DDown)($t3)
/* 21B60 80020F60 3C0D8010 */  lui        $t5, %hi(D_80103F84)
/* 21B64 80020F64 004B6024 */  and        $t4, $v0, $t3
/* 21B68 80020F68 1180000A */  beqz       $t4, L80020F94_21B94
/* 21B6C 80020F6C 00000000 */   nop
/* 21B70 80020F70 85AD3F84 */  lh         $t5, %lo(D_80103F84)($t5)
/* 21B74 80020F74 2401FFE4 */  addiu      $at, $zero, -0x1c
/* 21B78 80020F78 11A10006 */  beq        $t5, $at, L80020F94_21B94
/* 21B7C 80020F7C 00000000 */   nop
/* 21B80 80020F80 0C000CD3 */  jal        SFX_Play_1
/* 21B84 80020F84 24040022 */   addiu     $a0, $zero, 0x22
/* 21B88 80020F88 240EFFE4 */  addiu      $t6, $zero, -0x1c
/* 21B8C 80020F8C 3C018010 */  lui        $at, %hi(D_80103F84)
/* 21B90 80020F90 A42E3F84 */  sh         $t6, %lo(D_80103F84)($at)
glabel L80020F94_21B94
/* 21B94 80020F94 3C06800F */  lui        $a2, %hi(gActors)
/* 21B98 80020F98 24C6F510 */  addiu      $a2, $a2, %lo(gActors)
/* 21B9C 80020F9C 24070198 */  addiu      $a3, $zero, 0x198
/* 21BA0 80020FA0 240400CD */  addiu      $a0, $zero, 0xcd
.L80020FA4:
/* 21BA4 80020FA4 00870019 */  multu      $a0, $a3
/* 21BA8 80020FA8 24840001 */  addiu      $a0, $a0, 1
/* 21BAC 80020FAC 308DFFFF */  andi       $t5, $a0, 0xffff
/* 21BB0 80020FB0 29A100D0 */  slti       $at, $t5, 0xd0
/* 21BB4 80020FB4 00007812 */  mflo       $t7
/* 21BB8 80020FB8 00CF1821 */  addu       $v1, $a2, $t7
/* 21BBC 80020FBC 8C780080 */  lw         $t8, 0x80($v1)
/* 21BC0 80020FC0 00000000 */  nop
/* 21BC4 80020FC4 13000015 */  beqz       $t8, .L8002101C
/* 21BC8 80020FC8 00000000 */   nop
/* 21BCC 80020FCC 847900E6 */  lh         $t9, 0xe6($v1)
/* 21BD0 80020FD0 8C6200E8 */  lw         $v0, 0xe8($v1)
/* 21BD4 80020FD4 2728FFFF */  addiu      $t0, $t9, -1
/* 21BD8 80020FD8 A46800E6 */  sh         $t0, 0xe6($v1)
/* 21BDC 80020FDC 846900E6 */  lh         $t1, 0xe6($v1)
/* 21BE0 80020FE0 00000000 */  nop
/* 21BE4 80020FE4 1520000D */  bnez       $t1, .L8002101C
/* 21BE8 80020FE8 00000000 */   nop
/* 21BEC 80020FEC 844A0000 */  lh         $t2, ($v0)
/* 21BF0 80020FF0 24420004 */  addiu      $v0, $v0, 4
/* 21BF4 80020FF4 A46A0084 */  sh         $t2, 0x84($v1)
/* 21BF8 80020FF8 844BFFFE */  lh         $t3, -2($v0)
/* 21BFC 80020FFC 00000000 */  nop
/* 21C00 80021000 A46B00E6 */  sh         $t3, 0xe6($v1)
/* 21C04 80021004 84450000 */  lh         $a1, ($v0)
/* 21C08 80021008 00000000 */  nop
/* 21C0C 8002100C 04A10002 */  bgez       $a1, .L80021018
/* 21C10 80021010 00056040 */   sll       $t4, $a1, 1
/* 21C14 80021014 004C1021 */  addu       $v0, $v0, $t4
.L80021018:
/* 21C18 80021018 AC6200E8 */  sw         $v0, 0xe8($v1)
.L8002101C:
/* 21C1C 8002101C 1420FFE1 */  bnez       $at, .L80020FA4
/* 21C20 80021020 01A02025 */   or        $a0, $t5, $zero
/* 21C24 80021024 8FBF001C */  lw         $ra, 0x1c($sp)
/* 21C28 80021028 27BD0020 */  addiu      $sp, $sp, 0x20
/* 21C2C 8002102C 03E00008 */  jr         $ra
/* 21C30 80021030 00000000 */   nop
