glabel func_8007CE24
/* 7DA24 8007CE24 308EFFFF */  andi       $t6, $a0, 0xffff
/* 7DA28 8007CE28 000E7880 */  sll        $t7, $t6, 2
/* 7DA2C 8007CE2C 01EE7823 */  subu       $t7, $t7, $t6
/* 7DA30 8007CE30 000F7880 */  sll        $t7, $t7, 2
/* 7DA34 8007CE34 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7DA38 8007CE38 01EE7821 */  addu       $t7, $t7, $t6
/* 7DA3C 8007CE3C 000F7880 */  sll        $t7, $t7, 2
/* 7DA40 8007CE40 01EE7823 */  subu       $t7, $t7, $t6
/* 7DA44 8007CE44 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 7DA48 8007CE48 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 7DA4C 8007CE4C 000F78C0 */  sll        $t7, $t7, 3
/* 7DA50 8007CE50 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7DA54 8007CE54 AFA40020 */  sw         $a0, 0x20($sp)
/* 7DA58 8007CE58 01F81021 */  addu       $v0, $t7, $t8
/* 7DA5C 8007CE5C 24190028 */  addiu      $t9, $zero, 0x28
/* 7DA60 8007CE60 01C02025 */  or         $a0, $t6, $zero
/* 7DA64 8007CE64 AFA50024 */  sw         $a1, 0x24($sp)
/* 7DA68 8007CE68 AFA60028 */  sw         $a2, 0x28($sp)
/* 7DA6C 8007CE6C AFA7002C */  sw         $a3, 0x2c($sp)
/* 7DA70 8007CE70 A45900D2 */  sh         $t9, 0xd2($v0)
/* 7DA74 8007CE74 0C0078B4 */  jal        func_8001E2D0
/* 7DA78 8007CE78 AFA2001C */   sw        $v0, 0x1c($sp)
/* 7DA7C 8007CE7C 8FA2001C */  lw         $v0, 0x1c($sp)
/* 7DA80 8007CE80 87AA002A */  lh         $t2, 0x2a($sp)
/* 7DA84 8007CE84 8C480080 */  lw         $t0, 0x80($v0)
/* 7DA88 8007CE88 87AB002E */  lh         $t3, 0x2e($sp)
/* 7DA8C 8007CE8C 97AC0032 */  lhu        $t4, 0x32($sp)
/* 7DA90 8007CE90 97AD0026 */  lhu        $t5, 0x26($sp)
/* 7DA94 8007CE94 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7DA98 8007CE98 3509000A */  ori        $t1, $t0, 0xa
/* 7DA9C 8007CE9C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7DAA0 8007CEA0 AC490080 */  sw         $t1, 0x80($v0)
/* 7DAA4 8007CEA4 A44A0088 */  sh         $t2, 0x88($v0)
/* 7DAA8 8007CEA8 A44B008C */  sh         $t3, 0x8c($v0)
/* 7DAAC 8007CEAC AC4C0150 */  sw         $t4, 0x150($v0)
/* 7DAB0 8007CEB0 03E00008 */  jr         $ra
/* 7DAB4 8007CEB4 AC4D0154 */   sw        $t5, 0x154($v0)
