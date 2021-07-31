glabel func_8001B3D0
/* 1BFD0 8001B3D0 3C0E8018 */  lui        $t6, %hi(gCurrentStage)
/* 1BFD4 8001B3D4 95CE8162 */  lhu        $t6, %lo(gCurrentStage)($t6)
/* 1BFD8 8001B3D8 3C18800C */  lui        $t8, %hi(D_800C5008)
/* 1BFDC 8001B3DC 93185008 */  lbu        $t8, %lo(D_800C5008)($t8)
/* 1BFE0 8001B3E0 3C018017 */  lui        $at, %hi(gWorldProgress)
/* 1BFE4 8001B3E4 3C0F8018 */  lui        $t7, %hi(gRedGems)
/* 1BFE8 8001B3E8 A02E1B18 */  sb         $t6, %lo(gWorldProgress)($at)
/* 1BFEC 8001B3EC 95EF8136 */  lhu        $t7, %lo(gRedGems)($t7)
/* 1BFF0 8001B3F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1BFF4 8001B3F4 3C018017 */  lui        $at, %hi(D_80171AD0)
/* 1BFF8 8001B3F8 0018C840 */  sll        $t9, $t8, 1
/* 1BFFC 8001B3FC AFBF0014 */  sw         $ra, 0x14($sp)
/* 1C000 8001B400 00390821 */  addu       $at, $at, $t9
/* 1C004 8001B404 0C006C91 */  jal        func_8001B244
/* 1C008 8001B408 A42F1AD0 */   sh        $t7, %lo(D_80171AD0)($at)
/* 1C00C 8001B40C 3C03800C */  lui        $v1, %hi(D_800C5008)
/* 1C010 8001B410 90635008 */  lbu        $v1, %lo(D_800C5008)($v1)
/* 1C014 8001B414 3C018017 */  lui        $at, %hi(D_80171AD4)
/* 1C018 8001B418 00034040 */  sll        $t0, $v1, 1
/* 1C01C 8001B41C 00280821 */  addu       $at, $at, $t0
/* 1C020 8001B420 A4221AD4 */  sh         $v0, %lo(D_80171AD4)($at)
/* 1C024 8001B424 3C018017 */  lui        $at, %hi(D_80171AD8)
/* 1C028 8001B428 000360C0 */  sll        $t4, $v1, 3
/* 1C02C 8001B42C 002C0821 */  addu       $at, $at, $t4
/* 1C030 8001B430 240A0000 */  addiu      $t2, $zero, 0
/* 1C034 8001B434 AC2A1AD8 */  sw         $t2, %lo(D_80171AD8)($at)
/* 1C038 8001B438 3C098013 */  lui        $t1, %hi(gPlayTime)
/* 1C03C 8001B43C 8D2970C8 */  lw         $t1, %lo(gPlayTime)($t1)
/* 1C040 8001B440 3C018017 */  lui        $at, %hi(D_80171ADC)
/* 1C044 8001B444 002C0821 */  addu       $at, $at, $t4
/* 1C048 8001B448 0C0015DC */  jal        func_80005770
/* 1C04C 8001B44C AC291ADC */   sw        $t1, %lo(D_80171ADC)($at)
/* 1C050 8001B450 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1C054 8001B454 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1C058 8001B458 03E00008 */  jr         $ra
/* 1C05C 8001B45C 00000000 */   nop
