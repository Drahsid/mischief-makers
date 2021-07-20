.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B3260
/* B3E60 800B3260 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B3E64 800B3264 AFBF0014 */  sw         $ra, 0x14($sp)
/* B3E68 800B3268 AFA40020 */  sw         $a0, 0x20($sp)
/* B3E6C 800B326C AFA50024 */  sw         $a1, 0x24($sp)
/* B3E70 800B3270 AFA60028 */  sw         $a2, 0x28($sp)
/* B3E74 800B3274 8FAE0020 */  lw         $t6, 0x20($sp)
/* B3E78 800B3278 8FAF0024 */  lw         $t7, 0x24($sp)
/* B3E7C 800B327C 8FB80028 */  lw         $t8, 0x28($sp)
/* B3E80 800B3280 C5C40000 */  lwc1       $f4, ($t6)
/* B3E84 800B3284 C5E80000 */  lwc1       $f8, ($t7)
/* B3E88 800B3288 C7120000 */  lwc1       $f18, ($t8)
/* B3E8C 800B328C 46042182 */  mul.s      $f6, $f4, $f4
/* B3E90 800B3290 00000000 */  nop
/* B3E94 800B3294 46084282 */  mul.s      $f10, $f8, $f8
/* B3E98 800B3298 460A3400 */  add.s      $f16, $f6, $f10
/* B3E9C 800B329C 46129102 */  mul.s      $f4, $f18, $f18
/* B3EA0 800B32A0 0C0295C4 */  jal        func_800A5710
/* B3EA4 800B32A4 46102300 */   add.s     $f12, $f4, $f16
/* B3EA8 800B32A8 3C013F80 */  lui        $at, 0x3f80
/* B3EAC 800B32AC 44814000 */  mtc1       $at, $f8
/* B3EB0 800B32B0 00000000 */  nop
/* B3EB4 800B32B4 46004183 */  div.s      $f6, $f8, $f0
/* B3EB8 800B32B8 E7A6001C */  swc1       $f6, 0x1c($sp)
/* B3EBC 800B32BC 8FB90020 */  lw         $t9, 0x20($sp)
/* B3EC0 800B32C0 C7B2001C */  lwc1       $f18, 0x1c($sp)
/* B3EC4 800B32C4 C72A0000 */  lwc1       $f10, ($t9)
/* B3EC8 800B32C8 46125102 */  mul.s      $f4, $f10, $f18
/* B3ECC 800B32CC E7240000 */  swc1       $f4, ($t9)
/* B3ED0 800B32D0 8FA80024 */  lw         $t0, 0x24($sp)
/* B3ED4 800B32D4 C7A8001C */  lwc1       $f8, 0x1c($sp)
/* B3ED8 800B32D8 C5100000 */  lwc1       $f16, ($t0)
/* B3EDC 800B32DC 46088182 */  mul.s      $f6, $f16, $f8
/* B3EE0 800B32E0 E5060000 */  swc1       $f6, ($t0)
/* B3EE4 800B32E4 8FA90028 */  lw         $t1, 0x28($sp)
/* B3EE8 800B32E8 C7B2001C */  lwc1       $f18, 0x1c($sp)
/* B3EEC 800B32EC C52A0000 */  lwc1       $f10, ($t1)
/* B3EF0 800B32F0 46125102 */  mul.s      $f4, $f10, $f18
/* B3EF4 800B32F4 E5240000 */  swc1       $f4, ($t1)
/* B3EF8 800B32F8 10000001 */  b          .L800B3300
/* B3EFC 800B32FC 00000000 */   nop
.L800B3300:
/* B3F00 800B3300 8FBF0014 */  lw         $ra, 0x14($sp)
/* B3F04 800B3304 27BD0020 */  addiu      $sp, $sp, 0x20
/* B3F08 800B3308 03E00008 */  jr         $ra
/* B3F0C 800B330C 00000000 */   nop

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

