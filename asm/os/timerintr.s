.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osDequeueThread
/* A7E10 800A7210 27BDFFF8 */  addiu      $sp, $sp, -8
/* A7E14 800A7214 00803025 */  or         $a2, $a0, $zero
/* A7E18 800A7218 8CC70000 */  lw         $a3, ($a2)
/* A7E1C 800A721C 10E0000C */  beqz       $a3, .L800A7250
/* A7E20 800A7220 00000000 */   nop
.L800A7224:
/* A7E24 800A7224 14E50006 */  bne        $a3, $a1, .L800A7240
/* A7E28 800A7228 00000000 */   nop
/* A7E2C 800A722C 8CAE0000 */  lw         $t6, ($a1)
/* A7E30 800A7230 ACCE0000 */  sw         $t6, ($a2)
/* A7E34 800A7234 ACA00000 */  sw         $zero, ($a1)
/* A7E38 800A7238 10000007 */  b          .L800A7258
/* A7E3C 800A723C 00000000 */   nop
.L800A7240:
/* A7E40 800A7240 00E03025 */  or         $a2, $a3, $zero
/* A7E44 800A7244 8CC70000 */  lw         $a3, ($a2)
/* A7E48 800A7248 14E0FFF6 */  bnez       $a3, .L800A7224
/* A7E4C 800A724C 00000000 */   nop
.L800A7250:
/* A7E50 800A7250 10000001 */  b          .L800A7258
/* A7E54 800A7254 00000000 */   nop
.L800A7258:
/* A7E58 800A7258 03E00008 */  jr         $ra
/* A7E5C 800A725C 27BD0008 */   addiu     $sp, $sp, 8

glabel __osTimerServicesInit
/* A7E60 800A7260 3C018018 */  lui        $at, %hi(D_801856F4)
/* A7E64 800A7264 240E0000 */  addiu      $t6, $zero, 0
/* A7E68 800A7268 240F0000 */  addiu      $t7, $zero, 0
/* A7E6C 800A726C AC2F56F4 */  sw         $t7, %lo(D_801856F4)($at)
/* A7E70 800A7270 AC2E56F0 */  sw         $t6, 0x56f0($at)
/* A7E74 800A7274 3C018018 */  lui        $at, %hi(__osBaseCounter)
/* A7E78 800A7278 AC2056F8 */  sw         $zero, %lo(__osBaseCounter)($at)
/* A7E7C 800A727C 3C018018 */  lui        $at, %hi(__osViIntrCount)
/* A7E80 800A7280 AC2056FC */  sw         $zero, %lo(__osViIntrCount)($at)
/* A7E84 800A7284 3C18800F */  lui        $t8, %hi(__osTimerList)
/* A7E88 800A7288 8F18A620 */  lw         $t8, %lo(__osTimerList)($t8)
/* A7E8C 800A728C 3C19800F */  lui        $t9, %hi(__osTimerList)
/* A7E90 800A7290 AF180004 */  sw         $t8, 4($t8)
/* A7E94 800A7294 8F39A620 */  lw         $t9, %lo(__osTimerList)($t9)
/* A7E98 800A7298 8F280004 */  lw         $t0, 4($t9)
/* A7E9C 800A729C AF280000 */  sw         $t0, ($t9)
/* A7EA0 800A72A0 3C09800F */  lui        $t1, %hi(__osTimerList)
/* A7EA4 800A72A4 8D29A620 */  lw         $t1, %lo(__osTimerList)($t1)
/* A7EA8 800A72A8 240A0000 */  addiu      $t2, $zero, 0
/* A7EAC 800A72AC 240B0000 */  addiu      $t3, $zero, 0
/* A7EB0 800A72B0 3C0C800F */  lui        $t4, %hi(__osTimerList)
/* A7EB4 800A72B4 AD2B0014 */  sw         $t3, 0x14($t1)
/* A7EB8 800A72B8 AD2A0010 */  sw         $t2, 0x10($t1)
/* A7EBC 800A72BC 8D8CA620 */  lw         $t4, %lo(__osTimerList)($t4)
/* A7EC0 800A72C0 8D8E0010 */  lw         $t6, 0x10($t4)
/* A7EC4 800A72C4 8D8F0014 */  lw         $t7, 0x14($t4)
/* A7EC8 800A72C8 AD8E0008 */  sw         $t6, 8($t4)
/* A7ECC 800A72CC AD8F000C */  sw         $t7, 0xc($t4)
/* A7ED0 800A72D0 3C0D800F */  lui        $t5, %hi(__osTimerList)
/* A7ED4 800A72D4 8DADA620 */  lw         $t5, %lo(__osTimerList)($t5)
/* A7ED8 800A72D8 ADA00018 */  sw         $zero, 0x18($t5)
/* A7EDC 800A72DC 3C18800F */  lui        $t8, %hi(__osTimerList)
/* A7EE0 800A72E0 8F18A620 */  lw         $t8, %lo(__osTimerList)($t8)
/* A7EE4 800A72E4 AF00001C */  sw         $zero, 0x1c($t8)
/* A7EE8 800A72E8 03E00008 */  jr         $ra
/* A7EEC 800A72EC 00000000 */   nop

