glabel func_80069B94
/* 6A794 80069B94 3087FFFF */  andi       $a3, $a0, 0xffff
/* 6A798 80069B98 00077080 */  sll        $t6, $a3, 2
/* 6A79C 80069B9C 01C77023 */  subu       $t6, $t6, $a3
/* 6A7A0 80069BA0 000E7080 */  sll        $t6, $t6, 2
/* 6A7A4 80069BA4 01C77021 */  addu       $t6, $t6, $a3
/* 6A7A8 80069BA8 000E7080 */  sll        $t6, $t6, 2
/* 6A7AC 80069BAC 01C77023 */  subu       $t6, $t6, $a3
/* 6A7B0 80069BB0 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 6A7B4 80069BB4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6A7B8 80069BB8 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 6A7BC 80069BBC 000E70C0 */  sll        $t6, $t6, 3
/* 6A7C0 80069BC0 AFA40020 */  sw         $a0, 0x20($sp)
/* 6A7C4 80069BC4 01CF1821 */  addu       $v1, $t6, $t7
/* 6A7C8 80069BC8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6A7CC 80069BCC 8C6400EC */  lw         $a0, 0xec($v1)
/* 6A7D0 80069BD0 AFA3001C */  sw         $v1, 0x1c($sp)
/* 6A7D4 80069BD4 00002825 */  or         $a1, $zero, $zero
/* 6A7D8 80069BD8 0C00A607 */  jal        func_8002981C
/* 6A7DC 80069BDC 24064000 */   addiu     $a2, $zero, 0x4000
/* 6A7E0 80069BE0 8FA3001C */  lw         $v1, 0x1c($sp)
/* 6A7E4 80069BE4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6A7E8 80069BE8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 6A7EC 80069BEC 03E00008 */  jr         $ra
/* 6A7F0 80069BF0 AC6200EC */   sw        $v0, 0xec($v1)
