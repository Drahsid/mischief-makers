glabel func_800ACF38
/* ADB38 800ACF38 27BDFFF8 */  addiu      $sp, $sp, -8
/* ADB3C 800ACF3C 908E0036 */  lbu        $t6, 0x36($a0)
/* ADB40 800ACF40 908F0033 */  lbu        $t7, 0x33($a0)
/* ADB44 800ACF44 90990030 */  lbu        $t9, 0x30($a0)
/* ADB48 800ACF48 01CF0019 */  multu      $t6, $t7
/* ADB4C 800ACF4C 0000C012 */  mflo       $t8
/* ADB50 800ACF50 00000000 */  nop
/* ADB54 800ACF54 00000000 */  nop
/* ADB58 800ACF58 03190019 */  multu      $t8, $t9
/* ADB5C 800ACF5C 00004012 */  mflo       $t0
/* ADB60 800ACF60 00084983 */  sra        $t1, $t0, 6
/* ADB64 800ACF64 AFA90004 */  sw         $t1, 4($sp)
/* ADB68 800ACF68 8C8F0020 */  lw         $t7, 0x20($a0)
/* ADB6C 800ACF6C 84B90032 */  lh         $t9, 0x32($a1)
/* ADB70 800ACF70 908B0031 */  lbu        $t3, 0x31($a0)
/* ADB74 800ACF74 91F8000D */  lbu        $t8, 0xd($t7)
/* ADB78 800ACF78 8CAA0060 */  lw         $t2, 0x60($a1)
/* ADB7C 800ACF7C 000B6100 */  sll        $t4, $t3, 4
/* ADB80 800ACF80 03190019 */  multu      $t8, $t9
/* ADB84 800ACF84 014C6821 */  addu       $t5, $t2, $t4
/* ADB88 800ACF88 91AE0009 */  lbu        $t6, 9($t5)
/* ADB8C 800ACF8C 00004012 */  mflo       $t0
/* ADB90 800ACF90 00000000 */  nop
/* ADB94 800ACF94 00000000 */  nop
/* ADB98 800ACF98 01C80019 */  multu      $t6, $t0
/* ADB9C 800ACF9C 00004812 */  mflo       $t1
/* ADBA0 800ACFA0 00095B83 */  sra        $t3, $t1, 0xe
/* ADBA4 800ACFA4 AFAB0000 */  sw         $t3, ($sp)
/* ADBA8 800ACFA8 8FAA0004 */  lw         $t2, 4($sp)
/* ADBAC 800ACFAC 8FAC0000 */  lw         $t4, ($sp)
/* ADBB0 800ACFB0 014C0019 */  multu      $t2, $t4
/* ADBB4 800ACFB4 00006812 */  mflo       $t5
/* ADBB8 800ACFB8 AFAD0004 */  sw         $t5, 4($sp)
/* ADBBC 800ACFBC 00000000 */  nop
/* ADBC0 800ACFC0 8FAF0004 */  lw         $t7, 4($sp)
/* ADBC4 800ACFC4 000FC3C2 */  srl        $t8, $t7, 0xf
/* ADBC8 800ACFC8 AFB80004 */  sw         $t8, 4($sp)
/* ADBCC 800ACFCC 10000003 */  b          .L800ACFDC
/* ADBD0 800ACFD0 87A20006 */   lh        $v0, 6($sp)
/* ADBD4 800ACFD4 10000001 */  b          .L800ACFDC
/* ADBD8 800ACFD8 00000000 */   nop
.L800ACFDC:
/* ADBDC 800ACFDC 03E00008 */  jr         $ra
/* ADBE0 800ACFE0 27BD0008 */   addiu     $sp, $sp, 8
