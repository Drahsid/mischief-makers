glabel func_80000A84
/* 1684 80000A84 308EFFFF */  andi       $t6, $a0, 0xffff
/* 1688 80000A88 000E5880 */  sll        $t3, $t6, 2
/* 168C 80000A8C 016E5823 */  subu       $t3, $t3, $t6
/* 1690 80000A90 000B5900 */  sll        $t3, $t3, 4
/* 1694 80000A94 016E5821 */  addu       $t3, $t3, $t6
/* 1698 80000A98 3C188013 */  lui        $t8, %hi(D_8012AC88)
/* 169C 80000A9C 000B5880 */  sll        $t3, $t3, 2
/* 16A0 80000AA0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 16A4 80000AA4 2718AC88 */  addiu      $t8, $t8, %lo(D_8012AC88)
/* 16A8 80000AA8 000E7980 */  sll        $t7, $t6, 6
/* 16AC 80000AAC 016E5823 */  subu       $t3, $t3, $t6
/* 16B0 80000AB0 3C0C8013 */  lui        $t4, %hi(D_8012ADC0)
/* 16B4 80000AB4 AFB00018 */  sw         $s0, 0x18($sp)
/* 16B8 80000AB8 01F8C821 */  addu       $t9, $t7, $t8
/* 16BC 80000ABC 258CADC0 */  addiu      $t4, $t4, %lo(D_8012ADC0)
/* 16C0 80000AC0 000B59C0 */  sll        $t3, $t3, 7
/* 16C4 80000AC4 3C108013 */  lui        $s0, %hi(D_8012A670)
/* 16C8 80000AC8 3C05800F */  lui        $a1, %hi(D_800EF4F4)
/* 16CC 80000ACC 3C018013 */  lui        $at, %hi(D_8012AC84)
/* 16D0 80000AD0 016C6821 */  addu       $t5, $t3, $t4
/* 16D4 80000AD4 24A5F4F4 */  addiu      $a1, $a1, %lo(D_800EF4F4)
/* 16D8 80000AD8 2610A670 */  addiu      $s0, $s0, %lo(D_8012A670)
/* 16DC 80000ADC AC39AC84 */  sw         $t9, %lo(D_8012AC84)($at)
/* 16E0 80000AE0 25AF0180 */  addiu      $t7, $t5, 0x180
/* 16E4 80000AE4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 16E8 80000AE8 AFA40040 */  sw         $a0, 0x40($sp)
/* 16EC 80000AEC ACAD0000 */  sw         $t5, ($a1)
/* 16F0 80000AF0 11C00005 */  beqz       $t6, .L80000B08
/* 16F4 80000AF4 AE0F0000 */   sw        $t7, ($s0)
/* 16F8 80000AF8 3C18801D */  lui        $t8, 0x801d
/* 16FC 80000AFC 3718A800 */  ori        $t8, $t8, 0xa800
/* 1700 80000B00 10000004 */  b          .L80000B14
/* 1704 80000B04 AFB8003C */   sw        $t8, 0x3c($sp)
.L80000B08:
/* 1708 80000B08 3C19803D */  lui        $t9, 0x803d
/* 170C 80000B0C 3739A800 */  ori        $t9, $t9, 0xa800
/* 1710 80000B10 AFB9003C */  sw         $t9, 0x3c($sp)
.L80000B14:
/* 1714 80000B14 8E030000 */  lw         $v1, ($s0)
/* 1718 80000B18 3C0CBC00 */  lui        $t4, 0xbc00
/* 171C 80000B1C 246B0008 */  addiu      $t3, $v1, 8
/* 1720 80000B20 AE0B0000 */  sw         $t3, ($s0)
/* 1724 80000B24 358C0006 */  ori        $t4, $t4, 6
/* 1728 80000B28 AC6C0000 */  sw         $t4, ($v1)
/* 172C 80000B2C AC600004 */  sw         $zero, 4($v1)
/* 1730 80000B30 8E030000 */  lw         $v1, ($s0)
/* 1734 80000B34 3C0EBC00 */  lui        $t6, 0xbc00
/* 1738 80000B38 246D0008 */  addiu      $t5, $v1, 8
/* 173C 80000B3C AE0D0000 */  sw         $t5, ($s0)
/* 1740 80000B40 35CE1806 */  ori        $t6, $t6, 0x1806
/* 1744 80000B44 AC6E0000 */  sw         $t6, ($v1)
/* 1748 80000B48 8CA40000 */  lw         $a0, ($a1)
/* 174C 80000B4C 0C026964 */  jal        func_8009A590
/* 1750 80000B50 AFA30034 */   sw        $v1, 0x34($sp)
/* 1754 80000B54 8FA80034 */  lw         $t0, 0x34($sp)
/* 1758 80000B58 3C18800E */  lui        $t8, 0x800e
/* 175C 80000B5C AD020004 */  sw         $v0, 4($t0)
/* 1760 80000B60 8E030000 */  lw         $v1, ($s0)
/* 1764 80000B64 3C0A0600 */  lui        $t2, 0x600
/* 1768 80000B68 246F0008 */  addiu      $t7, $v1, 8
/* 176C 80000B6C AE0F0000 */  sw         $t7, ($s0)
/* 1770 80000B70 27183930 */  addiu      $t8, $t8, 0x3930
/* 1774 80000B74 AC780004 */  sw         $t8, 4($v1)
/* 1778 80000B78 AC6A0000 */  sw         $t2, ($v1)
/* 177C 80000B7C 8E030000 */  lw         $v1, ($s0)
/* 1780 80000B80 3C0B800E */  lui        $t3, %hi(D_800E38B0)
/* 1784 80000B84 24790008 */  addiu      $t9, $v1, 8
/* 1788 80000B88 AE190000 */  sw         $t9, ($s0)
/* 178C 80000B8C 256B38B0 */  addiu      $t3, $t3, %lo(D_800E38B0)
/* 1790 80000B90 AC6B0004 */  sw         $t3, 4($v1)
/* 1794 80000B94 AC6A0000 */  sw         $t2, ($v1)
/* 1798 80000B98 8E030000 */  lw         $v1, ($s0)
/* 179C 80000B9C 3C0DE700 */  lui        $t5, 0xe700
/* 17A0 80000BA0 246C0008 */  addiu      $t4, $v1, 8
/* 17A4 80000BA4 AE0C0000 */  sw         $t4, ($s0)
/* 17A8 80000BA8 AC6D0000 */  sw         $t5, ($v1)
/* 17AC 80000BAC AC600004 */  sw         $zero, 4($v1)
/* 17B0 80000BB0 8E030000 */  lw         $v1, ($s0)
/* 17B4 80000BB4 3C0FFF10 */  lui        $t7, 0xff10
/* 17B8 80000BB8 246E0008 */  addiu      $t6, $v1, 8
/* 17BC 80000BBC AE0E0000 */  sw         $t6, ($s0)
/* 17C0 80000BC0 35EF013F */  ori        $t7, $t7, 0x13f
/* 17C4 80000BC4 AC6F0000 */  sw         $t7, ($v1)
/* 17C8 80000BC8 8FA4003C */  lw         $a0, 0x3c($sp)
/* 17CC 80000BCC 0C026964 */  jal        func_8009A590
/* 17D0 80000BD0 AFA30024 */   sw        $v1, 0x24($sp)
/* 17D4 80000BD4 8FA90024 */  lw         $t1, 0x24($sp)
/* 17D8 80000BD8 0C00051F */  jal        func_8000147C
/* 17DC 80000BDC AD220004 */   sw        $v0, 4($t1)
/* 17E0 80000BE0 8E030000 */  lw         $v1, ($s0)
/* 17E4 80000BE4 3C19E900 */  lui        $t9, 0xe900
/* 17E8 80000BE8 24780008 */  addiu      $t8, $v1, 8
/* 17EC 80000BEC AE180000 */  sw         $t8, ($s0)
/* 17F0 80000BF0 AC600004 */  sw         $zero, 4($v1)
/* 17F4 80000BF4 AC790000 */  sw         $t9, ($v1)
/* 17F8 80000BF8 8E030000 */  lw         $v1, ($s0)
/* 17FC 80000BFC 3C0CB800 */  lui        $t4, 0xb800
/* 1800 80000C00 246B0008 */  addiu      $t3, $v1, 8
/* 1804 80000C04 AE0B0000 */  sw         $t3, ($s0)
/* 1808 80000C08 AC600004 */  sw         $zero, 4($v1)
/* 180C 80000C0C AC6C0000 */  sw         $t4, ($v1)
/* 1810 80000C10 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1814 80000C14 8FB00018 */  lw         $s0, 0x18($sp)
/* 1818 80000C18 03E00008 */  jr         $ra
/* 181C 80000C1C 27BD0040 */   addiu     $sp, $sp, 0x40