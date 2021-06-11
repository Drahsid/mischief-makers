glabel func_8006D7F8
/* 6E3F8 8006D7F8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6E3FC 8006D7FC AFB00018 */  sw         $s0, 0x18($sp)
/* 6E400 8006D800 3090FFFF */  andi       $s0, $a0, 0xffff
/* 6E404 8006D804 AFBF001C */  sw         $ra, 0x1c($sp)
/* 6E408 8006D808 AFA40020 */  sw         $a0, 0x20($sp)
/* 6E40C 8006D80C 0C01B22E */  jal        func_8006C8B8
/* 6E410 8006D810 3204FFFF */   andi      $a0, $s0, 0xffff
/* 6E414 8006D814 14400017 */  bnez       $v0, .L8006D874
/* 6E418 8006D818 00107080 */   sll       $t6, $s0, 2
/* 6E41C 8006D81C 01D07023 */  subu       $t6, $t6, $s0
/* 6E420 8006D820 000E7080 */  sll        $t6, $t6, 2
/* 6E424 8006D824 01D07021 */  addu       $t6, $t6, $s0
/* 6E428 8006D828 000E7080 */  sll        $t6, $t6, 2
/* 6E42C 8006D82C 01D07023 */  subu       $t6, $t6, $s0
/* 6E430 8006D830 3C0F800F */  lui        $t7, %hi(gActors)
/* 6E434 8006D834 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 6E438 8006D838 000E70C0 */  sll        $t6, $t6, 3
/* 6E43C 8006D83C 01CF1021 */  addu       $v0, $t6, $t7
/* 6E440 8006D840 945800D0 */  lhu        $t8, 0xd0($v0)
/* 6E444 8006D844 24010080 */  addiu      $at, $zero, 0x80
/* 6E448 8006D848 17010005 */  bne        $t8, $at, .L8006D860
/* 6E44C 8006D84C 3C19800E */   lui       $t9, %hi(D_800E1888)
/* 6E450 8006D850 27391888 */  addiu      $t9, $t9, %lo(D_800E1888)
/* 6E454 8006D854 AC5900E8 */  sw         $t9, 0xe8($v0)
/* 6E458 8006D858 0C01AD6C */  jal        func_8006B5B0
/* 6E45C 8006D85C 3204FFFF */   andi      $a0, $s0, 0xffff
.L8006D860:
/* 6E460 8006D860 0C01A6E5 */  jal        func_80069B94
/* 6E464 8006D864 3204FFFF */   andi      $a0, $s0, 0xffff
/* 6E468 8006D868 3204FFFF */  andi       $a0, $s0, 0xffff
/* 6E46C 8006D86C 0C01AD92 */  jal        func_8006B648
/* 6E470 8006D870 00002825 */   or        $a1, $zero, $zero
.L8006D874:
/* 6E474 8006D874 8FBF001C */  lw         $ra, 0x1c($sp)
/* 6E478 8006D878 8FB00018 */  lw         $s0, 0x18($sp)
/* 6E47C 8006D87C 03E00008 */  jr         $ra
/* 6E480 8006D880 27BD0020 */   addiu     $sp, $sp, 0x20
