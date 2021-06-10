glabel func_800B64A8
/* B70A8 800B64A8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B70AC 800B64AC AFBF001C */  sw         $ra, 0x1c($sp)
/* B70B0 800B64B0 AFA40038 */  sw         $a0, 0x38($sp)
/* B70B4 800B64B4 AFB10018 */  sw         $s1, 0x18($sp)
/* B70B8 800B64B8 AFB00014 */  sw         $s0, 0x14($sp)
/* B70BC 800B64BC 8FB00038 */  lw         $s0, 0x38($sp)
/* B70C0 800B64C0 0C02E998 */  jal        func_800BA660
/* B70C4 800B64C4 00000000 */   nop
/* B70C8 800B64C8 10400003 */  beqz       $v0, .L800B64D8
/* B70CC 800B64CC 00000000 */   nop
/* B70D0 800B64D0 10000025 */  b          .L800B6568
/* B70D4 800B64D4 2402FFFC */   addiu     $v0, $zero, -4
.L800B64D8:
/* B70D8 800B64D8 0C02D6AE */  jal        func_800B5AB8
/* B70DC 800B64DC 24040001 */   addiu     $a0, $zero, 1
/* B70E0 800B64E0 00008825 */  or         $s1, $zero, $zero
/* B70E4 800B64E4 2A210020 */  slti       $at, $s1, 0x20
/* B70E8 800B64E8 10200010 */  beqz       $at, .L800B652C
/* B70EC 800B64EC 00000000 */   nop
.L800B64F0:
/* B70F0 800B64F0 00117080 */  sll        $t6, $s1, 2
/* B70F4 800B64F4 020E2821 */  addu       $a1, $s0, $t6
/* B70F8 800B64F8 24A50010 */  addiu      $a1, $a1, 0x10
/* B70FC 800B64FC 3C040400 */  lui        $a0, 0x400
/* B7100 800B6500 0C02A484 */  jal        func_800A9210
/* B7104 800B6504 24060004 */   addiu     $a2, $zero, 4
/* B7108 800B6508 24040032 */  addiu      $a0, $zero, 0x32
/* B710C 800B650C 0C02D687 */  jal        func_800B5A1C
/* B7110 800B6510 02202825 */   or        $a1, $s1, $zero
/* B7114 800B6514 0C02E9B2 */  jal        func_800BA6C8
/* B7118 800B6518 00000000 */   nop
/* B711C 800B651C 26310001 */  addiu      $s1, $s1, 1
/* B7120 800B6520 2A210020 */  slti       $at, $s1, 0x20
/* B7124 800B6524 1420FFF2 */  bnez       $at, .L800B64F0
/* B7128 800B6528 00000000 */   nop
.L800B652C:
/* B712C 800B652C 0C02D6DA */  jal        func_800B5B68
/* B7130 800B6530 24040001 */   addiu     $a0, $zero, 1
/* B7134 800B6534 8E0F000C */  lw         $t7, 0xc($s0)
/* B7138 800B6538 AFAF0030 */  sw         $t7, 0x30($sp)
/* B713C 800B653C 92180004 */  lbu        $t8, 4($s0)
/* B7140 800B6540 A3B80028 */  sb         $t8, 0x28($sp)
/* B7144 800B6544 A7A0002A */  sh         $zero, 0x2a($sp)
/* B7148 800B6548 27A40024 */  addiu      $a0, $sp, 0x24
/* B714C 800B654C 24050010 */  addiu      $a1, $zero, 0x10
/* B7150 800B6550 0C026833 */  jal        func_8009A0CC
/* B7154 800B6554 24060001 */   addiu     $a2, $zero, 1
/* B7158 800B6558 10000003 */  b          .L800B6568
/* B715C 800B655C 00001025 */   or        $v0, $zero, $zero
/* B7160 800B6560 10000001 */  b          .L800B6568
/* B7164 800B6564 00000000 */   nop
.L800B6568:
/* B7168 800B6568 8FBF001C */  lw         $ra, 0x1c($sp)
/* B716C 800B656C 8FB00014 */  lw         $s0, 0x14($sp)
/* B7170 800B6570 8FB10018 */  lw         $s1, 0x18($sp)
/* B7174 800B6574 03E00008 */  jr         $ra
/* B7178 800B6578 27BD0038 */   addiu     $sp, $sp, 0x38
