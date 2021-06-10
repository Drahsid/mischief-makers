glabel func_8002D2F4
/* 2DEF4 8002D2F4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2DEF8 8002D2F8 000E7880 */  sll        $t7, $t6, 2
/* 2DEFC 8002D2FC 01EE7823 */  subu       $t7, $t7, $t6
/* 2DF00 8002D300 000F7880 */  sll        $t7, $t7, 2
/* 2DF04 8002D304 01EE7821 */  addu       $t7, $t7, $t6
/* 2DF08 8002D308 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2DF0C 8002D30C 000F7880 */  sll        $t7, $t7, 2
/* 2DF10 8002D310 01EE7823 */  subu       $t7, $t7, $t6
/* 2DF14 8002D314 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 2DF18 8002D318 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 2DF1C 8002D31C 000F78C0 */  sll        $t7, $t7, 3
/* 2DF20 8002D320 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2DF24 8002D324 AFA40020 */  sw         $a0, 0x20($sp)
/* 2DF28 8002D328 01F81021 */  addu       $v0, $t7, $t8
/* 2DF2C 8002D32C 2419005E */  addiu      $t9, $zero, 0x5e
/* 2DF30 8002D330 01C02025 */  or         $a0, $t6, $zero
/* 2DF34 8002D334 AFA50024 */  sw         $a1, 0x24($sp)
/* 2DF38 8002D338 A45900D2 */  sh         $t9, 0xd2($v0)
/* 2DF3C 8002D33C AFA2001C */  sw         $v0, 0x1c($sp)
/* 2DF40 8002D340 0C0078B4 */  jal        func_8001E2D0
/* 2DF44 8002D344 A7AE0022 */   sh        $t6, 0x22($sp)
/* 2DF48 8002D348 8FA2001C */  lw         $v0, 0x1c($sp)
/* 2DF4C 8002D34C 3C0141A0 */  lui        $at, 0x41a0
/* 2DF50 8002D350 44810000 */  mtc1       $at, $f0
/* 2DF54 8002D354 97A40022 */  lhu        $a0, 0x22($sp)
/* 2DF58 8002D358 24080B11 */  addiu      $t0, $zero, 0xb11
/* 2DF5C 8002D35C 2409000B */  addiu      $t1, $zero, 0xb
/* 2DF60 8002D360 240A0001 */  addiu      $t2, $zero, 1
/* 2DF64 8002D364 240B02D0 */  addiu      $t3, $zero, 0x2d0
/* 2DF68 8002D368 240C00E0 */  addiu      $t4, $zero, 0xe0
/* 2DF6C 8002D36C 00002825 */  or         $a1, $zero, $zero
/* 2DF70 8002D370 A4480094 */  sh         $t0, 0x94($v0)
/* 2DF74 8002D374 AC490080 */  sw         $t1, 0x80($v0)
/* 2DF78 8002D378 A44A00D0 */  sh         $t2, 0xd0($v0)
/* 2DF7C 8002D37C A44B0084 */  sh         $t3, 0x84($v0)
/* 2DF80 8002D380 A44C0090 */  sh         $t4, 0x90($v0)
/* 2DF84 8002D384 E44000B4 */  swc1       $f0, 0xb4($v0)
/* 2DF88 8002D388 0C00ABAD */  jal        func_8002AEB4
/* 2DF8C 8002D38C E44000B8 */   swc1      $f0, 0xb8($v0)
/* 2DF90 8002D390 8FA2001C */  lw         $v0, 0x1c($sp)
/* 2DF94 8002D394 97AF0026 */  lhu        $t7, 0x26($sp)
/* 2DF98 8002D398 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2DF9C 8002D39C 3C0D800E */  lui        $t5, %hi(D_800D8588)
/* 2DFA0 8002D3A0 25AD8588 */  addiu      $t5, $t5, %lo(D_800D8588)
/* 2DFA4 8002D3A4 240E00FF */  addiu      $t6, $zero, 0xff
/* 2DFA8 8002D3A8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2DFAC 8002D3AC AC4D018C */  sw         $t5, 0x18c($v0)
/* 2DFB0 8002D3B0 A04E009F */  sb         $t6, 0x9f($v0)
/* 2DFB4 8002D3B4 AC400150 */  sw         $zero, 0x150($v0)
/* 2DFB8 8002D3B8 03E00008 */  jr         $ra
/* 2DFBC 8002D3BC AC4F0154 */   sw        $t7, 0x154($v0)
