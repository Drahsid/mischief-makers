glabel func_800ADA90
/* AE690 800ADA90 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* AE694 800ADA94 AFBF0014 */  sw         $ra, 0x14($sp)
/* AE698 800ADA98 AFA40030 */  sw         $a0, 0x30($sp)
/* AE69C 800ADA9C AFA50034 */  sw         $a1, 0x34($sp)
/* AE6A0 800ADAA0 0C02B9A8 */  jal        func_800AE6A0
/* AE6A4 800ADAA4 24040001 */   addiu     $a0, $zero, 1
/* AE6A8 800ADAA8 AFA2001C */  sw         $v0, 0x1c($sp)
/* AE6AC 800ADAAC 8FAE0030 */  lw         $t6, 0x30($sp)
/* AE6B0 800ADAB0 8DCF0008 */  lw         $t7, 8($t6)
/* AE6B4 800ADAB4 AFAF002C */  sw         $t7, 0x2c($sp)
/* AE6B8 800ADAB8 8FB8002C */  lw         $t8, 0x2c($sp)
/* AE6BC 800ADABC 13000020 */  beqz       $t8, .L800ADB40
/* AE6C0 800ADAC0 00000000 */   nop
.L800ADAC4:
/* AE6C4 800ADAC4 8FB9002C */  lw         $t9, 0x2c($sp)
/* AE6C8 800ADAC8 8F280000 */  lw         $t0, ($t9)
/* AE6CC 800ADACC AFA80028 */  sw         $t0, 0x28($sp)
/* AE6D0 800ADAD0 8FA9002C */  lw         $t1, 0x2c($sp)
/* AE6D4 800ADAD4 AFA90024 */  sw         $t1, 0x24($sp)
/* AE6D8 800ADAD8 8FAA0028 */  lw         $t2, 0x28($sp)
/* AE6DC 800ADADC AFAA0020 */  sw         $t2, 0x20($sp)
/* AE6E0 800ADAE0 8FAB0024 */  lw         $t3, 0x24($sp)
/* AE6E4 800ADAE4 87AD0036 */  lh         $t5, 0x36($sp)
/* AE6E8 800ADAE8 856C000C */  lh         $t4, 0xc($t3)
/* AE6EC 800ADAEC 158D000F */  bne        $t4, $t5, .L800ADB2C
/* AE6F0 800ADAF0 00000000 */   nop
/* AE6F4 800ADAF4 8FAE0020 */  lw         $t6, 0x20($sp)
/* AE6F8 800ADAF8 11C00007 */  beqz       $t6, .L800ADB18
/* AE6FC 800ADAFC 00000000 */   nop
/* AE700 800ADB00 8FAF0020 */  lw         $t7, 0x20($sp)
/* AE704 800ADB04 8FB90024 */  lw         $t9, 0x24($sp)
/* AE708 800ADB08 8DF80008 */  lw         $t8, 8($t7)
/* AE70C 800ADB0C 8F280008 */  lw         $t0, 8($t9)
/* AE710 800ADB10 03084821 */  addu       $t1, $t8, $t0
/* AE714 800ADB14 ADE90008 */  sw         $t1, 8($t7)
.L800ADB18:
/* AE718 800ADB18 0C026EBB */  jal        func_8009BAEC
/* AE71C 800ADB1C 8FA4002C */   lw        $a0, 0x2c($sp)
/* AE720 800ADB20 8FA4002C */  lw         $a0, 0x2c($sp)
/* AE724 800ADB24 0C026EAE */  jal        func_8009BAB8
/* AE728 800ADB28 8FA50030 */   lw        $a1, 0x30($sp)
.L800ADB2C:
/* AE72C 800ADB2C 8FAA0028 */  lw         $t2, 0x28($sp)
/* AE730 800ADB30 AFAA002C */  sw         $t2, 0x2c($sp)
/* AE734 800ADB34 8FAB002C */  lw         $t3, 0x2c($sp)
/* AE738 800ADB38 1560FFE2 */  bnez       $t3, .L800ADAC4
/* AE73C 800ADB3C 00000000 */   nop
.L800ADB40:
/* AE740 800ADB40 0C02B9A8 */  jal        func_800AE6A0
/* AE744 800ADB44 8FA4001C */   lw        $a0, 0x1c($sp)
/* AE748 800ADB48 10000001 */  b          .L800ADB50
/* AE74C 800ADB4C 00000000 */   nop
.L800ADB50:
/* AE750 800ADB50 8FBF0014 */  lw         $ra, 0x14($sp)
/* AE754 800ADB54 27BD0030 */  addiu      $sp, $sp, 0x30
/* AE758 800ADB58 03E00008 */  jr         $ra
/* AE75C 800ADB5C 00000000 */   nop
