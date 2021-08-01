.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osEepromRead
/* B3340 800B2740 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B3344 800B2744 AFBF0014 */  sw         $ra, 0x14($sp)
/* B3348 800B2748 AFA40038 */  sw         $a0, 0x38($sp)
/* B334C 800B274C AFA5003C */  sw         $a1, 0x3c($sp)
/* B3350 800B2750 AFA60040 */  sw         $a2, 0x40($sp)
/* B3354 800B2754 AFA00034 */  sw         $zero, 0x34($sp)
/* B3358 800B2758 AFA00030 */  sw         $zero, 0x30($sp)
/* B335C 800B275C 3C0E8019 */  lui        $t6, %hi(__osEepPifRam)
/* B3360 800B2760 25CEA4C0 */  addiu      $t6, $t6, %lo(__osEepPifRam)
/* B3364 800B2764 AFAE002C */  sw         $t6, 0x2c($sp)
/* B3368 800B2768 93AF003F */  lbu        $t7, 0x3f($sp)
/* B336C 800B276C 29E10041 */  slti       $at, $t7, 0x41
/* B3370 800B2770 14200003 */  bnez       $at, .L800B2780
/* B3374 800B2774 00000000 */   nop
/* B3378 800B2778 1000006F */  b          .L800B2938
/* B337C 800B277C 2402FFFF */   addiu     $v0, $zero, -1
.L800B2780:
/* B3380 800B2780 0C02AA26 */  jal        __osSiGetAccess
/* B3384 800B2784 00000000 */   nop
/* B3388 800B2788 8FA40038 */  lw         $a0, 0x38($sp)
/* B338C 800B278C 0C02C93F */  jal        __osEepStatus
/* B3390 800B2790 27A50028 */   addiu     $a1, $sp, 0x28
/* B3394 800B2794 AFA20034 */  sw         $v0, 0x34($sp)
/* B3398 800B2798 8FB80034 */  lw         $t8, 0x34($sp)
/* B339C 800B279C 17000005 */  bnez       $t8, .L800B27B4
/* B33A0 800B27A0 00000000 */   nop
/* B33A4 800B27A4 97B90028 */  lhu        $t9, 0x28($sp)
/* B33A8 800B27A8 34018000 */  ori        $at, $zero, 0x8000
/* B33AC 800B27AC 13210003 */  beq        $t9, $at, .L800B27BC
/* B33B0 800B27B0 00000000 */   nop
.L800B27B4:
/* B33B4 800B27B4 10000060 */  b          .L800B2938
/* B33B8 800B27B8 24020008 */   addiu     $v0, $zero, 8
.L800B27BC:
/* B33BC 800B27BC 93A8002A */  lbu        $t0, 0x2a($sp)
/* B33C0 800B27C0 31090080 */  andi       $t1, $t0, 0x80
/* B33C4 800B27C4 11200008 */  beqz       $t1, .L800B27E8
/* B33C8 800B27C8 00000000 */   nop
.L800B27CC:
/* B33CC 800B27CC 8FA40038 */  lw         $a0, 0x38($sp)
/* B33D0 800B27D0 0C02C93F */  jal        __osEepStatus
/* B33D4 800B27D4 27A50028 */   addiu     $a1, $sp, 0x28
/* B33D8 800B27D8 93AA002A */  lbu        $t2, 0x2a($sp)
/* B33DC 800B27DC 314B0080 */  andi       $t3, $t2, 0x80
/* B33E0 800B27E0 1560FFFA */  bnez       $t3, .L800B27CC
/* B33E4 800B27E4 00000000 */   nop
.L800B27E8:
/* B33E8 800B27E8 0C02CA52 */  jal        __osPackEepReadData
/* B33EC 800B27EC 93A4003F */   lbu       $a0, 0x3f($sp)
/* B33F0 800B27F0 3C058019 */  lui        $a1, %hi(__osEepPifRam)
/* B33F4 800B27F4 24A5A4C0 */  addiu      $a1, $a1, %lo(__osEepPifRam)
/* B33F8 800B27F8 0C02AA48 */  jal        __osSiRawStartDma
/* B33FC 800B27FC 24040001 */   addiu     $a0, $zero, 1
/* B3400 800B2800 AFA20034 */  sw         $v0, 0x34($sp)
/* B3404 800B2804 8FA40038 */  lw         $a0, 0x38($sp)
/* B3408 800B2808 00002825 */  or         $a1, $zero, $zero
/* B340C 800B280C 0C026B44 */  jal        osRecvMesg
/* B3410 800B2810 24060001 */   addiu     $a2, $zero, 1
/* B3414 800B2814 AFA00030 */  sw         $zero, 0x30($sp)
.L800B2818:
/* B3418 800B2818 8FAD0030 */  lw         $t5, 0x30($sp)
/* B341C 800B281C 3C018019 */  lui        $at, %hi(__osEepPifRam)
/* B3420 800B2820 240C00FF */  addiu      $t4, $zero, 0xff
/* B3424 800B2824 000D7080 */  sll        $t6, $t5, 2
/* B3428 800B2828 002E0821 */  addu       $at, $at, $t6
/* B342C 800B282C AC2CA4C0 */  sw         $t4, %lo(__osEepPifRam)($at)
/* B3430 800B2830 8FAF0030 */  lw         $t7, 0x30($sp)
/* B3434 800B2834 25F80001 */  addiu      $t8, $t7, 1
/* B3438 800B2838 2B010010 */  slti       $at, $t8, 0x10
/* B343C 800B283C 1420FFF6 */  bnez       $at, .L800B2818
/* B3440 800B2840 AFB80030 */   sw        $t8, 0x30($sp)
/* B3444 800B2844 3C018019 */  lui        $at, %hi(__osEepPifRam+0x3C)
/* B3448 800B2848 AC20A4FC */  sw         $zero, %lo(__osEepPifRam+0x3C)($at)
/* B344C 800B284C 3C058019 */  lui        $a1, %hi(__osEepPifRam)
/* B3450 800B2850 24A5A4C0 */  addiu      $a1, $a1, %lo(__osEepPifRam)
/* B3454 800B2854 0C02AA48 */  jal        __osSiRawStartDma
/* B3458 800B2858 00002025 */   or        $a0, $zero, $zero
/* B345C 800B285C AFA20034 */  sw         $v0, 0x34($sp)
/* B3460 800B2860 24190004 */  addiu      $t9, $zero, 4
/* B3464 800B2864 3C018018 */  lui        $at, %hi(__osContLastCmd)
/* B3468 800B2868 A0395670 */  sb         $t9, %lo(__osContLastCmd)($at)
/* B346C 800B286C 8FA40038 */  lw         $a0, 0x38($sp)
/* B3470 800B2870 00002825 */  or         $a1, $zero, $zero
/* B3474 800B2874 0C026B44 */  jal        osRecvMesg
/* B3478 800B2878 24060001 */   addiu     $a2, $zero, 1
/* B347C 800B287C AFA00030 */  sw         $zero, 0x30($sp)
.L800B2880:
/* B3480 800B2880 8FA8002C */  lw         $t0, 0x2c($sp)
/* B3484 800B2884 25090001 */  addiu      $t1, $t0, 1
/* B3488 800B2888 AFA9002C */  sw         $t1, 0x2c($sp)
/* B348C 800B288C 8FAA0030 */  lw         $t2, 0x30($sp)
/* B3490 800B2890 254B0001 */  addiu      $t3, $t2, 1
/* B3494 800B2894 29610004 */  slti       $at, $t3, 4
/* B3498 800B2898 1420FFF9 */  bnez       $at, .L800B2880
/* B349C 800B289C AFAB0030 */   sw        $t3, 0x30($sp)
/* B34A0 800B28A0 8FAC002C */  lw         $t4, 0x2c($sp)
/* B34A4 800B28A4 27AD001C */  addiu      $t5, $sp, 0x1c
/* B34A8 800B28A8 89810000 */  lwl        $at, ($t4)
/* B34AC 800B28AC 99810003 */  lwr        $at, 3($t4)
/* B34B0 800B28B0 ADA10000 */  sw         $at, ($t5)
/* B34B4 800B28B4 898F0004 */  lwl        $t7, 4($t4)
/* B34B8 800B28B8 998F0007 */  lwr        $t7, 7($t4)
/* B34BC 800B28BC ADAF0004 */  sw         $t7, 4($t5)
/* B34C0 800B28C0 89810008 */  lwl        $at, 8($t4)
/* B34C4 800B28C4 9981000B */  lwr        $at, 0xb($t4)
/* B34C8 800B28C8 ADA10008 */  sw         $at, 8($t5)
/* B34CC 800B28CC 93B8001D */  lbu        $t8, 0x1d($sp)
/* B34D0 800B28D0 331900C0 */  andi       $t9, $t8, 0xc0
/* B34D4 800B28D4 00194103 */  sra        $t0, $t9, 4
/* B34D8 800B28D8 AFA80034 */  sw         $t0, 0x34($sp)
/* B34DC 800B28DC 8FA90034 */  lw         $t1, 0x34($sp)
/* B34E0 800B28E0 1520000F */  bnez       $t1, .L800B2920
/* B34E4 800B28E4 00000000 */   nop
/* B34E8 800B28E8 AFA00030 */  sw         $zero, 0x30($sp)
.L800B28EC:
/* B34EC 800B28EC 8FAA0030 */  lw         $t2, 0x30($sp)
/* B34F0 800B28F0 8FAE0040 */  lw         $t6, 0x40($sp)
/* B34F4 800B28F4 03AA5821 */  addu       $t3, $sp, $t2
/* B34F8 800B28F8 916B0020 */  lbu        $t3, 0x20($t3)
/* B34FC 800B28FC A1CB0000 */  sb         $t3, ($t6)
/* B3500 800B2900 8FAD0040 */  lw         $t5, 0x40($sp)
/* B3504 800B2904 25AC0001 */  addiu      $t4, $t5, 1
/* B3508 800B2908 AFAC0040 */  sw         $t4, 0x40($sp)
/* B350C 800B290C 8FAF0030 */  lw         $t7, 0x30($sp)
/* B3510 800B2910 25F80001 */  addiu      $t8, $t7, 1
/* B3514 800B2914 2B010008 */  slti       $at, $t8, 8
/* B3518 800B2918 1420FFF4 */  bnez       $at, .L800B28EC
/* B351C 800B291C AFB80030 */   sw        $t8, 0x30($sp)
.L800B2920:
/* B3520 800B2920 0C02AA39 */  jal        __osSiRelAccess
/* B3524 800B2924 00000000 */   nop
/* B3528 800B2928 10000003 */  b          .L800B2938
/* B352C 800B292C 8FA20034 */   lw        $v0, 0x34($sp)
/* B3530 800B2930 10000001 */  b          .L800B2938
/* B3534 800B2934 00000000 */   nop
.L800B2938:
/* B3538 800B2938 8FBF0014 */  lw         $ra, 0x14($sp)
/* B353C 800B293C 27BD0038 */  addiu      $sp, $sp, 0x38
/* B3540 800B2940 03E00008 */  jr         $ra
/* B3544 800B2944 00000000 */   nop

