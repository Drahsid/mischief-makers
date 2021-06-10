glabel func_800B1484
/* B2084 800B1484 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* B2088 800B1488 AFBF001C */  sw         $ra, 0x1c($sp)
/* B208C 800B148C AFA40050 */  sw         $a0, 0x50($sp)
/* B2090 800B1490 AFA50054 */  sw         $a1, 0x54($sp)
/* B2094 800B1494 AFA60058 */  sw         $a2, 0x58($sp)
/* B2098 800B1498 AFA7005C */  sw         $a3, 0x5c($sp)
/* B209C 800B149C 8FAE0064 */  lw         $t6, 0x64($sp)
/* B20A0 800B14A0 AFAE004C */  sw         $t6, 0x4c($sp)
/* B20A4 800B14A4 8FAF0050 */  lw         $t7, 0x50($sp)
/* B20A8 800B14A8 AFAF0048 */  sw         $t7, 0x48($sp)
/* B20AC 800B14AC 8FB80048 */  lw         $t8, 0x48($sp)
/* B20B0 800B14B0 8F190000 */  lw         $t9, ($t8)
/* B20B4 800B14B4 AFB90044 */  sw         $t9, 0x44($sp)
/* B20B8 800B14B8 8FA80048 */  lw         $t0, 0x48($sp)
/* B20BC 800B14BC 24010001 */  addiu      $at, $zero, 1
/* B20C0 800B14C0 8D090048 */  lw         $t1, 0x48($t0)
/* B20C4 800B14C4 15210004 */  bne        $t1, $at, .L800B14D8
/* B20C8 800B14C8 00000000 */   nop
/* B20CC 800B14CC 8FAA005C */  lw         $t2, 0x5c($sp)
/* B20D0 800B14D0 15400003 */  bnez       $t2, .L800B14E0
/* B20D4 800B14D4 00000000 */   nop
.L800B14D8:
/* B20D8 800B14D8 100000F6 */  b          .L800B18B4
/* B20DC 800B14DC 8FA2004C */   lw        $v0, 0x4c($sp)
.L800B14E0:
/* B20E0 800B14E0 8FAB0044 */  lw         $t3, 0x44($sp)
/* B20E4 800B14E4 11600003 */  beqz       $t3, .L800B14F4
/* B20E8 800B14E8 00000000 */   nop
/* B20EC 800B14EC 10000007 */  b          .L800B150C
/* B20F0 800B14F0 00000000 */   nop
.L800B14F4:
/* B20F4 800B14F4 3C04800F */  lui        $a0, %hi(D_800EE580)
/* B20F8 800B14F8 3C05800F */  lui        $a1, %hi(D_800EE588)
/* B20FC 800B14FC 24A5E588 */  addiu      $a1, $a1, %lo(D_800EE588)
/* B2100 800B1500 2484E580 */  addiu      $a0, $a0, %lo(D_800EE580)
/* B2104 800B1504 0C026E74 */  jal        func_8009B9D0
/* B2108 800B1508 24060170 */   addiu     $a2, $zero, 0x170
.L800B150C:
/* B210C 800B150C 8FAD0064 */  lw         $t5, 0x64($sp)
/* B2110 800B1510 8FAC0044 */  lw         $t4, 0x44($sp)
/* B2114 800B1514 8FA50054 */  lw         $a1, 0x54($sp)
/* B2118 800B1518 AFAD0010 */  sw         $t5, 0x10($sp)
/* B211C 800B151C 8D990004 */  lw         $t9, 4($t4)
/* B2120 800B1520 8FA6005C */  lw         $a2, 0x5c($sp)
/* B2124 800B1524 8FA70060 */  lw         $a3, 0x60($sp)
/* B2128 800B1528 0320F809 */  jalr       $t9
/* B212C 800B152C 01802025 */   or        $a0, $t4, $zero
/* B2130 800B1530 AFA2004C */  sw         $v0, 0x4c($sp)
/* B2134 800B1534 8FAE004C */  lw         $t6, 0x4c($sp)
/* B2138 800B1538 25CF0008 */  addiu      $t7, $t6, 8
/* B213C 800B153C AFAF004C */  sw         $t7, 0x4c($sp)
/* B2140 800B1540 AFAE0040 */  sw         $t6, 0x40($sp)
/* B2144 800B1544 8FB80054 */  lw         $t8, 0x54($sp)
/* B2148 800B1548 8FAB0040 */  lw         $t3, 0x40($sp)
/* B214C 800B154C 3C010800 */  lui        $at, 0x800
/* B2150 800B1550 87080000 */  lh         $t0, ($t8)
/* B2154 800B1554 3109FFFF */  andi       $t1, $t0, 0xffff
/* B2158 800B1558 01215025 */  or         $t2, $t1, $at
/* B215C 800B155C AD6A0000 */  sw         $t2, ($t3)
/* B2160 800B1560 8FAD0058 */  lw         $t5, 0x58($sp)
/* B2164 800B1564 8FB8005C */  lw         $t8, 0x5c($sp)
/* B2168 800B1568 8FAB0040 */  lw         $t3, 0x40($sp)
/* B216C 800B156C 85AC0000 */  lh         $t4, ($t5)
/* B2170 800B1570 00184040 */  sll        $t0, $t8, 1
/* B2174 800B1574 3109FFFF */  andi       $t1, $t0, 0xffff
/* B2178 800B1578 25990440 */  addiu      $t9, $t4, 0x440
/* B217C 800B157C 332EFFFF */  andi       $t6, $t9, 0xffff
/* B2180 800B1580 000E7C00 */  sll        $t7, $t6, 0x10
/* B2184 800B1584 01E95025 */  or         $t2, $t7, $t1
/* B2188 800B1588 AD6A0004 */  sw         $t2, 4($t3)
/* B218C 800B158C 8FAD004C */  lw         $t5, 0x4c($sp)
/* B2190 800B1590 25AC0008 */  addiu      $t4, $t5, 8
/* B2194 800B1594 AFAC004C */  sw         $t4, 0x4c($sp)
/* B2198 800B1598 AFAD003C */  sw         $t5, 0x3c($sp)
/* B219C 800B159C 8FB90058 */  lw         $t9, 0x58($sp)
/* B21A0 800B15A0 8FA9003C */  lw         $t1, 0x3c($sp)
/* B21A4 800B15A4 3C010808 */  lui        $at, 0x808
/* B21A8 800B15A8 872E0000 */  lh         $t6, ($t9)
/* B21AC 800B15AC 25D80580 */  addiu      $t8, $t6, 0x580
/* B21B0 800B15B0 3308FFFF */  andi       $t0, $t8, 0xffff
/* B21B4 800B15B4 01017825 */  or         $t7, $t0, $at
/* B21B8 800B15B8 AD2F0000 */  sw         $t7, ($t1)
/* B21BC 800B15BC 8FAA0058 */  lw         $t2, 0x58($sp)
/* B21C0 800B15C0 8FAF003C */  lw         $t7, 0x3c($sp)
/* B21C4 800B15C4 854B0000 */  lh         $t3, ($t2)
/* B21C8 800B15C8 257906C0 */  addiu      $t9, $t3, 0x6c0
/* B21CC 800B15CC 332EFFFF */  andi       $t6, $t9, 0xffff
/* B21D0 800B15D0 256D0800 */  addiu      $t5, $t3, 0x800
/* B21D4 800B15D4 31ACFFFF */  andi       $t4, $t5, 0xffff
/* B21D8 800B15D8 000EC400 */  sll        $t8, $t6, 0x10
/* B21DC 800B15DC 01984025 */  or         $t0, $t4, $t8
/* B21E0 800B15E0 ADE80004 */  sw         $t0, 4($t7)
/* B21E4 800B15E4 8FA90048 */  lw         $t1, 0x48($sp)
/* B21E8 800B15E8 8D2A0038 */  lw         $t2, 0x38($t1)
/* B21EC 800B15EC 11400096 */  beqz       $t2, .L800B1848
/* B21F0 800B15F0 00000000 */   nop
/* B21F4 800B15F4 8FAD0048 */  lw         $t5, 0x48($sp)
/* B21F8 800B15F8 ADA00038 */  sw         $zero, 0x38($t5)
/* B21FC 800B15FC 8FAB0048 */  lw         $t3, 0x48($sp)
/* B2200 800B1600 3C0C800F */  lui        $t4, %hi(D_800EA7F0)
/* B2204 800B1604 85790018 */  lh         $t9, 0x18($t3)
/* B2208 800B1608 8578001A */  lh         $t8, 0x1a($t3)
/* B220C 800B160C 00197040 */  sll        $t6, $t9, 1
/* B2210 800B1610 018E6021 */  addu       $t4, $t4, $t6
/* B2214 800B1614 858CA7F0 */  lh         $t4, %lo(D_800EA7F0)($t4)
/* B2218 800B1618 01980019 */  multu      $t4, $t8
/* B221C 800B161C 00004012 */  mflo       $t0
/* B2220 800B1620 00087BC3 */  sra        $t7, $t0, 0xf
/* B2224 800B1624 A56F0028 */  sh         $t7, 0x28($t3)
/* B2228 800B1628 8FA90048 */  lw         $t1, 0x48($sp)
/* B222C 800B162C 852A001C */  lh         $t2, 0x1c($t1)
/* B2230 800B1630 852D0028 */  lh         $t5, 0x28($t1)
/* B2234 800B1634 8D390034 */  lw         $t9, 0x34($t1)
/* B2238 800B1638 448A2000 */  mtc1       $t2, $f4
/* B223C 800B163C 448D3000 */  mtc1       $t5, $f6
/* B2240 800B1640 252E0024 */  addiu      $t6, $t1, 0x24
/* B2244 800B1644 AFAE0014 */  sw         $t6, 0x14($sp)
/* B2248 800B1648 AFB90010 */  sw         $t9, 0x10($sp)
/* B224C 800B164C 46802321 */  cvt.d.w    $f12, $f4
/* B2250 800B1650 0C02C699 */  jal        func_800B1A64
/* B2254 800B1654 468033A1 */   cvt.d.w   $f14, $f6
/* B2258 800B1658 8FAC0048 */  lw         $t4, 0x48($sp)
/* B225C 800B165C A5820026 */  sh         $v0, 0x26($t4)
/* B2260 800B1660 8FB80048 */  lw         $t8, 0x48($sp)
/* B2264 800B1664 3C0A800F */  lui        $t2, 0x800f
/* B2268 800B1668 87080018 */  lh         $t0, 0x18($t8)
/* B226C 800B166C 870D001A */  lh         $t5, 0x1a($t8)
/* B2270 800B1670 00087823 */  negu       $t7, $t0
/* B2274 800B1674 000F5840 */  sll        $t3, $t7, 1
/* B2278 800B1678 014B5021 */  addu       $t2, $t2, $t3
/* B227C 800B167C 854AA8EE */  lh         $t2, -0x5712($t2)
/* B2280 800B1680 014D0019 */  multu      $t2, $t5
/* B2284 800B1684 0000C812 */  mflo       $t9
/* B2288 800B1688 00194BC3 */  sra        $t1, $t9, 0xf
/* B228C 800B168C A709002E */  sh         $t1, 0x2e($t8)
/* B2290 800B1690 8FAE0048 */  lw         $t6, 0x48($sp)
/* B2294 800B1694 85CC001E */  lh         $t4, 0x1e($t6)
/* B2298 800B1698 85C8002E */  lh         $t0, 0x2e($t6)
/* B229C 800B169C 8DCF0034 */  lw         $t7, 0x34($t6)
/* B22A0 800B16A0 448C4000 */  mtc1       $t4, $f8
/* B22A4 800B16A4 44885000 */  mtc1       $t0, $f10
/* B22A8 800B16A8 25CB002A */  addiu      $t3, $t6, 0x2a
/* B22AC 800B16AC AFAB0014 */  sw         $t3, 0x14($sp)
/* B22B0 800B16B0 AFAF0010 */  sw         $t7, 0x10($sp)
/* B22B4 800B16B4 46804321 */  cvt.d.w    $f12, $f8
/* B22B8 800B16B8 0C02C699 */  jal        func_800B1A64
/* B22BC 800B16BC 468053A1 */   cvt.d.w   $f14, $f10
/* B22C0 800B16C0 8FAA0048 */  lw         $t2, 0x48($sp)
/* B22C4 800B16C4 A542002C */  sh         $v0, 0x2c($t2)
/* B22C8 800B16C8 8FAD004C */  lw         $t5, 0x4c($sp)
/* B22CC 800B16CC 25B90008 */  addiu      $t9, $t5, 8
/* B22D0 800B16D0 AFB9004C */  sw         $t9, 0x4c($sp)
/* B22D4 800B16D4 AFAD0038 */  sw         $t5, 0x38($sp)
/* B22D8 800B16D8 8FA90048 */  lw         $t1, 0x48($sp)
/* B22DC 800B16DC 8FAF0038 */  lw         $t7, 0x38($sp)
/* B22E0 800B16E0 3C010906 */  lui        $at, 0x906
/* B22E4 800B16E4 8538001C */  lh         $t8, 0x1c($t1)
/* B22E8 800B16E8 330CFFFF */  andi       $t4, $t8, 0xffff
/* B22EC 800B16EC 01814025 */  or         $t0, $t4, $at
/* B22F0 800B16F0 ADE80000 */  sw         $t0, ($t7)
/* B22F4 800B16F4 8FAE0038 */  lw         $t6, 0x38($sp)
/* B22F8 800B16F8 ADC00004 */  sw         $zero, 4($t6)
/* B22FC 800B16FC 8FAB004C */  lw         $t3, 0x4c($sp)
/* B2300 800B1700 256A0008 */  addiu      $t2, $t3, 8
/* B2304 800B1704 AFAA004C */  sw         $t2, 0x4c($sp)
/* B2308 800B1708 AFAB0034 */  sw         $t3, 0x34($sp)
/* B230C 800B170C 8FAD0048 */  lw         $t5, 0x48($sp)
/* B2310 800B1710 8FAC0034 */  lw         $t4, 0x34($sp)
/* B2314 800B1714 3C010904 */  lui        $at, 0x904
/* B2318 800B1718 85B9001E */  lh         $t9, 0x1e($t5)
/* B231C 800B171C 3329FFFF */  andi       $t1, $t9, 0xffff
/* B2320 800B1720 0121C025 */  or         $t8, $t1, $at
/* B2324 800B1724 AD980000 */  sw         $t8, ($t4)
/* B2328 800B1728 8FA80034 */  lw         $t0, 0x34($sp)
/* B232C 800B172C AD000004 */  sw         $zero, 4($t0)
/* B2330 800B1730 8FAF004C */  lw         $t7, 0x4c($sp)
/* B2334 800B1734 25EE0008 */  addiu      $t6, $t7, 8
/* B2338 800B1738 AFAE004C */  sw         $t6, 0x4c($sp)
/* B233C 800B173C AFAF0030 */  sw         $t7, 0x30($sp)
/* B2340 800B1740 8FAB0048 */  lw         $t3, 0x48($sp)
/* B2344 800B1744 8FA90030 */  lw         $t1, 0x30($sp)
/* B2348 800B1748 3C010902 */  lui        $at, 0x902
/* B234C 800B174C 856A0028 */  lh         $t2, 0x28($t3)
/* B2350 800B1750 314DFFFF */  andi       $t5, $t2, 0xffff
/* B2354 800B1754 01A1C825 */  or         $t9, $t5, $at
/* B2358 800B1758 AD390000 */  sw         $t9, ($t1)
/* B235C 800B175C 8FB80048 */  lw         $t8, 0x48($sp)
/* B2360 800B1760 8FAD0030 */  lw         $t5, 0x30($sp)
/* B2364 800B1764 870C0026 */  lh         $t4, 0x26($t8)
/* B2368 800B1768 970E0024 */  lhu        $t6, 0x24($t8)
/* B236C 800B176C 3188FFFF */  andi       $t0, $t4, 0xffff
/* B2370 800B1770 00087C00 */  sll        $t7, $t0, 0x10
/* B2374 800B1774 31CBFFFF */  andi       $t3, $t6, 0xffff
/* B2378 800B1778 01EB5025 */  or         $t2, $t7, $t3
/* B237C 800B177C ADAA0004 */  sw         $t2, 4($t5)
/* B2380 800B1780 8FB9004C */  lw         $t9, 0x4c($sp)
/* B2384 800B1784 27290008 */  addiu      $t1, $t9, 8
/* B2388 800B1788 AFA9004C */  sw         $t1, 0x4c($sp)
/* B238C 800B178C AFB9002C */  sw         $t9, 0x2c($sp)
/* B2390 800B1790 8FAC0048 */  lw         $t4, 0x48($sp)
/* B2394 800B1794 8FAF002C */  lw         $t7, 0x2c($sp)
/* B2398 800B1798 3C010900 */  lui        $at, 0x900
/* B239C 800B179C 8588002E */  lh         $t0, 0x2e($t4)
/* B23A0 800B17A0 3118FFFF */  andi       $t8, $t0, 0xffff
/* B23A4 800B17A4 03017025 */  or         $t6, $t8, $at
/* B23A8 800B17A8 ADEE0000 */  sw         $t6, ($t7)
/* B23AC 800B17AC 8FAB0048 */  lw         $t3, 0x48($sp)
/* B23B0 800B17B0 8FB8002C */  lw         $t8, 0x2c($sp)
/* B23B4 800B17B4 856A002C */  lh         $t2, 0x2c($t3)
/* B23B8 800B17B8 9569002A */  lhu        $t1, 0x2a($t3)
/* B23BC 800B17BC 314DFFFF */  andi       $t5, $t2, 0xffff
/* B23C0 800B17C0 000DCC00 */  sll        $t9, $t5, 0x10
/* B23C4 800B17C4 312CFFFF */  andi       $t4, $t1, 0xffff
/* B23C8 800B17C8 032C4025 */  or         $t0, $t9, $t4
/* B23CC 800B17CC AF080004 */  sw         $t0, 4($t8)
/* B23D0 800B17D0 8FAE004C */  lw         $t6, 0x4c($sp)
/* B23D4 800B17D4 25CF0008 */  addiu      $t7, $t6, 8
/* B23D8 800B17D8 AFAF004C */  sw         $t7, 0x4c($sp)
/* B23DC 800B17DC AFAE0028 */  sw         $t6, 0x28($sp)
/* B23E0 800B17E0 8FAA0048 */  lw         $t2, 0x48($sp)
/* B23E4 800B17E4 8FB90028 */  lw         $t9, 0x28($sp)
/* B23E8 800B17E8 3C010908 */  lui        $at, 0x908
/* B23EC 800B17EC 854D0020 */  lh         $t5, 0x20($t2)
/* B23F0 800B17F0 31ABFFFF */  andi       $t3, $t5, 0xffff
/* B23F4 800B17F4 01614825 */  or         $t1, $t3, $at
/* B23F8 800B17F8 AF290000 */  sw         $t1, ($t9)
/* B23FC 800B17FC 8FAC0048 */  lw         $t4, 0x48($sp)
/* B2400 800B1800 8FAE0028 */  lw         $t6, 0x28($sp)
/* B2404 800B1804 85880022 */  lh         $t0, 0x22($t4)
/* B2408 800B1808 3118FFFF */  andi       $t8, $t0, 0xffff
/* B240C 800B180C ADD80004 */  sw         $t8, 4($t6)
/* B2410 800B1810 8FAF004C */  lw         $t7, 0x4c($sp)
/* B2414 800B1814 25EA0008 */  addiu      $t2, $t7, 8
/* B2418 800B1818 AFAA004C */  sw         $t2, 0x4c($sp)
/* B241C 800B181C AFAF0024 */  sw         $t7, 0x24($sp)
/* B2420 800B1820 8FAB0024 */  lw         $t3, 0x24($sp)
/* B2424 800B1824 3C0D0309 */  lui        $t5, 0x309
/* B2428 800B1828 AD6D0000 */  sw         $t5, ($t3)
/* B242C 800B182C 8FA90048 */  lw         $t1, 0x48($sp)
/* B2430 800B1830 0C026964 */  jal        func_8009A590
/* B2434 800B1834 8D240014 */   lw        $a0, 0x14($t1)
/* B2438 800B1838 8FB90024 */  lw         $t9, 0x24($sp)
/* B243C 800B183C AF220004 */  sw         $v0, 4($t9)
/* B2440 800B1840 1000000D */  b          .L800B1878
/* B2444 800B1844 00000000 */   nop
.L800B1848:
/* B2448 800B1848 8FAC004C */  lw         $t4, 0x4c($sp)
/* B244C 800B184C 25880008 */  addiu      $t0, $t4, 8
/* B2450 800B1850 AFA8004C */  sw         $t0, 0x4c($sp)
/* B2454 800B1854 AFAC0020 */  sw         $t4, 0x20($sp)
/* B2458 800B1858 8FAE0020 */  lw         $t6, 0x20($sp)
/* B245C 800B185C 3C180308 */  lui        $t8, 0x308
/* B2460 800B1860 ADD80000 */  sw         $t8, ($t6)
/* B2464 800B1864 8FAF0048 */  lw         $t7, 0x48($sp)
/* B2468 800B1868 0C026964 */  jal        func_8009A590
/* B246C 800B186C 8DE40014 */   lw        $a0, 0x14($t7)
/* B2470 800B1870 8FAA0020 */  lw         $t2, 0x20($sp)
/* B2474 800B1874 AD420004 */  sw         $v0, 4($t2)
.L800B1878:
/* B2478 800B1878 8FAD0054 */  lw         $t5, 0x54($sp)
/* B247C 800B187C 8FA9005C */  lw         $t1, 0x5c($sp)
/* B2480 800B1880 85AB0000 */  lh         $t3, ($t5)
/* B2484 800B1884 0009C840 */  sll        $t9, $t1, 1
/* B2488 800B1888 01796021 */  addu       $t4, $t3, $t9
/* B248C 800B188C A5AC0000 */  sh         $t4, ($t5)
/* B2490 800B1890 8FA80048 */  lw         $t0, 0x48($sp)
/* B2494 800B1894 8FAE005C */  lw         $t6, 0x5c($sp)
/* B2498 800B1898 8D180030 */  lw         $t8, 0x30($t0)
/* B249C 800B189C 030E7821 */  addu       $t7, $t8, $t6
/* B24A0 800B18A0 AD0F0030 */  sw         $t7, 0x30($t0)
/* B24A4 800B18A4 10000003 */  b          .L800B18B4
/* B24A8 800B18A8 8FA2004C */   lw        $v0, 0x4c($sp)
/* B24AC 800B18AC 10000001 */  b          .L800B18B4
/* B24B0 800B18B0 00000000 */   nop
.L800B18B4:
/* B24B4 800B18B4 8FBF001C */  lw         $ra, 0x1c($sp)
/* B24B8 800B18B8 27BD0050 */  addiu      $sp, $sp, 0x50
/* B24BC 800B18BC 03E00008 */  jr         $ra
/* B24C0 800B18C0 00000000 */   nop
