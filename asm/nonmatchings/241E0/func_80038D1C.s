glabel func_80038D1C
/* 3991C 80038D1C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 39920 80038D20 000E7880 */  sll        $t7, $t6, 2
/* 39924 80038D24 01EE7823 */  subu       $t7, $t7, $t6
/* 39928 80038D28 000F7880 */  sll        $t7, $t7, 2
/* 3992C 80038D2C 01EE7821 */  addu       $t7, $t7, $t6
/* 39930 80038D30 000F7880 */  sll        $t7, $t7, 2
/* 39934 80038D34 01EE7823 */  subu       $t7, $t7, $t6
/* 39938 80038D38 3C18800F */  lui        $t8, %hi(gActors)
/* 3993C 80038D3C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 39940 80038D40 000F78C0 */  sll        $t7, $t7, 3
/* 39944 80038D44 01F81021 */  addu       $v0, $t7, $t8
/* 39948 80038D48 8C590150 */  lw         $t9, 0x150($v0)
/* 3994C 80038D4C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 39950 80038D50 AFA40020 */  sw         $a0, 0x20($sp)
/* 39954 80038D54 33281000 */  andi       $t0, $t9, 0x1000
/* 39958 80038D58 01C02025 */  or         $a0, $t6, $zero
/* 3995C 80038D5C 1100000B */  beqz       $t0, .L80038D8C
/* 39960 80038D60 AFBF0014 */   sw        $ra, 0x14($sp)
/* 39964 80038D64 C4440148 */  lwc1       $f4, 0x148($v0)
/* 39968 80038D68 3C013FF8 */  lui        $at, 0x3ff8
/* 3996C 80038D6C 44814800 */  mtc1       $at, $f9
/* 39970 80038D70 44804000 */  mtc1       $zero, $f8
/* 39974 80038D74 460021A1 */  cvt.d.s    $f6, $f4
/* 39978 80038D78 00000000 */  nop
/* 3997C 80038D7C 46283283 */  div.d      $f10, $f6, $f8
/* 39980 80038D80 46205420 */  cvt.s.d    $f16, $f10
/* 39984 80038D84 10000004 */  b          .L80038D98
/* 39988 80038D88 E45000B4 */   swc1      $f16, 0xb4($v0)
.L80038D8C:
/* 3998C 80038D8C C4520148 */  lwc1       $f18, 0x148($v0)
/* 39990 80038D90 00000000 */  nop
/* 39994 80038D94 E45200B4 */  swc1       $f18, 0xb4($v0)
.L80038D98:
/* 39998 80038D98 3C014100 */  lui        $at, 0x4100
/* 3999C 80038D9C C44000B4 */  lwc1       $f0, 0xb4($v0)
/* 399A0 80038DA0 44812000 */  mtc1       $at, $f4
/* 399A4 80038DA4 AFA2001C */  sw         $v0, 0x1c($sp)
/* 399A8 80038DA8 46040182 */  mul.s      $f6, $f0, $f4
/* 399AC 80038DAC A7A40022 */  sh         $a0, 0x22($sp)
/* 399B0 80038DB0 E44000B8 */  swc1       $f0, 0xb8($v0)
/* 399B4 80038DB4 4449F800 */  cfc1       $t1, $31
/* 399B8 80038DB8 00000000 */  nop
/* 399BC 80038DBC 35210003 */  ori        $at, $t1, 3
/* 399C0 80038DC0 38210002 */  xori       $at, $at, 2
/* 399C4 80038DC4 44C1F800 */  ctc1       $at, $31
/* 399C8 80038DC8 00000000 */  nop
/* 399CC 80038DCC 46003224 */  cvt.w.s    $f8, $f6
/* 399D0 80038DD0 44054000 */  mfc1       $a1, $f8
/* 399D4 80038DD4 44C9F800 */  ctc1       $t1, $31
/* 399D8 80038DD8 00055400 */  sll        $t2, $a1, 0x10
/* 399DC 80038DDC 0C00AAF9 */  jal        func_8002ABE4
/* 399E0 80038DE0 000A2C03 */   sra       $a1, $t2, 0x10
/* 399E4 80038DE4 8FA2001C */  lw         $v0, 0x1c($sp)
/* 399E8 80038DE8 97A40022 */  lhu        $a0, 0x22($sp)
/* 399EC 80038DEC 844500A6 */  lh         $a1, 0xa6($v0)
/* 399F0 80038DF0 0C00AB0C */  jal        func_8002AC30
/* 399F4 80038DF4 00000000 */   nop
/* 399F8 80038DF8 8FA2001C */  lw         $v0, 0x1c($sp)
/* 399FC 80038DFC 3C01FFDF */  lui        $at, 0xffdf
/* 39A00 80038E00 8C4C0098 */  lw         $t4, 0x98($v0)
/* 39A04 80038E04 8FBF0014 */  lw         $ra, 0x14($sp)
/* 39A08 80038E08 3421F9FF */  ori        $at, $at, 0xf9ff
/* 39A0C 80038E0C 01816824 */  and        $t5, $t4, $at
/* 39A10 80038E10 27BD0020 */  addiu      $sp, $sp, 0x20
/* 39A14 80038E14 03E00008 */  jr         $ra
/* 39A18 80038E18 AC4D0098 */   sw        $t5, 0x98($v0)
