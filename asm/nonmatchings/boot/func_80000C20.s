glabel func_80000C20
/* 1820 80000C20 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1824 80000C24 AFBF003C */  sw         $ra, 0x3c($sp)
/* 1828 80000C28 AFBE0038 */  sw         $fp, 0x38($sp)
/* 182C 80000C2C AFB70034 */  sw         $s7, 0x34($sp)
/* 1830 80000C30 AFB60030 */  sw         $s6, 0x30($sp)
/* 1834 80000C34 AFB5002C */  sw         $s5, 0x2c($sp)
/* 1838 80000C38 AFB40028 */  sw         $s4, 0x28($sp)
/* 183C 80000C3C AFB30024 */  sw         $s3, 0x24($sp)
/* 1840 80000C40 AFB20020 */  sw         $s2, 0x20($sp)
/* 1844 80000C44 AFB1001C */  sw         $s1, 0x1c($sp)
/* 1848 80000C48 AFB00018 */  sw         $s0, 0x18($sp)
/* 184C 80000C4C 0C0006CE */  jal        func_80001B38
/* 1850 80000C50 AFA40040 */   sw        $a0, 0x40($sp)
/* 1854 80000C54 3C048013 */  lui        $a0, %hi(D_8012ABA8)
/* 1858 80000C58 3C058013 */  lui        $a1, %hi(D_8012AC68)
/* 185C 80000C5C 24A5AC68 */  addiu      $a1, $a1, %lo(D_8012AC68)
/* 1860 80000C60 2484ABA8 */  addiu      $a0, $a0, %lo(D_8012ABA8)
/* 1864 80000C64 0C026994 */  jal        osCreateMesgQueue
/* 1868 80000C68 24060001 */   addiu     $a2, $zero, 1
/* 186C 80000C6C 3C108013 */  lui        $s0, %hi(D_8012ABD8)
/* 1870 80000C70 2610ABD8 */  addiu      $s0, $s0, %lo(D_8012ABD8)
/* 1874 80000C74 3C058013 */  lui        $a1, %hi(D_8012AC70)
/* 1878 80000C78 24A5AC70 */  addiu      $a1, $a1, %lo(D_8012AC70)
/* 187C 80000C7C 02002025 */  or         $a0, $s0, $zero
/* 1880 80000C80 0C026994 */  jal        osCreateMesgQueue
/* 1884 80000C84 24060001 */   addiu     $a2, $zero, 1
/* 1888 80000C88 3C1E8013 */  lui        $fp, %hi(D_8012AC80)
/* 188C 80000C8C 27DEAC80 */  addiu      $fp, $fp, %lo(D_8012AC80)
/* 1890 80000C90 8FC60000 */  lw         $a2, ($fp)
/* 1894 80000C94 24040004 */  addiu      $a0, $zero, 4
/* 1898 80000C98 0C0269BC */  jal        osSetEventMesg
/* 189C 80000C9C 02002825 */   or        $a1, $s0, $zero
/* 18A0 80000CA0 0C00082F */  jal        func_800020BC
/* 18A4 80000CA4 00000000 */   nop
/* 18A8 80000CA8 3C048013 */  lui        $a0, %hi(D_8012ABF0)
/* 18AC 80000CAC 3C058013 */  lui        $a1, %hi(D_8012AC74)
/* 18B0 80000CB0 24A5AC74 */  addiu      $a1, $a1, %lo(D_8012AC74)
/* 18B4 80000CB4 2484ABF0 */  addiu      $a0, $a0, %lo(D_8012ABF0)
/* 18B8 80000CB8 0C026994 */  jal        osCreateMesgQueue
/* 18BC 80000CBC 24060001 */   addiu     $a2, $zero, 1
/* 18C0 80000CC0 3C058013 */  lui        $a1, %hi(D_8012ABF0)
/* 18C4 80000CC4 8FC60000 */  lw         $a2, ($fp)
/* 18C8 80000CC8 24A5ABF0 */  addiu      $a1, $a1, %lo(D_8012ABF0)
/* 18CC 80000CCC 0C0269BC */  jal        osSetEventMesg
/* 18D0 80000CD0 24040009 */   addiu     $a0, $zero, 9
/* 18D4 80000CD4 3C138013 */  lui        $s3, %hi(D_8012ABC0)
/* 18D8 80000CD8 2673ABC0 */  addiu      $s3, $s3, %lo(D_8012ABC0)
/* 18DC 80000CDC 3C058013 */  lui        $a1, %hi(D_8012AC6C)
/* 18E0 80000CE0 24A5AC6C */  addiu      $a1, $a1, %lo(D_8012AC6C)
/* 18E4 80000CE4 02602025 */  or         $a0, $s3, $zero
/* 18E8 80000CE8 0C026994 */  jal        osCreateMesgQueue
/* 18EC 80000CEC 24060001 */   addiu     $a2, $zero, 1
/* 18F0 80000CF0 0C0269E4 */  jal        osViSetSpecialFeatures
/* 18F4 80000CF4 2404000A */   addiu     $a0, $zero, 0xa
/* 18F8 80000CF8 8FC50000 */  lw         $a1, ($fp)
/* 18FC 80000CFC 02602025 */  or         $a0, $s3, $zero
/* 1900 80000D00 0C026A6C */  jal        osViSetEvent
/* 1904 80000D04 24060001 */   addiu     $a2, $zero, 1
/* 1908 80000D08 0C000238 */  jal        func_800008E0
/* 190C 80000D0C 00000000 */   nop
/* 1910 80000D10 0C008B44 */  jal        func_80022D10
/* 1914 80000D14 00000000 */   nop
/* 1918 80000D18 3C11800C */  lui        $s1, %hi(D_800BE700)
/* 191C 80000D1C 2631E700 */  addiu      $s1, $s1, %lo(D_800BE700)
/* 1920 80000D20 96240000 */  lhu        $a0, ($s1)
/* 1924 80000D24 0C0002A1 */  jal        func_80000A84
/* 1928 80000D28 00000000 */   nop
/* 192C 80000D2C 0C000426 */  jal        Input_GetFirstController
/* 1930 80000D30 00000000 */   nop
/* 1934 80000D34 3C018013 */  lui        $at, 0x8013
/* 1938 80000D38 3C12803D */  lui        $s2, 0x803d
/* 193C 80000D3C 3C168013 */  lui        $s6, 0x8013
/* 1940 80000D40 3C15800C */  lui        $s5, 0x800c
/* 1944 80000D44 3C148013 */  lui        $s4, %hi(D_8012ADA0)
/* 1948 80000D48 3C108013 */  lui        $s0, %hi(D_8012AC84)
/* 194C 80000D4C AC2270C0 */  sw         $v0, 0x70c0($at)
/* 1950 80000D50 3652A800 */  ori        $s2, $s2, 0xa800
/* 1954 80000D54 2610AC84 */  addiu      $s0, $s0, %lo(D_8012AC84)
/* 1958 80000D58 2694ADA0 */  addiu      $s4, $s4, %lo(D_8012ADA0)
/* 195C 80000D5C 26B5A9E0 */  addiu      $s5, $s5, -0x5620
/* 1960 80000D60 26D6ADC0 */  addiu      $s6, $s6, -0x5240
/* 1964 80000D64 24176180 */  addiu      $s7, $zero, 0x6180
.L80000D68:
/* 1968 80000D68 0C026AA0 */  jal        osContStartReadData
/* 196C 80000D6C 02802025 */   or        $a0, $s4, $zero
/* 1970 80000D70 02802025 */  or         $a0, $s4, $zero
/* 1974 80000D74 00002825 */  or         $a1, $zero, $zero
/* 1978 80000D78 0C026B44 */  jal        osRecvMesg
/* 197C 80000D7C 24060001 */   addiu     $a2, $zero, 1
/* 1980 80000D80 3C048013 */  lui        $a0, %hi(gConpadArrayB)
/* 1984 80000D84 0C026AD6 */  jal        osContGetReadData
/* 1988 80000D88 2484AD88 */   addiu     $a0, $a0, %lo(gConpadArrayB)
/* 198C 80000D8C 3C0E8013 */  lui        $t6, %hi(gPlayerControllerIndex)
/* 1990 80000D90 8DCE70C0 */  lw         $t6, %lo(gPlayerControllerIndex)($t6)
/* 1994 80000D94 2401FFFF */  addiu      $at, $zero, -1
/* 1998 80000D98 11C10003 */  beq        $t6, $at, .L80000DA8
/* 199C 80000D9C 3C048013 */   lui       $a0, %hi(D_8012AC08)
/* 19A0 80000DA0 0C026AA0 */  jal        osContStartReadData
/* 19A4 80000DA4 2484AC08 */   addiu     $a0, $a0, %lo(D_8012AC08)
.L80000DA8:
/* 19A8 80000DA8 8E180000 */  lw         $t8, ($s0)
/* 19AC 80000DAC 240F0001 */  addiu      $t7, $zero, 1
/* 19B0 80000DB0 AF0F0000 */  sw         $t7, ($t8)
/* 19B4 80000DB4 8E190000 */  lw         $t9, ($s0)
/* 19B8 80000DB8 3C09800C */  lui        $t1, %hi(gspFast3DTextStart)
/* 19BC 80000DBC AF200004 */  sw         $zero, 4($t9)
/* 19C0 80000DC0 8E080000 */  lw         $t0, ($s0)
/* 19C4 80000DC4 2529AAB0 */  addiu      $t1, $t1, %lo(gspFast3DTextStart)
/* 19C8 80000DC8 AD150008 */  sw         $s5, 8($t0)
/* 19CC 80000DCC 8E0B0000 */  lw         $t3, ($s0)
/* 19D0 80000DD0 01355023 */  subu       $t2, $t1, $s5
/* 19D4 80000DD4 AD6A000C */  sw         $t2, 0xc($t3)
/* 19D8 80000DD8 8E0D0000 */  lw         $t5, ($s0)
/* 19DC 80000DDC 3C0C800C */  lui        $t4, %hi(gspFast3DTextStart)
/* 19E0 80000DE0 258CAAB0 */  addiu      $t4, $t4, %lo(gspFast3DTextStart)
/* 19E4 80000DE4 ADAC0010 */  sw         $t4, 0x10($t5)
/* 19E8 80000DE8 8E0F0000 */  lw         $t7, ($s0)
/* 19EC 80000DEC 3C0E800F */  lui        $t6, %hi(D_800EEA10)
/* 19F0 80000DF0 25CEEA10 */  addiu      $t6, $t6, %lo(D_800EEA10)
/* 19F4 80000DF4 ADEE0018 */  sw         $t6, 0x18($t7)
/* 19F8 80000DF8 8E180000 */  lw         $t8, ($s0)
/* 19FC 80000DFC 24081000 */  addiu      $t0, $zero, 0x1000
/* 1A00 80000E00 AF000028 */  sw         $zero, 0x28($t8)
/* 1A04 80000E04 8E190000 */  lw         $t9, ($s0)
/* 1A08 80000E08 240A0800 */  addiu      $t2, $zero, 0x800
/* 1A0C 80000E0C AF20002C */  sw         $zero, 0x2c($t9)
/* 1A10 80000E10 8E090000 */  lw         $t1, ($s0)
/* 1A14 80000E14 3C0C8012 */  lui        $t4, %hi(D_8011D970)
/* 1A18 80000E18 AD280014 */  sw         $t0, 0x14($t1)
/* 1A1C 80000E1C 8E0B0000 */  lw         $t3, ($s0)
/* 1A20 80000E20 258CD970 */  addiu      $t4, $t4, %lo(D_8011D970)
/* 1A24 80000E24 AD6A001C */  sw         $t2, 0x1c($t3)
/* 1A28 80000E28 8E0D0000 */  lw         $t5, ($s0)
/* 1A2C 80000E2C 240E0400 */  addiu      $t6, $zero, 0x400
/* 1A30 80000E30 ADAC0020 */  sw         $t4, 0x20($t5)
/* 1A34 80000E34 8E0F0000 */  lw         $t7, ($s0)
/* 1A38 80000E38 3C0B8013 */  lui        $t3, 0x8013
/* 1A3C 80000E3C ADEE0024 */  sw         $t6, 0x24($t7)
/* 1A40 80000E40 96380000 */  lhu        $t8, ($s1)
/* 1A44 80000E44 8E0A0000 */  lw         $t2, ($s0)
/* 1A48 80000E48 03170019 */  multu      $t8, $s7
/* 1A4C 80000E4C 0000C812 */  mflo       $t9
/* 1A50 80000E50 02D94021 */  addu       $t0, $s6, $t9
/* 1A54 80000E54 25090180 */  addiu      $t1, $t0, 0x180
/* 1A58 80000E58 AD490030 */  sw         $t1, 0x30($t2)
/* 1A5C 80000E5C 962D0000 */  lhu        $t5, ($s1)
/* 1A60 80000E60 8D6BA670 */  lw         $t3, -0x5990($t3)
/* 1A64 80000E64 01B70019 */  multu      $t5, $s7
/* 1A68 80000E68 01766023 */  subu       $t4, $t3, $s6
/* 1A6C 80000E6C 8E0A0000 */  lw         $t2, ($s0)
/* 1A70 80000E70 3C0B8012 */  lui        $t3, %hi(D_8011DDF0)
/* 1A74 80000E74 256BDDF0 */  addiu      $t3, $t3, %lo(D_8011DDF0)
/* 1A78 80000E78 00007012 */  mflo       $t6
/* 1A7C 80000E7C 000E7823 */  negu       $t7, $t6
/* 1A80 80000E80 018FC021 */  addu       $t8, $t4, $t7
/* 1A84 80000E84 2719FE80 */  addiu      $t9, $t8, -0x180
/* 1A88 80000E88 001940C3 */  sra        $t0, $t9, 3
/* 1A8C 80000E8C 000848C0 */  sll        $t1, $t0, 3
/* 1A90 80000E90 AD490034 */  sw         $t1, 0x34($t2)
/* 1A94 80000E94 8E0D0000 */  lw         $t5, ($s0)
/* 1A98 80000E98 240E0DA0 */  addiu      $t6, $zero, 0xda0
/* 1A9C 80000E9C ADAB0038 */  sw         $t3, 0x38($t5)
/* 1AA0 80000EA0 8E0C0000 */  lw         $t4, ($s0)
/* 1AA4 80000EA4 0C026BA8 */  jal        osWritebackDCacheAll
/* 1AA8 80000EA8 AD8E003C */   sw        $t6, 0x3c($t4)
/* 1AAC 80000EAC 8E040000 */  lw         $a0, ($s0)
/* 1AB0 80000EB0 0C026C05 */  jal        osSpTaskLoad
/* 1AB4 80000EB4 00000000 */   nop
/* 1AB8 80000EB8 8E040000 */  lw         $a0, ($s0)
/* 1ABC 80000EBC 0C026CA5 */  jal        osSpTaskStartGo
/* 1AC0 80000EC0 00000000 */   nop
/* 1AC4 80000EC4 0C000845 */  jal        func_80002114
/* 1AC8 80000EC8 00000000 */   nop
/* 1ACC 80000ECC 0C000A34 */  jal        func_800028D0
/* 1AD0 80000ED0 00000000 */   nop
/* 1AD4 80000ED4 962F0000 */  lhu        $t7, ($s1)
/* 1AD8 80000ED8 24180001 */  addiu      $t8, $zero, 1
/* 1ADC 80000EDC 030FC823 */  subu       $t9, $t8, $t7
/* 1AE0 80000EE0 A6390000 */  sh         $t9, ($s1)
/* 1AE4 80000EE4 0C0002A1 */  jal        func_80000A84
/* 1AE8 80000EE8 3324FFFF */   andi      $a0, $t9, 0xffff
/* 1AEC 80000EEC 3C048013 */  lui        $a0, %hi(D_8012ABF0)
/* 1AF0 80000EF0 2484ABF0 */  addiu      $a0, $a0, %lo(D_8012ABF0)
/* 1AF4 80000EF4 00002825 */  or         $a1, $zero, $zero
/* 1AF8 80000EF8 0C026B44 */  jal        osRecvMesg
/* 1AFC 80000EFC 24060001 */   addiu     $a2, $zero, 1
/* 1B00 80000F00 0C000A7B */  jal        func_800029EC
/* 1B04 80000F04 00000000 */   nop
/* 1B08 80000F08 0C02639C */  jal        osViSwapBuffer
/* 1B0C 80000F0C 02402025 */   or        $a0, $s2, $zero
/* 1B10 80000F10 0C004226 */  jal        func_80010898
/* 1B14 80000F14 00000000 */   nop
/* 1B18 80000F18 8E680008 */  lw         $t0, 8($s3)
/* 1B1C 80000F1C 8E690010 */  lw         $t1, 0x10($s3)
/* 1B20 80000F20 00000000 */  nop
/* 1B24 80000F24 0109082A */  slt        $at, $t0, $t1
/* 1B28 80000F28 1420000C */  bnez       $at, .L80000F5C
/* 1B2C 80000F2C 02602025 */   or        $a0, $s3, $zero
/* 1B30 80000F30 0C000845 */  jal        func_80002114
/* 1B34 80000F34 00000000 */   nop
/* 1B38 80000F38 0C000A34 */  jal        func_800028D0
/* 1B3C 80000F3C 00000000 */   nop
/* 1B40 80000F40 02602025 */  or         $a0, $s3, $zero
/* 1B44 80000F44 03C02825 */  or         $a1, $fp, $zero
/* 1B48 80000F48 0C026B44 */  jal        osRecvMesg
/* 1B4C 80000F4C 24060001 */   addiu     $a2, $zero, 1
/* 1B50 80000F50 0C000A7B */  jal        func_800029EC
/* 1B54 80000F54 00000000 */   nop
/* 1B58 80000F58 02602025 */  or         $a0, $s3, $zero
.L80000F5C:
/* 1B5C 80000F5C 03C02825 */  or         $a1, $fp, $zero
/* 1B60 80000F60 0C026B44 */  jal        osRecvMesg
/* 1B64 80000F64 24060001 */   addiu     $a2, $zero, 1
/* 1B68 80000F68 962A0000 */  lhu        $t2, ($s1)
/* 1B6C 80000F6C 3C12803D */  lui        $s2, 0x803d
/* 1B70 80000F70 11400004 */  beqz       $t2, .L80000F84
/* 1B74 80000F74 3652A800 */   ori       $s2, $s2, 0xa800
/* 1B78 80000F78 3C12801D */  lui        $s2, 0x801d
/* 1B7C 80000F7C 10000001 */  b          .L80000F84
/* 1B80 80000F80 3652A800 */   ori       $s2, $s2, 0xa800
.L80000F84:
/* 1B84 80000F84 0C0003F8 */  jal        Input_Update
/* 1B88 80000F88 00000000 */   nop
/* 1B8C 80000F8C 1000FF76 */  b          .L80000D68
/* 1B90 80000F90 00000000 */   nop
/* 1B94 80000F94 00000000 */  nop
/* 1B98 80000F98 00000000 */  nop
/* 1B9C 80000F9C 00000000 */  nop
/* 1BA0 80000FA0 00000000 */  nop
/* 1BA4 80000FA4 00000000 */  nop
/* 1BA8 80000FA8 00000000 */  nop
/* 1BAC 80000FAC 00000000 */  nop
/* 1BB0 80000FB0 8FBF003C */  lw         $ra, 0x3c($sp)
/* 1BB4 80000FB4 8FB00018 */  lw         $s0, 0x18($sp)
/* 1BB8 80000FB8 8FB1001C */  lw         $s1, 0x1c($sp)
/* 1BBC 80000FBC 8FB20020 */  lw         $s2, 0x20($sp)
/* 1BC0 80000FC0 8FB30024 */  lw         $s3, 0x24($sp)
/* 1BC4 80000FC4 8FB40028 */  lw         $s4, 0x28($sp)
/* 1BC8 80000FC8 8FB5002C */  lw         $s5, 0x2c($sp)
/* 1BCC 80000FCC 8FB60030 */  lw         $s6, 0x30($sp)
/* 1BD0 80000FD0 8FB70034 */  lw         $s7, 0x34($sp)
/* 1BD4 80000FD4 8FBE0038 */  lw         $fp, 0x38($sp)
/* 1BD8 80000FD8 03E00008 */  jr         $ra
/* 1BDC 80000FDC 27BD0040 */   addiu     $sp, $sp, 0x40
