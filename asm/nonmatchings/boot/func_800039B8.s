glabel func_800039B8
/* 45B8 800039B8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 45BC 800039BC AFBF001C */  sw         $ra, 0x1c($sp)
/* 45C0 800039C0 AFA50024 */  sw         $a1, 0x24($sp)
/* 45C4 800039C4 AFA60028 */  sw         $a2, 0x28($sp)
/* 45C8 800039C8 240E00FF */  addiu      $t6, $zero, 0xff
/* 45CC 800039CC AFAE0010 */  sw         $t6, 0x10($sp)
/* 45D0 800039D0 2406FFFF */  addiu      $a2, $zero, -1
/* 45D4 800039D4 2405FFFF */  addiu      $a1, $zero, -1
/* 45D8 800039D8 AFA00014 */  sw         $zero, 0x14($sp)
/* 45DC 800039DC 0C000C08 */  jal        SFX_func
/* 45E0 800039E0 24070089 */   addiu     $a3, $zero, 0x89
/* 45E4 800039E4 3C018012 */  lui        $at, %hi(D_8011CDF0)
/* 45E8 800039E8 00220821 */  addu       $at, $at, $v0
/* 45EC 800039EC 240F007F */  addiu      $t7, $zero, 0x7f
/* 45F0 800039F0 A02FCDF0 */  sb         $t7, %lo(D_8011CDF0)($at)
/* 45F4 800039F4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 45F8 800039F8 3C018012 */  lui        $at, %hi(D_8011CF18)
/* 45FC 800039FC 00220821 */  addu       $at, $at, $v0
/* 4600 80003A00 24180040 */  addiu      $t8, $zero, 0x40
/* 4604 80003A04 A038CF18 */  sb         $t8, %lo(D_8011CF18)($at)
/* 4608 80003A08 03E00008 */  jr         $ra
/* 460C 80003A0C 27BD0020 */   addiu     $sp, $sp, 0x20
