glabel func_80048408
/* 49008 80048408 3C02800C */  lui        $v0, %hi(D_800BE5F6)
/* 4900C 8004840C 9042E5F6 */  lbu        $v0, %lo(D_800BE5F6)($v0)
/* 49010 80048410 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 49014 80048414 AFBF0014 */  sw         $ra, 0x14($sp)
/* 49018 80048418 AFA40020 */  sw         $a0, 0x20($sp)
/* 4901C 8004841C 10400006 */  beqz       $v0, .L80048438
/* 49020 80048420 3086FFFF */   andi      $a2, $a0, 0xffff
/* 49024 80048424 24010001 */  addiu      $at, $zero, 1
/* 49028 80048428 10410037 */  beq        $v0, $at, .L80048508
/* 4902C 8004842C 0006C080 */   sll       $t8, $a2, 2
/* 49030 80048430 1000005B */  b          .L800485A0
/* 49034 80048434 8FBF0014 */   lw        $ra, 0x14($sp)
.L80048438:
/* 49038 80048438 00067080 */  sll        $t6, $a2, 2
/* 4903C 8004843C 01C67023 */  subu       $t6, $t6, $a2
/* 49040 80048440 000E7080 */  sll        $t6, $t6, 2
/* 49044 80048444 01C67021 */  addu       $t6, $t6, $a2
/* 49048 80048448 000E7080 */  sll        $t6, $t6, 2
/* 4904C 8004844C 01C67023 */  subu       $t6, $t6, $a2
/* 49050 80048450 3C0F800F */  lui        $t7, %hi(gActors)
/* 49054 80048454 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 49058 80048458 000E70C0 */  sll        $t6, $t6, 3
/* 4905C 8004845C 01CF1821 */  addu       $v1, $t6, $t7
/* 49060 80048460 8C780080 */  lw         $t8, 0x80($v1)
/* 49064 80048464 30C4FFFF */  andi       $a0, $a2, 0xffff
/* 49068 80048468 0018C980 */  sll        $t9, $t8, 6
/* 4906C 8004846C 07210010 */  bgez       $t9, .L800484B0
/* 49070 80048470 00000000 */   nop
/* 49074 80048474 946500D6 */  lhu        $a1, 0xd6($v1)
/* 49078 80048478 AFA30018 */  sw         $v1, 0x18($sp)
/* 4907C 8004847C 0C013D45 */  jal        func_8004F514
/* 49080 80048480 A7A60022 */   sh        $a2, 0x22($sp)
/* 49084 80048484 8FA30018 */  lw         $v1, 0x18($sp)
/* 49088 80048488 3C010081 */  lui        $at, 0x81
/* 4908C 8004848C 8C680080 */  lw         $t0, 0x80($v1)
/* 49090 80048490 97A60022 */  lhu        $a2, 0x22($sp)
/* 49094 80048494 01014824 */  and        $t1, $t0, $at
/* 49098 80048498 11200004 */  beqz       $t1, .L800484AC
/* 4909C 8004849C 240B0016 */   addiu     $t3, $zero, 0x16
/* 490A0 800484A0 240A0003 */  addiu      $t2, $zero, 3
/* 490A4 800484A4 10000002 */  b          .L800484B0
/* 490A8 800484A8 A46A00D0 */   sh        $t2, 0xd0($v1)
.L800484AC:
/* 490AC 800484AC A46B00D0 */  sh         $t3, 0xd0($v1)
.L800484B0:
/* 490B0 800484B0 30C4FFFF */  andi       $a0, $a2, 0xffff
/* 490B4 800484B4 0C0174CE */  jal        func_8005D338
/* 490B8 800484B8 AFA30018 */   sw        $v1, 0x18($sp)
/* 490BC 800484BC 8FA30018 */  lw         $v1, 0x18($sp)
/* 490C0 800484C0 24010001 */  addiu      $at, $zero, 1
/* 490C4 800484C4 14410036 */  bne        $v0, $at, .L800485A0
/* 490C8 800484C8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 490CC 800484CC 8C6C00EC */  lw         $t4, 0xec($v1)
/* 490D0 800484D0 00000000 */  nop
/* 490D4 800484D4 15800032 */  bnez       $t4, .L800485A0
/* 490D8 800484D8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 490DC 800484DC 8C6D00F0 */  lw         $t5, 0xf0($v1)
/* 490E0 800484E0 24020001 */  addiu      $v0, $zero, 1
/* 490E4 800484E4 15A0002D */  bnez       $t5, .L8004859C
/* 490E8 800484E8 240E00A1 */   addiu     $t6, $zero, 0xa1
/* 490EC 800484EC 8C6F0080 */  lw         $t7, 0x80($v1)
/* 490F0 800484F0 AC6E0170 */  sw         $t6, 0x170($v1)
/* 490F4 800484F4 A46200D0 */  sh         $v0, 0xd0($v1)
/* 490F8 800484F8 3C01800C */  lui        $at, %hi(D_800BE5F6)
/* 490FC 800484FC AC6F0150 */  sw         $t7, 0x150($v1)
/* 49100 80048500 10000026 */  b          .L8004859C
/* 49104 80048504 A022E5F6 */   sb        $v0, %lo(D_800BE5F6)($at)
.L80048508:
/* 49108 80048508 0306C023 */  subu       $t8, $t8, $a2
/* 4910C 8004850C 0018C080 */  sll        $t8, $t8, 2
/* 49110 80048510 0306C021 */  addu       $t8, $t8, $a2
/* 49114 80048514 0018C080 */  sll        $t8, $t8, 2
/* 49118 80048518 0306C023 */  subu       $t8, $t8, $a2
/* 4911C 8004851C 3C19800F */  lui        $t9, %hi(gActors)
/* 49120 80048520 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 49124 80048524 0018C0C0 */  sll        $t8, $t8, 3
/* 49128 80048528 03191821 */  addu       $v1, $t8, $t9
/* 4912C 8004852C 80680170 */  lb         $t0, 0x170($v1)
/* 49130 80048530 00000000 */  nop
/* 49134 80048534 1500000C */  bnez       $t0, .L80048568
/* 49138 80048538 30C4FFFF */   andi      $a0, $a2, 0xffff
/* 4913C 8004853C 80690171 */  lb         $t1, 0x171($v1)
/* 49140 80048540 24010005 */  addiu      $at, $zero, 5
/* 49144 80048544 15210007 */  bne        $t1, $at, .L80048564
/* 49148 80048548 240400CE */   addiu     $a0, $zero, 0xce
/* 4914C 8004854C AFA30018 */  sw         $v1, 0x18($sp)
/* 49150 80048550 0C000CD3 */  jal        func_8000334C
/* 49154 80048554 A7A60022 */   sh        $a2, 0x22($sp)
/* 49158 80048558 8FA30018 */  lw         $v1, 0x18($sp)
/* 4915C 8004855C 97A60022 */  lhu        $a2, 0x22($sp)
/* 49160 80048560 00000000 */  nop
.L80048564:
/* 49164 80048564 30C4FFFF */  andi       $a0, $a2, 0xffff
.L80048568:
/* 49168 80048568 0C017506 */  jal        func_8005D418
/* 4916C 8004856C AFA30018 */   sw        $v1, 0x18($sp)
/* 49170 80048570 8FA30018 */  lw         $v1, 0x18($sp)
/* 49174 80048574 10400009 */  beqz       $v0, .L8004859C
/* 49178 80048578 240A00A3 */   addiu     $t2, $zero, 0xa3
/* 4917C 8004857C 8C6B0080 */  lw         $t3, 0x80($v1)
/* 49180 80048580 240D0003 */  addiu      $t5, $zero, 3
/* 49184 80048584 356C0040 */  ori        $t4, $t3, 0x40
/* 49188 80048588 AC6A0170 */  sw         $t2, 0x170($v1)
/* 4918C 8004858C AC6C0080 */  sw         $t4, 0x80($v1)
/* 49190 80048590 A46D00D0 */  sh         $t5, 0xd0($v1)
/* 49194 80048594 3C01800C */  lui        $at, %hi(D_800BE5F4)
/* 49198 80048598 AC20E5F4 */  sw         $zero, %lo(D_800BE5F4)($at)
.L8004859C:
/* 4919C 8004859C 8FBF0014 */  lw         $ra, 0x14($sp)
.L800485A0:
/* 491A0 800485A0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 491A4 800485A4 03E00008 */  jr         $ra
/* 491A8 800485A8 00000000 */   nop
