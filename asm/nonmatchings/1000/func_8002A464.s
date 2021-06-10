glabel func_8002A464
/* 2B064 8002A464 3087FFFF */  andi       $a3, $a0, 0xffff
/* 2B068 8002A468 00077080 */  sll        $t6, $a3, 2
/* 2B06C 8002A46C 01C77023 */  subu       $t6, $t6, $a3
/* 2B070 8002A470 000E7080 */  sll        $t6, $t6, 2
/* 2B074 8002A474 01C77021 */  addu       $t6, $t6, $a3
/* 2B078 8002A478 000E7080 */  sll        $t6, $t6, 2
/* 2B07C 8002A47C 01C77023 */  subu       $t6, $t6, $a3
/* 2B080 8002A480 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 2B084 8002A484 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2B088 8002A488 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 2B08C 8002A48C 000E70C0 */  sll        $t6, $t6, 3
/* 2B090 8002A490 AFA40020 */  sw         $a0, 0x20($sp)
/* 2B094 8002A494 01CF1821 */  addu       $v1, $t6, $t7
/* 2B098 8002A498 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2B09C 8002A49C 00A03025 */  or         $a2, $a1, $zero
/* 2B0A0 8002A4A0 8C6400F0 */  lw         $a0, 0xf0($v1)
/* 2B0A4 8002A4A4 00002825 */  or         $a1, $zero, $zero
/* 2B0A8 8002A4A8 0C00A607 */  jal        func_8002981C
/* 2B0AC 8002A4AC AFA3001C */   sw        $v1, 0x1c($sp)
/* 2B0B0 8002A4B0 8FA3001C */  lw         $v1, 0x1c($sp)
/* 2B0B4 8002A4B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2B0B8 8002A4B8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2B0BC 8002A4BC 03E00008 */  jr         $ra
/* 2B0C0 8002A4C0 AC6200F0 */   sw        $v0, 0xf0($v1)
