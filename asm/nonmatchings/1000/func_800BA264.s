glabel func_800BA264
/* BAE64 800BA264 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* BAE68 800BA268 AFBF001C */  sw         $ra, 0x1c($sp)
/* BAE6C 800BA26C AFA40040 */  sw         $a0, 0x40($sp)
/* BAE70 800BA270 AFB00018 */  sw         $s0, 0x18($sp)
/* BAE74 800BA274 3C0E800F */  lui        $t6, %hi(D_800EABE4)
/* BAE78 800BA278 8DCEABE4 */  lw         $t6, %lo(D_800EABE4)($t6)
/* BAE7C 800BA27C 15C0000F */  bnez       $t6, .L800BA2BC
/* BAE80 800BA280 00000000 */   nop
/* BAE84 800BA284 3C048019 */  lui        $a0, %hi(D_8018B780)
/* BAE88 800BA288 3C058019 */  lui        $a1, %hi(D_8018B798)
/* BAE8C 800BA28C 24A5B798 */  addiu      $a1, $a1, %lo(D_8018B798)
/* BAE90 800BA290 2484B780 */  addiu      $a0, $a0, %lo(D_8018B780)
/* BAE94 800BA294 0C026994 */  jal        func_8009A650
/* BAE98 800BA298 24060001 */   addiu     $a2, $zero, 1
/* BAE9C 800BA29C 3C058019 */  lui        $a1, %hi(D_8018B780)
/* BAEA0 800BA2A0 24A5B780 */  addiu      $a1, $a1, %lo(D_8018B780)
/* BAEA4 800BA2A4 24040010 */  addiu      $a0, $zero, 0x10
/* BAEA8 800BA2A8 0C0269BC */  jal        func_8009A6F0
/* BAEAC 800BA2AC 00003025 */   or        $a2, $zero, $zero
/* BAEB0 800BA2B0 240F0001 */  addiu      $t7, $zero, 1
/* BAEB4 800BA2B4 3C01800F */  lui        $at, %hi(D_800EABE4)
/* BAEB8 800BA2B8 AC2FABE4 */  sw         $t7, %lo(D_800EABE4)($at)
.L800BA2BC:
/* BAEBC 800BA2BC 0C0297A4 */  jal        func_800A5E90
/* BAEC0 800BA2C0 00000000 */   nop
/* BAEC4 800BA2C4 AFA2003C */  sw         $v0, 0x3c($sp)
/* BAEC8 800BA2C8 3C01800F */  lui        $at, %hi(D_800EABE0)
/* BAECC 800BA2CC AC20ABE0 */  sw         $zero, %lo(D_800EABE0)($at)
/* BAED0 800BA2D0 8FB80040 */  lw         $t8, 0x40($sp)
/* BAED4 800BA2D4 8F190008 */  lw         $t9, 8($t8)
/* BAED8 800BA2D8 AFB9002C */  sw         $t9, 0x2c($sp)
/* BAEDC 800BA2DC 8FA80040 */  lw         $t0, 0x40($sp)
/* BAEE0 800BA2E0 8D090010 */  lw         $t1, 0x10($t0)
/* BAEE4 800BA2E4 00095080 */  sll        $t2, $t1, 2
/* BAEE8 800BA2E8 AFAA0034 */  sw         $t2, 0x34($sp)
/* BAEEC 800BA2EC 0C0297AC */  jal        func_800A5EB0
/* BAEF0 800BA2F0 8FA4003C */   lw        $a0, 0x3c($sp)
/* BAEF4 800BA2F4 8FAB0034 */  lw         $t3, 0x34($sp)
/* BAEF8 800BA2F8 11600053 */  beqz       $t3, .L800BA448
/* BAEFC 800BA2FC 00000000 */   nop
.L800BA300:
/* BAF00 800BA300 8FAC0034 */  lw         $t4, 0x34($sp)
/* BAF04 800BA304 34018000 */  ori        $at, $zero, 0x8000
/* BAF08 800BA308 0181082B */  sltu       $at, $t4, $at
/* BAF0C 800BA30C 10200003 */  beqz       $at, .L800BA31C
/* BAF10 800BA310 00000000 */   nop
/* BAF14 800BA314 10000003 */  b          .L800BA324
/* BAF18 800BA318 AFAC0030 */   sw        $t4, 0x30($sp)
.L800BA31C:
/* BAF1C 800BA31C 340D8000 */  ori        $t5, $zero, 0x8000
/* BAF20 800BA320 AFAD0030 */  sw         $t5, 0x30($sp)
.L800BA324:
/* BAF24 800BA324 8FAE0030 */  lw         $t6, 0x30($sp)
/* BAF28 800BA328 3C0100FF */  lui        $at, 0xff
/* BAF2C 800BA32C 27B90028 */  addiu      $t9, $sp, 0x28
/* BAF30 800BA330 01C17824 */  and        $t7, $t6, $at
/* BAF34 800BA334 000FC402 */  srl        $t8, $t7, 0x10
/* BAF38 800BA338 A3380000 */  sb         $t8, ($t9)
/* BAF3C 800BA33C 8FA80030 */  lw         $t0, 0x30($sp)
/* BAF40 800BA340 27AB0028 */  addiu      $t3, $sp, 0x28
/* BAF44 800BA344 3109FF00 */  andi       $t1, $t0, 0xff00
/* BAF48 800BA348 00095202 */  srl        $t2, $t1, 8
/* BAF4C 800BA34C A16A0001 */  sb         $t2, 1($t3)
/* BAF50 800BA350 8FAC0030 */  lw         $t4, 0x30($sp)
/* BAF54 800BA354 27AE0028 */  addiu      $t6, $sp, 0x28
/* BAF58 800BA358 318D00FF */  andi       $t5, $t4, 0xff
/* BAF5C 800BA35C A1CD0002 */  sb         $t5, 2($t6)
/* BAF60 800BA360 AFA00038 */  sw         $zero, 0x38($sp)
/* BAF64 800BA364 8FAF0038 */  lw         $t7, 0x38($sp)
/* BAF68 800BA368 2DE10003 */  sltiu      $at, $t7, 3
/* BAF6C 800BA36C 10200010 */  beqz       $at, .L800BA3B0
/* BAF70 800BA370 00000000 */   nop
.L800BA374:
/* BAF74 800BA374 8FB80038 */  lw         $t8, 0x38($sp)
/* BAF78 800BA378 27B90028 */  addiu      $t9, $sp, 0x28
/* BAF7C 800BA37C 24080003 */  addiu      $t0, $zero, 3
/* BAF80 800BA380 24060003 */  addiu      $a2, $zero, 3
/* BAF84 800BA384 01182823 */  subu       $a1, $t0, $t8
/* BAF88 800BA388 0C02A254 */  jal        func_800A8950
/* BAF8C 800BA38C 03192021 */   addu      $a0, $t8, $t9
/* BAF90 800BA390 8FA90038 */  lw         $t1, 0x38($sp)
/* BAF94 800BA394 00408025 */  or         $s0, $v0, $zero
/* BAF98 800BA398 01305021 */  addu       $t2, $t1, $s0
/* BAF9C 800BA39C AFAA0038 */  sw         $t2, 0x38($sp)
/* BAFA0 800BA3A0 8FAB0038 */  lw         $t3, 0x38($sp)
/* BAFA4 800BA3A4 2D610003 */  sltiu      $at, $t3, 3
/* BAFA8 800BA3A8 1420FFF2 */  bnez       $at, .L800BA374
/* BAFAC 800BA3AC 00000000 */   nop
.L800BA3B0:
/* BAFB0 800BA3B0 AFA00038 */  sw         $zero, 0x38($sp)
/* BAFB4 800BA3B4 8FAC0038 */  lw         $t4, 0x38($sp)
/* BAFB8 800BA3B8 8FAD0030 */  lw         $t5, 0x30($sp)
/* BAFBC 800BA3BC 018D082B */  sltu       $at, $t4, $t5
/* BAFC0 800BA3C0 10200011 */  beqz       $at, .L800BA408
/* BAFC4 800BA3C4 00000000 */   nop
.L800BA3C8:
/* BAFC8 800BA3C8 8FAF0038 */  lw         $t7, 0x38($sp)
/* BAFCC 800BA3CC 8FAE002C */  lw         $t6, 0x2c($sp)
/* BAFD0 800BA3D0 8FB90030 */  lw         $t9, 0x30($sp)
/* BAFD4 800BA3D4 24060004 */  addiu      $a2, $zero, 4
/* BAFD8 800BA3D8 01CF2021 */  addu       $a0, $t6, $t7
/* BAFDC 800BA3DC 0C02A254 */  jal        func_800A8950
/* BAFE0 800BA3E0 032F2823 */   subu      $a1, $t9, $t7
/* BAFE4 800BA3E4 8FA80038 */  lw         $t0, 0x38($sp)
/* BAFE8 800BA3E8 00408025 */  or         $s0, $v0, $zero
/* BAFEC 800BA3EC 0110C021 */  addu       $t8, $t0, $s0
/* BAFF0 800BA3F0 AFB80038 */  sw         $t8, 0x38($sp)
/* BAFF4 800BA3F4 8FA90038 */  lw         $t1, 0x38($sp)
/* BAFF8 800BA3F8 8FAA0030 */  lw         $t2, 0x30($sp)
/* BAFFC 800BA3FC 012A082B */  sltu       $at, $t1, $t2
/* BB000 800BA400 1420FFF1 */  bnez       $at, .L800BA3C8
/* BB004 800BA404 00000000 */   nop
.L800BA408:
/* BB008 800BA408 8FAB0034 */  lw         $t3, 0x34($sp)
/* BB00C 800BA40C 8FAC0030 */  lw         $t4, 0x30($sp)
/* BB010 800BA410 016C6823 */  subu       $t5, $t3, $t4
/* BB014 800BA414 AFAD0034 */  sw         $t5, 0x34($sp)
/* BB018 800BA418 8FAE002C */  lw         $t6, 0x2c($sp)
/* BB01C 800BA41C 8FB90030 */  lw         $t9, 0x30($sp)
/* BB020 800BA420 01D97821 */  addu       $t7, $t6, $t9
/* BB024 800BA424 AFAF002C */  sw         $t7, 0x2c($sp)
/* BB028 800BA428 3C048019 */  lui        $a0, %hi(D_8018B780)
/* BB02C 800BA42C 2484B780 */  addiu      $a0, $a0, %lo(D_8018B780)
/* BB030 800BA430 00002825 */  or         $a1, $zero, $zero
/* BB034 800BA434 0C026B44 */  jal        func_8009AD10
/* BB038 800BA438 24060001 */   addiu     $a2, $zero, 1
/* BB03C 800BA43C 8FA80034 */  lw         $t0, 0x34($sp)
/* BB040 800BA440 1500FFAF */  bnez       $t0, .L800BA300
/* BB044 800BA444 00000000 */   nop
.L800BA448:
/* BB048 800BA448 0C0297A4 */  jal        func_800A5E90
/* BB04C 800BA44C 00000000 */   nop
/* BB050 800BA450 AFA2003C */  sw         $v0, 0x3c($sp)
/* BB054 800BA454 8FB80040 */  lw         $t8, 0x40($sp)
/* BB058 800BA458 AF000010 */  sw         $zero, 0x10($t8)
/* BB05C 800BA45C 24090001 */  addiu      $t1, $zero, 1
/* BB060 800BA460 3C01800F */  lui        $at, %hi(D_800EABE0)
/* BB064 800BA464 AC29ABE0 */  sw         $t1, %lo(D_800EABE0)($at)
/* BB068 800BA468 0C0297AC */  jal        func_800A5EB0
/* BB06C 800BA46C 8FA4003C */   lw        $a0, 0x3c($sp)
/* BB070 800BA470 10000001 */  b          .L800BA478
/* BB074 800BA474 00000000 */   nop
.L800BA478:
/* BB078 800BA478 8FBF001C */  lw         $ra, 0x1c($sp)
/* BB07C 800BA47C 8FB00018 */  lw         $s0, 0x18($sp)
/* BB080 800BA480 27BD0040 */  addiu      $sp, $sp, 0x40
/* BB084 800BA484 03E00008 */  jr         $ra
/* BB088 800BA488 00000000 */   nop