glabel func_800B3BA4
/* B47A4 800B3BA4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B47A8 800B3BA8 AFBF0024 */  sw         $ra, 0x24($sp)
/* B47AC 800B3BAC AFA40038 */  sw         $a0, 0x38($sp)
/* B47B0 800B3BB0 AFA5003C */  sw         $a1, 0x3c($sp)
/* B47B4 800B3BB4 AFA60040 */  sw         $a2, 0x40($sp)
/* B47B8 800B3BB8 AFA70044 */  sw         $a3, 0x44($sp)
/* B47BC 800B3BBC AFB30020 */  sw         $s3, 0x20($sp)
/* B47C0 800B3BC0 AFB2001C */  sw         $s2, 0x1c($sp)
/* B47C4 800B3BC4 AFB10018 */  sw         $s1, 0x18($sp)
/* B47C8 800B3BC8 AFB00014 */  sw         $s0, 0x14($sp)
/* B47CC 800B3BCC 8FAE0038 */  lw         $t6, 0x38($sp)
/* B47D0 800B3BD0 ADC00020 */  sw         $zero, 0x20($t6)
/* B47D4 800B3BD4 8FAF0038 */  lw         $t7, 0x38($sp)
/* B47D8 800B3BD8 8DF30020 */  lw         $s3, 0x20($t7)
/* B47DC 800B3BDC ADF3001C */  sw         $s3, 0x1c($t7)
/* B47E0 800B3BE0 8FB80038 */  lw         $t8, 0x38($sp)
/* B47E4 800B3BE4 02609025 */  or         $s2, $s3, $zero
/* B47E8 800B3BE8 02408825 */  or         $s1, $s2, $zero
/* B47EC 800B3BEC AF120018 */  sw         $s2, 0x18($t8)
/* B47F0 800B3BF0 8FB90038 */  lw         $t9, 0x38($sp)
/* B47F4 800B3BF4 02208025 */  or         $s0, $s1, $zero
/* B47F8 800B3BF8 AF310014 */  sw         $s1, 0x14($t9)
/* B47FC 800B3BFC 8FA80038 */  lw         $t0, 0x38($sp)
/* B4800 800B3C00 AD100010 */  sw         $s0, 0x10($t0)
/* B4804 800B3C04 8FA90038 */  lw         $t1, 0x38($sp)
/* B4808 800B3C08 AD30000C */  sw         $s0, 0xc($t1)
/* B480C 800B3C0C 93B00043 */  lbu        $s0, 0x43($sp)
/* B4810 800B3C10 2A010026 */  slti       $at, $s0, 0x26
/* B4814 800B3C14 1420000B */  bnez       $at, .L800B3C44
/* B4818 800B3C18 00000000 */   nop
/* B481C 800B3C1C 260AFFBB */  addiu      $t2, $s0, -0x45
/* B4820 800B3C20 2D410034 */  sltiu      $at, $t2, 0x34
/* B4824 800B3C24 10200235 */  beqz       $at, .L800B44FC
/* B4828 800B3C28 00000000 */   nop
/* B482C 800B3C2C 000A5080 */  sll        $t2, $t2, 2
/* B4830 800B3C30 3C01800F */  lui        $at, %hi(D_800EE6E4)
/* B4834 800B3C34 002A0821 */  addu       $at, $at, $t2
/* B4838 800B3C38 8C2AE6E4 */  lw         $t2, %lo(D_800EE6E4)($at)
/* B483C 800B3C3C 01400008 */  jr         $t2
/* B4840 800B3C40 00000000 */   nop
.L800B3C44:
/* B4844 800B3C44 24010025 */  addiu      $at, $zero, 0x25
/* B4848 800B3C48 12010220 */  beq        $s0, $at, .L800B44CC
/* B484C 800B3C4C 00000000 */   nop
/* B4850 800B3C50 1000022A */  b          .L800B44FC
/* B4854 800B3C54 00000000 */   nop
/* B4858 800B3C58 8FAB003C */  lw         $t3, 0x3c($sp)
/* B485C 800B3C5C 2401FFFC */  addiu      $at, $zero, -4
/* B4860 800B3C60 8D6C0000 */  lw         $t4, ($t3)
/* B4864 800B3C64 258D0003 */  addiu      $t5, $t4, 3
/* B4868 800B3C68 01A17024 */  and        $t6, $t5, $at
/* B486C 800B3C6C 25CF0004 */  addiu      $t7, $t6, 4
/* B4870 800B3C70 AD6F0000 */  sw         $t7, ($t3)
/* B4874 800B3C74 8FB8003C */  lw         $t8, 0x3c($sp)
/* B4878 800B3C78 8FAA0038 */  lw         $t2, 0x38($sp)
/* B487C 800B3C7C 8FA90044 */  lw         $t1, 0x44($sp)
/* B4880 800B3C80 8F190000 */  lw         $t9, ($t8)
/* B4884 800B3C84 8D4C000C */  lw         $t4, 0xc($t2)
/* B4888 800B3C88 8F28FFFC */  lw         $t0, -4($t9)
/* B488C 800B3C8C 012C6821 */  addu       $t5, $t1, $t4
/* B4890 800B3C90 A1A80000 */  sb         $t0, ($t5)
/* B4894 800B3C94 8FAE0038 */  lw         $t6, 0x38($sp)
/* B4898 800B3C98 8DCF000C */  lw         $t7, 0xc($t6)
/* B489C 800B3C9C 25EB0001 */  addiu      $t3, $t7, 1
/* B48A0 800B3CA0 ADCB000C */  sw         $t3, 0xc($t6)
/* B48A4 800B3CA4 10000221 */  b          .L800B452C
/* B48A8 800B3CA8 00000000 */   nop
/* B48AC 800B3CAC 8FB80038 */  lw         $t8, 0x38($sp)
/* B48B0 800B3CB0 2401006C */  addiu      $at, $zero, 0x6c
/* B48B4 800B3CB4 93190034 */  lbu        $t9, 0x34($t8)
/* B48B8 800B3CB8 17210011 */  bne        $t9, $at, .L800B3D00
/* B48BC 800B3CBC 00000000 */   nop
/* B48C0 800B3CC0 8FAA003C */  lw         $t2, 0x3c($sp)
/* B48C4 800B3CC4 2401FFFC */  addiu      $at, $zero, -4
/* B48C8 800B3CC8 8D490000 */  lw         $t1, ($t2)
/* B48CC 800B3CCC 252C0003 */  addiu      $t4, $t1, 3
/* B48D0 800B3CD0 01814024 */  and        $t0, $t4, $at
/* B48D4 800B3CD4 250D0004 */  addiu      $t5, $t0, 4
/* B48D8 800B3CD8 AD4D0000 */  sw         $t5, ($t2)
/* B48DC 800B3CDC 8FAF003C */  lw         $t7, 0x3c($sp)
/* B48E0 800B3CE0 8FA90038 */  lw         $t1, 0x38($sp)
/* B48E4 800B3CE4 8DEB0000 */  lw         $t3, ($t7)
/* B48E8 800B3CE8 8D6EFFFC */  lw         $t6, -4($t3)
/* B48EC 800B3CEC 01C0C825 */  or         $t9, $t6, $zero
/* B48F0 800B3CF0 000EC7C3 */  sra        $t8, $t6, 0x1f
/* B48F4 800B3CF4 AD380000 */  sw         $t8, ($t1)
/* B48F8 800B3CF8 10000024 */  b          .L800B3D8C
/* B48FC 800B3CFC AD390004 */   sw        $t9, 4($t1)
.L800B3D00:
/* B4900 800B3D00 8FAC0038 */  lw         $t4, 0x38($sp)
/* B4904 800B3D04 2401004C */  addiu      $at, $zero, 0x4c
/* B4908 800B3D08 91880034 */  lbu        $t0, 0x34($t4)
/* B490C 800B3D0C 15010010 */  bne        $t0, $at, .L800B3D50
/* B4910 800B3D10 00000000 */   nop
/* B4914 800B3D14 8FAD003C */  lw         $t5, 0x3c($sp)
/* B4918 800B3D18 2401FFF8 */  addiu      $at, $zero, -8
/* B491C 800B3D1C 8DAA0000 */  lw         $t2, ($t5)
/* B4920 800B3D20 254F0007 */  addiu      $t7, $t2, 7
/* B4924 800B3D24 01E15824 */  and        $t3, $t7, $at
/* B4928 800B3D28 256E0008 */  addiu      $t6, $t3, 8
/* B492C 800B3D2C ADAE0000 */  sw         $t6, ($t5)
/* B4930 800B3D30 8FB8003C */  lw         $t8, 0x3c($sp)
/* B4934 800B3D34 8FA90038 */  lw         $t1, 0x38($sp)
/* B4938 800B3D38 8F190000 */  lw         $t9, ($t8)
/* B493C 800B3D3C 8F2CFFF8 */  lw         $t4, -8($t9)
/* B4940 800B3D40 8F2DFFFC */  lw         $t5, -4($t9)
/* B4944 800B3D44 AD2C0000 */  sw         $t4, ($t1)
/* B4948 800B3D48 10000010 */  b          .L800B3D8C
/* B494C 800B3D4C AD2D0004 */   sw        $t5, 4($t1)
.L800B3D50:
/* B4950 800B3D50 8FA8003C */  lw         $t0, 0x3c($sp)
/* B4954 800B3D54 2401FFFC */  addiu      $at, $zero, -4
/* B4958 800B3D58 8D0A0000 */  lw         $t2, ($t0)
/* B495C 800B3D5C 254F0003 */  addiu      $t7, $t2, 3
/* B4960 800B3D60 01E15824 */  and        $t3, $t7, $at
/* B4964 800B3D64 256E0004 */  addiu      $t6, $t3, 4
/* B4968 800B3D68 AD0E0000 */  sw         $t6, ($t0)
/* B496C 800B3D6C 8FB8003C */  lw         $t8, 0x3c($sp)
/* B4970 800B3D70 8FAD0038 */  lw         $t5, 0x38($sp)
/* B4974 800B3D74 8F190000 */  lw         $t9, ($t8)
/* B4978 800B3D78 8F2CFFFC */  lw         $t4, -4($t9)
/* B497C 800B3D7C 01805825 */  or         $t3, $t4, $zero
/* B4980 800B3D80 000C57C3 */  sra        $t2, $t4, 0x1f
/* B4984 800B3D84 ADAA0000 */  sw         $t2, ($t5)
/* B4988 800B3D88 ADAB0004 */  sw         $t3, 4($t5)
.L800B3D8C:
/* B498C 800B3D8C 8FA90038 */  lw         $t1, 0x38($sp)
/* B4990 800B3D90 24010068 */  addiu      $at, $zero, 0x68
/* B4994 800B3D94 912F0034 */  lbu        $t7, 0x34($t1)
/* B4998 800B3D98 15E1000B */  bne        $t7, $at, .L800B3DC8
/* B499C 800B3D9C 00000000 */   nop
/* B49A0 800B3DA0 8FAE0038 */  lw         $t6, 0x38($sp)
/* B49A4 800B3DA4 8DC90004 */  lw         $t1, 4($t6)
/* B49A8 800B3DA8 8DC80000 */  lw         $t0, ($t6)
/* B49AC 800B3DAC 0120C025 */  or         $t8, $t1, $zero
/* B49B0 800B3DB0 0018CC00 */  sll        $t9, $t8, 0x10
/* B49B4 800B3DB4 00196403 */  sra        $t4, $t9, 0x10
/* B49B8 800B3DB8 01805825 */  or         $t3, $t4, $zero
/* B49BC 800B3DBC 000C57C3 */  sra        $t2, $t4, 0x1f
/* B49C0 800B3DC0 ADCA0000 */  sw         $t2, ($t6)
/* B49C4 800B3DC4 ADCB0004 */  sw         $t3, 4($t6)
.L800B3DC8:
/* B49C8 800B3DC8 8FAD0038 */  lw         $t5, 0x38($sp)
/* B49CC 800B3DCC 8DA80000 */  lw         $t0, ($t5)
/* B49D0 800B3DD0 8DA90004 */  lw         $t1, 4($t5)
/* B49D4 800B3DD4 1D000010 */  bgtz       $t0, .L800B3E18
/* B49D8 800B3DD8 00000000 */   nop
/* B49DC 800B3DDC 05000003 */  bltz       $t0, .L800B3DEC
/* B49E0 800B3DE0 00000000 */   nop
/* B49E4 800B3DE4 1000000C */  b          .L800B3E18
/* B49E8 800B3DE8 00000000 */   nop
.L800B3DEC:
/* B49EC 800B3DEC 8FB90038 */  lw         $t9, 0x38($sp)
/* B49F0 800B3DF0 8FB80044 */  lw         $t8, 0x44($sp)
/* B49F4 800B3DF4 240F002D */  addiu      $t7, $zero, 0x2d
/* B49F8 800B3DF8 8F2C000C */  lw         $t4, 0xc($t9)
/* B49FC 800B3DFC 030C5021 */  addu       $t2, $t8, $t4
/* B4A00 800B3E00 A14F0000 */  sb         $t7, ($t2)
/* B4A04 800B3E04 8FAB0038 */  lw         $t3, 0x38($sp)
/* B4A08 800B3E08 8D6E000C */  lw         $t6, 0xc($t3)
/* B4A0C 800B3E0C 25CD0001 */  addiu      $t5, $t6, 1
/* B4A10 800B3E10 10000020 */  b          .L800B3E94
/* B4A14 800B3E14 AD6D000C */   sw        $t5, 0xc($t3)
.L800B3E18:
/* B4A18 800B3E18 8FA80038 */  lw         $t0, 0x38($sp)
/* B4A1C 800B3E1C 8D090030 */  lw         $t1, 0x30($t0)
/* B4A20 800B3E20 31390002 */  andi       $t9, $t1, 2
/* B4A24 800B3E24 1320000C */  beqz       $t9, .L800B3E58
/* B4A28 800B3E28 00000000 */   nop
/* B4A2C 800B3E2C 8FAF0038 */  lw         $t7, 0x38($sp)
/* B4A30 800B3E30 8FAC0044 */  lw         $t4, 0x44($sp)
/* B4A34 800B3E34 2418002B */  addiu      $t8, $zero, 0x2b
/* B4A38 800B3E38 8DEA000C */  lw         $t2, 0xc($t7)
/* B4A3C 800B3E3C 018A7021 */  addu       $t6, $t4, $t2
/* B4A40 800B3E40 A1D80000 */  sb         $t8, ($t6)
/* B4A44 800B3E44 8FAD0038 */  lw         $t5, 0x38($sp)
/* B4A48 800B3E48 8DAB000C */  lw         $t3, 0xc($t5)
/* B4A4C 800B3E4C 25680001 */  addiu      $t0, $t3, 1
/* B4A50 800B3E50 10000010 */  b          .L800B3E94
/* B4A54 800B3E54 ADA8000C */   sw        $t0, 0xc($t5)
.L800B3E58:
/* B4A58 800B3E58 8FA90038 */  lw         $t1, 0x38($sp)
/* B4A5C 800B3E5C 8D390030 */  lw         $t9, 0x30($t1)
/* B4A60 800B3E60 332F0001 */  andi       $t7, $t9, 1
/* B4A64 800B3E64 11E0000B */  beqz       $t7, .L800B3E94
/* B4A68 800B3E68 00000000 */   nop
/* B4A6C 800B3E6C 8FB80038 */  lw         $t8, 0x38($sp)
/* B4A70 800B3E70 8FAA0044 */  lw         $t2, 0x44($sp)
/* B4A74 800B3E74 240C0020 */  addiu      $t4, $zero, 0x20
/* B4A78 800B3E78 8F0E000C */  lw         $t6, 0xc($t8)
/* B4A7C 800B3E7C 014E5821 */  addu       $t3, $t2, $t6
/* B4A80 800B3E80 A16C0000 */  sb         $t4, ($t3)
/* B4A84 800B3E84 8FA80038 */  lw         $t0, 0x38($sp)
/* B4A88 800B3E88 8D0D000C */  lw         $t5, 0xc($t0)
/* B4A8C 800B3E8C 25A90001 */  addiu      $t1, $t5, 1
/* B4A90 800B3E90 AD09000C */  sw         $t1, 0xc($t0)
.L800B3E94:
/* B4A94 800B3E94 8FB90038 */  lw         $t9, 0x38($sp)
/* B4A98 800B3E98 8FB80044 */  lw         $t8, 0x44($sp)
/* B4A9C 800B3E9C 8F2F000C */  lw         $t7, 0xc($t9)
/* B4AA0 800B3EA0 01F85021 */  addu       $t2, $t7, $t8
/* B4AA4 800B3EA4 AF2A0008 */  sw         $t2, 8($t9)
/* B4AA8 800B3EA8 8FA40038 */  lw         $a0, 0x38($sp)
/* B4AAC 800B3EAC 0C02E3E4 */  jal        func_800B8F90
/* B4AB0 800B3EB0 93A50043 */   lbu       $a1, 0x43($sp)
/* B4AB4 800B3EB4 1000019D */  b          .L800B452C
/* B4AB8 800B3EB8 00000000 */   nop
/* B4ABC 800B3EBC 8FAE0038 */  lw         $t6, 0x38($sp)
/* B4AC0 800B3EC0 2401006C */  addiu      $at, $zero, 0x6c
/* B4AC4 800B3EC4 91CC0034 */  lbu        $t4, 0x34($t6)
/* B4AC8 800B3EC8 15810011 */  bne        $t4, $at, .L800B3F10
/* B4ACC 800B3ECC 00000000 */   nop
/* B4AD0 800B3ED0 8FAB003C */  lw         $t3, 0x3c($sp)
/* B4AD4 800B3ED4 2401FFFC */  addiu      $at, $zero, -4
/* B4AD8 800B3ED8 8D6D0000 */  lw         $t5, ($t3)
/* B4ADC 800B3EDC 25A90003 */  addiu      $t1, $t5, 3
/* B4AE0 800B3EE0 01214024 */  and        $t0, $t1, $at
/* B4AE4 800B3EE4 250F0004 */  addiu      $t7, $t0, 4
/* B4AE8 800B3EE8 AD6F0000 */  sw         $t7, ($t3)
/* B4AEC 800B3EEC 8FB8003C */  lw         $t8, 0x3c($sp)
/* B4AF0 800B3EF0 8FAC0038 */  lw         $t4, 0x38($sp)
/* B4AF4 800B3EF4 8F0A0000 */  lw         $t2, ($t8)
/* B4AF8 800B3EF8 8D59FFFC */  lw         $t9, -4($t2)
/* B4AFC 800B3EFC 03207825 */  or         $t7, $t9, $zero
/* B4B00 800B3F00 001977C3 */  sra        $t6, $t9, 0x1f
/* B4B04 800B3F04 AD8E0000 */  sw         $t6, ($t4)
/* B4B08 800B3F08 10000024 */  b          .L800B3F9C
/* B4B0C 800B3F0C AD8F0004 */   sw        $t7, 4($t4)
.L800B3F10:
/* B4B10 800B3F10 8FAD0038 */  lw         $t5, 0x38($sp)
/* B4B14 800B3F14 2401004C */  addiu      $at, $zero, 0x4c
/* B4B18 800B3F18 91A90034 */  lbu        $t1, 0x34($t5)
/* B4B1C 800B3F1C 15210010 */  bne        $t1, $at, .L800B3F60
/* B4B20 800B3F20 00000000 */   nop
/* B4B24 800B3F24 8FA8003C */  lw         $t0, 0x3c($sp)
/* B4B28 800B3F28 2401FFF8 */  addiu      $at, $zero, -8
/* B4B2C 800B3F2C 8D0B0000 */  lw         $t3, ($t0)
/* B4B30 800B3F30 25780007 */  addiu      $t8, $t3, 7
/* B4B34 800B3F34 03015024 */  and        $t2, $t8, $at
/* B4B38 800B3F38 25590008 */  addiu      $t9, $t2, 8
/* B4B3C 800B3F3C AD190000 */  sw         $t9, ($t0)
/* B4B40 800B3F40 8FAE003C */  lw         $t6, 0x3c($sp)
/* B4B44 800B3F44 8FA90038 */  lw         $t1, 0x38($sp)
/* B4B48 800B3F48 8DCF0000 */  lw         $t7, ($t6)
/* B4B4C 800B3F4C 8DECFFF8 */  lw         $t4, -8($t7)
/* B4B50 800B3F50 8DEDFFFC */  lw         $t5, -4($t7)
/* B4B54 800B3F54 AD2C0000 */  sw         $t4, ($t1)
/* B4B58 800B3F58 10000010 */  b          .L800B3F9C
/* B4B5C 800B3F5C AD2D0004 */   sw        $t5, 4($t1)
.L800B3F60:
/* B4B60 800B3F60 8FAB003C */  lw         $t3, 0x3c($sp)
/* B4B64 800B3F64 2401FFFC */  addiu      $at, $zero, -4
/* B4B68 800B3F68 8D780000 */  lw         $t8, ($t3)
/* B4B6C 800B3F6C 270A0003 */  addiu      $t2, $t8, 3
/* B4B70 800B3F70 0141C824 */  and        $t9, $t2, $at
/* B4B74 800B3F74 27280004 */  addiu      $t0, $t9, 4
/* B4B78 800B3F78 AD680000 */  sw         $t0, ($t3)
/* B4B7C 800B3F7C 8FAE003C */  lw         $t6, 0x3c($sp)
/* B4B80 800B3F80 8FAD0038 */  lw         $t5, 0x38($sp)
/* B4B84 800B3F84 8DCF0000 */  lw         $t7, ($t6)
/* B4B88 800B3F88 8DECFFFC */  lw         $t4, -4($t7)
/* B4B8C 800B3F8C 0180C825 */  or         $t9, $t4, $zero
/* B4B90 800B3F90 000CC7C3 */  sra        $t8, $t4, 0x1f
/* B4B94 800B3F94 ADB80000 */  sw         $t8, ($t5)
/* B4B98 800B3F98 ADB90004 */  sw         $t9, 4($t5)
.L800B3F9C:
/* B4B9C 800B3F9C 8FA90038 */  lw         $t1, 0x38($sp)
/* B4BA0 800B3FA0 24010068 */  addiu      $at, $zero, 0x68
/* B4BA4 800B3FA4 912A0034 */  lbu        $t2, 0x34($t1)
/* B4BA8 800B3FA8 1541000B */  bne        $t2, $at, .L800B3FD8
/* B4BAC 800B3FAC 00000000 */   nop
/* B4BB0 800B3FB0 8FA80038 */  lw         $t0, 0x38($sp)
/* B4BB4 800B3FB4 24180000 */  addiu      $t8, $zero, 0
/* B4BB8 800B3FB8 8D0F0004 */  lw         $t7, 4($t0)
/* B4BBC 800B3FBC 8D0E0000 */  lw         $t6, ($t0)
/* B4BC0 800B3FC0 AD180000 */  sw         $t8, ($t0)
/* B4BC4 800B3FC4 01E05825 */  or         $t3, $t7, $zero
/* B4BC8 800B3FC8 316CFFFF */  andi       $t4, $t3, 0xffff
/* B4BCC 800B3FCC 0180C825 */  or         $t9, $t4, $zero
/* B4BD0 800B3FD0 1000000D */  b          .L800B4008
/* B4BD4 800B3FD4 AD190004 */   sw        $t9, 4($t0)
.L800B3FD8:
/* B4BD8 800B3FD8 8FAD0038 */  lw         $t5, 0x38($sp)
/* B4BDC 800B3FDC 91A90034 */  lbu        $t1, 0x34($t5)
/* B4BE0 800B3FE0 15200009 */  bnez       $t1, .L800B4008
/* B4BE4 800B3FE4 00000000 */   nop
/* B4BE8 800B3FE8 8FAA0038 */  lw         $t2, 0x38($sp)
/* B4BEC 800B3FEC 240C0000 */  addiu      $t4, $zero, 0
/* B4BF0 800B3FF0 8D4F0004 */  lw         $t7, 4($t2)
/* B4BF4 800B3FF4 8D4E0000 */  lw         $t6, ($t2)
/* B4BF8 800B3FF8 AD4C0000 */  sw         $t4, ($t2)
/* B4BFC 800B3FFC 01E05825 */  or         $t3, $t7, $zero
/* B4C00 800B4000 01606825 */  or         $t5, $t3, $zero
/* B4C04 800B4004 AD4D0004 */  sw         $t5, 4($t2)
.L800B4008:
/* B4C08 800B4008 8FB80038 */  lw         $t8, 0x38($sp)
/* B4C0C 800B400C 8F190030 */  lw         $t9, 0x30($t8)
/* B4C10 800B4010 33280008 */  andi       $t0, $t9, 8
/* B4C14 800B4014 1100001C */  beqz       $t0, .L800B4088
/* B4C18 800B4018 00000000 */   nop
/* B4C1C 800B401C 8FAF0038 */  lw         $t7, 0x38($sp)
/* B4C20 800B4020 8FAE0044 */  lw         $t6, 0x44($sp)
/* B4C24 800B4024 24090030 */  addiu      $t1, $zero, 0x30
/* B4C28 800B4028 8DEB000C */  lw         $t3, 0xc($t7)
/* B4C2C 800B402C 01CB6021 */  addu       $t4, $t6, $t3
/* B4C30 800B4030 A1890000 */  sb         $t1, ($t4)
/* B4C34 800B4034 8FAD0038 */  lw         $t5, 0x38($sp)
/* B4C38 800B4038 8DAA000C */  lw         $t2, 0xc($t5)
/* B4C3C 800B403C 25580001 */  addiu      $t8, $t2, 1
/* B4C40 800B4040 ADB8000C */  sw         $t8, 0xc($t5)
/* B4C44 800B4044 93B90043 */  lbu        $t9, 0x43($sp)
/* B4C48 800B4048 24010078 */  addiu      $at, $zero, 0x78
/* B4C4C 800B404C 13210004 */  beq        $t9, $at, .L800B4060
/* B4C50 800B4050 00000000 */   nop
/* B4C54 800B4054 24010058 */  addiu      $at, $zero, 0x58
/* B4C58 800B4058 1721000B */  bne        $t9, $at, .L800B4088
/* B4C5C 800B405C 00000000 */   nop
.L800B4060:
/* B4C60 800B4060 8FAE0038 */  lw         $t6, 0x38($sp)
/* B4C64 800B4064 8FAF0044 */  lw         $t7, 0x44($sp)
/* B4C68 800B4068 93A80043 */  lbu        $t0, 0x43($sp)
/* B4C6C 800B406C 8DCB000C */  lw         $t3, 0xc($t6)
/* B4C70 800B4070 01EB4821 */  addu       $t1, $t7, $t3
/* B4C74 800B4074 A1280000 */  sb         $t0, ($t1)
/* B4C78 800B4078 8FAC0038 */  lw         $t4, 0x38($sp)
/* B4C7C 800B407C 8D8A000C */  lw         $t2, 0xc($t4)
/* B4C80 800B4080 25580001 */  addiu      $t8, $t2, 1
/* B4C84 800B4084 AD98000C */  sw         $t8, 0xc($t4)
.L800B4088:
/* B4C88 800B4088 8FAD0038 */  lw         $t5, 0x38($sp)
/* B4C8C 800B408C 8FAE0044 */  lw         $t6, 0x44($sp)
/* B4C90 800B4090 8DB9000C */  lw         $t9, 0xc($t5)
/* B4C94 800B4094 032E7821 */  addu       $t7, $t9, $t6
/* B4C98 800B4098 ADAF0008 */  sw         $t7, 8($t5)
/* B4C9C 800B409C 8FA40038 */  lw         $a0, 0x38($sp)
/* B4CA0 800B40A0 0C02E3E4 */  jal        func_800B8F90
/* B4CA4 800B40A4 93A50043 */   lbu       $a1, 0x43($sp)
/* B4CA8 800B40A8 10000120 */  b          .L800B452C
/* B4CAC 800B40AC 00000000 */   nop
/* B4CB0 800B40B0 8FAB0038 */  lw         $t3, 0x38($sp)
/* B4CB4 800B40B4 2401004C */  addiu      $at, $zero, 0x4c
/* B4CB8 800B40B8 91680034 */  lbu        $t0, 0x34($t3)
/* B4CBC 800B40BC 15010025 */  bne        $t0, $at, .L800B4154
/* B4CC0 800B40C0 00000000 */   nop
/* B4CC4 800B40C4 8FA9003C */  lw         $t1, 0x3c($sp)
/* B4CC8 800B40C8 8D2A0000 */  lw         $t2, ($t1)
/* B4CCC 800B40CC 31580001 */  andi       $t8, $t2, 1
/* B4CD0 800B40D0 13000007 */  beqz       $t8, .L800B40F0
/* B4CD4 800B40D4 00000000 */   nop
/* B4CD8 800B40D8 254C0007 */  addiu      $t4, $t2, 7
/* B4CDC 800B40DC AD2C0000 */  sw         $t4, ($t1)
/* B4CE0 800B40E0 8FB9003C */  lw         $t9, 0x3c($sp)
/* B4CE4 800B40E4 8F300000 */  lw         $s0, ($t9)
/* B4CE8 800B40E8 10000016 */  b          .L800B4144
/* B4CEC 800B40EC 2610FFEA */   addiu     $s0, $s0, -0x16
.L800B40F0:
/* B4CF0 800B40F0 8FAE003C */  lw         $t6, 0x3c($sp)
/* B4CF4 800B40F4 8DCF0000 */  lw         $t7, ($t6)
/* B4CF8 800B40F8 31ED0002 */  andi       $t5, $t7, 2
/* B4CFC 800B40FC 11A00007 */  beqz       $t5, .L800B411C
/* B4D00 800B4100 00000000 */   nop
/* B4D04 800B4104 25EB000A */  addiu      $t3, $t7, 0xa
/* B4D08 800B4108 ADCB0000 */  sw         $t3, ($t6)
/* B4D0C 800B410C 8FA8003C */  lw         $t0, 0x3c($sp)
/* B4D10 800B4110 8D110000 */  lw         $s1, ($t0)
/* B4D14 800B4114 1000000A */  b          .L800B4140
/* B4D18 800B4118 2631FFD8 */   addiu     $s1, $s1, -0x28
.L800B411C:
/* B4D1C 800B411C 8FB8003C */  lw         $t8, 0x3c($sp)
/* B4D20 800B4120 2401FFF8 */  addiu      $at, $zero, -8
/* B4D24 800B4124 8F0A0000 */  lw         $t2, ($t8)
/* B4D28 800B4128 254C0007 */  addiu      $t4, $t2, 7
/* B4D2C 800B412C 01814824 */  and        $t1, $t4, $at
/* B4D30 800B4130 25390008 */  addiu      $t9, $t1, 8
/* B4D34 800B4134 AF190000 */  sw         $t9, ($t8)
/* B4D38 800B4138 8FAD003C */  lw         $t5, 0x3c($sp)
/* B4D3C 800B413C 8DB10000 */  lw         $s1, ($t5)
.L800B4140:
/* B4D40 800B4140 02208025 */  or         $s0, $s1, $zero
.L800B4144:
/* B4D44 800B4144 D604FFF8 */  ldc1       $f4, -8($s0)
/* B4D48 800B4148 8FAF0038 */  lw         $t7, 0x38($sp)
/* B4D4C 800B414C 10000024 */  b          .L800B41E0
/* B4D50 800B4150 F5E40000 */   sdc1      $f4, ($t7)
.L800B4154:
/* B4D54 800B4154 8FAB003C */  lw         $t3, 0x3c($sp)
/* B4D58 800B4158 8D6E0000 */  lw         $t6, ($t3)
/* B4D5C 800B415C 31C80001 */  andi       $t0, $t6, 1
/* B4D60 800B4160 11000007 */  beqz       $t0, .L800B4180
/* B4D64 800B4164 00000000 */   nop
/* B4D68 800B4168 25CA0007 */  addiu      $t2, $t6, 7
/* B4D6C 800B416C AD6A0000 */  sw         $t2, ($t3)
/* B4D70 800B4170 8FAC003C */  lw         $t4, 0x3c($sp)
/* B4D74 800B4174 8D920000 */  lw         $s2, ($t4)
/* B4D78 800B4178 10000016 */  b          .L800B41D4
/* B4D7C 800B417C 2652FFEA */   addiu     $s2, $s2, -0x16
.L800B4180:
/* B4D80 800B4180 8FA9003C */  lw         $t1, 0x3c($sp)
/* B4D84 800B4184 8D390000 */  lw         $t9, ($t1)
/* B4D88 800B4188 33380002 */  andi       $t8, $t9, 2
/* B4D8C 800B418C 13000007 */  beqz       $t8, .L800B41AC
/* B4D90 800B4190 00000000 */   nop
/* B4D94 800B4194 272D000A */  addiu      $t5, $t9, 0xa
/* B4D98 800B4198 AD2D0000 */  sw         $t5, ($t1)
/* B4D9C 800B419C 8FAF003C */  lw         $t7, 0x3c($sp)
/* B4DA0 800B41A0 8DF30000 */  lw         $s3, ($t7)
/* B4DA4 800B41A4 1000000A */  b          .L800B41D0
/* B4DA8 800B41A8 2673FFD8 */   addiu     $s3, $s3, -0x28
.L800B41AC:
/* B4DAC 800B41AC 8FA8003C */  lw         $t0, 0x3c($sp)
/* B4DB0 800B41B0 2401FFF8 */  addiu      $at, $zero, -8
/* B4DB4 800B41B4 8D0E0000 */  lw         $t6, ($t0)
/* B4DB8 800B41B8 25CA0007 */  addiu      $t2, $t6, 7
/* B4DBC 800B41BC 01415824 */  and        $t3, $t2, $at
/* B4DC0 800B41C0 256C0008 */  addiu      $t4, $t3, 8
/* B4DC4 800B41C4 AD0C0000 */  sw         $t4, ($t0)
/* B4DC8 800B41C8 8FB8003C */  lw         $t8, 0x3c($sp)
/* B4DCC 800B41CC 8F130000 */  lw         $s3, ($t8)
.L800B41D0:
/* B4DD0 800B41D0 02609025 */  or         $s2, $s3, $zero
.L800B41D4:
/* B4DD4 800B41D4 D646FFF8 */  ldc1       $f6, -8($s2)
/* B4DD8 800B41D8 8FB90038 */  lw         $t9, 0x38($sp)
/* B4DDC 800B41DC F7260000 */  sdc1       $f6, ($t9)
.L800B41E0:
/* B4DE0 800B41E0 8FAD0038 */  lw         $t5, 0x38($sp)
/* B4DE4 800B41E4 95A90000 */  lhu        $t1, ($t5)
/* B4DE8 800B41E8 312F8000 */  andi       $t7, $t1, 0x8000
/* B4DEC 800B41EC 11E0000C */  beqz       $t7, .L800B4220
/* B4DF0 800B41F0 00000000 */   nop
/* B4DF4 800B41F4 8FAB0038 */  lw         $t3, 0x38($sp)
/* B4DF8 800B41F8 8FAA0044 */  lw         $t2, 0x44($sp)
/* B4DFC 800B41FC 240E002D */  addiu      $t6, $zero, 0x2d
/* B4E00 800B4200 8D6C000C */  lw         $t4, 0xc($t3)
/* B4E04 800B4204 014C4021 */  addu       $t0, $t2, $t4
/* B4E08 800B4208 A10E0000 */  sb         $t6, ($t0)
/* B4E0C 800B420C 8FB80038 */  lw         $t8, 0x38($sp)
/* B4E10 800B4210 8F19000C */  lw         $t9, 0xc($t8)
/* B4E14 800B4214 272D0001 */  addiu      $t5, $t9, 1
/* B4E18 800B4218 10000020 */  b          .L800B429C
/* B4E1C 800B421C AF0D000C */   sw        $t5, 0xc($t8)
.L800B4220:
/* B4E20 800B4220 8FA90038 */  lw         $t1, 0x38($sp)
/* B4E24 800B4224 8D2F0030 */  lw         $t7, 0x30($t1)
/* B4E28 800B4228 31EB0002 */  andi       $t3, $t7, 2
/* B4E2C 800B422C 1160000C */  beqz       $t3, .L800B4260
/* B4E30 800B4230 00000000 */   nop
/* B4E34 800B4234 8FAE0038 */  lw         $t6, 0x38($sp)
/* B4E38 800B4238 8FAC0044 */  lw         $t4, 0x44($sp)
/* B4E3C 800B423C 240A002B */  addiu      $t2, $zero, 0x2b
/* B4E40 800B4240 8DC8000C */  lw         $t0, 0xc($t6)
/* B4E44 800B4244 0188C821 */  addu       $t9, $t4, $t0
/* B4E48 800B4248 A32A0000 */  sb         $t2, ($t9)
/* B4E4C 800B424C 8FAD0038 */  lw         $t5, 0x38($sp)
/* B4E50 800B4250 8DB8000C */  lw         $t8, 0xc($t5)
/* B4E54 800B4254 27090001 */  addiu      $t1, $t8, 1
/* B4E58 800B4258 10000010 */  b          .L800B429C
/* B4E5C 800B425C ADA9000C */   sw        $t1, 0xc($t5)
.L800B4260:
/* B4E60 800B4260 8FAF0038 */  lw         $t7, 0x38($sp)
/* B4E64 800B4264 8DEB0030 */  lw         $t3, 0x30($t7)
/* B4E68 800B4268 316E0001 */  andi       $t6, $t3, 1
/* B4E6C 800B426C 11C0000B */  beqz       $t6, .L800B429C
/* B4E70 800B4270 00000000 */   nop
/* B4E74 800B4274 8FAA0038 */  lw         $t2, 0x38($sp)
/* B4E78 800B4278 8FA80044 */  lw         $t0, 0x44($sp)
/* B4E7C 800B427C 240C0020 */  addiu      $t4, $zero, 0x20
/* B4E80 800B4280 8D59000C */  lw         $t9, 0xc($t2)
/* B4E84 800B4284 0119C021 */  addu       $t8, $t0, $t9
/* B4E88 800B4288 A30C0000 */  sb         $t4, ($t8)
/* B4E8C 800B428C 8FA90038 */  lw         $t1, 0x38($sp)
/* B4E90 800B4290 8D2D000C */  lw         $t5, 0xc($t1)
/* B4E94 800B4294 25AF0001 */  addiu      $t7, $t5, 1
/* B4E98 800B4298 AD2F000C */  sw         $t7, 0xc($t1)
.L800B429C:
/* B4E9C 800B429C 8FAB0038 */  lw         $t3, 0x38($sp)
/* B4EA0 800B42A0 8FAA0044 */  lw         $t2, 0x44($sp)
/* B4EA4 800B42A4 8D6E000C */  lw         $t6, 0xc($t3)
/* B4EA8 800B42A8 01CA4021 */  addu       $t0, $t6, $t2
/* B4EAC 800B42AC AD680008 */  sw         $t0, 8($t3)
/* B4EB0 800B42B0 8FA40038 */  lw         $a0, 0x38($sp)
/* B4EB4 800B42B4 0C02E4B0 */  jal        func_800B92C0
/* B4EB8 800B42B8 93A50043 */   lbu       $a1, 0x43($sp)
/* B4EBC 800B42BC 1000009B */  b          .L800B452C
/* B4EC0 800B42C0 00000000 */   nop
/* B4EC4 800B42C4 8FB90038 */  lw         $t9, 0x38($sp)
/* B4EC8 800B42C8 24010068 */  addiu      $at, $zero, 0x68
/* B4ECC 800B42CC 932C0034 */  lbu        $t4, 0x34($t9)
/* B4ED0 800B42D0 1581000F */  bne        $t4, $at, .L800B4310
/* B4ED4 800B42D4 00000000 */   nop
/* B4ED8 800B42D8 8FB8003C */  lw         $t8, 0x3c($sp)
/* B4EDC 800B42DC 2401FFFC */  addiu      $at, $zero, -4
/* B4EE0 800B42E0 8F0D0000 */  lw         $t5, ($t8)
/* B4EE4 800B42E4 25AF0003 */  addiu      $t7, $t5, 3
/* B4EE8 800B42E8 01E14824 */  and        $t1, $t7, $at
/* B4EEC 800B42EC 252E0004 */  addiu      $t6, $t1, 4
/* B4EF0 800B42F0 AF0E0000 */  sw         $t6, ($t8)
/* B4EF4 800B42F4 8FAA003C */  lw         $t2, 0x3c($sp)
/* B4EF8 800B42F8 8FA80038 */  lw         $t0, 0x38($sp)
/* B4EFC 800B42FC 8D500000 */  lw         $s0, ($t2)
/* B4F00 800B4300 8D0B002C */  lw         $t3, 0x2c($t0)
/* B4F04 800B4304 8E19FFFC */  lw         $t9, -4($s0)
/* B4F08 800B4308 10000037 */  b          .L800B43E8
/* B4F0C 800B430C A72B0000 */   sh        $t3, ($t9)
.L800B4310:
/* B4F10 800B4310 8FAC0038 */  lw         $t4, 0x38($sp)
/* B4F14 800B4314 2401006C */  addiu      $at, $zero, 0x6c
/* B4F18 800B4318 918D0034 */  lbu        $t5, 0x34($t4)
/* B4F1C 800B431C 15A1000F */  bne        $t5, $at, .L800B435C
/* B4F20 800B4320 00000000 */   nop
/* B4F24 800B4324 8FAF003C */  lw         $t7, 0x3c($sp)
/* B4F28 800B4328 2401FFFC */  addiu      $at, $zero, -4
/* B4F2C 800B432C 8DE90000 */  lw         $t1, ($t7)
/* B4F30 800B4330 252E0003 */  addiu      $t6, $t1, 3
/* B4F34 800B4334 01C1C024 */  and        $t8, $t6, $at
/* B4F38 800B4338 270A0004 */  addiu      $t2, $t8, 4
/* B4F3C 800B433C ADEA0000 */  sw         $t2, ($t7)
/* B4F40 800B4340 8FA8003C */  lw         $t0, 0x3c($sp)
/* B4F44 800B4344 8FAB0038 */  lw         $t3, 0x38($sp)
/* B4F48 800B4348 8D100000 */  lw         $s0, ($t0)
/* B4F4C 800B434C 8D79002C */  lw         $t9, 0x2c($t3)
/* B4F50 800B4350 8E0CFFFC */  lw         $t4, -4($s0)
/* B4F54 800B4354 10000024 */  b          .L800B43E8
/* B4F58 800B4358 AD990000 */   sw        $t9, ($t4)
.L800B435C:
/* B4F5C 800B435C 8FAD0038 */  lw         $t5, 0x38($sp)
/* B4F60 800B4360 2401004C */  addiu      $at, $zero, 0x4c
/* B4F64 800B4364 91A90034 */  lbu        $t1, 0x34($t5)
/* B4F68 800B4368 15210012 */  bne        $t1, $at, .L800B43B4
/* B4F6C 800B436C 00000000 */   nop
/* B4F70 800B4370 8FAE003C */  lw         $t6, 0x3c($sp)
/* B4F74 800B4374 2401FFFC */  addiu      $at, $zero, -4
/* B4F78 800B4378 8DD80000 */  lw         $t8, ($t6)
/* B4F7C 800B437C 270A0003 */  addiu      $t2, $t8, 3
/* B4F80 800B4380 01417824 */  and        $t7, $t2, $at
/* B4F84 800B4384 25E80004 */  addiu      $t0, $t7, 4
/* B4F88 800B4388 ADC80000 */  sw         $t0, ($t6)
/* B4F8C 800B438C 8FAB003C */  lw         $t3, 0x3c($sp)
/* B4F90 800B4390 8FB90038 */  lw         $t9, 0x38($sp)
/* B4F94 800B4394 24180000 */  addiu      $t8, $zero, 0
/* B4F98 800B4398 8D700000 */  lw         $s0, ($t3)
/* B4F9C 800B439C 8F2C002C */  lw         $t4, 0x2c($t9)
/* B4FA0 800B43A0 8E0DFFFC */  lw         $t5, -4($s0)
/* B4FA4 800B43A4 0180C825 */  or         $t9, $t4, $zero
/* B4FA8 800B43A8 ADB90004 */  sw         $t9, 4($t5)
/* B4FAC 800B43AC 1000000E */  b          .L800B43E8
/* B4FB0 800B43B0 ADB80000 */   sw        $t8, ($t5)
.L800B43B4:
/* B4FB4 800B43B4 8FA9003C */  lw         $t1, 0x3c($sp)
/* B4FB8 800B43B8 2401FFFC */  addiu      $at, $zero, -4
/* B4FBC 800B43BC 8D2A0000 */  lw         $t2, ($t1)
/* B4FC0 800B43C0 254F0003 */  addiu      $t7, $t2, 3
/* B4FC4 800B43C4 01E14024 */  and        $t0, $t7, $at
/* B4FC8 800B43C8 250E0004 */  addiu      $t6, $t0, 4
/* B4FCC 800B43CC AD2E0000 */  sw         $t6, ($t1)
/* B4FD0 800B43D0 8FAB003C */  lw         $t3, 0x3c($sp)
/* B4FD4 800B43D4 8FAC0038 */  lw         $t4, 0x38($sp)
/* B4FD8 800B43D8 8D700000 */  lw         $s0, ($t3)
/* B4FDC 800B43DC 8D98002C */  lw         $t8, 0x2c($t4)
/* B4FE0 800B43E0 8E19FFFC */  lw         $t9, -4($s0)
/* B4FE4 800B43E4 AF380000 */  sw         $t8, ($t9)
.L800B43E8:
/* B4FE8 800B43E8 10000050 */  b          .L800B452C
/* B4FEC 800B43EC 00000000 */   nop
/* B4FF0 800B43F0 8FAD003C */  lw         $t5, 0x3c($sp)
/* B4FF4 800B43F4 2401FFFC */  addiu      $at, $zero, -4
/* B4FF8 800B43F8 8DAA0000 */  lw         $t2, ($t5)
/* B4FFC 800B43FC 254F0003 */  addiu      $t7, $t2, 3
/* B5000 800B4400 01E14024 */  and        $t0, $t7, $at
/* B5004 800B4404 250E0004 */  addiu      $t6, $t0, 4
/* B5008 800B4408 ADAE0000 */  sw         $t6, ($t5)
/* B500C 800B440C 8FA9003C */  lw         $t1, 0x3c($sp)
/* B5010 800B4410 8FAA0038 */  lw         $t2, 0x38($sp)
/* B5014 800B4414 8D2B0000 */  lw         $t3, ($t1)
/* B5018 800B4418 8D6CFFFC */  lw         $t4, -4($t3)
/* B501C 800B441C 0180C825 */  or         $t9, $t4, $zero
/* B5020 800B4420 000CC7C3 */  sra        $t8, $t4, 0x1f
/* B5024 800B4424 AD580000 */  sw         $t8, ($t2)
/* B5028 800B4428 AD590004 */  sw         $t9, 4($t2)
/* B502C 800B442C 8FAF0038 */  lw         $t7, 0x38($sp)
/* B5030 800B4430 8FAE0044 */  lw         $t6, 0x44($sp)
/* B5034 800B4434 8DE8000C */  lw         $t0, 0xc($t7)
/* B5038 800B4438 010E6821 */  addu       $t5, $t0, $t6
/* B503C 800B443C ADED0008 */  sw         $t5, 8($t7)
/* B5040 800B4440 8FA40038 */  lw         $a0, 0x38($sp)
/* B5044 800B4444 0C02E3E4 */  jal        func_800B8F90
/* B5048 800B4448 24050078 */   addiu     $a1, $zero, 0x78
/* B504C 800B444C 10000037 */  b          .L800B452C
/* B5050 800B4450 00000000 */   nop
/* B5054 800B4454 8FA9003C */  lw         $t1, 0x3c($sp)
/* B5058 800B4458 2401FFFC */  addiu      $at, $zero, -4
/* B505C 800B445C 8D2B0000 */  lw         $t3, ($t1)
/* B5060 800B4460 256C0003 */  addiu      $t4, $t3, 3
/* B5064 800B4464 0181C024 */  and        $t8, $t4, $at
/* B5068 800B4468 27190004 */  addiu      $t9, $t8, 4
/* B506C 800B446C AD390000 */  sw         $t9, ($t1)
/* B5070 800B4470 8FAA003C */  lw         $t2, 0x3c($sp)
/* B5074 800B4474 8FAD0038 */  lw         $t5, 0x38($sp)
/* B5078 800B4478 8D480000 */  lw         $t0, ($t2)
/* B507C 800B447C 8D0EFFFC */  lw         $t6, -4($t0)
/* B5080 800B4480 ADAE0008 */  sw         $t6, 8($t5)
/* B5084 800B4484 8FAF0038 */  lw         $t7, 0x38($sp)
/* B5088 800B4488 0C029722 */  jal        func_800A5C88
/* B508C 800B448C 8DE40008 */   lw        $a0, 8($t7)
/* B5090 800B4490 8FAB0038 */  lw         $t3, 0x38($sp)
/* B5094 800B4494 AD620014 */  sw         $v0, 0x14($t3)
/* B5098 800B4498 8FAC0038 */  lw         $t4, 0x38($sp)
/* B509C 800B449C 8D980024 */  lw         $t8, 0x24($t4)
/* B50A0 800B44A0 07000008 */  bltz       $t8, .L800B44C4
/* B50A4 800B44A4 00000000 */   nop
/* B50A8 800B44A8 8D990014 */  lw         $t9, 0x14($t4)
/* B50AC 800B44AC 0319082A */  slt        $at, $t8, $t9
/* B50B0 800B44B0 10200004 */  beqz       $at, .L800B44C4
/* B50B4 800B44B4 00000000 */   nop
/* B50B8 800B44B8 8FA90038 */  lw         $t1, 0x38($sp)
/* B50BC 800B44BC 8D2A0024 */  lw         $t2, 0x24($t1)
/* B50C0 800B44C0 AD2A0014 */  sw         $t2, 0x14($t1)
.L800B44C4:
/* B50C4 800B44C4 10000019 */  b          .L800B452C
/* B50C8 800B44C8 00000000 */   nop
.L800B44CC:
/* B50CC 800B44CC 8FAD0038 */  lw         $t5, 0x38($sp)
/* B50D0 800B44D0 8FAE0044 */  lw         $t6, 0x44($sp)
/* B50D4 800B44D4 24080025 */  addiu      $t0, $zero, 0x25
/* B50D8 800B44D8 8DAF000C */  lw         $t7, 0xc($t5)
/* B50DC 800B44DC 01CF5821 */  addu       $t3, $t6, $t7
/* B50E0 800B44E0 A1680000 */  sb         $t0, ($t3)
/* B50E4 800B44E4 8FAC0038 */  lw         $t4, 0x38($sp)
/* B50E8 800B44E8 8D98000C */  lw         $t8, 0xc($t4)
/* B50EC 800B44EC 27190001 */  addiu      $t9, $t8, 1
/* B50F0 800B44F0 AD99000C */  sw         $t9, 0xc($t4)
/* B50F4 800B44F4 1000000D */  b          .L800B452C
/* B50F8 800B44F8 00000000 */   nop
.L800B44FC:
/* B50FC 800B44FC 8FAD0038 */  lw         $t5, 0x38($sp)
/* B5100 800B4500 8FA90044 */  lw         $t1, 0x44($sp)
/* B5104 800B4504 93AA0043 */  lbu        $t2, 0x43($sp)
/* B5108 800B4508 8DAE000C */  lw         $t6, 0xc($t5)
/* B510C 800B450C 012E7821 */  addu       $t7, $t1, $t6
/* B5110 800B4510 A1EA0000 */  sb         $t2, ($t7)
/* B5114 800B4514 8FA80038 */  lw         $t0, 0x38($sp)
/* B5118 800B4518 8D0B000C */  lw         $t3, 0xc($t0)
/* B511C 800B451C 25780001 */  addiu      $t8, $t3, 1
/* B5120 800B4520 AD18000C */  sw         $t8, 0xc($t0)
/* B5124 800B4524 10000001 */  b          .L800B452C
/* B5128 800B4528 00000000 */   nop
.L800B452C:
/* B512C 800B452C 10000001 */  b          .L800B4534
/* B5130 800B4530 00000000 */   nop
.L800B4534:
/* B5134 800B4534 8FBF0024 */  lw         $ra, 0x24($sp)
/* B5138 800B4538 8FB00014 */  lw         $s0, 0x14($sp)
/* B513C 800B453C 8FB10018 */  lw         $s1, 0x18($sp)
/* B5140 800B4540 8FB2001C */  lw         $s2, 0x1c($sp)
/* B5144 800B4544 8FB30020 */  lw         $s3, 0x20($sp)
/* B5148 800B4548 03E00008 */  jr         $ra
/* B514C 800B454C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800B4550
/* B5150 800B4550 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B5154 800B4554 AFBF0014 */  sw         $ra, 0x14($sp)
/* B5158 800B4558 AFA40020 */  sw         $a0, 0x20($sp)
/* B515C 800B455C AFA50024 */  sw         $a1, 0x24($sp)
/* B5160 800B4560 AFA60028 */  sw         $a2, 0x28($sp)
/* B5164 800B4564 AFA7002C */  sw         $a3, 0x2c($sp)
/* B5168 800B4568 27AE0026 */  addiu      $t6, $sp, 0x26
/* B516C 800B456C 25CF0002 */  addiu      $t7, $t6, 2
/* B5170 800B4570 AFAF001C */  sw         $t7, 0x1c($sp)
/* B5174 800B4574 3C04800F */  lui        $a0, %hi(D_800EAA70)
/* B5178 800B4578 2484AA70 */  addiu      $a0, $a0, %lo(D_800EAA70)
/* B517C 800B457C 87A50022 */  lh         $a1, 0x22($sp)
/* B5180 800B4580 87A60026 */  lh         $a2, 0x26($sp)
/* B5184 800B4584 0C02E923 */  jal        func_800BA48C
/* B5188 800B4588 8FA7001C */   lw        $a3, 0x1c($sp)
/* B518C 800B458C 3C04800F */  lui        $a0, %hi(D_800EAA70)
/* B5190 800B4590 0C02E899 */  jal        func_800BA264
/* B5194 800B4594 2484AA70 */   addiu     $a0, $a0, %lo(D_800EAA70)
/* B5198 800B4598 10000001 */  b          .L800B45A0
/* B519C 800B459C 00000000 */   nop
.L800B45A0:
/* B51A0 800B45A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* B51A4 800B45A4 27BD0020 */  addiu      $sp, $sp, 0x20
/* B51A8 800B45A8 03E00008 */  jr         $ra
/* B51AC 800B45AC 00000000 */   nop

