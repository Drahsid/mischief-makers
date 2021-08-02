.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel init_lpfilter
/* AF340 800AE740 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AF344 800AE744 848E0000 */  lh         $t6, ($a0)
/* AF348 800AE748 000E7B80 */  sll        $t7, $t6, 0xe
/* AF34C 800AE74C AFAF0018 */  sw         $t7, 0x18($sp)
/* AF350 800AE750 8FB80018 */  lw         $t8, 0x18($sp)
/* AF354 800AE754 0018CBC3 */  sra        $t9, $t8, 0xf
/* AF358 800AE758 A7B90016 */  sh         $t9, 0x16($sp)
/* AF35C 800AE75C 87A80016 */  lh         $t0, 0x16($sp)
/* AF360 800AE760 24094000 */  addiu      $t1, $zero, 0x4000
/* AF364 800AE764 01285023 */  subu       $t2, $t1, $t0
/* AF368 800AE768 A48A0002 */  sh         $t2, 2($a0)
/* AF36C 800AE76C 240B0001 */  addiu      $t3, $zero, 1
/* AF370 800AE770 AC8B002C */  sw         $t3, 0x2c($a0)
/* AF374 800AE774 AFA0001C */  sw         $zero, 0x1c($sp)
.L800AE778:
/* AF378 800AE778 8FAC001C */  lw         $t4, 0x1c($sp)
/* AF37C 800AE77C 000C6840 */  sll        $t5, $t4, 1
/* AF380 800AE780 008D7021 */  addu       $t6, $a0, $t5
/* AF384 800AE784 A5C00008 */  sh         $zero, 8($t6)
/* AF388 800AE788 8FAF001C */  lw         $t7, 0x1c($sp)
/* AF38C 800AE78C 25F80001 */  addiu      $t8, $t7, 1
/* AF390 800AE790 2B010008 */  slti       $at, $t8, 8
/* AF394 800AE794 1420FFF8 */  bnez       $at, .L800AE778
/* AF398 800AE798 AFB8001C */   sw        $t8, 0x1c($sp)
/* AF39C 800AE79C 8FA9001C */  lw         $t1, 0x1c($sp)
/* AF3A0 800AE7A0 87B90016 */  lh         $t9, 0x16($sp)
/* AF3A4 800AE7A4 00094040 */  sll        $t0, $t1, 1
/* AF3A8 800AE7A8 00885021 */  addu       $t2, $a0, $t0
/* AF3AC 800AE7AC A5590008 */  sh         $t9, 8($t2)
/* AF3B0 800AE7B0 8FAB001C */  lw         $t3, 0x1c($sp)
/* AF3B4 800AE7B4 256C0001 */  addiu      $t4, $t3, 1
/* AF3B8 800AE7B8 AFAC001C */  sw         $t4, 0x1c($sp)
/* AF3BC 800AE7BC 87AD0016 */  lh         $t5, 0x16($sp)
/* AF3C0 800AE7C0 3C0140D0 */  lui        $at, 0x40d0
/* AF3C4 800AE7C4 44814800 */  mtc1       $at, $f9
/* AF3C8 800AE7C8 448D2000 */  mtc1       $t5, $f4
/* AF3CC 800AE7CC 44804000 */  mtc1       $zero, $f8
/* AF3D0 800AE7D0 468021A1 */  cvt.d.w    $f6, $f4
/* AF3D4 800AE7D4 46283283 */  div.d      $f10, $f6, $f8
/* AF3D8 800AE7D8 F7AA0008 */  sdc1       $f10, 8($sp)
/* AF3DC 800AE7DC F7AA0000 */  sdc1       $f10, ($sp)
/* AF3E0 800AE7E0 8FAE001C */  lw         $t6, 0x1c($sp)
/* AF3E4 800AE7E4 29C10010 */  slti       $at, $t6, 0x10
/* AF3E8 800AE7E8 10200016 */  beqz       $at, .L800AE844
/* AF3EC 800AE7EC 00000000 */   nop
.L800AE7F0:
/* AF3F0 800AE7F0 D7B00000 */  ldc1       $f16, ($sp)
/* AF3F4 800AE7F4 D7B20008 */  ldc1       $f18, 8($sp)
/* AF3F8 800AE7F8 46328102 */  mul.d      $f4, $f16, $f18
/* AF3FC 800AE7FC F7A40000 */  sdc1       $f4, ($sp)
/* AF400 800AE800 3C0140D0 */  lui        $at, 0x40d0
/* AF404 800AE804 44814800 */  mtc1       $at, $f9
/* AF408 800AE808 D7A60000 */  ldc1       $f6, ($sp)
/* AF40C 800AE80C 44804000 */  mtc1       $zero, $f8
/* AF410 800AE810 8FA9001C */  lw         $t1, 0x1c($sp)
/* AF414 800AE814 46283282 */  mul.d      $f10, $f6, $f8
/* AF418 800AE818 00094040 */  sll        $t0, $t1, 1
/* AF41C 800AE81C 0088C821 */  addu       $t9, $a0, $t0
/* AF420 800AE820 4620540D */  trunc.w.d  $f16, $f10
/* AF424 800AE824 44188000 */  mfc1       $t8, $f16
/* AF428 800AE828 00000000 */  nop
/* AF42C 800AE82C A7380008 */  sh         $t8, 8($t9)
/* AF430 800AE830 8FAA001C */  lw         $t2, 0x1c($sp)
/* AF434 800AE834 254B0001 */  addiu      $t3, $t2, 1
/* AF438 800AE838 29610010 */  slti       $at, $t3, 0x10
/* AF43C 800AE83C 1420FFEC */  bnez       $at, .L800AE7F0
/* AF440 800AE840 AFAB001C */   sw        $t3, 0x1c($sp)
.L800AE844:
/* AF444 800AE844 10000001 */  b          .L800AE84C
/* AF448 800AE848 00000000 */   nop
.L800AE84C:
/* AF44C 800AE84C 03E00008 */  jr         $ra
/* AF450 800AE850 27BD0020 */   addiu     $sp, $sp, 0x20

