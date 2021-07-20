.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A5110
/* A5D10 800A5110 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A5D14 800A5114 AFBF0014 */  sw         $ra, 0x14($sp)
/* A5D18 800A5118 AFA40018 */  sw         $a0, 0x18($sp)
/* A5D1C 800A511C AFA5001C */  sw         $a1, 0x1c($sp)
/* A5D20 800A5120 AFA60020 */  sw         $a2, 0x20($sp)
/* A5D24 800A5124 AFA70024 */  sw         $a3, 0x24($sp)
/* A5D28 800A5128 0C02CB32 */  jal        func_800B2CC8
/* A5D2C 800A512C 8FA40018 */   lw        $a0, 0x18($sp)
/* A5D30 800A5130 C7A4001C */  lwc1       $f4, 0x1c($sp)
/* A5D34 800A5134 8FAE0018 */  lw         $t6, 0x18($sp)
/* A5D38 800A5138 E5C40000 */  swc1       $f4, ($t6)
/* A5D3C 800A513C C7A60020 */  lwc1       $f6, 0x20($sp)
/* A5D40 800A5140 8FAF0018 */  lw         $t7, 0x18($sp)
/* A5D44 800A5144 E5E60014 */  swc1       $f6, 0x14($t7)
/* A5D48 800A5148 C7A80024 */  lwc1       $f8, 0x24($sp)
/* A5D4C 800A514C 8FB80018 */  lw         $t8, 0x18($sp)
/* A5D50 800A5150 E7080028 */  swc1       $f8, 0x28($t8)
/* A5D54 800A5154 3C013F80 */  lui        $at, 0x3f80
/* A5D58 800A5158 44815000 */  mtc1       $at, $f10
/* A5D5C 800A515C 8FB90018 */  lw         $t9, 0x18($sp)
/* A5D60 800A5160 E72A003C */  swc1       $f10, 0x3c($t9)
/* A5D64 800A5164 10000001 */  b          .L800A516C
/* A5D68 800A5168 00000000 */   nop
.L800A516C:
/* A5D6C 800A516C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A5D70 800A5170 27BD0018 */  addiu      $sp, $sp, 0x18
/* A5D74 800A5174 03E00008 */  jr         $ra
/* A5D78 800A5178 00000000 */   nop

glabel func_800A517C
/* A5D7C 800A517C 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* A5D80 800A5180 AFBF0014 */  sw         $ra, 0x14($sp)
/* A5D84 800A5184 AFA40058 */  sw         $a0, 0x58($sp)
/* A5D88 800A5188 AFA5005C */  sw         $a1, 0x5c($sp)
/* A5D8C 800A518C AFA60060 */  sw         $a2, 0x60($sp)
/* A5D90 800A5190 AFA70064 */  sw         $a3, 0x64($sp)
/* A5D94 800A5194 27A40018 */  addiu      $a0, $sp, 0x18
/* A5D98 800A5198 8FA5005C */  lw         $a1, 0x5c($sp)
/* A5D9C 800A519C 8FA60060 */  lw         $a2, 0x60($sp)
/* A5DA0 800A51A0 0C029444 */  jal        func_800A5110
/* A5DA4 800A51A4 8FA70064 */   lw        $a3, 0x64($sp)
/* A5DA8 800A51A8 27A40018 */  addiu      $a0, $sp, 0x18
/* A5DAC 800A51AC 0C02CA98 */  jal        guMtxF2L
/* A5DB0 800A51B0 8FA50058 */   lw        $a1, 0x58($sp)
/* A5DB4 800A51B4 10000001 */  b          .L800A51BC
/* A5DB8 800A51B8 00000000 */   nop
.L800A51BC:
/* A5DBC 800A51BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* A5DC0 800A51C0 27BD0058 */  addiu      $sp, $sp, 0x58
/* A5DC4 800A51C4 03E00008 */  jr         $ra
/* A5DC8 800A51C8 00000000 */   nop
/* A5DCC 800A51CC 00000000 */  nop
