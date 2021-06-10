glabel func_800AA684
/* AB284 800AA684 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AB288 800AA688 AFBF001C */  sw         $ra, 0x1c($sp)
/* AB28C 800AA68C AFB00018 */  sw         $s0, 0x18($sp)
/* AB290 800AA690 0C02DC7C */  jal        func_800B71F0
/* AB294 800AA694 00000000 */   nop
/* AB298 800AA698 00408025 */  or         $s0, $v0, $zero
/* AB29C 800AA69C 8E0E0004 */  lw         $t6, 4($s0)
/* AB2A0 800AA6A0 2401FFFF */  addiu      $at, $zero, -1
/* AB2A4 800AA6A4 11C1002E */  beq        $t6, $at, .L800AA760
/* AB2A8 800AA6A8 00000000 */   nop
.L800AA6AC:
/* AB2AC 800AA6AC 8E0F0004 */  lw         $t7, 4($s0)
/* AB2B0 800AA6B0 19E00026 */  blez       $t7, .L800AA74C
/* AB2B4 800AA6B4 00000000 */   nop
/* AB2B8 800AA6B8 8E180004 */  lw         $t8, 4($s0)
/* AB2BC 800AA6BC 2B010080 */  slti       $at, $t8, 0x80
/* AB2C0 800AA6C0 10200022 */  beqz       $at, .L800AA74C
/* AB2C4 800AA6C4 00000000 */   nop
/* AB2C8 800AA6C8 96190012 */  lhu        $t9, 0x12($s0)
/* AB2CC 800AA6CC 33280001 */  andi       $t0, $t9, 1
/* AB2D0 800AA6D0 11000015 */  beqz       $t0, .L800AA728
/* AB2D4 800AA6D4 00000000 */   nop
/* AB2D8 800AA6D8 8E09011C */  lw         $t1, 0x11c($s0)
/* AB2DC 800AA6DC 8D2A0000 */  lw         $t2, ($t1)
/* AB2E0 800AA6E0 AFAA0020 */  sw         $t2, 0x20($sp)
/* AB2E4 800AA6E4 8FAB0020 */  lw         $t3, 0x20($sp)
/* AB2E8 800AA6E8 3C01FC00 */  lui        $at, 0xfc00
/* AB2EC 800AA6EC 3421003F */  ori        $at, $at, 0x3f
/* AB2F0 800AA6F0 01616024 */  and        $t4, $t3, $at
/* AB2F4 800AA6F4 2401000D */  addiu      $at, $zero, 0xd
/* AB2F8 800AA6F8 15810008 */  bne        $t4, $at, .L800AA71C
/* AB2FC 800AA6FC 00000000 */   nop
/* AB300 800AA700 8FA50020 */  lw         $a1, 0x20($sp)
/* AB304 800AA704 8E040014 */  lw         $a0, 0x14($s0)
/* AB308 800AA708 00056983 */  sra        $t5, $a1, 6
/* AB30C 800AA70C 0C02A936 */  jal        func_800AA4D8
/* AB310 800AA710 01A02825 */   or        $a1, $t5, $zero
/* AB314 800AA714 10000004 */  b          .L800AA728
/* AB318 800AA718 00000000 */   nop
.L800AA71C:
/* AB31C 800AA71C 8E040014 */  lw         $a0, 0x14($s0)
/* AB320 800AA720 0C02A936 */  jal        func_800AA4D8
/* AB324 800AA724 00002825 */   or        $a1, $zero, $zero
.L800AA728:
/* AB328 800AA728 960E0012 */  lhu        $t6, 0x12($s0)
/* AB32C 800AA72C 31CF0002 */  andi       $t7, $t6, 2
/* AB330 800AA730 11E00006 */  beqz       $t7, .L800AA74C
/* AB334 800AA734 00000000 */   nop
/* AB338 800AA738 0C02A384 */  jal        func_800A8E10
/* AB33C 800AA73C 02002025 */   or        $a0, $s0, $zero
/* AB340 800AA740 8E040014 */  lw         $a0, 0x14($s0)
/* AB344 800AA744 0C02A936 */  jal        func_800AA4D8
/* AB348 800AA748 2405000F */   addiu     $a1, $zero, 0xf
.L800AA74C:
/* AB34C 800AA74C 8E10000C */  lw         $s0, 0xc($s0)
/* AB350 800AA750 8E180004 */  lw         $t8, 4($s0)
/* AB354 800AA754 2401FFFF */  addiu      $at, $zero, -1
/* AB358 800AA758 1701FFD4 */  bne        $t8, $at, .L800AA6AC
/* AB35C 800AA75C 00000000 */   nop
.L800AA760:
/* AB360 800AA760 10000001 */  b          .L800AA768
/* AB364 800AA764 00000000 */   nop
.L800AA768:
/* AB368 800AA768 8FBF001C */  lw         $ra, 0x1c($sp)
/* AB36C 800AA76C 8FB00018 */  lw         $s0, 0x18($sp)
/* AB370 800AA770 27BD0028 */  addiu      $sp, $sp, 0x28
/* AB374 800AA774 03E00008 */  jr         $ra
/* AB378 800AA778 00000000 */   nop
/* AB37C 800AA77C 00000000 */  nop
