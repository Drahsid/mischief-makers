glabel func_80039894
/* 3A494 80039894 308EFFFF */  andi       $t6, $a0, 0xffff
/* 3A498 80039898 000E7880 */  sll        $t7, $t6, 2
/* 3A49C 8003989C 01EE7823 */  subu       $t7, $t7, $t6
/* 3A4A0 800398A0 000F7880 */  sll        $t7, $t7, 2
/* 3A4A4 800398A4 01EE7821 */  addu       $t7, $t7, $t6
/* 3A4A8 800398A8 000F7880 */  sll        $t7, $t7, 2
/* 3A4AC 800398AC 01EE7823 */  subu       $t7, $t7, $t6
/* 3A4B0 800398B0 3C18800F */  lui        $t8, %hi(gActors)
/* 3A4B4 800398B4 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 3A4B8 800398B8 000F78C0 */  sll        $t7, $t7, 3
/* 3A4BC 800398BC 01F81021 */  addu       $v0, $t7, $t8
/* 3A4C0 800398C0 8C590098 */  lw         $t9, 0x98($v0)
/* 3A4C4 800398C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3A4C8 800398C8 3C010002 */  lui        $at, 2
/* 3A4CC 800398CC AFBF0014 */  sw         $ra, 0x14($sp)
/* 3A4D0 800398D0 AFA40018 */  sw         $a0, 0x18($sp)
/* 3A4D4 800398D4 03214025 */  or         $t0, $t9, $at
/* 3A4D8 800398D8 01C02025 */  or         $a0, $t6, $zero
/* 3A4DC 800398DC AC480098 */  sw         $t0, 0x98($v0)
/* 3A4E0 800398E0 0C00ABAD */  jal        func_8002AEB4
/* 3A4E4 800398E4 2405007F */   addiu     $a1, $zero, 0x7f
/* 3A4E8 800398E8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3A4EC 800398EC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3A4F0 800398F0 03E00008 */  jr         $ra
/* 3A4F4 800398F4 00000000 */   nop
