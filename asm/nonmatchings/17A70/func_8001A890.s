glabel func_8001A890
/* 1B490 8001A890 3C0E8018 */  lui        $t6, %hi(D_801781E0)
/* 1B494 8001A894 3C0F8018 */  lui        $t7, %hi(D_80178150)
/* 1B498 8001A898 95EF8150 */  lhu        $t7, %lo(D_80178150)($t7)
/* 1B49C 8001A89C 95CE81E0 */  lhu        $t6, %lo(D_801781E0)($t6)
/* 1B4A0 8001A8A0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1B4A4 8001A8A4 01CF082A */  slt        $at, $t6, $t7
/* 1B4A8 8001A8A8 10200010 */  beqz       $at, .L8001A8EC
/* 1B4AC 8001A8AC AFBF001C */   sw        $ra, 0x1c($sp)
/* 1B4B0 8001A8B0 3C02800C */  lui        $v0, %hi(D_800BE4E4)
/* 1B4B4 8001A8B4 9442E4E4 */  lhu        $v0, %lo(D_800BE4E4)($v0)
/* 1B4B8 8001A8B8 00000000 */  nop
/* 1B4BC 8001A8BC 04410003 */  bgez       $v0, .L8001A8CC
/* 1B4C0 8001A8C0 0002C083 */   sra       $t8, $v0, 2
/* 1B4C4 8001A8C4 24410003 */  addiu      $at, $v0, 3
/* 1B4C8 8001A8C8 0001C083 */  sra        $t8, $at, 2
.L8001A8CC:
/* 1B4CC 8001A8CC 03001025 */  or         $v0, $t8, $zero
/* 1B4D0 8001A8D0 04410004 */  bgez       $v0, .L8001A8E4
/* 1B4D4 8001A8D4 30590003 */   andi      $t9, $v0, 3
/* 1B4D8 8001A8D8 13200002 */  beqz       $t9, .L8001A8E4
/* 1B4DC 8001A8DC 00000000 */   nop
/* 1B4E0 8001A8E0 2739FFFC */  addiu      $t9, $t9, -4
.L8001A8E4:
/* 1B4E4 8001A8E4 10000002 */  b          .L8001A8F0
/* 1B4E8 8001A8E8 3322FFFF */   andi      $v0, $t9, 0xffff
.L8001A8EC:
/* 1B4EC 8001A8EC 24020001 */  addiu      $v0, $zero, 1
.L8001A8F0:
/* 1B4F0 8001A8F0 00023C00 */  sll        $a3, $v0, 0x10
/* 1B4F4 8001A8F4 00074C03 */  sra        $t1, $a3, 0x10
/* 1B4F8 8001A8F8 3C06800D */  lui        $a2, %hi(D_800C9540)
/* 1B4FC 8001A8FC 24C69540 */  addiu      $a2, $a2, %lo(D_800C9540)
/* 1B500 8001A900 01203825 */  or         $a3, $t1, $zero
/* 1B504 8001A904 24040001 */  addiu      $a0, $zero, 1
/* 1B508 8001A908 24050004 */  addiu      $a1, $zero, 4
/* 1B50C 8001A90C 0C020E04 */  jal        func_80083810
/* 1B510 8001A910 A7A20026 */   sh        $v0, 0x26($sp)
/* 1B514 8001A914 97A20026 */  lhu        $v0, 0x26($sp)
/* 1B518 8001A918 3C068018 */  lui        $a2, %hi(D_801781E0)
/* 1B51C 8001A91C 3C078018 */  lui        $a3, %hi(gCurrentStage)
/* 1B520 8001A920 94E78162 */  lhu        $a3, %lo(gCurrentStage)($a3)
/* 1B524 8001A924 94C681E0 */  lhu        $a2, %lo(D_801781E0)($a2)
/* 1B528 8001A928 24040006 */  addiu      $a0, $zero, 6
/* 1B52C 8001A92C 24050004 */  addiu      $a1, $zero, 4
/* 1B530 8001A930 0C0069F8 */  jal        func_8001A7E0
/* 1B534 8001A934 AFA20010 */   sw        $v0, 0x10($sp)
/* 1B538 8001A938 97A20026 */  lhu        $v0, 0x26($sp)
/* 1B53C 8001A93C 3C068018 */  lui        $a2, %hi(D_801781E0)
/* 1B540 8001A940 3C078018 */  lui        $a3, %hi(gCurrentStage)
/* 1B544 8001A944 94E78162 */  lhu        $a3, %lo(gCurrentStage)($a3)
/* 1B548 8001A948 94C681E0 */  lhu        $a2, %lo(D_801781E0)($a2)
/* 1B54C 8001A94C 24040009 */  addiu      $a0, $zero, 9
/* 1B550 8001A950 24050004 */  addiu      $a1, $zero, 4
/* 1B554 8001A954 0C006A0E */  jal        func_8001A838
/* 1B558 8001A958 AFA20010 */   sw        $v0, 0x10($sp)
/* 1B55C 8001A95C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1B560 8001A960 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1B564 8001A964 03E00008 */  jr         $ra
/* 1B568 8001A968 00000000 */   nop
