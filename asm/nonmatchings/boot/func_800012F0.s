glabel func_800012F0
/* 1EF0 800012F0 3C0E800C */  lui        $t6, %hi(gGameState)
/* 1EF4 800012F4 95CEE4F0 */  lhu        $t6, %lo(gGameState)($t6)
/* 1EF8 800012F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1EFC 800012FC 24010006 */  addiu      $at, $zero, 6
/* 1F00 80001300 15C10058 */  bne        $t6, $at, .L80001464
/* 1F04 80001304 AFBF0014 */   sw        $ra, 0x14($sp)
/* 1F08 80001308 3C06800C */  lui        $a2, %hi(D_800BE6AC)
/* 1F0C 8000130C 24C6E6AC */  addiu      $a2, $a2, %lo(D_800BE6AC)
/* 1F10 80001310 94C40000 */  lhu        $a0, ($a2)
/* 1F14 80001314 3C02800C */  lui        $v0, %hi(gGamePaused)
/* 1F18 80001318 308F0200 */  andi       $t7, $a0, 0x200
/* 1F1C 8000131C 11E00006 */  beqz       $t7, .L80001338
/* 1F20 80001320 2442E4E8 */   addiu     $v0, $v0, %lo(gGamePaused)
/* 1F24 80001324 94580000 */  lhu        $t8, ($v0)
/* 1F28 80001328 24190001 */  addiu      $t9, $zero, 1
/* 1F2C 8000132C 17000002 */  bnez       $t8, .L80001338
/* 1F30 80001330 00000000 */   nop
/* 1F34 80001334 A4590000 */  sh         $t9, ($v0)
.L80001338:
/* 1F38 80001338 3C02800C */  lui        $v0, %hi(gGamePaused)
/* 1F3C 8000133C 2442E4E8 */  addiu      $v0, $v0, %lo(gGamePaused)
/* 1F40 80001340 94430000 */  lhu        $v1, ($v0)
/* 1F44 80001344 3C05800C */  lui        $a1, %hi(gGameSubState)
/* 1F48 80001348 1060001D */  beqz       $v1, .L800013C0
/* 1F4C 8000134C 24A5E4F4 */   addiu     $a1, $a1, %lo(gGameSubState)
/* 1F50 80001350 94A80000 */  lhu        $t0, ($a1)
/* 1F54 80001354 24010010 */  addiu      $at, $zero, 0x10
/* 1F58 80001358 15010019 */  bne        $t0, $at, .L800013C0
/* 1F5C 8000135C 3C09800C */   lui       $t1, %hi(gButton_Start)
/* 1F60 80001360 3C02800C */  lui        $v0, %hi(gButtonPress)
/* 1F64 80001364 9442E4FC */  lhu        $v0, %lo(gButtonPress)($v0)
/* 1F68 80001368 9529E500 */  lhu        $t1, %lo(gButton_Start)($t1)
/* 1F6C 8000136C 3C0B800C */  lui        $t3, %hi(gButton_A)
/* 1F70 80001370 00495024 */  and        $t2, $v0, $t1
/* 1F74 80001374 15400006 */  bnez       $t2, .L80001390
/* 1F78 80001378 308D0100 */   andi      $t5, $a0, 0x100
/* 1F7C 8000137C 956BE518 */  lhu        $t3, %lo(gButton_A)($t3)
/* 1F80 80001380 00000000 */  nop
/* 1F84 80001384 004B6024 */  and        $t4, $v0, $t3
/* 1F88 80001388 11800030 */  beqz       $t4, .L8000144C
/* 1F8C 8000138C 00000000 */   nop
.L80001390:
/* 1F90 80001390 11A00009 */  beqz       $t5, .L800013B8
/* 1F94 80001394 240E0020 */   addiu     $t6, $zero, 0x20
/* 1F98 80001398 0C008211 */  jal        func_80020844
/* 1F9C 8000139C 00000000 */   nop
/* 1FA0 800013A0 0C008235 */  jal        func_800208D4
/* 1FA4 800013A4 00000000 */   nop
/* 1FA8 800013A8 3C03800C */  lui        $v1, %hi(gGamePaused)
/* 1FAC 800013AC 9463E4E8 */  lhu        $v1, %lo(gGamePaused)($v1)
/* 1FB0 800013B0 10000026 */  b          .L8000144C
/* 1FB4 800013B4 00000000 */   nop
.L800013B8:
/* 1FB8 800013B8 10000024 */  b          .L8000144C
/* 1FBC 800013BC A4AE0000 */   sh        $t6, ($a1)
.L800013C0:
/* 1FC0 800013C0 3C0F800C */  lui        $t7, %hi(gButtonPress)
/* 1FC4 800013C4 3C18800C */  lui        $t8, %hi(gButton_Start)
/* 1FC8 800013C8 9718E500 */  lhu        $t8, %lo(gButton_Start)($t8)
/* 1FCC 800013CC 95EFE4FC */  lhu        $t7, %lo(gButtonPress)($t7)
/* 1FD0 800013D0 3C05800C */  lui        $a1, %hi(gGameSubState)
/* 1FD4 800013D4 01F8C824 */  and        $t9, $t7, $t8
/* 1FD8 800013D8 1320001C */  beqz       $t9, .L8000144C
/* 1FDC 800013DC 24A5E4F4 */   addiu     $a1, $a1, %lo(gGameSubState)
/* 1FE0 800013E0 3C08800C */  lui        $t0, %hi(D_800BE4EC)
/* 1FE4 800013E4 9508E4EC */  lhu        $t0, %lo(D_800BE4EC)($t0)
/* 1FE8 800013E8 00000000 */  nop
/* 1FEC 800013EC 15000017 */  bnez       $t0, .L8000144C
/* 1FF0 800013F0 00000000 */   nop
/* 1FF4 800013F4 94A90000 */  lhu        $t1, ($a1)
/* 1FF8 800013F8 3C0A800F */  lui        $t2, %hi(D_800EF5F0)
/* 1FFC 800013FC 15200013 */  bnez       $t1, .L8000144C
/* 2000 80001400 00000000 */   nop
/* 2004 80001404 854AF5F0 */  lh         $t2, %lo(D_800EF5F0)($t2)
/* 2008 80001408 240B0001 */  addiu      $t3, $zero, 1
/* 200C 8000140C 0540000F */  bltz       $t2, .L8000144C
/* 2010 80001410 308DFFEF */   andi      $t5, $a0, 0xffef
/* 2014 80001414 31AE0100 */  andi       $t6, $t5, 0x100
/* 2018 80001418 A44B0000 */  sh         $t3, ($v0)
/* 201C 8000141C 11C00007 */  beqz       $t6, .L8000143C
/* 2020 80001420 A4CD0000 */   sh        $t5, ($a2)
/* 2024 80001424 240F0010 */  addiu      $t7, $zero, 0x10
/* 2028 80001428 A4AF0000 */  sh         $t7, ($a1)
/* 202C 8000142C 3C03800C */  lui        $v1, %hi(gGamePaused)
/* 2030 80001430 9463E4E8 */  lhu        $v1, %lo(gGamePaused)($v1)
/* 2034 80001434 10000005 */  b          .L8000144C
/* 2038 80001438 00000000 */   nop
.L8000143C:
/* 203C 8000143C A4A00000 */  sh         $zero, ($a1)
/* 2040 80001440 3C03800C */  lui        $v1, %hi(gGamePaused)
/* 2044 80001444 9463E4E8 */  lhu        $v1, %lo(gGamePaused)($v1)
/* 2048 80001448 00000000 */  nop
.L8000144C:
/* 204C 8000144C 14600008 */  bnez       $v1, .L80001470
/* 2050 80001450 8FBF0014 */   lw        $ra, 0x14($sp)
/* 2054 80001454 0C020E38 */  jal        func_800838E0
/* 2058 80001458 00000000 */   nop
/* 205C 8000145C 10000004 */  b          .L80001470
/* 2060 80001460 8FBF0014 */   lw        $ra, 0x14($sp)
.L80001464:
/* 2064 80001464 0C020E38 */  jal        func_800838E0
/* 2068 80001468 00000000 */   nop
/* 206C 8000146C 8FBF0014 */  lw         $ra, 0x14($sp)
.L80001470:
/* 2070 80001470 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2074 80001474 03E00008 */  jr         $ra
/* 2078 80001478 00000000 */   nop
