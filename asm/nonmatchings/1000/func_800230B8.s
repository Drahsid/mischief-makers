glabel func_800230B8
/* 23CB8 800230B8 3C04800F */  lui        $a0, %hi(gActors)
/* 23CBC 800230BC 2484F510 */  addiu      $a0, $a0, %lo(gActors)
/* 23CC0 800230C0 00001025 */  or         $v0, $zero, $zero
/* 23CC4 800230C4 24050198 */  addiu      $a1, $zero, 0x198
.L800230C8:
/* 23CC8 800230C8 00450019 */  multu      $v0, $a1
/* 23CCC 800230CC 24420001 */  addiu      $v0, $v0, 1
/* 23CD0 800230D0 304FFFFF */  andi       $t7, $v0, 0xffff
/* 23CD4 800230D4 29E100D0 */  slti       $at, $t7, 0xd0
/* 23CD8 800230D8 01E01025 */  or         $v0, $t7, $zero
/* 23CDC 800230DC 00007012 */  mflo       $t6
/* 23CE0 800230E0 008E1821 */  addu       $v1, $a0, $t6
/* 23CE4 800230E4 AC600080 */  sw         $zero, 0x80($v1)
/* 23CE8 800230E8 1420FFF7 */  bnez       $at, .L800230C8
/* 23CEC 800230EC AC6000E8 */   sw        $zero, 0xe8($v1)
/* 23CF0 800230F0 3C038010 */  lui        $v1, %hi(D_801069E0)
/* 23CF4 800230F4 246369E0 */  addiu      $v1, $v1, %lo(D_801069E0)
/* 23CF8 800230F8 00001025 */  or         $v0, $zero, $zero
/* 23CFC 800230FC 24040090 */  addiu      $a0, $zero, 0x90
.L80023100:
/* 23D00 80023100 00440019 */  multu      $v0, $a0
/* 23D04 80023104 24420001 */  addiu      $v0, $v0, 1
/* 23D08 80023108 3048FFFF */  andi       $t0, $v0, 0xffff
/* 23D0C 8002310C 29010040 */  slti       $at, $t0, 0x40
/* 23D10 80023110 01001025 */  or         $v0, $t0, $zero
/* 23D14 80023114 0000C012 */  mflo       $t8
/* 23D18 80023118 0078C821 */  addu       $t9, $v1, $t8
/* 23D1C 8002311C 1420FFF8 */  bnez       $at, .L80023100
/* 23D20 80023120 A7200080 */   sh        $zero, 0x80($t9)
/* 23D24 80023124 03E00008 */  jr         $ra
/* 23D28 80023128 00000000 */   nop
