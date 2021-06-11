glabel func_80012DF0
/* 139F0 80012DF0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 139F4 80012DF4 3C0F8018 */  lui        $t7, %hi(D_80178136)
/* 139F8 80012DF8 95EF8136 */  lhu        $t7, %lo(D_80178136)($t7)
/* 139FC 80012DFC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 13A00 80012E00 01EE082A */  slt        $at, $t7, $t6
/* 13A04 80012E04 AFBF0044 */  sw         $ra, 0x44($sp)
/* 13A08 80012E08 AFBE0040 */  sw         $fp, 0x40($sp)
/* 13A0C 80012E0C AFB7003C */  sw         $s7, 0x3c($sp)
/* 13A10 80012E10 AFB60038 */  sw         $s6, 0x38($sp)
/* 13A14 80012E14 AFB50034 */  sw         $s5, 0x34($sp)
/* 13A18 80012E18 AFB40030 */  sw         $s4, 0x30($sp)
/* 13A1C 80012E1C AFB3002C */  sw         $s3, 0x2c($sp)
/* 13A20 80012E20 AFB20028 */  sw         $s2, 0x28($sp)
/* 13A24 80012E24 AFB10024 */  sw         $s1, 0x24($sp)
/* 13A28 80012E28 AFB00020 */  sw         $s0, 0x20($sp)
/* 13A2C 80012E2C 1420004C */  bnez       $at, .L80012F60
/* 13A30 80012E30 AFA40048 */   sw        $a0, 0x48($sp)
/* 13A34 80012E34 2401000A */  addiu      $at, $zero, 0xa
/* 13A38 80012E38 01C1001A */  div        $zero, $t6, $at
/* 13A3C 80012E3C 3C018018 */  lui        $at, 0x8018
/* 13A40 80012E40 3C12800F */  lui        $s2, %hi(gActors)
/* 13A44 80012E44 3C14800E */  lui        $s4, 0x800e
/* 13A48 80012E48 3C1EFFFE */  lui        $fp, 0xfffe
/* 13A4C 80012E4C 3C15800E */  lui        $s5, %hi(D_800E13DC)
/* 13A50 80012E50 2652F510 */  addiu      $s2, $s2, %lo(gActors)
/* 13A54 80012E54 24100030 */  addiu      $s0, $zero, 0x30
/* 13A58 80012E58 24130198 */  addiu      $s3, $zero, 0x198
/* 13A5C 80012E5C 26B513DC */  addiu      $s5, $s5, %lo(D_800E13DC)
/* 13A60 80012E60 37DEFC41 */  ori        $fp, $fp, 0xfc41
/* 13A64 80012E64 269488B8 */  addiu      $s4, $s4, -0x7748
/* 13A68 80012E68 24110041 */  addiu      $s1, $zero, 0x41
/* 13A6C 80012E6C 241703FF */  addiu      $s7, $zero, 0x3ff
/* 13A70 80012E70 241600C0 */  addiu      $s6, $zero, 0xc0
/* 13A74 80012E74 0000C012 */  mflo       $t8
/* 13A78 80012E78 A4388138 */  sh         $t8, -0x7ec8($at)
/* 13A7C 80012E7C 00000000 */  nop
.L80012E80:
/* 13A80 80012E80 02130019 */  multu      $s0, $s3
/* 13A84 80012E84 26100001 */  addiu      $s0, $s0, 1
/* 13A88 80012E88 3209FFFF */  andi       $t1, $s0, 0xffff
/* 13A8C 80012E8C 29210031 */  slti       $at, $t1, 0x31
/* 13A90 80012E90 01208025 */  or         $s0, $t1, $zero
/* 13A94 80012E94 0000C812 */  mflo       $t9
/* 13A98 80012E98 02594021 */  addu       $t0, $s2, $t9
/* 13A9C 80012E9C 1420FFF8 */  bnez       $at, .L80012E80
/* 13AA0 80012EA0 AD000080 */   sw        $zero, 0x80($t0)
/* 13AA4 80012EA4 24100032 */  addiu      $s0, $zero, 0x32
.L80012EA8:
/* 13AA8 80012EA8 02130019 */  multu      $s0, $s3
/* 13AAC 80012EAC 26100001 */  addiu      $s0, $s0, 1
/* 13AB0 80012EB0 320CFFFF */  andi       $t4, $s0, 0xffff
/* 13AB4 80012EB4 2981005E */  slti       $at, $t4, 0x5e
/* 13AB8 80012EB8 01808025 */  or         $s0, $t4, $zero
/* 13ABC 80012EBC 00005012 */  mflo       $t2
/* 13AC0 80012EC0 024A5821 */  addu       $t3, $s2, $t2
/* 13AC4 80012EC4 1420FFF8 */  bnez       $at, .L80012EA8
/* 13AC8 80012EC8 AD600080 */   sw        $zero, 0x80($t3)
/* 13ACC 80012ECC 24100041 */  addiu      $s0, $zero, 0x41
/* 13AD0 80012ED0 240D0403 */  addiu      $t5, $zero, 0x403
.L80012ED4:
/* 13AD4 80012ED4 AFAD0010 */  sw         $t5, 0x10($sp)
/* 13AD8 80012ED8 3204FFFF */  andi       $a0, $s0, 0xffff
/* 13ADC 80012EDC 02A02825 */  or         $a1, $s5, $zero
/* 13AE0 80012EE0 00003025 */  or         $a2, $zero, $zero
/* 13AE4 80012EE4 0C009D44 */  jal        func_80027510
/* 13AE8 80012EE8 240700A0 */   addiu     $a3, $zero, 0xa0
/* 13AEC 80012EEC 02130019 */  multu      $s0, $s3
/* 13AF0 80012EF0 2401000A */  addiu      $at, $zero, 0xa
/* 13AF4 80012EF4 26100001 */  addiu      $s0, $s0, 1
/* 13AF8 80012EF8 00007012 */  mflo       $t6
/* 13AFC 80012EFC 024E1021 */  addu       $v0, $s2, $t6
/* 13B00 80012F00 944F0094 */  lhu        $t7, 0x94($v0)
/* 13B04 80012F04 02370019 */  multu      $s1, $s7
/* 13B08 80012F08 3211FFFF */  andi       $s1, $s0, 0xffff
/* 13B0C 80012F0C 35F80200 */  ori        $t8, $t7, 0x200
/* 13B10 80012F10 02208025 */  or         $s0, $s1, $zero
/* 13B14 80012F14 A4580094 */  sh         $t8, 0x94($v0)
/* 13B18 80012F18 AC54018C */  sw         $s4, 0x18c($v0)
/* 13B1C 80012F1C AC560154 */  sw         $s6, 0x154($v0)
/* 13B20 80012F20 0000C812 */  mflo       $t9
/* 13B24 80012F24 033E4021 */  addu       $t0, $t9, $fp
/* 13B28 80012F28 00000000 */  nop
/* 13B2C 80012F2C 0101001A */  div        $zero, $t0, $at
/* 13B30 80012F30 2A21004B */  slti       $at, $s1, 0x4b
/* 13B34 80012F34 00004812 */  mflo       $t1
/* 13B38 80012F38 AC490158 */  sw         $t1, 0x158($v0)
/* 13B3C 80012F3C 1420FFE5 */  bnez       $at, .L80012ED4
/* 13B40 80012F40 240D0403 */   addiu     $t5, $zero, 0x403
/* 13B44 80012F44 240B0180 */  addiu      $t3, $zero, 0x180
/* 13B48 80012F48 3C018018 */  lui        $at, %hi(D_80178130)
/* 13B4C 80012F4C A42B8130 */  sh         $t3, %lo(D_80178130)($at)
/* 13B50 80012F50 3C01800C */  lui        $at, %hi(D_800BE4F4)
/* 13B54 80012F54 240C0006 */  addiu      $t4, $zero, 6
/* 13B58 80012F58 10000003 */  b          .L80012F68
/* 13B5C 80012F5C A42CE4F4 */   sh        $t4, %lo(D_800BE4F4)($at)
.L80012F60:
/* 13B60 80012F60 0C000CD3 */  jal        func_8000334C
/* 13B64 80012F64 24040134 */   addiu     $a0, $zero, 0x134
.L80012F68:
/* 13B68 80012F68 8FBF0044 */  lw         $ra, 0x44($sp)
/* 13B6C 80012F6C 8FB00020 */  lw         $s0, 0x20($sp)
/* 13B70 80012F70 8FB10024 */  lw         $s1, 0x24($sp)
/* 13B74 80012F74 8FB20028 */  lw         $s2, 0x28($sp)
/* 13B78 80012F78 8FB3002C */  lw         $s3, 0x2c($sp)
/* 13B7C 80012F7C 8FB40030 */  lw         $s4, 0x30($sp)
/* 13B80 80012F80 8FB50034 */  lw         $s5, 0x34($sp)
/* 13B84 80012F84 8FB60038 */  lw         $s6, 0x38($sp)
/* 13B88 80012F88 8FB7003C */  lw         $s7, 0x3c($sp)
/* 13B8C 80012F8C 8FBE0040 */  lw         $fp, 0x40($sp)
/* 13B90 80012F90 03E00008 */  jr         $ra
/* 13B94 80012F94 27BD0048 */   addiu     $sp, $sp, 0x48
