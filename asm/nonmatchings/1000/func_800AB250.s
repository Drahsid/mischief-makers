glabel func_800AB250
/* ABE50 800AB250 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* ABE54 800AB254 AFBF001C */  sw         $ra, 0x1c($sp)
/* ABE58 800AB258 AFA40038 */  sw         $a0, 0x38($sp)
/* ABE5C 800AB25C AFA5003C */  sw         $a1, 0x3c($sp)
/* ABE60 800AB260 8FAE003C */  lw         $t6, 0x3c($sp)
/* ABE64 800AB264 8DCF000C */  lw         $t7, 0xc($t6)
/* ABE68 800AB268 AFAF0024 */  sw         $t7, 0x24($sp)
/* ABE6C 800AB26C 8FB80038 */  lw         $t8, 0x38($sp)
/* ABE70 800AB270 AF000020 */  sw         $zero, 0x20($t8)
/* ABE74 800AB274 8FB90038 */  lw         $t9, 0x38($sp)
/* ABE78 800AB278 AF200018 */  sw         $zero, 0x18($t9)
/* ABE7C 800AB27C 3C08800F */  lui        $t0, %hi(D_800EA520)
/* ABE80 800AB280 8D08A520 */  lw         $t0, %lo(D_800EA520)($t0)
/* ABE84 800AB284 8FA90038 */  lw         $t1, 0x38($sp)
/* ABE88 800AB288 AD280014 */  sw         $t0, 0x14($t1)
/* ABE8C 800AB28C 8FAB0038 */  lw         $t3, 0x38($sp)
/* ABE90 800AB290 240A00FF */  addiu      $t2, $zero, 0xff
/* ABE94 800AB294 A56A0030 */  sh         $t2, 0x30($t3)
/* ABE98 800AB298 8FAD0038 */  lw         $t5, 0x38($sp)
/* ABE9C 800AB29C 240C01E8 */  addiu      $t4, $zero, 0x1e8
/* ABEA0 800AB2A0 ADAC0024 */  sw         $t4, 0x24($t5)
/* ABEA4 800AB2A4 8FAE0038 */  lw         $t6, 0x38($sp)
/* ABEA8 800AB2A8 ADC00028 */  sw         $zero, 0x28($t6)
/* ABEAC 800AB2AC 8FAF0038 */  lw         $t7, 0x38($sp)
/* ABEB0 800AB2B0 ADE0002C */  sw         $zero, 0x2c($t7)
/* ABEB4 800AB2B4 8FB90038 */  lw         $t9, 0x38($sp)
/* ABEB8 800AB2B8 24187FFF */  addiu      $t8, $zero, 0x7fff
/* ABEBC 800AB2BC A7380032 */  sh         $t8, 0x32($t9)
/* ABEC0 800AB2C0 8FA8003C */  lw         $t0, 0x3c($sp)
/* ABEC4 800AB2C4 8FAA0038 */  lw         $t2, 0x38($sp)
/* ABEC8 800AB2C8 91090009 */  lbu        $t1, 9($t0)
/* ABECC 800AB2CC A1490035 */  sb         $t1, 0x35($t2)
/* ABED0 800AB2D0 8FAC0038 */  lw         $t4, 0x38($sp)
/* ABED4 800AB2D4 240B3E80 */  addiu      $t3, $zero, 0x3e80
/* ABED8 800AB2D8 AD8B005C */  sw         $t3, 0x5c($t4)
/* ABEDC 800AB2DC 8FAD0038 */  lw         $t5, 0x38($sp)
/* ABEE0 800AB2E0 ADA0001C */  sw         $zero, 0x1c($t5)
/* ABEE4 800AB2E4 8FAE003C */  lw         $t6, 0x3c($sp)
/* ABEE8 800AB2E8 8FB80038 */  lw         $t8, 0x38($sp)
/* ABEEC 800AB2EC 8DCF0010 */  lw         $t7, 0x10($t6)
/* ABEF0 800AB2F0 AF0F0070 */  sw         $t7, 0x70($t8)
/* ABEF4 800AB2F4 8FB9003C */  lw         $t9, 0x3c($sp)
/* ABEF8 800AB2F8 8FA90038 */  lw         $t1, 0x38($sp)
/* ABEFC 800AB2FC 8F280014 */  lw         $t0, 0x14($t9)
/* ABF00 800AB300 AD280074 */  sw         $t0, 0x74($t1)
/* ABF04 800AB304 8FAA003C */  lw         $t2, 0x3c($sp)
/* ABF08 800AB308 8FAC0038 */  lw         $t4, 0x38($sp)
/* ABF0C 800AB30C 8D4B0018 */  lw         $t3, 0x18($t2)
/* ABF10 800AB310 AD8B0078 */  sw         $t3, 0x78($t4)
/* ABF14 800AB314 8FAD0038 */  lw         $t5, 0x38($sp)
/* ABF18 800AB318 ADA0007C */  sw         $zero, 0x7c($t5)
/* ABF1C 800AB31C 8FAE0038 */  lw         $t6, 0x38($sp)
/* ABF20 800AB320 ADC00080 */  sw         $zero, 0x80($t6)
/* ABF24 800AB324 8FAF0038 */  lw         $t7, 0x38($sp)
/* ABF28 800AB328 ADE00084 */  sw         $zero, 0x84($t7)
/* ABF2C 800AB32C 8FB90038 */  lw         $t9, 0x38($sp)
/* ABF30 800AB330 24180009 */  addiu      $t8, $zero, 9
/* ABF34 800AB334 A7380038 */  sh         $t8, 0x38($t9)
/* ABF38 800AB338 8FA8003C */  lw         $t0, 0x3c($sp)
/* ABF3C 800AB33C 8FAA0038 */  lw         $t2, 0x38($sp)
/* ABF40 800AB340 91090008 */  lbu        $t1, 8($t0)
/* ABF44 800AB344 A1490034 */  sb         $t1, 0x34($t2)
/* ABF48 800AB348 8FAB003C */  lw         $t3, 0x3c($sp)
/* ABF4C 800AB34C 3C04800F */  lui        $a0, %hi(D_800EDFA0)
/* ABF50 800AB350 240C0010 */  addiu      $t4, $zero, 0x10
/* ABF54 800AB354 91670008 */  lbu        $a3, 8($t3)
/* ABF58 800AB358 AFAC0010 */  sw         $t4, 0x10($sp)
/* ABF5C 800AB35C 2484DFA0 */  addiu      $a0, $a0, %lo(D_800EDFA0)
/* ABF60 800AB360 2405005B */  addiu      $a1, $zero, 0x5b
/* ABF64 800AB364 0C026ECC */  jal        func_8009BB30
/* ABF68 800AB368 8FA60024 */   lw        $a2, 0x24($sp)
/* ABF6C 800AB36C 8FAD0038 */  lw         $t5, 0x38($sp)
/* ABF70 800AB370 ADA20060 */  sw         $v0, 0x60($t5)
/* ABF74 800AB374 0C02B54F */  jal        func_800AD53C
/* ABF78 800AB378 8FA40038 */   lw        $a0, 0x38($sp)
/* ABF7C 800AB37C 8FAE003C */  lw         $t6, 0x3c($sp)
/* ABF80 800AB380 3C04800F */  lui        $a0, %hi(D_800EDFB8)
/* ABF84 800AB384 240F0038 */  addiu      $t7, $zero, 0x38
/* ABF88 800AB388 8DC70000 */  lw         $a3, ($t6)
/* ABF8C 800AB38C AFAF0010 */  sw         $t7, 0x10($sp)
/* ABF90 800AB390 2484DFB8 */  addiu      $a0, $a0, %lo(D_800EDFB8)
/* ABF94 800AB394 24050061 */  addiu      $a1, $zero, 0x61
/* ABF98 800AB398 0C026ECC */  jal        func_8009BB30
/* ABF9C 800AB39C 8FA60024 */   lw        $a2, 0x24($sp)
/* ABFA0 800AB3A0 AFA20028 */  sw         $v0, 0x28($sp)
/* ABFA4 800AB3A4 8FB80038 */  lw         $t8, 0x38($sp)
/* ABFA8 800AB3A8 AF00006C */  sw         $zero, 0x6c($t8)
/* ABFAC 800AB3AC 8FB9003C */  lw         $t9, 0x3c($sp)
/* ABFB0 800AB3B0 AFA00034 */  sw         $zero, 0x34($sp)
/* ABFB4 800AB3B4 8F280000 */  lw         $t0, ($t9)
/* ABFB8 800AB3B8 19000017 */  blez       $t0, .L800AB418
/* ABFBC 800AB3BC 00000000 */   nop
.L800AB3C0:
/* ABFC0 800AB3C0 8FA90034 */  lw         $t1, 0x34($sp)
/* ABFC4 800AB3C4 8FAB0028 */  lw         $t3, 0x28($sp)
/* ABFC8 800AB3C8 000950C0 */  sll        $t2, $t1, 3
/* ABFCC 800AB3CC 01495023 */  subu       $t2, $t2, $t1
/* ABFD0 800AB3D0 000A50C0 */  sll        $t2, $t2, 3
/* ABFD4 800AB3D4 014B6021 */  addu       $t4, $t2, $t3
/* ABFD8 800AB3D8 AFAC002C */  sw         $t4, 0x2c($sp)
/* ABFDC 800AB3DC 8FAD0038 */  lw         $t5, 0x38($sp)
/* ABFE0 800AB3E0 8FAF002C */  lw         $t7, 0x2c($sp)
/* ABFE4 800AB3E4 8DAE006C */  lw         $t6, 0x6c($t5)
/* ABFE8 800AB3E8 ADEE0000 */  sw         $t6, ($t7)
/* ABFEC 800AB3EC 8FB8002C */  lw         $t8, 0x2c($sp)
/* ABFF0 800AB3F0 8FB90038 */  lw         $t9, 0x38($sp)
/* ABFF4 800AB3F4 AF38006C */  sw         $t8, 0x6c($t9)
/* ABFF8 800AB3F8 8FA80034 */  lw         $t0, 0x34($sp)
/* ABFFC 800AB3FC 8FAA003C */  lw         $t2, 0x3c($sp)
/* AC000 800AB400 25090001 */  addiu      $t1, $t0, 1
/* AC004 800AB404 AFA90034 */  sw         $t1, 0x34($sp)
/* AC008 800AB408 8D4B0000 */  lw         $t3, ($t2)
/* AC00C 800AB40C 012B082A */  slt        $at, $t1, $t3
/* AC010 800AB410 1420FFEB */  bnez       $at, .L800AB3C0
/* AC014 800AB414 00000000 */   nop
.L800AB418:
/* AC018 800AB418 8FAC0038 */  lw         $t4, 0x38($sp)
/* AC01C 800AB41C AD800064 */  sw         $zero, 0x64($t4)
/* AC020 800AB420 8FAD0038 */  lw         $t5, 0x38($sp)
/* AC024 800AB424 ADA00068 */  sw         $zero, 0x68($t5)
/* AC028 800AB428 8FAE003C */  lw         $t6, 0x3c($sp)
/* AC02C 800AB42C 3C04800F */  lui        $a0, %hi(D_800EDFD0)
/* AC030 800AB430 240F001C */  addiu      $t7, $zero, 0x1c
/* AC034 800AB434 8DC70004 */  lw         $a3, 4($t6)
/* AC038 800AB438 AFAF0010 */  sw         $t7, 0x10($sp)
/* AC03C 800AB43C 2484DFD0 */  addiu      $a0, $a0, %lo(D_800EDFD0)
/* AC040 800AB440 2405006F */  addiu      $a1, $zero, 0x6f
/* AC044 800AB444 0C026ECC */  jal        func_8009BB30
/* AC048 800AB448 8FA60024 */   lw        $a2, 0x24($sp)
/* AC04C 800AB44C AFA20030 */  sw         $v0, 0x30($sp)
/* AC050 800AB450 8FA40038 */  lw         $a0, 0x38($sp)
/* AC054 800AB454 8FB8003C */  lw         $t8, 0x3c($sp)
/* AC058 800AB458 8FA50030 */  lw         $a1, 0x30($sp)
/* AC05C 800AB45C 24840048 */  addiu      $a0, $a0, 0x48
/* AC060 800AB460 0C02B5D0 */  jal        func_800AD740
/* AC064 800AB464 8F060004 */   lw        $a2, 4($t8)
/* AC068 800AB468 8FB90038 */  lw         $t9, 0x38($sp)
/* AC06C 800AB46C AF200000 */  sw         $zero, ($t9)
/* AC070 800AB470 8FAA0038 */  lw         $t2, 0x38($sp)
/* AC074 800AB474 3C08800B */  lui        $t0, %hi(func_800AB4B0)
/* AC078 800AB478 2508B4B0 */  addiu      $t0, $t0, %lo(func_800AB4B0)
/* AC07C 800AB47C AD480008 */  sw         $t0, 8($t2)
/* AC080 800AB480 8FA90038 */  lw         $t1, 0x38($sp)
/* AC084 800AB484 AD290004 */  sw         $t1, 4($t1)
/* AC088 800AB488 3C04800F */  lui        $a0, %hi(D_800EA520)
/* AC08C 800AB48C 8C84A520 */  lw         $a0, %lo(D_800EA520)($a0)
/* AC090 800AB490 0C02B6D8 */  jal        func_800ADB60
/* AC094 800AB494 8FA50038 */   lw        $a1, 0x38($sp)
/* AC098 800AB498 10000001 */  b          .L800AB4A0
/* AC09C 800AB49C 00000000 */   nop
.L800AB4A0:
/* AC0A0 800AB4A0 8FBF001C */  lw         $ra, 0x1c($sp)
/* AC0A4 800AB4A4 27BD0038 */  addiu      $sp, $sp, 0x38
/* AC0A8 800AB4A8 03E00008 */  jr         $ra
/* AC0AC 800AB4AC 00000000 */   nop
