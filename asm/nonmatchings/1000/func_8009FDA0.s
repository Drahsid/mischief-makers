glabel func_8009FDA0
/* A09A0 8009FDA0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A09A4 8009FDA4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A09A8 8009FDA8 AFA40028 */  sw         $a0, 0x28($sp)
/* A09AC 8009FDAC AFA5002C */  sw         $a1, 0x2c($sp)
/* A09B0 8009FDB0 240E000D */  addiu      $t6, $zero, 0xd
/* A09B4 8009FDB4 A7AE0018 */  sh         $t6, 0x18($sp)
/* A09B8 8009FDB8 8FAF002C */  lw         $t7, 0x2c($sp)
/* A09BC 8009FDBC AFAF001C */  sw         $t7, 0x1c($sp)
/* A09C0 8009FDC0 8FA40028 */  lw         $a0, 0x28($sp)
/* A09C4 8009FDC4 27A50018 */  addiu      $a1, $sp, 0x18
/* A09C8 8009FDC8 00003025 */  or         $a2, $zero, $zero
/* A09CC 8009FDCC 0C02B620 */  jal        func_800AD880
/* A09D0 8009FDD0 24840048 */   addiu     $a0, $a0, 0x48
/* A09D4 8009FDD4 10000001 */  b          .L8009FDDC
/* A09D8 8009FDD8 00000000 */   nop
.L8009FDDC:
/* A09DC 8009FDDC 8FBF0014 */  lw         $ra, 0x14($sp)
/* A09E0 8009FDE0 27BD0028 */  addiu      $sp, $sp, 0x28
/* A09E4 8009FDE4 03E00008 */  jr         $ra
/* A09E8 8009FDE8 00000000 */   nop
/* A09EC 8009FDEC 00000000 */  nop
