glabel func_8006CF20
/* 6DB20 8006CF20 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 6DB24 8006CF24 AFB00018 */  sw         $s0, 0x18($sp)
/* 6DB28 8006CF28 3090FFFF */  andi       $s0, $a0, 0xffff
/* 6DB2C 8006CF2C 00107080 */  sll        $t6, $s0, 2
/* 6DB30 8006CF30 01D07023 */  subu       $t6, $t6, $s0
/* 6DB34 8006CF34 000E7080 */  sll        $t6, $t6, 2
/* 6DB38 8006CF38 01D07021 */  addu       $t6, $t6, $s0
/* 6DB3C 8006CF3C 000E7080 */  sll        $t6, $t6, 2
/* 6DB40 8006CF40 01D07023 */  subu       $t6, $t6, $s0
/* 6DB44 8006CF44 3C0F800F */  lui        $t7, %hi(gActors)
/* 6DB48 8006CF48 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 6DB4C 8006CF4C 000E70C0 */  sll        $t6, $t6, 3
/* 6DB50 8006CF50 01CF1021 */  addu       $v0, $t6, $t7
/* 6DB54 8006CF54 945800D0 */  lhu        $t8, 0xd0($v0)
/* 6DB58 8006CF58 AFBF001C */  sw         $ra, 0x1c($sp)
/* 6DB5C 8006CF5C 1700000C */  bnez       $t8, .L8006CF90
/* 6DB60 8006CF60 AFA40028 */   sw        $a0, 0x28($sp)
/* 6DB64 8006CF64 24196800 */  addiu      $t9, $zero, 0x6800
/* 6DB68 8006CF68 A4590084 */  sh         $t9, 0x84($v0)
/* 6DB6C 8006CF6C 3204FFFF */  andi       $a0, $s0, 0xffff
/* 6DB70 8006CF70 0C01B357 */  jal        func_8006CD5C
/* 6DB74 8006CF74 AFA20024 */   sw        $v0, 0x24($sp)
/* 6DB78 8006CF78 0C00D637 */  jal        func_800358DC
/* 6DB7C 8006CF7C 3204FFFF */   andi      $a0, $s0, 0xffff
/* 6DB80 8006CF80 0C01B31C */  jal        func_8006CC70
/* 6DB84 8006CF84 3204FFFF */   andi      $a0, $s0, 0xffff
/* 6DB88 8006CF88 10000005 */  b          .L8006CFA0
/* 6DB8C 8006CF8C 8FA80024 */   lw        $t0, 0x24($sp)
.L8006CF90:
/* 6DB90 8006CF90 3204FFFF */  andi       $a0, $s0, 0xffff
/* 6DB94 8006CF94 0C00D688 */  jal        func_80035A20
/* 6DB98 8006CF98 AFA20024 */   sw        $v0, 0x24($sp)
/* 6DB9C 8006CF9C 8FA80024 */  lw         $t0, 0x24($sp)
.L8006CFA0:
/* 6DBA0 8006CFA0 00000000 */  nop
/* 6DBA4 8006CFA4 8D090080 */  lw         $t1, 0x80($t0)
/* 6DBA8 8006CFA8 00000000 */  nop
/* 6DBAC 8006CFAC 11200005 */  beqz       $t1, .L8006CFC4
/* 6DBB0 8006CFB0 00000000 */   nop
/* 6DBB4 8006CFB4 0C019AF3 */  jal        func_80066BCC
/* 6DBB8 8006CFB8 3204FFFF */   andi      $a0, $s0, 0xffff
/* 6DBBC 8006CFBC 10000004 */  b          .L8006CFD0
/* 6DBC0 8006CFC0 8FBF001C */   lw        $ra, 0x1c($sp)
.L8006CFC4:
/* 6DBC4 8006CFC4 0C01B2E2 */  jal        func_8006CB88
/* 6DBC8 8006CFC8 3204FFFF */   andi      $a0, $s0, 0xffff
/* 6DBCC 8006CFCC 8FBF001C */  lw         $ra, 0x1c($sp)
.L8006CFD0:
/* 6DBD0 8006CFD0 8FB00018 */  lw         $s0, 0x18($sp)
/* 6DBD4 8006CFD4 03E00008 */  jr         $ra
/* 6DBD8 8006CFD8 27BD0028 */   addiu     $sp, $sp, 0x28
