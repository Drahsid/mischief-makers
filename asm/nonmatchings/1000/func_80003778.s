glabel func_80003778
/* 4378 80003778 30AEFFFF */  andi       $t6, $a1, 0xffff
/* 437C 8000377C 000E7880 */  sll        $t7, $t6, 2
/* 4380 80003780 01EE7823 */  subu       $t7, $t7, $t6
/* 4384 80003784 000F7880 */  sll        $t7, $t7, 2
/* 4388 80003788 01EE7821 */  addu       $t7, $t7, $t6
/* 438C 8000378C 000F7880 */  sll        $t7, $t7, 2
/* 4390 80003790 01EE7823 */  subu       $t7, $t7, $t6
/* 4394 80003794 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 4398 80003798 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 439C 8000379C 000F78C0 */  sll        $t7, $t7, 3
/* 43A0 800037A0 01F81021 */  addu       $v0, $t7, $t8
/* 43A4 800037A4 84590088 */  lh         $t9, 0x88($v0)
/* 43A8 800037A8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 43AC 800037AC 2B21FE81 */  slti       $at, $t9, -0x17f
/* 43B0 800037B0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 43B4 800037B4 AFA40030 */  sw         $a0, 0x30($sp)
/* 43B8 800037B8 AFA50034 */  sw         $a1, 0x34($sp)
/* 43BC 800037BC 14200004 */  bnez       $at, .L800037D0
/* 43C0 800037C0 AFB90024 */   sw        $t9, 0x24($sp)
/* 43C4 800037C4 2B210180 */  slti       $at, $t9, 0x180
/* 43C8 800037C8 14200003 */  bnez       $at, .L800037D8
/* 43CC 800037CC 27A6002F */   addiu     $a2, $sp, 0x2f
.L800037D0:
/* 43D0 800037D0 10000011 */  b          .L80003818
/* 43D4 800037D4 2402FFFF */   addiu     $v0, $zero, -1
.L800037D8:
/* 43D8 800037D8 87A40026 */  lh         $a0, 0x26($sp)
/* 43DC 800037DC 8445008C */  lh         $a1, 0x8c($v0)
/* 43E0 800037E0 0C000D50 */  jal        func_80003540
/* 43E4 800037E4 27A7002C */   addiu     $a3, $sp, 0x2c
/* 43E8 800037E8 87A5002C */  lh         $a1, 0x2c($sp)
/* 43EC 800037EC 8FA40030 */  lw         $a0, 0x30($sp)
/* 43F0 800037F0 28A10080 */  slti       $at, $a1, 0x80
/* 43F4 800037F4 10200003 */  beqz       $at, .L80003804
/* 43F8 800037F8 24070091 */   addiu     $a3, $zero, 0x91
/* 43FC 800037FC 10000006 */  b          .L80003818
/* 4400 80003800 2402FFFF */   addiu     $v0, $zero, -1
.L80003804:
/* 4404 80003804 83A6002F */  lb         $a2, 0x2f($sp)
/* 4408 80003808 240900FF */  addiu      $t1, $zero, 0xff
/* 440C 8000380C AFA90010 */  sw         $t1, 0x10($sp)
/* 4410 80003810 0C000C08 */  jal        func_80003020
/* 4414 80003814 AFA00014 */   sw        $zero, 0x14($sp)
.L80003818:
/* 4418 80003818 8FBF001C */  lw         $ra, 0x1c($sp)
/* 441C 8000381C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 4420 80003820 03E00008 */  jr         $ra
/* 4424 80003824 00000000 */   nop