glabel func_800A72F0
/* A7EF0 800A72F0 03E00008 */  jr         $ra
/* A7EF4 800A72F4 00000000 */   nop

glabel __osTimerInterrupt
/* A7EF8 800A72F8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* A7EFC 800A72FC AFBF0014 */  sw         $ra, 0x14($sp)
/* A7F00 800A7300 3C0E8018 */  lui        $t6, %hi(__osProfileList)
/* A7F04 800A7304 8DCE5704 */  lw         $t6, %lo(__osProfileList)($t6)
/* A7F08 800A7308 AFAE0020 */  sw         $t6, 0x20($sp)
/* A7F0C 800A730C 3C0F800F */  lui        $t7, %hi(__osTimerList)
/* A7F10 800A7310 8DEFA620 */  lw         $t7, %lo(__osTimerList)($t7)
/* A7F14 800A7314 8DF80000 */  lw         $t8, ($t7)
/* A7F18 800A7318 170F0003 */  bne        $t8, $t7, .L800A7328
/* A7F1C 800A731C 00000000 */   nop
/* A7F20 800A7320 1000009F */  b          .L800A75A0
/* A7F24 800A7324 00000000 */   nop
.L800A7328:
/* A7F28 800A7328 3C19800F */  lui        $t9, %hi(__osTimerList)
/* A7F2C 800A732C 8F39A620 */  lw         $t9, %lo(__osTimerList)($t9)
/* A7F30 800A7330 8F280000 */  lw         $t0, ($t9)
/* A7F34 800A7334 AFA80034 */  sw         $t0, 0x34($sp)
/* A7F38 800A7338 3C0A800F */  lui        $t2, %hi(__osTimerList)
/* A7F3C 800A733C 8D4AA620 */  lw         $t2, %lo(__osTimerList)($t2)
/* A7F40 800A7340 8FA90034 */  lw         $t1, 0x34($sp)
/* A7F44 800A7344 152A0007 */  bne        $t1, $t2, .L800A7364
/* A7F48 800A7348 00000000 */   nop
/* A7F4C 800A734C 0C02D55C */  jal        __osSetCompare
/* A7F50 800A7350 00002025 */   or        $a0, $zero, $zero
/* A7F54 800A7354 3C018018 */  lui        $at, %hi(__osTimerCounter)
/* A7F58 800A7358 AC205700 */  sw         $zero, %lo(__osTimerCounter)($at)
/* A7F5C 800A735C 1000008E */  b          .L800A7598
/* A7F60 800A7360 00000000 */   nop
.L800A7364:
/* A7F64 800A7364 0C029EF8 */  jal        osGetCount
/* A7F68 800A7368 00000000 */   nop
/* A7F6C 800A736C AFA20030 */  sw         $v0, 0x30($sp)
/* A7F70 800A7370 3C0C8018 */  lui        $t4, %hi(__osTimerCounter)
/* A7F74 800A7374 8D8C5700 */  lw         $t4, %lo(__osTimerCounter)($t4)
/* A7F78 800A7378 8FAB0030 */  lw         $t3, 0x30($sp)
/* A7F7C 800A737C 016C6823 */  subu       $t5, $t3, $t4
/* A7F80 800A7380 AFAD002C */  sw         $t5, 0x2c($sp)
/* A7F84 800A7384 8FAE0030 */  lw         $t6, 0x30($sp)
/* A7F88 800A7388 3C018018 */  lui        $at, %hi(__osTimerCounter)
/* A7F8C 800A738C AC2E5700 */  sw         $t6, %lo(__osTimerCounter)($at)
/* A7F90 800A7390 8FAF0034 */  lw         $t7, 0x34($sp)
/* A7F94 800A7394 8FB8002C */  lw         $t8, 0x2c($sp)
/* A7F98 800A7398 24080000 */  addiu      $t0, $zero, 0
/* A7F9C 800A739C 8DEA0010 */  lw         $t2, 0x10($t7)
/* A7FA0 800A73A0 8DEB0014 */  lw         $t3, 0x14($t7)
/* A7FA4 800A73A4 03004825 */  or         $t1, $t8, $zero
/* A7FA8 800A73A8 0148082B */  sltu       $at, $t2, $t0
/* A7FAC 800A73AC 1420001C */  bnez       $at, .L800A7420
/* A7FB0 800A73B0 00000000 */   nop
/* A7FB4 800A73B4 010A082B */  sltu       $at, $t0, $t2
/* A7FB8 800A73B8 14200004 */  bnez       $at, .L800A73CC
/* A7FBC 800A73BC 00000000 */   nop
/* A7FC0 800A73C0 012B082B */  sltu       $at, $t1, $t3
/* A7FC4 800A73C4 10200016 */  beqz       $at, .L800A7420
/* A7FC8 800A73C8 00000000 */   nop
.L800A73CC:
/* A7FCC 800A73CC 8FB90034 */  lw         $t9, 0x34($sp)
/* A7FD0 800A73D0 8FAD002C */  lw         $t5, 0x2c($sp)
/* A7FD4 800A73D4 24180000 */  addiu      $t8, $zero, 0
/* A7FD8 800A73D8 272C0010 */  addiu      $t4, $t9, 0x10
/* A7FDC 800A73DC AFAC001C */  sw         $t4, 0x1c($sp)
/* A7FE0 800A73E0 8F2F0014 */  lw         $t7, 0x14($t9)
/* A7FE4 800A73E4 8F2E0010 */  lw         $t6, 0x10($t9)
/* A7FE8 800A73E8 03204025 */  or         $t0, $t9, $zero
/* A7FEC 800A73EC 01A0C825 */  or         $t9, $t5, $zero
/* A7FF0 800A73F0 01F9082B */  sltu       $at, $t7, $t9
/* A7FF4 800A73F4 01D85023 */  subu       $t2, $t6, $t8
/* A7FF8 800A73F8 01415023 */  subu       $t2, $t2, $at
/* A7FFC 800A73FC 01F95823 */  subu       $t3, $t7, $t9
/* A8000 800A7400 AD0B0014 */  sw         $t3, 0x14($t0)
/* A8004 800A7404 AD0A0010 */  sw         $t2, 0x10($t0)
/* A8008 800A7408 8FA90034 */  lw         $t1, 0x34($sp)
/* A800C 800A740C 8D240010 */  lw         $a0, 0x10($t1)
/* A8010 800A7410 0C029D6C */  jal        __osSetTimerIntr
/* A8014 800A7414 8D250014 */   lw        $a1, 0x14($t1)
/* A8018 800A7418 1000005F */  b          .L800A7598
/* A801C 800A741C 00000000 */   nop
.L800A7420:
/* A8020 800A7420 8FAC0034 */  lw         $t4, 0x34($sp)
/* A8024 800A7424 8D8D0000 */  lw         $t5, ($t4)
/* A8028 800A7428 8D8E0004 */  lw         $t6, 4($t4)
/* A802C 800A742C ADCD0000 */  sw         $t5, ($t6)
/* A8030 800A7430 8FAF0034 */  lw         $t7, 0x34($sp)
/* A8034 800A7434 8DF80004 */  lw         $t8, 4($t7)
/* A8038 800A7438 8DF90000 */  lw         $t9, ($t7)
/* A803C 800A743C AF380004 */  sw         $t8, 4($t9)
/* A8040 800A7440 8FAA0034 */  lw         $t2, 0x34($sp)
/* A8044 800A7444 AD400000 */  sw         $zero, ($t2)
/* A8048 800A7448 8FAB0034 */  lw         $t3, 0x34($sp)
/* A804C 800A744C AD600004 */  sw         $zero, 4($t3)
/* A8050 800A7450 8FA80034 */  lw         $t0, 0x34($sp)
/* A8054 800A7454 8D090018 */  lw         $t1, 0x18($t0)
/* A8058 800A7458 1120003F */  beqz       $t1, .L800A7558
/* A805C 800A745C 00000000 */   nop
/* A8060 800A7460 8FAC0034 */  lw         $t4, 0x34($sp)
/* A8064 800A7464 3C0E8018 */  lui        $t6, %hi(__osProfTimerQ)
/* A8068 800A7468 25CE5710 */  addiu      $t6, $t6, %lo(__osProfTimerQ)
/* A806C 800A746C 8D8D0018 */  lw         $t5, 0x18($t4)
/* A8070 800A7470 11AE0008 */  beq        $t5, $t6, .L800A7494
/* A8074 800A7474 00000000 */   nop
/* A8078 800A7478 8FAF0034 */  lw         $t7, 0x34($sp)
/* A807C 800A747C 00003025 */  or         $a2, $zero, $zero
/* A8080 800A7480 8DE40018 */  lw         $a0, 0x18($t7)
/* A8084 800A7484 0C0278BC */  jal        osSendMesg
/* A8088 800A7488 8DE5001C */   lw        $a1, 0x1c($t7)
/* A808C 800A748C 10000032 */  b          .L800A7558
/* A8090 800A7490 00000000 */   nop
.L800A7494:
/* A8094 800A7494 3C18800F */  lui        $t8, %hi(__osRunQueue)
/* A8098 800A7498 8F18A608 */  lw         $t8, %lo(__osRunQueue)($t8)
/* A809C 800A749C 8F19011C */  lw         $t9, 0x11c($t8)
/* A80A0 800A74A0 AFB90028 */  sw         $t9, 0x28($sp)
/* A80A4 800A74A4 3C0A8018 */  lui        $t2, %hi(__osProfileList)
/* A80A8 800A74A8 3C0B8018 */  lui        $t3, %hi(__osProfileListEnd)
/* A80AC 800A74AC 8D6B5708 */  lw         $t3, %lo(__osProfileListEnd)($t3)
/* A80B0 800A74B0 8D4A5704 */  lw         $t2, %lo(__osProfileList)($t2)
/* A80B4 800A74B4 014B082B */  sltu       $at, $t2, $t3
/* A80B8 800A74B8 10200022 */  beqz       $at, .L800A7544
/* A80BC 800A74BC AFAA0020 */   sw        $t2, 0x20($sp)
.L800A74C0:
/* A80C0 800A74C0 8FA90020 */  lw         $t1, 0x20($sp)
/* A80C4 800A74C4 8FA80028 */  lw         $t0, 0x28($sp)
/* A80C8 800A74C8 8D2C0008 */  lw         $t4, 8($t1)
/* A80CC 800A74CC 010C6823 */  subu       $t5, $t0, $t4
/* A80D0 800A74D0 AFAD0024 */  sw         $t5, 0x24($sp)
/* A80D4 800A74D4 8FAE0024 */  lw         $t6, 0x24($sp)
/* A80D8 800A74D8 05C00012 */  bltz       $t6, .L800A7524
/* A80DC 800A74DC 00000000 */   nop
/* A80E0 800A74E0 8FAF0020 */  lw         $t7, 0x20($sp)
/* A80E4 800A74E4 8FB90028 */  lw         $t9, 0x28($sp)
/* A80E8 800A74E8 8DF8000C */  lw         $t8, 0xc($t7)
/* A80EC 800A74EC 03195023 */  subu       $t2, $t8, $t9
/* A80F0 800A74F0 1940000C */  blez       $t2, .L800A7524
/* A80F4 800A74F4 00000000 */   nop
/* A80F8 800A74F8 8FAC0020 */  lw         $t4, 0x20($sp)
/* A80FC 800A74FC 8FAB0024 */  lw         $t3, 0x24($sp)
/* A8100 800A7500 8D8D0000 */  lw         $t5, ($t4)
/* A8104 800A7504 000B4883 */  sra        $t1, $t3, 2
/* A8108 800A7508 00094040 */  sll        $t0, $t1, 1
/* A810C 800A750C 010D7021 */  addu       $t6, $t0, $t5
/* A8110 800A7510 95CF0000 */  lhu        $t7, ($t6)
/* A8114 800A7514 25F80001 */  addiu      $t8, $t7, 1
/* A8118 800A7518 A5D80000 */  sh         $t8, ($t6)
/* A811C 800A751C 1000000E */  b          .L800A7558
/* A8120 800A7520 00000000 */   nop
.L800A7524:
/* A8124 800A7524 8FB90020 */  lw         $t9, 0x20($sp)
/* A8128 800A7528 3C0B8018 */  lui        $t3, %hi(__osProfileListEnd)
/* A812C 800A752C 8D6B5708 */  lw         $t3, %lo(__osProfileListEnd)($t3)
/* A8130 800A7530 272A0010 */  addiu      $t2, $t9, 0x10
/* A8134 800A7534 AFAA0020 */  sw         $t2, 0x20($sp)
/* A8138 800A7538 014B082B */  sltu       $at, $t2, $t3
/* A813C 800A753C 1420FFE0 */  bnez       $at, .L800A74C0
/* A8140 800A7540 00000000 */   nop
.L800A7544:
/* A8144 800A7544 3C098018 */  lui        $t1, %hi(__osProfileOverflowBin)
/* A8148 800A7548 8D29570C */  lw         $t1, %lo(__osProfileOverflowBin)($t1)
/* A814C 800A754C 3C018018 */  lui        $at, %hi(__osProfileOverflowBin)
/* A8150 800A7550 252C0001 */  addiu      $t4, $t1, 1
/* A8154 800A7554 AC2C570C */  sw         $t4, %lo(__osProfileOverflowBin)($at)
.L800A7558:
/* A8158 800A7558 8FA80034 */  lw         $t0, 0x34($sp)
/* A815C 800A755C 8D180008 */  lw         $t8, 8($t0)
/* A8160 800A7560 8D19000C */  lw         $t9, 0xc($t0)
/* A8164 800A7564 17000003 */  bnez       $t8, .L800A7574
/* A8168 800A7568 00000000 */   nop
/* A816C 800A756C 13200008 */  beqz       $t9, .L800A7590
/* A8170 800A7570 00000000 */   nop
.L800A7574:
/* A8174 800A7574 8FAD0034 */  lw         $t5, 0x34($sp)
/* A8178 800A7578 8DAE0008 */  lw         $t6, 8($t5)
/* A817C 800A757C 8DAF000C */  lw         $t7, 0xc($t5)
/* A8180 800A7580 ADAE0010 */  sw         $t6, 0x10($t5)
/* A8184 800A7584 ADAF0014 */  sw         $t7, 0x14($t5)
/* A8188 800A7588 0C029D8F */  jal        __osInsertTimer
/* A818C 800A758C 8FA40034 */   lw        $a0, 0x34($sp)
.L800A7590:
/* A8190 800A7590 1000FF65 */  b          .L800A7328
/* A8194 800A7594 00000000 */   nop
.L800A7598:
/* A8198 800A7598 10000001 */  b          .L800A75A0
/* A819C 800A759C 00000000 */   nop
.L800A75A0:
/* A81A0 800A75A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* A81A4 800A75A4 27BD0038 */  addiu      $sp, $sp, 0x38
/* A81A8 800A75A8 03E00008 */  jr         $ra
/* A81AC 800A75AC 00000000 */   nop

