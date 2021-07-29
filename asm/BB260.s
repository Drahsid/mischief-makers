.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __rmonRCPrunning
/* BB260 800BA660 00001025 */  or         $v0, $zero, $zero
/* BB264 800BA664 3C08A404 */  lui        $t0, %hi(D_A4040010)
/* BB268 800BA668 8D080010 */  lw         $t0, %lo(D_A4040010)($t0)
/* BB26C 800BA66C 31080003 */  andi       $t0, $t0, 3
/* BB270 800BA670 15000002 */  bnez       $t0, .L800BA67C
/* BB274 800BA674 00000000 */   nop
/* BB278 800BA678 34420001 */  ori        $v0, $v0, 1
.L800BA67C:
/* BB27C 800BA67C 03E00008 */  jr         $ra
/* BB280 800BA680 00000000 */   nop

glabel __rmonIdleRCP
/* BB284 800BA684 3C04A404 */  lui        $a0, 0xa404
/* BB288 800BA688 34840018 */  ori        $a0, $a0, 0x18
.L800BA68C:
/* BB28C 800BA68C 8C820000 */  lw         $v0, ($a0)
/* BB290 800BA690 1440FFFE */  bnez       $v0, .L800BA68C
/* BB294 800BA694 00000000 */   nop
/* BB298 800BA698 24050082 */  addiu      $a1, $zero, 0x82
/* BB29C 800BA69C 3C04A404 */  lui        $a0, 0xa404
/* BB2A0 800BA6A0 34840010 */  ori        $a0, $a0, 0x10
/* BB2A4 800BA6A4 AC850000 */  sw         $a1, ($a0)
.L800BA6A8:
/* BB2A8 800BA6A8 3C04A404 */  lui        $a0, 0xa404
/* BB2AC 800BA6AC 34840010 */  ori        $a0, $a0, 0x10
/* BB2B0 800BA6B0 8C820000 */  lw         $v0, ($a0)
/* BB2B4 800BA6B4 30420003 */  andi       $v0, $v0, 3
/* BB2B8 800BA6B8 1040FFFB */  beqz       $v0, .L800BA6A8
/* BB2BC 800BA6BC 00000000 */   nop
/* BB2C0 800BA6C0 03E00008 */  jr         $ra
/* BB2C4 800BA6C4 00000000 */   nop

glabel __rmonStepRCP
/* BB2C8 800BA6C8 3C04A404 */  lui        $a0, 0xa404
/* BB2CC 800BA6CC 34840010 */  ori        $a0, $a0, 0x10
/* BB2D0 800BA6D0 240500C5 */  addiu      $a1, $zero, 0xc5
/* BB2D4 800BA6D4 AC850000 */  sw         $a1, ($a0)
/* BB2D8 800BA6D8 1000FFF3 */  b          .L800BA6A8
/* BB2DC 800BA6DC 00000000 */   nop

glabel __rmonRunRCP
/* BB2E0 800BA6E0 3C04A430 */  lui        $a0, 0xa430
/* BB2E4 800BA6E4 3484000C */  ori        $a0, $a0, 0xc
/* BB2E8 800BA6E8 24050002 */  addiu      $a1, $zero, 2
/* BB2EC 800BA6EC AC850000 */  sw         $a1, ($a0)
/* BB2F0 800BA6F0 3C04A404 */  lui        $a0, 0xa404
/* BB2F4 800BA6F4 34840010 */  ori        $a0, $a0, 0x10
/* BB2F8 800BA6F8 24050125 */  addiu      $a1, $zero, 0x125
/* BB2FC 800BA6FC AC850000 */  sw         $a1, ($a0)
/* BB300 800BA700 03E00008 */  jr         $ra
/* BB304 800BA704 00000000 */   nop
/* BB308 800BA708 00000000 */  nop
/* BB30C 800BA70C 00000000 */  nop
