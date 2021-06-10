glabel func_800A7860
/* A8460 800A7860 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* A8464 800A7864 AFBF0024 */  sw         $ra, 0x24($sp)
/* A8468 800A7868 AFB20020 */  sw         $s2, 0x20($sp)
/* A846C 800A786C AFB1001C */  sw         $s1, 0x1c($sp)
/* A8470 800A7870 AFB00018 */  sw         $s0, 0x18($sp)
/* A8474 800A7874 AFA00030 */  sw         $zero, 0x30($sp)
/* A8478 800A7878 3C11800F */  lui        $s1, %hi(D_800EA5D4)
/* A847C 800A787C 8E31A5D4 */  lw         $s1, %lo(D_800EA5D4)($s1)
/* A8480 800A7880 8E300008 */  lw         $s0, 8($s1)
/* A8484 800A7884 3C0EA440 */  lui        $t6, %hi(D_A4400010)
/* A8488 800A7888 8DCF0010 */  lw         $t7, %lo(D_A4400010)($t6)
/* A848C 800A788C 31F80001 */  andi       $t8, $t7, 1
/* A8490 800A7890 AFB80030 */  sw         $t8, 0x30($sp)
/* A8494 800A7894 0C026964 */  jal        func_8009A590
/* A8498 800A7898 8E240004 */   lw        $a0, 4($s1)
/* A849C 800A789C 8FB90030 */  lw         $t9, 0x30($sp)
/* A84A0 800A78A0 00409025 */  or         $s2, $v0, $zero
/* A84A4 800A78A4 00194080 */  sll        $t0, $t9, 2
/* A84A8 800A78A8 01194021 */  addu       $t0, $t0, $t9
/* A84AC 800A78AC 00084080 */  sll        $t0, $t0, 2
/* A84B0 800A78B0 02084821 */  addu       $t1, $s0, $t0
/* A84B4 800A78B4 8D2A0028 */  lw         $t2, 0x28($t1)
/* A84B8 800A78B8 01525821 */  addu       $t3, $t2, $s2
/* A84BC 800A78BC AFAB003C */  sw         $t3, 0x3c($sp)
/* A84C0 800A78C0 962C0000 */  lhu        $t4, ($s1)
/* A84C4 800A78C4 318D0002 */  andi       $t5, $t4, 2
/* A84C8 800A78C8 11A00008 */  beqz       $t5, .L800A78EC
/* A84CC 800A78CC 00000000 */   nop
/* A84D0 800A78D0 8E0F0020 */  lw         $t7, 0x20($s0)
/* A84D4 800A78D4 8E2E0020 */  lw         $t6, 0x20($s1)
/* A84D8 800A78D8 2401F000 */  addiu      $at, $zero, -0x1000
/* A84DC 800A78DC 01E1C024 */  and        $t8, $t7, $at
/* A84E0 800A78E0 01D8C825 */  or         $t9, $t6, $t8
/* A84E4 800A78E4 10000003 */  b          .L800A78F4
/* A84E8 800A78E8 AE390020 */   sw        $t9, 0x20($s1)
.L800A78EC:
/* A84EC 800A78EC 8E080020 */  lw         $t0, 0x20($s0)
/* A84F0 800A78F0 AE280020 */  sw         $t0, 0x20($s1)
.L800A78F4:
/* A84F4 800A78F4 96290000 */  lhu        $t1, ($s1)
/* A84F8 800A78F8 312A0004 */  andi       $t2, $t1, 4
/* A84FC 800A78FC 11400044 */  beqz       $t2, .L800A7A10
/* A8500 800A7900 00000000 */   nop
/* A8504 800A7904 8FAB0030 */  lw         $t3, 0x30($sp)
/* A8508 800A7908 000B6080 */  sll        $t4, $t3, 2
/* A850C 800A790C 018B6021 */  addu       $t4, $t4, $t3
/* A8510 800A7910 000C6080 */  sll        $t4, $t4, 2
/* A8514 800A7914 020C6821 */  addu       $t5, $s0, $t4
/* A8518 800A7918 8DAF002C */  lw         $t7, 0x2c($t5)
/* A851C 800A791C 31EE0FFF */  andi       $t6, $t7, 0xfff
/* A8520 800A7920 AFAE0034 */  sw         $t6, 0x34($sp)
/* A8524 800A7924 8FB80034 */  lw         $t8, 0x34($sp)
/* A8528 800A7928 C6240024 */  lwc1       $f4, 0x24($s1)
/* A852C 800A792C 44983000 */  mtc1       $t8, $f6
/* A8530 800A7930 07010005 */  bgez       $t8, .L800A7948
/* A8534 800A7934 46803220 */   cvt.s.w   $f8, $f6
/* A8538 800A7938 3C014F80 */  lui        $at, 0x4f80
/* A853C 800A793C 44815000 */  mtc1       $at, $f10
/* A8540 800A7940 00000000 */  nop
/* A8544 800A7944 460A4200 */  add.s      $f8, $f8, $f10
.L800A7948:
/* A8548 800A7948 46082402 */  mul.s      $f16, $f4, $f8
/* A854C 800A794C 24080001 */  addiu      $t0, $zero, 1
/* A8550 800A7950 4459F800 */  cfc1       $t9, $31
/* A8554 800A7954 44C8F800 */  ctc1       $t0, $31
/* A8558 800A7958 00000000 */  nop
/* A855C 800A795C 460084A4 */  cvt.w.s    $f18, $f16
/* A8560 800A7960 4448F800 */  cfc1       $t0, $31
/* A8564 800A7964 00000000 */  nop
/* A8568 800A7968 31010004 */  andi       $at, $t0, 4
/* A856C 800A796C 31080078 */  andi       $t0, $t0, 0x78
/* A8570 800A7970 11000014 */  beqz       $t0, .L800A79C4
/* A8574 800A7974 00000000 */   nop
/* A8578 800A7978 3C014F00 */  lui        $at, 0x4f00
/* A857C 800A797C 44819000 */  mtc1       $at, $f18
/* A8580 800A7980 24080001 */  addiu      $t0, $zero, 1
/* A8584 800A7984 46128481 */  sub.s      $f18, $f16, $f18
/* A8588 800A7988 44C8F800 */  ctc1       $t0, $31
/* A858C 800A798C 00000000 */  nop
/* A8590 800A7990 460094A4 */  cvt.w.s    $f18, $f18
/* A8594 800A7994 4448F800 */  cfc1       $t0, $31
/* A8598 800A7998 00000000 */  nop
/* A859C 800A799C 31010004 */  andi       $at, $t0, 4
/* A85A0 800A79A0 31080078 */  andi       $t0, $t0, 0x78
/* A85A4 800A79A4 15000005 */  bnez       $t0, .L800A79BC
/* A85A8 800A79A8 00000000 */   nop
/* A85AC 800A79AC 44089000 */  mfc1       $t0, $f18
/* A85B0 800A79B0 3C018000 */  lui        $at, 0x8000
/* A85B4 800A79B4 10000007 */  b          .L800A79D4
/* A85B8 800A79B8 01014025 */   or        $t0, $t0, $at
.L800A79BC:
/* A85BC 800A79BC 10000005 */  b          .L800A79D4
/* A85C0 800A79C0 2408FFFF */   addiu     $t0, $zero, -1
.L800A79C4:
/* A85C4 800A79C4 44089000 */  mfc1       $t0, $f18
/* A85C8 800A79C8 00000000 */  nop
/* A85CC 800A79CC 0500FFFB */  bltz       $t0, .L800A79BC
/* A85D0 800A79D0 00000000 */   nop
.L800A79D4:
/* A85D4 800A79D4 44D9F800 */  ctc1       $t9, $31
/* A85D8 800A79D8 AE28002C */  sw         $t0, 0x2c($s1)
/* A85DC 800A79DC 00000000 */  nop
/* A85E0 800A79E0 8FAA0030 */  lw         $t2, 0x30($sp)
/* A85E4 800A79E4 8E29002C */  lw         $t1, 0x2c($s1)
/* A85E8 800A79E8 2401F000 */  addiu      $at, $zero, -0x1000
/* A85EC 800A79EC 000A5880 */  sll        $t3, $t2, 2
/* A85F0 800A79F0 016A5821 */  addu       $t3, $t3, $t2
/* A85F4 800A79F4 000B5880 */  sll        $t3, $t3, 2
/* A85F8 800A79F8 020B6021 */  addu       $t4, $s0, $t3
/* A85FC 800A79FC 8D8D002C */  lw         $t5, 0x2c($t4)
/* A8600 800A7A00 01A17824 */  and        $t7, $t5, $at
/* A8604 800A7A04 012F7025 */  or         $t6, $t1, $t7
/* A8608 800A7A08 10000008 */  b          .L800A7A2C
/* A860C 800A7A0C AE2E002C */   sw        $t6, 0x2c($s1)
.L800A7A10:
/* A8610 800A7A10 8FB80030 */  lw         $t8, 0x30($sp)
/* A8614 800A7A14 0018C880 */  sll        $t9, $t8, 2
/* A8618 800A7A18 0338C821 */  addu       $t9, $t9, $t8
/* A861C 800A7A1C 0019C880 */  sll        $t9, $t9, 2
/* A8620 800A7A20 02194021 */  addu       $t0, $s0, $t9
/* A8624 800A7A24 8D0A002C */  lw         $t2, 0x2c($t0)
/* A8628 800A7A28 AE2A002C */  sw         $t2, 0x2c($s1)
.L800A7A2C:
/* A862C 800A7A2C 8E0B001C */  lw         $t3, 0x1c($s0)
/* A8630 800A7A30 AFAB0038 */  sw         $t3, 0x38($sp)
/* A8634 800A7A34 962C0000 */  lhu        $t4, ($s1)
/* A8638 800A7A38 318D0020 */  andi       $t5, $t4, 0x20
/* A863C 800A7A3C 11A00002 */  beqz       $t5, .L800A7A48
/* A8640 800A7A40 00000000 */   nop
/* A8644 800A7A44 AFA00038 */  sw         $zero, 0x38($sp)
.L800A7A48:
/* A8648 800A7A48 96290000 */  lhu        $t1, ($s1)
/* A864C 800A7A4C 312F0040 */  andi       $t7, $t1, 0x40
/* A8650 800A7A50 11E00005 */  beqz       $t7, .L800A7A68
/* A8654 800A7A54 00000000 */   nop
/* A8658 800A7A58 AE20002C */  sw         $zero, 0x2c($s1)
/* A865C 800A7A5C 0C026964 */  jal        func_8009A590
/* A8660 800A7A60 8E240004 */   lw        $a0, 4($s1)
/* A8664 800A7A64 AFA2003C */  sw         $v0, 0x3c($sp)
.L800A7A68:
/* A8668 800A7A68 962E0000 */  lhu        $t6, ($s1)
/* A866C 800A7A6C 31D80080 */  andi       $t8, $t6, 0x80
/* A8670 800A7A70 13000009 */  beqz       $t8, .L800A7A98
/* A8674 800A7A74 00000000 */   nop
/* A8678 800A7A78 96390028 */  lhu        $t9, 0x28($s1)
/* A867C 800A7A7C 3C0103FF */  lui        $at, 0x3ff
/* A8680 800A7A80 00194400 */  sll        $t0, $t9, 0x10
/* A8684 800A7A84 01015024 */  and        $t2, $t0, $at
/* A8688 800A7A88 AE2A002C */  sw         $t2, 0x2c($s1)
/* A868C 800A7A8C 0C026964 */  jal        func_8009A590
/* A8690 800A7A90 8E240004 */   lw        $a0, 4($s1)
/* A8694 800A7A94 AFA2003C */  sw         $v0, 0x3c($sp)
.L800A7A98:
/* A8698 800A7A98 8FAB003C */  lw         $t3, 0x3c($sp)
/* A869C 800A7A9C 3C0CA440 */  lui        $t4, %hi(D_A4400004)
/* A86A0 800A7AA0 AD8B0004 */  sw         $t3, %lo(D_A4400004)($t4)
/* A86A4 800A7AA4 8E0D0008 */  lw         $t5, 8($s0)
/* A86A8 800A7AA8 3C09A440 */  lui        $t1, %hi(D_A4400008)
/* A86AC 800A7AAC AD2D0008 */  sw         $t5, %lo(D_A4400008)($t1)
/* A86B0 800A7AB0 8E0F000C */  lw         $t7, 0xc($s0)
/* A86B4 800A7AB4 3C0EA440 */  lui        $t6, %hi(D_A4400014)
/* A86B8 800A7AB8 ADCF0014 */  sw         $t7, %lo(D_A4400014)($t6)
/* A86BC 800A7ABC 8E180010 */  lw         $t8, 0x10($s0)
/* A86C0 800A7AC0 3C19A440 */  lui        $t9, %hi(D_A4400018)
/* A86C4 800A7AC4 AF380018 */  sw         $t8, %lo(D_A4400018)($t9)
/* A86C8 800A7AC8 8E080014 */  lw         $t0, 0x14($s0)
/* A86CC 800A7ACC 3C0AA440 */  lui        $t2, %hi(D_A440001C)
/* A86D0 800A7AD0 AD48001C */  sw         $t0, %lo(D_A440001C)($t2)
/* A86D4 800A7AD4 8E0B0018 */  lw         $t3, 0x18($s0)
/* A86D8 800A7AD8 3C0CA440 */  lui        $t4, %hi(D_A4400020)
/* A86DC 800A7ADC AD8B0020 */  sw         $t3, %lo(D_A4400020)($t4)
/* A86E0 800A7AE0 8FAD0038 */  lw         $t5, 0x38($sp)
/* A86E4 800A7AE4 3C09A440 */  lui        $t1, %hi(D_A4400024)
/* A86E8 800A7AE8 AD2D0024 */  sw         $t5, %lo(D_A4400024)($t1)
/* A86EC 800A7AEC 8FAF0030 */  lw         $t7, 0x30($sp)
/* A86F0 800A7AF0 3C08A440 */  lui        $t0, 0xa440
/* A86F4 800A7AF4 000F7080 */  sll        $t6, $t7, 2
/* A86F8 800A7AF8 01CF7021 */  addu       $t6, $t6, $t7
/* A86FC 800A7AFC 000E7080 */  sll        $t6, $t6, 2
/* A8700 800A7B00 020EC021 */  addu       $t8, $s0, $t6
/* A8704 800A7B04 8F190030 */  lw         $t9, 0x30($t8)
/* A8708 800A7B08 AD190028 */  sw         $t9, 0x28($t0)
/* A870C 800A7B0C 8FAA0030 */  lw         $t2, 0x30($sp)
/* A8710 800A7B10 3C09A440 */  lui        $t1, 0xa440
/* A8714 800A7B14 000A5880 */  sll        $t3, $t2, 2
/* A8718 800A7B18 016A5821 */  addu       $t3, $t3, $t2
/* A871C 800A7B1C 000B5880 */  sll        $t3, $t3, 2
/* A8720 800A7B20 020B6021 */  addu       $t4, $s0, $t3
/* A8724 800A7B24 8D8D0034 */  lw         $t5, 0x34($t4)
/* A8728 800A7B28 AD2D002C */  sw         $t5, 0x2c($t1)
/* A872C 800A7B2C 8FAF0030 */  lw         $t7, 0x30($sp)
/* A8730 800A7B30 3C08A440 */  lui        $t0, 0xa440
/* A8734 800A7B34 000F7080 */  sll        $t6, $t7, 2
/* A8738 800A7B38 01CF7021 */  addu       $t6, $t6, $t7
/* A873C 800A7B3C 000E7080 */  sll        $t6, $t6, 2
/* A8740 800A7B40 020EC021 */  addu       $t8, $s0, $t6
/* A8744 800A7B44 8F190038 */  lw         $t9, 0x38($t8)
/* A8748 800A7B48 AD19000C */  sw         $t9, 0xc($t0)
/* A874C 800A7B4C 8E2A0020 */  lw         $t2, 0x20($s1)
/* A8750 800A7B50 3C0BA440 */  lui        $t3, %hi(D_A4400030)
/* A8754 800A7B54 AD6A0030 */  sw         $t2, %lo(D_A4400030)($t3)
/* A8758 800A7B58 8E2C002C */  lw         $t4, 0x2c($s1)
/* A875C 800A7B5C 3C0DA440 */  lui        $t5, %hi(D_A4400034)
/* A8760 800A7B60 ADAC0034 */  sw         $t4, %lo(D_A4400034)($t5)
/* A8764 800A7B64 8E29000C */  lw         $t1, 0xc($s1)
/* A8768 800A7B68 3C0FA440 */  lui        $t7, 0xa440
/* A876C 800A7B6C ADE90000 */  sw         $t1, ($t7)
/* A8770 800A7B70 3C0E800F */  lui        $t6, %hi(D_800EA5D0)
/* A8774 800A7B74 8DCEA5D0 */  lw         $t6, %lo(D_800EA5D0)($t6)
/* A8778 800A7B78 3C01800F */  lui        $at, %hi(D_800EA5D4)
/* A877C 800A7B7C AC2EA5D4 */  sw         $t6, %lo(D_800EA5D4)($at)
/* A8780 800A7B80 3C01800F */  lui        $at, %hi(D_800EA5D0)
/* A8784 800A7B84 AC31A5D0 */  sw         $s1, %lo(D_800EA5D0)($at)
/* A8788 800A7B88 3C19800F */  lui        $t9, %hi(D_800EA5D0)
/* A878C 800A7B8C 8F39A5D0 */  lw         $t9, %lo(D_800EA5D0)($t9)
/* A8790 800A7B90 3C18800F */  lui        $t8, %hi(D_800EA5D4)
/* A8794 800A7B94 8F18A5D4 */  lw         $t8, %lo(D_800EA5D4)($t8)
/* A8798 800A7B98 272B0030 */  addiu      $t3, $t9, 0x30
.L800A7B9C:
/* A879C 800A7B9C 8F210000 */  lw         $at, ($t9)
/* A87A0 800A7BA0 2739000C */  addiu      $t9, $t9, 0xc
/* A87A4 800A7BA4 2718000C */  addiu      $t8, $t8, 0xc
/* A87A8 800A7BA8 AF01FFF4 */  sw         $at, -0xc($t8)
/* A87AC 800A7BAC 8F21FFF8 */  lw         $at, -8($t9)
/* A87B0 800A7BB0 AF01FFF8 */  sw         $at, -8($t8)
/* A87B4 800A7BB4 8F21FFFC */  lw         $at, -4($t9)
/* A87B8 800A7BB8 172BFFF8 */  bne        $t9, $t3, .L800A7B9C
/* A87BC 800A7BBC AF01FFFC */   sw        $at, -4($t8)
/* A87C0 800A7BC0 10000001 */  b          .L800A7BC8
/* A87C4 800A7BC4 00000000 */   nop
.L800A7BC8:
/* A87C8 800A7BC8 8FBF0024 */  lw         $ra, 0x24($sp)
/* A87CC 800A7BCC 8FB00018 */  lw         $s0, 0x18($sp)
/* A87D0 800A7BD0 8FB1001C */  lw         $s1, 0x1c($sp)
/* A87D4 800A7BD4 8FB20020 */  lw         $s2, 0x20($sp)
/* A87D8 800A7BD8 03E00008 */  jr         $ra
/* A87DC 800A7BDC 27BD0048 */   addiu     $sp, $sp, 0x48
