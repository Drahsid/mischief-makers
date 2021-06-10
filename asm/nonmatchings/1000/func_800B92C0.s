glabel func_800B92C0
/* B9EC0 800B92C0 27BDFF68 */  addiu      $sp, $sp, -0x98
/* B9EC4 800B92C4 AFBF0024 */  sw         $ra, 0x24($sp)
/* B9EC8 800B92C8 AFA40098 */  sw         $a0, 0x98($sp)
/* B9ECC 800B92CC AFA5009C */  sw         $a1, 0x9c($sp)
/* B9ED0 800B92D0 AFB10020 */  sw         $s1, 0x20($sp)
/* B9ED4 800B92D4 AFB0001C */  sw         $s0, 0x1c($sp)
/* B9ED8 800B92D8 27AE0078 */  addiu      $t6, $sp, 0x78
/* B9EDC 800B92DC AFAE0074 */  sw         $t6, 0x74($sp)
/* B9EE0 800B92E0 8FAF0098 */  lw         $t7, 0x98($sp)
/* B9EE4 800B92E4 D5E40000 */  ldc1       $f4, ($t7)
/* B9EE8 800B92E8 F7A40068 */  sdc1       $f4, 0x68($sp)
/* B9EEC 800B92EC 8FB80098 */  lw         $t8, 0x98($sp)
/* B9EF0 800B92F0 8F190024 */  lw         $t9, 0x24($t8)
/* B9EF4 800B92F4 07210005 */  bgez       $t9, .L800B930C
/* B9EF8 800B92F8 00000000 */   nop
/* B9EFC 800B92FC 8FA90098 */  lw         $t1, 0x98($sp)
/* B9F00 800B9300 24080006 */  addiu      $t0, $zero, 6
/* B9F04 800B9304 1000000F */  b          .L800B9344
/* B9F08 800B9308 AD280024 */   sw        $t0, 0x24($t1)
.L800B930C:
/* B9F0C 800B930C 8FAA0098 */  lw         $t2, 0x98($sp)
/* B9F10 800B9310 8D4B0024 */  lw         $t3, 0x24($t2)
/* B9F14 800B9314 1560000B */  bnez       $t3, .L800B9344
/* B9F18 800B9318 00000000 */   nop
/* B9F1C 800B931C 93AC009F */  lbu        $t4, 0x9f($sp)
/* B9F20 800B9320 24010067 */  addiu      $at, $zero, 0x67
/* B9F24 800B9324 11810004 */  beq        $t4, $at, .L800B9338
/* B9F28 800B9328 00000000 */   nop
/* B9F2C 800B932C 24010047 */  addiu      $at, $zero, 0x47
/* B9F30 800B9330 15810004 */  bne        $t4, $at, .L800B9344
/* B9F34 800B9334 00000000 */   nop
.L800B9338:
/* B9F38 800B9338 8FAE0098 */  lw         $t6, 0x98($sp)
/* B9F3C 800B933C 240D0001 */  addiu      $t5, $zero, 1
/* B9F40 800B9340 ADCD0024 */  sw         $t5, 0x24($t6)
.L800B9344:
/* B9F44 800B9344 27A40062 */  addiu      $a0, $sp, 0x62
/* B9F48 800B9348 0C02E641 */  jal        func_800B9904
/* B9F4C 800B934C 8FA50098 */   lw        $a1, 0x98($sp)
/* B9F50 800B9350 A7A20066 */  sh         $v0, 0x66($sp)
/* B9F54 800B9354 87AF0066 */  lh         $t7, 0x66($sp)
/* B9F58 800B9358 19E00016 */  blez       $t7, .L800B93B4
/* B9F5C 800B935C 00000000 */   nop
/* B9F60 800B9360 87B80066 */  lh         $t8, 0x66($sp)
/* B9F64 800B9364 24010002 */  addiu      $at, $zero, 2
/* B9F68 800B9368 17010004 */  bne        $t8, $at, .L800B937C
/* B9F6C 800B936C 00000000 */   nop
/* B9F70 800B9370 3C10800F */  lui        $s0, %hi(D_800EE9F8)
/* B9F74 800B9374 10000003 */  b          .L800B9384
/* B9F78 800B9378 2610E9F8 */   addiu     $s0, $s0, %lo(D_800EE9F8)
.L800B937C:
/* B9F7C 800B937C 3C10800F */  lui        $s0, %hi(D_800EE9FC)
/* B9F80 800B9380 2610E9FC */  addiu      $s0, $s0, %lo(D_800EE9FC)
.L800B9384:
/* B9F84 800B9384 8FB90098 */  lw         $t9, 0x98($sp)
/* B9F88 800B9388 24080003 */  addiu      $t0, $zero, 3
/* B9F8C 800B938C 02002825 */  or         $a1, $s0, $zero
/* B9F90 800B9390 AF280014 */  sw         $t0, 0x14($t9)
/* B9F94 800B9394 8FA90098 */  lw         $t1, 0x98($sp)
/* B9F98 800B9398 8F240008 */  lw         $a0, 8($t9)
/* B9F9C 800B939C 0C029735 */  jal        func_800A5CD4
/* B9FA0 800B93A0 8D260014 */   lw        $a2, 0x14($t1)
/* B9FA4 800B93A4 10000152 */  b          .L800B98F0
/* B9FA8 800B93A8 00000000 */   nop
/* B9FAC 800B93AC 10000147 */  b          .L800B98CC
/* B9FB0 800B93B0 00000000 */   nop
.L800B93B4:
/* B9FB4 800B93B4 87AA0066 */  lh         $t2, 0x66($sp)
/* B9FB8 800B93B8 15400004 */  bnez       $t2, .L800B93CC
/* B9FBC 800B93BC 00000000 */   nop
/* B9FC0 800B93C0 A7A00064 */  sh         $zero, 0x64($sp)
/* B9FC4 800B93C4 10000141 */  b          .L800B98CC
/* B9FC8 800B93C8 A7A00062 */   sh        $zero, 0x62($sp)
.L800B93CC:
/* B9FCC 800B93CC D7A60068 */  ldc1       $f6, 0x68($sp)
/* B9FD0 800B93D0 44804800 */  mtc1       $zero, $f9
/* B9FD4 800B93D4 44804000 */  mtc1       $zero, $f8
/* B9FD8 800B93D8 00000000 */  nop
/* B9FDC 800B93DC 4628303C */  c.lt.d     $f6, $f8
/* B9FE0 800B93E0 00000000 */  nop
/* B9FE4 800B93E4 45000004 */  bc1f       .L800B93F8
/* B9FE8 800B93E8 00000000 */   nop
/* B9FEC 800B93EC D7AA0068 */  ldc1       $f10, 0x68($sp)
/* B9FF0 800B93F0 46205407 */  neg.d      $f16, $f10
/* B9FF4 800B93F4 F7B00068 */  sdc1       $f16, 0x68($sp)
.L800B93F8:
/* B9FF8 800B93F8 87AB0062 */  lh         $t3, 0x62($sp)
/* B9FFC 800B93FC 24017597 */  addiu      $at, $zero, 0x7597
/* BA000 800B9400 01610019 */  multu      $t3, $at
/* BA004 800B9404 3C010001 */  lui        $at, 1
/* BA008 800B9408 342186A0 */  ori        $at, $at, 0x86a0
/* BA00C 800B940C 00006012 */  mflo       $t4
/* BA010 800B9410 00000000 */  nop
/* BA014 800B9414 00000000 */  nop
/* BA018 800B9418 0181001A */  div        $zero, $t4, $at
/* BA01C 800B941C 00006812 */  mflo       $t5
/* BA020 800B9420 25AEFFFC */  addiu      $t6, $t5, -4
/* BA024 800B9424 000E7C00 */  sll        $t7, $t6, 0x10
/* BA028 800B9428 000FC403 */  sra        $t8, $t7, 0x10
/* BA02C 800B942C 07010022 */  bgez       $t8, .L800B94B8
/* BA030 800B9430 A7AE0062 */   sh        $t6, 0x62($sp)
/* BA034 800B9434 87A80062 */  lh         $t0, 0x62($sp)
/* BA038 800B9438 24190003 */  addiu      $t9, $zero, 3
/* BA03C 800B943C 2401FFFC */  addiu      $at, $zero, -4
/* BA040 800B9440 03284823 */  subu       $t1, $t9, $t0
/* BA044 800B9444 01215024 */  and        $t2, $t1, $at
/* BA048 800B9448 000A5823 */  negu       $t3, $t2
/* BA04C 800B944C A7AB0062 */  sh         $t3, 0x62($sp)
/* BA050 800B9450 AFAA0058 */  sw         $t2, 0x58($sp)
/* BA054 800B9454 8FAC0058 */  lw         $t4, 0x58($sp)
/* BA058 800B9458 AFA0005C */  sw         $zero, 0x5c($sp)
/* BA05C 800B945C 19800014 */  blez       $t4, .L800B94B0
/* BA060 800B9460 00000000 */   nop
.L800B9464:
/* BA064 800B9464 8FAD0058 */  lw         $t5, 0x58($sp)
/* BA068 800B9468 31AE0001 */  andi       $t6, $t5, 1
/* BA06C 800B946C 11C00009 */  beqz       $t6, .L800B9494
/* BA070 800B9470 00000000 */   nop
/* BA074 800B9474 8FAF005C */  lw         $t7, 0x5c($sp)
/* BA078 800B9478 3C01800F */  lui        $at, %hi(D_800EE9B0)
/* BA07C 800B947C D7B20068 */  ldc1       $f18, 0x68($sp)
/* BA080 800B9480 000FC0C0 */  sll        $t8, $t7, 3
/* BA084 800B9484 00380821 */  addu       $at, $at, $t8
/* BA088 800B9488 D424E9B0 */  ldc1       $f4, %lo(D_800EE9B0)($at)
/* BA08C 800B948C 46249182 */  mul.d      $f6, $f18, $f4
/* BA090 800B9490 F7A60068 */  sdc1       $f6, 0x68($sp)
.L800B9494:
/* BA094 800B9494 8FB90058 */  lw         $t9, 0x58($sp)
/* BA098 800B9498 8FA9005C */  lw         $t1, 0x5c($sp)
/* BA09C 800B949C 00194043 */  sra        $t0, $t9, 1
/* BA0A0 800B94A0 252A0001 */  addiu      $t2, $t1, 1
/* BA0A4 800B94A4 AFAA005C */  sw         $t2, 0x5c($sp)
/* BA0A8 800B94A8 1D00FFEE */  bgtz       $t0, .L800B9464
/* BA0AC 800B94AC AFA80058 */   sw        $t0, 0x58($sp)
.L800B94B0:
/* BA0B0 800B94B0 10000028 */  b          .L800B9554
/* BA0B4 800B94B4 00000000 */   nop
.L800B94B8:
/* BA0B8 800B94B8 87AB0062 */  lh         $t3, 0x62($sp)
/* BA0BC 800B94BC 19600025 */  blez       $t3, .L800B9554
/* BA0C0 800B94C0 00000000 */   nop
/* BA0C4 800B94C4 3C013FF0 */  lui        $at, 0x3ff0
/* BA0C8 800B94C8 44814800 */  mtc1       $at, $f9
/* BA0CC 800B94CC 44804000 */  mtc1       $zero, $f8
/* BA0D0 800B94D0 00000000 */  nop
/* BA0D4 800B94D4 F7A80050 */  sdc1       $f8, 0x50($sp)
/* BA0D8 800B94D8 87AC0062 */  lh         $t4, 0x62($sp)
/* BA0DC 800B94DC 2401FFFC */  addiu      $at, $zero, -4
/* BA0E0 800B94E0 01816824 */  and        $t5, $t4, $at
/* BA0E4 800B94E4 A7AD0062 */  sh         $t5, 0x62($sp)
/* BA0E8 800B94E8 87AE0062 */  lh         $t6, 0x62($sp)
/* BA0EC 800B94EC AFA0005C */  sw         $zero, 0x5c($sp)
/* BA0F0 800B94F0 19C00014 */  blez       $t6, .L800B9544
/* BA0F4 800B94F4 AFAE0058 */   sw        $t6, 0x58($sp)
.L800B94F8:
/* BA0F8 800B94F8 8FAF0058 */  lw         $t7, 0x58($sp)
/* BA0FC 800B94FC 31F80001 */  andi       $t8, $t7, 1
/* BA100 800B9500 13000009 */  beqz       $t8, .L800B9528
/* BA104 800B9504 00000000 */   nop
/* BA108 800B9508 8FB9005C */  lw         $t9, 0x5c($sp)
/* BA10C 800B950C 3C01800F */  lui        $at, %hi(D_800EE9B0)
/* BA110 800B9510 D7AA0050 */  ldc1       $f10, 0x50($sp)
/* BA114 800B9514 001948C0 */  sll        $t1, $t9, 3
/* BA118 800B9518 00290821 */  addu       $at, $at, $t1
/* BA11C 800B951C D430E9B0 */  ldc1       $f16, %lo(D_800EE9B0)($at)
/* BA120 800B9520 46305482 */  mul.d      $f18, $f10, $f16
/* BA124 800B9524 F7B20050 */  sdc1       $f18, 0x50($sp)
.L800B9528:
/* BA128 800B9528 8FAA0058 */  lw         $t2, 0x58($sp)
/* BA12C 800B952C 8FAB005C */  lw         $t3, 0x5c($sp)
/* BA130 800B9530 000A4043 */  sra        $t0, $t2, 1
/* BA134 800B9534 256C0001 */  addiu      $t4, $t3, 1
/* BA138 800B9538 AFAC005C */  sw         $t4, 0x5c($sp)
/* BA13C 800B953C 1D00FFEE */  bgtz       $t0, .L800B94F8
/* BA140 800B9540 AFA80058 */   sw        $t0, 0x58($sp)
.L800B9544:
/* BA144 800B9544 D7A40068 */  ldc1       $f4, 0x68($sp)
/* BA148 800B9548 D7A60050 */  ldc1       $f6, 0x50($sp)
/* BA14C 800B954C 46262203 */  div.d      $f8, $f4, $f6
/* BA150 800B9550 F7A80068 */  sdc1       $f8, 0x68($sp)
.L800B9554:
/* BA154 800B9554 93AD009F */  lbu        $t5, 0x9f($sp)
/* BA158 800B9558 24010066 */  addiu      $at, $zero, 0x66
/* BA15C 800B955C 15A10004 */  bne        $t5, $at, .L800B9570
/* BA160 800B9560 00000000 */   nop
/* BA164 800B9564 87B00062 */  lh         $s0, 0x62($sp)
/* BA168 800B9568 10000002 */  b          .L800B9574
/* BA16C 800B956C 2610000A */   addiu     $s0, $s0, 0xa
.L800B9570:
/* BA170 800B9570 24100006 */  addiu      $s0, $zero, 6
.L800B9574:
/* BA174 800B9574 8FAE0098 */  lw         $t6, 0x98($sp)
/* BA178 800B9578 8DCF0024 */  lw         $t7, 0x24($t6)
/* BA17C 800B957C 020FC021 */  addu       $t8, $s0, $t7
/* BA180 800B9580 AFB8004C */  sw         $t8, 0x4c($sp)
/* BA184 800B9584 8FB9004C */  lw         $t9, 0x4c($sp)
/* BA188 800B9588 2B210014 */  slti       $at, $t9, 0x14
/* BA18C 800B958C 14200003 */  bnez       $at, .L800B959C
/* BA190 800B9590 00000000 */   nop
/* BA194 800B9594 24090013 */  addiu      $t1, $zero, 0x13
/* BA198 800B9598 AFA9004C */  sw         $t1, 0x4c($sp)
.L800B959C:
/* BA19C 800B959C 8FAB0074 */  lw         $t3, 0x74($sp)
/* BA1A0 800B95A0 240A0030 */  addiu      $t2, $zero, 0x30
/* BA1A4 800B95A4 A16A0000 */  sb         $t2, ($t3)
/* BA1A8 800B95A8 8FAC0074 */  lw         $t4, 0x74($sp)
/* BA1AC 800B95AC 8FAD004C */  lw         $t5, 0x4c($sp)
/* BA1B0 800B95B0 25880001 */  addiu      $t0, $t4, 1
/* BA1B4 800B95B4 19A0004D */  blez       $t5, .L800B96EC
/* BA1B8 800B95B8 AFA80074 */   sw        $t0, 0x74($sp)
/* BA1BC 800B95BC 44805800 */  mtc1       $zero, $f11
/* BA1C0 800B95C0 44805000 */  mtc1       $zero, $f10
/* BA1C4 800B95C4 D7B00068 */  ldc1       $f16, 0x68($sp)
/* BA1C8 800B95C8 4630503C */  c.lt.d     $f10, $f16
/* BA1CC 800B95CC 00000000 */  nop
/* BA1D0 800B95D0 45000046 */  bc1f       .L800B96EC
/* BA1D4 800B95D4 00000000 */   nop
.L800B95D8:
/* BA1D8 800B95D8 D7B20068 */  ldc1       $f18, 0x68($sp)
/* BA1DC 800B95DC 4620910D */  trunc.w.d  $f4, $f18
/* BA1E0 800B95E0 E7A40044 */  swc1       $f4, 0x44($sp)
/* BA1E4 800B95E4 8FAF004C */  lw         $t7, 0x4c($sp)
/* BA1E8 800B95E8 25F8FFF8 */  addiu      $t8, $t7, -8
/* BA1EC 800B95EC 1B00000A */  blez       $t8, .L800B9618
/* BA1F0 800B95F0 AFB8004C */   sw        $t8, 0x4c($sp)
/* BA1F4 800B95F4 8FB90044 */  lw         $t9, 0x44($sp)
/* BA1F8 800B95F8 D7A60068 */  ldc1       $f6, 0x68($sp)
/* BA1FC 800B95FC 3C01800F */  lui        $at, %hi(D_800EEA08)
/* BA200 800B9600 44994000 */  mtc1       $t9, $f8
/* BA204 800B9604 D432EA08 */  ldc1       $f18, %lo(D_800EEA08)($at)
/* BA208 800B9608 468042A1 */  cvt.d.w    $f10, $f8
/* BA20C 800B960C 462A3401 */  sub.d      $f16, $f6, $f10
/* BA210 800B9610 46328102 */  mul.d      $f4, $f16, $f18
/* BA214 800B9614 F7A40068 */  sdc1       $f4, 0x68($sp)
.L800B9618:
/* BA218 800B9618 8FA90074 */  lw         $t1, 0x74($sp)
/* BA21C 800B961C 8FAC0044 */  lw         $t4, 0x44($sp)
/* BA220 800B9620 240B0008 */  addiu      $t3, $zero, 8
/* BA224 800B9624 252A0008 */  addiu      $t2, $t1, 8
/* BA228 800B9628 AFAA0074 */  sw         $t2, 0x74($sp)
/* BA22C 800B962C 19800016 */  blez       $t4, .L800B9688
/* BA230 800B9630 AFAB0048 */   sw        $t3, 0x48($sp)
/* BA234 800B9634 24080007 */  addiu      $t0, $zero, 7
/* BA238 800B9638 AFA80048 */  sw         $t0, 0x48($sp)
.L800B963C:
/* BA23C 800B963C 27A4003C */  addiu      $a0, $sp, 0x3c
/* BA240 800B9640 8FA50044 */  lw         $a1, 0x44($sp)
/* BA244 800B9644 0C02E9FC */  jal        func_800BA7F0
/* BA248 800B9648 2406000A */   addiu     $a2, $zero, 0xa
/* BA24C 800B964C 8FAD0074 */  lw         $t5, 0x74($sp)
/* BA250 800B9650 8FAF0040 */  lw         $t7, 0x40($sp)
/* BA254 800B9654 25AEFFFF */  addiu      $t6, $t5, -1
/* BA258 800B9658 AFAE0074 */  sw         $t6, 0x74($sp)
/* BA25C 800B965C 25F80030 */  addiu      $t8, $t7, 0x30
/* BA260 800B9660 A1D80000 */  sb         $t8, ($t6)
/* BA264 800B9664 8FB9003C */  lw         $t9, 0x3c($sp)
/* BA268 800B9668 AFB90044 */  sw         $t9, 0x44($sp)
/* BA26C 800B966C 8FA90044 */  lw         $t1, 0x44($sp)
/* BA270 800B9670 19200005 */  blez       $t1, .L800B9688
/* BA274 800B9674 00000000 */   nop
/* BA278 800B9678 8FAA0048 */  lw         $t2, 0x48($sp)
/* BA27C 800B967C 254BFFFF */  addiu      $t3, $t2, -1
/* BA280 800B9680 0561FFEE */  bgez       $t3, .L800B963C
/* BA284 800B9684 AFAB0048 */   sw        $t3, 0x48($sp)
.L800B9688:
/* BA288 800B9688 8FAC0048 */  lw         $t4, 0x48($sp)
/* BA28C 800B968C 2588FFFF */  addiu      $t0, $t4, -1
/* BA290 800B9690 0500000A */  bltz       $t0, .L800B96BC
/* BA294 800B9694 AFA80048 */   sw        $t0, 0x48($sp)
.L800B9698:
/* BA298 800B9698 8FAD0074 */  lw         $t5, 0x74($sp)
/* BA29C 800B969C 24180030 */  addiu      $t8, $zero, 0x30
/* BA2A0 800B96A0 25AFFFFF */  addiu      $t7, $t5, -1
/* BA2A4 800B96A4 AFAF0074 */  sw         $t7, 0x74($sp)
/* BA2A8 800B96A8 A1F80000 */  sb         $t8, ($t7)
/* BA2AC 800B96AC 8FAE0048 */  lw         $t6, 0x48($sp)
/* BA2B0 800B96B0 25D9FFFF */  addiu      $t9, $t6, -1
/* BA2B4 800B96B4 0721FFF8 */  bgez       $t9, .L800B9698
/* BA2B8 800B96B8 AFB90048 */   sw        $t9, 0x48($sp)
.L800B96BC:
/* BA2BC 800B96BC 8FA90074 */  lw         $t1, 0x74($sp)
/* BA2C0 800B96C0 8FAB004C */  lw         $t3, 0x4c($sp)
/* BA2C4 800B96C4 252A0008 */  addiu      $t2, $t1, 8
/* BA2C8 800B96C8 19600008 */  blez       $t3, .L800B96EC
/* BA2CC 800B96CC AFAA0074 */   sw        $t2, 0x74($sp)
/* BA2D0 800B96D0 44804800 */  mtc1       $zero, $f9
/* BA2D4 800B96D4 44804000 */  mtc1       $zero, $f8
/* BA2D8 800B96D8 D7A60068 */  ldc1       $f6, 0x68($sp)
/* BA2DC 800B96DC 4626403C */  c.lt.d     $f8, $f6
/* BA2E0 800B96E0 00000000 */  nop
/* BA2E4 800B96E4 4501FFBC */  bc1t       .L800B95D8
/* BA2E8 800B96E8 00000000 */   nop
.L800B96EC:
/* BA2EC 800B96EC 8FAC0074 */  lw         $t4, 0x74($sp)
/* BA2F0 800B96F0 27A80078 */  addiu      $t0, $sp, 0x78
/* BA2F4 800B96F4 01886823 */  subu       $t5, $t4, $t0
/* BA2F8 800B96F8 25B8FFFF */  addiu      $t8, $t5, -1
/* BA2FC 800B96FC AFB8004C */  sw         $t8, 0x4c($sp)
/* BA300 800B9700 87B90062 */  lh         $t9, 0x62($sp)
/* BA304 800B9704 27AF0078 */  addiu      $t7, $sp, 0x78
/* BA308 800B9708 25EE0001 */  addiu      $t6, $t7, 1
/* BA30C 800B970C 27290007 */  addiu      $t1, $t9, 7
/* BA310 800B9710 A7A90062 */  sh         $t1, 0x62($sp)
/* BA314 800B9714 AFAE0074 */  sw         $t6, 0x74($sp)
/* BA318 800B9718 91EA0001 */  lbu        $t2, 1($t7)
/* BA31C 800B971C 24010030 */  addiu      $at, $zero, 0x30
/* BA320 800B9720 1541000E */  bne        $t2, $at, .L800B975C
/* BA324 800B9724 00000000 */   nop
.L800B9728:
/* BA328 800B9728 8FAB004C */  lw         $t3, 0x4c($sp)
/* BA32C 800B972C 87A80062 */  lh         $t0, 0x62($sp)
/* BA330 800B9730 256CFFFF */  addiu      $t4, $t3, -1
/* BA334 800B9734 250DFFFF */  addiu      $t5, $t0, -1
/* BA338 800B9738 A7AD0062 */  sh         $t5, 0x62($sp)
/* BA33C 800B973C AFAC004C */  sw         $t4, 0x4c($sp)
/* BA340 800B9740 8FB80074 */  lw         $t8, 0x74($sp)
/* BA344 800B9744 24010030 */  addiu      $at, $zero, 0x30
/* BA348 800B9748 270E0001 */  addiu      $t6, $t8, 1
/* BA34C 800B974C AFAE0074 */  sw         $t6, 0x74($sp)
/* BA350 800B9750 91D90000 */  lbu        $t9, ($t6)
/* BA354 800B9754 1321FFF4 */  beq        $t9, $at, .L800B9728
/* BA358 800B9758 00000000 */   nop
.L800B975C:
/* BA35C 800B975C 93A9009F */  lbu        $t1, 0x9f($sp)
/* BA360 800B9760 24010066 */  addiu      $at, $zero, 0x66
/* BA364 800B9764 15210004 */  bne        $t1, $at, .L800B9778
/* BA368 800B9768 00000000 */   nop
/* BA36C 800B976C 87B00062 */  lh         $s0, 0x62($sp)
/* BA370 800B9770 1000000C */  b          .L800B97A4
/* BA374 800B9774 26100001 */   addiu     $s0, $s0, 1
.L800B9778:
/* BA378 800B9778 93AF009F */  lbu        $t7, 0x9f($sp)
/* BA37C 800B977C 24010065 */  addiu      $at, $zero, 0x65
/* BA380 800B9780 11E10004 */  beq        $t7, $at, .L800B9794
/* BA384 800B9784 00000000 */   nop
/* BA388 800B9788 24010045 */  addiu      $at, $zero, 0x45
/* BA38C 800B978C 15E10003 */  bne        $t7, $at, .L800B979C
/* BA390 800B9790 00000000 */   nop
.L800B9794:
/* BA394 800B9794 10000002 */  b          .L800B97A0
/* BA398 800B9798 24110001 */   addiu     $s1, $zero, 1
.L800B979C:
/* BA39C 800B979C 00008825 */  or         $s1, $zero, $zero
.L800B97A0:
/* BA3A0 800B97A0 02208025 */  or         $s0, $s1, $zero
.L800B97A4:
/* BA3A4 800B97A4 8FAA0098 */  lw         $t2, 0x98($sp)
/* BA3A8 800B97A8 8D4B0024 */  lw         $t3, 0x24($t2)
/* BA3AC 800B97AC 020B6021 */  addu       $t4, $s0, $t3
/* BA3B0 800B97B0 A7AC0064 */  sh         $t4, 0x64($sp)
/* BA3B4 800B97B4 8FA8004C */  lw         $t0, 0x4c($sp)
/* BA3B8 800B97B8 87AD0064 */  lh         $t5, 0x64($sp)
/* BA3BC 800B97BC 010D082A */  slt        $at, $t0, $t5
/* BA3C0 800B97C0 10200003 */  beqz       $at, .L800B97D0
/* BA3C4 800B97C4 00000000 */   nop
/* BA3C8 800B97C8 8FB8004C */  lw         $t8, 0x4c($sp)
/* BA3CC 800B97CC A7B80064 */  sh         $t8, 0x64($sp)
.L800B97D0:
/* BA3D0 800B97D0 87AE0064 */  lh         $t6, 0x64($sp)
/* BA3D4 800B97D4 19C0003D */  blez       $t6, .L800B98CC
/* BA3D8 800B97D8 00000000 */   nop
/* BA3DC 800B97DC 87B90064 */  lh         $t9, 0x64($sp)
/* BA3E0 800B97E0 8FA9004C */  lw         $t1, 0x4c($sp)
/* BA3E4 800B97E4 0329082A */  slt        $at, $t9, $t1
/* BA3E8 800B97E8 1020000A */  beqz       $at, .L800B9814
/* BA3EC 800B97EC 00000000 */   nop
/* BA3F0 800B97F0 8FAF0074 */  lw         $t7, 0x74($sp)
/* BA3F4 800B97F4 032F5021 */  addu       $t2, $t9, $t7
/* BA3F8 800B97F8 914B0000 */  lbu        $t3, ($t2)
/* BA3FC 800B97FC 29610035 */  slti       $at, $t3, 0x35
/* BA400 800B9800 14200004 */  bnez       $at, .L800B9814
/* BA404 800B9804 00000000 */   nop
/* BA408 800B9808 240C0039 */  addiu      $t4, $zero, 0x39
/* BA40C 800B980C 10000003 */  b          .L800B981C
/* BA410 800B9810 A3AC003B */   sb        $t4, 0x3b($sp)
.L800B9814:
/* BA414 800B9814 24080030 */  addiu      $t0, $zero, 0x30
/* BA418 800B9818 A3A8003B */  sb         $t0, 0x3b($sp)
.L800B981C:
/* BA41C 800B981C 87AD0064 */  lh         $t5, 0x64($sp)
/* BA420 800B9820 8FAE0074 */  lw         $t6, 0x74($sp)
/* BA424 800B9824 93AF003B */  lbu        $t7, 0x3b($sp)
/* BA428 800B9828 25B8FFFF */  addiu      $t8, $t5, -1
/* BA42C 800B982C AFAD0034 */  sw         $t5, 0x34($sp)
/* BA430 800B9830 AFB80034 */  sw         $t8, 0x34($sp)
/* BA434 800B9834 030E4821 */  addu       $t1, $t8, $t6
/* BA438 800B9838 91390000 */  lbu        $t9, ($t1)
/* BA43C 800B983C 172F000D */  bne        $t9, $t7, .L800B9874
/* BA440 800B9840 00000000 */   nop
.L800B9844:
/* BA444 800B9844 87AA0064 */  lh         $t2, 0x64($sp)
/* BA448 800B9848 254BFFFF */  addiu      $t3, $t2, -1
/* BA44C 800B984C A7AB0064 */  sh         $t3, 0x64($sp)
/* BA450 800B9850 8FAC0034 */  lw         $t4, 0x34($sp)
/* BA454 800B9854 8FAD0074 */  lw         $t5, 0x74($sp)
/* BA458 800B9858 93A9003B */  lbu        $t1, 0x3b($sp)
/* BA45C 800B985C 2588FFFF */  addiu      $t0, $t4, -1
/* BA460 800B9860 AFA80034 */  sw         $t0, 0x34($sp)
/* BA464 800B9864 010DC021 */  addu       $t8, $t0, $t5
/* BA468 800B9868 930E0000 */  lbu        $t6, ($t8)
/* BA46C 800B986C 11C9FFF5 */  beq        $t6, $t1, .L800B9844
/* BA470 800B9870 00000000 */   nop
.L800B9874:
/* BA474 800B9874 93B9003B */  lbu        $t9, 0x3b($sp)
/* BA478 800B9878 24010039 */  addiu      $at, $zero, 0x39
/* BA47C 800B987C 17210007 */  bne        $t9, $at, .L800B989C
/* BA480 800B9880 00000000 */   nop
/* BA484 800B9884 8FAF0074 */  lw         $t7, 0x74($sp)
/* BA488 800B9888 8FAA0034 */  lw         $t2, 0x34($sp)
/* BA48C 800B988C 01EA5821 */  addu       $t3, $t7, $t2
/* BA490 800B9890 916C0000 */  lbu        $t4, ($t3)
/* BA494 800B9894 25880001 */  addiu      $t0, $t4, 1
/* BA498 800B9898 A1680000 */  sb         $t0, ($t3)
.L800B989C:
/* BA49C 800B989C 8FAD0034 */  lw         $t5, 0x34($sp)
/* BA4A0 800B98A0 05A1000A */  bgez       $t5, .L800B98CC
/* BA4A4 800B98A4 00000000 */   nop
/* BA4A8 800B98A8 8FB80074 */  lw         $t8, 0x74($sp)
/* BA4AC 800B98AC 87A90064 */  lh         $t1, 0x64($sp)
/* BA4B0 800B98B0 87AF0062 */  lh         $t7, 0x62($sp)
/* BA4B4 800B98B4 270EFFFF */  addiu      $t6, $t8, -1
/* BA4B8 800B98B8 25390001 */  addiu      $t9, $t1, 1
/* BA4BC 800B98BC 25EA0001 */  addiu      $t2, $t7, 1
/* BA4C0 800B98C0 A7AA0062 */  sh         $t2, 0x62($sp)
/* BA4C4 800B98C4 A7B90064 */  sh         $t9, 0x64($sp)
/* BA4C8 800B98C8 AFAE0074 */  sw         $t6, 0x74($sp)
.L800B98CC:
/* BA4CC 800B98CC 87AC0062 */  lh         $t4, 0x62($sp)
/* BA4D0 800B98D0 8FA40098 */  lw         $a0, 0x98($sp)
/* BA4D4 800B98D4 93A5009F */  lbu        $a1, 0x9f($sp)
/* BA4D8 800B98D8 8FA60074 */  lw         $a2, 0x74($sp)
/* BA4DC 800B98DC 87A70064 */  lh         $a3, 0x64($sp)
/* BA4E0 800B98E0 0C02E682 */  jal        func_800B9A08
/* BA4E4 800B98E4 AFAC0010 */   sw        $t4, 0x10($sp)
/* BA4E8 800B98E8 10000001 */  b          .L800B98F0
/* BA4EC 800B98EC 00000000 */   nop
.L800B98F0:
/* BA4F0 800B98F0 8FBF0024 */  lw         $ra, 0x24($sp)
/* BA4F4 800B98F4 8FB0001C */  lw         $s0, 0x1c($sp)
/* BA4F8 800B98F8 8FB10020 */  lw         $s1, 0x20($sp)
/* BA4FC 800B98FC 03E00008 */  jr         $ra
/* BA500 800B9900 27BD0098 */   addiu     $sp, $sp, 0x98
