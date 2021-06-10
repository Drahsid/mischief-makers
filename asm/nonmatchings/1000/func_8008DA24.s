glabel func_8008DA24
/* 8E624 8008DA24 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8E628 8008DA28 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8E62C 8008DA2C AFA40018 */  sw         $a0, 0x18($sp)
/* 8E630 8008DA30 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8E634 8008DA34 0C023520 */  jal        func_8008D480
/* 8E638 8008DA38 01C02025 */   or        $a0, $t6, $zero
/* 8E63C 8008DA3C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8E640 8008DA40 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8E644 8008DA44 03E00008 */  jr         $ra
/* 8E648 8008DA48 00000000 */   nop
