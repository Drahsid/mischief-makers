glabel func_800801D8
/* 80DD8 800801D8 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 80DDC 800801DC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 80DE0 800801E0 000E7880 */  sll        $t7, $t6, 2
/* 80DE4 800801E4 01EE7823 */  subu       $t7, $t7, $t6
/* 80DE8 800801E8 000F7880 */  sll        $t7, $t7, 2
/* 80DEC 800801EC 01EE7821 */  addu       $t7, $t7, $t6
/* 80DF0 800801F0 000F7880 */  sll        $t7, $t7, 2
/* 80DF4 800801F4 01EE7823 */  subu       $t7, $t7, $t6
/* 80DF8 800801F8 3C18800F */  lui        $t8, 0x800f
/* 80DFC 800801FC AFBF0044 */  sw         $ra, 0x44($sp)
/* 80E00 80080200 AFBE0040 */  sw         $fp, 0x40($sp)
/* 80E04 80080204 AFB7003C */  sw         $s7, 0x3c($sp)
/* 80E08 80080208 AFB60038 */  sw         $s6, 0x38($sp)
/* 80E0C 8008020C AFB50034 */  sw         $s5, 0x34($sp)
/* 80E10 80080210 AFB40030 */  sw         $s4, 0x30($sp)
/* 80E14 80080214 AFB3002C */  sw         $s3, 0x2c($sp)
/* 80E18 80080218 AFB20028 */  sw         $s2, 0x28($sp)
/* 80E1C 8008021C AFB10024 */  sw         $s1, 0x24($sp)
/* 80E20 80080220 AFB00020 */  sw         $s0, 0x20($sp)
/* 80E24 80080224 E7B50018 */  swc1       $f21, 0x18($sp)
/* 80E28 80080228 E7B4001C */  swc1       $f20, 0x1c($sp)
/* 80E2C 8008022C AFA40080 */  sw         $a0, 0x80($sp)
/* 80E30 80080230 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 80E34 80080234 000F78C0 */  sll        $t7, $t7, 3
/* 80E38 80080238 94D90000 */  lhu        $t9, ($a2)
/* 80E3C 8008023C 01F84021 */  addu       $t0, $t7, $t8
/* 80E40 80080240 8D030178 */  lw         $v1, 0x178($t0)
/* 80E44 80080244 94CC0002 */  lhu        $t4, 2($a2)
/* 80E48 80080248 00195080 */  sll        $t2, $t9, 2
/* 80E4C 8008024C 448C2000 */  mtc1       $t4, $f4
/* 80E50 80080250 006A5821 */  addu       $t3, $v1, $t2
/* 80E54 80080254 8D7E0000 */  lw         $fp, ($t3)
/* 80E58 80080258 C5000120 */  lwc1       $f0, 0x120($t0)
/* 80E5C 8008025C 01C02025 */  or         $a0, $t6, $zero
/* 80E60 80080260 00A0A025 */  or         $s4, $a1, $zero
/* 80E64 80080264 05810005 */  bgez       $t4, .L8008027C
/* 80E68 80080268 468021A0 */   cvt.s.w   $f6, $f4
/* 80E6C 8008026C 3C014F80 */  lui        $at, 0x4f80
/* 80E70 80080270 44814000 */  mtc1       $at, $f8
/* 80E74 80080274 00000000 */  nop
/* 80E78 80080278 46083180 */  add.s      $f6, $f6, $f8
.L8008027C:
/* 80E7C 8008027C 46060282 */  mul.s      $f10, $f0, $f6
/* 80E80 80080280 94CE0004 */  lhu        $t6, 4($a2)
/* 80E84 80080284 3C0603FF */  lui        $a2, 0x3ff
/* 80E88 80080288 448E9000 */  mtc1       $t6, $f18
/* 80E8C 8008028C 444DF800 */  cfc1       $t5, $31
/* 80E90 80080290 00804825 */  or         $t1, $a0, $zero
/* 80E94 80080294 35A10003 */  ori        $at, $t5, 3
/* 80E98 80080298 38210002 */  xori       $at, $at, 2
/* 80E9C 8008029C 44C1F800 */  ctc1       $at, $31
/* 80EA0 800802A0 3C014F80 */  lui        $at, 0x4f80
/* 80EA4 800802A4 46005424 */  cvt.w.s    $f16, $f10
/* 80EA8 800802A8 44CDF800 */  ctc1       $t5, $31
/* 80EAC 800802AC 44078000 */  mfc1       $a3, $f16
/* 80EB0 800802B0 05C10004 */  bgez       $t6, .L800802C4
/* 80EB4 800802B4 46809120 */   cvt.s.w   $f4, $f18
/* 80EB8 800802B8 44814000 */  mtc1       $at, $f8
/* 80EBC 800802BC 00000000 */  nop
/* 80EC0 800802C0 46082100 */  add.s      $f4, $f4, $f8
.L800802C4:
/* 80EC4 800802C4 46040182 */  mul.s      $f6, $f0, $f4
/* 80EC8 800802C8 8D0A0158 */  lw         $t2, 0x158($t0)
/* 80ECC 800802CC 8D0E015C */  lw         $t6, 0x15c($t0)
/* 80ED0 800802D0 27DE0004 */  addiu      $fp, $fp, 4
/* 80ED4 800802D4 444FF800 */  cfc1       $t7, $31
/* 80ED8 800802D8 0000B825 */  or         $s7, $zero, $zero
/* 80EDC 800802DC 35E10003 */  ori        $at, $t7, 3
/* 80EE0 800802E0 38210002 */  xori       $at, $at, 2
/* 80EE4 800802E4 44C1F800 */  ctc1       $at, $31
/* 80EE8 800802E8 00000000 */  nop
/* 80EEC 800802EC 460032A4 */  cvt.w.s    $f10, $f6
/* 80EF0 800802F0 44185000 */  mfc1       $t8, $f10
/* 80EF4 800802F4 44CFF800 */  ctc1       $t7, $31
/* 80EF8 800802F8 AFB80054 */  sw         $t8, 0x54($sp)
/* 80EFC 800802FC 97D0FFFC */  lhu        $s0, -4($fp)
/* 80F00 80080300 00000000 */  nop
/* 80F04 80080304 0010CC00 */  sll        $t9, $s0, 0x10
/* 80F08 80080308 032A5823 */  subu       $t3, $t9, $t2
/* 80F0C 8008030C 0167001A */  div        $zero, $t3, $a3
/* 80F10 80080310 03208025 */  or         $s0, $t9, $zero
/* 80F14 80080314 14E00002 */  bnez       $a3, .L80080320
/* 80F18 80080318 00000000 */   nop
/* 80F1C 8008031C 0007000D */  break      7
.L80080320:
/* 80F20 80080320 2401FFFF */   addiu     $at, $zero, -1
/* 80F24 80080324 14E10004 */  bne        $a3, $at, .L80080338
/* 80F28 80080328 3C018000 */   lui       $at, 0x8000
/* 80F2C 8008032C 15610002 */  bne        $t3, $at, .L80080338
/* 80F30 80080330 00000000 */   nop
/* 80F34 80080334 0006000D */  break      6
.L80080338:
/* 80F38 80080338 00006012 */   mflo      $t4
/* 80F3C 8008033C AD0C0160 */  sw         $t4, 0x160($t0)
/* 80F40 80080340 97D0FFFE */  lhu        $s0, -2($fp)
/* 80F44 80080344 00000000 */  nop
/* 80F48 80080348 00106C00 */  sll        $t5, $s0, 0x10
/* 80F4C 8008034C 01AE7823 */  subu       $t7, $t5, $t6
/* 80F50 80080350 01E7001A */  div        $zero, $t7, $a3
/* 80F54 80080354 01A08025 */  or         $s0, $t5, $zero
/* 80F58 80080358 14E00002 */  bnez       $a3, .L80080364
/* 80F5C 8008035C 00000000 */   nop
/* 80F60 80080360 0007000D */  break      7
.L80080364:
/* 80F64 80080364 2401FFFF */   addiu     $at, $zero, -1
/* 80F68 80080368 14E10004 */  bne        $a3, $at, .L8008037C
/* 80F6C 8008036C 3C018000 */   lui       $at, 0x8000
/* 80F70 80080370 15E10002 */  bne        $t7, $at, .L8008037C
/* 80F74 80080374 00000000 */   nop
/* 80F78 80080378 0006000D */  break      6
.L8008037C:
/* 80F7C 8008037C 24017FFF */   addiu     $at, $zero, 0x7fff
/* 80F80 80080380 0000C012 */  mflo       $t8
/* 80F84 80080384 AD180164 */  sw         $t8, 0x164($t0)
/* 80F88 80080388 86820000 */  lh         $v0, ($s4)
/* 80F8C 8008038C 00000000 */  nop
/* 80F90 80080390 10410076 */  beq        $v0, $at, .L8008056C
/* 80F94 80080394 00000000 */   nop
/* 80F98 80080398 4480A000 */  mtc1       $zero, $f20
/* 80F9C 8008039C 34C6FFFF */  ori        $a2, $a2, 0xffff
.L800803A0:
/* 80FA0 800803A0 C510013C */  lwc1       $f16, 0x13c($t0)
/* 80FA4 800803A4 00491821 */  addu       $v1, $v0, $t1
/* 80FA8 800803A8 4610A032 */  c.eq.s     $f20, $f16
/* 80FAC 800803AC 3079FFFF */  andi       $t9, $v1, 0xffff
/* 80FB0 800803B0 45010006 */  bc1t       .L800803CC
/* 80FB4 800803B4 03201825 */   or        $v1, $t9, $zero
/* 80FB8 800803B8 868A0008 */  lh         $t2, 8($s4)
/* 80FBC 800803BC 00000000 */  nop
/* 80FC0 800803C0 000A5840 */  sll        $t3, $t2, 1
/* 80FC4 800803C4 10000003 */  b          .L800803D4
/* 80FC8 800803C8 017EA821 */   addu      $s5, $t3, $fp
.L800803CC:
/* 80FCC 800803CC 00176040 */  sll        $t4, $s7, 1
/* 80FD0 800803D0 019EA821 */  addu       $s5, $t4, $fp
.L800803D4:
/* 80FD4 800803D4 00036880 */  sll        $t5, $v1, 2
/* 80FD8 800803D8 01A36823 */  subu       $t5, $t5, $v1
/* 80FDC 800803DC 000D6880 */  sll        $t5, $t5, 2
/* 80FE0 800803E0 01A36821 */  addu       $t5, $t5, $v1
/* 80FE4 800803E4 000D6880 */  sll        $t5, $t5, 2
/* 80FE8 800803E8 01A36823 */  subu       $t5, $t5, $v1
/* 80FEC 800803EC 3C0E800F */  lui        $t6, %hi(gActors)
/* 80FF0 800803F0 25CEF510 */  addiu      $t6, $t6, %lo(gActors)
/* 80FF4 800803F4 000D68C0 */  sll        $t5, $t5, 3
/* 80FF8 800803F8 01AE9821 */  addu       $s3, $t5, $t6
/* 80FFC 800803FC 96B00000 */  lhu        $s0, ($s5)
/* 81000 80080400 8E710174 */  lw         $s1, 0x174($s3)
/* 81004 80080404 8E780188 */  lw         $t8, 0x188($s3)
/* 81008 80080408 00107C00 */  sll        $t7, $s0, 0x10
/* 8100C 8008040C 01F19023 */  subu       $s2, $t7, $s1
/* 81010 80080410 33190200 */  andi       $t9, $t8, 0x200
/* 81014 80080414 01E08025 */  or         $s0, $t7, $zero
/* 81018 80080418 13200015 */  beqz       $t9, .L80080470
/* 8101C 8008041C 0240B025 */   or        $s6, $s2, $zero
/* 81020 80080420 02002025 */  or         $a0, $s0, $zero
/* 81024 80080424 02202825 */  or         $a1, $s1, $zero
/* 81028 80080428 AFA70058 */  sw         $a3, 0x58($sp)
/* 8102C 8008042C AFA80050 */  sw         $t0, 0x50($sp)
/* 81030 80080430 0C00A657 */  jal        func_8002995C
/* 81034 80080434 AFA90048 */   sw        $t1, 0x48($sp)
/* 81038 80080438 3C0603FF */  lui        $a2, 0x3ff
/* 8103C 8008043C 8FA70058 */  lw         $a3, 0x58($sp)
/* 81040 80080440 8FA80050 */  lw         $t0, 0x50($sp)
/* 81044 80080444 8FA90048 */  lw         $t1, 0x48($sp)
/* 81048 80080448 18400005 */  blez       $v0, .L80080460
/* 8104C 8008044C 34C6FFFF */   ori       $a2, $a2, 0xffff
/* 81050 80080450 3C01FF00 */  lui        $at, 0xff00
/* 81054 80080454 02215021 */  addu       $t2, $s1, $at
/* 81058 80080458 10000009 */  b          .L80080480
/* 8105C 8008045C 01461024 */   and       $v0, $t2, $a2
.L80080460:
/* 81060 80080460 3C010100 */  lui        $at, 0x100
/* 81064 80080464 02215821 */  addu       $t3, $s1, $at
/* 81068 80080468 10000005 */  b          .L80080480
/* 8106C 8008046C 01661024 */   and       $v0, $t3, $a2
.L80080470:
/* 81070 80080470 86820006 */  lh         $v0, 6($s4)
/* 81074 80080474 00000000 */  nop
/* 81078 80080478 00026400 */  sll        $t4, $v0, 0x10
/* 8107C 8008047C 01801025 */  or         $v0, $t4, $zero
.L80080480:
/* 81080 80080480 12400013 */  beqz       $s2, .L800804D0
/* 81084 80080484 00000000 */   nop
/* 81088 80080488 1A40000A */  blez       $s2, .L800804B4
/* 8108C 8008048C 0202082A */   slt       $at, $s0, $v0
/* 81090 80080490 0050082A */  slt        $at, $v0, $s0
/* 81094 80080494 1020000E */  beqz       $at, .L800804D0
/* 81098 80080498 00000000 */   nop
/* 8109C 8008049C 0222082A */  slt        $at, $s1, $v0
/* 810A0 800804A0 1020000B */  beqz       $at, .L800804D0
/* 810A4 800804A4 00000000 */   nop
/* 810A8 800804A8 3C01FC00 */  lui        $at, 0xfc00
/* 810AC 800804AC 10000008 */  b          .L800804D0
/* 810B0 800804B0 0241B021 */   addu      $s6, $s2, $at
.L800804B4:
/* 810B4 800804B4 10200006 */  beqz       $at, .L800804D0
/* 810B8 800804B8 00000000 */   nop
/* 810BC 800804BC 0051082A */  slt        $at, $v0, $s1
/* 810C0 800804C0 10200003 */  beqz       $at, .L800804D0
/* 810C4 800804C4 00000000 */   nop
/* 810C8 800804C8 3C010400 */  lui        $at, 0x400
/* 810CC 800804CC 0241B021 */  addu       $s6, $s2, $at
.L800804D0:
/* 810D0 800804D0 02C7001A */  div        $zero, $s6, $a3
/* 810D4 800804D4 8E710154 */  lw         $s1, 0x154($s3)
/* 810D8 800804D8 14E00002 */  bnez       $a3, .L800804E4
/* 810DC 800804DC 00000000 */   nop
/* 810E0 800804E0 0007000D */  break      7
.L800804E4:
/* 810E4 800804E4 2401FFFF */   addiu     $at, $zero, -1
/* 810E8 800804E8 14E10004 */  bne        $a3, $at, .L800804FC
/* 810EC 800804EC 3C018000 */   lui       $at, 0x8000
/* 810F0 800804F0 16C10002 */  bne        $s6, $at, .L800804FC
/* 810F4 800804F4 00000000 */   nop
/* 810F8 800804F8 0006000D */  break      6
.L800804FC:
/* 810FC 800804FC 26F70002 */   addiu     $s7, $s7, 2
/* 81100 80080500 32F9FFFF */  andi       $t9, $s7, 0xffff
/* 81104 80080504 0320B825 */  or         $s7, $t9, $zero
/* 81108 80080508 2694000A */  addiu      $s4, $s4, 0xa
/* 8110C 8008050C 00006812 */  mflo       $t5
/* 81110 80080510 AE6D0164 */  sw         $t5, 0x164($s3)
/* 81114 80080514 96B00002 */  lhu        $s0, 2($s5)
/* 81118 80080518 00000000 */  nop
/* 8111C 8008051C 00107400 */  sll        $t6, $s0, 0x10
/* 81120 80080520 01D17823 */  subu       $t7, $t6, $s1
/* 81124 80080524 01E7001A */  div        $zero, $t7, $a3
/* 81128 80080528 01C08025 */  or         $s0, $t6, $zero
/* 8112C 8008052C 14E00002 */  bnez       $a3, .L80080538
/* 81130 80080530 00000000 */   nop
/* 81134 80080534 0007000D */  break      7
.L80080538:
/* 81138 80080538 2401FFFF */   addiu     $at, $zero, -1
/* 8113C 8008053C 14E10004 */  bne        $a3, $at, .L80080550
/* 81140 80080540 3C018000 */   lui       $at, 0x8000
/* 81144 80080544 15E10002 */  bne        $t7, $at, .L80080550
/* 81148 80080548 00000000 */   nop
/* 8114C 8008054C 0006000D */  break      6
.L80080550:
/* 81150 80080550 24017FFF */   addiu     $at, $zero, 0x7fff
/* 81154 80080554 0000C012 */  mflo       $t8
/* 81158 80080558 AE780168 */  sw         $t8, 0x168($s3)
/* 8115C 8008055C 86820000 */  lh         $v0, ($s4)
/* 81160 80080560 00000000 */  nop
/* 81164 80080564 1441FF8E */  bne        $v0, $at, .L800803A0
/* 81168 80080568 00000000 */   nop
.L8008056C:
/* 8116C 8008056C 8FAA0054 */  lw         $t2, 0x54($sp)
/* 81170 80080570 8FBF0044 */  lw         $ra, 0x44($sp)
/* 81174 80080574 00EA5823 */  subu       $t3, $a3, $t2
/* 81178 80080578 448B9000 */  mtc1       $t3, $f18
/* 8117C 8008057C C7B50018 */  lwc1       $f21, 0x18($sp)
/* 81180 80080580 46809220 */  cvt.s.w    $f8, $f18
/* 81184 80080584 C7B4001C */  lwc1       $f20, 0x1c($sp)
/* 81188 80080588 8FB00020 */  lw         $s0, 0x20($sp)
/* 8118C 8008058C 8FB10024 */  lw         $s1, 0x24($sp)
/* 81190 80080590 8FB20028 */  lw         $s2, 0x28($sp)
/* 81194 80080594 8FB3002C */  lw         $s3, 0x2c($sp)
/* 81198 80080598 8FB40030 */  lw         $s4, 0x30($sp)
/* 8119C 8008059C 8FB50034 */  lw         $s5, 0x34($sp)
/* 811A0 800805A0 8FB60038 */  lw         $s6, 0x38($sp)
/* 811A4 800805A4 8FB7003C */  lw         $s7, 0x3c($sp)
/* 811A8 800805A8 8FBE0040 */  lw         $fp, 0x40($sp)
/* 811AC 800805AC E508011C */  swc1       $f8, 0x11c($t0)
/* 811B0 800805B0 03E00008 */  jr         $ra
/* 811B4 800805B4 27BD0080 */   addiu     $sp, $sp, 0x80
