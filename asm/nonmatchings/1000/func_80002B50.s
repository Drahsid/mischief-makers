glabel func_80002B50
/* 3750 80002B50 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3754 80002B54 3C018013 */  lui        $at, %hi(D_80137DA0)
/* 3758 80002B58 3C0E8013 */  lui        $t6, %hi(D_80137798)
/* 375C 80002B5C 91CE7798 */  lbu        $t6, %lo(D_80137798)($t6)
/* 3760 80002B60 AC207DA0 */  sw         $zero, %lo(D_80137DA0)($at)
/* 3764 80002B64 3C018013 */  lui        $at, 0x8013
/* 3768 80002B68 AFBF001C */  sw         $ra, 0x1c($sp)
/* 376C 80002B6C AFB10018 */  sw         $s1, 0x18($sp)
/* 3770 80002B70 AFB00014 */  sw         $s0, 0x14($sp)
/* 3774 80002B74 AFA40020 */  sw         $a0, 0x20($sp)
/* 3778 80002B78 11C000EE */  beqz       $t6, .L80002F34
/* 377C 80002B7C A4207D90 */   sh        $zero, 0x7d90($at)
/* 3780 80002B80 3C108017 */  lui        $s0, %hi(D_8016DFE4)
/* 3784 80002B84 2610DFE4 */  addiu      $s0, $s0, %lo(D_8016DFE4)
/* 3788 80002B88 8E040000 */  lw         $a0, ($s0)
/* 378C 80002B8C 0C027B9C */  jal        func_8009EE70
/* 3790 80002B90 00000000 */   nop
/* 3794 80002B94 10400005 */  beqz       $v0, .L80002BAC
/* 3798 80002B98 8FAF0020 */   lw        $t7, 0x20($sp)
/* 379C 80002B9C 8E040000 */  lw         $a0, ($s0)
/* 37A0 80002BA0 0C027FD0 */  jal        func_8009FF40
/* 37A4 80002BA4 00000000 */   nop
/* 37A8 80002BA8 8FAF0020 */  lw         $t7, 0x20($sp)
.L80002BAC:
/* 37AC 80002BAC 3C06800F */  lui        $a2, %hi(D_800EF4D8)
/* 37B0 80002BB0 24C6F4D8 */  addiu      $a2, $a2, %lo(D_800EF4D8)
/* 37B4 80002BB4 24180081 */  addiu      $t8, $zero, 0x81
/* 37B8 80002BB8 3C01800F */  lui        $at, %hi(D_800EF4D0)
/* 37BC 80002BBC ACCF0000 */  sw         $t7, ($a2)
/* 37C0 80002BC0 A038F4D0 */  sb         $t8, %lo(D_800EF4D0)($at)
/* 37C4 80002BC4 8CD90000 */  lw         $t9, ($a2)
/* 37C8 80002BC8 3C0F800C */  lui        $t7, %hi(D_800C0AD8)
/* 37CC 80002BCC 001970C0 */  sll        $t6, $t9, 3
/* 37D0 80002BD0 01D97021 */  addu       $t6, $t6, $t9
/* 37D4 80002BD4 000E7040 */  sll        $t6, $t6, 1
/* 37D8 80002BD8 25EF0AD8 */  addiu      $t7, $t7, %lo(D_800C0AD8)
/* 37DC 80002BDC 01CF2021 */  addu       $a0, $t6, $t7
/* 37E0 80002BE0 90980000 */  lbu        $t8, ($a0)
/* 37E4 80002BE4 3C02800F */  lui        $v0, %hi(D_800EF4D2)
/* 37E8 80002BE8 2442F4D2 */  addiu      $v0, $v0, %lo(D_800EF4D2)
/* 37EC 80002BEC 0018CA00 */  sll        $t9, $t8, 8
/* 37F0 80002BF0 A4590000 */  sh         $t9, ($v0)
/* 37F4 80002BF4 844E0000 */  lh         $t6, ($v0)
/* 37F8 80002BF8 3C01800F */  lui        $at, %hi(D_800EF4D4)
/* 37FC 80002BFC A42EF4D4 */  sh         $t6, %lo(D_800EF4D4)($at)
/* 3800 80002C00 908F0001 */  lbu        $t7, 1($a0)
/* 3804 80002C04 3C018013 */  lui        $at, %hi(D_80137794)
/* 3808 80002C08 3C02800F */  lui        $v0, %hi(D_800EF4E0)
/* 380C 80002C0C 000FC300 */  sll        $t8, $t7, 0xc
/* 3810 80002C10 AC387794 */  sw         $t8, %lo(D_80137794)($at)
/* 3814 80002C14 2442F4E0 */  addiu      $v0, $v0, %lo(D_800EF4E0)
/* 3818 80002C18 00008825 */  or         $s1, $zero, $zero
/* 381C 80002C1C 00001825 */  or         $v1, $zero, $zero
.L80002C20:
/* 3820 80002C20 0083C821 */  addu       $t9, $a0, $v1
/* 3824 80002C24 00517821 */  addu       $t7, $v0, $s1
/* 3828 80002C28 26310001 */  addiu      $s1, $s1, 1
/* 382C 80002C2C 932E0002 */  lbu        $t6, 2($t9)
/* 3830 80002C30 322300FF */  andi       $v1, $s1, 0xff
/* 3834 80002C34 28610010 */  slti       $at, $v1, 0x10
/* 3838 80002C38 00608825 */  or         $s1, $v1, $zero
/* 383C 80002C3C 1420FFF8 */  bnez       $at, .L80002C20
/* 3840 80002C40 A1EE0000 */   sb        $t6, ($t7)
/* 3844 80002C44 3C108017 */  lui        $s0, %hi(D_8016DF38)
/* 3848 80002C48 8E10DF38 */  lw         $s0, %lo(D_8016DF38)($s0)
/* 384C 80002C4C 00004825 */  or         $t1, $zero, $zero
/* 3850 80002C50 86050000 */  lh         $a1, ($s0)
/* 3854 80002C54 00001025 */  or         $v0, $zero, $zero
/* 3858 80002C58 04A000B6 */  bltz       $a1, .L80002F34
/* 385C 80002C5C 00008825 */   or        $s1, $zero, $zero
/* 3860 80002C60 3C0D8017 */  lui        $t5, 0x8017
/* 3864 80002C64 3C0C8017 */  lui        $t4, 0x8017
/* 3868 80002C68 3C0A8017 */  lui        $t2, %hi(D_8016E6FC)
/* 386C 80002C6C 3C078017 */  lui        $a3, %hi(D_8016E700)
/* 3870 80002C70 3C04800C */  lui        $a0, %hi(D_800C0A54)
/* 3874 80002C74 24840A54 */  addiu      $a0, $a0, %lo(D_800C0A54)
/* 3878 80002C78 24E7E700 */  addiu      $a3, $a3, %lo(D_8016E700)
/* 387C 80002C7C 254AE6FC */  addiu      $t2, $t2, %lo(D_8016E6FC)
/* 3880 80002C80 258CE704 */  addiu      $t4, $t4, -0x18fc
/* 3884 80002C84 25ADE6F8 */  addiu      $t5, $t5, -0x1908
/* 3888 80002C88 00001825 */  or         $v1, $zero, $zero
/* 388C 80002C8C 241F00FF */  addiu      $ra, $zero, 0xff
/* 3890 80002C90 240B2710 */  addiu      $t3, $zero, 0x2710
.L80002C94:
/* 3894 80002C94 10A30006 */  beq        $a1, $v1, .L80002CB0
/* 3898 80002C98 00004025 */   or        $t0, $zero, $zero
/* 389C 80002C9C 0011C880 */  sll        $t9, $s1, 2
/* 38A0 80002CA0 02197021 */  addu       $t6, $s0, $t9
/* 38A4 80002CA4 8DCF000C */  lw         $t7, 0xc($t6)
/* 38A8 80002CA8 10000004 */  b          .L80002CBC
/* 38AC 80002CAC ADAF0000 */   sw        $t7, ($t5)
.L80002CB0:
/* 38B0 80002CB0 8E180008 */  lw         $t8, 8($s0)
/* 38B4 80002CB4 00000000 */  nop
/* 38B8 80002CB8 ADB80000 */  sw         $t8, ($t5)
.L80002CBC:
/* 38BC 80002CBC 8DA50000 */  lw         $a1, ($t5)
/* 38C0 80002CC0 26310001 */  addiu      $s1, $s1, 1
/* 38C4 80002CC4 84B9000E */  lh         $t9, 0xe($a1)
/* 38C8 80002CC8 00000000 */  nop
/* 38CC 80002CCC 1B200094 */  blez       $t9, .L80002F20
.L80002CD0:
/* 38D0 80002CD0 00087080 */   sll       $t6, $t0, 2
/* 38D4 80002CD4 00AE7821 */  addu       $t7, $a1, $t6
/* 38D8 80002CD8 8DF80010 */  lw         $t8, 0x10($t7)
/* 38DC 80002CDC 00000000 */  nop
/* 38E0 80002CE0 AD580000 */  sw         $t8, ($t2)
/* 38E4 80002CE4 8F190004 */  lw         $t9, 4($t8)
/* 38E8 80002CE8 03001825 */  or         $v1, $t8, $zero
/* 38EC 80002CEC AD990000 */  sw         $t9, ($t4)
/* 38F0 80002CF0 8F0E0000 */  lw         $t6, ($t8)
/* 38F4 80002CF4 11200006 */  beqz       $t1, .L80002D10
/* 38F8 80002CF8 ACEE0000 */   sw        $t6, ($a3)
/* 38FC 80002CFC 2529FFFF */  addiu      $t1, $t1, -1
/* 3900 80002D00 312F00FF */  andi       $t7, $t1, 0xff
/* 3904 80002D04 01E04825 */  or         $t1, $t7, $zero
/* 3908 80002D08 1000007B */  b          .L80002EF8
/* 390C 80002D0C A300000D */   sb        $zero, 0xd($t8)
.L80002D10:
/* 3910 80002D10 8CD80000 */  lw         $t8, ($a2)
/* 3914 80002D14 00000000 */  nop
/* 3918 80002D18 0018C880 */  sll        $t9, $t8, 2
/* 391C 80002D1C 00997021 */  addu       $t6, $a0, $t9
/* 3920 80002D20 8DCF0000 */  lw         $t7, ($t6)
/* 3924 80002D24 00000000 */  nop
/* 3928 80002D28 01E2C021 */  addu       $t8, $t7, $v0
/* 392C 80002D2C 93050000 */  lbu        $a1, ($t8)
/* 3930 80002D30 00000000 */  nop
/* 3934 80002D34 17E50013 */  bne        $ra, $a1, .L80002D84
/* 3938 80002D38 00000000 */   nop
/* 393C 80002D3C A060000D */  sb         $zero, 0xd($v1)
/* 3940 80002D40 8CCE0000 */  lw         $t6, ($a2)
/* 3944 80002D44 24420001 */  addiu      $v0, $v0, 1
/* 3948 80002D48 3059FFFF */  andi       $t9, $v0, 0xffff
/* 394C 80002D4C 000E7880 */  sll        $t7, $t6, 2
/* 3950 80002D50 03201025 */  or         $v0, $t9, $zero
/* 3954 80002D54 008FC021 */  addu       $t8, $a0, $t7
/* 3958 80002D58 8F190000 */  lw         $t9, ($t8)
/* 395C 80002D5C 00000000 */  nop
/* 3960 80002D60 00597021 */  addu       $t6, $v0, $t9
/* 3964 80002D64 91C90000 */  lbu        $t1, ($t6)
/* 3968 80002D68 24420001 */  addiu      $v0, $v0, 1
/* 396C 80002D6C 2529FFFF */  addiu      $t1, $t1, -1
/* 3970 80002D70 312F00FF */  andi       $t7, $t1, 0xff
/* 3974 80002D74 3058FFFF */  andi       $t8, $v0, 0xffff
/* 3978 80002D78 03001025 */  or         $v0, $t8, $zero
/* 397C 80002D7C 1000005E */  b          .L80002EF8
/* 3980 80002D80 01E04825 */   or        $t1, $t7, $zero
.L80002D84:
/* 3984 80002D84 A065000D */  sb         $a1, 0xd($v1)
/* 3988 80002D88 8CCE0000 */  lw         $t6, ($a2)
/* 398C 80002D8C 24420001 */  addiu      $v0, $v0, 1
/* 3990 80002D90 3059FFFF */  andi       $t9, $v0, 0xffff
/* 3994 80002D94 000E7880 */  sll        $t7, $t6, 2
/* 3998 80002D98 03201025 */  or         $v0, $t9, $zero
/* 399C 80002D9C 008FC021 */  addu       $t8, $a0, $t7
/* 39A0 80002DA0 8F190000 */  lw         $t9, ($t8)
/* 39A4 80002DA4 8D580000 */  lw         $t8, ($t2)
/* 39A8 80002DA8 00597021 */  addu       $t6, $v0, $t9
/* 39AC 80002DAC 91CF0000 */  lbu        $t7, ($t6)
/* 39B0 80002DB0 24420001 */  addiu      $v0, $v0, 1
/* 39B4 80002DB4 A30F000C */  sb         $t7, 0xc($t8)
/* 39B8 80002DB8 8CCE0000 */  lw         $t6, ($a2)
/* 39BC 80002DBC 3059FFFF */  andi       $t9, $v0, 0xffff
/* 39C0 80002DC0 000E7880 */  sll        $t7, $t6, 2
/* 39C4 80002DC4 03201025 */  or         $v0, $t9, $zero
/* 39C8 80002DC8 008FC021 */  addu       $t8, $a0, $t7
/* 39CC 80002DCC 8F190000 */  lw         $t9, ($t8)
/* 39D0 80002DD0 8D980000 */  lw         $t8, ($t4)
/* 39D4 80002DD4 00597021 */  addu       $t6, $v0, $t9
/* 39D8 80002DD8 91CF0000 */  lbu        $t7, ($t6)
/* 39DC 80002DDC 24420001 */  addiu      $v0, $v0, 1
/* 39E0 80002DE0 A30F0004 */  sb         $t7, 4($t8)
/* 39E4 80002DE4 8CCE0000 */  lw         $t6, ($a2)
/* 39E8 80002DE8 3059FFFF */  andi       $t9, $v0, 0xffff
/* 39EC 80002DEC 000E7880 */  sll        $t7, $t6, 2
/* 39F0 80002DF0 03201025 */  or         $v0, $t9, $zero
/* 39F4 80002DF4 008FC021 */  addu       $t8, $a0, $t7
/* 39F8 80002DF8 8F190000 */  lw         $t9, ($t8)
/* 39FC 80002DFC 00000000 */  nop
/* 3A00 80002E00 00597021 */  addu       $t6, $v0, $t9
/* 3A04 80002E04 91CF0000 */  lbu        $t7, ($t6)
/* 3A08 80002E08 8CF90000 */  lw         $t9, ($a3)
/* 3A0C 80002E0C 01EB0019 */  multu      $t7, $t3
/* 3A10 80002E10 24420001 */  addiu      $v0, $v0, 1
/* 3A14 80002E14 304EFFFF */  andi       $t6, $v0, 0xffff
/* 3A18 80002E18 01C01025 */  or         $v0, $t6, $zero
/* 3A1C 80002E1C 0000C012 */  mflo       $t8
/* 3A20 80002E20 AF380000 */  sw         $t8, ($t9)
/* 3A24 80002E24 8CCF0000 */  lw         $t7, ($a2)
/* 3A28 80002E28 00000000 */  nop
/* 3A2C 80002E2C 000FC080 */  sll        $t8, $t7, 2
/* 3A30 80002E30 0098C821 */  addu       $t9, $a0, $t8
/* 3A34 80002E34 8F2E0000 */  lw         $t6, ($t9)
/* 3A38 80002E38 8CF90000 */  lw         $t9, ($a3)
/* 3A3C 80002E3C 004E7821 */  addu       $t7, $v0, $t6
/* 3A40 80002E40 91F80000 */  lbu        $t8, ($t7)
/* 3A44 80002E44 24420001 */  addiu      $v0, $v0, 1
/* 3A48 80002E48 A338000C */  sb         $t8, 0xc($t9)
/* 3A4C 80002E4C 8CCF0000 */  lw         $t7, ($a2)
/* 3A50 80002E50 304EFFFF */  andi       $t6, $v0, 0xffff
/* 3A54 80002E54 000FC080 */  sll        $t8, $t7, 2
/* 3A58 80002E58 01C01025 */  or         $v0, $t6, $zero
/* 3A5C 80002E5C 0098C821 */  addu       $t9, $a0, $t8
/* 3A60 80002E60 8F2E0000 */  lw         $t6, ($t9)
/* 3A64 80002E64 00000000 */  nop
/* 3A68 80002E68 004E7821 */  addu       $t7, $v0, $t6
/* 3A6C 80002E6C 91F80000 */  lbu        $t8, ($t7)
/* 3A70 80002E70 8CEE0000 */  lw         $t6, ($a3)
/* 3A74 80002E74 030B0019 */  multu      $t8, $t3
/* 3A78 80002E78 24420001 */  addiu      $v0, $v0, 1
/* 3A7C 80002E7C 304FFFFF */  andi       $t7, $v0, 0xffff
/* 3A80 80002E80 01E01025 */  or         $v0, $t7, $zero
/* 3A84 80002E84 0000C812 */  mflo       $t9
/* 3A88 80002E88 ADD90004 */  sw         $t9, 4($t6)
/* 3A8C 80002E8C 8CD80000 */  lw         $t8, ($a2)
/* 3A90 80002E90 00000000 */  nop
/* 3A94 80002E94 0018C880 */  sll        $t9, $t8, 2
/* 3A98 80002E98 00997021 */  addu       $t6, $a0, $t9
/* 3A9C 80002E9C 8DCF0000 */  lw         $t7, ($t6)
/* 3AA0 80002EA0 8CEE0000 */  lw         $t6, ($a3)
/* 3AA4 80002EA4 004FC021 */  addu       $t8, $v0, $t7
/* 3AA8 80002EA8 93190000 */  lbu        $t9, ($t8)
/* 3AAC 80002EAC 24420001 */  addiu      $v0, $v0, 1
/* 3AB0 80002EB0 A1D9000D */  sb         $t9, 0xd($t6)
/* 3AB4 80002EB4 8CD80000 */  lw         $t8, ($a2)
/* 3AB8 80002EB8 304FFFFF */  andi       $t7, $v0, 0xffff
/* 3ABC 80002EBC 0018C880 */  sll        $t9, $t8, 2
/* 3AC0 80002EC0 01E01025 */  or         $v0, $t7, $zero
/* 3AC4 80002EC4 00997021 */  addu       $t6, $a0, $t9
/* 3AC8 80002EC8 8DCF0000 */  lw         $t7, ($t6)
/* 3ACC 80002ECC 00000000 */  nop
/* 3AD0 80002ED0 004FC021 */  addu       $t8, $v0, $t7
/* 3AD4 80002ED4 93190000 */  lbu        $t9, ($t8)
/* 3AD8 80002ED8 8CEF0000 */  lw         $t7, ($a3)
/* 3ADC 80002EDC 032B0019 */  multu      $t9, $t3
/* 3AE0 80002EE0 24420001 */  addiu      $v0, $v0, 1
/* 3AE4 80002EE4 3058FFFF */  andi       $t8, $v0, 0xffff
/* 3AE8 80002EE8 03001025 */  or         $v0, $t8, $zero
/* 3AEC 80002EEC 00007012 */  mflo       $t6
/* 3AF0 80002EF0 ADEE0008 */  sw         $t6, 8($t7)
/* 3AF4 80002EF4 00000000 */  nop
.L80002EF8:
/* 3AF8 80002EF8 8DA50000 */  lw         $a1, ($t5)
/* 3AFC 80002EFC 25080001 */  addiu      $t0, $t0, 1
/* 3B00 80002F00 84AE000E */  lh         $t6, 0xe($a1)
/* 3B04 80002F04 311900FF */  andi       $t9, $t0, 0xff
/* 3B08 80002F08 032E082A */  slt        $at, $t9, $t6
/* 3B0C 80002F0C 1420FF70 */  bnez       $at, .L80002CD0
/* 3B10 80002F10 03204025 */   or        $t0, $t9, $zero
/* 3B14 80002F14 3C108017 */  lui        $s0, %hi(D_8016DF38)
/* 3B18 80002F18 8E10DF38 */  lw         $s0, %lo(D_8016DF38)($s0)
/* 3B1C 80002F1C 00000000 */  nop
.L80002F20:
/* 3B20 80002F20 86050000 */  lh         $a1, ($s0)
/* 3B24 80002F24 322300FF */  andi       $v1, $s1, 0xff
/* 3B28 80002F28 00A3082A */  slt        $at, $a1, $v1
/* 3B2C 80002F2C 1020FF59 */  beqz       $at, .L80002C94
/* 3B30 80002F30 00608825 */   or        $s1, $v1, $zero
.L80002F34:
/* 3B34 80002F34 8FBF001C */  lw         $ra, 0x1c($sp)
/* 3B38 80002F38 8FB00014 */  lw         $s0, 0x14($sp)
/* 3B3C 80002F3C 8FB10018 */  lw         $s1, 0x18($sp)
/* 3B40 80002F40 03E00008 */  jr         $ra
/* 3B44 80002F44 27BD0020 */   addiu     $sp, $sp, 0x20