glabel __osSetTimerIntr
/* A81B0 800A75B0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A81B4 800A75B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A81B8 800A75B8 AFA40028 */  sw         $a0, 0x28($sp)
/* A81BC 800A75BC AFA5002C */  sw         $a1, 0x2c($sp)
/* A81C0 800A75C0 0C0297A4 */  jal        __osDisableInt
/* A81C4 800A75C4 00000000 */   nop
/* A81C8 800A75C8 AFA2001C */  sw         $v0, 0x1c($sp)
/* A81CC 800A75CC 0C029EF8 */  jal        osGetCount
/* A81D0 800A75D0 00000000 */   nop
/* A81D4 800A75D4 3C018018 */  lui        $at, %hi(__osTimerCounter)
/* A81D8 800A75D8 AC225700 */  sw         $v0, %lo(__osTimerCounter)($at)
/* A81DC 800A75DC 3C0E8018 */  lui        $t6, %hi(__osTimerCounter)
/* A81E0 800A75E0 8DCE5700 */  lw         $t6, %lo(__osTimerCounter)($t6)
/* A81E4 800A75E4 8FA9002C */  lw         $t1, 0x2c($sp)
/* A81E8 800A75E8 8FA80028 */  lw         $t0, 0x28($sp)
/* A81EC 800A75EC 01C0C825 */  or         $t9, $t6, $zero
/* A81F0 800A75F0 03295821 */  addu       $t3, $t9, $t1
/* A81F4 800A75F4 24180000 */  addiu      $t8, $zero, 0
/* A81F8 800A75F8 0169082B */  sltu       $at, $t3, $t1
/* A81FC 800A75FC 00385021 */  addu       $t2, $at, $t8
/* A8200 800A7600 01485021 */  addu       $t2, $t2, $t0
/* A8204 800A7604 AFAA0020 */  sw         $t2, 0x20($sp)
/* A8208 800A7608 AFAB0024 */  sw         $t3, 0x24($sp)
/* A820C 800A760C 8FAD0024 */  lw         $t5, 0x24($sp)
/* A8210 800A7610 8FAC0020 */  lw         $t4, 0x20($sp)
/* A8214 800A7614 0C02D55C */  jal        __osSetCompare
/* A8218 800A7618 01A02025 */   or        $a0, $t5, $zero
/* A821C 800A761C 0C0297AC */  jal        __osRestoreInt
/* A8220 800A7620 8FA4001C */   lw        $a0, 0x1c($sp)
/* A8224 800A7624 10000001 */  b          .L800A762C
/* A8228 800A7628 00000000 */   nop
.L800A762C:
/* A822C 800A762C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A8230 800A7630 27BD0028 */  addiu      $sp, $sp, 0x28
/* A8234 800A7634 03E00008 */  jr         $ra
/* A8238 800A7638 00000000 */   nop

