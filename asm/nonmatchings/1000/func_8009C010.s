glabel func_8009C010
/* 9CC10 8009C010 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9CC14 8009C014 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9CC18 8009C018 AFA40018 */  sw         $a0, 0x18($sp)
/* 9CC1C 8009C01C AFA5001C */  sw         $a1, 0x1c($sp)
/* 9CC20 8009C020 AFA60020 */  sw         $a2, 0x20($sp)
/* 9CC24 8009C024 8FAE0018 */  lw         $t6, 0x18($sp)
/* 9CC28 8009C028 91CF000E */  lbu        $t7, 0xe($t6)
/* 9CC2C 8009C02C 11E00003 */  beqz       $t7, .L8009C03C
/* 9CC30 8009C030 00000000 */   nop
/* 9CC34 8009C034 1000001A */  b          .L8009C0A0
/* 9CC38 8009C038 00000000 */   nop
.L8009C03C:
/* 9CC3C 8009C03C 8FB90018 */  lw         $t9, 0x18($sp)
/* 9CC40 8009C040 24180001 */  addiu      $t8, $zero, 1
/* 9CC44 8009C044 A338000E */  sb         $t8, 0xe($t9)
/* 9CC48 8009C048 8FA80018 */  lw         $t0, 0x18($sp)
/* 9CC4C 8009C04C 8FAA001C */  lw         $t2, 0x1c($sp)
/* 9CC50 8009C050 8D090000 */  lw         $t1, ($t0)
/* 9CC54 8009C054 012A5821 */  addu       $t3, $t1, $t2
/* 9CC58 8009C058 AD0B0000 */  sw         $t3, ($t0)
/* 9CC5C 8009C05C 8FAC0018 */  lw         $t4, 0x18($sp)
/* 9CC60 8009C060 8FAE001C */  lw         $t6, 0x1c($sp)
/* 9CC64 8009C064 8D8D0004 */  lw         $t5, 4($t4)
/* 9CC68 8009C068 01AE7821 */  addu       $t7, $t5, $t6
/* 9CC6C 8009C06C AD8F0004 */  sw         $t7, 4($t4)
/* 9CC70 8009C070 8FB80018 */  lw         $t8, 0x18($sp)
/* 9CC74 8009C074 8FA9001C */  lw         $t1, 0x1c($sp)
/* 9CC78 8009C078 8F190008 */  lw         $t9, 8($t8)
/* 9CC7C 8009C07C 03295021 */  addu       $t2, $t9, $t1
/* 9CC80 8009C080 AF0A0008 */  sw         $t2, 8($t8)
/* 9CC84 8009C084 8FAB0018 */  lw         $t3, 0x18($sp)
/* 9CC88 8009C088 8FA5001C */  lw         $a1, 0x1c($sp)
/* 9CC8C 8009C08C 8FA60020 */  lw         $a2, 0x20($sp)
/* 9CC90 8009C090 0C02702C */  jal        func_8009C0B0
/* 9CC94 8009C094 8D640008 */   lw        $a0, 8($t3)
/* 9CC98 8009C098 10000001 */  b          .L8009C0A0
/* 9CC9C 8009C09C 00000000 */   nop
.L8009C0A0:
/* 9CCA0 8009C0A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9CCA4 8009C0A4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 9CCA8 8009C0A8 03E00008 */  jr         $ra
/* 9CCAC 8009C0AC 00000000 */   nop
