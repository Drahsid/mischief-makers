glabel func_800B5D84
/* B6984 800B5D84 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* B6988 800B5D88 AFBF001C */  sw         $ra, 0x1c($sp)
/* B698C 800B5D8C AFA40040 */  sw         $a0, 0x40($sp)
/* B6990 800B5D90 AFB10018 */  sw         $s1, 0x18($sp)
/* B6994 800B5D94 AFB00014 */  sw         $s0, 0x14($sp)
/* B6998 800B5D98 8FB00040 */  lw         $s0, 0x40($sp)
/* B699C 800B5D9C 920E0009 */  lbu        $t6, 9($s0)
/* B69A0 800B5DA0 15C0003C */  bnez       $t6, .L800B5E94
/* B69A4 800B5DA4 00000000 */   nop
/* B69A8 800B5DA8 0C02D9C3 */  jal        func_800B670C
/* B69AC 800B5DAC 8E04000C */   lw        $a0, 0xc($s0)
/* B69B0 800B5DB0 AFA20028 */  sw         $v0, 0x28($sp)
/* B69B4 800B5DB4 8FAF0028 */  lw         $t7, 0x28($sp)
/* B69B8 800B5DB8 15E00003 */  bnez       $t7, .L800B5DC8
/* B69BC 800B5DBC 00000000 */   nop
/* B69C0 800B5DC0 10000043 */  b          .L800B5ED0
/* B69C4 800B5DC4 2402FFFE */   addiu     $v0, $zero, -2
.L800B5DC8:
/* B69C8 800B5DC8 8FB80028 */  lw         $t8, 0x28($sp)
/* B69CC 800B5DCC 24110001 */  addiu      $s1, $zero, 1
/* B69D0 800B5DD0 2A21001A */  slti       $at, $s1, 0x1a
/* B69D4 800B5DD4 27190020 */  addiu      $t9, $t8, 0x20
/* B69D8 800B5DD8 1020000F */  beqz       $at, .L800B5E18
/* B69DC 800B5DDC AFB90024 */   sw        $t9, 0x24($sp)
.L800B5DE0:
/* B69E0 800B5DE0 00114080 */  sll        $t0, $s1, 2
/* B69E4 800B5DE4 02084821 */  addu       $t1, $s0, $t0
/* B69E8 800B5DE8 8D2A0010 */  lw         $t2, 0x10($t1)
/* B69EC 800B5DEC 8FAB0024 */  lw         $t3, 0x24($sp)
/* B69F0 800B5DF0 01406825 */  or         $t5, $t2, $zero
/* B69F4 800B5DF4 000A67C3 */  sra        $t4, $t2, 0x1f
/* B69F8 800B5DF8 AD6C0000 */  sw         $t4, ($t3)
/* B69FC 800B5DFC AD6D0004 */  sw         $t5, 4($t3)
/* B6A00 800B5E00 8FAE0024 */  lw         $t6, 0x24($sp)
/* B6A04 800B5E04 26310001 */  addiu      $s1, $s1, 1
/* B6A08 800B5E08 2A21001A */  slti       $at, $s1, 0x1a
/* B6A0C 800B5E0C 25CF0008 */  addiu      $t7, $t6, 8
/* B6A10 800B5E10 1420FFF3 */  bnez       $at, .L800B5DE0
/* B6A14 800B5E14 AFAF0024 */   sw        $t7, 0x24($sp)
.L800B5E18:
/* B6A18 800B5E18 8FB80028 */  lw         $t8, 0x28($sp)
/* B6A1C 800B5E1C 2411001C */  addiu      $s1, $zero, 0x1c
/* B6A20 800B5E20 2A210022 */  slti       $at, $s1, 0x22
/* B6A24 800B5E24 271900E8 */  addiu      $t9, $t8, 0xe8
/* B6A28 800B5E28 1020000F */  beqz       $at, .L800B5E68
/* B6A2C 800B5E2C AFB90024 */   sw        $t9, 0x24($sp)
.L800B5E30:
/* B6A30 800B5E30 00114080 */  sll        $t0, $s1, 2
/* B6A34 800B5E34 02084821 */  addu       $t1, $s0, $t0
/* B6A38 800B5E38 8D2A0010 */  lw         $t2, 0x10($t1)
/* B6A3C 800B5E3C 8FAB0024 */  lw         $t3, 0x24($sp)
/* B6A40 800B5E40 01406825 */  or         $t5, $t2, $zero
/* B6A44 800B5E44 000A67C3 */  sra        $t4, $t2, 0x1f
/* B6A48 800B5E48 AD6C0000 */  sw         $t4, ($t3)
/* B6A4C 800B5E4C AD6D0004 */  sw         $t5, 4($t3)
/* B6A50 800B5E50 8FAE0024 */  lw         $t6, 0x24($sp)
/* B6A54 800B5E54 26310001 */  addiu      $s1, $s1, 1
/* B6A58 800B5E58 2A210022 */  slti       $at, $s1, 0x22
/* B6A5C 800B5E5C 25CF0008 */  addiu      $t7, $t6, 8
/* B6A60 800B5E60 1420FFF3 */  bnez       $at, .L800B5E30
/* B6A64 800B5E64 AFAF0024 */   sw        $t7, 0x24($sp)
.L800B5E68:
/* B6A68 800B5E68 8E180098 */  lw         $t8, 0x98($s0)
/* B6A6C 800B5E6C 8FB90028 */  lw         $t9, 0x28($sp)
/* B6A70 800B5E70 AF380120 */  sw         $t8, 0x120($t9)
/* B6A74 800B5E74 8E08009C */  lw         $t0, 0x9c($s0)
/* B6A78 800B5E78 8FA90028 */  lw         $t1, 0x28($sp)
/* B6A7C 800B5E7C AD28011C */  sw         $t0, 0x11c($t1)
/* B6A80 800B5E80 8E0A00A0 */  lw         $t2, 0xa0($s0)
/* B6A84 800B5E84 8FAC0028 */  lw         $t4, 0x28($sp)
/* B6A88 800B5E88 AD8A0118 */  sw         $t2, 0x118($t4)
/* B6A8C 800B5E8C 10000003 */  b          .L800B5E9C
/* B6A90 800B5E90 00000000 */   nop
.L800B5E94:
/* B6A94 800B5E94 1000000E */  b          .L800B5ED0
/* B6A98 800B5E98 2402FFFE */   addiu     $v0, $zero, -2
.L800B5E9C:
/* B6A9C 800B5E9C 8E0D000C */  lw         $t5, 0xc($s0)
/* B6AA0 800B5EA0 AFAD0038 */  sw         $t5, 0x38($sp)
/* B6AA4 800B5EA4 920B0004 */  lbu        $t3, 4($s0)
/* B6AA8 800B5EA8 A3AB0030 */  sb         $t3, 0x30($sp)
/* B6AAC 800B5EAC A7A00032 */  sh         $zero, 0x32($sp)
/* B6AB0 800B5EB0 27A4002C */  addiu      $a0, $sp, 0x2c
/* B6AB4 800B5EB4 24050010 */  addiu      $a1, $zero, 0x10
/* B6AB8 800B5EB8 0C026833 */  jal        func_8009A0CC
/* B6ABC 800B5EBC 24060001 */   addiu     $a2, $zero, 1
/* B6AC0 800B5EC0 10000003 */  b          .L800B5ED0
/* B6AC4 800B5EC4 00001025 */   or        $v0, $zero, $zero
/* B6AC8 800B5EC8 10000001 */  b          .L800B5ED0
/* B6ACC 800B5ECC 00000000 */   nop
.L800B5ED0:
/* B6AD0 800B5ED0 8FBF001C */  lw         $ra, 0x1c($sp)
/* B6AD4 800B5ED4 8FB00014 */  lw         $s0, 0x14($sp)
/* B6AD8 800B5ED8 8FB10018 */  lw         $s1, 0x18($sp)
/* B6ADC 800B5EDC 03E00008 */  jr         $ra
/* B6AE0 800B5EE0 27BD0040 */   addiu     $sp, $sp, 0x40
