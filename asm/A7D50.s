.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A7150
/* A7D50 800A7150 00041823 */  negu       $v1, $a0
/* A7D54 800A7154 28A1000C */  slti       $at, $a1, 0xc
/* A7D58 800A7158 14200022 */  bnez       $at, .L800A71E4
/* A7D5C 800A715C 00000000 */   nop
/* A7D60 800A7160 30630003 */  andi       $v1, $v1, 3
/* A7D64 800A7164 00A32823 */  subu       $a1, $a1, $v1
/* A7D68 800A7168 10600003 */  beqz       $v1, .L800A7178
/* A7D6C 800A716C 00000000 */   nop
/* A7D70 800A7170 A8800000 */  swl        $zero, ($a0)
/* A7D74 800A7174 00832021 */  addu       $a0, $a0, $v1
.L800A7178:
/* A7D78 800A7178 2401FFE0 */  addiu      $at, $zero, -0x20
/* A7D7C 800A717C 00A13824 */  and        $a3, $a1, $at
/* A7D80 800A7180 00A72823 */  subu       $a1, $a1, $a3
/* A7D84 800A7184 10E0000D */  beqz       $a3, .L800A71BC
/* A7D88 800A7188 00000000 */   nop
/* A7D8C 800A718C 00E43821 */  addu       $a3, $a3, $a0
.L800A7190:
/* A7D90 800A7190 AC800000 */  sw         $zero, ($a0)
/* A7D94 800A7194 AC800004 */  sw         $zero, 4($a0)
/* A7D98 800A7198 AC800008 */  sw         $zero, 8($a0)
/* A7D9C 800A719C AC80000C */  sw         $zero, 0xc($a0)
/* A7DA0 800A71A0 24840020 */  addiu      $a0, $a0, 0x20
/* A7DA4 800A71A4 AC80FFF0 */  sw         $zero, -0x10($a0)
/* A7DA8 800A71A8 AC80FFF4 */  sw         $zero, -0xc($a0)
/* A7DAC 800A71AC AC80FFF8 */  sw         $zero, -8($a0)
/* A7DB0 800A71B0 AC80FFFC */  sw         $zero, -4($a0)
/* A7DB4 800A71B4 1487FFF6 */  bne        $a0, $a3, .L800A7190
/* A7DB8 800A71B8 00000000 */   nop
.L800A71BC:
/* A7DBC 800A71BC 2401FFFC */  addiu      $at, $zero, -4
/* A7DC0 800A71C0 00A13824 */  and        $a3, $a1, $at
/* A7DC4 800A71C4 00A72823 */  subu       $a1, $a1, $a3
/* A7DC8 800A71C8 10E00006 */  beqz       $a3, .L800A71E4
/* A7DCC 800A71CC 00000000 */   nop
/* A7DD0 800A71D0 00E43821 */  addu       $a3, $a3, $a0
.L800A71D4:
/* A7DD4 800A71D4 24840004 */  addiu      $a0, $a0, 4
/* A7DD8 800A71D8 AC80FFFC */  sw         $zero, -4($a0)
/* A7DDC 800A71DC 1487FFFD */  bne        $a0, $a3, .L800A71D4
/* A7DE0 800A71E0 00000000 */   nop
.L800A71E4:
/* A7DE4 800A71E4 18A00006 */  blez       $a1, .L800A7200
/* A7DE8 800A71E8 00000000 */   nop
/* A7DEC 800A71EC 00A42821 */  addu       $a1, $a1, $a0
.L800A71F0:
/* A7DF0 800A71F0 24840001 */  addiu      $a0, $a0, 1
/* A7DF4 800A71F4 A080FFFF */  sb         $zero, -1($a0)
/* A7DF8 800A71F8 1485FFFD */  bne        $a0, $a1, .L800A71F0
/* A7DFC 800A71FC 00000000 */   nop
.L800A7200:
/* A7E00 800A7200 03E00008 */  jr         $ra
/* A7E04 800A7204 00000000 */   nop
/* A7E08 800A7208 00000000 */  nop
/* A7E0C 800A720C 00000000 */  nop
