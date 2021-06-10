glabel func_8009C6AC
/* 9D2AC 8009C6AC 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 9D2B0 8009C6B0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9D2B4 8009C6B4 AFA40050 */  sw         $a0, 0x50($sp)
/* 9D2B8 8009C6B8 AFB10018 */  sw         $s1, 0x18($sp)
/* 9D2BC 8009C6BC AFB00014 */  sw         $s0, 0x14($sp)
/* 9D2C0 8009C6C0 8FAE0050 */  lw         $t6, 0x50($sp)
/* 9D2C4 8009C6C4 00000000 */  nop
/* 9D2C8 8009C6C8 AFAE004C */  sw         $t6, 0x4c($sp)
.L8009C6CC:
/* 9D2CC 8009C6CC 8FAF004C */  lw         $t7, 0x4c($sp)
/* 9D2D0 8009C6D0 00000000 */  nop
/* 9D2D4 8009C6D4 95F80038 */  lhu        $t8, 0x38($t7)
/* 9D2D8 8009C6D8 00000000 */  nop
/* 9D2DC 8009C6DC 2F010018 */  sltiu      $at, $t8, 0x18
/* 9D2E0 8009C6E0 102001DC */  beqz       $at, .L8009CE54
/* 9D2E4 8009C6E4 00000000 */   nop
/* 9D2E8 8009C6E8 0018C080 */  sll        $t8, $t8, 2
/* 9D2EC 8009C6EC 3C01800F */  lui        $at, %hi(D_800ED6F0)
/* 9D2F0 8009C6F0 00380821 */  addu       $at, $at, $t8
/* 9D2F4 8009C6F4 8C38D6F0 */  lw         $t8, %lo(D_800ED6F0)($at)
/* 9D2F8 8009C6F8 00000000 */  nop
/* 9D2FC 8009C6FC 03000008 */  jr         $t8
/* 9D300 8009C700 00000000 */   nop
/* 9D304 8009C704 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D308 8009C708 0C0273DE */  jal        func_8009CF78
/* 9D30C 8009C70C 00000000 */   nop
/* 9D310 8009C710 100001D0 */  b          .L8009CE54
/* 9D314 8009C714 00000000 */   nop
/* 9D318 8009C718 24190009 */  addiu      $t9, $zero, 9
/* 9D31C 8009C71C A7B9003C */  sh         $t9, 0x3c($sp)
/* 9D320 8009C720 8FA8004C */  lw         $t0, 0x4c($sp)
/* 9D324 8009C724 27A5003C */  addiu      $a1, $sp, 0x3c
/* 9D328 8009C728 8D06005C */  lw         $a2, 0x5c($t0)
/* 9D32C 8009C72C 0C02B620 */  jal        func_800AD880
/* 9D330 8009C730 25040048 */   addiu     $a0, $t0, 0x48
/* 9D334 8009C734 100001C7 */  b          .L8009CE54
/* 9D338 8009C738 00000000 */   nop
/* 9D33C 8009C73C 8FA9004C */  lw         $t1, 0x4c($sp)
/* 9D340 8009C740 00000000 */  nop
/* 9D344 8009C744 8D2A003C */  lw         $t2, 0x3c($t1)
/* 9D348 8009C748 00000000 */  nop
/* 9D34C 8009C74C AFAA0038 */  sw         $t2, 0x38($sp)
/* 9D350 8009C750 8FAB004C */  lw         $t3, 0x4c($sp)
/* 9D354 8009C754 8FA50038 */  lw         $a1, 0x38($sp)
/* 9D358 8009C758 8D640014 */  lw         $a0, 0x14($t3)
/* 9D35C 8009C75C 0C02B6F4 */  jal        func_800ADBD0
/* 9D360 8009C760 00000000 */   nop
/* 9D364 8009C764 8FAC004C */  lw         $t4, 0x4c($sp)
/* 9D368 8009C768 8FA50038 */  lw         $a1, 0x38($sp)
/* 9D36C 8009C76C 8D840014 */  lw         $a0, 0x14($t4)
/* 9D370 8009C770 0C02B728 */  jal        func_800ADCA0
/* 9D374 8009C774 00000000 */   nop
/* 9D378 8009C778 8FAD0038 */  lw         $t5, 0x38($sp)
/* 9D37C 8009C77C 00000000 */  nop
/* 9D380 8009C780 8DAE0010 */  lw         $t6, 0x10($t5)
/* 9D384 8009C784 00000000 */  nop
/* 9D388 8009C788 AFAE0030 */  sw         $t6, 0x30($sp)
/* 9D38C 8009C78C 8FAF0030 */  lw         $t7, 0x30($sp)
/* 9D390 8009C790 00000000 */  nop
/* 9D394 8009C794 91F80037 */  lbu        $t8, 0x37($t7)
/* 9D398 8009C798 00000000 */  nop
/* 9D39C 8009C79C 13000005 */  beqz       $t8, .L8009C7B4
/* 9D3A0 8009C7A0 00000000 */   nop
/* 9D3A4 8009C7A4 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D3A8 8009C7A8 8FA50030 */  lw         $a1, 0x30($sp)
/* 9D3AC 8009C7AC 0C02B56E */  jal        func_800AD5B8
/* 9D3B0 8009C7B0 00000000 */   nop
.L8009C7B4:
/* 9D3B4 8009C7B4 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D3B8 8009C7B8 8FA50038 */  lw         $a1, 0x38($sp)
/* 9D3BC 8009C7BC 0C02B302 */  jal        func_800ACC08
/* 9D3C0 8009C7C0 00000000 */   nop
/* 9D3C4 8009C7C4 100001A3 */  b          .L8009CE54
/* 9D3C8 8009C7C8 00000000 */   nop
/* 9D3CC 8009C7CC 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9D3D0 8009C7D0 00000000 */  nop
/* 9D3D4 8009C7D4 8F28003C */  lw         $t0, 0x3c($t9)
/* 9D3D8 8009C7D8 00000000 */  nop
/* 9D3DC 8009C7DC AFA80038 */  sw         $t0, 0x38($sp)
/* 9D3E0 8009C7E0 8FA90038 */  lw         $t1, 0x38($sp)
/* 9D3E4 8009C7E4 00000000 */  nop
/* 9D3E8 8009C7E8 8D2A0010 */  lw         $t2, 0x10($t1)
/* 9D3EC 8009C7EC 00000000 */  nop
/* 9D3F0 8009C7F0 AFAA0030 */  sw         $t2, 0x30($sp)
/* 9D3F4 8009C7F4 8FAB0030 */  lw         $t3, 0x30($sp)
/* 9D3F8 8009C7F8 00000000 */  nop
/* 9D3FC 8009C7FC 916C0034 */  lbu        $t4, 0x34($t3)
/* 9D400 8009C800 00000000 */  nop
/* 9D404 8009C804 15800004 */  bnez       $t4, .L8009C818
/* 9D408 8009C808 00000000 */   nop
/* 9D40C 8009C80C 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9D410 8009C810 240D0001 */  addiu      $t5, $zero, 1
/* 9D414 8009C814 A1CD0034 */  sb         $t5, 0x34($t6)
.L8009C818:
/* 9D418 8009C818 8FAF004C */  lw         $t7, 0x4c($sp)
/* 9D41C 8009C81C 00000000 */  nop
/* 9D420 8009C820 8DF80040 */  lw         $t8, 0x40($t7)
/* 9D424 8009C824 00000000 */  nop
/* 9D428 8009C828 AFB80034 */  sw         $t8, 0x34($sp)
/* 9D42C 8009C82C 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9D430 8009C830 8FA90034 */  lw         $t1, 0x34($sp)
/* 9D434 8009C834 8F28001C */  lw         $t0, 0x1c($t9)
/* 9D438 8009C838 8FAB0030 */  lw         $t3, 0x30($sp)
/* 9D43C 8009C83C 01095021 */  addu       $t2, $t0, $t1
/* 9D440 8009C840 AD6A0024 */  sw         $t2, 0x24($t3)
/* 9D444 8009C844 8FAC004C */  lw         $t4, 0x4c($sp)
/* 9D448 8009C848 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9D44C 8009C84C 918D0044 */  lbu        $t5, 0x44($t4)
/* 9D450 8009C850 00000000 */  nop
/* 9D454 8009C854 A1CD0030 */  sb         $t5, 0x30($t6)
/* 9D458 8009C858 8FA40030 */  lw         $a0, 0x30($sp)
/* 9D45C 8009C85C 8FA5004C */  lw         $a1, 0x4c($sp)
/* 9D460 8009C860 0C02B3CE */  jal        func_800ACF38
/* 9D464 8009C864 00000000 */   nop
/* 9D468 8009C868 8FB8004C */  lw         $t8, 0x4c($sp)
/* 9D46C 8009C86C 00028400 */  sll        $s0, $v0, 0x10
/* 9D470 8009C870 00107C03 */  sra        $t7, $s0, 0x10
/* 9D474 8009C874 01E08025 */  or         $s0, $t7, $zero
/* 9D478 8009C878 8FA50038 */  lw         $a1, 0x38($sp)
/* 9D47C 8009C87C 8FA70034 */  lw         $a3, 0x34($sp)
/* 9D480 8009C880 8F040014 */  lw         $a0, 0x14($t8)
/* 9D484 8009C884 0C02B768 */  jal        func_800ADDA0
/* 9D488 8009C888 02003025 */   or        $a2, $s0, $zero
/* 9D48C 8009C88C 10000171 */  b          .L8009CE54
/* 9D490 8009C890 00000000 */   nop
/* 9D494 8009C894 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9D498 8009C898 00000000 */  nop
/* 9D49C 8009C89C 8F28003C */  lw         $t0, 0x3c($t9)
/* 9D4A0 8009C8A0 00000000 */  nop
/* 9D4A4 8009C8A4 AFA80030 */  sw         $t0, 0x30($sp)
/* 9D4A8 8009C8A8 8FA9004C */  lw         $t1, 0x4c($sp)
/* 9D4AC 8009C8AC 00000000 */  nop
/* 9D4B0 8009C8B0 8D2A0040 */  lw         $t2, 0x40($t1)
/* 9D4B4 8009C8B4 00000000 */  nop
/* 9D4B8 8009C8B8 AFAA002C */  sw         $t2, 0x2c($sp)
/* 9D4BC 8009C8BC 8FAB004C */  lw         $t3, 0x4c($sp)
/* 9D4C0 8009C8C0 8FA4002C */  lw         $a0, 0x2c($sp)
/* 9D4C4 8009C8C4 8D790074 */  lw         $t9, 0x74($t3)
/* 9D4C8 8009C8C8 27A50028 */  addiu      $a1, $sp, 0x28
/* 9D4CC 8009C8CC 0320F809 */  jalr       $t9
/* 9D4D0 8009C8D0 00000000 */   nop
/* 9D4D4 8009C8D4 AFA20034 */  sw         $v0, 0x34($sp)
/* 9D4D8 8009C8D8 444CF800 */  cfc1       $t4, $31
/* 9D4DC 8009C8DC 240D0001 */  addiu      $t5, $zero, 1
/* 9D4E0 8009C8E0 44CDF800 */  ctc1       $t5, $31
/* 9D4E4 8009C8E4 C7A40028 */  lwc1       $f4, 0x28($sp)
/* 9D4E8 8009C8E8 00000000 */  nop
/* 9D4EC 8009C8EC 460021A4 */  cvt.w.s    $f6, $f4
/* 9D4F0 8009C8F0 444DF800 */  cfc1       $t5, $31
/* 9D4F4 8009C8F4 00000000 */  nop
/* 9D4F8 8009C8F8 31A10004 */  andi       $at, $t5, 4
/* 9D4FC 8009C8FC 31AD0078 */  andi       $t5, $t5, 0x78
/* 9D500 8009C900 11A00014 */  beqz       $t5, .L8009C954
/* 9D504 8009C904 00000000 */   nop
/* 9D508 8009C908 3C014F00 */  lui        $at, 0x4f00
/* 9D50C 8009C90C 44813000 */  mtc1       $at, $f6
/* 9D510 8009C910 240D0001 */  addiu      $t5, $zero, 1
/* 9D514 8009C914 46062181 */  sub.s      $f6, $f4, $f6
/* 9D518 8009C918 44CDF800 */  ctc1       $t5, $31
/* 9D51C 8009C91C 00000000 */  nop
/* 9D520 8009C920 460031A4 */  cvt.w.s    $f6, $f6
/* 9D524 8009C924 444DF800 */  cfc1       $t5, $31
/* 9D528 8009C928 00000000 */  nop
/* 9D52C 8009C92C 31A10004 */  andi       $at, $t5, 4
/* 9D530 8009C930 31AD0078 */  andi       $t5, $t5, 0x78
/* 9D534 8009C934 15A00005 */  bnez       $t5, .L8009C94C
/* 9D538 8009C938 00000000 */   nop
/* 9D53C 8009C93C 440D3000 */  mfc1       $t5, $f6
/* 9D540 8009C940 3C018000 */  lui        $at, 0x8000
/* 9D544 8009C944 10000007 */  b          .L8009C964
/* 9D548 8009C948 01A16825 */   or        $t5, $t5, $at
.L8009C94C:
/* 9D54C 8009C94C 10000005 */  b          .L8009C964
/* 9D550 8009C950 240DFFFF */   addiu     $t5, $zero, -1
.L8009C954:
/* 9D554 8009C954 440D3000 */  mfc1       $t5, $f6
/* 9D558 8009C958 00000000 */  nop
/* 9D55C 8009C95C 05A0FFFB */  bltz       $t5, .L8009C94C
/* 9D560 8009C960 00000000 */   nop
.L8009C964:
/* 9D564 8009C964 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9D568 8009C968 44CCF800 */  ctc1       $t4, $31
/* 9D56C 8009C96C A1CD0036 */  sb         $t5, 0x36($t6)
/* 9D570 8009C970 00000000 */  nop
/* 9D574 8009C974 8FA40030 */  lw         $a0, 0x30($sp)
/* 9D578 8009C978 8FA5004C */  lw         $a1, 0x4c($sp)
/* 9D57C 8009C97C 0C02B3CE */  jal        func_800ACF38
/* 9D580 8009C980 00000000 */   nop
/* 9D584 8009C984 8FB8004C */  lw         $t8, 0x4c($sp)
/* 9D588 8009C988 00028400 */  sll        $s0, $v0, 0x10
/* 9D58C 8009C98C 00107C03 */  sra        $t7, $s0, 0x10
/* 9D590 8009C990 8FA40030 */  lw         $a0, 0x30($sp)
/* 9D594 8009C994 8F05001C */  lw         $a1, 0x1c($t8)
/* 9D598 8009C998 0C02B3F9 */  jal        func_800ACFE4
/* 9D59C 8009C99C 01E08025 */   or        $s0, $t7, $zero
/* 9D5A0 8009C9A0 8FA8004C */  lw         $t0, 0x4c($sp)
/* 9D5A4 8009C9A4 8FA50030 */  lw         $a1, 0x30($sp)
/* 9D5A8 8009C9A8 00408825 */  or         $s1, $v0, $zero
/* 9D5AC 8009C9AC 8D040014 */  lw         $a0, 0x14($t0)
/* 9D5B0 8009C9B0 02203825 */  or         $a3, $s1, $zero
/* 9D5B4 8009C9B4 02003025 */  or         $a2, $s0, $zero
/* 9D5B8 8009C9B8 0C02B768 */  jal        func_800ADDA0
/* 9D5BC 8009C9BC 24A50004 */   addiu     $a1, $a1, 4
/* 9D5C0 8009C9C0 24090016 */  addiu      $t1, $zero, 0x16
/* 9D5C4 8009C9C4 A7A9003C */  sh         $t1, 0x3c($sp)
/* 9D5C8 8009C9C8 8FAA0030 */  lw         $t2, 0x30($sp)
/* 9D5CC 8009C9CC 00000000 */  nop
/* 9D5D0 8009C9D0 AFAA0040 */  sw         $t2, 0x40($sp)
/* 9D5D4 8009C9D4 8FAB002C */  lw         $t3, 0x2c($sp)
/* 9D5D8 8009C9D8 00000000 */  nop
/* 9D5DC 8009C9DC AFAB0044 */  sw         $t3, 0x44($sp)
/* 9D5E0 8009C9E0 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D5E4 8009C9E4 8FA60034 */  lw         $a2, 0x34($sp)
/* 9D5E8 8009C9E8 27A5003C */  addiu      $a1, $sp, 0x3c
/* 9D5EC 8009C9EC 0C02B620 */  jal        func_800AD880
/* 9D5F0 8009C9F0 24840048 */   addiu     $a0, $a0, 0x48
/* 9D5F4 8009C9F4 10000117 */  b          .L8009CE54
/* 9D5F8 8009C9F8 00000000 */   nop
/* 9D5FC 8009C9FC 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9D600 8009CA00 00000000 */  nop
/* 9D604 8009CA04 8F2C003C */  lw         $t4, 0x3c($t9)
/* 9D608 8009CA08 00000000 */  nop
/* 9D60C 8009CA0C AFAC0030 */  sw         $t4, 0x30($sp)
/* 9D610 8009CA10 8FAD004C */  lw         $t5, 0x4c($sp)
/* 9D614 8009CA14 00000000 */  nop
/* 9D618 8009CA18 8DAE0040 */  lw         $t6, 0x40($t5)
/* 9D61C 8009CA1C 00000000 */  nop
/* 9D620 8009CA20 AFAE002C */  sw         $t6, 0x2c($sp)
/* 9D624 8009CA24 8FAF004C */  lw         $t7, 0x4c($sp)
/* 9D628 8009CA28 00000000 */  nop
/* 9D62C 8009CA2C 91F80044 */  lbu        $t8, 0x44($t7)
/* 9D630 8009CA30 00000000 */  nop
/* 9D634 8009CA34 A3B80027 */  sb         $t8, 0x27($sp)
/* 9D638 8009CA38 8FA8004C */  lw         $t0, 0x4c($sp)
/* 9D63C 8009CA3C 8FA4002C */  lw         $a0, 0x2c($sp)
/* 9D640 8009CA40 8D190074 */  lw         $t9, 0x74($t0)
/* 9D644 8009CA44 27A50028 */  addiu      $a1, $sp, 0x28
/* 9D648 8009CA48 0320F809 */  jalr       $t9
/* 9D64C 8009CA4C 00000000 */   nop
/* 9D650 8009CA50 AFA20034 */  sw         $v0, 0x34($sp)
/* 9D654 8009CA54 C7A80028 */  lwc1       $f8, 0x28($sp)
/* 9D658 8009CA58 8FA90030 */  lw         $t1, 0x30($sp)
/* 9D65C 8009CA5C 00000000 */  nop
/* 9D660 8009CA60 E528002C */  swc1       $f8, 0x2c($t1)
/* 9D664 8009CA64 8FAB0030 */  lw         $t3, 0x30($sp)
/* 9D668 8009CA68 8FAA004C */  lw         $t2, 0x4c($sp)
/* 9D66C 8009CA6C 93AD0027 */  lbu        $t5, 0x27($sp)
/* 9D670 8009CA70 C5700028 */  lwc1       $f16, 0x28($t3)
/* 9D674 8009CA74 C572002C */  lwc1       $f18, 0x2c($t3)
/* 9D678 8009CA78 8D4C0060 */  lw         $t4, 0x60($t2)
/* 9D67C 8009CA7C 46128102 */  mul.s      $f4, $f16, $f18
/* 9D680 8009CA80 000D7100 */  sll        $t6, $t5, 4
/* 9D684 8009CA84 018E7821 */  addu       $t7, $t4, $t6
/* 9D688 8009CA88 C5EA000C */  lwc1       $f10, 0xc($t7)
/* 9D68C 8009CA8C 8D440014 */  lw         $a0, 0x14($t2)
/* 9D690 8009CA90 46045182 */  mul.s      $f6, $f10, $f4
/* 9D694 8009CA94 25650004 */  addiu      $a1, $t3, 4
/* 9D698 8009CA98 44063000 */  mfc1       $a2, $f6
/* 9D69C 8009CA9C 0C02B7A4 */  jal        func_800ADE90
/* 9D6A0 8009CAA0 00000000 */   nop
/* 9D6A4 8009CAA4 24180017 */  addiu      $t8, $zero, 0x17
/* 9D6A8 8009CAA8 A7B8003C */  sh         $t8, 0x3c($sp)
/* 9D6AC 8009CAAC 8FA80030 */  lw         $t0, 0x30($sp)
/* 9D6B0 8009CAB0 00000000 */  nop
/* 9D6B4 8009CAB4 AFA80040 */  sw         $t0, 0x40($sp)
/* 9D6B8 8009CAB8 8FB9002C */  lw         $t9, 0x2c($sp)
/* 9D6BC 8009CABC 00000000 */  nop
/* 9D6C0 8009CAC0 AFB90044 */  sw         $t9, 0x44($sp)
/* 9D6C4 8009CAC4 93A90027 */  lbu        $t1, 0x27($sp)
/* 9D6C8 8009CAC8 00000000 */  nop
/* 9D6CC 8009CACC A3A90048 */  sb         $t1, 0x48($sp)
/* 9D6D0 8009CAD0 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D6D4 8009CAD4 8FA60034 */  lw         $a2, 0x34($sp)
/* 9D6D8 8009CAD8 27A5003C */  addiu      $a1, $sp, 0x3c
/* 9D6DC 8009CADC 0C02B620 */  jal        func_800AD880
/* 9D6E0 8009CAE0 24840048 */   addiu     $a0, $a0, 0x48
/* 9D6E4 8009CAE4 100000DB */  b          .L8009CE54
/* 9D6E8 8009CAE8 00000000 */   nop
/* 9D6EC 8009CAEC 8FAA004C */  lw         $t2, 0x4c($sp)
/* 9D6F0 8009CAF0 00000000 */  nop
/* 9D6F4 8009CAF4 01402025 */  or         $a0, $t2, $zero
/* 9D6F8 8009CAF8 0C027425 */  jal        func_8009D094
/* 9D6FC 8009CAFC 25450038 */   addiu     $a1, $t2, 0x38
/* 9D700 8009CB00 100000D4 */  b          .L8009CE54
/* 9D704 8009CB04 00000000 */   nop
/* 9D708 8009CB08 8FAD004C */  lw         $t5, 0x4c($sp)
/* 9D70C 8009CB0C 00000000 */  nop
/* 9D710 8009CB10 01A02025 */  or         $a0, $t5, $zero
/* 9D714 8009CB14 0C027790 */  jal        func_8009DE40
/* 9D718 8009CB18 25A50038 */   addiu     $a1, $t5, 0x38
/* 9D71C 8009CB1C 100000CD */  b          .L8009CE54
/* 9D720 8009CB20 00000000 */   nop
/* 9D724 8009CB24 8FAC004C */  lw         $t4, 0x4c($sp)
/* 9D728 8009CB28 00000000 */  nop
/* 9D72C 8009CB2C 858E003C */  lh         $t6, 0x3c($t4)
/* 9D730 8009CB30 00000000 */  nop
/* 9D734 8009CB34 A58E0032 */  sh         $t6, 0x32($t4)
/* 9D738 8009CB38 8FAF004C */  lw         $t7, 0x4c($sp)
/* 9D73C 8009CB3C 00000000 */  nop
/* 9D740 8009CB40 8DEB0064 */  lw         $t3, 0x64($t7)
/* 9D744 8009CB44 00000000 */  nop
/* 9D748 8009CB48 1160001A */  beqz       $t3, .L8009CBB4
/* 9D74C 8009CB4C AFAB0030 */   sw        $t3, 0x30($sp)
.L8009CB50:
/* 9D750 8009CB50 8FA40030 */  lw         $a0, 0x30($sp)
/* 9D754 8009CB54 8FA5004C */  lw         $a1, 0x4c($sp)
/* 9D758 8009CB58 0C02B3CE */  jal        func_800ACF38
/* 9D75C 8009CB5C 00000000 */   nop
/* 9D760 8009CB60 8FA8004C */  lw         $t0, 0x4c($sp)
/* 9D764 8009CB64 00028400 */  sll        $s0, $v0, 0x10
/* 9D768 8009CB68 0010C403 */  sra        $t8, $s0, 0x10
/* 9D76C 8009CB6C 8FA40030 */  lw         $a0, 0x30($sp)
/* 9D770 8009CB70 8D05001C */  lw         $a1, 0x1c($t0)
/* 9D774 8009CB74 0C02B3F9 */  jal        func_800ACFE4
/* 9D778 8009CB78 03008025 */   or        $s0, $t8, $zero
/* 9D77C 8009CB7C 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9D780 8009CB80 8FA50030 */  lw         $a1, 0x30($sp)
/* 9D784 8009CB84 00408825 */  or         $s1, $v0, $zero
/* 9D788 8009CB88 8F240014 */  lw         $a0, 0x14($t9)
/* 9D78C 8009CB8C 02203825 */  or         $a3, $s1, $zero
/* 9D790 8009CB90 02003025 */  or         $a2, $s0, $zero
/* 9D794 8009CB94 0C02B768 */  jal        func_800ADDA0
/* 9D798 8009CB98 24A50004 */   addiu     $a1, $a1, 4
/* 9D79C 8009CB9C 8FA90030 */  lw         $t1, 0x30($sp)
/* 9D7A0 8009CBA0 00000000 */  nop
/* 9D7A4 8009CBA4 8D2A0000 */  lw         $t2, ($t1)
/* 9D7A8 8009CBA8 00000000 */  nop
/* 9D7AC 8009CBAC 1540FFE8 */  bnez       $t2, .L8009CB50
/* 9D7B0 8009CBB0 AFAA0030 */   sw        $t2, 0x30($sp)
.L8009CBB4:
/* 9D7B4 8009CBB4 100000A7 */  b          .L8009CE54
/* 9D7B8 8009CBB8 00000000 */   nop
/* 9D7BC 8009CBBC 8FAD004C */  lw         $t5, 0x4c($sp)
/* 9D7C0 8009CBC0 24010001 */  addiu      $at, $zero, 1
/* 9D7C4 8009CBC4 8DAE002C */  lw         $t6, 0x2c($t5)
/* 9D7C8 8009CBC8 00000000 */  nop
/* 9D7CC 8009CBCC 11C10007 */  beq        $t6, $at, .L8009CBEC
/* 9D7D0 8009CBD0 00000000 */   nop
/* 9D7D4 8009CBD4 8FAF004C */  lw         $t7, 0x4c($sp)
/* 9D7D8 8009CBD8 240C0001 */  addiu      $t4, $zero, 1
/* 9D7DC 8009CBDC ADEC002C */  sw         $t4, 0x2c($t7)
/* 9D7E0 8009CBE0 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D7E4 8009CBE4 0C0273B6 */  jal        func_8009CED8
/* 9D7E8 8009CBE8 00000000 */   nop
.L8009CBEC:
/* 9D7EC 8009CBEC 10000099 */  b          .L8009CE54
/* 9D7F0 8009CBF0 00000000 */   nop
/* 9D7F4 8009CBF4 8FAB004C */  lw         $t3, 0x4c($sp)
/* 9D7F8 8009CBF8 24010002 */  addiu      $at, $zero, 2
/* 9D7FC 8009CBFC 8D78002C */  lw         $t8, 0x2c($t3)
/* 9D800 8009CC00 00000000 */  nop
/* 9D804 8009CC04 17010028 */  bne        $t8, $at, .L8009CCA8
/* 9D808 8009CC08 00000000 */   nop
/* 9D80C 8009CC0C 8FA8004C */  lw         $t0, 0x4c($sp)
/* 9D810 8009CC10 00000000 */  nop
/* 9D814 8009CC14 8D190064 */  lw         $t9, 0x64($t0)
/* 9D818 8009CC18 00000000 */  nop
/* 9D81C 8009CC1C 1320001F */  beqz       $t9, .L8009CC9C
/* 9D820 8009CC20 AFB90030 */   sw        $t9, 0x30($sp)
.L8009CC24:
/* 9D824 8009CC24 8FA9004C */  lw         $t1, 0x4c($sp)
/* 9D828 8009CC28 8FA50030 */  lw         $a1, 0x30($sp)
/* 9D82C 8009CC2C 8D240014 */  lw         $a0, 0x14($t1)
/* 9D830 8009CC30 0C02B6F4 */  jal        func_800ADBD0
/* 9D834 8009CC34 24A50004 */   addiu     $a1, $a1, 4
/* 9D838 8009CC38 8FAA004C */  lw         $t2, 0x4c($sp)
/* 9D83C 8009CC3C 8FA50030 */  lw         $a1, 0x30($sp)
/* 9D840 8009CC40 8D440014 */  lw         $a0, 0x14($t2)
/* 9D844 8009CC44 0C02B728 */  jal        func_800ADCA0
/* 9D848 8009CC48 24A50004 */   addiu     $a1, $a1, 4
/* 9D84C 8009CC4C 8FAD0030 */  lw         $t5, 0x30($sp)
/* 9D850 8009CC50 00000000 */  nop
/* 9D854 8009CC54 91AE0037 */  lbu        $t6, 0x37($t5)
/* 9D858 8009CC58 00000000 */  nop
/* 9D85C 8009CC5C 11C00005 */  beqz       $t6, .L8009CC74
/* 9D860 8009CC60 00000000 */   nop
/* 9D864 8009CC64 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D868 8009CC68 8FA50030 */  lw         $a1, 0x30($sp)
/* 9D86C 8009CC6C 0C02B56E */  jal        func_800AD5B8
/* 9D870 8009CC70 00000000 */   nop
.L8009CC74:
/* 9D874 8009CC74 8FA50030 */  lw         $a1, 0x30($sp)
/* 9D878 8009CC78 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D87C 8009CC7C 0C02B302 */  jal        func_800ACC08
/* 9D880 8009CC80 24A50004 */   addiu     $a1, $a1, 4
/* 9D884 8009CC84 8FAC004C */  lw         $t4, 0x4c($sp)
/* 9D888 8009CC88 00000000 */  nop
/* 9D88C 8009CC8C 8D8F0064 */  lw         $t7, 0x64($t4)
/* 9D890 8009CC90 00000000 */  nop
/* 9D894 8009CC94 15E0FFE3 */  bnez       $t7, .L8009CC24
/* 9D898 8009CC98 AFAF0030 */   sw        $t7, 0x30($sp)
.L8009CC9C:
/* 9D89C 8009CC9C 8FAB004C */  lw         $t3, 0x4c($sp)
/* 9D8A0 8009CCA0 00000000 */  nop
/* 9D8A4 8009CCA4 AD60002C */  sw         $zero, 0x2c($t3)
.L8009CCA8:
/* 9D8A8 8009CCA8 1000006A */  b          .L8009CE54
/* 9D8AC 8009CCAC 00000000 */   nop
/* 9D8B0 8009CCB0 8FB8004C */  lw         $t8, 0x4c($sp)
/* 9D8B4 8009CCB4 24010001 */  addiu      $at, $zero, 1
/* 9D8B8 8009CCB8 8F08002C */  lw         $t0, 0x2c($t8)
/* 9D8BC 8009CCBC 00000000 */  nop
/* 9D8C0 8009CCC0 15010030 */  bne        $t0, $at, .L8009CD84
/* 9D8C4 8009CCC4 00000000 */   nop
/* 9D8C8 8009CCC8 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D8CC 8009CCCC 00002825 */  or         $a1, $zero, $zero
/* 9D8D0 8009CCD0 0C02B6A4 */  jal        func_800ADA90
/* 9D8D4 8009CCD4 24840048 */   addiu     $a0, $a0, 0x48
/* 9D8D8 8009CCD8 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D8DC 8009CCDC 24050015 */  addiu      $a1, $zero, 0x15
/* 9D8E0 8009CCE0 0C02B6A4 */  jal        func_800ADA90
/* 9D8E4 8009CCE4 24840048 */   addiu     $a0, $a0, 0x48
/* 9D8E8 8009CCE8 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D8EC 8009CCEC 24050002 */  addiu      $a1, $zero, 2
/* 9D8F0 8009CCF0 0C02B6A4 */  jal        func_800ADA90
/* 9D8F4 8009CCF4 24840048 */   addiu     $a0, $a0, 0x48
/* 9D8F8 8009CCF8 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9D8FC 8009CCFC 00000000 */  nop
/* 9D900 8009CD00 8F290064 */  lw         $t1, 0x64($t9)
/* 9D904 8009CD04 00000000 */  nop
/* 9D908 8009CD08 11200013 */  beqz       $t1, .L8009CD58
/* 9D90C 8009CD0C AFA90030 */   sw        $t1, 0x30($sp)
.L8009CD10:
/* 9D910 8009CD10 8FA50030 */  lw         $a1, 0x30($sp)
/* 9D914 8009CD14 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D918 8009CD18 3406C350 */  ori        $a2, $zero, 0xc350
/* 9D91C 8009CD1C 0C02B487 */  jal        func_800AD21C
/* 9D920 8009CD20 24A50004 */   addiu     $a1, $a1, 4
/* 9D924 8009CD24 10400006 */  beqz       $v0, .L8009CD40
/* 9D928 8009CD28 00000000 */   nop
/* 9D92C 8009CD2C 8FA50030 */  lw         $a1, 0x30($sp)
/* 9D930 8009CD30 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D934 8009CD34 3406C350 */  ori        $a2, $zero, 0xc350
/* 9D938 8009CD38 0C02B429 */  jal        func_800AD0A4
/* 9D93C 8009CD3C 24A50004 */   addiu     $a1, $a1, 4
.L8009CD40:
/* 9D940 8009CD40 8FAA0030 */  lw         $t2, 0x30($sp)
/* 9D944 8009CD44 00000000 */  nop
/* 9D948 8009CD48 8D4D0000 */  lw         $t5, ($t2)
/* 9D94C 8009CD4C 00000000 */  nop
/* 9D950 8009CD50 15A0FFEF */  bnez       $t5, .L8009CD10
/* 9D954 8009CD54 AFAD0030 */   sw        $t5, 0x30($sp)
.L8009CD58:
/* 9D958 8009CD58 8FAC004C */  lw         $t4, 0x4c($sp)
/* 9D95C 8009CD5C 240E0002 */  addiu      $t6, $zero, 2
/* 9D960 8009CD60 AD8E002C */  sw         $t6, 0x2c($t4)
/* 9D964 8009CD64 240F0010 */  addiu      $t7, $zero, 0x10
/* 9D968 8009CD68 A7AF003C */  sh         $t7, 0x3c($sp)
/* 9D96C 8009CD6C 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D970 8009CD70 3C067FFF */  lui        $a2, 0x7fff
/* 9D974 8009CD74 34C6FFFF */  ori        $a2, $a2, 0xffff
/* 9D978 8009CD78 27A5003C */  addiu      $a1, $sp, 0x3c
/* 9D97C 8009CD7C 0C02B620 */  jal        func_800AD880
/* 9D980 8009CD80 24840048 */   addiu     $a0, $a0, 0x48
.L8009CD84:
/* 9D984 8009CD84 10000033 */  b          .L8009CE54
/* 9D988 8009CD88 00000000 */   nop
/* 9D98C 8009CD8C 8FAB004C */  lw         $t3, 0x4c($sp)
/* 9D990 8009CD90 00000000 */  nop
/* 9D994 8009CD94 9178003C */  lbu        $t8, 0x3c($t3)
/* 9D998 8009CD98 00000000 */  nop
/* 9D99C 8009CD9C A3B80027 */  sb         $t8, 0x27($sp)
/* 9D9A0 8009CDA0 8FA8004C */  lw         $t0, 0x4c($sp)
/* 9D9A4 8009CDA4 93AA0027 */  lbu        $t2, 0x27($sp)
/* 9D9A8 8009CDA8 8D090060 */  lw         $t1, 0x60($t0)
/* 9D9AC 8009CDAC 9119003D */  lbu        $t9, 0x3d($t0)
/* 9D9B0 8009CDB0 000A6900 */  sll        $t5, $t2, 4
/* 9D9B4 8009CDB4 012D7021 */  addu       $t6, $t1, $t5
/* 9D9B8 8009CDB8 A1D90008 */  sb         $t9, 8($t6)
/* 9D9BC 8009CDBC 10000025 */  b          .L8009CE54
/* 9D9C0 8009CDC0 00000000 */   nop
/* 9D9C4 8009CDC4 8FAC004C */  lw         $t4, 0x4c($sp)
/* 9D9C8 8009CDC8 00000000 */  nop
/* 9D9CC 8009CDCC 8D8F003C */  lw         $t7, 0x3c($t4)
/* 9D9D0 8009CDD0 00000000 */  nop
/* 9D9D4 8009CDD4 AD8F0018 */  sw         $t7, 0x18($t4)
/* 9D9D8 8009CDD8 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D9DC 8009CDDC 3C0548F4 */  lui        $a1, 0x48f4
/* 9D9E0 8009CDE0 0C02788C */  jal        func_8009E230
/* 9D9E4 8009CDE4 34A52400 */   ori       $a1, $a1, 0x2400
/* 9D9E8 8009CDE8 8FAB004C */  lw         $t3, 0x4c($sp)
/* 9D9EC 8009CDEC 00000000 */  nop
/* 9D9F0 8009CDF0 8D780020 */  lw         $t8, 0x20($t3)
/* 9D9F4 8009CDF4 00000000 */  nop
/* 9D9F8 8009CDF8 13000006 */  beqz       $t8, .L8009CE14
/* 9D9FC 8009CDFC 00000000 */   nop
/* 9DA00 8009CE00 8FA8004C */  lw         $t0, 0x4c($sp)
/* 9DA04 8009CE04 00000000 */  nop
/* 9DA08 8009CE08 8D050020 */  lw         $a1, 0x20($t0)
/* 9DA0C 8009CE0C 0C02B4CF */  jal        func_800AD33C
/* 9DA10 8009CE10 01002025 */   or        $a0, $t0, $zero
.L8009CE14:
/* 9DA14 8009CE14 1000000F */  b          .L8009CE54
/* 9DA18 8009CE18 00000000 */   nop
/* 9DA1C 8009CE1C 8FAA004C */  lw         $t2, 0x4c($sp)
/* 9DA20 8009CE20 00000000 */  nop
/* 9DA24 8009CE24 8D49003C */  lw         $t1, 0x3c($t2)
/* 9DA28 8009CE28 00000000 */  nop
/* 9DA2C 8009CE2C AD490020 */  sw         $t1, 0x20($t2)
/* 9DA30 8009CE30 8FAD004C */  lw         $t5, 0x4c($sp)
/* 9DA34 8009CE34 00000000 */  nop
/* 9DA38 8009CE38 8DA50020 */  lw         $a1, 0x20($t5)
/* 9DA3C 8009CE3C 0C02B4CF */  jal        func_800AD33C
/* 9DA40 8009CE40 01A02025 */   or        $a0, $t5, $zero
/* 9DA44 8009CE44 10000003 */  b          .L8009CE54
/* 9DA48 8009CE48 00000000 */   nop
/* 9DA4C 8009CE4C 10000001 */  b          .L8009CE54
/* 9DA50 8009CE50 00000000 */   nop
.L8009CE54:
/* 9DA54 8009CE54 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9DA58 8009CE58 00000000 */  nop
/* 9DA5C 8009CE5C 27240048 */  addiu      $a0, $t9, 0x48
/* 9DA60 8009CE60 0C02B5F7 */  jal        func_800AD7DC
/* 9DA64 8009CE64 27250038 */   addiu     $a1, $t9, 0x38
/* 9DA68 8009CE68 8FAE004C */  lw         $t6, 0x4c($sp)
/* 9DA6C 8009CE6C 00000000 */  nop
/* 9DA70 8009CE70 ADC20028 */  sw         $v0, 0x28($t6)
/* 9DA74 8009CE74 8FAF004C */  lw         $t7, 0x4c($sp)
/* 9DA78 8009CE78 00000000 */  nop
/* 9DA7C 8009CE7C 8DEC0028 */  lw         $t4, 0x28($t7)
/* 9DA80 8009CE80 00000000 */  nop
/* 9DA84 8009CE84 1180FE11 */  beqz       $t4, .L8009C6CC
/* 9DA88 8009CE88 00000000 */   nop
/* 9DA8C 8009CE8C 8FAB004C */  lw         $t3, 0x4c($sp)
/* 9DA90 8009CE90 00000000 */  nop
/* 9DA94 8009CE94 8D78001C */  lw         $t8, 0x1c($t3)
/* 9DA98 8009CE98 8D680028 */  lw         $t0, 0x28($t3)
/* 9DA9C 8009CE9C 00000000 */  nop
/* 9DAA0 8009CEA0 03084821 */  addu       $t1, $t8, $t0
/* 9DAA4 8009CEA4 AD69001C */  sw         $t1, 0x1c($t3)
/* 9DAA8 8009CEA8 8FAA004C */  lw         $t2, 0x4c($sp)
/* 9DAAC 8009CEAC 00000000 */  nop
/* 9DAB0 8009CEB0 8D420028 */  lw         $v0, 0x28($t2)
/* 9DAB4 8009CEB4 10000003 */  b          .L8009CEC4
/* 9DAB8 8009CEB8 00000000 */   nop
/* 9DABC 8009CEBC 10000001 */  b          .L8009CEC4
/* 9DAC0 8009CEC0 00000000 */   nop
.L8009CEC4:
/* 9DAC4 8009CEC4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9DAC8 8009CEC8 8FB00014 */  lw         $s0, 0x14($sp)
/* 9DACC 8009CECC 8FB10018 */  lw         $s1, 0x18($sp)
/* 9DAD0 8009CED0 03E00008 */  jr         $ra
/* 9DAD4 8009CED4 27BD0050 */   addiu     $sp, $sp, 0x50
