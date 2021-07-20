.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80098B50
/* 99750 80098B50 00803825 */  or         $a3, $a0, $zero
/* 99754 80098B54 00A01025 */  or         $v0, $a1, $zero
/* 99758 80098B58 00A61820 */  add        $v1, $a1, $a2
.L80098B5C:
/* 9975C 80098B5C 90E40000 */  lbu        $a0, ($a3)
/* 99760 80098B60 20E70001 */  addi       $a3, $a3, 1
/* 99764 80098B64 28810080 */  slti       $at, $a0, 0x80
/* 99768 80098B68 14200011 */  bnez       $at, .L80098BB0
/* 9976C 80098B6C 288100C0 */   slti      $at, $a0, 0xc0
/* 99770 80098B70 14200088 */  bnez       $at, .L80098D94
/* 99774 80098B74 288100E0 */   slti      $at, $a0, 0xe0
/* 99778 80098B78 1420001A */  bnez       $at, .L80098BE4
/* 9977C 80098B7C 00000000 */   nop
/* 99780 80098B80 3084001F */  andi       $a0, $a0, 0x1f
/* 99784 80098B84 90E80000 */  lbu        $t0, ($a3)
/* 99788 80098B88 00442020 */  add        $a0, $v0, $a0
/* 9978C 80098B8C 20E70001 */  addi       $a3, $a3, 1
.L80098B90:
/* 99790 80098B90 20420001 */  addi       $v0, $v0, 1
/* 99794 80098B94 1444FFFE */  bne        $v0, $a0, .L80098B90
/* 99798 80098B98 A048FFFF */   sb        $t0, -1($v0)
/* 9979C 80098B9C 0043082A */  slt        $at, $v0, $v1
/* 997A0 80098BA0 1420FFEE */  bnez       $at, .L80098B5C
/* 997A4 80098BA4 00000000 */   nop
/* 997A8 80098BA8 03E00008 */  jr         $ra
/* 997AC 80098BAC 00000000 */   nop
.L80098BB0:
/* 997B0 80098BB0 1080008D */  beqz       $a0, .L80098DE8
/* 997B4 80098BB4 00000000 */   nop
/* 997B8 80098BB8 00442020 */  add        $a0, $v0, $a0
.L80098BBC:
/* 997BC 80098BBC 90E80000 */  lbu        $t0, ($a3)
/* 997C0 80098BC0 20420001 */  addi       $v0, $v0, 1
/* 997C4 80098BC4 20E70001 */  addi       $a3, $a3, 1
/* 997C8 80098BC8 1444FFFC */  bne        $v0, $a0, .L80098BBC
/* 997CC 80098BCC A048FFFF */   sb        $t0, -1($v0)
/* 997D0 80098BD0 0043082A */  slt        $at, $v0, $v1
/* 997D4 80098BD4 1420FFE1 */  bnez       $at, .L80098B5C
/* 997D8 80098BD8 00000000 */   nop
/* 997DC 80098BDC 03E00008 */  jr         $ra
/* 997E0 80098BE0 00000000 */   nop
.L80098BE4:
/* 997E4 80098BE4 3084001F */  andi       $a0, $a0, 0x1f
/* 997E8 80098BE8 00042180 */  sll        $a0, $a0, 6
/* 997EC 80098BEC 30480003 */  andi       $t0, $v0, 3
/* 997F0 80098BF0 24010003 */  addiu      $at, $zero, 3
/* 997F4 80098BF4 1101004E */  beq        $t0, $at, .L80098D30
/* 997F8 80098BF8 00442020 */   add       $a0, $v0, $a0
/* 997FC 80098BFC 24010002 */  addiu      $at, $zero, 2
/* 99800 80098C00 11010033 */  beq        $t0, $at, .L80098CD0
/* 99804 80098C04 24010001 */   addiu     $at, $zero, 1
/* 99808 80098C08 11010018 */  beq        $t0, $at, .L80098C6C
/* 9980C 80098C0C 00000000 */   nop
.L80098C10:
/* 99810 80098C10 20420040 */  addi       $v0, $v0, 0x40
/* 99814 80098C14 AC40FFC0 */  sw         $zero, -0x40($v0)
/* 99818 80098C18 AC40FFC4 */  sw         $zero, -0x3c($v0)
/* 9981C 80098C1C AC40FFC8 */  sw         $zero, -0x38($v0)
/* 99820 80098C20 AC40FFCC */  sw         $zero, -0x34($v0)
/* 99824 80098C24 AC40FFD0 */  sw         $zero, -0x30($v0)
/* 99828 80098C28 AC40FFD4 */  sw         $zero, -0x2c($v0)
/* 9982C 80098C2C AC40FFD8 */  sw         $zero, -0x28($v0)
/* 99830 80098C30 AC40FFDC */  sw         $zero, -0x24($v0)
/* 99834 80098C34 AC40FFE0 */  sw         $zero, -0x20($v0)
/* 99838 80098C38 AC40FFE4 */  sw         $zero, -0x1c($v0)
/* 9983C 80098C3C AC40FFE8 */  sw         $zero, -0x18($v0)
/* 99840 80098C40 AC40FFEC */  sw         $zero, -0x14($v0)
/* 99844 80098C44 AC40FFF0 */  sw         $zero, -0x10($v0)
/* 99848 80098C48 AC40FFF4 */  sw         $zero, -0xc($v0)
/* 9984C 80098C4C AC40FFF8 */  sw         $zero, -8($v0)
/* 99850 80098C50 1444FFEF */  bne        $v0, $a0, .L80098C10
/* 99854 80098C54 AC40FFFC */   sw        $zero, -4($v0)
/* 99858 80098C58 0043082A */  slt        $at, $v0, $v1
/* 9985C 80098C5C 1420FFBF */  bnez       $at, .L80098B5C
/* 99860 80098C60 00000000 */   nop
/* 99864 80098C64 03E00008 */  jr         $ra
/* 99868 80098C68 00000000 */   nop
.L80098C6C:
/* 9986C 80098C6C 20420040 */  addi       $v0, $v0, 0x40
/* 99870 80098C70 A040FFC0 */  sb         $zero, -0x40($v0)
/* 99874 80098C74 A440FFC1 */  sh         $zero, -0x3f($v0)
/* 99878 80098C78 AC40FFC3 */  sw         $zero, -0x3d($v0)
/* 9987C 80098C7C AC40FFC7 */  sw         $zero, -0x39($v0)
/* 99880 80098C80 AC40FFCB */  sw         $zero, -0x35($v0)
/* 99884 80098C84 AC40FFCF */  sw         $zero, -0x31($v0)
/* 99888 80098C88 AC40FFD3 */  sw         $zero, -0x2d($v0)
/* 9988C 80098C8C AC40FFD7 */  sw         $zero, -0x29($v0)
/* 99890 80098C90 AC40FFDB */  sw         $zero, -0x25($v0)
/* 99894 80098C94 AC40FFDF */  sw         $zero, -0x21($v0)
/* 99898 80098C98 AC40FFE3 */  sw         $zero, -0x1d($v0)
/* 9989C 80098C9C AC40FFE7 */  sw         $zero, -0x19($v0)
/* 998A0 80098CA0 AC40FFEB */  sw         $zero, -0x15($v0)
/* 998A4 80098CA4 AC40FFEF */  sw         $zero, -0x11($v0)
/* 998A8 80098CA8 AC40FFF3 */  sw         $zero, -0xd($v0)
/* 998AC 80098CAC AC40FFF7 */  sw         $zero, -9($v0)
/* 998B0 80098CB0 AC40FFFB */  sw         $zero, -5($v0)
/* 998B4 80098CB4 1444FFED */  bne        $v0, $a0, .L80098C6C
/* 998B8 80098CB8 A040FFFF */   sb        $zero, -1($v0)
/* 998BC 80098CBC 0043082A */  slt        $at, $v0, $v1
/* 998C0 80098CC0 1420FFA6 */  bnez       $at, .L80098B5C
/* 998C4 80098CC4 00000000 */   nop
/* 998C8 80098CC8 03E00008 */  jr         $ra
/* 998CC 80098CCC 00000000 */   nop
.L80098CD0:
/* 998D0 80098CD0 20420040 */  addi       $v0, $v0, 0x40
/* 998D4 80098CD4 A440FFC0 */  sh         $zero, -0x40($v0)
/* 998D8 80098CD8 AC40FFC2 */  sw         $zero, -0x3e($v0)
/* 998DC 80098CDC AC40FFC6 */  sw         $zero, -0x3a($v0)
/* 998E0 80098CE0 AC40FFCA */  sw         $zero, -0x36($v0)
/* 998E4 80098CE4 AC40FFCE */  sw         $zero, -0x32($v0)
/* 998E8 80098CE8 AC40FFD2 */  sw         $zero, -0x2e($v0)
/* 998EC 80098CEC AC40FFD6 */  sw         $zero, -0x2a($v0)
/* 998F0 80098CF0 AC40FFDA */  sw         $zero, -0x26($v0)
/* 998F4 80098CF4 AC40FFDE */  sw         $zero, -0x22($v0)
/* 998F8 80098CF8 AC40FFE2 */  sw         $zero, -0x1e($v0)
/* 998FC 80098CFC AC40FFE6 */  sw         $zero, -0x1a($v0)
/* 99900 80098D00 AC40FFEA */  sw         $zero, -0x16($v0)
/* 99904 80098D04 AC40FFEE */  sw         $zero, -0x12($v0)
/* 99908 80098D08 AC40FFF2 */  sw         $zero, -0xe($v0)
/* 9990C 80098D0C AC40FFF6 */  sw         $zero, -0xa($v0)
/* 99910 80098D10 AC40FFFA */  sw         $zero, -6($v0)
/* 99914 80098D14 1444FFEE */  bne        $v0, $a0, .L80098CD0
/* 99918 80098D18 A440FFFE */   sh        $zero, -2($v0)
/* 9991C 80098D1C 0043082A */  slt        $at, $v0, $v1
/* 99920 80098D20 1420FF8E */  bnez       $at, .L80098B5C
/* 99924 80098D24 00000000 */   nop
/* 99928 80098D28 03E00008 */  jr         $ra
/* 9992C 80098D2C 00000000 */   nop
.L80098D30:
/* 99930 80098D30 20420040 */  addi       $v0, $v0, 0x40
/* 99934 80098D34 A040FFC0 */  sb         $zero, -0x40($v0)
/* 99938 80098D38 AC40FFC1 */  sw         $zero, -0x3f($v0)
/* 9993C 80098D3C AC40FFC5 */  sw         $zero, -0x3b($v0)
/* 99940 80098D40 AC40FFC9 */  sw         $zero, -0x37($v0)
/* 99944 80098D44 AC40FFCD */  sw         $zero, -0x33($v0)
/* 99948 80098D48 AC40FFD1 */  sw         $zero, -0x2f($v0)
/* 9994C 80098D4C AC40FFD5 */  sw         $zero, -0x2b($v0)
/* 99950 80098D50 AC40FFD9 */  sw         $zero, -0x27($v0)
/* 99954 80098D54 AC40FFDD */  sw         $zero, -0x23($v0)
/* 99958 80098D58 AC40FFE1 */  sw         $zero, -0x1f($v0)
/* 9995C 80098D5C AC40FFE5 */  sw         $zero, -0x1b($v0)
/* 99960 80098D60 AC40FFE9 */  sw         $zero, -0x17($v0)
/* 99964 80098D64 AC40FFED */  sw         $zero, -0x13($v0)
/* 99968 80098D68 AC40FFF1 */  sw         $zero, -0xf($v0)
/* 9996C 80098D6C AC40FFF5 */  sw         $zero, -0xb($v0)
/* 99970 80098D70 AC40FFF9 */  sw         $zero, -7($v0)
/* 99974 80098D74 A440FFFD */  sh         $zero, -3($v0)
/* 99978 80098D78 1444FFED */  bne        $v0, $a0, .L80098D30
/* 9997C 80098D7C A040FFFF */   sb        $zero, -1($v0)
/* 99980 80098D80 0043082A */  slt        $at, $v0, $v1
/* 99984 80098D84 1420FF75 */  bnez       $at, .L80098B5C
/* 99988 80098D88 00000000 */   nop
/* 9998C 80098D8C 03E00008 */  jr         $ra
/* 99990 80098D90 00000000 */   nop
.L80098D94:
/* 99994 80098D94 3084003F */  andi       $a0, $a0, 0x3f
/* 99998 80098D98 30480001 */  andi       $t0, $v0, 1
/* 9999C 80098D9C 1500000C */  bnez       $t0, .L80098DD0
/* 999A0 80098DA0 00442020 */   add       $a0, $v0, $a0
/* 999A4 80098DA4 30880001 */  andi       $t0, $a0, 1
/* 999A8 80098DA8 15000009 */  bnez       $t0, .L80098DD0
/* 999AC 80098DAC 00000000 */   nop
.L80098DB0:
/* 999B0 80098DB0 20420002 */  addi       $v0, $v0, 2
/* 999B4 80098DB4 1444FFFE */  bne        $v0, $a0, .L80098DB0
/* 999B8 80098DB8 A440FFFE */   sh        $zero, -2($v0)
/* 999BC 80098DBC 0043082A */  slt        $at, $v0, $v1
/* 999C0 80098DC0 1420FF66 */  bnez       $at, .L80098B5C
/* 999C4 80098DC4 00000000 */   nop
/* 999C8 80098DC8 03E00008 */  jr         $ra
/* 999CC 80098DCC 00000000 */   nop
.L80098DD0:
/* 999D0 80098DD0 20420001 */  addi       $v0, $v0, 1
/* 999D4 80098DD4 1444FFFE */  bne        $v0, $a0, .L80098DD0
/* 999D8 80098DD8 A040FFFF */   sb        $zero, -1($v0)
/* 999DC 80098DDC 0043082A */  slt        $at, $v0, $v1
/* 999E0 80098DE0 1420FF5E */  bnez       $at, .L80098B5C
/* 999E4 80098DE4 00000000 */   nop
.L80098DE8:
/* 999E8 80098DE8 03E00008 */  jr         $ra
/* 999EC 80098DEC 00000000 */   nop

