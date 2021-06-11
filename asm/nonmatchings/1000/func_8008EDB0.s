glabel func_8008EDB0
/* 8F9B0 8008EDB0 3085FFFF */  andi       $a1, $a0, 0xffff
/* 8F9B4 8008EDB4 00057080 */  sll        $t6, $a1, 2
/* 8F9B8 8008EDB8 01C57023 */  subu       $t6, $t6, $a1
/* 8F9BC 8008EDBC 000E7080 */  sll        $t6, $t6, 2
/* 8F9C0 8008EDC0 01C57021 */  addu       $t6, $t6, $a1
/* 8F9C4 8008EDC4 000E7080 */  sll        $t6, $t6, 2
/* 8F9C8 8008EDC8 01C57023 */  subu       $t6, $t6, $a1
/* 8F9CC 8008EDCC 3C0F800F */  lui        $t7, %hi(gActors)
/* 8F9D0 8008EDD0 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 8F9D4 8008EDD4 000E70C0 */  sll        $t6, $t6, 3
/* 8F9D8 8008EDD8 01CF1021 */  addu       $v0, $t6, $t7
/* 8F9DC 8008EDDC 8C580098 */  lw         $t8, 0x98($v0)
/* 8F9E0 8008EDE0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8F9E4 8008EDE4 33190002 */  andi       $t9, $t8, 2
/* 8F9E8 8008EDE8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8F9EC 8008EDEC 1320003D */  beqz       $t9, .L8008EEE4
/* 8F9F0 8008EDF0 AFA40020 */   sw        $a0, 0x20($sp)
/* 8F9F4 8008EDF4 8C480080 */  lw         $t0, 0x80($v0)
/* 8F9F8 8008EDF8 00000000 */  nop
/* 8F9FC 8008EDFC 31098000 */  andi       $t1, $t0, 0x8000
/* 8FA00 8008EE00 15200038 */  bnez       $t1, .L8008EEE4
/* 8FA04 8008EE04 00000000 */   nop
/* 8FA08 8008EE08 904A00DD */  lbu        $t2, 0xdd($v0)
/* 8FA0C 8008EE0C 00000000 */  nop
/* 8FA10 8008EE10 254BFFFE */  addiu      $t3, $t2, -2
/* 8FA14 8008EE14 2D610016 */  sltiu      $at, $t3, 0x16
/* 8FA18 8008EE18 10200009 */  beqz       $at, .L8008EE40
/* 8FA1C 8008EE1C 000B5880 */   sll       $t3, $t3, 2
/* 8FA20 8008EE20 3C01800F */  lui        $at, %hi(D_800ED2F0)
/* 8FA24 8008EE24 002B0821 */  addu       $at, $at, $t3
/* 8FA28 8008EE28 8C2BD2F0 */  lw         $t3, %lo(D_800ED2F0)($at)
/* 8FA2C 8008EE2C 00000000 */  nop
/* 8FA30 8008EE30 01600008 */  jr         $t3
/* 8FA34 8008EE34 00000000 */   nop
/* 8FA38 8008EE38 1000002B */  b          .L8008EEE8
/* 8FA3C 8008EE3C 00001025 */   or        $v0, $zero, $zero
.L8008EE40:
/* 8FA40 8008EE40 30A4FFFF */  andi       $a0, $a1, 0xffff
/* 8FA44 8008EE44 0C023AFC */  jal        func_8008EBF0
/* 8FA48 8008EE48 A7A50022 */   sh        $a1, 0x22($sp)
/* 8FA4C 8008EE4C 97A50022 */  lhu        $a1, 0x22($sp)
/* 8FA50 8008EE50 0C000DB2 */  jal        func_800036C8
/* 8FA54 8008EE54 2404009D */   addiu     $a0, $zero, 0x9d
/* 8FA58 8008EE58 10000023 */  b          .L8008EEE8
/* 8FA5C 8008EE5C 24020001 */   addiu     $v0, $zero, 1
/* 8FA60 8008EE60 30A4FFFF */  andi       $a0, $a1, 0xffff
/* 8FA64 8008EE64 0C023B37 */  jal        func_8008ECDC
/* 8FA68 8008EE68 A7A50022 */   sh        $a1, 0x22($sp)
/* 8FA6C 8008EE6C 97A50022 */  lhu        $a1, 0x22($sp)
/* 8FA70 8008EE70 0C000DB2 */  jal        func_800036C8
/* 8FA74 8008EE74 2404009D */   addiu     $a0, $zero, 0x9d
/* 8FA78 8008EE78 1000001B */  b          .L8008EEE8
/* 8FA7C 8008EE7C 24020001 */   addiu     $v0, $zero, 1
/* 8FA80 8008EE80 30A4FFFF */  andi       $a0, $a1, 0xffff
/* 8FA84 8008EE84 0C023B37 */  jal        func_8008ECDC
/* 8FA88 8008EE88 A7A50022 */   sh        $a1, 0x22($sp)
/* 8FA8C 8008EE8C 97A50022 */  lhu        $a1, 0x22($sp)
/* 8FA90 8008EE90 0C000DB2 */  jal        func_800036C8
/* 8FA94 8008EE94 2404009D */   addiu     $a0, $zero, 0x9d
/* 8FA98 8008EE98 10000013 */  b          .L8008EEE8
/* 8FA9C 8008EE9C 24020001 */   addiu     $v0, $zero, 1
/* 8FAA0 8008EEA0 30A4FFFF */  andi       $a0, $a1, 0xffff
/* 8FAA4 8008EEA4 0C023B37 */  jal        func_8008ECDC
/* 8FAA8 8008EEA8 A7A50022 */   sh        $a1, 0x22($sp)
/* 8FAAC 8008EEAC 97A50022 */  lhu        $a1, 0x22($sp)
/* 8FAB0 8008EEB0 0C000DB2 */  jal        func_800036C8
/* 8FAB4 8008EEB4 2404009D */   addiu     $a0, $zero, 0x9d
/* 8FAB8 8008EEB8 1000000B */  b          .L8008EEE8
/* 8FABC 8008EEBC 24020001 */   addiu     $v0, $zero, 1
/* 8FAC0 8008EEC0 2404009D */  addiu      $a0, $zero, 0x9d
/* 8FAC4 8008EEC4 0C000DB2 */  jal        func_800036C8
/* 8FAC8 8008EEC8 AFA20018 */   sw        $v0, 0x18($sp)
/* 8FACC 8008EECC 8FA20018 */  lw         $v0, 0x18($sp)
/* 8FAD0 8008EED0 00000000 */  nop
/* 8FAD4 8008EED4 AC400080 */  sw         $zero, 0x80($v0)
/* 8FAD8 8008EED8 A44000E0 */  sh         $zero, 0xe0($v0)
/* 8FADC 8008EEDC 10000002 */  b          .L8008EEE8
/* 8FAE0 8008EEE0 24020001 */   addiu     $v0, $zero, 1
.L8008EEE4:
/* 8FAE4 8008EEE4 00001025 */  or         $v0, $zero, $zero
.L8008EEE8:
/* 8FAE8 8008EEE8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8FAEC 8008EEEC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8FAF0 8008EEF0 03E00008 */  jr         $ra
/* 8FAF4 8008EEF4 00000000 */   nop
