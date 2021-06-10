glabel func_800BA1FC
/* BADFC 800BA1FC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BAE00 800BA200 AFBF0014 */  sw         $ra, 0x14($sp)
/* BAE04 800BA204 AFA40020 */  sw         $a0, 0x20($sp)
/* BAE08 800BA208 AFA50024 */  sw         $a1, 0x24($sp)
/* BAE0C 800BA20C AFA60028 */  sw         $a2, 0x28($sp)
/* BAE10 800BA210 AFA7002C */  sw         $a3, 0x2c($sp)
/* BAE14 800BA214 87AE002A */  lh         $t6, 0x2a($sp)
/* BAE18 800BA218 29C10011 */  slti       $at, $t6, 0x11
/* BAE1C 800BA21C 14200003 */  bnez       $at, .L800BA22C
/* BAE20 800BA220 00000000 */   nop
/* BAE24 800BA224 1000000B */  b          .L800BA254
/* BAE28 800BA228 00000000 */   nop
.L800BA22C:
/* BAE2C 800BA22C 27AF002A */  addiu      $t7, $sp, 0x2a
/* BAE30 800BA230 25F80002 */  addiu      $t8, $t7, 2
/* BAE34 800BA234 AFB8001C */  sw         $t8, 0x1c($sp)
/* BAE38 800BA238 8FA40020 */  lw         $a0, 0x20($sp)
/* BAE3C 800BA23C 87A50026 */  lh         $a1, 0x26($sp)
/* BAE40 800BA240 87A6002A */  lh         $a2, 0x2a($sp)
/* BAE44 800BA244 0C02E923 */  jal        func_800BA48C
/* BAE48 800BA248 8FA7001C */   lw        $a3, 0x1c($sp)
/* BAE4C 800BA24C 10000001 */  b          .L800BA254
/* BAE50 800BA250 00000000 */   nop
.L800BA254:
/* BAE54 800BA254 8FBF0014 */  lw         $ra, 0x14($sp)
/* BAE58 800BA258 27BD0020 */  addiu      $sp, $sp, 0x20
/* BAE5C 800BA25C 03E00008 */  jr         $ra
/* BAE60 800BA260 00000000 */   nop
