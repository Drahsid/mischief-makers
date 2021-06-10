glabel func_8009E480
/* 9F080 8009E480 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9F084 8009E484 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9F088 8009E488 AFA40028 */  sw         $a0, 0x28($sp)
/* 9F08C 8009E48C AFA5002C */  sw         $a1, 0x2c($sp)
/* 9F090 8009E490 240E000A */  addiu      $t6, $zero, 0xa
/* 9F094 8009E494 A7AE0018 */  sh         $t6, 0x18($sp)
/* 9F098 8009E498 87AF002E */  lh         $t7, 0x2e($sp)
/* 9F09C 8009E49C A7AF001C */  sh         $t7, 0x1c($sp)
/* 9F0A0 8009E4A0 8FA40028 */  lw         $a0, 0x28($sp)
/* 9F0A4 8009E4A4 27A50018 */  addiu      $a1, $sp, 0x18
/* 9F0A8 8009E4A8 00003025 */  or         $a2, $zero, $zero
/* 9F0AC 8009E4AC 0C02B620 */  jal        func_800AD880
/* 9F0B0 8009E4B0 24840048 */   addiu     $a0, $a0, 0x48
/* 9F0B4 8009E4B4 10000001 */  b          .L8009E4BC
/* 9F0B8 8009E4B8 00000000 */   nop
.L8009E4BC:
/* 9F0BC 8009E4BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9F0C0 8009E4C0 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9F0C4 8009E4C4 03E00008 */  jr         $ra
/* 9F0C8 8009E4C8 00000000 */   nop
/* 9F0CC 8009E4CC 00000000 */  nop
