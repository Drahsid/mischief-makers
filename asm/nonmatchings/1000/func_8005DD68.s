glabel func_8005DD68
/* 5E968 8005DD68 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E96C 8005DD6C AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E970 8005DD70 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E974 8005DD74 3C0F801A */  lui        $t7, %hi(D_801A687C)
/* 5E978 8005DD78 8DF9687C */  lw         $t9, %lo(D_801A687C)($t7)
/* 5E97C 8005DD7C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E980 8005DD80 01C02025 */  or         $a0, $t6, $zero
/* 5E984 8005DD84 0320F809 */  jalr       $t9
/* 5E988 8005DD88 00002825 */   or        $a1, $zero, $zero
/* 5E98C 8005DD8C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E990 8005DD90 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E994 8005DD94 03E00008 */  jr         $ra
/* 5E998 8005DD98 00000000 */   nop
