.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osEPiRawWriteIo
/* B61F0 800B55F0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B61F4 800B55F4 AFBF001C */  sw         $ra, 0x1c($sp)
/* B61F8 800B55F8 AFA40028 */  sw         $a0, 0x28($sp)
/* B61FC 800B55FC AFA5002C */  sw         $a1, 0x2c($sp)
/* B6200 800B5600 AFA60030 */  sw         $a2, 0x30($sp)
/* B6204 800B5604 AFB00018 */  sw         $s0, 0x18($sp)
/* B6208 800B5608 8FAE002C */  lw         $t6, 0x2c($sp)
/* B620C 800B560C 31CF0003 */  andi       $t7, $t6, 3
/* B6210 800B5610 11E00007 */  beqz       $t7, .L800B5630
/* B6214 800B5614 00000000 */   nop
/* B6218 800B5618 24040014 */  addiu      $a0, $zero, 0x14
/* B621C 800B561C 24050001 */  addiu      $a1, $zero, 1
/* B6220 800B5620 0C0297B4 */  jal        __osError
/* B6224 800B5624 8FA6002C */   lw        $a2, 0x2c($sp)
/* B6228 800B5628 10000017 */  b          .L800B5688
/* B622C 800B562C 2402FFFF */   addiu     $v0, $zero, -1
.L800B5630:
/* B6230 800B5630 3C18A460 */  lui        $t8, %hi(PI_STATUS)
/* B6234 800B5634 8F100010 */  lw         $s0, %lo(PI_STATUS)($t8)
/* B6238 800B5638 32190003 */  andi       $t9, $s0, 3
/* B623C 800B563C 13200006 */  beqz       $t9, .L800B5658
/* B6240 800B5640 00000000 */   nop
.L800B5644:
/* B6244 800B5644 3C08A460 */  lui        $t0, %hi(PI_STATUS)
/* B6248 800B5648 8D100010 */  lw         $s0, %lo(PI_STATUS)($t0)
/* B624C 800B564C 32090003 */  andi       $t1, $s0, 3
/* B6250 800B5650 1520FFFC */  bnez       $t1, .L800B5644
/* B6254 800B5654 00000000 */   nop
.L800B5658:
/* B6258 800B5658 8FAB0028 */  lw         $t3, 0x28($sp)
/* B625C 800B565C 8FAD002C */  lw         $t5, 0x2c($sp)
/* B6260 800B5660 8FAA0030 */  lw         $t2, 0x30($sp)
/* B6264 800B5664 8D6C000C */  lw         $t4, 0xc($t3)
/* B6268 800B5668 3C01A000 */  lui        $at, 0xa000
/* B626C 800B566C 018D7025 */  or         $t6, $t4, $t5
/* B6270 800B5670 01C17825 */  or         $t7, $t6, $at
/* B6274 800B5674 ADEA0000 */  sw         $t2, ($t7)
/* B6278 800B5678 10000003 */  b          .L800B5688
/* B627C 800B567C 00001025 */   or        $v0, $zero, $zero
/* B6280 800B5680 10000001 */  b          .L800B5688
/* B6284 800B5684 00000000 */   nop
.L800B5688:
/* B6288 800B5688 8FBF001C */  lw         $ra, 0x1c($sp)
/* B628C 800B568C 8FB00018 */  lw         $s0, 0x18($sp)
/* B6290 800B5690 27BD0028 */  addiu      $sp, $sp, 0x28
/* B6294 800B5694 03E00008 */  jr         $ra
/* B6298 800B5698 00000000 */   nop
/* B629C 800B569C 00000000 */  nop