glabel func_800B45B0
/* B51B0 800B45B0 27BDFFF8 */  addiu      $sp, $sp, -8
/* B51B4 800B45B4 908E0000 */  lbu        $t6, ($a0)
/* B51B8 800B45B8 31CF00FF */  andi       $t7, $t6, 0xff
/* B51BC 800B45BC 000FC600 */  sll        $t8, $t7, 0x18
/* B51C0 800B45C0 AFB80004 */  sw         $t8, 4($sp)
/* B51C4 800B45C4 90880001 */  lbu        $t0, 1($a0)
/* B51C8 800B45C8 8FB90004 */  lw         $t9, 4($sp)
/* B51CC 800B45CC 310900FF */  andi       $t1, $t0, 0xff
/* B51D0 800B45D0 00095400 */  sll        $t2, $t1, 0x10
/* B51D4 800B45D4 032A5825 */  or         $t3, $t9, $t2
/* B51D8 800B45D8 AFAB0004 */  sw         $t3, 4($sp)
/* B51DC 800B45DC 908D0002 */  lbu        $t5, 2($a0)
/* B51E0 800B45E0 8FAC0004 */  lw         $t4, 4($sp)
/* B51E4 800B45E4 31AE00FF */  andi       $t6, $t5, 0xff
/* B51E8 800B45E8 000E7A00 */  sll        $t7, $t6, 8
/* B51EC 800B45EC 018FC025 */  or         $t8, $t4, $t7
/* B51F0 800B45F0 AFB80004 */  sw         $t8, 4($sp)
/* B51F4 800B45F4 90890003 */  lbu        $t1, 3($a0)
/* B51F8 800B45F8 8FA80004 */  lw         $t0, 4($sp)
/* B51FC 800B45FC 313900FF */  andi       $t9, $t1, 0xff
/* B5200 800B4600 01195025 */  or         $t2, $t0, $t9
/* B5204 800B4604 AFAA0004 */  sw         $t2, 4($sp)
/* B5208 800B4608 10000003 */  b          .L800B4618
/* B520C 800B460C 8FA20004 */   lw        $v0, 4($sp)
/* B5210 800B4610 10000001 */  b          .L800B4618
/* B5214 800B4614 00000000 */   nop
.L800B4618:
/* B5218 800B4618 03E00008 */  jr         $ra
/* B521C 800B461C 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800B4620
/* B5220 800B4620 27BDFFF8 */  addiu      $sp, $sp, -8
/* B5224 800B4624 93AE0004 */  lbu        $t6, 4($sp)
/* B5228 800B4628 31CFFF03 */  andi       $t7, $t6, 0xff03
/* B522C 800B462C 35F80030 */  ori        $t8, $t7, 0x30
/* B5230 800B4630 A3B80004 */  sb         $t8, 4($sp)
/* B5234 800B4634 93A90004 */  lbu        $t1, 4($sp)
/* B5238 800B4638 30B90003 */  andi       $t9, $a1, 3
/* B523C 800B463C 33280003 */  andi       $t0, $t9, 3
/* B5240 800B4640 312AFFFC */  andi       $t2, $t1, 0xfffc
/* B5244 800B4644 010A5825 */  or         $t3, $t0, $t2
/* B5248 800B4648 A3AB0004 */  sb         $t3, 4($sp)
/* B524C 800B464C 10A0000B */  beqz       $a1, .L800B467C
/* B5250 800B4650 AFA00000 */   sw        $zero, ($sp)
.L800B4654:
/* B5254 800B4654 8FAC0000 */  lw         $t4, ($sp)
/* B5258 800B4658 008C6821 */  addu       $t5, $a0, $t4
/* B525C 800B465C 91AE0000 */  lbu        $t6, ($t5)
/* B5260 800B4660 03AC7821 */  addu       $t7, $sp, $t4
/* B5264 800B4664 A1EE0005 */  sb         $t6, 5($t7)
/* B5268 800B4668 8FB80000 */  lw         $t8, ($sp)
/* B526C 800B466C 27190001 */  addiu      $t9, $t8, 1
/* B5270 800B4670 0325082B */  sltu       $at, $t9, $a1
/* B5274 800B4674 1420FFF7 */  bnez       $at, .L800B4654
/* B5278 800B4678 AFB90000 */   sw        $t9, ($sp)
.L800B467C:
/* B527C 800B467C 27A90004 */  addiu      $t1, $sp, 4
/* B5280 800B4680 8D280000 */  lw         $t0, ($t1)
/* B5284 800B4684 3C0AC000 */  lui        $t2, 0xc000
/* B5288 800B4688 AD480000 */  sw         $t0, ($t2)
/* B528C 800B468C 10000001 */  b          .L800B4694
/* B5290 800B4690 00000000 */   nop
.L800B4694:
/* B5294 800B4694 03E00008 */  jr         $ra
/* B5298 800B4698 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800B469C
/* B529C 800B469C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B52A0 800B46A0 AFBF0014 */  sw         $ra, 0x14($sp)
/* B52A4 800B46A4 0C02E994 */  jal        func_800BA650
/* B52A8 800B46A8 00000000 */   nop
/* B52AC 800B46AC 304E2000 */  andi       $t6, $v0, 0x2000
/* B52B0 800B46B0 15C00006 */  bnez       $t6, .L800B46CC
/* B52B4 800B46B4 00000000 */   nop
.L800B46B8:
/* B52B8 800B46B8 0C02E994 */  jal        func_800BA650
/* B52BC 800B46BC 00000000 */   nop
/* B52C0 800B46C0 304F2000 */  andi       $t7, $v0, 0x2000
/* B52C4 800B46C4 11E0FFFC */  beqz       $t7, .L800B46B8
/* B52C8 800B46C8 00000000 */   nop
.L800B46CC:
/* B52CC 800B46CC 3C18C000 */  lui        $t8, %hi(D_C000000C)
/* B52D0 800B46D0 AF00000C */  sw         $zero, %lo(D_C000000C)($t8)
/* B52D4 800B46D4 0C02E994 */  jal        func_800BA650
/* B52D8 800B46D8 00000000 */   nop
/* B52DC 800B46DC 30592000 */  andi       $t9, $v0, 0x2000
/* B52E0 800B46E0 13200006 */  beqz       $t9, .L800B46FC
/* B52E4 800B46E4 00000000 */   nop
.L800B46E8:
/* B52E8 800B46E8 0C02E994 */  jal        func_800BA650
/* B52EC 800B46EC 00000000 */   nop
/* B52F0 800B46F0 30482000 */  andi       $t0, $v0, 0x2000
/* B52F4 800B46F4 1500FFFC */  bnez       $t0, .L800B46E8
/* B52F8 800B46F8 00000000 */   nop
.L800B46FC:
/* B52FC 800B46FC 10000001 */  b          .L800B4704
/* B5300 800B4700 00000000 */   nop
.L800B4704:
/* B5304 800B4704 8FBF0014 */  lw         $ra, 0x14($sp)
/* B5308 800B4708 27BD0018 */  addiu      $sp, $sp, 0x18
/* B530C 800B470C 03E00008 */  jr         $ra
/* B5310 800B4710 00000000 */   nop

