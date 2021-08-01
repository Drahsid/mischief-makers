.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __rmonSendHeader
/* 9AC20 8009A020 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9AC24 8009A024 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9AC28 8009A028 AFA40030 */  sw         $a0, 0x30($sp)
/* 9AC2C 8009A02C AFA50034 */  sw         $a1, 0x34($sp)
/* 9AC30 8009A030 AFA60038 */  sw         $a2, 0x38($sp)
/* 9AC34 8009A034 AFB00018 */  sw         $s0, 0x18($sp)
/* 9AC38 8009A038 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9AC3C 8009A03C AFAE0028 */  sw         $t6, 0x28($sp)
/* 9AC40 8009A040 8FB80030 */  lw         $t8, 0x30($sp)
/* 9AC44 8009A044 240F0002 */  addiu      $t7, $zero, 2
/* 9AC48 8009A048 A30F0008 */  sb         $t7, 8($t8)
/* 9AC4C 8009A04C 8FB90038 */  lw         $t9, 0x38($sp)
/* 9AC50 8009A050 8FA80030 */  lw         $t0, 0x30($sp)
/* 9AC54 8009A054 A1190005 */  sb         $t9, 5($t0)
/* 9AC58 8009A058 AFA0002C */  sw         $zero, 0x2c($sp)
/* 9AC5C 8009A05C 8FA9002C */  lw         $t1, 0x2c($sp)
/* 9AC60 8009A060 8FAA0034 */  lw         $t2, 0x34($sp)
/* 9AC64 8009A064 012A082B */  sltu       $at, $t1, $t2
/* 9AC68 8009A068 10200011 */  beqz       $at, .L8009A0B0
/* 9AC6C 8009A06C 00000000 */   nop
.L8009A070:
/* 9AC70 8009A070 8FAC002C */  lw         $t4, 0x2c($sp)
/* 9AC74 8009A074 8FAB0028 */  lw         $t3, 0x28($sp)
/* 9AC78 8009A078 8FAD0034 */  lw         $t5, 0x34($sp)
/* 9AC7C 8009A07C 24060008 */  addiu      $a2, $zero, 8
/* 9AC80 8009A080 016C2021 */  addu       $a0, $t3, $t4
/* 9AC84 8009A084 0C02A254 */  jal        __osRdbSend
/* 9AC88 8009A088 01AC2823 */   subu      $a1, $t5, $t4
/* 9AC8C 8009A08C 8FAE002C */  lw         $t6, 0x2c($sp)
/* 9AC90 8009A090 00408025 */  or         $s0, $v0, $zero
/* 9AC94 8009A094 01D07821 */  addu       $t7, $t6, $s0
/* 9AC98 8009A098 AFAF002C */  sw         $t7, 0x2c($sp)
/* 9AC9C 8009A09C 8FB8002C */  lw         $t8, 0x2c($sp)
/* 9ACA0 8009A0A0 8FB90034 */  lw         $t9, 0x34($sp)
/* 9ACA4 8009A0A4 0319082B */  sltu       $at, $t8, $t9
/* 9ACA8 8009A0A8 1420FFF1 */  bnez       $at, .L8009A070
/* 9ACAC 8009A0AC 00000000 */   nop
.L8009A0B0:
/* 9ACB0 8009A0B0 10000001 */  b          .L8009A0B8
/* 9ACB4 8009A0B4 00000000 */   nop
.L8009A0B8:
/* 9ACB8 8009A0B8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9ACBC 8009A0BC 8FB00018 */  lw         $s0, 0x18($sp)
/* 9ACC0 8009A0C0 27BD0030 */  addiu      $sp, $sp, 0x30
/* 9ACC4 8009A0C4 03E00008 */  jr         $ra
/* 9ACC8 8009A0C8 00000000 */   nop

