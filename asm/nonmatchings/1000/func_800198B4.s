glabel func_800198B4
/* 1A4B4 800198B4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A4B8 800198B8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1A4BC 800198BC 0C00660F */  jal        func_8001983C
/* 1A4C0 800198C0 00000000 */   nop
/* 1A4C4 800198C4 24040030 */  addiu      $a0, $zero, 0x30
/* 1A4C8 800198C8 24053002 */  addiu      $a1, $zero, 0x3002
/* 1A4CC 800198CC 00003025 */  or         $a2, $zero, $zero
/* 1A4D0 800198D0 24070050 */  addiu      $a3, $zero, 0x50
/* 1A4D4 800198D4 0C009CFF */  jal        func_800273FC
/* 1A4D8 800198D8 AFA00010 */   sw        $zero, 0x10($sp)
/* 1A4DC 800198DC 24040031 */  addiu      $a0, $zero, 0x31
/* 1A4E0 800198E0 24053000 */  addiu      $a1, $zero, 0x3000
/* 1A4E4 800198E4 00003025 */  or         $a2, $zero, $zero
/* 1A4E8 800198E8 3407FFB5 */  ori        $a3, $zero, 0xffb5
/* 1A4EC 800198EC 0C009CFF */  jal        func_800273FC
/* 1A4F0 800198F0 AFA00010 */   sw        $zero, 0x10($sp)
/* 1A4F4 800198F4 3C0E800F */  lui        $t6, %hi(D_800F43BC)
/* 1A4F8 800198F8 95CE43BC */  lhu        $t6, %lo(D_800F43BC)($t6)
/* 1A4FC 800198FC 3C01800F */  lui        $at, %hi(D_800F43BC)
/* 1A500 80019900 35CF0010 */  ori        $t7, $t6, 0x10
/* 1A504 80019904 A42F43BC */  sh         $t7, %lo(D_800F43BC)($at)
/* 1A508 80019908 3C01800F */  lui        $at, %hi(D_800F43C4)
/* 1A50C 8001990C 24180040 */  addiu      $t8, $zero, 0x40
/* 1A510 80019910 A03843C4 */  sb         $t8, %lo(D_800F43C4)($at)
/* 1A514 80019914 3C01800F */  lui        $at, %hi(D_800F43C5)
/* 1A518 80019918 24190040 */  addiu      $t9, $zero, 0x40
/* 1A51C 8001991C A03943C5 */  sb         $t9, %lo(D_800F43C5)($at)
/* 1A520 80019920 3C01800F */  lui        $at, %hi(D_800F43C6)
/* 1A524 80019924 24080040 */  addiu      $t0, $zero, 0x40
/* 1A528 80019928 3C05800D */  lui        $a1, %hi(D_800C9648)
/* 1A52C 8001992C A02843C6 */  sb         $t0, %lo(D_800F43C6)($at)
/* 1A530 80019930 24A59648 */  addiu      $a1, $a1, %lo(D_800C9648)
/* 1A534 80019934 24040079 */  addiu      $a0, $zero, 0x79
/* 1A538 80019938 3406FF88 */  ori        $a2, $zero, 0xff88
/* 1A53C 8001993C 3407FFB4 */  ori        $a3, $zero, 0xffb4
/* 1A540 80019940 0C009D44 */  jal        func_80027510
/* 1A544 80019944 AFA00010 */   sw        $zero, 0x10($sp)
/* 1A548 80019948 3C028018 */  lui        $v0, %hi(D_8017815C)
/* 1A54C 8001994C 9442815C */  lhu        $v0, %lo(D_8017815C)($v0)
/* 1A550 80019950 3C05800D */  lui        $a1, 0x800d
/* 1A554 80019954 3C06800D */  lui        $a2, 0x800d
/* 1A558 80019958 00024880 */  sll        $t1, $v0, 2
/* 1A55C 8001995C 00025040 */  sll        $t2, $v0, 1
/* 1A560 80019960 00CA3021 */  addu       $a2, $a2, $t2
/* 1A564 80019964 00A92821 */  addu       $a1, $a1, $t1
/* 1A568 80019968 8CA58BE4 */  lw         $a1, -0x741c($a1)
/* 1A56C 8001996C 94C68BF8 */  lhu        $a2, -0x7408($a2)
/* 1A570 80019970 2404007C */  addiu      $a0, $zero, 0x7c
/* 1A574 80019974 2407004E */  addiu      $a3, $zero, 0x4e
/* 1A578 80019978 0C00A007 */  jal        func_8002801C
/* 1A57C 8001997C AFA00010 */   sw        $zero, 0x10($sp)
/* 1A580 80019980 2841007D */  slti       $at, $v0, 0x7d
/* 1A584 80019984 3044FFFF */  andi       $a0, $v0, 0xffff
/* 1A588 80019988 14200010 */  bnez       $at, .L800199CC
/* 1A58C 8001998C 2403007C */   addiu     $v1, $zero, 0x7c
/* 1A590 80019990 3C05800D */  lui        $a1, %hi(D_800C9664)
/* 1A594 80019994 00803025 */  or         $a2, $a0, $zero
/* 1A598 80019998 3C02800F */  lui        $v0, %hi(gActors)
/* 1A59C 8001999C 2442F510 */  addiu      $v0, $v0, %lo(gActors)
/* 1A5A0 800199A0 24040198 */  addiu      $a0, $zero, 0x198
/* 1A5A4 800199A4 24A59664 */  addiu      $a1, $a1, %lo(D_800C9664)
.L800199A8:
/* 1A5A8 800199A8 00640019 */  multu      $v1, $a0
/* 1A5AC 800199AC 24630001 */  addiu      $v1, $v1, 1
/* 1A5B0 800199B0 306DFFFF */  andi       $t5, $v1, 0xffff
/* 1A5B4 800199B4 01A6082A */  slt        $at, $t5, $a2
/* 1A5B8 800199B8 01A01825 */  or         $v1, $t5, $zero
/* 1A5BC 800199BC 00005812 */  mflo       $t3
/* 1A5C0 800199C0 004B6021 */  addu       $t4, $v0, $t3
/* 1A5C4 800199C4 1420FFF8 */  bnez       $at, .L800199A8
/* 1A5C8 800199C8 AD85018C */   sw        $a1, 0x18c($t4)
.L800199CC:
/* 1A5CC 800199CC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1A5D0 800199D0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1A5D4 800199D4 03E00008 */  jr         $ra
/* 1A5D8 800199D8 00000000 */   nop
