glabel func_800208D4
/* 214D4 800208D4 3C03800F */  lui        $v1, %hi(gActors)
/* 214D8 800208D8 2463F510 */  addiu      $v1, $v1, %lo(gActors)
/* 214DC 800208DC 240200C8 */  addiu      $v0, $zero, 0xc8
/* 214E0 800208E0 24040198 */  addiu      $a0, $zero, 0x198
.L800208E4:
/* 214E4 800208E4 00440019 */  multu      $v0, $a0
/* 214E8 800208E8 24420001 */  addiu      $v0, $v0, 1
/* 214EC 800208EC 3058FFFF */  andi       $t8, $v0, 0xffff
/* 214F0 800208F0 2B0100CC */  slti       $at, $t8, 0xcc
/* 214F4 800208F4 03001025 */  or         $v0, $t8, $zero
/* 214F8 800208F8 00007012 */  mflo       $t6
/* 214FC 800208FC 006E7821 */  addu       $t7, $v1, $t6
/* 21500 80020900 1420FFF8 */  bnez       $at, .L800208E4
/* 21504 80020904 ADE00080 */   sw        $zero, 0x80($t7)
/* 21508 80020908 3C19800F */  lui        $t9, %hi(D_800EF4D4)
/* 2150C 8002090C 8739F4D4 */  lh         $t9, %lo(D_800EF4D4)($t9)
/* 21510 80020910 3C01800F */  lui        $at, %hi(D_800EF4D2)
/* 21514 80020914 A439F4D2 */  sh         $t9, %lo(D_800EF4D2)($at)
/* 21518 80020918 3C01800C */  lui        $at, %hi(D_800BE4F4)
/* 2151C 8002091C A420E4F4 */  sh         $zero, %lo(D_800BE4F4)($at)
/* 21520 80020920 3C01800C */  lui        $at, %hi(D_800BE4E8)
/* 21524 80020924 03E00008 */  jr         $ra
/* 21528 80020928 A420E4E8 */   sh        $zero, %lo(D_800BE4E8)($at)
