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
/* B3208 800B2608 0C02AA48 */  jal        func_800AA920
/* B320C 800B260C 24040001 */   addiu     $a0, $zero, 1
/* B3210 800B2610 AFA2002C */  sw         $v0, 0x2c($sp)
/* B3214 800B2614 8FA40030 */  lw         $a0, 0x30($sp)
/* B3218 800B2618 00002825 */  or         $a1, $zero, $zero
/* B321C 800B261C 0C026B44 */  jal        func_8009AD10
/* B3220 800B2620 24060001 */   addiu     $a2, $zero, 1
/* B3224 800B2624 240C0005 */  addiu      $t4, $zero, 5
/* B3228 800B2628 3C018018 */  lui        $at, %hi(D_80185670)
/* B322C 800B262C A02C5670 */  sb         $t4, %lo(D_80185670)($at)
/* B3230 800B2630 3C058019 */  lui        $a1, %hi(D_8018A4C0)
/* B3234 800B2634 24A5A4C0 */  addiu      $a1, $a1, %lo(D_8018A4C0)
/* B3238 800B2638 0C02AA48 */  jal        func_800AA920
/* B323C 800B263C 00002025 */   or        $a0, $zero, $zero
/* B3240 800B2640 AFA2002C */  sw         $v0, 0x2c($sp)
/* B3244 800B2644 8FA40030 */  lw         $a0, 0x30($sp)
/* B3248 800B2648 00002825 */  or         $a1, $zero, $zero
/* B324C 800B264C 0C026B44 */  jal        func_8009AD10
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
