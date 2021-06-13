.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A8C60
/* A9860 800A8C60 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A9864 800A8C64 AFBF0014 */  sw         $ra, 0x14($sp)
/* A9868 800A8C68 AFA40030 */  sw         $a0, 0x30($sp)
/* A986C 800A8C6C 8FAE0030 */  lw         $t6, 0x30($sp)
/* A9870 800A8C70 AFAE002C */  sw         $t6, 0x2c($sp)
/* A9874 800A8C74 8FAF002C */  lw         $t7, 0x2c($sp)
/* A9878 800A8C78 91F80004 */  lbu        $t8, 4($t7)
/* A987C 800A8C7C A3B80020 */  sb         $t8, 0x20($sp)
/* A9880 800A8C80 A7A00022 */  sh         $zero, 0x22($sp)
/* A9884 800A8C84 8FB9002C */  lw         $t9, 0x2c($sp)
/* A9888 800A8C88 8F28000C */  lw         $t0, 0xc($t9)
/* A988C 800A8C8C AFA80028 */  sw         $t0, 0x28($sp)
/* A9890 800A8C90 27A4001C */  addiu      $a0, $sp, 0x1c
/* A9894 800A8C94 24050010 */  addiu      $a1, $zero, 0x10
/* A9898 800A8C98 0C026833 */  jal        func_8009A0CC
/* A989C 800A8C9C 24060001 */   addiu     $a2, $zero, 1
/* A98A0 800A8CA0 10000003 */  b          .L800A8CB0
/* A98A4 800A8CA4 00001025 */   or        $v0, $zero, $zero
/* A98A8 800A8CA8 10000001 */  b          .L800A8CB0
/* A98AC 800A8CAC 00000000 */   nop
.L800A8CB0:
/* A98B0 800A8CB0 8FBF0014 */  lw         $ra, 0x14($sp)
/* A98B4 800A8CB4 27BD0030 */  addiu      $sp, $sp, 0x30
/* A98B8 800A8CB8 03E00008 */  jr         $ra
/* A98BC 800A8CBC 00000000 */   nop

glabel func_800A8CC0
/* A98C0 800A8CC0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A98C4 800A8CC4 AFBF001C */  sw         $ra, 0x1c($sp)
/* A98C8 800A8CC8 3C048019 */  lui        $a0, %hi(D_80189A58)
/* A98CC 800A8CCC 3C058018 */  lui        $a1, %hi(D_80185A00)
/* A98D0 800A8CD0 24A55A00 */  addiu      $a1, $a1, %lo(D_80185A00)
/* A98D4 800A8CD4 24849A58 */  addiu      $a0, $a0, %lo(D_80189A58)
/* A98D8 800A8CD8 0C026994 */  jal        osCreateMesgQueue
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
/* A9940 800A8D40 3C06800B */  lui        $a2, %hi(D_800A8F88)
/* A9944 800A8D44 241800FF */  addiu      $t8, $zero, 0xff
/* A9948 800A8D48 AFB80014 */  sw         $t8, 0x14($sp)
/* A994C 800A8D4C 24C68F88 */  addiu      $a2, $a2, %lo(D_800A8F88)
/* A9950 800A8D50 24845850 */  addiu      $a0, $a0, %lo(D_80185850)
/* A9954 800A8D54 AFAF0010 */  sw         $t7, 0x10($sp)
/* A9958 800A8D58 00002825 */  or         $a1, $zero, $zero
/* A995C 800A8D5C 0C02651C */  jal        osCreateThread
/* A9960 800A8D60 00003825 */   or        $a3, $zero, $zero
/* A9964 800A8D64 3C058019 */  lui        $a1, %hi(D_80189A40)
/* A9968 800A8D68 3C068019 */  lui        $a2, %hi(D_80189A20)
/* A996C 800A8D6C 24C69A20 */  addiu      $a2, $a2, %lo(D_80189A20)
/* A9970 800A8D70 24A59A40 */  addiu      $a1, $a1, %lo(D_80189A40)
/* A9974 800A8D74 24040096 */  addiu      $a0, $zero, 0x96
/* A9978 800A8D78 0C02673C */  jal        func_80099CF0
/* A997C 800A8D7C 24070008 */   addiu     $a3, $zero, 8
/* A9980 800A8D80 3C048018 */  lui        $a0, %hi(D_80185850)
/* A9984 800A8D84 0C026588 */  jal        osStartThread
/* A9988 800A8D88 24845850 */   addiu     $a0, $a0, %lo(D_80185850)
/* A998C 800A8D8C 10000001 */  b          .L800A8D94
/* A9990 800A8D90 00000000 */   nop
.L800A8D94:
/* A9994 800A8D94 8FBF001C */  lw         $ra, 0x1c($sp)
/* A9998 800A8D98 27BD0020 */  addiu      $sp, $sp, 0x20
/* A999C 800A8D9C 03E00008 */  jr         $ra
/* A99A0 800A8DA0 00000000 */   nop

glabel func_800A8DA4
.L800A8DA4:
/* A99A4 800A8DA4 1000FFFF */  b          .L800A8DA4
/* A99A8 800A8DA8 00000000 */   nop
/* A99AC 800A8DAC 03E00008 */  jr         $ra
/* A99B0 800A8DB0 00000000 */   nop

glabel func_800A8DB4
/* A99B4 800A8DB4 03E00008 */  jr         $ra
/* A99B8 800A8DB8 00000000 */   nop

glabel func_800A8DBC
/* A99BC 800A8DBC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A99C0 800A8DC0 AFBF0014 */  sw         $ra, 0x14($sp)
/* A99C4 800A8DC4 AFA40028 */  sw         $a0, 0x28($sp)
/* A99C8 800A8DC8 8FAE0028 */  lw         $t6, 0x28($sp)
/* A99CC 800A8DCC 91CF0004 */  lbu        $t7, 4($t6)
/* A99D0 800A8DD0 A3AF001C */  sb         $t7, 0x1c($sp)
/* A99D4 800A8DD4 AFA00024 */  sw         $zero, 0x24($sp)
/* A99D8 800A8DD8 A7A0001E */  sh         $zero, 0x1e($sp)
/* A99DC 800A8DDC 27A40018 */  addiu      $a0, $sp, 0x18
/* A99E0 800A8DE0 24050010 */  addiu      $a1, $zero, 0x10
/* A99E4 800A8DE4 0C026833 */  jal        func_8009A0CC
/* A99E8 800A8DE8 24060001 */   addiu     $a2, $zero, 1
/* A99EC 800A8DEC 10000003 */  b          .L800A8DFC
/* A99F0 800A8DF0 00001025 */   or        $v0, $zero, $zero
/* A99F4 800A8DF4 10000001 */  b          .L800A8DFC
/* A99F8 800A8DF8 00000000 */   nop
.L800A8DFC:
/* A99FC 800A8DFC 8FBF0014 */  lw         $ra, 0x14($sp)
/* A9A00 800A8E00 27BD0028 */  addiu      $sp, $sp, 0x28
/* A9A04 800A8E04 03E00008 */  jr         $ra
/* A9A08 800A8E08 00000000 */   nop
/* A9A0C 800A8E0C 00000000 */  nop