glabel alFxNew
/* AF454 800AE854 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* AF458 800AE858 AFBF001C */  sw         $ra, 0x1c($sp)
/* AF45C 800AE85C AFA40038 */  sw         $a0, 0x38($sp)
/* AF460 800AE860 AFA5003C */  sw         $a1, 0x3c($sp)
/* AF464 800AE864 AFA60040 */  sw         $a2, 0x40($sp)
/* AF468 800AE868 AFA0002C */  sw         $zero, 0x2c($sp)
/* AF46C 800AE86C 8FAE0038 */  lw         $t6, 0x38($sp)
/* AF470 800AE870 AFAE0028 */  sw         $t6, 0x28($sp)
/* AF474 800AE874 3C06800C */  lui        $a2, %hi(alFxParam)
/* AF478 800AE878 24C68260 */  addiu      $a2, $a2, %lo(alFxParam)
/* AF47C 800AE87C 8FA40028 */  lw         $a0, 0x28($sp)
/* AF480 800AE880 00002825 */  or         $a1, $zero, $zero
/* AF484 800AE884 0C02DF34 */  jal        alFilterNew
/* AF488 800AE888 24070005 */   addiu     $a3, $zero, 5
/* AF48C 800AE88C 8FB80028 */  lw         $t8, 0x28($sp)
/* AF490 800AE890 3C0F800B */  lui        $t7, %hi(alFxPull)
/* AF494 800AE894 25EF7D00 */  addiu      $t7, $t7, %lo(alFxPull)
/* AF498 800AE898 AF0F0004 */  sw         $t7, 4($t8)
/* AF49C 800AE89C 8FA80038 */  lw         $t0, 0x38($sp)
/* AF4A0 800AE8A0 3C19800C */  lui        $t9, %hi(alFxParamHdl)
/* AF4A4 800AE8A4 27398294 */  addiu      $t9, $t9, %lo(alFxParamHdl)
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
/* AF5D8 800AE9D8 0C026ECC */  jal        alHeapDBAlloc
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
/* AF604 800AEA04 0C026ECC */  jal        alHeapDBAlloc
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
/* AF898 800AEC98 0C026ECC */  jal        alHeapDBAlloc
/* AF89C 800AEC9C 24070001 */   addiu     $a3, $zero, 1
/* AF8A0 800AECA0 8FAA0024 */  lw         $t2, 0x24($sp)
/* AF8A4 800AECA4 AD420024 */  sw         $v0, 0x24($t2)
/* AF8A8 800AECA8 3C04800F */  lui        $a0, %hi(D_800EE44C)
/* AF8AC 800AECAC 240C0020 */  addiu      $t4, $zero, 0x20
/* AF8B0 800AECB0 AFAC0010 */  sw         $t4, 0x10($sp)
/* AF8B4 800AECB4 2484E44C */  addiu      $a0, $a0, %lo(D_800EE44C)
/* AF8B8 800AECB8 240500B5 */  addiu      $a1, $zero, 0xb5
/* AF8BC 800AECBC 8FA60040 */  lw         $a2, 0x40($sp)
/* AF8C0 800AECC0 0C026ECC */  jal        alHeapDBAlloc
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
/* AF94C 800AED4C 0C026ECC */  jal        alHeapDBAlloc
/* AF950 800AED50 24070001 */   addiu     $a3, $zero, 1
/* AF954 800AED54 8FAA0024 */  lw         $t2, 0x24($sp)
/* AF958 800AED58 AD420020 */  sw         $v0, 0x20($t2)
/* AF95C 800AED5C 3C04800F */  lui        $a0, %hi(D_800EE474)
/* AF960 800AED60 240C0008 */  addiu      $t4, $zero, 8
/* AF964 800AED64 AFAC0010 */  sw         $t4, 0x10($sp)
/* AF968 800AED68 2484E474 */  addiu      $a0, $a0, %lo(D_800EE474)
/* AF96C 800AED6C 240500C0 */  addiu      $a1, $zero, 0xc0
/* AF970 800AED70 8FA60040 */  lw         $a2, 0x40($sp)
/* AF974 800AED74 0C026ECC */  jal        alHeapDBAlloc
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
/* AF9B8 800AEDB8 0C02B9D0 */  jal        init_lpfilter
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

