glabel func_800A5BBC
/* A67BC 800A5BBC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A67C0 800A5BC0 AFBF0014 */  sw         $ra, 0x14($sp)
/* A67C4 800A5BC4 AFA40020 */  sw         $a0, 0x20($sp)
/* A67C8 800A5BC8 AFA50024 */  sw         $a1, 0x24($sp)
/* A67CC 800A5BCC AFA60028 */  sw         $a2, 0x28($sp)
/* A67D0 800A5BD0 AFA7002C */  sw         $a3, 0x2c($sp)
/* A67D4 800A5BD4 27AE0020 */  addiu      $t6, $sp, 0x20
/* A67D8 800A5BD8 25CF0004 */  addiu      $t7, $t6, 4
/* A67DC 800A5BDC AFAF0018 */  sw         $t7, 0x18($sp)
/* A67E0 800A5BE0 3C188018 */  lui        $t8, %hi(D_801826C0)
/* A67E4 800A5BE4 8F1826C0 */  lw         $t8, %lo(D_801826C0)($t8)
/* A67E8 800A5BE8 13000008 */  beqz       $t8, .L800A5C0C
/* A67EC 800A5BEC 00000000 */   nop
/* A67F0 800A5BF0 3C04800A */  lui        $a0, %hi(func_800A5904)
/* A67F4 800A5BF4 24845904 */  addiu      $a0, $a0, %lo(func_800A5904)
/* A67F8 800A5BF8 00002825 */  or         $a1, $zero, $zero
/* A67FC 800A5BFC 8FA60020 */  lw         $a2, 0x20($sp)
/* A6800 800A5C00 0C02CCC4 */  jal        func_800B3310
/* A6804 800A5C04 8FA70018 */   lw        $a3, 0x18($sp)
/* A6808 800A5C08 AFA2001C */  sw         $v0, 0x1c($sp)
.L800A5C0C:
/* A680C 800A5C0C 10000001 */  b          .L800A5C14
/* A6810 800A5C10 00000000 */   nop
.L800A5C14:
/* A6814 800A5C14 8FBF0014 */  lw         $ra, 0x14($sp)
/* A6818 800A5C18 27BD0020 */  addiu      $sp, $sp, 0x20
/* A681C 800A5C1C 03E00008 */  jr         $ra
/* A6820 800A5C20 00000000 */   nop
/* A6824 800A5C24 00000000 */  nop
/* A6828 800A5C28 00000000 */  nop
/* A682C 800A5C2C 00000000 */  nop
