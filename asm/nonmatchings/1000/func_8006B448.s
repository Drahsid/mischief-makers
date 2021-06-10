glabel func_8006B448
/* 6C048 8006B448 3085FFFF */  andi       $a1, $a0, 0xffff
/* 6C04C 8006B44C 00057080 */  sll        $t6, $a1, 2
/* 6C050 8006B450 01C57023 */  subu       $t6, $t6, $a1
/* 6C054 8006B454 000E7080 */  sll        $t6, $t6, 2
/* 6C058 8006B458 01C57021 */  addu       $t6, $t6, $a1
/* 6C05C 8006B45C 000E7080 */  sll        $t6, $t6, 2
/* 6C060 8006B460 01C57023 */  subu       $t6, $t6, $a1
/* 6C064 8006B464 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 6C068 8006B468 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 6C06C 8006B46C 000E70C0 */  sll        $t6, $t6, 3
/* 6C070 8006B470 01CF1021 */  addu       $v0, $t6, $t7
/* 6C074 8006B474 845800E4 */  lh         $t8, 0xe4($v0)
/* 6C078 8006B478 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6C07C 8006B47C 2B01000B */  slti       $at, $t8, 0xb
/* 6C080 8006B480 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6C084 8006B484 14200007 */  bnez       $at, .L8006B4A4
/* 6C088 8006B488 AFA40020 */   sw        $a0, 0x20($sp)
/* 6C08C 8006B48C 2404002D */  addiu      $a0, $zero, 0x2d
/* 6C090 8006B490 0C000DB2 */  jal        func_800036C8
/* 6C094 8006B494 AFA2001C */   sw        $v0, 0x1c($sp)
/* 6C098 8006B498 8FA2001C */  lw         $v0, 0x1c($sp)
/* 6C09C 8006B49C 10000007 */  b          .L8006B4BC
/* 6C0A0 8006B4A0 3C0140C0 */   lui       $at, 0x40c0
.L8006B4A4:
/* 6C0A4 8006B4A4 2404002C */  addiu      $a0, $zero, 0x2c
/* 6C0A8 8006B4A8 0C000DB2 */  jal        func_800036C8
/* 6C0AC 8006B4AC AFA2001C */   sw        $v0, 0x1c($sp)
/* 6C0B0 8006B4B0 8FA2001C */  lw         $v0, 0x1c($sp)
/* 6C0B4 8006B4B4 00000000 */  nop
/* 6C0B8 8006B4B8 3C0140C0 */  lui        $at, 0x40c0
.L8006B4BC:
/* 6C0BC 8006B4BC 44812000 */  mtc1       $at, $f4
/* 6C0C0 8006B4C0 8C590080 */  lw         $t9, 0x80($v0)
/* 6C0C4 8006B4C4 8C4300EC */  lw         $v1, 0xec($v0)
/* 6C0C8 8006B4C8 8C4400F0 */  lw         $a0, 0xf0($v0)
/* 6C0CC 8006B4CC 2401FD7F */  addiu      $at, $zero, -0x281
/* 6C0D0 8006B4D0 03214024 */  and        $t0, $t9, $at
/* 6C0D4 8006B4D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6C0D8 8006B4D8 AC480080 */  sw         $t0, 0x80($v0)
/* 6C0DC 8006B4DC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 6C0E0 8006B4E0 E444011C */  swc1       $f4, 0x11c($v0)
/* 6C0E4 8006B4E4 AC430158 */  sw         $v1, 0x158($v0)
/* 6C0E8 8006B4E8 AC44015C */  sw         $a0, 0x15c($v0)
/* 6C0EC 8006B4EC 04610003 */  bgez       $v1, .L8006B4FC
/* 6C0F0 8006B4F0 00034883 */   sra       $t1, $v1, 2
/* 6C0F4 8006B4F4 24610003 */  addiu      $at, $v1, 3
/* 6C0F8 8006B4F8 00014883 */  sra        $t1, $at, 2
.L8006B4FC:
/* 6C0FC 8006B4FC AC4900EC */  sw         $t1, 0xec($v0)
/* 6C100 8006B500 04810003 */  bgez       $a0, .L8006B510
/* 6C104 8006B504 00045083 */   sra       $t2, $a0, 2
/* 6C108 8006B508 24810003 */  addiu      $at, $a0, 3
/* 6C10C 8006B50C 00015083 */  sra        $t2, $at, 2
.L8006B510:
/* 6C110 8006B510 03E00008 */  jr         $ra
/* 6C114 8006B514 AC4A00F0 */   sw        $t2, 0xf0($v0)
