glabel func_80021098
/* 21C98 80021098 240E0001 */  addiu      $t6, $zero, 1
/* 21C9C 8002109C 3C01800C */  lui        $at, %hi(D_800BE4EC)
/* 21CA0 800210A0 A42EE4EC */  sh         $t6, %lo(D_800BE4EC)($at)
/* 21CA4 800210A4 3C05800D */  lui        $a1, %hi(D_800CA244)
/* 21CA8 800210A8 3C01800C */  lui        $at, %hi(gGameState)
/* 21CAC 800210AC 240F0006 */  addiu      $t7, $zero, 6
/* 21CB0 800210B0 24A5A244 */  addiu      $a1, $a1, %lo(D_800CA244)
/* 21CB4 800210B4 A42FE4F0 */  sh         $t7, %lo(gGameState)($at)
/* 21CB8 800210B8 94B80000 */  lhu        $t8, ($a1)
/* 21CBC 800210BC 3C08800C */  lui        $t0, %hi(gGameSubState)
/* 21CC0 800210C0 2508E4F4 */  addiu      $t0, $t0, %lo(gGameSubState)
/* 21CC4 800210C4 2719FFFF */  addiu      $t9, $t8, -1
/* 21CC8 800210C8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 21CCC 800210CC 95070000 */  lhu        $a3, ($t0)
/* 21CD0 800210D0 3329FFFF */  andi       $t1, $t9, 0xffff
/* 21CD4 800210D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 21CD8 800210D8 A5000000 */  sh         $zero, ($t0)
/* 21CDC 800210DC 1520001D */  bnez       $t1, .L80021154
/* 21CE0 800210E0 A4B90000 */   sh        $t9, ($a1)
/* 21CE4 800210E4 3C02800D */  lui        $v0, %hi(D_800CA23C)
/* 21CE8 800210E8 2442A23C */  addiu      $v0, $v0, %lo(D_800CA23C)
/* 21CEC 800210EC 944A0000 */  lhu        $t2, ($v0)
/* 21CF0 800210F0 3C0C800D */  lui        $t4, %hi(AttractModeIndex)
/* 21CF4 800210F4 254B0001 */  addiu      $t3, $t2, 1
/* 21CF8 800210F8 A44B0000 */  sh         $t3, ($v0)
/* 21CFC 800210FC 958CA238 */  lhu        $t4, %lo(AttractModeIndex)($t4)
/* 21D00 80021100 3C04800D */  lui        $a0, %hi(D_800CBDFC)
/* 21D04 80021104 000C6880 */  sll        $t5, $t4, 2
/* 21D08 80021108 008D2021 */  addu       $a0, $a0, $t5
/* 21D0C 8002110C 8C84BDFC */  lw         $a0, %lo(D_800CBDFC)($a0)
/* 21D10 80021110 3163FFFF */  andi       $v1, $t3, 0xffff
/* 21D14 80021114 00037040 */  sll        $t6, $v1, 1
/* 21D18 80021118 008E7821 */  addu       $t7, $a0, $t6
/* 21D1C 8002111C 95F90000 */  lhu        $t9, ($t7)
/* 21D20 80021120 3C06800C */  lui        $a2, %hi(gButtonHold)
/* 21D24 80021124 24C6E4F8 */  addiu      $a2, $a2, %lo(gButtonHold)
/* 21D28 80021128 24690001 */  addiu      $t1, $v1, 1
/* 21D2C 8002112C 3C01800D */  lui        $at, %hi(D_800CA240)
/* 21D30 80021130 312AFFFF */  andi       $t2, $t1, 0xffff
/* 21D34 80021134 A4D90000 */  sh         $t9, ($a2)
/* 21D38 80021138 000A5840 */  sll        $t3, $t2, 1
/* 21D3C 8002113C A439A240 */  sh         $t9, %lo(D_800CA240)($at)
/* 21D40 80021140 A4490000 */  sh         $t1, ($v0)
/* 21D44 80021144 008B6021 */  addu       $t4, $a0, $t3
/* 21D48 80021148 958D0000 */  lhu        $t5, ($t4)
/* 21D4C 8002114C 10000006 */  b          .L80021168
/* 21D50 80021150 A4AD0000 */   sh        $t5, ($a1)
.L80021154:
/* 21D54 80021154 3C0E800D */  lui        $t6, %hi(D_800CA240)
/* 21D58 80021158 95CEA240 */  lhu        $t6, %lo(D_800CA240)($t6)
/* 21D5C 8002115C 3C06800C */  lui        $a2, %hi(gButtonHold)
/* 21D60 80021160 24C6E4F8 */  addiu      $a2, $a2, %lo(gButtonHold)
/* 21D64 80021164 A4CE0000 */  sh         $t6, ($a2)
.L80021168:
/* 21D68 80021168 3C05800D */  lui        $a1, %hi(D_800CA250)
/* 21D6C 8002116C 24A5A250 */  addiu      $a1, $a1, %lo(D_800CA250)
/* 21D70 80021170 94AF0000 */  lhu        $t7, ($a1)
/* 21D74 80021174 3C02800D */  lui        $v0, %hi(D_800CA248)
/* 21D78 80021178 25F8FFFF */  addiu      $t8, $t7, -1
/* 21D7C 8002117C 3319FFFF */  andi       $t9, $t8, 0xffff
/* 21D80 80021180 17200021 */  bnez       $t9, .L80021208
/* 21D84 80021184 A4B80000 */   sh        $t8, ($a1)
/* 21D88 80021188 2442A248 */  addiu      $v0, $v0, %lo(D_800CA248)
/* 21D8C 8002118C 94490000 */  lhu        $t1, ($v0)
/* 21D90 80021190 3C0B800D */  lui        $t3, %hi(AttractModeIndex)
/* 21D94 80021194 252A0001 */  addiu      $t2, $t1, 1
/* 21D98 80021198 A44A0000 */  sh         $t2, ($v0)
/* 21D9C 8002119C 956BA238 */  lhu        $t3, %lo(AttractModeIndex)($t3)
/* 21DA0 800211A0 3C04800D */  lui        $a0, %hi(D_800CBE0C)
/* 21DA4 800211A4 000B6080 */  sll        $t4, $t3, 2
/* 21DA8 800211A8 008C2021 */  addu       $a0, $a0, $t4
/* 21DAC 800211AC 8C84BE0C */  lw         $a0, %lo(D_800CBE0C)($a0)
/* 21DB0 800211B0 3C06800C */  lui        $a2, %hi(gButtonPress)
/* 21DB4 800211B4 3143FFFF */  andi       $v1, $t2, 0xffff
/* 21DB8 800211B8 24C6E4FC */  addiu      $a2, $a2, %lo(gButtonPress)
/* 21DBC 800211BC 0003C040 */  sll        $t8, $v1, 1
/* 21DC0 800211C0 3C0E800C */  lui        $t6, %hi(gButton_Start)
/* 21DC4 800211C4 95CEE500 */  lhu        $t6, %lo(gButton_Start)($t6)
/* 21DC8 800211C8 94CD0000 */  lhu        $t5, ($a2)
/* 21DCC 800211CC 0098C821 */  addu       $t9, $a0, $t8
/* 21DD0 800211D0 97290000 */  lhu        $t1, ($t9)
/* 21DD4 800211D4 01AE7824 */  and        $t7, $t5, $t6
/* 21DD8 800211D8 246C0001 */  addiu      $t4, $v1, 1
/* 21DDC 800211DC 012F5825 */  or         $t3, $t1, $t7
/* 21DE0 800211E0 A4CB0000 */  sh         $t3, ($a2)
/* 21DE4 800211E4 3C01800D */  lui        $at, %hi(D_800CA24C)
/* 21DE8 800211E8 318DFFFF */  andi       $t5, $t4, 0xffff
/* 21DEC 800211EC A42BA24C */  sh         $t3, %lo(D_800CA24C)($at)
/* 21DF0 800211F0 000D7040 */  sll        $t6, $t5, 1
/* 21DF4 800211F4 A44C0000 */  sh         $t4, ($v0)
/* 21DF8 800211F8 008EC021 */  addu       $t8, $a0, $t6
/* 21DFC 800211FC 97190000 */  lhu        $t9, ($t8)
/* 21E00 80021200 1000000B */  b          .L80021230
/* 21E04 80021204 A4B90000 */   sh        $t9, ($a1)
.L80021208:
/* 21E08 80021208 3C06800C */  lui        $a2, %hi(gButtonPress)
/* 21E0C 8002120C 24C6E4FC */  addiu      $a2, $a2, %lo(gButtonPress)
/* 21E10 80021210 3C0F800C */  lui        $t7, %hi(gButton_Start)
/* 21E14 80021214 95EFE500 */  lhu        $t7, %lo(gButton_Start)($t7)
/* 21E18 80021218 94C90000 */  lhu        $t1, ($a2)
/* 21E1C 8002121C 3C0B800D */  lui        $t3, %hi(D_800CA24C)
/* 21E20 80021220 956BA24C */  lhu        $t3, %lo(D_800CA24C)($t3)
/* 21E24 80021224 012F5024 */  and        $t2, $t1, $t7
/* 21E28 80021228 016A6025 */  or         $t4, $t3, $t2
/* 21E2C 8002122C A4CC0000 */  sh         $t4, ($a2)
.L80021230:
/* 21E30 80021230 0C00840D */  jal        GamePlay_Tick
/* 21E34 80021234 A7A7001E */   sh        $a3, 0x1e($sp)
/* 21E38 80021238 3C028010 */  lui        $v0, %hi(D_80104098)
/* 21E3C 8002123C 24424098 */  addiu      $v0, $v0, %lo(D_80104098)
/* 21E40 80021240 97A7001E */  lhu        $a3, 0x1e($sp)
/* 21E44 80021244 8FBF0014 */  lw         $ra, 0x14($sp)
/* 21E48 80021248 3C08800C */  lui        $t0, %hi(gGameSubState)
/* 21E4C 8002124C A4402880 */  sh         $zero, 0x2880($v0)
/* 21E50 80021250 A4402920 */  sh         $zero, 0x2920($v0)
/* 21E54 80021254 240D000A */  addiu      $t5, $zero, 0xa
/* 21E58 80021258 3C01800C */  lui        $at, %hi(gGameState)
/* 21E5C 8002125C 2508E4F4 */  addiu      $t0, $t0, %lo(gGameSubState)
/* 21E60 80021260 A42DE4F0 */  sh         $t5, %lo(gGameState)($at)
/* 21E64 80021264 27BD0020 */  addiu      $sp, $sp, 0x20
/* 21E68 80021268 03E00008 */  jr         $ra
/* 21E6C 8002126C A5070000 */   sh        $a3, ($t0)
