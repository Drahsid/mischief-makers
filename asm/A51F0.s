.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A45F0
/* A51F0 800A45F0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A51F4 800A45F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A51F8 800A45F8 AFA40020 */  sw         $a0, 0x20($sp)
/* A51FC 800A45FC AFA0001C */  sw         $zero, 0x1c($sp)
/* A5200 800A4600 0C02AA26 */  jal        func_800AA898
/* A5204 800A4604 00000000 */   nop
/* A5208 800A4608 8FA40020 */  lw         $a0, 0x20($sp)
/* A520C 800A460C 0C02C93F */  jal        func_800B24FC
/* A5210 800A4610 27A50018 */   addiu     $a1, $sp, 0x18
/* A5214 800A4614 AFA2001C */  sw         $v0, 0x1c($sp)
/* A5218 800A4618 8FAE001C */  lw         $t6, 0x1c($sp)
/* A521C 800A461C 15C00008 */  bnez       $t6, .L800A4640
/* A5220 800A4620 00000000 */   nop
/* A5224 800A4624 97AF0018 */  lhu        $t7, 0x18($sp)
/* A5228 800A4628 31F88000 */  andi       $t8, $t7, 0x8000
/* A522C 800A462C 13000004 */  beqz       $t8, .L800A4640
/* A5230 800A4630 00000000 */   nop
/* A5234 800A4634 24190001 */  addiu      $t9, $zero, 1
/* A5238 800A4638 10000002 */  b          .L800A4644
/* A523C 800A463C AFB9001C */   sw        $t9, 0x1c($sp)
.L800A4640:
/* A5240 800A4640 AFA0001C */  sw         $zero, 0x1c($sp)
.L800A4644:
/* A5244 800A4644 0C02AA39 */  jal        func_800AA8E4
/* A5248 800A4648 00000000 */   nop
/* A524C 800A464C 10000003 */  b          .L800A465C
/* A5250 800A4650 8FA2001C */   lw        $v0, 0x1c($sp)
/* A5254 800A4654 10000001 */  b          .L800A465C
/* A5258 800A4658 00000000 */   nop
.L800A465C:
/* A525C 800A465C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A5260 800A4660 27BD0020 */  addiu      $sp, $sp, 0x20
/* A5264 800A4664 03E00008 */  jr         $ra
/* A5268 800A4668 00000000 */   nop
/* A526C 800A466C 00000000 */  nop