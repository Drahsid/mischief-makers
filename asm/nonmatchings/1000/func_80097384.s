glabel func_80097384
/* 97F84 80097384 308EFFFF */  andi       $t6, $a0, 0xffff
/* 97F88 80097388 000E7880 */  sll        $t7, $t6, 2
/* 97F8C 8009738C 01EE7823 */  subu       $t7, $t7, $t6
/* 97F90 80097390 000F7880 */  sll        $t7, $t7, 2
/* 97F94 80097394 01EE7821 */  addu       $t7, $t7, $t6
/* 97F98 80097398 000F7880 */  sll        $t7, $t7, 2
/* 97F9C 8009739C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 97FA0 800973A0 01EE7823 */  subu       $t7, $t7, $t6
/* 97FA4 800973A4 3C18800F */  lui        $t8, %hi(gActors)
/* 97FA8 800973A8 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 97FAC 800973AC 000F78C0 */  sll        $t7, $t7, 3
/* 97FB0 800973B0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 97FB4 800973B4 AFA40020 */  sw         $a0, 0x20($sp)
/* 97FB8 800973B8 01F81021 */  addu       $v0, $t7, $t8
/* 97FBC 800973BC 24190075 */  addiu      $t9, $zero, 0x75
/* 97FC0 800973C0 01C02025 */  or         $a0, $t6, $zero
/* 97FC4 800973C4 A45900D2 */  sh         $t9, 0xd2($v0)
/* 97FC8 800973C8 AFA2001C */  sw         $v0, 0x1c($sp)
/* 97FCC 800973CC 0C0078B4 */  jal        func_8001E2D0
/* 97FD0 800973D0 A7AE0022 */   sh        $t6, 0x22($sp)
/* 97FD4 800973D4 8FA2001C */  lw         $v0, 0x1c($sp)
/* 97FD8 800973D8 97A40022 */  lhu        $a0, 0x22($sp)
/* 97FDC 800973DC 3408C000 */  ori        $t0, $zero, 0xc000
/* 97FE0 800973E0 24090900 */  addiu      $t1, $zero, 0x900
/* 97FE4 800973E4 240A000B */  addiu      $t2, $zero, 0xb
/* 97FE8 800973E8 240B00CE */  addiu      $t3, $zero, 0xce
/* 97FEC 800973EC 240C0040 */  addiu      $t4, $zero, 0x40
/* 97FF0 800973F0 2405007F */  addiu      $a1, $zero, 0x7f
/* 97FF4 800973F4 A44800D0 */  sh         $t0, 0xd0($v0)
/* 97FF8 800973F8 A4490094 */  sh         $t1, 0x94($v0)
/* 97FFC 800973FC AC4A0080 */  sw         $t2, 0x80($v0)
/* 98000 80097400 A44B0084 */  sh         $t3, 0x84($v0)
/* 98004 80097404 A040009F */  sb         $zero, 0x9f($v0)
/* 98008 80097408 A4400088 */  sh         $zero, 0x88($v0)
/* 9800C 8009740C A440008C */  sh         $zero, 0x8c($v0)
/* 98010 80097410 0C00ABAD */  jal        func_8002AEB4
/* 98014 80097414 A44C0090 */   sh        $t4, 0x90($v0)
/* 98018 80097418 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9801C 8009741C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 98020 80097420 03E00008 */  jr         $ra
/* 98024 80097424 00000000 */   nop
