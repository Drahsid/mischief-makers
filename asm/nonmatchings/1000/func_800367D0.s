glabel func_800367D0
/* 373D0 800367D0 3086FFFF */  andi       $a2, $a0, 0xffff
/* 373D4 800367D4 00067080 */  sll        $t6, $a2, 2
/* 373D8 800367D8 01C67023 */  subu       $t6, $t6, $a2
/* 373DC 800367DC 000E7080 */  sll        $t6, $t6, 2
/* 373E0 800367E0 01C67021 */  addu       $t6, $t6, $a2
/* 373E4 800367E4 000E7080 */  sll        $t6, $t6, 2
/* 373E8 800367E8 3C05800F */  lui        $a1, %hi(D_800EF510)
/* 373EC 800367EC 01C67023 */  subu       $t6, $t6, $a2
/* 373F0 800367F0 24A5F510 */  addiu      $a1, $a1, %lo(D_800EF510)
/* 373F4 800367F4 000E70C0 */  sll        $t6, $t6, 3
/* 373F8 800367F8 00AE1021 */  addu       $v0, $a1, $t6
/* 373FC 800367FC 944F0094 */  lhu        $t7, 0x94($v0)
/* 37400 80036800 44801000 */  mtc1       $zero, $f2
/* 37404 80036804 8C430174 */  lw         $v1, 0x174($v0)
/* 37408 80036808 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3740C 8003680C 35F80008 */  ori        $t8, $t7, 8
/* 37410 80036810 AFBF001C */  sw         $ra, 0x1c($sp)
/* 37414 80036814 AFA40020 */  sw         $a0, 0x20($sp)
/* 37418 80036818 A4580094 */  sh         $t8, 0x94($v0)
/* 3741C 8003681C 18600037 */  blez       $v1, .L800368FC
/* 37420 80036820 E44200C4 */   swc1      $f2, 0xc4($v0)
/* 37424 80036824 28610028 */  slti       $at, $v1, 0x28
/* 37428 80036828 10200024 */  beqz       $at, .L800368BC
/* 3742C 8003682C 00000000 */   nop
/* 37430 80036830 8CB90080 */  lw         $t9, 0x80($a1)
/* 37434 80036834 3C0140E0 */  lui        $at, 0x40e0
/* 37438 80036838 44819000 */  mtc1       $at, $f18
/* 3743C 8003683C 33280020 */  andi       $t0, $t9, 0x20
/* 37440 80036840 11000007 */  beqz       $t0, .L80036860
/* 37444 80036844 00000000 */   nop
/* 37448 80036848 44832000 */  mtc1       $v1, $f4
/* 3744C 8003684C 00000000 */  nop
/* 37450 80036850 46802020 */  cvt.s.w    $f0, $f4
/* 37454 80036854 46001181 */  sub.s      $f6, $f2, $f0
/* 37458 80036858 10000005 */  b          .L80036870
/* 3745C 8003685C E44600C4 */   swc1      $f6, 0xc4($v0)
.L80036860:
/* 37460 80036860 44834000 */  mtc1       $v1, $f8
/* 37464 80036864 00000000 */  nop
/* 37468 80036868 46804020 */  cvt.s.w    $f0, $f8
/* 3746C 8003686C E44000C4 */  swc1       $f0, 0xc4($v0)
.L80036870:
/* 37470 80036870 00000000 */  nop
/* 37474 80036874 46120103 */  div.s      $f4, $f0, $f18
/* 37478 80036878 8449008C */  lh         $t1, 0x8c($v0)
/* 3747C 8003687C 00000000 */  nop
/* 37480 80036880 44895000 */  mtc1       $t1, $f10
/* 37484 80036884 00000000 */  nop
/* 37488 80036888 46805420 */  cvt.s.w    $f16, $f10
/* 3748C 8003688C 46048181 */  sub.s      $f6, $f16, $f4
/* 37490 80036890 444AF800 */  cfc1       $t2, $31
/* 37494 80036894 00000000 */  nop
/* 37498 80036898 35410003 */  ori        $at, $t2, 3
/* 3749C 8003689C 38210002 */  xori       $at, $at, 2
/* 374A0 800368A0 44C1F800 */  ctc1       $at, $31
/* 374A4 800368A4 00000000 */  nop
/* 374A8 800368A8 46003224 */  cvt.w.s    $f8, $f6
/* 374AC 800368AC 440B4000 */  mfc1       $t3, $f8
/* 374B0 800368B0 44CAF800 */  ctc1       $t2, $31
/* 374B4 800368B4 10000011 */  b          .L800368FC
/* 374B8 800368B8 A44B008C */   sh        $t3, 0x8c($v0)
.L800368BC:
/* 374BC 800368BC 8CAC0080 */  lw         $t4, 0x80($a1)
/* 374C0 800368C0 3C014220 */  lui        $at, 0x4220
/* 374C4 800368C4 318D0020 */  andi       $t5, $t4, 0x20
/* 374C8 800368C8 11A00005 */  beqz       $t5, .L800368E0
/* 374CC 800368CC 00000000 */   nop
/* 374D0 800368D0 3C01C220 */  lui        $at, 0xc220
/* 374D4 800368D4 44815000 */  mtc1       $at, $f10
/* 374D8 800368D8 10000004 */  b          .L800368EC
/* 374DC 800368DC E44A00C4 */   swc1      $f10, 0xc4($v0)
.L800368E0:
/* 374E0 800368E0 44819000 */  mtc1       $at, $f18
/* 374E4 800368E4 00000000 */  nop
/* 374E8 800368E8 E45200C4 */  swc1       $f18, 0xc4($v0)
.L800368EC:
/* 374EC 800368EC 844E008C */  lh         $t6, 0x8c($v0)
/* 374F0 800368F0 8C430174 */  lw         $v1, 0x174($v0)
/* 374F4 800368F4 25CFFFFB */  addiu      $t7, $t6, -5
/* 374F8 800368F8 A44F008C */  sh         $t7, 0x8c($v0)
.L800368FC:
/* 374FC 800368FC 286103F2 */  slti       $at, $v1, 0x3f2
/* 37500 80036900 10200003 */  beqz       $at, .L80036910
/* 37504 80036904 24780001 */   addiu     $t8, $v1, 1
/* 37508 80036908 AC580174 */  sw         $t8, 0x174($v0)
/* 3750C 8003690C 03001825 */  or         $v1, $t8, $zero
.L80036910:
/* 37510 80036910 2464FFCE */  addiu      $a0, $v1, -0x32
/* 37514 80036914 0004CC00 */  sll        $t9, $a0, 0x10
/* 37518 80036918 00194403 */  sra        $t0, $t9, 0x10
/* 3751C 8003691C 28610032 */  slti       $at, $v1, 0x32
/* 37520 80036920 1420001B */  bnez       $at, .L80036990
/* 37524 80036924 01002025 */   or        $a0, $t0, $zero
/* 37528 80036928 2401001E */  addiu      $at, $zero, 0x1e
/* 3752C 8003692C 0101001A */  div        $zero, $t0, $at
/* 37530 80036930 AC400184 */  sw         $zero, 0x184($v0)
/* 37534 80036934 00004810 */  mfhi       $t1
/* 37538 80036938 15200016 */  bnez       $t1, .L80036994
/* 3753C 8003693C 8FBF001C */   lw        $ra, 0x1c($sp)
/* 37540 80036940 8C4A0170 */  lw         $t2, 0x170($v0)
/* 37544 80036944 00000000 */  nop
/* 37548 80036948 294100A0 */  slti       $at, $t2, 0xa0
/* 3754C 8003694C 10200007 */  beqz       $at, .L8003696C
/* 37550 80036950 00000000 */   nop
/* 37554 80036954 1500000F */  bnez       $t0, .L80036994
/* 37558 80036958 8FBF001C */   lw        $ra, 0x1c($sp)
/* 3755C 8003695C 0C00D9B9 */  jal        func_800366E4
/* 37560 80036960 30C4FFFF */   andi      $a0, $a2, 0xffff
/* 37564 80036964 1000000B */  b          .L80036994
/* 37568 80036968 8FBF001C */   lw        $ra, 0x1c($sp)
.L8003696C:
/* 3756C 8003696C 14800008 */  bnez       $a0, .L80036990
/* 37570 80036970 3C05800D */   lui       $a1, %hi(D_800D1898)
/* 37574 80036974 240B001E */  addiu      $t3, $zero, 0x1e
/* 37578 80036978 AFAB0010 */  sw         $t3, 0x10($sp)
/* 3757C 8003697C 00002025 */  or         $a0, $zero, $zero
/* 37580 80036980 24A51898 */  addiu      $a1, $a1, %lo(D_800D1898)
/* 37584 80036984 00003025 */  or         $a2, $zero, $zero
/* 37588 80036988 0C01F437 */  jal        func_8007D0DC
/* 3758C 8003698C 24070020 */   addiu     $a3, $zero, 0x20
.L80036990:
/* 37590 80036990 8FBF001C */  lw         $ra, 0x1c($sp)
.L80036994:
/* 37594 80036994 27BD0020 */  addiu      $sp, $sp, 0x20
/* 37598 80036998 03E00008 */  jr         $ra
/* 3759C 8003699C 00000000 */   nop