glabel alEnvmixerNew
/* AFA18 800AEE18 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AFA1C 800AEE1C AFBF001C */  sw         $ra, 0x1c($sp)
/* AFA20 800AEE20 AFA40020 */  sw         $a0, 0x20($sp)
/* AFA24 800AEE24 AFA50024 */  sw         $a1, 0x24($sp)
/* AFA28 800AEE28 3C05800B */  lui        $a1, %hi(alEnvmixerPull)
/* AFA2C 800AEE2C 3C06800B */  lui        $a2, %hi(alEnvmixerParam)
/* AFA30 800AEE30 24C612D8 */  addiu      $a2, $a2, %lo(alEnvmixerParam)
/* AFA34 800AEE34 24A50B50 */  addiu      $a1, $a1, %lo(alEnvmixerPull)
/* AFA38 800AEE38 8FA40020 */  lw         $a0, 0x20($sp)
/* AFA3C 800AEE3C 0C02DF34 */  jal        alFilterNew
/* AFA40 800AEE40 24070004 */   addiu     $a3, $zero, 4
/* AFA44 800AEE44 3C04800F */  lui        $a0, %hi(D_800EE488)
/* AFA48 800AEE48 240E0050 */  addiu      $t6, $zero, 0x50
/* AFA4C 800AEE4C AFAE0010 */  sw         $t6, 0x10($sp)
/* AFA50 800AEE50 2484E488 */  addiu      $a0, $a0, %lo(D_800EE488)
/* AFA54 800AEE54 240500CE */  addiu      $a1, $zero, 0xce
/* AFA58 800AEE58 8FA60024 */  lw         $a2, 0x24($sp)
/* AFA5C 800AEE5C 0C026ECC */  jal        alHeapDBAlloc
/* AFA60 800AEE60 24070001 */   addiu     $a3, $zero, 1
/* AFA64 800AEE64 8FAF0020 */  lw         $t7, 0x20($sp)
/* AFA68 800AEE68 ADE20014 */  sw         $v0, 0x14($t7)
/* AFA6C 800AEE6C 8FB90020 */  lw         $t9, 0x20($sp)
/* AFA70 800AEE70 24180001 */  addiu      $t8, $zero, 1
/* AFA74 800AEE74 AF380038 */  sw         $t8, 0x38($t9)
/* AFA78 800AEE78 8FA80020 */  lw         $t0, 0x20($sp)
/* AFA7C 800AEE7C AD000048 */  sw         $zero, 0x48($t0)
/* AFA80 800AEE80 8FAA0020 */  lw         $t2, 0x20($sp)
/* AFA84 800AEE84 24090001 */  addiu      $t1, $zero, 1
/* AFA88 800AEE88 A549001A */  sh         $t1, 0x1a($t2)
/* AFA8C 800AEE8C 8FAC0020 */  lw         $t4, 0x20($sp)
/* AFA90 800AEE90 240B0001 */  addiu      $t3, $zero, 1
/* AFA94 800AEE94 A58B0028 */  sh         $t3, 0x28($t4)
/* AFA98 800AEE98 8FAE0020 */  lw         $t6, 0x20($sp)
/* AFA9C 800AEE9C 240D0001 */  addiu      $t5, $zero, 1
/* AFAA0 800AEEA0 A5CD002E */  sh         $t5, 0x2e($t6)
/* AFAA4 800AEEA4 8FB80020 */  lw         $t8, 0x20($sp)
/* AFAA8 800AEEA8 240F0001 */  addiu      $t7, $zero, 1
/* AFAAC 800AEEAC A70F001C */  sh         $t7, 0x1c($t8)
/* AFAB0 800AEEB0 8FA80020 */  lw         $t0, 0x20($sp)
/* AFAB4 800AEEB4 24190001 */  addiu      $t9, $zero, 1
/* AFAB8 800AEEB8 A519001E */  sh         $t9, 0x1e($t0)
/* AFABC 800AEEBC 8FA90020 */  lw         $t1, 0x20($sp)
/* AFAC0 800AEEC0 A5200020 */  sh         $zero, 0x20($t1)
/* AFAC4 800AEEC4 8FAA0020 */  lw         $t2, 0x20($sp)
/* AFAC8 800AEEC8 A5400022 */  sh         $zero, 0x22($t2)
/* AFACC 800AEECC 8FAC0020 */  lw         $t4, 0x20($sp)
/* AFAD0 800AEED0 240B0001 */  addiu      $t3, $zero, 1
/* AFAD4 800AEED4 A58B0026 */  sh         $t3, 0x26($t4)
/* AFAD8 800AEED8 8FAD0020 */  lw         $t5, 0x20($sp)
/* AFADC 800AEEDC A5A00024 */  sh         $zero, 0x24($t5)
/* AFAE0 800AEEE0 8FAF0020 */  lw         $t7, 0x20($sp)
/* AFAE4 800AEEE4 240E0001 */  addiu      $t6, $zero, 1
/* AFAE8 800AEEE8 A5EE0026 */  sh         $t6, 0x26($t7)
/* AFAEC 800AEEEC 8FB80020 */  lw         $t8, 0x20($sp)
/* AFAF0 800AEEF0 A7000024 */  sh         $zero, 0x24($t8)
/* AFAF4 800AEEF4 8FB90020 */  lw         $t9, 0x20($sp)
/* AFAF8 800AEEF8 AF200030 */  sw         $zero, 0x30($t9)
/* AFAFC 800AEEFC 8FA80020 */  lw         $t0, 0x20($sp)
/* AFB00 800AEF00 AD000034 */  sw         $zero, 0x34($t0)
/* AFB04 800AEF04 8FA90020 */  lw         $t1, 0x20($sp)
/* AFB08 800AEF08 A5200018 */  sh         $zero, 0x18($t1)
/* AFB0C 800AEF0C 8FAA0020 */  lw         $t2, 0x20($sp)
/* AFB10 800AEF10 AD40003C */  sw         $zero, 0x3c($t2)
/* AFB14 800AEF14 8FAB0020 */  lw         $t3, 0x20($sp)
/* AFB18 800AEF18 AD600040 */  sw         $zero, 0x40($t3)
/* AFB1C 800AEF1C 8FAC0020 */  lw         $t4, 0x20($sp)
/* AFB20 800AEF20 AD800044 */  sw         $zero, 0x44($t4)
/* AFB24 800AEF24 10000001 */  b          .L800AEF2C
/* AFB28 800AEF28 00000000 */   nop
.L800AEF2C:
/* AFB2C 800AEF2C 8FBF001C */  lw         $ra, 0x1c($sp)
/* AFB30 800AEF30 27BD0020 */  addiu      $sp, $sp, 0x20
/* AFB34 800AEF34 03E00008 */  jr         $ra
/* AFB38 800AEF38 00000000 */   nop

