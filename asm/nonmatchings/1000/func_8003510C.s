glabel func_8003510C
/* 35D0C 8003510C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 35D10 80035110 240A0198 */  addiu      $t2, $zero, 0x198
/* 35D14 80035114 01CA0019 */  multu      $t6, $t2
/* 35D18 80035118 3C09800F */  lui        $t1, %hi(gActors)
/* 35D1C 8003511C 2529F510 */  addiu      $t1, $t1, %lo(gActors)
/* 35D20 80035120 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 35D24 80035124 AFA40020 */  sw         $a0, 0x20($sp)
/* 35D28 80035128 01C02025 */  or         $a0, $t6, $zero
/* 35D2C 8003512C AFA50024 */  sw         $a1, 0x24($sp)
/* 35D30 80035130 AFA60028 */  sw         $a2, 0x28($sp)
/* 35D34 80035134 AFA7002C */  sw         $a3, 0x2c($sp)
/* 35D38 80035138 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 35D3C 8003513C 30D8FFFF */  andi       $t8, $a2, 0xffff
/* 35D40 80035140 30F9FFFF */  andi       $t9, $a3, 0xffff
/* 35D44 80035144 00005812 */  mflo       $t3
/* 35D48 80035148 012B1021 */  addu       $v0, $t1, $t3
/* 35D4C 8003514C 8C480098 */  lw         $t0, 0x98($v0)
/* 35D50 80035150 944C00CC */  lhu        $t4, 0xcc($v0)
/* 35D54 80035154 310E0200 */  andi       $t6, $t0, 0x200
/* 35D58 80035158 03203825 */  or         $a3, $t9, $zero
/* 35D5C 8003515C 03003025 */  or         $a2, $t8, $zero
/* 35D60 80035160 01E02825 */  or         $a1, $t7, $zero
/* 35D64 80035164 AFBF001C */  sw         $ra, 0x1c($sp)
/* 35D68 80035168 15C00012 */  bnez       $t6, .L800351B4
/* 35D6C 8003516C 318D00FF */   andi      $t5, $t4, 0xff
/* 35D70 80035170 310F0020 */  andi       $t7, $t0, 0x20
/* 35D74 80035174 11E00010 */  beqz       $t7, .L800351B8
/* 35D78 80035178 2402FFFF */   addiu     $v0, $zero, -1
/* 35D7C 8003517C 01AA0019 */  multu      $t5, $t2
/* 35D80 80035180 24010018 */  addiu      $at, $zero, 0x18
/* 35D84 80035184 97AC0032 */  lhu        $t4, 0x32($sp)
/* 35D88 80035188 0000C012 */  mflo       $t8
/* 35D8C 8003518C 0138C821 */  addu       $t9, $t1, $t8
/* 35D90 80035190 972B00D2 */  lhu        $t3, 0xd2($t9)
/* 35D94 80035194 00000000 */  nop
/* 35D98 80035198 15610007 */  bne        $t3, $at, .L800351B8
/* 35D9C 8003519C 2402FFFF */   addiu     $v0, $zero, -1
/* 35DA0 800351A0 AFAC0010 */  sw         $t4, 0x10($sp)
/* 35DA4 800351A4 0C00D384 */  jal        func_80034E10
/* 35DA8 800351A8 AFAD0014 */   sw        $t5, 0x14($sp)
/* 35DAC 800351AC 10000003 */  b          .L800351BC
/* 35DB0 800351B0 8FBF001C */   lw        $ra, 0x1c($sp)
.L800351B4:
/* 35DB4 800351B4 2402FFFF */  addiu      $v0, $zero, -1
.L800351B8:
/* 35DB8 800351B8 8FBF001C */  lw         $ra, 0x1c($sp)
.L800351BC:
/* 35DBC 800351BC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 35DC0 800351C0 03E00008 */  jr         $ra
/* 35DC4 800351C4 00000000 */   nop
