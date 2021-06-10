glabel func_800B47FC
/* B53FC 800B47FC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B5400 800B4800 AFBF0014 */  sw         $ra, 0x14($sp)
/* B5404 800B4804 AFA40028 */  sw         $a0, 0x28($sp)
/* B5408 800B4808 AFA00024 */  sw         $zero, 0x24($sp)
.L800B480C:
/* B540C 800B480C 8FAE0024 */  lw         $t6, 0x24($sp)
/* B5410 800B4810 3C18800F */  lui        $t8, %hi(D_800EAA90)
/* B5414 800B4814 8F18AA90 */  lw         $t8, %lo(D_800EAA90)($t8)
/* B5418 800B4818 03AE7821 */  addu       $t7, $sp, $t6
/* B541C 800B481C 91EF0029 */  lbu        $t7, 0x29($t7)
/* B5420 800B4820 3C19800F */  lui        $t9, %hi(D_800EAA90)
/* B5424 800B4824 8F39AA90 */  lw         $t9, %lo(D_800EAA90)($t9)
/* B5428 800B4828 3C018019 */  lui        $at, %hi(D_8018A700)
/* B542C 800B482C 00380821 */  addu       $at, $at, $t8
/* B5430 800B4830 A02FA700 */  sb         $t7, %lo(D_8018A700)($at)
/* B5434 800B4834 3C01800F */  lui        $at, %hi(D_800EAA90)
/* B5438 800B4838 27280001 */  addiu      $t0, $t9, 1
/* B543C 800B483C AC28AA90 */  sw         $t0, %lo(D_800EAA90)($at)
/* B5440 800B4840 8FA90024 */  lw         $t1, 0x24($sp)
/* B5444 800B4844 252A0001 */  addiu      $t2, $t1, 1
/* B5448 800B4848 2D410003 */  sltiu      $at, $t2, 3
/* B544C 800B484C 1420FFEF */  bnez       $at, .L800B480C
/* B5450 800B4850 AFAA0024 */   sw        $t2, 0x24($sp)
/* B5454 800B4854 3C0B8019 */  lui        $t3, %hi(D_8018A700)
/* B5458 800B4858 256BA700 */  addiu      $t3, $t3, %lo(D_8018A700)
/* B545C 800B485C 916C0000 */  lbu        $t4, ($t3)
/* B5460 800B4860 24010002 */  addiu      $at, $zero, 2
/* B5464 800B4864 15810009 */  bne        $t4, $at, .L800B488C
/* B5468 800B4868 00000000 */   nop
/* B546C 800B486C 3C04800F */  lui        $a0, %hi(D_800EA610)
/* B5470 800B4870 8C84A610 */  lw         $a0, %lo(D_800EA610)($a0)
/* B5474 800B4874 24050190 */  addiu      $a1, $zero, 0x190
/* B5478 800B4878 0C02D1C5 */  jal        func_800B4714
/* B547C 800B487C 24840020 */   addiu     $a0, $a0, 0x20
/* B5480 800B4880 3C01800F */  lui        $at, %hi(D_800EAA90)
/* B5484 800B4884 1000001B */  b          .L800B48F4
/* B5488 800B4888 AC20AA90 */   sw        $zero, %lo(D_800EAA90)($at)
.L800B488C:
/* B548C 800B488C 3C0D800F */  lui        $t5, %hi(D_800EAA90)
/* B5490 800B4890 8DADAA90 */  lw         $t5, %lo(D_800EAA90)($t5)
/* B5494 800B4894 2DA10009 */  sltiu      $at, $t5, 9
/* B5498 800B4898 14200016 */  bnez       $at, .L800B48F4
/* B549C 800B489C 00000000 */   nop
/* B54A0 800B48A0 3C0E8019 */  lui        $t6, %hi(D_8018A700)
/* B54A4 800B48A4 25CEA700 */  addiu      $t6, $t6, %lo(D_8018A700)
/* B54A8 800B48A8 91CF0000 */  lbu        $t7, ($t6)
/* B54AC 800B48AC 24010001 */  addiu      $at, $zero, 1
/* B54B0 800B48B0 15E10010 */  bne        $t7, $at, .L800B48F4
/* B54B4 800B48B4 00000000 */   nop
/* B54B8 800B48B8 3C048019 */  lui        $a0, %hi(D_8018A700)
/* B54BC 800B48BC 2484A700 */  addiu      $a0, $a0, %lo(D_8018A700)
/* B54C0 800B48C0 0C02D16C */  jal        func_800B45B0
/* B54C4 800B48C4 24840001 */   addiu     $a0, $a0, 1
/* B54C8 800B48C8 AFA2001C */  sw         $v0, 0x1c($sp)
/* B54CC 800B48CC 3C048019 */  lui        $a0, %hi(D_8018A700)
/* B54D0 800B48D0 2484A700 */  addiu      $a0, $a0, %lo(D_8018A700)
/* B54D4 800B48D4 0C02D16C */  jal        func_800B45B0
/* B54D8 800B48D8 24840005 */   addiu     $a0, $a0, 5
/* B54DC 800B48DC AFA20020 */  sw         $v0, 0x20($sp)
/* B54E0 800B48E0 8FA4001C */  lw         $a0, 0x1c($sp)
/* B54E4 800B48E4 0C02D1C5 */  jal        func_800B4714
/* B54E8 800B48E8 8FA50020 */   lw        $a1, 0x20($sp)
/* B54EC 800B48EC 3C01800F */  lui        $at, %hi(D_800EAA90)
/* B54F0 800B48F0 AC20AA90 */  sw         $zero, %lo(D_800EAA90)($at)
.L800B48F4:
/* B54F4 800B48F4 10000001 */  b          .L800B48FC
/* B54F8 800B48F8 00000000 */   nop
.L800B48FC:
/* B54FC 800B48FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* B5500 800B4900 27BD0028 */  addiu      $sp, $sp, 0x28
/* B5504 800B4904 03E00008 */  jr         $ra
/* B5508 800B4908 00000000 */   nop
/* B550C 800B490C 00000000 */  nop
