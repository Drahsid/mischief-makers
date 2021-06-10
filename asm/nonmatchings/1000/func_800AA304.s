glabel func_800AA304
/* AAF04 800AA304 27BDFFF8 */  addiu      $sp, $sp, -8
/* AAF08 800AA308 00042E82 */  srl        $a1, $a0, 0x1a
/* AAF0C 800AA30C 30AE003F */  andi       $t6, $a1, 0x3f
/* AAF10 800AA310 01C02825 */  or         $a1, $t6, $zero
/* AAF14 800AA314 10A00009 */  beqz       $a1, .L800AA33C
/* AAF18 800AA318 00000000 */   nop
/* AAF1C 800AA31C 24010002 */  addiu      $at, $zero, 2
/* AAF20 800AA320 10A1001C */  beq        $a1, $at, .L800AA394
/* AAF24 800AA324 00000000 */   nop
/* AAF28 800AA328 24010003 */  addiu      $at, $zero, 3
/* AAF2C 800AA32C 10A10019 */  beq        $a1, $at, .L800AA394
/* AAF30 800AA330 00000000 */   nop
/* AAF34 800AA334 10000019 */  b          .L800AA39C
/* AAF38 800AA338 00000000 */   nop
.L800AA33C:
/* AAF3C 800AA33C 00047942 */  srl        $t7, $a0, 5
/* AAF40 800AA340 31F87FFF */  andi       $t8, $t7, 0x7fff
/* AAF44 800AA344 17000007 */  bnez       $t8, .L800AA364
/* AAF48 800AA348 00000000 */   nop
/* AAF4C 800AA34C 3099003F */  andi       $t9, $a0, 0x3f
/* AAF50 800AA350 24010008 */  addiu      $at, $zero, 8
/* AAF54 800AA354 17210003 */  bne        $t9, $at, .L800AA364
/* AAF58 800AA358 00000000 */   nop
/* AAF5C 800AA35C 10000013 */  b          .L800AA3AC
/* AAF60 800AA360 24020001 */   addiu     $v0, $zero, 1
.L800AA364:
/* AAF64 800AA364 00044402 */  srl        $t0, $a0, 0x10
/* AAF68 800AA368 3109001F */  andi       $t1, $t0, 0x1f
/* AAF6C 800AA36C 15200007 */  bnez       $t1, .L800AA38C
/* AAF70 800AA370 00000000 */   nop
/* AAF74 800AA374 308A07FF */  andi       $t2, $a0, 0x7ff
/* AAF78 800AA378 24010009 */  addiu      $at, $zero, 9
/* AAF7C 800AA37C 15410003 */  bne        $t2, $at, .L800AA38C
/* AAF80 800AA380 00000000 */   nop
/* AAF84 800AA384 10000009 */  b          .L800AA3AC
/* AAF88 800AA388 24020001 */   addiu     $v0, $zero, 1
.L800AA38C:
/* AAF8C 800AA38C 10000003 */  b          .L800AA39C
/* AAF90 800AA390 00000000 */   nop
.L800AA394:
/* AAF94 800AA394 10000005 */  b          .L800AA3AC
/* AAF98 800AA398 24020001 */   addiu     $v0, $zero, 1
.L800AA39C:
/* AAF9C 800AA39C 10000003 */  b          .L800AA3AC
/* AAFA0 800AA3A0 00001025 */   or        $v0, $zero, $zero
/* AAFA4 800AA3A4 10000001 */  b          .L800AA3AC
/* AAFA8 800AA3A8 00000000 */   nop
.L800AA3AC:
/* AAFAC 800AA3AC 03E00008 */  jr         $ra
/* AAFB0 800AA3B0 27BD0008 */   addiu     $sp, $sp, 8
