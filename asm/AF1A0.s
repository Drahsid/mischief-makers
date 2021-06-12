.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AE5A0
/* AF1A0 800AE5A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AF1A4 800AE5A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* AF1A8 800AE5A8 AFA40020 */  sw         $a0, 0x20($sp)
/* AF1AC 800AE5AC AFA50024 */  sw         $a1, 0x24($sp)
/* AF1B0 800AE5B0 AFA60028 */  sw         $a2, 0x28($sp)
/* AF1B4 800AE5B4 8FAE0024 */  lw         $t6, 0x24($sp)
/* AF1B8 800AE5B8 8DCF0008 */  lw         $t7, 8($t6)
/* AF1BC 800AE5BC 11E0002F */  beqz       $t7, .L800AE67C
/* AF1C0 800AE5C0 00000000 */   nop
/* AF1C4 800AE5C4 0C027AE8 */  jal        func_8009EBA0
/* AF1C8 800AE5C8 00000000 */   nop
/* AF1CC 800AE5CC AFA2001C */  sw         $v0, 0x1c($sp)
/* AF1D0 800AE5D0 8FB8001C */  lw         $t8, 0x1c($sp)
/* AF1D4 800AE5D4 17000006 */  bnez       $t8, .L800AE5F0
/* AF1D8 800AE5D8 00000000 */   nop
/* AF1DC 800AE5DC 2404006A */  addiu      $a0, $zero, 0x6a
/* AF1E0 800AE5E0 0C0297B4 */  jal        func_800A5ED0
/* AF1E4 800AE5E4 00002825 */   or        $a1, $zero, $zero
/* AF1E8 800AE5E8 10000026 */  b          .L800AE684
/* AF1EC 800AE5EC 00000000 */   nop
.L800AE5F0:
/* AF1F0 800AE5F0 8FA90024 */  lw         $t1, 0x24($sp)
/* AF1F4 800AE5F4 8FB90020 */  lw         $t9, 0x20($sp)
/* AF1F8 800AE5F8 8FAD001C */  lw         $t5, 0x1c($sp)
/* AF1FC 800AE5FC 8D2A0008 */  lw         $t2, 8($t1)
/* AF200 800AE600 8F28001C */  lw         $t0, 0x1c($t9)
/* AF204 800AE604 8D4B00D8 */  lw         $t3, 0xd8($t2)
/* AF208 800AE608 010B6021 */  addu       $t4, $t0, $t3
/* AF20C 800AE60C ADAC0004 */  sw         $t4, 4($t5)
/* AF210 800AE610 8FAF001C */  lw         $t7, 0x1c($sp)
/* AF214 800AE614 240E0010 */  addiu      $t6, $zero, 0x10
/* AF218 800AE618 A5EE0008 */  sh         $t6, 8($t7)
/* AF21C 800AE61C 93B8002B */  lbu        $t8, 0x2b($sp)
/* AF220 800AE620 07010006 */  bgez       $t8, .L800AE63C
/* AF224 800AE624 00000000 */   nop
/* AF228 800AE628 93B9002B */  lbu        $t9, 0x2b($sp)
/* AF22C 800AE62C 8FAA001C */  lw         $t2, 0x1c($sp)
/* AF230 800AE630 00194823 */  negu       $t1, $t9
/* AF234 800AE634 10000004 */  b          .L800AE648
/* AF238 800AE638 AD49000C */   sw        $t1, 0xc($t2)
.L800AE63C:
/* AF23C 800AE63C 93A8002B */  lbu        $t0, 0x2b($sp)
/* AF240 800AE640 8FAB001C */  lw         $t3, 0x1c($sp)
/* AF244 800AE644 AD68000C */  sw         $t0, 0xc($t3)
.L800AE648:
/* AF248 800AE648 8FAC001C */  lw         $t4, 0x1c($sp)
/* AF24C 800AE64C AD800000 */  sw         $zero, ($t4)
/* AF250 800AE650 8FAD0024 */  lw         $t5, 0x24($sp)
/* AF254 800AE654 8DAE0008 */  lw         $t6, 8($t5)
/* AF258 800AE658 8DCF000C */  lw         $t7, 0xc($t6)
/* AF25C 800AE65C AFAF0018 */  sw         $t7, 0x18($sp)
/* AF260 800AE660 8FB80018 */  lw         $t8, 0x18($sp)
/* AF264 800AE664 24050003 */  addiu      $a1, $zero, 3
/* AF268 800AE668 8FA6001C */  lw         $a2, 0x1c($sp)
/* AF26C 800AE66C 8F190008 */  lw         $t9, 8($t8)
/* AF270 800AE670 03002025 */  or         $a0, $t8, $zero
/* AF274 800AE674 0320F809 */  jalr       $t9
/* AF278 800AE678 00000000 */   nop
.L800AE67C:
/* AF27C 800AE67C 10000001 */  b          .L800AE684
/* AF280 800AE680 00000000 */   nop
.L800AE684:
/* AF284 800AE684 8FBF0014 */  lw         $ra, 0x14($sp)
/* AF288 800AE688 27BD0020 */  addiu      $sp, $sp, 0x20
/* AF28C 800AE68C 03E00008 */  jr         $ra
/* AF290 800AE690 00000000 */   nop
/* AF294 800AE694 00000000 */  nop
/* AF298 800AE698 00000000 */  nop
/* AF29C 800AE69C 00000000 */  nop
