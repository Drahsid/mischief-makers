glabel func_80003540
/* 4140 80003540 AFA40000 */  sw         $a0, ($sp)
/* 4144 80003544 00047400 */  sll        $t6, $a0, 0x10
/* 4148 80003548 000E2403 */  sra        $a0, $t6, 0x10
/* 414C 8000354C AFA50004 */  sw         $a1, 4($sp)
/* 4150 80003550 0005C400 */  sll        $t8, $a1, 0x10
/* 4154 80003554 2881FF80 */  slti       $at, $a0, -0x80
/* 4158 80003558 10200003 */  beqz       $at, .L80003568
/* 415C 8000355C 00182C03 */   sra       $a1, $t8, 0x10
/* 4160 80003560 1000000C */  b          .L80003594
/* 4164 80003564 A0C00000 */   sb        $zero, ($a2)
.L80003568:
/* 4168 80003568 28810080 */  slti       $at, $a0, 0x80
/* 416C 8000356C 14200003 */  bnez       $at, .L8000357C
/* 4170 80003570 2408007F */   addiu     $t0, $zero, 0x7f
/* 4174 80003574 10000007 */  b          .L80003594
/* 4178 80003578 A0C80000 */   sb        $t0, ($a2)
.L8000357C:
/* 417C 8000357C 04810003 */  bgez       $a0, .L8000358C
/* 4180 80003580 00044843 */   sra       $t1, $a0, 1
/* 4184 80003584 24810001 */  addiu      $at, $a0, 1
/* 4188 80003588 00014843 */  sra        $t1, $at, 1
.L8000358C:
/* 418C 8000358C 252A0040 */  addiu      $t2, $t1, 0x40
/* 4190 80003590 A0CA0000 */  sb         $t2, ($a2)
.L80003594:
/* 4194 80003594 18800003 */  blez       $a0, .L800035A4
/* 4198 80003598 00041023 */   negu      $v0, $a0
/* 419C 8000359C 10000001 */  b          .L800035A4
/* 41A0 800035A0 00801025 */   or        $v0, $a0, $zero
.L800035A4:
/* 41A4 800035A4 18A00003 */  blez       $a1, .L800035B4
/* 41A8 800035A8 00051823 */   negu      $v1, $a1
/* 41AC 800035AC 10000001 */  b          .L800035B4
/* 41B0 800035B0 00A01825 */   or        $v1, $a1, $zero
.L800035B4:
/* 41B4 800035B4 00622021 */  addu       $a0, $v1, $v0
/* 41B8 800035B8 00045C00 */  sll        $t3, $a0, 0x10
/* 41BC 800035BC 000B2403 */  sra        $a0, $t3, 0x10
/* 41C0 800035C0 28810100 */  slti       $at, $a0, 0x100
/* 41C4 800035C4 10200003 */  beqz       $at, .L800035D4
/* 41C8 800035C8 240D0100 */   addiu     $t5, $zero, 0x100
/* 41CC 800035CC 03E00008 */  jr         $ra
/* 41D0 800035D0 A4ED0000 */   sh        $t5, ($a3)
.L800035D4:
/* 41D4 800035D4 28810200 */  slti       $at, $a0, 0x200
/* 41D8 800035D8 10200004 */  beqz       $at, .L800035EC
/* 41DC 800035DC 240E0200 */   addiu     $t6, $zero, 0x200
/* 41E0 800035E0 01C47823 */  subu       $t7, $t6, $a0
/* 41E4 800035E4 03E00008 */  jr         $ra
/* 41E8 800035E8 A4EF0000 */   sh        $t7, ($a3)
.L800035EC:
/* 41EC 800035EC A4E00000 */  sh         $zero, ($a3)
/* 41F0 800035F0 03E00008 */  jr         $ra
/* 41F4 800035F4 00000000 */   nop