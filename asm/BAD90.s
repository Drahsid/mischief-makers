.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800BA190
/* BAD90 800BA190 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BAD94 800BA194 AFBF0014 */  sw         $ra, 0x14($sp)
/* BAD98 800BA198 AFA40018 */  sw         $a0, 0x18($sp)
/* BAD9C 800BA19C AFA5001C */  sw         $a1, 0x1c($sp)
/* BADA0 800BA1A0 AFA60020 */  sw         $a2, 0x20($sp)
/* BADA4 800BA1A4 8FAF0018 */  lw         $t7, 0x18($sp)
/* BADA8 800BA1A8 3C0E2073 */  lui        $t6, 0x2073
/* BADAC 800BA1AC 35CE6A73 */  ori        $t6, $t6, 0x6a73
/* BADB0 800BA1B0 ADEE0000 */  sw         $t6, ($t7)
/* BADB4 800BA1B4 8FB8001C */  lw         $t8, 0x1c($sp)
/* BADB8 800BA1B8 8FB90018 */  lw         $t9, 0x18($sp)
/* BADBC 800BA1BC AF380008 */  sw         $t8, 8($t9)
/* BADC0 800BA1C0 8FA80020 */  lw         $t0, 0x20($sp)
/* BADC4 800BA1C4 8FA90018 */  lw         $t1, 0x18($sp)
/* BADC8 800BA1C8 AD280004 */  sw         $t0, 4($t1)
/* BADCC 800BA1CC 0C029EF8 */  jal        func_800A7BE0
/* BADD0 800BA1D0 00000000 */   nop
/* BADD4 800BA1D4 8FAA0018 */  lw         $t2, 0x18($sp)
/* BADD8 800BA1D8 AD42000C */  sw         $v0, 0xc($t2)
/* BADDC 800BA1DC 8FAB0018 */  lw         $t3, 0x18($sp)
/* BADE0 800BA1E0 AD600010 */  sw         $zero, 0x10($t3)
/* BADE4 800BA1E4 10000001 */  b          .L800BA1EC
/* BADE8 800BA1E8 00000000 */   nop
.L800BA1EC:
/* BADEC 800BA1EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* BADF0 800BA1F0 27BD0018 */  addiu      $sp, $sp, 0x18
/* BADF4 800BA1F4 03E00008 */  jr         $ra
/* BADF8 800BA1F8 00000000 */   nop

glabel func_800BA1FC
/* BADFC 800BA1FC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BAE00 800BA200 AFBF0014 */  sw         $ra, 0x14($sp)
/* BAE04 800BA204 AFA40020 */  sw         $a0, 0x20($sp)
/* BAE08 800BA208 AFA50024 */  sw         $a1, 0x24($sp)
/* BAE0C 800BA20C AFA60028 */  sw         $a2, 0x28($sp)
/* BAE10 800BA210 AFA7002C */  sw         $a3, 0x2c($sp)
/* BAE14 800BA214 87AE002A */  lh         $t6, 0x2a($sp)
/* BAE18 800BA218 29C10011 */  slti       $at, $t6, 0x11
/* BAE1C 800BA21C 14200003 */  bnez       $at, .L800BA22C
/* BAE20 800BA220 00000000 */   nop
/* BAE24 800BA224 1000000B */  b          .L800BA254
/* BAE28 800BA228 00000000 */   nop
.L800BA22C:
/* BAE2C 800BA22C 27AF002A */  addiu      $t7, $sp, 0x2a
/* BAE30 800BA230 25F80002 */  addiu      $t8, $t7, 2
/* BAE34 800BA234 AFB8001C */  sw         $t8, 0x1c($sp)
/* BAE38 800BA238 8FA40020 */  lw         $a0, 0x20($sp)
/* BAE3C 800BA23C 87A50026 */  lh         $a1, 0x26($sp)
/* BAE40 800BA240 87A6002A */  lh         $a2, 0x2a($sp)
/* BAE44 800BA244 0C02E923 */  jal        func_800BA48C
/* BAE48 800BA248 8FA7001C */   lw        $a3, 0x1c($sp)
/* BAE4C 800BA24C 10000001 */  b          .L800BA254
/* BAE50 800BA250 00000000 */   nop
.L800BA254:
/* BAE54 800BA254 8FBF0014 */  lw         $ra, 0x14($sp)
/* BAE58 800BA258 27BD0020 */  addiu      $sp, $sp, 0x20
/* BAE5C 800BA25C 03E00008 */  jr         $ra
/* BAE60 800BA260 00000000 */   nop

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

