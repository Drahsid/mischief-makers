glabel func_80045544
/* 46144 80045544 308EFFFF */  andi       $t6, $a0, 0xffff
/* 46148 80045548 30A3FFFF */  andi       $v1, $a1, 0xffff
/* 4614C 8004554C AFA40000 */  sw         $a0, ($sp)
/* 46150 80045550 01C3082A */  slt        $at, $t6, $v1
/* 46154 80045554 01C02025 */  or         $a0, $t6, $zero
/* 46158 80045558 AFA50004 */  sw         $a1, 4($sp)
/* 4615C 8004555C 1020001E */  beqz       $at, .L800455D8
/* 46160 80045560 00001025 */   or        $v0, $zero, $zero
/* 46164 80045564 3C09800D */  lui        $t1, %hi(D_800D36DC)
/* 46168 80045568 3C07800F */  lui        $a3, %hi(D_800EF510)
/* 4616C 8004556C 24E7F510 */  addiu      $a3, $a3, %lo(D_800EF510)
/* 46170 80045570 252936DC */  addiu      $t1, $t1, %lo(D_800D36DC)
/* 46174 80045574 24080198 */  addiu      $t0, $zero, 0x198
.L80045578:
/* 46178 80045578 00880019 */  multu      $a0, $t0
/* 4617C 8004557C 0000C012 */  mflo       $t8
/* 46180 80045580 00F82821 */  addu       $a1, $a3, $t8
/* 46184 80045584 8CA60080 */  lw         $a2, 0x80($a1)
/* 46188 80045588 00000000 */  nop
/* 4618C 8004558C 30D90002 */  andi       $t9, $a2, 2
/* 46190 80045590 1320000C */  beqz       $t9, .L800455C4
/* 46194 80045594 00000000 */   nop
/* 46198 80045598 84AA00E0 */  lh         $t2, 0xe0($a1)
/* 4619C 8004559C 30CB0100 */  andi       $t3, $a2, 0x100
/* 461A0 800455A0 11400008 */  beqz       $t2, .L800455C4
/* 461A4 800455A4 00000000 */   nop
/* 461A8 800455A8 11600006 */  beqz       $t3, .L800455C4
/* 461AC 800455AC 00026040 */   sll       $t4, $v0, 1
/* 461B0 800455B0 24420001 */  addiu      $v0, $v0, 1
/* 461B4 800455B4 012C6821 */  addu       $t5, $t1, $t4
/* 461B8 800455B8 304EFFFF */  andi       $t6, $v0, 0xffff
/* 461BC 800455BC A5A40000 */  sh         $a0, ($t5)
/* 461C0 800455C0 01C01025 */  or         $v0, $t6, $zero
.L800455C4:
/* 461C4 800455C4 24840001 */  addiu      $a0, $a0, 1
/* 461C8 800455C8 308FFFFF */  andi       $t7, $a0, 0xffff
/* 461CC 800455CC 01E3082A */  slt        $at, $t7, $v1
/* 461D0 800455D0 1420FFE9 */  bnez       $at, .L80045578
/* 461D4 800455D4 01E02025 */   or        $a0, $t7, $zero
.L800455D8:
/* 461D8 800455D8 3C09800D */  lui        $t1, %hi(D_800D36DC)
/* 461DC 800455DC 28410010 */  slti       $at, $v0, 0x10
/* 461E0 800455E0 10200009 */  beqz       $at, .L80045608
/* 461E4 800455E4 252936DC */   addiu     $t1, $t1, %lo(D_800D36DC)
.L800455E8:
/* 461E8 800455E8 0002C040 */  sll        $t8, $v0, 1
/* 461EC 800455EC 24420001 */  addiu      $v0, $v0, 1
/* 461F0 800455F0 304AFFFF */  andi       $t2, $v0, 0xffff
/* 461F4 800455F4 29410010 */  slti       $at, $t2, 0x10
/* 461F8 800455F8 0138C821 */  addu       $t9, $t1, $t8
/* 461FC 800455FC 01401025 */  or         $v0, $t2, $zero
/* 46200 80045600 1420FFF9 */  bnez       $at, .L800455E8
/* 46204 80045604 A7200000 */   sh        $zero, ($t9)
.L80045608:
/* 46208 80045608 03E00008 */  jr         $ra
/* 4620C 8004560C 00000000 */   nop