glabel osViBlack
/* 999F0 80098DF0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 999F4 80098DF4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 999F8 80098DF8 AFA40028 */  sw         $a0, 0x28($sp)
/* 999FC 80098DFC AFB00018 */  sw         $s0, 0x18($sp)
/* 99A00 80098E00 0C0297A4 */  jal        func_800A5E90
/* 99A04 80098E04 00000000 */   nop
/* 99A08 80098E08 00408025 */  or         $s0, $v0, $zero
/* 99A0C 80098E0C 93AE002B */  lbu        $t6, 0x2b($sp)
/* 99A10 80098E10 11C00007 */  beqz       $t6, .L80098E30
/* 99A14 80098E14 00000000 */   nop
/* 99A18 80098E18 3C0F800F */  lui        $t7, %hi(D_800EA5D4)
/* 99A1C 80098E1C 8DEFA5D4 */  lw         $t7, %lo(D_800EA5D4)($t7)
/* 99A20 80098E20 95F80000 */  lhu        $t8, ($t7)
/* 99A24 80098E24 37190020 */  ori        $t9, $t8, 0x20
/* 99A28 80098E28 10000007 */  b          .L80098E48
/* 99A2C 80098E2C A5F90000 */   sh        $t9, ($t7)
.L80098E30:
/* 99A30 80098E30 3C08800F */  lui        $t0, %hi(D_800EA5D4)
/* 99A34 80098E34 8D08A5D4 */  lw         $t0, %lo(D_800EA5D4)($t0)
/* 99A38 80098E38 2401FFDF */  addiu      $at, $zero, -0x21
/* 99A3C 80098E3C 95090000 */  lhu        $t1, ($t0)
/* 99A40 80098E40 01215024 */  and        $t2, $t1, $at
/* 99A44 80098E44 A50A0000 */  sh         $t2, ($t0)
.L80098E48:
/* 99A48 80098E48 0C0297AC */  jal        func_800A5EB0
/* 99A4C 80098E4C 02002025 */   or        $a0, $s0, $zero
/* 99A50 80098E50 10000001 */  b          .L80098E58
/* 99A54 80098E54 00000000 */   nop
.L80098E58:
/* 99A58 80098E58 8FBF001C */  lw         $ra, 0x1c($sp)
/* 99A5C 80098E5C 8FB00018 */  lw         $s0, 0x18($sp)
/* 99A60 80098E60 27BD0028 */  addiu      $sp, $sp, 0x28
/* 99A64 80098E64 03E00008 */  jr         $ra
/* 99A68 80098E68 00000000 */   nop
/* 99A6C 80098E6C 00000000 */  nop
