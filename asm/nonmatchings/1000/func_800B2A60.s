glabel func_800B2A60
/* B3660 800B2A60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B3664 800B2A64 AFA50004 */  sw         $a1, 4($sp)
/* B3668 800B2A68 24AE0020 */  addiu      $t6, $a1, 0x20
/* B366C 800B2A6C AFAE0000 */  sw         $t6, ($sp)
/* B3670 800B2A70 AFA00014 */  sw         $zero, 0x14($sp)
.L800B2A74:
/* B3674 800B2A74 AFA00010 */  sw         $zero, 0x10($sp)
.L800B2A78:
/* B3678 800B2A78 8FAF0014 */  lw         $t7, 0x14($sp)
/* B367C 800B2A7C 8FA80010 */  lw         $t0, 0x10($sp)
/* B3680 800B2A80 3C014780 */  lui        $at, 0x4780
/* B3684 800B2A84 000FC100 */  sll        $t8, $t7, 4
/* B3688 800B2A88 00084840 */  sll        $t1, $t0, 1
/* B368C 800B2A8C 00095080 */  sll        $t2, $t1, 2
/* B3690 800B2A90 0098C821 */  addu       $t9, $a0, $t8
/* B3694 800B2A94 032A5821 */  addu       $t3, $t9, $t2
/* B3698 800B2A98 C5640000 */  lwc1       $f4, ($t3)
/* B369C 800B2A9C 44813000 */  mtc1       $at, $f6
/* B36A0 800B2AA0 00000000 */  nop
/* B36A4 800B2AA4 46062202 */  mul.s      $f8, $f4, $f6
/* B36A8 800B2AA8 4600428D */  trunc.w.s  $f10, $f8
/* B36AC 800B2AAC 440D5000 */  mfc1       $t5, $f10
/* B36B0 800B2AB0 00000000 */  nop
/* B36B4 800B2AB4 AFAD000C */  sw         $t5, 0xc($sp)
/* B36B8 800B2AB8 8FAE0014 */  lw         $t6, 0x14($sp)
/* B36BC 800B2ABC 8FA80010 */  lw         $t0, 0x10($sp)
/* B36C0 800B2AC0 3C014780 */  lui        $at, 0x4780
/* B36C4 800B2AC4 000E7900 */  sll        $t7, $t6, 4
/* B36C8 800B2AC8 00084840 */  sll        $t1, $t0, 1
/* B36CC 800B2ACC 0009C880 */  sll        $t9, $t1, 2
/* B36D0 800B2AD0 008FC021 */  addu       $t8, $a0, $t7
/* B36D4 800B2AD4 03195021 */  addu       $t2, $t8, $t9
/* B36D8 800B2AD8 C5500004 */  lwc1       $f16, 4($t2)
/* B36DC 800B2ADC 44819000 */  mtc1       $at, $f18
/* B36E0 800B2AE0 00000000 */  nop
/* B36E4 800B2AE4 46128102 */  mul.s      $f4, $f16, $f18
/* B36E8 800B2AE8 4600218D */  trunc.w.s  $f6, $f4
/* B36EC 800B2AEC 440C3000 */  mfc1       $t4, $f6
/* B36F0 800B2AF0 00000000 */  nop
/* B36F4 800B2AF4 AFAC0008 */  sw         $t4, 8($sp)
/* B36F8 800B2AF8 8FAF0008 */  lw         $t7, 8($sp)
/* B36FC 800B2AFC 8FAD000C */  lw         $t5, 0xc($sp)
/* B3700 800B2B00 8FB90004 */  lw         $t9, 4($sp)
/* B3704 800B2B04 3C01FFFF */  lui        $at, 0xffff
/* B3708 800B2B08 000F4403 */  sra        $t0, $t7, 0x10
/* B370C 800B2B0C 3109FFFF */  andi       $t1, $t0, 0xffff
/* B3710 800B2B10 01A17024 */  and        $t6, $t5, $at
/* B3714 800B2B14 01C9C025 */  or         $t8, $t6, $t1
/* B3718 800B2B18 AF380000 */  sw         $t8, ($t9)
/* B371C 800B2B1C 8FAA0004 */  lw         $t2, 4($sp)
/* B3720 800B2B20 254B0004 */  addiu      $t3, $t2, 4
/* B3724 800B2B24 AFAB0004 */  sw         $t3, 4($sp)
/* B3728 800B2B28 8FAC000C */  lw         $t4, 0xc($sp)
/* B372C 800B2B2C 8FA80008 */  lw         $t0, 8($sp)
/* B3730 800B2B30 8FB80000 */  lw         $t8, ($sp)
/* B3734 800B2B34 3C01FFFF */  lui        $at, 0xffff
/* B3738 800B2B38 000C6C00 */  sll        $t5, $t4, 0x10
/* B373C 800B2B3C 01A17824 */  and        $t7, $t5, $at
/* B3740 800B2B40 310EFFFF */  andi       $t6, $t0, 0xffff
/* B3744 800B2B44 01EE4825 */  or         $t1, $t7, $t6
/* B3748 800B2B48 AF090000 */  sw         $t1, ($t8)
/* B374C 800B2B4C 8FB90000 */  lw         $t9, ($sp)
/* B3750 800B2B50 272A0004 */  addiu      $t2, $t9, 4
/* B3754 800B2B54 AFAA0000 */  sw         $t2, ($sp)
/* B3758 800B2B58 8FAB0010 */  lw         $t3, 0x10($sp)
/* B375C 800B2B5C 256C0001 */  addiu      $t4, $t3, 1
/* B3760 800B2B60 29810002 */  slti       $at, $t4, 2
/* B3764 800B2B64 1420FFC4 */  bnez       $at, .L800B2A78
/* B3768 800B2B68 AFAC0010 */   sw        $t4, 0x10($sp)
/* B376C 800B2B6C 8FAD0014 */  lw         $t5, 0x14($sp)
/* B3770 800B2B70 25A80001 */  addiu      $t0, $t5, 1
/* B3774 800B2B74 29010004 */  slti       $at, $t0, 4
/* B3778 800B2B78 1420FFBE */  bnez       $at, .L800B2A74
/* B377C 800B2B7C AFA80014 */   sw        $t0, 0x14($sp)
/* B3780 800B2B80 10000001 */  b          .L800B2B88
/* B3784 800B2B84 00000000 */   nop
.L800B2B88:
/* B3788 800B2B88 03E00008 */  jr         $ra
/* B378C 800B2B8C 27BD0018 */   addiu     $sp, $sp, 0x18
