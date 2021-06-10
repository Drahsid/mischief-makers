glabel func_800B5A1C
/* B661C 800B5A1C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B6620 800B5A20 AFBF0014 */  sw         $ra, 0x14($sp)
/* B6624 800B5A24 AFA40020 */  sw         $a0, 0x20($sp)
/* B6628 800B5A28 AFA50024 */  sw         $a1, 0x24($sp)
/* B662C 800B5A2C AFA0001C */  sw         $zero, 0x1c($sp)
/* B6630 800B5A30 8FAE0020 */  lw         $t6, 0x20($sp)
/* B6634 800B5A34 83A9001C */  lb         $t1, 0x1c($sp)
/* B6638 800B5A38 000E7E80 */  sll        $t7, $t6, 0x1a
/* B663C 800B5A3C 000FC683 */  sra        $t8, $t7, 0x1a
/* B6640 800B5A40 0018C880 */  sll        $t9, $t8, 2
/* B6644 800B5A44 332800FC */  andi       $t0, $t9, 0xfc
/* B6648 800B5A48 312AFF03 */  andi       $t2, $t1, 0xff03
/* B664C 800B5A4C 010A5825 */  or         $t3, $t0, $t2
/* B6650 800B5A50 A3AB001C */  sb         $t3, 0x1c($sp)
/* B6654 800B5A54 8FAC0024 */  lw         $t4, 0x24($sp)
/* B6658 800B5A58 83B8001D */  lb         $t8, 0x1d($sp)
/* B665C 800B5A5C 000C6EC0 */  sll        $t5, $t4, 0x1b
/* B6660 800B5A60 000D76C3 */  sra        $t6, $t5, 0x1b
/* B6664 800B5A64 31CF001F */  andi       $t7, $t6, 0x1f
/* B6668 800B5A68 3319FFE0 */  andi       $t9, $t8, 0xffe0
/* B666C 800B5A6C 01F94825 */  or         $t1, $t7, $t9
/* B6670 800B5A70 A3A9001D */  sb         $t1, 0x1d($sp)
/* B6674 800B5A74 83A8001E */  lb         $t0, 0x1e($sp)
/* B6678 800B5A78 310AFF07 */  andi       $t2, $t0, 0xff07
/* B667C 800B5A7C 354B0020 */  ori        $t3, $t2, 0x20
/* B6680 800B5A80 A3AB001E */  sb         $t3, 0x1e($sp)
/* B6684 800B5A84 3C040400 */  lui        $a0, 0x400
/* B6688 800B5A88 34841000 */  ori        $a0, $a0, 0x1000
/* B668C 800B5A8C 0C02A448 */  jal        func_800A9120
/* B6690 800B5A90 8FA5001C */   lw        $a1, 0x1c($sp)
/* B6694 800B5A94 3C040408 */  lui        $a0, 0x408
/* B6698 800B5A98 0C02A448 */  jal        func_800A9120
/* B669C 800B5A9C 00002825 */   or        $a1, $zero, $zero
/* B66A0 800B5AA0 10000001 */  b          .L800B5AA8
/* B66A4 800B5AA4 00000000 */   nop
.L800B5AA8:
/* B66A8 800B5AA8 8FBF0014 */  lw         $ra, 0x14($sp)
/* B66AC 800B5AAC 27BD0020 */  addiu      $sp, $sp, 0x20
/* B66B0 800B5AB0 03E00008 */  jr         $ra
/* B66B4 800B5AB4 00000000 */   nop
