glabel func_8002A2B0
/* 2AEB0 8002A2B0 3086FFFF */  andi       $a2, $a0, 0xffff
/* 2AEB4 8002A2B4 00067080 */  sll        $t6, $a2, 2
/* 2AEB8 8002A2B8 01C67023 */  subu       $t6, $t6, $a2
/* 2AEBC 8002A2BC 000E7080 */  sll        $t6, $t6, 2
/* 2AEC0 8002A2C0 01C67021 */  addu       $t6, $t6, $a2
/* 2AEC4 8002A2C4 000E7080 */  sll        $t6, $t6, 2
/* 2AEC8 8002A2C8 01C67023 */  subu       $t6, $t6, $a2
/* 2AECC 8002A2CC 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 2AED0 8002A2D0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2AED4 8002A2D4 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 2AED8 8002A2D8 000E70C0 */  sll        $t6, $t6, 3
/* 2AEDC 8002A2DC AFA40020 */  sw         $a0, 0x20($sp)
/* 2AEE0 8002A2E0 01CF1821 */  addu       $v1, $t6, $t7
/* 2AEE4 8002A2E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2AEE8 8002A2E8 8C6400F8 */  lw         $a0, 0xf8($v1)
/* 2AEEC 8002A2EC AFA50024 */  sw         $a1, 0x24($sp)
/* 2AEF0 8002A2F0 0C00A824 */  jal        func_8002A090
/* 2AEF4 8002A2F4 AFA3001C */   sw        $v1, 0x1c($sp)
/* 2AEF8 8002A2F8 8FA3001C */  lw         $v1, 0x1c($sp)
/* 2AEFC 8002A2FC 8FA50024 */  lw         $a1, 0x24($sp)
/* 2AF00 8002A300 8C6400FC */  lw         $a0, 0xfc($v1)
/* 2AF04 8002A304 0C00A824 */  jal        func_8002A090
/* 2AF08 8002A308 AC6200F8 */   sw        $v0, 0xf8($v1)
/* 2AF0C 8002A30C 8FA3001C */  lw         $v1, 0x1c($sp)
/* 2AF10 8002A310 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2AF14 8002A314 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2AF18 8002A318 03E00008 */  jr         $ra
/* 2AF1C 8002A31C AC6200FC */   sw        $v0, 0xfc($v1)
