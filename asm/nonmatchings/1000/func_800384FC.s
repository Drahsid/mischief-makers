glabel func_800384FC
/* 390FC 800384FC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 39100 80038500 000E7880 */  sll        $t7, $t6, 2
/* 39104 80038504 01EE7823 */  subu       $t7, $t7, $t6
/* 39108 80038508 000F7880 */  sll        $t7, $t7, 2
/* 3910C 8003850C 01EE7821 */  addu       $t7, $t7, $t6
/* 39110 80038510 000F7880 */  sll        $t7, $t7, 2
/* 39114 80038514 01EE7823 */  subu       $t7, $t7, $t6
/* 39118 80038518 3C18800F */  lui        $t8, %hi(gActors)
/* 3911C 8003851C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 39120 80038520 000F78C0 */  sll        $t7, $t7, 3
/* 39124 80038524 01F81821 */  addu       $v1, $t7, $t8
/* 39128 80038528 8C790150 */  lw         $t9, 0x150($v1)
/* 3912C 8003852C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 39130 80038530 001940C0 */  sll        $t0, $t9, 3
/* 39134 80038534 AFBF0014 */  sw         $ra, 0x14($sp)
/* 39138 80038538 AFA40020 */  sw         $a0, 0x20($sp)
/* 3913C 8003853C AFA50024 */  sw         $a1, 0x24($sp)
/* 39140 80038540 05010016 */  bgez       $t0, .L8003859C
/* 39144 80038544 AFA7002C */   sw        $a3, 0x2c($sp)
/* 39148 80038548 8C6400EC */  lw         $a0, 0xec($v1)
/* 3914C 8003854C 0C00A607 */  jal        func_8002981C
/* 39150 80038550 AFA3001C */   sw        $v1, 0x1c($sp)
/* 39154 80038554 8FA3001C */  lw         $v1, 0x1c($sp)
/* 39158 80038558 00000000 */  nop
/* 3915C 8003855C 8C690178 */  lw         $t1, 0x178($v1)
/* 39160 80038560 8C6A0180 */  lw         $t2, 0x180($v1)
/* 39164 80038564 AC6200EC */  sw         $v0, 0xec($v1)
/* 39168 80038568 012A082A */  slt        $at, $t1, $t2
/* 3916C 8003856C 10200021 */  beqz       $at, .L800385F4
/* 39170 80038570 8FBF0014 */   lw        $ra, 0x14($sp)
/* 39174 80038574 8C6B0150 */  lw         $t3, 0x150($v1)
/* 39178 80038578 8C6D0170 */  lw         $t5, 0x170($v1)
/* 3917C 8003857C 87AE002E */  lh         $t6, 0x2e($sp)
/* 39180 80038580 3C01EFFF */  lui        $at, 0xefff
/* 39184 80038584 3421FFFF */  ori        $at, $at, 0xffff
/* 39188 80038588 01616024 */  and        $t4, $t3, $at
/* 3918C 8003858C 01AE7821 */  addu       $t7, $t5, $t6
/* 39190 80038590 AC6C0150 */  sw         $t4, 0x150($v1)
/* 39194 80038594 10000016 */  b          .L800385F0
/* 39198 80038598 AC6F0178 */   sw        $t7, 0x178($v1)
.L8003859C:
/* 3919C 8003859C 8FA50024 */  lw         $a1, 0x24($sp)
/* 391A0 800385A0 8C6400EC */  lw         $a0, 0xec($v1)
/* 391A4 800385A4 AFA3001C */  sw         $v1, 0x1c($sp)
/* 391A8 800385A8 0C00A607 */  jal        func_8002981C
/* 391AC 800385AC 00052823 */   negu      $a1, $a1
/* 391B0 800385B0 8FA3001C */  lw         $v1, 0x1c($sp)
/* 391B4 800385B4 00000000 */  nop
/* 391B8 800385B8 8C780180 */  lw         $t8, 0x180($v1)
/* 391BC 800385BC 8C790178 */  lw         $t9, 0x178($v1)
/* 391C0 800385C0 AC6200EC */  sw         $v0, 0xec($v1)
/* 391C4 800385C4 0319082A */  slt        $at, $t8, $t9
/* 391C8 800385C8 1020000A */  beqz       $at, .L800385F4
/* 391CC 800385CC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 391D0 800385D0 8C680150 */  lw         $t0, 0x150($v1)
/* 391D4 800385D4 8C6A0170 */  lw         $t2, 0x170($v1)
/* 391D8 800385D8 87AB0032 */  lh         $t3, 0x32($sp)
/* 391DC 800385DC 3C011000 */  lui        $at, 0x1000
/* 391E0 800385E0 01014825 */  or         $t1, $t0, $at
/* 391E4 800385E4 014B6021 */  addu       $t4, $t2, $t3
/* 391E8 800385E8 AC690150 */  sw         $t1, 0x150($v1)
/* 391EC 800385EC AC6C0178 */  sw         $t4, 0x178($v1)
.L800385F0:
/* 391F0 800385F0 8FBF0014 */  lw         $ra, 0x14($sp)
.L800385F4:
/* 391F4 800385F4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 391F8 800385F8 03E00008 */  jr         $ra
/* 391FC 800385FC 00000000 */   nop
