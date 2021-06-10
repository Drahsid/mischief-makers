glabel func_800B23E4
/* B2FE4 800B23E4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B2FE8 800B23E8 308400FF */  andi       $a0, $a0, 0xff
/* B2FEC 800B23EC 3C0E8019 */  lui        $t6, %hi(D_8018A4C0)
/* B2FF0 800B23F0 25CEA4C0 */  addiu      $t6, $t6, %lo(D_8018A4C0)
/* B2FF4 800B23F4 AFAE0014 */  sw         $t6, 0x14($sp)
/* B2FF8 800B23F8 AFA00004 */  sw         $zero, 4($sp)
.L800B23FC:
/* B2FFC 800B23FC 8FB80004 */  lw         $t8, 4($sp)
/* B3000 800B2400 3C018019 */  lui        $at, %hi(D_8018A4C0)
/* B3004 800B2404 240F00FF */  addiu      $t7, $zero, 0xff
/* B3008 800B2408 0018C880 */  sll        $t9, $t8, 2
/* B300C 800B240C 00390821 */  addu       $at, $at, $t9
/* B3010 800B2410 AC2FA4C0 */  sw         $t7, %lo(D_8018A4C0)($at)
/* B3014 800B2414 8FA80004 */  lw         $t0, 4($sp)
/* B3018 800B2418 25090001 */  addiu      $t1, $t0, 1
/* B301C 800B241C 29210010 */  slti       $at, $t1, 0x10
/* B3020 800B2420 1420FFF6 */  bnez       $at, .L800B23FC
/* B3024 800B2424 AFA90004 */   sw        $t1, 4($sp)
/* B3028 800B2428 240A0001 */  addiu      $t2, $zero, 1
/* B302C 800B242C 3C018019 */  lui        $at, %hi(D_8018A4FC)
/* B3030 800B2430 AC2AA4FC */  sw         $t2, %lo(D_8018A4FC)($at)
/* B3034 800B2434 240B000A */  addiu      $t3, $zero, 0xa
/* B3038 800B2438 A3AB0008 */  sb         $t3, 8($sp)
/* B303C 800B243C 240C0001 */  addiu      $t4, $zero, 1
/* B3040 800B2440 A3AC0009 */  sb         $t4, 9($sp)
/* B3044 800B2444 240D0005 */  addiu      $t5, $zero, 5
/* B3048 800B2448 A3AD000A */  sb         $t5, 0xa($sp)
/* B304C 800B244C A3A4000B */  sb         $a0, 0xb($sp)
/* B3050 800B2450 AFA00004 */  sw         $zero, 4($sp)
.L800B2454:
/* B3054 800B2454 8FB80004 */  lw         $t8, 4($sp)
/* B3058 800B2458 90AE0000 */  lbu        $t6, ($a1)
/* B305C 800B245C 24A50001 */  addiu      $a1, $a1, 1
/* B3060 800B2460 03B87821 */  addu       $t7, $sp, $t8
/* B3064 800B2464 A1EE000C */  sb         $t6, 0xc($t7)
/* B3068 800B2468 8FB90004 */  lw         $t9, 4($sp)
/* B306C 800B246C 27280001 */  addiu      $t0, $t9, 1
/* B3070 800B2470 29010008 */  slti       $at, $t0, 8
/* B3074 800B2474 1420FFF7 */  bnez       $at, .L800B2454
/* B3078 800B2478 AFA80004 */   sw        $t0, 4($sp)
/* B307C 800B247C AFA00004 */  sw         $zero, 4($sp)
.L800B2480:
/* B3080 800B2480 8FA90014 */  lw         $t1, 0x14($sp)
/* B3084 800B2484 A1200000 */  sb         $zero, ($t1)
/* B3088 800B2488 8FAA0014 */  lw         $t2, 0x14($sp)
/* B308C 800B248C 254B0001 */  addiu      $t3, $t2, 1
/* B3090 800B2490 AFAB0014 */  sw         $t3, 0x14($sp)
/* B3094 800B2494 8FAC0004 */  lw         $t4, 4($sp)
/* B3098 800B2498 258D0001 */  addiu      $t5, $t4, 1
/* B309C 800B249C 29A10004 */  slti       $at, $t5, 4
/* B30A0 800B24A0 1420FFF7 */  bnez       $at, .L800B2480
/* B30A4 800B24A4 AFAD0004 */   sw        $t5, 4($sp)
/* B30A8 800B24A8 27B80008 */  addiu      $t8, $sp, 8
/* B30AC 800B24AC 8F010000 */  lw         $at, ($t8)
/* B30B0 800B24B0 8FAE0014 */  lw         $t6, 0x14($sp)
/* B30B4 800B24B4 A9C10000 */  swl        $at, ($t6)
/* B30B8 800B24B8 B9C10003 */  swr        $at, 3($t6)
/* B30BC 800B24BC 8F190004 */  lw         $t9, 4($t8)
/* B30C0 800B24C0 A9D90004 */  swl        $t9, 4($t6)
/* B30C4 800B24C4 B9D90007 */  swr        $t9, 7($t6)
/* B30C8 800B24C8 8F010008 */  lw         $at, 8($t8)
/* B30CC 800B24CC A9C10008 */  swl        $at, 8($t6)
/* B30D0 800B24D0 B9C1000B */  swr        $at, 0xb($t6)
/* B30D4 800B24D4 8FA80014 */  lw         $t0, 0x14($sp)
/* B30D8 800B24D8 2509000C */  addiu      $t1, $t0, 0xc
/* B30DC 800B24DC AFA90014 */  sw         $t1, 0x14($sp)
/* B30E0 800B24E0 8FAB0014 */  lw         $t3, 0x14($sp)
/* B30E4 800B24E4 240A00FE */  addiu      $t2, $zero, 0xfe
/* B30E8 800B24E8 A16A0000 */  sb         $t2, ($t3)
/* B30EC 800B24EC 10000001 */  b          .L800B24F4
/* B30F0 800B24F0 00000000 */   nop
.L800B24F4:
/* B30F4 800B24F4 03E00008 */  jr         $ra
/* B30F8 800B24F8 27BD0018 */   addiu     $sp, $sp, 0x18
