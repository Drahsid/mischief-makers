glabel func_8002ED48
/* 2F948 8002ED48 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2F94C 8002ED4C 000E7880 */  sll        $t7, $t6, 2
/* 2F950 8002ED50 01EE7823 */  subu       $t7, $t7, $t6
/* 2F954 8002ED54 000F7880 */  sll        $t7, $t7, 2
/* 2F958 8002ED58 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2F95C 8002ED5C 01EE7821 */  addu       $t7, $t7, $t6
/* 2F960 8002ED60 000F7880 */  sll        $t7, $t7, 2
/* 2F964 8002ED64 01EE7823 */  subu       $t7, $t7, $t6
/* 2F968 8002ED68 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 2F96C 8002ED6C 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 2F970 8002ED70 000F78C0 */  sll        $t7, $t7, 3
/* 2F974 8002ED74 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2F978 8002ED78 AFA40020 */  sw         $a0, 0x20($sp)
/* 2F97C 8002ED7C 01F81021 */  addu       $v0, $t7, $t8
/* 2F980 8002ED80 24192603 */  addiu      $t9, $zero, 0x2603
/* 2F984 8002ED84 01C02025 */  or         $a0, $t6, $zero
/* 2F988 8002ED88 AFA50024 */  sw         $a1, 0x24($sp)
/* 2F98C 8002ED8C AFA60028 */  sw         $a2, 0x28($sp)
/* 2F990 8002ED90 AFA7002C */  sw         $a3, 0x2c($sp)
/* 2F994 8002ED94 A45900D2 */  sh         $t9, 0xd2($v0)
/* 2F998 8002ED98 0C0078B4 */  jal        func_8001E2D0
/* 2F99C 8002ED9C AFA2001C */   sw        $v0, 0x1c($sp)
/* 2F9A0 8002EDA0 8FA2001C */  lw         $v0, 0x1c($sp)
/* 2F9A4 8002EDA4 87A80026 */  lh         $t0, 0x26($sp)
/* 2F9A8 8002EDA8 87A9002A */  lh         $t1, 0x2a($sp)
/* 2F9AC 8002EDAC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2F9B0 8002EDB0 240A000A */  addiu      $t2, $zero, 0xa
/* 2F9B4 8002EDB4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2F9B8 8002EDB8 A44A00E0 */  sh         $t2, 0xe0($v0)
/* 2F9BC 8002EDBC A4480088 */  sh         $t0, 0x88($v0)
/* 2F9C0 8002EDC0 03E00008 */  jr         $ra
/* 2F9C4 8002EDC4 A449008C */   sh        $t1, 0x8c($v0)