glabel alLoadNew
/* AFB3C 800AEF3C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AFB40 800AEF40 AFBF001C */  sw         $ra, 0x1c($sp)
/* AFB44 800AEF44 AFA40028 */  sw         $a0, 0x28($sp)
/* AFB48 800AEF48 AFA5002C */  sw         $a1, 0x2c($sp)
/* AFB4C 800AEF4C AFA60030 */  sw         $a2, 0x30($sp)
/* AFB50 800AEF50 3C05800B */  lui        $a1, %hi(alAdpcmPull)
/* AFB54 800AEF54 3C06800B */  lui        $a2, %hi(alLoadParam)
/* AFB58 800AEF58 24C601F4 */  addiu      $a2, $a2, %lo(alLoadParam)
/* AFB5C 800AEF5C 24A5F510 */  addiu      $a1, $a1, %lo(alAdpcmPull)
/* AFB60 800AEF60 8FA40028 */  lw         $a0, 0x28($sp)
/* AFB64 800AEF64 0C02DF34 */  jal        alFilterNew
/* AFB68 800AEF68 00003825 */   or        $a3, $zero, $zero
/* AFB6C 800AEF6C 3C04800F */  lui        $a0, %hi(D_800EE49C)
/* AFB70 800AEF70 240E0020 */  addiu      $t6, $zero, 0x20
/* AFB74 800AEF74 AFAE0010 */  sw         $t6, 0x10($sp)
/* AFB78 800AEF78 2484E49C */  addiu      $a0, $a0, %lo(D_800EE49C)
/* AFB7C 800AEF7C 240500F0 */  addiu      $a1, $zero, 0xf0
/* AFB80 800AEF80 8FA60030 */  lw         $a2, 0x30($sp)
/* AFB84 800AEF84 0C026ECC */  jal        alHeapDBAlloc
/* AFB88 800AEF88 24070001 */   addiu     $a3, $zero, 1
/* AFB8C 800AEF8C 8FAF0028 */  lw         $t7, 0x28($sp)
/* AFB90 800AEF90 ADE20014 */  sw         $v0, 0x14($t7)
/* AFB94 800AEF94 3C04800F */  lui        $a0, %hi(D_800EE4B0)
/* AFB98 800AEF98 24180020 */  addiu      $t8, $zero, 0x20
/* AFB9C 800AEF9C AFB80010 */  sw         $t8, 0x10($sp)
/* AFBA0 800AEFA0 2484E4B0 */  addiu      $a0, $a0, %lo(D_800EE4B0)
/* AFBA4 800AEFA4 240500F1 */  addiu      $a1, $zero, 0xf1
/* AFBA8 800AEFA8 8FA60030 */  lw         $a2, 0x30($sp)
/* AFBAC 800AEFAC 0C026ECC */  jal        alHeapDBAlloc
/* AFBB0 800AEFB0 24070001 */   addiu     $a3, $zero, 1
/* AFBB4 800AEFB4 8FB90028 */  lw         $t9, 0x28($sp)
/* AFBB8 800AEFB8 AF220018 */  sw         $v0, 0x18($t9)
/* AFBBC 800AEFBC 8FB9002C */  lw         $t9, 0x2c($sp)
/* AFBC0 800AEFC0 8FA40028 */  lw         $a0, 0x28($sp)
/* AFBC4 800AEFC4 0320F809 */  jalr       $t9
/* AFBC8 800AEFC8 24840034 */   addiu     $a0, $a0, 0x34
/* AFBCC 800AEFCC 8FA80028 */  lw         $t0, 0x28($sp)
/* AFBD0 800AEFD0 AD020030 */  sw         $v0, 0x30($t0)
/* AFBD4 800AEFD4 8FA90028 */  lw         $t1, 0x28($sp)
/* AFBD8 800AEFD8 AD20003C */  sw         $zero, 0x3c($t1)
/* AFBDC 800AEFDC 8FAB0028 */  lw         $t3, 0x28($sp)
/* AFBE0 800AEFE0 240A0001 */  addiu      $t2, $zero, 1
/* AFBE4 800AEFE4 AD6A0040 */  sw         $t2, 0x40($t3)
/* AFBE8 800AEFE8 8FAC0028 */  lw         $t4, 0x28($sp)
/* AFBEC 800AEFEC AD800044 */  sw         $zero, 0x44($t4)
/* AFBF0 800AEFF0 10000001 */  b          .L800AEFF8
/* AFBF4 800AEFF4 00000000 */   nop
.L800AEFF8:
/* AFBF8 800AEFF8 8FBF001C */  lw         $ra, 0x1c($sp)
/* AFBFC 800AEFFC 27BD0028 */  addiu      $sp, $sp, 0x28
/* AFC00 800AF000 03E00008 */  jr         $ra
/* AFC04 800AF004 00000000 */   nop

