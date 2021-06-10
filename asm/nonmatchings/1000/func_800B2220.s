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
/* B2ED8 800B22D8 0C02AA48 */  jal        func_800AA920
/* B2EDC 800B22DC 24040001 */   addiu     $a0, $zero, 1
/* B2EE0 800B22E0 AFA20034 */  sw         $v0, 0x34($sp)
/* B2EE4 800B22E4 8FA40038 */  lw         $a0, 0x38($sp)
/* B2EE8 800B22E8 00002825 */  or         $a1, $zero, $zero
/* B2EEC 800B22EC 0C026B44 */  jal        func_8009AD10
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
/* B2F34 800B2334 0C02AA48 */  jal        func_800AA920
/* B2F38 800B2338 00002025 */   or        $a0, $zero, $zero
/* B2F3C 800B233C AFA20034 */  sw         $v0, 0x34($sp)
/* B2F40 800B2340 24190005 */  addiu      $t9, $zero, 5
/* B2F44 800B2344 3C018018 */  lui        $at, %hi(D_80185670)
/* B2F48 800B2348 A0395670 */  sb         $t9, %lo(D_80185670)($at)
/* B2F4C 800B234C 8FA40038 */  lw         $a0, 0x38($sp)
/* B2F50 800B2350 00002825 */  or         $a1, $zero, $zero
/* B2F54 800B2354 0C026B44 */  jal        func_8009AD10
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
