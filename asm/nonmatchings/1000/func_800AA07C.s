glabel func_800AA07C
/* AAC7C 800AA07C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AAC80 800AA080 AFBF001C */  sw         $ra, 0x1c($sp)
/* AAC84 800AA084 AFA40028 */  sw         $a0, 0x28($sp)
/* AAC88 800AA088 AFA5002C */  sw         $a1, 0x2c($sp)
/* AAC8C 800AA08C AFA60030 */  sw         $a2, 0x30($sp)
/* AAC90 800AA090 AFB00018 */  sw         $s0, 0x18($sp)
/* AAC94 800AA094 8FAE0028 */  lw         $t6, 0x28($sp)
/* AAC98 800AA098 24010001 */  addiu      $at, $zero, 1
/* AAC9C 800AA09C 15C10005 */  bne        $t6, $at, .L800AA0B4
/* AACA0 800AA0A0 00000000 */   nop
/* AACA4 800AA0A4 0C02A45C */  jal        func_800A9170
/* AACA8 800AA0A8 8FA40030 */   lw        $a0, 0x30($sp)
/* AACAC 800AA0AC 10000004 */  b          .L800AA0C0
/* AACB0 800AA0B0 AFA20024 */   sw        $v0, 0x24($sp)
.L800AA0B4:
/* AACB4 800AA0B4 8FAF0030 */  lw         $t7, 0x30($sp)
/* AACB8 800AA0B8 8DF80000 */  lw         $t8, ($t7)
/* AACBC 800AA0BC AFB80024 */  sw         $t8, 0x24($sp)
.L800AA0C0:
/* AACC0 800AA0C0 8FB90024 */  lw         $t9, 0x24($sp)
/* AACC4 800AA0C4 00194683 */  sra        $t0, $t9, 0x1a
/* AACC8 800AA0C8 3109003F */  andi       $t1, $t0, 0x3f
/* AACCC 800AA0CC 2D210018 */  sltiu      $at, $t1, 0x18
/* AACD0 800AA0D0 10200083 */  beqz       $at, .L800AA2E0
/* AACD4 800AA0D4 00000000 */   nop
/* AACD8 800AA0D8 00094880 */  sll        $t1, $t1, 2
/* AACDC 800AA0DC 3C01800F */  lui        $at, %hi(D_800EDE30)
/* AACE0 800AA0E0 00290821 */  addu       $at, $at, $t1
/* AACE4 800AA0E4 8C29DE30 */  lw         $t1, %lo(D_800EDE30)($at)
/* AACE8 800AA0E8 01200008 */  jr         $t1
/* AACEC 800AA0EC 00000000 */   nop
/* AACF0 800AA0F0 8FAA0024 */  lw         $t2, 0x24($sp)
/* AACF4 800AA0F4 000A5943 */  sra        $t3, $t2, 5
/* AACF8 800AA0F8 316C7FFF */  andi       $t4, $t3, 0x7fff
/* AACFC 800AA0FC 1580000F */  bnez       $t4, .L800AA13C
/* AAD00 800AA100 00000000 */   nop
/* AAD04 800AA104 314D003F */  andi       $t5, $t2, 0x3f
/* AAD08 800AA108 24010008 */  addiu      $at, $zero, 8
/* AAD0C 800AA10C 15A1000B */  bne        $t5, $at, .L800AA13C
/* AAD10 800AA110 00000000 */   nop
/* AAD14 800AA114 8FA60024 */  lw         $a2, 0x24($sp)
/* AAD18 800AA118 8FA40028 */  lw         $a0, 0x28($sp)
/* AAD1C 800AA11C 8FA5002C */  lw         $a1, 0x2c($sp)
/* AAD20 800AA120 00067543 */  sra        $t6, $a2, 0x15
/* AAD24 800AA124 01C03025 */  or         $a2, $t6, $zero
/* AAD28 800AA128 30CF001F */  andi       $t7, $a2, 0x1f
/* AAD2C 800AA12C 0C02D95F */  jal        func_800B657C
/* AAD30 800AA130 01E03025 */   or        $a2, $t7, $zero
/* AAD34 800AA134 1000006E */  b          .L800AA2F0
/* AAD38 800AA138 00000000 */   nop
.L800AA13C:
/* AAD3C 800AA13C 8FB80024 */  lw         $t8, 0x24($sp)
/* AAD40 800AA140 0018CC03 */  sra        $t9, $t8, 0x10
/* AAD44 800AA144 3328001F */  andi       $t0, $t9, 0x1f
/* AAD48 800AA148 1500000F */  bnez       $t0, .L800AA188
/* AAD4C 800AA14C 00000000 */   nop
/* AAD50 800AA150 330907FF */  andi       $t1, $t8, 0x7ff
/* AAD54 800AA154 24010009 */  addiu      $at, $zero, 9
/* AAD58 800AA158 1521000B */  bne        $t1, $at, .L800AA188
/* AAD5C 800AA15C 00000000 */   nop
/* AAD60 800AA160 8FA60024 */  lw         $a2, 0x24($sp)
/* AAD64 800AA164 8FA40028 */  lw         $a0, 0x28($sp)
/* AAD68 800AA168 8FA5002C */  lw         $a1, 0x2c($sp)
/* AAD6C 800AA16C 00065D43 */  sra        $t3, $a2, 0x15
/* AAD70 800AA170 01603025 */  or         $a2, $t3, $zero
/* AAD74 800AA174 30CC001F */  andi       $t4, $a2, 0x1f
/* AAD78 800AA178 0C02D95F */  jal        func_800B657C
/* AAD7C 800AA17C 01803025 */   or        $a2, $t4, $zero
/* AAD80 800AA180 1000005B */  b          .L800AA2F0
/* AAD84 800AA184 00000000 */   nop
.L800AA188:
/* AAD88 800AA188 10000055 */  b          .L800AA2E0
/* AAD8C 800AA18C 00000000 */   nop
/* AAD90 800AA190 8FAA0024 */  lw         $t2, 0x24($sp)
/* AAD94 800AA194 000A6C03 */  sra        $t5, $t2, 0x10
/* AAD98 800AA198 31AE001F */  andi       $t6, $t5, 0x1f
/* AAD9C 800AA19C 2DC10014 */  sltiu      $at, $t6, 0x14
/* AADA0 800AA1A0 1020000E */  beqz       $at, .L800AA1DC
/* AADA4 800AA1A4 00000000 */   nop
/* AADA8 800AA1A8 000E7080 */  sll        $t6, $t6, 2
/* AADAC 800AA1AC 3C01800F */  lui        $at, %hi(D_800EDE90)
/* AADB0 800AA1B0 002E0821 */  addu       $at, $at, $t6
/* AADB4 800AA1B4 8C2EDE90 */  lw         $t6, %lo(D_800EDE90)($at)
/* AADB8 800AA1B8 01C00008 */  jr         $t6
/* AADBC 800AA1BC 00000000 */   nop
/* AADC0 800AA1C0 8FAF0024 */  lw         $t7, 0x24($sp)
/* AADC4 800AA1C4 8FB80030 */  lw         $t8, 0x30($sp)
/* AADC8 800AA1C8 000FCC00 */  sll        $t9, $t7, 0x10
/* AADCC 800AA1CC 00194383 */  sra        $t0, $t9, 0xe
/* AADD0 800AA1D0 01181021 */  addu       $v0, $t0, $t8
/* AADD4 800AA1D4 10000046 */  b          .L800AA2F0
/* AADD8 800AA1D8 24420004 */   addiu     $v0, $v0, 4
.L800AA1DC:
/* AADDC 800AA1DC 10000040 */  b          .L800AA2E0
/* AADE0 800AA1E0 00000000 */   nop
/* AADE4 800AA1E4 8FAA0030 */  lw         $t2, 0x30($sp)
/* AADE8 800AA1E8 8FA90024 */  lw         $t1, 0x24($sp)
/* AADEC 800AA1EC 254D0004 */  addiu      $t5, $t2, 4
/* AADF0 800AA1F0 000D7703 */  sra        $t6, $t5, 0x1c
/* AADF4 800AA1F4 00095980 */  sll        $t3, $t1, 6
/* AADF8 800AA1F8 000B6102 */  srl        $t4, $t3, 4
/* AADFC 800AA1FC 000E7F00 */  sll        $t7, $t6, 0x1c
/* AAE00 800AA200 1000003B */  b          .L800AA2F0
/* AAE04 800AA204 018F1021 */   addu      $v0, $t4, $t7
/* AAE08 800AA208 8FB90024 */  lw         $t9, 0x24($sp)
/* AAE0C 800AA20C 8FA90030 */  lw         $t1, 0x30($sp)
/* AAE10 800AA210 00194400 */  sll        $t0, $t9, 0x10
/* AAE14 800AA214 0008C383 */  sra        $t8, $t0, 0xe
/* AAE18 800AA218 03091021 */  addu       $v0, $t8, $t1
/* AAE1C 800AA21C 10000034 */  b          .L800AA2F0
/* AAE20 800AA220 24420004 */   addiu     $v0, $v0, 4
/* AAE24 800AA224 8FAB0024 */  lw         $t3, 0x24($sp)
/* AAE28 800AA228 000B5403 */  sra        $t2, $t3, 0x10
/* AAE2C 800AA22C 314D001F */  andi       $t5, $t2, 0x1f
/* AAE30 800AA230 15A00008 */  bnez       $t5, .L800AA254
/* AAE34 800AA234 00000000 */   nop
/* AAE38 800AA238 8FAE0024 */  lw         $t6, 0x24($sp)
/* AAE3C 800AA23C 8FB90030 */  lw         $t9, 0x30($sp)
/* AAE40 800AA240 000E6400 */  sll        $t4, $t6, 0x10
/* AAE44 800AA244 000C7B83 */  sra        $t7, $t4, 0xe
/* AAE48 800AA248 01F91021 */  addu       $v0, $t7, $t9
/* AAE4C 800AA24C 10000028 */  b          .L800AA2F0
/* AAE50 800AA250 24420004 */   addiu     $v0, $v0, 4
.L800AA254:
/* AAE54 800AA254 10000022 */  b          .L800AA2E0
/* AAE58 800AA258 00000000 */   nop
/* AAE5C 800AA25C 8FA80024 */  lw         $t0, 0x24($sp)
/* AAE60 800AA260 24010008 */  addiu      $at, $zero, 8
/* AAE64 800AA264 0008C543 */  sra        $t8, $t0, 0x15
/* AAE68 800AA268 3309001F */  andi       $t1, $t8, 0x1f
/* AAE6C 800AA26C 1521001A */  bne        $t1, $at, .L800AA2D8
/* AAE70 800AA270 00000000 */   nop
/* AAE74 800AA274 8FB00024 */  lw         $s0, 0x24($sp)
/* AAE78 800AA278 00105C03 */  sra        $t3, $s0, 0x10
/* AAE7C 800AA27C 01608025 */  or         $s0, $t3, $zero
/* AAE80 800AA280 320A001F */  andi       $t2, $s0, 0x1f
/* AAE84 800AA284 01408025 */  or         $s0, $t2, $zero
/* AAE88 800AA288 1200000C */  beqz       $s0, .L800AA2BC
/* AAE8C 800AA28C 00000000 */   nop
/* AAE90 800AA290 24010001 */  addiu      $at, $zero, 1
/* AAE94 800AA294 12010009 */  beq        $s0, $at, .L800AA2BC
/* AAE98 800AA298 00000000 */   nop
/* AAE9C 800AA29C 24010002 */  addiu      $at, $zero, 2
/* AAEA0 800AA2A0 12010006 */  beq        $s0, $at, .L800AA2BC
/* AAEA4 800AA2A4 00000000 */   nop
/* AAEA8 800AA2A8 24010003 */  addiu      $at, $zero, 3
/* AAEAC 800AA2AC 12010003 */  beq        $s0, $at, .L800AA2BC
/* AAEB0 800AA2B0 00000000 */   nop
/* AAEB4 800AA2B4 10000008 */  b          .L800AA2D8
/* AAEB8 800AA2B8 00000000 */   nop
.L800AA2BC:
/* AAEBC 800AA2BC 8FAD0024 */  lw         $t5, 0x24($sp)
/* AAEC0 800AA2C0 8FAF0030 */  lw         $t7, 0x30($sp)
/* AAEC4 800AA2C4 000D7400 */  sll        $t6, $t5, 0x10
/* AAEC8 800AA2C8 000E6383 */  sra        $t4, $t6, 0xe
/* AAECC 800AA2CC 018F1021 */  addu       $v0, $t4, $t7
/* AAED0 800AA2D0 10000007 */  b          .L800AA2F0
/* AAED4 800AA2D4 24420004 */   addiu     $v0, $v0, 4
.L800AA2D8:
/* AAED8 800AA2D8 10000001 */  b          .L800AA2E0
/* AAEDC 800AA2DC 00000000 */   nop
.L800AA2E0:
/* AAEE0 800AA2E0 10000003 */  b          .L800AA2F0
/* AAEE4 800AA2E4 2402FFFF */   addiu     $v0, $zero, -1
/* AAEE8 800AA2E8 10000001 */  b          .L800AA2F0
/* AAEEC 800AA2EC 00000000 */   nop
.L800AA2F0:
/* AAEF0 800AA2F0 8FBF001C */  lw         $ra, 0x1c($sp)
/* AAEF4 800AA2F4 8FB00018 */  lw         $s0, 0x18($sp)
/* AAEF8 800AA2F8 27BD0028 */  addiu      $sp, $sp, 0x28
/* AAEFC 800AA2FC 03E00008 */  jr         $ra
/* AAF00 800AA300 00000000 */   nop