glabel alResampleNew
/* AFC08 800AF008 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AFC0C 800AF00C AFBF001C */  sw         $ra, 0x1c($sp)
/* AFC10 800AF010 AFA40020 */  sw         $a0, 0x20($sp)
/* AFC14 800AF014 AFA50024 */  sw         $a1, 0x24($sp)
/* AFC18 800AF018 3C05800B */  lui        $a1, %hi(alResamplePull)
/* AFC1C 800AF01C 3C06800B */  lui        $a2, %hi(alResampleParam)
/* AFC20 800AF020 24C609C0 */  addiu      $a2, $a2, %lo(alResampleParam)
/* AFC24 800AF024 24A506F0 */  addiu      $a1, $a1, %lo(alResamplePull)
/* AFC28 800AF028 8FA40020 */  lw         $a0, 0x20($sp)
/* AFC2C 800AF02C 0C02DF34 */  jal        alFilterNew
/* AFC30 800AF030 24070001 */   addiu     $a3, $zero, 1
/* AFC34 800AF034 3C04800F */  lui        $a0, %hi(D_800EE4C4)
/* AFC38 800AF038 240E0020 */  addiu      $t6, $zero, 0x20
/* AFC3C 800AF03C AFAE0010 */  sw         $t6, 0x10($sp)
/* AFC40 800AF040 2484E4C4 */  addiu      $a0, $a0, %lo(D_800EE4C4)
/* AFC44 800AF044 24050104 */  addiu      $a1, $zero, 0x104
/* AFC48 800AF048 8FA60024 */  lw         $a2, 0x24($sp)
/* AFC4C 800AF04C 0C026ECC */  jal        alHeapDBAlloc
/* AFC50 800AF050 24070001 */   addiu     $a3, $zero, 1
/* AFC54 800AF054 8FAF0020 */  lw         $t7, 0x20($sp)
/* AFC58 800AF058 ADE20014 */  sw         $v0, 0x14($t7)
/* AFC5C 800AF05C 44802000 */  mtc1       $zero, $f4
/* AFC60 800AF060 8FB80020 */  lw         $t8, 0x20($sp)
/* AFC64 800AF064 E7040020 */  swc1       $f4, 0x20($t8)
/* AFC68 800AF068 8FA80020 */  lw         $t0, 0x20($sp)
/* AFC6C 800AF06C 24190001 */  addiu      $t9, $zero, 1
/* AFC70 800AF070 AD190024 */  sw         $t9, 0x24($t0)
/* AFC74 800AF074 8FA90020 */  lw         $t1, 0x20($sp)
/* AFC78 800AF078 AD200030 */  sw         $zero, 0x30($t1)
/* AFC7C 800AF07C 3C013F80 */  lui        $at, 0x3f80
/* AFC80 800AF080 44813000 */  mtc1       $at, $f6
/* AFC84 800AF084 8FAA0020 */  lw         $t2, 0x20($sp)
/* AFC88 800AF088 E5460018 */  swc1       $f6, 0x18($t2)
/* AFC8C 800AF08C 8FAB0020 */  lw         $t3, 0x20($sp)
/* AFC90 800AF090 AD60001C */  sw         $zero, 0x1c($t3)
/* AFC94 800AF094 8FAC0020 */  lw         $t4, 0x20($sp)
/* AFC98 800AF098 AD800028 */  sw         $zero, 0x28($t4)
/* AFC9C 800AF09C 8FAD0020 */  lw         $t5, 0x20($sp)
/* AFCA0 800AF0A0 ADA0002C */  sw         $zero, 0x2c($t5)
/* AFCA4 800AF0A4 10000001 */  b          .L800AF0AC
/* AFCA8 800AF0A8 00000000 */   nop
.L800AF0AC:
/* AFCAC 800AF0AC 8FBF001C */  lw         $ra, 0x1c($sp)
/* AFCB0 800AF0B0 27BD0020 */  addiu      $sp, $sp, 0x20
/* AFCB4 800AF0B4 03E00008 */  jr         $ra
/* AFCB8 800AF0B8 00000000 */   nop

