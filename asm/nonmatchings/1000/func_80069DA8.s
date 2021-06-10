glabel func_80069DA8
/* 6A9A8 80069DA8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6A9AC 80069DAC AFA40018 */  sw         $a0, 0x18($sp)
/* 6A9B0 80069DB0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6A9B4 80069DB4 97A4001A */  lhu        $a0, 0x1a($sp)
/* 6A9B8 80069DB8 0C01A6FD */  jal        func_80069BF4
/* 6A9BC 80069DBC 00000000 */   nop
/* 6A9C0 80069DC0 97AE001A */  lhu        $t6, 0x1a($sp)
/* 6A9C4 80069DC4 3C18800F */  lui        $t8, 0x800f
/* 6A9C8 80069DC8 000E7880 */  sll        $t7, $t6, 2
/* 6A9CC 80069DCC 01EE7823 */  subu       $t7, $t7, $t6
/* 6A9D0 80069DD0 000F7880 */  sll        $t7, $t7, 2
/* 6A9D4 80069DD4 01EE7821 */  addu       $t7, $t7, $t6
/* 6A9D8 80069DD8 000F7880 */  sll        $t7, $t7, 2
/* 6A9DC 80069DDC 01EE7823 */  subu       $t7, $t7, $t6
/* 6A9E0 80069DE0 000F78C0 */  sll        $t7, $t7, 3
/* 6A9E4 80069DE4 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 6A9E8 80069DE8 01F81021 */  addu       $v0, $t7, $t8
/* 6A9EC 80069DEC 8C4300F0 */  lw         $v1, 0xf0($v0)
/* 6A9F0 80069DF0 3C01FFF9 */  lui        $at, 0xfff9
/* 6A9F4 80069DF4 34218001 */  ori        $at, $at, 0x8001
/* 6A9F8 80069DF8 0061082A */  slt        $at, $v1, $at
/* 6A9FC 80069DFC 14200002 */  bnez       $at, .L80069E08
/* 6AA00 80069E00 2479BC00 */   addiu     $t9, $v1, -0x4400
/* 6AA04 80069E04 AC5900F0 */  sw         $t9, 0xf0($v0)
.L80069E08:
/* 6AA08 80069E08 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6AA0C 80069E0C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6AA10 80069E10 03E00008 */  jr         $ra
/* 6AA14 80069E14 00000000 */   nop
