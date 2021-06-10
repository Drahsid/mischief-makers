glabel func_8001FEB0
/* 20AB0 8001FEB0 3C038011 */  lui        $v1, %hi(D_8010CDF0)
/* 20AB4 8001FEB4 3C058012 */  lui        $a1, %hi(D_8011CDF0)
/* 20AB8 8001FEB8 24A5CDF0 */  addiu      $a1, $a1, %lo(D_8011CDF0)
/* 20ABC 8001FEBC 2463CDF0 */  addiu      $v1, $v1, %lo(D_8010CDF0)
/* 20AC0 8001FEC0 240400F8 */  addiu      $a0, $zero, 0xf8
/* 20AC4 8001FEC4 24020034 */  addiu      $v0, $zero, 0x34
.L8001FEC8:
/* 20AC8 8001FEC8 906E0000 */  lbu        $t6, ($v1)
/* 20ACC 8001FECC 00000000 */  nop
/* 20AD0 8001FED0 144E0002 */  bne        $v0, $t6, .L8001FEDC
/* 20AD4 8001FED4 00000000 */   nop
/* 20AD8 8001FED8 A0640000 */  sb         $a0, ($v1)
.L8001FEDC:
/* 20ADC 8001FEDC 24630001 */  addiu      $v1, $v1, 1
/* 20AE0 8001FEE0 0065082B */  sltu       $at, $v1, $a1
/* 20AE4 8001FEE4 1420FFF8 */  bnez       $at, .L8001FEC8
/* 20AE8 8001FEE8 00000000 */   nop
/* 20AEC 8001FEEC 3C0F800D */  lui        $t7, %hi(D_800D2978)
/* 20AF0 8001FEF0 95EF2978 */  lhu        $t7, %lo(D_800D2978)($t7)
/* 20AF4 8001FEF4 3C18800D */  lui        $t8, %hi(D_800D2978)
/* 20AF8 8001FEF8 11E00009 */  beqz       $t7, .L8001FF20
/* 20AFC 8001FEFC 27022978 */   addiu     $v0, $t8, %lo(D_800D2978)
/* 20B00 8001FF00 3C04FFFF */  lui        $a0, 0xffff
/* 20B04 8001FF04 94430000 */  lhu        $v1, ($v0)
/* 20B08 8001FF08 34847FFF */  ori        $a0, $a0, 0x7fff
.L8001FF0C:
/* 20B0C 8001FF0C 0064C824 */  and        $t9, $v1, $a0
/* 20B10 8001FF10 94430006 */  lhu        $v1, 6($v0)
/* 20B14 8001FF14 24420006 */  addiu      $v0, $v0, 6
/* 20B18 8001FF18 1460FFFC */  bnez       $v1, .L8001FF0C
/* 20B1C 8001FF1C A459FFFA */   sh        $t9, -6($v0)
.L8001FF20:
/* 20B20 8001FF20 03E00008 */  jr         $ra
/* 20B24 8001FF24 00000000 */   nop
