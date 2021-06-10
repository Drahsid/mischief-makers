glabel func_8006A7B0
/* 6B3B0 8006A7B0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6B3B4 8006A7B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6B3B8 8006A7B8 AFA40020 */  sw         $a0, 0x20($sp)
/* 6B3BC 8006A7BC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6B3C0 8006A7C0 01C02025 */  or         $a0, $t6, $zero
/* 6B3C4 8006A7C4 0C01A54E */  jal        func_80069538
/* 6B3C8 8006A7C8 A7AE0022 */   sh        $t6, 0x22($sp)
/* 6B3CC 8006A7CC 97A40022 */  lhu        $a0, 0x22($sp)
/* 6B3D0 8006A7D0 1440000D */  bnez       $v0, .L8006A808
/* 6B3D4 8006A7D4 0004C880 */   sll       $t9, $a0, 2
/* 6B3D8 8006A7D8 0004C080 */  sll        $t8, $a0, 2
/* 6B3DC 8006A7DC 0304C023 */  subu       $t8, $t8, $a0
/* 6B3E0 8006A7E0 0018C080 */  sll        $t8, $t8, 2
/* 6B3E4 8006A7E4 0304C021 */  addu       $t8, $t8, $a0
/* 6B3E8 8006A7E8 0018C080 */  sll        $t8, $t8, 2
/* 6B3EC 8006A7EC 0304C023 */  subu       $t8, $t8, $a0
/* 6B3F0 8006A7F0 0018C0C0 */  sll        $t8, $t8, 3
/* 6B3F4 8006A7F4 3C01800F */  lui        $at, %hi(D_800EF5E0)
/* 6B3F8 8006A7F8 00380821 */  addu       $at, $at, $t8
/* 6B3FC 8006A7FC 240F0100 */  addiu      $t7, $zero, 0x100
/* 6B400 8006A800 10000044 */  b          .L8006A914
/* 6B404 8006A804 A42FF5E0 */   sh        $t7, %lo(D_800EF5E0)($at)
.L8006A808:
/* 6B408 8006A808 0324C823 */  subu       $t9, $t9, $a0
/* 6B40C 8006A80C 0019C880 */  sll        $t9, $t9, 2
/* 6B410 8006A810 0324C821 */  addu       $t9, $t9, $a0
/* 6B414 8006A814 0019C880 */  sll        $t9, $t9, 2
/* 6B418 8006A818 0324C823 */  subu       $t9, $t9, $a0
/* 6B41C 8006A81C 3C08800F */  lui        $t0, %hi(D_800EF510)
/* 6B420 8006A820 2508F510 */  addiu      $t0, $t0, %lo(D_800EF510)
/* 6B424 8006A824 0019C8C0 */  sll        $t9, $t9, 3
/* 6B428 8006A828 03281021 */  addu       $v0, $t9, $t0
/* 6B42C 8006A82C 8C490098 */  lw         $t1, 0x98($v0)
/* 6B430 8006A830 240B0150 */  addiu      $t3, $zero, 0x150
/* 6B434 8006A834 312A0020 */  andi       $t2, $t1, 0x20
/* 6B438 8006A838 11400007 */  beqz       $t2, .L8006A858
/* 6B43C 8006A83C 3C0C800E */   lui       $t4, %hi(D_800E1C2C)
/* 6B440 8006A840 258C1C2C */  addiu      $t4, $t4, %lo(D_800E1C2C)
/* 6B444 8006A844 240D0001 */  addiu      $t5, $zero, 1
/* 6B448 8006A848 A44B00D0 */  sh         $t3, 0xd0($v0)
/* 6B44C 8006A84C AC4C00E8 */  sw         $t4, 0xe8($v0)
/* 6B450 8006A850 10000030 */  b          .L8006A914
/* 6B454 8006A854 A44D00E6 */   sh        $t5, 0xe6($v0)
.L8006A858:
/* 6B458 8006A858 0C01A579 */  jal        func_800695E4
/* 6B45C 8006A85C AFA2001C */   sw        $v0, 0x1c($sp)
/* 6B460 8006A860 8FA2001C */  lw         $v0, 0x1c($sp)
/* 6B464 8006A864 3C010001 */  lui        $at, 1
/* 6B468 8006A868 8C4E0160 */  lw         $t6, 0x160($v0)
/* 6B46C 8006A86C 24091038 */  addiu      $t1, $zero, 0x1038
/* 6B470 8006A870 11C00007 */  beqz       $t6, .L8006A890
/* 6B474 8006A874 00000000 */   nop
/* 6B478 8006A878 8C4F015C */  lw         $t7, 0x15c($v0)
/* 6B47C 8006A87C 3C01FFFE */  lui        $at, 0xfffe
/* 6B480 8006A880 34218000 */  ori        $at, $at, 0x8000
/* 6B484 8006A884 01E1C021 */  addu       $t8, $t7, $at
/* 6B488 8006A888 10000005 */  b          .L8006A8A0
/* 6B48C 8006A88C AC58015C */   sw        $t8, 0x15c($v0)
.L8006A890:
/* 6B490 8006A890 8C59015C */  lw         $t9, 0x15c($v0)
/* 6B494 8006A894 34218000 */  ori        $at, $at, 0x8000
/* 6B498 8006A898 03214021 */  addu       $t0, $t9, $at
/* 6B49C 8006A89C AC48015C */  sw         $t0, 0x15c($v0)
.L8006A8A0:
/* 6B4A0 8006A8A0 8C43015C */  lw         $v1, 0x15c($v0)
/* 6B4A4 8006A8A4 3C01002F */  lui        $at, 0x2f
/* 6B4A8 8006A8A8 04610005 */  bgez       $v1, .L8006A8C0
/* 6B4AC 8006A8AC 34210001 */   ori       $at, $at, 1
/* 6B4B0 8006A8B0 AC40015C */  sw         $zero, 0x15c($v0)
/* 6B4B4 8006A8B4 AC400160 */  sw         $zero, 0x160($v0)
/* 6B4B8 8006A8B8 10000016 */  b          .L8006A914
/* 6B4BC 8006A8BC A4490084 */   sh        $t1, 0x84($v0)
.L8006A8C0:
/* 6B4C0 8006A8C0 0061082A */  slt        $at, $v1, $at
/* 6B4C4 8006A8C4 14200008 */  bnez       $at, .L8006A8E8
/* 6B4C8 8006A8C8 3C0F800D */   lui       $t7, 0x800d
/* 6B4CC 8006A8CC 3C0A002F */  lui        $t2, 0x2f
/* 6B4D0 8006A8D0 240B0001 */  addiu      $t3, $zero, 1
/* 6B4D4 8006A8D4 240C1030 */  addiu      $t4, $zero, 0x1030
/* 6B4D8 8006A8D8 AC4A015C */  sw         $t2, 0x15c($v0)
/* 6B4DC 8006A8DC AC4B0160 */  sw         $t3, 0x160($v0)
/* 6B4E0 8006A8E0 1000000C */  b          .L8006A914
/* 6B4E4 8006A8E4 A44C0084 */   sh        $t4, 0x84($v0)
.L8006A8E8:
/* 6B4E8 8006A8E8 04610005 */  bgez       $v1, .L8006A900
/* 6B4EC 8006A8EC 00036CC3 */   sra       $t5, $v1, 0x13
/* 6B4F0 8006A8F0 3C010008 */  lui        $at, 8
/* 6B4F4 8006A8F4 2421FFFF */  addiu      $at, $at, -1
/* 6B4F8 8006A8F8 00230821 */  addu       $at, $at, $v1
/* 6B4FC 8006A8FC 00016CC3 */  sra        $t5, $at, 0x13
.L8006A900:
/* 6B500 8006A900 000D7040 */  sll        $t6, $t5, 1
/* 6B504 8006A904 01EE7821 */  addu       $t7, $t7, $t6
/* 6B508 8006A908 95EF7EB0 */  lhu        $t7, 0x7eb0($t7)
/* 6B50C 8006A90C 00000000 */  nop
/* 6B510 8006A910 A44F0084 */  sh         $t7, 0x84($v0)
.L8006A914:
/* 6B514 8006A914 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6B518 8006A918 27BD0020 */  addiu      $sp, $sp, 0x20
/* 6B51C 8006A91C 03E00008 */  jr         $ra
/* 6B520 8006A920 00000000 */   nop
