glabel func_800B09C0
/* B15C0 800B09C0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B15C4 800B09C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B15C8 800B09C8 AFA40028 */  sw         $a0, 0x28($sp)
/* B15CC 800B09CC AFA5002C */  sw         $a1, 0x2c($sp)
/* B15D0 800B09D0 AFA60030 */  sw         $a2, 0x30($sp)
/* B15D4 800B09D4 8FAE0028 */  lw         $t6, 0x28($sp)
/* B15D8 800B09D8 AFAE0024 */  sw         $t6, 0x24($sp)
/* B15DC 800B09DC 8FAF0028 */  lw         $t7, 0x28($sp)
/* B15E0 800B09E0 AFAF0020 */  sw         $t7, 0x20($sp)
/* B15E4 800B09E4 8FB8002C */  lw         $t8, 0x2c($sp)
/* B15E8 800B09E8 2719FFFF */  addiu      $t9, $t8, -1
/* B15EC 800B09EC 2F210009 */  sltiu      $at, $t9, 9
/* B15F0 800B09F0 10200041 */  beqz       $at, .L800B0AF8
/* B15F4 800B09F4 00000000 */   nop
/* B15F8 800B09F8 0019C880 */  sll        $t9, $t9, 2
/* B15FC 800B09FC 3C01800F */  lui        $at, %hi(D_800EE50C)
/* B1600 800B0A00 00390821 */  addu       $at, $at, $t9
/* B1604 800B0A04 8C39E50C */  lw         $t9, %lo(D_800EE50C)($at)
/* B1608 800B0A08 03200008 */  jr         $t9
/* B160C 800B0A0C 00000000 */   nop
/* B1610 800B0A10 8FA80030 */  lw         $t0, 0x30($sp)
/* B1614 800B0A14 8FA90024 */  lw         $t1, 0x24($sp)
/* B1618 800B0A18 AD280000 */  sw         $t0, ($t1)
/* B161C 800B0A1C 10000044 */  b          .L800B0B30
/* B1620 800B0A20 00000000 */   nop
/* B1624 800B0A24 44802000 */  mtc1       $zero, $f4
/* B1628 800B0A28 8FAA0020 */  lw         $t2, 0x20($sp)
/* B162C 800B0A2C E5440020 */  swc1       $f4, 0x20($t2)
/* B1630 800B0A30 8FAC0020 */  lw         $t4, 0x20($sp)
/* B1634 800B0A34 240B0001 */  addiu      $t3, $zero, 1
/* B1638 800B0A38 AD8B0024 */  sw         $t3, 0x24($t4)
/* B163C 800B0A3C 8FAD0020 */  lw         $t5, 0x20($sp)
/* B1640 800B0A40 ADA00030 */  sw         $zero, 0x30($t5)
/* B1644 800B0A44 8FAE0020 */  lw         $t6, 0x20($sp)
/* B1648 800B0A48 ADC0001C */  sw         $zero, 0x1c($t6)
/* B164C 800B0A4C 8FAF0024 */  lw         $t7, 0x24($sp)
/* B1650 800B0A50 8DF80000 */  lw         $t8, ($t7)
/* B1654 800B0A54 13000009 */  beqz       $t8, .L800B0A7C
/* B1658 800B0A58 00000000 */   nop
/* B165C 800B0A5C 8FB90024 */  lw         $t9, 0x24($sp)
/* B1660 800B0A60 24050004 */  addiu      $a1, $zero, 4
/* B1664 800B0A64 00003025 */  or         $a2, $zero, $zero
/* B1668 800B0A68 8F280000 */  lw         $t0, ($t9)
/* B166C 800B0A6C 8D190008 */  lw         $t9, 8($t0)
/* B1670 800B0A70 01002025 */  or         $a0, $t0, $zero
/* B1674 800B0A74 0320F809 */  jalr       $t9
/* B1678 800B0A78 00000000 */   nop
.L800B0A7C:
/* B167C 800B0A7C 1000002C */  b          .L800B0B30
/* B1680 800B0A80 00000000 */   nop
/* B1684 800B0A84 8FAA0020 */  lw         $t2, 0x20($sp)
/* B1688 800B0A88 24090001 */  addiu      $t1, $zero, 1
/* B168C 800B0A8C AD490030 */  sw         $t1, 0x30($t2)
/* B1690 800B0A90 8FAB0024 */  lw         $t3, 0x24($sp)
/* B1694 800B0A94 8D6C0000 */  lw         $t4, ($t3)
/* B1698 800B0A98 11800009 */  beqz       $t4, .L800B0AC0
/* B169C 800B0A9C 00000000 */   nop
/* B16A0 800B0AA0 8FAD0024 */  lw         $t5, 0x24($sp)
/* B16A4 800B0AA4 24050009 */  addiu      $a1, $zero, 9
/* B16A8 800B0AA8 00003025 */  or         $a2, $zero, $zero
/* B16AC 800B0AAC 8DAE0000 */  lw         $t6, ($t5)
/* B16B0 800B0AB0 8DD90008 */  lw         $t9, 8($t6)
/* B16B4 800B0AB4 01C02025 */  or         $a0, $t6, $zero
/* B16B8 800B0AB8 0320F809 */  jalr       $t9
/* B16BC 800B0ABC 00000000 */   nop
.L800B0AC0:
/* B16C0 800B0AC0 1000001B */  b          .L800B0B30
/* B16C4 800B0AC4 00000000 */   nop
/* B16C8 800B0AC8 8FAF0030 */  lw         $t7, 0x30($sp)
/* B16CC 800B0ACC AFAF001C */  sw         $t7, 0x1c($sp)
/* B16D0 800B0AD0 C7A6001C */  lwc1       $f6, 0x1c($sp)
/* B16D4 800B0AD4 8FB80020 */  lw         $t8, 0x20($sp)
/* B16D8 800B0AD8 E7060018 */  swc1       $f6, 0x18($t8)
/* B16DC 800B0ADC 10000014 */  b          .L800B0B30
/* B16E0 800B0AE0 00000000 */   nop
/* B16E4 800B0AE4 8FA90020 */  lw         $t1, 0x20($sp)
/* B16E8 800B0AE8 24080001 */  addiu      $t0, $zero, 1
/* B16EC 800B0AEC AD28001C */  sw         $t0, 0x1c($t1)
/* B16F0 800B0AF0 1000000F */  b          .L800B0B30
/* B16F4 800B0AF4 00000000 */   nop
.L800B0AF8:
/* B16F8 800B0AF8 8FAA0024 */  lw         $t2, 0x24($sp)
/* B16FC 800B0AFC 8D4B0000 */  lw         $t3, ($t2)
/* B1700 800B0B00 11600009 */  beqz       $t3, .L800B0B28
/* B1704 800B0B04 00000000 */   nop
/* B1708 800B0B08 8FAC0024 */  lw         $t4, 0x24($sp)
/* B170C 800B0B0C 8FA5002C */  lw         $a1, 0x2c($sp)
/* B1710 800B0B10 8FA60030 */  lw         $a2, 0x30($sp)
/* B1714 800B0B14 8D8D0000 */  lw         $t5, ($t4)
/* B1718 800B0B18 8DB90008 */  lw         $t9, 8($t5)
/* B171C 800B0B1C 01A02025 */  or         $a0, $t5, $zero
/* B1720 800B0B20 0320F809 */  jalr       $t9
/* B1724 800B0B24 00000000 */   nop
.L800B0B28:
/* B1728 800B0B28 10000001 */  b          .L800B0B30
/* B172C 800B0B2C 00000000 */   nop
.L800B0B30:
/* B1730 800B0B30 10000003 */  b          .L800B0B40
/* B1734 800B0B34 00001025 */   or        $v0, $zero, $zero
/* B1738 800B0B38 10000001 */  b          .L800B0B40
/* B173C 800B0B3C 00000000 */   nop
.L800B0B40:
/* B1740 800B0B40 8FBF0014 */  lw         $ra, 0x14($sp)
/* B1744 800B0B44 27BD0028 */  addiu      $sp, $sp, 0x28
/* B1748 800B0B48 03E00008 */  jr         $ra
/* B174C 800B0B4C 00000000 */   nop
