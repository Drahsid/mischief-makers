glabel func_800AD33C
/* ADF3C 800AD33C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* ADF40 800AD340 AFBF0014 */  sw         $ra, 0x14($sp)
/* ADF44 800AD344 AFA40020 */  sw         $a0, 0x20($sp)
/* ADF48 800AD348 AFA50024 */  sw         $a1, 0x24($sp)
/* ADF4C 800AD34C AFA00018 */  sw         $zero, 0x18($sp)
/* ADF50 800AD350 8FAE0018 */  lw         $t6, 0x18($sp)
/* ADF54 800AD354 AFA0001C */  sw         $zero, 0x1c($sp)
/* ADF58 800AD358 15C0000C */  bnez       $t6, .L800AD38C
/* ADF5C 800AD35C 00000000 */   nop
.L800AD360:
/* ADF60 800AD360 8FB8001C */  lw         $t8, 0x1c($sp)
/* ADF64 800AD364 8FAF0024 */  lw         $t7, 0x24($sp)
/* ADF68 800AD368 0018C880 */  sll        $t9, $t8, 2
/* ADF6C 800AD36C 01F94021 */  addu       $t0, $t7, $t9
/* ADF70 800AD370 8D09000C */  lw         $t1, 0xc($t0)
/* ADF74 800AD374 AFA90018 */  sw         $t1, 0x18($sp)
/* ADF78 800AD378 8FAA001C */  lw         $t2, 0x1c($sp)
/* ADF7C 800AD37C 8FAC0018 */  lw         $t4, 0x18($sp)
/* ADF80 800AD380 254B0001 */  addiu      $t3, $t2, 1
/* ADF84 800AD384 1180FFF6 */  beqz       $t4, .L800AD360
/* ADF88 800AD388 AFAB001C */   sw        $t3, 0x1c($sp)
.L800AD38C:
/* ADF8C 800AD38C 8FAD0020 */  lw         $t5, 0x20($sp)
/* ADF90 800AD390 AFA0001C */  sw         $zero, 0x1c($sp)
/* ADF94 800AD394 91AE0034 */  lbu        $t6, 0x34($t5)
/* ADF98 800AD398 19C00010 */  blez       $t6, .L800AD3DC
/* ADF9C 800AD39C 00000000 */   nop
.L800AD3A0:
/* ADFA0 800AD3A0 8FA40020 */  lw         $a0, 0x20($sp)
/* ADFA4 800AD3A4 0C02B525 */  jal        func_800AD494
/* ADFA8 800AD3A8 8FA5001C */   lw        $a1, 0x1c($sp)
/* ADFAC 800AD3AC 8FA40020 */  lw         $a0, 0x20($sp)
/* ADFB0 800AD3B0 8FA50018 */  lw         $a1, 0x18($sp)
/* ADFB4 800AD3B4 0C02B509 */  jal        func_800AD424
/* ADFB8 800AD3B8 8FA6001C */   lw        $a2, 0x1c($sp)
/* ADFBC 800AD3BC 8FB8001C */  lw         $t8, 0x1c($sp)
/* ADFC0 800AD3C0 8FB90020 */  lw         $t9, 0x20($sp)
/* ADFC4 800AD3C4 270F0001 */  addiu      $t7, $t8, 1
/* ADFC8 800AD3C8 AFAF001C */  sw         $t7, 0x1c($sp)
/* ADFCC 800AD3CC 93280034 */  lbu        $t0, 0x34($t9)
/* ADFD0 800AD3D0 01E8082A */  slt        $at, $t7, $t0
/* ADFD4 800AD3D4 1420FFF2 */  bnez       $at, .L800AD3A0
/* ADFD8 800AD3D8 00000000 */   nop
.L800AD3DC:
/* ADFDC 800AD3DC 8FA90024 */  lw         $t1, 0x24($sp)
/* ADFE0 800AD3E0 8D2A0008 */  lw         $t2, 8($t1)
/* ADFE4 800AD3E4 11400009 */  beqz       $t2, .L800AD40C
/* ADFE8 800AD3E8 00000000 */   nop
/* ADFEC 800AD3EC 8FA40020 */  lw         $a0, 0x20($sp)
/* ADFF0 800AD3F0 0C02B525 */  jal        func_800AD494
/* ADFF4 800AD3F4 8FA5001C */   lw        $a1, 0x1c($sp)
/* ADFF8 800AD3F8 8FAB0024 */  lw         $t3, 0x24($sp)
/* ADFFC 800AD3FC 8FA40020 */  lw         $a0, 0x20($sp)
/* AE000 800AD400 24060009 */  addiu      $a2, $zero, 9
/* AE004 800AD404 0C02B509 */  jal        func_800AD424
/* AE008 800AD408 8D650008 */   lw        $a1, 8($t3)
.L800AD40C:
/* AE00C 800AD40C 10000001 */  b          .L800AD414
/* AE010 800AD410 00000000 */   nop
.L800AD414:
/* AE014 800AD414 8FBF0014 */  lw         $ra, 0x14($sp)
/* AE018 800AD418 27BD0020 */  addiu      $sp, $sp, 0x20
/* AE01C 800AD41C 03E00008 */  jr         $ra
/* AE020 800AD420 00000000 */   nop
