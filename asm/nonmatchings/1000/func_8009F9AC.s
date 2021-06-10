glabel func_8009F9AC
/* A05AC 8009F9AC 27BDFFF8 */  addiu      $sp, $sp, -8
/* A05B0 8009F9B0 8CAE0000 */  lw         $t6, ($a1)
/* A05B4 8009F9B4 AC8E0004 */  sw         $t6, 4($a0)
/* A05B8 8009F9B8 8CAF0004 */  lw         $t7, 4($a1)
/* A05BC 8009F9BC AC8F000C */  sw         $t7, 0xc($a0)
/* A05C0 8009F9C0 8CB80008 */  lw         $t8, 8($a1)
/* A05C4 8009F9C4 AC980010 */  sw         $t8, 0x10($a0)
/* A05C8 8009F9C8 AFA00004 */  sw         $zero, 4($sp)
.L8009F9CC:
/* A05CC 8009F9CC 8FB90004 */  lw         $t9, 4($sp)
/* A05D0 8009F9D0 00194080 */  sll        $t0, $t9, 2
/* A05D4 8009F9D4 00A84821 */  addu       $t1, $a1, $t0
/* A05D8 8009F9D8 8D2A000C */  lw         $t2, 0xc($t1)
/* A05DC 8009F9DC 00885821 */  addu       $t3, $a0, $t0
/* A05E0 8009F9E0 AD6A0018 */  sw         $t2, 0x18($t3)
/* A05E4 8009F9E4 8FAC0004 */  lw         $t4, 4($sp)
/* A05E8 8009F9E8 000C6880 */  sll        $t5, $t4, 2
/* A05EC 8009F9EC 00AD7021 */  addu       $t6, $a1, $t5
/* A05F0 8009F9F0 8DCF004C */  lw         $t7, 0x4c($t6)
/* A05F4 8009F9F4 008DC021 */  addu       $t8, $a0, $t5
/* A05F8 8009F9F8 AF0F0058 */  sw         $t7, 0x58($t8)
/* A05FC 8009F9FC 8FB90004 */  lw         $t9, 4($sp)
/* A0600 8009FA00 00B94821 */  addu       $t1, $a1, $t9
/* A0604 8009FA04 9128008C */  lbu        $t0, 0x8c($t1)
/* A0608 8009FA08 00995021 */  addu       $t2, $a0, $t9
/* A060C 8009FA0C A1480098 */  sb         $t0, 0x98($t2)
/* A0610 8009FA10 8FAB0004 */  lw         $t3, 4($sp)
/* A0614 8009FA14 00AB6021 */  addu       $t4, $a1, $t3
/* A0618 8009FA18 918E009C */  lbu        $t6, 0x9c($t4)
/* A061C 8009FA1C 008B6821 */  addu       $t5, $a0, $t3
/* A0620 8009FA20 A1AE00A8 */  sb         $t6, 0xa8($t5)
/* A0624 8009FA24 8FAF0004 */  lw         $t7, 4($sp)
/* A0628 8009FA28 000FC080 */  sll        $t8, $t7, 2
/* A062C 8009FA2C 00B84821 */  addu       $t1, $a1, $t8
/* A0630 8009FA30 8D3900AC */  lw         $t9, 0xac($t1)
/* A0634 8009FA34 00984021 */  addu       $t0, $a0, $t8
/* A0638 8009FA38 AD1900B8 */  sw         $t9, 0xb8($t0)
/* A063C 8009FA3C 8FAA0004 */  lw         $t2, 4($sp)
/* A0640 8009FA40 254C0001 */  addiu      $t4, $t2, 1
/* A0644 8009FA44 29810010 */  slti       $at, $t4, 0x10
/* A0648 8009FA48 1420FFE0 */  bnez       $at, .L8009F9CC
/* A064C 8009FA4C AFAC0004 */   sw        $t4, 4($sp)
/* A0650 8009FA50 10000001 */  b          .L8009FA58
/* A0654 8009FA54 00000000 */   nop
.L8009FA58:
/* A0658 8009FA58 03E00008 */  jr         $ra
/* A065C 8009FA5C 27BD0008 */   addiu     $sp, $sp, 8
