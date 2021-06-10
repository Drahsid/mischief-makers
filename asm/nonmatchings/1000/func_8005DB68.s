glabel func_8005DB68
/* 5E768 8005DB68 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E76C 8005DB6C AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E770 8005DB70 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E774 8005DB74 3C0F801A */  lui        $t7, %hi(D_801A6854)
/* 5E778 8005DB78 8DF96854 */  lw         $t9, %lo(D_801A6854)($t7)
/* 5E77C 8005DB7C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E780 8005DB80 01C02025 */  or         $a0, $t6, $zero
/* 5E784 8005DB84 0320F809 */  jalr       $t9
/* 5E788 8005DB88 00002825 */   or        $a1, $zero, $zero
/* 5E78C 8005DB8C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E790 8005DB90 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E794 8005DB94 03E00008 */  jr         $ra
/* 5E798 8005DB98 00000000 */   nop
