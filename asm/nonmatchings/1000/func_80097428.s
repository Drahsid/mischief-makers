glabel func_80097428
/* 98028 80097428 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 9802C 8009742C AFB3002C */  sw         $s3, 0x2c($sp)
/* 98030 80097430 E7B4001C */  swc1       $f20, 0x1c($sp)
/* 98034 80097434 3C014234 */  lui        $at, 0x4234
/* 98038 80097438 AFB60038 */  sw         $s6, 0x38($sp)
/* 9803C 8009743C AFB50034 */  sw         $s5, 0x34($sp)
/* 98040 80097440 AFB40030 */  sw         $s4, 0x30($sp)
/* 98044 80097444 AFB10024 */  sw         $s1, 0x24($sp)
/* 98048 80097448 3C13800F */  lui        $s3, 0x800f
/* 9804C 8009744C 4481A000 */  mtc1       $at, $f20
/* 98050 80097450 AFBF003C */  sw         $ra, 0x3c($sp)
/* 98054 80097454 AFB20028 */  sw         $s2, 0x28($sp)
/* 98058 80097458 AFB00020 */  sw         $s0, 0x20($sp)
/* 9805C 8009745C E7B50018 */  swc1       $f21, 0x18($sp)
/* 98060 80097460 2673F510 */  addiu      $s3, $s3, -0xaf0
/* 98064 80097464 00008825 */  or         $s1, $zero, $zero
/* 98068 80097468 24140198 */  addiu      $s4, $zero, 0x198
/* 9806C 8009746C 2415090C */  addiu      $s5, $zero, 0x90c
/* 98070 80097470 24160014 */  addiu      $s6, $zero, 0x14
.L80097474:
/* 98074 80097474 0C00A14A */  jal        func_80028528
/* 98078 80097478 00000000 */   nop
/* 9807C 8009747C 10400011 */  beqz       $v0, .L800974C4
/* 98080 80097480 3052FFFF */   andi      $s2, $v0, 0xffff
/* 98084 80097484 3244FFFF */  andi       $a0, $s2, 0xffff
/* 98088 80097488 0C025CE1 */  jal        func_80097384
/* 9808C 8009748C 02208025 */   or        $s0, $s1, $zero
/* 98090 80097490 02540019 */  multu      $s2, $s4
/* 98094 80097494 0010C0C0 */  sll        $t8, $s0, 3
/* 98098 80097498 00007012 */  mflo       $t6
/* 9809C 8009749C 026E1021 */  addu       $v0, $s3, $t6
/* 980A0 800974A0 A4550094 */  sh         $s5, 0x94($v0)
/* 980A4 800974A4 02160019 */  multu      $s0, $s6
/* 980A8 800974A8 A058009C */  sb         $t8, 0x9c($v0)
/* 980AC 800974AC E45400C4 */  swc1       $f20, 0xc4($v0)
/* 980B0 800974B0 00007812 */  mflo       $t7
/* 980B4 800974B4 448F2000 */  mtc1       $t7, $f4
/* 980B8 800974B8 00000000 */  nop
/* 980BC 800974BC 468021A0 */  cvt.s.w    $f6, $f4
/* 980C0 800974C0 E44600C0 */  swc1       $f6, 0xc0($v0)
.L800974C4:
/* 980C4 800974C4 26310001 */  addiu      $s1, $s1, 1
/* 980C8 800974C8 3239FFFF */  andi       $t9, $s1, 0xffff
/* 980CC 800974CC 2B210009 */  slti       $at, $t9, 9
/* 980D0 800974D0 1420FFE8 */  bnez       $at, .L80097474
/* 980D4 800974D4 03208825 */   or        $s1, $t9, $zero
/* 980D8 800974D8 00008825 */  or         $s1, $zero, $zero
/* 980DC 800974DC 2415090A */  addiu      $s5, $zero, 0x90a
.L800974E0:
/* 980E0 800974E0 0C00A14A */  jal        func_80028528
/* 980E4 800974E4 00000000 */   nop
/* 980E8 800974E8 10400011 */  beqz       $v0, .L80097530
/* 980EC 800974EC 3052FFFF */   andi      $s2, $v0, 0xffff
/* 980F0 800974F0 3244FFFF */  andi       $a0, $s2, 0xffff
/* 980F4 800974F4 0C025CE1 */  jal        func_80097384
/* 980F8 800974F8 02208025 */   or        $s0, $s1, $zero
/* 980FC 800974FC 02540019 */  multu      $s2, $s4
/* 98100 80097500 001050C0 */  sll        $t2, $s0, 3
/* 98104 80097504 00004012 */  mflo       $t0
/* 98108 80097508 02681021 */  addu       $v0, $s3, $t0
/* 9810C 8009750C A4550094 */  sh         $s5, 0x94($v0)
/* 98110 80097510 02160019 */  multu      $s0, $s6
/* 98114 80097514 E45400C4 */  swc1       $f20, 0xc4($v0)
/* 98118 80097518 A04A009D */  sb         $t2, 0x9d($v0)
/* 9811C 8009751C 00004812 */  mflo       $t1
/* 98120 80097520 44894000 */  mtc1       $t1, $f8
/* 98124 80097524 00000000 */  nop
/* 98128 80097528 468042A0 */  cvt.s.w    $f10, $f8
/* 9812C 8009752C E44A00BC */  swc1       $f10, 0xbc($v0)
.L80097530:
/* 98130 80097530 26310001 */  addiu      $s1, $s1, 1
/* 98134 80097534 322BFFFF */  andi       $t3, $s1, 0xffff
/* 98138 80097538 29610009 */  slti       $at, $t3, 9
/* 9813C 8009753C 1420FFE8 */  bnez       $at, .L800974E0
/* 98140 80097540 01608825 */   or        $s1, $t3, $zero
/* 98144 80097544 8FBF003C */  lw         $ra, 0x3c($sp)
/* 98148 80097548 C7B50018 */  lwc1       $f21, 0x18($sp)
/* 9814C 8009754C C7B4001C */  lwc1       $f20, 0x1c($sp)
/* 98150 80097550 8FB00020 */  lw         $s0, 0x20($sp)
/* 98154 80097554 8FB10024 */  lw         $s1, 0x24($sp)
/* 98158 80097558 8FB20028 */  lw         $s2, 0x28($sp)
/* 9815C 8009755C 8FB3002C */  lw         $s3, 0x2c($sp)
/* 98160 80097560 8FB40030 */  lw         $s4, 0x30($sp)
/* 98164 80097564 8FB50034 */  lw         $s5, 0x34($sp)
/* 98168 80097568 8FB60038 */  lw         $s6, 0x38($sp)
/* 9816C 8009756C 03E00008 */  jr         $ra
/* 98170 80097570 27BD0040 */   addiu     $sp, $sp, 0x40
