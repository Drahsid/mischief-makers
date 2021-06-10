glabel func_800B73AC
/* B7FAC 800B73AC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B7FB0 800B73B0 AFBF0014 */  sw         $ra, 0x14($sp)
/* B7FB4 800B73B4 AFA40030 */  sw         $a0, 0x30($sp)
/* B7FB8 800B73B8 AFA50034 */  sw         $a1, 0x34($sp)
/* B7FBC 800B73BC 8FAE0030 */  lw         $t6, 0x30($sp)
/* B7FC0 800B73C0 8DD80000 */  lw         $t8, ($t6)
/* B7FC4 800B73C4 8DD90010 */  lw         $t9, 0x10($t6)
/* B7FC8 800B73C8 8DCF0008 */  lw         $t7, 8($t6)
/* B7FCC 800B73CC 03194021 */  addu       $t0, $t8, $t9
/* B7FD0 800B73D0 01E8082B */  sltu       $at, $t7, $t0
/* B7FD4 800B73D4 14200004 */  bnez       $at, .L800B73E8
/* B7FD8 800B73D8 00000000 */   nop
/* B7FDC 800B73DC 24040083 */  addiu      $a0, $zero, 0x83
/* B7FE0 800B73E0 0C0297B4 */  jal        func_800A5ED0
/* B7FE4 800B73E4 00002825 */   or        $a1, $zero, $zero
.L800B73E8:
/* B7FE8 800B73E8 0C02DEEC */  jal        func_800B7BB0
/* B7FEC 800B73EC 8FA40030 */   lw        $a0, 0x30($sp)
/* B7FF0 800B73F0 AFA20024 */  sw         $v0, 0x24($sp)
/* B7FF4 800B73F4 8FA90030 */  lw         $t1, 0x30($sp)
/* B7FF8 800B73F8 8FAB0024 */  lw         $t3, 0x24($sp)
/* B7FFC 800B73FC 8D2A000C */  lw         $t2, 0xc($t1)
/* B8000 800B7400 014B6021 */  addu       $t4, $t2, $t3
/* B8004 800B7404 AD2C000C */  sw         $t4, 0xc($t1)
/* B8008 800B7408 0C02DEA2 */  jal        func_800B7A88
/* B800C 800B740C 8FA40030 */   lw        $a0, 0x30($sp)
/* B8010 800B7410 A3A2002F */  sb         $v0, 0x2f($sp)
/* B8014 800B7414 93AD002F */  lbu        $t5, 0x2f($sp)
/* B8018 800B7418 240100F0 */  addiu      $at, $zero, 0xf0
/* B801C 800B741C 11A10004 */  beq        $t5, $at, .L800B7430
/* B8020 800B7420 00000000 */   nop
/* B8024 800B7424 240100F7 */  addiu      $at, $zero, 0xf7
/* B8028 800B7428 15A10018 */  bne        $t5, $at, .L800B748C
/* B802C 800B742C 00000000 */   nop
.L800B7430:
/* B8030 800B7430 24040077 */  addiu      $a0, $zero, 0x77
/* B8034 800B7434 0C0297B4 */  jal        func_800A5ED0
/* B8038 800B7438 00002825 */   or        $a1, $zero, $zero
/* B803C 800B743C 0C02DEEC */  jal        func_800B7BB0
/* B8040 800B7440 8FA40030 */   lw        $a0, 0x30($sp)
/* B8044 800B7444 AFA20028 */  sw         $v0, 0x28($sp)
/* B8048 800B7448 8FAE0028 */  lw         $t6, 0x28($sp)
/* B804C 800B744C AFA00020 */  sw         $zero, 0x20($sp)
/* B8050 800B7450 19C00009 */  blez       $t6, .L800B7478
/* B8054 800B7454 00000000 */   nop
.L800B7458:
/* B8058 800B7458 0C02DEA2 */  jal        func_800B7A88
/* B805C 800B745C 8FA40030 */   lw        $a0, 0x30($sp)
/* B8060 800B7460 8FB80020 */  lw         $t8, 0x20($sp)
/* B8064 800B7464 8FAF0028 */  lw         $t7, 0x28($sp)
/* B8068 800B7468 27190001 */  addiu      $t9, $t8, 1
/* B806C 800B746C 032F082A */  slt        $at, $t9, $t7
/* B8070 800B7470 1420FFF9 */  bnez       $at, .L800B7458
/* B8074 800B7474 AFB90020 */   sw        $t9, 0x20($sp)
.L800B7478:
/* B8078 800B7478 8FA40030 */  lw         $a0, 0x30($sp)
/* B807C 800B747C 0C02DCEB */  jal        func_800B73AC
/* B8080 800B7480 8FA50034 */   lw        $a1, 0x34($sp)
/* B8084 800B7484 10000088 */  b          .L800B76A8
/* B8088 800B7488 00000000 */   nop
.L800B748C:
/* B808C 800B748C 93A8002F */  lbu        $t0, 0x2f($sp)
/* B8090 800B7490 240100FF */  addiu      $at, $zero, 0xff
/* B8094 800B7494 15010056 */  bne        $t0, $at, .L800B75F0
/* B8098 800B7498 00000000 */   nop
/* B809C 800B749C 0C02DEA2 */  jal        func_800B7A88
/* B80A0 800B74A0 8FA40030 */   lw        $a0, 0x30($sp)
/* B80A4 800B74A4 A3A2001F */  sb         $v0, 0x1f($sp)
/* B80A8 800B74A8 93AA001F */  lbu        $t2, 0x1f($sp)
/* B80AC 800B74AC 24010051 */  addiu      $at, $zero, 0x51
/* B80B0 800B74B0 1541001E */  bne        $t2, $at, .L800B752C
/* B80B4 800B74B4 00000000 */   nop
/* B80B8 800B74B8 8FAC0034 */  lw         $t4, 0x34($sp)
/* B80BC 800B74BC 240B0003 */  addiu      $t3, $zero, 3
/* B80C0 800B74C0 A58B0000 */  sh         $t3, ($t4)
/* B80C4 800B74C4 8FA90024 */  lw         $t1, 0x24($sp)
/* B80C8 800B74C8 8FAD0034 */  lw         $t5, 0x34($sp)
/* B80CC 800B74CC ADA90004 */  sw         $t1, 4($t5)
/* B80D0 800B74D0 93AE002F */  lbu        $t6, 0x2f($sp)
/* B80D4 800B74D4 8FB80034 */  lw         $t8, 0x34($sp)
/* B80D8 800B74D8 A30E0008 */  sb         $t6, 8($t8)
/* B80DC 800B74DC 93B9001F */  lbu        $t9, 0x1f($sp)
/* B80E0 800B74E0 8FAF0034 */  lw         $t7, 0x34($sp)
/* B80E4 800B74E4 A1F90009 */  sb         $t9, 9($t7)
/* B80E8 800B74E8 0C02DEA2 */  jal        func_800B7A88
/* B80EC 800B74EC 8FA40030 */   lw        $a0, 0x30($sp)
/* B80F0 800B74F0 8FA80034 */  lw         $t0, 0x34($sp)
/* B80F4 800B74F4 A102000A */  sb         $v0, 0xa($t0)
/* B80F8 800B74F8 0C02DEA2 */  jal        func_800B7A88
/* B80FC 800B74FC 8FA40030 */   lw        $a0, 0x30($sp)
/* B8100 800B7500 8FAA0034 */  lw         $t2, 0x34($sp)
/* B8104 800B7504 A142000B */  sb         $v0, 0xb($t2)
/* B8108 800B7508 0C02DEA2 */  jal        func_800B7A88
/* B810C 800B750C 8FA40030 */   lw        $a0, 0x30($sp)
/* B8110 800B7510 8FAB0034 */  lw         $t3, 0x34($sp)
/* B8114 800B7514 A162000C */  sb         $v0, 0xc($t3)
/* B8118 800B7518 0C02DEA2 */  jal        func_800B7A88
/* B811C 800B751C 8FA40030 */   lw        $a0, 0x30($sp)
/* B8120 800B7520 8FAC0034 */  lw         $t4, 0x34($sp)
/* B8124 800B7524 1000002E */  b          .L800B75E0
/* B8128 800B7528 A182000D */   sb        $v0, 0xd($t4)
.L800B752C:
/* B812C 800B752C 93A9001F */  lbu        $t1, 0x1f($sp)
/* B8130 800B7530 2401002F */  addiu      $at, $zero, 0x2f
/* B8134 800B7534 15210012 */  bne        $t1, $at, .L800B7580
/* B8138 800B7538 00000000 */   nop
/* B813C 800B753C 8FAE0034 */  lw         $t6, 0x34($sp)
/* B8140 800B7540 240D0004 */  addiu      $t5, $zero, 4
/* B8144 800B7544 A5CD0000 */  sh         $t5, ($t6)
/* B8148 800B7548 8FB80024 */  lw         $t8, 0x24($sp)
/* B814C 800B754C 8FB90034 */  lw         $t9, 0x34($sp)
/* B8150 800B7550 AF380004 */  sw         $t8, 4($t9)
/* B8154 800B7554 93AF002F */  lbu        $t7, 0x2f($sp)
/* B8158 800B7558 8FA80034 */  lw         $t0, 0x34($sp)
/* B815C 800B755C A10F0008 */  sb         $t7, 8($t0)
/* B8160 800B7560 93AA001F */  lbu        $t2, 0x1f($sp)
/* B8164 800B7564 8FAB0034 */  lw         $t3, 0x34($sp)
/* B8168 800B7568 A16A0009 */  sb         $t2, 9($t3)
/* B816C 800B756C 0C02DEA2 */  jal        func_800B7A88
/* B8170 800B7570 8FA40030 */   lw        $a0, 0x30($sp)
/* B8174 800B7574 8FAC0034 */  lw         $t4, 0x34($sp)
/* B8178 800B7578 10000019 */  b          .L800B75E0
/* B817C 800B757C A182000A */   sb        $v0, 0xa($t4)
.L800B7580:
/* B8180 800B7580 24040078 */  addiu      $a0, $zero, 0x78
/* B8184 800B7584 24050001 */  addiu      $a1, $zero, 1
/* B8188 800B7588 0C0297B4 */  jal        func_800A5ED0
/* B818C 800B758C 93A6001F */   lbu       $a2, 0x1f($sp)
/* B8190 800B7590 0C02DEEC */  jal        func_800B7BB0
/* B8194 800B7594 8FA40030 */   lw        $a0, 0x30($sp)
/* B8198 800B7598 AFA20028 */  sw         $v0, 0x28($sp)
/* B819C 800B759C 8FA90028 */  lw         $t1, 0x28($sp)
/* B81A0 800B75A0 AFA00020 */  sw         $zero, 0x20($sp)
/* B81A4 800B75A4 19200009 */  blez       $t1, .L800B75CC
/* B81A8 800B75A8 00000000 */   nop
.L800B75AC:
/* B81AC 800B75AC 0C02DEA2 */  jal        func_800B7A88
/* B81B0 800B75B0 8FA40030 */   lw        $a0, 0x30($sp)
/* B81B4 800B75B4 8FAD0020 */  lw         $t5, 0x20($sp)
/* B81B8 800B75B8 8FB80028 */  lw         $t8, 0x28($sp)
/* B81BC 800B75BC 25AE0001 */  addiu      $t6, $t5, 1
/* B81C0 800B75C0 01D8082A */  slt        $at, $t6, $t8
/* B81C4 800B75C4 1420FFF9 */  bnez       $at, .L800B75AC
/* B81C8 800B75C8 AFAE0020 */   sw        $t6, 0x20($sp)
.L800B75CC:
/* B81CC 800B75CC 8FA40030 */  lw         $a0, 0x30($sp)
/* B81D0 800B75D0 0C02DCEB */  jal        func_800B73AC
/* B81D4 800B75D4 8FA50034 */   lw        $a1, 0x34($sp)
/* B81D8 800B75D8 10000033 */  b          .L800B76A8
/* B81DC 800B75DC 00000000 */   nop
.L800B75E0:
/* B81E0 800B75E0 8FB90030 */  lw         $t9, 0x30($sp)
/* B81E4 800B75E4 A720001A */  sh         $zero, 0x1a($t9)
/* B81E8 800B75E8 1000002D */  b          .L800B76A0
/* B81EC 800B75EC 00000000 */   nop
.L800B75F0:
/* B81F0 800B75F0 8FA80034 */  lw         $t0, 0x34($sp)
/* B81F4 800B75F4 240F0001 */  addiu      $t7, $zero, 1
/* B81F8 800B75F8 A50F0000 */  sh         $t7, ($t0)
/* B81FC 800B75FC 8FAA0024 */  lw         $t2, 0x24($sp)
/* B8200 800B7600 8FAB0034 */  lw         $t3, 0x34($sp)
/* B8204 800B7604 AD6A0004 */  sw         $t2, 4($t3)
/* B8208 800B7608 93AC002F */  lbu        $t4, 0x2f($sp)
/* B820C 800B760C 31890080 */  andi       $t1, $t4, 0x80
/* B8210 800B7610 1120000C */  beqz       $t1, .L800B7644
/* B8214 800B7614 00000000 */   nop
/* B8218 800B7618 93AD002F */  lbu        $t5, 0x2f($sp)
/* B821C 800B761C 8FAE0034 */  lw         $t6, 0x34($sp)
/* B8220 800B7620 A1CD0008 */  sb         $t5, 8($t6)
/* B8224 800B7624 0C02DEA2 */  jal        func_800B7A88
/* B8228 800B7628 8FA40030 */   lw        $a0, 0x30($sp)
/* B822C 800B762C 8FB80034 */  lw         $t8, 0x34($sp)
/* B8230 800B7630 A3020009 */  sb         $v0, 9($t8)
/* B8234 800B7634 93B9002F */  lbu        $t9, 0x2f($sp)
/* B8238 800B7638 8FAF0030 */  lw         $t7, 0x30($sp)
/* B823C 800B763C 10000008 */  b          .L800B7660
/* B8240 800B7640 A5F9001A */   sh        $t9, 0x1a($t7)
.L800B7644:
/* B8244 800B7644 8FA80030 */  lw         $t0, 0x30($sp)
/* B8248 800B7648 8FAB0034 */  lw         $t3, 0x34($sp)
/* B824C 800B764C 850A001A */  lh         $t2, 0x1a($t0)
/* B8250 800B7650 A16A0008 */  sb         $t2, 8($t3)
/* B8254 800B7654 93AC002F */  lbu        $t4, 0x2f($sp)
/* B8258 800B7658 8FA90034 */  lw         $t1, 0x34($sp)
/* B825C 800B765C A12C0009 */  sb         $t4, 9($t1)
.L800B7660:
/* B8260 800B7660 8FAD0034 */  lw         $t5, 0x34($sp)
/* B8264 800B7664 240100C0 */  addiu      $at, $zero, 0xc0
/* B8268 800B7668 91AE0008 */  lbu        $t6, 8($t5)
/* B826C 800B766C 31D800F0 */  andi       $t8, $t6, 0xf0
/* B8270 800B7670 13010009 */  beq        $t8, $at, .L800B7698
/* B8274 800B7674 00000000 */   nop
/* B8278 800B7678 240100D0 */  addiu      $at, $zero, 0xd0
/* B827C 800B767C 13010006 */  beq        $t8, $at, .L800B7698
/* B8280 800B7680 00000000 */   nop
/* B8284 800B7684 0C02DEA2 */  jal        func_800B7A88
/* B8288 800B7688 8FA40030 */   lw        $a0, 0x30($sp)
/* B828C 800B768C 8FB90034 */  lw         $t9, 0x34($sp)
/* B8290 800B7690 10000003 */  b          .L800B76A0
/* B8294 800B7694 A322000A */   sb        $v0, 0xa($t9)
.L800B7698:
/* B8298 800B7698 8FAF0034 */  lw         $t7, 0x34($sp)
/* B829C 800B769C A1E0000A */  sb         $zero, 0xa($t7)
.L800B76A0:
/* B82A0 800B76A0 10000001 */  b          .L800B76A8
/* B82A4 800B76A4 00000000 */   nop
.L800B76A8:
/* B82A8 800B76A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* B82AC 800B76AC 27BD0030 */  addiu      $sp, $sp, 0x30
/* B82B0 800B76B0 03E00008 */  jr         $ra
/* B82B4 800B76B4 00000000 */   nop
