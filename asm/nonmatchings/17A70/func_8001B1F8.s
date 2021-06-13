glabel func_8001B1F8
/* 1BDF8 8001B1F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1BDFC 8001B1FC AFBF0014 */  sw         $ra, 0x14($sp)
/* 1BE00 8001B200 0C006C0B */  jal        func_8001B02C
/* 1BE04 8001B204 00000000 */   nop
/* 1BE08 8001B208 0C006C68 */  jal        func_8001B1A0
/* 1BE0C 8001B20C 00000000 */   nop
/* 1BE10 8001B210 3C0E8018 */  lui        $t6, %hi(D_8017815C)
/* 1BE14 8001B214 95CE815C */  lhu        $t6, %lo(D_8017815C)($t6)
/* 1BE18 8001B218 3C018018 */  lui        $at, %hi(D_80178160)
/* 1BE1C 8001B21C 3C0F8018 */  lui        $t7, %hi(D_80178156)
/* 1BE20 8001B220 95EF8156 */  lhu        $t7, %lo(D_80178156)($t7)
/* 1BE24 8001B224 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1BE28 8001B228 A42E8160 */  sh         $t6, %lo(D_80178160)($at)
/* 1BE2C 8001B22C 3C018018 */  lui        $at, %hi(D_8017815A)
/* 1BE30 8001B230 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1BE34 8001B234 03E00008 */  jr         $ra
/* 1BE38 8001B238 A42F815A */   sh        $t7, %lo(D_8017815A)($at)
