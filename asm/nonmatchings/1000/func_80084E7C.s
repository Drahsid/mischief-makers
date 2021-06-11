glabel func_80084E7C
/* 85A7C 80084E7C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 85A80 80084E80 000E7880 */  sll        $t7, $t6, 2
/* 85A84 80084E84 01EE7823 */  subu       $t7, $t7, $t6
/* 85A88 80084E88 000F7880 */  sll        $t7, $t7, 2
/* 85A8C 80084E8C 01EE7821 */  addu       $t7, $t7, $t6
/* 85A90 80084E90 000F7880 */  sll        $t7, $t7, 2
/* 85A94 80084E94 01EE7823 */  subu       $t7, $t7, $t6
/* 85A98 80084E98 3C18800F */  lui        $t8, %hi(gActors)
/* 85A9C 80084E9C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 85AA0 80084EA0 000F78C0 */  sll        $t7, $t7, 3
/* 85AA4 80084EA4 01F81821 */  addu       $v1, $t7, $t8
/* 85AA8 80084EA8 8C6200EC */  lw         $v0, 0xec($v1)
/* 85AAC 80084EAC 8C7900F0 */  lw         $t9, 0xf0($v1)
/* 85AB0 80084EB0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 85AB4 80084EB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 85AB8 80084EB8 AFA40020 */  sw         $a0, 0x20($sp)
/* 85ABC 80084EBC AC620158 */  sw         $v0, 0x158($v1)
/* 85AC0 80084EC0 04410003 */  bgez       $v0, .L80084ED0
/* 85AC4 80084EC4 AC79015C */   sw        $t9, 0x15c($v1)
/* 85AC8 80084EC8 1000000A */  b          .L80084EF4
/* 85ACC 80084ECC AC60016C */   sw        $zero, 0x16c($v1)
.L80084ED0:
/* 85AD0 80084ED0 18400003 */  blez       $v0, .L80084EE0
/* 85AD4 80084ED4 24080001 */   addiu     $t0, $zero, 1
/* 85AD8 80084ED8 10000006 */  b          .L80084EF4
/* 85ADC 80084EDC AC68016C */   sw        $t0, 0x16c($v1)
.L80084EE0:
/* 85AE0 80084EE0 0C0005E3 */  jal        func_8000178C
/* 85AE4 80084EE4 AFA3001C */   sw        $v1, 0x1c($sp)
/* 85AE8 80084EE8 8FA3001C */  lw         $v1, 0x1c($sp)
/* 85AEC 80084EEC 30490001 */  andi       $t1, $v0, 1
/* 85AF0 80084EF0 AC69016C */  sw         $t1, 0x16c($v1)
.L80084EF4:
/* 85AF4 80084EF4 8C6A016C */  lw         $t2, 0x16c($v1)
/* 85AF8 80084EF8 3C01437F */  lui        $at, 0x437f
/* 85AFC 80084EFC 11400005 */  beqz       $t2, .L80084F14
/* 85B00 80084F00 00000000 */   nop
/* 85B04 80084F04 3C01800F */  lui        $at, %hi(D_800ED148)
/* 85B08 80084F08 C424D148 */  lwc1       $f4, %lo(D_800ED148)($at)
/* 85B0C 80084F0C 10000004 */  b          .L80084F20
/* 85B10 80084F10 E464014C */   swc1      $f4, 0x14c($v1)
.L80084F14:
/* 85B14 80084F14 44813000 */  mtc1       $at, $f6
/* 85B18 80084F18 00000000 */  nop
/* 85B1C 80084F1C E466014C */  swc1       $f6, 0x14c($v1)
.L80084F20:
/* 85B20 80084F20 3C01800F */  lui        $at, %hi(D_800ED14C)
/* 85B24 80084F24 C428D14C */  lwc1       $f8, %lo(D_800ED14C)($at)
/* 85B28 80084F28 8FBF0014 */  lw         $ra, 0x14($sp)
/* 85B2C 80084F2C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 85B30 80084F30 03E00008 */  jr         $ra
/* 85B34 80084F34 E4680130 */   swc1      $f8, 0x130($v1)
