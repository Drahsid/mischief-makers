glabel func_800AA5D8
/* AB1D8 800AA5D8 27BDFF90 */  addiu      $sp, $sp, -0x70
/* AB1DC 800AA5DC AFBF001C */  sw         $ra, 0x1c($sp)
/* AB1E0 800AA5E0 AFB00018 */  sw         $s0, 0x18($sp)
/* AB1E4 800AA5E4 0C02A45C */  jal        func_800A9170
/* AB1E8 800AA5E8 3C040408 */   lui       $a0, 0x408
/* AB1EC 800AA5EC 00408025 */  or         $s0, $v0, $zero
/* AB1F0 800AA5F0 2605FFFC */  addiu      $a1, $s0, -4
/* AB1F4 800AA5F4 0C02A448 */  jal        func_800A9120
/* AB1F8 800AA5F8 3C040408 */   lui       $a0, 0x408
/* AB1FC 800AA5FC 24040001 */  addiu      $a0, $zero, 1
/* AB200 800AA600 240503E8 */  addiu      $a1, $zero, 0x3e8
/* AB204 800AA604 0C02DA89 */  jal        func_800B6A24
/* AB208 800AA608 27A60024 */   addiu     $a2, $sp, 0x24
/* AB20C 800AA60C 0C02A923 */  jal        func_800AA48C
/* AB210 800AA610 27A40024 */   addiu     $a0, $sp, 0x24
/* AB214 800AA614 27A40024 */  addiu      $a0, $sp, 0x24
/* AB218 800AA618 2405004C */  addiu      $a1, $zero, 0x4c
/* AB21C 800AA61C 0C026833 */  jal        func_8009A0CC
/* AB220 800AA620 24060002 */   addiu     $a2, $zero, 2
/* AB224 800AA624 240E0001 */  addiu      $t6, $zero, 1
/* AB228 800AA628 3C018019 */  lui        $at, %hi(D_8018A390)
/* AB22C 800AA62C A02EA390 */  sb         $t6, %lo(D_8018A390)($at)
/* AB230 800AA630 10000001 */  b          .L800AA638
/* AB234 800AA634 00000000 */   nop
.L800AA638:
/* AB238 800AA638 8FBF001C */  lw         $ra, 0x1c($sp)
/* AB23C 800AA63C 8FB00018 */  lw         $s0, 0x18($sp)
/* AB240 800AA640 27BD0070 */  addiu      $sp, $sp, 0x70
/* AB244 800AA644 03E00008 */  jr         $ra
/* AB248 800AA648 00000000 */   nop
