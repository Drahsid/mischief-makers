glabel func_80042E84
/* 43A84 80042E84 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 43A88 80042E88 AFA40020 */  sw         $a0, 0x20($sp)
/* 43A8C 80042E8C AFA50024 */  sw         $a1, 0x24($sp)
/* 43A90 80042E90 AFA60028 */  sw         $a2, 0x28($sp)
/* 43A94 80042E94 87AF002A */  lh         $t7, 0x2a($sp)
/* 43A98 80042E98 87AE0026 */  lh         $t6, 0x26($sp)
/* 43A9C 80042E9C AFA7002C */  sw         $a3, 0x2c($sp)
/* 43AA0 80042EA0 87A70022 */  lh         $a3, 0x22($sp)
/* 43AA4 80042EA4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 43AA8 80042EA8 3C04803D */  lui        $a0, 0x803d
/* 43AAC 80042EAC 3484A200 */  ori        $a0, $a0, 0xa200
/* 43AB0 80042EB0 240600FF */  addiu      $a2, $zero, 0xff
/* 43AB4 80042EB4 3C058038 */  lui        $a1, 0x8038
/* 43AB8 80042EB8 AFAF0014 */  sw         $t7, 0x14($sp)
/* 43ABC 80042EBC 0C00AE0B */  jal        func_8002B82C
/* 43AC0 80042EC0 AFAE0010 */   sw        $t6, 0x10($sp)
/* 43AC4 80042EC4 87B80032 */  lh         $t8, 0x32($sp)
/* 43AC8 80042EC8 87B90036 */  lh         $t9, 0x36($sp)
/* 43ACC 80042ECC 3C04803D */  lui        $a0, 0x803d
/* 43AD0 80042ED0 3C058038 */  lui        $a1, 0x8038
/* 43AD4 80042ED4 87A7002E */  lh         $a3, 0x2e($sp)
/* 43AD8 80042ED8 34A50200 */  ori        $a1, $a1, 0x200
/* 43ADC 80042EDC 3484A400 */  ori        $a0, $a0, 0xa400
/* 43AE0 80042EE0 240600FF */  addiu      $a2, $zero, 0xff
/* 43AE4 80042EE4 AFB80010 */  sw         $t8, 0x10($sp)
/* 43AE8 80042EE8 0C00AE0B */  jal        func_8002B82C
/* 43AEC 80042EEC AFB90014 */   sw        $t9, 0x14($sp)
/* 43AF0 80042EF0 87A8003E */  lh         $t0, 0x3e($sp)
/* 43AF4 80042EF4 87A90042 */  lh         $t1, 0x42($sp)
/* 43AF8 80042EF8 3C04803D */  lui        $a0, 0x803d
/* 43AFC 80042EFC 3C058038 */  lui        $a1, 0x8038
/* 43B00 80042F00 87A7003A */  lh         $a3, 0x3a($sp)
/* 43B04 80042F04 34A50400 */  ori        $a1, $a1, 0x400
/* 43B08 80042F08 3484A600 */  ori        $a0, $a0, 0xa600
/* 43B0C 80042F0C 240600FF */  addiu      $a2, $zero, 0xff
/* 43B10 80042F10 AFA80010 */  sw         $t0, 0x10($sp)
/* 43B14 80042F14 0C00AE0B */  jal        func_8002B82C
/* 43B18 80042F18 AFA90014 */   sw        $t1, 0x14($sp)
/* 43B1C 80042F1C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 43B20 80042F20 27BD0020 */  addiu      $sp, $sp, 0x20
/* 43B24 80042F24 03E00008 */  jr         $ra
/* 43B28 80042F28 00000000 */   nop
