glabel func_80020024
/* 20C24 80020024 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 20C28 80020028 AFB00018 */  sw         $s0, 0x18($sp)
/* 20C2C 8002002C 3C108018 */  lui        $s0, %hi(D_801781E0)
/* 20C30 80020030 3C02800C */  lui        $v0, %hi(D_800BE4E0)
/* 20C34 80020034 3C038018 */  lui        $v1, %hi(D_801782B8)
/* 20C38 80020038 246382B8 */  addiu      $v1, $v1, %lo(D_801782B8)
/* 20C3C 8002003C 2442E4E0 */  addiu      $v0, $v0, %lo(D_800BE4E0)
/* 20C40 80020040 261081E0 */  addiu      $s0, $s0, %lo(D_801781E0)
/* 20C44 80020044 944E0000 */  lhu        $t6, ($v0)
/* 20C48 80020048 94780000 */  lhu        $t8, ($v1)
/* 20C4C 8002004C 96080000 */  lhu        $t0, ($s0)
/* 20C50 80020050 34018CA0 */  ori        $at, $zero, 0x8ca0
/* 20C54 80020054 25CF0001 */  addiu      $t7, $t6, 1
/* 20C58 80020058 27190001 */  addiu      $t9, $t8, 1
/* 20C5C 8002005C 0101082A */  slt        $at, $t0, $at
/* 20C60 80020060 AFBF002C */  sw         $ra, 0x2c($sp)
/* 20C64 80020064 AFB40028 */  sw         $s4, 0x28($sp)
/* 20C68 80020068 AFB30024 */  sw         $s3, 0x24($sp)
/* 20C6C 8002006C AFB20020 */  sw         $s2, 0x20($sp)
/* 20C70 80020070 AFB1001C */  sw         $s1, 0x1c($sp)
/* 20C74 80020074 A44F0000 */  sh         $t7, ($v0)
/* 20C78 80020078 10200014 */  beqz       $at, .L800200CC
/* 20C7C 8002007C A4790000 */   sh        $t9, ($v1)
/* 20C80 80020080 3C09800D */  lui        $t1, %hi(D_800D28E8)
/* 20C84 80020084 952928E8 */  lhu        $t1, %lo(D_800D28E8)($t1)
/* 20C88 80020088 00000000 */  nop
/* 20C8C 8002008C 29210002 */  slti       $at, $t1, 2
/* 20C90 80020090 1420000E */  bnez       $at, .L800200CC
/* 20C94 80020094 00000000 */   nop
/* 20C98 80020098 0C0177BF */  jal        func_8005DEFC
/* 20C9C 8002009C 00000000 */   nop
/* 20CA0 800200A0 1440000A */  bnez       $v0, .L800200CC
/* 20CA4 800200A4 3C0A800D */   lui       $t2, %hi(D_800D28E4)
/* 20CA8 800200A8 954A28E4 */  lhu        $t2, %lo(D_800D28E4)($t2)
/* 20CAC 800200AC 00000000 */  nop
/* 20CB0 800200B0 29410061 */  slti       $at, $t2, 0x61
/* 20CB4 800200B4 10200005 */  beqz       $at, .L800200CC
/* 20CB8 800200B8 00000000 */   nop
/* 20CBC 800200BC 960B0000 */  lhu        $t3, ($s0)
/* 20CC0 800200C0 00000000 */  nop
/* 20CC4 800200C4 256C0001 */  addiu      $t4, $t3, 1
/* 20CC8 800200C8 A60C0000 */  sh         $t4, ($s0)
.L800200CC:
/* 20CCC 800200CC 0C0048AC */  jal        func_800122B0
/* 20CD0 800200D0 00000000 */   nop
/* 20CD4 800200D4 3C10800C */  lui        $s0, %hi(D_800BE6AC)
/* 20CD8 800200D8 2610E6AC */  addiu      $s0, $s0, %lo(D_800BE6AC)
/* 20CDC 800200DC 960D0000 */  lhu        $t5, ($s0)
/* 20CE0 800200E0 3C07800C */  lui        $a3, %hi(D_800BE4FC)
/* 20CE4 800200E4 31AE0002 */  andi       $t6, $t5, 2
/* 20CE8 800200E8 11C0003B */  beqz       $t6, .L800201D8
/* 20CEC 800200EC 24E7E4FC */   addiu     $a3, $a3, %lo(D_800BE4FC)
/* 20CF0 800200F0 3C0F800C */  lui        $t7, %hi(D_800BE530)
/* 20CF4 800200F4 95EFE530 */  lhu        $t7, %lo(D_800BE530)($t7)
/* 20CF8 800200F8 94E40000 */  lhu        $a0, ($a3)
/* 20CFC 800200FC 3C08800C */  lui        $t0, 0x800c
/* 20D00 80020100 008FC024 */  and        $t8, $a0, $t7
/* 20D04 80020104 1300000B */  beqz       $t8, .L80020134
/* 20D08 80020108 3C0B800C */   lui       $t3, 0x800c
/* 20D0C 8002010C 3C06800C */  lui        $a2, %hi(D_800BE6B4)
/* 20D10 80020110 24C6E6B4 */  addiu      $a2, $a2, %lo(D_800BE6B4)
/* 20D14 80020114 94C20000 */  lhu        $v0, ($a2)
/* 20D18 80020118 24010001 */  addiu      $at, $zero, 1
/* 20D1C 8002011C 10410005 */  beq        $v0, $at, .L80020134
/* 20D20 80020120 3C058018 */   lui       $a1, %hi(D_801781DC)
/* 20D24 80020124 24A581DC */  addiu      $a1, $a1, %lo(D_801781DC)
/* 20D28 80020128 2459FFFF */  addiu      $t9, $v0, -1
/* 20D2C 8002012C A4D90000 */  sh         $t9, ($a2)
/* 20D30 80020130 A4A00000 */  sh         $zero, ($a1)
.L80020134:
/* 20D34 80020134 3C06800C */  lui        $a2, %hi(D_800BE6B4)
/* 20D38 80020138 9508E534 */  lhu        $t0, -0x1acc($t0)
/* 20D3C 8002013C 24C6E6B4 */  addiu      $a2, $a2, %lo(D_800BE6B4)
/* 20D40 80020140 94C20000 */  lhu        $v0, ($a2)
/* 20D44 80020144 3C058018 */  lui        $a1, %hi(D_801781DC)
/* 20D48 80020148 00884824 */  and        $t1, $a0, $t0
/* 20D4C 8002014C 24A581DC */  addiu      $a1, $a1, %lo(D_801781DC)
/* 20D50 80020150 11200008 */  beqz       $t1, .L80020174
/* 20D54 80020154 00401825 */   or        $v1, $v0, $zero
/* 20D58 80020158 24010032 */  addiu      $at, $zero, 0x32
/* 20D5C 8002015C 10610005 */  beq        $v1, $at, .L80020174
/* 20D60 80020160 00000000 */   nop
/* 20D64 80020164 244A0001 */  addiu      $t2, $v0, 1
/* 20D68 80020168 A4CA0000 */  sh         $t2, ($a2)
/* 20D6C 8002016C 3143FFFF */  andi       $v1, $t2, 0xffff
/* 20D70 80020170 A4A00000 */  sh         $zero, ($a1)
.L80020174:
/* 20D74 80020174 956BE4E4 */  lhu        $t3, -0x1b1c($t3)
/* 20D78 80020178 00000000 */  nop
/* 20D7C 8002017C 0163001A */  div        $zero, $t3, $v1
/* 20D80 80020180 14600002 */  bnez       $v1, .L8002018C
/* 20D84 80020184 00000000 */   nop
/* 20D88 80020188 0007000D */  break      7
.L8002018C:
/* 20D8C 8002018C 2401FFFF */   addiu     $at, $zero, -1
/* 20D90 80020190 14610004 */  bne        $v1, $at, .L800201A4
/* 20D94 80020194 3C018000 */   lui       $at, 0x8000
/* 20D98 80020198 15610002 */  bne        $t3, $at, .L800201A4
/* 20D9C 8002019C 00000000 */   nop
/* 20DA0 800201A0 0006000D */  break      6
.L800201A4:
/* 20DA4 800201A4 00006010 */   mfhi      $t4
/* 20DA8 800201A8 15800006 */  bnez       $t4, .L800201C4
/* 20DAC 800201AC 00000000 */   nop
/* 20DB0 800201B0 94AD0000 */  lhu        $t5, ($a1)
/* 20DB4 800201B4 A4A00000 */  sh         $zero, ($a1)
/* 20DB8 800201B8 008D7025 */  or         $t6, $a0, $t5
/* 20DBC 800201BC 10000006 */  b          .L800201D8
/* 20DC0 800201C0 A4EE0000 */   sh        $t6, ($a3)
.L800201C4:
/* 20DC4 800201C4 94AF0000 */  lhu        $t7, ($a1)
/* 20DC8 800201C8 00000000 */  nop
/* 20DCC 800201CC 01E4C025 */  or         $t8, $t7, $a0
/* 20DD0 800201D0 10000056 */  b          .L8002032C
/* 20DD4 800201D4 A4B80000 */   sh        $t8, ($a1)
.L800201D8:
/* 20DD8 800201D8 0C0094EC */  jal        func_800253B0
/* 20DDC 800201DC 00000000 */   nop
/* 20DE0 800201E0 0C007E23 */  jal        func_8001F88C
/* 20DE4 800201E4 00000000 */   nop
/* 20DE8 800201E8 0C0052BC */  jal        func_80014AF0
/* 20DEC 800201EC 00000000 */   nop
/* 20DF0 800201F0 0C005B2D */  jal        func_80016CB4
/* 20DF4 800201F4 00000000 */   nop
/* 20DF8 800201F8 0C004A0C */  jal        func_80012830
/* 20DFC 800201FC 00000000 */   nop
/* 20E00 80020200 0C005B65 */  jal        func_80016D94
/* 20E04 80020204 00000000 */   nop
/* 20E08 80020208 0C007B07 */  jal        func_8001EC1C
/* 20E0C 8002020C 00000000 */   nop
/* 20E10 80020210 0C00441F */  jal        func_8001107C
/* 20E14 80020214 00000000 */   nop
/* 20E18 80020218 3C19800D */  lui        $t9, %hi(D_800CA230)
/* 20E1C 8002021C 9739A230 */  lhu        $t9, %lo(D_800CA230)($t9)
/* 20E20 80020220 00000000 */  nop
/* 20E24 80020224 17200005 */  bnez       $t9, .L8002023C
/* 20E28 80020228 00000000 */   nop
/* 20E2C 8002022C 0C013B44 */  jal        func_8004ED10
/* 20E30 80020230 00002025 */   or        $a0, $zero, $zero
/* 20E34 80020234 0C02314A */  jal        func_8008C528
/* 20E38 80020238 24040041 */   addiu     $a0, $zero, 0x41
.L8002023C:
/* 20E3C 8002023C 0C007FCC */  jal        func_8001FF30
/* 20E40 80020240 00000000 */   nop
/* 20E44 80020244 0C00778C */  jal        func_8001DE30
/* 20E48 80020248 00000000 */   nop
/* 20E4C 8002024C 0C0232A4 */  jal        func_8008CA90
/* 20E50 80020250 00000000 */   nop
/* 20E54 80020254 0C005D47 */  jal        func_8001751C
/* 20E58 80020258 00000000 */   nop
/* 20E5C 8002025C 0C005311 */  jal        func_80014C44
/* 20E60 80020260 00000000 */   nop
/* 20E64 80020264 0C017229 */  jal        func_8005C8A4
/* 20E68 80020268 00000000 */   nop
/* 20E6C 8002026C 0C007FD4 */  jal        func_8001FF50
/* 20E70 80020270 00000000 */   nop
/* 20E74 80020274 0C017DB5 */  jal        func_8005F6D4
/* 20E78 80020278 00000000 */   nop
/* 20E7C 8002027C 0C00891C */  jal        func_80022470
/* 20E80 80020280 00000000 */   nop
/* 20E84 80020284 3C08800C */  lui        $t0, %hi(gGameState)
/* 20E88 80020288 9508E4F0 */  lhu        $t0, %lo(gGameState)($t0)
/* 20E8C 8002028C 24010006 */  addiu      $at, $zero, 6
/* 20E90 80020290 15010003 */  bne        $t0, $at, .L800202A0
/* 20E94 80020294 00000000 */   nop
/* 20E98 80020298 0C011F33 */  jal        func_80047CCC
/* 20E9C 8002029C 00000000 */   nop
.L800202A0:
/* 20EA0 800202A0 0C011F26 */  jal        func_80047C98
/* 20EA4 800202A4 00000000 */   nop
/* 20EA8 800202A8 96090000 */  lhu        $t1, ($s0)
/* 20EAC 800202AC 00000000 */  nop
/* 20EB0 800202B0 312A4000 */  andi       $t2, $t1, 0x4000
/* 20EB4 800202B4 1140001D */  beqz       $t2, .L8002032C
/* 20EB8 800202B8 3C12800F */   lui       $s2, %hi(D_800EF4F0)
/* 20EBC 800202BC 3C13800F */  lui        $s3, %hi(D_800EF508)
/* 20EC0 800202C0 3C11800F */  lui        $s1, %hi(D_800EF4F8)
/* 20EC4 800202C4 2631F4F8 */  addiu      $s1, $s1, %lo(D_800EF4F8)
/* 20EC8 800202C8 2673F508 */  addiu      $s3, $s3, %lo(D_800EF508)
/* 20ECC 800202CC 2652F4F0 */  addiu      $s2, $s2, %lo(D_800EF4F0)
/* 20ED0 800202D0 2410003C */  addiu      $s0, $zero, 0x3c
/* 20ED4 800202D4 24140030 */  addiu      $s4, $zero, 0x30
.L800202D8:
/* 20ED8 800202D8 92440000 */  lbu        $a0, ($s2)
/* 20EDC 800202DC 2405FF70 */  addiu      $a1, $zero, -0x90
/* 20EE0 800202E0 0C020F15 */  jal        func_80083C54
/* 20EE4 800202E4 02003025 */   or        $a2, $s0, $zero
/* 20EE8 800202E8 96640000 */  lhu        $a0, ($s3)
/* 20EEC 800202EC 2405FF70 */  addiu      $a1, $zero, -0x90
/* 20EF0 800202F0 02803025 */  or         $a2, $s4, $zero
/* 20EF4 800202F4 0C020E9D */  jal        func_80083A74
/* 20EF8 800202F8 2484FFDF */   addiu     $a0, $a0, -0x21
/* 20EFC 800202FC 86240000 */  lh         $a0, ($s1)
/* 20F00 80020300 2405FF98 */  addiu      $a1, $zero, -0x68
/* 20F04 80020304 0C020F15 */  jal        func_80083C54
/* 20F08 80020308 02003025 */   or        $a2, $s0, $zero
/* 20F0C 8002030C 3C0B800F */  lui        $t3, %hi(D_800EF500)
/* 20F10 80020310 256BF500 */  addiu      $t3, $t3, %lo(D_800EF500)
/* 20F14 80020314 26310002 */  addiu      $s1, $s1, 2
/* 20F18 80020318 26520001 */  addiu      $s2, $s2, 1
/* 20F1C 8002031C 2610FFE0 */  addiu      $s0, $s0, -0x20
/* 20F20 80020320 26730002 */  addiu      $s3, $s3, 2
/* 20F24 80020324 162BFFEC */  bne        $s1, $t3, .L800202D8
/* 20F28 80020328 2694FFE0 */   addiu     $s4, $s4, -0x20
.L8002032C:
/* 20F2C 8002032C 8FBF002C */  lw         $ra, 0x2c($sp)
/* 20F30 80020330 8FB00018 */  lw         $s0, 0x18($sp)
/* 20F34 80020334 8FB1001C */  lw         $s1, 0x1c($sp)
/* 20F38 80020338 8FB20020 */  lw         $s2, 0x20($sp)
/* 20F3C 8002033C 8FB30024 */  lw         $s3, 0x24($sp)
/* 20F40 80020340 8FB40028 */  lw         $s4, 0x28($sp)
/* 20F44 80020344 03E00008 */  jr         $ra
/* 20F48 80020348 27BD0030 */   addiu     $sp, $sp, 0x30