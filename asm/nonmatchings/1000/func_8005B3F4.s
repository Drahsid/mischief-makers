glabel func_8005B3F4
/* 5BFF4 8005B3F4 3C0E8013 */  lui        $t6, %hi(D_8013745C)
/* 5BFF8 8005B3F8 8DCE745C */  lw         $t6, %lo(D_8013745C)($t6)
/* 5BFFC 8005B3FC 3086FFFF */  andi       $a2, $a0, 0xffff
/* 5C000 8005B400 01C67821 */  addu       $t7, $t6, $a2
/* 5C004 8005B404 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 5C008 8005B408 00C01025 */  or         $v0, $a2, $zero
/* 5C00C 8005B40C AFBF0014 */  sw         $ra, 0x14($sp)
/* 5C010 8005B410 AFA40040 */  sw         $a0, 0x40($sp)
/* 5C014 8005B414 05E10004 */  bgez       $t7, .L8005B428
/* 5C018 8005B418 31F80003 */   andi      $t8, $t7, 3
/* 5C01C 8005B41C 13000002 */  beqz       $t8, .L8005B428
/* 5C020 8005B420 00000000 */   nop
/* 5C024 8005B424 2718FFFC */  addiu      $t8, $t8, -4
.L8005B428:
/* 5C028 8005B428 17000070 */  bnez       $t8, .L8005B5EC
/* 5C02C 8005B42C 28410010 */   slti      $at, $v0, 0x10
/* 5C030 8005B430 1020000C */  beqz       $at, .L8005B464
/* 5C034 8005B434 0006C880 */   sll       $t9, $a2, 2
/* 5C038 8005B438 0326C823 */  subu       $t9, $t9, $a2
/* 5C03C 8005B43C 0019C880 */  sll        $t9, $t9, 2
/* 5C040 8005B440 0326C821 */  addu       $t9, $t9, $a2
/* 5C044 8005B444 0019C880 */  sll        $t9, $t9, 2
/* 5C048 8005B448 0326C823 */  subu       $t9, $t9, $a2
/* 5C04C 8005B44C 0019C8C0 */  sll        $t9, $t9, 3
/* 5C050 8005B450 3C08800F */  lui        $t0, %hi(D_800EF5B0)
/* 5C054 8005B454 01194021 */  addu       $t0, $t0, $t9
/* 5C058 8005B458 9108F5B0 */  lbu        $t0, %lo(D_800EF5B0)($t0)
/* 5C05C 8005B45C 00000000 */  nop
/* 5C060 8005B460 11000062 */  beqz       $t0, .L8005B5EC
.L8005B464:
/* 5C064 8005B464 00065080 */   sll       $t2, $a2, 2
/* 5C068 8005B468 01465023 */  subu       $t2, $t2, $a2
/* 5C06C 8005B46C 000A5080 */  sll        $t2, $t2, 2
/* 5C070 8005B470 3C04800C */  lui        $a0, %hi(D_800BE534)
/* 5C074 8005B474 9484E534 */  lhu        $a0, %lo(D_800BE534)($a0)
/* 5C078 8005B478 01465021 */  addu       $t2, $t2, $a2
/* 5C07C 8005B47C 000A5080 */  sll        $t2, $t2, 2
/* 5C080 8005B480 01465023 */  subu       $t2, $t2, $a2
/* 5C084 8005B484 3C0B800F */  lui        $t3, %hi(gActors)
/* 5C088 8005B488 256BF510 */  addiu      $t3, $t3, %lo(gActors)
/* 5C08C 8005B48C 000A50C0 */  sll        $t2, $t2, 3
/* 5C090 8005B490 014B1821 */  addu       $v1, $t2, $t3
/* 5C094 8005B494 04810003 */  bgez       $a0, .L8005B4A4
/* 5C098 8005B498 00044843 */   sra       $t1, $a0, 1
/* 5C09C 8005B49C 24810001 */  addiu      $at, $a0, 1
/* 5C0A0 8005B4A0 00014843 */  sra        $t1, $at, 1
.L8005B4A4:
/* 5C0A4 8005B4A4 01202025 */  or         $a0, $t1, $zero
/* 5C0A8 8005B4A8 AFA30020 */  sw         $v1, 0x20($sp)
/* 5C0AC 8005B4AC 0C0171C2 */  jal        func_8005C708
/* 5C0B0 8005B4B0 A7A60042 */   sh        $a2, 0x42($sp)
/* 5C0B4 8005B4B4 8FA30020 */  lw         $v1, 0x20($sp)
/* 5C0B8 8005B4B8 97A40042 */  lhu        $a0, 0x42($sp)
/* 5C0BC 8005B4BC 846C0088 */  lh         $t4, 0x88($v1)
/* 5C0C0 8005B4C0 846E00B0 */  lh         $t6, 0xb0($v1)
/* 5C0C4 8005B4C4 846F008C */  lh         $t7, 0x8c($v1)
/* 5C0C8 8005B4C8 84790090 */  lh         $t9, 0x90($v1)
/* 5C0CC 8005B4CC 004C6821 */  addu       $t5, $v0, $t4
/* 5C0D0 8005B4D0 01CFC021 */  addu       $t8, $t6, $t7
/* 5C0D4 8005B4D4 27280001 */  addiu      $t0, $t9, 1
/* 5C0D8 8005B4D8 AFAD002C */  sw         $t5, 0x2c($sp)
/* 5C0DC 8005B4DC AFB80030 */  sw         $t8, 0x30($sp)
/* 5C0E0 8005B4E0 AFA80034 */  sw         $t0, 0x34($sp)
/* 5C0E4 8005B4E4 0C0164A8 */  jal        func_800592A0
/* 5C0E8 8005B4E8 27A5002C */   addiu     $a1, $sp, 0x2c
/* 5C0EC 8005B4EC 97A60042 */  lhu        $a2, 0x42($sp)
/* 5C0F0 8005B4F0 1040003E */  beqz       $v0, .L8005B5EC
/* 5C0F4 8005B4F4 3045FFFF */   andi      $a1, $v0, 0xffff
/* 5C0F8 8005B4F8 00054880 */  sll        $t1, $a1, 2
/* 5C0FC 8005B4FC 01254823 */  subu       $t1, $t1, $a1
/* 5C100 8005B500 00094880 */  sll        $t1, $t1, 2
/* 5C104 8005B504 01254821 */  addu       $t1, $t1, $a1
/* 5C108 8005B508 00094880 */  sll        $t1, $t1, 2
/* 5C10C 8005B50C 01254823 */  subu       $t1, $t1, $a1
/* 5C110 8005B510 3C0A800F */  lui        $t2, %hi(gActors)
/* 5C114 8005B514 3C01800F */  lui        $at, %hi(D_800EBF18)
/* 5C118 8005B518 254AF510 */  addiu      $t2, $t2, %lo(gActors)
/* 5C11C 8005B51C 000948C0 */  sll        $t1, $t1, 3
/* 5C120 8005B520 C420BF18 */  lwc1       $f0, %lo(D_800EBF18)($at)
/* 5C124 8005B524 012A1821 */  addu       $v1, $t1, $t2
/* 5C128 8005B528 946B0094 */  lhu        $t3, 0x94($v1)
/* 5C12C 8005B52C 3C0141A0 */  lui        $at, 0x41a0
/* 5C130 8005B530 44812000 */  mtc1       $at, $f4
/* 5C134 8005B534 240D01C6 */  addiu      $t5, $zero, 0x1c6
/* 5C138 8005B538 240EFFF6 */  addiu      $t6, $zero, -0xa
/* 5C13C 8005B53C 356C0001 */  ori        $t4, $t3, 1
/* 5C140 8005B540 A46C0094 */  sh         $t4, 0x94($v1)
/* 5C144 8005B544 A46D0084 */  sh         $t5, 0x84($v1)
/* 5C148 8005B548 AC6E0154 */  sw         $t6, 0x154($v1)
/* 5C14C 8005B54C 3C01800F */  lui        $at, %hi(D_800EBF1C)
/* 5C150 8005B550 E4640148 */  swc1       $f4, 0x148($v1)
/* 5C154 8005B554 C426BF1C */  lwc1       $f6, %lo(D_800EBF1C)($at)
/* 5C158 8005B558 3C01800F */  lui        $at, %hi(D_800EBF20)
/* 5C15C 8005B55C E4660110 */  swc1       $f6, 0x110($v1)
/* 5C160 8005B560 C428BF20 */  lwc1       $f8, %lo(D_800EBF20)($at)
/* 5C164 8005B564 3C01800F */  lui        $at, %hi(D_800EBF24)
/* 5C168 8005B568 E4600114 */  swc1       $f0, 0x114($v1)
/* 5C16C 8005B56C E4680118 */  swc1       $f8, 0x118($v1)
/* 5C170 8005B570 C42ABF24 */  lwc1       $f10, %lo(D_800EBF24)($at)
/* 5C174 8005B574 AFA30020 */  sw         $v1, 0x20($sp)
/* 5C178 8005B578 30C4FFFF */  andi       $a0, $a2, 0xffff
/* 5C17C 8005B57C 0C01746C */  jal        func_8005D1B0
/* 5C180 8005B580 E46A011C */   swc1      $f10, 0x11c($v1)
/* 5C184 8005B584 3C01800F */  lui        $at, %hi(D_800EBF28)
/* 5C188 8005B588 C420BF28 */  lwc1       $f0, %lo(D_800EBF28)($at)
/* 5C18C 8005B58C 8FA30020 */  lw         $v1, 0x20($sp)
/* 5C190 8005B590 10400009 */  beqz       $v0, .L8005B5B8
/* 5C194 8005B594 3C01800F */   lui       $at, 0x800f
/* 5C198 8005B598 24010001 */  addiu      $at, $zero, 1
/* 5C19C 8005B59C 1041000B */  beq        $v0, $at, .L8005B5CC
/* 5C1A0 8005B5A0 24010002 */   addiu     $at, $zero, 2
/* 5C1A4 8005B5A4 1041000C */  beq        $v0, $at, .L8005B5D8
/* 5C1A8 8005B5A8 00000000 */   nop
/* 5C1AC 8005B5AC E46000B4 */  swc1       $f0, 0xb4($v1)
/* 5C1B0 8005B5B0 1000000E */  b          .L8005B5EC
/* 5C1B4 8005B5B4 E46000B8 */   swc1      $f0, 0xb8($v1)
.L8005B5B8:
/* 5C1B8 8005B5B8 C420BF2C */  lwc1       $f0, -0x40d4($at)
/* 5C1BC 8005B5BC 00000000 */  nop
/* 5C1C0 8005B5C0 E46000B4 */  swc1       $f0, 0xb4($v1)
/* 5C1C4 8005B5C4 10000009 */  b          .L8005B5EC
/* 5C1C8 8005B5C8 E46000B8 */   swc1      $f0, 0xb8($v1)
.L8005B5CC:
/* 5C1CC 8005B5CC E46000B4 */  swc1       $f0, 0xb4($v1)
/* 5C1D0 8005B5D0 10000006 */  b          .L8005B5EC
/* 5C1D4 8005B5D4 E46000B8 */   swc1      $f0, 0xb8($v1)
.L8005B5D8:
/* 5C1D8 8005B5D8 3C01800F */  lui        $at, %hi(D_800EBF30)
/* 5C1DC 8005B5DC C420BF30 */  lwc1       $f0, %lo(D_800EBF30)($at)
/* 5C1E0 8005B5E0 00000000 */  nop
/* 5C1E4 8005B5E4 E46000B4 */  swc1       $f0, 0xb4($v1)
/* 5C1E8 8005B5E8 E46000B8 */  swc1       $f0, 0xb8($v1)
.L8005B5EC:
/* 5C1EC 8005B5EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5C1F0 8005B5F0 27BD0040 */  addiu      $sp, $sp, 0x40
/* 5C1F4 8005B5F4 03E00008 */  jr         $ra
/* 5C1F8 8005B5F8 00000000 */   nop
