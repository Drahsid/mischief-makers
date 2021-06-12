glabel func_8001E9DC
/* 1F5DC 8001E9DC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1F5E0 8001E9E0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1F5E4 8001E9E4 AFA40028 */  sw         $a0, 0x28($sp)
/* 1F5E8 8001E9E8 0C0005E3 */  jal        func_8000178C
/* 1F5EC 8001E9EC AFA5002C */   sw        $a1, 0x2c($sp)
/* 1F5F0 8001E9F0 97AE002E */  lhu        $t6, 0x2e($sp)
/* 1F5F4 8001E9F4 24060198 */  addiu      $a2, $zero, 0x198
/* 1F5F8 8001E9F8 01C60019 */  multu      $t6, $a2
/* 1F5FC 8001E9FC 97B8002A */  lhu        $t8, 0x2a($sp)
/* 1F600 8001EA00 3C05800F */  lui        $a1, %hi(D_800EF510)
/* 1F604 8001EA04 24A5F510 */  addiu      $a1, $a1, %lo(D_800EF510)
/* 1F608 8001EA08 00024080 */  sll        $t0, $v0, 2
/* 1F60C 8001EA0C 310903FF */  andi       $t1, $t0, 0x3ff
/* 1F610 8001EA10 00095080 */  sll        $t2, $t1, 2
/* 1F614 8001EA14 3C01800C */  lui        $at, %hi(D_800BCCD0)
/* 1F618 8001EA18 002A0821 */  addu       $at, $at, $t2
/* 1F61C 8001EA1C C424CCD0 */  lwc1       $f4, %lo(D_800BCCD0)($at)
/* 1F620 8001EA20 00007812 */  mflo       $t7
/* 1F624 8001EA24 00AF1821 */  addu       $v1, $a1, $t7
/* 1F628 8001EA28 AFA30020 */  sw         $v1, 0x20($sp)
/* 1F62C 8001EA2C 03060019 */  multu      $t8, $a2
/* 1F630 8001EA30 0000C812 */  mflo       $t9
/* 1F634 8001EA34 00B92021 */  addu       $a0, $a1, $t9
/* 1F638 8001EA38 8C8B00F8 */  lw         $t3, 0xf8($a0)
/* 1F63C 8001EA3C AFA4001C */  sw         $a0, 0x1c($sp)
/* 1F640 8001EA40 448B3000 */  mtc1       $t3, $f6
/* 1F644 8001EA44 00000000 */  nop
/* 1F648 8001EA48 46803220 */  cvt.s.w    $f8, $f6
/* 1F64C 8001EA4C 46082282 */  mul.s      $f10, $f4, $f8
/* 1F650 8001EA50 444CF800 */  cfc1       $t4, $31
/* 1F654 8001EA54 00000000 */  nop
/* 1F658 8001EA58 35810003 */  ori        $at, $t4, 3
/* 1F65C 8001EA5C 38210002 */  xori       $at, $at, 2
/* 1F660 8001EA60 44C1F800 */  ctc1       $at, $31
/* 1F664 8001EA64 00000000 */  nop
/* 1F668 8001EA68 46005424 */  cvt.w.s    $f16, $f10
/* 1F66C 8001EA6C 440D8000 */  mfc1       $t5, $f16
/* 1F670 8001EA70 44CCF800 */  ctc1       $t4, $31
/* 1F674 8001EA74 0C0005E3 */  jal        func_8000178C
/* 1F678 8001EA78 AC6D00F8 */   sw        $t5, 0xf8($v1)
/* 1F67C 8001EA7C 8FA4001C */  lw         $a0, 0x1c($sp)
/* 1F680 8001EA80 304E03FF */  andi       $t6, $v0, 0x3ff
/* 1F684 8001EA84 8C9800FC */  lw         $t8, 0xfc($a0)
/* 1F688 8001EA88 000E7880 */  sll        $t7, $t6, 2
/* 1F68C 8001EA8C 44983000 */  mtc1       $t8, $f6
/* 1F690 8001EA90 3C01800C */  lui        $at, %hi(D_800BCCD0)
/* 1F694 8001EA94 46803120 */  cvt.s.w    $f4, $f6
/* 1F698 8001EA98 002F0821 */  addu       $at, $at, $t7
/* 1F69C 8001EA9C C432CCD0 */  lwc1       $f18, %lo(D_800BCCD0)($at)
/* 1F6A0 8001EAA0 8FA30020 */  lw         $v1, 0x20($sp)
/* 1F6A4 8001EAA4 46049202 */  mul.s      $f8, $f18, $f4
/* 1F6A8 8001EAA8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1F6AC 8001EAAC 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1F6B0 8001EAB0 4459F800 */  cfc1       $t9, $31
/* 1F6B4 8001EAB4 00000000 */  nop
/* 1F6B8 8001EAB8 37210003 */  ori        $at, $t9, 3
/* 1F6BC 8001EABC 38210002 */  xori       $at, $at, 2
/* 1F6C0 8001EAC0 44C1F800 */  ctc1       $at, $31
/* 1F6C4 8001EAC4 00000000 */  nop
/* 1F6C8 8001EAC8 460042A4 */  cvt.w.s    $f10, $f8
/* 1F6CC 8001EACC 44085000 */  mfc1       $t0, $f10
/* 1F6D0 8001EAD0 44D9F800 */  ctc1       $t9, $31
/* 1F6D4 8001EAD4 03E00008 */  jr         $ra
/* 1F6D8 8001EAD8 AC6800FC */   sw        $t0, 0xfc($v1)
