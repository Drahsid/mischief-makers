glabel func_800123AC
/* 12FAC 800123AC 3C05800C */  lui        $a1, %hi(gPlayerPosXMirror)
/* 12FB0 800123B0 24A5E5D8 */  addiu      $a1, $a1, %lo(gPlayerPosXMirror)
/* 12FB4 800123B4 3C03800C */  lui        $v1, %hi(D_800BE558)
/* 12FB8 800123B8 8463E558 */  lh         $v1, %lo(D_800BE558)($v1)
/* 12FBC 800123BC 84AE0000 */  lh         $t6, ($a1)
/* 12FC0 800123C0 246FFF70 */  addiu      $t7, $v1, -0x90
/* 12FC4 800123C4 01C32023 */  subu       $a0, $t6, $v1
/* 12FC8 800123C8 2881FF70 */  slti       $at, $a0, -0x90
/* 12FCC 800123CC 10200006 */  beqz       $at, .L800123E8
/* 12FD0 800123D0 00801025 */   or        $v0, $a0, $zero
/* 12FD4 800123D4 A4AF0000 */  sh         $t7, ($a1)
/* 12FD8 800123D8 2418FF70 */  addiu      $t8, $zero, -0x90
/* 12FDC 800123DC 3C01800F */  lui        $at, %hi(FB_BGCOLOR)
/* 12FE0 800123E0 03E00008 */  jr         $ra
/* 12FE4 800123E4 A438F598 */   sh        $t8, %lo(FB_BGCOLOR)($at)
.L800123E8:
/* 12FE8 800123E8 28410091 */  slti       $at, $v0, 0x91
/* 12FEC 800123EC 14200006 */  bnez       $at, .L80012408
/* 12FF0 800123F0 24790090 */   addiu     $t9, $v1, 0x90
/* 12FF4 800123F4 A4B90000 */  sh         $t9, ($a1)
/* 12FF8 800123F8 24080090 */  addiu      $t0, $zero, 0x90
/* 12FFC 800123FC 3C01800F */  lui        $at, %hi(FB_BGCOLOR)
/* 13000 80012400 03E00008 */  jr         $ra
/* 13004 80012404 A428F598 */   sh        $t0, %lo(FB_BGCOLOR)($at)
.L80012408:
/* 13008 80012408 3C01800F */  lui        $at, %hi(FB_BGCOLOR)
/* 1300C 8001240C A424F598 */  sh         $a0, %lo(FB_BGCOLOR)($at)
/* 13010 80012410 03E00008 */  jr         $ra
/* 13014 80012414 00000000 */   nop
