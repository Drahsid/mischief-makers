glabel func_8009F1AC
/* 9FDAC 8009F1AC 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 9FDB0 8009F1B0 240EFFFF */  addiu      $t6, $zero, -1
/* 9FDB4 8009F1B4 AFAE0008 */  sw         $t6, 8($sp)
/* 9FDB8 8009F1B8 8C8F0010 */  lw         $t7, 0x10($a0)
/* 9FDBC 8009F1BC AFAF0004 */  sw         $t7, 4($sp)
/* 9FDC0 8009F1C0 8C980004 */  lw         $t8, 4($a0)
/* 9FDC4 8009F1C4 17000003 */  bnez       $t8, .L8009F1D4
/* 9FDC8 8009F1C8 00000000 */   nop
/* 9FDCC 8009F1CC 1000002C */  b          .L8009F280
/* 9FDD0 8009F1D0 00001025 */   or        $v0, $zero, $zero
.L8009F1D4:
/* 9FDD4 8009F1D4 AFA0000C */  sw         $zero, 0xc($sp)
.L8009F1D8:
/* 9FDD8 8009F1D8 8C990004 */  lw         $t9, 4($a0)
/* 9FDDC 8009F1DC 8FA8000C */  lw         $t0, 0xc($sp)
/* 9FDE0 8009F1E0 01194806 */  srlv       $t1, $t9, $t0
/* 9FDE4 8009F1E4 312A0001 */  andi       $t2, $t1, 1
/* 9FDE8 8009F1E8 11400019 */  beqz       $t2, .L8009F250
/* 9FDEC 8009F1EC 00000000 */   nop
/* 9FDF0 8009F1F0 8C8B0014 */  lw         $t3, 0x14($a0)
/* 9FDF4 8009F1F4 11600009 */  beqz       $t3, .L8009F21C
/* 9FDF8 8009F1F8 00000000 */   nop
/* 9FDFC 8009F1FC 8FAC000C */  lw         $t4, 0xc($sp)
/* 9FE00 8009F200 8FB80004 */  lw         $t8, 4($sp)
/* 9FE04 8009F204 000C6880 */  sll        $t5, $t4, 2
/* 9FE08 8009F208 008D7021 */  addu       $t6, $a0, $t5
/* 9FE0C 8009F20C 8DCF00B8 */  lw         $t7, 0xb8($t6)
/* 9FE10 8009F210 008D4021 */  addu       $t0, $a0, $t5
/* 9FE14 8009F214 01F8C823 */  subu       $t9, $t7, $t8
/* 9FE18 8009F218 AD1900B8 */  sw         $t9, 0xb8($t0)
.L8009F21C:
/* 9FE1C 8009F21C 8FA9000C */  lw         $t1, 0xc($sp)
/* 9FE20 8009F220 8FAE0008 */  lw         $t6, 8($sp)
/* 9FE24 8009F224 00095080 */  sll        $t2, $t1, 2
/* 9FE28 8009F228 008A5821 */  addu       $t3, $a0, $t2
/* 9FE2C 8009F22C 8D6C00B8 */  lw         $t4, 0xb8($t3)
/* 9FE30 8009F230 018E082B */  sltu       $at, $t4, $t6
/* 9FE34 8009F234 10200006 */  beqz       $at, .L8009F250
/* 9FE38 8009F238 00000000 */   nop
/* 9FE3C 8009F23C 8FAF000C */  lw         $t7, 0xc($sp)
/* 9FE40 8009F240 000FC080 */  sll        $t8, $t7, 2
/* 9FE44 8009F244 00986821 */  addu       $t5, $a0, $t8
/* 9FE48 8009F248 8DB900B8 */  lw         $t9, 0xb8($t5)
/* 9FE4C 8009F24C AFB90008 */  sw         $t9, 8($sp)
.L8009F250:
/* 9FE50 8009F250 8FA8000C */  lw         $t0, 0xc($sp)
/* 9FE54 8009F254 25090001 */  addiu      $t1, $t0, 1
/* 9FE58 8009F258 2D210010 */  sltiu      $at, $t1, 0x10
/* 9FE5C 8009F25C 1420FFDE */  bnez       $at, .L8009F1D8
/* 9FE60 8009F260 AFA9000C */   sw        $t1, 0xc($sp)
/* 9FE64 8009F264 AC800014 */  sw         $zero, 0x14($a0)
/* 9FE68 8009F268 8FAA0008 */  lw         $t2, 8($sp)
/* 9FE6C 8009F26C ACAA0000 */  sw         $t2, ($a1)
/* 9FE70 8009F270 10000003 */  b          .L8009F280
/* 9FE74 8009F274 24020001 */   addiu     $v0, $zero, 1
/* 9FE78 8009F278 10000001 */  b          .L8009F280
/* 9FE7C 8009F27C 00000000 */   nop
.L8009F280:
/* 9FE80 8009F280 03E00008 */  jr         $ra
/* 9FE84 8009F284 27BD0010 */   addiu     $sp, $sp, 0x10
