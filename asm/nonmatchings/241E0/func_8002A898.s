glabel func_8002A898
/* 2B498 8002A898 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2B49C 8002A89C 000E7880 */  sll        $t7, $t6, 2
/* 2B4A0 8002A8A0 01EE7823 */  subu       $t7, $t7, $t6
/* 2B4A4 8002A8A4 000F7880 */  sll        $t7, $t7, 2
/* 2B4A8 8002A8A8 01EE7821 */  addu       $t7, $t7, $t6
/* 2B4AC 8002A8AC 000F7880 */  sll        $t7, $t7, 2
/* 2B4B0 8002A8B0 01EE7823 */  subu       $t7, $t7, $t6
/* 2B4B4 8002A8B4 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 2B4B8 8002A8B8 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 2B4BC 8002A8BC 000F78C0 */  sll        $t7, $t7, 3
/* 2B4C0 8002A8C0 01F81021 */  addu       $v0, $t7, $t8
/* 2B4C4 8002A8C4 8C590080 */  lw         $t9, 0x80($v0)
/* 2B4C8 8002A8C8 2401F9FF */  addiu      $at, $zero, -0x601
/* 2B4CC 8002A8CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2B4D0 8002A8D0 03214024 */  and        $t0, $t9, $at
/* 2B4D4 8002A8D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2B4D8 8002A8D8 AFA40018 */  sw         $a0, 0x18($sp)
/* 2B4DC 8002A8DC AC480080 */  sw         $t0, 0x80($v0)
/* 2B4E0 8002A8E0 350A0080 */  ori        $t2, $t0, 0x80
/* 2B4E4 8002A8E4 01C02025 */  or         $a0, $t6, $zero
/* 2B4E8 8002A8E8 0C00A996 */  jal        func_8002A658
/* 2B4EC 8002A8EC AC4A0080 */   sw        $t2, 0x80($v0)
/* 2B4F0 8002A8F0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2B4F4 8002A8F4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2B4F8 8002A8F8 03E00008 */  jr         $ra
/* 2B4FC 8002A8FC 00000000 */   nop
