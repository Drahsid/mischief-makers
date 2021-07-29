glabel func_8001B244
/* 1BE44 8001B244 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1BE48 8001B248 AFB20020 */  sw         $s2, 0x20($sp)
/* 1BE4C 8001B24C AFB1001C */  sw         $s1, 0x1c($sp)
/* 1BE50 8001B250 AFB00018 */  sw         $s0, 0x18($sp)
/* 1BE54 8001B254 240E0000 */  addiu      $t6, $zero, 0
/* 1BE58 8001B258 240F0001 */  addiu      $t7, $zero, 1
/* 1BE5C 8001B25C 3C128017 */  lui        $s2, %hi(gYellowGemBitfeild)
/* 1BE60 8001B260 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1BE64 8001B264 AFAF002C */  sw         $t7, 0x2c($sp)
/* 1BE68 8001B268 AFAE0028 */  sw         $t6, 0x28($sp)
/* 1BE6C 8001B26C 00008825 */  or         $s1, $zero, $zero
/* 1BE70 8001B270 26521B10 */  addiu      $s2, $s2, %lo(gYellowGemBitfeild)
/* 1BE74 8001B274 00008025 */  or         $s0, $zero, $zero
.L8001B278:
/* 1BE78 8001B278 8E580000 */  lw         $t8, ($s2)
/* 1BE7C 8001B27C 8FA80028 */  lw         $t0, 0x28($sp)
/* 1BE80 8001B280 8E590004 */  lw         $t9, 4($s2)
/* 1BE84 8001B284 8FA9002C */  lw         $t1, 0x2c($sp)
/* 1BE88 8001B288 03085024 */  and        $t2, $t8, $t0
/* 1BE8C 8001B28C 15400003 */  bnez       $t2, .L8001B29C
/* 1BE90 8001B290 03295824 */   and       $t3, $t9, $t1
/* 1BE94 8001B294 11600005 */  beqz       $t3, .L8001B2AC
/* 1BE98 8001B298 8FA40028 */   lw        $a0, 0x28($sp)
.L8001B29C:
/* 1BE9C 8001B29C 26310001 */  addiu      $s1, $s1, 1
/* 1BEA0 8001B2A0 322CFFFF */  andi       $t4, $s1, 0xffff
/* 1BEA4 8001B2A4 01808825 */  or         $s1, $t4, $zero
/* 1BEA8 8001B2A8 8FA40028 */  lw         $a0, 0x28($sp)
.L8001B2AC:
/* 1BEAC 8001B2AC 8FA5002C */  lw         $a1, 0x2c($sp)
/* 1BEB0 8001B2B0 24060000 */  addiu      $a2, $zero, 0
/* 1BEB4 8001B2B4 0C0290D5 */  jal        __ll_lshift
/* 1BEB8 8001B2B8 24070001 */   addiu     $a3, $zero, 1
/* 1BEBC 8001B2BC 26100001 */  addiu      $s0, $s0, 1
/* 1BEC0 8001B2C0 320DFFFF */  andi       $t5, $s0, 0xffff
/* 1BEC4 8001B2C4 29A1003F */  slti       $at, $t5, 0x3f
/* 1BEC8 8001B2C8 01A08025 */  or         $s0, $t5, $zero
/* 1BECC 8001B2CC AFA20028 */  sw         $v0, 0x28($sp)
/* 1BED0 8001B2D0 1420FFE9 */  bnez       $at, .L8001B278
/* 1BED4 8001B2D4 AFA3002C */   sw        $v1, 0x2c($sp)
/* 1BED8 8001B2D8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1BEDC 8001B2DC 02201025 */  or         $v0, $s1, $zero
/* 1BEE0 8001B2E0 8FB1001C */  lw         $s1, 0x1c($sp)
/* 1BEE4 8001B2E4 8FB00018 */  lw         $s0, 0x18($sp)
/* 1BEE8 8001B2E8 8FB20020 */  lw         $s2, 0x20($sp)
/* 1BEEC 8001B2EC 03E00008 */  jr         $ra
/* 1BEF0 8001B2F0 27BD0030 */   addiu     $sp, $sp, 0x30
