glabel func_80089084
/* 89C84 80089084 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 89C88 80089088 AFB00014 */  sw         $s0, 0x14($sp)
/* 89C8C 8008908C 3090FFFF */  andi       $s0, $a0, 0xffff
/* 89C90 80089090 AFBF001C */  sw         $ra, 0x1c($sp)
/* 89C94 80089094 AFA40020 */  sw         $a0, 0x20($sp)
/* 89C98 80089098 AFB10018 */  sw         $s1, 0x18($sp)
/* 89C9C 8008909C 0C00E325 */  jal        func_80038C94
/* 89CA0 800890A0 3204FFFF */   andi      $a0, $s0, 0xffff
/* 89CA4 800890A4 00107080 */  sll        $t6, $s0, 2
/* 89CA8 800890A8 01D07023 */  subu       $t6, $t6, $s0
/* 89CAC 800890AC 000E7080 */  sll        $t6, $t6, 2
/* 89CB0 800890B0 01D07021 */  addu       $t6, $t6, $s0
/* 89CB4 800890B4 000E7080 */  sll        $t6, $t6, 2
/* 89CB8 800890B8 01D07023 */  subu       $t6, $t6, $s0
/* 89CBC 800890BC 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 89CC0 800890C0 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 89CC4 800890C4 000E70C0 */  sll        $t6, $t6, 3
/* 89CC8 800890C8 01CF8821 */  addu       $s1, $t6, $t7
/* 89CCC 800890CC 962200D0 */  lhu        $v0, 0xd0($s1)
/* 89CD0 800890D0 24010001 */  addiu      $at, $zero, 1
/* 89CD4 800890D4 10400005 */  beqz       $v0, .L800890EC
/* 89CD8 800890D8 00000000 */   nop
/* 89CDC 800890DC 10410011 */  beq        $v0, $at, .L80089124
/* 89CE0 800890E0 00000000 */   nop
/* 89CE4 800890E4 10000036 */  b          .L800891C0
/* 89CE8 800890E8 00000000 */   nop
.L800890EC:
/* 89CEC 800890EC 0C00E387 */  jal        func_80038E1C
/* 89CF0 800890F0 3204FFFF */   andi      $a0, $s0, 0xffff
/* 89CF4 800890F4 0C02238E */  jal        func_80088E38
/* 89CF8 800890F8 3204FFFF */   andi      $a0, $s0, 0xffff
/* 89CFC 800890FC 962200D8 */  lhu        $v0, 0xd8($s1)
/* 89D00 80089100 3C19800E */  lui        $t9, %hi(D_800E42F0)
/* 89D04 80089104 0002C080 */  sll        $t8, $v0, 2
/* 89D08 80089108 0338C821 */  addu       $t9, $t9, $t8
/* 89D0C 8008910C 8F3942F0 */  lw         $t9, %lo(D_800E42F0)($t9)
/* 89D10 80089110 00000000 */  nop
/* 89D14 80089114 44992000 */  mtc1       $t9, $f4
/* 89D18 80089118 00000000 */  nop
/* 89D1C 8008911C 468021A0 */  cvt.s.w    $f6, $f4
/* 89D20 80089120 E6260114 */  swc1       $f6, 0x114($s1)
.L80089124:
/* 89D24 80089124 0C0223A4 */  jal        func_80088E90
/* 89D28 80089128 3204FFFF */   andi      $a0, $s0, 0xffff
/* 89D2C 8008912C 4448F800 */  cfc1       $t0, $31
/* 89D30 80089130 24050001 */  addiu      $a1, $zero, 1
/* 89D34 80089134 44C5F800 */  ctc1       $a1, $31
/* 89D38 80089138 C6280114 */  lwc1       $f8, 0x114($s1)
/* 89D3C 8008913C 3204FFFF */  andi       $a0, $s0, 0xffff
/* 89D40 80089140 460042A4 */  cvt.w.s    $f10, $f8
/* 89D44 80089144 3C014F00 */  lui        $at, 0x4f00
/* 89D48 80089148 4445F800 */  cfc1       $a1, $31
/* 89D4C 8008914C 00000000 */  nop
/* 89D50 80089150 30A50078 */  andi       $a1, $a1, 0x78
/* 89D54 80089154 10A00012 */  beqz       $a1, .L800891A0
/* 89D58 80089158 00000000 */   nop
/* 89D5C 8008915C 44815000 */  mtc1       $at, $f10
/* 89D60 80089160 24050001 */  addiu      $a1, $zero, 1
/* 89D64 80089164 460A4281 */  sub.s      $f10, $f8, $f10
/* 89D68 80089168 3C018000 */  lui        $at, 0x8000
/* 89D6C 8008916C 44C5F800 */  ctc1       $a1, $31
/* 89D70 80089170 00000000 */  nop
/* 89D74 80089174 460052A4 */  cvt.w.s    $f10, $f10
/* 89D78 80089178 4445F800 */  cfc1       $a1, $31
/* 89D7C 8008917C 00000000 */  nop
/* 89D80 80089180 30A50078 */  andi       $a1, $a1, 0x78
/* 89D84 80089184 14A00004 */  bnez       $a1, .L80089198
/* 89D88 80089188 00000000 */   nop
/* 89D8C 8008918C 44055000 */  mfc1       $a1, $f10
/* 89D90 80089190 10000007 */  b          .L800891B0
/* 89D94 80089194 00A12825 */   or        $a1, $a1, $at
.L80089198:
/* 89D98 80089198 10000005 */  b          .L800891B0
/* 89D9C 8008919C 2405FFFF */   addiu     $a1, $zero, -1
.L800891A0:
/* 89DA0 800891A0 44055000 */  mfc1       $a1, $f10
/* 89DA4 800891A4 00000000 */  nop
/* 89DA8 800891A8 04A0FFFB */  bltz       $a1, .L80089198
/* 89DAC 800891AC 00000000 */   nop
.L800891B0:
/* 89DB0 800891B0 44C8F800 */  ctc1       $t0, $31
/* 89DB4 800891B4 30A9FFFF */  andi       $t1, $a1, 0xffff
/* 89DB8 800891B8 0C00E21A */  jal        func_80038868
/* 89DBC 800891BC 01202825 */   or        $a1, $t1, $zero
.L800891C0:
/* 89DC0 800891C0 0C00E347 */  jal        func_80038D1C
/* 89DC4 800891C4 3204FFFF */   andi      $a0, $s0, 0xffff
/* 89DC8 800891C8 8E2A0080 */  lw         $t2, 0x80($s1)
/* 89DCC 800891CC 3C010002 */  lui        $at, 2
/* 89DD0 800891D0 01415825 */  or         $t3, $t2, $at
/* 89DD4 800891D4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 89DD8 800891D8 AE2B0080 */  sw         $t3, 0x80($s1)
/* 89DDC 800891DC 8FB10018 */  lw         $s1, 0x18($sp)
/* 89DE0 800891E0 8FB00014 */  lw         $s0, 0x14($sp)
/* 89DE4 800891E4 03E00008 */  jr         $ra
/* 89DE8 800891E8 27BD0020 */   addiu     $sp, $sp, 0x20