glabel alAuxBusNew
/* AFCBC 800AF0BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AFCC0 800AF0C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* AFCC4 800AF0C4 AFA40018 */  sw         $a0, 0x18($sp)
/* AFCC8 800AF0C8 AFA5001C */  sw         $a1, 0x1c($sp)
/* AFCCC 800AF0CC AFA60020 */  sw         $a2, 0x20($sp)
/* AFCD0 800AF0D0 3C05800B */  lui        $a1, %hi(alAuxBusPull)
/* AFCD4 800AF0D4 3C06800B */  lui        $a2, %hi(func_800B1F70)
/* AFCD8 800AF0D8 24C61F70 */  addiu      $a2, $a2, %lo(func_800B1F70)
/* AFCDC 800AF0DC 24A51E50 */  addiu      $a1, $a1, %lo(alAuxBusPull)
/* AFCE0 800AF0E0 8FA40018 */  lw         $a0, 0x18($sp)
/* AFCE4 800AF0E4 0C02DF34 */  jal        alFilterNew
/* AFCE8 800AF0E8 24070006 */   addiu     $a3, $zero, 6
/* AFCEC 800AF0EC 8FAE0018 */  lw         $t6, 0x18($sp)
/* AFCF0 800AF0F0 ADC00014 */  sw         $zero, 0x14($t6)
/* AFCF4 800AF0F4 8FAF0020 */  lw         $t7, 0x20($sp)
/* AFCF8 800AF0F8 8FB80018 */  lw         $t8, 0x18($sp)
/* AFCFC 800AF0FC AF0F0018 */  sw         $t7, 0x18($t8)
/* AFD00 800AF100 8FB9001C */  lw         $t9, 0x1c($sp)
/* AFD04 800AF104 8FA80018 */  lw         $t0, 0x18($sp)
/* AFD08 800AF108 AD19001C */  sw         $t9, 0x1c($t0)
/* AFD0C 800AF10C 10000001 */  b          .L800AF114
/* AFD10 800AF110 00000000 */   nop
.L800AF114:
/* AFD14 800AF114 8FBF0014 */  lw         $ra, 0x14($sp)
/* AFD18 800AF118 27BD0018 */  addiu      $sp, $sp, 0x18
/* AFD1C 800AF11C 03E00008 */  jr         $ra
/* AFD20 800AF120 00000000 */   nop

