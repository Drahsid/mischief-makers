glabel func_80001B38
/* 2738 80001B38 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 273C 80001B3C AFBF002C */  sw         $ra, 0x2c($sp)
/* 2740 80001B40 3C048013 */  lui        $a0, 0x8013
/* 2744 80001B44 3C058013 */  lui        $a1, %hi(D_80137800)
/* 2748 80001B48 AFB30028 */  sw         $s3, 0x28($sp)
/* 274C 80001B4C AFB20024 */  sw         $s2, 0x24($sp)
/* 2750 80001B50 AFB10020 */  sw         $s1, 0x20($sp)
/* 2754 80001B54 AFB0001C */  sw         $s0, 0x1c($sp)
/* 2758 80001B58 24A57800 */  addiu      $a1, $a1, %lo(D_80137800)
/* 275C 80001B5C 248477B8 */  addiu      $a0, $a0, 0x77b8
/* 2760 80001B60 0C026994 */  jal        osCreateMesgQueue
/* 2764 80001B64 24060030 */   addiu     $a2, $zero, 0x30
/* 2768 80001B68 3C048017 */  lui        $a0, %hi(D_8016E728)
/* 276C 80001B6C 3C058017 */  lui        $a1, %hi(D_8016E740)
/* 2770 80001B70 24A5E740 */  addiu      $a1, $a1, %lo(D_8016E740)
/* 2774 80001B74 2484E728 */  addiu      $a0, $a0, %lo(D_8016E728)
/* 2778 80001B78 0C026994 */  jal        osCreateMesgQueue
/* 277C 80001B7C 24060001 */   addiu     $a2, $zero, 1
/* 2780 80001B80 240E0001 */  addiu      $t6, $zero, 1
/* 2784 80001B84 3C018013 */  lui        $at, %hi(D_80137798)
/* 2788 80001B88 A02E7798 */  sb         $t6, %lo(D_80137798)($at)
/* 278C 80001B8C 3C0F8017 */  lui        $t7, %hi(D_8016DF68)
/* 2790 80001B90 25EFDF68 */  addiu      $t7, $t7, %lo(D_8016DF68)
/* 2794 80001B94 3C018017 */  lui        $at, %hi(D_8016DFE4)
/* 2798 80001B98 AC2FDFE4 */  sw         $t7, %lo(D_8016DFE4)($at)
/* 279C 80001B9C 3C188017 */  lui        $t8, %hi(D_8016E1E8)
/* 27A0 80001BA0 2718E1E8 */  addiu      $t8, $t8, %lo(D_8016E1E8)
/* 27A4 80001BA4 3C018017 */  lui        $at, %hi(D_8016E2E0)
/* 27A8 80001BA8 AC38E2E0 */  sw         $t8, %lo(D_8016E2E0)($at)
/* 27AC 80001BAC 3C01800F */  lui        $at, 0x800f
/* 27B0 80001BB0 3C128017 */  lui        $s2, 0x8017
/* 27B4 80001BB4 3C06800F */  lui        $a2, 0x800f
/* 27B8 80001BB8 3C058017 */  lui        $a1, 0x8017
/* 27BC 80001BBC 3C048017 */  lui        $a0, %hi(D_8016E6C8)
/* 27C0 80001BC0 3C038017 */  lui        $v1, %hi(D_8016DFE8)
/* 27C4 80001BC4 A020F4D0 */  sb         $zero, -0xb30($at)
/* 27C8 80001BC8 2463DFE8 */  addiu      $v1, $v1, %lo(D_8016DFE8)
/* 27CC 80001BCC 2484E6C8 */  addiu      $a0, $a0, %lo(D_8016E6C8)
/* 27D0 80001BD0 24A5E2E8 */  addiu      $a1, $a1, -0x1d18
/* 27D4 80001BD4 24C6F4F0 */  addiu      $a2, $a2, -0xb10
/* 27D8 80001BD8 2652E1D8 */  addiu      $s2, $s2, -0x1e28
/* 27DC 80001BDC 00008025 */  or         $s0, $zero, $zero
.L80001BE0:
/* 27E0 80001BE0 0010C940 */  sll        $t9, $s0, 5
/* 27E4 80001BE4 00105140 */  sll        $t2, $s0, 5
/* 27E8 80001BE8 0330C823 */  subu       $t9, $t9, $s0
/* 27EC 80001BEC 00101080 */  sll        $v0, $s0, 2
/* 27F0 80001BF0 01505023 */  subu       $t2, $t2, $s0
/* 27F4 80001BF4 0019C880 */  sll        $t9, $t9, 2
/* 27F8 80001BF8 00D06821 */  addu       $t5, $a2, $s0
/* 27FC 80001BFC 26100001 */  addiu      $s0, $s0, 1
/* 2800 80001C00 00794021 */  addu       $t0, $v1, $t9
/* 2804 80001C04 02424821 */  addu       $t1, $s2, $v0
/* 2808 80001C08 000A50C0 */  sll        $t2, $t2, 3
/* 280C 80001C0C 320E00FF */  andi       $t6, $s0, 0xff
/* 2810 80001C10 AD280000 */  sw         $t0, ($t1)
/* 2814 80001C14 00AA5821 */  addu       $t3, $a1, $t2
/* 2818 80001C18 00826021 */  addu       $t4, $a0, $v0
/* 281C 80001C1C 29C10004 */  slti       $at, $t6, 4
/* 2820 80001C20 AD8B0000 */  sw         $t3, ($t4)
/* 2824 80001C24 01C08025 */  or         $s0, $t6, $zero
/* 2828 80001C28 1420FFED */  bnez       $at, .L80001BE0
/* 282C 80001C2C A1A00000 */   sb        $zero, ($t5)
/* 2830 80001C30 3C138013 */  lui        $s3, %hi(D_80137D80)
/* 2834 80001C34 26737D80 */  addiu      $s3, $s3, %lo(D_80137D80)
/* 2838 80001C38 3C058013 */  lui        $a1, %hi(D_80137DA8)
/* 283C 80001C3C 3C060003 */  lui        $a2, 3
/* 2840 80001C40 34C65C00 */  ori        $a2, $a2, 0x5c00
/* 2844 80001C44 24A57DA8 */  addiu      $a1, $a1, %lo(D_80137DA8)
/* 2848 80001C48 0C026F20 */  jal        alHeapInit
/* 284C 80001C4C 02602025 */   or        $a0, $s3, $zero
/* 2850 80001C50 240F3800 */  addiu      $t7, $zero, 0x3800
/* 2854 80001C54 AFAF0010 */  sw         $t7, 0x10($sp)
/* 2858 80001C58 00002025 */  or         $a0, $zero, $zero
/* 285C 80001C5C 00002825 */  or         $a1, $zero, $zero
/* 2860 80001C60 02603025 */  or         $a2, $s3, $zero
/* 2864 80001C64 0C026ECC */  jal        alHeapDBAlloc
/* 2868 80001C68 24070001 */   addiu     $a3, $zero, 1
/* 286C 80001C6C 3C108013 */  lui        $s0, %hi(D_80137D68)
/* 2870 80001C70 26107D68 */  addiu      $s0, $s0, %lo(D_80137D68)
/* 2874 80001C74 24183800 */  addiu      $t8, $zero, 0x3800
/* 2878 80001C78 AE020000 */  sw         $v0, ($s0)
/* 287C 80001C7C AFB80010 */  sw         $t8, 0x10($sp)
/* 2880 80001C80 00002025 */  or         $a0, $zero, $zero
/* 2884 80001C84 00002825 */  or         $a1, $zero, $zero
/* 2888 80001C88 02603025 */  or         $a2, $s3, $zero
/* 288C 80001C8C 0C026ECC */  jal        alHeapDBAlloc
/* 2890 80001C90 24070001 */   addiu     $a3, $zero, 1
/* 2894 80001C94 24190040 */  addiu      $t9, $zero, 0x40
/* 2898 80001C98 AE020004 */  sw         $v0, 4($s0)
/* 289C 80001C9C AFB90010 */  sw         $t9, 0x10($sp)
/* 28A0 80001CA0 00002025 */  or         $a0, $zero, $zero
/* 28A4 80001CA4 00002825 */  or         $a1, $zero, $zero
/* 28A8 80001CA8 02603025 */  or         $a2, $s3, $zero
/* 28AC 80001CAC 0C026ECC */  jal        alHeapDBAlloc
/* 28B0 80001CB0 24070001 */   addiu     $a3, $zero, 1
/* 28B4 80001CB4 3C108013 */  lui        $s0, %hi(D_80137D60)
/* 28B8 80001CB8 26107D60 */  addiu      $s0, $s0, %lo(D_80137D60)
/* 28BC 80001CBC 24080040 */  addiu      $t0, $zero, 0x40
/* 28C0 80001CC0 AE020000 */  sw         $v0, ($s0)
/* 28C4 80001CC4 AFA80010 */  sw         $t0, 0x10($sp)
/* 28C8 80001CC8 00002025 */  or         $a0, $zero, $zero
/* 28CC 80001CCC 00002825 */  or         $a1, $zero, $zero
/* 28D0 80001CD0 02603025 */  or         $a2, $s3, $zero
/* 28D4 80001CD4 0C026ECC */  jal        alHeapDBAlloc
/* 28D8 80001CD8 24070001 */   addiu     $a3, $zero, 1
/* 28DC 80001CDC 24090A00 */  addiu      $t1, $zero, 0xa00
/* 28E0 80001CE0 AE020004 */  sw         $v0, 4($s0)
/* 28E4 80001CE4 AFA90010 */  sw         $t1, 0x10($sp)
/* 28E8 80001CE8 00002025 */  or         $a0, $zero, $zero
/* 28EC 80001CEC 00002825 */  or         $a1, $zero, $zero
/* 28F0 80001CF0 02603025 */  or         $a2, $s3, $zero
/* 28F4 80001CF4 0C026ECC */  jal        alHeapDBAlloc
/* 28F8 80001CF8 24070001 */   addiu     $a3, $zero, 1
/* 28FC 80001CFC 3C118013 */  lui        $s1, %hi(D_80137D70)
/* 2900 80001D00 26317D70 */  addiu      $s1, $s1, %lo(D_80137D70)
/* 2904 80001D04 240A0A00 */  addiu      $t2, $zero, 0xa00
/* 2908 80001D08 AE220000 */  sw         $v0, ($s1)
/* 290C 80001D0C AFAA0010 */  sw         $t2, 0x10($sp)
/* 2910 80001D10 00002025 */  or         $a0, $zero, $zero
/* 2914 80001D14 00002825 */  or         $a1, $zero, $zero
/* 2918 80001D18 02603025 */  or         $a2, $s3, $zero
/* 291C 80001D1C 0C026ECC */  jal        alHeapDBAlloc
/* 2920 80001D20 24070001 */   addiu     $a3, $zero, 1
/* 2924 80001D24 240B0A00 */  addiu      $t3, $zero, 0xa00
/* 2928 80001D28 AE220004 */  sw         $v0, 4($s1)
/* 292C 80001D2C AFAB0010 */  sw         $t3, 0x10($sp)
/* 2930 80001D30 00002025 */  or         $a0, $zero, $zero
/* 2934 80001D34 00002825 */  or         $a1, $zero, $zero
/* 2938 80001D38 02603025 */  or         $a2, $s3, $zero
/* 293C 80001D3C 0C026ECC */  jal        alHeapDBAlloc
/* 2940 80001D40 24070001 */   addiu     $a3, $zero, 1
/* 2944 80001D44 3C0C004D */  lui        $t4, 0x4d
/* 2948 80001D48 3C0D004C */  lui        $t5, 0x4c
/* 294C 80001D4C 3C108017 */  lui        $s0, %hi(D_8016E714)
/* 2950 80001D50 25AD9990 */  addiu      $t5, $t5, -0x6670
/* 2954 80001D54 258CB120 */  addiu      $t4, $t4, -0x4ee0
/* 2958 80001D58 2610E714 */  addiu      $s0, $s0, %lo(D_8016E714)
/* 295C 80001D5C 018D7023 */  subu       $t6, $t4, $t5
/* 2960 80001D60 AE220008 */  sw         $v0, 8($s1)
/* 2964 80001D64 AE0E0000 */  sw         $t6, ($s0)
/* 2968 80001D68 AFAE0010 */  sw         $t6, 0x10($sp)
/* 296C 80001D6C 00002025 */  or         $a0, $zero, $zero
/* 2970 80001D70 00002825 */  or         $a1, $zero, $zero
/* 2974 80001D74 02603025 */  or         $a2, $s3, $zero
/* 2978 80001D78 0C026ECC */  jal        alHeapDBAlloc
/* 297C 80001D7C 24070001 */   addiu     $a3, $zero, 1
/* 2980 80001D80 3C038017 */  lui        $v1, %hi(D_8016DF34)
/* 2984 80001D84 2463DF34 */  addiu      $v1, $v1, %lo(D_8016DF34)
/* 2988 80001D88 3C04004C */  lui        $a0, 0x4c
/* 298C 80001D8C 8E060000 */  lw         $a2, ($s0)
/* 2990 80001D90 AC620000 */  sw         $v0, ($v1)
/* 2994 80001D94 24849990 */  addiu      $a0, $a0, -0x6670
/* 2998 80001D98 0C000AB8 */  jal        func_80002AE0
/* 299C 80001D9C 00402825 */   or        $a1, $v0, $zero
/* 29A0 80001DA0 24180004 */  addiu      $t8, $zero, 4
/* 29A4 80001DA4 AE180000 */  sw         $t8, ($s0)
/* 29A8 80001DA8 AFB80010 */  sw         $t8, 0x10($sp)
/* 29AC 80001DAC 00002025 */  or         $a0, $zero, $zero
/* 29B0 80001DB0 00002825 */  or         $a1, $zero, $zero
/* 29B4 80001DB4 02603025 */  or         $a2, $s3, $zero
/* 29B8 80001DB8 0C026ECC */  jal        alHeapDBAlloc
/* 29BC 80001DBC 24070001 */   addiu     $a3, $zero, 1
/* 29C0 80001DC0 3C118017 */  lui        $s1, %hi(D_8016E6F4)
/* 29C4 80001DC4 2631E6F4 */  addiu      $s1, $s1, %lo(D_8016E6F4)
/* 29C8 80001DC8 3C040064 */  lui        $a0, 0x64
/* 29CC 80001DCC 8E060000 */  lw         $a2, ($s0)
/* 29D0 80001DD0 AE220000 */  sw         $v0, ($s1)
/* 29D4 80001DD4 248413B0 */  addiu      $a0, $a0, 0x13b0
/* 29D8 80001DD8 0C000AB8 */  jal        func_80002AE0
/* 29DC 80001DDC 00402825 */   or        $a1, $v0, $zero
/* 29E0 80001DE0 8E280000 */  lw         $t0, ($s1)
/* 29E4 80001DE4 00002025 */  or         $a0, $zero, $zero
/* 29E8 80001DE8 85090002 */  lh         $t1, 2($t0)
/* 29EC 80001DEC 00002825 */  or         $a1, $zero, $zero
/* 29F0 80001DF0 000950C0 */  sll        $t2, $t1, 3
/* 29F4 80001DF4 254B0004 */  addiu      $t3, $t2, 4
/* 29F8 80001DF8 AE0B0000 */  sw         $t3, ($s0)
/* 29FC 80001DFC AFAB0010 */  sw         $t3, 0x10($sp)
/* 2A00 80001E00 02603025 */  or         $a2, $s3, $zero
/* 2A04 80001E04 0C026ECC */  jal        alHeapDBAlloc
/* 2A08 80001E08 24070001 */   addiu     $a3, $zero, 1
/* 2A0C 80001E0C 3C040064 */  lui        $a0, 0x64
/* 2A10 80001E10 8E060000 */  lw         $a2, ($s0)
/* 2A14 80001E14 AE220000 */  sw         $v0, ($s1)
/* 2A18 80001E18 248413B0 */  addiu      $a0, $a0, 0x13b0
/* 2A1C 80001E1C 0C000AB8 */  jal        func_80002AE0
/* 2A20 80001E20 00402825 */   or        $a1, $v0, $zero
/* 2A24 80001E24 8E240000 */  lw         $a0, ($s1)
/* 2A28 80001E28 3C050064 */  lui        $a1, 0x64
/* 2A2C 80001E2C 0C026F38 */  jal        alSeqFileNew
/* 2A30 80001E30 24A513B0 */   addiu     $a1, $a1, 0x13b0
/* 2A34 80001E34 0C027054 */  jal        osAiSetFrequency
/* 2A38 80001E38 24045622 */   addiu     $a0, $zero, 0x5622
/* 2A3C 80001E3C 44822000 */  mtc1       $v0, $f4
/* 2A40 80001E40 3C013F80 */  lui        $at, 0x3f80
/* 2A44 80001E44 468021A0 */  cvt.s.w    $f6, $f4
/* 2A48 80001E48 44814000 */  mtc1       $at, $f8
/* 2A4C 80001E4C 3C014270 */  lui        $at, 0x4270
/* 2A50 80001E50 46083282 */  mul.s      $f10, $f6, $f8
/* 2A54 80001E54 44818000 */  mtc1       $at, $f16
/* 2A58 80001E58 3C068017 */  lui        $a2, %hi(D_8016E70C)
/* 2A5C 80001E5C 24C6E70C */  addiu      $a2, $a2, %lo(D_8016E70C)
/* 2A60 80001E60 46105483 */  div.s      $f18, $f10, $f16
/* 2A64 80001E64 3C058017 */  lui        $a1, %hi(D_8016DF10)
/* 2A68 80001E68 24A5DF10 */  addiu      $a1, $a1, %lo(D_8016DF10)
/* 2A6C 80001E6C 3C048017 */  lui        $a0, %hi(D_8016E71C)
/* 2A70 80001E70 2484E71C */  addiu      $a0, $a0, %lo(D_8016E71C)
/* 2A74 80001E74 ACA20018 */  sw         $v0, 0x18($a1)
/* 2A78 80001E78 3C0C8000 */  lui        $t4, %hi(func_80001988)
/* 2A7C 80001E7C 24020014 */  addiu      $v0, $zero, 0x14
/* 2A80 80001E80 240B0090 */  addiu      $t3, $zero, 0x90
/* 2A84 80001E84 258C1988 */  addiu      $t4, $t4, %lo(func_80001988)
/* 2A88 80001E88 240D0006 */  addiu      $t5, $zero, 6
/* 2A8C 80001E8C 444EF800 */  cfc1       $t6, $31
/* 2A90 80001E90 E4D20000 */  swc1       $f18, ($a2)
/* 2A94 80001E94 35C10003 */  ori        $at, $t6, 3
/* 2A98 80001E98 38210002 */  xori       $at, $at, 2
/* 2A9C 80001E9C 44C1F800 */  ctc1       $at, $31
/* 2AA0 80001EA0 C4C00000 */  lwc1       $f0, ($a2)
/* 2AA4 80001EA4 00000000 */  nop
/* 2AA8 80001EA8 46000124 */  cvt.w.s    $f4, $f0
/* 2AAC 80001EAC 440F2000 */  mfc1       $t7, $f4
/* 2AB0 80001EB0 44CEF800 */  ctc1       $t6, $31
/* 2AB4 80001EB4 01E01825 */  or         $v1, $t7, $zero
/* 2AB8 80001EB8 44833000 */  mtc1       $v1, $f6
/* 2ABC 80001EBC 3C0E800C */  lui        $t6, %hi(D_800C3858)
/* 2AC0 80001EC0 46803220 */  cvt.s.w    $f8, $f6
/* 2AC4 80001EC4 25CE3858 */  addiu      $t6, $t6, %lo(D_800C3858)
/* 2AC8 80001EC8 AC8F0000 */  sw         $t7, ($a0)
/* 2ACC 80001ECC 4600403C */  c.lt.s     $f8, $f0
/* 2AD0 80001ED0 00000000 */  nop
/* 2AD4 80001ED4 45000004 */  bc1f       .L80001EE8
/* 2AD8 80001ED8 3079000F */   andi      $t9, $v1, 0xf
/* 2ADC 80001EDC 25E30001 */  addiu      $v1, $t7, 1
/* 2AE0 80001EE0 AC830000 */  sw         $v1, ($a0)
/* 2AE4 80001EE4 3079000F */  andi       $t9, $v1, 0xf
.L80001EE8:
/* 2AE8 80001EE8 13200004 */  beqz       $t9, .L80001EFC
/* 2AEC 80001EEC 2401FFF0 */   addiu     $at, $zero, -0x10
/* 2AF0 80001EF0 00614024 */  and        $t0, $v1, $at
/* 2AF4 80001EF4 25030010 */  addiu      $v1, $t0, 0x10
/* 2AF8 80001EF8 AC830000 */  sw         $v1, ($a0)
.L80001EFC:
/* 2AFC 80001EFC 246AFFF0 */  addiu      $t2, $v1, -0x10
/* 2B00 80001F00 3C018017 */  lui        $at, %hi(D_8016E720)
/* 2B04 80001F04 AC2AE720 */  sw         $t2, %lo(D_8016E720)($at)
/* 2B08 80001F08 3C048017 */  lui        $a0, 0x8017
/* 2B0C 80001F0C ACA20000 */  sw         $v0, ($a1)
/* 2B10 80001F10 ACA20004 */  sw         $v0, 4($a1)
/* 2B14 80001F14 ACAB0008 */  sw         $t3, 8($a1)
/* 2B18 80001F18 ACAC0010 */  sw         $t4, 0x10($a1)
/* 2B1C 80001F1C A0AD001C */  sb         $t5, 0x1c($a1)
/* 2B20 80001F20 ACB30014 */  sw         $s3, 0x14($a1)
/* 2B24 80001F24 ACAE0020 */  sw         $t6, 0x20($a1)
/* 2B28 80001F28 0C026E88 */  jal        alInit
/* 2B2C 80001F2C 2484DEC0 */   addiu     $a0, $a0, -0x2140
/* 2B30 80001F30 3C118017 */  lui        $s1, %hi(D_8016DF48)
/* 2B34 80001F34 2631DF48 */  addiu      $s1, $s1, %lo(D_8016DF48)
/* 2B38 80001F38 240F001E */  addiu      $t7, $zero, 0x1e
/* 2B3C 80001F3C 24180040 */  addiu      $t8, $zero, 0x40
/* 2B40 80001F40 24190014 */  addiu      $t9, $zero, 0x14
/* 2B44 80001F44 AE2F0000 */  sw         $t7, ($s1)
/* 2B48 80001F48 AE380004 */  sw         $t8, 4($s1)
/* 2B4C 80001F4C A2390008 */  sb         $t9, 8($s1)
/* 2B50 80001F50 AE33000C */  sw         $s3, 0xc($s1)
/* 2B54 80001F54 AE200010 */  sw         $zero, 0x10($s1)
/* 2B58 80001F58 AE200014 */  sw         $zero, 0x14($s1)
/* 2B5C 80001F5C AE200018 */  sw         $zero, 0x18($s1)
/* 2B60 80001F60 3C048017 */  lui        $a0, %hi(D_8016DFE4)
/* 2B64 80001F64 8C84DFE4 */  lw         $a0, %lo(D_8016DFE4)($a0)
/* 2B68 80001F68 0C027108 */  jal        func_8009C420
/* 2B6C 80001F6C 02202825 */   or        $a1, $s1, $zero
/* 2B70 80001F70 00008025 */  or         $s0, $zero, $zero
.L80001F74:
/* 2B74 80001F74 00104080 */  sll        $t0, $s0, 2
/* 2B78 80001F78 02484821 */  addu       $t1, $s2, $t0
/* 2B7C 80001F7C 8D240000 */  lw         $a0, ($t1)
/* 2B80 80001F80 0C027108 */  jal        func_8009C420
/* 2B84 80001F84 02202825 */   or        $a1, $s1, $zero
/* 2B88 80001F88 26100001 */  addiu      $s0, $s0, 1
/* 2B8C 80001F8C 320A00FF */  andi       $t2, $s0, 0xff
/* 2B90 80001F90 29410004 */  slti       $at, $t2, 4
/* 2B94 80001F94 1420FFF7 */  bnez       $at, .L80001F74
/* 2B98 80001F98 01408025 */   or        $s0, $t2, $zero
/* 2B9C 80001F9C 3C048017 */  lui        $a0, %hi(D_8016DF34)
/* 2BA0 80001FA0 8C84DF34 */  lw         $a0, %lo(D_8016DF34)($a0)
/* 2BA4 80001FA4 3C05004D */  lui        $a1, 0x4d
/* 2BA8 80001FA8 0C026F51 */  jal        alBnkfNew
/* 2BAC 80001FAC 24A5B120 */   addiu     $a1, $a1, -0x4ee0
/* 2BB0 80001FB0 3C028017 */  lui        $v0, %hi(D_8016DF34)
/* 2BB4 80001FB4 8C42DF34 */  lw         $v0, %lo(D_8016DF34)($v0)
/* 2BB8 80001FB8 3C038017 */  lui        $v1, %hi(D_8016DF38)
/* 2BBC 80001FBC 8C4B0004 */  lw         $t3, 4($v0)
/* 2BC0 80001FC0 2463DF38 */  addiu      $v1, $v1, %lo(D_8016DF38)
/* 2BC4 80001FC4 AC6B0000 */  sw         $t3, ($v1)
/* 2BC8 80001FC8 8C4C0008 */  lw         $t4, 8($v0)
/* 2BCC 80001FCC 3C118017 */  lui        $s1, %hi(D_8016DF3C)
/* 2BD0 80001FD0 2631DF3C */  addiu      $s1, $s1, %lo(D_8016DF3C)
/* 2BD4 80001FD4 AE2C0000 */  sw         $t4, ($s1)
/* 2BD8 80001FD8 8C4D000C */  lw         $t5, 0xc($v0)
/* 2BDC 80001FDC 3C018017 */  lui        $at, %hi(D_8016DF40)
/* 2BE0 80001FE0 AC2DDF40 */  sw         $t5, %lo(D_8016DF40)($at)
/* 2BE4 80001FE4 8C4E0010 */  lw         $t6, 0x10($v0)
/* 2BE8 80001FE8 3C018017 */  lui        $at, %hi(D_8016DF44)
/* 2BEC 80001FEC 3C048017 */  lui        $a0, %hi(D_8016DFE4)
/* 2BF0 80001FF0 AC2EDF44 */  sw         $t6, %lo(D_8016DF44)($at)
/* 2BF4 80001FF4 8C650000 */  lw         $a1, ($v1)
/* 2BF8 80001FF8 8C84DFE4 */  lw         $a0, %lo(D_8016DFE4)($a0)
/* 2BFC 80001FFC 0C0278A8 */  jal        alSeqpSetBank
/* 2C00 80002000 00000000 */   nop
/* 2C04 80002004 00008025 */  or         $s0, $zero, $zero
.L80002008:
/* 2C08 80002008 00107880 */  sll        $t7, $s0, 2
/* 2C0C 8000200C 024FC021 */  addu       $t8, $s2, $t7
/* 2C10 80002010 8F040000 */  lw         $a0, ($t8)
/* 2C14 80002014 8E250000 */  lw         $a1, ($s1)
/* 2C18 80002018 0C0278A8 */  jal        alSeqpSetBank
/* 2C1C 8000201C 00000000 */   nop
/* 2C20 80002020 26100001 */  addiu      $s0, $s0, 1
/* 2C24 80002024 321900FF */  andi       $t9, $s0, 0xff
/* 2C28 80002028 2B210004 */  slti       $at, $t9, 4
/* 2C2C 8000202C 1420FFF6 */  bnez       $at, .L80002008
/* 2C30 80002030 03208025 */   or        $s0, $t9, $zero
/* 2C34 80002034 24083400 */  addiu      $t0, $zero, 0x3400
/* 2C38 80002038 AFA80010 */  sw         $t0, 0x10($sp)
/* 2C3C 8000203C 00002025 */  or         $a0, $zero, $zero
/* 2C40 80002040 00002825 */  or         $a1, $zero, $zero
/* 2C44 80002044 02603025 */  or         $a2, $s3, $zero
/* 2C48 80002048 0C026ECC */  jal        alHeapDBAlloc
/* 2C4C 8000204C 24070001 */   addiu     $a3, $zero, 1
/* 2C50 80002050 3C018017 */  lui        $at, %hi(D_8016E6D8)
/* 2C54 80002054 3C118017 */  lui        $s1, %hi(D_8016E6E0)
/* 2C58 80002058 AC22E6D8 */  sw         $v0, %lo(D_8016E6D8)($at)
/* 2C5C 8000205C 2631E6E0 */  addiu      $s1, $s1, %lo(D_8016E6E0)
/* 2C60 80002060 00008025 */  or         $s0, $zero, $zero
.L80002064:
/* 2C64 80002064 24090500 */  addiu      $t1, $zero, 0x500
/* 2C68 80002068 AFA90010 */  sw         $t1, 0x10($sp)
/* 2C6C 8000206C 00002025 */  or         $a0, $zero, $zero
/* 2C70 80002070 00002825 */  or         $a1, $zero, $zero
/* 2C74 80002074 02603025 */  or         $a2, $s3, $zero
/* 2C78 80002078 0C026ECC */  jal        alHeapDBAlloc
/* 2C7C 8000207C 24070001 */   addiu     $a3, $zero, 1
/* 2C80 80002080 00105080 */  sll        $t2, $s0, 2
/* 2C84 80002084 26100001 */  addiu      $s0, $s0, 1
/* 2C88 80002088 320C00FF */  andi       $t4, $s0, 0xff
/* 2C8C 8000208C 29810004 */  slti       $at, $t4, 4
/* 2C90 80002090 022A5821 */  addu       $t3, $s1, $t2
/* 2C94 80002094 01808025 */  or         $s0, $t4, $zero
/* 2C98 80002098 1420FFF2 */  bnez       $at, .L80002064
/* 2C9C 8000209C AD620000 */   sw        $v0, ($t3)
/* 2CA0 800020A0 8FBF002C */  lw         $ra, 0x2c($sp)
/* 2CA4 800020A4 8FB0001C */  lw         $s0, 0x1c($sp)
/* 2CA8 800020A8 8FB10020 */  lw         $s1, 0x20($sp)
/* 2CAC 800020AC 8FB20024 */  lw         $s2, 0x24($sp)
/* 2CB0 800020B0 8FB30028 */  lw         $s3, 0x28($sp)
/* 2CB4 800020B4 03E00008 */  jr         $ra
/* 2CB8 800020B8 27BD0030 */   addiu     $sp, $sp, 0x30
