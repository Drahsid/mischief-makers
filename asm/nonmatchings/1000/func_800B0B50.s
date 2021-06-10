glabel func_800B0B50
/* B1750 800B0B50 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* B1754 800B0B54 AFBF001C */  sw         $ra, 0x1c($sp)
/* B1758 800B0B58 AFA40060 */  sw         $a0, 0x60($sp)
/* B175C 800B0B5C AFA50064 */  sw         $a1, 0x64($sp)
/* B1760 800B0B60 AFA60068 */  sw         $a2, 0x68($sp)
/* B1764 800B0B64 AFA7006C */  sw         $a3, 0x6c($sp)
/* B1768 800B0B68 8FAE0070 */  lw         $t6, 0x70($sp)
/* B176C 800B0B6C AFAE005C */  sw         $t6, 0x5c($sp)
/* B1770 800B0B70 8FAF0060 */  lw         $t7, 0x60($sp)
/* B1774 800B0B74 AFAF0058 */  sw         $t7, 0x58($sp)
/* B1778 800B0B78 8FB8006C */  lw         $t8, 0x6c($sp)
/* B177C 800B0B7C AFB8004C */  sw         $t8, 0x4c($sp)
/* B1780 800B0B80 A7A00046 */  sh         $zero, 0x46($sp)
/* B1784 800B0B84 A7A00056 */  sh         $zero, 0x56($sp)
/* B1788 800B0B88 8FB90058 */  lw         $t9, 0x58($sp)
/* B178C 800B0B8C 8F28003C */  lw         $t0, 0x3c($t9)
/* B1790 800B0B90 110001B6 */  beqz       $t0, .L800B126C
/* B1794 800B0B94 00000000 */   nop
.L800B0B98:
/* B1798 800B0B98 8FA9004C */  lw         $t1, 0x4c($sp)
/* B179C 800B0B9C AFA90050 */  sw         $t1, 0x50($sp)
/* B17A0 800B0BA0 8FAA0058 */  lw         $t2, 0x58($sp)
/* B17A4 800B0BA4 8D4B003C */  lw         $t3, 0x3c($t2)
/* B17A8 800B0BA8 8D6C0004 */  lw         $t4, 4($t3)
/* B17AC 800B0BAC AFAC004C */  sw         $t4, 0x4c($sp)
/* B17B0 800B0BB0 8FAD004C */  lw         $t5, 0x4c($sp)
/* B17B4 800B0BB4 8FAE0050 */  lw         $t6, 0x50($sp)
/* B17B8 800B0BB8 01AE7823 */  subu       $t7, $t5, $t6
/* B17BC 800B0BBC AFAF0048 */  sw         $t7, 0x48($sp)
/* B17C0 800B0BC0 8FB80048 */  lw         $t8, 0x48($sp)
/* B17C4 800B0BC4 8FB90068 */  lw         $t9, 0x68($sp)
/* B17C8 800B0BC8 0338082A */  slt        $at, $t9, $t8
/* B17CC 800B0BCC 10200003 */  beqz       $at, .L800B0BDC
/* B17D0 800B0BD0 00000000 */   nop
/* B17D4 800B0BD4 100001A5 */  b          .L800B126C
/* B17D8 800B0BD8 00000000 */   nop
.L800B0BDC:
/* B17DC 800B0BDC 8FA80048 */  lw         $t0, 0x48($sp)
/* B17E0 800B0BE0 05000003 */  bltz       $t0, .L800B0BF0
/* B17E4 800B0BE4 00000000 */   nop
/* B17E8 800B0BE8 10000007 */  b          .L800B0C08
/* B17EC 800B0BEC 00000000 */   nop
.L800B0BF0:
/* B17F0 800B0BF0 3C04800F */  lui        $a0, %hi(D_800EE530)
/* B17F4 800B0BF4 3C05800F */  lui        $a1, %hi(D_800EE540)
/* B17F8 800B0BF8 24A5E540 */  addiu      $a1, $a1, %lo(D_800EE540)
/* B17FC 800B0BFC 2484E530 */  addiu      $a0, $a0, %lo(D_800EE530)
/* B1800 800B0C00 0C026E74 */  jal        func_8009B9D0
/* B1804 800B0C04 24060069 */   addiu     $a2, $zero, 0x69
.L800B0C08:
/* B1808 800B0C08 8FA90048 */  lw         $t1, 0x48($sp)
/* B180C 800B0C0C 292100A1 */  slti       $at, $t1, 0xa1
/* B1810 800B0C10 10200003 */  beqz       $at, .L800B0C20
/* B1814 800B0C14 00000000 */   nop
/* B1818 800B0C18 10000007 */  b          .L800B0C38
/* B181C 800B0C1C 00000000 */   nop
.L800B0C20:
/* B1820 800B0C20 3C04800F */  lui        $a0, %hi(D_800EE550)
/* B1824 800B0C24 3C05800F */  lui        $a1, %hi(D_800EE570)
/* B1828 800B0C28 24A5E570 */  addiu      $a1, $a1, %lo(D_800EE570)
/* B182C 800B0C2C 2484E550 */  addiu      $a0, $a0, %lo(D_800EE550)
/* B1830 800B0C30 0C026E74 */  jal        func_8009B9D0
/* B1834 800B0C34 2406006A */   addiu     $a2, $zero, 0x6a
.L800B0C38:
/* B1838 800B0C38 8FAA0058 */  lw         $t2, 0x58($sp)
/* B183C 800B0C3C 8D4B003C */  lw         $t3, 0x3c($t2)
/* B1840 800B0C40 956C0008 */  lhu        $t4, 8($t3)
/* B1844 800B0C44 2D810011 */  sltiu      $at, $t4, 0x11
/* B1848 800B0C48 10200158 */  beqz       $at, .L800B11AC
/* B184C 800B0C4C 00000000 */   nop
/* B1850 800B0C50 000C6080 */  sll        $t4, $t4, 2
/* B1854 800B0C54 3C01800F */  lui        $at, %hi(D_800EE598)
/* B1858 800B0C58 002C0821 */  addu       $at, $at, $t4
/* B185C 800B0C5C 8C2CE598 */  lw         $t4, %lo(D_800EE598)($at)
/* B1860 800B0C60 01800008 */  jr         $t4
/* B1864 800B0C64 00000000 */   nop
/* B1868 800B0C68 8FAD0058 */  lw         $t5, 0x58($sp)
/* B186C 800B0C6C 8DAE003C */  lw         $t6, 0x3c($t5)
/* B1870 800B0C70 AFAE0038 */  sw         $t6, 0x38($sp)
/* B1874 800B0C74 8FAF0058 */  lw         $t7, 0x58($sp)
/* B1878 800B0C78 AFAF0034 */  sw         $t7, 0x34($sp)
/* B187C 800B0C7C 8FB80038 */  lw         $t8, 0x38($sp)
/* B1880 800B0C80 8719000A */  lh         $t9, 0xa($t8)
/* B1884 800B0C84 13200008 */  beqz       $t9, .L800B0CA8
/* B1888 800B0C88 00000000 */   nop
/* B188C 800B0C8C 8FA80058 */  lw         $t0, 0x58($sp)
/* B1890 800B0C90 24050008 */  addiu      $a1, $zero, 8
/* B1894 800B0C94 00003025 */  or         $a2, $zero, $zero
/* B1898 800B0C98 8D190008 */  lw         $t9, 8($t0)
/* B189C 800B0C9C 01002025 */  or         $a0, $t0, $zero
/* B18A0 800B0CA0 0320F809 */  jalr       $t9
/* B18A4 800B0CA4 00000000 */   nop
.L800B0CA8:
/* B18A8 800B0CA8 8FA90058 */  lw         $t1, 0x58($sp)
/* B18AC 800B0CAC 8FAA0038 */  lw         $t2, 0x38($sp)
/* B18B0 800B0CB0 24050005 */  addiu      $a1, $zero, 5
/* B18B4 800B0CB4 8D390008 */  lw         $t9, 8($t1)
/* B18B8 800B0CB8 01202025 */  or         $a0, $t1, $zero
/* B18BC 800B0CBC 8D460018 */  lw         $a2, 0x18($t2)
/* B18C0 800B0CC0 0320F809 */  jalr       $t9
/* B18C4 800B0CC4 00000000 */   nop
/* B18C8 800B0CC8 8FAB0058 */  lw         $t3, 0x58($sp)
/* B18CC 800B0CCC 24050009 */  addiu      $a1, $zero, 9
/* B18D0 800B0CD0 00003025 */  or         $a2, $zero, $zero
/* B18D4 800B0CD4 8D790008 */  lw         $t9, 8($t3)
/* B18D8 800B0CD8 01602025 */  or         $a0, $t3, $zero
/* B18DC 800B0CDC 0320F809 */  jalr       $t9
/* B18E0 800B0CE0 00000000 */   nop
/* B18E4 800B0CE4 8FAD0058 */  lw         $t5, 0x58($sp)
/* B18E8 800B0CE8 240C0001 */  addiu      $t4, $zero, 1
/* B18EC 800B0CEC ADAC0038 */  sw         $t4, 0x38($t5)
/* B18F0 800B0CF0 8FAE0058 */  lw         $t6, 0x58($sp)
/* B18F4 800B0CF4 ADC00030 */  sw         $zero, 0x30($t6)
/* B18F8 800B0CF8 8FAF0038 */  lw         $t7, 0x38($sp)
/* B18FC 800B0CFC 8FA80058 */  lw         $t0, 0x58($sp)
/* B1900 800B0D00 8DF80014 */  lw         $t8, 0x14($t7)
/* B1904 800B0D04 AD180034 */  sw         $t8, 0x34($t0)
/* B1908 800B0D08 8FAA0038 */  lw         $t2, 0x38($sp)
/* B190C 800B0D0C 85490010 */  lh         $t1, 0x10($t2)
/* B1910 800B0D10 01290019 */  multu      $t1, $t1
/* B1914 800B0D14 00005812 */  mflo       $t3
/* B1918 800B0D18 000BCBC3 */  sra        $t9, $t3, 0xf
/* B191C 800B0D1C AFB90030 */  sw         $t9, 0x30($sp)
/* B1920 800B0D20 8FAC0030 */  lw         $t4, 0x30($sp)
/* B1924 800B0D24 8FAD0058 */  lw         $t5, 0x58($sp)
/* B1928 800B0D28 A5AC001A */  sh         $t4, 0x1a($t5)
/* B192C 800B0D2C 8FAE0038 */  lw         $t6, 0x38($sp)
/* B1930 800B0D30 8FB80058 */  lw         $t8, 0x58($sp)
/* B1934 800B0D34 91CF0012 */  lbu        $t7, 0x12($t6)
/* B1938 800B0D38 A70F0018 */  sh         $t7, 0x18($t8)
/* B193C 800B0D3C 8FA80038 */  lw         $t0, 0x38($sp)
/* B1940 800B0D40 3C0B800F */  lui        $t3, %hi(D_800EA7F0)
/* B1944 800B0D44 8FB90058 */  lw         $t9, 0x58($sp)
/* B1948 800B0D48 910A0013 */  lbu        $t2, 0x13($t0)
/* B194C 800B0D4C 000A4840 */  sll        $t1, $t2, 1
/* B1950 800B0D50 01695821 */  addu       $t3, $t3, $t1
/* B1954 800B0D54 856BA7F0 */  lh         $t3, %lo(D_800EA7F0)($t3)
/* B1958 800B0D58 A72B0020 */  sh         $t3, 0x20($t9)
/* B195C 800B0D5C 8FAC0038 */  lw         $t4, 0x38($sp)
/* B1960 800B0D60 3C18800F */  lui        $t8, 0x800f
/* B1964 800B0D64 8FA80058 */  lw         $t0, 0x58($sp)
/* B1968 800B0D68 918D0013 */  lbu        $t5, 0x13($t4)
/* B196C 800B0D6C 000D7023 */  negu       $t6, $t5
/* B1970 800B0D70 000E7840 */  sll        $t7, $t6, 1
/* B1974 800B0D74 030FC021 */  addu       $t8, $t8, $t7
/* B1978 800B0D78 8718A8EE */  lh         $t8, -0x5712($t8)
/* B197C 800B0D7C A5180022 */  sh         $t8, 0x22($t0)
/* B1980 800B0D80 8FAA0038 */  lw         $t2, 0x38($sp)
/* B1984 800B0D84 8D490014 */  lw         $t1, 0x14($t2)
/* B1988 800B0D88 11200008 */  beqz       $t1, .L800B0DAC
/* B198C 800B0D8C 00000000 */   nop
/* B1990 800B0D90 8FB90058 */  lw         $t9, 0x58($sp)
/* B1994 800B0D94 240B0001 */  addiu      $t3, $zero, 1
/* B1998 800B0D98 A72B001C */  sh         $t3, 0x1c($t9)
/* B199C 800B0D9C 8FAD0058 */  lw         $t5, 0x58($sp)
/* B19A0 800B0DA0 240C0001 */  addiu      $t4, $zero, 1
/* B19A4 800B0DA4 10000018 */  b          .L800B0E08
/* B19A8 800B0DA8 A5AC001E */   sh        $t4, 0x1e($t5)
.L800B0DAC:
/* B19AC 800B0DAC 8FAE0058 */  lw         $t6, 0x58($sp)
/* B19B0 800B0DB0 3C08800F */  lui        $t0, %hi(D_800EA7F0)
/* B19B4 800B0DB4 85CF0018 */  lh         $t7, 0x18($t6)
/* B19B8 800B0DB8 85CA001A */  lh         $t2, 0x1a($t6)
/* B19BC 800B0DBC 000FC040 */  sll        $t8, $t7, 1
/* B19C0 800B0DC0 01184021 */  addu       $t0, $t0, $t8
/* B19C4 800B0DC4 8508A7F0 */  lh         $t0, %lo(D_800EA7F0)($t0)
/* B19C8 800B0DC8 010A0019 */  multu      $t0, $t2
/* B19CC 800B0DCC 00004812 */  mflo       $t1
/* B19D0 800B0DD0 00095BC3 */  sra        $t3, $t1, 0xf
/* B19D4 800B0DD4 A5CB001C */  sh         $t3, 0x1c($t6)
/* B19D8 800B0DD8 8FB90058 */  lw         $t9, 0x58($sp)
/* B19DC 800B0DDC 3C18800F */  lui        $t8, 0x800f
/* B19E0 800B0DE0 872C0018 */  lh         $t4, 0x18($t9)
/* B19E4 800B0DE4 8728001A */  lh         $t0, 0x1a($t9)
/* B19E8 800B0DE8 000C6823 */  negu       $t5, $t4
/* B19EC 800B0DEC 000D7840 */  sll        $t7, $t5, 1
/* B19F0 800B0DF0 030FC021 */  addu       $t8, $t8, $t7
/* B19F4 800B0DF4 8718A8EE */  lh         $t8, -0x5712($t8)
/* B19F8 800B0DF8 03080019 */  multu      $t8, $t0
/* B19FC 800B0DFC 00005012 */  mflo       $t2
/* B1A00 800B0E00 000A4BC3 */  sra        $t1, $t2, 0xf
/* B1A04 800B0E04 A729001E */  sh         $t1, 0x1e($t9)
.L800B0E08:
/* B1A08 800B0E08 8FAB0034 */  lw         $t3, 0x34($sp)
/* B1A0C 800B0E0C 8D6E0000 */  lw         $t6, ($t3)
/* B1A10 800B0E10 11C0000C */  beqz       $t6, .L800B0E44
/* B1A14 800B0E14 00000000 */   nop
/* B1A18 800B0E18 8FAC0038 */  lw         $t4, 0x38($sp)
/* B1A1C 800B0E1C C584000C */  lwc1       $f4, 0xc($t4)
/* B1A20 800B0E20 E7A4002C */  swc1       $f4, 0x2c($sp)
/* B1A24 800B0E24 8FAD0034 */  lw         $t5, 0x34($sp)
/* B1A28 800B0E28 24050007 */  addiu      $a1, $zero, 7
/* B1A2C 800B0E2C 8FA6002C */  lw         $a2, 0x2c($sp)
/* B1A30 800B0E30 8DAF0000 */  lw         $t7, ($t5)
/* B1A34 800B0E34 8DF90008 */  lw         $t9, 8($t7)
/* B1A38 800B0E38 01E02025 */  or         $a0, $t7, $zero
/* B1A3C 800B0E3C 0320F809 */  jalr       $t9
/* B1A40 800B0E40 00000000 */   nop
.L800B0E44:
/* B1A44 800B0E44 100000ED */  b          .L800B11FC
/* B1A48 800B0E48 00000000 */   nop
/* B1A4C 800B0E4C 8FB8006C */  lw         $t8, 0x6c($sp)
/* B1A50 800B0E50 8FA8005C */  lw         $t0, 0x5c($sp)
/* B1A54 800B0E54 8FA40058 */  lw         $a0, 0x58($sp)
/* B1A58 800B0E58 27A50056 */  addiu      $a1, $sp, 0x56
/* B1A5C 800B0E5C 27A60046 */  addiu      $a2, $sp, 0x46
/* B1A60 800B0E60 8FA70048 */  lw         $a3, 0x48($sp)
/* B1A64 800B0E64 AFB80010 */  sw         $t8, 0x10($sp)
/* B1A68 800B0E68 0C02C521 */  jal        func_800B1484
/* B1A6C 800B0E6C AFA80014 */   sw        $t0, 0x14($sp)
/* B1A70 800B0E70 AFA2005C */  sw         $v0, 0x5c($sp)
/* B1A74 800B0E74 8FAA0058 */  lw         $t2, 0x58($sp)
/* B1A78 800B0E78 8D490030 */  lw         $t1, 0x30($t2)
/* B1A7C 800B0E7C 8D4B0034 */  lw         $t3, 0x34($t2)
/* B1A80 800B0E80 012B082A */  slt        $at, $t1, $t3
/* B1A84 800B0E84 14200022 */  bnez       $at, .L800B0F10
/* B1A88 800B0E88 00000000 */   nop
/* B1A8C 800B0E8C 8FAE0058 */  lw         $t6, 0x58($sp)
/* B1A90 800B0E90 3C0F800F */  lui        $t7, %hi(D_800EA7F0)
/* B1A94 800B0E94 85CC0018 */  lh         $t4, 0x18($t6)
/* B1A98 800B0E98 85D9001A */  lh         $t9, 0x1a($t6)
/* B1A9C 800B0E9C 000C6840 */  sll        $t5, $t4, 1
/* B1AA0 800B0EA0 01ED7821 */  addu       $t7, $t7, $t5
/* B1AA4 800B0EA4 85EFA7F0 */  lh         $t7, %lo(D_800EA7F0)($t7)
/* B1AA8 800B0EA8 01F90019 */  multu      $t7, $t9
/* B1AAC 800B0EAC 0000C012 */  mflo       $t8
/* B1AB0 800B0EB0 001843C3 */  sra        $t0, $t8, 0xf
/* B1AB4 800B0EB4 A5C80028 */  sh         $t0, 0x28($t6)
/* B1AB8 800B0EB8 8FAA0058 */  lw         $t2, 0x58($sp)
/* B1ABC 800B0EBC 3C0D800F */  lui        $t5, 0x800f
/* B1AC0 800B0EC0 85490018 */  lh         $t1, 0x18($t2)
/* B1AC4 800B0EC4 854F001A */  lh         $t7, 0x1a($t2)
/* B1AC8 800B0EC8 00095823 */  negu       $t3, $t1
/* B1ACC 800B0ECC 000B6040 */  sll        $t4, $t3, 1
/* B1AD0 800B0ED0 01AC6821 */  addu       $t5, $t5, $t4
/* B1AD4 800B0ED4 85ADA8EE */  lh         $t5, -0x5712($t5)
/* B1AD8 800B0ED8 01AF0019 */  multu      $t5, $t7
/* B1ADC 800B0EDC 0000C812 */  mflo       $t9
/* B1AE0 800B0EE0 0019C3C3 */  sra        $t8, $t9, 0xf
/* B1AE4 800B0EE4 A558002E */  sh         $t8, 0x2e($t2)
/* B1AE8 800B0EE8 8FA80058 */  lw         $t0, 0x58($sp)
/* B1AEC 800B0EEC 8D0E0034 */  lw         $t6, 0x34($t0)
/* B1AF0 800B0EF0 AD0E0030 */  sw         $t6, 0x30($t0)
/* B1AF4 800B0EF4 8FA90058 */  lw         $t1, 0x58($sp)
/* B1AF8 800B0EF8 852B0028 */  lh         $t3, 0x28($t1)
/* B1AFC 800B0EFC A52B001C */  sh         $t3, 0x1c($t1)
/* B1B00 800B0F00 8FAC0058 */  lw         $t4, 0x58($sp)
/* B1B04 800B0F04 858D002E */  lh         $t5, 0x2e($t4)
/* B1B08 800B0F08 1000001B */  b          .L800B0F78
/* B1B0C 800B0F0C A58D001E */   sh        $t5, 0x1e($t4)
.L800B0F10:
/* B1B10 800B0F10 8FAF0058 */  lw         $t7, 0x58($sp)
/* B1B14 800B0F14 85F9001C */  lh         $t9, 0x1c($t7)
/* B1B18 800B0F18 8DE50030 */  lw         $a1, 0x30($t7)
/* B1B1C 800B0F1C 85E60026 */  lh         $a2, 0x26($t7)
/* B1B20 800B0F20 44993000 */  mtc1       $t9, $f6
/* B1B24 800B0F24 95E70024 */  lhu        $a3, 0x24($t7)
/* B1B28 800B0F28 0C02C757 */  jal        func_800B1D5C
/* B1B2C 800B0F2C 46803320 */   cvt.s.w   $f12, $f6
/* B1B30 800B0F30 4600020D */  trunc.w.s  $f8, $f0
/* B1B34 800B0F34 8FAE0058 */  lw         $t6, 0x58($sp)
/* B1B38 800B0F38 440A4000 */  mfc1       $t2, $f8
/* B1B3C 800B0F3C 00000000 */  nop
/* B1B40 800B0F40 A5CA001C */  sh         $t2, 0x1c($t6)
/* B1B44 800B0F44 8FA80058 */  lw         $t0, 0x58($sp)
/* B1B48 800B0F48 850B001E */  lh         $t3, 0x1e($t0)
/* B1B4C 800B0F4C 8D050030 */  lw         $a1, 0x30($t0)
/* B1B50 800B0F50 8506002C */  lh         $a2, 0x2c($t0)
/* B1B54 800B0F54 448B5000 */  mtc1       $t3, $f10
/* B1B58 800B0F58 9507002A */  lhu        $a3, 0x2a($t0)
/* B1B5C 800B0F5C 0C02C757 */  jal        func_800B1D5C
/* B1B60 800B0F60 46805320 */   cvt.s.w   $f12, $f10
/* B1B64 800B0F64 4600040D */  trunc.w.s  $f16, $f0
/* B1B68 800B0F68 8FAC0058 */  lw         $t4, 0x58($sp)
/* B1B6C 800B0F6C 440D8000 */  mfc1       $t5, $f16
/* B1B70 800B0F70 00000000 */  nop
/* B1B74 800B0F74 A58D001E */  sh         $t5, 0x1e($t4)
.L800B0F78:
/* B1B78 800B0F78 8FB90058 */  lw         $t9, 0x58($sp)
/* B1B7C 800B0F7C 872F001C */  lh         $t7, 0x1c($t9)
/* B1B80 800B0F80 15E00004 */  bnez       $t7, .L800B0F94
/* B1B84 800B0F84 00000000 */   nop
/* B1B88 800B0F88 8FAA0058 */  lw         $t2, 0x58($sp)
/* B1B8C 800B0F8C 24180001 */  addiu      $t8, $zero, 1
/* B1B90 800B0F90 A558001C */  sh         $t8, 0x1c($t2)
.L800B0F94:
/* B1B94 800B0F94 8FAE0058 */  lw         $t6, 0x58($sp)
/* B1B98 800B0F98 85CB001E */  lh         $t3, 0x1e($t6)
/* B1B9C 800B0F9C 15600004 */  bnez       $t3, .L800B0FB0
/* B1BA0 800B0FA0 00000000 */   nop
/* B1BA4 800B0FA4 8FA90058 */  lw         $t1, 0x58($sp)
/* B1BA8 800B0FA8 24080001 */  addiu      $t0, $zero, 1
/* B1BAC 800B0FAC A528001E */  sh         $t0, 0x1e($t1)
.L800B0FB0:
/* B1BB0 800B0FB0 8FAD0058 */  lw         $t5, 0x58($sp)
/* B1BB4 800B0FB4 2401000C */  addiu      $at, $zero, 0xc
/* B1BB8 800B0FB8 8DAC003C */  lw         $t4, 0x3c($t5)
/* B1BBC 800B0FBC 85990008 */  lh         $t9, 8($t4)
/* B1BC0 800B0FC0 17210005 */  bne        $t9, $at, .L800B0FD8
/* B1BC4 800B0FC4 00000000 */   nop
/* B1BC8 800B0FC8 8FAF0058 */  lw         $t7, 0x58($sp)
/* B1BCC 800B0FCC 8DF8003C */  lw         $t8, 0x3c($t7)
/* B1BD0 800B0FD0 8F0A000C */  lw         $t2, 0xc($t8)
/* B1BD4 800B0FD4 A5EA0018 */  sh         $t2, 0x18($t7)
.L800B0FD8:
/* B1BD8 800B0FD8 8FAE0058 */  lw         $t6, 0x58($sp)
/* B1BDC 800B0FDC 2401000B */  addiu      $at, $zero, 0xb
/* B1BE0 800B0FE0 8DCB003C */  lw         $t3, 0x3c($t6)
/* B1BE4 800B0FE4 85680008 */  lh         $t0, 8($t3)
/* B1BE8 800B0FE8 15010013 */  bne        $t0, $at, .L800B1038
/* B1BEC 800B0FEC 00000000 */   nop
/* B1BF0 800B0FF0 8FA90058 */  lw         $t1, 0x58($sp)
/* B1BF4 800B0FF4 AD200030 */  sw         $zero, 0x30($t1)
/* B1BF8 800B0FF8 8FAD0058 */  lw         $t5, 0x58($sp)
/* B1BFC 800B0FFC 8DAC003C */  lw         $t4, 0x3c($t5)
/* B1C00 800B1000 8D99000C */  lw         $t9, 0xc($t4)
/* B1C04 800B1004 AFB90040 */  sw         $t9, 0x40($sp)
/* B1C08 800B1008 8FB80040 */  lw         $t8, 0x40($sp)
/* B1C0C 800B100C 03180019 */  multu      $t8, $t8
/* B1C10 800B1010 00005012 */  mflo       $t2
/* B1C14 800B1014 000A7BC3 */  sra        $t7, $t2, 0xf
/* B1C18 800B1018 AFAF0040 */  sw         $t7, 0x40($sp)
/* B1C1C 800B101C 8FAE0040 */  lw         $t6, 0x40($sp)
/* B1C20 800B1020 8FAB0058 */  lw         $t3, 0x58($sp)
/* B1C24 800B1024 A56E001A */  sh         $t6, 0x1a($t3)
/* B1C28 800B1028 8FA80058 */  lw         $t0, 0x58($sp)
/* B1C2C 800B102C 8D09003C */  lw         $t1, 0x3c($t0)
/* B1C30 800B1030 8D2D0010 */  lw         $t5, 0x10($t1)
/* B1C34 800B1034 AD0D0034 */  sw         $t5, 0x34($t0)
.L800B1038:
/* B1C38 800B1038 8FAC0058 */  lw         $t4, 0x58($sp)
/* B1C3C 800B103C 24010010 */  addiu      $at, $zero, 0x10
/* B1C40 800B1040 8D99003C */  lw         $t9, 0x3c($t4)
/* B1C44 800B1044 87380008 */  lh         $t8, 8($t9)
/* B1C48 800B1048 17010012 */  bne        $t8, $at, .L800B1094
/* B1C4C 800B104C 00000000 */   nop
/* B1C50 800B1050 8FAA0058 */  lw         $t2, 0x58($sp)
/* B1C54 800B1054 3C09800F */  lui        $t1, %hi(D_800EA7F0)
/* B1C58 800B1058 8D4F003C */  lw         $t7, 0x3c($t2)
/* B1C5C 800B105C 8DEE000C */  lw         $t6, 0xc($t7)
/* B1C60 800B1060 000E5840 */  sll        $t3, $t6, 1
/* B1C64 800B1064 012B4821 */  addu       $t1, $t1, $t3
/* B1C68 800B1068 8529A7F0 */  lh         $t1, %lo(D_800EA7F0)($t1)
/* B1C6C 800B106C A5490020 */  sh         $t1, 0x20($t2)
/* B1C70 800B1070 8FAD0058 */  lw         $t5, 0x58($sp)
/* B1C74 800B1074 3C0F800F */  lui        $t7, 0x800f
/* B1C78 800B1078 8DA8003C */  lw         $t0, 0x3c($t5)
/* B1C7C 800B107C 8D0C000C */  lw         $t4, 0xc($t0)
/* B1C80 800B1080 000CC823 */  negu       $t9, $t4
/* B1C84 800B1084 0019C040 */  sll        $t8, $t9, 1
/* B1C88 800B1088 01F87821 */  addu       $t7, $t7, $t8
/* B1C8C 800B108C 85EFA8EE */  lh         $t7, -0x5712($t7)
/* B1C90 800B1090 A5AF0022 */  sh         $t7, 0x22($t5)
.L800B1094:
/* B1C94 800B1094 8FAB0058 */  lw         $t3, 0x58($sp)
/* B1C98 800B1098 240E0001 */  addiu      $t6, $zero, 1
/* B1C9C 800B109C AD6E0038 */  sw         $t6, 0x38($t3)
/* B1CA0 800B10A0 10000056 */  b          .L800B11FC
/* B1CA4 800B10A4 00000000 */   nop
/* B1CA8 800B10A8 8FA90058 */  lw         $t1, 0x58($sp)
/* B1CAC 800B10AC 8D2A003C */  lw         $t2, 0x3c($t1)
/* B1CB0 800B10B0 AFAA0028 */  sw         $t2, 0x28($sp)
/* B1CB4 800B10B4 8FA80028 */  lw         $t0, 0x28($sp)
/* B1CB8 800B10B8 850C000A */  lh         $t4, 0xa($t0)
/* B1CBC 800B10BC 11800008 */  beqz       $t4, .L800B10E0
/* B1CC0 800B10C0 00000000 */   nop
/* B1CC4 800B10C4 8FB90058 */  lw         $t9, 0x58($sp)
/* B1CC8 800B10C8 24050008 */  addiu      $a1, $zero, 8
/* B1CCC 800B10CC 00003025 */  or         $a2, $zero, $zero
/* B1CD0 800B10D0 03202025 */  or         $a0, $t9, $zero
/* B1CD4 800B10D4 8F390008 */  lw         $t9, 8($t9)
/* B1CD8 800B10D8 0320F809 */  jalr       $t9
/* B1CDC 800B10DC 00000000 */   nop
.L800B10E0:
/* B1CE0 800B10E0 8FB80058 */  lw         $t8, 0x58($sp)
/* B1CE4 800B10E4 8FAF0028 */  lw         $t7, 0x28($sp)
/* B1CE8 800B10E8 24050005 */  addiu      $a1, $zero, 5
/* B1CEC 800B10EC 8F190008 */  lw         $t9, 8($t8)
/* B1CF0 800B10F0 03002025 */  or         $a0, $t8, $zero
/* B1CF4 800B10F4 8DE6000C */  lw         $a2, 0xc($t7)
/* B1CF8 800B10F8 0320F809 */  jalr       $t9
/* B1CFC 800B10FC 00000000 */   nop
/* B1D00 800B1100 8FAD0058 */  lw         $t5, 0x58($sp)
/* B1D04 800B1104 24050009 */  addiu      $a1, $zero, 9
/* B1D08 800B1108 00003025 */  or         $a2, $zero, $zero
/* B1D0C 800B110C 8DB90008 */  lw         $t9, 8($t5)
/* B1D10 800B1110 01A02025 */  or         $a0, $t5, $zero
/* B1D14 800B1114 0320F809 */  jalr       $t9
/* B1D18 800B1118 00000000 */   nop
/* B1D1C 800B111C 10000037 */  b          .L800B11FC
/* B1D20 800B1120 00000000 */   nop
/* B1D24 800B1124 8FAE006C */  lw         $t6, 0x6c($sp)
/* B1D28 800B1128 8FAB005C */  lw         $t3, 0x5c($sp)
/* B1D2C 800B112C 8FA40058 */  lw         $a0, 0x58($sp)
/* B1D30 800B1130 27A50056 */  addiu      $a1, $sp, 0x56
/* B1D34 800B1134 27A60046 */  addiu      $a2, $sp, 0x46
/* B1D38 800B1138 8FA70048 */  lw         $a3, 0x48($sp)
/* B1D3C 800B113C AFAE0010 */  sw         $t6, 0x10($sp)
/* B1D40 800B1140 0C02C521 */  jal        func_800B1484
/* B1D44 800B1144 AFAB0014 */   sw        $t3, 0x14($sp)
/* B1D48 800B1148 AFA2005C */  sw         $v0, 0x5c($sp)
/* B1D4C 800B114C 8FA90058 */  lw         $t1, 0x58($sp)
/* B1D50 800B1150 24050004 */  addiu      $a1, $zero, 4
/* B1D54 800B1154 00003025 */  or         $a2, $zero, $zero
/* B1D58 800B1158 8D390008 */  lw         $t9, 8($t1)
/* B1D5C 800B115C 01202025 */  or         $a0, $t1, $zero
/* B1D60 800B1160 0320F809 */  jalr       $t9
/* B1D64 800B1164 00000000 */   nop
/* B1D68 800B1168 10000024 */  b          .L800B11FC
/* B1D6C 800B116C 00000000 */   nop
/* B1D70 800B1170 3C0A800F */  lui        $t2, %hi(D_800EA520)
/* B1D74 800B1174 8D4AA520 */  lw         $t2, %lo(D_800EA520)($t2)
/* B1D78 800B1178 AFAA0024 */  sw         $t2, 0x24($sp)
/* B1D7C 800B117C 8FA80058 */  lw         $t0, 0x58($sp)
/* B1D80 800B1180 8D0C003C */  lw         $t4, 0x3c($t0)
/* B1D84 800B1184 AFAC0020 */  sw         $t4, 0x20($sp)
/* B1D88 800B1188 8FAF0020 */  lw         $t7, 0x20($sp)
/* B1D8C 800B118C 8DF8000C */  lw         $t8, 0xc($t7)
/* B1D90 800B1190 AF0000D8 */  sw         $zero, 0xd8($t8)
/* B1D94 800B1194 8FAD0020 */  lw         $t5, 0x20($sp)
/* B1D98 800B1198 8FA40024 */  lw         $a0, 0x24($sp)
/* B1D9C 800B119C 0C027B26 */  jal        func_8009EC98
/* B1DA0 800B11A0 8DA5000C */   lw        $a1, 0xc($t5)
/* B1DA4 800B11A4 10000015 */  b          .L800B11FC
/* B1DA8 800B11A8 00000000 */   nop
.L800B11AC:
/* B1DAC 800B11AC 8FAE006C */  lw         $t6, 0x6c($sp)
/* B1DB0 800B11B0 8FAB005C */  lw         $t3, 0x5c($sp)
/* B1DB4 800B11B4 8FA40058 */  lw         $a0, 0x58($sp)
/* B1DB8 800B11B8 27A50056 */  addiu      $a1, $sp, 0x56
/* B1DBC 800B11BC 27A60046 */  addiu      $a2, $sp, 0x46
/* B1DC0 800B11C0 8FA70048 */  lw         $a3, 0x48($sp)
/* B1DC4 800B11C4 AFAE0010 */  sw         $t6, 0x10($sp)
/* B1DC8 800B11C8 0C02C521 */  jal        func_800B1484
/* B1DCC 800B11CC AFAB0014 */   sw        $t3, 0x14($sp)
/* B1DD0 800B11D0 AFA2005C */  sw         $v0, 0x5c($sp)
/* B1DD4 800B11D4 8FA90058 */  lw         $t1, 0x58($sp)
/* B1DD8 800B11D8 8D39003C */  lw         $t9, 0x3c($t1)
/* B1DDC 800B11DC 01202025 */  or         $a0, $t1, $zero
/* B1DE0 800B11E0 87250008 */  lh         $a1, 8($t9)
/* B1DE4 800B11E4 8F26000C */  lw         $a2, 0xc($t9)
/* B1DE8 800B11E8 8D390008 */  lw         $t9, 8($t1)
/* B1DEC 800B11EC 0320F809 */  jalr       $t9
/* B1DF0 800B11F0 00000000 */   nop
/* B1DF4 800B11F4 10000001 */  b          .L800B11FC
/* B1DF8 800B11F8 00000000 */   nop
.L800B11FC:
/* B1DFC 800B11FC 8FA80048 */  lw         $t0, 0x48($sp)
/* B1E00 800B1200 87AA0046 */  lh         $t2, 0x46($sp)
/* B1E04 800B1204 00086040 */  sll        $t4, $t0, 1
/* B1E08 800B1208 014C7821 */  addu       $t7, $t2, $t4
/* B1E0C 800B120C A7AF0046 */  sh         $t7, 0x46($sp)
/* B1E10 800B1210 8FB80068 */  lw         $t8, 0x68($sp)
/* B1E14 800B1214 8FAD0048 */  lw         $t5, 0x48($sp)
/* B1E18 800B1218 030D7023 */  subu       $t6, $t8, $t5
/* B1E1C 800B121C AFAE0068 */  sw         $t6, 0x68($sp)
/* B1E20 800B1220 8FAB0058 */  lw         $t3, 0x58($sp)
/* B1E24 800B1224 8D69003C */  lw         $t1, 0x3c($t3)
/* B1E28 800B1228 AFA9003C */  sw         $t1, 0x3c($sp)
/* B1E2C 800B122C 8FB90058 */  lw         $t9, 0x58($sp)
/* B1E30 800B1230 8F28003C */  lw         $t0, 0x3c($t9)
/* B1E34 800B1234 8D0A0000 */  lw         $t2, ($t0)
/* B1E38 800B1238 AF2A003C */  sw         $t2, 0x3c($t9)
/* B1E3C 800B123C 8FAC0058 */  lw         $t4, 0x58($sp)
/* B1E40 800B1240 8D8F003C */  lw         $t7, 0x3c($t4)
/* B1E44 800B1244 15E00003 */  bnez       $t7, .L800B1254
/* B1E48 800B1248 00000000 */   nop
/* B1E4C 800B124C 8FB80058 */  lw         $t8, 0x58($sp)
/* B1E50 800B1250 AF000040 */  sw         $zero, 0x40($t8)
.L800B1254:
/* B1E54 800B1254 0C027B00 */  jal        func_8009EC00
/* B1E58 800B1258 8FA4003C */   lw        $a0, 0x3c($sp)
/* B1E5C 800B125C 8FAD0058 */  lw         $t5, 0x58($sp)
/* B1E60 800B1260 8DAE003C */  lw         $t6, 0x3c($t5)
/* B1E64 800B1264 15C0FE4C */  bnez       $t6, .L800B0B98
/* B1E68 800B1268 00000000 */   nop
.L800B126C:
/* B1E6C 800B126C 8FAB006C */  lw         $t3, 0x6c($sp)
/* B1E70 800B1270 8FA9005C */  lw         $t1, 0x5c($sp)
/* B1E74 800B1274 8FA40058 */  lw         $a0, 0x58($sp)
/* B1E78 800B1278 27A50056 */  addiu      $a1, $sp, 0x56
/* B1E7C 800B127C 27A60046 */  addiu      $a2, $sp, 0x46
/* B1E80 800B1280 8FA70068 */  lw         $a3, 0x68($sp)
/* B1E84 800B1284 AFAB0010 */  sw         $t3, 0x10($sp)
/* B1E88 800B1288 0C02C521 */  jal        func_800B1484
/* B1E8C 800B128C AFA90014 */   sw        $t1, 0x14($sp)
/* B1E90 800B1290 AFA2005C */  sw         $v0, 0x5c($sp)
/* B1E94 800B1294 8FA80058 */  lw         $t0, 0x58($sp)
/* B1E98 800B1298 8D0A0030 */  lw         $t2, 0x30($t0)
/* B1E9C 800B129C 8D190034 */  lw         $t9, 0x34($t0)
/* B1EA0 800B12A0 032A082A */  slt        $at, $t9, $t2
/* B1EA4 800B12A4 10200004 */  beqz       $at, .L800B12B8
/* B1EA8 800B12A8 00000000 */   nop
/* B1EAC 800B12AC 8FAC0058 */  lw         $t4, 0x58($sp)
/* B1EB0 800B12B0 8D8F0034 */  lw         $t7, 0x34($t4)
/* B1EB4 800B12B4 AD8F0030 */  sw         $t7, 0x30($t4)
.L800B12B8:
/* B1EB8 800B12B8 10000003 */  b          .L800B12C8
/* B1EBC 800B12BC 8FA2005C */   lw        $v0, 0x5c($sp)
/* B1EC0 800B12C0 10000001 */  b          .L800B12C8
/* B1EC4 800B12C4 00000000 */   nop
.L800B12C8:
/* B1EC8 800B12C8 8FBF001C */  lw         $ra, 0x1c($sp)
/* B1ECC 800B12CC 27BD0060 */  addiu      $sp, $sp, 0x60
/* B1ED0 800B12D0 03E00008 */  jr         $ra
/* B1ED4 800B12D4 00000000 */   nop
