.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osPiGetCmdQueue
/* ABDE0 800AB1E0 3C0E800F */  lui        $t6, %hi(__osPiDevMgr)
/* ABDE4 800AB1E4 8DCEA4D0 */  lw         $t6, %lo(__osPiDevMgr)($t6)
/* ABDE8 800AB1E8 15C00005 */  bnez       $t6, .L800AB200
/* ABDEC 800AB1EC 00000000 */   nop
/* ABDF0 800AB1F0 03E00008 */  jr         $ra
/* ABDF4 800AB1F4 00001025 */   or        $v0, $zero, $zero
/* ABDF8 800AB1F8 10000004 */  b          .L800AB20C
/* ABDFC 800AB1FC 00000000 */   nop
.L800AB200:
/* ABE00 800AB200 3C02800F */  lui        $v0, %hi(__osPiDevMgr+0x8)
/* ABE04 800AB204 03E00008 */  jr         $ra
/* ABE08 800AB208 8C42A4D8 */   lw        $v0, %lo(__osPiDevMgr+0x8)($v0)
.L800AB20C:
/* ABE0C 800AB20C 03E00008 */  jr         $ra
/* ABE10 800AB210 00000000 */   nop

glabel func_800AB214
/* ABE14 800AB214 03E00008 */  jr         $ra
/* ABE18 800AB218 00000000 */   nop
/* ABE1C 800AB21C 00000000 */  nop
