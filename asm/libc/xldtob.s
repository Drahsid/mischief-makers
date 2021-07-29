.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel _Ldtob
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
/* B9F70 800B9370 3C10800F */  lui        $s0, %hi(xldtob_rodata_0048)
/* B9F74 800B9374 10000003 */  b          .L800B9384
/* B9F78 800B9378 2610E9F8 */   addiu     $s0, $s0, %lo(xldtob_rodata_0048)
.L800B937C:
/* B9F7C 800B937C 3C10800F */  lui        $s0, %hi(xldtob_rodata_004C)
/* B9F80 800B9380 2610E9FC */  addiu      $s0, $s0, %lo(xldtob_rodata_004C)
.L800B9384:
/* B9F84 800B9384 8FB90098 */  lw         $t9, 0x98($sp)
/* B9F88 800B9388 24080003 */  addiu      $t0, $zero, 3
/* B9F8C 800B938C 02002825 */  or         $a1, $s0, $zero
/* B9F90 800B9390 AF280014 */  sw         $t0, 0x14($t9)
/* B9F94 800B9394 8FA90098 */  lw         $t1, 0x98($sp)
/* B9F98 800B9398 8F240008 */  lw         $a0, 8($t9)
/* B9F9C 800B939C 0C029735 */  jal        memcpy
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
/* BA078 800B9478 3C01800F */  lui        $at, %hi(xldtob_rodata_0000)
/* BA07C 800B947C D7B20068 */  ldc1       $f18, 0x68($sp)
/* BA080 800B9480 000FC0C0 */  sll        $t8, $t7, 3
/* BA084 800B9484 00380821 */  addu       $at, $at, $t8
/* BA088 800B9488 D424E9B0 */  ldc1       $f4, %lo(xldtob_rodata_0000)($at)
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
/* BA10C 800B950C 3C01800F */  lui        $at, %hi(xldtob_rodata_0000)
/* BA110 800B9510 D7AA0050 */  ldc1       $f10, 0x50($sp)
/* BA114 800B9514 001948C0 */  sll        $t1, $t9, 3
/* BA118 800B9518 00290821 */  addu       $at, $at, $t1
/* BA11C 800B951C D430E9B0 */  ldc1       $f16, %lo(xldtob_rodata_0000)($at)
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
/* BA1FC 800B95FC 3C01800F */  lui        $at, %hi(xldtob_rodata_0058)
/* BA200 800B9600 44994000 */  mtc1       $t9, $f8
/* BA204 800B9604 D432EA08 */  ldc1       $f18, %lo(xldtob_rodata_0058)($at)
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
/* BA244 800B9644 0C02E9FC */  jal        ldiv
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

