glabel func_800A50B4
/* A5CB4 800A50B4 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* A5CB8 800A50B8 AFBF001C */  sw         $ra, 0x1c($sp)
/* A5CBC 800A50BC AFA40060 */  sw         $a0, 0x60($sp)
/* A5CC0 800A50C0 AFA50064 */  sw         $a1, 0x64($sp)
/* A5CC4 800A50C4 AFA60068 */  sw         $a2, 0x68($sp)
/* A5CC8 800A50C8 AFA7006C */  sw         $a3, 0x6c($sp)
/* A5CCC 800A50CC C7A40070 */  lwc1       $f4, 0x70($sp)
/* A5CD0 800A50D0 27A40020 */  addiu      $a0, $sp, 0x20
/* A5CD4 800A50D4 8FA50064 */  lw         $a1, 0x64($sp)
/* A5CD8 800A50D8 8FA60068 */  lw         $a2, 0x68($sp)
/* A5CDC 800A50DC 8FA7006C */  lw         $a3, 0x6c($sp)
/* A5CE0 800A50E0 0C0293A8 */  jal        func_800A4EA0
/* A5CE4 800A50E4 E7A40010 */   swc1      $f4, 0x10($sp)
/* A5CE8 800A50E8 27A40020 */  addiu      $a0, $sp, 0x20
/* A5CEC 800A50EC 0C02CA98 */  jal        func_800B2A60
/* A5CF0 800A50F0 8FA50060 */   lw        $a1, 0x60($sp)
/* A5CF4 800A50F4 10000001 */  b          .L800A50FC
/* A5CF8 800A50F8 00000000 */   nop
.L800A50FC:
/* A5CFC 800A50FC 8FBF001C */  lw         $ra, 0x1c($sp)
/* A5D00 800A5100 27BD0060 */  addiu      $sp, $sp, 0x60
/* A5D04 800A5104 03E00008 */  jr         $ra
/* A5D08 800A5108 00000000 */   nop
/* A5D0C 800A510C 00000000 */  nop
