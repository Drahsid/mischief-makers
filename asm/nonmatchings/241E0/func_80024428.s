glabel func_80024428
/* 25028 80024428 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2502C 8002442C AFBF0014 */  sw         $ra, 0x14($sp)
/* 25030 80024430 0C00903A */  jal        func_800240E8
/* 25034 80024434 00000000 */   nop
/* 25038 80024438 0C008D7D */  jal        func_800235F4
/* 2503C 8002443C 00000000 */   nop
/* 25040 80024440 3C02800C */  lui        $v0, %hi(D_800BE72C)
/* 25044 80024444 8C42E72C */  lw         $v0, %lo(D_800BE72C)($v0)
/* 25048 80024448 3C014300 */  lui        $at, 0x4300
/* 2504C 8002444C 44810000 */  mtc1       $at, $f0
/* 25050 80024450 3C04800C */  lui        $a0, %hi(D_800BCCD0)
/* 25054 80024454 2484CCD0 */  addiu      $a0, $a0, %lo(D_800BCCD0)
/* 25058 80024458 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2505C 8002445C 3C03800E */  lui        $v1, %hi(D_800E3C48)
/* 25060 80024460 24633C48 */  addiu      $v1, $v1, %lo(D_800E3C48)
/* 25064 80024464 04410004 */  bgez       $v0, .L80024478
/* 25068 80024468 00027403 */   sra       $t6, $v0, 0x10
/* 2506C 8002446C 3401FFFF */  ori        $at, $zero, 0xffff
/* 25070 80024470 00220821 */  addu       $at, $at, $v0
/* 25074 80024474 00017403 */  sra        $t6, $at, 0x10
.L80024478:
/* 25078 80024478 25CFFF80 */  addiu      $t7, $t6, -0x80
/* 2507C 8002447C 31F803FF */  andi       $t8, $t7, 0x3ff
/* 25080 80024480 0018C880 */  sll        $t9, $t8, 2
/* 25084 80024484 00994021 */  addu       $t0, $a0, $t9
/* 25088 80024488 C5040000 */  lwc1       $f4, ($t0)
/* 2508C 8002448C 25CB0080 */  addiu      $t3, $t6, 0x80
/* 25090 80024490 46002182 */  mul.s      $f6, $f4, $f0
/* 25094 80024494 316C03FF */  andi       $t4, $t3, 0x3ff
/* 25098 80024498 000C6880 */  sll        $t5, $t4, 2
/* 2509C 8002449C 008D7021 */  addu       $t6, $a0, $t5
/* 250A0 800244A0 4449F800 */  cfc1       $t1, $31
/* 250A4 800244A4 C5CA0000 */  lwc1       $f10, ($t6)
/* 250A8 800244A8 35210003 */  ori        $at, $t1, 3
/* 250AC 800244AC 38210002 */  xori       $at, $at, 2
/* 250B0 800244B0 44C1F800 */  ctc1       $at, $31
/* 250B4 800244B4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 250B8 800244B8 46003224 */  cvt.w.s    $f8, $f6
/* 250BC 800244BC 44C9F800 */  ctc1       $t1, $31
/* 250C0 800244C0 440A4000 */  mfc1       $t2, $f8
/* 250C4 800244C4 46005402 */  mul.s      $f16, $f10, $f0
/* 250C8 800244C8 A06A0010 */  sb         $t2, 0x10($v1)
/* 250CC 800244CC 444FF800 */  cfc1       $t7, $31
/* 250D0 800244D0 00000000 */  nop
/* 250D4 800244D4 35E10003 */  ori        $at, $t7, 3
/* 250D8 800244D8 38210002 */  xori       $at, $at, 2
/* 250DC 800244DC 44C1F800 */  ctc1       $at, $31
/* 250E0 800244E0 00000000 */  nop
/* 250E4 800244E4 460084A4 */  cvt.w.s    $f18, $f16
/* 250E8 800244E8 44189000 */  mfc1       $t8, $f18
/* 250EC 800244EC 44CFF800 */  ctc1       $t7, $31
/* 250F0 800244F0 03E00008 */  jr         $ra
/* 250F4 800244F4 A0780011 */   sb        $t8, 0x11($v1)
