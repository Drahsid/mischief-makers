glabel func_80033E7C
/* 34A7C 80033E7C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 34A80 80033E80 3C0A800C */  lui        $t2, %hi(D_800BE4E0)
/* 34A84 80033E84 954AE4E0 */  lhu        $t2, %lo(D_800BE4E0)($t2)
/* 34A88 80033E88 97AB004A */  lhu        $t3, 0x4a($sp)
/* 34A8C 80033E8C 00057400 */  sll        $t6, $a1, 0x10
/* 34A90 80033E90 014B001A */  div        $zero, $t2, $t3
/* 34A94 80033E94 0006C400 */  sll        $t8, $a2, 0x10
/* 34A98 80033E98 00074400 */  sll        $t0, $a3, 0x10
/* 34A9C 80033E9C 00084C03 */  sra        $t1, $t0, 0x10
/* 34AA0 80033EA0 0018CC03 */  sra        $t9, $t8, 0x10
/* 34AA4 80033EA4 000E7C03 */  sra        $t7, $t6, 0x10
/* 34AA8 80033EA8 AFA40030 */  sw         $a0, 0x30($sp)
/* 34AAC 80033EAC AFA50034 */  sw         $a1, 0x34($sp)
/* 34AB0 80033EB0 AFA60038 */  sw         $a2, 0x38($sp)
/* 34AB4 80033EB4 AFA7003C */  sw         $a3, 0x3c($sp)
/* 34AB8 80033EB8 01203825 */  or         $a3, $t1, $zero
/* 34ABC 80033EBC 03203025 */  or         $a2, $t9, $zero
/* 34AC0 80033EC0 01E02825 */  or         $a1, $t7, $zero
/* 34AC4 80033EC4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 34AC8 80033EC8 15600002 */  bnez       $t3, .L80033ED4
/* 34ACC 80033ECC 00000000 */   nop
/* 34AD0 80033ED0 0007000D */  break      7
.L80033ED4:
/* 34AD4 80033ED4 2401FFFF */   addiu     $at, $zero, -1
/* 34AD8 80033ED8 15610004 */  bne        $t3, $at, .L80033EEC
/* 34ADC 80033EDC 3C018000 */   lui       $at, 0x8000
/* 34AE0 80033EE0 15410002 */  bne        $t2, $at, .L80033EEC
/* 34AE4 80033EE4 00000000 */   nop
/* 34AE8 80033EE8 0006000D */  break      6
.L80033EEC:
/* 34AEC 80033EEC 3C04800E */   lui       $a0, %hi(D_800E1380)
/* 34AF0 80033EF0 00006010 */  mfhi       $t4
/* 34AF4 80033EF4 15800072 */  bnez       $t4, .L800340C0
/* 34AF8 80033EF8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 34AFC 80033EFC 0C00C48F */  jal        func_8003123C
/* 34B00 80033F00 24841380 */   addiu     $a0, $a0, %lo(D_800E1380)
/* 34B04 80033F04 1040006D */  beqz       $v0, .L800340BC
/* 34B08 80033F08 3044FFFF */   andi      $a0, $v0, 0xffff
/* 34B0C 80033F0C 00046880 */  sll        $t5, $a0, 2
/* 34B10 80033F10 01A46823 */  subu       $t5, $t5, $a0
/* 34B14 80033F14 000D6880 */  sll        $t5, $t5, 2
/* 34B18 80033F18 3C01800F */  lui        $at, %hi(D_800EB97C)
/* 34B1C 80033F1C 01A46821 */  addu       $t5, $t5, $a0
/* 34B20 80033F20 C420B97C */  lwc1       $f0, %lo(D_800EB97C)($at)
/* 34B24 80033F24 000D6880 */  sll        $t5, $t5, 2
/* 34B28 80033F28 3C01800F */  lui        $at, %hi(D_800EB980)
/* 34B2C 80033F2C 01A46823 */  subu       $t5, $t5, $a0
/* 34B30 80033F30 3C0E800F */  lui        $t6, %hi(gActors)
/* 34B34 80033F34 C422B980 */  lwc1       $f2, %lo(D_800EB980)($at)
/* 34B38 80033F38 25CEF510 */  addiu      $t6, $t6, %lo(gActors)
/* 34B3C 80033F3C 000D68C0 */  sll        $t5, $t5, 3
/* 34B40 80033F40 01AE1821 */  addu       $v1, $t5, $t6
/* 34B44 80033F44 3C014180 */  lui        $at, 0x4180
/* 34B48 80033F48 44812000 */  mtc1       $at, $f4
/* 34B4C 80033F4C 240F0001 */  addiu      $t7, $zero, 1
/* 34B50 80033F50 24180003 */  addiu      $t8, $zero, 3
/* 34B54 80033F54 241900CA */  addiu      $t9, $zero, 0xca
/* 34B58 80033F58 240800D0 */  addiu      $t0, $zero, 0xd0
/* 34B5C 80033F5C A46F0094 */  sh         $t7, 0x94($v1)
/* 34B60 80033F60 AC780080 */  sw         $t8, 0x80($v1)
/* 34B64 80033F64 A4790084 */  sh         $t9, 0x84($v1)
/* 34B68 80033F68 A068009F */  sb         $t0, 0x9f($v1)
/* 34B6C 80033F6C AFA30018 */  sw         $v1, 0x18($sp)
/* 34B70 80033F70 E46000B4 */  swc1       $f0, 0xb4($v1)
/* 34B74 80033F74 E46000B8 */  swc1       $f0, 0xb8($v1)
/* 34B78 80033F78 E4620110 */  swc1       $f2, 0x110($v1)
/* 34B7C 80033F7C E4620114 */  swc1       $f2, 0x114($v1)
/* 34B80 80033F80 0C0005E3 */  jal        func_8000178C
/* 34B84 80033F84 E4640148 */   swc1      $f4, 0x148($v1)
/* 34B88 80033F88 3044000F */  andi       $a0, $v0, 0xf
/* 34B8C 80033F8C 8FAE0040 */  lw         $t6, 0x40($sp)
/* 34B90 80033F90 00044940 */  sll        $t1, $a0, 5
/* 34B94 80033F94 252A0010 */  addiu      $t2, $t1, 0x10
/* 34B98 80033F98 448E3000 */  mtc1       $t6, $f6
/* 34B9C 80033F9C 3C05800C */  lui        $a1, %hi(D_800BCCD0)
/* 34BA0 80033FA0 314B03FF */  andi       $t3, $t2, 0x3ff
/* 34BA4 80033FA4 24A5CCD0 */  addiu      $a1, $a1, %lo(D_800BCCD0)
/* 34BA8 80033FA8 000B6080 */  sll        $t4, $t3, 2
/* 34BAC 80033FAC 468030A0 */  cvt.s.w    $f2, $f6
/* 34BB0 80033FB0 00AC6821 */  addu       $t5, $a1, $t4
/* 34BB4 80033FB4 C5A00000 */  lwc1       $f0, ($t5)
/* 34BB8 80033FB8 2559FF00 */  addiu      $t9, $t2, -0x100
/* 34BBC 80033FBC 46020202 */  mul.s      $f8, $f0, $f2
/* 34BC0 80033FC0 332803FF */  andi       $t0, $t9, 0x3ff
/* 34BC4 80033FC4 00084880 */  sll        $t1, $t0, 2
/* 34BC8 80033FC8 00A95021 */  addu       $t2, $a1, $t1
/* 34BCC 80033FCC 444FF800 */  cfc1       $t7, $31
/* 34BD0 80033FD0 C54C0000 */  lwc1       $f12, ($t2)
/* 34BD4 80033FD4 35E10003 */  ori        $at, $t7, 3
/* 34BD8 80033FD8 38210002 */  xori       $at, $at, 2
/* 34BDC 80033FDC 44C1F800 */  ctc1       $at, $31
/* 34BE0 80033FE0 8FA30018 */  lw         $v1, 0x18($sp)
/* 34BE4 80033FE4 460042A4 */  cvt.w.s    $f10, $f8
/* 34BE8 80033FE8 8FAE0044 */  lw         $t6, 0x44($sp)
/* 34BEC 80033FEC 44CFF800 */  ctc1       $t7, $31
/* 34BF0 80033FF0 44185000 */  mfc1       $t8, $f10
/* 34BF4 80033FF4 46026402 */  mul.s      $f16, $f12, $f2
/* 34BF8 80033FF8 448E2000 */  mtc1       $t6, $f4
/* 34BFC 80033FFC 240DF000 */  addiu      $t5, $zero, -0x1000
/* 34C00 80034000 AC6D015C */  sw         $t5, 0x15c($v1)
/* 34C04 80034004 444BF800 */  cfc1       $t3, $31
/* 34C08 80034008 AC7800EC */  sw         $t8, 0xec($v1)
/* 34C0C 8003400C 35610003 */  ori        $at, $t3, 3
/* 34C10 80034010 38210002 */  xori       $at, $at, 2
/* 34C14 80034014 44C1F800 */  ctc1       $at, $31
/* 34C18 80034018 3C014F80 */  lui        $at, 0x4f80
/* 34C1C 8003401C 460084A4 */  cvt.w.s    $f18, $f16
/* 34C20 80034020 440C9000 */  mfc1       $t4, $f18
/* 34C24 80034024 44CBF800 */  ctc1       $t3, $31
/* 34C28 80034028 AC6C00F0 */  sw         $t4, 0xf0($v1)
/* 34C2C 8003402C 05C10004 */  bgez       $t6, .L80034040
/* 34C30 80034030 468023A0 */   cvt.s.w   $f14, $f4
/* 34C34 80034034 44813000 */  mtc1       $at, $f6
/* 34C38 80034038 00000000 */  nop
/* 34C3C 8003403C 46067380 */  add.s      $f14, $f14, $f6
.L80034040:
/* 34C40 80034040 8C6F0088 */  lw         $t7, 0x88($v1)
/* 34C44 80034044 460E0402 */  mul.s      $f16, $f0, $f14
/* 34C48 80034048 448F4000 */  mtc1       $t7, $f8
/* 34C4C 8003404C 8C68008C */  lw         $t0, 0x8c($v1)
/* 34C50 80034050 468042A0 */  cvt.s.w    $f10, $f8
/* 34C54 80034054 44883000 */  mtc1       $t0, $f6
/* 34C58 80034058 46105480 */  add.s      $f18, $f10, $f16
/* 34C5C 8003405C 4458F800 */  cfc1       $t8, $31
/* 34C60 80034060 00000000 */  nop
/* 34C64 80034064 37010003 */  ori        $at, $t8, 3
/* 34C68 80034068 38210002 */  xori       $at, $at, 2
/* 34C6C 8003406C 44C1F800 */  ctc1       $at, $31
/* 34C70 80034070 00000000 */  nop
/* 34C74 80034074 46009124 */  cvt.w.s    $f4, $f18
/* 34C78 80034078 44D8F800 */  ctc1       $t8, $31
/* 34C7C 8003407C 44192000 */  mfc1       $t9, $f4
/* 34C80 80034080 460E6282 */  mul.s      $f10, $f12, $f14
/* 34C84 80034084 AC790088 */  sw         $t9, 0x88($v1)
/* 34C88 80034088 46803220 */  cvt.s.w    $f8, $f6
/* 34C8C 8003408C 460A4400 */  add.s      $f16, $f8, $f10
/* 34C90 80034090 4449F800 */  cfc1       $t1, $31
/* 34C94 80034094 00000000 */  nop
/* 34C98 80034098 35210003 */  ori        $at, $t1, 3
/* 34C9C 8003409C 38210002 */  xori       $at, $at, 2
/* 34CA0 800340A0 44C1F800 */  ctc1       $at, $31
/* 34CA4 800340A4 00000000 */  nop
/* 34CA8 800340A8 460084A4 */  cvt.w.s    $f18, $f16
/* 34CAC 800340AC 440A9000 */  mfc1       $t2, $f18
/* 34CB0 800340B0 44C9F800 */  ctc1       $t1, $31
/* 34CB4 800340B4 AC6A008C */  sw         $t2, 0x8c($v1)
/* 34CB8 800340B8 00000000 */  nop
.L800340BC:
/* 34CBC 800340BC 8FBF0014 */  lw         $ra, 0x14($sp)
.L800340C0:
/* 34CC0 800340C0 27BD0030 */  addiu      $sp, $sp, 0x30
/* 34CC4 800340C4 03E00008 */  jr         $ra
/* 34CC8 800340C8 00000000 */   nop
