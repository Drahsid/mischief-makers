glabel func_8002A4C4
/* 2B0C4 8002A4C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2B0C8 8002A4C8 AFA40018 */  sw         $a0, 0x18($sp)
/* 2B0CC 8002A4CC AFBF0014 */  sw         $ra, 0x14($sp)
/* 2B0D0 8002A4D0 97A4001A */  lhu        $a0, 0x1a($sp)
/* 2B0D4 8002A4D4 0C00A901 */  jal        func_8002A404
/* 2B0D8 8002A4D8 AFA60020 */   sw        $a2, 0x20($sp)
/* 2B0DC 8002A4DC 97A4001A */  lhu        $a0, 0x1a($sp)
/* 2B0E0 8002A4E0 8FA50020 */  lw         $a1, 0x20($sp)
/* 2B0E4 8002A4E4 0C00A919 */  jal        func_8002A464
/* 2B0E8 8002A4E8 00000000 */   nop
/* 2B0EC 8002A4EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2B0F0 8002A4F0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2B0F4 8002A4F4 03E00008 */  jr         $ra
/* 2B0F8 8002A4F8 00000000 */   nop
