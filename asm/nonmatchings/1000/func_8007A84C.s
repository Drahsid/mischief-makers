glabel func_8007A84C
/* 7B44C 8007A84C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7B450 8007A850 AFA40018 */  sw         $a0, 0x18($sp)
/* 7B454 8007A854 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7B458 8007A858 97A4001A */  lhu        $a0, 0x1a($sp)
/* 7B45C 8007A85C 0C01E9F1 */  jal        func_8007A7C4
/* 7B460 8007A860 00000000 */   nop
/* 7B464 8007A864 97AE001A */  lhu        $t6, 0x1a($sp)
/* 7B468 8007A868 3C18800F */  lui        $t8, 0x800f
/* 7B46C 8007A86C 000E7880 */  sll        $t7, $t6, 2
/* 7B470 8007A870 01EE7823 */  subu       $t7, $t7, $t6
/* 7B474 8007A874 000F7880 */  sll        $t7, $t7, 2
/* 7B478 8007A878 01EE7821 */  addu       $t7, $t7, $t6
/* 7B47C 8007A87C 000F7880 */  sll        $t7, $t7, 2
/* 7B480 8007A880 01EE7823 */  subu       $t7, $t7, $t6
/* 7B484 8007A884 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7B488 8007A888 000F78C0 */  sll        $t7, $t7, 3
/* 7B48C 8007A88C 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 7B490 8007A890 3C19800E */  lui        $t9, %hi(D_800D81F8)
/* 7B494 8007A894 273981F8 */  addiu      $t9, $t9, %lo(D_800D81F8)
/* 7B498 8007A898 01F81021 */  addu       $v0, $t7, $t8
/* 7B49C 8007A89C 24080001 */  addiu      $t0, $zero, 1
/* 7B4A0 8007A8A0 AC5900E8 */  sw         $t9, 0xe8($v0)
/* 7B4A4 8007A8A4 A44800E6 */  sh         $t0, 0xe6($v0)
/* 7B4A8 8007A8A8 03E00008 */  jr         $ra
/* 7B4AC 8007A8AC 27BD0018 */   addiu     $sp, $sp, 0x18