glabel alMainBusNew
/* AFD24 800AF124 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AFD28 800AF128 AFBF0014 */  sw         $ra, 0x14($sp)
/* AFD2C 800AF12C AFA40018 */  sw         $a0, 0x18($sp)
/* AFD30 800AF130 AFA5001C */  sw         $a1, 0x1c($sp)
/* AFD34 800AF134 AFA60020 */  sw         $a2, 0x20($sp)
/* AFD38 800AF138 3C05800B */  lui        $a1, %hi(alMainBusPull)
/* AFD3C 800AF13C 3C06800B */  lui        $a2, %hi(alAuxBusParam)
/* AFD40 800AF140 24C6F490 */  addiu      $a2, $a2, %lo(alAuxBusParam)
/* AFD44 800AF144 24A5F2E0 */  addiu      $a1, $a1, %lo(alMainBusPull)
/* AFD48 800AF148 8FA40018 */  lw         $a0, 0x18($sp)
/* AFD4C 800AF14C 0C02DF34 */  jal        alFilterNew
/* AFD50 800AF150 24070007 */   addiu     $a3, $zero, 7
/* AFD54 800AF154 8FAE0018 */  lw         $t6, 0x18($sp)
/* AFD58 800AF158 ADC00014 */  sw         $zero, 0x14($t6)
/* AFD5C 800AF15C 8FAF0020 */  lw         $t7, 0x20($sp)
/* AFD60 800AF160 8FB80018 */  lw         $t8, 0x18($sp)
/* AFD64 800AF164 AF0F0018 */  sw         $t7, 0x18($t8)
/* AFD68 800AF168 8FB9001C */  lw         $t9, 0x1c($sp)
/* AFD6C 800AF16C 8FA80018 */  lw         $t0, 0x18($sp)
/* AFD70 800AF170 AD19001C */  sw         $t9, 0x1c($t0)
/* AFD74 800AF174 10000001 */  b          .L800AF17C
/* AFD78 800AF178 00000000 */   nop
.L800AF17C:
/* AFD7C 800AF17C 8FBF0014 */  lw         $ra, 0x14($sp)
/* AFD80 800AF180 27BD0018 */  addiu      $sp, $sp, 0x18
/* AFD84 800AF184 03E00008 */  jr         $ra
/* AFD88 800AF188 00000000 */   nop

glabel alSaveNew
/* AFD8C 800AF18C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AFD90 800AF190 AFBF0014 */  sw         $ra, 0x14($sp)
/* AFD94 800AF194 AFA40018 */  sw         $a0, 0x18($sp)
/* AFD98 800AF198 3C05800B */  lui        $a1, %hi(alSavePull)
/* AFD9C 800AF19C 3C06800B */  lui        $a2, %hi(alSaveParam)
/* AFDA0 800AF1A0 24C62154 */  addiu      $a2, $a2, %lo(alSaveParam)
/* AFDA4 800AF1A4 24A51FF0 */  addiu      $a1, $a1, %lo(alSavePull)
/* AFDA8 800AF1A8 8FA40018 */  lw         $a0, 0x18($sp)
/* AFDAC 800AF1AC 0C02DF34 */  jal        alFilterNew
/* AFDB0 800AF1B0 24070003 */   addiu     $a3, $zero, 3
/* AFDB4 800AF1B4 8FAE0018 */  lw         $t6, 0x18($sp)
/* AFDB8 800AF1B8 ADC00014 */  sw         $zero, 0x14($t6)
/* AFDBC 800AF1BC 8FB80018 */  lw         $t8, 0x18($sp)
/* AFDC0 800AF1C0 240F0001 */  addiu      $t7, $zero, 1
/* AFDC4 800AF1C4 AF0F0018 */  sw         $t7, 0x18($t8)
/* AFDC8 800AF1C8 10000001 */  b          .L800AF1D0
/* AFDCC 800AF1CC 00000000 */   nop
.L800AF1D0:
/* AFDD0 800AF1D0 8FBF0014 */  lw         $ra, 0x14($sp)
/* AFDD4 800AF1D4 27BD0018 */  addiu      $sp, $sp, 0x18
/* AFDD8 800AF1D8 03E00008 */  jr         $ra
/* AFDDC 800AF1DC 00000000 */   nop

