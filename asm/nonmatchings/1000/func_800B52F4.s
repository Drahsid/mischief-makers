glabel func_800B52F4
/* B5EF4 800B52F4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B5EF8 800B52F8 AFBF001C */  sw         $ra, 0x1c($sp)
/* B5EFC 800B52FC AFB00018 */  sw         $s0, 0x18($sp)
/* B5F00 800B5300 3C0E8018 */  lui        $t6, %hi(D_80185530)
/* B5F04 800B5304 25CE5530 */  addiu      $t6, $t6, %lo(D_80185530)
/* B5F08 800B5308 25CF0040 */  addiu      $t7, $t6, 0x40
/* B5F0C 800B530C AFAF002C */  sw         $t7, 0x2c($sp)
/* B5F10 800B5310 8FB8002C */  lw         $t8, 0x2c($sp)
/* B5F14 800B5314 8F190000 */  lw         $t9, ($t8)
/* B5F18 800B5318 AFB90028 */  sw         $t9, 0x28($sp)
/* B5F1C 800B531C 8FA80028 */  lw         $t0, 0x28($sp)
/* B5F20 800B5320 11000006 */  beqz       $t0, .L800B533C
/* B5F24 800B5324 00000000 */   nop
/* B5F28 800B5328 8D090008 */  lw         $t1, 8($t0)
/* B5F2C 800B532C 8D0A0010 */  lw         $t2, 0x10($t0)
/* B5F30 800B5330 012A082A */  slt        $at, $t1, $t2
/* B5F34 800B5334 14200003 */  bnez       $at, .L800B5344
/* B5F38 800B5338 00000000 */   nop
.L800B533C:
/* B5F3C 800B533C 1000002C */  b          .L800B53F0
/* B5F40 800B5340 00000000 */   nop
.L800B5344:
/* B5F44 800B5344 8FAB0028 */  lw         $t3, 0x28($sp)
/* B5F48 800B5348 8D6C000C */  lw         $t4, 0xc($t3)
/* B5F4C 800B534C 8D6D0008 */  lw         $t5, 8($t3)
/* B5F50 800B5350 8D6F0010 */  lw         $t7, 0x10($t3)
/* B5F54 800B5354 018D7021 */  addu       $t6, $t4, $t5
/* B5F58 800B5358 01CF001A */  div        $zero, $t6, $t7
/* B5F5C 800B535C 0000C010 */  mfhi       $t8
/* B5F60 800B5360 AFB80024 */  sw         $t8, 0x24($sp)
/* B5F64 800B5364 15E00002 */  bnez       $t7, .L800B5370
/* B5F68 800B5368 00000000 */   nop
/* B5F6C 800B536C 0007000D */  break      7
.L800B5370:
/* B5F70 800B5370 2401FFFF */   addiu     $at, $zero, -1
/* B5F74 800B5374 15E10004 */  bne        $t7, $at, .L800B5388
/* B5F78 800B5378 3C018000 */   lui       $at, 0x8000
/* B5F7C 800B537C 15C10002 */  bne        $t6, $at, .L800B5388
/* B5F80 800B5380 00000000 */   nop
/* B5F84 800B5384 0006000D */  break      6
.L800B5388:
/* B5F88 800B5388 8FA90028 */   lw        $t1, 0x28($sp)
/* B5F8C 800B538C 8FB9002C */  lw         $t9, 0x2c($sp)
/* B5F90 800B5390 8FAC0024 */  lw         $t4, 0x24($sp)
/* B5F94 800B5394 8D2A0014 */  lw         $t2, 0x14($t1)
/* B5F98 800B5398 8F280004 */  lw         $t0, 4($t9)
/* B5F9C 800B539C 000C6880 */  sll        $t5, $t4, 2
/* B5FA0 800B53A0 014D5821 */  addu       $t3, $t2, $t5
/* B5FA4 800B53A4 AD680000 */  sw         $t0, ($t3)
/* B5FA8 800B53A8 8FAE0028 */  lw         $t6, 0x28($sp)
/* B5FAC 800B53AC 8DCF0008 */  lw         $t7, 8($t6)
/* B5FB0 800B53B0 25F80001 */  addiu      $t8, $t7, 1
/* B5FB4 800B53B4 ADD80008 */  sw         $t8, 8($t6)
/* B5FB8 800B53B8 8FB90028 */  lw         $t9, 0x28($sp)
/* B5FBC 800B53BC 8F290000 */  lw         $t1, ($t9)
/* B5FC0 800B53C0 8D2C0000 */  lw         $t4, ($t1)
/* B5FC4 800B53C4 11800008 */  beqz       $t4, .L800B53E8
/* B5FC8 800B53C8 00000000 */   nop
/* B5FCC 800B53CC 0C029AFA */  jal        func_800A6BE8
/* B5FD0 800B53D0 8FA40028 */   lw        $a0, 0x28($sp)
/* B5FD4 800B53D4 00408025 */  or         $s0, $v0, $zero
/* B5FD8 800B53D8 3C04800F */  lui        $a0, %hi(D_800EA608)
/* B5FDC 800B53DC 2484A608 */  addiu      $a0, $a0, %lo(D_800EA608)
/* B5FE0 800B53E0 0C029AE7 */  jal        func_800A6B9C
/* B5FE4 800B53E4 02002825 */   or        $a1, $s0, $zero
.L800B53E8:
/* B5FE8 800B53E8 10000001 */  b          .L800B53F0
/* B5FEC 800B53EC 00000000 */   nop
.L800B53F0:
/* B5FF0 800B53F0 8FBF001C */  lw         $ra, 0x1c($sp)
/* B5FF4 800B53F4 8FB00018 */  lw         $s0, 0x18($sp)
/* B5FF8 800B53F8 27BD0030 */  addiu      $sp, $sp, 0x30
/* B5FFC 800B53FC 03E00008 */  jr         $ra
/* B6000 800B5400 00000000 */   nop
/* B6004 800B5404 00000000 */  nop
/* B6008 800B5408 00000000 */  nop
/* B600C 800B540C 00000000 */  nop
