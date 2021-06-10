glabel func_80006B1C
/* 771C 80006B1C 3087FFFF */  andi       $a3, $a0, 0xffff
/* 7720 80006B20 24E600AB */  addiu      $a2, $a3, 0xab
/* 7724 80006B24 30CEFFFF */  andi       $t6, $a2, 0xffff
/* 7728 80006B28 24E500BD */  addiu      $a1, $a3, 0xbd
/* 772C 80006B2C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7730 80006B30 01C5082A */  slt        $at, $t6, $a1
/* 7734 80006B34 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7738 80006B38 AFA40018 */  sw         $a0, 0x18($sp)
/* 773C 80006B3C 1020000D */  beqz       $at, .L80006B74
/* 7740 80006B40 30C2FFFF */   andi      $v0, $a2, 0xffff
/* 7744 80006B44 3C03800F */  lui        $v1, %hi(D_800EF510)
/* 7748 80006B48 2463F510 */  addiu      $v1, $v1, %lo(D_800EF510)
/* 774C 80006B4C 24040198 */  addiu      $a0, $zero, 0x198
.L80006B50:
/* 7750 80006B50 00440019 */  multu      $v0, $a0
/* 7754 80006B54 24420001 */  addiu      $v0, $v0, 1
/* 7758 80006B58 3059FFFF */  andi       $t9, $v0, 0xffff
/* 775C 80006B5C 0325082A */  slt        $at, $t9, $a1
/* 7760 80006B60 03201025 */  or         $v0, $t9, $zero
/* 7764 80006B64 00007812 */  mflo       $t7
/* 7768 80006B68 006FC021 */  addu       $t8, $v1, $t7
/* 776C 80006B6C 1420FFF8 */  bnez       $at, .L80006B50
/* 7770 80006B70 AF000080 */   sw        $zero, 0x80($t8)
.L80006B74:
/* 7774 80006B74 0C0018D8 */  jal        func_80006360
/* 7778 80006B78 30E4FFFF */   andi      $a0, $a3, 0xffff
/* 777C 80006B7C 3C01800C */  lui        $at, %hi(D_800C5008)
/* 7780 80006B80 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7784 80006B84 A0205008 */  sb         $zero, %lo(D_800C5008)($at)
/* 7788 80006B88 3C01800C */  lui        $at, %hi(D_800BE4F4)
/* 778C 80006B8C 24080001 */  addiu      $t0, $zero, 1
/* 7790 80006B90 A428E4F4 */  sh         $t0, %lo(D_800BE4F4)($at)
/* 7794 80006B94 03E00008 */  jr         $ra
/* 7798 80006B98 27BD0018 */   addiu     $sp, $sp, 0x18
