glabel func_800ADB60
/* AE760 800ADB60 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AE764 800ADB64 AFBF0014 */  sw         $ra, 0x14($sp)
/* AE768 800ADB68 AFA40020 */  sw         $a0, 0x20($sp)
/* AE76C 800ADB6C AFA50024 */  sw         $a1, 0x24($sp)
/* AE770 800ADB70 0C02B9A8 */  jal        func_800AE6A0
/* AE774 800ADB74 24040001 */   addiu     $a0, $zero, 1
/* AE778 800ADB78 AFA2001C */  sw         $v0, 0x1c($sp)
/* AE77C 800ADB7C 8FAE0020 */  lw         $t6, 0x20($sp)
/* AE780 800ADB80 8FB80024 */  lw         $t8, 0x24($sp)
/* AE784 800ADB84 8DCF0020 */  lw         $t7, 0x20($t6)
/* AE788 800ADB88 AF0F0010 */  sw         $t7, 0x10($t8)
/* AE78C 800ADB8C 8FB90020 */  lw         $t9, 0x20($sp)
/* AE790 800ADB90 8FA90024 */  lw         $t1, 0x24($sp)
/* AE794 800ADB94 8F280000 */  lw         $t0, ($t9)
/* AE798 800ADB98 AD280000 */  sw         $t0, ($t1)
/* AE79C 800ADB9C 8FAA0024 */  lw         $t2, 0x24($sp)
/* AE7A0 800ADBA0 8FAB0020 */  lw         $t3, 0x20($sp)
/* AE7A4 800ADBA4 AD6A0000 */  sw         $t2, ($t3)
/* AE7A8 800ADBA8 0C02B9A8 */  jal        func_800AE6A0
/* AE7AC 800ADBAC 8FA4001C */   lw        $a0, 0x1c($sp)
/* AE7B0 800ADBB0 10000001 */  b          .L800ADBB8
/* AE7B4 800ADBB4 00000000 */   nop
.L800ADBB8:
/* AE7B8 800ADBB8 8FBF0014 */  lw         $ra, 0x14($sp)
/* AE7BC 800ADBBC 27BD0020 */  addiu      $sp, $sp, 0x20
/* AE7C0 800ADBC0 03E00008 */  jr         $ra
/* AE7C4 800ADBC4 00000000 */   nop
/* AE7C8 800ADBC8 00000000 */  nop
/* AE7CC 800ADBCC 00000000 */  nop
