glabel func_80032E60
/* 33A60 80032E60 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 33A64 80032E64 AFBF0014 */  sw         $ra, 0x14($sp)
/* 33A68 80032E68 AFA40030 */  sw         $a0, 0x30($sp)
/* 33A6C 80032E6C AFA50034 */  sw         $a1, 0x34($sp)
/* 33A70 80032E70 AFA60038 */  sw         $a2, 0x38($sp)
/* 33A74 80032E74 AFA7003C */  sw         $a3, 0x3c($sp)
/* 33A78 80032E78 240500C0 */  addiu      $a1, $zero, 0xc0
/* 33A7C 80032E7C 0C00A12E */  jal        func_800284B8
/* 33A80 80032E80 24040090 */   addiu     $a0, $zero, 0x90
/* 33A84 80032E84 97AE0032 */  lhu        $t6, 0x32($sp)
/* 33A88 80032E88 24080198 */  addiu      $t0, $zero, 0x198
/* 33A8C 80032E8C 01C80019 */  multu      $t6, $t0
/* 33A90 80032E90 3C06800F */  lui        $a2, %hi(gActors)
/* 33A94 80032E94 24C6F510 */  addiu      $a2, $a2, %lo(gActors)
/* 33A98 80032E98 3047FFFF */  andi       $a3, $v0, 0xffff
/* 33A9C 80032E9C 00007812 */  mflo       $t7
/* 33AA0 80032EA0 00CF2821 */  addu       $a1, $a2, $t7
/* 33AA4 80032EA4 8CB80080 */  lw         $t8, 0x80($a1)
/* 33AA8 80032EA8 00000000 */  nop
/* 33AAC 80032EAC 33190001 */  andi       $t9, $t8, 1
/* 33AB0 80032EB0 13200003 */  beqz       $t9, .L80032EC0
/* 33AB4 80032EB4 00000000 */   nop
/* 33AB8 80032EB8 14400003 */  bnez       $v0, .L80032EC8
/* 33ABC 80032EBC 00000000 */   nop
.L80032EC0:
/* 33AC0 80032EC0 10000074 */  b          .L80033094
/* 33AC4 80032EC4 00001025 */   or        $v0, $zero, $zero
.L80032EC8:
/* 33AC8 80032EC8 00E80019 */  multu      $a3, $t0
/* 33ACC 80032ECC 240A0034 */  addiu      $t2, $zero, 0x34
/* 33AD0 80032ED0 30E4FFFF */  andi       $a0, $a3, 0xffff
/* 33AD4 80032ED4 AFA50020 */  sw         $a1, 0x20($sp)
/* 33AD8 80032ED8 A7A7002E */  sh         $a3, 0x2e($sp)
/* 33ADC 80032EDC 00004812 */  mflo       $t1
/* 33AE0 80032EE0 00C91821 */  addu       $v1, $a2, $t1
/* 33AE4 80032EE4 A46A00D2 */  sh         $t2, 0xd2($v1)
/* 33AE8 80032EE8 0C0078B4 */  jal        func_8001E2D0
/* 33AEC 80032EEC AFA3001C */   sw        $v1, 0x1c($sp)
/* 33AF0 80032EF0 8FA50020 */  lw         $a1, 0x20($sp)
/* 33AF4 80032EF4 8FA3001C */  lw         $v1, 0x1c($sp)
/* 33AF8 80032EF8 94AB0094 */  lhu        $t3, 0x94($a1)
/* 33AFC 80032EFC 97B90036 */  lhu        $t9, 0x36($sp)
/* 33B00 80032F00 316C0810 */  andi       $t4, $t3, 0x810
/* 33B04 80032F04 258D0009 */  addiu      $t5, $t4, 9
/* 33B08 80032F08 A46D0094 */  sh         $t5, 0x94($v1)
/* 33B0C 80032F0C 8CAE0080 */  lw         $t6, 0x80($a1)
/* 33B10 80032F10 C7A40044 */  lwc1       $f4, 0x44($sp)
/* 33B14 80032F14 C7A60048 */  lwc1       $f6, 0x48($sp)
/* 33B18 80032F18 31CF0020 */  andi       $t7, $t6, 0x20
/* 33B1C 80032F1C 25F80003 */  addiu      $t8, $t7, 3
/* 33B20 80032F20 AC780080 */  sw         $t8, 0x80($v1)
/* 33B24 80032F24 A4790084 */  sh         $t9, 0x84($v1)
/* 33B28 80032F28 E46400B4 */  swc1       $f4, 0xb4($v1)
/* 33B2C 80032F2C E46600B8 */  swc1       $f6, 0xb8($v1)
/* 33B30 80032F30 90A9009F */  lbu        $t1, 0x9f($a1)
/* 33B34 80032F34 3C013F80 */  lui        $at, 0x3f80
/* 33B38 80032F38 A069009F */  sb         $t1, 0x9f($v1)
/* 33B3C 80032F3C 90AA009C */  lbu        $t2, 0x9c($a1)
/* 33B40 80032F40 44815000 */  mtc1       $at, $f10
/* 33B44 80032F44 A06A009C */  sb         $t2, 0x9c($v1)
/* 33B48 80032F48 90AB009D */  lbu        $t3, 0x9d($a1)
/* 33B4C 80032F4C 3C01800F */  lui        $at, 0x800f
/* 33B50 80032F50 A06B009D */  sb         $t3, 0x9d($v1)
/* 33B54 80032F54 90AC009E */  lbu        $t4, 0x9e($a1)
/* 33B58 80032F58 330F0020 */  andi       $t7, $t8, 0x20
/* 33B5C 80032F5C A06C009E */  sb         $t4, 0x9e($v1)
/* 33B60 80032F60 C4A800C4 */  lwc1       $f8, 0xc4($a1)
/* 33B64 80032F64 E46A0148 */  swc1       $f10, 0x148($v1)
/* 33B68 80032F68 E46800C4 */  swc1       $f8, 0xc4($v1)
/* 33B6C 80032F6C C4B000C4 */  lwc1       $f16, 0xc4($a1)
/* 33B70 80032F70 C424B93C */  lwc1       $f4, -0x46c4($at)
/* 33B74 80032F74 C425B938 */  lwc1       $f5, -0x46c8($at)
/* 33B78 80032F78 460084A1 */  cvt.d.s    $f18, $f16
/* 33B7C 80032F7C 00000000 */  nop
/* 33B80 80032F80 46249183 */  div.d      $f6, $f18, $f4
/* 33B84 80032F84 97A9003A */  lhu        $t1, 0x3a($sp)
/* 33B88 80032F88 97A7002E */  lhu        $a3, 0x2e($sp)
/* 33B8C 80032F8C 97B8003A */  lhu        $t8, 0x3a($sp)
/* 33B90 80032F90 C7AC003C */  lwc1       $f12, 0x3c($sp)
/* 33B94 80032F94 3C08800C */  lui        $t0, %hi(D_800BCCD0)
/* 33B98 80032F98 2508CCD0 */  addiu      $t0, $t0, %lo(D_800BCCD0)
/* 33B9C 80032F9C 444DF800 */  cfc1       $t5, $31
/* 33BA0 80032FA0 00000000 */  nop
/* 33BA4 80032FA4 35A10003 */  ori        $at, $t5, 3
/* 33BA8 80032FA8 38210002 */  xori       $at, $at, 2
/* 33BAC 80032FAC 44C1F800 */  ctc1       $at, $31
/* 33BB0 80032FB0 00000000 */  nop
/* 33BB4 80032FB4 46203224 */  cvt.w.d    $f8, $f6
/* 33BB8 80032FB8 44024000 */  mfc1       $v0, $f8
/* 33BBC 80032FBC 44CDF800 */  ctc1       $t5, $31
/* 33BC0 80032FC0 11E00006 */  beqz       $t7, .L80032FDC
/* 33BC4 80032FC4 01223021 */   addu      $a2, $t1, $v0
/* 33BC8 80032FC8 00583023 */  subu       $a2, $v0, $t8
/* 33BCC 80032FCC 24C60200 */  addiu      $a2, $a2, 0x200
/* 33BD0 80032FD0 30D9FFFF */  andi       $t9, $a2, 0xffff
/* 33BD4 80032FD4 10000003 */  b          .L80032FE4
/* 33BD8 80032FD8 03203025 */   or        $a2, $t9, $zero
.L80032FDC:
/* 33BDC 80032FDC 30CAFFFF */  andi       $t2, $a2, 0xffff
/* 33BE0 80032FE0 01403025 */  or         $a2, $t2, $zero
.L80032FE4:
/* 33BE4 80032FE4 30CB03FF */  andi       $t3, $a2, 0x3ff
/* 33BE8 80032FE8 000B6080 */  sll        $t4, $t3, 2
/* 33BEC 80032FEC 010C6821 */  addu       $t5, $t0, $t4
/* 33BF0 80032FF0 C5AA0000 */  lwc1       $f10, ($t5)
/* 33BF4 80032FF4 3C014780 */  lui        $at, 0x4780
/* 33BF8 80032FF8 460C5402 */  mul.s      $f16, $f10, $f12
/* 33BFC 80032FFC 44811000 */  mtc1       $at, $f2
/* 33C00 80033000 24C9FF00 */  addiu      $t1, $a2, -0x100
/* 33C04 80033004 312A03FF */  andi       $t2, $t1, 0x3ff
/* 33C08 80033008 46028002 */  mul.s      $f0, $f16, $f2
/* 33C0C 8003300C 000A5880 */  sll        $t3, $t2, 2
/* 33C10 80033010 010B6021 */  addu       $t4, $t0, $t3
/* 33C14 80033014 C5840000 */  lwc1       $f4, ($t4)
/* 33C18 80033018 444FF800 */  cfc1       $t7, $31
/* 33C1C 8003301C 8CAE0088 */  lw         $t6, 0x88($a1)
/* 33C20 80033020 35E10003 */  ori        $at, $t7, 3
/* 33C24 80033024 38210002 */  xori       $at, $at, 2
/* 33C28 80033028 44C1F800 */  ctc1       $at, $31
/* 33C2C 8003302C 35E10003 */  ori        $at, $t7, 3
/* 33C30 80033030 460004A4 */  cvt.w.s    $f18, $f0
/* 33C34 80033034 38210002 */  xori       $at, $at, 2
/* 33C38 80033038 44CFF800 */  ctc1       $t7, $31
/* 33C3C 8003303C 44189000 */  mfc1       $t8, $f18
/* 33C40 80033040 460C2182 */  mul.s      $f6, $f4, $f12
/* 33C44 80033044 01D8C821 */  addu       $t9, $t6, $t8
/* 33C48 80033048 AC790088 */  sw         $t9, 0x88($v1)
/* 33C4C 8003304C 8CAD008C */  lw         $t5, 0x8c($a1)
/* 33C50 80033050 46023002 */  mul.s      $f0, $f6, $f2
/* 33C54 80033054 87A90042 */  lh         $t1, 0x42($sp)
/* 33C58 80033058 00E01025 */  or         $v0, $a3, $zero
/* 33C5C 8003305C 44C1F800 */  ctc1       $at, $31
/* 33C60 80033060 00000000 */  nop
/* 33C64 80033064 46000224 */  cvt.w.s    $f8, $f0
/* 33C68 80033068 440E4000 */  mfc1       $t6, $f8
/* 33C6C 8003306C 44CFF800 */  ctc1       $t7, $31
/* 33C70 80033070 01AEC021 */  addu       $t8, $t5, $t6
/* 33C74 80033074 AC78008C */  sw         $t8, 0x8c($v1)
/* 33C78 80033078 8CB90090 */  lw         $t9, 0x90($a1)
/* 33C7C 8003307C 00000000 */  nop
/* 33C80 80033080 03295021 */  addu       $t2, $t9, $t1
/* 33C84 80033084 AC6A0090 */  sw         $t2, 0x90($v1)
/* 33C88 80033088 8CAB0188 */  lw         $t3, 0x188($a1)
/* 33C8C 8003308C 00000000 */  nop
/* 33C90 80033090 AC6B0188 */  sw         $t3, 0x188($v1)
.L80033094:
/* 33C94 80033094 8FBF0014 */  lw         $ra, 0x14($sp)
/* 33C98 80033098 27BD0030 */  addiu      $sp, $sp, 0x30
/* 33C9C 8003309C 03E00008 */  jr         $ra
/* 33CA0 800330A0 00000000 */   nop