glabel __osPackEepReadData
/* B3548 800B2948 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B354C 800B294C 308400FF */  andi       $a0, $a0, 0xff
/* B3550 800B2950 3C0E8019 */  lui        $t6, %hi(__osEepPifRam)
/* B3554 800B2954 25CEA4C0 */  addiu      $t6, $t6, %lo(__osEepPifRam)
/* B3558 800B2958 AFAE0014 */  sw         $t6, 0x14($sp)
/* B355C 800B295C AFA00004 */  sw         $zero, 4($sp)
.L800B2960:
/* B3560 800B2960 8FB80004 */  lw         $t8, 4($sp)
/* B3564 800B2964 3C018019 */  lui        $at, %hi(__osEepPifRam)
/* B3568 800B2968 240F00FF */  addiu      $t7, $zero, 0xff
/* B356C 800B296C 0018C880 */  sll        $t9, $t8, 2
/* B3570 800B2970 00390821 */  addu       $at, $at, $t9
/* B3574 800B2974 AC2FA4C0 */  sw         $t7, %lo(__osEepPifRam)($at)
/* B3578 800B2978 8FA80004 */  lw         $t0, 4($sp)
/* B357C 800B297C 25090001 */  addiu      $t1, $t0, 1
/* B3580 800B2980 29210010 */  slti       $at, $t1, 0x10
/* B3584 800B2984 1420FFF6 */  bnez       $at, .L800B2960
/* B3588 800B2988 AFA90004 */   sw        $t1, 4($sp)
/* B358C 800B298C 240A0001 */  addiu      $t2, $zero, 1
/* B3590 800B2990 3C018019 */  lui        $at, %hi(__osEepPifRam+0x3C)
/* B3594 800B2994 AC2AA4FC */  sw         $t2, %lo(__osEepPifRam+0x3C)($at)
/* B3598 800B2998 240B0002 */  addiu      $t3, $zero, 2
/* B359C 800B299C A3AB0008 */  sb         $t3, 8($sp)
/* B35A0 800B29A0 240C0008 */  addiu      $t4, $zero, 8
/* B35A4 800B29A4 A3AC0009 */  sb         $t4, 9($sp)
/* B35A8 800B29A8 240D0004 */  addiu      $t5, $zero, 4
/* B35AC 800B29AC A3AD000A */  sb         $t5, 0xa($sp)
/* B35B0 800B29B0 A3A4000B */  sb         $a0, 0xb($sp)
/* B35B4 800B29B4 AFA00004 */  sw         $zero, 4($sp)
.L800B29B8:
/* B35B8 800B29B8 8FAE0004 */  lw         $t6, 4($sp)
/* B35BC 800B29BC 03AEC021 */  addu       $t8, $sp, $t6
/* B35C0 800B29C0 A300000C */  sb         $zero, 0xc($t8)
/* B35C4 800B29C4 8FAF0004 */  lw         $t7, 4($sp)
/* B35C8 800B29C8 25F90001 */  addiu      $t9, $t7, 1
/* B35CC 800B29CC 2B210008 */  slti       $at, $t9, 8
/* B35D0 800B29D0 1420FFF9 */  bnez       $at, .L800B29B8
/* B35D4 800B29D4 AFB90004 */   sw        $t9, 4($sp)
/* B35D8 800B29D8 AFA00004 */  sw         $zero, 4($sp)
.L800B29DC:
/* B35DC 800B29DC 8FA80014 */  lw         $t0, 0x14($sp)
/* B35E0 800B29E0 A1000000 */  sb         $zero, ($t0)
/* B35E4 800B29E4 8FA90014 */  lw         $t1, 0x14($sp)
/* B35E8 800B29E8 252A0001 */  addiu      $t2, $t1, 1
/* B35EC 800B29EC AFAA0014 */  sw         $t2, 0x14($sp)
/* B35F0 800B29F0 8FAB0004 */  lw         $t3, 4($sp)
/* B35F4 800B29F4 256C0001 */  addiu      $t4, $t3, 1
/* B35F8 800B29F8 29810004 */  slti       $at, $t4, 4
/* B35FC 800B29FC 1420FFF7 */  bnez       $at, .L800B29DC
/* B3600 800B2A00 AFAC0004 */   sw        $t4, 4($sp)
/* B3604 800B2A04 27AE0008 */  addiu      $t6, $sp, 8
/* B3608 800B2A08 8DC10000 */  lw         $at, ($t6)
/* B360C 800B2A0C 8FAD0014 */  lw         $t5, 0x14($sp)
/* B3610 800B2A10 A9A10000 */  swl        $at, ($t5)
/* B3614 800B2A14 B9A10003 */  swr        $at, 3($t5)
/* B3618 800B2A18 8DCF0004 */  lw         $t7, 4($t6)
/* B361C 800B2A1C A9AF0004 */  swl        $t7, 4($t5)
/* B3620 800B2A20 B9AF0007 */  swr        $t7, 7($t5)
/* B3624 800B2A24 8DC10008 */  lw         $at, 8($t6)
/* B3628 800B2A28 A9A10008 */  swl        $at, 8($t5)
/* B362C 800B2A2C B9A1000B */  swr        $at, 0xb($t5)
/* B3630 800B2A30 8FB90014 */  lw         $t9, 0x14($sp)
/* B3634 800B2A34 2728000C */  addiu      $t0, $t9, 0xc
/* B3638 800B2A38 AFA80014 */  sw         $t0, 0x14($sp)
/* B363C 800B2A3C 8FAA0014 */  lw         $t2, 0x14($sp)
/* B3640 800B2A40 240900FE */  addiu      $t1, $zero, 0xfe
/* B3644 800B2A44 A1490000 */  sb         $t1, ($t2)
/* B3648 800B2A48 10000001 */  b          .L800B2A50
/* B364C 800B2A4C 00000000 */   nop
.L800B2A50:
/* B3650 800B2A50 03E00008 */  jr         $ra
/* B3654 800B2A54 27BD0018 */   addiu     $sp, $sp, 0x18
/* B3658 800B2A58 00000000 */  nop
/* B365C 800B2A5C 00000000 */  nop