glabel func_800B9904
/* BA504 800B9904 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* BA508 800B9908 AFA5000C */  sw         $a1, 0xc($sp)
/* BA50C 800B990C 8FAE000C */  lw         $t6, 0xc($sp)
/* BA510 800B9910 95CF0000 */  lhu        $t7, ($t6)
/* BA514 800B9914 31F87FF0 */  andi       $t8, $t7, 0x7ff0
/* BA518 800B9918 0018C903 */  sra        $t9, $t8, 4
/* BA51C 800B991C A7B9000A */  sh         $t9, 0xa($sp)
/* BA520 800B9920 87A8000A */  lh         $t0, 0xa($sp)
/* BA524 800B9924 240107FF */  addiu      $at, $zero, 0x7ff
/* BA528 800B9928 15010019 */  bne        $t0, $at, .L800B9990
/* BA52C 800B992C 00000000 */   nop
/* BA530 800B9930 A4800000 */  sh         $zero, ($a0)
/* BA534 800B9934 8FA9000C */  lw         $t1, 0xc($sp)
/* BA538 800B9938 952A0000 */  lhu        $t2, ($t1)
/* BA53C 800B993C 314B000F */  andi       $t3, $t2, 0xf
/* BA540 800B9940 1560000A */  bnez       $t3, .L800B996C
/* BA544 800B9944 00000000 */   nop
/* BA548 800B9948 952C0002 */  lhu        $t4, 2($t1)
/* BA54C 800B994C 15800007 */  bnez       $t4, .L800B996C
/* BA550 800B9950 00000000 */   nop
/* BA554 800B9954 952D0004 */  lhu        $t5, 4($t1)
/* BA558 800B9958 15A00004 */  bnez       $t5, .L800B996C
/* BA55C 800B995C 00000000 */   nop
/* BA560 800B9960 952E0006 */  lhu        $t6, 6($t1)
/* BA564 800B9964 11C00003 */  beqz       $t6, .L800B9974
/* BA568 800B9968 00000000 */   nop
.L800B996C:
/* BA56C 800B996C 10000002 */  b          .L800B9978
/* BA570 800B9970 24060002 */   addiu     $a2, $zero, 2
.L800B9974:
/* BA574 800B9974 24060001 */  addiu      $a2, $zero, 1
.L800B9978:
/* BA578 800B9978 00061400 */  sll        $v0, $a2, 0x10
/* BA57C 800B997C 00027C03 */  sra        $t7, $v0, 0x10
/* BA580 800B9980 1000001F */  b          .L800B9A00
/* BA584 800B9984 01E01025 */   or        $v0, $t7, $zero
/* BA588 800B9988 1000001B */  b          .L800B99F8
/* BA58C 800B998C 00000000 */   nop
.L800B9990:
/* BA590 800B9990 87B8000A */  lh         $t8, 0xa($sp)
/* BA594 800B9994 1B00000E */  blez       $t8, .L800B99D0
/* BA598 800B9998 00000000 */   nop
/* BA59C 800B999C 8FB9000C */  lw         $t9, 0xc($sp)
/* BA5A0 800B99A0 2401800F */  addiu      $at, $zero, -0x7ff1
/* BA5A4 800B99A4 97280000 */  lhu        $t0, ($t9)
/* BA5A8 800B99A8 01015024 */  and        $t2, $t0, $at
/* BA5AC 800B99AC 354B3FF0 */  ori        $t3, $t2, 0x3ff0
/* BA5B0 800B99B0 A72B0000 */  sh         $t3, ($t9)
/* BA5B4 800B99B4 87AC000A */  lh         $t4, 0xa($sp)
/* BA5B8 800B99B8 258DFC02 */  addiu      $t5, $t4, -0x3fe
/* BA5BC 800B99BC A48D0000 */  sh         $t5, ($a0)
/* BA5C0 800B99C0 1000000F */  b          .L800B9A00
/* BA5C4 800B99C4 2402FFFF */   addiu     $v0, $zero, -1
/* BA5C8 800B99C8 1000000B */  b          .L800B99F8
/* BA5CC 800B99CC 00000000 */   nop
.L800B99D0:
/* BA5D0 800B99D0 87A9000A */  lh         $t1, 0xa($sp)
/* BA5D4 800B99D4 05210005 */  bgez       $t1, .L800B99EC
/* BA5D8 800B99D8 00000000 */   nop
/* BA5DC 800B99DC 10000008 */  b          .L800B9A00
/* BA5E0 800B99E0 24020002 */   addiu     $v0, $zero, 2
/* BA5E4 800B99E4 10000004 */  b          .L800B99F8
/* BA5E8 800B99E8 00000000 */   nop
.L800B99EC:
/* BA5EC 800B99EC A4800000 */  sh         $zero, ($a0)
/* BA5F0 800B99F0 10000003 */  b          .L800B9A00
/* BA5F4 800B99F4 00001025 */   or        $v0, $zero, $zero
.L800B99F8:
/* BA5F8 800B99F8 10000001 */  b          .L800B9A00
/* BA5FC 800B99FC 00000000 */   nop
.L800B9A00:
/* BA600 800B9A00 03E00008 */  jr         $ra
/* BA604 800B9A04 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_800B9A08
/* BA608 800B9A08 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* BA60C 800B9A0C AFBF001C */  sw         $ra, 0x1c($sp)
/* BA610 800B9A10 AFA40030 */  sw         $a0, 0x30($sp)
/* BA614 800B9A14 AFA50034 */  sw         $a1, 0x34($sp)
/* BA618 800B9A18 AFA60038 */  sw         $a2, 0x38($sp)
/* BA61C 800B9A1C AFA7003C */  sw         $a3, 0x3c($sp)
/* BA620 800B9A20 AFB00018 */  sw         $s0, 0x18($sp)
/* BA624 800B9A24 240E002E */  addiu      $t6, $zero, 0x2e
/* BA628 800B9A28 A3AE002F */  sb         $t6, 0x2f($sp)
/* BA62C 800B9A2C 87AF003E */  lh         $t7, 0x3e($sp)
/* BA630 800B9A30 1DE00006 */  bgtz       $t7, .L800B9A4C
/* BA634 800B9A34 00000000 */   nop
/* BA638 800B9A38 3C19800F */  lui        $t9, %hi(D_800EEA00)
/* BA63C 800B9A3C 2739EA00 */  addiu      $t9, $t9, %lo(D_800EEA00)
/* BA640 800B9A40 24180001 */  addiu      $t8, $zero, 1
/* BA644 800B9A44 A7B8003E */  sh         $t8, 0x3e($sp)
/* BA648 800B9A48 AFB90038 */  sw         $t9, 0x38($sp)
.L800B9A4C:
/* BA64C 800B9A4C 93A80037 */  lbu        $t0, 0x37($sp)
/* BA650 800B9A50 24010066 */  addiu      $at, $zero, 0x66
/* BA654 800B9A54 11010010 */  beq        $t0, $at, .L800B9A98
/* BA658 800B9A58 00000000 */   nop
/* BA65C 800B9A5C 24010067 */  addiu      $at, $zero, 0x67
/* BA660 800B9A60 11010004 */  beq        $t0, $at, .L800B9A74
/* BA664 800B9A64 00000000 */   nop
/* BA668 800B9A68 24010047 */  addiu      $at, $zero, 0x47
/* BA66C 800B9A6C 150100E0 */  bne        $t0, $at, .L800B9DF0
/* BA670 800B9A70 00000000 */   nop
.L800B9A74:
/* BA674 800B9A74 87A90042 */  lh         $t1, 0x42($sp)
/* BA678 800B9A78 2921FFFC */  slti       $at, $t1, -4
/* BA67C 800B9A7C 142000DC */  bnez       $at, .L800B9DF0
/* BA680 800B9A80 00000000 */   nop
/* BA684 800B9A84 8FAA0030 */  lw         $t2, 0x30($sp)
/* BA688 800B9A88 8D4B0024 */  lw         $t3, 0x24($t2)
/* BA68C 800B9A8C 012B082A */  slt        $at, $t1, $t3
/* BA690 800B9A90 102000D7 */  beqz       $at, .L800B9DF0
/* BA694 800B9A94 00000000 */   nop
.L800B9A98:
/* BA698 800B9A98 87AC0042 */  lh         $t4, 0x42($sp)
/* BA69C 800B9A9C 258D0001 */  addiu      $t5, $t4, 1
/* BA6A0 800B9AA0 A7AD0042 */  sh         $t5, 0x42($sp)
/* BA6A4 800B9AA4 93AE0037 */  lbu        $t6, 0x37($sp)
/* BA6A8 800B9AA8 24010066 */  addiu      $at, $zero, 0x66
/* BA6AC 800B9AAC 11C10019 */  beq        $t6, $at, .L800B9B14
/* BA6B0 800B9AB0 00000000 */   nop
/* BA6B4 800B9AB4 8FAF0030 */  lw         $t7, 0x30($sp)
/* BA6B8 800B9AB8 8DF80030 */  lw         $t8, 0x30($t7)
/* BA6BC 800B9ABC 33190008 */  andi       $t9, $t8, 8
/* BA6C0 800B9AC0 17200009 */  bnez       $t9, .L800B9AE8
/* BA6C4 800B9AC4 00000000 */   nop
/* BA6C8 800B9AC8 87A8003E */  lh         $t0, 0x3e($sp)
/* BA6CC 800B9ACC 8DEA0024 */  lw         $t2, 0x24($t7)
/* BA6D0 800B9AD0 010A082A */  slt        $at, $t0, $t2
/* BA6D4 800B9AD4 10200004 */  beqz       $at, .L800B9AE8
/* BA6D8 800B9AD8 00000000 */   nop
/* BA6DC 800B9ADC 87A9003E */  lh         $t1, 0x3e($sp)
/* BA6E0 800B9AE0 8FAB0030 */  lw         $t3, 0x30($sp)
/* BA6E4 800B9AE4 AD690024 */  sw         $t1, 0x24($t3)
.L800B9AE8:
/* BA6E8 800B9AE8 8FAC0030 */  lw         $t4, 0x30($sp)
/* BA6EC 800B9AEC 87AE0042 */  lh         $t6, 0x42($sp)
/* BA6F0 800B9AF0 8D8D0024 */  lw         $t5, 0x24($t4)
/* BA6F4 800B9AF4 01AEC023 */  subu       $t8, $t5, $t6
/* BA6F8 800B9AF8 AD980024 */  sw         $t8, 0x24($t4)
/* BA6FC 800B9AFC 8FB90030 */  lw         $t9, 0x30($sp)
/* BA700 800B9B00 8F2F0024 */  lw         $t7, 0x24($t9)
/* BA704 800B9B04 05E10003 */  bgez       $t7, .L800B9B14
/* BA708 800B9B08 00000000 */   nop
/* BA70C 800B9B0C 8FA80030 */  lw         $t0, 0x30($sp)
/* BA710 800B9B10 AD000024 */  sw         $zero, 0x24($t0)
.L800B9B14:
/* BA714 800B9B14 87AA0042 */  lh         $t2, 0x42($sp)
/* BA718 800B9B18 1D400049 */  bgtz       $t2, .L800B9C40
/* BA71C 800B9B1C 00000000 */   nop
/* BA720 800B9B20 8FAB0030 */  lw         $t3, 0x30($sp)
/* BA724 800B9B24 24090030 */  addiu      $t1, $zero, 0x30
/* BA728 800B9B28 8D6D0008 */  lw         $t5, 8($t3)
/* BA72C 800B9B2C 8D6E0014 */  lw         $t6, 0x14($t3)
/* BA730 800B9B30 01AEC021 */  addu       $t8, $t5, $t6
/* BA734 800B9B34 A3090000 */  sb         $t1, ($t8)
/* BA738 800B9B38 8FAC0030 */  lw         $t4, 0x30($sp)
/* BA73C 800B9B3C 8D990014 */  lw         $t9, 0x14($t4)
/* BA740 800B9B40 272F0001 */  addiu      $t7, $t9, 1
/* BA744 800B9B44 AD8F0014 */  sw         $t7, 0x14($t4)
/* BA748 800B9B48 8FA80030 */  lw         $t0, 0x30($sp)
/* BA74C 800B9B4C 8D0A0024 */  lw         $t2, 0x24($t0)
/* BA750 800B9B50 1D400005 */  bgtz       $t2, .L800B9B68
/* BA754 800B9B54 00000000 */   nop
/* BA758 800B9B58 8D0B0030 */  lw         $t3, 0x30($t0)
/* BA75C 800B9B5C 316D0008 */  andi       $t5, $t3, 8
/* BA760 800B9B60 11A0000B */  beqz       $t5, .L800B9B90
/* BA764 800B9B64 00000000 */   nop
.L800B9B68:
/* BA768 800B9B68 8FA90030 */  lw         $t1, 0x30($sp)
/* BA76C 800B9B6C 93AE002F */  lbu        $t6, 0x2f($sp)
/* BA770 800B9B70 8D380008 */  lw         $t8, 8($t1)
/* BA774 800B9B74 8D390014 */  lw         $t9, 0x14($t1)
/* BA778 800B9B78 03197821 */  addu       $t7, $t8, $t9
/* BA77C 800B9B7C A1EE0000 */  sb         $t6, ($t7)
/* BA780 800B9B80 8FAC0030 */  lw         $t4, 0x30($sp)
/* BA784 800B9B84 8D8A0014 */  lw         $t2, 0x14($t4)
/* BA788 800B9B88 25480001 */  addiu      $t0, $t2, 1
/* BA78C 800B9B8C AD880014 */  sw         $t0, 0x14($t4)
.L800B9B90:
/* BA790 800B9B90 8FAB0030 */  lw         $t3, 0x30($sp)
/* BA794 800B9B94 87A90042 */  lh         $t1, 0x42($sp)
/* BA798 800B9B98 8D6D0024 */  lw         $t5, 0x24($t3)
/* BA79C 800B9B9C 0009C023 */  negu       $t8, $t1
/* BA7A0 800B9BA0 01B8082A */  slt        $at, $t5, $t8
/* BA7A4 800B9BA4 10200005 */  beqz       $at, .L800B9BBC
/* BA7A8 800B9BA8 00000000 */   nop
/* BA7AC 800B9BAC 8FB90030 */  lw         $t9, 0x30($sp)
/* BA7B0 800B9BB0 8F2E0024 */  lw         $t6, 0x24($t9)
/* BA7B4 800B9BB4 000E7823 */  negu       $t7, $t6
/* BA7B8 800B9BB8 A7AF0042 */  sh         $t7, 0x42($sp)
.L800B9BBC:
/* BA7BC 800B9BBC 87AA0042 */  lh         $t2, 0x42($sp)
/* BA7C0 800B9BC0 8FAC0030 */  lw         $t4, 0x30($sp)
/* BA7C4 800B9BC4 000A4023 */  negu       $t0, $t2
/* BA7C8 800B9BC8 AD880018 */  sw         $t0, 0x18($t4)
/* BA7CC 800B9BCC 8FAB0030 */  lw         $t3, 0x30($sp)
/* BA7D0 800B9BD0 87AD0042 */  lh         $t5, 0x42($sp)
/* BA7D4 800B9BD4 8D690024 */  lw         $t1, 0x24($t3)
/* BA7D8 800B9BD8 012DC021 */  addu       $t8, $t1, $t5
/* BA7DC 800B9BDC AD780024 */  sw         $t8, 0x24($t3)
/* BA7E0 800B9BE0 8FB90030 */  lw         $t9, 0x30($sp)
/* BA7E4 800B9BE4 87AF003E */  lh         $t7, 0x3e($sp)
/* BA7E8 800B9BE8 8F2E0024 */  lw         $t6, 0x24($t9)
/* BA7EC 800B9BEC 01CF082A */  slt        $at, $t6, $t7
/* BA7F0 800B9BF0 10200004 */  beqz       $at, .L800B9C04
/* BA7F4 800B9BF4 00000000 */   nop
/* BA7F8 800B9BF8 8FAA0030 */  lw         $t2, 0x30($sp)
/* BA7FC 800B9BFC 8D480024 */  lw         $t0, 0x24($t2)
/* BA800 800B9C00 A7A8003E */  sh         $t0, 0x3e($sp)
.L800B9C04:
/* BA804 800B9C04 8FAC0030 */  lw         $t4, 0x30($sp)
/* BA808 800B9C08 87B0003E */  lh         $s0, 0x3e($sp)
/* BA80C 800B9C0C 8FA50038 */  lw         $a1, 0x38($sp)
/* BA810 800B9C10 8D890008 */  lw         $t1, 8($t4)
/* BA814 800B9C14 8D8D0014 */  lw         $t5, 0x14($t4)
/* BA818 800B9C18 AD90001C */  sw         $s0, 0x1c($t4)
/* BA81C 800B9C1C 02003025 */  or         $a2, $s0, $zero
/* BA820 800B9C20 0C029735 */  jal        memcpy
/* BA824 800B9C24 012D2021 */   addu      $a0, $t1, $t5
/* BA828 800B9C28 8FB80030 */  lw         $t8, 0x30($sp)
/* BA82C 800B9C2C 87B9003E */  lh         $t9, 0x3e($sp)
/* BA830 800B9C30 8F0B0024 */  lw         $t3, 0x24($t8)
/* BA834 800B9C34 01797023 */  subu       $t6, $t3, $t9
/* BA838 800B9C38 1000006B */  b          .L800B9DE8
/* BA83C 800B9C3C AF0E0020 */   sw        $t6, 0x20($t8)
.L800B9C40:
/* BA840 800B9C40 87AF003E */  lh         $t7, 0x3e($sp)
/* BA844 800B9C44 87AA0042 */  lh         $t2, 0x42($sp)
/* BA848 800B9C48 01EA082A */  slt        $at, $t7, $t2
/* BA84C 800B9C4C 10200028 */  beqz       $at, .L800B9CF0
/* BA850 800B9C50 00000000 */   nop
/* BA854 800B9C54 8FA80030 */  lw         $t0, 0x30($sp)
/* BA858 800B9C58 8FA50038 */  lw         $a1, 0x38($sp)
/* BA85C 800B9C5C 87A6003E */  lh         $a2, 0x3e($sp)
/* BA860 800B9C60 8D090008 */  lw         $t1, 8($t0)
/* BA864 800B9C64 8D0D0014 */  lw         $t5, 0x14($t0)
/* BA868 800B9C68 0C029735 */  jal        memcpy
/* BA86C 800B9C6C 012D2021 */   addu      $a0, $t1, $t5
/* BA870 800B9C70 8FAC0030 */  lw         $t4, 0x30($sp)
/* BA874 800B9C74 87B9003E */  lh         $t9, 0x3e($sp)
/* BA878 800B9C78 8D8B0014 */  lw         $t3, 0x14($t4)
/* BA87C 800B9C7C 01797021 */  addu       $t6, $t3, $t9
/* BA880 800B9C80 AD8E0014 */  sw         $t6, 0x14($t4)
/* BA884 800B9C84 87B80042 */  lh         $t8, 0x42($sp)
/* BA888 800B9C88 87AF003E */  lh         $t7, 0x3e($sp)
/* BA88C 800B9C8C 8FA80030 */  lw         $t0, 0x30($sp)
/* BA890 800B9C90 030F5023 */  subu       $t2, $t8, $t7
/* BA894 800B9C94 AD0A0018 */  sw         $t2, 0x18($t0)
/* BA898 800B9C98 8FA90030 */  lw         $t1, 0x30($sp)
/* BA89C 800B9C9C 8D2D0024 */  lw         $t5, 0x24($t1)
/* BA8A0 800B9CA0 1DA00005 */  bgtz       $t5, .L800B9CB8
/* BA8A4 800B9CA4 00000000 */   nop
/* BA8A8 800B9CA8 8D2B0030 */  lw         $t3, 0x30($t1)
/* BA8AC 800B9CAC 31790008 */  andi       $t9, $t3, 8
/* BA8B0 800B9CB0 1320000B */  beqz       $t9, .L800B9CE0
/* BA8B4 800B9CB4 00000000 */   nop
.L800B9CB8:
/* BA8B8 800B9CB8 8FAC0030 */  lw         $t4, 0x30($sp)
/* BA8BC 800B9CBC 93AE002F */  lbu        $t6, 0x2f($sp)
/* BA8C0 800B9CC0 8D980008 */  lw         $t8, 8($t4)
/* BA8C4 800B9CC4 8D8F0014 */  lw         $t7, 0x14($t4)
/* BA8C8 800B9CC8 030F5021 */  addu       $t2, $t8, $t7
/* BA8CC 800B9CCC A14E0000 */  sb         $t6, ($t2)
/* BA8D0 800B9CD0 8FA80030 */  lw         $t0, 0x30($sp)
/* BA8D4 800B9CD4 8D0D001C */  lw         $t5, 0x1c($t0)
/* BA8D8 800B9CD8 25A90001 */  addiu      $t1, $t5, 1
/* BA8DC 800B9CDC AD09001C */  sw         $t1, 0x1c($t0)
.L800B9CE0:
/* BA8E0 800B9CE0 8FAB0030 */  lw         $t3, 0x30($sp)
/* BA8E4 800B9CE4 8D790024 */  lw         $t9, 0x24($t3)
/* BA8E8 800B9CE8 1000003F */  b          .L800B9DE8
/* BA8EC 800B9CEC AD790020 */   sw        $t9, 0x20($t3)
.L800B9CF0:
/* BA8F0 800B9CF0 8FAC0030 */  lw         $t4, 0x30($sp)
/* BA8F4 800B9CF4 8FA50038 */  lw         $a1, 0x38($sp)
/* BA8F8 800B9CF8 87A60042 */  lh         $a2, 0x42($sp)
/* BA8FC 800B9CFC 8D980008 */  lw         $t8, 8($t4)
/* BA900 800B9D00 8D8F0014 */  lw         $t7, 0x14($t4)
/* BA904 800B9D04 0C029735 */  jal        memcpy
/* BA908 800B9D08 030F2021 */   addu      $a0, $t8, $t7
/* BA90C 800B9D0C 8FAE0030 */  lw         $t6, 0x30($sp)
/* BA910 800B9D10 87AD0042 */  lh         $t5, 0x42($sp)
/* BA914 800B9D14 8DCA0014 */  lw         $t2, 0x14($t6)
/* BA918 800B9D18 014D4821 */  addu       $t1, $t2, $t5
/* BA91C 800B9D1C ADC90014 */  sw         $t1, 0x14($t6)
/* BA920 800B9D20 87A8003E */  lh         $t0, 0x3e($sp)
/* BA924 800B9D24 87B90042 */  lh         $t9, 0x42($sp)
/* BA928 800B9D28 01195823 */  subu       $t3, $t0, $t9
/* BA92C 800B9D2C A7AB003E */  sh         $t3, 0x3e($sp)
/* BA930 800B9D30 8FAC0030 */  lw         $t4, 0x30($sp)
/* BA934 800B9D34 8D980024 */  lw         $t8, 0x24($t4)
/* BA938 800B9D38 1F000005 */  bgtz       $t8, .L800B9D50
/* BA93C 800B9D3C 00000000 */   nop
/* BA940 800B9D40 8D8F0030 */  lw         $t7, 0x30($t4)
/* BA944 800B9D44 31EA0008 */  andi       $t2, $t7, 8
/* BA948 800B9D48 1140000B */  beqz       $t2, .L800B9D78
/* BA94C 800B9D4C 00000000 */   nop
.L800B9D50:
/* BA950 800B9D50 8FA90030 */  lw         $t1, 0x30($sp)
/* BA954 800B9D54 93AD002F */  lbu        $t5, 0x2f($sp)
/* BA958 800B9D58 8D2E0008 */  lw         $t6, 8($t1)
/* BA95C 800B9D5C 8D280014 */  lw         $t0, 0x14($t1)
/* BA960 800B9D60 01C8C821 */  addu       $t9, $t6, $t0
/* BA964 800B9D64 A32D0000 */  sb         $t5, ($t9)
/* BA968 800B9D68 8FAB0030 */  lw         $t3, 0x30($sp)
/* BA96C 800B9D6C 8D780014 */  lw         $t8, 0x14($t3)
/* BA970 800B9D70 270C0001 */  addiu      $t4, $t8, 1
/* BA974 800B9D74 AD6C0014 */  sw         $t4, 0x14($t3)
.L800B9D78:
/* BA978 800B9D78 8FAF0030 */  lw         $t7, 0x30($sp)
/* BA97C 800B9D7C 87A9003E */  lh         $t1, 0x3e($sp)
/* BA980 800B9D80 8DEA0024 */  lw         $t2, 0x24($t7)
/* BA984 800B9D84 0149082A */  slt        $at, $t2, $t1
/* BA988 800B9D88 10200004 */  beqz       $at, .L800B9D9C
/* BA98C 800B9D8C 00000000 */   nop
/* BA990 800B9D90 8FAE0030 */  lw         $t6, 0x30($sp)
/* BA994 800B9D94 8DC80024 */  lw         $t0, 0x24($t6)
/* BA998 800B9D98 A7A8003E */  sh         $t0, 0x3e($sp)
.L800B9D9C:
/* BA99C 800B9D9C 8FAD0030 */  lw         $t5, 0x30($sp)
/* BA9A0 800B9DA0 87AC0042 */  lh         $t4, 0x42($sp)
/* BA9A4 800B9DA4 8FAB0038 */  lw         $t3, 0x38($sp)
/* BA9A8 800B9DA8 8DB90008 */  lw         $t9, 8($t5)
/* BA9AC 800B9DAC 8DB80014 */  lw         $t8, 0x14($t5)
/* BA9B0 800B9DB0 87A6003E */  lh         $a2, 0x3e($sp)
/* BA9B4 800B9DB4 018B2821 */  addu       $a1, $t4, $t3
/* BA9B8 800B9DB8 0C029735 */  jal        memcpy
/* BA9BC 800B9DBC 03382021 */   addu      $a0, $t9, $t8
/* BA9C0 800B9DC0 8FAF0030 */  lw         $t7, 0x30($sp)
/* BA9C4 800B9DC4 87A9003E */  lh         $t1, 0x3e($sp)
/* BA9C8 800B9DC8 8DEA0014 */  lw         $t2, 0x14($t7)
/* BA9CC 800B9DCC 01497021 */  addu       $t6, $t2, $t1
/* BA9D0 800B9DD0 ADEE0014 */  sw         $t6, 0x14($t7)
/* BA9D4 800B9DD4 8FA80030 */  lw         $t0, 0x30($sp)
/* BA9D8 800B9DD8 87B9003E */  lh         $t9, 0x3e($sp)
/* BA9DC 800B9DDC 8D0D0024 */  lw         $t5, 0x24($t0)
/* BA9E0 800B9DE0 01B9C023 */  subu       $t8, $t5, $t9
/* BA9E4 800B9DE4 AD180018 */  sw         $t8, 0x18($t0)
.L800B9DE8:
/* BA9E8 800B9DE8 100000C4 */  b          .L800BA0FC
/* BA9EC 800B9DEC 00000000 */   nop
.L800B9DF0:
/* BA9F0 800B9DF0 93AC0037 */  lbu        $t4, 0x37($sp)
/* BA9F4 800B9DF4 24010067 */  addiu      $at, $zero, 0x67
/* BA9F8 800B9DF8 11810004 */  beq        $t4, $at, .L800B9E0C
/* BA9FC 800B9DFC 00000000 */   nop
/* BAA00 800B9E00 24010047 */  addiu      $at, $zero, 0x47
/* BAA04 800B9E04 1581001D */  bne        $t4, $at, .L800B9E7C
/* BAA08 800B9E08 00000000 */   nop
.L800B9E0C:
/* BAA0C 800B9E0C 8FAA0030 */  lw         $t2, 0x30($sp)
/* BAA10 800B9E10 87AB003E */  lh         $t3, 0x3e($sp)
/* BAA14 800B9E14 8D490024 */  lw         $t1, 0x24($t2)
/* BAA18 800B9E18 0169082A */  slt        $at, $t3, $t1
/* BAA1C 800B9E1C 10200004 */  beqz       $at, .L800B9E30
/* BAA20 800B9E20 00000000 */   nop
/* BAA24 800B9E24 87AE003E */  lh         $t6, 0x3e($sp)
/* BAA28 800B9E28 8FAF0030 */  lw         $t7, 0x30($sp)
/* BAA2C 800B9E2C ADEE0024 */  sw         $t6, 0x24($t7)
.L800B9E30:
/* BAA30 800B9E30 8FAD0030 */  lw         $t5, 0x30($sp)
/* BAA34 800B9E34 8DB90024 */  lw         $t9, 0x24($t5)
/* BAA38 800B9E38 2738FFFF */  addiu      $t8, $t9, -1
/* BAA3C 800B9E3C ADB80024 */  sw         $t8, 0x24($t5)
/* BAA40 800B9E40 8FA80030 */  lw         $t0, 0x30($sp)
/* BAA44 800B9E44 8D0C0024 */  lw         $t4, 0x24($t0)
/* BAA48 800B9E48 05810003 */  bgez       $t4, .L800B9E58
/* BAA4C 800B9E4C 00000000 */   nop
/* BAA50 800B9E50 8FAA0030 */  lw         $t2, 0x30($sp)
/* BAA54 800B9E54 AD400024 */  sw         $zero, 0x24($t2)
.L800B9E58:
/* BAA58 800B9E58 93AB0037 */  lbu        $t3, 0x37($sp)
/* BAA5C 800B9E5C 24010067 */  addiu      $at, $zero, 0x67
/* BAA60 800B9E60 15610004 */  bne        $t3, $at, .L800B9E74
/* BAA64 800B9E64 00000000 */   nop
/* BAA68 800B9E68 24090065 */  addiu      $t1, $zero, 0x65
/* BAA6C 800B9E6C 10000003 */  b          .L800B9E7C
/* BAA70 800B9E70 A3A90037 */   sb        $t1, 0x37($sp)
.L800B9E74:
/* BAA74 800B9E74 240E0045 */  addiu      $t6, $zero, 0x45
/* BAA78 800B9E78 A3AE0037 */  sb         $t6, 0x37($sp)
.L800B9E7C:
/* BAA7C 800B9E7C 8FB80030 */  lw         $t8, 0x30($sp)
/* BAA80 800B9E80 8FAF0038 */  lw         $t7, 0x38($sp)
/* BAA84 800B9E84 8F0D0008 */  lw         $t5, 8($t8)
/* BAA88 800B9E88 8F080014 */  lw         $t0, 0x14($t8)
/* BAA8C 800B9E8C 91F90000 */  lbu        $t9, ($t7)
/* BAA90 800B9E90 01A86021 */  addu       $t4, $t5, $t0
/* BAA94 800B9E94 A1990000 */  sb         $t9, ($t4)
/* BAA98 800B9E98 8FAA0030 */  lw         $t2, 0x30($sp)
/* BAA9C 800B9E9C 8D4B0014 */  lw         $t3, 0x14($t2)
/* BAAA0 800B9EA0 25690001 */  addiu      $t1, $t3, 1
/* BAAA4 800B9EA4 AD490014 */  sw         $t1, 0x14($t2)
/* BAAA8 800B9EA8 8FAE0038 */  lw         $t6, 0x38($sp)
/* BAAAC 800B9EAC 25CF0001 */  addiu      $t7, $t6, 1
/* BAAB0 800B9EB0 AFAF0038 */  sw         $t7, 0x38($sp)
/* BAAB4 800B9EB4 8FB80030 */  lw         $t8, 0x30($sp)
/* BAAB8 800B9EB8 8F0D0024 */  lw         $t5, 0x24($t8)
/* BAABC 800B9EBC 1DA00005 */  bgtz       $t5, .L800B9ED4
/* BAAC0 800B9EC0 00000000 */   nop
/* BAAC4 800B9EC4 8F080030 */  lw         $t0, 0x30($t8)
/* BAAC8 800B9EC8 31190008 */  andi       $t9, $t0, 8
/* BAACC 800B9ECC 1320000B */  beqz       $t9, .L800B9EFC
/* BAAD0 800B9ED0 00000000 */   nop
.L800B9ED4:
/* BAAD4 800B9ED4 8FAB0030 */  lw         $t3, 0x30($sp)
/* BAAD8 800B9ED8 93AC002F */  lbu        $t4, 0x2f($sp)
/* BAADC 800B9EDC 8D690008 */  lw         $t1, 8($t3)
/* BAAE0 800B9EE0 8D6A0014 */  lw         $t2, 0x14($t3)
/* BAAE4 800B9EE4 012A7021 */  addu       $t6, $t1, $t2
/* BAAE8 800B9EE8 A1CC0000 */  sb         $t4, ($t6)
/* BAAEC 800B9EEC 8FAF0030 */  lw         $t7, 0x30($sp)
/* BAAF0 800B9EF0 8DED0014 */  lw         $t5, 0x14($t7)
/* BAAF4 800B9EF4 25B80001 */  addiu      $t8, $t5, 1
/* BAAF8 800B9EF8 ADF80014 */  sw         $t8, 0x14($t7)
.L800B9EFC:
/* BAAFC 800B9EFC 8FA80030 */  lw         $t0, 0x30($sp)
/* BAB00 800B9F00 8D190024 */  lw         $t9, 0x24($t0)
/* BAB04 800B9F04 1B20001F */  blez       $t9, .L800B9F84
/* BAB08 800B9F08 00000000 */   nop
/* BAB0C 800B9F0C 87AB003E */  lh         $t3, 0x3e($sp)
/* BAB10 800B9F10 8FAA0030 */  lw         $t2, 0x30($sp)
/* BAB14 800B9F14 2569FFFF */  addiu      $t1, $t3, -1
/* BAB18 800B9F18 A7A9003E */  sh         $t1, 0x3e($sp)
/* BAB1C 800B9F1C 8D4C0024 */  lw         $t4, 0x24($t2)
/* BAB20 800B9F20 00097400 */  sll        $t6, $t1, 0x10
/* BAB24 800B9F24 000E6C03 */  sra        $t5, $t6, 0x10
/* BAB28 800B9F28 018D082A */  slt        $at, $t4, $t5
/* BAB2C 800B9F2C 10200004 */  beqz       $at, .L800B9F40
/* BAB30 800B9F30 00000000 */   nop
/* BAB34 800B9F34 8FB80030 */  lw         $t8, 0x30($sp)
/* BAB38 800B9F38 8F0F0024 */  lw         $t7, 0x24($t8)
/* BAB3C 800B9F3C A7AF003E */  sh         $t7, 0x3e($sp)
.L800B9F40:
/* BAB40 800B9F40 8FA80030 */  lw         $t0, 0x30($sp)
/* BAB44 800B9F44 8FA50038 */  lw         $a1, 0x38($sp)
/* BAB48 800B9F48 87A6003E */  lh         $a2, 0x3e($sp)
/* BAB4C 800B9F4C 8D190008 */  lw         $t9, 8($t0)
/* BAB50 800B9F50 8D0B0014 */  lw         $t3, 0x14($t0)
/* BAB54 800B9F54 0C029735 */  jal        memcpy
/* BAB58 800B9F58 032B2021 */   addu      $a0, $t9, $t3
/* BAB5C 800B9F5C 8FAA0030 */  lw         $t2, 0x30($sp)
/* BAB60 800B9F60 87AE003E */  lh         $t6, 0x3e($sp)
/* BAB64 800B9F64 8D490014 */  lw         $t1, 0x14($t2)
/* BAB68 800B9F68 012E6021 */  addu       $t4, $t1, $t6
/* BAB6C 800B9F6C AD4C0014 */  sw         $t4, 0x14($t2)
/* BAB70 800B9F70 8FAD0030 */  lw         $t5, 0x30($sp)
/* BAB74 800B9F74 87AF003E */  lh         $t7, 0x3e($sp)
/* BAB78 800B9F78 8DB80024 */  lw         $t8, 0x24($t5)
/* BAB7C 800B9F7C 030F4023 */  subu       $t0, $t8, $t7
/* BAB80 800B9F80 ADA80018 */  sw         $t0, 0x18($t5)
.L800B9F84:
/* BAB84 800B9F84 8FB90030 */  lw         $t9, 0x30($sp)
/* BAB88 800B9F88 8F2B0008 */  lw         $t3, 8($t9)
/* BAB8C 800B9F8C 8F290014 */  lw         $t1, 0x14($t9)
/* BAB90 800B9F90 01697021 */  addu       $t6, $t3, $t1
/* BAB94 800B9F94 AFAE0038 */  sw         $t6, 0x38($sp)
/* BAB98 800B9F98 93AC0037 */  lbu        $t4, 0x37($sp)
/* BAB9C 800B9F9C 8FAA0038 */  lw         $t2, 0x38($sp)
/* BABA0 800B9FA0 A14C0000 */  sb         $t4, ($t2)
/* BABA4 800B9FA4 8FB80038 */  lw         $t8, 0x38($sp)
/* BABA8 800B9FA8 270F0001 */  addiu      $t7, $t8, 1
/* BABAC 800B9FAC AFAF0038 */  sw         $t7, 0x38($sp)
/* BABB0 800B9FB0 87A80042 */  lh         $t0, 0x42($sp)
/* BABB4 800B9FB4 05000008 */  bltz       $t0, .L800B9FD8
/* BABB8 800B9FB8 00000000 */   nop
/* BABBC 800B9FBC 8FB90038 */  lw         $t9, 0x38($sp)
/* BABC0 800B9FC0 240D002B */  addiu      $t5, $zero, 0x2b
/* BABC4 800B9FC4 A32D0000 */  sb         $t5, ($t9)
/* BABC8 800B9FC8 8FAB0038 */  lw         $t3, 0x38($sp)
/* BABCC 800B9FCC 25690001 */  addiu      $t1, $t3, 1
/* BABD0 800B9FD0 1000000A */  b          .L800B9FFC
/* BABD4 800B9FD4 AFA90038 */   sw        $t1, 0x38($sp)
.L800B9FD8:
/* BABD8 800B9FD8 8FAC0038 */  lw         $t4, 0x38($sp)
/* BABDC 800B9FDC 240E002D */  addiu      $t6, $zero, 0x2d
/* BABE0 800B9FE0 A18E0000 */  sb         $t6, ($t4)
/* BABE4 800B9FE4 8FAA0038 */  lw         $t2, 0x38($sp)
/* BABE8 800B9FE8 25580001 */  addiu      $t8, $t2, 1
/* BABEC 800B9FEC AFB80038 */  sw         $t8, 0x38($sp)
/* BABF0 800B9FF0 87AF0042 */  lh         $t7, 0x42($sp)
/* BABF4 800B9FF4 000F4023 */  negu       $t0, $t7
/* BABF8 800B9FF8 A7A80042 */  sh         $t0, 0x42($sp)
.L800B9FFC:
/* BABFC 800B9FFC 87AD0042 */  lh         $t5, 0x42($sp)
/* BAC00 800BA000 29A10064 */  slti       $at, $t5, 0x64
/* BAC04 800BA004 14200021 */  bnez       $at, .L800BA08C
/* BAC08 800BA008 00000000 */   nop
/* BAC0C 800BA00C 87B90042 */  lh         $t9, 0x42($sp)
/* BAC10 800BA010 2B2103E8 */  slti       $at, $t9, 0x3e8
/* BAC14 800BA014 1420000F */  bnez       $at, .L800BA054
/* BAC18 800BA018 00000000 */   nop
/* BAC1C 800BA01C 87AB0042 */  lh         $t3, 0x42($sp)
/* BAC20 800BA020 240103E8 */  addiu      $at, $zero, 0x3e8
/* BAC24 800BA024 8FAC0038 */  lw         $t4, 0x38($sp)
/* BAC28 800BA028 0161001A */  div        $zero, $t3, $at
/* BAC2C 800BA02C 00004812 */  mflo       $t1
/* BAC30 800BA030 252E0030 */  addiu      $t6, $t1, 0x30
/* BAC34 800BA034 A18E0000 */  sb         $t6, ($t4)
/* BAC38 800BA038 87AF0042 */  lh         $t7, 0x42($sp)
/* BAC3C 800BA03C 8FAA0038 */  lw         $t2, 0x38($sp)
/* BAC40 800BA040 01E1001A */  div        $zero, $t7, $at
/* BAC44 800BA044 00004010 */  mfhi       $t0
/* BAC48 800BA048 25580001 */  addiu      $t8, $t2, 1
/* BAC4C 800BA04C AFB80038 */  sw         $t8, 0x38($sp)
/* BAC50 800BA050 A7A80042 */  sh         $t0, 0x42($sp)
.L800BA054:
/* BAC54 800BA054 87AD0042 */  lh         $t5, 0x42($sp)
/* BAC58 800BA058 24010064 */  addiu      $at, $zero, 0x64
/* BAC5C 800BA05C 8FA90038 */  lw         $t1, 0x38($sp)
/* BAC60 800BA060 01A1001A */  div        $zero, $t5, $at
/* BAC64 800BA064 0000C812 */  mflo       $t9
/* BAC68 800BA068 272B0030 */  addiu      $t3, $t9, 0x30
/* BAC6C 800BA06C A12B0000 */  sb         $t3, ($t1)
/* BAC70 800BA070 87AA0042 */  lh         $t2, 0x42($sp)
/* BAC74 800BA074 8FAE0038 */  lw         $t6, 0x38($sp)
/* BAC78 800BA078 0141001A */  div        $zero, $t2, $at
/* BAC7C 800BA07C 0000C010 */  mfhi       $t8
/* BAC80 800BA080 25CC0001 */  addiu      $t4, $t6, 1
/* BAC84 800BA084 AFAC0038 */  sw         $t4, 0x38($sp)
/* BAC88 800BA088 A7B80042 */  sh         $t8, 0x42($sp)
.L800BA08C:
/* BAC8C 800BA08C 87AF0042 */  lh         $t7, 0x42($sp)
/* BAC90 800BA090 2401000A */  addiu      $at, $zero, 0xa
/* BAC94 800BA094 8FB90038 */  lw         $t9, 0x38($sp)
/* BAC98 800BA098 01E1001A */  div        $zero, $t7, $at
/* BAC9C 800BA09C 00004012 */  mflo       $t0
/* BACA0 800BA0A0 250D0030 */  addiu      $t5, $t0, 0x30
/* BACA4 800BA0A4 A32D0000 */  sb         $t5, ($t9)
/* BACA8 800BA0A8 87AE0042 */  lh         $t6, 0x42($sp)
/* BACAC 800BA0AC 8FAB0038 */  lw         $t3, 0x38($sp)
/* BACB0 800BA0B0 01C1001A */  div        $zero, $t6, $at
/* BACB4 800BA0B4 00006010 */  mfhi       $t4
/* BACB8 800BA0B8 25690001 */  addiu      $t1, $t3, 1
/* BACBC 800BA0BC AFA90038 */  sw         $t1, 0x38($sp)
/* BACC0 800BA0C0 A7AC0042 */  sh         $t4, 0x42($sp)
/* BACC4 800BA0C4 87AA0042 */  lh         $t2, 0x42($sp)
/* BACC8 800BA0C8 8FAF0038 */  lw         $t7, 0x38($sp)
/* BACCC 800BA0CC 25580030 */  addiu      $t8, $t2, 0x30
/* BACD0 800BA0D0 A1F80000 */  sb         $t8, ($t7)
/* BACD4 800BA0D4 8FA80038 */  lw         $t0, 0x38($sp)
/* BACD8 800BA0D8 250D0001 */  addiu      $t5, $t0, 1
/* BACDC 800BA0DC AFAD0038 */  sw         $t5, 0x38($sp)
/* BACE0 800BA0E0 8FB90030 */  lw         $t9, 0x30($sp)
/* BACE4 800BA0E4 8FAC0038 */  lw         $t4, 0x38($sp)
/* BACE8 800BA0E8 8F2B0008 */  lw         $t3, 8($t9)
/* BACEC 800BA0EC 8F290014 */  lw         $t1, 0x14($t9)
/* BACF0 800BA0F0 01697021 */  addu       $t6, $t3, $t1
/* BACF4 800BA0F4 018E5023 */  subu       $t2, $t4, $t6
/* BACF8 800BA0F8 AF2A001C */  sw         $t2, 0x1c($t9)
.L800BA0FC:
/* BACFC 800BA0FC 8FB80030 */  lw         $t8, 0x30($sp)
/* BAD00 800BA100 24010010 */  addiu      $at, $zero, 0x10
/* BAD04 800BA104 8F0F0030 */  lw         $t7, 0x30($t8)
/* BAD08 800BA108 31E80014 */  andi       $t0, $t7, 0x14
/* BAD0C 800BA10C 15010017 */  bne        $t0, $at, .L800BA16C
/* BAD10 800BA110 00000000 */   nop
/* BAD14 800BA114 8FAD0030 */  lw         $t5, 0x30($sp)
/* BAD18 800BA118 8DAB000C */  lw         $t3, 0xc($t5)
/* BAD1C 800BA11C 8DA90014 */  lw         $t1, 0x14($t5)
/* BAD20 800BA120 8DAE0018 */  lw         $t6, 0x18($t5)
/* BAD24 800BA124 8DB9001C */  lw         $t9, 0x1c($t5)
/* BAD28 800BA128 8DAF0020 */  lw         $t7, 0x20($t5)
/* BAD2C 800BA12C 01696021 */  addu       $t4, $t3, $t1
/* BAD30 800BA130 018E5021 */  addu       $t2, $t4, $t6
/* BAD34 800BA134 0159C021 */  addu       $t8, $t2, $t9
/* BAD38 800BA138 030F4021 */  addu       $t0, $t8, $t7
/* BAD3C 800BA13C AFA80028 */  sw         $t0, 0x28($sp)
/* BAD40 800BA140 8FA90030 */  lw         $t1, 0x30($sp)
/* BAD44 800BA144 8FAB0028 */  lw         $t3, 0x28($sp)
/* BAD48 800BA148 8D2C0028 */  lw         $t4, 0x28($t1)
/* BAD4C 800BA14C 016C082A */  slt        $at, $t3, $t4
/* BAD50 800BA150 10200006 */  beqz       $at, .L800BA16C
/* BAD54 800BA154 00000000 */   nop
/* BAD58 800BA158 8FAE0030 */  lw         $t6, 0x30($sp)
/* BAD5C 800BA15C 8FB90028 */  lw         $t9, 0x28($sp)
/* BAD60 800BA160 8DCA0028 */  lw         $t2, 0x28($t6)
/* BAD64 800BA164 01596823 */  subu       $t5, $t2, $t9
/* BAD68 800BA168 ADCD0010 */  sw         $t5, 0x10($t6)
.L800BA16C:
/* BAD6C 800BA16C 10000001 */  b          .L800BA174
/* BAD70 800BA170 00000000 */   nop
.L800BA174:
/* BAD74 800BA174 8FBF001C */  lw         $ra, 0x1c($sp)
/* BAD78 800BA178 8FB00018 */  lw         $s0, 0x18($sp)
/* BAD7C 800BA17C 27BD0030 */  addiu      $sp, $sp, 0x30
/* BAD80 800BA180 03E00008 */  jr         $ra
/* BAD84 800BA184 00000000 */   nop
/* BAD88 800BA188 00000000 */  nop
/* BAD8C 800BA18C 00000000 */  nop
