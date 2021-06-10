glabel func_8002A1C8
/* 2ADC8 8002A1C8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2ADCC 8002A1CC AFA40018 */  sw         $a0, 0x18($sp)
/* 2ADD0 8002A1D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2ADD4 8002A1D4 97A4001A */  lhu        $a0, 0x1a($sp)
/* 2ADD8 8002A1D8 0C00A846 */  jal        func_8002A118
/* 2ADDC 8002A1DC AFA5001C */   sw        $a1, 0x1c($sp)
/* 2ADE0 8002A1E0 97A4001A */  lhu        $a0, 0x1a($sp)
/* 2ADE4 8002A1E4 8FA5001C */  lw         $a1, 0x1c($sp)
/* 2ADE8 8002A1E8 0C00A85C */  jal        func_8002A170
/* 2ADEC 8002A1EC 00000000 */   nop
/* 2ADF0 8002A1F0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2ADF4 8002A1F4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2ADF8 8002A1F8 03E00008 */  jr         $ra
/* 2ADFC 8002A1FC 00000000 */   nop
