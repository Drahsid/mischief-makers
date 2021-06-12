glabel func_80030B84
/* 31784 80030B84 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 31788 80030B88 AFA40018 */  sw         $a0, 0x18($sp)
/* 3178C 80030B8C AFBF0014 */  sw         $ra, 0x14($sp)
/* 31790 80030B90 97A4001A */  lhu        $a0, 0x1a($sp)
/* 31794 80030B94 0C00C29D */  jal        func_80030A74
/* 31798 80030B98 00000000 */   nop
/* 3179C 80030B9C 97A4001A */  lhu        $a0, 0x1a($sp)
/* 317A0 80030BA0 0C00C2C3 */  jal        func_80030B0C
/* 317A4 80030BA4 00000000 */   nop
/* 317A8 80030BA8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 317AC 80030BAC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 317B0 80030BB0 03E00008 */  jr         $ra
/* 317B4 80030BB4 00000000 */   nop
