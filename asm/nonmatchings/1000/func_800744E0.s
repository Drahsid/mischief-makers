glabel func_800744E0
/* 750E0 800744E0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 750E4 800744E4 24080198 */  addiu      $t0, $zero, 0x198
/* 750E8 800744E8 01C80019 */  multu      $t6, $t0
/* 750EC 800744EC 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 750F0 800744F0 3C07800F */  lui        $a3, %hi(gActors)
/* 750F4 800744F4 24E7F510 */  addiu      $a3, $a3, %lo(gActors)
/* 750F8 800744F8 3C01800F */  lui        $at, 0x800f
/* 750FC 800744FC AFA40000 */  sw         $a0, ($sp)
/* 75100 80074500 AFA50004 */  sw         $a1, 4($sp)
/* 75104 80074504 0000C012 */  mflo       $t8
/* 75108 80074508 00F81821 */  addu       $v1, $a3, $t8
/* 7510C 8007450C 00000000 */  nop
/* 75110 80074510 01E80019 */  multu      $t7, $t0
/* 75114 80074514 0000C812 */  mflo       $t9
/* 75118 80074518 00F93021 */  addu       $a2, $a3, $t9
/* 7511C 8007451C C4C400C4 */  lwc1       $f4, 0xc4($a2)
/* 75120 80074520 3C07800C */  lui        $a3, 0x800c
/* 75124 80074524 E46400C4 */  swc1       $f4, 0xc4($v1)
/* 75128 80074528 C4C600C4 */  lwc1       $f6, 0xc4($a2)
/* 7512C 8007452C C42AC86C */  lwc1       $f10, -0x3794($at)
/* 75130 80074530 C42BC868 */  lwc1       $f11, -0x3798($at)
/* 75134 80074534 46003221 */  cvt.d.s    $f8, $f6
/* 75138 80074538 00000000 */  nop
/* 7513C 8007453C 462A4403 */  div.d      $f16, $f8, $f10
/* 75140 80074540 8CCA0080 */  lw         $t2, 0x80($a2)
/* 75144 80074544 24E7CCD0 */  addiu      $a3, $a3, -0x3330
/* 75148 80074548 314B0020 */  andi       $t3, $t2, 0x20
/* 7514C 8007454C 4449F800 */  cfc1       $t1, $31
/* 75150 80074550 00000000 */  nop
/* 75154 80074554 35210003 */  ori        $at, $t1, 3
/* 75158 80074558 38210002 */  xori       $at, $at, 2
/* 7515C 8007455C 44C1F800 */  ctc1       $at, $31
/* 75160 80074560 3C014180 */  lui        $at, 0x4180
/* 75164 80074564 462084A4 */  cvt.w.d    $f18, $f16
/* 75168 80074568 44810000 */  mtc1       $at, $f0
/* 7516C 8007456C 44029000 */  mfc1       $v0, $f18
/* 75170 80074570 44C9F800 */  ctc1       $t1, $31
/* 75174 80074574 11600005 */  beqz       $t3, .L8007458C
/* 75178 80074578 3044FFFF */   andi      $a0, $v0, 0xffff
/* 7517C 8007457C 24440200 */  addiu      $a0, $v0, 0x200
/* 75180 80074580 308CFFFF */  andi       $t4, $a0, 0xffff
/* 75184 80074584 10000001 */  b          .L8007458C
/* 75188 80074588 01802025 */   or        $a0, $t4, $zero
.L8007458C:
/* 7518C 8007458C 308D03FF */  andi       $t5, $a0, 0x3ff
/* 75190 80074590 000D7080 */  sll        $t6, $t5, 2
/* 75194 80074594 00EE7821 */  addu       $t7, $a3, $t6
/* 75198 80074598 C5E40000 */  lwc1       $f4, ($t7)
/* 7519C 8007459C 8CD80088 */  lw         $t8, 0x88($a2)
/* 751A0 800745A0 46002182 */  mul.s      $f6, $f4, $f0
/* 751A4 800745A4 3C014780 */  lui        $at, 0x4780
/* 751A8 800745A8 44811000 */  mtc1       $at, $f2
/* 751AC 800745AC 44985000 */  mtc1       $t8, $f10
/* 751B0 800745B0 46023202 */  mul.s      $f8, $f6, $f2
/* 751B4 800745B4 248AFF00 */  addiu      $t2, $a0, -0x100
/* 751B8 800745B8 314B03FF */  andi       $t3, $t2, 0x3ff
/* 751BC 800745BC 000B6080 */  sll        $t4, $t3, 2
/* 751C0 800745C0 46805420 */  cvt.s.w    $f16, $f10
/* 751C4 800745C4 00EC6821 */  addu       $t5, $a3, $t4
/* 751C8 800745C8 C5A60000 */  lwc1       $f6, ($t5)
/* 751CC 800745CC 46104480 */  add.s      $f18, $f8, $f16
/* 751D0 800745D0 00801025 */  or         $v0, $a0, $zero
/* 751D4 800745D4 4459F800 */  cfc1       $t9, $31
/* 751D8 800745D8 00000000 */  nop
/* 751DC 800745DC 37210003 */  ori        $at, $t9, 3
/* 751E0 800745E0 38210002 */  xori       $at, $at, 2
/* 751E4 800745E4 44C1F800 */  ctc1       $at, $31
/* 751E8 800745E8 00000000 */  nop
/* 751EC 800745EC 46009124 */  cvt.w.s    $f4, $f18
/* 751F0 800745F0 44D9F800 */  ctc1       $t9, $31
/* 751F4 800745F4 44092000 */  mfc1       $t1, $f4
/* 751F8 800745F8 46003282 */  mul.s      $f10, $f6, $f0
/* 751FC 800745FC AC690088 */  sw         $t1, 0x88($v1)
/* 75200 80074600 8CCE008C */  lw         $t6, 0x8c($a2)
/* 75204 80074604 00000000 */  nop
/* 75208 80074608 448E8000 */  mtc1       $t6, $f16
/* 7520C 8007460C 46025202 */  mul.s      $f8, $f10, $f2
/* 75210 80074610 468084A0 */  cvt.s.w    $f18, $f16
/* 75214 80074614 46124100 */  add.s      $f4, $f8, $f18
/* 75218 80074618 444FF800 */  cfc1       $t7, $31
/* 7521C 8007461C 00000000 */  nop
/* 75220 80074620 35E10003 */  ori        $at, $t7, 3
/* 75224 80074624 38210002 */  xori       $at, $at, 2
/* 75228 80074628 44C1F800 */  ctc1       $at, $31
/* 7522C 8007462C 3C010001 */  lui        $at, 1
/* 75230 80074630 460021A4 */  cvt.w.s    $f6, $f4
/* 75234 80074634 44183000 */  mfc1       $t8, $f6
/* 75238 80074638 44CFF800 */  ctc1       $t7, $31
/* 7523C 8007463C AC78008C */  sw         $t8, 0x8c($v1)
/* 75240 80074640 8CD90090 */  lw         $t9, 0x90($a2)
/* 75244 80074644 00000000 */  nop
/* 75248 80074648 03214821 */  addu       $t1, $t9, $at
/* 7524C 8007464C 03E00008 */  jr         $ra
/* 75250 80074650 AC690090 */   sw        $t1, 0x90($v1)
