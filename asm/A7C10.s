.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A7010
/* A7C10 800A7010 40085000 */  mfc0       $t0, $10
/* A7C14 800A7014 2409001F */  addiu      $t1, $zero, 0x1f
/* A7C18 800A7018 40890000 */  mtc0       $t1, $0
/* A7C1C 800A701C 40802800 */  mtc0       $zero, $5
/* A7C20 800A7020 240A0017 */  addiu      $t2, $zero, 0x17
/* A7C24 800A7024 3C09C000 */  lui        $t1, 0xc000
/* A7C28 800A7028 40895000 */  mtc0       $t1, $10
/* A7C2C 800A702C 3C098000 */  lui        $t1, 0x8000
/* A7C30 800A7030 00095982 */  srl        $t3, $t1, 6
/* A7C34 800A7034 016A5825 */  or         $t3, $t3, $t2
/* A7C38 800A7038 408B1000 */  mtc0       $t3, $2
/* A7C3C 800A703C 24090001 */  addiu      $t1, $zero, 1
/* A7C40 800A7040 40891800 */  mtc0       $t1, $3
/* A7C44 800A7044 00000000 */  nop
/* A7C48 800A7048 42000002 */  tlbwi
/* A7C4C 800A704C 00000000 */  nop
/* A7C50 800A7050 00000000 */  nop
/* A7C54 800A7054 00000000 */  nop
/* A7C58 800A7058 00000000 */  nop
/* A7C5C 800A705C 40885000 */  mtc0       $t0, $10
/* A7C60 800A7060 03E00008 */  jr         $ra
/* A7C64 800A7064 00000000 */   nop
/* A7C68 800A7068 00000000 */  nop
/* A7C6C 800A706C 00000000 */  nop