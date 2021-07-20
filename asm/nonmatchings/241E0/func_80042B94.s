glabel func_80042B94
/* 43794 80042B94 308EFFFF */  andi       $t6, $a0, 0xffff
/* 43798 80042B98 000E7880 */  sll        $t7, $t6, 2
/* 4379C 80042B9C 01EE7823 */  subu       $t7, $t7, $t6
/* 437A0 80042BA0 000F7880 */  sll        $t7, $t7, 2
/* 437A4 80042BA4 01EE7821 */  addu       $t7, $t7, $t6
/* 437A8 80042BA8 000F7880 */  sll        $t7, $t7, 2
/* 437AC 80042BAC 01EE7823 */  subu       $t7, $t7, $t6
/* 437B0 80042BB0 3C18800F */  lui        $t8, %hi(gActors)
/* 437B4 80042BB4 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 437B8 80042BB8 000F78C0 */  sll        $t7, $t7, 3
/* 437BC 80042BBC 01F81021 */  addu       $v0, $t7, $t8
/* 437C0 80042BC0 945900D0 */  lhu        $t9, 0xd0($v0)
/* 437C4 80042BC4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 437C8 80042BC8 00194080 */  sll        $t0, $t9, 2
/* 437CC 80042BCC 3C19800D */  lui        $t9, %hi(D_800D28B0)
/* 437D0 80042BD0 0328C821 */  addu       $t9, $t9, $t0
/* 437D4 80042BD4 8F3928B0 */  lw         $t9, %lo(D_800D28B0)($t9)
/* 437D8 80042BD8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 437DC 80042BDC AFA40020 */  sw         $a0, 0x20($sp)
/* 437E0 80042BE0 01C02025 */  or         $a0, $t6, $zero
/* 437E4 80042BE4 0320F809 */  jalr       $t9
/* 437E8 80042BE8 AFA2001C */   sw        $v0, 0x1c($sp)
/* 437EC 80042BEC 8FA2001C */  lw         $v0, 0x1c($sp)
/* 437F0 80042BF0 3C01FFDF */  lui        $at, 0xffdf
/* 437F4 80042BF4 8C490098 */  lw         $t1, 0x98($v0)
/* 437F8 80042BF8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 437FC 80042BFC 3421F9FF */  ori        $at, $at, 0xf9ff
/* 43800 80042C00 01215024 */  and        $t2, $t1, $at
/* 43804 80042C04 27BD0020 */  addiu      $sp, $sp, 0x20
/* 43808 80042C08 03E00008 */  jr         $ra
/* 4380C 80042C0C AC4A0098 */   sw        $t2, 0x98($v0)
