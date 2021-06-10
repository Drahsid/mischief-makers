glabel func_800B1D5C
/* B295C 800B1D5C 00063400 */  sll        $a2, $a2, 0x10
/* B2960 800B1D60 00063403 */  sra        $a2, $a2, 0x10
/* B2964 800B1D64 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* B2968 800B1D68 30E7FFFF */  andi       $a3, $a3, 0xffff
/* B296C 800B1D6C 000570C3 */  sra        $t6, $a1, 3
/* B2970 800B1D70 01C02825 */  or         $a1, $t6, $zero
/* B2974 800B1D74 14A00003 */  bnez       $a1, .L800B1D84
/* B2978 800B1D78 00000000 */   nop
/* B297C 800B1D7C 10000032 */  b          .L800B1E48
/* B2980 800B1D80 46006006 */   mov.s     $f0, $f12
.L800B1D84:
/* B2984 800B1D84 00067C00 */  sll        $t7, $a2, 0x10
/* B2988 800B1D88 448F2000 */  mtc1       $t7, $f4
/* B298C 800B1D8C 44874000 */  mtc1       $a3, $f8
/* B2990 800B1D90 468021A0 */  cvt.s.w    $f6, $f4
/* B2994 800B1D94 04E10005 */  bgez       $a3, .L800B1DAC
/* B2998 800B1D98 468042A0 */   cvt.s.w   $f10, $f8
/* B299C 800B1D9C 3C014F80 */  lui        $at, 0x4f80
/* B29A0 800B1DA0 44818000 */  mtc1       $at, $f16
/* B29A4 800B1DA4 00000000 */  nop
/* B29A8 800B1DA8 46105280 */  add.s      $f10, $f10, $f16
.L800B1DAC:
/* B29AC 800B1DAC 460A3480 */  add.s      $f18, $f6, $f10
/* B29B0 800B1DB0 3C014780 */  lui        $at, 0x4780
/* B29B4 800B1DB4 44812000 */  mtc1       $at, $f4
/* B29B8 800B1DB8 00000000 */  nop
/* B29BC 800B1DBC 46049203 */  div.s      $f8, $f18, $f4
/* B29C0 800B1DC0 E7A8000C */  swc1       $f8, 0xc($sp)
/* B29C4 800B1DC4 3C013F80 */  lui        $at, 0x3f80
/* B29C8 800B1DC8 44818000 */  mtc1       $at, $f16
/* B29CC 800B1DCC 00000000 */  nop
/* B29D0 800B1DD0 E7B00008 */  swc1       $f16, 8($sp)
/* B29D4 800B1DD4 AFA00004 */  sw         $zero, 4($sp)
.L800B1DD8:
/* B29D8 800B1DD8 30B80001 */  andi       $t8, $a1, 1
/* B29DC 800B1DDC 13000005 */  beqz       $t8, .L800B1DF4
/* B29E0 800B1DE0 00000000 */   nop
/* B29E4 800B1DE4 C7A60008 */  lwc1       $f6, 8($sp)
/* B29E8 800B1DE8 C7AA000C */  lwc1       $f10, 0xc($sp)
/* B29EC 800B1DEC 460A3482 */  mul.s      $f18, $f6, $f10
/* B29F0 800B1DF0 E7B20008 */  swc1       $f18, 8($sp)
.L800B1DF4:
/* B29F4 800B1DF4 0005C843 */  sra        $t9, $a1, 1
/* B29F8 800B1DF8 03202825 */  or         $a1, $t9, $zero
/* B29FC 800B1DFC 14A00003 */  bnez       $a1, .L800B1E0C
/* B2A00 800B1E00 00000000 */   nop
/* B2A04 800B1E04 10000009 */  b          .L800B1E2C
/* B2A08 800B1E08 00000000 */   nop
.L800B1E0C:
/* B2A0C 800B1E0C C7A4000C */  lwc1       $f4, 0xc($sp)
/* B2A10 800B1E10 46042202 */  mul.s      $f8, $f4, $f4
/* B2A14 800B1E14 E7A8000C */  swc1       $f8, 0xc($sp)
/* B2A18 800B1E18 8FA80004 */  lw         $t0, 4($sp)
/* B2A1C 800B1E1C 25090001 */  addiu      $t1, $t0, 1
/* B2A20 800B1E20 29210020 */  slti       $at, $t1, 0x20
/* B2A24 800B1E24 1420FFEC */  bnez       $at, .L800B1DD8
/* B2A28 800B1E28 AFA90004 */   sw        $t1, 4($sp)
.L800B1E2C:
/* B2A2C 800B1E2C C7B00008 */  lwc1       $f16, 8($sp)
/* B2A30 800B1E30 46106302 */  mul.s      $f12, $f12, $f16
/* B2A34 800B1E34 00000000 */  nop
/* B2A38 800B1E38 10000003 */  b          .L800B1E48
/* B2A3C 800B1E3C 46006006 */   mov.s     $f0, $f12
/* B2A40 800B1E40 10000001 */  b          .L800B1E48
/* B2A44 800B1E44 00000000 */   nop
.L800B1E48:
/* B2A48 800B1E48 03E00008 */  jr         $ra
/* B2A4C 800B1E4C 27BD0010 */   addiu     $sp, $sp, 0x10
