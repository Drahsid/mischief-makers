glabel func_800BA660
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
