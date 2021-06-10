glabel func_800AE854
/* AF454 800AE854 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* AF458 800AE858 AFBF001C */  sw         $ra, 0x1c($sp)
/* AF45C 800AE85C AFA40038 */  sw         $a0, 0x38($sp)
/* AF460 800AE860 AFA5003C */  sw         $a1, 0x3c($sp)
/* AF464 800AE864 AFA60040 */  sw         $a2, 0x40($sp)
/* AF468 800AE868 AFA0002C */  sw         $zero, 0x2c($sp)
/* AF46C 800AE86C 8FAE0038 */  lw         $t6, 0x38($sp)
/* AF470 800AE870 AFAE0028 */  sw         $t6, 0x28($sp)
/* AF474 800AE874 3C06800C */  lui        $a2, %hi(func_800B8260)
/* AF478 800AE878 24C68260 */  addiu      $a2, $a2, %lo(func_800B8260)
/* AF47C 800AE87C 8FA40028 */  lw         $a0, 0x28($sp)
/* AF480 800AE880 00002825 */  or         $a1, $zero, $zero
/* AF484 800AE884 0C02DF34 */  jal        func_800B7CD0
/* AF488 800AE888 24070005 */   addiu     $a3, $zero, 5
/* AF48C 800AE88C 8FB80028 */  lw         $t8, 0x28($sp)
/* AF490 800AE890 3C0F800B */  lui        $t7, %hi(func_800B7D00)
/* AF494 800AE894 25EF7D00 */  addiu      $t7, $t7, %lo(func_800B7D00)
/* AF498 800AE898 AF0F0004 */  sw         $t7, 4($t8)
/* AF49C 800AE89C 8FA80038 */  lw         $t0, 0x38($sp)
/* AF4A0 800AE8A0 3C19800C */  lui        $t9, %hi(func_800B8294)
/* AF4A4 800AE8A4 27398294 */  addiu      $t9, $t9, %lo(func_800B8294)
/* AF4A8 800AE8A8 AD190028 */  sw         $t9, 0x28($t0)
/* AF4AC 800AE8AC 8FA9003C */  lw         $t1, 0x3c($sp)
/* AF4B0 800AE8B0 912A001C */  lbu        $t2, 0x1c($t1)
/* AF4B4 800AE8B4 254BFFFF */  addiu      $t3, $t2, -1
/* AF4B8 800AE8B8 2D610006 */  sltiu      $at, $t3, 6
/* AF4BC 800AE8BC 10200025 */  beqz       $at, .L800AE954
/* AF4C0 800AE8C0 00000000 */   nop
/* AF4C4 800AE8C4 000B5880 */  sll        $t3, $t3, 2
/* AF4C8 800AE8C8 3C01800F */  lui        $at, %hi(D_800EE4D8)
/* AF4CC 800AE8CC 002B0821 */  addu       $at, $at, $t3
/* AF4D0 800AE8D0 8C2BE4D8 */  lw         $t3, %lo(D_800EE4D8)($at)
/* AF4D4 800AE8D4 01600008 */  jr         $t3
/* AF4D8 800AE8D8 00000000 */   nop
/* AF4DC 800AE8DC 3C0C800F */  lui        $t4, %hi(D_800EA660)
/* AF4E0 800AE8E0 258CA660 */  addiu      $t4, $t4, %lo(D_800EA660)
/* AF4E4 800AE8E4 AFAC002C */  sw         $t4, 0x2c($sp)
/* AF4E8 800AE8E8 1000001F */  b          .L800AE968
/* AF4EC 800AE8EC 00000000 */   nop
/* AF4F0 800AE8F0 3C0D800F */  lui        $t5, %hi(D_800EA6C8)
/* AF4F4 800AE8F4 25ADA6C8 */  addiu      $t5, $t5, %lo(D_800EA6C8)
/* AF4F8 800AE8F8 AFAD002C */  sw         $t5, 0x2c($sp)
/* AF4FC 800AE8FC 1000001A */  b          .L800AE968
/* AF500 800AE900 00000000 */   nop
/* AF504 800AE904 3C0E800F */  lui        $t6, %hi(D_800EA750)
/* AF508 800AE908 25CEA750 */  addiu      $t6, $t6, %lo(D_800EA750)
/* AF50C 800AE90C AFAE002C */  sw         $t6, 0x2c($sp)
/* AF510 800AE910 10000015 */  b          .L800AE968
/* AF514 800AE914 00000000 */   nop
/* AF518 800AE918 3C0F800F */  lui        $t7, %hi(D_800EA778)
/* AF51C 800AE91C 25EFA778 */  addiu      $t7, $t7, %lo(D_800EA778)
/* AF520 800AE920 AFAF002C */  sw         $t7, 0x2c($sp)
/* AF524 800AE924 10000010 */  b          .L800AE968
/* AF528 800AE928 00000000 */   nop
/* AF52C 800AE92C 3C18800F */  lui        $t8, %hi(D_800EA7A0)
/* AF530 800AE930 2718A7A0 */  addiu      $t8, $t8, %lo(D_800EA7A0)
/* AF534 800AE934 AFB8002C */  sw         $t8, 0x2c($sp)
/* AF538 800AE938 1000000B */  b          .L800AE968
/* AF53C 800AE93C 00000000 */   nop
/* AF540 800AE940 8FB9003C */  lw         $t9, 0x3c($sp)
/* AF544 800AE944 8F280020 */  lw         $t0, 0x20($t9)
/* AF548 800AE948 AFA8002C */  sw         $t0, 0x2c($sp)
/* AF54C 800AE94C 10000006 */  b          .L800AE968
/* AF550 800AE950 00000000 */   nop
.L800AE954:
/* AF554 800AE954 3C09800F */  lui        $t1, %hi(D_800EA7C8)
/* AF558 800AE958 2529A7C8 */  addiu      $t1, $t1, %lo(D_800EA7C8)
/* AF55C 800AE95C AFA9002C */  sw         $t1, 0x2c($sp)
/* AF560 800AE960 10000001 */  b          .L800AE968
/* AF564 800AE964 00000000 */   nop
.L800AE968:
/* AF568 800AE968 A7A00034 */  sh         $zero, 0x34($sp)
/* AF56C 800AE96C 97AB0034 */  lhu        $t3, 0x34($sp)
/* AF570 800AE970 8FAA002C */  lw         $t2, 0x2c($sp)
/* AF574 800AE974 8FAF0038 */  lw         $t7, 0x38($sp)
/* AF578 800AE978 000B6080 */  sll        $t4, $t3, 2
/* AF57C 800AE97C 014C6821 */  addu       $t5, $t2, $t4
/* AF580 800AE980 8DAE0000 */  lw         $t6, ($t5)
/* AF584 800AE984 A1EE0024 */  sb         $t6, 0x24($t7)
/* AF588 800AE988 97B80034 */  lhu        $t8, 0x34($sp)
/* AF58C 800AE98C 27190001 */  addiu      $t9, $t8, 1
/* AF590 800AE990 A7B90034 */  sh         $t9, 0x34($sp)
/* AF594 800AE994 97A90034 */  lhu        $t1, 0x34($sp)
/* AF598 800AE998 8FA8002C */  lw         $t0, 0x2c($sp)
/* AF59C 800AE99C 8FAD0038 */  lw         $t5, 0x38($sp)
/* AF5A0 800AE9A0 00095880 */  sll        $t3, $t1, 2
/* AF5A4 800AE9A4 010B5021 */  addu       $t2, $t0, $t3
/* AF5A8 800AE9A8 8D4C0000 */  lw         $t4, ($t2)
/* AF5AC 800AE9AC ADAC001C */  sw         $t4, 0x1c($t5)
/* AF5B0 800AE9B0 97AE0034 */  lhu        $t6, 0x34($sp)
/* AF5B4 800AE9B4 25CF0001 */  addiu      $t7, $t6, 1
/* AF5B8 800AE9B8 A7AF0034 */  sh         $t7, 0x34($sp)
/* AF5BC 800AE9BC 8FB80038 */  lw         $t8, 0x38($sp)
/* AF5C0 800AE9C0 3C04800F */  lui        $a0, %hi(D_800EE410)
/* AF5C4 800AE9C4 24190028 */  addiu      $t9, $zero, 0x28
/* AF5C8 800AE9C8 93070024 */  lbu        $a3, 0x24($t8)
/* AF5CC 800AE9CC AFB90010 */  sw         $t9, 0x10($sp)
/* AF5D0 800AE9D0 2484E410 */  addiu      $a0, $a0, %lo(D_800EE410)
/* AF5D4 800AE9D4 2405008F */  addiu      $a1, $zero, 0x8f
/* AF5D8 800AE9D8 0C026ECC */  jal        func_8009BB30
/* AF5DC 800AE9DC 8FA60040 */   lw        $a2, 0x40($sp)
/* AF5E0 800AE9E0 8FA90038 */  lw         $t1, 0x38($sp)
/* AF5E4 800AE9E4 AD220020 */  sw         $v0, 0x20($t1)
/* AF5E8 800AE9E8 8FA80038 */  lw         $t0, 0x38($sp)
/* AF5EC 800AE9EC 3C04800F */  lui        $a0, %hi(D_800EE424)
/* AF5F0 800AE9F0 240B0002 */  addiu      $t3, $zero, 2
/* AF5F4 800AE9F4 8D07001C */  lw         $a3, 0x1c($t0)
/* AF5F8 800AE9F8 AFAB0010 */  sw         $t3, 0x10($sp)
/* AF5FC 800AE9FC 2484E424 */  addiu      $a0, $a0, %lo(D_800EE424)
/* AF600 800AEA00 24050090 */  addiu      $a1, $zero, 0x90
/* AF604 800AEA04 0C026ECC */  jal        func_8009BB30
/* AF608 800AEA08 8FA60040 */   lw        $a2, 0x40($sp)
/* AF60C 800AEA0C 8FAA0038 */  lw         $t2, 0x38($sp)
/* AF610 800AEA10 AD420014 */  sw         $v0, 0x14($t2)
/* AF614 800AEA14 8FAC0038 */  lw         $t4, 0x38($sp)
/* AF618 800AEA18 8D8D0014 */  lw         $t5, 0x14($t4)
/* AF61C 800AEA1C AD8D0018 */  sw         $t5, 0x18($t4)
/* AF620 800AEA20 8FAE0038 */  lw         $t6, 0x38($sp)
/* AF624 800AEA24 A7A00032 */  sh         $zero, 0x32($sp)
/* AF628 800AEA28 8DCF001C */  lw         $t7, 0x1c($t6)
/* AF62C 800AEA2C 11E00010 */  beqz       $t7, .L800AEA70
/* AF630 800AEA30 00000000 */   nop
.L800AEA34:
/* AF634 800AEA34 8FB80038 */  lw         $t8, 0x38($sp)
/* AF638 800AEA38 97A90032 */  lhu        $t1, 0x32($sp)
/* AF63C 800AEA3C 8F190014 */  lw         $t9, 0x14($t8)
/* AF640 800AEA40 00094040 */  sll        $t0, $t1, 1
/* AF644 800AEA44 03285821 */  addu       $t3, $t9, $t0
/* AF648 800AEA48 A5600000 */  sh         $zero, ($t3)
/* AF64C 800AEA4C 97AA0032 */  lhu        $t2, 0x32($sp)
/* AF650 800AEA50 8FAE0038 */  lw         $t6, 0x38($sp)
/* AF654 800AEA54 254D0001 */  addiu      $t5, $t2, 1
/* AF658 800AEA58 A7AD0032 */  sh         $t5, 0x32($sp)
/* AF65C 800AEA5C 8DCF001C */  lw         $t7, 0x1c($t6)
/* AF660 800AEA60 31ACFFFF */  andi       $t4, $t5, 0xffff
/* AF664 800AEA64 018F082B */  sltu       $at, $t4, $t7
/* AF668 800AEA68 1420FFF2 */  bnez       $at, .L800AEA34
/* AF66C 800AEA6C 00000000 */   nop
.L800AEA70:
/* AF670 800AEA70 8FB80038 */  lw         $t8, 0x38($sp)
/* AF674 800AEA74 A7A00036 */  sh         $zero, 0x36($sp)
/* AF678 800AEA78 93090024 */  lbu        $t1, 0x24($t8)
/* AF67C 800AEA7C 192000E0 */  blez       $t1, .L800AEE00
/* AF680 800AEA80 00000000 */   nop
.L800AEA84:
/* AF684 800AEA84 8FB90038 */  lw         $t9, 0x38($sp)
/* AF688 800AEA88 97AB0036 */  lhu        $t3, 0x36($sp)
/* AF68C 800AEA8C 8F280020 */  lw         $t0, 0x20($t9)
/* AF690 800AEA90 000B5080 */  sll        $t2, $t3, 2
/* AF694 800AEA94 014B5021 */  addu       $t2, $t2, $t3
/* AF698 800AEA98 000A50C0 */  sll        $t2, $t2, 3
/* AF69C 800AEA9C 010A6821 */  addu       $t5, $t0, $t2
/* AF6A0 800AEAA0 AFAD0024 */  sw         $t5, 0x24($sp)
/* AF6A4 800AEAA4 97AC0034 */  lhu        $t4, 0x34($sp)
/* AF6A8 800AEAA8 8FAE002C */  lw         $t6, 0x2c($sp)
/* AF6AC 800AEAAC 8FB90024 */  lw         $t9, 0x24($sp)
/* AF6B0 800AEAB0 000C7880 */  sll        $t7, $t4, 2
/* AF6B4 800AEAB4 01CFC021 */  addu       $t8, $t6, $t7
/* AF6B8 800AEAB8 8F090000 */  lw         $t1, ($t8)
/* AF6BC 800AEABC AF290000 */  sw         $t1, ($t9)
/* AF6C0 800AEAC0 97AB0034 */  lhu        $t3, 0x34($sp)
/* AF6C4 800AEAC4 25680001 */  addiu      $t0, $t3, 1
/* AF6C8 800AEAC8 A7A80034 */  sh         $t0, 0x34($sp)
/* AF6CC 800AEACC 97AD0034 */  lhu        $t5, 0x34($sp)
/* AF6D0 800AEAD0 8FAA002C */  lw         $t2, 0x2c($sp)
/* AF6D4 800AEAD4 8FB80024 */  lw         $t8, 0x24($sp)
/* AF6D8 800AEAD8 000D6080 */  sll        $t4, $t5, 2
/* AF6DC 800AEADC 014C7021 */  addu       $t6, $t2, $t4
/* AF6E0 800AEAE0 8DCF0000 */  lw         $t7, ($t6)
/* AF6E4 800AEAE4 AF0F0004 */  sw         $t7, 4($t8)
/* AF6E8 800AEAE8 97A90034 */  lhu        $t1, 0x34($sp)
/* AF6EC 800AEAEC 25390001 */  addiu      $t9, $t1, 1
/* AF6F0 800AEAF0 A7B90034 */  sh         $t9, 0x34($sp)
/* AF6F4 800AEAF4 97A80034 */  lhu        $t0, 0x34($sp)
/* AF6F8 800AEAF8 8FAB002C */  lw         $t3, 0x2c($sp)
/* AF6FC 800AEAFC 8FAE0024 */  lw         $t6, 0x24($sp)
/* AF700 800AEB00 00086880 */  sll        $t5, $t0, 2
/* AF704 800AEB04 016D5021 */  addu       $t2, $t3, $t5
/* AF708 800AEB08 8D4C0000 */  lw         $t4, ($t2)
/* AF70C 800AEB0C A5CC000A */  sh         $t4, 0xa($t6)
/* AF710 800AEB10 97AF0034 */  lhu        $t7, 0x34($sp)
/* AF714 800AEB14 25F80001 */  addiu      $t8, $t7, 1
/* AF718 800AEB18 A7B80034 */  sh         $t8, 0x34($sp)
/* AF71C 800AEB1C 97B90034 */  lhu        $t9, 0x34($sp)
/* AF720 800AEB20 8FA9002C */  lw         $t1, 0x2c($sp)
/* AF724 800AEB24 8FAA0024 */  lw         $t2, 0x24($sp)
/* AF728 800AEB28 00194080 */  sll        $t0, $t9, 2
/* AF72C 800AEB2C 01285821 */  addu       $t3, $t1, $t0
/* AF730 800AEB30 8D6D0000 */  lw         $t5, ($t3)
/* AF734 800AEB34 A54D0008 */  sh         $t5, 8($t2)
/* AF738 800AEB38 97AC0034 */  lhu        $t4, 0x34($sp)
/* AF73C 800AEB3C 258E0001 */  addiu      $t6, $t4, 1
/* AF740 800AEB40 A7AE0034 */  sh         $t6, 0x34($sp)
/* AF744 800AEB44 97B80034 */  lhu        $t8, 0x34($sp)
/* AF748 800AEB48 8FAF002C */  lw         $t7, 0x2c($sp)
/* AF74C 800AEB4C 8FAB0024 */  lw         $t3, 0x24($sp)
/* AF750 800AEB50 0018C880 */  sll        $t9, $t8, 2
/* AF754 800AEB54 01F94821 */  addu       $t1, $t7, $t9
/* AF758 800AEB58 8D280000 */  lw         $t0, ($t1)
/* AF75C 800AEB5C A568000C */  sh         $t0, 0xc($t3)
/* AF760 800AEB60 97AD0034 */  lhu        $t5, 0x34($sp)
/* AF764 800AEB64 25AA0001 */  addiu      $t2, $t5, 1
/* AF768 800AEB68 A7AA0034 */  sh         $t2, 0x34($sp)
/* AF76C 800AEB6C 97AE0034 */  lhu        $t6, 0x34($sp)
/* AF770 800AEB70 8FAC002C */  lw         $t4, 0x2c($sp)
/* AF774 800AEB74 000EC080 */  sll        $t8, $t6, 2
/* AF778 800AEB78 01987821 */  addu       $t7, $t4, $t8
/* AF77C 800AEB7C 8DF90000 */  lw         $t9, ($t7)
/* AF780 800AEB80 1320005D */  beqz       $t9, .L800AECF8
/* AF784 800AEB84 00000000 */   nop
/* AF788 800AEB88 97A80034 */  lhu        $t0, 0x34($sp)
/* AF78C 800AEB8C 8FA9002C */  lw         $t1, 0x2c($sp)
/* AF790 800AEB90 3C01447A */  lui        $at, 0x447a
/* AF794 800AEB94 00085880 */  sll        $t3, $t0, 2
/* AF798 800AEB98 012B6821 */  addu       $t5, $t1, $t3
/* AF79C 800AEB9C 8DAA0000 */  lw         $t2, ($t5)
/* AF7A0 800AEBA0 44814000 */  mtc1       $at, $f8
/* AF7A4 800AEBA4 8FAE003C */  lw         $t6, 0x3c($sp)
/* AF7A8 800AEBA8 448A2000 */  mtc1       $t2, $f4
/* AF7AC 800AEBAC 3C014000 */  lui        $at, 0x4000
/* AF7B0 800AEBB0 44819800 */  mtc1       $at, $f19
/* AF7B4 800AEBB4 468021A0 */  cvt.s.w    $f6, $f4
/* AF7B8 800AEBB8 44809000 */  mtc1       $zero, $f18
/* AF7BC 800AEBBC 8DCC0018 */  lw         $t4, 0x18($t6)
/* AF7C0 800AEBC0 8FB80024 */  lw         $t8, 0x24($sp)
/* AF7C4 800AEBC4 46083283 */  div.s      $f10, $f6, $f8
/* AF7C8 800AEBC8 448C3000 */  mtc1       $t4, $f6
/* AF7CC 800AEBCC 00000000 */  nop
/* AF7D0 800AEBD0 46803221 */  cvt.d.w    $f8, $f6
/* AF7D4 800AEBD4 46005421 */  cvt.d.s    $f16, $f10
/* AF7D8 800AEBD8 46328102 */  mul.d      $f4, $f16, $f18
/* AF7DC 800AEBDC 46282283 */  div.d      $f10, $f4, $f8
/* AF7E0 800AEBE0 46205420 */  cvt.s.d    $f16, $f10
/* AF7E4 800AEBE4 E7100010 */  swc1       $f16, 0x10($t8)
/* AF7E8 800AEBE8 97AF0034 */  lhu        $t7, 0x34($sp)
/* AF7EC 800AEBEC 25F90001 */  addiu      $t9, $t7, 1
/* AF7F0 800AEBF0 A7B90034 */  sh         $t9, 0x34($sp)
/* AF7F4 800AEBF4 97A90034 */  lhu        $t1, 0x34($sp)
/* AF7F8 800AEBF8 8FA8002C */  lw         $t0, 0x2c($sp)
/* AF7FC 800AEBFC 8FAE0024 */  lw         $t6, 0x24($sp)
/* AF800 800AEC00 00095880 */  sll        $t3, $t1, 2
/* AF804 800AEC04 010B6821 */  addu       $t5, $t0, $t3
/* AF808 800AEC08 8DAA0000 */  lw         $t2, ($t5)
/* AF80C 800AEC0C 8DCC0004 */  lw         $t4, 4($t6)
/* AF810 800AEC10 8DD80000 */  lw         $t8, ($t6)
/* AF814 800AEC14 448A9000 */  mtc1       $t2, $f18
/* AF818 800AEC18 3C01800F */  lui        $at, %hi(D_800EE4F0)
/* AF81C 800AEC1C 01987823 */  subu       $t7, $t4, $t8
/* AF820 800AEC20 468091A0 */  cvt.s.w    $f6, $f18
/* AF824 800AEC24 448F8000 */  mtc1       $t7, $f16
/* AF828 800AEC28 D428E4F0 */  ldc1       $f8, %lo(D_800EE4F0)($at)
/* AF82C 800AEC2C 468084A1 */  cvt.d.w    $f18, $f16
/* AF830 800AEC30 46003121 */  cvt.d.s    $f4, $f6
/* AF834 800AEC34 05E10006 */  bgez       $t7, .L800AEC50
/* AF838 800AEC38 46282283 */   div.d     $f10, $f4, $f8
/* AF83C 800AEC3C 3C0141F0 */  lui        $at, 0x41f0
/* AF840 800AEC40 44813800 */  mtc1       $at, $f7
/* AF844 800AEC44 44803000 */  mtc1       $zero, $f6
/* AF848 800AEC48 00000000 */  nop
/* AF84C 800AEC4C 46269480 */  add.d      $f18, $f18, $f6
.L800AEC50:
/* AF850 800AEC50 46325102 */  mul.d      $f4, $f10, $f18
/* AF854 800AEC54 46202220 */  cvt.s.d    $f8, $f4
/* AF858 800AEC58 E5C8001C */  swc1       $f8, 0x1c($t6)
/* AF85C 800AEC5C 97B90034 */  lhu        $t9, 0x34($sp)
/* AF860 800AEC60 27290001 */  addiu      $t1, $t9, 1
/* AF864 800AEC64 A7A90034 */  sh         $t1, 0x34($sp)
/* AF868 800AEC68 3C013F80 */  lui        $at, 0x3f80
/* AF86C 800AEC6C 44818000 */  mtc1       $at, $f16
/* AF870 800AEC70 8FA80024 */  lw         $t0, 0x24($sp)
/* AF874 800AEC74 E5100014 */  swc1       $f16, 0x14($t0)
/* AF878 800AEC78 8FAB0024 */  lw         $t3, 0x24($sp)
/* AF87C 800AEC7C AD600018 */  sw         $zero, 0x18($t3)
/* AF880 800AEC80 3C04800F */  lui        $a0, %hi(D_800EE438)
/* AF884 800AEC84 240D0034 */  addiu      $t5, $zero, 0x34
/* AF888 800AEC88 AFAD0010 */  sw         $t5, 0x10($sp)
/* AF88C 800AEC8C 2484E438 */  addiu      $a0, $a0, %lo(D_800EE438)
/* AF890 800AEC90 240500B4 */  addiu      $a1, $zero, 0xb4
/* AF894 800AEC94 8FA60040 */  lw         $a2, 0x40($sp)
/* AF898 800AEC98 0C026ECC */  jal        func_8009BB30
/* AF89C 800AEC9C 24070001 */   addiu     $a3, $zero, 1
/* AF8A0 800AECA0 8FAA0024 */  lw         $t2, 0x24($sp)
/* AF8A4 800AECA4 AD420024 */  sw         $v0, 0x24($t2)
/* AF8A8 800AECA8 3C04800F */  lui        $a0, %hi(D_800EE44C)
/* AF8AC 800AECAC 240C0020 */  addiu      $t4, $zero, 0x20
/* AF8B0 800AECB0 AFAC0010 */  sw         $t4, 0x10($sp)
/* AF8B4 800AECB4 2484E44C */  addiu      $a0, $a0, %lo(D_800EE44C)
/* AF8B8 800AECB8 240500B5 */  addiu      $a1, $zero, 0xb5
/* AF8BC 800AECBC 8FA60040 */  lw         $a2, 0x40($sp)
/* AF8C0 800AECC0 0C026ECC */  jal        func_8009BB30
/* AF8C4 800AECC4 24070001 */   addiu     $a3, $zero, 1
/* AF8C8 800AECC8 8FB80024 */  lw         $t8, 0x24($sp)
/* AF8CC 800AECCC 8F0F0024 */  lw         $t7, 0x24($t8)
/* AF8D0 800AECD0 ADE20014 */  sw         $v0, 0x14($t7)
/* AF8D4 800AECD4 8FAE0024 */  lw         $t6, 0x24($sp)
/* AF8D8 800AECD8 44803000 */  mtc1       $zero, $f6
/* AF8DC 800AECDC 8DD90024 */  lw         $t9, 0x24($t6)
/* AF8E0 800AECE0 E7260020 */  swc1       $f6, 0x20($t9)
/* AF8E4 800AECE4 8FA80024 */  lw         $t0, 0x24($sp)
/* AF8E8 800AECE8 24090001 */  addiu      $t1, $zero, 1
/* AF8EC 800AECEC 8D0B0024 */  lw         $t3, 0x24($t0)
/* AF8F0 800AECF0 10000009 */  b          .L800AED18
/* AF8F4 800AECF4 AD690024 */   sw        $t1, 0x24($t3)
.L800AECF8:
/* AF8F8 800AECF8 8FAD0024 */  lw         $t5, 0x24($sp)
/* AF8FC 800AECFC ADA00024 */  sw         $zero, 0x24($t5)
/* AF900 800AED00 97AA0034 */  lhu        $t2, 0x34($sp)
/* AF904 800AED04 254C0001 */  addiu      $t4, $t2, 1
/* AF908 800AED08 A7AC0034 */  sh         $t4, 0x34($sp)
/* AF90C 800AED0C 97B80034 */  lhu        $t8, 0x34($sp)
/* AF910 800AED10 270F0001 */  addiu      $t7, $t8, 1
/* AF914 800AED14 A7AF0034 */  sh         $t7, 0x34($sp)
.L800AED18:
/* AF918 800AED18 97B90034 */  lhu        $t9, 0x34($sp)
/* AF91C 800AED1C 8FAE002C */  lw         $t6, 0x2c($sp)
/* AF920 800AED20 00194080 */  sll        $t0, $t9, 2
/* AF924 800AED24 01C84821 */  addu       $t1, $t6, $t0
/* AF928 800AED28 8D2B0000 */  lw         $t3, ($t1)
/* AF92C 800AED2C 11600026 */  beqz       $t3, .L800AEDC8
/* AF930 800AED30 00000000 */   nop
/* AF934 800AED34 3C04800F */  lui        $a0, %hi(D_800EE460)
/* AF938 800AED38 240D0030 */  addiu      $t5, $zero, 0x30
/* AF93C 800AED3C AFAD0010 */  sw         $t5, 0x10($sp)
/* AF940 800AED40 2484E460 */  addiu      $a0, $a0, %lo(D_800EE460)
/* AF944 800AED44 240500BF */  addiu      $a1, $zero, 0xbf
/* AF948 800AED48 8FA60040 */  lw         $a2, 0x40($sp)
/* AF94C 800AED4C 0C026ECC */  jal        func_8009BB30
/* AF950 800AED50 24070001 */   addiu     $a3, $zero, 1
/* AF954 800AED54 8FAA0024 */  lw         $t2, 0x24($sp)
/* AF958 800AED58 AD420020 */  sw         $v0, 0x20($t2)
/* AF95C 800AED5C 3C04800F */  lui        $a0, %hi(D_800EE474)
/* AF960 800AED60 240C0008 */  addiu      $t4, $zero, 8
/* AF964 800AED64 AFAC0010 */  sw         $t4, 0x10($sp)
/* AF968 800AED68 2484E474 */  addiu      $a0, $a0, %lo(D_800EE474)
/* AF96C 800AED6C 240500C0 */  addiu      $a1, $zero, 0xc0
/* AF970 800AED70 8FA60040 */  lw         $a2, 0x40($sp)
/* AF974 800AED74 0C026ECC */  jal        func_8009BB30
/* AF978 800AED78 24070001 */   addiu     $a3, $zero, 1
/* AF97C 800AED7C 8FB80024 */  lw         $t8, 0x24($sp)
/* AF980 800AED80 8F0F0020 */  lw         $t7, 0x20($t8)
/* AF984 800AED84 ADE20028 */  sw         $v0, 0x28($t7)
/* AF988 800AED88 97AE0034 */  lhu        $t6, 0x34($sp)
/* AF98C 800AED8C 8FB9002C */  lw         $t9, 0x2c($sp)
/* AF990 800AED90 8FAD0024 */  lw         $t5, 0x24($sp)
/* AF994 800AED94 000E4080 */  sll        $t0, $t6, 2
/* AF998 800AED98 03284821 */  addu       $t1, $t9, $t0
/* AF99C 800AED9C 8D2B0000 */  lw         $t3, ($t1)
/* AF9A0 800AEDA0 8DAA0020 */  lw         $t2, 0x20($t5)
/* AF9A4 800AEDA4 A54B0000 */  sh         $t3, ($t2)
/* AF9A8 800AEDA8 97AC0034 */  lhu        $t4, 0x34($sp)
/* AF9AC 800AEDAC 25980001 */  addiu      $t8, $t4, 1
/* AF9B0 800AEDB0 A7B80034 */  sh         $t8, 0x34($sp)
/* AF9B4 800AEDB4 8FAF0024 */  lw         $t7, 0x24($sp)
/* AF9B8 800AEDB8 0C02B9D0 */  jal        func_800AE740
/* AF9BC 800AEDBC 8DE40020 */   lw        $a0, 0x20($t7)
/* AF9C0 800AEDC0 10000006 */  b          .L800AEDDC
/* AF9C4 800AEDC4 00000000 */   nop
.L800AEDC8:
/* AF9C8 800AEDC8 8FAE0024 */  lw         $t6, 0x24($sp)
/* AF9CC 800AEDCC ADC00020 */  sw         $zero, 0x20($t6)
/* AF9D0 800AEDD0 97B90034 */  lhu        $t9, 0x34($sp)
/* AF9D4 800AEDD4 27280001 */  addiu      $t0, $t9, 1
/* AF9D8 800AEDD8 A7A80034 */  sh         $t0, 0x34($sp)
.L800AEDDC:
/* AF9DC 800AEDDC 97A90036 */  lhu        $t1, 0x36($sp)
/* AF9E0 800AEDE0 8FAA0038 */  lw         $t2, 0x38($sp)
/* AF9E4 800AEDE4 252D0001 */  addiu      $t5, $t1, 1
/* AF9E8 800AEDE8 A7AD0036 */  sh         $t5, 0x36($sp)
/* AF9EC 800AEDEC 914C0024 */  lbu        $t4, 0x24($t2)
/* AF9F0 800AEDF0 31ABFFFF */  andi       $t3, $t5, 0xffff
/* AF9F4 800AEDF4 016C082A */  slt        $at, $t3, $t4
/* AF9F8 800AEDF8 1420FF22 */  bnez       $at, .L800AEA84
/* AF9FC 800AEDFC 00000000 */   nop
.L800AEE00:
/* AFA00 800AEE00 10000001 */  b          .L800AEE08
/* AFA04 800AEE04 00000000 */   nop
.L800AEE08:
/* AFA08 800AEE08 8FBF001C */  lw         $ra, 0x1c($sp)
/* AFA0C 800AEE0C 27BD0038 */  addiu      $sp, $sp, 0x38
/* AFA10 800AEE10 03E00008 */  jr         $ra
/* AFA14 800AEE14 00000000 */   nop
