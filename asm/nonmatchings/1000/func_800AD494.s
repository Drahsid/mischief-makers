glabel func_800AD494
/* AE094 800AD494 8C8E0060 */  lw         $t6, 0x60($a0)
/* AE098 800AD498 00057900 */  sll        $t7, $a1, 4
/* AE09C 800AD49C 01CFC021 */  addu       $t8, $t6, $t7
/* AE0A0 800AD4A0 A3000006 */  sb         $zero, 6($t8)
/* AE0A4 800AD4A4 8C990060 */  lw         $t9, 0x60($a0)
/* AE0A8 800AD4A8 00054100 */  sll        $t0, $a1, 4
/* AE0AC 800AD4AC 03284821 */  addu       $t1, $t9, $t0
/* AE0B0 800AD4B0 A120000A */  sb         $zero, 0xa($t1)
/* AE0B4 800AD4B4 8C8B0060 */  lw         $t3, 0x60($a0)
/* AE0B8 800AD4B8 00056100 */  sll        $t4, $a1, 4
/* AE0BC 800AD4BC 240A0040 */  addiu      $t2, $zero, 0x40
/* AE0C0 800AD4C0 016C6821 */  addu       $t5, $t3, $t4
/* AE0C4 800AD4C4 A1AA0007 */  sb         $t2, 7($t5)
/* AE0C8 800AD4C8 8C8F0060 */  lw         $t7, 0x60($a0)
/* AE0CC 800AD4CC 0005C100 */  sll        $t8, $a1, 4
/* AE0D0 800AD4D0 240E007F */  addiu      $t6, $zero, 0x7f
/* AE0D4 800AD4D4 01F8C821 */  addu       $t9, $t7, $t8
/* AE0D8 800AD4D8 A32E0009 */  sb         $t6, 9($t9)
/* AE0DC 800AD4DC 8C890060 */  lw         $t1, 0x60($a0)
/* AE0E0 800AD4E0 00055900 */  sll        $t3, $a1, 4
/* AE0E4 800AD4E4 24080005 */  addiu      $t0, $zero, 5
/* AE0E8 800AD4E8 012B6021 */  addu       $t4, $t1, $t3
/* AE0EC 800AD4EC A1880008 */  sb         $t0, 8($t4)
/* AE0F0 800AD4F0 8C8A0060 */  lw         $t2, 0x60($a0)
/* AE0F4 800AD4F4 00056900 */  sll        $t5, $a1, 4
/* AE0F8 800AD4F8 014D7821 */  addu       $t7, $t2, $t5
/* AE0FC 800AD4FC A1E0000B */  sb         $zero, 0xb($t7)
/* AE100 800AD500 8C8E0060 */  lw         $t6, 0x60($a0)
/* AE104 800AD504 0005C900 */  sll        $t9, $a1, 4
/* AE108 800AD508 241800C8 */  addiu      $t8, $zero, 0xc8
/* AE10C 800AD50C 01D94821 */  addu       $t1, $t6, $t9
/* AE110 800AD510 A5380004 */  sh         $t8, 4($t1)
/* AE114 800AD514 8C8B0060 */  lw         $t3, 0x60($a0)
/* AE118 800AD518 3C013F80 */  lui        $at, 0x3f80
/* AE11C 800AD51C 44812000 */  mtc1       $at, $f4
/* AE120 800AD520 00054100 */  sll        $t0, $a1, 4
/* AE124 800AD524 01686021 */  addu       $t4, $t3, $t0
/* AE128 800AD528 E584000C */  swc1       $f4, 0xc($t4)
/* AE12C 800AD52C 03E00008 */  jr         $ra
/* AE130 800AD530 00000000 */   nop
