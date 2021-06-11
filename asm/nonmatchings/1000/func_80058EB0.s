glabel func_80058EB0
/* 59AB0 80058EB0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 59AB4 80058EB4 000E7880 */  sll        $t7, $t6, 2
/* 59AB8 80058EB8 01EE7823 */  subu       $t7, $t7, $t6
/* 59ABC 80058EBC 000F7880 */  sll        $t7, $t7, 2
/* 59AC0 80058EC0 01EE7821 */  addu       $t7, $t7, $t6
/* 59AC4 80058EC4 000F7880 */  sll        $t7, $t7, 2
/* 59AC8 80058EC8 01EE7823 */  subu       $t7, $t7, $t6
/* 59ACC 80058ECC 3C18800F */  lui        $t8, %hi(gActors)
/* 59AD0 80058ED0 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 59AD4 80058ED4 000F78C0 */  sll        $t7, $t7, 3
/* 59AD8 80058ED8 01F81021 */  addu       $v0, $t7, $t8
/* 59ADC 80058EDC 8C590080 */  lw         $t9, 0x80($v0)
/* 59AE0 80058EE0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 59AE4 80058EE4 AFA40020 */  sw         $a0, 0x20($sp)
/* 59AE8 80058EE8 00194180 */  sll        $t0, $t9, 6
/* 59AEC 80058EEC 01C02025 */  or         $a0, $t6, $zero
/* 59AF0 80058EF0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 59AF4 80058EF4 05010008 */  bgez       $t0, .L80058F18
/* 59AF8 80058EF8 AFA50024 */   sw        $a1, 0x24($sp)
/* 59AFC 80058EFC 944500D6 */  lhu        $a1, 0xd6($v0)
/* 59B00 80058F00 AFA2001C */  sw         $v0, 0x1c($sp)
/* 59B04 80058F04 0C013D45 */  jal        func_8004F514
/* 59B08 80058F08 A7AE0022 */   sh        $t6, 0x22($sp)
/* 59B0C 80058F0C 8FA2001C */  lw         $v0, 0x1c($sp)
/* 59B10 80058F10 97A40022 */  lhu        $a0, 0x22($sp)
/* 59B14 80058F14 00000000 */  nop
.L80058F18:
/* 59B18 80058F18 0C016249 */  jal        func_80058924
/* 59B1C 80058F1C AFA2001C */   sw        $v0, 0x1c($sp)
/* 59B20 80058F20 8FA2001C */  lw         $v0, 0x1c($sp)
/* 59B24 80058F24 8FBF0014 */  lw         $ra, 0x14($sp)
/* 59B28 80058F28 8C490080 */  lw         $t1, 0x80($v0)
/* 59B2C 80058F2C 2401EAFE */  addiu      $at, $zero, -0x1502
/* 59B30 80058F30 240C0004 */  addiu      $t4, $zero, 4
/* 59B34 80058F34 240D0001 */  addiu      $t5, $zero, 1
/* 59B38 80058F38 01215024 */  and        $t2, $t1, $at
/* 59B3C 80058F3C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 59B40 80058F40 AC4A0080 */  sw         $t2, 0x80($v0)
/* 59B44 80058F44 AC4A0150 */  sw         $t2, 0x150($v0)
/* 59B48 80058F48 A04C00D0 */  sb         $t4, 0xd0($v0)
/* 59B4C 80058F4C 03E00008 */  jr         $ra
/* 59B50 80058F50 A04D00D1 */   sb        $t5, 0xd1($v0)
