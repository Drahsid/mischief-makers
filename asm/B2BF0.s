.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alSavePull
/* B2BF0 800B1FF0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* B2BF4 800B1FF4 AFBF001C */  sw         $ra, 0x1c($sp)
/* B2BF8 800B1FF8 AFA40040 */  sw         $a0, 0x40($sp)
/* B2BFC 800B1FFC AFA50044 */  sw         $a1, 0x44($sp)
/* B2C00 800B2000 AFA60048 */  sw         $a2, 0x48($sp)
/* B2C04 800B2004 AFA7004C */  sw         $a3, 0x4c($sp)
/* B2C08 800B2008 8FAE0050 */  lw         $t6, 0x50($sp)
/* B2C0C 800B200C AFAE003C */  sw         $t6, 0x3c($sp)
/* B2C10 800B2010 8FAF0040 */  lw         $t7, 0x40($sp)
/* B2C14 800B2014 AFAF0038 */  sw         $t7, 0x38($sp)
/* B2C18 800B2018 8FB80038 */  lw         $t8, 0x38($sp)
/* B2C1C 800B201C 8F190000 */  lw         $t9, ($t8)
/* B2C20 800B2020 AFB90034 */  sw         $t9, 0x34($sp)
/* B2C24 800B2024 8FA80038 */  lw         $t0, 0x38($sp)
/* B2C28 800B2028 8D090000 */  lw         $t1, ($t0)
/* B2C2C 800B202C 11200003 */  beqz       $t1, .L800B203C
/* B2C30 800B2030 00000000 */   nop
/* B2C34 800B2034 10000007 */  b          .L800B2054
/* B2C38 800B2038 00000000 */   nop
.L800B203C:
/* B2C3C 800B203C 3C04800F */  lui        $a0, %hi(D_800EE5F0)
/* B2C40 800B2040 3C05800F */  lui        $a1, %hi(D_800EE604)
/* B2C44 800B2044 24A5E604 */  addiu      $a1, $a1, %lo(D_800EE604)
/* B2C48 800B2048 2484E5F0 */  addiu      $a0, $a0, %lo(D_800EE5F0)
/* B2C4C 800B204C 0C026E74 */  jal        __assert
/* B2C50 800B2050 24060023 */   addiu     $a2, $zero, 0x23
.L800B2054:
/* B2C54 800B2054 8FAB003C */  lw         $t3, 0x3c($sp)
/* B2C58 800B2058 8FAA0034 */  lw         $t2, 0x34($sp)
/* B2C5C 800B205C 8FA50044 */  lw         $a1, 0x44($sp)
/* B2C60 800B2060 AFAB0010 */  sw         $t3, 0x10($sp)
/* B2C64 800B2064 8D590004 */  lw         $t9, 4($t2)
/* B2C68 800B2068 8FA60048 */  lw         $a2, 0x48($sp)
/* B2C6C 800B206C 8FA7004C */  lw         $a3, 0x4c($sp)
/* B2C70 800B2070 0320F809 */  jalr       $t9
/* B2C74 800B2074 01402025 */   or        $a0, $t2, $zero
/* B2C78 800B2078 AFA2003C */  sw         $v0, 0x3c($sp)
/* B2C7C 800B207C 8FAC003C */  lw         $t4, 0x3c($sp)
/* B2C80 800B2080 258D0008 */  addiu      $t5, $t4, 8
/* B2C84 800B2084 AFAD003C */  sw         $t5, 0x3c($sp)
/* B2C88 800B2088 AFAC0030 */  sw         $t4, 0x30($sp)
/* B2C8C 800B208C 8FAF0030 */  lw         $t7, 0x30($sp)
/* B2C90 800B2090 3C0E0800 */  lui        $t6, 0x800
/* B2C94 800B2094 ADEE0000 */  sw         $t6, ($t7)
/* B2C98 800B2098 8FB80048 */  lw         $t8, 0x48($sp)
/* B2C9C 800B209C 8FAB0030 */  lw         $t3, 0x30($sp)
/* B2CA0 800B20A0 00184040 */  sll        $t0, $t8, 1
/* B2CA4 800B20A4 3109FFFF */  andi       $t1, $t0, 0xffff
/* B2CA8 800B20A8 AD690004 */  sw         $t1, 4($t3)
/* B2CAC 800B20AC 8FAA003C */  lw         $t2, 0x3c($sp)
/* B2CB0 800B20B0 25590008 */  addiu      $t9, $t2, 8
/* B2CB4 800B20B4 AFB9003C */  sw         $t9, 0x3c($sp)
/* B2CB8 800B20B8 AFAA002C */  sw         $t2, 0x2c($sp)
/* B2CBC 800B20BC 8FAD002C */  lw         $t5, 0x2c($sp)
/* B2CC0 800B20C0 3C0C0D00 */  lui        $t4, 0xd00
/* B2CC4 800B20C4 ADAC0000 */  sw         $t4, ($t5)
/* B2CC8 800B20C8 8FAF002C */  lw         $t7, 0x2c($sp)
/* B2CCC 800B20CC 3C0E0440 */  lui        $t6, 0x440
/* B2CD0 800B20D0 35CE0580 */  ori        $t6, $t6, 0x580
/* B2CD4 800B20D4 ADEE0004 */  sw         $t6, 4($t7)
/* B2CD8 800B20D8 8FB8003C */  lw         $t8, 0x3c($sp)
/* B2CDC 800B20DC 27080008 */  addiu      $t0, $t8, 8
/* B2CE0 800B20E0 AFA8003C */  sw         $t0, 0x3c($sp)
/* B2CE4 800B20E4 AFB80028 */  sw         $t8, 0x28($sp)
/* B2CE8 800B20E8 8FAB0028 */  lw         $t3, 0x28($sp)
/* B2CEC 800B20EC 3C090800 */  lui        $t1, 0x800
/* B2CF0 800B20F0 AD690000 */  sw         $t1, ($t3)
/* B2CF4 800B20F4 8FAA0048 */  lw         $t2, 0x48($sp)
/* B2CF8 800B20F8 8FAD0028 */  lw         $t5, 0x28($sp)
/* B2CFC 800B20FC 000AC880 */  sll        $t9, $t2, 2
/* B2D00 800B2100 332CFFFF */  andi       $t4, $t9, 0xffff
/* B2D04 800B2104 ADAC0004 */  sw         $t4, 4($t5)
/* B2D08 800B2108 8FAE003C */  lw         $t6, 0x3c($sp)
/* B2D0C 800B210C 25CF0008 */  addiu      $t7, $t6, 8
/* B2D10 800B2110 AFAF003C */  sw         $t7, 0x3c($sp)
/* B2D14 800B2114 AFAE0024 */  sw         $t6, 0x24($sp)
/* B2D18 800B2118 8FA80024 */  lw         $t0, 0x24($sp)
/* B2D1C 800B211C 3C180600 */  lui        $t8, 0x600
/* B2D20 800B2120 AD180000 */  sw         $t8, ($t0)
/* B2D24 800B2124 8FA90038 */  lw         $t1, 0x38($sp)
/* B2D28 800B2128 8FAA0024 */  lw         $t2, 0x24($sp)
/* B2D2C 800B212C 8D2B0014 */  lw         $t3, 0x14($t1)
/* B2D30 800B2130 AD4B0004 */  sw         $t3, 4($t2)
/* B2D34 800B2134 10000003 */  b          .L800B2144
/* B2D38 800B2138 8FA2003C */   lw        $v0, 0x3c($sp)
/* B2D3C 800B213C 10000001 */  b          .L800B2144
/* B2D40 800B2140 00000000 */   nop
.L800B2144:
/* B2D44 800B2144 8FBF001C */  lw         $ra, 0x1c($sp)
/* B2D48 800B2148 27BD0040 */  addiu      $sp, $sp, 0x40
/* B2D4C 800B214C 03E00008 */  jr         $ra
/* B2D50 800B2150 00000000 */   nop

