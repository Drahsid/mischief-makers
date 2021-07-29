.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel spColor
/* A4DB0 800A41B0 30A500FF */  andi       $a1, $a1, 0xff
/* A4DB4 800A41B4 30C600FF */  andi       $a2, $a2, 0xff
/* A4DB8 800A41B8 30E700FF */  andi       $a3, $a3, 0xff
/* A4DBC 800A41BC A0850018 */  sb         $a1, 0x18($a0)
/* A4DC0 800A41C0 A0860019 */  sb         $a2, 0x19($a0)
/* A4DC4 800A41C4 A087001A */  sb         $a3, 0x1a($a0)
/* A4DC8 800A41C8 93AE0013 */  lbu        $t6, 0x13($sp)
/* A4DCC 800A41CC A08E001B */  sb         $t6, 0x1b($a0)
/* A4DD0 800A41D0 03E00008 */  jr         $ra
/* A4DD4 800A41D4 00000000 */   nop

glabel func_800A41D8
/* A4DD8 800A41D8 03E00008 */  jr         $ra
/* A4DDC 800A41DC 00000000 */   nop
