glabel func_80053210
/* 53E10 80053210 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 53E14 80053214 AFB00018 */  sw         $s0, 0x18($sp)
/* 53E18 80053218 3090FFFF */  andi       $s0, $a0, 0xffff
/* 53E1C 8005321C AFBF001C */  sw         $ra, 0x1c($sp)
/* 53E20 80053220 AFA40020 */  sw         $a0, 0x20($sp)
/* 53E24 80053224 AFA50024 */  sw         $a1, 0x24($sp)
/* 53E28 80053228 0C013CAC */  jal        func_8004F2B0
/* 53E2C 8005322C 3204FFFF */   andi      $a0, $s0, 0xffff
/* 53E30 80053230 97A50026 */  lhu        $a1, 0x26($sp)
/* 53E34 80053234 24010001 */  addiu      $at, $zero, 1
/* 53E38 80053238 14410013 */  bne        $v0, $at, .L80053288
/* 53E3C 8005323C 24010002 */   addiu     $at, $zero, 2
/* 53E40 80053240 0C013D45 */  jal        func_8004F514
/* 53E44 80053244 3204FFFF */   andi      $a0, $s0, 0xffff
/* 53E48 80053248 00107080 */  sll        $t6, $s0, 2
/* 53E4C 8005324C 01D07023 */  subu       $t6, $t6, $s0
/* 53E50 80053250 000E7080 */  sll        $t6, $t6, 2
/* 53E54 80053254 01D07021 */  addu       $t6, $t6, $s0
/* 53E58 80053258 000E7080 */  sll        $t6, $t6, 2
/* 53E5C 8005325C 01D07023 */  subu       $t6, $t6, $s0
/* 53E60 80053260 3C0F800F */  lui        $t7, %hi(gActors)
/* 53E64 80053264 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 53E68 80053268 000E70C0 */  sll        $t6, $t6, 3
/* 53E6C 8005326C 01CF1821 */  addu       $v1, $t6, $t7
/* 53E70 80053270 24180016 */  addiu      $t8, $zero, 0x16
/* 53E74 80053274 A060012F */  sb         $zero, 0x12f($v1)
/* 53E78 80053278 A47800D0 */  sh         $t8, 0xd0($v1)
/* 53E7C 8005327C 10000032 */  b          .L80053348
/* 53E80 80053280 24020003 */   addiu     $v0, $zero, 3
/* 53E84 80053284 24010002 */  addiu      $at, $zero, 2
.L80053288:
/* 53E88 80053288 14410017 */  bne        $v0, $at, .L800532E8
/* 53E8C 8005328C 0010C880 */   sll       $t9, $s0, 2
/* 53E90 80053290 0330C823 */  subu       $t9, $t9, $s0
/* 53E94 80053294 0019C880 */  sll        $t9, $t9, 2
/* 53E98 80053298 0330C821 */  addu       $t9, $t9, $s0
/* 53E9C 8005329C 0019C880 */  sll        $t9, $t9, 2
/* 53EA0 800532A0 0330C823 */  subu       $t9, $t9, $s0
/* 53EA4 800532A4 3C08800F */  lui        $t0, %hi(gActors)
/* 53EA8 800532A8 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 53EAC 800532AC 0019C8C0 */  sll        $t9, $t9, 3
/* 53EB0 800532B0 03281821 */  addu       $v1, $t9, $t0
/* 53EB4 800532B4 3401FFFF */  ori        $at, $zero, 0xffff
/* 53EB8 800532B8 A060012F */  sb         $zero, 0x12f($v1)
/* 53EBC 800532BC AC6000F0 */  sw         $zero, 0xf0($v1)
/* 53EC0 800532C0 14A10005 */  bne        $a1, $at, .L800532D8
/* 53EC4 800532C4 AC6000EC */   sw        $zero, 0xec($v1)
/* 53EC8 800532C8 24090025 */  addiu      $t1, $zero, 0x25
/* 53ECC 800532CC A46900D0 */  sh         $t1, 0xd0($v1)
/* 53ED0 800532D0 1000001D */  b          .L80053348
/* 53ED4 800532D4 24020002 */   addiu     $v0, $zero, 2
.L800532D8:
/* 53ED8 800532D8 240A0026 */  addiu      $t2, $zero, 0x26
/* 53EDC 800532DC A46A00D0 */  sh         $t2, 0xd0($v1)
/* 53EE0 800532E0 10000019 */  b          .L80053348
/* 53EE4 800532E4 24020002 */   addiu     $v0, $zero, 2
.L800532E8:
/* 53EE8 800532E8 0C0123DC */  jal        func_80048F70
/* 53EEC 800532EC 3204FFFF */   andi      $a0, $s0, 0xffff
/* 53EF0 800532F0 97A50026 */  lhu        $a1, 0x26($sp)
/* 53EF4 800532F4 10400014 */  beqz       $v0, .L80053348
/* 53EF8 800532F8 00001025 */   or        $v0, $zero, $zero
/* 53EFC 800532FC 0C013D45 */  jal        func_8004F514
/* 53F00 80053300 3204FFFF */   andi      $a0, $s0, 0xffff
/* 53F04 80053304 00105880 */  sll        $t3, $s0, 2
/* 53F08 80053308 01705823 */  subu       $t3, $t3, $s0
/* 53F0C 8005330C 000B5880 */  sll        $t3, $t3, 2
/* 53F10 80053310 01705821 */  addu       $t3, $t3, $s0
/* 53F14 80053314 000B5880 */  sll        $t3, $t3, 2
/* 53F18 80053318 01705823 */  subu       $t3, $t3, $s0
/* 53F1C 8005331C 3C0C800F */  lui        $t4, %hi(gActors)
/* 53F20 80053320 258CF510 */  addiu      $t4, $t4, %lo(gActors)
/* 53F24 80053324 000B58C0 */  sll        $t3, $t3, 3
/* 53F28 80053328 016C1821 */  addu       $v1, $t3, $t4
/* 53F2C 8005332C 240D0014 */  addiu      $t5, $zero, 0x14
/* 53F30 80053330 A46D00D0 */  sh         $t5, 0xd0($v1)
/* 53F34 80053334 240E000A */  addiu      $t6, $zero, 0xa
/* 53F38 80053338 A06E00D0 */  sb         $t6, 0xd0($v1)
/* 53F3C 8005333C 10000002 */  b          .L80053348
/* 53F40 80053340 24020004 */   addiu     $v0, $zero, 4
/* 53F44 80053344 00001025 */  or         $v0, $zero, $zero
.L80053348:
/* 53F48 80053348 8FBF001C */  lw         $ra, 0x1c($sp)
/* 53F4C 8005334C 8FB00018 */  lw         $s0, 0x18($sp)
/* 53F50 80053350 03E00008 */  jr         $ra
/* 53F54 80053354 27BD0020 */   addiu     $sp, $sp, 0x20
