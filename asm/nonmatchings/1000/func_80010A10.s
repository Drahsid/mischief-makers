glabel func_80010A10
/* 11610 80010A10 3C028018 */  lui        $v0, %hi(D_801780F0)
/* 11614 80010A14 3C0E8013 */  lui        $t6, %hi(D_8012ADC0)
/* 11618 80010A18 244280F0 */  addiu      $v0, $v0, %lo(D_801780F0)
/* 1161C 80010A1C 25CEADC0 */  addiu      $t6, $t6, %lo(D_8012ADC0)
/* 11620 80010A20 3C0F8013 */  lui        $t7, %hi(D_80130F40)
/* 11624 80010A24 AC4E0000 */  sw         $t6, ($v0)
/* 11628 80010A28 25EF0F40 */  addiu      $t7, $t7, %lo(D_80130F40)
/* 1162C 80010A2C 3C018018 */  lui        $at, %hi(D_801780F4)
/* 11630 80010A30 AC2F80F4 */  sw         $t7, %lo(D_801780F4)($at)
/* 11634 80010A34 3C0142F0 */  lui        $at, 0x42f0
/* 11638 80010A38 44812000 */  mtc1       $at, $f4
/* 1163C 80010A3C 3C01C400 */  lui        $at, 0xc400
/* 11640 80010A40 44813000 */  mtc1       $at, $f6
/* 11644 80010A44 3C014400 */  lui        $at, 0x4400
/* 11648 80010A48 44814000 */  mtc1       $at, $f8
/* 1164C 80010A4C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 11650 80010A50 3C013F80 */  lui        $at, 0x3f80
/* 11654 80010A54 44815000 */  mtc1       $at, $f10
/* 11658 80010A58 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1165C 80010A5C 8C440000 */  lw         $a0, ($v0)
/* 11660 80010A60 3C05C320 */  lui        $a1, 0xc320
/* 11664 80010A64 3C064320 */  lui        $a2, 0x4320
/* 11668 80010A68 3C07C2F0 */  lui        $a3, 0xc2f0
/* 1166C 80010A6C E7A40010 */  swc1       $f4, 0x10($sp)
/* 11670 80010A70 E7A60014 */  swc1       $f6, 0x14($sp)
/* 11674 80010A74 E7A80018 */  swc1       $f8, 0x18($sp)
/* 11678 80010A78 0C02935D */  jal        func_800A4D74
/* 1167C 80010A7C E7AA001C */   swc1      $f10, 0x1c($sp)
/* 11680 80010A80 3C0142F0 */  lui        $at, 0x42f0
/* 11684 80010A84 44818000 */  mtc1       $at, $f16
/* 11688 80010A88 3C01C400 */  lui        $at, 0xc400
/* 1168C 80010A8C 44819000 */  mtc1       $at, $f18
/* 11690 80010A90 3C014400 */  lui        $at, 0x4400
/* 11694 80010A94 44812000 */  mtc1       $at, $f4
/* 11698 80010A98 3C013F80 */  lui        $at, 0x3f80
/* 1169C 80010A9C 44813000 */  mtc1       $at, $f6
/* 116A0 80010AA0 3C048018 */  lui        $a0, %hi(D_801780F4)
/* 116A4 80010AA4 8C8480F4 */  lw         $a0, %lo(D_801780F4)($a0)
/* 116A8 80010AA8 3C05C320 */  lui        $a1, 0xc320
/* 116AC 80010AAC 3C064320 */  lui        $a2, 0x4320
/* 116B0 80010AB0 3C07C2F0 */  lui        $a3, 0xc2f0
/* 116B4 80010AB4 E7B00010 */  swc1       $f16, 0x10($sp)
/* 116B8 80010AB8 E7B20014 */  swc1       $f18, 0x14($sp)
/* 116BC 80010ABC E7A40018 */  swc1       $f4, 0x18($sp)
/* 116C0 80010AC0 0C02935D */  jal        func_800A4D74
/* 116C4 80010AC4 E7A6001C */   swc1      $f6, 0x1c($sp)
/* 116C8 80010AC8 3C0142F0 */  lui        $at, 0x42f0
/* 116CC 80010ACC 44814000 */  mtc1       $at, $f8
/* 116D0 80010AD0 3C01C400 */  lui        $at, 0xc400
/* 116D4 80010AD4 44815000 */  mtc1       $at, $f10
/* 116D8 80010AD8 3C014400 */  lui        $at, 0x4400
/* 116DC 80010ADC 44818000 */  mtc1       $at, $f16
/* 116E0 80010AE0 3C013F80 */  lui        $at, 0x3f80
/* 116E4 80010AE4 3C048018 */  lui        $a0, %hi(D_801780F0)
/* 116E8 80010AE8 8C8480F0 */  lw         $a0, %lo(D_801780F0)($a0)
/* 116EC 80010AEC 44819000 */  mtc1       $at, $f18
/* 116F0 80010AF0 3C05C320 */  lui        $a1, 0xc320
/* 116F4 80010AF4 3C064320 */  lui        $a2, 0x4320
/* 116F8 80010AF8 3C07C2F0 */  lui        $a3, 0xc2f0
/* 116FC 80010AFC E7A80010 */  swc1       $f8, 0x10($sp)
/* 11700 80010B00 E7AA0014 */  swc1       $f10, 0x14($sp)
/* 11704 80010B04 E7B00018 */  swc1       $f16, 0x18($sp)
/* 11708 80010B08 24840080 */  addiu      $a0, $a0, 0x80
/* 1170C 80010B0C 0C02935D */  jal        func_800A4D74
/* 11710 80010B10 E7B2001C */   swc1      $f18, 0x1c($sp)
/* 11714 80010B14 3C0142F0 */  lui        $at, 0x42f0
/* 11718 80010B18 44812000 */  mtc1       $at, $f4
/* 1171C 80010B1C 3C01C400 */  lui        $at, 0xc400
/* 11720 80010B20 44813000 */  mtc1       $at, $f6
/* 11724 80010B24 3C014400 */  lui        $at, 0x4400
/* 11728 80010B28 44814000 */  mtc1       $at, $f8
/* 1172C 80010B2C 3C013F80 */  lui        $at, 0x3f80
/* 11730 80010B30 3C048018 */  lui        $a0, %hi(D_801780F4)
/* 11734 80010B34 8C8480F4 */  lw         $a0, %lo(D_801780F4)($a0)
/* 11738 80010B38 44815000 */  mtc1       $at, $f10
/* 1173C 80010B3C 3C05C320 */  lui        $a1, 0xc320
/* 11740 80010B40 3C064320 */  lui        $a2, 0x4320
/* 11744 80010B44 3C07C2F0 */  lui        $a3, 0xc2f0
/* 11748 80010B48 E7A40010 */  swc1       $f4, 0x10($sp)
/* 1174C 80010B4C E7A60014 */  swc1       $f6, 0x14($sp)
/* 11750 80010B50 E7A80018 */  swc1       $f8, 0x18($sp)
/* 11754 80010B54 24840080 */  addiu      $a0, $a0, 0x80
/* 11758 80010B58 0C02935D */  jal        func_800A4D74
/* 1175C 80010B5C E7AA001C */   swc1      $f10, 0x1c($sp)
/* 11760 80010B60 0C00426C */  jal        func_800109B0
/* 11764 80010B64 00000000 */   nop
/* 11768 80010B68 0C004226 */  jal        func_80010898
/* 1176C 80010B6C 00000000 */   nop
/* 11770 80010B70 3C18802D */  lui        $t8, %hi(D_802C9F70)
/* 11774 80010B74 27189F70 */  addiu      $t8, $t8, %lo(D_802C9F70)
/* 11778 80010B78 3C018018 */  lui        $at, %hi(D_80178104)
/* 1177C 80010B7C AC388104 */  sw         $t8, %lo(D_80178104)($at)
/* 11780 80010B80 3C198032 */  lui        $t9, 0x8032
/* 11784 80010B84 3739F940 */  ori        $t9, $t9, 0xf940
/* 11788 80010B88 3C018018 */  lui        $at, %hi(D_80178108)
/* 1178C 80010B8C AC398108 */  sw         $t9, %lo(D_80178108)($at)
/* 11790 80010B90 3C088035 */  lui        $t0, 0x8035
/* 11794 80010B94 35080AD8 */  ori        $t0, $t0, 0xad8
/* 11798 80010B98 3C018018 */  lui        $at, %hi(D_8017810C)
/* 1179C 80010B9C AC28810C */  sw         $t0, %lo(D_8017810C)($at)
/* 117A0 80010BA0 3C098031 */  lui        $t1, 0x8031
/* 117A4 80010BA4 35297F48 */  ori        $t1, $t1, 0x7f48
/* 117A8 80010BA8 3C018018 */  lui        $at, %hi(D_80178110)
/* 117AC 80010BAC AC298110 */  sw         $t1, %lo(D_80178110)($at)
/* 117B0 80010BB0 3C0A8034 */  lui        $t2, 0x8034
/* 117B4 80010BB4 354A40C8 */  ori        $t2, $t2, 0x40c8
/* 117B8 80010BB8 3C018018 */  lui        $at, %hi(D_80178114)
/* 117BC 80010BBC AC2A8114 */  sw         $t2, %lo(D_80178114)($at)
/* 117C0 80010BC0 3C0B802F */  lui        $t3, 0x802f
/* 117C4 80010BC4 356B93B8 */  ori        $t3, $t3, 0x93b8
/* 117C8 80010BC8 3C018018 */  lui        $at, %hi(D_80178118)
/* 117CC 80010BCC AC2B8118 */  sw         $t3, %lo(D_80178118)($at)
/* 117D0 80010BD0 3C0C8031 */  lui        $t4, 0x8031
/* 117D4 80010BD4 358C0D00 */  ori        $t4, $t4, 0xd00
/* 117D8 80010BD8 3C018018 */  lui        $at, %hi(D_8017811C)
/* 117DC 80010BDC AC2C811C */  sw         $t4, %lo(D_8017811C)($at)
/* 117E0 80010BE0 3C0D8033 */  lui        $t5, 0x8033
/* 117E4 80010BE4 35AD8810 */  ori        $t5, $t5, 0x8810
/* 117E8 80010BE8 3C018018 */  lui        $at, %hi(D_80178120)
/* 117EC 80010BEC AC2D8120 */  sw         $t5, %lo(D_80178120)($at)
/* 117F0 80010BF0 3C0E802D */  lui        $t6, 0x802d
/* 117F4 80010BF4 35CEB888 */  ori        $t6, $t6, 0xb888
/* 117F8 80010BF8 3C018018 */  lui        $at, %hi(D_80178124)
/* 117FC 80010BFC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 11800 80010C00 AC2E8124 */  sw         $t6, %lo(D_80178124)($at)
/* 11804 80010C04 3C0F802E */  lui        $t7, 0x802e
/* 11808 80010C08 35EFB278 */  ori        $t7, $t7, 0xb278
/* 1180C 80010C0C 3C018018 */  lui        $at, %hi(D_80178128)
/* 11810 80010C10 AC2F8128 */  sw         $t7, %lo(D_80178128)($at)
/* 11814 80010C14 03E00008 */  jr         $ra
/* 11818 80010C18 27BD0028 */   addiu     $sp, $sp, 0x28
/* 1181C 80010C1C 00000000 */  nop
