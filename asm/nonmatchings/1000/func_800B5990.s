glabel func_800B5990
/* B6590 800B5990 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B6594 800B5994 AFBF0014 */  sw         $ra, 0x14($sp)
/* B6598 800B5998 AFA40020 */  sw         $a0, 0x20($sp)
/* B659C 800B599C AFA50024 */  sw         $a1, 0x24($sp)
/* B65A0 800B59A0 AFA0001C */  sw         $zero, 0x1c($sp)
/* B65A4 800B59A4 8FAE0020 */  lw         $t6, 0x20($sp)
/* B65A8 800B59A8 83A9001C */  lb         $t1, 0x1c($sp)
/* B65AC 800B59AC 000E7E80 */  sll        $t7, $t6, 0x1a
/* B65B0 800B59B0 000FC683 */  sra        $t8, $t7, 0x1a
/* B65B4 800B59B4 0018C880 */  sll        $t9, $t8, 2
/* B65B8 800B59B8 332800FC */  andi       $t0, $t9, 0xfc
/* B65BC 800B59BC 312AFF03 */  andi       $t2, $t1, 0xff03
/* B65C0 800B59C0 010A5825 */  or         $t3, $t0, $t2
/* B65C4 800B59C4 A3AB001C */  sb         $t3, 0x1c($sp)
/* B65C8 800B59C8 8FAC0024 */  lw         $t4, 0x24($sp)
/* B65CC 800B59CC 83B8001D */  lb         $t8, 0x1d($sp)
/* B65D0 800B59D0 000C6EC0 */  sll        $t5, $t4, 0x1b
/* B65D4 800B59D4 000D76C3 */  sra        $t6, $t5, 0x1b
/* B65D8 800B59D8 31CF001F */  andi       $t7, $t6, 0x1f
/* B65DC 800B59DC 3319FFE0 */  andi       $t9, $t8, 0xffe0
/* B65E0 800B59E0 01F94825 */  or         $t1, $t7, $t9
/* B65E4 800B59E4 A3A9001D */  sb         $t1, 0x1d($sp)
/* B65E8 800B59E8 3C040400 */  lui        $a0, 0x400
/* B65EC 800B59EC 34841000 */  ori        $a0, $a0, 0x1000
/* B65F0 800B59F0 0C02A448 */  jal        func_800A9120
/* B65F4 800B59F4 8FA5001C */   lw        $a1, 0x1c($sp)
/* B65F8 800B59F8 3C040408 */  lui        $a0, 0x408
/* B65FC 800B59FC 0C02A448 */  jal        func_800A9120
/* B6600 800B5A00 00002825 */   or        $a1, $zero, $zero
/* B6604 800B5A04 10000001 */  b          .L800B5A0C
/* B6608 800B5A08 00000000 */   nop
.L800B5A0C:
/* B660C 800B5A0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B6610 800B5A10 27BD0020 */  addiu      $sp, $sp, 0x20
/* B6614 800B5A14 03E00008 */  jr         $ra
/* B6618 800B5A18 00000000 */   nop
