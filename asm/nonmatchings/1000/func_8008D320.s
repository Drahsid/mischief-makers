glabel func_8008D320
/* 8DF20 8008D320 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8DF24 8008D324 000E7880 */  sll        $t7, $t6, 2
/* 8DF28 8008D328 01EE7823 */  subu       $t7, $t7, $t6
/* 8DF2C 8008D32C 000F7880 */  sll        $t7, $t7, 2
/* 8DF30 8008D330 01EE7821 */  addu       $t7, $t7, $t6
/* 8DF34 8008D334 000F7880 */  sll        $t7, $t7, 2
/* 8DF38 8008D338 01EE7823 */  subu       $t7, $t7, $t6
/* 8DF3C 8008D33C 3C18800F */  lui        $t8, %hi(gActors)
/* 8DF40 8008D340 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 8DF44 8008D344 000F78C0 */  sll        $t7, $t7, 3
/* 8DF48 8008D348 01F81021 */  addu       $v0, $t7, $t8
/* 8DF4C 8008D34C 94480094 */  lhu        $t0, 0x94($v0)
/* 8DF50 8008D350 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8DF54 8008D354 3C0141A0 */  lui        $at, 0x41a0
/* 8DF58 8008D358 44812000 */  mtc1       $at, $f4
/* 8DF5C 8008D35C 3C0A800D */  lui        $t2, %hi(D_800D4518)
/* 8DF60 8008D360 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8DF64 8008D364 AFA40018 */  sw         $a0, 0x18($sp)
/* 8DF68 8008D368 241900B0 */  addiu      $t9, $zero, 0xb0
/* 8DF6C 8008D36C 254A4518 */  addiu      $t2, $t2, %lo(D_800D4518)
/* 8DF70 8008D370 35090008 */  ori        $t1, $t0, 8
/* 8DF74 8008D374 01C02025 */  or         $a0, $t6, $zero
/* 8DF78 8008D378 A45900D0 */  sh         $t9, 0xd0($v0)
/* 8DF7C 8008D37C A4490094 */  sh         $t1, 0x94($v0)
/* 8DF80 8008D380 AC4A018C */  sw         $t2, 0x18c($v0)
/* 8DF84 8008D384 0C02344A */  jal        func_8008D128
/* 8DF88 8008D388 E4440120 */   swc1      $f4, 0x120($v0)
/* 8DF8C 8008D38C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8DF90 8008D390 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8DF94 8008D394 03E00008 */  jr         $ra
/* 8DF98 8008D398 00000000 */   nop
