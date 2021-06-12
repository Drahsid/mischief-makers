glabel func_8002B9D8
/* 2C5D8 8002B9D8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2C5DC 8002B9DC AFB00014 */  sw         $s0, 0x14($sp)
/* 2C5E0 8002B9E0 3090FFFF */  andi       $s0, $a0, 0xffff
/* 2C5E4 8002B9E4 00107080 */  sll        $t6, $s0, 2
/* 2C5E8 8002B9E8 01D07023 */  subu       $t6, $t6, $s0
/* 2C5EC 8002B9EC 000E7080 */  sll        $t6, $t6, 2
/* 2C5F0 8002B9F0 01D07021 */  addu       $t6, $t6, $s0
/* 2C5F4 8002B9F4 000E7080 */  sll        $t6, $t6, 2
/* 2C5F8 8002B9F8 01D07023 */  subu       $t6, $t6, $s0
/* 2C5FC 8002B9FC 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 2C600 8002BA00 AFB10018 */  sw         $s1, 0x18($sp)
/* 2C604 8002BA04 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 2C608 8002BA08 000E70C0 */  sll        $t6, $t6, 3
/* 2C60C 8002BA0C 01CF8821 */  addu       $s1, $t6, $t7
/* 2C610 8002BA10 86250088 */  lh         $a1, 0x88($s1)
/* 2C614 8002BA14 AFBF001C */  sw         $ra, 0x1c($sp)
/* 2C618 8002BA18 AFA40020 */  sw         $a0, 0x20($sp)
/* 2C61C 8002BA1C 8626008C */  lh         $a2, 0x8c($s1)
/* 2C620 8002BA20 3204FFFF */  andi       $a0, $s0, 0xffff
/* 2C624 8002BA24 0C007F28 */  jal        func_8001FCA0
/* 2C628 8002BA28 24A5FFFC */   addiu     $a1, $a1, -4
/* 2C62C 8002BA2C 3204FFFF */  andi       $a0, $s0, 0xffff
/* 2C630 8002BA30 0C00AE55 */  jal        func_8002B954
/* 2C634 8002BA34 3045FFFF */   andi      $a1, $v0, 0xffff
/* 2C638 8002BA38 1440001C */  bnez       $v0, .L8002BAAC
/* 2C63C 8002BA3C 3204FFFF */   andi      $a0, $s0, 0xffff
/* 2C640 8002BA40 86250088 */  lh         $a1, 0x88($s1)
/* 2C644 8002BA44 8626008C */  lh         $a2, 0x8c($s1)
/* 2C648 8002BA48 0C007F28 */  jal        func_8001FCA0
/* 2C64C 8002BA4C 24A50004 */   addiu     $a1, $a1, 4
/* 2C650 8002BA50 3204FFFF */  andi       $a0, $s0, 0xffff
/* 2C654 8002BA54 0C00AE55 */  jal        func_8002B954
/* 2C658 8002BA58 3045FFFF */   andi      $a1, $v0, 0xffff
/* 2C65C 8002BA5C 14400013 */  bnez       $v0, .L8002BAAC
/* 2C660 8002BA60 3204FFFF */   andi      $a0, $s0, 0xffff
/* 2C664 8002BA64 8626008C */  lh         $a2, 0x8c($s1)
/* 2C668 8002BA68 86250088 */  lh         $a1, 0x88($s1)
/* 2C66C 8002BA6C 0C007F28 */  jal        func_8001FCA0
/* 2C670 8002BA70 24C6FFFC */   addiu     $a2, $a2, -4
/* 2C674 8002BA74 3204FFFF */  andi       $a0, $s0, 0xffff
/* 2C678 8002BA78 0C00AE55 */  jal        func_8002B954
/* 2C67C 8002BA7C 3045FFFF */   andi      $a1, $v0, 0xffff
/* 2C680 8002BA80 1440000A */  bnez       $v0, .L8002BAAC
/* 2C684 8002BA84 3204FFFF */   andi      $a0, $s0, 0xffff
/* 2C688 8002BA88 8626008C */  lh         $a2, 0x8c($s1)
/* 2C68C 8002BA8C 86250088 */  lh         $a1, 0x88($s1)
/* 2C690 8002BA90 0C007F28 */  jal        func_8001FCA0
/* 2C694 8002BA94 24C60004 */   addiu     $a2, $a2, 4
/* 2C698 8002BA98 3204FFFF */  andi       $a0, $s0, 0xffff
/* 2C69C 8002BA9C 0C00AE55 */  jal        func_8002B954
/* 2C6A0 8002BAA0 3045FFFF */   andi      $a1, $v0, 0xffff
/* 2C6A4 8002BAA4 10400004 */  beqz       $v0, .L8002BAB8
/* 2C6A8 8002BAA8 00001025 */   or        $v0, $zero, $zero
.L8002BAAC:
/* 2C6AC 8002BAAC 10000002 */  b          .L8002BAB8
/* 2C6B0 8002BAB0 24020001 */   addiu     $v0, $zero, 1
/* 2C6B4 8002BAB4 00001025 */  or         $v0, $zero, $zero
.L8002BAB8:
/* 2C6B8 8002BAB8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2C6BC 8002BABC 8FB00014 */  lw         $s0, 0x14($sp)
/* 2C6C0 8002BAC0 8FB10018 */  lw         $s1, 0x18($sp)
/* 2C6C4 8002BAC4 03E00008 */  jr         $ra
/* 2C6C8 8002BAC8 27BD0020 */   addiu     $sp, $sp, 0x20
