glabel func_800A6DC0
/* A79C0 800A6DC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A79C4 800A6DC4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A79C8 800A6DC8 AFA40018 */  sw         $a0, 0x18($sp)
/* A79CC 800A6DCC AFA5001C */  sw         $a1, 0x1c($sp)
/* A79D0 800A6DD0 8FAE0018 */  lw         $t6, 0x18($sp)
/* A79D4 800A6DD4 31CF0003 */  andi       $t7, $t6, 3
/* A79D8 800A6DD8 15E00003 */  bnez       $t7, .L800A6DE8
/* A79DC 800A6DDC 00000000 */   nop
/* A79E0 800A6DE0 10000007 */  b          .L800A6E00
/* A79E4 800A6DE4 00000000 */   nop
.L800A6DE8:
/* A79E8 800A6DE8 3C04800F */  lui        $a0, %hi(D_800EDAF0)
/* A79EC 800A6DEC 3C05800F */  lui        $a1, %hi(D_800EDB08)
/* A79F0 800A6DF0 24A5DB08 */  addiu      $a1, $a1, %lo(D_800EDB08)
/* A79F4 800A6DF4 2484DAF0 */  addiu      $a0, $a0, %lo(D_800EDAF0)
/* A79F8 800A6DF8 0C026E74 */  jal        func_8009B9D0
/* A79FC 800A6DFC 24060033 */   addiu     $a2, $zero, 0x33
.L800A6E00:
/* A7A00 800A6E00 8FB8001C */  lw         $t8, 0x1c($sp)
/* A7A04 800A6E04 13000003 */  beqz       $t8, .L800A6E14
/* A7A08 800A6E08 00000000 */   nop
/* A7A0C 800A6E0C 10000007 */  b          .L800A6E2C
/* A7A10 800A6E10 00000000 */   nop
.L800A6E14:
/* A7A14 800A6E14 3C04800F */  lui        $a0, %hi(D_800EDB1C)
/* A7A18 800A6E18 3C05800F */  lui        $a1, %hi(D_800EDB2C)
/* A7A1C 800A6E1C 24A5DB2C */  addiu      $a1, $a1, %lo(D_800EDB2C)
/* A7A20 800A6E20 2484DB1C */  addiu      $a0, $a0, %lo(D_800EDB1C)
/* A7A24 800A6E24 0C026E74 */  jal        func_8009B9D0
/* A7A28 800A6E28 24060034 */   addiu     $a2, $zero, 0x34
.L800A6E2C:
/* A7A2C 800A6E2C 0C02D54C */  jal        func_800B5530
/* A7A30 800A6E30 00000000 */   nop
/* A7A34 800A6E34 10400003 */  beqz       $v0, .L800A6E44
/* A7A38 800A6E38 00000000 */   nop
/* A7A3C 800A6E3C 1000000B */  b          .L800A6E6C
/* A7A40 800A6E40 2402FFFF */   addiu     $v0, $zero, -1
.L800A6E44:
/* A7A44 800A6E44 8FB90018 */  lw         $t9, 0x18($sp)
/* A7A48 800A6E48 3C01A000 */  lui        $at, 0xa000
/* A7A4C 800A6E4C 8FAA001C */  lw         $t2, 0x1c($sp)
/* A7A50 800A6E50 03214025 */  or         $t0, $t9, $at
/* A7A54 800A6E54 8D090000 */  lw         $t1, ($t0)
/* A7A58 800A6E58 AD490000 */  sw         $t1, ($t2)
/* A7A5C 800A6E5C 10000003 */  b          .L800A6E6C
/* A7A60 800A6E60 00001025 */   or        $v0, $zero, $zero
/* A7A64 800A6E64 10000001 */  b          .L800A6E6C
/* A7A68 800A6E68 00000000 */   nop
.L800A6E6C:
/* A7A6C 800A6E6C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A7A70 800A6E70 27BD0018 */  addiu      $sp, $sp, 0x18
/* A7A74 800A6E74 03E00008 */  jr         $ra
/* A7A78 800A6E78 00000000 */   nop
/* A7A7C 800A6E7C 00000000 */  nop
