glabel func_80096B70
/* 97770 80096B70 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 97774 80096B74 AFB00014 */  sw         $s0, 0x14($sp)
/* 97778 80096B78 3C10800F */  lui        $s0, %hi(gActors)
/* 9777C 80096B7C AFB10018 */  sw         $s1, 0x18($sp)
/* 97780 80096B80 2411001D */  addiu      $s1, $zero, 0x1d
/* 97784 80096B84 2610F510 */  addiu      $s0, $s0, %lo(gActors)
/* 97788 80096B88 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9778C 80096B8C A61166D2 */  sh         $s1, 0x66d2($s0)
/* 97790 80096B90 0C0078B4 */  jal        func_8001E2D0
/* 97794 80096B94 24040040 */   addiu     $a0, $zero, 0x40
/* 97798 80096B98 3C013F40 */  lui        $at, 0x3f40
/* 9779C 80096B9C 44812000 */  mtc1       $at, $f4
/* 977A0 80096BA0 240E0911 */  addiu      $t6, $zero, 0x911
/* 977A4 80096BA4 240F000B */  addiu      $t7, $zero, 0xb
/* 977A8 80096BA8 24181820 */  addiu      $t8, $zero, 0x1820
/* 977AC 80096BAC 24190080 */  addiu      $t9, $zero, 0x80
/* 977B0 80096BB0 2408009C */  addiu      $t0, $zero, 0x9c
/* 977B4 80096BB4 24090020 */  addiu      $t1, $zero, 0x20
/* 977B8 80096BB8 A60E6694 */  sh         $t6, 0x6694($s0)
/* 977BC 80096BBC AE0F6680 */  sw         $t7, 0x6680($s0)
/* 977C0 80096BC0 A6186684 */  sh         $t8, 0x6684($s0)
/* 977C4 80096BC4 A219669F */  sb         $t9, 0x669f($s0)
/* 977C8 80096BC8 A208669E */  sb         $t0, 0x669e($s0)
/* 977CC 80096BCC A6006688 */  sh         $zero, 0x6688($s0)
/* 977D0 80096BD0 A609668C */  sh         $t1, 0x668c($s0)
/* 977D4 80096BD4 A6006690 */  sh         $zero, 0x6690($s0)
/* 977D8 80096BD8 A611686A */  sh         $s1, 0x686a($s0)
/* 977DC 80096BDC 24040041 */  addiu      $a0, $zero, 0x41
/* 977E0 80096BE0 0C0078B4 */  jal        func_8001E2D0
/* 977E4 80096BE4 E60466B8 */   swc1      $f4, 0x66b8($s0)
/* 977E8 80096BE8 3C014188 */  lui        $at, 0x4188
/* 977EC 80096BEC 44813000 */  mtc1       $at, $f6
/* 977F0 80096BF0 3C014080 */  lui        $at, 0x4080
/* 977F4 80096BF4 44814000 */  mtc1       $at, $f8
/* 977F8 80096BF8 240A0B13 */  addiu      $t2, $zero, 0xb13
/* 977FC 80096BFC A60A682C */  sh         $t2, 0x682c($s0)
/* 97800 80096C00 3C0142F0 */  lui        $at, 0x42f0
/* 97804 80096C04 44815000 */  mtc1       $at, $f10
/* 97808 80096C08 3C0A800E */  lui        $t2, 0x800e
/* 9780C 80096C0C 240B000B */  addiu      $t3, $zero, 0xb
/* 97810 80096C10 240C00EA */  addiu      $t4, $zero, 0xea
/* 97814 80096C14 240D00C0 */  addiu      $t5, $zero, 0xc0
/* 97818 80096C18 240EFFB0 */  addiu      $t6, $zero, -0x50
/* 9781C 80096C1C 240F0008 */  addiu      $t7, $zero, 8
/* 97820 80096C20 2418FFC0 */  addiu      $t8, $zero, -0x40
/* 97824 80096C24 2419003A */  addiu      $t9, $zero, 0x3a
/* 97828 80096C28 24080082 */  addiu      $t0, $zero, 0x82
/* 9782C 80096C2C 240900AD */  addiu      $t1, $zero, 0xad
/* 97830 80096C30 254A9284 */  addiu      $t2, $t2, -0x6d7c
/* 97834 80096C34 AE0B6818 */  sw         $t3, 0x6818($s0)
/* 97838 80096C38 A60C681C */  sh         $t4, 0x681c($s0)
/* 9783C 80096C3C A20D6837 */  sb         $t5, 0x6837($s0)
/* 97840 80096C40 A6006820 */  sh         $zero, 0x6820($s0)
/* 97844 80096C44 A60E6824 */  sh         $t6, 0x6824($s0)
/* 97848 80096C48 A60F6828 */  sh         $t7, 0x6828($s0)
/* 9784C 80096C4C AE186920 */  sw         $t8, 0x6920($s0)
/* 97850 80096C50 A2196834 */  sb         $t9, 0x6834($s0)
/* 97854 80096C54 A2086835 */  sb         $t0, 0x6835($s0)
/* 97858 80096C58 A2096836 */  sb         $t1, 0x6836($s0)
/* 9785C 80096C5C AE0A6924 */  sw         $t2, 0x6924($s0)
/* 97860 80096C60 A6116A02 */  sh         $s1, 0x6a02($s0)
/* 97864 80096C64 24040042 */  addiu      $a0, $zero, 0x42
/* 97868 80096C68 E606684C */  swc1       $f6, 0x684c($s0)
/* 9786C 80096C6C E6086850 */  swc1       $f8, 0x6850($s0)
/* 97870 80096C70 0C0078B4 */  jal        func_8001E2D0
/* 97874 80096C74 E60A6854 */   swc1      $f10, 0x6854($s0)
/* 97878 80096C78 3C014170 */  lui        $at, 0x4170
/* 9787C 80096C7C 44818000 */  mtc1       $at, $f16
/* 97880 80096C80 3C014000 */  lui        $at, 0x4000
/* 97884 80096C84 44819000 */  mtc1       $at, $f18
/* 97888 80096C88 3C0142F0 */  lui        $at, 0x42f0
/* 9788C 80096C8C 44812000 */  mtc1       $at, $f4
/* 97890 80096C90 240B0901 */  addiu      $t3, $zero, 0x901
/* 97894 80096C94 240C000B */  addiu      $t4, $zero, 0xb
/* 97898 80096C98 240D0168 */  addiu      $t5, $zero, 0x168
/* 9789C 80096C9C 240E0050 */  addiu      $t6, $zero, 0x50
/* 978A0 80096CA0 240F007F */  addiu      $t7, $zero, 0x7f
/* 978A4 80096CA4 2418FFD8 */  addiu      $t8, $zero, -0x28
/* 978A8 80096CA8 24190009 */  addiu      $t9, $zero, 9
/* 978AC 80096CAC 2408FFC0 */  addiu      $t0, $zero, -0x40
/* 978B0 80096CB0 A60B69C4 */  sh         $t3, 0x69c4($s0)
/* 978B4 80096CB4 AE0C69B0 */  sw         $t4, 0x69b0($s0)
/* 978B8 80096CB8 A60D69B4 */  sh         $t5, 0x69b4($s0)
/* 978BC 80096CBC A20E69CF */  sb         $t6, 0x69cf($s0)
/* 978C0 80096CC0 A20F69CE */  sb         $t7, 0x69ce($s0)
/* 978C4 80096CC4 A60069B8 */  sh         $zero, 0x69b8($s0)
/* 978C8 80096CC8 A61869BC */  sh         $t8, 0x69bc($s0)
/* 978CC 80096CCC A61969C0 */  sh         $t9, 0x69c0($s0)
/* 978D0 80096CD0 AE086AB8 */  sw         $t0, 0x6ab8($s0)
/* 978D4 80096CD4 A6116B9A */  sh         $s1, 0x6b9a($s0)
/* 978D8 80096CD8 24040043 */  addiu      $a0, $zero, 0x43
/* 978DC 80096CDC E61069E4 */  swc1       $f16, 0x69e4($s0)
/* 978E0 80096CE0 E61269E8 */  swc1       $f18, 0x69e8($s0)
/* 978E4 80096CE4 0C0078B4 */  jal        func_8001E2D0
/* 978E8 80096CE8 E60469EC */   swc1      $f4, 0x69ec($s0)
/* 978EC 80096CEC 3C014100 */  lui        $at, 0x4100
/* 978F0 80096CF0 44810000 */  mtc1       $at, $f0
/* 978F4 80096CF4 24090B11 */  addiu      $t1, $zero, 0xb11
/* 978F8 80096CF8 A6096B5C */  sh         $t1, 0x6b5c($s0)
/* 978FC 80096CFC 3C0142F0 */  lui        $at, 0x42f0
/* 97900 80096D00 44813000 */  mtc1       $at, $f6
/* 97904 80096D04 3C09800E */  lui        $t1, 0x800e
/* 97908 80096D08 240A000B */  addiu      $t2, $zero, 0xb
/* 9790C 80096D0C 240B00E6 */  addiu      $t3, $zero, 0xe6
/* 97910 80096D10 240C0060 */  addiu      $t4, $zero, 0x60
/* 97914 80096D14 240D0020 */  addiu      $t5, $zero, 0x20
/* 97918 80096D18 240EF800 */  addiu      $t6, $zero, -0x800
/* 9791C 80096D1C 240F007F */  addiu      $t7, $zero, 0x7f
/* 97920 80096D20 2418004F */  addiu      $t8, $zero, 0x4f
/* 97924 80096D24 2419000F */  addiu      $t9, $zero, 0xf
/* 97928 80096D28 2408FF80 */  addiu      $t0, $zero, -0x80
/* 9792C 80096D2C 25299474 */  addiu      $t1, $t1, -0x6b8c
/* 97930 80096D30 AE0A6B48 */  sw         $t2, 0x6b48($s0)
/* 97934 80096D34 A60B6B4C */  sh         $t3, 0x6b4c($s0)
/* 97938 80096D38 A20C6B67 */  sb         $t4, 0x6b67($s0)
/* 9793C 80096D3C A6006B50 */  sh         $zero, 0x6b50($s0)
/* 97940 80096D40 A60D6B54 */  sh         $t5, 0x6b54($s0)
/* 97944 80096D44 A60E6B58 */  sh         $t6, 0x6b58($s0)
/* 97948 80096D48 A20F6B64 */  sb         $t7, 0x6b64($s0)
/* 9794C 80096D4C A2186B65 */  sb         $t8, 0x6b65($s0)
/* 97950 80096D50 A2196B66 */  sb         $t9, 0x6b66($s0)
/* 97954 80096D54 AE086C50 */  sw         $t0, 0x6c50($s0)
/* 97958 80096D58 AE096C54 */  sw         $t1, 0x6c54($s0)
/* 9795C 80096D5C A6116D32 */  sh         $s1, 0x6d32($s0)
/* 97960 80096D60 24040044 */  addiu      $a0, $zero, 0x44
/* 97964 80096D64 E6006B7C */  swc1       $f0, 0x6b7c($s0)
/* 97968 80096D68 E6006B80 */  swc1       $f0, 0x6b80($s0)
/* 9796C 80096D6C 0C0078B4 */  jal        func_8001E2D0
/* 97970 80096D70 E6066B84 */   swc1      $f6, 0x6b84($s0)
/* 97974 80096D74 240A0800 */  addiu      $t2, $zero, 0x800
/* 97978 80096D78 240B0003 */  addiu      $t3, $zero, 3
/* 9797C 80096D7C 240C2000 */  addiu      $t4, $zero, 0x2000
/* 97980 80096D80 240D00A6 */  addiu      $t5, $zero, 0xa6
/* 97984 80096D84 240E0030 */  addiu      $t6, $zero, 0x30
/* 97988 80096D88 240FFF60 */  addiu      $t7, $zero, -0xa0
/* 9798C 80096D8C A60A6CF4 */  sh         $t2, 0x6cf4($s0)
/* 97990 80096D90 AE0B6CE0 */  sw         $t3, 0x6ce0($s0)
/* 97994 80096D94 A60C6CE4 */  sh         $t4, 0x6ce4($s0)
/* 97998 80096D98 A20D6CFF */  sb         $t5, 0x6cff($s0)
/* 9799C 80096D9C A6006CE8 */  sh         $zero, 0x6ce8($s0)
/* 979A0 80096DA0 A6006CEC */  sh         $zero, 0x6cec($s0)
/* 979A4 80096DA4 A60E6CF0 */  sh         $t6, 0x6cf0($s0)
/* 979A8 80096DA8 AE0F6DE8 */  sw         $t7, 0x6de8($s0)
/* 979AC 80096DAC A6116ECA */  sh         $s1, 0x6eca($s0)
/* 979B0 80096DB0 0C0078B4 */  jal        func_8001E2D0
/* 979B4 80096DB4 24040045 */   addiu     $a0, $zero, 0x45
/* 979B8 80096DB8 24180801 */  addiu      $t8, $zero, 0x801
/* 979BC 80096DBC 24190003 */  addiu      $t9, $zero, 3
/* 979C0 80096DC0 24082004 */  addiu      $t0, $zero, 0x2004
/* 979C4 80096DC4 24090070 */  addiu      $t1, $zero, 0x70
/* 979C8 80096DC8 A6186E8C */  sh         $t8, 0x6e8c($s0)
/* 979CC 80096DCC AE196E78 */  sw         $t9, 0x6e78($s0)
/* 979D0 80096DD0 A6086E7C */  sh         $t0, 0x6e7c($s0)
/* 979D4 80096DD4 A2096E97 */  sb         $t1, 0x6e97($s0)
/* 979D8 80096DD8 24040045 */  addiu      $a0, $zero, 0x45
/* 979DC 80096DDC 0C00ABAD */  jal        func_8002AEB4
/* 979E0 80096DE0 240500FF */   addiu     $a1, $zero, 0xff
/* 979E4 80096DE4 240AFFE8 */  addiu      $t2, $zero, -0x18
/* 979E8 80096DE8 240B0030 */  addiu      $t3, $zero, 0x30
/* 979EC 80096DEC 240CFF60 */  addiu      $t4, $zero, -0xa0
/* 979F0 80096DF0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 979F4 80096DF4 A6006E80 */  sh         $zero, 0x6e80($s0)
/* 979F8 80096DF8 A60A6E84 */  sh         $t2, 0x6e84($s0)
/* 979FC 80096DFC A60B6E88 */  sh         $t3, 0x6e88($s0)
/* 97A00 80096E00 AE0C6F80 */  sw         $t4, 0x6f80($s0)
/* 97A04 80096E04 8FB00014 */  lw         $s0, 0x14($sp)
/* 97A08 80096E08 8FB10018 */  lw         $s1, 0x18($sp)
/* 97A0C 80096E0C 03E00008 */  jr         $ra
/* 97A10 80096E10 27BD0020 */   addiu     $sp, $sp, 0x20
