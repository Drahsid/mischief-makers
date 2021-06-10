glabel func_8009B2E0
/* 9BEE0 8009B2E0 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 9BEE4 8009B2E4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 9BEE8 8009B2E8 AFA40080 */  sw         $a0, 0x80($sp)
/* 9BEEC 8009B2EC AFA50084 */  sw         $a1, 0x84($sp)
/* 9BEF0 8009B2F0 AFA60088 */  sw         $a2, 0x88($sp)
/* 9BEF4 8009B2F4 AFA00078 */  sw         $zero, 0x78($sp)
/* 9BEF8 8009B2F8 3C0E800F */  lui        $t6, %hi(D_800EA510)
/* 9BEFC 8009B2FC 8DCEA510 */  lw         $t6, %lo(D_800EA510)($t6)
/* 9BF00 8009B300 11C00003 */  beqz       $t6, .L8009B310
/* 9BF04 8009B304 00000000 */   nop
/* 9BF08 8009B308 10000077 */  b          .L8009B4E8
/* 9BF0C 8009B30C 00001025 */   or        $v0, $zero, $zero
.L8009B310:
/* 9BF10 8009B310 240F0001 */  addiu      $t7, $zero, 1
/* 9BF14 8009B314 3C01800F */  lui        $at, %hi(D_800EA510)
/* 9BF18 8009B318 AC2FA510 */  sw         $t7, %lo(D_800EA510)($at)
/* 9BF1C 8009B31C 0C0295C8 */  jal        func_800A5720
/* 9BF20 8009B320 00000000 */   nop
/* 9BF24 8009B324 AFA20070 */  sw         $v0, 0x70($sp)
/* 9BF28 8009B328 AFA30074 */  sw         $v1, 0x74($sp)
/* 9BF2C 8009B32C 3C050007 */  lui        $a1, 7
/* 9BF30 8009B330 3C06800F */  lui        $a2, %hi(D_800E9770)
/* 9BF34 8009B334 3C07800F */  lui        $a3, %hi(D_800E9774)
/* 9BF38 8009B338 8CE79774 */  lw         $a3, %lo(D_800E9774)($a3)
/* 9BF3C 8009B33C 8CC69770 */  lw         $a2, %lo(D_800E9770)($a2)
/* 9BF40 8009B340 34A5A120 */  ori        $a1, $a1, 0xa120
/* 9BF44 8009B344 0C029112 */  jal        func_800A4448
/* 9BF48 8009B348 24040000 */   addiu     $a0, $zero, 0
/* 9BF4C 8009B34C AFA20030 */  sw         $v0, 0x30($sp)
/* 9BF50 8009B350 AFA30034 */  sw         $v1, 0x34($sp)
/* 9BF54 8009B354 3C07000F */  lui        $a3, 0xf
/* 9BF58 8009B358 34E74240 */  ori        $a3, $a3, 0x4240
/* 9BF5C 8009B35C 8FA50034 */  lw         $a1, 0x34($sp)
/* 9BF60 8009B360 8FA40030 */  lw         $a0, 0x30($sp)
/* 9BF64 8009B364 0C0290C2 */  jal        func_800A4308
/* 9BF68 8009B368 24060000 */   addiu     $a2, $zero, 0
/* 9BF6C 8009B36C 8FB80070 */  lw         $t8, 0x70($sp)
/* 9BF70 8009B370 8FB90074 */  lw         $t9, 0x74($sp)
/* 9BF74 8009B374 0058082B */  sltu       $at, $v0, $t8
/* 9BF78 8009B378 14200033 */  bnez       $at, .L8009B448
/* 9BF7C 8009B37C 00000000 */   nop
/* 9BF80 8009B380 0302082B */  sltu       $at, $t8, $v0
/* 9BF84 8009B384 14200004 */  bnez       $at, .L8009B398
/* 9BF88 8009B388 00000000 */   nop
/* 9BF8C 8009B38C 0323082B */  sltu       $at, $t9, $v1
/* 9BF90 8009B390 1020002D */  beqz       $at, .L8009B448
/* 9BF94 8009B394 00000000 */   nop
.L8009B398:
/* 9BF98 8009B398 27A40038 */  addiu      $a0, $sp, 0x38
/* 9BF9C 8009B39C 27A5007C */  addiu      $a1, $sp, 0x7c
/* 9BFA0 8009B3A0 0C026994 */  jal        func_8009A650
/* 9BFA4 8009B3A4 24060001 */   addiu     $a2, $zero, 1
/* 9BFA8 8009B3A8 3C050007 */  lui        $a1, 7
/* 9BFAC 8009B3AC 3C06800F */  lui        $a2, %hi(D_800E9770)
/* 9BFB0 8009B3B0 3C07800F */  lui        $a3, %hi(D_800E9774)
/* 9BFB4 8009B3B4 8CE79774 */  lw         $a3, %lo(D_800E9774)($a3)
/* 9BFB8 8009B3B8 8CC69770 */  lw         $a2, %lo(D_800E9770)($a2)
/* 9BFBC 8009B3BC 34A5A120 */  ori        $a1, $a1, 0xa120
/* 9BFC0 8009B3C0 0C029112 */  jal        func_800A4448
/* 9BFC4 8009B3C4 24040000 */   addiu     $a0, $zero, 0
/* 9BFC8 8009B3C8 AFA20028 */  sw         $v0, 0x28($sp)
/* 9BFCC 8009B3CC AFA3002C */  sw         $v1, 0x2c($sp)
/* 9BFD0 8009B3D0 3C07000F */  lui        $a3, 0xf
/* 9BFD4 8009B3D4 34E74240 */  ori        $a3, $a3, 0x4240
/* 9BFD8 8009B3D8 8FA5002C */  lw         $a1, 0x2c($sp)
/* 9BFDC 8009B3DC 8FA40028 */  lw         $a0, 0x28($sp)
/* 9BFE0 8009B3E0 0C0290C2 */  jal        func_800A4308
/* 9BFE4 8009B3E4 24060000 */   addiu     $a2, $zero, 0
/* 9BFE8 8009B3E8 AFA20030 */  sw         $v0, 0x30($sp)
/* 9BFEC 8009B3EC AFA30034 */  sw         $v1, 0x34($sp)
/* 9BFF0 8009B3F0 8FA90034 */  lw         $t1, 0x34($sp)
/* 9BFF4 8009B3F4 8FA80030 */  lw         $t0, 0x30($sp)
/* 9BFF8 8009B3F8 8FAA0070 */  lw         $t2, 0x70($sp)
/* 9BFFC 8009B3FC 8FAB0074 */  lw         $t3, 0x74($sp)
/* 9C000 8009B400 240C0000 */  addiu      $t4, $zero, 0
/* 9C004 8009B404 240D0000 */  addiu      $t5, $zero, 0
/* 9C008 8009B408 27AE0038 */  addiu      $t6, $sp, 0x38
/* 9C00C 8009B40C 27AF007C */  addiu      $t7, $sp, 0x7c
/* 9C010 8009B410 010A3023 */  subu       $a2, $t0, $t2
/* 9C014 8009B414 012B082B */  sltu       $at, $t1, $t3
/* 9C018 8009B418 00C13023 */  subu       $a2, $a2, $at
/* 9C01C 8009B41C AFAF001C */  sw         $t7, 0x1c($sp)
/* 9C020 8009B420 AFAE0018 */  sw         $t6, 0x18($sp)
/* 9C024 8009B424 AFAD0014 */  sw         $t5, 0x14($sp)
/* 9C028 8009B428 AFAC0010 */  sw         $t4, 0x10($sp)
/* 9C02C 8009B42C 27A40050 */  addiu      $a0, $sp, 0x50
/* 9C030 8009B430 0C02ABD0 */  jal        func_800AAF40
/* 9C034 8009B434 012B3823 */   subu      $a3, $t1, $t3
/* 9C038 8009B438 27A40038 */  addiu      $a0, $sp, 0x38
/* 9C03C 8009B43C 27A5007C */  addiu      $a1, $sp, 0x7c
/* 9C040 8009B440 0C026B44 */  jal        func_8009AD10
/* 9C044 8009B444 24060001 */   addiu     $a2, $zero, 1
.L8009B448:
/* 9C048 8009B448 24180004 */  addiu      $t8, $zero, 4
/* 9C04C 8009B44C 3C018018 */  lui        $at, %hi(D_80185671)
/* 9C050 8009B450 A0385671 */  sb         $t8, %lo(D_80185671)($at)
/* 9C054 8009B454 0C026D77 */  jal        func_8009B5DC
/* 9C058 8009B458 00002025 */   or        $a0, $zero, $zero
/* 9C05C 8009B45C 3C058018 */  lui        $a1, %hi(D_80185630)
/* 9C060 8009B460 24A55630 */  addiu      $a1, $a1, %lo(D_80185630)
/* 9C064 8009B464 0C02AA48 */  jal        func_800AA920
/* 9C068 8009B468 24040001 */   addiu     $a0, $zero, 1
/* 9C06C 8009B46C AFA20078 */  sw         $v0, 0x78($sp)
/* 9C070 8009B470 8FA40080 */  lw         $a0, 0x80($sp)
/* 9C074 8009B474 27A5007C */  addiu      $a1, $sp, 0x7c
/* 9C078 8009B478 0C026B44 */  jal        func_8009AD10
/* 9C07C 8009B47C 24060001 */   addiu     $a2, $zero, 1
/* 9C080 8009B480 3C058018 */  lui        $a1, %hi(D_80185630)
/* 9C084 8009B484 24A55630 */  addiu      $a1, $a1, %lo(D_80185630)
/* 9C088 8009B488 0C02AA48 */  jal        func_800AA920
/* 9C08C 8009B48C 00002025 */   or        $a0, $zero, $zero
/* 9C090 8009B490 AFA20078 */  sw         $v0, 0x78($sp)
/* 9C094 8009B494 8FA40080 */  lw         $a0, 0x80($sp)
/* 9C098 8009B498 27A5007C */  addiu      $a1, $sp, 0x7c
/* 9C09C 8009B49C 0C026B44 */  jal        func_8009AD10
/* 9C0A0 8009B4A0 24060001 */   addiu     $a2, $zero, 1
/* 9C0A4 8009B4A4 8FA40084 */  lw         $a0, 0x84($sp)
/* 9C0A8 8009B4A8 0C026D3E */  jal        func_8009B4F8
/* 9C0AC 8009B4AC 8FA50088 */   lw        $a1, 0x88($sp)
/* 9C0B0 8009B4B0 3C018018 */  lui        $at, %hi(D_80185670)
/* 9C0B4 8009B4B4 A0205670 */  sb         $zero, %lo(D_80185670)($at)
/* 9C0B8 8009B4B8 0C02AA10 */  jal        func_800AA840
/* 9C0BC 8009B4BC 00000000 */   nop
/* 9C0C0 8009B4C0 3C048018 */  lui        $a0, %hi(D_80185698)
/* 9C0C4 8009B4C4 3C058018 */  lui        $a1, %hi(D_801856B0)
/* 9C0C8 8009B4C8 24A556B0 */  addiu      $a1, $a1, %lo(D_801856B0)
/* 9C0CC 8009B4CC 24845698 */  addiu      $a0, $a0, %lo(D_80185698)
/* 9C0D0 8009B4D0 0C026994 */  jal        func_8009A650
/* 9C0D4 8009B4D4 24060001 */   addiu     $a2, $zero, 1
/* 9C0D8 8009B4D8 10000003 */  b          .L8009B4E8
/* 9C0DC 8009B4DC 8FA20078 */   lw        $v0, 0x78($sp)
/* 9C0E0 8009B4E0 10000001 */  b          .L8009B4E8
/* 9C0E4 8009B4E4 00000000 */   nop
.L8009B4E8:
/* 9C0E8 8009B4E8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 9C0EC 8009B4EC 27BD0080 */  addiu      $sp, $sp, 0x80
/* 9C0F0 8009B4F0 03E00008 */  jr         $ra
/* 9C0F4 8009B4F4 00000000 */   nop
