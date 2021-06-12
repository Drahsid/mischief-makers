glabel func_8002AD7C
/* 2B97C 8002AD7C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2B980 8002AD80 000E7880 */  sll        $t7, $t6, 2
/* 2B984 8002AD84 01EE7823 */  subu       $t7, $t7, $t6
/* 2B988 8002AD88 000F7880 */  sll        $t7, $t7, 2
/* 2B98C 8002AD8C 01EE7821 */  addu       $t7, $t7, $t6
/* 2B990 8002AD90 000F7880 */  sll        $t7, $t7, 2
/* 2B994 8002AD94 01EE7823 */  subu       $t7, $t7, $t6
/* 2B998 8002AD98 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 2B99C 8002AD9C 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 2B9A0 8002ADA0 000F78C0 */  sll        $t7, $t7, 3
/* 2B9A4 8002ADA4 01F81821 */  addu       $v1, $t7, $t8
/* 2B9A8 8002ADA8 8C79018C */  lw         $t9, 0x18c($v1)
/* 2B9AC 8002ADAC 30CB03FF */  andi       $t3, $a2, 0x3ff
/* 2B9B0 8002ADB0 2401FFFE */  addiu      $at, $zero, -2
/* 2B9B4 8002ADB4 00AB1023 */  subu       $v0, $a1, $t3
/* 2B9B8 8002ADB8 304803FF */  andi       $t0, $v0, 0x3ff
/* 2B9BC 8002ADBC 03215024 */  and        $t2, $t9, $at
/* 2B9C0 8002ADC0 240C0400 */  addiu      $t4, $zero, 0x400
/* 2B9C4 8002ADC4 00E8082A */  slt        $at, $a3, $t0
/* 2B9C8 8002ADC8 AFA40000 */  sw         $a0, ($sp)
/* 2B9CC 8002ADCC AC6A018C */  sw         $t2, 0x18c($v1)
/* 2B9D0 8002ADD0 01603025 */  or         $a2, $t3, $zero
/* 2B9D4 8002ADD4 10200004 */  beqz       $at, .L8002ADE8
/* 2B9D8 8002ADD8 01874823 */   subu      $t1, $t4, $a3
/* 2B9DC 8002ADDC 0109082A */  slt        $at, $t0, $t1
/* 2B9E0 8002ADE0 14200007 */  bnez       $at, .L8002AE00
/* 2B9E4 8002ADE4 00A6082A */   slt       $at, $a1, $a2
.L8002ADE8:
/* 2B9E8 8002ADE8 8C6D018C */  lw         $t5, 0x18c($v1)
/* 2B9EC 8002ADEC 00A01025 */  or         $v0, $a1, $zero
/* 2B9F0 8002ADF0 35AE0001 */  ori        $t6, $t5, 1
/* 2B9F4 8002ADF4 03E00008 */  jr         $ra
/* 2B9F8 8002ADF8 AC6E018C */   sw        $t6, 0x18c($v1)
/* 2B9FC 8002ADFC 00A6082A */  slt        $at, $a1, $a2
.L8002AE00:
/* 2BA00 8002AE00 14200007 */  bnez       $at, .L8002AE20
/* 2BA04 8002AE04 28410200 */   slti      $at, $v0, 0x200
/* 2BA08 8002AE08 10200003 */  beqz       $at, .L8002AE18
/* 2BA0C 8002AE0C 00000000 */   nop
/* 2BA10 8002AE10 10000009 */  b          .L8002AE38
/* 2BA14 8002AE14 00C73021 */   addu      $a2, $a2, $a3
.L8002AE18:
/* 2BA18 8002AE18 10000007 */  b          .L8002AE38
/* 2BA1C 8002AE1C 00C73023 */   subu      $a2, $a2, $a3
.L8002AE20:
/* 2BA20 8002AE20 2841FE01 */  slti       $at, $v0, -0x1ff
/* 2BA24 8002AE24 14200003 */  bnez       $at, .L8002AE34
/* 2BA28 8002AE28 00000000 */   nop
/* 2BA2C 8002AE2C 10000002 */  b          .L8002AE38
/* 2BA30 8002AE30 00C73023 */   subu      $a2, $a2, $a3
.L8002AE34:
/* 2BA34 8002AE34 00C73021 */  addu       $a2, $a2, $a3
.L8002AE38:
/* 2BA38 8002AE38 30C203FF */  andi       $v0, $a2, 0x3ff
/* 2BA3C 8002AE3C 03E00008 */  jr         $ra
/* 2BA40 8002AE40 00000000 */   nop