glabel func_800BA48C
/* BB08C 800BA48C 27BDFF80 */  addiu      $sp, $sp, -0x80
/* BB090 800BA490 AFBF0014 */  sw         $ra, 0x14($sp)
/* BB094 800BA494 AFA40080 */  sw         $a0, 0x80($sp)
/* BB098 800BA498 AFA50084 */  sw         $a1, 0x84($sp)
/* BB09C 800BA49C AFA60088 */  sw         $a2, 0x88($sp)
/* BB0A0 800BA4A0 AFA7008C */  sw         $a3, 0x8c($sp)
/* BB0A4 800BA4A4 27AE002C */  addiu      $t6, $sp, 0x2c
/* BB0A8 800BA4A8 AFAE0028 */  sw         $t6, 0x28($sp)
/* BB0AC 800BA4AC 27AF002C */  addiu      $t7, $sp, 0x2c
/* BB0B0 800BA4B0 AFAF0024 */  sw         $t7, 0x24($sp)
/* BB0B4 800BA4B4 27B8002C */  addiu      $t8, $sp, 0x2c
/* BB0B8 800BA4B8 2719000C */  addiu      $t9, $t8, 0xc
/* BB0BC 800BA4BC AFB90020 */  sw         $t9, 0x20($sp)
/* BB0C0 800BA4C0 87A8008A */  lh         $t0, 0x8a($sp)
/* BB0C4 800BA4C4 25090003 */  addiu      $t1, $t0, 3
/* BB0C8 800BA4C8 AFA90018 */  sw         $t1, 0x18($sp)
/* BB0CC 800BA4CC 0C0297A4 */  jal        func_800A5E90
/* BB0D0 800BA4D0 00000000 */   nop
/* BB0D4 800BA4D4 AFA20078 */  sw         $v0, 0x78($sp)
/* BB0D8 800BA4D8 8FAA0080 */  lw         $t2, 0x80($sp)
/* BB0DC 800BA4DC 8FAC0024 */  lw         $t4, 0x24($sp)
/* BB0E0 800BA4E0 8D4B0000 */  lw         $t3, ($t2)
/* BB0E4 800BA4E4 AD8B0000 */  sw         $t3, ($t4)
/* BB0E8 800BA4E8 0C029EF8 */  jal        func_800A7BE0
/* BB0EC 800BA4EC 00000000 */   nop
/* BB0F0 800BA4F0 8FAD0080 */  lw         $t5, 0x80($sp)
/* BB0F4 800BA4F4 8FB80024 */  lw         $t8, 0x24($sp)
/* BB0F8 800BA4F8 8DAE000C */  lw         $t6, 0xc($t5)
/* BB0FC 800BA4FC 004E7823 */  subu       $t7, $v0, $t6
/* BB100 800BA500 AF0F0004 */  sw         $t7, 4($t8)
/* BB104 800BA504 87B9008A */  lh         $t9, 0x8a($sp)
/* BB108 800BA508 8FA80024 */  lw         $t0, 0x24($sp)
/* BB10C 800BA50C A5190008 */  sh         $t9, 8($t0)
/* BB110 800BA510 87A90086 */  lh         $t1, 0x86($sp)
/* BB114 800BA514 8FAA0024 */  lw         $t2, 0x24($sp)
/* BB118 800BA518 A549000A */  sh         $t1, 0xa($t2)
/* BB11C 800BA51C 87AB008A */  lh         $t3, 0x8a($sp)
/* BB120 800BA520 AFA0007C */  sw         $zero, 0x7c($sp)
/* BB124 800BA524 19600013 */  blez       $t3, .L800BA574
/* BB128 800BA528 00000000 */   nop
.L800BA52C:
/* BB12C 800BA52C 8FAC008C */  lw         $t4, 0x8c($sp)
/* BB130 800BA530 2401FFFC */  addiu      $at, $zero, -4
/* BB134 800BA534 8FB90020 */  lw         $t9, 0x20($sp)
/* BB138 800BA538 258D0003 */  addiu      $t5, $t4, 3
/* BB13C 800BA53C 01A17024 */  and        $t6, $t5, $at
/* BB140 800BA540 25CF0004 */  addiu      $t7, $t6, 4
/* BB144 800BA544 AFAF008C */  sw         $t7, 0x8c($sp)
/* BB148 800BA548 8DD80000 */  lw         $t8, ($t6)
/* BB14C 800BA54C AF380000 */  sw         $t8, ($t9)
/* BB150 800BA550 8FA80020 */  lw         $t0, 0x20($sp)
/* BB154 800BA554 25090004 */  addiu      $t1, $t0, 4
/* BB158 800BA558 AFA90020 */  sw         $t1, 0x20($sp)
/* BB15C 800BA55C 8FAA007C */  lw         $t2, 0x7c($sp)
/* BB160 800BA560 87AC008A */  lh         $t4, 0x8a($sp)
/* BB164 800BA564 254B0001 */  addiu      $t3, $t2, 1
/* BB168 800BA568 016C082A */  slt        $at, $t3, $t4
/* BB16C 800BA56C 1420FFEF */  bnez       $at, .L800BA52C
/* BB170 800BA570 AFAB007C */   sw        $t3, 0x7c($sp)
.L800BA574:
/* BB174 800BA574 3C0D800F */  lui        $t5, %hi(D_800EABE0)
/* BB178 800BA578 8DADABE0 */  lw         $t5, %lo(D_800EABE0)($t5)
/* BB17C 800BA57C 11A0002C */  beqz       $t5, .L800BA630
/* BB180 800BA580 00000000 */   nop
/* BB184 800BA584 8FAF0080 */  lw         $t7, 0x80($sp)
/* BB188 800BA588 8FB80018 */  lw         $t8, 0x18($sp)
/* BB18C 800BA58C 8DEE0010 */  lw         $t6, 0x10($t7)
/* BB190 800BA590 8DE80004 */  lw         $t0, 4($t7)
/* BB194 800BA594 01D8C821 */  addu       $t9, $t6, $t8
/* BB198 800BA598 00084882 */  srl        $t1, $t0, 2
/* BB19C 800BA59C 0329082B */  sltu       $at, $t9, $t1
/* BB1A0 800BA5A0 10200021 */  beqz       $at, .L800BA628
/* BB1A4 800BA5A4 00000000 */   nop
/* BB1A8 800BA5A8 8FAA0080 */  lw         $t2, 0x80($sp)
/* BB1AC 800BA5AC 8D4C0010 */  lw         $t4, 0x10($t2)
/* BB1B0 800BA5B0 8D4B0008 */  lw         $t3, 8($t2)
/* BB1B4 800BA5B4 000C6880 */  sll        $t5, $t4, 2
/* BB1B8 800BA5B8 016D7021 */  addu       $t6, $t3, $t5
/* BB1BC 800BA5BC AFAE001C */  sw         $t6, 0x1c($sp)
/* BB1C0 800BA5C0 8FB80018 */  lw         $t8, 0x18($sp)
/* BB1C4 800BA5C4 AFA0007C */  sw         $zero, 0x7c($sp)
/* BB1C8 800BA5C8 1B000011 */  blez       $t8, .L800BA610
/* BB1CC 800BA5CC 00000000 */   nop
.L800BA5D0:
/* BB1D0 800BA5D0 8FAF0028 */  lw         $t7, 0x28($sp)
/* BB1D4 800BA5D4 8FB9001C */  lw         $t9, 0x1c($sp)
/* BB1D8 800BA5D8 8DE80000 */  lw         $t0, ($t7)
/* BB1DC 800BA5DC AF280000 */  sw         $t0, ($t9)
/* BB1E0 800BA5E0 8FAC0028 */  lw         $t4, 0x28($sp)
/* BB1E4 800BA5E4 8FA9001C */  lw         $t1, 0x1c($sp)
/* BB1E8 800BA5E8 258B0004 */  addiu      $t3, $t4, 4
/* BB1EC 800BA5EC 252A0004 */  addiu      $t2, $t1, 4
/* BB1F0 800BA5F0 AFAA001C */  sw         $t2, 0x1c($sp)
/* BB1F4 800BA5F4 AFAB0028 */  sw         $t3, 0x28($sp)
/* BB1F8 800BA5F8 8FAD007C */  lw         $t5, 0x7c($sp)
/* BB1FC 800BA5FC 8FB80018 */  lw         $t8, 0x18($sp)
/* BB200 800BA600 25AE0001 */  addiu      $t6, $t5, 1
/* BB204 800BA604 01D8082A */  slt        $at, $t6, $t8
/* BB208 800BA608 1420FFF1 */  bnez       $at, .L800BA5D0
/* BB20C 800BA60C AFAE007C */   sw        $t6, 0x7c($sp)
.L800BA610:
/* BB210 800BA610 8FAF0080 */  lw         $t7, 0x80($sp)
/* BB214 800BA614 8FB90018 */  lw         $t9, 0x18($sp)
/* BB218 800BA618 8DE80010 */  lw         $t0, 0x10($t7)
/* BB21C 800BA61C 01194821 */  addu       $t1, $t0, $t9
/* BB220 800BA620 10000003 */  b          .L800BA630
/* BB224 800BA624 ADE90010 */   sw        $t1, 0x10($t7)
.L800BA628:
/* BB228 800BA628 3C01800F */  lui        $at, %hi(D_800EABE0)
/* BB22C 800BA62C AC20ABE0 */  sw         $zero, %lo(D_800EABE0)($at)
.L800BA630:
/* BB230 800BA630 0C0297AC */  jal        func_800A5EB0
/* BB234 800BA634 8FA40078 */   lw        $a0, 0x78($sp)
/* BB238 800BA638 10000001 */  b          .L800BA640
/* BB23C 800BA63C 00000000 */   nop
.L800BA640:
/* BB240 800BA640 8FBF0014 */  lw         $ra, 0x14($sp)
/* BB244 800BA644 27BD0080 */  addiu      $sp, $sp, 0x80
/* BB248 800BA648 03E00008 */  jr         $ra
/* BB24C 800BA64C 00000000 */   nop

glabel func_800BA650
/* BB250 800BA650 40026800 */  mfc0       $v0, $13
/* BB254 800BA654 03E00008 */  jr         $ra
/* BB258 800BA658 00000000 */   nop
/* BB25C 800BA65C 00000000 */  nop
