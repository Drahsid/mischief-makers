glabel func_800A8CC0
/* A98C0 800A8CC0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A98C4 800A8CC4 AFBF001C */  sw         $ra, 0x1c($sp)
/* A98C8 800A8CC8 3C048019 */  lui        $a0, %hi(D_80189A58)
/* A98CC 800A8CCC 3C058018 */  lui        $a1, %hi(D_80185A00)
/* A98D0 800A8CD0 24A55A00 */  addiu      $a1, $a1, %lo(D_80185A00)
/* A98D4 800A8CD4 24849A58 */  addiu      $a0, $a0, %lo(D_80189A58)
/* A98D8 800A8CD8 0C026994 */  jal        func_8009A650
/* A98DC 800A8CDC 24060008 */   addiu     $a2, $zero, 8
/* A98E0 800A8CE0 3C058019 */  lui        $a1, %hi(D_80189A58)
/* A98E4 800A8CE4 24A59A58 */  addiu      $a1, $a1, %lo(D_80189A58)
/* A98E8 800A8CE8 2404000A */  addiu      $a0, $zero, 0xa
/* A98EC 800A8CEC 0C0269BC */  jal        func_8009A6F0
/* A98F0 800A8CF0 24060002 */   addiu     $a2, $zero, 2
/* A98F4 800A8CF4 3C058019 */  lui        $a1, %hi(D_80189A58)
/* A98F8 800A8CF8 24A59A58 */  addiu      $a1, $a1, %lo(D_80189A58)
/* A98FC 800A8CFC 2404000B */  addiu      $a0, $zero, 0xb
/* A9900 800A8D00 0C0269BC */  jal        func_8009A6F0
/* A9904 800A8D04 24060004 */   addiu     $a2, $zero, 4
/* A9908 800A8D08 3C058019 */  lui        $a1, %hi(D_80189A58)
/* A990C 800A8D0C 24A59A58 */  addiu      $a1, $a1, %lo(D_80189A58)
/* A9910 800A8D10 2404000C */  addiu      $a0, $zero, 0xc
/* A9914 800A8D14 0C0269BC */  jal        func_8009A6F0
/* A9918 800A8D18 24060008 */   addiu     $a2, $zero, 8
/* A991C 800A8D1C 3C058019 */  lui        $a1, %hi(D_80189A58)
/* A9920 800A8D20 24A59A58 */  addiu      $a1, $a1, %lo(D_80189A58)
/* A9924 800A8D24 2404000D */  addiu      $a0, $zero, 0xd
/* A9928 800A8D28 0C0269BC */  jal        func_8009A6F0
/* A992C 800A8D2C 00003025 */   or        $a2, $zero, $zero
/* A9930 800A8D30 3C0E8018 */  lui        $t6, %hi(D_80185A20)
/* A9934 800A8D34 25CE5A20 */  addiu      $t6, $t6, %lo(D_80185A20)
/* A9938 800A8D38 25CF4000 */  addiu      $t7, $t6, 0x4000
/* A993C 800A8D3C 3C048018 */  lui        $a0, %hi(D_80185850)
/* A9940 800A8D40 3C06800B */  lui        $a2, %hi(func_800A8F88)
/* A9944 800A8D44 241800FF */  addiu      $t8, $zero, 0xff
/* A9948 800A8D48 AFB80014 */  sw         $t8, 0x14($sp)
/* A994C 800A8D4C 24C68F88 */  addiu      $a2, $a2, %lo(func_800A8F88)
/* A9950 800A8D50 24845850 */  addiu      $a0, $a0, %lo(D_80185850)
/* A9954 800A8D54 AFAF0010 */  sw         $t7, 0x10($sp)
/* A9958 800A8D58 00002825 */  or         $a1, $zero, $zero
/* A995C 800A8D5C 0C02651C */  jal        func_80099470
/* A9960 800A8D60 00003825 */   or        $a3, $zero, $zero
/* A9964 800A8D64 3C058019 */  lui        $a1, %hi(D_80189A40)
/* A9968 800A8D68 3C068019 */  lui        $a2, %hi(D_80189A20)
/* A996C 800A8D6C 24C69A20 */  addiu      $a2, $a2, %lo(D_80189A20)
/* A9970 800A8D70 24A59A40 */  addiu      $a1, $a1, %lo(D_80189A40)
/* A9974 800A8D74 24040096 */  addiu      $a0, $zero, 0x96
/* A9978 800A8D78 0C02673C */  jal        func_80099CF0
/* A997C 800A8D7C 24070008 */   addiu     $a3, $zero, 8
/* A9980 800A8D80 3C048018 */  lui        $a0, %hi(D_80185850)
/* A9984 800A8D84 0C026588 */  jal        func_80099620
/* A9988 800A8D88 24845850 */   addiu     $a0, $a0, %lo(D_80185850)
/* A998C 800A8D8C 10000001 */  b          .L800A8D94
/* A9990 800A8D90 00000000 */   nop
.L800A8D94:
/* A9994 800A8D94 8FBF001C */  lw         $ra, 0x1c($sp)
/* A9998 800A8D98 27BD0020 */  addiu      $sp, $sp, 0x20
/* A999C 800A8D9C 03E00008 */  jr         $ra
/* A99A0 800A8DA0 00000000 */   nop
