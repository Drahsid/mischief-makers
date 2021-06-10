glabel func_800A295C
/* A355C 800A295C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A3560 800A2960 8C8E0000 */  lw         $t6, ($a0)
/* A3564 800A2964 AFAE002C */  sw         $t6, 0x2c($sp)
/* A3568 800A2968 3C01800F */  lui        $at, %hi(D_800EA544)
/* A356C 800A296C A420A544 */  sh         $zero, %lo(D_800EA544)($at)
/* A3570 800A2970 3C018018 */  lui        $at, %hi(D_801856C8)
/* A3574 800A2974 AC2056C8 */  sw         $zero, %lo(D_801856C8)($at)
/* A3578 800A2978 3C018018 */  lui        $at, %hi(D_801856CC)
/* A357C 800A297C AC2056CC */  sw         $zero, %lo(D_801856CC)($at)
/* A3580 800A2980 240F0140 */  addiu      $t7, $zero, 0x140
/* A3584 800A2984 3C018018 */  lui        $at, %hi(D_801856C0)
/* A3588 800A2988 AC2F56C0 */  sw         $t7, %lo(D_801856C0)($at)
/* A358C 800A298C 241800F0 */  addiu      $t8, $zero, 0xf0
/* A3590 800A2990 3C018018 */  lui        $at, %hi(D_801856C4)
/* A3594 800A2994 AC3856C4 */  sw         $t8, %lo(D_801856C4)($at)
/* A3598 800A2998 8FB9002C */  lw         $t9, 0x2c($sp)
/* A359C 800A299C 27280008 */  addiu      $t0, $t9, 8
/* A35A0 800A29A0 AFA8002C */  sw         $t0, 0x2c($sp)
/* A35A4 800A29A4 AFB90028 */  sw         $t9, 0x28($sp)
/* A35A8 800A29A8 8FAA0028 */  lw         $t2, 0x28($sp)
/* A35AC 800A29AC 3C09E700 */  lui        $t1, 0xe700
/* A35B0 800A29B0 AD490000 */  sw         $t1, ($t2)
/* A35B4 800A29B4 8FAB0028 */  lw         $t3, 0x28($sp)
/* A35B8 800A29B8 AD600004 */  sw         $zero, 4($t3)
/* A35BC 800A29BC 8FAC002C */  lw         $t4, 0x2c($sp)
/* A35C0 800A29C0 258D0008 */  addiu      $t5, $t4, 8
/* A35C4 800A29C4 AFAD002C */  sw         $t5, 0x2c($sp)
/* A35C8 800A29C8 AFAC0024 */  sw         $t4, 0x24($sp)
/* A35CC 800A29CC 8FAF0024 */  lw         $t7, 0x24($sp)
/* A35D0 800A29D0 3C0EBA00 */  lui        $t6, 0xba00
/* A35D4 800A29D4 35CE1402 */  ori        $t6, $t6, 0x1402
/* A35D8 800A29D8 ADEE0000 */  sw         $t6, ($t7)
/* A35DC 800A29DC 8FB80024 */  lw         $t8, 0x24($sp)
/* A35E0 800A29E0 AF000004 */  sw         $zero, 4($t8)
/* A35E4 800A29E4 8FB9002C */  lw         $t9, 0x2c($sp)
/* A35E8 800A29E8 27280008 */  addiu      $t0, $t9, 8
/* A35EC 800A29EC AFA8002C */  sw         $t0, 0x2c($sp)
/* A35F0 800A29F0 AFB90020 */  sw         $t9, 0x20($sp)
/* A35F4 800A29F4 8FAA0020 */  lw         $t2, 0x20($sp)
/* A35F8 800A29F8 3C09BB00 */  lui        $t1, 0xbb00
/* A35FC 800A29FC 35290001 */  ori        $t1, $t1, 1
/* A3600 800A2A00 AD490000 */  sw         $t1, ($t2)
/* A3604 800A2A04 8FAC0020 */  lw         $t4, 0x20($sp)
/* A3608 800A2A08 3C0B8000 */  lui        $t3, 0x8000
/* A360C 800A2A0C 356B8000 */  ori        $t3, $t3, 0x8000
/* A3610 800A2A10 AD8B0004 */  sw         $t3, 4($t4)
/* A3614 800A2A14 8FAD002C */  lw         $t5, 0x2c($sp)
/* A3618 800A2A18 25AE0008 */  addiu      $t6, $t5, 8
/* A361C 800A2A1C AFAE002C */  sw         $t6, 0x2c($sp)
/* A3620 800A2A20 AFAD001C */  sw         $t5, 0x1c($sp)
/* A3624 800A2A24 8FB8001C */  lw         $t8, 0x1c($sp)
/* A3628 800A2A28 3C0FB900 */  lui        $t7, 0xb900
/* A362C 800A2A2C 35EF0002 */  ori        $t7, $t7, 2
/* A3630 800A2A30 AF0F0000 */  sw         $t7, ($t8)
/* A3634 800A2A34 8FB9001C */  lw         $t9, 0x1c($sp)
/* A3638 800A2A38 AF200004 */  sw         $zero, 4($t9)
/* A363C 800A2A3C 8FA8002C */  lw         $t0, 0x2c($sp)
/* A3640 800A2A40 25090008 */  addiu      $t1, $t0, 8
/* A3644 800A2A44 AFA9002C */  sw         $t1, 0x2c($sp)
/* A3648 800A2A48 AFA80018 */  sw         $t0, 0x18($sp)
/* A364C 800A2A4C 8FAB0018 */  lw         $t3, 0x18($sp)
/* A3650 800A2A50 3C0ABA00 */  lui        $t2, 0xba00
/* A3654 800A2A54 354A1301 */  ori        $t2, $t2, 0x1301
/* A3658 800A2A58 AD6A0000 */  sw         $t2, ($t3)
/* A365C 800A2A5C 8FAC0018 */  lw         $t4, 0x18($sp)
/* A3660 800A2A60 AD800004 */  sw         $zero, 4($t4)
/* A3664 800A2A64 8FAD002C */  lw         $t5, 0x2c($sp)
/* A3668 800A2A68 25AE0008 */  addiu      $t6, $t5, 8
/* A366C 800A2A6C AFAE002C */  sw         $t6, 0x2c($sp)
/* A3670 800A2A70 AFAD0014 */  sw         $t5, 0x14($sp)
/* A3674 800A2A74 8FB80014 */  lw         $t8, 0x14($sp)
/* A3678 800A2A78 3C0FBA00 */  lui        $t7, 0xba00
/* A367C 800A2A7C 35EF0C02 */  ori        $t7, $t7, 0xc02
/* A3680 800A2A80 AF0F0000 */  sw         $t7, ($t8)
/* A3684 800A2A84 8FA80014 */  lw         $t0, 0x14($sp)
/* A3688 800A2A88 24192000 */  addiu      $t9, $zero, 0x2000
/* A368C 800A2A8C AD190004 */  sw         $t9, 4($t0)
/* A3690 800A2A90 8FA9002C */  lw         $t1, 0x2c($sp)
/* A3694 800A2A94 252A0008 */  addiu      $t2, $t1, 8
/* A3698 800A2A98 AFAA002C */  sw         $t2, 0x2c($sp)
/* A369C 800A2A9C AFA90010 */  sw         $t1, 0x10($sp)
/* A36A0 800A2AA0 8FAC0010 */  lw         $t4, 0x10($sp)
/* A36A4 800A2AA4 3C0BBA00 */  lui        $t3, 0xba00
/* A36A8 800A2AA8 356B0903 */  ori        $t3, $t3, 0x903
/* A36AC 800A2AAC AD8B0000 */  sw         $t3, ($t4)
/* A36B0 800A2AB0 8FAE0010 */  lw         $t6, 0x10($sp)
/* A36B4 800A2AB4 240D0C00 */  addiu      $t5, $zero, 0xc00
/* A36B8 800A2AB8 ADCD0004 */  sw         $t5, 4($t6)
/* A36BC 800A2ABC 8FAF002C */  lw         $t7, 0x2c($sp)
/* A36C0 800A2AC0 25F80008 */  addiu      $t8, $t7, 8
/* A36C4 800A2AC4 AFB8002C */  sw         $t8, 0x2c($sp)
/* A36C8 800A2AC8 AFAF000C */  sw         $t7, 0xc($sp)
/* A36CC 800A2ACC 8FA8000C */  lw         $t0, 0xc($sp)
/* A36D0 800A2AD0 3C19BA00 */  lui        $t9, 0xba00
/* A36D4 800A2AD4 37391102 */  ori        $t9, $t9, 0x1102
/* A36D8 800A2AD8 AD190000 */  sw         $t9, ($t0)
/* A36DC 800A2ADC 8FA9000C */  lw         $t1, 0xc($sp)
/* A36E0 800A2AE0 AD200004 */  sw         $zero, 4($t1)
/* A36E4 800A2AE4 8FAA002C */  lw         $t2, 0x2c($sp)
/* A36E8 800A2AE8 254B0008 */  addiu      $t3, $t2, 8
/* A36EC 800A2AEC AFAB002C */  sw         $t3, 0x2c($sp)
/* A36F0 800A2AF0 AFAA0008 */  sw         $t2, 8($sp)
/* A36F4 800A2AF4 8FAD0008 */  lw         $t5, 8($sp)
/* A36F8 800A2AF8 3C0CBA00 */  lui        $t4, 0xba00
/* A36FC 800A2AFC 358C1001 */  ori        $t4, $t4, 0x1001
/* A3700 800A2B00 ADAC0000 */  sw         $t4, ($t5)
/* A3704 800A2B04 8FAE0008 */  lw         $t6, 8($sp)
/* A3708 800A2B08 ADC00004 */  sw         $zero, 4($t6)
/* A370C 800A2B0C 8FAF002C */  lw         $t7, 0x2c($sp)
/* A3710 800A2B10 25F80008 */  addiu      $t8, $t7, 8
/* A3714 800A2B14 AFB8002C */  sw         $t8, 0x2c($sp)
/* A3718 800A2B18 AFAF0004 */  sw         $t7, 4($sp)
/* A371C 800A2B1C 8FA80004 */  lw         $t0, 4($sp)
/* A3720 800A2B20 3C19BA00 */  lui        $t9, 0xba00
/* A3724 800A2B24 37390E02 */  ori        $t9, $t9, 0xe02
/* A3728 800A2B28 AD190000 */  sw         $t9, ($t0)
/* A372C 800A2B2C 8FA90004 */  lw         $t1, 4($sp)
/* A3730 800A2B30 AD200004 */  sw         $zero, 4($t1)
/* A3734 800A2B34 8FAA002C */  lw         $t2, 0x2c($sp)
/* A3738 800A2B38 254B0008 */  addiu      $t3, $t2, 8
/* A373C 800A2B3C AFAB002C */  sw         $t3, 0x2c($sp)
/* A3740 800A2B40 AFAA0000 */  sw         $t2, ($sp)
/* A3744 800A2B44 8FAD0000 */  lw         $t5, ($sp)
/* A3748 800A2B48 3C0CB900 */  lui        $t4, 0xb900
/* A374C 800A2B4C 358C031D */  ori        $t4, $t4, 0x31d
/* A3750 800A2B50 ADAC0000 */  sw         $t4, ($t5)
/* A3754 800A2B54 8FAF0000 */  lw         $t7, ($sp)
/* A3758 800A2B58 3C0E0F0A */  lui        $t6, 0xf0a
/* A375C 800A2B5C 35CE7008 */  ori        $t6, $t6, 0x7008
/* A3760 800A2B60 ADEE0004 */  sw         $t6, 4($t7)
/* A3764 800A2B64 8FB8002C */  lw         $t8, 0x2c($sp)
/* A3768 800A2B68 AC980000 */  sw         $t8, ($a0)
/* A376C 800A2B6C 10000001 */  b          .L800A2B74
/* A3770 800A2B70 00000000 */   nop
.L800A2B74:
/* A3774 800A2B74 03E00008 */  jr         $ra
/* A3778 800A2B78 27BD0030 */   addiu     $sp, $sp, 0x30
