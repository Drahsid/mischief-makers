glabel func_800122B0
/* 12EB0 800122B0 3C0E800C */  lui        $t6, %hi(D_800BE5D4)
/* 12EB4 800122B4 95CEE5D4 */  lhu        $t6, %lo(D_800BE5D4)($t6)
/* 12EB8 800122B8 2404003F */  addiu      $a0, $zero, 0x3f
/* 12EBC 800122BC 11C0000D */  beqz       $t6, .L800122F4
/* 12EC0 800122C0 3C098012 */   lui       $t1, 0x8012
/* 12EC4 800122C4 3C06800C */  lui        $a2, %hi(gButtonHold)
/* 12EC8 800122C8 3C07800C */  lui        $a3, %hi(gButtonPress)
/* 12ECC 800122CC 3C02800C */  lui        $v0, %hi(gButton_Start)
/* 12ED0 800122D0 9442E500 */  lhu        $v0, %lo(gButton_Start)($v0)
/* 12ED4 800122D4 24E7E4FC */  addiu      $a3, $a3, %lo(gButtonPress)
/* 12ED8 800122D8 24C6E4F8 */  addiu      $a2, $a2, %lo(gButtonHold)
/* 12EDC 800122DC 94CF0000 */  lhu        $t7, ($a2)
/* 12EE0 800122E0 94F90000 */  lhu        $t9, ($a3)
/* 12EE4 800122E4 01E2C024 */  and        $t8, $t7, $v0
/* 12EE8 800122E8 03225024 */  and        $t2, $t9, $v0
/* 12EEC 800122EC A4D80000 */  sh         $t8, ($a2)
/* 12EF0 800122F0 A4EA0000 */  sh         $t2, ($a3)
.L800122F4:
/* 12EF4 800122F4 3C06800C */  lui        $a2, %hi(gButtonHold)
/* 12EF8 800122F8 3C07800C */  lui        $a3, %hi(gButtonPress)
/* 12EFC 800122FC 3C088012 */  lui        $t0, %hi(D_801225F0)
/* 12F00 80012300 24E7E4FC */  addiu      $a3, $a3, %lo(gButtonPress)
/* 12F04 80012304 24C6E4F8 */  addiu      $a2, $a2, %lo(gButtonHold)
/* 12F08 80012308 250825F0 */  addiu      $t0, $t0, %lo(D_801225F0)
/* 12F0C 8001230C 2402003F */  addiu      $v0, $zero, 0x3f
/* 12F10 80012310 2529DD70 */  addiu      $t1, $t1, -0x2290
.L80012314:
/* 12F14 80012314 00042840 */  sll        $a1, $a0, 1
/* 12F18 80012318 01055821 */  addu       $t3, $t0, $a1
/* 12F1C 8001231C 956CFFFE */  lhu        $t4, -2($t3)
/* 12F20 80012320 00021840 */  sll        $v1, $v0, 1
/* 12F24 80012324 01036821 */  addu       $t5, $t0, $v1
/* 12F28 80012328 01257021 */  addu       $t6, $t1, $a1
/* 12F2C 8001232C A5AC0000 */  sh         $t4, ($t5)
/* 12F30 80012330 95CFFFFE */  lhu        $t7, -2($t6)
/* 12F34 80012334 2442FFFF */  addiu      $v0, $v0, -1
/* 12F38 80012338 3044FFFF */  andi       $a0, $v0, 0xffff
/* 12F3C 8001233C 0123C021 */  addu       $t8, $t1, $v1
/* 12F40 80012340 00801025 */  or         $v0, $a0, $zero
/* 12F44 80012344 1C80FFF3 */  bgtz       $a0, .L80012314
/* 12F48 80012348 A70F0000 */   sh        $t7, ($t8)
/* 12F4C 8001234C 3C0A800C */  lui        $t2, %hi(gButton_DLeft)
/* 12F50 80012350 3C0B800C */  lui        $t3, %hi(gButton_DRight)
/* 12F54 80012354 956BE510 */  lhu        $t3, %lo(gButton_DRight)($t3)
/* 12F58 80012358 954AE50C */  lhu        $t2, %lo(gButton_DLeft)($t2)
/* 12F5C 8001235C 3C0D800C */  lui        $t5, %hi(gButton_DUp)
/* 12F60 80012360 95ADE504 */  lhu        $t5, %lo(gButton_DUp)($t5)
/* 12F64 80012364 3C0F800C */  lui        $t7, %hi(gButton_DDown)
/* 12F68 80012368 014B6021 */  addu       $t4, $t2, $t3
/* 12F6C 8001236C 95EFE508 */  lhu        $t7, %lo(gButton_DDown)($t7)
/* 12F70 80012370 3C19800C */  lui        $t9, %hi(gButton_B)
/* 12F74 80012374 9739E514 */  lhu        $t9, %lo(gButton_B)($t9)
/* 12F78 80012378 3C0B800C */  lui        $t3, %hi(gButton_A)
/* 12F7C 8001237C 018D7021 */  addu       $t6, $t4, $t5
/* 12F80 80012380 956BE518 */  lhu        $t3, %lo(gButton_A)($t3)
/* 12F84 80012384 01CFC021 */  addu       $t8, $t6, $t7
/* 12F88 80012388 03195021 */  addu       $t2, $t8, $t9
/* 12F8C 8001238C 94CC0000 */  lhu        $t4, ($a2)
/* 12F90 80012390 94EE0000 */  lhu        $t6, ($a3)
/* 12F94 80012394 014B1021 */  addu       $v0, $t2, $t3
/* 12F98 80012398 01826824 */  and        $t5, $t4, $v0
/* 12F9C 8001239C 01C27824 */  and        $t7, $t6, $v0
/* 12FA0 800123A0 A50D0000 */  sh         $t5, ($t0)
/* 12FA4 800123A4 03E00008 */  jr         $ra
/* 12FA8 800123A8 A52F0000 */   sh        $t7, ($t1)
