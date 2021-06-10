glabel func_800AD6F4
/* AE2F4 800AD6F4 AFA50004 */  sw         $a1, 4($sp)
/* AE2F8 800AD6F8 8C8E0018 */  lw         $t6, 0x18($a0)
/* AE2FC 800AD6FC 11C00009 */  beqz       $t6, .L800AD724
/* AE300 800AD700 00000000 */   nop
/* AE304 800AD704 8C8F0018 */  lw         $t7, 0x18($a0)
/* AE308 800AD708 C7A40004 */  lwc1       $f4, 4($sp)
/* AE30C 800AD70C C5E60014 */  lwc1       $f6, 0x14($t7)
/* AE310 800AD710 46062202 */  mul.s      $f8, $f4, $f6
/* AE314 800AD714 4600428D */  trunc.w.s  $f10, $f8
/* AE318 800AD718 44195000 */  mfc1       $t9, $f10
/* AE31C 800AD71C 10000003 */  b          .L800AD72C
/* AE320 800AD720 AC990024 */   sw        $t9, 0x24($a0)
.L800AD724:
/* AE324 800AD724 240801E8 */  addiu      $t0, $zero, 0x1e8
/* AE328 800AD728 AC880024 */  sw         $t0, 0x24($a0)
.L800AD72C:
/* AE32C 800AD72C 10000001 */  b          .L800AD734
/* AE330 800AD730 00000000 */   nop
.L800AD734:
/* AE334 800AD734 03E00008 */  jr         $ra
/* AE338 800AD738 00000000 */   nop
/* AE33C 800AD73C 00000000 */  nop
