.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osDevMgrMain
/* A9080 800A8480 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* A9084 800A8484 AFBF001C */  sw         $ra, 0x1c($sp)
/* A9088 800A8488 AFA40048 */  sw         $a0, 0x48($sp)
/* A908C 800A848C AFA00030 */  sw         $zero, 0x30($sp)
/* A9090 800A8490 8FAE0048 */  lw         $t6, 0x48($sp)
/* A9094 800A8494 AFAE0034 */  sw         $t6, 0x34($sp)
/* A9098 800A8498 AFA00044 */  sw         $zero, 0x44($sp)
/* A909C 800A849C AFA00038 */  sw         $zero, 0x38($sp)
.L800A84A0:
/* A90A0 800A84A0 8FAF0034 */  lw         $t7, 0x34($sp)
/* A90A4 800A84A4 27A50044 */  addiu      $a1, $sp, 0x44
/* A90A8 800A84A8 24060001 */  addiu      $a2, $zero, 1
/* A90AC 800A84AC 0C026B44 */  jal        osRecvMesg
/* A90B0 800A84B0 8DE40008 */   lw        $a0, 8($t7)
/* A90B4 800A84B4 8FB80044 */  lw         $t8, 0x44($sp)
/* A90B8 800A84B8 8F190014 */  lw         $t9, 0x14($t8)
/* A90BC 800A84BC 132000A9 */  beqz       $t9, .L800A8764
/* A90C0 800A84C0 00000000 */   nop
/* A90C4 800A84C4 93280004 */  lbu        $t0, 4($t9)
/* A90C8 800A84C8 24010002 */  addiu      $at, $zero, 2
/* A90CC 800A84CC 150100A5 */  bne        $t0, $at, .L800A8764
/* A90D0 800A84D0 00000000 */   nop
/* A90D4 800A84D4 8F290014 */  lw         $t1, 0x14($t9)
/* A90D8 800A84D8 11200004 */  beqz       $t1, .L800A84EC
/* A90DC 800A84DC 00000000 */   nop
/* A90E0 800A84E0 24010001 */  addiu      $at, $zero, 1
/* A90E4 800A84E4 1521009F */  bne        $t1, $at, .L800A8764
/* A90E8 800A84E8 00000000 */   nop
.L800A84EC:
/* A90EC 800A84EC 8FAA0044 */  lw         $t2, 0x44($sp)
/* A90F0 800A84F0 8D4B0014 */  lw         $t3, 0x14($t2)
/* A90F4 800A84F4 256C0014 */  addiu      $t4, $t3, 0x14
/* A90F8 800A84F8 AFAC0028 */  sw         $t4, 0x28($sp)
/* A90FC 800A84FC 8FAD0028 */  lw         $t5, 0x28($sp)
/* A9100 800A8500 95AE0006 */  lhu        $t6, 6($t5)
/* A9104 800A8504 000E78C0 */  sll        $t7, $t6, 3
/* A9108 800A8508 01EE7821 */  addu       $t7, $t7, $t6
/* A910C 800A850C 000F7880 */  sll        $t7, $t7, 2
/* A9110 800A8510 01AFC021 */  addu       $t8, $t5, $t7
/* A9114 800A8514 27080018 */  addiu      $t0, $t8, 0x18
/* A9118 800A8518 AFA8002C */  sw         $t0, 0x2c($sp)
/* A911C 800A851C 8FA90028 */  lw         $t1, 0x28($sp)
/* A9120 800A8520 2419FFFF */  addiu      $t9, $zero, -1
/* A9124 800A8524 AD390008 */  sw         $t9, 8($t1)
/* A9128 800A8528 8FAA0028 */  lw         $t2, 0x28($sp)
/* A912C 800A852C 24010003 */  addiu      $at, $zero, 3
/* A9130 800A8530 954B0004 */  lhu        $t3, 4($t2)
/* A9134 800A8534 11610006 */  beq        $t3, $at, .L800A8550
/* A9138 800A8538 00000000 */   nop
/* A913C 800A853C 8FAC002C */  lw         $t4, 0x2c($sp)
/* A9140 800A8540 8D8E0004 */  lw         $t6, 4($t4)
/* A9144 800A8544 8D8D000C */  lw         $t5, 0xc($t4)
/* A9148 800A8548 01CD7823 */  subu       $t7, $t6, $t5
/* A914C 800A854C AD8F0004 */  sw         $t7, 4($t4)
.L800A8550:
/* A9150 800A8550 8FB80028 */  lw         $t8, 0x28($sp)
/* A9154 800A8554 24010002 */  addiu      $at, $zero, 2
/* A9158 800A8558 97080004 */  lhu        $t0, 4($t8)
/* A915C 800A855C 15010009 */  bne        $t0, $at, .L800A8584
/* A9160 800A8560 00000000 */   nop
/* A9164 800A8564 8FB90044 */  lw         $t9, 0x44($sp)
/* A9168 800A8568 8F290014 */  lw         $t1, 0x14($t9)
/* A916C 800A856C 8D2A0014 */  lw         $t2, 0x14($t1)
/* A9170 800A8570 15400004 */  bnez       $t2, .L800A8584
/* A9174 800A8574 00000000 */   nop
/* A9178 800A8578 240B0001 */  addiu      $t3, $zero, 1
/* A917C 800A857C 10000002 */  b          .L800A8588
/* A9180 800A8580 AFAB0030 */   sw        $t3, 0x30($sp)
.L800A8584:
/* A9184 800A8584 AFA00030 */  sw         $zero, 0x30($sp)
.L800A8588:
/* A9188 800A8588 8FAE0034 */  lw         $t6, 0x34($sp)
/* A918C 800A858C 27A5003C */  addiu      $a1, $sp, 0x3c
/* A9190 800A8590 24060001 */  addiu      $a2, $zero, 1
/* A9194 800A8594 0C026B44 */  jal        osRecvMesg
/* A9198 800A8598 8DC40010 */   lw        $a0, 0x10($t6)
/* A919C 800A859C 3C040010 */  lui        $a0, 0x10
/* A91A0 800A85A0 0C02D560 */  jal        __osResetGlobalIntMask
/* A91A4 800A85A4 34840401 */   ori       $a0, $a0, 0x401
/* A91A8 800A85A8 8FAF0028 */  lw         $t7, 0x28($sp)
/* A91AC 800A85AC 8FAD0044 */  lw         $t5, 0x44($sp)
/* A91B0 800A85B0 3C018000 */  lui        $at, 0x8000
/* A91B4 800A85B4 8DE60010 */  lw         $a2, 0x10($t7)
/* A91B8 800A85B8 3C050500 */  lui        $a1, 0x500
/* A91BC 800A85BC 34A50510 */  ori        $a1, $a1, 0x510
/* A91C0 800A85C0 00C16025 */  or         $t4, $a2, $at
/* A91C4 800A85C4 01803025 */  or         $a2, $t4, $zero
/* A91C8 800A85C8 0C02D57C */  jal        func_800B55F0
/* A91CC 800A85CC 8DA40014 */   lw        $a0, 0x14($t5)
.L800A85D0:
/* A91D0 800A85D0 8FB80034 */  lw         $t8, 0x34($sp)
/* A91D4 800A85D4 27A50040 */  addiu      $a1, $sp, 0x40
/* A91D8 800A85D8 24060001 */  addiu      $a2, $zero, 1
/* A91DC 800A85DC 0C026B44 */  jal        osRecvMesg
/* A91E0 800A85E0 8F04000C */   lw        $a0, 0xc($t8)
/* A91E4 800A85E4 8FA80044 */  lw         $t0, 0x44($sp)
/* A91E8 800A85E8 8D190014 */  lw         $t9, 0x14($t0)
/* A91EC 800A85EC 27290014 */  addiu      $t1, $t9, 0x14
/* A91F0 800A85F0 AFA90028 */  sw         $t1, 0x28($sp)
/* A91F4 800A85F4 8FAA0028 */  lw         $t2, 0x28($sp)
/* A91F8 800A85F8 954B0006 */  lhu        $t3, 6($t2)
/* A91FC 800A85FC 000B70C0 */  sll        $t6, $t3, 3
/* A9200 800A8600 01CB7021 */  addu       $t6, $t6, $t3
/* A9204 800A8604 000E7080 */  sll        $t6, $t6, 2
/* A9208 800A8608 014E6821 */  addu       $t5, $t2, $t6
/* A920C 800A860C 25AF0018 */  addiu      $t7, $t5, 0x18
/* A9210 800A8610 AFAF002C */  sw         $t7, 0x2c($sp)
/* A9214 800A8614 8FAC002C */  lw         $t4, 0x2c($sp)
/* A9218 800A8618 2401001D */  addiu      $at, $zero, 0x1d
/* A921C 800A861C 8D980000 */  lw         $t8, ($t4)
/* A9220 800A8620 17010030 */  bne        $t8, $at, .L800A86E4
/* A9224 800A8624 00000000 */   nop
/* A9228 800A8628 8FB90028 */  lw         $t9, 0x28($sp)
/* A922C 800A862C 8FA80044 */  lw         $t0, 0x44($sp)
/* A9230 800A8630 3C011000 */  lui        $at, 0x1000
/* A9234 800A8634 8F260010 */  lw         $a2, 0x10($t9)
/* A9238 800A8638 3C050500 */  lui        $a1, 0x500
/* A923C 800A863C 34A50510 */  ori        $a1, $a1, 0x510
/* A9240 800A8640 00C14825 */  or         $t1, $a2, $at
/* A9244 800A8644 01203025 */  or         $a2, $t1, $zero
/* A9248 800A8648 0C02D57C */  jal        func_800B55F0
/* A924C 800A864C 8D040014 */   lw        $a0, 0x14($t0)
/* A9250 800A8650 8FAB0044 */  lw         $t3, 0x44($sp)
/* A9254 800A8654 8FAA0028 */  lw         $t2, 0x28($sp)
/* A9258 800A8658 3C050500 */  lui        $a1, 0x500
/* A925C 800A865C 34A50510 */  ori        $a1, $a1, 0x510
/* A9260 800A8660 8D640014 */  lw         $a0, 0x14($t3)
/* A9264 800A8664 0C02D57C */  jal        func_800B55F0
/* A9268 800A8668 8D460010 */   lw        $a2, 0x10($t2)
/* A926C 800A866C 8FAE0044 */  lw         $t6, 0x44($sp)
/* A9270 800A8670 3C050500 */  lui        $a1, 0x500
/* A9274 800A8674 34A50508 */  ori        $a1, $a1, 0x508
/* A9278 800A8678 27A60024 */  addiu      $a2, $sp, 0x24
/* A927C 800A867C 0C02D5A8 */  jal        func_800B56A0
/* A9280 800A8680 8DC40014 */   lw        $a0, 0x14($t6)
/* A9284 800A8684 8FAD0024 */  lw         $t5, 0x24($sp)
/* A9288 800A8688 3C010200 */  lui        $at, 0x200
/* A928C 800A868C 01A17824 */  and        $t7, $t5, $at
/* A9290 800A8690 11E0000B */  beqz       $t7, .L800A86C0
/* A9294 800A8694 00000000 */   nop
/* A9298 800A8698 8FB80028 */  lw         $t8, 0x28($sp)
/* A929C 800A869C 8FAC0044 */  lw         $t4, 0x44($sp)
/* A92A0 800A86A0 3C010100 */  lui        $at, 0x100
/* A92A4 800A86A4 8F060010 */  lw         $a2, 0x10($t8)
/* A92A8 800A86A8 3C050500 */  lui        $a1, 0x500
/* A92AC 800A86AC 34A50510 */  ori        $a1, $a1, 0x510
/* A92B0 800A86B0 00C14025 */  or         $t0, $a2, $at
/* A92B4 800A86B4 01003025 */  or         $a2, $t0, $zero
/* A92B8 800A86B8 0C02D57C */  jal        func_800B55F0
/* A92BC 800A86BC 8D840014 */   lw        $a0, 0x14($t4)
.L800A86C0:
/* A92C0 800A86C0 8FA9002C */  lw         $t1, 0x2c($sp)
/* A92C4 800A86C4 24190004 */  addiu      $t9, $zero, 4
/* A92C8 800A86C8 AD390000 */  sw         $t9, ($t1)
/* A92CC 800A86CC 240B0002 */  addiu      $t3, $zero, 2
/* A92D0 800A86D0 3C0AA460 */  lui        $t2, %hi(PI_STATUS)
/* A92D4 800A86D4 AD4B0010 */  sw         $t3, %lo(PI_STATUS)($t2)
/* A92D8 800A86D8 3C040010 */  lui        $a0, 0x10
/* A92DC 800A86DC 0C02D5E0 */  jal        __osSetGlobalIntMask
/* A92E0 800A86E0 34840C01 */   ori       $a0, $a0, 0xc01
.L800A86E4:
/* A92E4 800A86E4 8FAE0044 */  lw         $t6, 0x44($sp)
/* A92E8 800A86E8 00003025 */  or         $a2, $zero, $zero
/* A92EC 800A86EC 8DC40004 */  lw         $a0, 4($t6)
/* A92F0 800A86F0 0C0278BC */  jal        osSendMesg
/* A92F4 800A86F4 01C02825 */   or        $a1, $t6, $zero
/* A92F8 800A86F8 8FAD0030 */  lw         $t5, 0x30($sp)
/* A92FC 800A86FC 24010001 */  addiu      $at, $zero, 1
/* A9300 800A8700 15A10009 */  bne        $t5, $at, .L800A8728
/* A9304 800A8704 00000000 */   nop
/* A9308 800A8708 8FAF0044 */  lw         $t7, 0x44($sp)
/* A930C 800A870C 8DEC0014 */  lw         $t4, 0x14($t7)
/* A9310 800A8710 8D98002C */  lw         $t8, 0x2c($t4)
/* A9314 800A8714 17000004 */  bnez       $t8, .L800A8728
/* A9318 800A8718 00000000 */   nop
/* A931C 800A871C AFA00030 */  sw         $zero, 0x30($sp)
/* A9320 800A8720 1000FFAB */  b          .L800A85D0
/* A9324 800A8724 00000000 */   nop
.L800A8728:
/* A9328 800A8728 8FA80034 */  lw         $t0, 0x34($sp)
/* A932C 800A872C 00002825 */  or         $a1, $zero, $zero
/* A9330 800A8730 00003025 */  or         $a2, $zero, $zero
/* A9334 800A8734 0C0278BC */  jal        osSendMesg
/* A9338 800A8738 8D040010 */   lw        $a0, 0x10($t0)
/* A933C 800A873C 8FB90044 */  lw         $t9, 0x44($sp)
/* A9340 800A8740 24010001 */  addiu      $at, $zero, 1
/* A9344 800A8744 8F290014 */  lw         $t1, 0x14($t9)
/* A9348 800A8748 952B001A */  lhu        $t3, 0x1a($t1)
/* A934C 800A874C 15610003 */  bne        $t3, $at, .L800A875C
/* A9350 800A8750 00000000 */   nop
/* A9354 800A8754 0C02D5F8 */  jal        osYieldThread
/* A9358 800A8758 00000000 */   nop
.L800A875C:
/* A935C 800A875C 10000072 */  b          .L800A8928
/* A9360 800A8760 00000000 */   nop
.L800A8764:
/* A9364 800A8764 8FAA0044 */  lw         $t2, 0x44($sp)
/* A9368 800A8768 954E0000 */  lhu        $t6, ($t2)
/* A936C 800A876C 25CDFFF6 */  addiu      $t5, $t6, -0xa
/* A9370 800A8770 2DA10007 */  sltiu      $at, $t5, 7
/* A9374 800A8774 10200056 */  beqz       $at, .L800A88D0
/* A9378 800A8778 00000000 */   nop
/* A937C 800A877C 000D6880 */  sll        $t5, $t5, 2
/* A9380 800A8780 3C01800F */  lui        $at, %hi(D_800EDBA0)
/* A9384 800A8784 002D0821 */  addu       $at, $at, $t5
/* A9388 800A8788 8C2DDBA0 */  lw         $t5, %lo(D_800EDBA0)($at)
/* A938C 800A878C 01A00008 */  jr         $t5
/* A9390 800A8790 00000000 */   nop
/* A9394 800A8794 8FAF0034 */  lw         $t7, 0x34($sp)
/* A9398 800A8798 27A5003C */  addiu      $a1, $sp, 0x3c
/* A939C 800A879C 24060001 */  addiu      $a2, $zero, 1
/* A93A0 800A87A0 0C026B44 */  jal        osRecvMesg
/* A93A4 800A87A4 8DE40010 */   lw        $a0, 0x10($t7)
/* A93A8 800A87A8 8FB80034 */  lw         $t8, 0x34($sp)
/* A93AC 800A87AC 8FAC0044 */  lw         $t4, 0x44($sp)
/* A93B0 800A87B0 00002025 */  or         $a0, $zero, $zero
/* A93B4 800A87B4 8F190014 */  lw         $t9, 0x14($t8)
/* A93B8 800A87B8 8D85000C */  lw         $a1, 0xc($t4)
/* A93BC 800A87BC 8D860008 */  lw         $a2, 8($t4)
/* A93C0 800A87C0 0320F809 */  jalr       $t9
/* A93C4 800A87C4 8D870010 */   lw        $a3, 0x10($t4)
/* A93C8 800A87C8 AFA20038 */  sw         $v0, 0x38($sp)
/* A93CC 800A87CC 10000044 */  b          .L800A88E0
/* A93D0 800A87D0 00000000 */   nop
/* A93D4 800A87D4 8FA80034 */  lw         $t0, 0x34($sp)
/* A93D8 800A87D8 27A5003C */  addiu      $a1, $sp, 0x3c
/* A93DC 800A87DC 24060001 */  addiu      $a2, $zero, 1
/* A93E0 800A87E0 0C026B44 */  jal        osRecvMesg
/* A93E4 800A87E4 8D040010 */   lw        $a0, 0x10($t0)
/* A93E8 800A87E8 8FAB0034 */  lw         $t3, 0x34($sp)
/* A93EC 800A87EC 8FA90044 */  lw         $t1, 0x44($sp)
/* A93F0 800A87F0 24040001 */  addiu      $a0, $zero, 1
/* A93F4 800A87F4 8D790014 */  lw         $t9, 0x14($t3)
/* A93F8 800A87F8 8D25000C */  lw         $a1, 0xc($t1)
/* A93FC 800A87FC 8D260008 */  lw         $a2, 8($t1)
/* A9400 800A8800 0320F809 */  jalr       $t9
/* A9404 800A8804 8D270010 */   lw        $a3, 0x10($t1)
/* A9408 800A8808 AFA20038 */  sw         $v0, 0x38($sp)
/* A940C 800A880C 10000034 */  b          .L800A88E0
/* A9410 800A8810 00000000 */   nop
/* A9414 800A8814 8FAA0034 */  lw         $t2, 0x34($sp)
/* A9418 800A8818 27A5003C */  addiu      $a1, $sp, 0x3c
/* A941C 800A881C 24060001 */  addiu      $a2, $zero, 1
/* A9420 800A8820 0C026B44 */  jal        osRecvMesg
/* A9424 800A8824 8D440010 */   lw        $a0, 0x10($t2)
/* A9428 800A8828 8FAE0044 */  lw         $t6, 0x44($sp)
/* A942C 800A882C 8FAF0034 */  lw         $t7, 0x34($sp)
/* A9430 800A8830 00002825 */  or         $a1, $zero, $zero
/* A9434 800A8834 8DCD0010 */  lw         $t5, 0x10($t6)
/* A9438 800A8838 8DC40014 */  lw         $a0, 0x14($t6)
/* A943C 800A883C 8DC6000C */  lw         $a2, 0xc($t6)
/* A9440 800A8840 8DC70008 */  lw         $a3, 8($t6)
/* A9444 800A8844 AFAD0010 */  sw         $t5, 0x10($sp)
/* A9448 800A8848 8DF90018 */  lw         $t9, 0x18($t7)
/* A944C 800A884C 0320F809 */  jalr       $t9
/* A9450 800A8850 00000000 */   nop
/* A9454 800A8854 AFA20038 */  sw         $v0, 0x38($sp)
/* A9458 800A8858 10000021 */  b          .L800A88E0
/* A945C 800A885C 00000000 */   nop
/* A9460 800A8860 8FAC0034 */  lw         $t4, 0x34($sp)
/* A9464 800A8864 27A5003C */  addiu      $a1, $sp, 0x3c
/* A9468 800A8868 24060001 */  addiu      $a2, $zero, 1
/* A946C 800A886C 0C026B44 */  jal        osRecvMesg
/* A9470 800A8870 8D840010 */   lw        $a0, 0x10($t4)
/* A9474 800A8874 8FB80044 */  lw         $t8, 0x44($sp)
/* A9478 800A8878 8FA90034 */  lw         $t1, 0x34($sp)
/* A947C 800A887C 24050001 */  addiu      $a1, $zero, 1
/* A9480 800A8880 8F080010 */  lw         $t0, 0x10($t8)
/* A9484 800A8884 8F040014 */  lw         $a0, 0x14($t8)
/* A9488 800A8888 8F06000C */  lw         $a2, 0xc($t8)
/* A948C 800A888C 8F070008 */  lw         $a3, 8($t8)
/* A9490 800A8890 AFA80010 */  sw         $t0, 0x10($sp)
/* A9494 800A8894 8D390018 */  lw         $t9, 0x18($t1)
/* A9498 800A8898 0320F809 */  jalr       $t9
/* A949C 800A889C 00000000 */   nop
/* A94A0 800A88A0 AFA20038 */  sw         $v0, 0x38($sp)
/* A94A4 800A88A4 1000000E */  b          .L800A88E0
/* A94A8 800A88A8 00000000 */   nop
/* A94AC 800A88AC 8FAB0044 */  lw         $t3, 0x44($sp)
/* A94B0 800A88B0 00003025 */  or         $a2, $zero, $zero
/* A94B4 800A88B4 8D640004 */  lw         $a0, 4($t3)
/* A94B8 800A88B8 0C0278BC */  jal        osSendMesg
/* A94BC 800A88BC 01602825 */   or        $a1, $t3, $zero
/* A94C0 800A88C0 240AFFFF */  addiu      $t2, $zero, -1
/* A94C4 800A88C4 AFAA0038 */  sw         $t2, 0x38($sp)
/* A94C8 800A88C8 10000005 */  b          .L800A88E0
/* A94CC 800A88CC 00000000 */   nop
.L800A88D0:
/* A94D0 800A88D0 240EFFFF */  addiu      $t6, $zero, -1
/* A94D4 800A88D4 AFAE0038 */  sw         $t6, 0x38($sp)
/* A94D8 800A88D8 10000001 */  b          .L800A88E0
/* A94DC 800A88DC 00000000 */   nop
.L800A88E0:
/* A94E0 800A88E0 8FAD0038 */  lw         $t5, 0x38($sp)
/* A94E4 800A88E4 15A00010 */  bnez       $t5, .L800A8928
/* A94E8 800A88E8 00000000 */   nop
/* A94EC 800A88EC 8FAF0034 */  lw         $t7, 0x34($sp)
/* A94F0 800A88F0 27A50040 */  addiu      $a1, $sp, 0x40
/* A94F4 800A88F4 24060001 */  addiu      $a2, $zero, 1
/* A94F8 800A88F8 0C026B44 */  jal        osRecvMesg
/* A94FC 800A88FC 8DE4000C */   lw        $a0, 0xc($t7)
/* A9500 800A8900 8FAC0044 */  lw         $t4, 0x44($sp)
/* A9504 800A8904 00003025 */  or         $a2, $zero, $zero
/* A9508 800A8908 8D840004 */  lw         $a0, 4($t4)
/* A950C 800A890C 0C0278BC */  jal        osSendMesg
/* A9510 800A8910 01802825 */   or        $a1, $t4, $zero
/* A9514 800A8914 8FB80034 */  lw         $t8, 0x34($sp)
/* A9518 800A8918 00002825 */  or         $a1, $zero, $zero
/* A951C 800A891C 00003025 */  or         $a2, $zero, $zero
/* A9520 800A8920 0C0278BC */  jal        osSendMesg
/* A9524 800A8924 8F040010 */   lw        $a0, 0x10($t8)
.L800A8928:
/* A9528 800A8928 1000FEDD */  b          .L800A84A0
/* A952C 800A892C 00000000 */   nop
/* A9530 800A8930 10000001 */  b          .L800A8938
/* A9534 800A8934 00000000 */   nop
.L800A8938:
/* A9538 800A8938 8FBF001C */  lw         $ra, 0x1c($sp)
/* A953C 800A893C 27BD0048 */  addiu      $sp, $sp, 0x48
/* A9540 800A8940 03E00008 */  jr         $ra
/* A9544 800A8944 00000000 */   nop
/* A9548 800A8948 00000000 */  nop
/* A954C 800A894C 00000000 */  nop
