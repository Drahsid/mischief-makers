glabel func_80026220
/* 26E20 80026220 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 26E24 80026224 3082FFFF */  andi       $v0, $a0, 0xffff
/* 26E28 80026228 24010002 */  addiu      $at, $zero, 2
/* 26E2C 8002622C AFBF0014 */  sw         $ra, 0x14($sp)
/* 26E30 80026230 1041000C */  beq        $v0, $at, .L80026264
/* 26E34 80026234 AFA40028 */   sw        $a0, 0x28($sp)
/* 26E38 80026238 3C0F800D */  lui        $t7, %hi(D_800D28E4)
/* 26E3C 8002623C 95EF28E4 */  lhu        $t7, %lo(D_800D28E4)($t7)
/* 26E40 80026240 24010066 */  addiu      $at, $zero, 0x66
/* 26E44 80026244 11E10007 */  beq        $t7, $at, .L80026264
/* 26E48 80026248 3C03800C */   lui       $v1, %hi(gGameState)
/* 26E4C 8002624C 9463E4F0 */  lhu        $v1, %lo(gGameState)($v1)
/* 26E50 80026250 24010008 */  addiu      $at, $zero, 8
/* 26E54 80026254 10610003 */  beq        $v1, $at, .L80026264
/* 26E58 80026258 24010009 */   addiu     $at, $zero, 9
/* 26E5C 8002625C 14610022 */  bne        $v1, $at, .L800262E8
/* 26E60 80026260 3C07800D */   lui       $a3, 0x800d
.L80026264:
/* 26E64 80026264 3C07800D */  lui        $a3, %hi(D_800CEC0C)
/* 26E68 80026268 24E7EC0C */  addiu      $a3, $a3, %lo(D_800CEC0C)
/* 26E6C 8002626C 8CE20014 */  lw         $v0, 0x14($a3)
/* 26E70 80026270 8CF80000 */  lw         $t8, ($a3)
/* 26E74 80026274 8CEB0018 */  lw         $t3, 0x18($a3)
/* 26E78 80026278 3C0A000F */  lui        $t2, 0xf
/* 26E7C 8002627C 254A0100 */  addiu      $t2, $t2, 0x100
/* 26E80 80026280 3C05801C */  lui        $a1, 0x801c
/* 26E84 80026284 0058C823 */  subu       $t9, $v0, $t8
/* 26E88 80026288 032A2021 */  addu       $a0, $t9, $t2
/* 26E8C 8002628C 34A54400 */  ori        $a1, $a1, 0x4400
/* 26E90 80026290 0C00047C */  jal        func_800011F0
/* 26E94 80026294 01623023 */   subu      $a2, $t3, $v0
/* 26E98 80026298 3C058038 */  lui        $a1, 0x8038
/* 26E9C 8002629C 3C018013 */  lui        $at, %hi(D_80137724)
/* 26EA0 800262A0 3C04801C */  lui        $a0, 0x801c
/* 26EA4 800262A4 AC257724 */  sw         $a1, %lo(D_80137724)($at)
/* 26EA8 800262A8 0C001244 */  jal        func_80004910
/* 26EAC 800262AC 34844400 */   ori       $a0, $a0, 0x4400
/* 26EB0 800262B0 3C018038 */  lui        $at, 0x8038
/* 26EB4 800262B4 00416021 */  addu       $t4, $v0, $at
/* 26EB8 800262B8 3C04000F */  lui        $a0, 0xf
/* 26EBC 800262BC 3C0D000F */  lui        $t5, 0xf
/* 26EC0 800262C0 248400D0 */  addiu      $a0, $a0, 0xd0
/* 26EC4 800262C4 3C018013 */  lui        $at, %hi(D_80137728)
/* 26EC8 800262C8 25AD0100 */  addiu      $t5, $t5, 0x100
/* 26ECC 800262CC 3C058038 */  lui        $a1, 0x8038
/* 26ED0 800262D0 AC2C7728 */  sw         $t4, %lo(D_80137728)($at)
/* 26ED4 800262D4 34A58000 */  ori        $a1, $a1, 0x8000
/* 26ED8 800262D8 0C00047C */  jal        func_800011F0
/* 26EDC 800262DC 01A43023 */   subu      $a2, $t5, $a0
/* 26EE0 800262E0 1000004E */  b          .L8002641C
/* 26EE4 800262E4 8FBF0014 */   lw        $ra, 0x14($sp)
.L800262E8:
/* 26EE8 800262E8 24E7EC0C */  addiu      $a3, $a3, -0x13f4
/* 26EEC 800262EC 000278C0 */  sll        $t7, $v0, 3
/* 26EF0 800262F0 00EF1821 */  addu       $v1, $a3, $t7
/* 26EF4 800262F4 8C680004 */  lw         $t0, 4($v1)
/* 26EF8 800262F8 3C090408 */  lui        $t1, 0x408
/* 26EFC 800262FC 2529C860 */  addiu      $t1, $t1, -0x37a0
/* 26F00 80026300 15280032 */  bne        $t1, $t0, .L800263CC
/* 26F04 80026304 3C0B000F */   lui       $t3, 0xf
/* 26F08 80026308 8CF80000 */  lw         $t8, ($a3)
/* 26F0C 8002630C 3C0A000F */  lui        $t2, 0xf
/* 26F10 80026310 3C030408 */  lui        $v1, 0x408
/* 26F14 80026314 254A0100 */  addiu      $t2, $t2, 0x100
/* 26F18 80026318 24631620 */  addiu      $v1, $v1, 0x1620
/* 26F1C 8002631C 3C058025 */  lui        $a1, 0x8025
/* 26F20 80026320 0138C823 */  subu       $t9, $t1, $t8
/* 26F24 80026324 032A2021 */  addu       $a0, $t9, $t2
/* 26F28 80026328 34A59000 */  ori        $a1, $a1, 0x9000
/* 26F2C 8002632C 00693023 */  subu       $a2, $v1, $t1
/* 26F30 80026330 0C00047C */  jal        func_800011F0
/* 26F34 80026334 AFA3001C */   sw        $v1, 0x1c($sp)
/* 26F38 80026338 3C058038 */  lui        $a1, 0x8038
/* 26F3C 8002633C 3C018013 */  lui        $at, %hi(D_80137724)
/* 26F40 80026340 3C048025 */  lui        $a0, 0x8025
/* 26F44 80026344 AC257724 */  sw         $a1, %lo(D_80137724)($at)
/* 26F48 80026348 0C001244 */  jal        func_80004910
/* 26F4C 8002634C 34849000 */   ori       $a0, $a0, 0x9000
/* 26F50 80026350 3C018038 */  lui        $at, 0x8038
/* 26F54 80026354 00415821 */  addu       $t3, $v0, $at
/* 26F58 80026358 3C018013 */  lui        $at, %hi(D_80137728)
/* 26F5C 8002635C 3C07800D */  lui        $a3, %hi(D_800CEC0C)
/* 26F60 80026360 24E7EC0C */  addiu      $a3, $a3, %lo(D_800CEC0C)
/* 26F64 80026364 AC2B7728 */  sw         $t3, %lo(D_80137728)($at)
/* 26F68 80026368 8FA3001C */  lw         $v1, 0x1c($sp)
/* 26F6C 8002636C 8CEC0000 */  lw         $t4, ($a3)
/* 26F70 80026370 3C0E000F */  lui        $t6, 0xf
/* 26F74 80026374 3C0F0409 */  lui        $t7, 0x409
/* 26F78 80026378 25CE0100 */  addiu      $t6, $t6, 0x100
/* 26F7C 8002637C 25EF1D20 */  addiu      $t7, $t7, 0x1d20
/* 26F80 80026380 3C058025 */  lui        $a1, 0x8025
/* 26F84 80026384 006C6823 */  subu       $t5, $v1, $t4
/* 26F88 80026388 01AE2021 */  addu       $a0, $t5, $t6
/* 26F8C 8002638C 34A59000 */  ori        $a1, $a1, 0x9000
/* 26F90 80026390 0C00047C */  jal        func_800011F0
/* 26F94 80026394 01E33023 */   subu      $a2, $t7, $v1
/* 26F98 80026398 3C058038 */  lui        $a1, 0x8038
/* 26F9C 8002639C 34A5DE00 */  ori        $a1, $a1, 0xde00
/* 26FA0 800263A0 3C018013 */  lui        $at, %hi(D_80137724)
/* 26FA4 800263A4 3C048025 */  lui        $a0, 0x8025
/* 26FA8 800263A8 AC257724 */  sw         $a1, %lo(D_80137724)($at)
/* 26FAC 800263AC 0C001244 */  jal        func_80004910
/* 26FB0 800263B0 34849000 */   ori       $a0, $a0, 0x9000
/* 26FB4 800263B4 3C018038 */  lui        $at, 0x8038
/* 26FB8 800263B8 3421DE00 */  ori        $at, $at, 0xde00
/* 26FBC 800263BC 0041C021 */  addu       $t8, $v0, $at
/* 26FC0 800263C0 3C018013 */  lui        $at, %hi(D_80137728)
/* 26FC4 800263C4 10000014 */  b          .L80026418
/* 26FC8 800263C8 AC387728 */   sw        $t8, %lo(D_80137728)($at)
.L800263CC:
/* 26FCC 800263CC 8CF90000 */  lw         $t9, ($a3)
/* 26FD0 800263D0 8C6C0008 */  lw         $t4, 8($v1)
/* 26FD4 800263D4 256B0100 */  addiu      $t3, $t3, 0x100
/* 26FD8 800263D8 3C058025 */  lui        $a1, 0x8025
/* 26FDC 800263DC 01195023 */  subu       $t2, $t0, $t9
/* 26FE0 800263E0 014B2021 */  addu       $a0, $t2, $t3
/* 26FE4 800263E4 34A59000 */  ori        $a1, $a1, 0x9000
/* 26FE8 800263E8 0C00047C */  jal        func_800011F0
/* 26FEC 800263EC 01883023 */   subu      $a2, $t4, $t0
/* 26FF0 800263F0 3C058038 */  lui        $a1, 0x8038
/* 26FF4 800263F4 3C018013 */  lui        $at, %hi(D_80137724)
/* 26FF8 800263F8 3C048025 */  lui        $a0, 0x8025
/* 26FFC 800263FC AC257724 */  sw         $a1, %lo(D_80137724)($at)
/* 27000 80026400 0C001244 */  jal        func_80004910
/* 27004 80026404 34849000 */   ori       $a0, $a0, 0x9000
/* 27008 80026408 3C018038 */  lui        $at, 0x8038
/* 2700C 8002640C 00416821 */  addu       $t5, $v0, $at
/* 27010 80026410 3C018013 */  lui        $at, %hi(D_80137728)
/* 27014 80026414 AC2D7728 */  sw         $t5, %lo(D_80137728)($at)
.L80026418:
/* 27018 80026418 8FBF0014 */  lw         $ra, 0x14($sp)
.L8002641C:
/* 2701C 8002641C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 27020 80026420 03E00008 */  jr         $ra
/* 27024 80026424 00000000 */   nop
