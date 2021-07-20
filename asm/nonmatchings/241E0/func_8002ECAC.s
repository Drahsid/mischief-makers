glabel func_8002ECAC
/* 2F8AC 8002ECAC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2F8B0 8002ECB0 000E7880 */  sll        $t7, $t6, 2
/* 2F8B4 8002ECB4 01EE7823 */  subu       $t7, $t7, $t6
/* 2F8B8 8002ECB8 000F7880 */  sll        $t7, $t7, 2
/* 2F8BC 8002ECBC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2F8C0 8002ECC0 01EE7821 */  addu       $t7, $t7, $t6
/* 2F8C4 8002ECC4 000F7880 */  sll        $t7, $t7, 2
/* 2F8C8 8002ECC8 01EE7823 */  subu       $t7, $t7, $t6
/* 2F8CC 8002ECCC 3C18800F */  lui        $t8, %hi(gActors)
/* 2F8D0 8002ECD0 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 2F8D4 8002ECD4 000F78C0 */  sll        $t7, $t7, 3
/* 2F8D8 8002ECD8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2F8DC 8002ECDC AFA40020 */  sw         $a0, 0x20($sp)
/* 2F8E0 8002ECE0 01F81021 */  addu       $v0, $t7, $t8
/* 2F8E4 8002ECE4 24192600 */  addiu      $t9, $zero, 0x2600
/* 2F8E8 8002ECE8 01C02025 */  or         $a0, $t6, $zero
/* 2F8EC 8002ECEC AFA50024 */  sw         $a1, 0x24($sp)
/* 2F8F0 8002ECF0 AFA60028 */  sw         $a2, 0x28($sp)
/* 2F8F4 8002ECF4 AFA7002C */  sw         $a3, 0x2c($sp)
/* 2F8F8 8002ECF8 A45900D2 */  sh         $t9, 0xd2($v0)
/* 2F8FC 8002ECFC 0C0078B4 */  jal        func_8001E2D0
/* 2F900 8002ED00 AFA2001C */   sw        $v0, 0x1c($sp)
/* 2F904 8002ED04 8FA2001C */  lw         $v0, 0x1c($sp)
/* 2F908 8002ED08 87A80026 */  lh         $t0, 0x26($sp)
/* 2F90C 8002ED0C 87A9002A */  lh         $t1, 0x2a($sp)
/* 2F910 8002ED10 8FAA002C */  lw         $t2, 0x2c($sp)
/* 2F914 8002ED14 8FAB0030 */  lw         $t3, 0x30($sp)
/* 2F918 8002ED18 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2F91C 8002ED1C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2F920 8002ED20 A4480088 */  sh         $t0, 0x88($v0)
/* 2F924 8002ED24 A449008C */  sh         $t1, 0x8c($v0)
/* 2F928 8002ED28 AC4A00EC */  sw         $t2, 0xec($v0)
/* 2F92C 8002ED2C 03E00008 */  jr         $ra
/* 2F930 8002ED30 AC4B00F0 */   sw        $t3, 0xf0($v0)
