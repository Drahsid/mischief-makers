glabel func_800822B8
/* 82EB8 800822B8 3C0E8018 */  lui        $t6, %hi(D_80178460)
/* 82EBC 800822BC 95CE8460 */  lhu        $t6, %lo(D_80178460)($t6)
/* 82EC0 800822C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 82EC4 800822C4 11C00028 */  beqz       $t6, .L80082368
/* 82EC8 800822C8 AFBF0014 */   sw        $ra, 0x14($sp)
/* 82ECC 800822CC 0C000499 */  jal        func_80001264
/* 82ED0 800822D0 00000000 */   nop
/* 82ED4 800822D4 3C02800C */  lui        $v0, %hi(D_800BE6A4)
/* 82ED8 800822D8 9442E6A4 */  lhu        $v0, %lo(D_800BE6A4)($v0)
/* 82EDC 800822DC 3C18800C */  lui        $t8, %hi(D_800BE700)
/* 82EE0 800822E0 9718E700 */  lhu        $t8, %lo(D_800BE700)($t8)
/* 82EE4 800822E4 304F7FFF */  andi       $t7, $v0, 0x7fff
/* 82EE8 800822E8 01F81821 */  addu       $v1, $t7, $t8
/* 82EEC 800822EC 10600006 */  beqz       $v1, .L80082308
/* 82EF0 800822F0 01E01025 */   or        $v0, $t7, $zero
/* 82EF4 800822F4 24010001 */  addiu      $at, $zero, 1
/* 82EF8 800822F8 1061000F */  beq        $v1, $at, .L80082338
/* 82EFC 800822FC 3C04801C */   lui       $a0, 0x801c
/* 82F00 80082300 10000017 */  b          .L80082360
/* 82F04 80082304 00000000 */   nop
.L80082308:
/* 82F08 80082308 3C04801C */  lui        $a0, 0x801c
/* 82F0C 8008230C 3C058027 */  lui        $a1, 0x8027
/* 82F10 80082310 34A5AEE8 */  ori        $a1, $a1, 0xaee8
/* 82F14 80082314 34844400 */  ori        $a0, $a0, 0x4400
/* 82F18 80082318 0C0262D4 */  jal        func_80098B50
/* 82F1C 8008231C 24061000 */   addiu     $a2, $zero, 0x1000
/* 82F20 80082320 3C02800C */  lui        $v0, %hi(D_800BE6A4)
/* 82F24 80082324 9442E6A4 */  lhu        $v0, %lo(D_800BE6A4)($v0)
/* 82F28 80082328 00000000 */  nop
/* 82F2C 8008232C 30597FFF */  andi       $t9, $v0, 0x7fff
/* 82F30 80082330 1000000B */  b          .L80082360
/* 82F34 80082334 03201025 */   or        $v0, $t9, $zero
.L80082338:
/* 82F38 80082338 3C058027 */  lui        $a1, 0x8027
/* 82F3C 8008233C 34A5BEE8 */  ori        $a1, $a1, 0xbee8
/* 82F40 80082340 34844400 */  ori        $a0, $a0, 0x4400
/* 82F44 80082344 0C0262D4 */  jal        func_80098B50
/* 82F48 80082348 24061000 */   addiu     $a2, $zero, 0x1000
/* 82F4C 8008234C 3C02800C */  lui        $v0, %hi(D_800BE6A4)
/* 82F50 80082350 9442E6A4 */  lhu        $v0, %lo(D_800BE6A4)($v0)
/* 82F54 80082354 00000000 */  nop
/* 82F58 80082358 30487FFF */  andi       $t0, $v0, 0x7fff
/* 82F5C 8008235C 01001025 */  or         $v0, $t0, $zero
.L80082360:
/* 82F60 80082360 3C01800C */  lui        $at, %hi(D_800BE6A4)
/* 82F64 80082364 A422E6A4 */  sh         $v0, %lo(D_800BE6A4)($at)
.L80082368:
/* 82F68 80082368 8FBF0014 */  lw         $ra, 0x14($sp)
/* 82F6C 8008236C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 82F70 80082370 03E00008 */  jr         $ra
/* 82F74 80082374 00000000 */   nop
/* 82F78 80082378 00000000 */  nop
/* 82F7C 8008237C 00000000 */  nop