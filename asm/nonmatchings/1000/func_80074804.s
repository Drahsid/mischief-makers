glabel func_80074804
/* 75404 80074804 308EFFFF */  andi       $t6, $a0, 0xffff
/* 75408 80074808 000E7880 */  sll        $t7, $t6, 2
/* 7540C 8007480C 01EE7823 */  subu       $t7, $t7, $t6
/* 75410 80074810 000F7880 */  sll        $t7, $t7, 2
/* 75414 80074814 01EE7821 */  addu       $t7, $t7, $t6
/* 75418 80074818 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7541C 8007481C 000F7880 */  sll        $t7, $t7, 2
/* 75420 80074820 01EE7823 */  subu       $t7, $t7, $t6
/* 75424 80074824 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 75428 80074828 AFB00018 */  sw         $s0, 0x18($sp)
/* 7542C 8007482C 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 75430 80074830 000F78C0 */  sll        $t7, $t7, 3
/* 75434 80074834 AFBF001C */  sw         $ra, 0x1c($sp)
/* 75438 80074838 AFA40020 */  sw         $a0, 0x20($sp)
/* 7543C 8007483C 01F88021 */  addu       $s0, $t7, $t8
/* 75440 80074840 2419090D */  addiu      $t9, $zero, 0x90d
/* 75444 80074844 01C02025 */  or         $a0, $t6, $zero
/* 75448 80074848 AFA50024 */  sw         $a1, 0x24($sp)
/* 7544C 8007484C A61900D2 */  sh         $t9, 0xd2($s0)
/* 75450 80074850 0C0078B4 */  jal        func_8001E2D0
/* 75454 80074854 A7AE0022 */   sh        $t6, 0x22($sp)
/* 75458 80074858 97AA0026 */  lhu        $t2, 0x26($sp)
/* 7545C 8007485C 97A40022 */  lhu        $a0, 0x22($sp)
/* 75460 80074860 34088009 */  ori        $t0, $zero, 0x8009
/* 75464 80074864 24090050 */  addiu      $t1, $zero, 0x50
/* 75468 80074868 314B0001 */  andi       $t3, $t2, 1
/* 7546C 8007486C A6080094 */  sh         $t0, 0x94($s0)
/* 75470 80074870 11600007 */  beqz       $t3, .L80074890
/* 75474 80074874 A60900E4 */   sh        $t1, 0xe4($s0)
/* 75478 80074878 240C0087 */  addiu      $t4, $zero, 0x87
/* 7547C 8007487C AE0C0080 */  sw         $t4, 0x80($s0)
/* 75480 80074880 0C00AAF9 */  jal        func_8002ABE4
/* 75484 80074884 24050007 */   addiu     $a1, $zero, 7
/* 75488 80074888 10000011 */  b          .L800748D0
/* 7548C 8007488C 3C014000 */   lui       $at, 0x4000
.L80074890:
/* 75490 80074890 240D1607 */  addiu      $t5, $zero, 0x1607
/* 75494 80074894 AE0D0080 */  sw         $t5, 0x80($s0)
/* 75498 80074898 24050004 */  addiu      $a1, $zero, 4
/* 7549C 8007489C 0C00AAF9 */  jal        func_8002ABE4
/* 754A0 800748A0 A7A40022 */   sh        $a0, 0x22($sp)
/* 754A4 800748A4 97A40022 */  lhu        $a0, 0x22($sp)
/* 754A8 800748A8 0C00AB0C */  jal        func_8002AC30
/* 754AC 800748AC 24050006 */   addiu     $a1, $zero, 6
/* 754B0 800748B0 860E00E4 */  lh         $t6, 0xe4($s0)
/* 754B4 800748B4 00000000 */  nop
/* 754B8 800748B8 05C10003 */  bgez       $t6, .L800748C8
/* 754BC 800748BC 000E7843 */   sra       $t7, $t6, 1
/* 754C0 800748C0 25C10001 */  addiu      $at, $t6, 1
/* 754C4 800748C4 00017843 */  sra        $t7, $at, 1
.L800748C8:
/* 754C8 800748C8 A60F00E4 */  sh         $t7, 0xe4($s0)
/* 754CC 800748CC 3C014000 */  lui        $at, 0x4000
.L800748D0:
/* 754D0 800748D0 44812000 */  mtc1       $at, $f4
/* 754D4 800748D4 3C014370 */  lui        $at, 0x4370
/* 754D8 800748D8 44813000 */  mtc1       $at, $f6
/* 754DC 800748DC 3C0141F0 */  lui        $at, 0x41f0
/* 754E0 800748E0 44814000 */  mtc1       $at, $f8
/* 754E4 800748E4 24183064 */  addiu      $t8, $zero, 0x3064
/* 754E8 800748E8 24190009 */  addiu      $t9, $zero, 9
/* 754EC 800748EC 24080040 */  addiu      $t0, $zero, 0x40
/* 754F0 800748F0 24090084 */  addiu      $t1, $zero, 0x84
/* 754F4 800748F4 240A000A */  addiu      $t2, $zero, 0xa
/* 754F8 800748F8 3C0B0001 */  lui        $t3, 1
/* 754FC 800748FC 3C0C0005 */  lui        $t4, 5
/* 75500 80074900 8FBF001C */  lw         $ra, 0x1c($sp)
/* 75504 80074904 A6180084 */  sh         $t8, 0x84($s0)
/* 75508 80074908 A61900CE */  sh         $t9, 0xce($s0)
/* 7550C 8007490C A20800DF */  sb         $t0, 0xdf($s0)
/* 75510 80074910 A20900DA */  sb         $t1, 0xda($s0)
/* 75514 80074914 AE0C00FC */  sw         $t4, 0xfc($s0)
/* 75518 80074918 AE0B00F8 */  sw         $t3, 0xf8($s0)
/* 7551C 8007491C A20A00DB */  sb         $t2, 0xdb($s0)
/* 75520 80074920 E60400B8 */  swc1       $f4, 0xb8($s0)
/* 75524 80074924 E6060114 */  swc1       $f6, 0x114($s0)
/* 75528 80074928 E6080118 */  swc1       $f8, 0x118($s0)
/* 7552C 8007492C 8FB00018 */  lw         $s0, 0x18($sp)
/* 75530 80074930 03E00008 */  jr         $ra
/* 75534 80074934 27BD0020 */   addiu     $sp, $sp, 0x20
