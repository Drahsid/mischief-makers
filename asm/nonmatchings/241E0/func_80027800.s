glabel func_80027800
/* 28400 80027800 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 28404 80027804 30A3FFFF */  andi       $v1, $a1, 0xffff
/* 28408 80027808 2861000A */  slti       $at, $v1, 0xa
/* 2840C 8002780C AFBF001C */  sw         $ra, 0x1c($sp)
/* 28410 80027810 AFA40030 */  sw         $a0, 0x30($sp)
/* 28414 80027814 AFA50034 */  sw         $a1, 0x34($sp)
/* 28418 80027818 AFA60038 */  sw         $a2, 0x38($sp)
/* 2841C 8002781C AFA7003C */  sw         $a3, 0x3c($sp)
/* 28420 80027820 14200008 */  bnez       $at, .L80027844
/* 28424 80027824 00001025 */   or        $v0, $zero, $zero
.L80027828:
/* 28428 80027828 2465FFF6 */  addiu      $a1, $v1, -0xa
/* 2842C 8002782C 30A3FFFF */  andi       $v1, $a1, 0xffff
/* 28430 80027830 24420001 */  addiu      $v0, $v0, 1
/* 28434 80027834 3058FFFF */  andi       $t8, $v0, 0xffff
/* 28438 80027838 2861000A */  slti       $at, $v1, 0xa
/* 2843C 8002783C 1020FFFA */  beqz       $at, .L80027828
/* 28440 80027840 03001025 */   or        $v0, $t8, $zero
.L80027844:
/* 28444 80027844 97A80032 */  lhu        $t0, 0x32($sp)
/* 28448 80027848 00022840 */  sll        $a1, $v0, 1
/* 2844C 8002784C 97A90042 */  lhu        $t1, 0x42($sp)
/* 28450 80027850 8FAA0044 */  lw         $t2, 0x44($sp)
/* 28454 80027854 24A502D2 */  addiu      $a1, $a1, 0x2d2
/* 28458 80027858 30B9FFFF */  andi       $t9, $a1, 0xffff
/* 2845C 8002785C 97A6003A */  lhu        $a2, 0x3a($sp)
/* 28460 80027860 97A7003E */  lhu        $a3, 0x3e($sp)
/* 28464 80027864 03202825 */  or         $a1, $t9, $zero
/* 28468 80027868 AFA30028 */  sw         $v1, 0x28($sp)
/* 2846C 8002786C 01002025 */  or         $a0, $t0, $zero
/* 28470 80027870 AFA80024 */  sw         $t0, 0x24($sp)
/* 28474 80027874 AFA90010 */  sw         $t1, 0x10($sp)
/* 28478 80027878 0C009D91 */  jal        func_80027644
/* 2847C 8002787C AFAA0014 */   sw        $t2, 0x14($sp)
/* 28480 80027880 8FA30028 */  lw         $v1, 0x28($sp)
/* 28484 80027884 8FA40024 */  lw         $a0, 0x24($sp)
/* 28488 80027888 97A6003A */  lhu        $a2, 0x3a($sp)
/* 2848C 8002788C 00032840 */  sll        $a1, $v1, 1
/* 28490 80027890 97AE0042 */  lhu        $t6, 0x42($sp)
/* 28494 80027894 8FAF0044 */  lw         $t7, 0x44($sp)
/* 28498 80027898 24A502D2 */  addiu      $a1, $a1, 0x2d2
/* 2849C 8002789C 24840001 */  addiu      $a0, $a0, 1
/* 284A0 800278A0 24C60009 */  addiu      $a2, $a2, 9
/* 284A4 800278A4 30CDFFFF */  andi       $t5, $a2, 0xffff
/* 284A8 800278A8 308BFFFF */  andi       $t3, $a0, 0xffff
/* 284AC 800278AC 30ACFFFF */  andi       $t4, $a1, 0xffff
/* 284B0 800278B0 97A7003E */  lhu        $a3, 0x3e($sp)
/* 284B4 800278B4 01802825 */  or         $a1, $t4, $zero
/* 284B8 800278B8 01602025 */  or         $a0, $t3, $zero
/* 284BC 800278BC 01A03025 */  or         $a2, $t5, $zero
/* 284C0 800278C0 AFAE0010 */  sw         $t6, 0x10($sp)
/* 284C4 800278C4 0C009D91 */  jal        func_80027644
/* 284C8 800278C8 AFAF0014 */   sw        $t7, 0x14($sp)
/* 284CC 800278CC 8FA20024 */  lw         $v0, 0x24($sp)
/* 284D0 800278D0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 284D4 800278D4 24420002 */  addiu      $v0, $v0, 2
/* 284D8 800278D8 3058FFFF */  andi       $t8, $v0, 0xffff
/* 284DC 800278DC 03001025 */  or         $v0, $t8, $zero
/* 284E0 800278E0 03E00008 */  jr         $ra
/* 284E4 800278E4 27BD0030 */   addiu     $sp, $sp, 0x30