glabel __rmonSendReply
/* 9ACCC 8009A0CC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9ACD0 8009A0D0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9ACD4 8009A0D4 AFA40030 */  sw         $a0, 0x30($sp)
/* 9ACD8 8009A0D8 AFA50034 */  sw         $a1, 0x34($sp)
/* 9ACDC 8009A0DC AFA60038 */  sw         $a2, 0x38($sp)
/* 9ACE0 8009A0E0 AFB00018 */  sw         $s0, 0x18($sp)
/* 9ACE4 8009A0E4 AFA00028 */  sw         $zero, 0x28($sp)
/* 9ACE8 8009A0E8 8FAE0034 */  lw         $t6, 0x34($sp)
/* 9ACEC 8009A0EC 8FAF0030 */  lw         $t7, 0x30($sp)
/* 9ACF0 8009A0F0 ADEE0000 */  sw         $t6, ($t7)
/* 9ACF4 8009A0F4 27B80034 */  addiu      $t8, $sp, 0x34
/* 9ACF8 8009A0F8 AFB8002C */  sw         $t8, 0x2c($sp)
/* 9ACFC 8009A0FC 8FB90028 */  lw         $t9, 0x28($sp)
/* 9AD00 8009A100 2B210004 */  slti       $at, $t9, 4
/* 9AD04 8009A104 10200010 */  beqz       $at, .L8009A148
/* 9AD08 8009A108 00000000 */   nop
.L8009A10C:
/* 9AD0C 8009A10C 8FA90028 */  lw         $t1, 0x28($sp)
/* 9AD10 8009A110 8FA8002C */  lw         $t0, 0x2c($sp)
/* 9AD14 8009A114 240A0004 */  addiu      $t2, $zero, 4
/* 9AD18 8009A118 24060008 */  addiu      $a2, $zero, 8
/* 9AD1C 8009A11C 01492823 */  subu       $a1, $t2, $t1
/* 9AD20 8009A120 0C02A254 */  jal        __osRdbSend
/* 9AD24 8009A124 01092021 */   addu      $a0, $t0, $t1
/* 9AD28 8009A128 8FAB0028 */  lw         $t3, 0x28($sp)
/* 9AD2C 8009A12C 00408025 */  or         $s0, $v0, $zero
/* 9AD30 8009A130 01706021 */  addu       $t4, $t3, $s0
/* 9AD34 8009A134 AFAC0028 */  sw         $t4, 0x28($sp)
/* 9AD38 8009A138 8FAD0028 */  lw         $t5, 0x28($sp)
/* 9AD3C 8009A13C 29A10004 */  slti       $at, $t5, 4
/* 9AD40 8009A140 1420FFF2 */  bnez       $at, .L8009A10C
/* 9AD44 8009A144 00000000 */   nop
.L8009A148:
/* 9AD48 8009A148 8FA40030 */  lw         $a0, 0x30($sp)
/* 9AD4C 8009A14C 8FA50034 */  lw         $a1, 0x34($sp)
/* 9AD50 8009A150 0C026808 */  jal        __rmonSendHeader
/* 9AD54 8009A154 8FA60038 */   lw        $a2, 0x38($sp)
/* 9AD58 8009A158 0C02A3A8 */  jal        __rmonIOflush
/* 9AD5C 8009A15C 00000000 */   nop
/* 9AD60 8009A160 10000001 */  b          .L8009A168
/* 9AD64 8009A164 00000000 */   nop
.L8009A168:
/* 9AD68 8009A168 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9AD6C 8009A16C 8FB00018 */  lw         $s0, 0x18($sp)
/* 9AD70 8009A170 27BD0030 */  addiu      $sp, $sp, 0x30
/* 9AD74 8009A174 03E00008 */  jr         $ra
/* 9AD78 8009A178 00000000 */   nop

