glabel func_80039DA0
/* 3A9A0 80039DA0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 3A9A4 80039DA4 24050198 */  addiu      $a1, $zero, 0x198
/* 3A9A8 80039DA8 01C50019 */  multu      $t6, $a1
/* 3A9AC 80039DAC 3C02800F */  lui        $v0, %hi(D_800EF510)
/* 3A9B0 80039DB0 2442F510 */  addiu      $v0, $v0, %lo(D_800EF510)
/* 3A9B4 80039DB4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3A9B8 80039DB8 AFA40018 */  sw         $a0, 0x18($sp)
/* 3A9BC 80039DBC 01C02025 */  or         $a0, $t6, $zero
/* 3A9C0 80039DC0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3A9C4 80039DC4 00007812 */  mflo       $t7
/* 3A9C8 80039DC8 004F1821 */  addu       $v1, $v0, $t7
/* 3A9CC 80039DCC 947800D8 */  lhu        $t8, 0xd8($v1)
/* 3A9D0 80039DD0 00000000 */  nop
/* 3A9D4 80039DD4 33198000 */  andi       $t9, $t8, 0x8000
/* 3A9D8 80039DD8 13200009 */  beqz       $t9, .L80039E00
/* 3A9DC 80039DDC 00000000 */   nop
/* 3A9E0 80039DE0 8C640180 */  lw         $a0, 0x180($v1)
/* 3A9E4 80039DE4 24050090 */  addiu      $a1, $zero, 0x90
/* 3A9E8 80039DE8 24840071 */  addiu      $a0, $a0, 0x71
/* 3A9EC 80039DEC 3088FFFF */  andi       $t0, $a0, 0xffff
/* 3A9F0 80039DF0 0C00A12E */  jal        func_800284B8
/* 3A9F4 80039DF4 01002025 */   or        $a0, $t0, $zero
/* 3A9F8 80039DF8 1000001D */  b          .L80039E70
/* 3A9FC 80039DFC 8FBF0014 */   lw        $ra, 0x14($sp)
.L80039E00:
/* 3AA00 80039E00 8C690150 */  lw         $t1, 0x150($v1)
/* 3AA04 80039E04 00000000 */  nop
/* 3AA08 80039E08 312A8000 */  andi       $t2, $t1, 0x8000
/* 3AA0C 80039E0C 11400011 */  beqz       $t2, .L80039E54
/* 3AA10 80039E10 00000000 */   nop
/* 3AA14 80039E14 946B018A */  lhu        $t3, 0x18a($v1)
/* 3AA18 80039E18 24010061 */  addiu      $at, $zero, 0x61
/* 3AA1C 80039E1C 01650019 */  multu      $t3, $a1
/* 3AA20 80039E20 00006012 */  mflo       $t4
/* 3AA24 80039E24 004C6821 */  addu       $t5, $v0, $t4
/* 3AA28 80039E28 95AE00D2 */  lhu        $t6, 0xd2($t5)
/* 3AA2C 80039E2C 00000000 */  nop
/* 3AA30 80039E30 15C10008 */  bne        $t6, $at, .L80039E54
/* 3AA34 80039E34 00000000 */   nop
/* 3AA38 80039E38 8C6F0180 */  lw         $t7, 0x180($v1)
/* 3AA3C 80039E3C 00000000 */  nop
/* 3AA40 80039E40 01E41021 */  addu       $v0, $t7, $a0
/* 3AA44 80039E44 24420002 */  addiu      $v0, $v0, 2
/* 3AA48 80039E48 3058FFFF */  andi       $t8, $v0, 0xffff
/* 3AA4C 80039E4C 10000007 */  b          .L80039E6C
/* 3AA50 80039E50 03001025 */   or        $v0, $t8, $zero
.L80039E54:
/* 3AA54 80039E54 8C790180 */  lw         $t9, 0x180($v1)
/* 3AA58 80039E58 00000000 */  nop
/* 3AA5C 80039E5C 03241021 */  addu       $v0, $t9, $a0
/* 3AA60 80039E60 24420001 */  addiu      $v0, $v0, 1
/* 3AA64 80039E64 3048FFFF */  andi       $t0, $v0, 0xffff
/* 3AA68 80039E68 01001025 */  or         $v0, $t0, $zero
.L80039E6C:
/* 3AA6C 80039E6C 8FBF0014 */  lw         $ra, 0x14($sp)
.L80039E70:
/* 3AA70 80039E70 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3AA74 80039E74 03E00008 */  jr         $ra
/* 3AA78 80039E78 00000000 */   nop