glabel func_800B4714
/* B5314 800B4714 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B5318 800B4718 AFBF0014 */  sw         $ra, 0x14($sp)
/* B531C 800B471C AFA40028 */  sw         $a0, 0x28($sp)
/* B5320 800B4720 AFA5002C */  sw         $a1, 0x2c($sp)
/* B5324 800B4724 AFA00020 */  sw         $zero, 0x20($sp)
/* B5328 800B4728 3C0E800F */  lui        $t6, %hi(D_800EA640)
/* B532C 800B472C 8DCEA640 */  lw         $t6, %lo(D_800EA640)($t6)
/* B5330 800B4730 15C00005 */  bnez       $t6, .L800B4748
/* B5334 800B4734 00000000 */   nop
/* B5338 800B4738 0C02D1A7 */  jal        func_800B469C
/* B533C 800B473C 00000000 */   nop
/* B5340 800B4740 10000003 */  b          .L800B4750
/* B5344 800B4744 AFA0001C */   sw        $zero, 0x1c($sp)
.L800B4748:
/* B5348 800B4748 240F0001 */  addiu      $t7, $zero, 1
/* B534C 800B474C AFAF001C */  sw         $t7, 0x1c($sp)
.L800B4750:
/* B5350 800B4750 8FB8002C */  lw         $t8, 0x2c($sp)
/* B5354 800B4754 1300001E */  beqz       $t8, .L800B47D0
/* B5358 800B4758 00000000 */   nop
.L800B475C:
/* B535C 800B475C 8FB9002C */  lw         $t9, 0x2c($sp)
/* B5360 800B4760 2F210003 */  sltiu      $at, $t9, 3
/* B5364 800B4764 10200003 */  beqz       $at, .L800B4774
/* B5368 800B4768 00000000 */   nop
/* B536C 800B476C 10000003 */  b          .L800B477C
/* B5370 800B4770 AFB90024 */   sw        $t9, 0x24($sp)
.L800B4774:
/* B5374 800B4774 24080003 */  addiu      $t0, $zero, 3
/* B5378 800B4778 AFA80024 */  sw         $t0, 0x24($sp)
.L800B477C:
/* B537C 800B477C 8FA90028 */  lw         $t1, 0x28($sp)
/* B5380 800B4780 8FAA0020 */  lw         $t2, 0x20($sp)
/* B5384 800B4784 8FA50024 */  lw         $a1, 0x24($sp)
/* B5388 800B4788 0C02D188 */  jal        func_800B4620
/* B538C 800B478C 012A2021 */   addu      $a0, $t1, $t2
/* B5390 800B4790 8FAB002C */  lw         $t3, 0x2c($sp)
/* B5394 800B4794 8FAC0024 */  lw         $t4, 0x24($sp)
/* B5398 800B4798 016C6823 */  subu       $t5, $t3, $t4
/* B539C 800B479C AFAD002C */  sw         $t5, 0x2c($sp)
/* B53A0 800B47A0 8FAE0020 */  lw         $t6, 0x20($sp)
/* B53A4 800B47A4 8FAF0024 */  lw         $t7, 0x24($sp)
/* B53A8 800B47A8 01CFC021 */  addu       $t8, $t6, $t7
/* B53AC 800B47AC AFB80020 */  sw         $t8, 0x20($sp)
/* B53B0 800B47B0 8FB9002C */  lw         $t9, 0x2c($sp)
/* B53B4 800B47B4 13200003 */  beqz       $t9, .L800B47C4
/* B53B8 800B47B8 00000000 */   nop
/* B53BC 800B47BC 0C02D1A7 */  jal        func_800B469C
/* B53C0 800B47C0 00000000 */   nop
.L800B47C4:
/* B53C4 800B47C4 8FA8002C */  lw         $t0, 0x2c($sp)
/* B53C8 800B47C8 1500FFE4 */  bnez       $t0, .L800B475C
/* B53CC 800B47CC 00000000 */   nop
.L800B47D0:
/* B53D0 800B47D0 8FA9001C */  lw         $t1, 0x1c($sp)
/* B53D4 800B47D4 11200003 */  beqz       $t1, .L800B47E4
/* B53D8 800B47D8 00000000 */   nop
/* B53DC 800B47DC 0C02D1A7 */  jal        func_800B469C
/* B53E0 800B47E0 00000000 */   nop
.L800B47E4:
/* B53E4 800B47E4 10000001 */  b          .L800B47EC
/* B53E8 800B47E8 00000000 */   nop
.L800B47EC:
/* B53EC 800B47EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* B53F0 800B47F0 27BD0028 */  addiu      $sp, $sp, 0x28
/* B53F4 800B47F4 03E00008 */  jr         $ra
/* B53F8 800B47F8 00000000 */   nop

