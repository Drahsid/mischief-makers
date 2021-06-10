glabel func_800B3310
/* B3F10 800B3310 27BDFF58 */  addiu      $sp, $sp, -0xa8
/* B3F14 800B3314 AFBF0014 */  sw         $ra, 0x14($sp)
/* B3F18 800B3318 AFA400A8 */  sw         $a0, 0xa8($sp)
/* B3F1C 800B331C AFA500AC */  sw         $a1, 0xac($sp)
/* B3F20 800B3320 AFA600B0 */  sw         $a2, 0xb0($sp)
/* B3F24 800B3324 AFA700B4 */  sw         $a3, 0xb4($sp)
/* B3F28 800B3328 AFA0009C */  sw         $zero, 0x9c($sp)
.L800B332C:
/* B3F2C 800B332C 8FAE00B0 */  lw         $t6, 0xb0($sp)
/* B3F30 800B3330 AFAE006C */  sw         $t6, 0x6c($sp)
/* B3F34 800B3334 8FAF006C */  lw         $t7, 0x6c($sp)
/* B3F38 800B3338 91F80000 */  lbu        $t8, ($t7)
/* B3F3C 800B333C 1300000F */  beqz       $t8, .L800B337C
/* B3F40 800B3340 A3B8006B */   sb        $t8, 0x6b($sp)
/* B3F44 800B3344 24010025 */  addiu      $at, $zero, 0x25
/* B3F48 800B3348 1301000C */  beq        $t8, $at, .L800B337C
/* B3F4C 800B334C 00000000 */   nop
.L800B3350:
/* B3F50 800B3350 8FB9006C */  lw         $t9, 0x6c($sp)
/* B3F54 800B3354 27280001 */  addiu      $t0, $t9, 1
/* B3F58 800B3358 AFA8006C */  sw         $t0, 0x6c($sp)
/* B3F5C 800B335C 91090000 */  lbu        $t1, ($t0)
/* B3F60 800B3360 A3A9006B */  sb         $t1, 0x6b($sp)
/* B3F64 800B3364 93AA006B */  lbu        $t2, 0x6b($sp)
/* B3F68 800B3368 11400004 */  beqz       $t2, .L800B337C
/* B3F6C 800B336C 00000000 */   nop
/* B3F70 800B3370 24010025 */  addiu      $at, $zero, 0x25
/* B3F74 800B3374 1541FFF6 */  bne        $t2, $at, .L800B3350
/* B3F78 800B3378 00000000 */   nop
.L800B337C:
/* B3F7C 800B337C 8FAB006C */  lw         $t3, 0x6c($sp)
/* B3F80 800B3380 8FAC00B0 */  lw         $t4, 0xb0($sp)
/* B3F84 800B3384 016C6823 */  subu       $t5, $t3, $t4
/* B3F88 800B3388 19A00015 */  blez       $t5, .L800B33E0
/* B3F8C 800B338C 00000000 */   nop
/* B3F90 800B3390 8FAE00B0 */  lw         $t6, 0xb0($sp)
/* B3F94 800B3394 8FB900A8 */  lw         $t9, 0xa8($sp)
/* B3F98 800B3398 8FAF006C */  lw         $t7, 0x6c($sp)
/* B3F9C 800B339C 8FA400AC */  lw         $a0, 0xac($sp)
/* B3FA0 800B33A0 01C02825 */  or         $a1, $t6, $zero
/* B3FA4 800B33A4 0320F809 */  jalr       $t9
/* B3FA8 800B33A8 01EE3023 */   subu      $a2, $t7, $t6
/* B3FAC 800B33AC AFA200AC */  sw         $v0, 0xac($sp)
/* B3FB0 800B33B0 8FB800AC */  lw         $t8, 0xac($sp)
/* B3FB4 800B33B4 13000008 */  beqz       $t8, .L800B33D8
/* B3FB8 800B33B8 00000000 */   nop
/* B3FBC 800B33BC 8FA8006C */  lw         $t0, 0x6c($sp)
/* B3FC0 800B33C0 8FA900B0 */  lw         $t1, 0xb0($sp)
/* B3FC4 800B33C4 8FAB009C */  lw         $t3, 0x9c($sp)
/* B3FC8 800B33C8 01095023 */  subu       $t2, $t0, $t1
/* B3FCC 800B33CC 016A6021 */  addu       $t4, $t3, $t2
/* B3FD0 800B33D0 10000003 */  b          .L800B33E0
/* B3FD4 800B33D4 AFAC009C */   sw        $t4, 0x9c($sp)
.L800B33D8:
/* B3FD8 800B33D8 100001EE */  b          .L800B3B94
/* B3FDC 800B33DC 8FA2009C */   lw        $v0, 0x9c($sp)
.L800B33E0:
/* B3FE0 800B33E0 93AD006B */  lbu        $t5, 0x6b($sp)
/* B3FE4 800B33E4 15A00003 */  bnez       $t5, .L800B33F4
/* B3FE8 800B33E8 00000000 */   nop
/* B3FEC 800B33EC 100001E9 */  b          .L800B3B94
/* B3FF0 800B33F0 8FA2009C */   lw        $v0, 0x9c($sp)
.L800B33F4:
/* B3FF4 800B33F4 8FAF006C */  lw         $t7, 0x6c($sp)
/* B3FF8 800B33F8 25EE0001 */  addiu      $t6, $t7, 1
/* B3FFC 800B33FC AFAE006C */  sw         $t6, 0x6c($sp)
/* B4000 800B3400 AFAE00B0 */  sw         $t6, 0xb0($sp)
/* B4004 800B3404 8FB9006C */  lw         $t9, 0x6c($sp)
/* B4008 800B3408 AFA000A0 */  sw         $zero, 0xa0($sp)
/* B400C 800B340C 3C04800F */  lui        $a0, %hi(D_800EE6C4)
/* B4010 800B3410 2484E6C4 */  addiu      $a0, $a0, %lo(D_800EE6C4)
/* B4014 800B3414 0C02970C */  jal        func_800A5C30
/* B4018 800B3418 93250000 */   lbu       $a1, ($t9)
/* B401C 800B341C AFA20064 */  sw         $v0, 0x64($sp)
/* B4020 800B3420 8FB80064 */  lw         $t8, 0x64($sp)
/* B4024 800B3424 13000017 */  beqz       $t8, .L800B3484
/* B4028 800B3428 00000000 */   nop
.L800B342C:
/* B402C 800B342C 8FA90064 */  lw         $t1, 0x64($sp)
/* B4030 800B3430 3C0B800F */  lui        $t3, %hi(D_800EE6C4)
/* B4034 800B3434 256BE6C4 */  addiu      $t3, $t3, %lo(D_800EE6C4)
/* B4038 800B3438 012B5023 */  subu       $t2, $t1, $t3
/* B403C 800B343C 000A6080 */  sll        $t4, $t2, 2
/* B4040 800B3440 3C0D800F */  lui        $t5, %hi(D_800EE6CC)
/* B4044 800B3444 01AC6821 */  addu       $t5, $t5, $t4
/* B4048 800B3448 8DADE6CC */  lw         $t5, %lo(D_800EE6CC)($t5)
/* B404C 800B344C 8FA800A0 */  lw         $t0, 0xa0($sp)
/* B4050 800B3450 010D7825 */  or         $t7, $t0, $t5
/* B4054 800B3454 AFAF00A0 */  sw         $t7, 0xa0($sp)
/* B4058 800B3458 8FAE006C */  lw         $t6, 0x6c($sp)
/* B405C 800B345C 3C04800F */  lui        $a0, %hi(D_800EE6C4)
/* B4060 800B3460 2484E6C4 */  addiu      $a0, $a0, %lo(D_800EE6C4)
/* B4064 800B3464 25D90001 */  addiu      $t9, $t6, 1
/* B4068 800B3468 AFB9006C */  sw         $t9, 0x6c($sp)
/* B406C 800B346C 0C02970C */  jal        func_800A5C30
/* B4070 800B3470 93250000 */   lbu       $a1, ($t9)
/* B4074 800B3474 AFA20064 */  sw         $v0, 0x64($sp)
/* B4078 800B3478 8FB80064 */  lw         $t8, 0x64($sp)
/* B407C 800B347C 1700FFEB */  bnez       $t8, .L800B342C
/* B4080 800B3480 00000000 */   nop
.L800B3484:
/* B4084 800B3484 8FA9006C */  lw         $t1, 0x6c($sp)
/* B4088 800B3488 2401002A */  addiu      $at, $zero, 0x2a
/* B408C 800B348C 912B0000 */  lbu        $t3, ($t1)
/* B4090 800B3490 15610016 */  bne        $t3, $at, .L800B34EC
/* B4094 800B3494 00000000 */   nop
/* B4098 800B3498 8FAA00B4 */  lw         $t2, 0xb4($sp)
/* B409C 800B349C 2401FFFC */  addiu      $at, $zero, -4
/* B40A0 800B34A0 254C0003 */  addiu      $t4, $t2, 3
/* B40A4 800B34A4 01814024 */  and        $t0, $t4, $at
/* B40A8 800B34A8 250D0004 */  addiu      $t5, $t0, 4
/* B40AC 800B34AC AFAD00B4 */  sw         $t5, 0xb4($sp)
/* B40B0 800B34B0 8D0F0000 */  lw         $t7, ($t0)
/* B40B4 800B34B4 AFAF0098 */  sw         $t7, 0x98($sp)
/* B40B8 800B34B8 8FAE0098 */  lw         $t6, 0x98($sp)
/* B40BC 800B34BC 05C10007 */  bgez       $t6, .L800B34DC
/* B40C0 800B34C0 00000000 */   nop
/* B40C4 800B34C4 8FB90098 */  lw         $t9, 0x98($sp)
/* B40C8 800B34C8 0019C023 */  negu       $t8, $t9
/* B40CC 800B34CC AFB80098 */  sw         $t8, 0x98($sp)
/* B40D0 800B34D0 8FA900A0 */  lw         $t1, 0xa0($sp)
/* B40D4 800B34D4 352B0004 */  ori        $t3, $t1, 4
/* B40D8 800B34D8 AFAB00A0 */  sw         $t3, 0xa0($sp)
.L800B34DC:
/* B40DC 800B34DC 8FAA006C */  lw         $t2, 0x6c($sp)
/* B40E0 800B34E0 254C0001 */  addiu      $t4, $t2, 1
/* B40E4 800B34E4 10000021 */  b          .L800B356C
/* B40E8 800B34E8 AFAC006C */   sw        $t4, 0x6c($sp)
.L800B34EC:
/* B40EC 800B34EC 8FAD006C */  lw         $t5, 0x6c($sp)
/* B40F0 800B34F0 AFA00098 */  sw         $zero, 0x98($sp)
/* B40F4 800B34F4 91A80000 */  lbu        $t0, ($t5)
/* B40F8 800B34F8 29010030 */  slti       $at, $t0, 0x30
/* B40FC 800B34FC 1420001B */  bnez       $at, .L800B356C
/* B4100 800B3500 00000000 */   nop
/* B4104 800B3504 2901003A */  slti       $at, $t0, 0x3a
/* B4108 800B3508 10200018 */  beqz       $at, .L800B356C
/* B410C 800B350C 00000000 */   nop
.L800B3510:
/* B4110 800B3510 8FAF0098 */  lw         $t7, 0x98($sp)
/* B4114 800B3514 29E103E7 */  slti       $at, $t7, 0x3e7
/* B4118 800B3518 1020000A */  beqz       $at, .L800B3544
/* B411C 800B351C 00000000 */   nop
/* B4120 800B3520 8FAE006C */  lw         $t6, 0x6c($sp)
/* B4124 800B3524 8FB80098 */  lw         $t8, 0x98($sp)
/* B4128 800B3528 91D90000 */  lbu        $t9, ($t6)
/* B412C 800B352C 00184880 */  sll        $t1, $t8, 2
/* B4130 800B3530 01384821 */  addu       $t1, $t1, $t8
/* B4134 800B3534 00094840 */  sll        $t1, $t1, 1
/* B4138 800B3538 03295821 */  addu       $t3, $t9, $t1
/* B413C 800B353C 256AFFD0 */  addiu      $t2, $t3, -0x30
/* B4140 800B3540 AFAA0098 */  sw         $t2, 0x98($sp)
.L800B3544:
/* B4144 800B3544 8FAC006C */  lw         $t4, 0x6c($sp)
/* B4148 800B3548 258D0001 */  addiu      $t5, $t4, 1
/* B414C 800B354C AFAD006C */  sw         $t5, 0x6c($sp)
/* B4150 800B3550 91A80000 */  lbu        $t0, ($t5)
/* B4154 800B3554 29010030 */  slti       $at, $t0, 0x30
/* B4158 800B3558 14200004 */  bnez       $at, .L800B356C
/* B415C 800B355C 00000000 */   nop
/* B4160 800B3560 2901003A */  slti       $at, $t0, 0x3a
/* B4164 800B3564 1420FFEA */  bnez       $at, .L800B3510
/* B4168 800B3568 00000000 */   nop
.L800B356C:
/* B416C 800B356C 8FAF006C */  lw         $t7, 0x6c($sp)
/* B4170 800B3570 2401002E */  addiu      $at, $zero, 0x2e
/* B4174 800B3574 91EE0000 */  lbu        $t6, ($t7)
/* B4178 800B3578 11C10004 */  beq        $t6, $at, .L800B358C
/* B417C 800B357C 00000000 */   nop
/* B4180 800B3580 2418FFFF */  addiu      $t8, $zero, -1
/* B4184 800B3584 10000034 */  b          .L800B3658
/* B4188 800B3588 AFB80094 */   sw        $t8, 0x94($sp)
.L800B358C:
/* B418C 800B358C 8FB9006C */  lw         $t9, 0x6c($sp)
/* B4190 800B3590 2401002A */  addiu      $at, $zero, 0x2a
/* B4194 800B3594 27290001 */  addiu      $t1, $t9, 1
/* B4198 800B3598 AFA9006C */  sw         $t1, 0x6c($sp)
/* B419C 800B359C 912B0000 */  lbu        $t3, ($t1)
/* B41A0 800B35A0 1561000D */  bne        $t3, $at, .L800B35D8
/* B41A4 800B35A4 00000000 */   nop
/* B41A8 800B35A8 8FAA00B4 */  lw         $t2, 0xb4($sp)
/* B41AC 800B35AC 2401FFFC */  addiu      $at, $zero, -4
/* B41B0 800B35B0 254C0003 */  addiu      $t4, $t2, 3
/* B41B4 800B35B4 01816824 */  and        $t5, $t4, $at
/* B41B8 800B35B8 25A80004 */  addiu      $t0, $t5, 4
/* B41BC 800B35BC AFA800B4 */  sw         $t0, 0xb4($sp)
/* B41C0 800B35C0 8DAF0000 */  lw         $t7, ($t5)
/* B41C4 800B35C4 AFAF0094 */  sw         $t7, 0x94($sp)
/* B41C8 800B35C8 8FAE006C */  lw         $t6, 0x6c($sp)
/* B41CC 800B35CC 25D80001 */  addiu      $t8, $t6, 1
/* B41D0 800B35D0 10000021 */  b          .L800B3658
/* B41D4 800B35D4 AFB8006C */   sw        $t8, 0x6c($sp)
.L800B35D8:
/* B41D8 800B35D8 8FB9006C */  lw         $t9, 0x6c($sp)
/* B41DC 800B35DC AFA00094 */  sw         $zero, 0x94($sp)
/* B41E0 800B35E0 93290000 */  lbu        $t1, ($t9)
/* B41E4 800B35E4 29210030 */  slti       $at, $t1, 0x30
/* B41E8 800B35E8 1420001B */  bnez       $at, .L800B3658
/* B41EC 800B35EC 00000000 */   nop
/* B41F0 800B35F0 2921003A */  slti       $at, $t1, 0x3a
/* B41F4 800B35F4 10200018 */  beqz       $at, .L800B3658
/* B41F8 800B35F8 00000000 */   nop
.L800B35FC:
/* B41FC 800B35FC 8FAB0094 */  lw         $t3, 0x94($sp)
/* B4200 800B3600 296103E7 */  slti       $at, $t3, 0x3e7
/* B4204 800B3604 1020000A */  beqz       $at, .L800B3630
/* B4208 800B3608 00000000 */   nop
/* B420C 800B360C 8FAA006C */  lw         $t2, 0x6c($sp)
/* B4210 800B3610 8FA80094 */  lw         $t0, 0x94($sp)
/* B4214 800B3614 914C0000 */  lbu        $t4, ($t2)
/* B4218 800B3618 00086880 */  sll        $t5, $t0, 2
/* B421C 800B361C 01A86821 */  addu       $t5, $t5, $t0
/* B4220 800B3620 000D6840 */  sll        $t5, $t5, 1
/* B4224 800B3624 018D7821 */  addu       $t7, $t4, $t5
/* B4228 800B3628 25EEFFD0 */  addiu      $t6, $t7, -0x30
/* B422C 800B362C AFAE0094 */  sw         $t6, 0x94($sp)
.L800B3630:
/* B4230 800B3630 8FB8006C */  lw         $t8, 0x6c($sp)
/* B4234 800B3634 27190001 */  addiu      $t9, $t8, 1
/* B4238 800B3638 AFB9006C */  sw         $t9, 0x6c($sp)
/* B423C 800B363C 93290000 */  lbu        $t1, ($t9)
/* B4240 800B3640 29210030 */  slti       $at, $t1, 0x30
/* B4244 800B3644 14200004 */  bnez       $at, .L800B3658
/* B4248 800B3648 00000000 */   nop
/* B424C 800B364C 2921003A */  slti       $at, $t1, 0x3a
/* B4250 800B3650 1420FFEA */  bnez       $at, .L800B35FC
/* B4254 800B3654 00000000 */   nop
.L800B3658:
/* B4258 800B3658 8FAB006C */  lw         $t3, 0x6c($sp)
/* B425C 800B365C 3C04800F */  lui        $a0, %hi(D_800EE6C0)
/* B4260 800B3660 2484E6C0 */  addiu      $a0, $a0, %lo(D_800EE6C0)
/* B4264 800B3664 0C02970C */  jal        func_800A5C30
/* B4268 800B3668 91650000 */   lbu       $a1, ($t3)
/* B426C 800B366C 10400007 */  beqz       $v0, .L800B368C
/* B4270 800B3670 00000000 */   nop
/* B4274 800B3674 8FAA006C */  lw         $t2, 0x6c($sp)
/* B4278 800B3678 91480000 */  lbu        $t0, ($t2)
/* B427C 800B367C 254C0001 */  addiu      $t4, $t2, 1
/* B4280 800B3680 AFAC006C */  sw         $t4, 0x6c($sp)
/* B4284 800B3684 10000002 */  b          .L800B3690
/* B4288 800B3688 A3A800A4 */   sb        $t0, 0xa4($sp)
.L800B368C:
/* B428C 800B368C A3A000A4 */  sb         $zero, 0xa4($sp)
.L800B3690:
/* B4290 800B3690 93AD00A4 */  lbu        $t5, 0xa4($sp)
/* B4294 800B3694 2401006C */  addiu      $at, $zero, 0x6c
/* B4298 800B3698 15A1000B */  bne        $t5, $at, .L800B36C8
/* B429C 800B369C 00000000 */   nop
/* B42A0 800B36A0 8FAF006C */  lw         $t7, 0x6c($sp)
/* B42A4 800B36A4 2401006C */  addiu      $at, $zero, 0x6c
/* B42A8 800B36A8 91EE0000 */  lbu        $t6, ($t7)
/* B42AC 800B36AC 15C10006 */  bne        $t6, $at, .L800B36C8
/* B42B0 800B36B0 00000000 */   nop
/* B42B4 800B36B4 2418004C */  addiu      $t8, $zero, 0x4c
/* B42B8 800B36B8 A3B800A4 */  sb         $t8, 0xa4($sp)
/* B42BC 800B36BC 8FB9006C */  lw         $t9, 0x6c($sp)
/* B42C0 800B36C0 27290001 */  addiu      $t1, $t9, 1
/* B42C4 800B36C4 AFA9006C */  sw         $t1, 0x6c($sp)
.L800B36C8:
/* B42C8 800B36C8 8FAB006C */  lw         $t3, 0x6c($sp)
/* B42CC 800B36CC 27A40070 */  addiu      $a0, $sp, 0x70
/* B42D0 800B36D0 27A500B4 */  addiu      $a1, $sp, 0xb4
/* B42D4 800B36D4 27A70044 */  addiu      $a3, $sp, 0x44
/* B42D8 800B36D8 0C02CEE9 */  jal        func_800B3BA4
/* B42DC 800B36DC 91660000 */   lbu       $a2, ($t3)
/* B42E0 800B36E0 8FA8007C */  lw         $t0, 0x7c($sp)
/* B42E4 800B36E4 8FAA0080 */  lw         $t2, 0x80($sp)
/* B42E8 800B36E8 8FAD0084 */  lw         $t5, 0x84($sp)
/* B42EC 800B36EC 8FAE0088 */  lw         $t6, 0x88($sp)
/* B42F0 800B36F0 8FB9008C */  lw         $t9, 0x8c($sp)
/* B42F4 800B36F4 010A6021 */  addu       $t4, $t0, $t2
/* B42F8 800B36F8 8FAB0090 */  lw         $t3, 0x90($sp)
/* B42FC 800B36FC 018D7821 */  addu       $t7, $t4, $t5
/* B4300 800B3700 8FAA0098 */  lw         $t2, 0x98($sp)
/* B4304 800B3704 01EEC021 */  addu       $t8, $t7, $t6
/* B4308 800B3708 03194821 */  addu       $t1, $t8, $t9
/* B430C 800B370C 012B4021 */  addu       $t0, $t1, $t3
/* B4310 800B3710 01486023 */  subu       $t4, $t2, $t0
/* B4314 800B3714 AFAC0098 */  sw         $t4, 0x98($sp)
/* B4318 800B3718 8FAD00A0 */  lw         $t5, 0xa0($sp)
/* B431C 800B371C 31AF0004 */  andi       $t7, $t5, 4
/* B4320 800B3720 15E0002B */  bnez       $t7, .L800B37D0
/* B4324 800B3724 00000000 */   nop
/* B4328 800B3728 8FAE0098 */  lw         $t6, 0x98($sp)
/* B432C 800B372C 19C00028 */  blez       $t6, .L800B37D0
/* B4330 800B3730 00000000 */   nop
/* B4334 800B3734 8FB80098 */  lw         $t8, 0x98($sp)
/* B4338 800B3738 AFB8003C */  sw         $t8, 0x3c($sp)
/* B433C 800B373C 8FB9003C */  lw         $t9, 0x3c($sp)
/* B4340 800B3740 1B200023 */  blez       $t9, .L800B37D0
/* B4344 800B3744 00000000 */   nop
.L800B3748:
/* B4348 800B3748 8FA9003C */  lw         $t1, 0x3c($sp)
/* B434C 800B374C 2D210021 */  sltiu      $at, $t1, 0x21
/* B4350 800B3750 14200004 */  bnez       $at, .L800B3764
/* B4354 800B3754 00000000 */   nop
/* B4358 800B3758 240B0020 */  addiu      $t3, $zero, 0x20
/* B435C 800B375C 10000003 */  b          .L800B376C
/* B4360 800B3760 AFAB0040 */   sw        $t3, 0x40($sp)
.L800B3764:
/* B4364 800B3764 8FAA003C */  lw         $t2, 0x3c($sp)
/* B4368 800B3768 AFAA0040 */  sw         $t2, 0x40($sp)
.L800B376C:
/* B436C 800B376C 8FA80040 */  lw         $t0, 0x40($sp)
/* B4370 800B3770 19000012 */  blez       $t0, .L800B37BC
/* B4374 800B3774 00000000 */   nop
/* B4378 800B3778 8FB900A8 */  lw         $t9, 0xa8($sp)
/* B437C 800B377C 3C05800F */  lui        $a1, %hi(D_800EA930)
/* B4380 800B3780 24A5A930 */  addiu      $a1, $a1, %lo(D_800EA930)
/* B4384 800B3784 8FA400AC */  lw         $a0, 0xac($sp)
/* B4388 800B3788 0320F809 */  jalr       $t9
/* B438C 800B378C 8FA60040 */   lw        $a2, 0x40($sp)
/* B4390 800B3790 AFA200AC */  sw         $v0, 0xac($sp)
/* B4394 800B3794 8FAC00AC */  lw         $t4, 0xac($sp)
/* B4398 800B3798 11800006 */  beqz       $t4, .L800B37B4
/* B439C 800B379C 00000000 */   nop
/* B43A0 800B37A0 8FAD009C */  lw         $t5, 0x9c($sp)
/* B43A4 800B37A4 8FAF0040 */  lw         $t7, 0x40($sp)
/* B43A8 800B37A8 01AF7021 */  addu       $t6, $t5, $t7
/* B43AC 800B37AC 10000003 */  b          .L800B37BC
/* B43B0 800B37B0 AFAE009C */   sw        $t6, 0x9c($sp)
.L800B37B4:
/* B43B4 800B37B4 100000F7 */  b          .L800B3B94
/* B43B8 800B37B8 8FA2009C */   lw        $v0, 0x9c($sp)
.L800B37BC:
/* B43BC 800B37BC 8FB8003C */  lw         $t8, 0x3c($sp)
/* B43C0 800B37C0 8FA90040 */  lw         $t1, 0x40($sp)
/* B43C4 800B37C4 03095823 */  subu       $t3, $t8, $t1
/* B43C8 800B37C8 1D60FFDF */  bgtz       $t3, .L800B3748
/* B43CC 800B37CC AFAB003C */   sw        $t3, 0x3c($sp)
.L800B37D0:
/* B43D0 800B37D0 8FAA007C */  lw         $t2, 0x7c($sp)
/* B43D4 800B37D4 19400011 */  blez       $t2, .L800B381C
/* B43D8 800B37D8 00000000 */   nop
/* B43DC 800B37DC 8FB900A8 */  lw         $t9, 0xa8($sp)
/* B43E0 800B37E0 8FA400AC */  lw         $a0, 0xac($sp)
/* B43E4 800B37E4 27A50044 */  addiu      $a1, $sp, 0x44
/* B43E8 800B37E8 0320F809 */  jalr       $t9
/* B43EC 800B37EC 8FA6007C */   lw        $a2, 0x7c($sp)
/* B43F0 800B37F0 AFA200AC */  sw         $v0, 0xac($sp)
/* B43F4 800B37F4 8FA800AC */  lw         $t0, 0xac($sp)
/* B43F8 800B37F8 11000006 */  beqz       $t0, .L800B3814
/* B43FC 800B37FC 00000000 */   nop
/* B4400 800B3800 8FAC009C */  lw         $t4, 0x9c($sp)
/* B4404 800B3804 8FAD007C */  lw         $t5, 0x7c($sp)
/* B4408 800B3808 018D7821 */  addu       $t7, $t4, $t5
/* B440C 800B380C 10000003 */  b          .L800B381C
/* B4410 800B3810 AFAF009C */   sw        $t7, 0x9c($sp)
.L800B3814:
/* B4414 800B3814 100000DF */  b          .L800B3B94
/* B4418 800B3818 8FA2009C */   lw        $v0, 0x9c($sp)
.L800B381C:
/* B441C 800B381C 8FAE0080 */  lw         $t6, 0x80($sp)
/* B4420 800B3820 19C00028 */  blez       $t6, .L800B38C4
/* B4424 800B3824 00000000 */   nop
/* B4428 800B3828 8FB80080 */  lw         $t8, 0x80($sp)
/* B442C 800B382C AFB80034 */  sw         $t8, 0x34($sp)
/* B4430 800B3830 8FA90034 */  lw         $t1, 0x34($sp)
/* B4434 800B3834 19200023 */  blez       $t1, .L800B38C4
/* B4438 800B3838 00000000 */   nop
.L800B383C:
/* B443C 800B383C 8FAB0034 */  lw         $t3, 0x34($sp)
/* B4440 800B3840 2D610021 */  sltiu      $at, $t3, 0x21
/* B4444 800B3844 14200004 */  bnez       $at, .L800B3858
/* B4448 800B3848 00000000 */   nop
/* B444C 800B384C 240A0020 */  addiu      $t2, $zero, 0x20
/* B4450 800B3850 10000003 */  b          .L800B3860
/* B4454 800B3854 AFAA0038 */   sw        $t2, 0x38($sp)
.L800B3858:
/* B4458 800B3858 8FB90034 */  lw         $t9, 0x34($sp)
/* B445C 800B385C AFB90038 */  sw         $t9, 0x38($sp)
.L800B3860:
/* B4460 800B3860 8FA80038 */  lw         $t0, 0x38($sp)
/* B4464 800B3864 19000012 */  blez       $t0, .L800B38B0
/* B4468 800B3868 00000000 */   nop
/* B446C 800B386C 8FB900A8 */  lw         $t9, 0xa8($sp)
/* B4470 800B3870 3C05800F */  lui        $a1, %hi(D_800EA954)
/* B4474 800B3874 24A5A954 */  addiu      $a1, $a1, %lo(D_800EA954)
/* B4478 800B3878 8FA400AC */  lw         $a0, 0xac($sp)
/* B447C 800B387C 0320F809 */  jalr       $t9
/* B4480 800B3880 8FA60038 */   lw        $a2, 0x38($sp)
/* B4484 800B3884 AFA200AC */  sw         $v0, 0xac($sp)
/* B4488 800B3888 8FAC00AC */  lw         $t4, 0xac($sp)
/* B448C 800B388C 11800006 */  beqz       $t4, .L800B38A8
/* B4490 800B3890 00000000 */   nop
/* B4494 800B3894 8FAD009C */  lw         $t5, 0x9c($sp)
/* B4498 800B3898 8FAF0038 */  lw         $t7, 0x38($sp)
/* B449C 800B389C 01AF7021 */  addu       $t6, $t5, $t7
/* B44A0 800B38A0 10000003 */  b          .L800B38B0
/* B44A4 800B38A4 AFAE009C */   sw        $t6, 0x9c($sp)
.L800B38A8:
/* B44A8 800B38A8 100000BA */  b          .L800B3B94
/* B44AC 800B38AC 8FA2009C */   lw        $v0, 0x9c($sp)
.L800B38B0:
/* B44B0 800B38B0 8FB80034 */  lw         $t8, 0x34($sp)
/* B44B4 800B38B4 8FA90038 */  lw         $t1, 0x38($sp)
/* B44B8 800B38B8 03095823 */  subu       $t3, $t8, $t1
/* B44BC 800B38BC 1D60FFDF */  bgtz       $t3, .L800B383C
/* B44C0 800B38C0 AFAB0034 */   sw        $t3, 0x34($sp)
.L800B38C4:
/* B44C4 800B38C4 8FAA0084 */  lw         $t2, 0x84($sp)
/* B44C8 800B38C8 19400011 */  blez       $t2, .L800B3910
/* B44CC 800B38CC 00000000 */   nop
/* B44D0 800B38D0 8FB900A8 */  lw         $t9, 0xa8($sp)
/* B44D4 800B38D4 8FA400AC */  lw         $a0, 0xac($sp)
/* B44D8 800B38D8 8FA50078 */  lw         $a1, 0x78($sp)
/* B44DC 800B38DC 0320F809 */  jalr       $t9
/* B44E0 800B38E0 8FA60084 */   lw        $a2, 0x84($sp)
/* B44E4 800B38E4 AFA200AC */  sw         $v0, 0xac($sp)
/* B44E8 800B38E8 8FA800AC */  lw         $t0, 0xac($sp)
/* B44EC 800B38EC 11000006 */  beqz       $t0, .L800B3908
/* B44F0 800B38F0 00000000 */   nop
/* B44F4 800B38F4 8FAC009C */  lw         $t4, 0x9c($sp)
/* B44F8 800B38F8 8FAD0084 */  lw         $t5, 0x84($sp)
/* B44FC 800B38FC 018D7821 */  addu       $t7, $t4, $t5
/* B4500 800B3900 10000003 */  b          .L800B3910
/* B4504 800B3904 AFAF009C */   sw        $t7, 0x9c($sp)
.L800B3908:
/* B4508 800B3908 100000A2 */  b          .L800B3B94
/* B450C 800B390C 8FA2009C */   lw        $v0, 0x9c($sp)
.L800B3910:
/* B4510 800B3910 8FAE0088 */  lw         $t6, 0x88($sp)
/* B4514 800B3914 19C00028 */  blez       $t6, .L800B39B8
/* B4518 800B3918 00000000 */   nop
/* B451C 800B391C 8FB80088 */  lw         $t8, 0x88($sp)
/* B4520 800B3920 AFB8002C */  sw         $t8, 0x2c($sp)
/* B4524 800B3924 8FA9002C */  lw         $t1, 0x2c($sp)
/* B4528 800B3928 19200023 */  blez       $t1, .L800B39B8
/* B452C 800B392C 00000000 */   nop
.L800B3930:
/* B4530 800B3930 8FAB002C */  lw         $t3, 0x2c($sp)
/* B4534 800B3934 2D610021 */  sltiu      $at, $t3, 0x21
/* B4538 800B3938 14200004 */  bnez       $at, .L800B394C
/* B453C 800B393C 00000000 */   nop
/* B4540 800B3940 240A0020 */  addiu      $t2, $zero, 0x20
/* B4544 800B3944 10000003 */  b          .L800B3954
/* B4548 800B3948 AFAA0030 */   sw        $t2, 0x30($sp)
.L800B394C:
/* B454C 800B394C 8FB9002C */  lw         $t9, 0x2c($sp)
/* B4550 800B3950 AFB90030 */  sw         $t9, 0x30($sp)
.L800B3954:
/* B4554 800B3954 8FA80030 */  lw         $t0, 0x30($sp)
/* B4558 800B3958 19000012 */  blez       $t0, .L800B39A4
/* B455C 800B395C 00000000 */   nop
/* B4560 800B3960 8FB900A8 */  lw         $t9, 0xa8($sp)
/* B4564 800B3964 3C05800F */  lui        $a1, %hi(D_800EA954)
/* B4568 800B3968 24A5A954 */  addiu      $a1, $a1, %lo(D_800EA954)
/* B456C 800B396C 8FA400AC */  lw         $a0, 0xac($sp)
/* B4570 800B3970 0320F809 */  jalr       $t9
/* B4574 800B3974 8FA60030 */   lw        $a2, 0x30($sp)
/* B4578 800B3978 AFA200AC */  sw         $v0, 0xac($sp)
/* B457C 800B397C 8FAC00AC */  lw         $t4, 0xac($sp)
/* B4580 800B3980 11800006 */  beqz       $t4, .L800B399C
/* B4584 800B3984 00000000 */   nop
/* B4588 800B3988 8FAD009C */  lw         $t5, 0x9c($sp)
/* B458C 800B398C 8FAF0030 */  lw         $t7, 0x30($sp)
/* B4590 800B3990 01AF7021 */  addu       $t6, $t5, $t7
/* B4594 800B3994 10000003 */  b          .L800B39A4
/* B4598 800B3998 AFAE009C */   sw        $t6, 0x9c($sp)
.L800B399C:
/* B459C 800B399C 1000007D */  b          .L800B3B94
/* B45A0 800B39A0 8FA2009C */   lw        $v0, 0x9c($sp)
.L800B39A4:
/* B45A4 800B39A4 8FB8002C */  lw         $t8, 0x2c($sp)
/* B45A8 800B39A8 8FA90030 */  lw         $t1, 0x30($sp)
/* B45AC 800B39AC 03095823 */  subu       $t3, $t8, $t1
/* B45B0 800B39B0 1D60FFDF */  bgtz       $t3, .L800B3930
/* B45B4 800B39B4 AFAB002C */   sw        $t3, 0x2c($sp)
.L800B39B8:
/* B45B8 800B39B8 8FAA008C */  lw         $t2, 0x8c($sp)
/* B45BC 800B39BC 19400014 */  blez       $t2, .L800B3A10
/* B45C0 800B39C0 00000000 */   nop
/* B45C4 800B39C4 8FA80078 */  lw         $t0, 0x78($sp)
/* B45C8 800B39C8 8FB90084 */  lw         $t9, 0x84($sp)
/* B45CC 800B39CC 8FA400AC */  lw         $a0, 0xac($sp)
/* B45D0 800B39D0 8FA6008C */  lw         $a2, 0x8c($sp)
/* B45D4 800B39D4 01192821 */  addu       $a1, $t0, $t9
/* B45D8 800B39D8 8FB900A8 */  lw         $t9, 0xa8($sp)
/* B45DC 800B39DC 0320F809 */  jalr       $t9
/* B45E0 800B39E0 00000000 */   nop
/* B45E4 800B39E4 AFA200AC */  sw         $v0, 0xac($sp)
/* B45E8 800B39E8 8FAC00AC */  lw         $t4, 0xac($sp)
/* B45EC 800B39EC 11800006 */  beqz       $t4, .L800B3A08
/* B45F0 800B39F0 00000000 */   nop
/* B45F4 800B39F4 8FAD009C */  lw         $t5, 0x9c($sp)
/* B45F8 800B39F8 8FAF008C */  lw         $t7, 0x8c($sp)
/* B45FC 800B39FC 01AF7021 */  addu       $t6, $t5, $t7
/* B4600 800B3A00 10000003 */  b          .L800B3A10
/* B4604 800B3A04 AFAE009C */   sw        $t6, 0x9c($sp)
.L800B3A08:
/* B4608 800B3A08 10000062 */  b          .L800B3B94
/* B460C 800B3A0C 8FA2009C */   lw        $v0, 0x9c($sp)
.L800B3A10:
/* B4610 800B3A10 8FB80090 */  lw         $t8, 0x90($sp)
/* B4614 800B3A14 1B000028 */  blez       $t8, .L800B3AB8
/* B4618 800B3A18 00000000 */   nop
/* B461C 800B3A1C 8FA90090 */  lw         $t1, 0x90($sp)
/* B4620 800B3A20 AFA90024 */  sw         $t1, 0x24($sp)
/* B4624 800B3A24 8FAB0024 */  lw         $t3, 0x24($sp)
/* B4628 800B3A28 19600023 */  blez       $t3, .L800B3AB8
/* B462C 800B3A2C 00000000 */   nop
.L800B3A30:
/* B4630 800B3A30 8FAA0024 */  lw         $t2, 0x24($sp)
/* B4634 800B3A34 2D410021 */  sltiu      $at, $t2, 0x21
/* B4638 800B3A38 14200004 */  bnez       $at, .L800B3A4C
/* B463C 800B3A3C 00000000 */   nop
/* B4640 800B3A40 24080020 */  addiu      $t0, $zero, 0x20
/* B4644 800B3A44 10000003 */  b          .L800B3A54
/* B4648 800B3A48 AFA80028 */   sw        $t0, 0x28($sp)
.L800B3A4C:
/* B464C 800B3A4C 8FB90024 */  lw         $t9, 0x24($sp)
/* B4650 800B3A50 AFB90028 */  sw         $t9, 0x28($sp)
.L800B3A54:
/* B4654 800B3A54 8FAC0028 */  lw         $t4, 0x28($sp)
/* B4658 800B3A58 19800012 */  blez       $t4, .L800B3AA4
/* B465C 800B3A5C 00000000 */   nop
/* B4660 800B3A60 8FB900A8 */  lw         $t9, 0xa8($sp)
/* B4664 800B3A64 3C05800F */  lui        $a1, %hi(D_800EA954)
/* B4668 800B3A68 24A5A954 */  addiu      $a1, $a1, %lo(D_800EA954)
/* B466C 800B3A6C 8FA400AC */  lw         $a0, 0xac($sp)
/* B4670 800B3A70 0320F809 */  jalr       $t9
/* B4674 800B3A74 8FA60028 */   lw        $a2, 0x28($sp)
/* B4678 800B3A78 AFA200AC */  sw         $v0, 0xac($sp)
/* B467C 800B3A7C 8FAD00AC */  lw         $t5, 0xac($sp)
/* B4680 800B3A80 11A00006 */  beqz       $t5, .L800B3A9C
/* B4684 800B3A84 00000000 */   nop
/* B4688 800B3A88 8FAF009C */  lw         $t7, 0x9c($sp)
/* B468C 800B3A8C 8FAE0028 */  lw         $t6, 0x28($sp)
/* B4690 800B3A90 01EEC021 */  addu       $t8, $t7, $t6
/* B4694 800B3A94 10000003 */  b          .L800B3AA4
/* B4698 800B3A98 AFB8009C */   sw        $t8, 0x9c($sp)
.L800B3A9C:
/* B469C 800B3A9C 1000003D */  b          .L800B3B94
/* B46A0 800B3AA0 8FA2009C */   lw        $v0, 0x9c($sp)
.L800B3AA4:
/* B46A4 800B3AA4 8FA90024 */  lw         $t1, 0x24($sp)
/* B46A8 800B3AA8 8FAB0028 */  lw         $t3, 0x28($sp)
/* B46AC 800B3AAC 012B5023 */  subu       $t2, $t1, $t3
/* B46B0 800B3AB0 1D40FFDF */  bgtz       $t2, .L800B3A30
/* B46B4 800B3AB4 AFAA0024 */   sw        $t2, 0x24($sp)
.L800B3AB8:
/* B46B8 800B3AB8 8FA800A0 */  lw         $t0, 0xa0($sp)
/* B46BC 800B3ABC 310C0004 */  andi       $t4, $t0, 4
/* B46C0 800B3AC0 1180002B */  beqz       $t4, .L800B3B70
/* B46C4 800B3AC4 00000000 */   nop
/* B46C8 800B3AC8 8FB90098 */  lw         $t9, 0x98($sp)
/* B46CC 800B3ACC 1B200028 */  blez       $t9, .L800B3B70
/* B46D0 800B3AD0 00000000 */   nop
/* B46D4 800B3AD4 8FAD0098 */  lw         $t5, 0x98($sp)
/* B46D8 800B3AD8 AFAD001C */  sw         $t5, 0x1c($sp)
/* B46DC 800B3ADC 8FAF001C */  lw         $t7, 0x1c($sp)
/* B46E0 800B3AE0 19E00023 */  blez       $t7, .L800B3B70
/* B46E4 800B3AE4 00000000 */   nop
.L800B3AE8:
/* B46E8 800B3AE8 8FAE001C */  lw         $t6, 0x1c($sp)
/* B46EC 800B3AEC 2DC10021 */  sltiu      $at, $t6, 0x21
/* B46F0 800B3AF0 14200004 */  bnez       $at, .L800B3B04
/* B46F4 800B3AF4 00000000 */   nop
/* B46F8 800B3AF8 24180020 */  addiu      $t8, $zero, 0x20
/* B46FC 800B3AFC 10000003 */  b          .L800B3B0C
/* B4700 800B3B00 AFB80020 */   sw        $t8, 0x20($sp)
.L800B3B04:
/* B4704 800B3B04 8FA9001C */  lw         $t1, 0x1c($sp)
/* B4708 800B3B08 AFA90020 */  sw         $t1, 0x20($sp)
.L800B3B0C:
/* B470C 800B3B0C 8FAB0020 */  lw         $t3, 0x20($sp)
/* B4710 800B3B10 19600012 */  blez       $t3, .L800B3B5C
/* B4714 800B3B14 00000000 */   nop
/* B4718 800B3B18 8FB900A8 */  lw         $t9, 0xa8($sp)
/* B471C 800B3B1C 3C05800F */  lui        $a1, %hi(D_800EA930)
/* B4720 800B3B20 24A5A930 */  addiu      $a1, $a1, %lo(D_800EA930)
/* B4724 800B3B24 8FA400AC */  lw         $a0, 0xac($sp)
/* B4728 800B3B28 0320F809 */  jalr       $t9
/* B472C 800B3B2C 8FA60020 */   lw        $a2, 0x20($sp)
/* B4730 800B3B30 AFA200AC */  sw         $v0, 0xac($sp)
/* B4734 800B3B34 8FAA00AC */  lw         $t2, 0xac($sp)
/* B4738 800B3B38 11400006 */  beqz       $t2, .L800B3B54
/* B473C 800B3B3C 00000000 */   nop
/* B4740 800B3B40 8FA8009C */  lw         $t0, 0x9c($sp)
/* B4744 800B3B44 8FAC0020 */  lw         $t4, 0x20($sp)
/* B4748 800B3B48 010C6821 */  addu       $t5, $t0, $t4
/* B474C 800B3B4C 10000003 */  b          .L800B3B5C
/* B4750 800B3B50 AFAD009C */   sw        $t5, 0x9c($sp)
.L800B3B54:
/* B4754 800B3B54 1000000F */  b          .L800B3B94
/* B4758 800B3B58 8FA2009C */   lw        $v0, 0x9c($sp)
.L800B3B5C:
/* B475C 800B3B5C 8FAF001C */  lw         $t7, 0x1c($sp)
/* B4760 800B3B60 8FAE0020 */  lw         $t6, 0x20($sp)
/* B4764 800B3B64 01EEC023 */  subu       $t8, $t7, $t6
/* B4768 800B3B68 1F00FFDF */  bgtz       $t8, .L800B3AE8
/* B476C 800B3B6C AFB8001C */   sw        $t8, 0x1c($sp)
.L800B3B70:
/* B4770 800B3B70 8FA9006C */  lw         $t1, 0x6c($sp)
/* B4774 800B3B74 252B0001 */  addiu      $t3, $t1, 1
/* B4778 800B3B78 AFAB00B0 */  sw         $t3, 0xb0($sp)
/* B477C 800B3B7C 1000FDEB */  b          .L800B332C
/* B4780 800B3B80 00000000 */   nop
/* B4784 800B3B84 10000003 */  b          .L800B3B94
/* B4788 800B3B88 00001025 */   or        $v0, $zero, $zero
/* B478C 800B3B8C 10000001 */  b          .L800B3B94
/* B4790 800B3B90 00000000 */   nop
.L800B3B94:
/* B4794 800B3B94 8FBF0014 */  lw         $ra, 0x14($sp)
/* B4798 800B3B98 27BD00A8 */  addiu      $sp, $sp, 0xa8
/* B479C 800B3B9C 03E00008 */  jr         $ra
/* B47A0 800B3BA0 00000000 */   nop
