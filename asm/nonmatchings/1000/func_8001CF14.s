glabel func_8001CF14
/* 1DB14 8001CF14 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1DB18 8001CF18 AFBF002C */  sw         $ra, 0x2c($sp)
/* 1DB1C 8001CF1C AFB00014 */  sw         $s0, 0x14($sp)
/* 1DB20 8001CF20 3090FFFF */  andi       $s0, $a0, 0xffff
/* 1DB24 8001CF24 AFB50028 */  sw         $s5, 0x28($sp)
/* 1DB28 8001CF28 AFB40024 */  sw         $s4, 0x24($sp)
/* 1DB2C 8001CF2C AFB30020 */  sw         $s3, 0x20($sp)
/* 1DB30 8001CF30 AFB2001C */  sw         $s2, 0x1c($sp)
/* 1DB34 8001CF34 AFB10018 */  sw         $s1, 0x18($sp)
/* 1DB38 8001CF38 0C00730D */  jal        func_8001CC34
/* 1DB3C 8001CF3C AFA40040 */   sw        $a0, 0x40($sp)
/* 1DB40 8001CF40 3052FFFF */  andi       $s2, $v0, 0xffff
/* 1DB44 8001CF44 00008825 */  or         $s1, $zero, $zero
/* 1DB48 8001CF48 27B50038 */  addiu      $s5, $sp, 0x38
/* 1DB4C 8001CF4C 27B4003A */  addiu      $s4, $sp, 0x3a
/* 1DB50 8001CF50 27B3003C */  addiu      $s3, $sp, 0x3c
.L8001CF54:
/* 1DB54 8001CF54 0212082A */  slt        $at, $s0, $s2
/* 1DB58 8001CF58 10200017 */  beqz       $at, .L8001CFB8
/* 1DB5C 8001CF5C 3204FFFF */   andi      $a0, $s0, 0xffff
/* 1DB60 8001CF60 02602825 */  or         $a1, $s3, $zero
/* 1DB64 8001CF64 02803025 */  or         $a2, $s4, $zero
/* 1DB68 8001CF68 0C006C1E */  jal        func_8001B078
/* 1DB6C 8001CF6C 02A03825 */   or        $a3, $s5, $zero
/* 1DB70 8001CF70 97AE003C */  lhu        $t6, 0x3c($sp)
/* 1DB74 8001CF74 3224FFFF */  andi       $a0, $s1, 0xffff
/* 1DB78 8001CF78 29C10006 */  slti       $at, $t6, 6
/* 1DB7C 8001CF7C 14200004 */  bnez       $at, .L8001CF90
/* 1DB80 8001CF80 00000000 */   nop
/* 1DB84 8001CF84 26100001 */  addiu      $s0, $s0, 1
/* 1DB88 8001CF88 320FFFFF */  andi       $t7, $s0, 0xffff
/* 1DB8C 8001CF8C 01E08025 */  or         $s0, $t7, $zero
.L8001CF90:
/* 1DB90 8001CF90 0C00722C */  jal        func_8001C8B0
/* 1DB94 8001CF94 3205FFFF */   andi      $a1, $s0, 0xffff
/* 1DB98 8001CF98 26310001 */  addiu      $s1, $s1, 1
/* 1DB9C 8001CF9C 3239FFFF */  andi       $t9, $s1, 0xffff
/* 1DBA0 8001CFA0 26100001 */  addiu      $s0, $s0, 1
/* 1DBA4 8001CFA4 2B210006 */  slti       $at, $t9, 6
/* 1DBA8 8001CFA8 3218FFFF */  andi       $t8, $s0, 0xffff
/* 1DBAC 8001CFAC 03208825 */  or         $s1, $t9, $zero
/* 1DBB0 8001CFB0 1420FFE8 */  bnez       $at, .L8001CF54
/* 1DBB4 8001CFB4 03008025 */   or        $s0, $t8, $zero
.L8001CFB8:
/* 1DBB8 8001CFB8 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1DBBC 8001CFBC 8FB00014 */  lw         $s0, 0x14($sp)
/* 1DBC0 8001CFC0 8FB10018 */  lw         $s1, 0x18($sp)
/* 1DBC4 8001CFC4 8FB2001C */  lw         $s2, 0x1c($sp)
/* 1DBC8 8001CFC8 8FB30020 */  lw         $s3, 0x20($sp)
/* 1DBCC 8001CFCC 8FB40024 */  lw         $s4, 0x24($sp)
/* 1DBD0 8001CFD0 8FB50028 */  lw         $s5, 0x28($sp)
/* 1DBD4 8001CFD4 03E00008 */  jr         $ra
/* 1DBD8 8001CFD8 27BD0040 */   addiu     $sp, $sp, 0x40
