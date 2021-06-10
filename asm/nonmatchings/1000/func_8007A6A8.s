glabel func_8007A6A8
/* 7B2A8 8007A6A8 3087FFFF */  andi       $a3, $a0, 0xffff
/* 7B2AC 8007A6AC 00077080 */  sll        $t6, $a3, 2
/* 7B2B0 8007A6B0 01C77023 */  subu       $t6, $t6, $a3
/* 7B2B4 8007A6B4 000E7080 */  sll        $t6, $t6, 2
/* 7B2B8 8007A6B8 01C77021 */  addu       $t6, $t6, $a3
/* 7B2BC 8007A6BC 000E7080 */  sll        $t6, $t6, 2
/* 7B2C0 8007A6C0 01C77023 */  subu       $t6, $t6, $a3
/* 7B2C4 8007A6C4 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 7B2C8 8007A6C8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7B2CC 8007A6CC 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 7B2D0 8007A6D0 000E70C0 */  sll        $t6, $t6, 3
/* 7B2D4 8007A6D4 AFA40020 */  sw         $a0, 0x20($sp)
/* 7B2D8 8007A6D8 01CF1821 */  addu       $v1, $t6, $t7
/* 7B2DC 8007A6DC AFBF0014 */  sw         $ra, 0x14($sp)
/* 7B2E0 8007A6E0 8C6400EC */  lw         $a0, 0xec($v1)
/* 7B2E4 8007A6E4 AFA3001C */  sw         $v1, 0x1c($sp)
/* 7B2E8 8007A6E8 00002825 */  or         $a1, $zero, $zero
/* 7B2EC 8007A6EC 0C00A607 */  jal        func_8002981C
/* 7B2F0 8007A6F0 24064000 */   addiu     $a2, $zero, 0x4000
/* 7B2F4 8007A6F4 8FA3001C */  lw         $v1, 0x1c($sp)
/* 7B2F8 8007A6F8 00002825 */  or         $a1, $zero, $zero
/* 7B2FC 8007A6FC 8C6400F0 */  lw         $a0, 0xf0($v1)
/* 7B300 8007A700 24064000 */  addiu      $a2, $zero, 0x4000
/* 7B304 8007A704 0C00A607 */  jal        func_8002981C
/* 7B308 8007A708 AC6200EC */   sw        $v0, 0xec($v1)
/* 7B30C 8007A70C 8FA3001C */  lw         $v1, 0x1c($sp)
/* 7B310 8007A710 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7B314 8007A714 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7B318 8007A718 03E00008 */  jr         $ra
/* 7B31C 8007A71C AC6200F0 */   sw        $v0, 0xf0($v1)
