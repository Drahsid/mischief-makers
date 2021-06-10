glabel func_800B6DB8
/* B79B8 800B6DB8 27BDFF88 */  addiu      $sp, $sp, -0x78
/* B79BC 800B6DBC AFBF001C */  sw         $ra, 0x1c($sp)
/* B79C0 800B6DC0 AFA40078 */  sw         $a0, 0x78($sp)
/* B79C4 800B6DC4 AFB00018 */  sw         $s0, 0x18($sp)
/* B79C8 800B6DC8 8FAE0078 */  lw         $t6, 0x78($sp)
/* B79CC 800B6DCC AFAE0074 */  sw         $t6, 0x74($sp)
/* B79D0 800B6DD0 8FAF0078 */  lw         $t7, 0x78($sp)
/* B79D4 800B6DD4 91F00009 */  lbu        $s0, 9($t7)
/* B79D8 800B6DD8 12000006 */  beqz       $s0, .L800B6DF4
/* B79DC 800B6DDC 00000000 */   nop
/* B79E0 800B6DE0 24010001 */  addiu      $at, $zero, 1
/* B79E4 800B6DE4 12010008 */  beq        $s0, $at, .L800B6E08
/* B79E8 800B6DE8 00000000 */   nop
/* B79EC 800B6DEC 10000025 */  b          .L800B6E84
/* B79F0 800B6DF0 00000000 */   nop
.L800B6DF4:
/* B79F4 800B6DF4 8FB80074 */  lw         $t8, 0x74($sp)
/* B79F8 800B6DF8 0C02D9E7 */  jal        func_800B679C
/* B79FC 800B6DFC 8F04000C */   lw        $a0, 0xc($t8)
/* B7A00 800B6E00 10000022 */  b          .L800B6E8C
/* B7A04 800B6E04 00000000 */   nop
.L800B6E08:
/* B7A08 800B6E08 0C02E998 */  jal        func_800BA660
/* B7A0C 800B6E0C 00000000 */   nop
/* B7A10 800B6E10 1040001A */  beqz       $v0, .L800B6E7C
/* B7A14 800B6E14 00000000 */   nop
/* B7A18 800B6E18 0C02E9A1 */  jal        func_800BA684
/* B7A1C 800B6E1C 00000000 */   nop
/* B7A20 800B6E20 0C02A45C */  jal        func_800A9170
/* B7A24 800B6E24 3C040408 */   lui       $a0, 0x408
/* B7A28 800B6E28 AFA20024 */  sw         $v0, 0x24($sp)
/* B7A2C 800B6E2C 8FB90024 */  lw         $t9, 0x24($sp)
/* B7A30 800B6E30 17200003 */  bnez       $t9, .L800B6E40
/* B7A34 800B6E34 00000000 */   nop
/* B7A38 800B6E38 10000014 */  b          .L800B6E8C
/* B7A3C 800B6E3C 00000000 */   nop
.L800B6E40:
/* B7A40 800B6E40 8FA80024 */  lw         $t0, 0x24($sp)
/* B7A44 800B6E44 2509FFFC */  addiu      $t1, $t0, -4
/* B7A48 800B6E48 AFA90024 */  sw         $t1, 0x24($sp)
/* B7A4C 800B6E4C 8FA60024 */  lw         $a2, 0x24($sp)
/* B7A50 800B6E50 3C010400 */  lui        $at, 0x400
/* B7A54 800B6E54 34211000 */  ori        $at, $at, 0x1000
/* B7A58 800B6E58 24040001 */  addiu      $a0, $zero, 1
/* B7A5C 800B6E5C 240503E8 */  addiu      $a1, $zero, 0x3e8
/* B7A60 800B6E60 0C02A81F */  jal        func_800AA07C
/* B7A64 800B6E64 00C13021 */   addu      $a2, $a2, $at
/* B7A68 800B6E68 304A0003 */  andi       $t2, $v0, 3
/* B7A6C 800B6E6C 15400003 */  bnez       $t2, .L800B6E7C
/* B7A70 800B6E70 00000000 */   nop
/* B7A74 800B6E74 0C02E9B2 */  jal        func_800BA6C8
/* B7A78 800B6E78 00000000 */   nop
.L800B6E7C:
/* B7A7C 800B6E7C 10000003 */  b          .L800B6E8C
/* B7A80 800B6E80 00000000 */   nop
.L800B6E84:
/* B7A84 800B6E84 10000021 */  b          .L800B6F0C
/* B7A88 800B6E88 2402FFFC */   addiu     $v0, $zero, -4
.L800B6E8C:
/* B7A8C 800B6E8C 8FAB0078 */  lw         $t3, 0x78($sp)
/* B7A90 800B6E90 8FAC0074 */  lw         $t4, 0x74($sp)
/* B7A94 800B6E94 27A60028 */  addiu      $a2, $sp, 0x28
/* B7A98 800B6E98 91640009 */  lbu        $a0, 9($t3)
/* B7A9C 800B6E9C 0C02DA89 */  jal        func_800B6A24
/* B7AA0 800B6EA0 8D85000C */   lw        $a1, 0xc($t4)
/* B7AA4 800B6EA4 10400003 */  beqz       $v0, .L800B6EB4
/* B7AA8 800B6EA8 00000000 */   nop
/* B7AAC 800B6EAC 10000017 */  b          .L800B6F0C
/* B7AB0 800B6EB0 2402FFFE */   addiu     $v0, $zero, -2
.L800B6EB4:
/* B7AB4 800B6EB4 8FAD0074 */  lw         $t5, 0x74($sp)
/* B7AB8 800B6EB8 91AE0004 */  lbu        $t6, 4($t5)
/* B7ABC 800B6EBC A3AE002C */  sb         $t6, 0x2c($sp)
/* B7AC0 800B6EC0 A7A0002E */  sh         $zero, 0x2e($sp)
/* B7AC4 800B6EC4 27A40028 */  addiu      $a0, $sp, 0x28
/* B7AC8 800B6EC8 2405004C */  addiu      $a1, $zero, 0x4c
/* B7ACC 800B6ECC 0C026833 */  jal        func_8009A0CC
/* B7AD0 800B6ED0 24060001 */   addiu     $a2, $zero, 1
/* B7AD4 800B6ED4 8FAF0034 */  lw         $t7, 0x34($sp)
/* B7AD8 800B6ED8 24010001 */  addiu      $at, $zero, 1
/* B7ADC 800B6EDC 15E10007 */  bne        $t7, $at, .L800B6EFC
/* B7AE0 800B6EE0 00000000 */   nop
/* B7AE4 800B6EE4 24180004 */  addiu      $t8, $zero, 4
/* B7AE8 800B6EE8 A3B8002C */  sb         $t8, 0x2c($sp)
/* B7AEC 800B6EEC 27A40028 */  addiu      $a0, $sp, 0x28
/* B7AF0 800B6EF0 2405004C */  addiu      $a1, $zero, 0x4c
/* B7AF4 800B6EF4 0C026833 */  jal        func_8009A0CC
/* B7AF8 800B6EF8 24060002 */   addiu     $a2, $zero, 2
.L800B6EFC:
/* B7AFC 800B6EFC 10000003 */  b          .L800B6F0C
/* B7B00 800B6F00 00001025 */   or        $v0, $zero, $zero
/* B7B04 800B6F04 10000001 */  b          .L800B6F0C
/* B7B08 800B6F08 00000000 */   nop
.L800B6F0C:
/* B7B0C 800B6F0C 8FBF001C */  lw         $ra, 0x1c($sp)
/* B7B10 800B6F10 8FB00018 */  lw         $s0, 0x18($sp)
/* B7B14 800B6F14 27BD0078 */  addiu      $sp, $sp, 0x78
/* B7B18 800B6F18 03E00008 */  jr         $ra
/* B7B1C 800B6F1C 00000000 */   nop