glabel __osInsertTimer
/* A823C 800A763C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* A8240 800A7640 AFBF0014 */  sw         $ra, 0x14($sp)
/* A8244 800A7644 AFA40038 */  sw         $a0, 0x38($sp)
/* A8248 800A7648 0C0297A4 */  jal        __osDisableInt
/* A824C 800A764C 00000000 */   nop
/* A8250 800A7650 AFA20024 */  sw         $v0, 0x24($sp)
/* A8254 800A7654 3C0E800F */  lui        $t6, %hi(__osTimerList)
/* A8258 800A7658 8DCEA620 */  lw         $t6, %lo(__osTimerList)($t6)
/* A825C 800A765C 8DCF0000 */  lw         $t7, ($t6)
/* A8260 800A7660 AFAF0034 */  sw         $t7, 0x34($sp)
/* A8264 800A7664 8FB80038 */  lw         $t8, 0x38($sp)
/* A8268 800A7668 8F080010 */  lw         $t0, 0x10($t8)
/* A826C 800A766C 8F090014 */  lw         $t1, 0x14($t8)
/* A8270 800A7670 AFA80028 */  sw         $t0, 0x28($sp)
/* A8274 800A7674 AFA9002C */  sw         $t1, 0x2c($sp)
/* A8278 800A7678 3C0A800F */  lui        $t2, %hi(__osTimerList)
/* A827C 800A767C 8D4AA620 */  lw         $t2, %lo(__osTimerList)($t2)
/* A8280 800A7680 8FB90034 */  lw         $t9, 0x34($sp)
/* A8284 800A7684 132A002F */  beq        $t9, $t2, .L800A7744
/* A8288 800A7688 00000000 */   nop
/* A828C 800A768C 8FAC0028 */  lw         $t4, 0x28($sp)
/* A8290 800A7690 8F2E0010 */  lw         $t6, 0x10($t9)
/* A8294 800A7694 8FAD002C */  lw         $t5, 0x2c($sp)
/* A8298 800A7698 8F2F0014 */  lw         $t7, 0x14($t9)
/* A829C 800A769C 018E082B */  sltu       $at, $t4, $t6
/* A82A0 800A76A0 14200028 */  bnez       $at, .L800A7744
/* A82A4 800A76A4 00000000 */   nop
/* A82A8 800A76A8 01CC082B */  sltu       $at, $t6, $t4
/* A82AC 800A76AC 14200004 */  bnez       $at, .L800A76C0
/* A82B0 800A76B0 00000000 */   nop
/* A82B4 800A76B4 01ED082B */  sltu       $at, $t7, $t5
/* A82B8 800A76B8 10200022 */  beqz       $at, .L800A7744
/* A82BC 800A76BC 00000000 */   nop
.L800A76C0:
/* A82C0 800A76C0 27AB0028 */  addiu      $t3, $sp, 0x28
/* A82C4 800A76C4 8FA80034 */  lw         $t0, 0x34($sp)
/* A82C8 800A76C8 AFAB0020 */  sw         $t3, 0x20($sp)
/* A82CC 800A76CC 8D790004 */  lw         $t9, 4($t3)
/* A82D0 800A76D0 8D780000 */  lw         $t8, ($t3)
/* A82D4 800A76D4 01604825 */  or         $t1, $t3, $zero
/* A82D8 800A76D8 8D0B0014 */  lw         $t3, 0x14($t0)
/* A82DC 800A76DC 8D0A0010 */  lw         $t2, 0x10($t0)
/* A82E0 800A76E0 032B082B */  sltu       $at, $t9, $t3
/* A82E4 800A76E4 030A6023 */  subu       $t4, $t8, $t2
/* A82E8 800A76E8 01816023 */  subu       $t4, $t4, $at
/* A82EC 800A76EC 032B6823 */  subu       $t5, $t9, $t3
/* A82F0 800A76F0 AD2D0004 */  sw         $t5, 4($t1)
/* A82F4 800A76F4 AD2C0000 */  sw         $t4, ($t1)
/* A82F8 800A76F8 8FAE0034 */  lw         $t6, 0x34($sp)
/* A82FC 800A76FC 3C08800F */  lui        $t0, %hi(__osTimerList)
/* A8300 800A7700 8D08A620 */  lw         $t0, %lo(__osTimerList)($t0)
/* A8304 800A7704 8DCF0000 */  lw         $t7, ($t6)
/* A8308 800A7708 11E8000E */  beq        $t7, $t0, .L800A7744
/* A830C 800A770C AFAF0034 */   sw        $t7, 0x34($sp)
/* A8310 800A7710 8FB80028 */  lw         $t8, 0x28($sp)
/* A8314 800A7714 8DEA0010 */  lw         $t2, 0x10($t7)
/* A8318 800A7718 8FB9002C */  lw         $t9, 0x2c($sp)
/* A831C 800A771C 8DEB0014 */  lw         $t3, 0x14($t7)
/* A8320 800A7720 0158082B */  sltu       $at, $t2, $t8
/* A8324 800A7724 1420FFE6 */  bnez       $at, .L800A76C0
/* A8328 800A7728 00000000 */   nop
/* A832C 800A772C 030A082B */  sltu       $at, $t8, $t2
/* A8330 800A7730 14200004 */  bnez       $at, .L800A7744
/* A8334 800A7734 00000000 */   nop
/* A8338 800A7738 0179082B */  sltu       $at, $t3, $t9
/* A833C 800A773C 1420FFE0 */  bnez       $at, .L800A76C0
/* A8340 800A7740 00000000 */   nop
.L800A7744:
/* A8344 800A7744 8FA90038 */  lw         $t1, 0x38($sp)
/* A8348 800A7748 8FAC0028 */  lw         $t4, 0x28($sp)
/* A834C 800A774C 8FAD002C */  lw         $t5, 0x2c($sp)
/* A8350 800A7750 AD2C0010 */  sw         $t4, 0x10($t1)
/* A8354 800A7754 AD2D0014 */  sw         $t5, 0x14($t1)
/* A8358 800A7758 3C08800F */  lui        $t0, %hi(__osTimerList)
/* A835C 800A775C 8D08A620 */  lw         $t0, %lo(__osTimerList)($t0)
/* A8360 800A7760 8FAE0034 */  lw         $t6, 0x34($sp)
/* A8364 800A7764 11C8000F */  beq        $t6, $t0, .L800A77A4
/* A8368 800A7768 00000000 */   nop
/* A836C 800A776C 8FAF0034 */  lw         $t7, 0x34($sp)
/* A8370 800A7770 8FAC0028 */  lw         $t4, 0x28($sp)
/* A8374 800A7774 8FAD002C */  lw         $t5, 0x2c($sp)
/* A8378 800A7778 25F80010 */  addiu      $t8, $t7, 0x10
/* A837C 800A777C AFB8001C */  sw         $t8, 0x1c($sp)
/* A8380 800A7780 8DEB0014 */  lw         $t3, 0x14($t7)
/* A8384 800A7784 8DEA0010 */  lw         $t2, 0x10($t7)
/* A8388 800A7788 01E0C825 */  or         $t9, $t7, $zero
/* A838C 800A778C 016D082B */  sltu       $at, $t3, $t5
/* A8390 800A7790 014C7023 */  subu       $t6, $t2, $t4
/* A8394 800A7794 01C17023 */  subu       $t6, $t6, $at
/* A8398 800A7798 016D7823 */  subu       $t7, $t3, $t5
/* A839C 800A779C AF2F0014 */  sw         $t7, 0x14($t9)
/* A83A0 800A77A0 AF2E0010 */  sw         $t6, 0x10($t9)
.L800A77A4:
/* A83A4 800A77A4 8FA90034 */  lw         $t1, 0x34($sp)
/* A83A8 800A77A8 8FA80038 */  lw         $t0, 0x38($sp)
/* A83AC 800A77AC AD090000 */  sw         $t1, ($t0)
/* A83B0 800A77B0 8FB80034 */  lw         $t8, 0x34($sp)
/* A83B4 800A77B4 8FAB0038 */  lw         $t3, 0x38($sp)
/* A83B8 800A77B8 8F0A0004 */  lw         $t2, 4($t8)
/* A83BC 800A77BC AD6A0004 */  sw         $t2, 4($t3)
/* A83C0 800A77C0 8FAD0034 */  lw         $t5, 0x34($sp)
/* A83C4 800A77C4 8FAC0038 */  lw         $t4, 0x38($sp)
/* A83C8 800A77C8 8DAE0004 */  lw         $t6, 4($t5)
/* A83CC 800A77CC ADCC0000 */  sw         $t4, ($t6)
/* A83D0 800A77D0 8FAF0038 */  lw         $t7, 0x38($sp)
/* A83D4 800A77D4 8FB90034 */  lw         $t9, 0x34($sp)
/* A83D8 800A77D8 AF2F0004 */  sw         $t7, 4($t9)
/* A83DC 800A77DC 0C0297AC */  jal        __osRestoreInt
/* A83E0 800A77E0 8FA40024 */   lw        $a0, 0x24($sp)
/* A83E4 800A77E4 8FA20028 */  lw         $v0, 0x28($sp)
/* A83E8 800A77E8 10000003 */  b          .L800A77F8
/* A83EC 800A77EC 8FA3002C */   lw        $v1, 0x2c($sp)
/* A83F0 800A77F0 10000001 */  b          .L800A77F8
/* A83F4 800A77F4 00000000 */   nop
.L800A77F8:
/* A83F8 800A77F8 8FBF0014 */  lw         $ra, 0x14($sp)
/* A83FC 800A77FC 27BD0038 */  addiu      $sp, $sp, 0x38
/* A8400 800A7800 03E00008 */  jr         $ra
/* A8404 800A7804 00000000 */   nop
/* A8408 800A7808 00000000 */  nop
/* A840C 800A780C 00000000 */  nop
