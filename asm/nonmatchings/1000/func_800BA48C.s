glabel func_800BA48C
/* BB08C 800BA48C 27BDFF80 */  addiu      $sp, $sp, -0x80
/* BB090 800BA490 AFBF0014 */  sw         $ra, 0x14($sp)
/* BB094 800BA494 AFA40080 */  sw         $a0, 0x80($sp)
/* BB098 800BA498 AFA50084 */  sw         $a1, 0x84($sp)
/* BB09C 800BA49C AFA60088 */  sw         $a2, 0x88($sp)
/* BB0A0 800BA4A0 AFA7008C */  sw         $a3, 0x8c($sp)
/* BB0A4 800BA4A4 27AE002C */  addiu      $t6, $sp, 0x2c
/* BB0A8 800BA4A8 AFAE0028 */  sw         $t6, 0x28($sp)
/* BB0AC 800BA4AC 27AF002C */  addiu      $t7, $sp, 0x2c
/* BB0B0 800BA4B0 AFAF0024 */  sw         $t7, 0x24($sp)
/* BB0B4 800BA4B4 27B8002C */  addiu      $t8, $sp, 0x2c
/* BB0B8 800BA4B8 2719000C */  addiu      $t9, $t8, 0xc
/* BB0BC 800BA4BC AFB90020 */  sw         $t9, 0x20($sp)
/* BB0C0 800BA4C0 87A8008A */  lh         $t0, 0x8a($sp)
/* BB0C4 800BA4C4 25090003 */  addiu      $t1, $t0, 3
/* BB0C8 800BA4C8 AFA90018 */  sw         $t1, 0x18($sp)
/* BB0CC 800BA4CC 0C0297A4 */  jal        func_800A5E90
/* BB0D0 800BA4D0 00000000 */   nop
/* BB0D4 800BA4D4 AFA20078 */  sw         $v0, 0x78($sp)
/* BB0D8 800BA4D8 8FAA0080 */  lw         $t2, 0x80($sp)
/* BB0DC 800BA4DC 8FAC0024 */  lw         $t4, 0x24($sp)
/* BB0E0 800BA4E0 8D4B0000 */  lw         $t3, ($t2)
/* BB0E4 800BA4E4 AD8B0000 */  sw         $t3, ($t4)
/* BB0E8 800BA4E8 0C029EF8 */  jal        func_800A7BE0
/* BB0EC 800BA4EC 00000000 */   nop
/* BB0F0 800BA4F0 8FAD0080 */  lw         $t5, 0x80($sp)
/* BB0F4 800BA4F4 8FB80024 */  lw         $t8, 0x24($sp)
/* BB0F8 800BA4F8 8DAE000C */  lw         $t6, 0xc($t5)
/* BB0FC 800BA4FC 004E7823 */  subu       $t7, $v0, $t6
/* BB100 800BA500 AF0F0004 */  sw         $t7, 4($t8)
/* BB104 800BA504 87B9008A */  lh         $t9, 0x8a($sp)
/* BB108 800BA508 8FA80024 */  lw         $t0, 0x24($sp)
/* BB10C 800BA50C A5190008 */  sh         $t9, 8($t0)
/* BB110 800BA510 87A90086 */  lh         $t1, 0x86($sp)
/* BB114 800BA514 8FAA0024 */  lw         $t2, 0x24($sp)
/* BB118 800BA518 A549000A */  sh         $t1, 0xa($t2)
/* BB11C 800BA51C 87AB008A */  lh         $t3, 0x8a($sp)
/* BB120 800BA520 AFA0007C */  sw         $zero, 0x7c($sp)
/* BB124 800BA524 19600013 */  blez       $t3, .L800BA574
/* BB128 800BA528 00000000 */   nop
.L800BA52C:
/* BB12C 800BA52C 8FAC008C */  lw         $t4, 0x8c($sp)
/* BB130 800BA530 2401FFFC */  addiu      $at, $zero, -4
/* BB134 800BA534 8FB90020 */  lw         $t9, 0x20($sp)
/* BB138 800BA538 258D0003 */  addiu      $t5, $t4, 3
/* BB13C 800BA53C 01A17024 */  and        $t6, $t5, $at
/* BB140 800BA540 25CF0004 */  addiu      $t7, $t6, 4
/* BB144 800BA544 AFAF008C */  sw         $t7, 0x8c($sp)
/* BB148 800BA548 8DD80000 */  lw         $t8, ($t6)
/* BB14C 800BA54C AF380000 */  sw         $t8, ($t9)
/* BB150 800BA550 8FA80020 */  lw         $t0, 0x20($sp)
/* BB154 800BA554 25090004 */  addiu      $t1, $t0, 4
/* BB158 800BA558 AFA90020 */  sw         $t1, 0x20($sp)
/* BB15C 800BA55C 8FAA007C */  lw         $t2, 0x7c($sp)
/* BB160 800BA560 87AC008A */  lh         $t4, 0x8a($sp)
/* BB164 800BA564 254B0001 */  addiu      $t3, $t2, 1
/* BB168 800BA568 016C082A */  slt        $at, $t3, $t4
/* BB16C 800BA56C 1420FFEF */  bnez       $at, .L800BA52C
/* BB170 800BA570 AFAB007C */   sw        $t3, 0x7c($sp)
.L800BA574:
/* BB174 800BA574 3C0D800F */  lui        $t5, %hi(D_800EABE0)
/* BB178 800BA578 8DADABE0 */  lw         $t5, %lo(D_800EABE0)($t5)
/* BB17C 800BA57C 11A0002C */  beqz       $t5, .L800BA630
/* BB180 800BA580 00000000 */   nop
/* BB184 800BA584 8FAF0080 */  lw         $t7, 0x80($sp)
/* BB188 800BA588 8FB80018 */  lw         $t8, 0x18($sp)
/* BB18C 800BA58C 8DEE0010 */  lw         $t6, 0x10($t7)
/* BB190 800BA590 8DE80004 */  lw         $t0, 4($t7)
/* BB194 800BA594 01D8C821 */  addu       $t9, $t6, $t8
/* BB198 800BA598 00084882 */  srl        $t1, $t0, 2
/* BB19C 800BA59C 0329082B */  sltu       $at, $t9, $t1
/* BB1A0 800BA5A0 10200021 */  beqz       $at, .L800BA628
/* BB1A4 800BA5A4 00000000 */   nop
/* BB1A8 800BA5A8 8FAA0080 */  lw         $t2, 0x80($sp)
/* BB1AC 800BA5AC 8D4C0010 */  lw         $t4, 0x10($t2)
/* BB1B0 800BA5B0 8D4B0008 */  lw         $t3, 8($t2)
/* BB1B4 800BA5B4 000C6880 */  sll        $t5, $t4, 2
/* BB1B8 800BA5B8 016D7021 */  addu       $t6, $t3, $t5
/* BB1BC 800BA5BC AFAE001C */  sw         $t6, 0x1c($sp)
/* BB1C0 800BA5C0 8FB80018 */  lw         $t8, 0x18($sp)
/* BB1C4 800BA5C4 AFA0007C */  sw         $zero, 0x7c($sp)
/* BB1C8 800BA5C8 1B000011 */  blez       $t8, .L800BA610
/* BB1CC 800BA5CC 00000000 */   nop
.L800BA5D0:
/* BB1D0 800BA5D0 8FAF0028 */  lw         $t7, 0x28($sp)
/* BB1D4 800BA5D4 8FB9001C */  lw         $t9, 0x1c($sp)
/* BB1D8 800BA5D8 8DE80000 */  lw         $t0, ($t7)
/* BB1DC 800BA5DC AF280000 */  sw         $t0, ($t9)
/* BB1E0 800BA5E0 8FAC0028 */  lw         $t4, 0x28($sp)
/* BB1E4 800BA5E4 8FA9001C */  lw         $t1, 0x1c($sp)
/* BB1E8 800BA5E8 258B0004 */  addiu      $t3, $t4, 4
/* BB1EC 800BA5EC 252A0004 */  addiu      $t2, $t1, 4
/* BB1F0 800BA5F0 AFAA001C */  sw         $t2, 0x1c($sp)
/* BB1F4 800BA5F4 AFAB0028 */  sw         $t3, 0x28($sp)
/* BB1F8 800BA5F8 8FAD007C */  lw         $t5, 0x7c($sp)
/* BB1FC 800BA5FC 8FB80018 */  lw         $t8, 0x18($sp)
/* BB200 800BA600 25AE0001 */  addiu      $t6, $t5, 1
/* BB204 800BA604 01D8082A */  slt        $at, $t6, $t8
/* BB208 800BA608 1420FFF1 */  bnez       $at, .L800BA5D0
/* BB20C 800BA60C AFAE007C */   sw        $t6, 0x7c($sp)
.L800BA610:
/* BB210 800BA610 8FAF0080 */  lw         $t7, 0x80($sp)
/* BB214 800BA614 8FB90018 */  lw         $t9, 0x18($sp)
/* BB218 800BA618 8DE80010 */  lw         $t0, 0x10($t7)
/* BB21C 800BA61C 01194821 */  addu       $t1, $t0, $t9
/* BB220 800BA620 10000003 */  b          .L800BA630
/* BB224 800BA624 ADE90010 */   sw        $t1, 0x10($t7)
.L800BA628:
/* BB228 800BA628 3C01800F */  lui        $at, %hi(D_800EABE0)
/* BB22C 800BA62C AC20ABE0 */  sw         $zero, %lo(D_800EABE0)($at)
.L800BA630:
/* BB230 800BA630 0C0297AC */  jal        func_800A5EB0
/* BB234 800BA634 8FA40078 */   lw        $a0, 0x78($sp)
/* BB238 800BA638 10000001 */  b          .L800BA640
/* BB23C 800BA63C 00000000 */   nop
.L800BA640:
/* BB240 800BA640 8FBF0014 */  lw         $ra, 0x14($sp)
/* BB244 800BA644 27BD0080 */  addiu      $sp, $sp, 0x80
/* BB248 800BA648 03E00008 */  jr         $ra
/* BB24C 800BA64C 00000000 */   nop
