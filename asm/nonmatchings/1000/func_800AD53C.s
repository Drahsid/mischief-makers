glabel func_800AD53C
/* AE13C 800AD53C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AE140 800AD540 AFBF0014 */  sw         $ra, 0x14($sp)
/* AE144 800AD544 AFA40020 */  sw         $a0, 0x20($sp)
/* AE148 800AD548 8FAE0020 */  lw         $t6, 0x20($sp)
/* AE14C 800AD54C AFA0001C */  sw         $zero, 0x1c($sp)
/* AE150 800AD550 91CF0034 */  lbu        $t7, 0x34($t6)
/* AE154 800AD554 19E00012 */  blez       $t7, .L800AD5A0
/* AE158 800AD558 00000000 */   nop
.L800AD55C:
/* AE15C 800AD55C 8FB80020 */  lw         $t8, 0x20($sp)
/* AE160 800AD560 8FA8001C */  lw         $t0, 0x1c($sp)
/* AE164 800AD564 8F190060 */  lw         $t9, 0x60($t8)
/* AE168 800AD568 00084900 */  sll        $t1, $t0, 4
/* AE16C 800AD56C 03295021 */  addu       $t2, $t9, $t1
/* AE170 800AD570 AD400000 */  sw         $zero, ($t2)
/* AE174 800AD574 8FA40020 */  lw         $a0, 0x20($sp)
/* AE178 800AD578 0C02B525 */  jal        func_800AD494
/* AE17C 800AD57C 8FA5001C */   lw        $a1, 0x1c($sp)
/* AE180 800AD580 8FAB001C */  lw         $t3, 0x1c($sp)
/* AE184 800AD584 8FAD0020 */  lw         $t5, 0x20($sp)
/* AE188 800AD588 256C0001 */  addiu      $t4, $t3, 1
/* AE18C 800AD58C AFAC001C */  sw         $t4, 0x1c($sp)
/* AE190 800AD590 91AE0034 */  lbu        $t6, 0x34($t5)
/* AE194 800AD594 018E082A */  slt        $at, $t4, $t6
/* AE198 800AD598 1420FFF0 */  bnez       $at, .L800AD55C
/* AE19C 800AD59C 00000000 */   nop
.L800AD5A0:
/* AE1A0 800AD5A0 10000001 */  b          .L800AD5A8
/* AE1A4 800AD5A4 00000000 */   nop
.L800AD5A8:
/* AE1A8 800AD5A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* AE1AC 800AD5AC 27BD0020 */  addiu      $sp, $sp, 0x20
/* AE1B0 800AD5B0 03E00008 */  jr         $ra
/* AE1B4 800AD5B4 00000000 */   nop
