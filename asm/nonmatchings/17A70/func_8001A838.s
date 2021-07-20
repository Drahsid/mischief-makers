glabel func_8001A838
/* 1B438 8001A838 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1B43C 8001A83C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1B440 8001A840 AFA40018 */  sw         $a0, 0x18($sp)
/* 1B444 8001A844 AFA5001C */  sw         $a1, 0x1c($sp)
/* 1B448 8001A848 AFA60020 */  sw         $a2, 0x20($sp)
/* 1B44C 8001A84C AFA70024 */  sw         $a3, 0x24($sp)
/* 1B450 8001A850 30E5FFFF */  andi       $a1, $a3, 0xffff
/* 1B454 8001A854 0C0069D6 */  jal        func_8001A758
/* 1B458 8001A858 30C4FFFF */   andi      $a0, $a2, 0xffff
/* 1B45C 8001A85C 0002C080 */  sll        $t8, $v0, 2
/* 1B460 8001A860 3C06800D */  lui        $a2, %hi(D_800C96A0)
/* 1B464 8001A864 00D83021 */  addu       $a2, $a2, $t8
/* 1B468 8001A868 8CC696A0 */  lw         $a2, %lo(D_800C96A0)($a2)
/* 1B46C 8001A86C 87A4001A */  lh         $a0, 0x1a($sp)
/* 1B470 8001A870 87A5001E */  lh         $a1, 0x1e($sp)
/* 1B474 8001A874 87A7002A */  lh         $a3, 0x2a($sp)
/* 1B478 8001A878 0C020E04 */  jal        func_80083810
/* 1B47C 8001A87C 00000000 */   nop
/* 1B480 8001A880 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1B484 8001A884 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1B488 8001A888 03E00008 */  jr         $ra
/* 1B48C 8001A88C 00000000 */   nop
