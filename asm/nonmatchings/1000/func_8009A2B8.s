glabel func_8009A2B8
/* 9AEB8 8009A2B8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9AEBC 8009A2BC AFBF001C */  sw         $ra, 0x1c($sp)
/* 9AEC0 8009A2C0 AFB00018 */  sw         $s0, 0x18($sp)
/* 9AEC4 8009A2C4 3C018018 */  lui        $at, %hi(D_801850B0)
/* 9AEC8 8009A2C8 AC2050B0 */  sw         $zero, %lo(D_801850B0)($at)
/* 9AECC 8009A2CC 3C018018 */  lui        $at, %hi(D_80185519)
/* 9AED0 8009A2D0 A0205519 */  sb         $zero, %lo(D_80185519)($at)
/* 9AED4 8009A2D4 3C018018 */  lui        $at, %hi(D_80185518)
/* 9AED8 8009A2D8 A0205518 */  sb         $zero, %lo(D_80185518)($at)
/* 9AEDC 8009A2DC 0C02A330 */  jal        func_800A8CC0
/* 9AEE0 8009A2E0 00000000 */   nop
/* 9AEE4 8009A2E4 240E0001 */  addiu      $t6, $zero, 1
/* 9AEE8 8009A2E8 3C01800F */  lui        $at, %hi(D_800EA500)
/* 9AEEC 8009A2EC AC2EA500 */  sw         $t6, %lo(D_800EA500)($at)
/* 9AEF0 8009A2F0 3C018018 */  lui        $at, %hi(D_8018551C)
/* 9AEF4 8009A2F4 AC20551C */  sw         $zero, %lo(D_8018551C)($at)
/* 9AEF8 8009A2F8 3C0F8018 */  lui        $t7, %hi(D_801850B8)
/* 9AEFC 8009A2FC 25EF50B8 */  addiu      $t7, $t7, %lo(D_801850B8)
/* 9AF00 8009A300 3C018018 */  lui        $at, %hi(D_80185520)
/* 9AF04 8009A304 AC2F5520 */  sw         $t7, %lo(D_80185520)($at)
/* 9AF08 8009A308 00008025 */  or         $s0, $zero, $zero
.L8009A30C:
/* 9AF0C 8009A30C 3C048019 */  lui        $a0, %hi(D_80189A58)
/* 9AF10 8009A310 24849A58 */  addiu      $a0, $a0, %lo(D_80189A58)
/* 9AF14 8009A314 27A50020 */  addiu      $a1, $sp, 0x20
/* 9AF18 8009A318 0C026B44 */  jal        func_8009AD10
/* 9AF1C 8009A31C 24060001 */   addiu     $a2, $zero, 1
/* 9AF20 8009A320 3C188018 */  lui        $t8, %hi(D_801850B0)
/* 9AF24 8009A324 8F1850B0 */  lw         $t8, %lo(D_801850B0)($t8)
/* 9AF28 8009A328 8FB90020 */  lw         $t9, 0x20($sp)
/* 9AF2C 8009A32C 3C018018 */  lui        $at, %hi(D_801850B0)
/* 9AF30 8009A330 03194025 */  or         $t0, $t8, $t9
/* 9AF34 8009A334 AC2850B0 */  sw         $t0, %lo(D_801850B0)($at)
/* 9AF38 8009A338 3C098018 */  lui        $t1, %hi(D_801850B0)
/* 9AF3C 8009A33C 8D2950B0 */  lw         $t1, %lo(D_801850B0)($t1)
/* 9AF40 8009A340 312A0002 */  andi       $t2, $t1, 2
/* 9AF44 8009A344 11400009 */  beqz       $t2, .L8009A36C
/* 9AF48 8009A348 00000000 */   nop
/* 9AF4C 8009A34C 3C0B8018 */  lui        $t3, %hi(D_801850B0)
/* 9AF50 8009A350 8D6B50B0 */  lw         $t3, %lo(D_801850B0)($t3)
/* 9AF54 8009A354 2401FFFD */  addiu      $at, $zero, -3
/* 9AF58 8009A358 01616024 */  and        $t4, $t3, $at
/* 9AF5C 8009A35C 3C018018 */  lui        $at, %hi(D_801850B0)
/* 9AF60 8009A360 AC2C50B0 */  sw         $t4, %lo(D_801850B0)($at)
/* 9AF64 8009A364 0C02A968 */  jal        func_800AA5A0
/* 9AF68 8009A368 00000000 */   nop
.L8009A36C:
/* 9AF6C 8009A36C 3C0D8018 */  lui        $t5, %hi(D_801850B0)
/* 9AF70 8009A370 8DAD50B0 */  lw         $t5, %lo(D_801850B0)($t5)
/* 9AF74 8009A374 31AE0004 */  andi       $t6, $t5, 4
/* 9AF78 8009A378 11C00009 */  beqz       $t6, .L8009A3A0
/* 9AF7C 8009A37C 00000000 */   nop
/* 9AF80 8009A380 3C0F8018 */  lui        $t7, %hi(D_801850B0)
/* 9AF84 8009A384 8DEF50B0 */  lw         $t7, %lo(D_801850B0)($t7)
/* 9AF88 8009A388 2401FFFB */  addiu      $at, $zero, -5
/* 9AF8C 8009A38C 01E1C024 */  and        $t8, $t7, $at
/* 9AF90 8009A390 3C018018 */  lui        $at, %hi(D_801850B0)
/* 9AF94 8009A394 AC3850B0 */  sw         $t8, %lo(D_801850B0)($at)
/* 9AF98 8009A398 0C02A976 */  jal        func_800AA5D8
/* 9AF9C 8009A39C 00000000 */   nop
.L8009A3A0:
/* 9AFA0 8009A3A0 3C198018 */  lui        $t9, %hi(D_801850B0)
/* 9AFA4 8009A3A4 8F3950B0 */  lw         $t9, %lo(D_801850B0)($t9)
/* 9AFA8 8009A3A8 33280008 */  andi       $t0, $t9, 8
/* 9AFAC 8009A3AC 11000009 */  beqz       $t0, .L8009A3D4
/* 9AFB0 8009A3B0 00000000 */   nop
/* 9AFB4 8009A3B4 3C098018 */  lui        $t1, %hi(D_801850B0)
/* 9AFB8 8009A3B8 8D2950B0 */  lw         $t1, %lo(D_801850B0)($t1)
/* 9AFBC 8009A3BC 2401FFF7 */  addiu      $at, $zero, -9
/* 9AFC0 8009A3C0 01215024 */  and        $t2, $t1, $at
/* 9AFC4 8009A3C4 3C018018 */  lui        $at, %hi(D_801850B0)
/* 9AFC8 8009A3C8 AC2A50B0 */  sw         $t2, %lo(D_801850B0)($at)
/* 9AFCC 8009A3CC 0C02A993 */  jal        func_800AA64C
/* 9AFD0 8009A3D0 00000000 */   nop
.L8009A3D4:
/* 9AFD4 8009A3D4 3C0B8018 */  lui        $t3, %hi(D_801850B0)
/* 9AFD8 8009A3D8 8D6B50B0 */  lw         $t3, %lo(D_801850B0)($t3)
/* 9AFDC 8009A3DC 316C0010 */  andi       $t4, $t3, 0x10
/* 9AFE0 8009A3E0 11800008 */  beqz       $t4, .L8009A404
/* 9AFE4 8009A3E4 00000000 */   nop
/* 9AFE8 8009A3E8 3C018018 */  lui        $at, %hi(D_801850B0)
/* 9AFEC 8009A3EC 8C2050B0 */  lw         $zero, %lo(D_801850B0)($at)
/* 9AFF0 8009A3F0 3C0D8018 */  lui        $t5, %hi(D_801850B0)
/* 9AFF4 8009A3F4 8DAD50B0 */  lw         $t5, %lo(D_801850B0)($t5)
/* 9AFF8 8009A3F8 3C018018 */  lui        $at, %hi(D_801850B0)
/* 9AFFC 8009A3FC 31AE00EF */  andi       $t6, $t5, 0xef
/* 9B000 8009A400 AC2E50B0 */  sw         $t6, %lo(D_801850B0)($at)
.L8009A404:
/* 9B004 8009A404 3C0F8018 */  lui        $t7, %hi(D_801850B0)
/* 9B008 8009A408 8DEF50B0 */  lw         $t7, %lo(D_801850B0)($t7)
/* 9B00C 8009A40C 31F80020 */  andi       $t8, $t7, 0x20
/* 9B010 8009A410 13000008 */  beqz       $t8, .L8009A434
/* 9B014 8009A414 00000000 */   nop
/* 9B018 8009A418 3C018018 */  lui        $at, %hi(D_801850B0)
/* 9B01C 8009A41C 8C2050B0 */  lw         $zero, %lo(D_801850B0)($at)
/* 9B020 8009A420 3C198018 */  lui        $t9, %hi(D_801850B0)
/* 9B024 8009A424 8F3950B0 */  lw         $t9, %lo(D_801850B0)($t9)
/* 9B028 8009A428 3C018018 */  lui        $at, %hi(D_801850B0)
/* 9B02C 8009A42C 332800DF */  andi       $t0, $t9, 0xdf
/* 9B030 8009A430 AC2850B0 */  sw         $t0, %lo(D_801850B0)($at)
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
