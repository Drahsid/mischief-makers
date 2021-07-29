.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B2220
/* B2E20 800B2220 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B2E24 800B2224 AFBF0014 */  sw         $ra, 0x14($sp)
/* B2E28 800B2228 AFA40038 */  sw         $a0, 0x38($sp)
/* B2E2C 800B222C AFA5003C */  sw         $a1, 0x3c($sp)
/* B2E30 800B2230 AFA60040 */  sw         $a2, 0x40($sp)
/* B2E34 800B2234 AFA00034 */  sw         $zero, 0x34($sp)
/* B2E38 800B2238 3C0E8019 */  lui        $t6, %hi(D_8018A4C0)
/* B2E3C 800B223C 25CEA4C0 */  addiu      $t6, $t6, %lo(D_8018A4C0)
/* B2E40 800B2240 AFAE002C */  sw         $t6, 0x2c($sp)
/* B2E44 800B2244 93AF003F */  lbu        $t7, 0x3f($sp)
/* B2E48 800B2248 29E10041 */  slti       $at, $t7, 0x41
/* B2E4C 800B224C 14200003 */  bnez       $at, .L800B225C
/* B2E50 800B2250 00000000 */   nop
/* B2E54 800B2254 1000005F */  b          .L800B23D4
/* B2E58 800B2258 2402FFFF */   addiu     $v0, $zero, -1
.L800B225C:
/* B2E5C 800B225C 0C02AA26 */  jal        func_800AA898
/* B2E60 800B2260 00000000 */   nop
/* B2E64 800B2264 8FA40038 */  lw         $a0, 0x38($sp)
/* B2E68 800B2268 0C02C93F */  jal        func_800B24FC
/* B2E6C 800B226C 27A5001C */   addiu     $a1, $sp, 0x1c
/* B2E70 800B2270 AFA20034 */  sw         $v0, 0x34($sp)
/* B2E74 800B2274 8FB80034 */  lw         $t8, 0x34($sp)
/* B2E78 800B2278 17000005 */  bnez       $t8, .L800B2290
/* B2E7C 800B227C 00000000 */   nop
/* B2E80 800B2280 97B9001C */  lhu        $t9, 0x1c($sp)
/* B2E84 800B2284 34018000 */  ori        $at, $zero, 0x8000
/* B2E88 800B2288 13210003 */  beq        $t9, $at, .L800B2298
/* B2E8C 800B228C 00000000 */   nop
.L800B2290:
/* B2E90 800B2290 10000050 */  b          .L800B23D4
/* B2E94 800B2294 24020008 */   addiu     $v0, $zero, 8
.L800B2298:
/* B2E98 800B2298 93A8001E */  lbu        $t0, 0x1e($sp)
/* B2E9C 800B229C 31090080 */  andi       $t1, $t0, 0x80
/* B2EA0 800B22A0 11200008 */  beqz       $t1, .L800B22C4
/* B2EA4 800B22A4 00000000 */   nop
.L800B22A8:
/* B2EA8 800B22A8 8FA40038 */  lw         $a0, 0x38($sp)
/* B2EAC 800B22AC 0C02C93F */  jal        func_800B24FC
/* B2EB0 800B22B0 27A5001C */   addiu     $a1, $sp, 0x1c
/* B2EB4 800B22B4 93AA001E */  lbu        $t2, 0x1e($sp)
/* B2EB8 800B22B8 314B0080 */  andi       $t3, $t2, 0x80
/* B2EBC 800B22BC 1560FFFA */  bnez       $t3, .L800B22A8
/* B2EC0 800B22C0 00000000 */   nop
.L800B22C4:
/* B2EC4 800B22C4 93A4003F */  lbu        $a0, 0x3f($sp)
/* B2EC8 800B22C8 0C02C8F9 */  jal        func_800B23E4
/* B2ECC 800B22CC 8FA50040 */   lw        $a1, 0x40($sp)
/* B2ED0 800B22D0 3C058019 */  lui        $a1, %hi(D_8018A4C0)
/* B2ED4 800B22D4 24A5A4C0 */  addiu      $a1, $a1, %lo(D_8018A4C0)
/* B2ED8 800B22D8 0C02AA48 */  jal        __osSiRawStartDma
/* B2EDC 800B22DC 24040001 */   addiu     $a0, $zero, 1
/* B2EE0 800B22E0 AFA20034 */  sw         $v0, 0x34($sp)
/* B2EE4 800B22E4 8FA40038 */  lw         $a0, 0x38($sp)
/* B2EE8 800B22E8 00002825 */  or         $a1, $zero, $zero
/* B2EEC 800B22EC 0C026B44 */  jal        osRecvMesg
/* B2EF0 800B22F0 24060001 */   addiu     $a2, $zero, 1
/* B2EF4 800B22F4 AFA00030 */  sw         $zero, 0x30($sp)
.L800B22F8:
/* B2EF8 800B22F8 8FAD0030 */  lw         $t5, 0x30($sp)
/* B2EFC 800B22FC 3C018019 */  lui        $at, %hi(D_8018A4C0)
/* B2F00 800B2300 240C00FF */  addiu      $t4, $zero, 0xff
/* B2F04 800B2304 000D7080 */  sll        $t6, $t5, 2
/* B2F08 800B2308 002E0821 */  addu       $at, $at, $t6
/* B2F0C 800B230C AC2CA4C0 */  sw         $t4, %lo(D_8018A4C0)($at)
/* B2F10 800B2310 8FAF0030 */  lw         $t7, 0x30($sp)
/* B2F14 800B2314 25F80001 */  addiu      $t8, $t7, 1
/* B2F18 800B2318 2B010010 */  slti       $at, $t8, 0x10
/* B2F1C 800B231C 1420FFF6 */  bnez       $at, .L800B22F8
/* B2F20 800B2320 AFB80030 */   sw        $t8, 0x30($sp)
/* B2F24 800B2324 3C018019 */  lui        $at, %hi(D_8018A4FC)
/* B2F28 800B2328 AC20A4FC */  sw         $zero, %lo(D_8018A4FC)($at)
/* B2F2C 800B232C 3C058019 */  lui        $a1, %hi(D_8018A4C0)
/* B2F30 800B2330 24A5A4C0 */  addiu      $a1, $a1, %lo(D_8018A4C0)
/* B2F34 800B2334 0C02AA48 */  jal        __osSiRawStartDma
/* B2F38 800B2338 00002025 */   or        $a0, $zero, $zero
/* B2F3C 800B233C AFA20034 */  sw         $v0, 0x34($sp)
/* B2F40 800B2340 24190005 */  addiu      $t9, $zero, 5
/* B2F44 800B2344 3C018018 */  lui        $at, %hi(__osContLastCmd)
/* B2F48 800B2348 A0395670 */  sb         $t9, %lo(__osContLastCmd)($at)
/* B2F4C 800B234C 8FA40038 */  lw         $a0, 0x38($sp)
/* B2F50 800B2350 00002825 */  or         $a1, $zero, $zero
/* B2F54 800B2354 0C026B44 */  jal        osRecvMesg
/* B2F58 800B2358 24060001 */   addiu     $a2, $zero, 1
/* B2F5C 800B235C AFA00030 */  sw         $zero, 0x30($sp)
.L800B2360:
/* B2F60 800B2360 8FA8002C */  lw         $t0, 0x2c($sp)
/* B2F64 800B2364 25090001 */  addiu      $t1, $t0, 1
/* B2F68 800B2368 AFA9002C */  sw         $t1, 0x2c($sp)
/* B2F6C 800B236C 8FAA0030 */  lw         $t2, 0x30($sp)
/* B2F70 800B2370 254B0001 */  addiu      $t3, $t2, 1
/* B2F74 800B2374 29610004 */  slti       $at, $t3, 4
/* B2F78 800B2378 1420FFF9 */  bnez       $at, .L800B2360
/* B2F7C 800B237C AFAB0030 */   sw        $t3, 0x30($sp)
/* B2F80 800B2380 8FAC002C */  lw         $t4, 0x2c($sp)
/* B2F84 800B2384 27AD0020 */  addiu      $t5, $sp, 0x20
/* B2F88 800B2388 89810000 */  lwl        $at, ($t4)
/* B2F8C 800B238C 99810003 */  lwr        $at, 3($t4)
/* B2F90 800B2390 ADA10000 */  sw         $at, ($t5)
/* B2F94 800B2394 898F0004 */  lwl        $t7, 4($t4)
/* B2F98 800B2398 998F0007 */  lwr        $t7, 7($t4)
/* B2F9C 800B239C ADAF0004 */  sw         $t7, 4($t5)
/* B2FA0 800B23A0 89810008 */  lwl        $at, 8($t4)
/* B2FA4 800B23A4 9981000B */  lwr        $at, 0xb($t4)
/* B2FA8 800B23A8 ADA10008 */  sw         $at, 8($t5)
/* B2FAC 800B23AC 93B80021 */  lbu        $t8, 0x21($sp)
/* B2FB0 800B23B0 331900C0 */  andi       $t9, $t8, 0xc0
/* B2FB4 800B23B4 00194103 */  sra        $t0, $t9, 4
/* B2FB8 800B23B8 AFA80034 */  sw         $t0, 0x34($sp)
/* B2FBC 800B23BC 0C02AA39 */  jal        func_800AA8E4
/* B2FC0 800B23C0 00000000 */   nop
/* B2FC4 800B23C4 10000003 */  b          .L800B23D4
/* B2FC8 800B23C8 8FA20034 */   lw        $v0, 0x34($sp)
/* B2FCC 800B23CC 10000001 */  b          .L800B23D4
/* B2FD0 800B23D0 00000000 */   nop
.L800B23D4:
/* B2FD4 800B23D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* B2FD8 800B23D8 27BD0038 */  addiu      $sp, $sp, 0x38
/* B2FDC 800B23DC 03E00008 */  jr         $ra
/* B2FE0 800B23E0 00000000 */   nop

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

