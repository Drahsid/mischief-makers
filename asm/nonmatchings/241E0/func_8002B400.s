glabel func_8002B400
/* 2C000 8002B400 3C0F800C */  lui        $t7, %hi(D_800BE4E0)
/* 2C004 8002B404 95EFE4E0 */  lhu        $t7, %lo(D_800BE4E0)($t7)
/* 2C008 8002B408 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2C00C 8002B40C AFA40020 */  sw         $a0, 0x20($sp)
/* 2C010 8002B410 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2C014 8002B414 31F80004 */  andi       $t8, $t7, 4
/* 2C018 8002B418 01C02025 */  or         $a0, $t6, $zero
/* 2C01C 8002B41C 13000015 */  beqz       $t8, .L8002B474
/* 2C020 8002B420 AFBF0014 */   sw        $ra, 0x14($sp)
/* 2C024 8002B424 000EC880 */  sll        $t9, $t6, 2
/* 2C028 8002B428 032EC823 */  subu       $t9, $t9, $t6
/* 2C02C 8002B42C 0019C880 */  sll        $t9, $t9, 2
/* 2C030 8002B430 032EC821 */  addu       $t9, $t9, $t6
/* 2C034 8002B434 0019C880 */  sll        $t9, $t9, 2
/* 2C038 8002B438 032EC823 */  subu       $t9, $t9, $t6
/* 2C03C 8002B43C 3C08800F */  lui        $t0, %hi(gActors)
/* 2C040 8002B440 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 2C044 8002B444 0019C8C0 */  sll        $t9, $t9, 3
/* 2C048 8002B448 03281821 */  addu       $v1, $t9, $t0
/* 2C04C 8002B44C 9065009C */  lbu        $a1, 0x9c($v1)
/* 2C050 8002B450 AFA3001C */  sw         $v1, 0x1c($sp)
/* 2C054 8002B454 0C00AC04 */  jal        func_8002B010
/* 2C058 8002B458 24060040 */   addiu     $a2, $zero, 0x40
/* 2C05C 8002B45C 8FA3001C */  lw         $v1, 0x1c($sp)
/* 2C060 8002B460 00000000 */  nop
/* 2C064 8002B464 A062009C */  sb         $v0, 0x9c($v1)
/* 2C068 8002B468 A060009D */  sb         $zero, 0x9d($v1)
/* 2C06C 8002B46C 10000014 */  b          .L8002B4C0
/* 2C070 8002B470 A060009E */   sb        $zero, 0x9e($v1)
.L8002B474:
/* 2C074 8002B474 00044880 */  sll        $t1, $a0, 2
/* 2C078 8002B478 01244823 */  subu       $t1, $t1, $a0
/* 2C07C 8002B47C 00094880 */  sll        $t1, $t1, 2
/* 2C080 8002B480 01244821 */  addu       $t1, $t1, $a0
/* 2C084 8002B484 00094880 */  sll        $t1, $t1, 2
/* 2C088 8002B488 01244823 */  subu       $t1, $t1, $a0
/* 2C08C 8002B48C 3C0A800F */  lui        $t2, %hi(gActors)
/* 2C090 8002B490 254AF510 */  addiu      $t2, $t2, %lo(gActors)
/* 2C094 8002B494 000948C0 */  sll        $t1, $t1, 3
/* 2C098 8002B498 012A1821 */  addu       $v1, $t1, $t2
/* 2C09C 8002B49C 9065009D */  lbu        $a1, 0x9d($v1)
/* 2C0A0 8002B4A0 A060009C */  sb         $zero, 0x9c($v1)
/* 2C0A4 8002B4A4 AFA3001C */  sw         $v1, 0x1c($sp)
/* 2C0A8 8002B4A8 0C00AC04 */  jal        func_8002B010
/* 2C0AC 8002B4AC 2406FFC0 */   addiu     $a2, $zero, -0x40
/* 2C0B0 8002B4B0 8FA3001C */  lw         $v1, 0x1c($sp)
/* 2C0B4 8002B4B4 00000000 */  nop
/* 2C0B8 8002B4B8 A062009D */  sb         $v0, 0x9d($v1)
/* 2C0BC 8002B4BC A062009E */  sb         $v0, 0x9e($v1)
.L8002B4C0:
/* 2C0C0 8002B4C0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2C0C4 8002B4C4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2C0C8 8002B4C8 03E00008 */  jr         $ra
/* 2C0CC 8002B4CC 00000000 */   nop
