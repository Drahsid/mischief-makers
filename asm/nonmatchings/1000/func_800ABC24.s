glabel func_800ABC24
/* AC824 800ABC24 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* AC828 800ABC28 AFBF0014 */  sw         $ra, 0x14($sp)
/* AC82C 800ABC2C AFA40030 */  sw         $a0, 0x30($sp)
/* AC830 800ABC30 8FAE0030 */  lw         $t6, 0x30($sp)
/* AC834 800ABC34 8DCF0018 */  lw         $t7, 0x18($t6)
/* AC838 800ABC38 AFAF0018 */  sw         $t7, 0x18($sp)
/* AC83C 800ABC3C 8FB80030 */  lw         $t8, 0x30($sp)
/* AC840 800ABC40 24010001 */  addiu      $at, $zero, 1
/* AC844 800ABC44 8F19002C */  lw         $t9, 0x2c($t8)
/* AC848 800ABC48 17210004 */  bne        $t9, $at, .L800ABC5C
/* AC84C 800ABC4C 00000000 */   nop
/* AC850 800ABC50 8FA80018 */  lw         $t0, 0x18($sp)
/* AC854 800ABC54 15000003 */  bnez       $t0, .L800ABC64
/* AC858 800ABC58 00000000 */   nop
.L800ABC5C:
/* AC85C 800ABC5C 1000002F */  b          .L800ABD1C
/* AC860 800ABC60 00000000 */   nop
.L800ABC64:
/* AC864 800ABC64 8FA40018 */  lw         $a0, 0x18($sp)
/* AC868 800ABC68 0C02DDAE */  jal        func_800B76B8
/* AC86C 800ABC6C 27A5001C */   addiu     $a1, $sp, 0x1c
/* AC870 800ABC70 14400003 */  bnez       $v0, .L800ABC80
/* AC874 800ABC74 00000000 */   nop
/* AC878 800ABC78 10000028 */  b          .L800ABD1C
/* AC87C 800ABC7C 00000000 */   nop
.L800ABC80:
/* AC880 800ABC80 8FA90030 */  lw         $t1, 0x30($sp)
/* AC884 800ABC84 8D2A0084 */  lw         $t2, 0x84($t1)
/* AC888 800ABC88 11400018 */  beqz       $t2, .L800ABCEC
/* AC88C 800ABC8C 00000000 */   nop
/* AC890 800ABC90 0C02DE88 */  jal        func_800B7A20
/* AC894 800ABC94 8FA40018 */   lw        $a0, 0x18($sp)
/* AC898 800ABC98 8FAD0030 */  lw         $t5, 0x30($sp)
/* AC89C 800ABC9C 8FAB001C */  lw         $t3, 0x1c($sp)
/* AC8A0 800ABCA0 8DAE0080 */  lw         $t6, 0x80($t5)
/* AC8A4 800ABCA4 004B6021 */  addu       $t4, $v0, $t3
/* AC8A8 800ABCA8 8DCF0008 */  lw         $t7, 8($t6)
/* AC8AC 800ABCAC 018F082A */  slt        $at, $t4, $t7
/* AC8B0 800ABCB0 1420000E */  bnez       $at, .L800ABCEC
/* AC8B4 800ABCB4 00000000 */   nop
/* AC8B8 800ABCB8 8FB80030 */  lw         $t8, 0x30($sp)
/* AC8BC 800ABCBC 8FA40018 */  lw         $a0, 0x18($sp)
/* AC8C0 800ABCC0 0C02DE8E */  jal        func_800B7A38
/* AC8C4 800ABCC4 8F05007C */   lw        $a1, 0x7c($t8)
/* AC8C8 800ABCC8 8FB90030 */  lw         $t9, 0x30($sp)
/* AC8CC 800ABCCC 2401FFFF */  addiu      $at, $zero, -1
/* AC8D0 800ABCD0 8F280084 */  lw         $t0, 0x84($t9)
/* AC8D4 800ABCD4 11010005 */  beq        $t0, $at, .L800ABCEC
/* AC8D8 800ABCD8 00000000 */   nop
/* AC8DC 800ABCDC 8FA90030 */  lw         $t1, 0x30($sp)
/* AC8E0 800ABCE0 8D2A0084 */  lw         $t2, 0x84($t1)
/* AC8E4 800ABCE4 254BFFFF */  addiu      $t3, $t2, -1
/* AC8E8 800ABCE8 AD2B0084 */  sw         $t3, 0x84($t1)
.L800ABCEC:
/* AC8EC 800ABCEC A7A00020 */  sh         $zero, 0x20($sp)
/* AC8F0 800ABCF0 8FAD0030 */  lw         $t5, 0x30($sp)
/* AC8F4 800ABCF4 8FAC001C */  lw         $t4, 0x1c($sp)
/* AC8F8 800ABCF8 27A50020 */  addiu      $a1, $sp, 0x20
/* AC8FC 800ABCFC 8DAE0024 */  lw         $t6, 0x24($t5)
/* AC900 800ABD00 25A40048 */  addiu      $a0, $t5, 0x48
/* AC904 800ABD04 01CC0019 */  multu      $t6, $t4
/* AC908 800ABD08 00003012 */  mflo       $a2
/* AC90C 800ABD0C 0C02B620 */  jal        func_800AD880
/* AC910 800ABD10 00000000 */   nop
/* AC914 800ABD14 10000001 */  b          .L800ABD1C
/* AC918 800ABD18 00000000 */   nop
.L800ABD1C:
/* AC91C 800ABD1C 8FBF0014 */  lw         $ra, 0x14($sp)
/* AC920 800ABD20 27BD0030 */  addiu      $sp, $sp, 0x30
/* AC924 800ABD24 03E00008 */  jr         $ra
/* AC928 800ABD28 00000000 */   nop
