glabel func_8003F248
/* 3FE48 8003F248 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3FE4C 8003F24C AFBF0014 */  sw         $ra, 0x14($sp)
/* 3FE50 8003F250 AFA40020 */  sw         $a0, 0x20($sp)
/* 3FE54 8003F254 AFA50024 */  sw         $a1, 0x24($sp)
/* 3FE58 8003F258 AFA60028 */  sw         $a2, 0x28($sp)
/* 3FE5C 8003F25C AFA7002C */  sw         $a3, 0x2c($sp)
/* 3FE60 8003F260 00057400 */  sll        $t6, $a1, 0x10
/* 3FE64 8003F264 0006C400 */  sll        $t8, $a2, 0x10
/* 3FE68 8003F268 00074400 */  sll        $t0, $a3, 0x10
/* 3FE6C 8003F26C 00083C03 */  sra        $a3, $t0, 0x10
/* 3FE70 8003F270 00183403 */  sra        $a2, $t8, 0x10
/* 3FE74 8003F274 000E2C03 */  sra        $a1, $t6, 0x10
/* 3FE78 8003F278 0C00A153 */  jal        func_8002854C
/* 3FE7C 8003F27C 24040038 */   addiu     $a0, $zero, 0x38
/* 3FE80 8003F280 10400033 */  beqz       $v0, .L8003F350
/* 3FE84 8003F284 3046FFFF */   andi      $a2, $v0, 0xffff
/* 3FE88 8003F288 97A50022 */  lhu        $a1, 0x22($sp)
/* 3FE8C 8003F28C 24040093 */  addiu      $a0, $zero, 0x93
/* 3FE90 8003F290 0C000DB2 */  jal        func_800036C8
/* 3FE94 8003F294 A7A6001E */   sh        $a2, 0x1e($sp)
/* 3FE98 8003F298 97A6001E */  lhu        $a2, 0x1e($sp)
/* 3FE9C 8003F29C 3C01800F */  lui        $at, 0x800f
/* 3FEA0 8003F2A0 00065080 */  sll        $t2, $a2, 2
/* 3FEA4 8003F2A4 01465023 */  subu       $t2, $t2, $a2
/* 3FEA8 8003F2A8 000A5080 */  sll        $t2, $t2, 2
/* 3FEAC 8003F2AC 01465021 */  addu       $t2, $t2, $a2
/* 3FEB0 8003F2B0 000A5080 */  sll        $t2, $t2, 2
/* 3FEB4 8003F2B4 3C0B800F */  lui        $t3, %hi(gActors)
/* 3FEB8 8003F2B8 01465023 */  subu       $t2, $t2, $a2
/* 3FEBC 8003F2BC C422BC38 */  lwc1       $f2, -0x43c8($at)
/* 3FEC0 8003F2C0 000A50C0 */  sll        $t2, $t2, 3
/* 3FEC4 8003F2C4 256BF510 */  addiu      $t3, $t3, %lo(gActors)
/* 3FEC8 8003F2C8 014B1821 */  addu       $v1, $t2, $t3
/* 3FECC 8003F2CC 44800000 */  mtc1       $zero, $f0
/* 3FED0 8003F2D0 3C0141F0 */  lui        $at, 0x41f0
/* 3FED4 8003F2D4 44816000 */  mtc1       $at, $f12
/* 3FED8 8003F2D8 240C0009 */  addiu      $t4, $zero, 9
/* 3FEDC 8003F2DC 240D0003 */  addiu      $t5, $zero, 3
/* 3FEE0 8003F2E0 240E00D8 */  addiu      $t6, $zero, 0xd8
/* 3FEE4 8003F2E4 A46C0094 */  sh         $t4, 0x94($v1)
/* 3FEE8 8003F2E8 AC6D0080 */  sw         $t5, 0x80($v1)
/* 3FEEC 8003F2EC A46E0084 */  sh         $t6, 0x84($v1)
/* 3FEF0 8003F2F0 3C01800F */  lui        $at, %hi(D_800EBC3C)
/* 3FEF4 8003F2F4 E4620110 */  swc1       $f2, 0x110($v1)
/* 3FEF8 8003F2F8 E4620114 */  swc1       $f2, 0x114($v1)
/* 3FEFC 8003F2FC E46000B4 */  swc1       $f0, 0xb4($v1)
/* 3FF00 8003F300 E46000B8 */  swc1       $f0, 0xb8($v1)
/* 3FF04 8003F304 C424BC3C */  lwc1       $f4, %lo(D_800EBC3C)($at)
/* 3FF08 8003F308 3C01800F */  lui        $at, 0x800f
/* 3FF0C 8003F30C 460C2183 */  div.s      $f6, $f4, $f12
/* 3FF10 8003F310 8C780088 */  lw         $t8, 0x88($v1)
/* 3FF14 8003F314 8C79008C */  lw         $t9, 0x8c($v1)
/* 3FF18 8003F318 240F00FE */  addiu      $t7, $zero, 0xfe
/* 3FF1C 8003F31C E4660118 */  swc1       $f6, 0x118($v1)
/* 3FF20 8003F320 C428BC40 */  lwc1       $f8, -0x43c0($at)
/* 3FF24 8003F324 3C01BF80 */  lui        $at, 0xbf80
/* 3FF28 8003F328 460C4283 */  div.s      $f10, $f8, $f12
/* 3FF2C 8003F32C 44818000 */  mtc1       $at, $f16
/* 3FF30 8003F330 3C014370 */  lui        $at, 0x4370
/* 3FF34 8003F334 44819000 */  mtc1       $at, $f18
/* 3FF38 8003F338 A06F009F */  sb         $t7, 0x9f($v1)
/* 3FF3C 8003F33C AC780184 */  sw         $t8, 0x184($v1)
/* 3FF40 8003F340 AC790188 */  sw         $t9, 0x188($v1)
/* 3FF44 8003F344 E4700130 */  swc1       $f16, 0x130($v1)
/* 3FF48 8003F348 E4720148 */  swc1       $f18, 0x148($v1)
/* 3FF4C 8003F34C E46A011C */  swc1       $f10, 0x11c($v1)
.L8003F350:
/* 3FF50 8003F350 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3FF54 8003F354 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3FF58 8003F358 03E00008 */  jr         $ra
/* 3FF5C 8003F35C 00000000 */   nop