glabel alSynAllocFX
/* AFDE0 800AF1E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AFDE4 800AF1E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* AFDE8 800AF1E8 AFA40018 */  sw         $a0, 0x18($sp)
/* AFDEC 800AF1EC AFA5001C */  sw         $a1, 0x1c($sp)
/* AFDF0 800AF1F0 AFA60020 */  sw         $a2, 0x20($sp)
/* AFDF4 800AF1F4 AFA70024 */  sw         $a3, 0x24($sp)
/* AFDF8 800AF1F8 87B8001E */  lh         $t8, 0x1e($sp)
/* AFDFC 800AF1FC 8FAE0018 */  lw         $t6, 0x18($sp)
/* AFE00 800AF200 8FA50020 */  lw         $a1, 0x20($sp)
/* AFE04 800AF204 0018C880 */  sll        $t9, $t8, 2
/* AFE08 800AF208 0338C821 */  addu       $t9, $t9, $t8
/* AFE0C 800AF20C 8DCF0034 */  lw         $t7, 0x34($t6)
/* AFE10 800AF210 0019C880 */  sll        $t9, $t9, 2
/* AFE14 800AF214 0338C823 */  subu       $t9, $t9, $t8
/* AFE18 800AF218 0019C880 */  sll        $t9, $t9, 2
/* AFE1C 800AF21C 01F92021 */  addu       $a0, $t7, $t9
/* AFE20 800AF220 24840020 */  addiu      $a0, $a0, 0x20
/* AFE24 800AF224 0C02BA15 */  jal        alFxNew
/* AFE28 800AF228 8FA60024 */   lw        $a2, 0x24($sp)
/* AFE2C 800AF22C 87AA001E */  lh         $t2, 0x1e($sp)
/* AFE30 800AF230 8FA80018 */  lw         $t0, 0x18($sp)
/* AFE34 800AF234 24050001 */  addiu      $a1, $zero, 1
/* AFE38 800AF238 000A5880 */  sll        $t3, $t2, 2
/* AFE3C 800AF23C 016A5821 */  addu       $t3, $t3, $t2
/* AFE40 800AF240 8D090034 */  lw         $t1, 0x34($t0)
/* AFE44 800AF244 000B5880 */  sll        $t3, $t3, 2
/* AFE48 800AF248 016A5823 */  subu       $t3, $t3, $t2
/* AFE4C 800AF24C 000B5880 */  sll        $t3, $t3, 2
/* AFE50 800AF250 012B6021 */  addu       $t4, $t1, $t3
/* AFE54 800AF254 25840020 */  addiu      $a0, $t4, 0x20
/* AFE58 800AF258 0C02E098 */  jal        alFxParam
/* AFE5C 800AF25C 01803025 */   or        $a2, $t4, $zero
/* AFE60 800AF260 87B8001E */  lh         $t8, 0x1e($sp)
/* AFE64 800AF264 8FAD0018 */  lw         $t5, 0x18($sp)
/* AFE68 800AF268 24050002 */  addiu      $a1, $zero, 2
/* AFE6C 800AF26C 00187880 */  sll        $t7, $t8, 2
/* AFE70 800AF270 01F87821 */  addu       $t7, $t7, $t8
/* AFE74 800AF274 8DAE0034 */  lw         $t6, 0x34($t5)
/* AFE78 800AF278 000F7880 */  sll        $t7, $t7, 2
/* AFE7C 800AF27C 01F87823 */  subu       $t7, $t7, $t8
/* AFE80 800AF280 000F7880 */  sll        $t7, $t7, 2
/* AFE84 800AF284 01CF3021 */  addu       $a2, $t6, $t7
/* AFE88 800AF288 24C60020 */  addiu      $a2, $a2, 0x20
/* AFE8C 800AF28C 0C02BD24 */  jal        alAuxBusParam
/* AFE90 800AF290 8DA40030 */   lw        $a0, 0x30($t5)
/* AFE94 800AF294 87AA001E */  lh         $t2, 0x1e($sp)
/* AFE98 800AF298 8FB90018 */  lw         $t9, 0x18($sp)
/* AFE9C 800AF29C 000A4880 */  sll        $t1, $t2, 2
/* AFEA0 800AF2A0 012A4821 */  addu       $t1, $t1, $t2
/* AFEA4 800AF2A4 8F280034 */  lw         $t0, 0x34($t9)
/* AFEA8 800AF2A8 00094880 */  sll        $t1, $t1, 2
/* AFEAC 800AF2AC 012A4823 */  subu       $t1, $t1, $t2
/* AFEB0 800AF2B0 00094880 */  sll        $t1, $t1, 2
/* AFEB4 800AF2B4 01091021 */  addu       $v0, $t0, $t1
/* AFEB8 800AF2B8 10000003 */  b          .L800AF2C8
/* AFEBC 800AF2BC 24420020 */   addiu     $v0, $v0, 0x20
/* AFEC0 800AF2C0 10000001 */  b          .L800AF2C8
/* AFEC4 800AF2C4 00000000 */   nop
.L800AF2C8:
/* AFEC8 800AF2C8 8FBF0014 */  lw         $ra, 0x14($sp)
/* AFECC 800AF2CC 27BD0018 */  addiu      $sp, $sp, 0x18
/* AFED0 800AF2D0 03E00008 */  jr         $ra
/* AFED4 800AF2D4 00000000 */   nop
/* AFED8 800AF2D8 00000000 */  nop
/* AFEDC 800AF2DC 00000000 */  nop
