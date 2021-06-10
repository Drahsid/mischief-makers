glabel func_800B1A64
/* B2664 800B1A64 27BDFF48 */  addiu      $sp, $sp, -0xb8
/* B2668 800B1A68 AFBF0024 */  sw         $ra, 0x24($sp)
/* B266C 800B1A6C F7AC00B8 */  sdc1       $f12, 0xb8($sp)
/* B2670 800B1A70 F7AE00C0 */  sdc1       $f14, 0xc0($sp)
/* B2674 800B1A74 F7B60018 */  sdc1       $f22, 0x18($sp)
/* B2678 800B1A78 F7B40010 */  sdc1       $f20, 0x10($sp)
/* B267C 800B1A7C 8FAE00C8 */  lw         $t6, 0xc8($sp)
/* B2680 800B1A80 3C013FF0 */  lui        $at, 0x3ff0
/* B2684 800B1A84 44812800 */  mtc1       $at, $f5
/* B2688 800B1A88 448E3000 */  mtc1       $t6, $f6
/* B268C 800B1A8C 44802000 */  mtc1       $zero, $f4
/* B2690 800B1A90 46803221 */  cvt.d.w    $f8, $f6
/* B2694 800B1A94 46282283 */  div.d      $f10, $f4, $f8
/* B2698 800B1A98 F7AA00A8 */  sdc1       $f10, 0xa8($sp)
/* B269C 800B1A9C 8FAF00C8 */  lw         $t7, 0xc8($sp)
/* B26A0 800B1AA0 15E00012 */  bnez       $t7, .L800B1AEC
/* B26A4 800B1AA4 00000000 */   nop
/* B26A8 800B1AA8 D7B000C0 */  ldc1       $f16, 0xc0($sp)
/* B26AC 800B1AAC D7B200B8 */  ldc1       $f18, 0xb8($sp)
/* B26B0 800B1AB0 4630903E */  c.le.d     $f18, $f16
/* B26B4 800B1AB4 00000000 */  nop
/* B26B8 800B1AB8 45000008 */  bc1f       .L800B1ADC
/* B26BC 800B1ABC 00000000 */   nop
/* B26C0 800B1AC0 8FB900CC */  lw         $t9, 0xcc($sp)
/* B26C4 800B1AC4 3418FFFF */  ori        $t8, $zero, 0xffff
/* B26C8 800B1AC8 A7380000 */  sh         $t8, ($t9)
/* B26CC 800B1ACC 1000009E */  b          .L800B1D48
/* B26D0 800B1AD0 24027FFF */   addiu     $v0, $zero, 0x7fff
/* B26D4 800B1AD4 10000005 */  b          .L800B1AEC
/* B26D8 800B1AD8 00000000 */   nop
.L800B1ADC:
/* B26DC 800B1ADC 8FA800CC */  lw         $t0, 0xcc($sp)
/* B26E0 800B1AE0 A5000000 */  sh         $zero, ($t0)
/* B26E4 800B1AE4 10000098 */  b          .L800B1D48
/* B26E8 800B1AE8 00001025 */   or        $v0, $zero, $zero
.L800B1AEC:
/* B26EC 800B1AEC 3C013FF0 */  lui        $at, 0x3ff0
/* B26F0 800B1AF0 44812800 */  mtc1       $at, $f5
/* B26F4 800B1AF4 D7A600C0 */  ldc1       $f6, 0xc0($sp)
/* B26F8 800B1AF8 44802000 */  mtc1       $zero, $f4
/* B26FC 800B1AFC 00000000 */  nop
/* B2700 800B1B00 4624303C */  c.lt.d     $f6, $f4
/* B2704 800B1B04 00000000 */  nop
/* B2708 800B1B08 45000006 */  bc1f       .L800B1B24
/* B270C 800B1B0C 00000000 */   nop
/* B2710 800B1B10 3C013FF0 */  lui        $at, 0x3ff0
/* B2714 800B1B14 44814800 */  mtc1       $at, $f9
/* B2718 800B1B18 44804000 */  mtc1       $zero, $f8
/* B271C 800B1B1C 00000000 */  nop
/* B2720 800B1B20 F7A800C0 */  sdc1       $f8, 0xc0($sp)
.L800B1B24:
/* B2724 800B1B24 D7AA00B8 */  ldc1       $f10, 0xb8($sp)
/* B2728 800B1B28 44808800 */  mtc1       $zero, $f17
/* B272C 800B1B2C 44808000 */  mtc1       $zero, $f16
/* B2730 800B1B30 00000000 */  nop
/* B2734 800B1B34 4630503E */  c.le.d     $f10, $f16
/* B2738 800B1B38 00000000 */  nop
/* B273C 800B1B3C 45000006 */  bc1f       .L800B1B58
/* B2740 800B1B40 00000000 */   nop
/* B2744 800B1B44 3C013FF0 */  lui        $at, 0x3ff0
/* B2748 800B1B48 44819800 */  mtc1       $at, $f19
/* B274C 800B1B4C 44809000 */  mtc1       $zero, $f18
/* B2750 800B1B50 00000000 */  nop
/* B2754 800B1B54 F7B200B8 */  sdc1       $f18, 0xb8($sp)
.L800B1B58:
/* B2758 800B1B58 3C0A800F */  lui        $t2, %hi(D_800EA8F0)
/* B275C 800B1B5C 254AA8F0 */  addiu      $t2, $t2, %lo(D_800EA8F0)
/* B2760 800B1B60 254C003C */  addiu      $t4, $t2, 0x3c
/* B2764 800B1B64 27A90038 */  addiu      $t1, $sp, 0x38
.L800B1B68:
/* B2768 800B1B68 8D410000 */  lw         $at, ($t2)
/* B276C 800B1B6C 254A000C */  addiu      $t2, $t2, 0xc
/* B2770 800B1B70 2529000C */  addiu      $t1, $t1, 0xc
/* B2774 800B1B74 AD21FFF4 */  sw         $at, -0xc($t1)
/* B2778 800B1B78 8D41FFF8 */  lw         $at, -8($t2)
/* B277C 800B1B7C AD21FFF8 */  sw         $at, -8($t1)
/* B2780 800B1B80 8D41FFFC */  lw         $at, -4($t2)
/* B2784 800B1B84 154CFFF8 */  bne        $t2, $t4, .L800B1B68
/* B2788 800B1B88 AD21FFFC */   sw        $at, -4($t1)
/* B278C 800B1B8C 8D410000 */  lw         $at, ($t2)
/* B2790 800B1B90 AD210000 */  sw         $at, ($t1)
/* B2794 800B1B94 D7AC00A8 */  ldc1       $f12, 0xa8($sp)
/* B2798 800B1B98 0C02C687 */  jal        func_800B1A1C
/* B279C 800B1B9C 2406001E */   addiu     $a2, $zero, 0x1e
/* B27A0 800B1BA0 4620018D */  trunc.w.d  $f6, $f0
/* B27A4 800B1BA4 E7A60084 */  swc1       $f6, 0x84($sp)
/* B27A8 800B1BA8 D7A400C0 */  ldc1       $f4, 0xc0($sp)
/* B27AC 800B1BAC D7A800B8 */  ldc1       $f8, 0xb8($sp)
/* B27B0 800B1BB0 27A60080 */  addiu      $a2, $sp, 0x80
/* B27B4 800B1BB4 0C02C631 */  jal        func_800B18C4
/* B27B8 800B1BB8 46282303 */   div.d     $f12, $f4, $f8
/* B27BC 800B1BBC F7A00088 */  sdc1       $f0, 0x88($sp)
/* B27C0 800B1BC0 D7AC0088 */  ldc1       $f12, 0x88($sp)
/* B27C4 800B1BC4 0C02C687 */  jal        func_800B1A1C
/* B27C8 800B1BC8 24060004 */   addiu     $a2, $zero, 4
/* B27CC 800B1BCC 4620028D */  trunc.w.d  $f10, $f0
/* B27D0 800B1BD0 E7AA007C */  swc1       $f10, 0x7c($sp)
/* B27D4 800B1BD4 8FA80080 */  lw         $t0, 0x80($sp)
/* B27D8 800B1BD8 8FAF007C */  lw         $t7, 0x7c($sp)
/* B27DC 800B1BDC 3C01800F */  lui        $at, 0x800f
/* B27E0 800B1BE0 44889000 */  mtc1       $t0, $f18
/* B27E4 800B1BE4 000FC0C0 */  sll        $t8, $t7, 3
/* B27E8 800B1BE8 03B8C821 */  addu       $t9, $sp, $t8
/* B27EC 800B1BEC 468091A1 */  cvt.d.w    $f6, $f18
/* B27F0 800B1BF0 D730FFF8 */  ldc1       $f16, -8($t9)
/* B27F4 800B1BF4 D428E5E0 */  ldc1       $f8, -0x1a20($at)
/* B27F8 800B1BF8 46268100 */  add.d      $f4, $f16, $f6
/* B27FC 800B1BFC 46282282 */  mul.d      $f10, $f4, $f8
/* B2800 800B1C00 F7AA00A0 */  sdc1       $f10, 0xa0($sp)
/* B2804 800B1C04 3C013FF0 */  lui        $at, 0x3ff0
/* B2808 800B1C08 44816800 */  mtc1       $at, $f13
/* B280C 800B1C0C 44806000 */  mtc1       $zero, $f12
/* B2810 800B1C10 0C02C687 */  jal        func_800B1A1C
/* B2814 800B1C14 2406001E */   addiu     $a2, $zero, 0x1e
/* B2818 800B1C18 D7B200A0 */  ldc1       $f18, 0xa0($sp)
/* B281C 800B1C1C 46200506 */  mov.d      $f20, $f0
/* B2820 800B1C20 46349403 */  div.d      $f16, $f18, $f20
/* B2824 800B1C24 F7B000A0 */  sdc1       $f16, 0xa0($sp)
/* B2828 800B1C28 3C013FF0 */  lui        $at, 0x3ff0
/* B282C 800B1C2C 44813800 */  mtc1       $at, $f7
/* B2830 800B1C30 44803000 */  mtc1       $zero, $f6
/* B2834 800B1C34 D7A400A0 */  ldc1       $f4, 0xa0($sp)
/* B2838 800B1C38 46243200 */  add.d      $f8, $f6, $f4
/* B283C 800B1C3C F7A80090 */  sdc1       $f8, 0x90($sp)
/* B2840 800B1C40 3C013FF0 */  lui        $at, 0x3ff0
/* B2844 800B1C44 44815800 */  mtc1       $at, $f11
/* B2848 800B1C48 44805000 */  mtc1       $zero, $f10
/* B284C 800B1C4C 00000000 */  nop
/* B2850 800B1C50 F7AA0098 */  sdc1       $f10, 0x98($sp)
/* B2854 800B1C54 8FAB0084 */  lw         $t3, 0x84($sp)
/* B2858 800B1C58 11600012 */  beqz       $t3, .L800B1CA4
/* B285C 800B1C5C 00000000 */   nop
.L800B1C60:
/* B2860 800B1C60 8FAC0084 */  lw         $t4, 0x84($sp)
/* B2864 800B1C64 318A0001 */  andi       $t2, $t4, 1
/* B2868 800B1C68 11400005 */  beqz       $t2, .L800B1C80
/* B286C 800B1C6C 00000000 */   nop
/* B2870 800B1C70 D7B20098 */  ldc1       $f18, 0x98($sp)
/* B2874 800B1C74 D7B00090 */  ldc1       $f16, 0x90($sp)
/* B2878 800B1C78 46309182 */  mul.d      $f6, $f18, $f16
/* B287C 800B1C7C F7A60098 */  sdc1       $f6, 0x98($sp)
.L800B1C80:
/* B2880 800B1C80 D7A40090 */  ldc1       $f4, 0x90($sp)
/* B2884 800B1C84 46242202 */  mul.d      $f8, $f4, $f4
/* B2888 800B1C88 F7A80090 */  sdc1       $f8, 0x90($sp)
/* B288C 800B1C8C 8FA90084 */  lw         $t1, 0x84($sp)
/* B2890 800B1C90 00096843 */  sra        $t5, $t1, 1
/* B2894 800B1C94 AFAD0084 */  sw         $t5, 0x84($sp)
/* B2898 800B1C98 8FAE0084 */  lw         $t6, 0x84($sp)
/* B289C 800B1C9C 15C0FFF0 */  bnez       $t6, .L800B1C60
/* B28A0 800B1CA0 00000000 */   nop
.L800B1CA4:
/* B28A4 800B1CA4 D7AA0098 */  ldc1       $f10, 0x98($sp)
/* B28A8 800B1CA8 462A5582 */  mul.d      $f22, $f10, $f10
/* B28AC 800B1CAC F7B60098 */  sdc1       $f22, 0x98($sp)
/* B28B0 800B1CB0 D7B20098 */  ldc1       $f18, 0x98($sp)
/* B28B4 800B1CB4 46369502 */  mul.d      $f20, $f18, $f22
/* B28B8 800B1CB8 F7B40098 */  sdc1       $f20, 0x98($sp)
/* B28BC 800B1CBC D7B00098 */  ldc1       $f16, 0x98($sp)
/* B28C0 800B1CC0 46348182 */  mul.d      $f6, $f16, $f20
/* B28C4 800B1CC4 F7A60098 */  sdc1       $f6, 0x98($sp)
/* B28C8 800B1CC8 D7A40098 */  ldc1       $f4, 0x98($sp)
/* B28CC 800B1CCC 4620220D */  trunc.w.d  $f8, $f4
/* B28D0 800B1CD0 44184000 */  mfc1       $t8, $f8
/* B28D4 800B1CD4 00000000 */  nop
/* B28D8 800B1CD8 A7B800B6 */  sh         $t8, 0xb6($sp)
/* B28DC 800B1CDC 87B900B6 */  lh         $t9, 0xb6($sp)
/* B28E0 800B1CE0 D7AA0098 */  ldc1       $f10, 0x98($sp)
/* B28E4 800B1CE4 3C01800F */  lui        $at, %hi(D_800EE5E8)
/* B28E8 800B1CE8 44999000 */  mtc1       $t9, $f18
/* B28EC 800B1CEC D428E5E8 */  ldc1       $f8, %lo(D_800EE5E8)($at)
/* B28F0 800B1CF0 8FA900CC */  lw         $t1, 0xcc($sp)
/* B28F4 800B1CF4 46809420 */  cvt.s.w    $f16, $f18
/* B28F8 800B1CF8 460081A1 */  cvt.d.s    $f6, $f16
/* B28FC 800B1CFC 46265101 */  sub.d      $f4, $f10, $f6
/* B2900 800B1D00 46282482 */  mul.d      $f18, $f4, $f8
/* B2904 800B1D04 4620940D */  trunc.w.d  $f16, $f18
/* B2908 800B1D08 440B8000 */  mfc1       $t3, $f16
/* B290C 800B1D0C 00000000 */  nop
/* B2910 800B1D10 000B6400 */  sll        $t4, $t3, 0x10
/* B2914 800B1D14 000C5403 */  sra        $t2, $t4, 0x10
/* B2918 800B1D18 A52A0000 */  sh         $t2, ($t1)
/* B291C 800B1D1C D7AA0098 */  ldc1       $f10, 0x98($sp)
/* B2920 800B1D20 4620518D */  trunc.w.d  $f6, $f10
/* B2924 800B1D24 44023000 */  mfc1       $v0, $f6
/* B2928 800B1D28 00000000 */  nop
/* B292C 800B1D2C 00027400 */  sll        $t6, $v0, 0x10
/* B2930 800B1D30 01C01025 */  or         $v0, $t6, $zero
/* B2934 800B1D34 00027C03 */  sra        $t7, $v0, 0x10
/* B2938 800B1D38 10000003 */  b          .L800B1D48
/* B293C 800B1D3C 01E01025 */   or        $v0, $t7, $zero
/* B2940 800B1D40 10000001 */  b          .L800B1D48
/* B2944 800B1D44 00000000 */   nop
.L800B1D48:
/* B2948 800B1D48 8FBF0024 */  lw         $ra, 0x24($sp)
/* B294C 800B1D4C D7B40010 */  ldc1       $f20, 0x10($sp)
/* B2950 800B1D50 D7B60018 */  ldc1       $f22, 0x18($sp)
/* B2954 800B1D54 03E00008 */  jr         $ra
/* B2958 800B1D58 27BD00B8 */   addiu     $sp, $sp, 0xb8
