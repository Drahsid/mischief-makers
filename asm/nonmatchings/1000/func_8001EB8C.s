glabel func_8001EB8C
/* 1F78C 8001EB8C 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 1F790 8001EB90 24070198 */  addiu      $a3, $zero, 0x198
/* 1F794 8001EB94 01E70019 */  multu      $t7, $a3
/* 1F798 8001EB98 308EFFFF */  andi       $t6, $a0, 0xffff
/* 1F79C 8001EB9C 3C06800F */  lui        $a2, %hi(D_800EF510)
/* 1F7A0 8001EBA0 24C6F510 */  addiu      $a2, $a2, %lo(D_800EF510)
/* 1F7A4 8001EBA4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1F7A8 8001EBA8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1F7AC 8001EBAC AFA40018 */  sw         $a0, 0x18($sp)
/* 1F7B0 8001EBB0 AFA5001C */  sw         $a1, 0x1c($sp)
/* 1F7B4 8001EBB4 01E02825 */  or         $a1, $t7, $zero
/* 1F7B8 8001EBB8 01C02025 */  or         $a0, $t6, $zero
/* 1F7BC 8001EBBC 0000C012 */  mflo       $t8
/* 1F7C0 8001EBC0 00D81821 */  addu       $v1, $a2, $t8
/* 1F7C4 8001EBC4 00000000 */  nop
/* 1F7C8 8001EBC8 01C70019 */  multu      $t6, $a3
/* 1F7CC 8001EBCC 0000C812 */  mflo       $t9
/* 1F7D0 8001EBD0 00D91021 */  addu       $v0, $a2, $t9
/* 1F7D4 8001EBD4 904800DA */  lbu        $t0, 0xda($v0)
/* 1F7D8 8001EBD8 3C19800D */  lui        $t9, 0x800d
/* 1F7DC 8001EBDC A06800DC */  sb         $t0, 0xdc($v1)
/* 1F7E0 8001EBE0 904900DB */  lbu        $t1, 0xdb($v0)
/* 1F7E4 8001EBE4 00000000 */  nop
/* 1F7E8 8001EBE8 A06900DD */  sb         $t1, 0xdd($v1)
/* 1F7EC 8001EBEC 904A00DB */  lbu        $t2, 0xdb($v0)
/* 1F7F0 8001EBF0 00000000 */  nop
/* 1F7F4 8001EBF4 000A5880 */  sll        $t3, $t2, 2
/* 1F7F8 8001EBF8 032BC821 */  addu       $t9, $t9, $t3
/* 1F7FC 8001EBFC 8F39A1C0 */  lw         $t9, -0x5e40($t9)
/* 1F800 8001EC00 00000000 */  nop
/* 1F804 8001EC04 0320F809 */  jalr       $t9
/* 1F808 8001EC08 00000000 */   nop
/* 1F80C 8001EC0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1F810 8001EC10 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1F814 8001EC14 03E00008 */  jr         $ra
/* 1F818 8001EC18 00000000 */   nop
