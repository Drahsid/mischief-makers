glabel func_800BA684
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
