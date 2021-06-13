glabel func_80022D10
/* 23910 80022D10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 23914 80022D14 AFBF0014 */  sw         $ra, 0x14($sp)
/* 23918 80022D18 0C010D1E */  jal        func_80043478
/* 2391C 80022D1C 00000000 */   nop
/* 23920 80022D20 240E0032 */  addiu      $t6, $zero, 0x32
/* 23924 80022D24 3C01800C */  lui        $at, %hi(D_800BE668)
/* 23928 80022D28 A42EE668 */  sh         $t6, %lo(D_800BE668)($at)
/* 2392C 80022D2C 3C01800C */  lui        $at, %hi(D_800BE6E4)
/* 23930 80022D30 A020E6E4 */  sb         $zero, %lo(D_800BE6E4)($at)
/* 23934 80022D34 3C01800C */  lui        $at, %hi(D_800BE6E8)
/* 23938 80022D38 A020E6E8 */  sb         $zero, %lo(D_800BE6E8)($at)
/* 2393C 80022D3C 3C01800C */  lui        $at, %hi(D_800BE6EC)
/* 23940 80022D40 A020E6EC */  sb         $zero, %lo(D_800BE6EC)($at)
/* 23944 80022D44 3C01800C */  lui        $at, %hi(D_800BE514)
/* 23948 80022D48 240F4000 */  addiu      $t7, $zero, 0x4000
/* 2394C 80022D4C A42FE514 */  sh         $t7, %lo(D_800BE514)($at)
/* 23950 80022D50 3C01800C */  lui        $at, %hi(D_800BE518)
/* 23954 80022D54 34188000 */  ori        $t8, $zero, 0x8000
/* 23958 80022D58 A438E518 */  sh         $t8, %lo(D_800BE518)($at)
/* 2395C 80022D5C 3C01800C */  lui        $at, %hi(D_800BE700)
/* 23960 80022D60 A420E700 */  sh         $zero, %lo(D_800BE700)($at)
/* 23964 80022D64 3C01800D */  lui        $at, %hi(D_800CA238)
/* 23968 80022D68 A420A238 */  sh         $zero, %lo(D_800CA238)($at)
/* 2396C 80022D6C 3C01800C */  lui        $at, %hi(gGameState)
/* 23970 80022D70 8FBF0014 */  lw         $ra, 0x14($sp)
/* 23974 80022D74 A420E4F0 */  sh         $zero, %lo(gGameState)($at)
/* 23978 80022D78 3C01800C */  lui        $at, %hi(gGameSubState)
/* 2397C 80022D7C A420E4F4 */  sh         $zero, %lo(gGameSubState)($at)
/* 23980 80022D80 03E00008 */  jr         $ra
/* 23984 80022D84 27BD0018 */   addiu     $sp, $sp, 0x18
