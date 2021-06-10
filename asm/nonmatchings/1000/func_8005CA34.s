glabel func_8005CA34
/* 5D634 8005CA34 00047400 */  sll        $t6, $a0, 0x10
/* 5D638 8005CA38 01C5001A */  div        $zero, $t6, $a1
/* 5D63C 8005CA3C 3C01800C */  lui        $at, %hi(D_800BE598)
/* 5D640 8005CA40 A420E598 */  sh         $zero, %lo(D_800BE598)($at)
/* 5D644 8005CA44 3C01800C */  lui        $at, %hi(D_800BE590)
/* 5D648 8005CA48 A425E590 */  sh         $a1, %lo(D_800BE590)($at)
/* 5D64C 8005CA4C 01C07825 */  or         $t7, $t6, $zero
/* 5D650 8005CA50 3C02800C */  lui        $v0, %hi(D_800BE59C)
/* 5D654 8005CA54 2442E59C */  addiu      $v0, $v0, %lo(D_800BE59C)
/* 5D658 8005CA58 AC4E0000 */  sw         $t6, ($v0)
/* 5D65C 8005CA5C 14A00002 */  bnez       $a1, .L8005CA68
/* 5D660 8005CA60 00000000 */   nop
/* 5D664 8005CA64 0007000D */  break      7
.L8005CA68:
/* 5D668 8005CA68 2401FFFF */   addiu     $at, $zero, -1
/* 5D66C 8005CA6C 14A10004 */  bne        $a1, $at, .L8005CA80
/* 5D670 8005CA70 3C018000 */   lui       $at, 0x8000
/* 5D674 8005CA74 15E10002 */  bne        $t7, $at, .L8005CA80
/* 5D678 8005CA78 00000000 */   nop
/* 5D67C 8005CA7C 0006000D */  break      6
.L8005CA80:
/* 5D680 8005CA80 3C01800C */   lui       $at, %hi(D_800BE5A0)
/* 5D684 8005CA84 0000C012 */  mflo       $t8
/* 5D688 8005CA88 AC38E5A0 */  sw         $t8, %lo(D_800BE5A0)($at)
/* 5D68C 8005CA8C 3C01800C */  lui        $at, %hi(D_800BE594)
/* 5D690 8005CA90 03E00008 */  jr         $ra
/* 5D694 8005CA94 A420E594 */   sh        $zero, %lo(D_800BE594)($at)
