glabel func_800B6680
/* B7280 800B6680 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B7284 800B6684 AFBF001C */  sw         $ra, 0x1c($sp)
/* B7288 800B6688 AFB00018 */  sw         $s0, 0x18($sp)
/* B728C 800B668C 0C02DC7C */  jal        func_800B71F0
/* B7290 800B6690 00000000 */   nop
/* B7294 800B6694 00408025 */  or         $s0, $v0, $zero
/* B7298 800B6698 8E0E0004 */  lw         $t6, 4($s0)
/* B729C 800B669C 2401FFFF */  addiu      $at, $zero, -1
/* B72A0 800B66A0 11C10013 */  beq        $t6, $at, .L800B66F0
/* B72A4 800B66A4 00000000 */   nop
.L800B66A8:
/* B72A8 800B66A8 8E0F0004 */  lw         $t7, 4($s0)
/* B72AC 800B66AC 15E0000B */  bnez       $t7, .L800B66DC
/* B72B0 800B66B0 00000000 */   nop
/* B72B4 800B66B4 8E180118 */  lw         $t8, 0x118($s0)
/* B72B8 800B66B8 3C01FFFF */  lui        $at, 0xffff
/* B72BC 800B66BC 342100FE */  ori        $at, $at, 0xfe
/* B72C0 800B66C0 0301C824 */  and        $t9, $t8, $at
/* B72C4 800B66C4 AE190118 */  sw         $t9, 0x118($s0)
/* B72C8 800B66C8 8E080118 */  lw         $t0, 0x118($s0)
/* B72CC 800B66CC 35096C01 */  ori        $t1, $t0, 0x6c01
/* B72D0 800B66D0 AE090118 */  sw         $t1, 0x118($s0)
/* B72D4 800B66D4 10000006 */  b          .L800B66F0
/* B72D8 800B66D8 00000000 */   nop
.L800B66DC:
/* B72DC 800B66DC 8E10000C */  lw         $s0, 0xc($s0)
/* B72E0 800B66E0 8E0A0004 */  lw         $t2, 4($s0)
/* B72E4 800B66E4 2401FFFF */  addiu      $at, $zero, -1
/* B72E8 800B66E8 1541FFEF */  bne        $t2, $at, .L800B66A8
/* B72EC 800B66EC 00000000 */   nop
.L800B66F0:
/* B72F0 800B66F0 10000001 */  b          .L800B66F8
/* B72F4 800B66F4 00000000 */   nop
.L800B66F8:
/* B72F8 800B66F8 8FBF001C */  lw         $ra, 0x1c($sp)
/* B72FC 800B66FC 8FB00018 */  lw         $s0, 0x18($sp)
/* B7300 800B6700 27BD0028 */  addiu      $sp, $sp, 0x28
/* B7304 800B6704 03E00008 */  jr         $ra
/* B7308 800B6708 00000000 */   nop
