glabel func_800742FC
/* 74EFC 800742FC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 74F00 80074300 24080198 */  addiu      $t0, $zero, 0x198
/* 74F04 80074304 01C80019 */  multu      $t6, $t0
/* 74F08 80074308 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 74F0C 8007430C 3C07800F */  lui        $a3, %hi(D_800EF510)
/* 74F10 80074310 24E7F510 */  addiu      $a3, $a3, %lo(D_800EF510)
/* 74F14 80074314 3C01800F */  lui        $at, 0x800f
/* 74F18 80074318 AFA40000 */  sw         $a0, ($sp)
/* 74F1C 8007431C AFA50004 */  sw         $a1, 4($sp)
/* 74F20 80074320 0000C012 */  mflo       $t8
/* 74F24 80074324 00F81021 */  addu       $v0, $a3, $t8
/* 74F28 80074328 00000000 */  nop
/* 74F2C 8007432C 01E80019 */  multu      $t7, $t0
/* 74F30 80074330 0000C812 */  mflo       $t9
/* 74F34 80074334 00F91821 */  addu       $v1, $a3, $t9
/* 74F38 80074338 C46400C4 */  lwc1       $f4, 0xc4($v1)
/* 74F3C 8007433C 00000000 */  nop
/* 74F40 80074340 E44400C4 */  swc1       $f4, 0xc4($v0)
/* 74F44 80074344 C46600C4 */  lwc1       $f6, 0xc4($v1)
/* 74F48 80074348 C42AC864 */  lwc1       $f10, -0x379c($at)
/* 74F4C 8007434C C42BC860 */  lwc1       $f11, -0x37a0($at)
/* 74F50 80074350 46003221 */  cvt.d.s    $f8, $f6
/* 74F54 80074354 00000000 */  nop
/* 74F58 80074358 462A4403 */  div.d      $f16, $f8, $f10
/* 74F5C 8007435C 8C6A0080 */  lw         $t2, 0x80($v1)
/* 74F60 80074360 00000000 */  nop
/* 74F64 80074364 314B0020 */  andi       $t3, $t2, 0x20
/* 74F68 80074368 4449F800 */  cfc1       $t1, $31
/* 74F6C 8007436C 00000000 */  nop
/* 74F70 80074370 35210003 */  ori        $at, $t1, 3
/* 74F74 80074374 38210002 */  xori       $at, $at, 2
/* 74F78 80074378 44C1F800 */  ctc1       $at, $31
/* 74F7C 8007437C 3C0141D0 */  lui        $at, 0x41d0
/* 74F80 80074380 462084A4 */  cvt.w.d    $f18, $f16
/* 74F84 80074384 44810000 */  mtc1       $at, $f0
/* 74F88 80074388 44069000 */  mfc1       $a2, $f18
/* 74F8C 8007438C 44C9F800 */  ctc1       $t1, $31
/* 74F90 80074390 11600005 */  beqz       $t3, .L800743A8
/* 74F94 80074394 24C40018 */   addiu     $a0, $a2, 0x18
/* 74F98 80074398 24C401E8 */  addiu      $a0, $a2, 0x1e8
/* 74F9C 8007439C 308CFFFF */  andi       $t4, $a0, 0xffff
/* 74FA0 800743A0 10000003 */  b          .L800743B0
/* 74FA4 800743A4 01802025 */   or        $a0, $t4, $zero
.L800743A8:
/* 74FA8 800743A8 308DFFFF */  andi       $t5, $a0, 0xffff
/* 74FAC 800743AC 01A02025 */  or         $a0, $t5, $zero
.L800743B0:
/* 74FB0 800743B0 3C06800C */  lui        $a2, %hi(D_800BCCD0)
/* 74FB4 800743B4 308E03FF */  andi       $t6, $a0, 0x3ff
/* 74FB8 800743B8 24C6CCD0 */  addiu      $a2, $a2, %lo(D_800BCCD0)
/* 74FBC 800743BC 000E7880 */  sll        $t7, $t6, 2
/* 74FC0 800743C0 00CFC021 */  addu       $t8, $a2, $t7
/* 74FC4 800743C4 C7040000 */  lwc1       $f4, ($t8)
/* 74FC8 800743C8 8C790088 */  lw         $t9, 0x88($v1)
/* 74FCC 800743CC 46002182 */  mul.s      $f6, $f4, $f0
/* 74FD0 800743D0 3C014780 */  lui        $at, 0x4780
/* 74FD4 800743D4 44811000 */  mtc1       $at, $f2
/* 74FD8 800743D8 44995000 */  mtc1       $t9, $f10
/* 74FDC 800743DC 46023202 */  mul.s      $f8, $f6, $f2
/* 74FE0 800743E0 248BFF00 */  addiu      $t3, $a0, -0x100
/* 74FE4 800743E4 316C03FF */  andi       $t4, $t3, 0x3ff
/* 74FE8 800743E8 000C6880 */  sll        $t5, $t4, 2
/* 74FEC 800743EC 46805420 */  cvt.s.w    $f16, $f10
/* 74FF0 800743F0 00CD7021 */  addu       $t6, $a2, $t5
/* 74FF4 800743F4 C5C60000 */  lwc1       $f6, ($t6)
/* 74FF8 800743F8 46104480 */  add.s      $f18, $f8, $f16
/* 74FFC 800743FC 00802825 */  or         $a1, $a0, $zero
/* 75000 80074400 4449F800 */  cfc1       $t1, $31
/* 75004 80074404 24840018 */  addiu      $a0, $a0, 0x18
/* 75008 80074408 35210003 */  ori        $at, $t1, 3
/* 7500C 8007440C 38210002 */  xori       $at, $at, 2
/* 75010 80074410 44C1F800 */  ctc1       $at, $31
/* 75014 80074414 00000000 */  nop
/* 75018 80074418 46009124 */  cvt.w.s    $f4, $f18
/* 7501C 8007441C 44C9F800 */  ctc1       $t1, $31
/* 75020 80074420 440A2000 */  mfc1       $t2, $f4
/* 75024 80074424 46003282 */  mul.s      $f10, $f6, $f0
/* 75028 80074428 AC4A0088 */  sw         $t2, 0x88($v0)
/* 7502C 8007442C 8C6F008C */  lw         $t7, 0x8c($v1)
/* 75030 80074430 00000000 */  nop
/* 75034 80074434 448F8000 */  mtc1       $t7, $f16
/* 75038 80074438 46025202 */  mul.s      $f8, $f10, $f2
/* 7503C 8007443C 468084A0 */  cvt.s.w    $f18, $f16
/* 75040 80074440 46124100 */  add.s      $f4, $f8, $f18
/* 75044 80074444 4458F800 */  cfc1       $t8, $31
/* 75048 80074448 00000000 */  nop
/* 7504C 8007444C 37010003 */  ori        $at, $t8, 3
/* 75050 80074450 38210002 */  xori       $at, $at, 2
/* 75054 80074454 44C1F800 */  ctc1       $at, $31
/* 75058 80074458 3C010001 */  lui        $at, 1
/* 7505C 8007445C 460021A4 */  cvt.w.s    $f6, $f4
/* 75060 80074460 44193000 */  mfc1       $t9, $f6
/* 75064 80074464 44D8F800 */  ctc1       $t8, $31
/* 75068 80074468 AC59008C */  sw         $t9, 0x8c($v0)
/* 7506C 8007446C 8C690090 */  lw         $t1, 0x90($v1)
/* 75070 80074470 00000000 */  nop
/* 75074 80074474 01215021 */  addu       $t2, $t1, $at
/* 75078 80074478 AC4A0090 */  sw         $t2, 0x90($v0)
/* 7507C 8007447C 8C6B0080 */  lw         $t3, 0x80($v1)
/* 75080 80074480 00000000 */  nop
/* 75084 80074484 316C0020 */  andi       $t4, $t3, 0x20
/* 75088 80074488 11800003 */  beqz       $t4, .L80074498
/* 7508C 8007448C 00000000 */   nop
/* 75090 80074490 03E00008 */  jr         $ra
/* 75094 80074494 3082FFFF */   andi      $v0, $a0, 0xffff
.L80074498:
/* 75098 80074498 24A4FFE8 */  addiu      $a0, $a1, -0x18
/* 7509C 8007449C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 750A0 800744A0 01C02025 */  or         $a0, $t6, $zero
/* 750A4 800744A4 03E00008 */  jr         $ra
/* 750A8 800744A8 00801025 */   or        $v0, $a0, $zero