glabel func_800B24FC
/* B30FC 800B24FC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B3100 800B2500 AFBF0014 */  sw         $ra, 0x14($sp)
/* B3104 800B2504 AFA40030 */  sw         $a0, 0x30($sp)
/* B3108 800B2508 AFA50034 */  sw         $a1, 0x34($sp)
/* B310C 800B250C AFA0002C */  sw         $zero, 0x2c($sp)
/* B3110 800B2510 3C0E8019 */  lui        $t6, %hi(D_8018A4C0)
/* B3114 800B2514 25CEA4C0 */  addiu      $t6, $t6, %lo(D_8018A4C0)
/* B3118 800B2518 AFAE0024 */  sw         $t6, 0x24($sp)
/* B311C 800B251C AFA00028 */  sw         $zero, 0x28($sp)
.L800B2520:
/* B3120 800B2520 8FAF0028 */  lw         $t7, 0x28($sp)
/* B3124 800B2524 3C018019 */  lui        $at, %hi(D_8018A4C0)
/* B3128 800B2528 000FC080 */  sll        $t8, $t7, 2
/* B312C 800B252C 00380821 */  addu       $at, $at, $t8
/* B3130 800B2530 AC20A4C0 */  sw         $zero, %lo(D_8018A4C0)($at)
/* B3134 800B2534 8FB90028 */  lw         $t9, 0x28($sp)
/* B3138 800B2538 27280001 */  addiu      $t0, $t9, 1
/* B313C 800B253C 29010010 */  slti       $at, $t0, 0x10
/* B3140 800B2540 1420FFF7 */  bnez       $at, .L800B2520
/* B3144 800B2544 AFA80028 */   sw        $t0, 0x28($sp)
/* B3148 800B2548 24090001 */  addiu      $t1, $zero, 1
/* B314C 800B254C 3C018019 */  lui        $at, %hi(D_8018A4FC)
/* B3150 800B2550 AC29A4FC */  sw         $t1, %lo(D_8018A4FC)($at)
/* B3154 800B2554 3C0A8019 */  lui        $t2, %hi(D_8018A4C0)
/* B3158 800B2558 254AA4C0 */  addiu      $t2, $t2, %lo(D_8018A4C0)
/* B315C 800B255C AFAA0024 */  sw         $t2, 0x24($sp)
/* B3160 800B2560 AFA00028 */  sw         $zero, 0x28($sp)
.L800B2564:
/* B3164 800B2564 8FAB0024 */  lw         $t3, 0x24($sp)
/* B3168 800B2568 A1600000 */  sb         $zero, ($t3)
/* B316C 800B256C 8FAC0024 */  lw         $t4, 0x24($sp)
/* B3170 800B2570 258D0001 */  addiu      $t5, $t4, 1
/* B3174 800B2574 AFAD0024 */  sw         $t5, 0x24($sp)
/* B3178 800B2578 8FAE0028 */  lw         $t6, 0x28($sp)
/* B317C 800B257C 25CF0001 */  addiu      $t7, $t6, 1
/* B3180 800B2580 29E10004 */  slti       $at, $t7, 4
/* B3184 800B2584 1420FFF7 */  bnez       $at, .L800B2564
/* B3188 800B2588 AFAF0028 */   sw        $t7, 0x28($sp)
/* B318C 800B258C 241800FF */  addiu      $t8, $zero, 0xff
/* B3190 800B2590 A3B8001C */  sb         $t8, 0x1c($sp)
/* B3194 800B2594 24190001 */  addiu      $t9, $zero, 1
/* B3198 800B2598 A3B9001D */  sb         $t9, 0x1d($sp)
/* B319C 800B259C 24080003 */  addiu      $t0, $zero, 3
/* B31A0 800B25A0 A3A8001E */  sb         $t0, 0x1e($sp)
/* B31A4 800B25A4 A3A0001F */  sb         $zero, 0x1f($sp)
/* B31A8 800B25A8 240900FF */  addiu      $t1, $zero, 0xff
/* B31AC 800B25AC A3A90020 */  sb         $t1, 0x20($sp)
/* B31B0 800B25B0 240A00FF */  addiu      $t2, $zero, 0xff
/* B31B4 800B25B4 A3AA0021 */  sb         $t2, 0x21($sp)
/* B31B8 800B25B8 240B00FF */  addiu      $t3, $zero, 0xff
/* B31BC 800B25BC A3AB0022 */  sb         $t3, 0x22($sp)
/* B31C0 800B25C0 240C00FF */  addiu      $t4, $zero, 0xff
/* B31C4 800B25C4 A3AC0023 */  sb         $t4, 0x23($sp)
/* B31C8 800B25C8 27AE001C */  addiu      $t6, $sp, 0x1c
/* B31CC 800B25CC 8DC10000 */  lw         $at, ($t6)
/* B31D0 800B25D0 8FAD0024 */  lw         $t5, 0x24($sp)
/* B31D4 800B25D4 A9A10000 */  swl        $at, ($t5)
/* B31D8 800B25D8 B9A10003 */  swr        $at, 3($t5)
/* B31DC 800B25DC 8DD90004 */  lw         $t9, 4($t6)
/* B31E0 800B25E0 A9B90004 */  swl        $t9, 4($t5)
/* B31E4 800B25E4 B9B90007 */  swr        $t9, 7($t5)
/* B31E8 800B25E8 8FA80024 */  lw         $t0, 0x24($sp)
/* B31EC 800B25EC 25090008 */  addiu      $t1, $t0, 8
/* B31F0 800B25F0 AFA90024 */  sw         $t1, 0x24($sp)
/* B31F4 800B25F4 8FAB0024 */  lw         $t3, 0x24($sp)
/* B31F8 800B25F8 240A00FE */  addiu      $t2, $zero, 0xfe
/* B31FC 800B25FC A16A0000 */  sb         $t2, ($t3)
/* B3200 800B2600 3C058019 */  lui        $a1, %hi(D_8018A4C0)
/* B3204 800B2604 24A5A4C0 */  addiu      $a1, $a1, %lo(D_8018A4C0)
/* B3208 800B2608 0C02AA48 */  jal        __osSiRawStartDma
/* B320C 800B260C 24040001 */   addiu     $a0, $zero, 1
/* B3210 800B2610 AFA2002C */  sw         $v0, 0x2c($sp)
/* B3214 800B2614 8FA40030 */  lw         $a0, 0x30($sp)
/* B3218 800B2618 00002825 */  or         $a1, $zero, $zero
/* B321C 800B261C 0C026B44 */  jal        osRecvMesg
/* B3220 800B2620 24060001 */   addiu     $a2, $zero, 1
/* B3224 800B2624 240C0005 */  addiu      $t4, $zero, 5
/* B3228 800B2628 3C018018 */  lui        $at, %hi(__osContLastCmd)
/* B322C 800B262C A02C5670 */  sb         $t4, %lo(__osContLastCmd)($at)
/* B3230 800B2630 3C058019 */  lui        $a1, %hi(D_8018A4C0)
/* B3234 800B2634 24A5A4C0 */  addiu      $a1, $a1, %lo(D_8018A4C0)
/* B3238 800B2638 0C02AA48 */  jal        __osSiRawStartDma
/* B323C 800B263C 00002025 */   or        $a0, $zero, $zero
/* B3240 800B2640 AFA2002C */  sw         $v0, 0x2c($sp)
/* B3244 800B2644 8FA40030 */  lw         $a0, 0x30($sp)
/* B3248 800B2648 00002825 */  or         $a1, $zero, $zero
/* B324C 800B264C 0C026B44 */  jal        osRecvMesg
/* B3250 800B2650 24060001 */   addiu     $a2, $zero, 1
/* B3254 800B2654 8FB8002C */  lw         $t8, 0x2c($sp)
/* B3258 800B2658 13000003 */  beqz       $t8, .L800B2668
/* B325C 800B265C 00000000 */   nop
/* B3260 800B2660 10000030 */  b          .L800B2724
/* B3264 800B2664 8FA2002C */   lw        $v0, 0x2c($sp)
.L800B2668:
/* B3268 800B2668 3C0F8019 */  lui        $t7, %hi(D_8018A4C0)
/* B326C 800B266C 25EFA4C0 */  addiu      $t7, $t7, %lo(D_8018A4C0)
/* B3270 800B2670 AFAF0024 */  sw         $t7, 0x24($sp)
/* B3274 800B2674 AFA00028 */  sw         $zero, 0x28($sp)
.L800B2678:
/* B3278 800B2678 8FAD0024 */  lw         $t5, 0x24($sp)
/* B327C 800B267C A1A00000 */  sb         $zero, ($t5)
/* B3280 800B2680 8FAE0024 */  lw         $t6, 0x24($sp)
/* B3284 800B2684 25D90001 */  addiu      $t9, $t6, 1
/* B3288 800B2688 AFB90024 */  sw         $t9, 0x24($sp)
/* B328C 800B268C 8FA80028 */  lw         $t0, 0x28($sp)
/* B3290 800B2690 25090001 */  addiu      $t1, $t0, 1
/* B3294 800B2694 29210004 */  slti       $at, $t1, 4
/* B3298 800B2698 1420FFF7 */  bnez       $at, .L800B2678
/* B329C 800B269C AFA90028 */   sw        $t1, 0x28($sp)
/* B32A0 800B26A0 8FAB0024 */  lw         $t3, 0x24($sp)
/* B32A4 800B26A4 27AA001C */  addiu      $t2, $sp, 0x1c
/* B32A8 800B26A8 89610000 */  lwl        $at, ($t3)
/* B32AC 800B26AC 99610003 */  lwr        $at, 3($t3)
/* B32B0 800B26B0 AD410000 */  sw         $at, ($t2)
/* B32B4 800B26B4 89780004 */  lwl        $t8, 4($t3)
/* B32B8 800B26B8 99780007 */  lwr        $t8, 7($t3)
/* B32BC 800B26BC AD580004 */  sw         $t8, 4($t2)
/* B32C0 800B26C0 93AF001E */  lbu        $t7, 0x1e($sp)
/* B32C4 800B26C4 8FB90034 */  lw         $t9, 0x34($sp)
/* B32C8 800B26C8 31ED00C0 */  andi       $t5, $t7, 0xc0
/* B32CC 800B26CC 000D7103 */  sra        $t6, $t5, 4
/* B32D0 800B26D0 A32E0003 */  sb         $t6, 3($t9)
/* B32D4 800B26D4 93A80021 */  lbu        $t0, 0x21($sp)
/* B32D8 800B26D8 93AC0020 */  lbu        $t4, 0x20($sp)
/* B32DC 800B26DC 8FAB0034 */  lw         $t3, 0x34($sp)
/* B32E0 800B26E0 00084A00 */  sll        $t1, $t0, 8
/* B32E4 800B26E4 012C5025 */  or         $t2, $t1, $t4
/* B32E8 800B26E8 A56A0000 */  sh         $t2, ($t3)
/* B32EC 800B26EC 93B80022 */  lbu        $t8, 0x22($sp)
/* B32F0 800B26F0 8FAF0034 */  lw         $t7, 0x34($sp)
/* B32F4 800B26F4 A1F80002 */  sb         $t8, 2($t7)
/* B32F8 800B26F8 8FAD0034 */  lw         $t5, 0x34($sp)
/* B32FC 800B26FC 91AE0003 */  lbu        $t6, 3($t5)
/* B3300 800B2700 11C00004 */  beqz       $t6, .L800B2714
/* B3304 800B2704 00000000 */   nop
/* B3308 800B2708 8FB90034 */  lw         $t9, 0x34($sp)
/* B330C 800B270C 10000005 */  b          .L800B2724
/* B3310 800B2710 93220003 */   lbu       $v0, 3($t9)
.L800B2714:
/* B3314 800B2714 10000003 */  b          .L800B2724
/* B3318 800B2718 00001025 */   or        $v0, $zero, $zero
/* B331C 800B271C 10000001 */  b          .L800B2724
/* B3320 800B2720 00000000 */   nop
.L800B2724:
/* B3324 800B2724 8FBF0014 */  lw         $ra, 0x14($sp)
/* B3328 800B2728 27BD0030 */  addiu      $sp, $sp, 0x30
/* B332C 800B272C 03E00008 */  jr         $ra
/* B3330 800B2730 00000000 */   nop
/* B3334 800B2734 00000000 */  nop
/* B3338 800B2738 00000000 */  nop
/* B333C 800B273C 00000000 */  nop
