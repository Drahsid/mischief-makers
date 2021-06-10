glabel func_8009AED0
/* 9BAD0 8009AED0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9BAD4 8009AED4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9BAD8 8009AED8 AFA40020 */  sw         $a0, 0x20($sp)
/* 9BADC 8009AEDC 3C0E8018 */  lui        $t6, %hi(D_801855F0)
/* 9BAE0 8009AEE0 25CE55F0 */  addiu      $t6, $t6, %lo(D_801855F0)
/* 9BAE4 8009AEE4 AFAE001C */  sw         $t6, 0x1c($sp)
/* 9BAE8 8009AEE8 8FA40020 */  lw         $a0, 0x20($sp)
/* 9BAEC 8009AEEC 8FA5001C */  lw         $a1, 0x1c($sp)
/* 9BAF0 8009AEF0 0C02AA84 */  jal        func_800AAA10
/* 9BAF4 8009AEF4 24060040 */   addiu     $a2, $zero, 0x40
/* 9BAF8 8009AEF8 8FAF001C */  lw         $t7, 0x1c($sp)
/* 9BAFC 8009AEFC 8DF80010 */  lw         $t8, 0x10($t7)
/* 9BB00 8009AF00 13000006 */  beqz       $t8, .L8009AF1C
/* 9BB04 8009AF04 00000000 */   nop
/* 9BB08 8009AF08 8FB9001C */  lw         $t9, 0x1c($sp)
/* 9BB0C 8009AF0C 0C026964 */  jal        func_8009A590
/* 9BB10 8009AF10 8F240010 */   lw        $a0, 0x10($t9)
/* 9BB14 8009AF14 8FA8001C */  lw         $t0, 0x1c($sp)
/* 9BB18 8009AF18 AD020010 */  sw         $v0, 0x10($t0)
.L8009AF1C:
/* 9BB1C 8009AF1C 8FA9001C */  lw         $t1, 0x1c($sp)
/* 9BB20 8009AF20 8D2A0018 */  lw         $t2, 0x18($t1)
/* 9BB24 8009AF24 11400006 */  beqz       $t2, .L8009AF40
/* 9BB28 8009AF28 00000000 */   nop
/* 9BB2C 8009AF2C 8FAB001C */  lw         $t3, 0x1c($sp)
/* 9BB30 8009AF30 0C026964 */  jal        func_8009A590
/* 9BB34 8009AF34 8D640018 */   lw        $a0, 0x18($t3)
/* 9BB38 8009AF38 8FAC001C */  lw         $t4, 0x1c($sp)
/* 9BB3C 8009AF3C AD820018 */  sw         $v0, 0x18($t4)
.L8009AF40:
/* 9BB40 8009AF40 8FAD001C */  lw         $t5, 0x1c($sp)
/* 9BB44 8009AF44 8DAE0020 */  lw         $t6, 0x20($t5)
/* 9BB48 8009AF48 11C00006 */  beqz       $t6, .L8009AF64
/* 9BB4C 8009AF4C 00000000 */   nop
/* 9BB50 8009AF50 8FAF001C */  lw         $t7, 0x1c($sp)
/* 9BB54 8009AF54 0C026964 */  jal        func_8009A590
/* 9BB58 8009AF58 8DE40020 */   lw        $a0, 0x20($t7)
/* 9BB5C 8009AF5C 8FB8001C */  lw         $t8, 0x1c($sp)
/* 9BB60 8009AF60 AF020020 */  sw         $v0, 0x20($t8)
.L8009AF64:
/* 9BB64 8009AF64 8FB9001C */  lw         $t9, 0x1c($sp)
/* 9BB68 8009AF68 8F280028 */  lw         $t0, 0x28($t9)
/* 9BB6C 8009AF6C 11000006 */  beqz       $t0, .L8009AF88
/* 9BB70 8009AF70 00000000 */   nop
/* 9BB74 8009AF74 8FA9001C */  lw         $t1, 0x1c($sp)
/* 9BB78 8009AF78 0C026964 */  jal        func_8009A590
/* 9BB7C 8009AF7C 8D240028 */   lw        $a0, 0x28($t1)
/* 9BB80 8009AF80 8FAA001C */  lw         $t2, 0x1c($sp)
/* 9BB84 8009AF84 AD420028 */  sw         $v0, 0x28($t2)
.L8009AF88:
/* 9BB88 8009AF88 8FAB001C */  lw         $t3, 0x1c($sp)
/* 9BB8C 8009AF8C 8D6C002C */  lw         $t4, 0x2c($t3)
/* 9BB90 8009AF90 11800006 */  beqz       $t4, .L8009AFAC
/* 9BB94 8009AF94 00000000 */   nop
/* 9BB98 8009AF98 8FAD001C */  lw         $t5, 0x1c($sp)
/* 9BB9C 8009AF9C 0C026964 */  jal        func_8009A590
/* 9BBA0 8009AFA0 8DA4002C */   lw        $a0, 0x2c($t5)
/* 9BBA4 8009AFA4 8FAE001C */  lw         $t6, 0x1c($sp)
/* 9BBA8 8009AFA8 ADC2002C */  sw         $v0, 0x2c($t6)
.L8009AFAC:
/* 9BBAC 8009AFAC 8FAF001C */  lw         $t7, 0x1c($sp)
/* 9BBB0 8009AFB0 8DF80030 */  lw         $t8, 0x30($t7)
/* 9BBB4 8009AFB4 13000006 */  beqz       $t8, .L8009AFD0
/* 9BBB8 8009AFB8 00000000 */   nop
/* 9BBBC 8009AFBC 8FB9001C */  lw         $t9, 0x1c($sp)
/* 9BBC0 8009AFC0 0C026964 */  jal        func_8009A590
/* 9BBC4 8009AFC4 8F240030 */   lw        $a0, 0x30($t9)
/* 9BBC8 8009AFC8 8FA8001C */  lw         $t0, 0x1c($sp)
/* 9BBCC 8009AFCC AD020030 */  sw         $v0, 0x30($t0)
.L8009AFD0:
/* 9BBD0 8009AFD0 8FA9001C */  lw         $t1, 0x1c($sp)
/* 9BBD4 8009AFD4 8D2A0038 */  lw         $t2, 0x38($t1)
/* 9BBD8 8009AFD8 11400006 */  beqz       $t2, .L8009AFF4
/* 9BBDC 8009AFDC 00000000 */   nop
/* 9BBE0 8009AFE0 8FAB001C */  lw         $t3, 0x1c($sp)
/* 9BBE4 8009AFE4 0C026964 */  jal        func_8009A590
/* 9BBE8 8009AFE8 8D640038 */   lw        $a0, 0x38($t3)
/* 9BBEC 8009AFEC 8FAC001C */  lw         $t4, 0x1c($sp)
/* 9BBF0 8009AFF0 AD820038 */  sw         $v0, 0x38($t4)
.L8009AFF4:
/* 9BBF4 8009AFF4 10000003 */  b          .L8009B004
/* 9BBF8 8009AFF8 8FA2001C */   lw        $v0, 0x1c($sp)
/* 9BBFC 8009AFFC 10000001 */  b          .L8009B004
/* 9BC00 8009B000 00000000 */   nop
.L8009B004:
/* 9BC04 8009B004 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9BC08 8009B008 27BD0020 */  addiu      $sp, $sp, 0x20
/* 9BC0C 8009B00C 03E00008 */  jr         $ra
/* 9BC10 8009B010 00000000 */   nop
