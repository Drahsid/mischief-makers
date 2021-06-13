glabel func_8001D0A4
/* 1DCA4 8001D0A4 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 1DCA8 8001D0A8 AFBF003C */  sw         $ra, 0x3c($sp)
/* 1DCAC 8001D0AC AFBE0038 */  sw         $fp, 0x38($sp)
/* 1DCB0 8001D0B0 AFB70034 */  sw         $s7, 0x34($sp)
/* 1DCB4 8001D0B4 AFB60030 */  sw         $s6, 0x30($sp)
/* 1DCB8 8001D0B8 AFB5002C */  sw         $s5, 0x2c($sp)
/* 1DCBC 8001D0BC AFB40028 */  sw         $s4, 0x28($sp)
/* 1DCC0 8001D0C0 AFB30024 */  sw         $s3, 0x24($sp)
/* 1DCC4 8001D0C4 AFB20020 */  sw         $s2, 0x20($sp)
/* 1DCC8 8001D0C8 AFB1001C */  sw         $s1, 0x1c($sp)
/* 1DCCC 8001D0CC 0C00730D */  jal        func_8001CC34
/* 1DCD0 8001D0D0 AFB00018 */   sw        $s0, 0x18($sp)
/* 1DCD4 8001D0D4 3C118018 */  lui        $s1, %hi(D_80178168)
/* 1DCD8 8001D0D8 26318168 */  addiu      $s1, $s1, %lo(D_80178168)
/* 1DCDC 8001D0DC 28410003 */  slti       $at, $v0, 3
/* 1DCE0 8001D0E0 3043FFFF */  andi       $v1, $v0, 0xffff
/* 1DCE4 8001D0E4 AE200000 */  sw         $zero, ($s1)
/* 1DCE8 8001D0E8 24100002 */  addiu      $s0, $zero, 2
/* 1DCEC 8001D0EC 00009825 */  or         $s3, $zero, $zero
/* 1DCF0 8001D0F0 1420001F */  bnez       $at, .L8001D170
/* 1DCF4 8001D0F4 00009025 */   or        $s2, $zero, $zero
/* 1DCF8 8001D0F8 3C1E800C */  lui        $fp, %hi(D_800C4F28)
/* 1DCFC 8001D0FC 27DE4F28 */  addiu      $fp, $fp, %lo(D_800C4F28)
/* 1DD00 8001D100 0060A025 */  or         $s4, $v1, $zero
/* 1DD04 8001D104 27B70048 */  addiu      $s7, $sp, 0x48
/* 1DD08 8001D108 27B6004A */  addiu      $s6, $sp, 0x4a
/* 1DD0C 8001D10C 27B5004C */  addiu      $s5, $sp, 0x4c
.L8001D110:
/* 1DD10 8001D110 3204FFFF */  andi       $a0, $s0, 0xffff
/* 1DD14 8001D114 02A02825 */  or         $a1, $s5, $zero
/* 1DD18 8001D118 02C03025 */  or         $a2, $s6, $zero
/* 1DD1C 8001D11C 0C006C1E */  jal        func_8001B078
/* 1DD20 8001D120 02E03825 */   or        $a3, $s7, $zero
/* 1DD24 8001D124 97AE004C */  lhu        $t6, 0x4c($sp)
/* 1DD28 8001D128 00101040 */  sll        $v0, $s0, 1
/* 1DD2C 8001D12C 29C10006 */  slti       $at, $t6, 6
/* 1DD30 8001D130 1020000A */  beqz       $at, .L8001D15C
/* 1DD34 8001D134 03C2C021 */   addu      $t8, $fp, $v0
/* 1DD38 8001D138 8E2F0000 */  lw         $t7, ($s1)
/* 1DD3C 8001D13C 97190000 */  lhu        $t9, ($t8)
/* 1DD40 8001D140 3C09800D */  lui        $t1, %hi(D_800C8478)
/* 1DD44 8001D144 01F94021 */  addu       $t0, $t7, $t9
/* 1DD48 8001D148 AE280000 */  sw         $t0, ($s1)
/* 1DD4C 8001D14C 01224821 */  addu       $t1, $t1, $v0
/* 1DD50 8001D150 95298478 */  lhu        $t1, %lo(D_800C8478)($t1)
/* 1DD54 8001D154 26730001 */  addiu      $s3, $s3, 1
/* 1DD58 8001D158 02499021 */  addu       $s2, $s2, $t1
.L8001D15C:
/* 1DD5C 8001D15C 26100001 */  addiu      $s0, $s0, 1
/* 1DD60 8001D160 320AFFFF */  andi       $t2, $s0, 0xffff
/* 1DD64 8001D164 0154082A */  slt        $at, $t2, $s4
/* 1DD68 8001D168 1420FFE9 */  bnez       $at, .L8001D110
/* 1DD6C 8001D16C 01408025 */   or        $s0, $t2, $zero
.L8001D170:
/* 1DD70 8001D170 8E220000 */  lw         $v0, ($s1)
/* 1DD74 8001D174 8FB00018 */  lw         $s0, 0x18($sp)
/* 1DD78 8001D178 0052082B */  sltu       $at, $v0, $s2
/* 1DD7C 8001D17C 10200003 */  beqz       $at, .L8001D18C
/* 1DD80 8001D180 001358C0 */   sll       $t3, $s3, 3
/* 1DD84 8001D184 10000023 */  b          .L8001D214
/* 1DD88 8001D188 24020566 */   addiu     $v0, $zero, 0x566
.L8001D18C:
/* 1DD8C 8001D18C 01735823 */  subu       $t3, $t3, $s3
/* 1DD90 8001D190 000B5940 */  sll        $t3, $t3, 5
/* 1DD94 8001D194 01735821 */  addu       $t3, $t3, $s3
/* 1DD98 8001D198 000B58C0 */  sll        $t3, $t3, 3
/* 1DD9C 8001D19C 01726021 */  addu       $t4, $t3, $s2
/* 1DDA0 8001D1A0 004C082B */  sltu       $at, $v0, $t4
/* 1DDA4 8001D1A4 10200003 */  beqz       $at, .L8001D1B4
/* 1DDA8 8001D1A8 001368C0 */   sll       $t5, $s3, 3
/* 1DDAC 8001D1AC 10000019 */  b          .L8001D214
/* 1DDB0 8001D1B0 24020542 */   addiu     $v0, $zero, 0x542
.L8001D1B4:
/* 1DDB4 8001D1B4 01B36823 */  subu       $t5, $t5, $s3
/* 1DDB8 8001D1B8 000D6940 */  sll        $t5, $t5, 5
/* 1DDBC 8001D1BC 01B36821 */  addu       $t5, $t5, $s3
/* 1DDC0 8001D1C0 000D6940 */  sll        $t5, $t5, 5
/* 1DDC4 8001D1C4 01B27021 */  addu       $t6, $t5, $s2
/* 1DDC8 8001D1C8 004E082B */  sltu       $at, $v0, $t6
/* 1DDCC 8001D1CC 10200003 */  beqz       $at, .L8001D1DC
/* 1DDD0 8001D1D0 0013C0C0 */   sll       $t8, $s3, 3
/* 1DDD4 8001D1D4 1000000F */  b          .L8001D214
/* 1DDD8 8001D1D8 24020544 */   addiu     $v0, $zero, 0x544
.L8001D1DC:
/* 1DDDC 8001D1DC 0313C021 */  addu       $t8, $t8, $s3
/* 1DDE0 8001D1E0 0018C080 */  sll        $t8, $t8, 2
/* 1DDE4 8001D1E4 0313C023 */  subu       $t8, $t8, $s3
/* 1DDE8 8001D1E8 0018C0C0 */  sll        $t8, $t8, 3
/* 1DDEC 8001D1EC 0313C021 */  addu       $t8, $t8, $s3
/* 1DDF0 8001D1F0 0018C080 */  sll        $t8, $t8, 2
/* 1DDF4 8001D1F4 0313C021 */  addu       $t8, $t8, $s3
/* 1DDF8 8001D1F8 0018C100 */  sll        $t8, $t8, 4
/* 1DDFC 8001D1FC 03127821 */  addu       $t7, $t8, $s2
/* 1DE00 8001D200 004F082B */  sltu       $at, $v0, $t7
/* 1DE04 8001D204 10200003 */  beqz       $at, .L8001D214
/* 1DE08 8001D208 24020548 */   addiu     $v0, $zero, 0x548
/* 1DE0C 8001D20C 10000001 */  b          .L8001D214
/* 1DE10 8001D210 24020546 */   addiu     $v0, $zero, 0x546
.L8001D214:
/* 1DE14 8001D214 8FBF003C */  lw         $ra, 0x3c($sp)
/* 1DE18 8001D218 8FB1001C */  lw         $s1, 0x1c($sp)
/* 1DE1C 8001D21C 8FB20020 */  lw         $s2, 0x20($sp)
/* 1DE20 8001D220 8FB30024 */  lw         $s3, 0x24($sp)
/* 1DE24 8001D224 8FB40028 */  lw         $s4, 0x28($sp)
/* 1DE28 8001D228 8FB5002C */  lw         $s5, 0x2c($sp)
/* 1DE2C 8001D22C 8FB60030 */  lw         $s6, 0x30($sp)
/* 1DE30 8001D230 8FB70034 */  lw         $s7, 0x34($sp)
/* 1DE34 8001D234 8FBE0038 */  lw         $fp, 0x38($sp)
/* 1DE38 8001D238 03E00008 */  jr         $ra
/* 1DE3C 8001D23C 27BD0058 */   addiu     $sp, $sp, 0x58
