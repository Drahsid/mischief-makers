glabel func_8006D884
/* 6E484 8006D884 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6E488 8006D888 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6E48C 8006D88C AFA40018 */  sw         $a0, 0x18($sp)
/* 6E490 8006D890 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6E494 8006D894 01C02025 */  or         $a0, $t6, $zero
/* 6E498 8006D898 0C01B22E */  jal        func_8006C8B8
/* 6E49C 8006D89C A7AE001A */   sh        $t6, 0x1a($sp)
/* 6E4A0 8006D8A0 97A4001A */  lhu        $a0, 0x1a($sp)
/* 6E4A4 8006D8A4 14400017 */  bnez       $v0, .L8006D904
/* 6E4A8 8006D8A8 00047880 */   sll       $t7, $a0, 2
/* 6E4AC 8006D8AC 01E47823 */  subu       $t7, $t7, $a0
/* 6E4B0 8006D8B0 000F7880 */  sll        $t7, $t7, 2
/* 6E4B4 8006D8B4 01E47821 */  addu       $t7, $t7, $a0
/* 6E4B8 8006D8B8 000F7880 */  sll        $t7, $t7, 2
/* 6E4BC 8006D8BC 01E47823 */  subu       $t7, $t7, $a0
/* 6E4C0 8006D8C0 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 6E4C4 8006D8C4 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 6E4C8 8006D8C8 000F78C0 */  sll        $t7, $t7, 3
/* 6E4CC 8006D8CC 01F81021 */  addu       $v0, $t7, $t8
/* 6E4D0 8006D8D0 944300D0 */  lhu        $v1, 0xd0($v0)
/* 6E4D4 8006D8D4 24010090 */  addiu      $at, $zero, 0x90
/* 6E4D8 8006D8D8 14610008 */  bne        $v1, $at, .L8006D8FC
/* 6E4DC 8006D8DC 24790001 */   addiu     $t9, $v1, 1
/* 6E4E0 8006D8E0 3C013F80 */  lui        $at, 0x3f80
/* 6E4E4 8006D8E4 44812000 */  mtc1       $at, $f4
/* 6E4E8 8006D8E8 44803000 */  mtc1       $zero, $f6
/* 6E4EC 8006D8EC A45900D0 */  sh         $t9, 0xd0($v0)
/* 6E4F0 8006D8F0 A44000E6 */  sh         $zero, 0xe6($v0)
/* 6E4F4 8006D8F4 E4440118 */  swc1       $f4, 0x118($v0)
/* 6E4F8 8006D8F8 E446011C */  swc1       $f6, 0x11c($v0)
.L8006D8FC:
/* 6E4FC 8006D8FC 0C01A7C4 */  jal        func_80069F10
/* 6E500 8006D900 00000000 */   nop
.L8006D904:
/* 6E504 8006D904 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6E508 8006D908 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6E50C 8006D90C 03E00008 */  jr         $ra
/* 6E510 8006D910 00000000 */   nop