glabel __rmonSendData
/* 9AD7C 8009A17C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 9AD80 8009A180 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9AD84 8009A184 AFA40038 */  sw         $a0, 0x38($sp)
/* 9AD88 8009A188 AFA5003C */  sw         $a1, 0x3c($sp)
/* 9AD8C 8009A18C AFB00018 */  sw         $s0, 0x18($sp)
/* 9AD90 8009A190 8FAE0038 */  lw         $t6, 0x38($sp)
/* 9AD94 8009A194 AFAE0034 */  sw         $t6, 0x34($sp)
/* 9AD98 8009A198 8FAF003C */  lw         $t7, 0x3c($sp)
/* 9AD9C 8009A19C 25F80003 */  addiu      $t8, $t7, 3
/* 9ADA0 8009A1A0 0018C882 */  srl        $t9, $t8, 2
/* 9ADA4 8009A1A4 AFB90030 */  sw         $t9, 0x30($sp)
/* 9ADA8 8009A1A8 8FA80038 */  lw         $t0, 0x38($sp)
/* 9ADAC 8009A1AC 31090003 */  andi       $t1, $t0, 3
/* 9ADB0 8009A1B0 15200025 */  bnez       $t1, .L8009A248
/* 9ADB4 8009A1B4 00000000 */   nop
/* 9ADB8 8009A1B8 8FAA0030 */  lw         $t2, 0x30($sp)
/* 9ADBC 8009A1BC 01408025 */  or         $s0, $t2, $zero
/* 9ADC0 8009A1C0 254BFFFF */  addiu      $t3, $t2, -1
/* 9ADC4 8009A1C4 1200001E */  beqz       $s0, .L8009A240
/* 9ADC8 8009A1C8 AFAB0030 */   sw        $t3, 0x30($sp)
.L8009A1CC:
/* 9ADCC 8009A1CC 8FAC0034 */  lw         $t4, 0x34($sp)
/* 9ADD0 8009A1D0 3C010400 */  lui        $at, 0x400
/* 9ADD4 8009A1D4 0181082B */  sltu       $at, $t4, $at
/* 9ADD8 8009A1D8 1420000F */  bnez       $at, .L8009A218
/* 9ADDC 8009A1DC 00000000 */   nop
/* 9ADE0 8009A1E0 3C010500 */  lui        $at, 0x500
/* 9ADE4 8009A1E4 0181082B */  sltu       $at, $t4, $at
/* 9ADE8 8009A1E8 1020000B */  beqz       $at, .L8009A218
/* 9ADEC 8009A1EC 00000000 */   nop
/* 9ADF0 8009A1F0 8FAD0034 */  lw         $t5, 0x34($sp)
/* 9ADF4 8009A1F4 27A5002C */  addiu      $a1, $sp, 0x2c
/* 9ADF8 8009A1F8 25AE0004 */  addiu      $t6, $t5, 4
/* 9ADFC 8009A1FC AFAE0034 */  sw         $t6, 0x34($sp)
/* 9AE00 8009A200 0C02A418 */  jal        func_800A9060
/* 9AE04 8009A204 01A02025 */   or        $a0, $t5, $zero
/* 9AE08 8009A208 0C02A3C1 */  jal        __rmonIOputw
/* 9AE0C 8009A20C 8FA4002C */   lw        $a0, 0x2c($sp)
/* 9AE10 8009A210 10000006 */  b          .L8009A22C
/* 9AE14 8009A214 00000000 */   nop
.L8009A218:
/* 9AE18 8009A218 8FAF0034 */  lw         $t7, 0x34($sp)
/* 9AE1C 8009A21C 8DE40000 */  lw         $a0, ($t7)
/* 9AE20 8009A220 25F80004 */  addiu      $t8, $t7, 4
/* 9AE24 8009A224 0C02A3C1 */  jal        __rmonIOputw
/* 9AE28 8009A228 AFB80034 */   sw        $t8, 0x34($sp)
.L8009A22C:
/* 9AE2C 8009A22C 8FB90030 */  lw         $t9, 0x30($sp)
/* 9AE30 8009A230 03208025 */  or         $s0, $t9, $zero
/* 9AE34 8009A234 2728FFFF */  addiu      $t0, $t9, -1
/* 9AE38 8009A238 1600FFE4 */  bnez       $s0, .L8009A1CC
/* 9AE3C 8009A23C AFA80030 */   sw        $t0, 0x30($sp)
.L8009A240:
/* 9AE40 8009A240 10000014 */  b          .L8009A294
/* 9AE44 8009A244 00000000 */   nop
.L8009A248:
/* 9AE48 8009A248 8FA90030 */  lw         $t1, 0x30($sp)
/* 9AE4C 8009A24C 01208025 */  or         $s0, $t1, $zero
/* 9AE50 8009A250 252AFFFF */  addiu      $t2, $t1, -1
/* 9AE54 8009A254 1200000F */  beqz       $s0, .L8009A294
/* 9AE58 8009A258 AFAA0030 */   sw        $t2, 0x30($sp)
.L8009A25C:
/* 9AE5C 8009A25C 27A40028 */  addiu      $a0, $sp, 0x28
/* 9AE60 8009A260 8FA50034 */  lw         $a1, 0x34($sp)
/* 9AE64 8009A264 0C02A475 */  jal        __rmonMemcpy
/* 9AE68 8009A268 24060004 */   addiu     $a2, $zero, 4
/* 9AE6C 8009A26C 0C02A3C1 */  jal        __rmonIOputw
/* 9AE70 8009A270 8FA40028 */   lw        $a0, 0x28($sp)
/* 9AE74 8009A274 8FAB0034 */  lw         $t3, 0x34($sp)
/* 9AE78 8009A278 256C0004 */  addiu      $t4, $t3, 4
/* 9AE7C 8009A27C AFAC0034 */  sw         $t4, 0x34($sp)
/* 9AE80 8009A280 8FAD0030 */  lw         $t5, 0x30($sp)
/* 9AE84 8009A284 01A08025 */  or         $s0, $t5, $zero
/* 9AE88 8009A288 25AEFFFF */  addiu      $t6, $t5, -1
/* 9AE8C 8009A28C 1600FFF3 */  bnez       $s0, .L8009A25C
/* 9AE90 8009A290 AFAE0030 */   sw        $t6, 0x30($sp)
.L8009A294:
/* 9AE94 8009A294 0C02A3A8 */  jal        __rmonIOflush
/* 9AE98 8009A298 00000000 */   nop
/* 9AE9C 8009A29C 10000001 */  b          .L8009A2A4
/* 9AEA0 8009A2A0 00000000 */   nop
.L8009A2A4:
/* 9AEA4 8009A2A4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9AEA8 8009A2A8 8FB00018 */  lw         $s0, 0x18($sp)
/* 9AEAC 8009A2AC 27BD0038 */  addiu      $sp, $sp, 0x38
/* 9AEB0 8009A2B0 03E00008 */  jr         $ra
/* 9AEB4 8009A2B4 00000000 */   nop

