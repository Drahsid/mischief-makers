glabel func_800AE740
/* AF340 800AE740 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AF344 800AE744 848E0000 */  lh         $t6, ($a0)
/* AF348 800AE748 000E7B80 */  sll        $t7, $t6, 0xe
/* AF34C 800AE74C AFAF0018 */  sw         $t7, 0x18($sp)
/* AF350 800AE750 8FB80018 */  lw         $t8, 0x18($sp)
/* AF354 800AE754 0018CBC3 */  sra        $t9, $t8, 0xf
/* AF358 800AE758 A7B90016 */  sh         $t9, 0x16($sp)
/* AF35C 800AE75C 87A80016 */  lh         $t0, 0x16($sp)
/* AF360 800AE760 24094000 */  addiu      $t1, $zero, 0x4000
/* AF364 800AE764 01285023 */  subu       $t2, $t1, $t0
/* AF368 800AE768 A48A0002 */  sh         $t2, 2($a0)
/* AF36C 800AE76C 240B0001 */  addiu      $t3, $zero, 1
/* AF370 800AE770 AC8B002C */  sw         $t3, 0x2c($a0)
/* AF374 800AE774 AFA0001C */  sw         $zero, 0x1c($sp)
.L800AE778:
/* AF378 800AE778 8FAC001C */  lw         $t4, 0x1c($sp)
/* AF37C 800AE77C 000C6840 */  sll        $t5, $t4, 1
/* AF380 800AE780 008D7021 */  addu       $t6, $a0, $t5
/* AF384 800AE784 A5C00008 */  sh         $zero, 8($t6)
/* AF388 800AE788 8FAF001C */  lw         $t7, 0x1c($sp)
/* AF38C 800AE78C 25F80001 */  addiu      $t8, $t7, 1
/* AF390 800AE790 2B010008 */  slti       $at, $t8, 8
/* AF394 800AE794 1420FFF8 */  bnez       $at, .L800AE778
/* AF398 800AE798 AFB8001C */   sw        $t8, 0x1c($sp)
/* AF39C 800AE79C 8FA9001C */  lw         $t1, 0x1c($sp)
/* AF3A0 800AE7A0 87B90016 */  lh         $t9, 0x16($sp)
/* AF3A4 800AE7A4 00094040 */  sll        $t0, $t1, 1
/* AF3A8 800AE7A8 00885021 */  addu       $t2, $a0, $t0
/* AF3AC 800AE7AC A5590008 */  sh         $t9, 8($t2)
/* AF3B0 800AE7B0 8FAB001C */  lw         $t3, 0x1c($sp)
/* AF3B4 800AE7B4 256C0001 */  addiu      $t4, $t3, 1
/* AF3B8 800AE7B8 AFAC001C */  sw         $t4, 0x1c($sp)
/* AF3BC 800AE7BC 87AD0016 */  lh         $t5, 0x16($sp)
/* AF3C0 800AE7C0 3C0140D0 */  lui        $at, 0x40d0
/* AF3C4 800AE7C4 44814800 */  mtc1       $at, $f9
/* AF3C8 800AE7C8 448D2000 */  mtc1       $t5, $f4
/* AF3CC 800AE7CC 44804000 */  mtc1       $zero, $f8
/* AF3D0 800AE7D0 468021A1 */  cvt.d.w    $f6, $f4
/* AF3D4 800AE7D4 46283283 */  div.d      $f10, $f6, $f8
/* AF3D8 800AE7D8 F7AA0008 */  sdc1       $f10, 8($sp)
/* AF3DC 800AE7DC F7AA0000 */  sdc1       $f10, ($sp)
/* AF3E0 800AE7E0 8FAE001C */  lw         $t6, 0x1c($sp)
/* AF3E4 800AE7E4 29C10010 */  slti       $at, $t6, 0x10
/* AF3E8 800AE7E8 10200016 */  beqz       $at, .L800AE844
/* AF3EC 800AE7EC 00000000 */   nop
.L800AE7F0:
/* AF3F0 800AE7F0 D7B00000 */  ldc1       $f16, ($sp)
/* AF3F4 800AE7F4 D7B20008 */  ldc1       $f18, 8($sp)
/* AF3F8 800AE7F8 46328102 */  mul.d      $f4, $f16, $f18
/* AF3FC 800AE7FC F7A40000 */  sdc1       $f4, ($sp)
/* AF400 800AE800 3C0140D0 */  lui        $at, 0x40d0
/* AF404 800AE804 44814800 */  mtc1       $at, $f9
/* AF408 800AE808 D7A60000 */  ldc1       $f6, ($sp)
/* AF40C 800AE80C 44804000 */  mtc1       $zero, $f8
/* AF410 800AE810 8FA9001C */  lw         $t1, 0x1c($sp)
/* AF414 800AE814 46283282 */  mul.d      $f10, $f6, $f8
/* AF418 800AE818 00094040 */  sll        $t0, $t1, 1
/* AF41C 800AE81C 0088C821 */  addu       $t9, $a0, $t0
/* AF420 800AE820 4620540D */  trunc.w.d  $f16, $f10
/* AF424 800AE824 44188000 */  mfc1       $t8, $f16
/* AF428 800AE828 00000000 */  nop
/* AF42C 800AE82C A7380008 */  sh         $t8, 8($t9)
/* AF430 800AE830 8FAA001C */  lw         $t2, 0x1c($sp)
/* AF434 800AE834 254B0001 */  addiu      $t3, $t2, 1
/* AF438 800AE838 29610010 */  slti       $at, $t3, 0x10
/* AF43C 800AE83C 1420FFEC */  bnez       $at, .L800AE7F0
/* AF440 800AE840 AFAB001C */   sw        $t3, 0x1c($sp)
.L800AE844:
/* AF444 800AE844 10000001 */  b          .L800AE84C
/* AF448 800AE848 00000000 */   nop
.L800AE84C:
/* AF44C 800AE84C 03E00008 */  jr         $ra
/* AF450 800AE850 27BD0020 */   addiu     $sp, $sp, 0x20
