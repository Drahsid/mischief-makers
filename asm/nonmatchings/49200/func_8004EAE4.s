glabel func_8004EAE4
/* 4F6E4 8004EAE4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 4F6E8 8004EAE8 000E7880 */  sll        $t7, $t6, 2
/* 4F6EC 8004EAEC 01EE7823 */  subu       $t7, $t7, $t6
/* 4F6F0 8004EAF0 000F7880 */  sll        $t7, $t7, 2
/* 4F6F4 8004EAF4 01EE7821 */  addu       $t7, $t7, $t6
/* 4F6F8 8004EAF8 000F7880 */  sll        $t7, $t7, 2
/* 4F6FC 8004EAFC 01EE7823 */  subu       $t7, $t7, $t6
/* 4F700 8004EB00 3C18800F */  lui        $t8, %hi(gActors)
/* 4F704 8004EB04 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 4F708 8004EB08 000F78C0 */  sll        $t7, $t7, 3
/* 4F70C 8004EB0C 01F81021 */  addu       $v0, $t7, $t8
/* 4F710 8004EB10 9059012E */  lbu        $t9, 0x12e($v0)
/* 4F714 8004EB14 904300D0 */  lbu        $v1, 0xd0($v0)
/* 4F718 8004EB18 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4F71C 8004EB1C 37280040 */  ori        $t0, $t9, 0x40
/* 4F720 8004EB20 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4F724 8004EB24 AFA40020 */  sw         $a0, 0x20($sp)
/* 4F728 8004EB28 00003825 */  or         $a3, $zero, $zero
/* 4F72C 8004EB2C 14600006 */  bnez       $v1, .L8004EB48
/* 4F730 8004EB30 A048012E */   sb        $t0, 0x12e($v0)
/* 4F734 8004EB34 8C490158 */  lw         $t1, 0x158($v0)
/* 4F738 8004EB38 246A0001 */  addiu      $t2, $v1, 1
/* 4F73C 8004EB3C AC400170 */  sw         $zero, 0x170($v0)
/* 4F740 8004EB40 A04A00D0 */  sb         $t2, 0xd0($v0)
/* 4F744 8004EB44 A4490084 */  sh         $t1, 0x84($v0)
.L8004EB48:
/* 4F748 8004EB48 944B0084 */  lhu        $t3, 0x84($v0)
/* 4F74C 8004EB4C 8C4C0158 */  lw         $t4, 0x158($v0)
/* 4F750 8004EB50 84450088 */  lh         $a1, 0x88($v0)
/* 4F754 8004EB54 8446008C */  lh         $a2, 0x8c($v0)
/* 4F758 8004EB58 AFA20018 */  sw         $v0, 0x18($sp)
/* 4F75C 8004EB5C A7A7001E */  sh         $a3, 0x1e($sp)
/* 4F760 8004EB60 016C2023 */  subu       $a0, $t3, $t4
/* 4F764 8004EB64 24A5FFE0 */  addiu      $a1, $a1, -0x20
/* 4F768 8004EB68 0C020E81 */  jal        func_80083A04
/* 4F76C 8004EB6C 24C60030 */   addiu     $a2, $a2, 0x30
/* 4F770 8004EB70 3C04800C */  lui        $a0, %hi(gButtonHold)
/* 4F774 8004EB74 3C0D800C */  lui        $t5, %hi(gButton_DRight)
/* 4F778 8004EB78 95ADE510 */  lhu        $t5, %lo(gButton_DRight)($t5)
/* 4F77C 8004EB7C 9484E4F8 */  lhu        $a0, %lo(gButtonHold)($a0)
/* 4F780 8004EB80 8FA20018 */  lw         $v0, 0x18($sp)
/* 4F784 8004EB84 87A7001E */  lh         $a3, 0x1e($sp)
/* 4F788 8004EB88 008D7024 */  and        $t6, $a0, $t5
/* 4F78C 8004EB8C 11C00011 */  beqz       $t6, .L8004EBD4
/* 4F790 8004EB90 3C0A800C */   lui       $t2, 0x800c
/* 4F794 8004EB94 8C430150 */  lw         $v1, 0x150($v0)
/* 4F798 8004EB98 24070001 */  addiu      $a3, $zero, 1
/* 4F79C 8004EB9C 10600003 */  beqz       $v1, .L8004EBAC
/* 4F7A0 8004EBA0 28610009 */   slti      $at, $v1, 9
/* 4F7A4 8004EBA4 1420000B */  bnez       $at, .L8004EBD4
/* 4F7A8 8004EBA8 00000000 */   nop
.L8004EBAC:
/* 4F7AC 8004EBAC 944F0084 */  lhu        $t7, 0x84($v0)
/* 4F7B0 8004EBB0 8C59015C */  lw         $t9, 0x15c($v0)
/* 4F7B4 8004EBB4 25F80001 */  addiu      $t8, $t7, 1
/* 4F7B8 8004EBB8 3308FFFF */  andi       $t0, $t8, 0xffff
/* 4F7BC 8004EBBC 0328082A */  slt        $at, $t9, $t0
/* 4F7C0 8004EBC0 10200004 */  beqz       $at, .L8004EBD4
/* 4F7C4 8004EBC4 A4580084 */   sh        $t8, 0x84($v0)
/* 4F7C8 8004EBC8 8C490158 */  lw         $t1, 0x158($v0)
/* 4F7CC 8004EBCC 00000000 */  nop
/* 4F7D0 8004EBD0 A4490084 */  sh         $t1, 0x84($v0)
.L8004EBD4:
/* 4F7D4 8004EBD4 954AE50C */  lhu        $t2, -0x1af4($t2)
/* 4F7D8 8004EBD8 00000000 */  nop
/* 4F7DC 8004EBDC 008A5824 */  and        $t3, $a0, $t2
/* 4F7E0 8004EBE0 11600013 */  beqz       $t3, .L8004EC30
/* 4F7E4 8004EBE4 00000000 */   nop
/* 4F7E8 8004EBE8 8C430150 */  lw         $v1, 0x150($v0)
/* 4F7EC 8004EBEC 24E70001 */  addiu      $a3, $a3, 1
/* 4F7F0 8004EBF0 00076400 */  sll        $t4, $a3, 0x10
/* 4F7F4 8004EBF4 10600004 */  beqz       $v1, .L8004EC08
/* 4F7F8 8004EBF8 000C3C03 */   sra       $a3, $t4, 0x10
/* 4F7FC 8004EBFC 28610009 */  slti       $at, $v1, 9
/* 4F800 8004EC00 1420000B */  bnez       $at, .L8004EC30
/* 4F804 8004EC04 00000000 */   nop
.L8004EC08:
/* 4F808 8004EC08 944E0084 */  lhu        $t6, 0x84($v0)
/* 4F80C 8004EC0C 8C590158 */  lw         $t9, 0x158($v0)
/* 4F810 8004EC10 25CFFFFF */  addiu      $t7, $t6, -1
/* 4F814 8004EC14 31F8FFFF */  andi       $t8, $t7, 0xffff
/* 4F818 8004EC18 0319082A */  slt        $at, $t8, $t9
/* 4F81C 8004EC1C 10200004 */  beqz       $at, .L8004EC30
/* 4F820 8004EC20 A44F0084 */   sh        $t7, 0x84($v0)
/* 4F824 8004EC24 8C48015C */  lw         $t0, 0x15c($v0)
/* 4F828 8004EC28 00000000 */  nop
/* 4F82C 8004EC2C A4480084 */  sh         $t0, 0x84($v0)
.L8004EC30:
/* 4F830 8004EC30 14E00003 */  bnez       $a3, .L8004EC40
/* 4F834 8004EC34 00000000 */   nop
/* 4F838 8004EC38 10000005 */  b          .L8004EC50
/* 4F83C 8004EC3C AC400150 */   sw        $zero, 0x150($v0)
.L8004EC40:
/* 4F840 8004EC40 8C490150 */  lw         $t1, 0x150($v0)
/* 4F844 8004EC44 00000000 */  nop
/* 4F848 8004EC48 252A0001 */  addiu      $t2, $t1, 1
/* 4F84C 8004EC4C AC4A0150 */  sw         $t2, 0x150($v0)
.L8004EC50:
/* 4F850 8004EC50 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4F854 8004EC54 27BD0020 */  addiu      $sp, $sp, 0x20
/* 4F858 8004EC58 03E00008 */  jr         $ra
/* 4F85C 8004EC5C 00000000 */   nop
