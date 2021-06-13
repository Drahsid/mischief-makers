glabel func_80027370
/* 27F70 80027370 308EFFFF */  andi       $t6, $a0, 0xffff
/* 27F74 80027374 000E7880 */  sll        $t7, $t6, 2
/* 27F78 80027378 01EE7823 */  subu       $t7, $t7, $t6
/* 27F7C 8002737C 000F7880 */  sll        $t7, $t7, 2
/* 27F80 80027380 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 27F84 80027384 01EE7821 */  addu       $t7, $t7, $t6
/* 27F88 80027388 000F7880 */  sll        $t7, $t7, 2
/* 27F8C 8002738C 01EE7823 */  subu       $t7, $t7, $t6
/* 27F90 80027390 3C18800F */  lui        $t8, %hi(gActors)
/* 27F94 80027394 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 27F98 80027398 000F78C0 */  sll        $t7, $t7, 3
/* 27F9C 8002739C AFBF0014 */  sw         $ra, 0x14($sp)
/* 27FA0 800273A0 AFA40020 */  sw         $a0, 0x20($sp)
/* 27FA4 800273A4 01F81021 */  addu       $v0, $t7, $t8
/* 27FA8 800273A8 01C02025 */  or         $a0, $t6, $zero
/* 27FAC 800273AC AFA50024 */  sw         $a1, 0x24($sp)
/* 27FB0 800273B0 AFA60028 */  sw         $a2, 0x28($sp)
/* 27FB4 800273B4 AFA7002C */  sw         $a3, 0x2c($sp)
/* 27FB8 800273B8 A44000D2 */  sh         $zero, 0xd2($v0)
/* 27FBC 800273BC 0C0078B4 */  jal        func_8001E2D0
/* 27FC0 800273C0 AFA2001C */   sw        $v0, 0x1c($sp)
/* 27FC4 800273C4 8FA2001C */  lw         $v0, 0x1c($sp)
/* 27FC8 800273C8 97A90026 */  lhu        $t1, 0x26($sp)
/* 27FCC 800273CC 94590094 */  lhu        $t9, 0x94($v0)
/* 27FD0 800273D0 97AA002A */  lhu        $t2, 0x2a($sp)
/* 27FD4 800273D4 97AB002E */  lhu        $t3, 0x2e($sp)
/* 27FD8 800273D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 27FDC 800273DC 37280800 */  ori        $t0, $t9, 0x800
/* 27FE0 800273E0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 27FE4 800273E4 A4480094 */  sh         $t0, 0x94($v0)
/* 27FE8 800273E8 AC400188 */  sw         $zero, 0x188($v0)
/* 27FEC 800273EC A4490088 */  sh         $t1, 0x88($v0)
/* 27FF0 800273F0 A44A008C */  sh         $t2, 0x8c($v0)
/* 27FF4 800273F4 03E00008 */  jr         $ra
/* 27FF8 800273F8 A44B0090 */   sh        $t3, 0x90($v0)
