glabel func_800232A4
/* 23EA4 800232A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 23EA8 800232A8 3C088013 */  lui        $t0, 0x8013
/* 23EAC 800232AC 3C078013 */  lui        $a3, 0x8013
/* 23EB0 800232B0 3C068013 */  lui        $a2, 0x8013
/* 23EB4 800232B4 3C058013 */  lui        $a1, 0x8013
/* 23EB8 800232B8 3C048013 */  lui        $a0, %hi(D_801376B8)
/* 23EBC 800232BC 3C038013 */  lui        $v1, %hi(D_801376BC)
/* 23EC0 800232C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 23EC4 800232C4 246376BC */  addiu      $v1, $v1, %lo(D_801376BC)
/* 23EC8 800232C8 248476B8 */  addiu      $a0, $a0, %lo(D_801376B8)
/* 23ECC 800232CC 24A576A8 */  addiu      $a1, $a1, 0x76a8
/* 23ED0 800232D0 24C676AC */  addiu      $a2, $a2, 0x76ac
/* 23ED4 800232D4 24E776B0 */  addiu      $a3, $a3, 0x76b0
/* 23ED8 800232D8 250876B4 */  addiu      $t0, $t0, 0x76b4
/* 23EDC 800232DC 00001025 */  or         $v0, $zero, $zero
/* 23EE0 800232E0 240A0001 */  addiu      $t2, $zero, 1
/* 23EE4 800232E4 240900FF */  addiu      $t1, $zero, 0xff
.L800232E8:
/* 23EE8 800232E8 00627021 */  addu       $t6, $v1, $v0
/* 23EEC 800232EC A1CA0000 */  sb         $t2, ($t6)
/* 23EF0 800232F0 00827821 */  addu       $t7, $a0, $v0
/* 23EF4 800232F4 A1EA0000 */  sb         $t2, ($t7)
/* 23EF8 800232F8 00A2C021 */  addu       $t8, $a1, $v0
/* 23EFC 800232FC A3000000 */  sb         $zero, ($t8)
/* 23F00 80023300 00C2C821 */  addu       $t9, $a2, $v0
/* 23F04 80023304 00E27021 */  addu       $t6, $a3, $v0
/* 23F08 80023308 01027821 */  addu       $t7, $t0, $v0
/* 23F0C 8002330C 24420001 */  addiu      $v0, $v0, 1
/* 23F10 80023310 3058FFFF */  andi       $t8, $v0, 0xffff
/* 23F14 80023314 A3200000 */  sb         $zero, ($t9)
/* 23F18 80023318 2B010004 */  slti       $at, $t8, 4
/* 23F1C 8002331C A1C00000 */  sb         $zero, ($t6)
/* 23F20 80023320 03001025 */  or         $v0, $t8, $zero
/* 23F24 80023324 1420FFF0 */  bnez       $at, .L800232E8
/* 23F28 80023328 A1E90000 */   sb        $t1, ($t7)
/* 23F2C 8002332C 3C05800F */  lui        $a1, %hi(gActors)
/* 23F30 80023330 3C01800C */  lui        $at, %hi(D_800BE6F0)
/* 23F34 80023334 24A5F510 */  addiu      $a1, $a1, %lo(gActors)
/* 23F38 80023338 A029E6F0 */  sb         $t1, %lo(D_800BE6F0)($at)
/* 23F3C 8002333C 84B900E0 */  lh         $t9, 0xe0($a1)
/* 23F40 80023340 3C01800C */  lui        $at, %hi(D_800BE63C)
/* 23F44 80023344 A439E63C */  sh         $t9, %lo(D_800BE63C)($at)
/* 23F48 80023348 3C01800C */  lui        $at, %hi(D_800BE6C0)
/* 23F4C 8002334C 240EFFF8 */  addiu      $t6, $zero, -8
/* 23F50 80023350 AC2EE6C0 */  sw         $t6, %lo(D_800BE6C0)($at)
/* 23F54 80023354 3C01800C */  lui        $at, %hi(D_800BE6AC)
/* 23F58 80023358 240F0004 */  addiu      $t7, $zero, 4
/* 23F5C 8002335C 3C038013 */  lui        $v1, %hi(D_80137480)
/* 23F60 80023360 A42FE6AC */  sh         $t7, %lo(D_800BE6AC)($at)
/* 23F64 80023364 24637480 */  addiu      $v1, $v1, %lo(D_80137480)
/* 23F68 80023368 00001025 */  or         $v0, $zero, $zero
.L8002336C:
/* 23F6C 8002336C 0002C040 */  sll        $t8, $v0, 1
/* 23F70 80023370 24420001 */  addiu      $v0, $v0, 1
/* 23F74 80023374 304EFFFF */  andi       $t6, $v0, 0xffff
/* 23F78 80023378 29C10008 */  slti       $at, $t6, 8
/* 23F7C 8002337C 0078C821 */  addu       $t9, $v1, $t8
/* 23F80 80023380 01C01025 */  or         $v0, $t6, $zero
/* 23F84 80023384 1420FFF9 */  bnez       $at, .L8002336C
/* 23F88 80023388 A7200000 */   sh        $zero, ($t9)
/* 23F8C 8002338C 3018FFFF */  andi       $t8, $zero, 0xffff
/* 23F90 80023390 3C068013 */  lui        $a2, 0x8013
/* 23F94 80023394 3C07800D */  lui        $a3, 0x800d
/* 23F98 80023398 3C08800C */  lui        $t0, 0x800c
/* 23F9C 8002339C 3C09800D */  lui        $t1, 0x800d
/* 23FA0 800233A0 3C0B8013 */  lui        $t3, 0x8013
/* 23FA4 800233A4 3C0C800C */  lui        $t4, %hi(D_800BE6FC)
/* 23FA8 800233A8 3C0D800C */  lui        $t5, %hi(D_800BE58C)
/* 23FAC 800233AC 3C1F800C */  lui        $ra, %hi(D_800BE588)
/* 23FB0 800233B0 27FFE588 */  addiu      $ra, $ra, %lo(D_800BE588)
/* 23FB4 800233B4 25ADE58C */  addiu      $t5, $t5, %lo(D_800BE58C)
/* 23FB8 800233B8 258CE6FC */  addiu      $t4, $t4, %lo(D_800BE6FC)
/* 23FBC 800233BC 256B7D90 */  addiu      $t3, $t3, 0x7d90
/* 23FC0 800233C0 2529A230 */  addiu      $t1, $t1, -0x5dd0
/* 23FC4 800233C4 2508E5F4 */  addiu      $t0, $t0, -0x1a0c
/* 23FC8 800233C8 24E75820 */  addiu      $a3, $a3, 0x5820
/* 23FCC 800233CC 24C673E0 */  addiu      $a2, $a2, 0x73e0
/* 23FD0 800233D0 ACC00078 */  sw         $zero, 0x78($a2)
/* 23FD4 800233D4 A4E00000 */  sh         $zero, ($a3)
/* 23FD8 800233D8 AD180000 */  sw         $t8, ($t0)
/* 23FDC 800233DC A5380000 */  sh         $t8, ($t1)
/* 23FE0 800233E0 A5780000 */  sh         $t8, ($t3)
/* 23FE4 800233E4 A5980000 */  sh         $t8, ($t4)
/* 23FE8 800233E8 A5B80000 */  sh         $t8, ($t5)
/* 23FEC 800233EC A7F80000 */  sh         $t8, ($ra)
/* 23FF0 800233F0 A4B800D0 */  sh         $t8, 0xd0($a1)
/* 23FF4 800233F4 3319FFFF */  andi       $t9, $t8, 0xffff
/* 23FF8 800233F8 3C01800C */  lui        $at, %hi(D_800BE564)
/* 23FFC 800233FC AC39E564 */  sw         $t9, %lo(D_800BE564)($at)
/* 24000 80023400 3C0E800C */  lui        $t6, %hi(D_800BE564)
/* 24004 80023404 8DCEE564 */  lw         $t6, %lo(D_800BE564)($t6)
/* 24008 80023408 3C01800C */  lui        $at, %hi(D_800BE560)
/* 2400C 8002340C AC2EE560 */  sw         $t6, %lo(D_800BE560)($at)
/* 24010 80023410 3C01800C */  lui        $at, %hi(D_800BE55C)
/* 24014 80023414 AC2EE55C */  sw         $t6, %lo(D_800BE55C)($at)
/* 24018 80023418 3C01800C */  lui        $at, %hi(D_800BE558)
/* 2401C 8002341C AC2EE558 */  sw         $t6, %lo(D_800BE558)($at)
/* 24020 80023420 3C01800C */  lui        $at, %hi(D_800BE554)
/* 24024 80023424 AC2EE554 */  sw         $t6, %lo(D_800BE554)($at)
/* 24028 80023428 3C01800C */  lui        $at, %hi(D_800BE550)
/* 2402C 8002342C AC2EE550 */  sw         $t6, %lo(D_800BE550)($at)
/* 24030 80023430 3C01800C */  lui        $at, %hi(D_800BE618)
/* 24034 80023434 AC2EE618 */  sw         $t6, %lo(D_800BE618)($at)
/* 24038 80023438 3C01800C */  lui        $at, %hi(D_800BE614)
/* 2403C 8002343C AC2EE614 */  sw         $t6, %lo(D_800BE614)($at)
/* 24040 80023440 3C01800C */  lui        $at, %hi(D_800BE610)
/* 24044 80023444 AC2EE610 */  sw         $t6, %lo(D_800BE610)($at)
/* 24048 80023448 3C01800C */  lui        $at, %hi(D_800BE73C)
/* 2404C 8002344C AC2EE73C */  sw         $t6, %lo(D_800BE73C)($at)
/* 24050 80023450 3C01800C */  lui        $at, %hi(D_800BE5F0)
/* 24054 80023454 3C0F800C */  lui        $t7, %hi(D_800BE5F0)
/* 24058 80023458 A42EE5F0 */  sh         $t6, %lo(D_800BE5F0)($at)
/* 2405C 8002345C 85EFE5F0 */  lh         $t7, %lo(D_800BE5F0)($t7)
/* 24060 80023460 3C01800C */  lui        $at, %hi(D_800BE5EC)
/* 24064 80023464 3C18800C */  lui        $t8, %hi(D_800BE5EC)
/* 24068 80023468 AC2FE5EC */  sw         $t7, %lo(D_800BE5EC)($at)
/* 2406C 8002346C 8F18E5EC */  lw         $t8, %lo(D_800BE5EC)($t8)
/* 24070 80023470 3C01800C */  lui        $at, %hi(D_800BE5E8)
/* 24074 80023474 3C19800C */  lui        $t9, %hi(D_800BE5E8)
/* 24078 80023478 AC38E5E8 */  sw         $t8, %lo(D_800BE5E8)($at)
/* 2407C 8002347C 8F39E5E8 */  lw         $t9, %lo(D_800BE5E8)($t9)
/* 24080 80023480 3C01800C */  lui        $at, %hi(D_800BE5DC)
/* 24084 80023484 3C0E800C */  lui        $t6, %hi(D_800BE5DC)
/* 24088 80023488 AC39E5DC */  sw         $t9, %lo(D_800BE5DC)($at)
/* 2408C 8002348C 8DCEE5DC */  lw         $t6, %lo(D_800BE5DC)($t6)
/* 24090 80023490 3C01800C */  lui        $at, %hi(D_800BE5D8)
/* 24094 80023494 3C02800C */  lui        $v0, %hi(D_800BE5D8)
/* 24098 80023498 AC2EE5D8 */  sw         $t6, %lo(D_800BE5D8)($at)
/* 2409C 8002349C 8C42E5D8 */  lw         $v0, %lo(D_800BE5D8)($v0)
/* 240A0 800234A0 3C01800C */  lui        $at, %hi(D_800BE6A4)
/* 240A4 800234A4 ACA2008C */  sw         $v0, 0x8c($a1)
/* 240A8 800234A8 ACA20088 */  sw         $v0, 0x88($a1)
/* 240AC 800234AC 3C0F800C */  lui        $t7, %hi(D_800BE6A4)
/* 240B0 800234B0 A422E6A4 */  sh         $v0, %lo(D_800BE6A4)($at)
/* 240B4 800234B4 95F8E6A4 */  lhu        $t8, %lo(D_800BE6A4)($t7)
/* 240B8 800234B8 3C01800C */  lui        $at, %hi(D_800BE590)
/* 240BC 800234BC A438E590 */  sh         $t8, %lo(D_800BE590)($at)
/* 240C0 800234C0 3C01800C */  lui        $at, %hi(D_800BE594)
/* 240C4 800234C4 A438E594 */  sh         $t8, %lo(D_800BE594)($at)
/* 240C8 800234C8 3C018018 */  lui        $at, %hi(D_801782B8)
/* 240CC 800234CC A43882B8 */  sh         $t8, %lo(D_801782B8)($at)
/* 240D0 800234D0 3C01800C */  lui        $at, %hi(D_800BE4E0)
/* 240D4 800234D4 A438E4E0 */  sh         $t8, %lo(D_800BE4E0)($at)
/* 240D8 800234D8 3C01800C */  lui        $at, %hi(D_800BE4E4)
/* 240DC 800234DC A438E4E4 */  sh         $t8, %lo(D_800BE4E4)($at)
/* 240E0 800234E0 3C018013 */  lui        $at, %hi(D_8013747C)
/* 240E4 800234E4 A438747C */  sh         $t8, %lo(D_8013747C)($at)
/* 240E8 800234E8 3C01800C */  lui        $at, %hi(D_800BE674)
/* 240EC 800234EC A438E674 */  sh         $t8, %lo(D_800BE674)($at)
/* 240F0 800234F0 3C01800C */  lui        $at, %hi(D_800BE66C)
/* 240F4 800234F4 A438E66C */  sh         $t8, %lo(D_800BE66C)($at)
/* 240F8 800234F8 3C01800C */  lui        $at, %hi(gGamePaused)
/* 240FC 800234FC 00002025 */  or         $a0, $zero, $zero
/* 24100 80023500 0C010B61 */  jal        func_80042D84
/* 24104 80023504 A438E4E8 */   sh        $t8, %lo(gGamePaused)($at)
/* 24108 80023508 0C004284 */  jal        func_80010A10
/* 2410C 8002350C 00000000 */   nop
/* 24110 80023510 0C008C2E */  jal        func_800230B8
/* 24114 80023514 00000000 */   nop
/* 24118 80023518 0C008C5A */  jal        func_80023168
/* 2411C 8002351C 00000000 */   nop
/* 24120 80023520 0C0048A2 */  jal        func_80012288
/* 24124 80023524 00000000 */   nop
/* 24128 80023528 240A0001 */  addiu      $t2, $zero, 1
/* 2412C 8002352C 3C01800C */  lui        $at, %hi(D_800BE5D4)
/* 24130 80023530 A42AE5D4 */  sh         $t2, %lo(D_800BE5D4)($at)
/* 24134 80023534 0C023138 */  jal        func_8008C4E0
/* 24138 80023538 24040041 */   addiu     $a0, $zero, 0x41
/* 2413C 8002353C 0C010E46 */  jal        func_80043918
/* 24140 80023540 00000000 */   nop
/* 24144 80023544 3C0E800C */  lui        $t6, %hi(gGameState)
/* 24148 80023548 95CEE4F0 */  lhu        $t6, %lo(gGameState)($t6)
/* 2414C 8002354C 24010005 */  addiu      $at, $zero, 5
/* 24150 80023550 15C10002 */  bne        $t6, $at, .L8002355C
/* 24154 80023554 3C01800D */   lui       $at, %hi(D_800D2908)
/* 24158 80023558 A4202908 */  sh         $zero, %lo(D_800D2908)($at)
.L8002355C:
/* 2415C 8002355C 0C00970E */  jal        func_80025C38
/* 24160 80023560 00000000 */   nop
/* 24164 80023564 3C018018 */  lui        $at, %hi(D_801781E0)
/* 24168 80023568 A42081E0 */  sh         $zero, %lo(D_801781E0)($at)
/* 2416C 8002356C 3C04800C */  lui        $a0, %hi(D_800BE5D0)
/* 24170 80023570 3C01800D */  lui        $at, %hi(D_800D294C)
/* 24174 80023574 9484E5D0 */  lhu        $a0, %lo(D_800BE5D0)($a0)
/* 24178 80023578 0C004308 */  jal        func_80010C20
/* 2417C 8002357C A420294C */   sh        $zero, %lo(D_800D294C)($at)
/* 24180 80023580 0C00840D */  jal        GamePlay_Tick
/* 24184 80023584 00000000 */   nop
/* 24188 80023588 0C011F33 */  jal        func_80047CCC
/* 2418C 8002358C 00000000 */   nop
/* 24190 80023590 0C011F26 */  jal        func_80047C98
/* 24194 80023594 00000000 */   nop
/* 24198 80023598 0C007718 */  jal        func_8001DC60
/* 2419C 8002359C 00000000 */   nop
/* 241A0 800235A0 3C188017 */  lui        $t8, %hi(gYellowGemBitfeild)
/* 241A4 800235A4 3C198017 */  lui        $t9, %hi(gYellowGemBitfeild+0x4)
/* 241A8 800235A8 8F391B14 */  lw         $t9, %lo(gYellowGemBitfeild+0x4)($t9)
/* 241AC 800235AC 8F181B10 */  lw         $t8, %lo(gYellowGemBitfeild)($t8)
/* 241B0 800235B0 3C018018 */  lui        $at, %hi(YellowGemBitfeildTemp+0x4)
/* 241B4 800235B4 AC3981F4 */  sw         $t9, %lo(YellowGemBitfeildTemp+0x4)($at)
/* 241B8 800235B8 AC3881F0 */  sw         $t8, -0x7e10($at)
/* 241BC 800235BC 3C01800C */  lui        $at, %hi(gGameState)
/* 241C0 800235C0 240F0006 */  addiu      $t7, $zero, 6
/* 241C4 800235C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 241C8 800235C8 A42FE4F0 */  sh         $t7, %lo(gGameState)($at)
/* 241CC 800235CC 3C01800C */  lui        $at, %hi(gGameSubState)
/* 241D0 800235D0 A420E4F4 */  sh         $zero, %lo(gGameSubState)($at)
/* 241D4 800235D4 03E00008 */  jr         $ra
/* 241D8 800235D8 27BD0018 */   addiu     $sp, $sp, 0x18
/* 241DC 800235DC 00000000 */  nop
