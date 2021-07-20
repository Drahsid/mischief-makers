glabel func_80043234
/* 43E34 80043234 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 43E38 80043238 AFBF001C */  sw         $ra, 0x1c($sp)
/* 43E3C 8004323C 3C04800E */  lui        $a0, 0x800e
/* 43E40 80043240 3C05800E */  lui        $a1, %hi(D_800DDA88)
/* 43E44 80043244 240EFFF6 */  addiu      $t6, $zero, -0xa
/* 43E48 80043248 240FFFF6 */  addiu      $t7, $zero, -0xa
/* 43E4C 8004324C AFAF0014 */  sw         $t7, 0x14($sp)
/* 43E50 80043250 AFAE0010 */  sw         $t6, 0x10($sp)
/* 43E54 80043254 24A5DA88 */  addiu      $a1, $a1, %lo(D_800DDA88)
/* 43E58 80043258 2484E348 */  addiu      $a0, $a0, -0x1cb8
/* 43E5C 8004325C 240600DF */  addiu      $a2, $zero, 0xdf
/* 43E60 80043260 0C00AE0B */  jal        func_8002B82C
/* 43E64 80043264 2407FFF6 */   addiu     $a3, $zero, -0xa
/* 43E68 80043268 3C04800E */  lui        $a0, 0x800e
/* 43E6C 8004326C 3C05800E */  lui        $a1, %hi(D_800DDE08)
/* 43E70 80043270 2418FFF6 */  addiu      $t8, $zero, -0xa
/* 43E74 80043274 2419FFF6 */  addiu      $t9, $zero, -0xa
/* 43E78 80043278 AFB90014 */  sw         $t9, 0x14($sp)
/* 43E7C 8004327C AFB80010 */  sw         $t8, 0x10($sp)
/* 43E80 80043280 24A5DE08 */  addiu      $a1, $a1, %lo(D_800DDE08)
/* 43E84 80043284 2484EF88 */  addiu      $a0, $a0, -0x1078
/* 43E88 80043288 240600DF */  addiu      $a2, $zero, 0xdf
/* 43E8C 8004328C 0C00AE0B */  jal        func_8002B82C
/* 43E90 80043290 2407FFF6 */   addiu     $a3, $zero, -0xa
/* 43E94 80043294 3C04800E */  lui        $a0, 0x800e
/* 43E98 80043298 3C05800E */  lui        $a1, %hi(D_800DDC48)
/* 43E9C 8004329C 2408FFF6 */  addiu      $t0, $zero, -0xa
/* 43EA0 800432A0 2409FFF6 */  addiu      $t1, $zero, -0xa
/* 43EA4 800432A4 AFA90014 */  sw         $t1, 0x14($sp)
/* 43EA8 800432A8 AFA80010 */  sw         $t0, 0x10($sp)
/* 43EAC 800432AC 24A5DC48 */  addiu      $a1, $a1, %lo(D_800DDC48)
/* 43EB0 800432B0 2484E6C8 */  addiu      $a0, $a0, -0x1938
/* 43EB4 800432B4 240600DF */  addiu      $a2, $zero, 0xdf
/* 43EB8 800432B8 0C00AE0B */  jal        func_8002B82C
/* 43EBC 800432BC 2407FFF6 */   addiu     $a3, $zero, -0xa
/* 43EC0 800432C0 3C04800E */  lui        $a0, 0x800e
/* 43EC4 800432C4 3C05800E */  lui        $a1, %hi(D_800DDFC8)
/* 43EC8 800432C8 240AFFF6 */  addiu      $t2, $zero, -0xa
/* 43ECC 800432CC 240BFFF6 */  addiu      $t3, $zero, -0xa
/* 43ED0 800432D0 AFAB0014 */  sw         $t3, 0x14($sp)
/* 43ED4 800432D4 AFAA0010 */  sw         $t2, 0x10($sp)
/* 43ED8 800432D8 24A5DFC8 */  addiu      $a1, $a1, %lo(D_800DDFC8)
/* 43EDC 800432DC 2484E888 */  addiu      $a0, $a0, -0x1778
/* 43EE0 800432E0 240600DF */  addiu      $a2, $zero, 0xdf
/* 43EE4 800432E4 0C00AE0B */  jal        func_8002B82C
/* 43EE8 800432E8 2407FFF6 */   addiu     $a3, $zero, -0xa
/* 43EEC 800432EC 3C04800E */  lui        $a0, %hi(D_800DE348)
/* 43EF0 800432F0 2484E348 */  addiu      $a0, $a0, %lo(D_800DE348)
/* 43EF4 800432F4 00802825 */  or         $a1, $a0, $zero
/* 43EF8 800432F8 240600DF */  addiu      $a2, $zero, 0xdf
/* 43EFC 800432FC 24070003 */  addiu      $a3, $zero, 3
/* 43F00 80043300 AFA00010 */  sw         $zero, 0x10($sp)
/* 43F04 80043304 0C00AE0B */  jal        func_8002B82C
/* 43F08 80043308 AFA00014 */   sw        $zero, 0x14($sp)
/* 43F0C 8004330C 3C04800E */  lui        $a0, %hi(D_800DE888)
/* 43F10 80043310 2484E888 */  addiu      $a0, $a0, %lo(D_800DE888)
/* 43F14 80043314 240C0003 */  addiu      $t4, $zero, 3
/* 43F18 80043318 240D0003 */  addiu      $t5, $zero, 3
/* 43F1C 8004331C AFAD0014 */  sw         $t5, 0x14($sp)
/* 43F20 80043320 AFAC0010 */  sw         $t4, 0x10($sp)
/* 43F24 80043324 00802825 */  or         $a1, $a0, $zero
/* 43F28 80043328 240600DF */  addiu      $a2, $zero, 0xdf
/* 43F2C 8004332C 0C00AE0B */  jal        func_8002B82C
/* 43F30 80043330 2407FFFE */   addiu     $a3, $zero, -2
/* 43F34 80043334 3C04800E */  lui        $a0, %hi(D_800DEF88)
/* 43F38 80043338 2484EF88 */  addiu      $a0, $a0, %lo(D_800DEF88)
/* 43F3C 8004333C 240E0001 */  addiu      $t6, $zero, 1
/* 43F40 80043340 240F0003 */  addiu      $t7, $zero, 3
/* 43F44 80043344 AFAF0014 */  sw         $t7, 0x14($sp)
/* 43F48 80043348 AFAE0010 */  sw         $t6, 0x10($sp)
/* 43F4C 8004334C 00802825 */  or         $a1, $a0, $zero
/* 43F50 80043350 240600DF */  addiu      $a2, $zero, 0xdf
/* 43F54 80043354 0C00AE0B */  jal        func_8002B82C
/* 43F58 80043358 2407FFFF */   addiu     $a3, $zero, -1
/* 43F5C 8004335C 3C04800E */  lui        $a0, %hi(D_800DEC08)
/* 43F60 80043360 2484EC08 */  addiu      $a0, $a0, %lo(D_800DEC08)
/* 43F64 80043364 24180002 */  addiu      $t8, $zero, 2
/* 43F68 80043368 AFB80010 */  sw         $t8, 0x10($sp)
/* 43F6C 8004336C 00802825 */  or         $a1, $a0, $zero
/* 43F70 80043370 240600DF */  addiu      $a2, $zero, 0xdf
/* 43F74 80043374 24070006 */  addiu      $a3, $zero, 6
/* 43F78 80043378 0C00AE0B */  jal        func_8002B82C
/* 43F7C 8004337C AFA00014 */   sw        $zero, 0x14($sp)
/* 43F80 80043380 3C04800E */  lui        $a0, %hi(D_800DE6C8)
/* 43F84 80043384 2484E6C8 */  addiu      $a0, $a0, %lo(D_800DE6C8)
/* 43F88 80043388 24190002 */  addiu      $t9, $zero, 2
/* 43F8C 8004338C AFB90010 */  sw         $t9, 0x10($sp)
/* 43F90 80043390 00802825 */  or         $a1, $a0, $zero
/* 43F94 80043394 240600DF */  addiu      $a2, $zero, 0xdf
/* 43F98 80043398 2407FFFF */  addiu      $a3, $zero, -1
/* 43F9C 8004339C 0C00AE0B */  jal        func_8002B82C
/* 43FA0 800433A0 AFA00014 */   sw        $zero, 0x14($sp)
/* 43FA4 800433A4 3C04800E */  lui        $a0, %hi(D_800DF308)
/* 43FA8 800433A8 2484F308 */  addiu      $a0, $a0, %lo(D_800DF308)
/* 43FAC 800433AC 2408FFFF */  addiu      $t0, $zero, -1
/* 43FB0 800433B0 24090002 */  addiu      $t1, $zero, 2
/* 43FB4 800433B4 AFA90014 */  sw         $t1, 0x14($sp)
/* 43FB8 800433B8 AFA80010 */  sw         $t0, 0x10($sp)
/* 43FBC 800433BC 00802825 */  or         $a1, $a0, $zero
/* 43FC0 800433C0 240600DF */  addiu      $a2, $zero, 0xdf
/* 43FC4 800433C4 0C00AE0B */  jal        func_8002B82C
/* 43FC8 800433C8 00003825 */   or        $a3, $zero, $zero
/* 43FCC 800433CC 3C04800E */  lui        $a0, %hi(D_800DF4C8)
/* 43FD0 800433D0 2484F4C8 */  addiu      $a0, $a0, %lo(D_800DF4C8)
/* 43FD4 800433D4 240A0002 */  addiu      $t2, $zero, 2
/* 43FD8 800433D8 240B0002 */  addiu      $t3, $zero, 2
/* 43FDC 800433DC AFAB0014 */  sw         $t3, 0x14($sp)
/* 43FE0 800433E0 AFAA0010 */  sw         $t2, 0x10($sp)
/* 43FE4 800433E4 00802825 */  or         $a1, $a0, $zero
/* 43FE8 800433E8 240600DF */  addiu      $a2, $zero, 0xdf
/* 43FEC 800433EC 0C00AE0B */  jal        func_8002B82C
/* 43FF0 800433F0 24070002 */   addiu     $a3, $zero, 2
/* 43FF4 800433F4 3C04800E */  lui        $a0, %hi(D_800DEDC8)
/* 43FF8 800433F8 2484EDC8 */  addiu      $a0, $a0, %lo(D_800DEDC8)
/* 43FFC 800433FC 240CFFFF */  addiu      $t4, $zero, -1
/* 44000 80043400 240D0002 */  addiu      $t5, $zero, 2
/* 44004 80043404 AFAD0014 */  sw         $t5, 0x14($sp)
/* 44008 80043408 AFAC0010 */  sw         $t4, 0x10($sp)
/* 4400C 8004340C 00802825 */  or         $a1, $a0, $zero
/* 44010 80043410 240600DF */  addiu      $a2, $zero, 0xdf
/* 44014 80043414 0C00AE0B */  jal        func_8002B82C
/* 44018 80043418 00003825 */   or        $a3, $zero, $zero
/* 4401C 8004341C 3C04800E */  lui        $a0, %hi(D_800DF148)
/* 44020 80043420 2484F148 */  addiu      $a0, $a0, %lo(D_800DF148)
/* 44024 80043424 240EFFFE */  addiu      $t6, $zero, -2
/* 44028 80043428 AFAE0010 */  sw         $t6, 0x10($sp)
/* 4402C 8004342C 00802825 */  or         $a1, $a0, $zero
/* 44030 80043430 240600DF */  addiu      $a2, $zero, 0xdf
/* 44034 80043434 24070002 */  addiu      $a3, $zero, 2
/* 44038 80043438 0C00AE0B */  jal        func_8002B82C
/* 4403C 8004343C AFA00014 */   sw        $zero, 0x14($sp)
/* 44040 80043440 3C04800E */  lui        $a0, %hi(D_800DEA48)
/* 44044 80043444 2484EA48 */  addiu      $a0, $a0, %lo(D_800DEA48)
/* 44048 80043448 240FFFFF */  addiu      $t7, $zero, -1
/* 4404C 8004344C 2418FFFF */  addiu      $t8, $zero, -1
/* 44050 80043450 AFB80014 */  sw         $t8, 0x14($sp)
/* 44054 80043454 AFAF0010 */  sw         $t7, 0x10($sp)
/* 44058 80043458 00802825 */  or         $a1, $a0, $zero
/* 4405C 8004345C 240600DF */  addiu      $a2, $zero, 0xdf
/* 44060 80043460 0C00AE0B */  jal        func_8002B82C
/* 44064 80043464 2407FFFF */   addiu     $a3, $zero, -1
/* 44068 80043468 8FBF001C */  lw         $ra, 0x1c($sp)
/* 4406C 8004346C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 44070 80043470 03E00008 */  jr         $ra
/* 44074 80043474 00000000 */   nop
