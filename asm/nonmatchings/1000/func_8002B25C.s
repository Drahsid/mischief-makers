glabel func_8002B25C
/* 2BE5C 8002B25C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2BE60 8002B260 000EC080 */  sll        $t8, $t6, 2
/* 2BE64 8002B264 030EC023 */  subu       $t8, $t8, $t6
/* 2BE68 8002B268 0018C080 */  sll        $t8, $t8, 2
/* 2BE6C 8002B26C 030EC021 */  addu       $t8, $t8, $t6
/* 2BE70 8002B270 0018C080 */  sll        $t8, $t8, 2
/* 2BE74 8002B274 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2BE78 8002B278 030EC023 */  subu       $t8, $t8, $t6
/* 2BE7C 8002B27C 3C19800F */  lui        $t9, %hi(D_800EF510)
/* 2BE80 8002B280 00053400 */  sll        $a2, $a1, 0x10
/* 2BE84 8002B284 2739F510 */  addiu      $t9, $t9, %lo(D_800EF510)
/* 2BE88 8002B288 0018C0C0 */  sll        $t8, $t8, 3
/* 2BE8C 8002B28C AFA50024 */  sw         $a1, 0x24($sp)
/* 2BE90 8002B290 03191821 */  addu       $v1, $t8, $t9
/* 2BE94 8002B294 00067C03 */  sra        $t7, $a2, 0x10
/* 2BE98 8002B298 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2BE9C 8002B29C AFA40020 */  sw         $a0, 0x20($sp)
/* 2BEA0 8002B2A0 9065009C */  lbu        $a1, 0x9c($v1)
/* 2BEA4 8002B2A4 01C02025 */  or         $a0, $t6, $zero
/* 2BEA8 8002B2A8 01E03025 */  or         $a2, $t7, $zero
/* 2BEAC 8002B2AC 0C00AC04 */  jal        func_8002B010
/* 2BEB0 8002B2B0 AFA3001C */   sw        $v1, 0x1c($sp)
/* 2BEB4 8002B2B4 8FA3001C */  lw         $v1, 0x1c($sp)
/* 2BEB8 8002B2B8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2BEBC 8002B2BC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2BEC0 8002B2C0 A062009C */  sb         $v0, 0x9c($v1)
/* 2BEC4 8002B2C4 A062009D */  sb         $v0, 0x9d($v1)
/* 2BEC8 8002B2C8 03E00008 */  jr         $ra
/* 2BECC 8002B2CC A062009E */   sb        $v0, 0x9e($v1)