glabel func_800B47FC
/* B53FC 800B47FC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B5400 800B4800 AFBF0014 */  sw         $ra, 0x14($sp)
/* B5404 800B4804 AFA40028 */  sw         $a0, 0x28($sp)
/* B5408 800B4808 AFA00024 */  sw         $zero, 0x24($sp)
.L800B480C:
/* B540C 800B480C 8FAE0024 */  lw         $t6, 0x24($sp)
/* B5410 800B4810 3C18800F */  lui        $t8, %hi(D_800EAA90)
/* B5414 800B4814 8F18AA90 */  lw         $t8, %lo(D_800EAA90)($t8)
/* B5418 800B4818 03AE7821 */  addu       $t7, $sp, $t6
/* B541C 800B481C 91EF0029 */  lbu        $t7, 0x29($t7)
/* B5420 800B4820 3C19800F */  lui        $t9, %hi(D_800EAA90)
/* B5424 800B4824 8F39AA90 */  lw         $t9, %lo(D_800EAA90)($t9)
/* B5428 800B4828 3C018019 */  lui        $at, %hi(D_8018A700)
/* B542C 800B482C 00380821 */  addu       $at, $at, $t8
/* B5430 800B4830 A02FA700 */  sb         $t7, %lo(D_8018A700)($at)
/* B5434 800B4834 3C01800F */  lui        $at, %hi(D_800EAA90)
/* B5438 800B4838 27280001 */  addiu      $t0, $t9, 1
/* B543C 800B483C AC28AA90 */  sw         $t0, %lo(D_800EAA90)($at)
/* B5440 800B4840 8FA90024 */  lw         $t1, 0x24($sp)
/* B5444 800B4844 252A0001 */  addiu      $t2, $t1, 1
/* B5448 800B4848 2D410003 */  sltiu      $at, $t2, 3
/* B544C 800B484C 1420FFEF */  bnez       $at, .L800B480C
/* B5450 800B4850 AFAA0024 */   sw        $t2, 0x24($sp)
/* B5454 800B4854 3C0B8019 */  lui        $t3, %hi(D_8018A700)
/* B5458 800B4858 256BA700 */  addiu      $t3, $t3, %lo(D_8018A700)
/* B545C 800B485C 916C0000 */  lbu        $t4, ($t3)
/* B5460 800B4860 24010002 */  addiu      $at, $zero, 2
/* B5464 800B4864 15810009 */  bne        $t4, $at, .L800B488C
/* B5468 800B4868 00000000 */   nop
/* B546C 800B486C 3C04800F */  lui        $a0, %hi(D_800EA610)
/* B5470 800B4870 8C84A610 */  lw         $a0, %lo(D_800EA610)($a0)
/* B5474 800B4874 24050190 */  addiu      $a1, $zero, 0x190
/* B5478 800B4878 0C02D1C5 */  jal        func_800B4714
/* B547C 800B487C 24840020 */   addiu     $a0, $a0, 0x20
/* B5480 800B4880 3C01800F */  lui        $at, %hi(D_800EAA90)
/* B5484 800B4884 1000001B */  b          .L800B48F4
/* B5488 800B4888 AC20AA90 */   sw        $zero, %lo(D_800EAA90)($at)
.L800B488C:
/* B548C 800B488C 3C0D800F */  lui        $t5, %hi(D_800EAA90)
/* B5490 800B4890 8DADAA90 */  lw         $t5, %lo(D_800EAA90)($t5)
/* B5494 800B4894 2DA10009 */  sltiu      $at, $t5, 9
/* B5498 800B4898 14200016 */  bnez       $at, .L800B48F4
/* B549C 800B489C 00000000 */   nop
/* B54A0 800B48A0 3C0E8019 */  lui        $t6, %hi(D_8018A700)
/* B54A4 800B48A4 25CEA700 */  addiu      $t6, $t6, %lo(D_8018A700)
/* B54A8 800B48A8 91CF0000 */  lbu        $t7, ($t6)
/* B54AC 800B48AC 24010001 */  addiu      $at, $zero, 1
/* B54B0 800B48B0 15E10010 */  bne        $t7, $at, .L800B48F4
/* B54B4 800B48B4 00000000 */   nop
/* B54B8 800B48B8 3C048019 */  lui        $a0, %hi(D_8018A700)
/* B54BC 800B48BC 2484A700 */  addiu      $a0, $a0, %lo(D_8018A700)
/* B54C0 800B48C0 0C02D16C */  jal        func_800B45B0
/* B54C4 800B48C4 24840001 */   addiu     $a0, $a0, 1
/* B54C8 800B48C8 AFA2001C */  sw         $v0, 0x1c($sp)
/* B54CC 800B48CC 3C048019 */  lui        $a0, %hi(D_8018A700)
/* B54D0 800B48D0 2484A700 */  addiu      $a0, $a0, %lo(D_8018A700)
/* B54D4 800B48D4 0C02D16C */  jal        func_800B45B0
/* B54D8 800B48D8 24840005 */   addiu     $a0, $a0, 5
/* B54DC 800B48DC AFA20020 */  sw         $v0, 0x20($sp)
/* B54E0 800B48E0 8FA4001C */  lw         $a0, 0x1c($sp)
/* B54E4 800B48E4 0C02D1C5 */  jal        func_800B4714
/* B54E8 800B48E8 8FA50020 */   lw        $a1, 0x20($sp)
/* B54EC 800B48EC 3C01800F */  lui        $at, %hi(D_800EAA90)
/* B54F0 800B48F0 AC20AA90 */  sw         $zero, %lo(D_800EAA90)($at)
.L800B48F4:
/* B54F4 800B48F4 10000001 */  b          .L800B48FC
/* B54F8 800B48F8 00000000 */   nop
.L800B48FC:
/* B54FC 800B48FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* B5500 800B4900 27BD0028 */  addiu      $sp, $sp, 0x28
/* B5504 800B4904 03E00008 */  jr         $ra
/* B5508 800B4908 00000000 */   nop
/* B550C 800B490C 00000000 */  nop
