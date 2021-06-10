glabel func_8005DC38
/* 5E838 8005DC38 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E83C 8005DC3C AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E840 8005DC40 3C0E801A */  lui        $t6, %hi(D_801A6864)
/* 5E844 8005DC44 8DD96864 */  lw         $t9, %lo(D_801A6864)($t6)
/* 5E848 8005DC48 00002025 */  or         $a0, $zero, $zero
/* 5E84C 8005DC4C 0320F809 */  jalr       $t9
/* 5E850 8005DC50 00002825 */   or        $a1, $zero, $zero
/* 5E854 8005DC54 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E858 8005DC58 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E85C 8005DC5C 03E00008 */  jr         $ra
/* 5E860 8005DC60 00000000 */   nop
