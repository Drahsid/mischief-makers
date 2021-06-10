glabel func_8009CED8
/* 9DAD8 8009CED8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9DADC 8009CEDC AFBF0014 */  sw         $ra, 0x14($sp)
/* 9DAE0 8009CEE0 AFA40030 */  sw         $a0, 0x30($sp)
/* 9DAE4 8009CEE4 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9DAE8 8009CEE8 24010001 */  addiu      $at, $zero, 1
/* 9DAEC 8009CEEC 8DCF002C */  lw         $t7, 0x2c($t6)
/* 9DAF0 8009CEF0 00000000 */  nop
/* 9DAF4 8009CEF4 15E10005 */  bne        $t7, $at, .L8009CF0C
/* 9DAF8 8009CEF8 00000000 */   nop
/* 9DAFC 8009CEFC 8DD80018 */  lw         $t8, 0x18($t6)
/* 9DB00 8009CF00 00000000 */  nop
/* 9DB04 8009CF04 17000003 */  bnez       $t8, .L8009CF14
/* 9DB08 8009CF08 00000000 */   nop
.L8009CF0C:
/* 9DB0C 8009CF0C 10000016 */  b          .L8009CF68
/* 9DB10 8009CF10 00000000 */   nop
.L8009CF14:
/* 9DB14 8009CF14 8FB90030 */  lw         $t9, 0x30($sp)
/* 9DB18 8009CF18 27A5001C */  addiu      $a1, $sp, 0x1c
/* 9DB1C 8009CF1C 8F240018 */  lw         $a0, 0x18($t9)
/* 9DB20 8009CF20 0C027C6B */  jal        func_8009F1AC
/* 9DB24 8009CF24 00000000 */   nop
/* 9DB28 8009CF28 14400003 */  bnez       $v0, .L8009CF38
/* 9DB2C 8009CF2C 00000000 */   nop
/* 9DB30 8009CF30 1000000D */  b          .L8009CF68
/* 9DB34 8009CF34 00000000 */   nop
.L8009CF38:
/* 9DB38 8009CF38 A7A00020 */  sh         $zero, 0x20($sp)
/* 9DB3C 8009CF3C 8FA80030 */  lw         $t0, 0x30($sp)
/* 9DB40 8009CF40 8FAA001C */  lw         $t2, 0x1c($sp)
/* 9DB44 8009CF44 8D090024 */  lw         $t1, 0x24($t0)
/* 9DB48 8009CF48 27A50020 */  addiu      $a1, $sp, 0x20
/* 9DB4C 8009CF4C 012A0019 */  multu      $t1, $t2
/* 9DB50 8009CF50 25040048 */  addiu      $a0, $t0, 0x48
/* 9DB54 8009CF54 00003012 */  mflo       $a2
/* 9DB58 8009CF58 0C02B620 */  jal        func_800AD880
/* 9DB5C 8009CF5C 00000000 */   nop
/* 9DB60 8009CF60 10000001 */  b          .L8009CF68
/* 9DB64 8009CF64 00000000 */   nop
.L8009CF68:
/* 9DB68 8009CF68 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9DB6C 8009CF6C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 9DB70 8009CF70 03E00008 */  jr         $ra
/* 9DB74 8009CF74 00000000 */   nop
