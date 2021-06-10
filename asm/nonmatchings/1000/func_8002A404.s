glabel func_8002A404
/* 2B004 8002A404 3087FFFF */  andi       $a3, $a0, 0xffff
/* 2B008 8002A408 00077080 */  sll        $t6, $a3, 2
/* 2B00C 8002A40C 01C77023 */  subu       $t6, $t6, $a3
/* 2B010 8002A410 000E7080 */  sll        $t6, $t6, 2
/* 2B014 8002A414 01C77021 */  addu       $t6, $t6, $a3
/* 2B018 8002A418 000E7080 */  sll        $t6, $t6, 2
/* 2B01C 8002A41C 01C77023 */  subu       $t6, $t6, $a3
/* 2B020 8002A420 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 2B024 8002A424 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2B028 8002A428 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 2B02C 8002A42C 000E70C0 */  sll        $t6, $t6, 3
/* 2B030 8002A430 AFA40020 */  sw         $a0, 0x20($sp)
/* 2B034 8002A434 01CF1821 */  addu       $v1, $t6, $t7
/* 2B038 8002A438 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2B03C 8002A43C 00A03025 */  or         $a2, $a1, $zero
/* 2B040 8002A440 8C6400EC */  lw         $a0, 0xec($v1)
/* 2B044 8002A444 00002825 */  or         $a1, $zero, $zero
/* 2B048 8002A448 0C00A607 */  jal        func_8002981C
/* 2B04C 8002A44C AFA3001C */   sw        $v1, 0x1c($sp)
/* 2B050 8002A450 8FA3001C */  lw         $v1, 0x1c($sp)
/* 2B054 8002A454 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2B058 8002A458 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2B05C 8002A45C 03E00008 */  jr         $ra
/* 2B060 8002A460 AC6200EC */   sw        $v0, 0xec($v1)
