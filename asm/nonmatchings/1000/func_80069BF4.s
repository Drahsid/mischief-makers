glabel func_80069BF4
/* 6A7F4 80069BF4 3087FFFF */  andi       $a3, $a0, 0xffff
/* 6A7F8 80069BF8 00077080 */  sll        $t6, $a3, 2
/* 6A7FC 80069BFC 01C77023 */  subu       $t6, $t6, $a3
/* 6A800 80069C00 000E7080 */  sll        $t6, $t6, 2
/* 6A804 80069C04 01C77021 */  addu       $t6, $t6, $a3
/* 6A808 80069C08 000E7080 */  sll        $t6, $t6, 2
/* 6A80C 80069C0C 01C77023 */  subu       $t6, $t6, $a3
/* 6A810 80069C10 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 6A814 80069C14 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6A818 80069C18 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 6A81C 80069C1C 000E70C0 */  sll        $t6, $t6, 3
/* 6A820 80069C20 AFA40020 */  sw         $a0, 0x20($sp)
/* 6A824 80069C24 01CF1821 */  addu       $v1, $t6, $t7
/* 6A828 80069C28 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6A82C 80069C2C 8C6400EC */  lw         $a0, 0xec($v1)
/* 6A830 80069C30 AFA3001C */  sw         $v1, 0x1c($sp)
/* 6A834 80069C34 00002825 */  or         $a1, $zero, $zero
/* 6A838 80069C38 0C00A607 */  jal        func_8002981C
/* 6A83C 80069C3C 24060400 */   addiu     $a2, $zero, 0x400
/* 6A840 80069C40 8FA3001C */  lw         $v1, 0x1c($sp)
/* 6A844 80069C44 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6A848 80069C48 27BD0020 */  addiu      $sp, $sp, 0x20
/* 6A84C 80069C4C 03E00008 */  jr         $ra
/* 6A850 80069C50 AC6200EC */   sw        $v0, 0xec($v1)
