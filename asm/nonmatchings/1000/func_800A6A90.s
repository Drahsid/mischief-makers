glabel func_800A6A90
/* A7690 800A6A90 3C05800F */  lui        $a1, %hi(D_800EA610)
/* A7694 800A6A94 8CA5A610 */  lw         $a1, %lo(D_800EA610)($a1)
/* A7698 800A6A98 40086000 */  mfc0       $t0, $12
/* A769C 800A6A9C 35080002 */  ori        $t0, $t0, 2
/* A76A0 800A6AA0 ACA80118 */  sw         $t0, 0x118($a1)
/* A76A4 800A6AA4 FCB00098 */  sd         $s0, 0x98($a1)
/* A76A8 800A6AA8 FCB100A0 */  sd         $s1, 0xa0($a1)
/* A76AC 800A6AAC FCB200A8 */  sd         $s2, 0xa8($a1)
/* A76B0 800A6AB0 FCB300B0 */  sd         $s3, 0xb0($a1)
/* A76B4 800A6AB4 FCB400B8 */  sd         $s4, 0xb8($a1)
/* A76B8 800A6AB8 FCB500C0 */  sd         $s5, 0xc0($a1)
/* A76BC 800A6ABC FCB600C8 */  sd         $s6, 0xc8($a1)
/* A76C0 800A6AC0 FCB700D0 */  sd         $s7, 0xd0($a1)
/* A76C4 800A6AC4 FCBC00E8 */  sd         $gp, 0xe8($a1)
/* A76C8 800A6AC8 FCBD00F0 */  sd         $sp, 0xf0($a1)
/* A76CC 800A6ACC FCBE00F8 */  sd         $fp, 0xf8($a1)
/* A76D0 800A6AD0 FCBF0100 */  sd         $ra, 0x100($a1)
/* A76D4 800A6AD4 ACBF011C */  sw         $ra, 0x11c($a1)
/* A76D8 800A6AD8 8CBB0018 */  lw         $k1, 0x18($a1)
/* A76DC 800A6ADC 1360000A */  beqz       $k1, .L800A6B08
/* A76E0 800A6AE0 00000000 */   nop
/* A76E4 800A6AE4 445BF800 */  cfc1       $k1, $31
/* A76E8 800A6AE8 00000000 */  nop
/* A76EC 800A6AEC ACBB012C */  sw         $k1, 0x12c($a1)
/* A76F0 800A6AF0 F4B40180 */  sdc1       $f20, 0x180($a1)
/* A76F4 800A6AF4 F4B60188 */  sdc1       $f22, 0x188($a1)
/* A76F8 800A6AF8 F4B80190 */  sdc1       $f24, 0x190($a1)
/* A76FC 800A6AFC F4BA0198 */  sdc1       $f26, 0x198($a1)
/* A7700 800A6B00 F4BC01A0 */  sdc1       $f28, 0x1a0($a1)
/* A7704 800A6B04 F4BE01A8 */  sdc1       $f30, 0x1a8($a1)
.L800A6B08:
/* A7708 800A6B08 8CBB0118 */  lw         $k1, 0x118($a1)
/* A770C 800A6B0C 3369FF00 */  andi       $t1, $k1, 0xff00
/* A7710 800A6B10 1120000D */  beqz       $t1, .L800A6B48
/* A7714 800A6B14 00000000 */   nop
/* A7718 800A6B18 3C08800F */  lui        $t0, %hi(D_800E9780)
/* A771C 800A6B1C 25089780 */  addiu      $t0, $t0, %lo(D_800E9780)
/* A7720 800A6B20 8D080000 */  lw         $t0, ($t0)
/* A7724 800A6B24 2401FFFF */  addiu      $at, $zero, -1
/* A7728 800A6B28 01014026 */  xor        $t0, $t0, $at
/* A772C 800A6B2C 3108FF00 */  andi       $t0, $t0, 0xff00
/* A7730 800A6B30 01284825 */  or         $t1, $t1, $t0
/* A7734 800A6B34 3C01FFFF */  lui        $at, 0xffff
/* A7738 800A6B38 342100FF */  ori        $at, $at, 0xff
/* A773C 800A6B3C 0361D824 */  and        $k1, $k1, $at
/* A7740 800A6B40 0369D825 */  or         $k1, $k1, $t1
/* A7744 800A6B44 ACBB0118 */  sw         $k1, 0x118($a1)
.L800A6B48:
/* A7748 800A6B48 3C1BA430 */  lui        $k1, %hi(D_A430000C)
/* A774C 800A6B4C 8F7B000C */  lw         $k1, %lo(D_A430000C)($k1)
/* A7750 800A6B50 1360000B */  beqz       $k1, .L800A6B80
/* A7754 800A6B54 00000000 */   nop
/* A7758 800A6B58 3C1A800F */  lui        $k0, %hi(D_800E9780)
/* A775C 800A6B5C 275A9780 */  addiu      $k0, $k0, %lo(D_800E9780)
/* A7760 800A6B60 8F5A0000 */  lw         $k0, ($k0)
/* A7764 800A6B64 001AD402 */  srl        $k0, $k0, 0x10
/* A7768 800A6B68 2401FFFF */  addiu      $at, $zero, -1
/* A776C 800A6B6C 0341D026 */  xor        $k0, $k0, $at
/* A7770 800A6B70 335A003F */  andi       $k0, $k0, 0x3f
/* A7774 800A6B74 8CA80128 */  lw         $t0, 0x128($a1)
/* A7778 800A6B78 0348D024 */  and        $k0, $k0, $t0
/* A777C 800A6B7C 037AD825 */  or         $k1, $k1, $k0
.L800A6B80:
/* A7780 800A6B80 ACBB0128 */  sw         $k1, 0x128($a1)
/* A7784 800A6B84 10800003 */  beqz       $a0, .L800A6B94
/* A7788 800A6B88 00000000 */   nop
/* A778C 800A6B8C 0C029AE7 */  jal        func_800A6B9C
/* A7790 800A6B90 00000000 */   nop
.L800A6B94:
/* A7794 800A6B94 08029B00 */  j          .L800A6C00
/* A7798 800A6B98 00000000 */   nop
