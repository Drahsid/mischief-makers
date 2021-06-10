glabel func_800852CC
/* 85ECC 800852CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 85ED0 800852D0 AFA40018 */  sw         $a0, 0x18($sp)
/* 85ED4 800852D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 85ED8 800852D8 97A4001A */  lhu        $a0, 0x1a($sp)
/* 85EDC 800852DC 0C021442 */  jal        func_80085108
/* 85EE0 800852E0 00000000 */   nop
/* 85EE4 800852E4 97A4001A */  lhu        $a0, 0x1a($sp)
/* 85EE8 800852E8 0C021465 */  jal        func_80085194
/* 85EEC 800852EC 00000000 */   nop
/* 85EF0 800852F0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 85EF4 800852F4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 85EF8 800852F8 03E00008 */  jr         $ra
/* 85EFC 800852FC 00000000 */   nop
