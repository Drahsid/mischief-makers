glabel func_8003929C
/* 39E9C 8003929C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 39EA0 800392A0 AFB10020 */  sw         $s1, 0x20($sp)
/* 39EA4 800392A4 3091FFFF */  andi       $s1, $a0, 0xffff
/* 39EA8 800392A8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 39EAC 800392AC AFA40028 */  sw         $a0, 0x28($sp)
/* 39EB0 800392B0 AFB0001C */  sw         $s0, 0x1c($sp)
/* 39EB4 800392B4 0C00E325 */  jal        func_80038C94
/* 39EB8 800392B8 3224FFFF */   andi      $a0, $s1, 0xffff
/* 39EBC 800392BC 00117080 */  sll        $t6, $s1, 2
/* 39EC0 800392C0 01D17023 */  subu       $t6, $t6, $s1
/* 39EC4 800392C4 000E7080 */  sll        $t6, $t6, 2
/* 39EC8 800392C8 01D17021 */  addu       $t6, $t6, $s1
/* 39ECC 800392CC 000E7080 */  sll        $t6, $t6, 2
/* 39ED0 800392D0 01D17023 */  subu       $t6, $t6, $s1
/* 39ED4 800392D4 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 39ED8 800392D8 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 39EDC 800392DC 000E70C0 */  sll        $t6, $t6, 3
/* 39EE0 800392E0 01CF8021 */  addu       $s0, $t6, $t7
/* 39EE4 800392E4 960200D0 */  lhu        $v0, 0xd0($s0)
/* 39EE8 800392E8 24010001 */  addiu      $at, $zero, 1
/* 39EEC 800392EC 10400005 */  beqz       $v0, .L80039304
/* 39EF0 800392F0 00000000 */   nop
/* 39EF4 800392F4 1041001E */  beq        $v0, $at, .L80039370
/* 39EF8 800392F8 00000000 */   nop
/* 39EFC 800392FC 10000053 */  b          .L8003944C
/* 39F00 80039300 00000000 */   nop
.L80039304:
/* 39F04 80039304 0C00E387 */  jal        func_80038E1C
/* 39F08 80039308 3224FFFF */   andi      $a0, $s1, 0xffff
/* 39F0C 8003930C 960300D8 */  lhu        $v1, 0xd8($s0)
/* 39F10 80039310 3C09800D */  lui        $t1, 0x800d
/* 39F14 80039314 0003C080 */  sll        $t8, $v1, 2
/* 39F18 80039318 0303C023 */  subu       $t8, $t8, $v1
/* 39F1C 8003931C 0018C040 */  sll        $t8, $t8, 1
/* 39F20 80039320 3319FFFF */  andi       $t9, $t8, 0xffff
/* 39F24 80039324 00194080 */  sll        $t0, $t9, 2
/* 39F28 80039328 25292514 */  addiu      $t1, $t1, 0x2514
/* 39F2C 8003932C 01091021 */  addu       $v0, $t0, $t1
/* 39F30 80039330 8C590000 */  lw         $t9, ($v0)
/* 39F34 80039334 8C4B0004 */  lw         $t3, 4($v0)
/* 39F38 80039338 44992000 */  mtc1       $t9, $f4
/* 39F3C 8003933C 8E0A0150 */  lw         $t2, 0x150($s0)
/* 39F40 80039340 468021A0 */  cvt.s.w    $f6, $f4
/* 39F44 80039344 8C4D0008 */  lw         $t5, 8($v0)
/* 39F48 80039348 8C4E000C */  lw         $t6, 0xc($v0)
/* 39F4C 8003934C 8C4F0010 */  lw         $t7, 0x10($v0)
/* 39F50 80039350 8C580014 */  lw         $t8, 0x14($v0)
/* 39F54 80039354 014B6025 */  or         $t4, $t2, $t3
/* 39F58 80039358 AE0C0150 */  sw         $t4, 0x150($s0)
/* 39F5C 8003935C E6060114 */  swc1       $f6, 0x114($s0)
/* 39F60 80039360 AE0D015C */  sw         $t5, 0x15c($s0)
/* 39F64 80039364 AE0E0160 */  sw         $t6, 0x160($s0)
/* 39F68 80039368 AE0F0164 */  sw         $t7, 0x164($s0)
/* 39F6C 8003936C AE180168 */  sw         $t8, 0x168($s0)
.L80039370:
/* 39F70 80039370 8E080160 */  lw         $t0, 0x160($s0)
/* 39F74 80039374 8E050164 */  lw         $a1, 0x164($s0)
/* 39F78 80039378 8E060168 */  lw         $a2, 0x168($s0)
/* 39F7C 8003937C 8607015E */  lh         $a3, 0x15e($s0)
/* 39F80 80039380 3224FFFF */  andi       $a0, $s1, 0xffff
/* 39F84 80039384 0C00E13F */  jal        func_800384FC
/* 39F88 80039388 AFA80010 */   sw        $t0, 0x10($sp)
/* 39F8C 8003938C 0C0005E3 */  jal        func_8000178C
/* 39F90 80039390 00000000 */   nop
/* 39F94 80039394 30470001 */  andi       $a3, $v0, 1
/* 39F98 80039398 00073823 */  negu       $a3, $a3
/* 39F9C 8003939C 00074C00 */  sll        $t1, $a3, 0x10
/* 39FA0 800393A0 00093C03 */  sra        $a3, $t1, 0x10
/* 39FA4 800393A4 3224FFFF */  andi       $a0, $s1, 0xffff
/* 39FA8 800393A8 24054000 */  addiu      $a1, $zero, 0x4000
/* 39FAC 800393AC 24060400 */  addiu      $a2, $zero, 0x400
/* 39FB0 800393B0 0C00E180 */  jal        func_80038600
/* 39FB4 800393B4 AFA00010 */   sw        $zero, 0x10($sp)
/* 39FB8 800393B8 444BF800 */  cfc1       $t3, $31
/* 39FBC 800393BC 24050001 */  addiu      $a1, $zero, 1
/* 39FC0 800393C0 44C5F800 */  ctc1       $a1, $31
/* 39FC4 800393C4 C6080114 */  lwc1       $f8, 0x114($s0)
/* 39FC8 800393C8 3224FFFF */  andi       $a0, $s1, 0xffff
/* 39FCC 800393CC 460042A4 */  cvt.w.s    $f10, $f8
/* 39FD0 800393D0 3C014F00 */  lui        $at, 0x4f00
/* 39FD4 800393D4 4445F800 */  cfc1       $a1, $31
/* 39FD8 800393D8 00000000 */  nop
/* 39FDC 800393DC 30A50078 */  andi       $a1, $a1, 0x78
/* 39FE0 800393E0 10A00012 */  beqz       $a1, .L8003942C
/* 39FE4 800393E4 00000000 */   nop
/* 39FE8 800393E8 44815000 */  mtc1       $at, $f10
/* 39FEC 800393EC 24050001 */  addiu      $a1, $zero, 1
/* 39FF0 800393F0 460A4281 */  sub.s      $f10, $f8, $f10
/* 39FF4 800393F4 3C018000 */  lui        $at, 0x8000
/* 39FF8 800393F8 44C5F800 */  ctc1       $a1, $31
/* 39FFC 800393FC 00000000 */  nop
/* 3A000 80039400 460052A4 */  cvt.w.s    $f10, $f10
/* 3A004 80039404 4445F800 */  cfc1       $a1, $31
/* 3A008 80039408 00000000 */  nop
/* 3A00C 8003940C 30A50078 */  andi       $a1, $a1, 0x78
/* 3A010 80039410 14A00004 */  bnez       $a1, .L80039424
/* 3A014 80039414 00000000 */   nop
/* 3A018 80039418 44055000 */  mfc1       $a1, $f10
/* 3A01C 8003941C 10000007 */  b          .L8003943C
/* 3A020 80039420 00A12825 */   or        $a1, $a1, $at
.L80039424:
/* 3A024 80039424 10000005 */  b          .L8003943C
/* 3A028 80039428 2405FFFF */   addiu     $a1, $zero, -1
.L8003942C:
/* 3A02C 8003942C 44055000 */  mfc1       $a1, $f10
/* 3A030 80039430 00000000 */  nop
/* 3A034 80039434 04A0FFFB */  bltz       $a1, .L80039424
/* 3A038 80039438 00000000 */   nop
.L8003943C:
/* 3A03C 8003943C 44CBF800 */  ctc1       $t3, $31
/* 3A040 80039440 30ACFFFF */  andi       $t4, $a1, 0xffff
/* 3A044 80039444 0C00E21A */  jal        func_80038868
/* 3A048 80039448 01802825 */   or        $a1, $t4, $zero
.L8003944C:
/* 3A04C 8003944C 0C00E347 */  jal        func_80038D1C
/* 3A050 80039450 3224FFFF */   andi      $a0, $s1, 0xffff
/* 3A054 80039454 8FBF0024 */  lw         $ra, 0x24($sp)
/* 3A058 80039458 8FB0001C */  lw         $s0, 0x1c($sp)
/* 3A05C 8003945C 8FB10020 */  lw         $s1, 0x20($sp)
/* 3A060 80039460 03E00008 */  jr         $ra
/* 3A064 80039464 27BD0028 */   addiu     $sp, $sp, 0x28