glabel rmonMain
/* 9AEB8 8009A2B8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9AEBC 8009A2BC AFBF001C */  sw         $ra, 0x1c($sp)
/* 9AEC0 8009A2C0 AFB00018 */  sw         $s0, 0x18($sp)
/* 9AEC4 8009A2C4 3C018018 */  lui        $at, %hi(rmonmain_bss_0000)
/* 9AEC8 8009A2C8 AC2050B0 */  sw         $zero, %lo(rmonmain_bss_0000)($at)
/* 9AECC 8009A2CC 3C018018 */  lui        $at, %hi(rmonmain_bss_0469)
/* 9AED0 8009A2D0 A0205519 */  sb         $zero, %lo(rmonmain_bss_0469)($at)
/* 9AED4 8009A2D4 3C018018 */  lui        $at, %hi(rmonmain_bss_0468)
/* 9AED8 8009A2D8 A0205518 */  sb         $zero, %lo(rmonmain_bss_0468)($at)
/* 9AEDC 8009A2DC 0C02A330 */  jal        __rmonInit
/* 9AEE0 8009A2E0 00000000 */   nop
/* 9AEE4 8009A2E4 240E0001 */  addiu      $t6, $zero, 1
/* 9AEE8 8009A2E8 3C01800F */  lui        $at, %hi(__rmonActive)
/* 9AEEC 8009A2EC AC2EA500 */  sw         $t6, %lo(__rmonActive)($at)
/* 9AEF0 8009A2F0 3C018018 */  lui        $at, %hi(rmonmain_bss_046C)
/* 9AEF4 8009A2F4 AC20551C */  sw         $zero, %lo(rmonmain_bss_046C)($at)
/* 9AEF8 8009A2F8 3C0F8018 */  lui        $t7, %hi(rmonmain_bss_0008)
/* 9AEFC 8009A2FC 25EF50B8 */  addiu      $t7, $t7, %lo(rmonmain_bss_0008)
/* 9AF00 8009A300 3C018018 */  lui        $at, %hi(rmonmain_bss_0470)
/* 9AF04 8009A304 AC2F5520 */  sw         $t7, %lo(rmonmain_bss_0470)($at)
/* 9AF08 8009A308 00008025 */  or         $s0, $zero, $zero
.L8009A30C:
/* 9AF0C 8009A30C 3C048019 */  lui        $a0, %hi(__rmonMQ)
/* 9AF10 8009A310 24849A58 */  addiu      $a0, $a0, %lo(__rmonMQ)
/* 9AF14 8009A314 27A50020 */  addiu      $a1, $sp, 0x20
/* 9AF18 8009A318 0C026B44 */  jal        osRecvMesg
/* 9AF1C 8009A31C 24060001 */   addiu     $a2, $zero, 1
/* 9AF20 8009A320 3C188018 */  lui        $t8, %hi(rmonmain_bss_0000)
/* 9AF24 8009A324 8F1850B0 */  lw         $t8, %lo(rmonmain_bss_0000)($t8)
/* 9AF28 8009A328 8FB90020 */  lw         $t9, 0x20($sp)
/* 9AF2C 8009A32C 3C018018 */  lui        $at, %hi(rmonmain_bss_0000)
/* 9AF30 8009A330 03194025 */  or         $t0, $t8, $t9
/* 9AF34 8009A334 AC2850B0 */  sw         $t0, %lo(rmonmain_bss_0000)($at)
/* 9AF38 8009A338 3C098018 */  lui        $t1, %hi(rmonmain_bss_0000)
/* 9AF3C 8009A33C 8D2950B0 */  lw         $t1, %lo(rmonmain_bss_0000)($t1)
/* 9AF40 8009A340 312A0002 */  andi       $t2, $t1, 2
/* 9AF44 8009A344 11400009 */  beqz       $t2, .L8009A36C
/* 9AF48 8009A348 00000000 */   nop
/* 9AF4C 8009A34C 3C0B8018 */  lui        $t3, %hi(rmonmain_bss_0000)
/* 9AF50 8009A350 8D6B50B0 */  lw         $t3, %lo(rmonmain_bss_0000)($t3)
/* 9AF54 8009A354 2401FFFD */  addiu      $at, $zero, -3
/* 9AF58 8009A358 01616024 */  and        $t4, $t3, $at
/* 9AF5C 8009A35C 3C018018 */  lui        $at, %hi(rmonmain_bss_0000)
/* 9AF60 8009A360 AC2C50B0 */  sw         $t4, %lo(rmonmain_bss_0000)($at)
/* 9AF64 8009A364 0C02A968 */  jal        __rmonHitBreak
/* 9AF68 8009A368 00000000 */   nop
.L8009A36C:
/* 9AF6C 8009A36C 3C0D8018 */  lui        $t5, %hi(rmonmain_bss_0000)
/* 9AF70 8009A370 8DAD50B0 */  lw         $t5, %lo(rmonmain_bss_0000)($t5)
/* 9AF74 8009A374 31AE0004 */  andi       $t6, $t5, 4
/* 9AF78 8009A378 11C00009 */  beqz       $t6, .L8009A3A0
/* 9AF7C 8009A37C 00000000 */   nop
/* 9AF80 8009A380 3C0F8018 */  lui        $t7, %hi(rmonmain_bss_0000)
/* 9AF84 8009A384 8DEF50B0 */  lw         $t7, %lo(rmonmain_bss_0000)($t7)
/* 9AF88 8009A388 2401FFFB */  addiu      $at, $zero, -5
/* 9AF8C 8009A38C 01E1C024 */  and        $t8, $t7, $at
/* 9AF90 8009A390 3C018018 */  lui        $at, %hi(rmonmain_bss_0000)
/* 9AF94 8009A394 AC3850B0 */  sw         $t8, %lo(rmonmain_bss_0000)($at)
/* 9AF98 8009A398 0C02A976 */  jal        __rmonHitSpBreak
/* 9AF9C 8009A39C 00000000 */   nop
.L8009A3A0:
/* 9AFA0 8009A3A0 3C198018 */  lui        $t9, %hi(rmonmain_bss_0000)
/* 9AFA4 8009A3A4 8F3950B0 */  lw         $t9, %lo(rmonmain_bss_0000)($t9)
/* 9AFA8 8009A3A8 33280008 */  andi       $t0, $t9, 8
/* 9AFAC 8009A3AC 11000009 */  beqz       $t0, .L8009A3D4
/* 9AFB0 8009A3B0 00000000 */   nop
/* 9AFB4 8009A3B4 3C098018 */  lui        $t1, %hi(rmonmain_bss_0000)
/* 9AFB8 8009A3B8 8D2950B0 */  lw         $t1, %lo(rmonmain_bss_0000)($t1)
/* 9AFBC 8009A3BC 2401FFF7 */  addiu      $at, $zero, -9
/* 9AFC0 8009A3C0 01215024 */  and        $t2, $t1, $at
/* 9AFC4 8009A3C4 3C018018 */  lui        $at, %hi(rmonmain_bss_0000)
/* 9AFC8 8009A3C8 AC2A50B0 */  sw         $t2, %lo(rmonmain_bss_0000)($at)
/* 9AFCC 8009A3CC 0C02A993 */  jal        __rmonHitCpuFault
/* 9AFD0 8009A3D0 00000000 */   nop
.L8009A3D4:
/* 9AFD4 8009A3D4 3C0B8018 */  lui        $t3, %hi(rmonmain_bss_0000)
/* 9AFD8 8009A3D8 8D6B50B0 */  lw         $t3, %lo(rmonmain_bss_0000)($t3)
/* 9AFDC 8009A3DC 316C0010 */  andi       $t4, $t3, 0x10
/* 9AFE0 8009A3E0 11800008 */  beqz       $t4, .L8009A404
/* 9AFE4 8009A3E4 00000000 */   nop
/* 9AFE8 8009A3E8 3C018018 */  lui        $at, %hi(rmonmain_bss_0000)
/* 9AFEC 8009A3EC 8C2050B0 */  lw         $zero, %lo(rmonmain_bss_0000)($at)
/* 9AFF0 8009A3F0 3C0D8018 */  lui        $t5, %hi(rmonmain_bss_0000)
/* 9AFF4 8009A3F4 8DAD50B0 */  lw         $t5, %lo(rmonmain_bss_0000)($t5)
/* 9AFF8 8009A3F8 3C018018 */  lui        $at, %hi(rmonmain_bss_0000)
/* 9AFFC 8009A3FC 31AE00EF */  andi       $t6, $t5, 0xef
/* 9B000 8009A400 AC2E50B0 */  sw         $t6, %lo(rmonmain_bss_0000)($at)
.L8009A404:
/* 9B004 8009A404 3C0F8018 */  lui        $t7, %hi(rmonmain_bss_0000)
/* 9B008 8009A408 8DEF50B0 */  lw         $t7, %lo(rmonmain_bss_0000)($t7)
/* 9B00C 8009A40C 31F80020 */  andi       $t8, $t7, 0x20
/* 9B010 8009A410 13000008 */  beqz       $t8, .L8009A434
/* 9B014 8009A414 00000000 */   nop
/* 9B018 8009A418 3C018018 */  lui        $at, %hi(rmonmain_bss_0000)
/* 9B01C 8009A41C 8C2050B0 */  lw         $zero, %lo(rmonmain_bss_0000)($at)
/* 9B020 8009A420 3C198018 */  lui        $t9, %hi(rmonmain_bss_0000)
/* 9B024 8009A424 8F3950B0 */  lw         $t9, %lo(rmonmain_bss_0000)($t9)
/* 9B028 8009A428 3C018018 */  lui        $at, %hi(rmonmain_bss_0000)
/* 9B02C 8009A42C 332800DF */  andi       $t0, $t9, 0xdf
/* 9B030 8009A430 AC2850B0 */  sw         $t0, %lo(rmonmain_bss_0000)($at)
.L8009A434:
/* 9B034 8009A434 1000FFB5 */  b          .L8009A30C
/* 9B038 8009A438 00000000 */   nop
/* 9B03C 8009A43C 10000001 */  b          .L8009A444
/* 9B040 8009A440 00000000 */   nop
.L8009A444:
/* 9B044 8009A444 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9B048 8009A448 8FB00018 */  lw         $s0, 0x18($sp)
/* 9B04C 8009A44C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9B050 8009A450 03E00008 */  jr         $ra
/* 9B054 8009A454 00000000 */   nop
/* 9B058 8009A458 00000000 */  nop
/* 9B05C 8009A45C 00000000 */  nop
