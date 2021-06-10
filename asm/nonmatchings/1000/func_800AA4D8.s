glabel func_800AA4D8
/* AB0D8 800AA4D8 27BDFF90 */  addiu      $sp, $sp, -0x70
/* AB0DC 800AA4DC AFBF001C */  sw         $ra, 0x1c($sp)
/* AB0E0 800AA4E0 AFA40070 */  sw         $a0, 0x70($sp)
/* AB0E4 800AA4E4 AFA50074 */  sw         $a1, 0x74($sp)
/* AB0E8 800AA4E8 AFB00018 */  sw         $s0, 0x18($sp)
/* AB0EC 800AA4EC 8FAE0070 */  lw         $t6, 0x70($sp)
/* AB0F0 800AA4F0 11C00003 */  beqz       $t6, .L800AA500
/* AB0F4 800AA4F4 00000000 */   nop
/* AB0F8 800AA4F8 10000002 */  b          .L800AA504
/* AB0FC 800AA4FC 01C08025 */   or        $s0, $t6, $zero
.L800AA500:
/* AB100 800AA500 241003EB */  addiu      $s0, $zero, 0x3eb
.L800AA504:
/* AB104 800AA504 00002025 */  or         $a0, $zero, $zero
/* AB108 800AA508 02002825 */  or         $a1, $s0, $zero
/* AB10C 800AA50C 0C02DA89 */  jal        func_800B6A24
/* AB110 800AA510 27A60024 */   addiu     $a2, $sp, 0x24
/* AB114 800AA514 0C02A923 */  jal        func_800AA48C
/* AB118 800AA518 27A40024 */   addiu     $a0, $sp, 0x24
/* AB11C 800AA51C 8FAF0074 */  lw         $t7, 0x74($sp)
/* AB120 800AA520 2401000F */  addiu      $at, $zero, 0xf
/* AB124 800AA524 15E10005 */  bne        $t7, $at, .L800AA53C
/* AB128 800AA528 00000000 */   nop
/* AB12C 800AA52C 24180001 */  addiu      $t8, $zero, 1
/* AB130 800AA530 A7B80048 */  sh         $t8, 0x48($sp)
/* AB134 800AA534 24190002 */  addiu      $t9, $zero, 2
/* AB138 800AA538 A7B9004A */  sh         $t9, 0x4a($sp)
.L800AA53C:
/* AB13C 800AA53C 8FA80074 */  lw         $t0, 0x74($sp)
/* AB140 800AA540 29010010 */  slti       $at, $t0, 0x10
/* AB144 800AA544 10200003 */  beqz       $at, .L800AA554
/* AB148 800AA548 00000000 */   nop
/* AB14C 800AA54C 10000004 */  b          .L800AA560
/* AB150 800AA550 AFA00074 */   sw        $zero, 0x74($sp)
.L800AA554:
/* AB154 800AA554 8FA90074 */  lw         $t1, 0x74($sp)
/* AB158 800AA558 252AFFF0 */  addiu      $t2, $t1, -0x10
/* AB15C 800AA55C AFAA0074 */  sw         $t2, 0x74($sp)
.L800AA560:
/* AB160 800AA560 8FAB0074 */  lw         $t3, 0x74($sp)
/* AB164 800AA564 11600003 */  beqz       $t3, .L800AA574
/* AB168 800AA568 00000000 */   nop
/* AB16C 800AA56C 240C000D */  addiu      $t4, $zero, 0xd
/* AB170 800AA570 AFAC0040 */  sw         $t4, 0x40($sp)
.L800AA574:
/* AB174 800AA574 27A40024 */  addiu      $a0, $sp, 0x24
/* AB178 800AA578 2405004C */  addiu      $a1, $zero, 0x4c
/* AB17C 800AA57C 0C026833 */  jal        func_8009A0CC
/* AB180 800AA580 24060002 */   addiu     $a2, $zero, 2
/* AB184 800AA584 10000001 */  b          .L800AA58C
/* AB188 800AA588 00000000 */   nop
.L800AA58C:
/* AB18C 800AA58C 8FBF001C */  lw         $ra, 0x1c($sp)
/* AB190 800AA590 8FB00018 */  lw         $s0, 0x18($sp)
/* AB194 800AA594 27BD0070 */  addiu      $sp, $sp, 0x70
/* AB198 800AA598 03E00008 */  jr         $ra
/* AB19C 800AA59C 00000000 */   nop
