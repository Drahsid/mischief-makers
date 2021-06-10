glabel func_800B4550
/* B5150 800B4550 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B5154 800B4554 AFBF0014 */  sw         $ra, 0x14($sp)
/* B5158 800B4558 AFA40020 */  sw         $a0, 0x20($sp)
/* B515C 800B455C AFA50024 */  sw         $a1, 0x24($sp)
/* B5160 800B4560 AFA60028 */  sw         $a2, 0x28($sp)
/* B5164 800B4564 AFA7002C */  sw         $a3, 0x2c($sp)
/* B5168 800B4568 27AE0026 */  addiu      $t6, $sp, 0x26
/* B516C 800B456C 25CF0002 */  addiu      $t7, $t6, 2
/* B5170 800B4570 AFAF001C */  sw         $t7, 0x1c($sp)
/* B5174 800B4574 3C04800F */  lui        $a0, %hi(D_800EAA70)
/* B5178 800B4578 2484AA70 */  addiu      $a0, $a0, %lo(D_800EAA70)
/* B517C 800B457C 87A50022 */  lh         $a1, 0x22($sp)
/* B5180 800B4580 87A60026 */  lh         $a2, 0x26($sp)
/* B5184 800B4584 0C02E923 */  jal        func_800BA48C
/* B5188 800B4588 8FA7001C */   lw        $a3, 0x1c($sp)
/* B518C 800B458C 3C04800F */  lui        $a0, %hi(D_800EAA70)
/* B5190 800B4590 0C02E899 */  jal        func_800BA264
/* B5194 800B4594 2484AA70 */   addiu     $a0, $a0, %lo(D_800EAA70)
/* B5198 800B4598 10000001 */  b          .L800B45A0
/* B519C 800B459C 00000000 */   nop
.L800B45A0:
/* B51A0 800B45A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* B51A4 800B45A4 27BD0020 */  addiu      $sp, $sp, 0x20
/* B51A8 800B45A8 03E00008 */  jr         $ra
/* B51AC 800B45AC 00000000 */   nop
