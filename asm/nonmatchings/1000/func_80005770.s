glabel func_80005770
/* 6370 80005770 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6374 80005774 AFB00018 */  sw         $s0, 0x18($sp)
/* 6378 80005778 3C108013 */  lui        $s0, %hi(D_8012ADA0)
/* 637C 8000577C 2610ADA0 */  addiu      $s0, $s0, %lo(D_8012ADA0)
/* 6380 80005780 AFBF001C */  sw         $ra, 0x1c($sp)
/* 6384 80005784 0C02917C */  jal        func_800A45F0
/* 6388 80005788 02002025 */   or        $a0, $s0, $zero
/* 638C 8000578C 3C068017 */  lui        $a2, %hi(D_80171AA0)
/* 6390 80005790 24C61AA0 */  addiu      $a2, $a2, %lo(D_80171AA0)
/* 6394 80005794 02002025 */  or         $a0, $s0, $zero
/* 6398 80005798 24050002 */  addiu      $a1, $zero, 2
/* 639C 8000579C 0C0291F0 */  jal        func_800A47C0
/* 63A0 800057A0 24070048 */   addiu     $a3, $zero, 0x48
/* 63A4 800057A4 3C0E800C */  lui        $t6, %hi(D_800C5008)
/* 63A8 800057A8 91CE5008 */  lbu        $t6, %lo(D_800C5008)($t6)
/* 63AC 800057AC 02002025 */  or         $a0, $s0, $zero
/* 63B0 800057B0 11C0000F */  beqz       $t6, .L800057F0
/* 63B4 800057B4 2405000C */   addiu     $a1, $zero, 0xc
/* 63B8 800057B8 3C068017 */  lui        $a2, %hi(D_80171AE8)
/* 63BC 800057BC 24C61AE8 */  addiu      $a2, $a2, %lo(D_80171AE8)
/* 63C0 800057C0 02002025 */  or         $a0, $s0, $zero
/* 63C4 800057C4 24050024 */  addiu      $a1, $zero, 0x24
/* 63C8 800057C8 0C0291F0 */  jal        func_800A47C0
/* 63CC 800057CC 24070032 */   addiu     $a3, $zero, 0x32
/* 63D0 800057D0 3C06800C */  lui        $a2, %hi(D_800C4F28)
/* 63D4 800057D4 24C64F28 */  addiu      $a2, $a2, %lo(D_800C4F28)
/* 63D8 800057D8 02002025 */  or         $a0, $s0, $zero
/* 63DC 800057DC 2405002C */  addiu      $a1, $zero, 0x2c
/* 63E0 800057E0 0C0291F0 */  jal        func_800A47C0
/* 63E4 800057E4 24070080 */   addiu     $a3, $zero, 0x80
/* 63E8 800057E8 1000000C */  b          .L8000581C
/* 63EC 800057EC 8FBF001C */   lw        $ra, 0x1c($sp)
.L800057F0:
/* 63F0 800057F0 3C068017 */  lui        $a2, %hi(D_80171AE8)
/* 63F4 800057F4 24C61AE8 */  addiu      $a2, $a2, %lo(D_80171AE8)
/* 63F8 800057F8 0C0291F0 */  jal        func_800A47C0
/* 63FC 800057FC 24070032 */   addiu     $a3, $zero, 0x32
/* 6400 80005800 3C06800C */  lui        $a2, %hi(D_800C4F28)
/* 6404 80005804 24C64F28 */  addiu      $a2, $a2, %lo(D_800C4F28)
/* 6408 80005808 02002025 */  or         $a0, $s0, $zero
/* 640C 8000580C 24050014 */  addiu      $a1, $zero, 0x14
/* 6410 80005810 0C0291F0 */  jal        func_800A47C0
/* 6414 80005814 24070080 */   addiu     $a3, $zero, 0x80
/* 6418 80005818 8FBF001C */  lw         $ra, 0x1c($sp)
.L8000581C:
/* 641C 8000581C 8FB00018 */  lw         $s0, 0x18($sp)
/* 6420 80005820 03E00008 */  jr         $ra
/* 6424 80005824 27BD0020 */   addiu     $sp, $sp, 0x20
