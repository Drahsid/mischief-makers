glabel func_8009FF40
/* A0B40 8009FF40 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A0B44 8009FF44 AFBF0014 */  sw         $ra, 0x14($sp)
/* A0B48 8009FF48 AFA40028 */  sw         $a0, 0x28($sp)
/* A0B4C 8009FF4C 240E0011 */  addiu      $t6, $zero, 0x11
/* A0B50 8009FF50 A7AE0018 */  sh         $t6, 0x18($sp)
/* A0B54 8009FF54 8FA40028 */  lw         $a0, 0x28($sp)
/* A0B58 8009FF58 27A50018 */  addiu      $a1, $sp, 0x18
/* A0B5C 8009FF5C 00003025 */  or         $a2, $zero, $zero
/* A0B60 8009FF60 0C02B620 */  jal        func_800AD880
/* A0B64 8009FF64 24840048 */   addiu     $a0, $a0, 0x48
/* A0B68 8009FF68 10000001 */  b          .L8009FF70
/* A0B6C 8009FF6C 00000000 */   nop
.L8009FF70:
/* A0B70 8009FF70 8FBF0014 */  lw         $ra, 0x14($sp)
/* A0B74 8009FF74 27BD0028 */  addiu      $sp, $sp, 0x28
/* A0B78 8009FF78 03E00008 */  jr         $ra
/* A0B7C 8009FF7C 00000000 */   nop
