glabel func_800A9904
/* AA504 800A9904 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AA508 800A9908 AFBF0014 */  sw         $ra, 0x14($sp)
/* AA50C 800A990C AFA40028 */  sw         $a0, 0x28($sp)
/* AA510 800A9910 8FAE0028 */  lw         $t6, 0x28($sp)
/* AA514 800A9914 AFAE0024 */  sw         $t6, 0x24($sp)
/* AA518 800A9918 3C0F8019 */  lui        $t7, %hi(D_8018A290)
/* AA51C 800A991C 25EFA290 */  addiu      $t7, $t7, %lo(D_8018A290)
/* AA520 800A9920 AFAF0020 */  sw         $t7, 0x20($sp)
/* AA524 800A9924 8FB80028 */  lw         $t8, 0x28($sp)
/* AA528 800A9928 24010001 */  addiu      $at, $zero, 1
/* AA52C 800A992C 93190009 */  lbu        $t9, 9($t8)
/* AA530 800A9930 17210004 */  bne        $t9, $at, .L800A9944
/* AA534 800A9934 00000000 */   nop
/* AA538 800A9938 24080002 */  addiu      $t0, $zero, 2
/* AA53C 800A993C 10000003 */  b          .L800A994C
/* AA540 800A9940 AFA8001C */   sw        $t0, 0x1c($sp)
.L800A9944:
/* AA544 800A9944 24090006 */  addiu      $t1, $zero, 6
/* AA548 800A9948 AFA9001C */  sw         $t1, 0x1c($sp)
.L800A994C:
/* AA54C 800A994C 8FAA001C */  lw         $t2, 0x1c($sp)
/* AA550 800A9950 8FAD0020 */  lw         $t5, 0x20($sp)
/* AA554 800A9954 000A5900 */  sll        $t3, $t2, 4
/* AA558 800A9958 256C0024 */  addiu      $t4, $t3, 0x24
/* AA55C 800A995C ADAC0000 */  sw         $t4, ($t5)
/* AA560 800A9960 8FAE0024 */  lw         $t6, 0x24($sp)
/* AA564 800A9964 8FB80020 */  lw         $t8, 0x20($sp)
/* AA568 800A9968 91CF0004 */  lbu        $t7, 4($t6)
/* AA56C 800A996C A30F0004 */  sb         $t7, 4($t8)
/* AA570 800A9970 8FB90020 */  lw         $t9, 0x20($sp)
/* AA574 800A9974 A7200006 */  sh         $zero, 6($t9)
/* AA578 800A9978 8FA80024 */  lw         $t0, 0x24($sp)
/* AA57C 800A997C 8FAA0020 */  lw         $t2, 0x20($sp)
/* AA580 800A9980 8D09000C */  lw         $t1, 0xc($t0)
/* AA584 800A9984 AD49000C */  sw         $t1, 0xc($t2)
/* AA588 800A9988 8FAB001C */  lw         $t3, 0x1c($sp)
/* AA58C 800A998C 8FAC0020 */  lw         $t4, 0x20($sp)
/* AA590 800A9990 AD8B0010 */  sw         $t3, 0x10($t4)
/* AA594 800A9994 8FAE0020 */  lw         $t6, 0x20($sp)
/* AA598 800A9998 3C0D0400 */  lui        $t5, 0x400
/* AA59C 800A999C 35AD1000 */  ori        $t5, $t5, 0x1000
/* AA5A0 800A99A0 ADCD0024 */  sw         $t5, 0x24($t6)
/* AA5A4 800A99A4 8FB80020 */  lw         $t8, 0x20($sp)
/* AA5A8 800A99A8 240F1000 */  addiu      $t7, $zero, 0x1000
/* AA5AC 800A99AC AF0F0028 */  sw         $t7, 0x28($t8)
/* AA5B0 800A99B0 8FA80020 */  lw         $t0, 0x20($sp)
/* AA5B4 800A99B4 24190007 */  addiu      $t9, $zero, 7
/* AA5B8 800A99B8 A519002C */  sh         $t9, 0x2c($t0)
/* AA5BC 800A99BC 8FAA0020 */  lw         $t2, 0x20($sp)
/* AA5C0 800A99C0 3C090400 */  lui        $t1, 0x400
/* AA5C4 800A99C4 35291000 */  ori        $t1, $t1, 0x1000
/* AA5C8 800A99C8 AD490030 */  sw         $t1, 0x30($t2)
/* AA5CC 800A99CC 8FAC0020 */  lw         $t4, 0x20($sp)
/* AA5D0 800A99D0 3C0B0400 */  lui        $t3, 0x400
/* AA5D4 800A99D4 AD8B0014 */  sw         $t3, 0x14($t4)
/* AA5D8 800A99D8 8FAE0020 */  lw         $t6, 0x20($sp)
/* AA5DC 800A99DC 240D1000 */  addiu      $t5, $zero, 0x1000
/* AA5E0 800A99E0 ADCD0018 */  sw         $t5, 0x18($t6)
/* AA5E4 800A99E4 8FB80020 */  lw         $t8, 0x20($sp)
/* AA5E8 800A99E8 240F0003 */  addiu      $t7, $zero, 3
/* AA5EC 800A99EC A70F001C */  sh         $t7, 0x1c($t8)
/* AA5F0 800A99F0 8FA80020 */  lw         $t0, 0x20($sp)
/* AA5F4 800A99F4 3C190400 */  lui        $t9, 0x400
/* AA5F8 800A99F8 AD190020 */  sw         $t9, 0x20($t0)
/* AA5FC 800A99FC 8FA9001C */  lw         $t1, 0x1c($sp)
/* AA600 800A9A00 29210003 */  slti       $at, $t1, 3
/* AA604 800A9A04 1420002F */  bnez       $at, .L800A9AC4
/* AA608 800A9A08 00000000 */   nop
/* AA60C 800A9A0C 8FAB0020 */  lw         $t3, 0x20($sp)
/* AA610 800A9A10 3C0A8820 */  lui        $t2, 0x8820
/* AA614 800A9A14 AD6A0034 */  sw         $t2, 0x34($t3)
/* AA618 800A9A18 8FAD0020 */  lw         $t5, 0x20($sp)
/* AA61C 800A9A1C 240C6130 */  addiu      $t4, $zero, 0x6130
/* AA620 800A9A20 ADAC0038 */  sw         $t4, 0x38($t5)
/* AA624 800A9A24 8FAF0020 */  lw         $t7, 0x20($sp)
/* AA628 800A9A28 240E0005 */  addiu      $t6, $zero, 5
/* AA62C 800A9A2C A5EE003C */  sh         $t6, 0x3c($t7)
/* AA630 800A9A30 8FB80020 */  lw         $t8, 0x20($sp)
/* AA634 800A9A34 AF000040 */  sw         $zero, 0x40($t8)
/* AA638 800A9A38 8FA80020 */  lw         $t0, 0x20($sp)
/* AA63C 800A9A3C 24190004 */  addiu      $t9, $zero, 4
/* AA640 800A9A40 AD190044 */  sw         $t9, 0x44($t0)
/* AA644 800A9A44 8FAA0020 */  lw         $t2, 0x20($sp)
/* AA648 800A9A48 3C090020 */  lui        $t1, 0x20
/* AA64C 800A9A4C AD490048 */  sw         $t1, 0x48($t2)
/* AA650 800A9A50 8FAC0020 */  lw         $t4, 0x20($sp)
/* AA654 800A9A54 240B0003 */  addiu      $t3, $zero, 3
/* AA658 800A9A58 A58B004C */  sh         $t3, 0x4c($t4)
/* AA65C 800A9A5C 8FAD0020 */  lw         $t5, 0x20($sp)
/* AA660 800A9A60 ADA00050 */  sw         $zero, 0x50($t5)
/* AA664 800A9A64 8FAF0020 */  lw         $t7, 0x20($sp)
/* AA668 800A9A68 3C0E0400 */  lui        $t6, 0x400
/* AA66C 800A9A6C 35CE2000 */  ori        $t6, $t6, 0x2000
/* AA670 800A9A70 ADEE0054 */  sw         $t6, 0x54($t7)
/* AA674 800A9A74 8FB90020 */  lw         $t9, 0x20($sp)
/* AA678 800A9A78 3C180080 */  lui        $t8, 0x80
/* AA67C 800A9A7C AF380058 */  sw         $t8, 0x58($t9)
/* AA680 800A9A80 8FA90020 */  lw         $t1, 0x20($sp)
/* AA684 800A9A84 24080003 */  addiu      $t0, $zero, 3
/* AA688 800A9A88 A528005C */  sh         $t0, 0x5c($t1)
/* AA68C 800A9A8C 8FAA0020 */  lw         $t2, 0x20($sp)
/* AA690 800A9A90 AD400060 */  sw         $zero, 0x60($t2)
/* AA694 800A9A94 8FAC0020 */  lw         $t4, 0x20($sp)
/* AA698 800A9A98 3C0B8820 */  lui        $t3, 0x8820
/* AA69C 800A9A9C 356B6130 */  ori        $t3, $t3, 0x6130
/* AA6A0 800A9AA0 AD8B0064 */  sw         $t3, 0x64($t4)
/* AA6A4 800A9AA4 8FAE0020 */  lw         $t6, 0x20($sp)
/* AA6A8 800A9AA8 340D9000 */  ori        $t5, $zero, 0x9000
/* AA6AC 800A9AAC ADCD0068 */  sw         $t5, 0x68($t6)
/* AA6B0 800A9AB0 8FB80020 */  lw         $t8, 0x20($sp)
/* AA6B4 800A9AB4 240F0003 */  addiu      $t7, $zero, 3
/* AA6B8 800A9AB8 A70F006C */  sh         $t7, 0x6c($t8)
/* AA6BC 800A9ABC 8FB90020 */  lw         $t9, 0x20($sp)
/* AA6C0 800A9AC0 AF200070 */  sw         $zero, 0x70($t9)
.L800A9AC4:
/* AA6C4 800A9AC4 8FA80020 */  lw         $t0, 0x20($sp)
/* AA6C8 800A9AC8 24060001 */  addiu      $a2, $zero, 1
/* AA6CC 800A9ACC 01002025 */  or         $a0, $t0, $zero
/* AA6D0 800A9AD0 0C026833 */  jal        func_8009A0CC
/* AA6D4 800A9AD4 8D050000 */   lw        $a1, ($t0)
/* AA6D8 800A9AD8 10000003 */  b          .L800A9AE8
/* AA6DC 800A9ADC 00001025 */   or        $v0, $zero, $zero
/* AA6E0 800A9AE0 10000001 */  b          .L800A9AE8
/* AA6E4 800A9AE4 00000000 */   nop
.L800A9AE8:
/* AA6E8 800A9AE8 8FBF0014 */  lw         $ra, 0x14($sp)
/* AA6EC 800A9AEC 27BD0028 */  addiu      $sp, $sp, 0x28
/* AA6F0 800A9AF0 03E00008 */  jr         $ra
/* AA6F4 800A9AF4 00000000 */   nop
/* AA6F8 800A9AF8 00000000 */  nop
/* AA6FC 800A9AFC 00000000 */  nop
