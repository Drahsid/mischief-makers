glabel func_800191B8
/* 19DB8 800191B8 3C0A800C */  lui        $t2, %hi(gGameSubState)
/* 19DBC 800191BC 254AE4F4 */  addiu      $t2, $t2, %lo(gGameSubState)
/* 19DC0 800191C0 95420000 */  lhu        $v0, ($t2)
/* 19DC4 800191C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 19DC8 800191C8 10400008 */  beqz       $v0, .L800191EC
/* 19DCC 800191CC AFBF0014 */   sw        $ra, 0x14($sp)
/* 19DD0 800191D0 24010001 */  addiu      $at, $zero, 1
/* 19DD4 800191D4 10410044 */  beq        $v0, $at, .L800192E8
/* 19DD8 800191D8 24010002 */   addiu     $at, $zero, 2
/* 19DDC 800191DC 104100C1 */  beq        $v0, $at, .L800194E4
/* 19DE0 800191E0 3C048018 */   lui       $a0, 0x8018
/* 19DE4 800191E4 100000CB */  b          .L80019514
/* 19DE8 800191E8 8FBF0014 */   lw        $ra, 0x14($sp)
.L800191EC:
/* 19DEC 800191EC 3C088018 */  lui        $t0, %hi(D_80178170)
/* 19DF0 800191F0 25088170 */  addiu      $t0, $t0, %lo(D_80178170)
/* 19DF4 800191F4 00003025 */  or         $a2, $zero, $zero
.L800191F8:
/* 19DF8 800191F8 01067021 */  addu       $t6, $t0, $a2
/* 19DFC 800191FC 24C60001 */  addiu      $a2, $a2, 1
/* 19E00 80019200 30CFFFFF */  andi       $t7, $a2, 0xffff
/* 19E04 80019204 29E10016 */  slti       $at, $t7, 0x16
/* 19E08 80019208 01E03025 */  or         $a2, $t7, $zero
/* 19E0C 8001920C 1420FFFA */  bnez       $at, .L800191F8
/* 19E10 80019210 A1C00000 */   sb        $zero, ($t6)
/* 19E14 80019214 3C078018 */  lui        $a3, %hi(D_80178188)
/* 19E18 80019218 3C05800D */  lui        $a1, %hi(D_800C823C)
/* 19E1C 8001921C 24A5823C */  addiu      $a1, $a1, %lo(D_800C823C)
/* 19E20 80019220 24E78188 */  addiu      $a3, $a3, %lo(D_80178188)
/* 19E24 80019224 00003025 */  or         $a2, $zero, $zero
/* 19E28 80019228 00002025 */  or         $a0, $zero, $zero
.L8001922C:
/* 19E2C 8001922C 00E61821 */  addu       $v1, $a3, $a2
/* 19E30 80019230 A0600000 */  sb         $zero, ($v1)
/* 19E34 80019234 1880000C */  blez       $a0, .L80019268
/* 19E38 80019238 00001025 */   or        $v0, $zero, $zero
.L8001923C:
/* 19E3C 8001923C 0002C840 */  sll        $t9, $v0, 1
/* 19E40 80019240 00B95821 */  addu       $t3, $a1, $t9
/* 19E44 80019244 956C0000 */  lhu        $t4, ($t3)
/* 19E48 80019248 90780000 */  lbu        $t8, ($v1)
/* 19E4C 8001924C 24420001 */  addiu      $v0, $v0, 1
/* 19E50 80019250 304EFFFF */  andi       $t6, $v0, 0xffff
/* 19E54 80019254 01C4082A */  slt        $at, $t6, $a0
/* 19E58 80019258 030C6821 */  addu       $t5, $t8, $t4
/* 19E5C 8001925C 01C01025 */  or         $v0, $t6, $zero
/* 19E60 80019260 1420FFF6 */  bnez       $at, .L8001923C
/* 19E64 80019264 A06D0000 */   sb        $t5, ($v1)
.L80019268:
/* 19E68 80019268 24C60001 */  addiu      $a2, $a2, 1
/* 19E6C 8001926C 30C4FFFF */  andi       $a0, $a2, 0xffff
/* 19E70 80019270 28810016 */  slti       $at, $a0, 0x16
/* 19E74 80019274 1420FFED */  bnez       $at, .L8001922C
/* 19E78 80019278 00803025 */   or        $a2, $a0, $zero
/* 19E7C 8001927C 3C09800F */  lui        $t1, %hi(gActors)
/* 19E80 80019280 2529F510 */  addiu      $t1, $t1, %lo(gActors)
/* 19E84 80019284 A1200BC6 */  sb         $zero, 0xbc6($t1)
/* 19E88 80019288 3C01800C */  lui        $at, %hi(D_800BE5D0)
/* 19E8C 8001928C 0C006380 */  jal        func_80018E00
/* 19E90 80019290 A420E5D0 */   sh        $zero, %lo(D_800BE5D0)($at)
/* 19E94 80019294 3C018013 */  lui        $at, %hi(D_801376BD)
/* 19E98 80019298 A02076BD */  sb         $zero, %lo(D_801376BD)($at)
/* 19E9C 8001929C 3C018013 */  lui        $at, %hi(D_801376B9)
/* 19EA0 800192A0 24190001 */  addiu      $t9, $zero, 1
/* 19EA4 800192A4 A03976B9 */  sb         $t9, %lo(D_801376B9)($at)
/* 19EA8 800192A8 240200C0 */  addiu      $v0, $zero, 0xc0
/* 19EAC 800192AC 3C018013 */  lui        $at, %hi(D_801376A9)
/* 19EB0 800192B0 A02276A9 */  sb         $v0, %lo(D_801376A9)($at)
/* 19EB4 800192B4 3C018013 */  lui        $at, %hi(D_801376AD)
/* 19EB8 800192B8 A02276AD */  sb         $v0, %lo(D_801376AD)($at)
/* 19EBC 800192BC 3C018013 */  lui        $at, %hi(D_801376B1)
/* 19EC0 800192C0 A02276B1 */  sb         $v0, %lo(D_801376B1)($at)
/* 19EC4 800192C4 3C18800C */  lui        $t8, %hi(gGameSubState)
/* 19EC8 800192C8 9718E4F4 */  lhu        $t8, %lo(gGameSubState)($t8)
/* 19ECC 800192CC 3C018013 */  lui        $at, %hi(D_801376B5)
/* 19ED0 800192D0 240B00FF */  addiu      $t3, $zero, 0xff
/* 19ED4 800192D4 A02B76B5 */  sb         $t3, %lo(D_801376B5)($at)
/* 19ED8 800192D8 3C01800C */  lui        $at, %hi(gGameSubState)
/* 19EDC 800192DC 270C0001 */  addiu      $t4, $t8, 1
/* 19EE0 800192E0 1000008B */  b          .L80019510
/* 19EE4 800192E4 A42CE4F4 */   sh        $t4, %lo(gGameSubState)($at)
.L800192E8:
/* 19EE8 800192E8 0C005DDC */  jal        func_80017770
/* 19EEC 800192EC 00000000 */   nop
/* 19EF0 800192F0 3C04800C */  lui        $a0, %hi(D_800BE504)
/* 19EF4 800192F4 9484E504 */  lhu        $a0, %lo(D_800BE504)($a0)
/* 19EF8 800192F8 3C05800F */  lui        $a1, %hi(D_800F026E)
/* 19EFC 800192FC 0C005DA0 */  jal        func_80017680
/* 19F00 80019300 24A5026E */   addiu     $a1, $a1, %lo(D_800F026E)
/* 19F04 80019304 1040000C */  beqz       $v0, .L80019338
/* 19F08 80019308 3C09800F */   lui       $t1, %hi(gActors)
/* 19F0C 8001930C 2529F510 */  addiu      $t1, $t1, %lo(gActors)
/* 19F10 80019310 912D0BC6 */  lbu        $t5, 0xbc6($t1)
/* 19F14 80019314 240100FF */  addiu      $at, $zero, 0xff
/* 19F18 80019318 25AEFFFF */  addiu      $t6, $t5, -1
/* 19F1C 8001931C 31CF00FF */  andi       $t7, $t6, 0xff
/* 19F20 80019320 15E10003 */  bne        $t7, $at, .L80019330
/* 19F24 80019324 A12E0BC6 */   sb        $t6, 0xbc6($t1)
/* 19F28 80019328 24190015 */  addiu      $t9, $zero, 0x15
/* 19F2C 8001932C A1390BC6 */  sb         $t9, 0xbc6($t1)
.L80019330:
/* 19F30 80019330 0C000CE0 */  jal        func_80003380
/* 19F34 80019334 24040022 */   addiu     $a0, $zero, 0x22
.L80019338:
/* 19F38 80019338 3C04800C */  lui        $a0, %hi(D_800BE508)
/* 19F3C 8001933C 9484E508 */  lhu        $a0, %lo(D_800BE508)($a0)
/* 19F40 80019340 3C05800F */  lui        $a1, %hi(D_800F0406)
/* 19F44 80019344 0C005DA0 */  jal        func_80017680
/* 19F48 80019348 24A50406 */   addiu     $a1, $a1, %lo(D_800F0406)
/* 19F4C 8001934C 3C09800F */  lui        $t1, %hi(gActors)
/* 19F50 80019350 1040000A */  beqz       $v0, .L8001937C
/* 19F54 80019354 2529F510 */   addiu     $t1, $t1, %lo(gActors)
/* 19F58 80019358 912B0BC6 */  lbu        $t3, 0xbc6($t1)
/* 19F5C 8001935C 24010016 */  addiu      $at, $zero, 0x16
/* 19F60 80019360 25780001 */  addiu      $t8, $t3, 1
/* 19F64 80019364 330C00FF */  andi       $t4, $t8, 0xff
/* 19F68 80019368 15810002 */  bne        $t4, $at, .L80019374
/* 19F6C 8001936C A1380BC6 */   sb        $t8, 0xbc6($t1)
/* 19F70 80019370 A1200BC6 */  sb         $zero, 0xbc6($t1)
.L80019374:
/* 19F74 80019374 0C000CE0 */  jal        func_80003380
/* 19F78 80019378 24040022 */   addiu     $a0, $zero, 0x22
.L8001937C:
/* 19F7C 8001937C 3C04800C */  lui        $a0, %hi(D_800BE50C)
/* 19F80 80019380 9484E50C */  lhu        $a0, %lo(D_800BE50C)($a0)
/* 19F84 80019384 3C05800F */  lui        $a1, %hi(D_800F059E)
/* 19F88 80019388 0C005DA0 */  jal        func_80017680
/* 19F8C 8001938C 24A5059E */   addiu     $a1, $a1, %lo(D_800F059E)
/* 19F90 80019390 3C09800F */  lui        $t1, %hi(gActors)
/* 19F94 80019394 1040000B */  beqz       $v0, .L800193C4
/* 19F98 80019398 2529F510 */   addiu     $t1, $t1, %lo(gActors)
/* 19F9C 8001939C 912D0BC6 */  lbu        $t5, 0xbc6($t1)
/* 19FA0 800193A0 3C088018 */  lui        $t0, %hi(D_80178170)
/* 19FA4 800193A4 25088170 */  addiu      $t0, $t0, %lo(D_80178170)
/* 19FA8 800193A8 010D1821 */  addu       $v1, $t0, $t5
/* 19FAC 800193AC 90660000 */  lbu        $a2, ($v1)
/* 19FB0 800193B0 24040022 */  addiu      $a0, $zero, 0x22
/* 19FB4 800193B4 18C00003 */  blez       $a2, .L800193C4
/* 19FB8 800193B8 24CEFFFF */   addiu     $t6, $a2, -1
/* 19FBC 800193BC 0C000CE0 */  jal        func_80003380
/* 19FC0 800193C0 A06E0000 */   sb        $t6, ($v1)
.L800193C4:
/* 19FC4 800193C4 3C04800C */  lui        $a0, %hi(D_800BE510)
/* 19FC8 800193C8 9484E510 */  lhu        $a0, %lo(D_800BE510)($a0)
/* 19FCC 800193CC 3C05800F */  lui        $a1, %hi(D_800F0736)
/* 19FD0 800193D0 0C005DA0 */  jal        func_80017680
/* 19FD4 800193D4 24A50736 */   addiu     $a1, $a1, %lo(D_800F0736)
/* 19FD8 800193D8 3C088018 */  lui        $t0, %hi(D_80178170)
/* 19FDC 800193DC 3C09800F */  lui        $t1, %hi(gActors)
/* 19FE0 800193E0 2529F510 */  addiu      $t1, $t1, %lo(gActors)
/* 19FE4 800193E4 10400014 */  beqz       $v0, .L80019438
/* 19FE8 800193E8 25088170 */   addiu     $t0, $t0, %lo(D_80178170)
/* 19FEC 800193EC 91220BC6 */  lbu        $v0, 0xbc6($t1)
/* 19FF0 800193F0 3C05800D */  lui        $a1, %hi(D_800C823C)
/* 19FF4 800193F4 24A5823C */  addiu      $a1, $a1, %lo(D_800C823C)
/* 19FF8 800193F8 00027840 */  sll        $t7, $v0, 1
/* 19FFC 800193FC 00AFC821 */  addu       $t9, $a1, $t7
/* 1A000 80019400 972B0000 */  lhu        $t3, ($t9)
/* 1A004 80019404 01021821 */  addu       $v1, $t0, $v0
/* 1A008 80019408 90660000 */  lbu        $a2, ($v1)
/* 1A00C 8001940C 2578FFFF */  addiu      $t8, $t3, -1
/* 1A010 80019410 00D8082A */  slt        $at, $a2, $t8
/* 1A014 80019414 10200008 */  beqz       $at, .L80019438
/* 1A018 80019418 24CC0001 */   addiu     $t4, $a2, 1
/* 1A01C 8001941C A06C0000 */  sb         $t4, ($v1)
/* 1A020 80019420 0C000CE0 */  jal        func_80003380
/* 1A024 80019424 24040022 */   addiu     $a0, $zero, 0x22
/* 1A028 80019428 3C088018 */  lui        $t0, %hi(D_80178170)
/* 1A02C 8001942C 3C09800F */  lui        $t1, %hi(gActors)
/* 1A030 80019430 2529F510 */  addiu      $t1, $t1, %lo(gActors)
/* 1A034 80019434 25088170 */  addiu      $t0, $t0, %lo(D_80178170)
.L80019438:
/* 1A038 80019438 91220BC6 */  lbu        $v0, 0xbc6($t1)
/* 1A03C 8001943C 3C078018 */  lui        $a3, %hi(D_80178188)
/* 1A040 80019440 24E78188 */  addiu      $a3, $a3, %lo(D_80178188)
/* 1A044 80019444 00E27821 */  addu       $t7, $a3, $v0
/* 1A048 80019448 01026821 */  addu       $t5, $t0, $v0
/* 1A04C 8001944C 91AE0000 */  lbu        $t6, ($t5)
/* 1A050 80019450 91F90000 */  lbu        $t9, ($t7)
/* 1A054 80019454 3C048018 */  lui        $a0, %hi(D_80178162)
/* 1A058 80019458 01D95821 */  addu       $t3, $t6, $t9
/* 1A05C 8001945C 3163FFFF */  andi       $v1, $t3, 0xffff
/* 1A060 80019460 24848162 */  addiu      $a0, $a0, %lo(D_80178162)
/* 1A064 80019464 0003C040 */  sll        $t8, $v1, 1
/* 1A068 80019468 3C0C800D */  lui        $t4, %hi(D_800C8378)
/* 1A06C 8001946C A48B0000 */  sh         $t3, ($a0)
/* 1A070 80019470 01986021 */  addu       $t4, $t4, $t8
/* 1A074 80019474 958C8378 */  lhu        $t4, %lo(D_800C8378)($t4)
/* 1A078 80019478 3C0D800D */  lui        $t5, %hi(D_800C83F8)
/* 1A07C 8001947C 3C01800C */  lui        $at, %hi(D_800BE5D0)
/* 1A080 80019480 01B86821 */  addu       $t5, $t5, $t8
/* 1A084 80019484 95AD83F8 */  lhu        $t5, %lo(D_800C83F8)($t5)
/* 1A088 80019488 A42CE5D0 */  sh         $t4, %lo(D_800BE5D0)($at)
/* 1A08C 8001948C 3C01800D */  lui        $at, %hi(D_800D28E4)
/* 1A090 80019490 0C006380 */  jal        func_80018E00
/* 1A094 80019494 A42D28E4 */   sh        $t5, %lo(D_800D28E4)($at)
/* 1A098 80019498 3C0F800C */  lui        $t7, %hi(D_800BE4FC)
/* 1A09C 8001949C 3C0E800C */  lui        $t6, %hi(D_800BE500)
/* 1A0A0 800194A0 95CEE500 */  lhu        $t6, %lo(D_800BE500)($t6)
/* 1A0A4 800194A4 95EFE4FC */  lhu        $t7, %lo(D_800BE4FC)($t7)
/* 1A0A8 800194A8 00000000 */  nop
/* 1A0AC 800194AC 01EEC824 */  and        $t9, $t7, $t6
/* 1A0B0 800194B0 13200018 */  beqz       $t9, .L80019514
/* 1A0B4 800194B4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1A0B8 800194B8 0C000E8E */  jal        func_80003A38
/* 1A0BC 800194BC 00000000 */   nop
/* 1A0C0 800194C0 0C010E46 */  jal        func_80043918
/* 1A0C4 800194C4 00000000 */   nop
/* 1A0C8 800194C8 3C02800C */  lui        $v0, %hi(gGameSubState)
/* 1A0CC 800194CC 2442E4F4 */  addiu      $v0, $v0, %lo(gGameSubState)
/* 1A0D0 800194D0 944B0000 */  lhu        $t3, ($v0)
/* 1A0D4 800194D4 00000000 */  nop
/* 1A0D8 800194D8 25780001 */  addiu      $t8, $t3, 1
/* 1A0DC 800194DC 1000000C */  b          .L80019510
/* 1A0E0 800194E0 A4580000 */   sh        $t8, ($v0)
.L800194E4:
/* 1A0E4 800194E4 3C01800C */  lui        $at, %hi(D_800C5008)
/* 1A0E8 800194E8 24848162 */  addiu      $a0, $a0, -0x7e9e
/* 1A0EC 800194EC A0205008 */  sb         $zero, %lo(D_800C5008)($at)
/* 1A0F0 800194F0 948C0000 */  lhu        $t4, ($a0)
/* 1A0F4 800194F4 3C018017 */  lui        $at, %hi(D_80171B18)
/* 1A0F8 800194F8 A02C1B18 */  sb         $t4, %lo(D_80171B18)($at)
/* 1A0FC 800194FC 3C01800C */  lui        $at, %hi(gGameState)
/* 1A100 80019500 240D000C */  addiu      $t5, $zero, 0xc
/* 1A104 80019504 A42DE4F0 */  sh         $t5, %lo(gGameState)($at)
/* 1A108 80019508 240F0041 */  addiu      $t7, $zero, 0x41
/* 1A10C 8001950C A54F0000 */  sh         $t7, ($t2)
.L80019510:
/* 1A110 80019510 8FBF0014 */  lw         $ra, 0x14($sp)
.L80019514:
/* 1A114 80019514 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1A118 80019518 03E00008 */  jr         $ra
/* 1A11C 8001951C 00000000 */   nop
