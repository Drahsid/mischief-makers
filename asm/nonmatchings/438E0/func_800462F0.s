glabel func_800462F0
/* 46EF0 800462F0 3C0E800D */  lui        $t6, %hi(D_800D28E4)
/* 46EF4 800462F4 95CE28E4 */  lhu        $t6, %lo(D_800D28E4)($t6)
/* 46EF8 800462F8 3C02800D */  lui        $v0, %hi(D_800D2918)
/* 46EFC 800462FC 29C10068 */  slti       $at, $t6, 0x68
/* 46F00 80046300 1020002D */  beqz       $at, .L800463B8
/* 46F04 80046304 3C03800C */   lui       $v1, %hi(D_800BE55C)
/* 46F08 80046308 84422918 */  lh         $v0, %lo(D_800D2918)($v0)
/* 46F0C 8004630C 8463E55C */  lh         $v1, %lo(D_800BE55C)($v1)
/* 46F10 80046310 244FFF90 */  addiu      $t7, $v0, -0x70
/* 46F14 80046314 01E3082A */  slt        $at, $t7, $v1
/* 46F18 80046318 10200005 */  beqz       $at, .L80046330
/* 46F1C 8004631C 3C04800D */   lui       $a0, 0x800d
/* 46F20 80046320 24780070 */  addiu      $t8, $v1, 0x70
/* 46F24 80046324 3C01800C */  lui        $at, %hi(D_800BE570)
/* 46F28 80046328 10000003 */  b          .L80046338
/* 46F2C 8004632C A438E570 */   sh        $t8, %lo(D_800BE570)($at)
.L80046330:
/* 46F30 80046330 3C01800C */  lui        $at, %hi(D_800BE570)
/* 46F34 80046334 A422E570 */  sh         $v0, %lo(D_800BE570)($at)
.L80046338:
/* 46F38 80046338 3C02800D */  lui        $v0, %hi(D_800D291C)
/* 46F3C 8004633C 8442291C */  lh         $v0, %lo(D_800D291C)($v0)
/* 46F40 80046340 2468FF90 */  addiu      $t0, $v1, -0x70
/* 46F44 80046344 24590070 */  addiu      $t9, $v0, 0x70
/* 46F48 80046348 0079082A */  slt        $at, $v1, $t9
/* 46F4C 8004634C 10200003 */  beqz       $at, .L8004635C
/* 46F50 80046350 3C01800C */   lui       $at, %hi(D_800BE574)
/* 46F54 80046354 10000003 */  b          .L80046364
/* 46F58 80046358 A428E574 */   sh        $t0, %lo(D_800BE574)($at)
.L8004635C:
/* 46F5C 8004635C 3C01800C */  lui        $at, %hi(D_800BE574)
/* 46F60 80046360 A422E574 */  sh         $v0, %lo(D_800BE574)($at)
.L80046364:
/* 46F64 80046364 3C02800C */  lui        $v0, %hi(D_800BE558)
/* 46F68 80046368 8442E558 */  lh         $v0, %lo(D_800BE558)($v0)
/* 46F6C 8004636C 84842920 */  lh         $a0, 0x2920($a0)
/* 46F70 80046370 2443FF70 */  addiu      $v1, $v0, -0x90
/* 46F74 80046374 0064082A */  slt        $at, $v1, $a0
/* 46F78 80046378 10200003 */  beqz       $at, .L80046388
/* 46F7C 8004637C 3C01800C */   lui       $at, %hi(D_800BE568)
/* 46F80 80046380 10000003 */  b          .L80046390
/* 46F84 80046384 A423E568 */   sh        $v1, %lo(D_800BE568)($at)
.L80046388:
/* 46F88 80046388 3C01800C */  lui        $at, %hi(D_800BE568)
/* 46F8C 8004638C A424E568 */  sh         $a0, %lo(D_800BE568)($at)
.L80046390:
/* 46F90 80046390 3C03800D */  lui        $v1, %hi(D_800D2924)
/* 46F94 80046394 84632924 */  lh         $v1, %lo(D_800D2924)($v1)
/* 46F98 80046398 24440090 */  addiu      $a0, $v0, 0x90
/* 46F9C 8004639C 0064082A */  slt        $at, $v1, $a0
/* 46FA0 800463A0 10200003 */  beqz       $at, .L800463B0
/* 46FA4 800463A4 3C01800C */   lui       $at, %hi(D_800BE56C)
/* 46FA8 800463A8 03E00008 */  jr         $ra
/* 46FAC 800463AC A424E56C */   sh        $a0, %lo(D_800BE56C)($at)
.L800463B0:
/* 46FB0 800463B0 3C01800C */  lui        $at, %hi(D_800BE56C)
/* 46FB4 800463B4 A423E56C */  sh         $v1, %lo(D_800BE56C)($at)
.L800463B8:
/* 46FB8 800463B8 03E00008 */  jr         $ra
/* 46FBC 800463BC 00000000 */   nop