glabel alSaveParam
/* B2D54 800B2154 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* B2D58 800B2158 AFA4000C */  sw         $a0, 0xc($sp)
/* B2D5C 800B215C AFA40008 */  sw         $a0, 8($sp)
/* B2D60 800B2160 AFA60004 */  sw         $a2, 4($sp)
/* B2D64 800B2164 00A03825 */  or         $a3, $a1, $zero
/* B2D68 800B2168 24010001 */  addiu      $at, $zero, 1
/* B2D6C 800B216C 10E10006 */  beq        $a3, $at, .L800B2188
/* B2D70 800B2170 00000000 */   nop
/* B2D74 800B2174 24010006 */  addiu      $at, $zero, 6
/* B2D78 800B2178 10E10007 */  beq        $a3, $at, .L800B2198
/* B2D7C 800B217C 00000000 */   nop
/* B2D80 800B2180 1000000A */  b          .L800B21AC
/* B2D84 800B2184 00000000 */   nop
.L800B2188:
/* B2D88 800B2188 8FAE0008 */  lw         $t6, 8($sp)
/* B2D8C 800B218C ADC60000 */  sw         $a2, ($t6)
/* B2D90 800B2190 10000008 */  b          .L800B21B4
/* B2D94 800B2194 00000000 */   nop
.L800B2198:
/* B2D98 800B2198 8FAF0004 */  lw         $t7, 4($sp)
/* B2D9C 800B219C 8FB8000C */  lw         $t8, 0xc($sp)
/* B2DA0 800B21A0 AF0F0014 */  sw         $t7, 0x14($t8)
/* B2DA4 800B21A4 10000003 */  b          .L800B21B4
/* B2DA8 800B21A8 00000000 */   nop
.L800B21AC:
/* B2DAC 800B21AC 10000001 */  b          .L800B21B4
/* B2DB0 800B21B0 00000000 */   nop
.L800B21B4:
/* B2DB4 800B21B4 10000003 */  b          .L800B21C4
/* B2DB8 800B21B8 00001025 */   or        $v0, $zero, $zero
/* B2DBC 800B21BC 10000001 */  b          .L800B21C4
/* B2DC0 800B21C0 00000000 */   nop
.L800B21C4:
/* B2DC4 800B21C4 03E00008 */  jr         $ra
/* B2DC8 800B21C8 27BD0010 */   addiu     $sp, $sp, 0x10
/* B2DCC 800B21CC 00000000 */  nop
