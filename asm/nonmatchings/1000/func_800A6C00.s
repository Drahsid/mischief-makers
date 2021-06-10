glabel func_800A6C00
.L800A6C00:
/* A7800 800A6C00 3C04800F */  lui        $a0, %hi(D_800EA608)
/* A7804 800A6C04 2484A608 */  addiu      $a0, $a0, %lo(D_800EA608)
/* A7808 800A6C08 0C029AFA */  jal        func_800A6BE8
/* A780C 800A6C0C 00000000 */   nop
/* A7810 800A6C10 3C01800F */  lui        $at, %hi(D_800EA610)
/* A7814 800A6C14 AC22A610 */  sw         $v0, %lo(D_800EA610)($at)
/* A7818 800A6C18 24080004 */  addiu      $t0, $zero, 4
/* A781C 800A6C1C A4480010 */  sh         $t0, 0x10($v0)
/* A7820 800A6C20 0040D025 */  or         $k0, $v0, $zero
.L800A6C24:
/* A7824 800A6C24 8F5B0118 */  lw         $k1, 0x118($k0)
/* A7828 800A6C28 3C08800F */  lui        $t0, %hi(D_800E9780)
/* A782C 800A6C2C 25089780 */  addiu      $t0, $t0, %lo(D_800E9780)
/* A7830 800A6C30 8D080000 */  lw         $t0, ($t0)
/* A7834 800A6C34 3108FF00 */  andi       $t0, $t0, 0xff00
/* A7838 800A6C38 3369FF00 */  andi       $t1, $k1, 0xff00
/* A783C 800A6C3C 01284824 */  and        $t1, $t1, $t0
/* A7840 800A6C40 3C01FFFF */  lui        $at, 0xffff
/* A7844 800A6C44 342100FF */  ori        $at, $at, 0xff
/* A7848 800A6C48 0361D824 */  and        $k1, $k1, $at
/* A784C 800A6C4C 0369D825 */  or         $k1, $k1, $t1
/* A7850 800A6C50 409B6000 */  mtc0       $k1, $12
/* A7854 800A6C54 DF410020 */  ld         $at, 0x20($k0)
/* A7858 800A6C58 DF420028 */  ld         $v0, 0x28($k0)
/* A785C 800A6C5C DF430030 */  ld         $v1, 0x30($k0)
/* A7860 800A6C60 DF440038 */  ld         $a0, 0x38($k0)
/* A7864 800A6C64 DF450040 */  ld         $a1, 0x40($k0)
/* A7868 800A6C68 DF460048 */  ld         $a2, 0x48($k0)
/* A786C 800A6C6C DF470050 */  ld         $a3, 0x50($k0)
/* A7870 800A6C70 DF480058 */  ld         $t0, 0x58($k0)
/* A7874 800A6C74 DF490060 */  ld         $t1, 0x60($k0)
/* A7878 800A6C78 DF4A0068 */  ld         $t2, 0x68($k0)
/* A787C 800A6C7C DF4B0070 */  ld         $t3, 0x70($k0)
/* A7880 800A6C80 DF4C0078 */  ld         $t4, 0x78($k0)
/* A7884 800A6C84 DF4D0080 */  ld         $t5, 0x80($k0)
/* A7888 800A6C88 DF4E0088 */  ld         $t6, 0x88($k0)
/* A788C 800A6C8C DF4F0090 */  ld         $t7, 0x90($k0)
/* A7890 800A6C90 DF500098 */  ld         $s0, 0x98($k0)
/* A7894 800A6C94 DF5100A0 */  ld         $s1, 0xa0($k0)
/* A7898 800A6C98 DF5200A8 */  ld         $s2, 0xa8($k0)
/* A789C 800A6C9C DF5300B0 */  ld         $s3, 0xb0($k0)
/* A78A0 800A6CA0 DF5400B8 */  ld         $s4, 0xb8($k0)
/* A78A4 800A6CA4 DF5500C0 */  ld         $s5, 0xc0($k0)
/* A78A8 800A6CA8 DF5600C8 */  ld         $s6, 0xc8($k0)
/* A78AC 800A6CAC DF5700D0 */  ld         $s7, 0xd0($k0)
/* A78B0 800A6CB0 DF5800D8 */  ld         $t8, 0xd8($k0)
/* A78B4 800A6CB4 DF5900E0 */  ld         $t9, 0xe0($k0)
/* A78B8 800A6CB8 DF5C00E8 */  ld         $gp, 0xe8($k0)
/* A78BC 800A6CBC DF5D00F0 */  ld         $sp, 0xf0($k0)
/* A78C0 800A6CC0 DF5E00F8 */  ld         $fp, 0xf8($k0)
/* A78C4 800A6CC4 DF5F0100 */  ld         $ra, 0x100($k0)
/* A78C8 800A6CC8 DF5B0108 */  ld         $k1, 0x108($k0)
/* A78CC 800A6CCC 03600013 */  mtlo       $k1
/* A78D0 800A6CD0 DF5B0110 */  ld         $k1, 0x110($k0)
/* A78D4 800A6CD4 03600011 */  mthi       $k1
/* A78D8 800A6CD8 8F5B011C */  lw         $k1, 0x11c($k0)
/* A78DC 800A6CDC 409B7000 */  mtc0       $k1, $14
/* A78E0 800A6CE0 8F5B0018 */  lw         $k1, 0x18($k0)
/* A78E4 800A6CE4 13600013 */  beqz       $k1, .L800A6D34
/* A78E8 800A6CE8 00000000 */   nop
/* A78EC 800A6CEC 8F5B012C */  lw         $k1, 0x12c($k0)
/* A78F0 800A6CF0 44DBF800 */  ctc1       $k1, $31
/* A78F4 800A6CF4 D7400130 */  ldc1       $f0, 0x130($k0)
/* A78F8 800A6CF8 D7420138 */  ldc1       $f2, 0x138($k0)
/* A78FC 800A6CFC D7440140 */  ldc1       $f4, 0x140($k0)
/* A7900 800A6D00 D7460148 */  ldc1       $f6, 0x148($k0)
/* A7904 800A6D04 D7480150 */  ldc1       $f8, 0x150($k0)
/* A7908 800A6D08 D74A0158 */  ldc1       $f10, 0x158($k0)
/* A790C 800A6D0C D74C0160 */  ldc1       $f12, 0x160($k0)
/* A7910 800A6D10 D74E0168 */  ldc1       $f14, 0x168($k0)
/* A7914 800A6D14 D7500170 */  ldc1       $f16, 0x170($k0)
/* A7918 800A6D18 D7520178 */  ldc1       $f18, 0x178($k0)
/* A791C 800A6D1C D7540180 */  ldc1       $f20, 0x180($k0)
/* A7920 800A6D20 D7560188 */  ldc1       $f22, 0x188($k0)
/* A7924 800A6D24 D7580190 */  ldc1       $f24, 0x190($k0)
/* A7928 800A6D28 D75A0198 */  ldc1       $f26, 0x198($k0)
/* A792C 800A6D2C D75C01A0 */  ldc1       $f28, 0x1a0($k0)
/* A7930 800A6D30 D75E01A8 */  ldc1       $f30, 0x1a8($k0)
.L800A6D34:
/* A7934 800A6D34 8F5B0128 */  lw         $k1, 0x128($k0)
/* A7938 800A6D38 3C1A800F */  lui        $k0, %hi(D_800E9780)
/* A793C 800A6D3C 275A9780 */  addiu      $k0, $k0, %lo(D_800E9780)
/* A7940 800A6D40 8F5A0000 */  lw         $k0, ($k0)
/* A7944 800A6D44 001AD402 */  srl        $k0, $k0, 0x10
/* A7948 800A6D48 037AD824 */  and        $k1, $k1, $k0
/* A794C 800A6D4C 001BD840 */  sll        $k1, $k1, 1
/* A7950 800A6D50 3C1A800F */  lui        $k0, %hi(D_800EE390)
/* A7954 800A6D54 275AE390 */  addiu      $k0, $k0, %lo(D_800EE390)
/* A7958 800A6D58 037AD821 */  addu       $k1, $k1, $k0
/* A795C 800A6D5C 977B0000 */  lhu        $k1, ($k1)
/* A7960 800A6D60 3C1AA430 */  lui        $k0, %hi(D_A430000C)
/* A7964 800A6D64 275A000C */  addiu      $k0, $k0, %lo(D_A430000C)
/* A7968 800A6D68 AF5B0000 */  sw         $k1, ($k0)
/* A796C 800A6D6C 00000000 */  nop
/* A7970 800A6D70 00000000 */  nop
/* A7974 800A6D74 00000000 */  nop
/* A7978 800A6D78 00000000 */  nop
/* A797C 800A6D7C 42000018 */  eret
/* A7980 800A6D80 00002025 */  or         $a0, $zero, $zero
/* A7984 800A6D84 0C02D504 */  jal        func_800B5410
/* A7988 800A6D88 00000000 */   nop
/* A798C 800A6D8C 00000000 */  nop
