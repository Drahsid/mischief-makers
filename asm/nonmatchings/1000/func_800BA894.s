glabel func_800BA894
/* BB494 800BA894 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* BB498 800BA898 AFBF0014 */  sw         $ra, 0x14($sp)
/* BB49C 800BA89C AFA40030 */  sw         $a0, 0x30($sp)
/* BB4A0 800BA8A0 AFA60038 */  sw         $a2, 0x38($sp)
/* BB4A4 800BA8A4 AFA7003C */  sw         $a3, 0x3c($sp)
/* BB4A8 800BA8A8 8FA40038 */  lw         $a0, 0x38($sp)
/* BB4AC 800BA8AC 8FA5003C */  lw         $a1, 0x3c($sp)
/* BB4B0 800BA8B0 8FA60040 */  lw         $a2, 0x40($sp)
/* BB4B4 800BA8B4 0C0290F7 */  jal        func_800A43DC
/* BB4B8 800BA8B8 8FA70044 */   lw        $a3, 0x44($sp)
/* BB4BC 800BA8BC AFA20020 */  sw         $v0, 0x20($sp)
/* BB4C0 800BA8C0 AFA30024 */  sw         $v1, 0x24($sp)
/* BB4C4 800BA8C4 8FA40040 */  lw         $a0, 0x40($sp)
/* BB4C8 800BA8C8 8FA50044 */  lw         $a1, 0x44($sp)
/* BB4CC 800BA8CC 8FA60020 */  lw         $a2, 0x20($sp)
/* BB4D0 800BA8D0 0C029112 */  jal        func_800A4448
/* BB4D4 800BA8D4 8FA70024 */   lw        $a3, 0x24($sp)
/* BB4D8 800BA8D8 8FAE0038 */  lw         $t6, 0x38($sp)
/* BB4DC 800BA8DC 8FAF003C */  lw         $t7, 0x3c($sp)
/* BB4E0 800BA8E0 01C2C023 */  subu       $t8, $t6, $v0
/* BB4E4 800BA8E4 01E3082B */  sltu       $at, $t7, $v1
/* BB4E8 800BA8E8 0301C023 */  subu       $t8, $t8, $at
/* BB4EC 800BA8EC 01E3C823 */  subu       $t9, $t7, $v1
/* BB4F0 800BA8F0 AFB9002C */  sw         $t9, 0x2c($sp)
/* BB4F4 800BA8F4 AFB80028 */  sw         $t8, 0x28($sp)
/* BB4F8 800BA8F8 8FA80020 */  lw         $t0, 0x20($sp)
/* BB4FC 800BA8FC 8FA90024 */  lw         $t1, 0x24($sp)
/* BB500 800BA900 1D000023 */  bgtz       $t0, .L800BA990
/* BB504 800BA904 00000000 */   nop
/* BB508 800BA908 05000003 */  bltz       $t0, .L800BA918
/* BB50C 800BA90C 00000000 */   nop
/* BB510 800BA910 1000001F */  b          .L800BA990
/* BB514 800BA914 00000000 */   nop
.L800BA918:
/* BB518 800BA918 8FAA0028 */  lw         $t2, 0x28($sp)
/* BB51C 800BA91C 8FAB002C */  lw         $t3, 0x2c($sp)
/* BB520 800BA920 0540001B */  bltz       $t2, .L800BA990
/* BB524 800BA924 00000000 */   nop
/* BB528 800BA928 1D400003 */  bgtz       $t2, .L800BA938
/* BB52C 800BA92C 00000000 */   nop
/* BB530 800BA930 11600017 */  beqz       $t3, .L800BA990
/* BB534 800BA934 00000000 */   nop
.L800BA938:
/* BB538 800BA938 27AC0020 */  addiu      $t4, $sp, 0x20
/* BB53C 800BA93C AFAC001C */  sw         $t4, 0x1c($sp)
/* BB540 800BA940 8D8F0004 */  lw         $t7, 4($t4)
/* BB544 800BA944 8D8E0000 */  lw         $t6, ($t4)
/* BB548 800BA948 25F90001 */  addiu      $t9, $t7, 1
/* BB54C 800BA94C 2F210001 */  sltiu      $at, $t9, 1
/* BB550 800BA950 01C1C021 */  addu       $t8, $t6, $at
/* BB554 800BA954 AD980000 */  sw         $t8, ($t4)
/* BB558 800BA958 AD990004 */  sw         $t9, 4($t4)
/* BB55C 800BA95C 27AD0020 */  addiu      $t5, $sp, 0x20
/* BB560 800BA960 25A80008 */  addiu      $t0, $t5, 8
/* BB564 800BA964 AFA80018 */  sw         $t0, 0x18($sp)
/* BB568 800BA968 8DAB000C */  lw         $t3, 0xc($t5)
/* BB56C 800BA96C 8DAA0008 */  lw         $t2, 8($t5)
/* BB570 800BA970 8FAE0040 */  lw         $t6, 0x40($sp)
/* BB574 800BA974 8FAF0044 */  lw         $t7, 0x44($sp)
/* BB578 800BA978 014EC023 */  subu       $t8, $t2, $t6
/* BB57C 800BA97C 016F082B */  sltu       $at, $t3, $t7
/* BB580 800BA980 0301C023 */  subu       $t8, $t8, $at
/* BB584 800BA984 016FC823 */  subu       $t9, $t3, $t7
/* BB588 800BA988 ADB9000C */  sw         $t9, 0xc($t5)
/* BB58C 800BA98C ADB80008 */  sw         $t8, 8($t5)
.L800BA990:
/* BB590 800BA990 27AC0020 */  addiu      $t4, $sp, 0x20
/* BB594 800BA994 8D810000 */  lw         $at, ($t4)
/* BB598 800BA998 8FA90030 */  lw         $t1, 0x30($sp)
/* BB59C 800BA99C AD210000 */  sw         $at, ($t1)
/* BB5A0 800BA9A0 8D8A0004 */  lw         $t2, 4($t4)
/* BB5A4 800BA9A4 AD2A0004 */  sw         $t2, 4($t1)
/* BB5A8 800BA9A8 8D810008 */  lw         $at, 8($t4)
/* BB5AC 800BA9AC AD210008 */  sw         $at, 8($t1)
/* BB5B0 800BA9B0 8D8A000C */  lw         $t2, 0xc($t4)
/* BB5B4 800BA9B4 AD2A000C */  sw         $t2, 0xc($t1)
/* BB5B8 800BA9B8 10000003 */  b          .L800BA9C8
/* BB5BC 800BA9BC 8FA20030 */   lw        $v0, 0x30($sp)
/* BB5C0 800BA9C0 10000001 */  b          .L800BA9C8
/* BB5C4 800BA9C4 00000000 */   nop
.L800BA9C8:
/* BB5C8 800BA9C8 8FBF0014 */  lw         $ra, 0x14($sp)
/* BB5CC 800BA9CC 27BD0030 */  addiu      $sp, $sp, 0x30
/* BB5D0 800BA9D0 03E00008 */  jr         $ra
/* BB5D4 800BA9D4 00000000 */   nop
/* BB5D8 800BA9D8 00000000 */  nop
/* BB5DC 800BA9DC 00000000 */  nop
