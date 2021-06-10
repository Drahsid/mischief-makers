glabel func_8009FDF0
/* A09F0 8009FDF0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A09F4 8009FDF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A09F8 8009FDF8 AFA40028 */  sw         $a0, 0x28($sp)
/* A09FC 8009FDFC 240E000F */  addiu      $t6, $zero, 0xf
/* A0A00 8009FE00 A7AE0018 */  sh         $t6, 0x18($sp)
/* A0A04 8009FE04 8FA40028 */  lw         $a0, 0x28($sp)
/* A0A08 8009FE08 27A50018 */  addiu      $a1, $sp, 0x18
/* A0A0C 8009FE0C 00003025 */  or         $a2, $zero, $zero
/* A0A10 8009FE10 0C02B620 */  jal        func_800AD880
/* A0A14 8009FE14 24840048 */   addiu     $a0, $a0, 0x48
/* A0A18 8009FE18 10000001 */  b          .L8009FE20
/* A0A1C 8009FE1C 00000000 */   nop
.L8009FE20:
/* A0A20 8009FE20 8FBF0014 */  lw         $ra, 0x14($sp)
/* A0A24 8009FE24 27BD0028 */  addiu      $sp, $sp, 0x28
/* A0A28 8009FE28 03E00008 */  jr         $ra
/* A0A2C 8009FE2C 00000000 */   nop
