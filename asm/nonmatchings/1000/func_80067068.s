glabel func_80067068
/* 67C68 80067068 308EFFFF */  andi       $t6, $a0, 0xffff
/* 67C6C 8006706C 24070198 */  addiu      $a3, $zero, 0x198
/* 67C70 80067070 01C70019 */  multu      $t6, $a3
/* 67C74 80067074 3C06800F */  lui        $a2, %hi(gActors)
/* 67C78 80067078 24C6F510 */  addiu      $a2, $a2, %lo(gActors)
/* 67C7C 8006707C 4459F800 */  cfc1       $t9, $31
/* 67C80 80067080 24020001 */  addiu      $v0, $zero, 1
/* 67C84 80067084 44C2F800 */  ctc1       $v0, $31
/* 67C88 80067088 AFA50004 */  sw         $a1, 4($sp)
/* 67C8C 8006708C 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 67C90 80067090 01E02825 */  or         $a1, $t7, $zero
/* 67C94 80067094 AFA40000 */  sw         $a0, ($sp)
/* 67C98 80067098 3C014F00 */  lui        $at, 0x4f00
/* 67C9C 8006709C 0000C012 */  mflo       $t8
/* 67CA0 800670A0 00D81821 */  addu       $v1, $a2, $t8
/* 67CA4 800670A4 C4640124 */  lwc1       $f4, 0x124($v1)
/* 67CA8 800670A8 00000000 */  nop
/* 67CAC 800670AC 460021A4 */  cvt.w.s    $f6, $f4
/* 67CB0 800670B0 4442F800 */  cfc1       $v0, $31
/* 67CB4 800670B4 00000000 */  nop
/* 67CB8 800670B8 30420078 */  andi       $v0, $v0, 0x78
/* 67CBC 800670BC 10400012 */  beqz       $v0, .L80067108
/* 67CC0 800670C0 00000000 */   nop
/* 67CC4 800670C4 44813000 */  mtc1       $at, $f6
/* 67CC8 800670C8 24020001 */  addiu      $v0, $zero, 1
/* 67CCC 800670CC 46062181 */  sub.s      $f6, $f4, $f6
/* 67CD0 800670D0 3C018000 */  lui        $at, 0x8000
/* 67CD4 800670D4 44C2F800 */  ctc1       $v0, $31
/* 67CD8 800670D8 00000000 */  nop
/* 67CDC 800670DC 460031A4 */  cvt.w.s    $f6, $f6
/* 67CE0 800670E0 4442F800 */  cfc1       $v0, $31
/* 67CE4 800670E4 00000000 */  nop
/* 67CE8 800670E8 30420078 */  andi       $v0, $v0, 0x78
/* 67CEC 800670EC 14400004 */  bnez       $v0, .L80067100
/* 67CF0 800670F0 00000000 */   nop
/* 67CF4 800670F4 44023000 */  mfc1       $v0, $f6
/* 67CF8 800670F8 10000007 */  b          .L80067118
/* 67CFC 800670FC 00411025 */   or        $v0, $v0, $at
.L80067100:
/* 67D00 80067100 10000005 */  b          .L80067118
/* 67D04 80067104 2402FFFF */   addiu     $v0, $zero, -1
.L80067108:
/* 67D08 80067108 44023000 */  mfc1       $v0, $f6
/* 67D0C 8006710C 00000000 */  nop
/* 67D10 80067110 0440FFFB */  bltz       $v0, .L80067100
/* 67D14 80067114 00000000 */   nop
.L80067118:
/* 67D18 80067118 44D9F800 */  ctc1       $t9, $31
/* 67D1C 8006711C 3048FFFF */  andi       $t0, $v0, 0xffff
/* 67D20 80067120 24010001 */  addiu      $at, $zero, 1
/* 67D24 80067124 11010012 */  beq        $t0, $at, .L80067170
/* 67D28 80067128 24010002 */   addiu     $at, $zero, 2
/* 67D2C 8006712C 11010019 */  beq        $t0, $at, .L80067194
/* 67D30 80067130 24010003 */   addiu     $at, $zero, 3
/* 67D34 80067134 11010020 */  beq        $t0, $at, .L800671B8
/* 67D38 80067138 24010004 */   addiu     $at, $zero, 4
/* 67D3C 8006713C 11010027 */  beq        $t0, $at, .L800671DC
/* 67D40 80067140 240103F0 */   addiu     $at, $zero, 0x3f0
/* 67D44 80067144 1501002D */  bne        $t0, $at, .L800671FC
/* 67D48 80067148 00000000 */   nop
/* 67D4C 8006714C 00A70019 */  multu      $a1, $a3
/* 67D50 80067150 3C014100 */  lui        $at, 0x4100
/* 67D54 80067154 44814000 */  mtc1       $at, $f8
/* 67D58 80067158 2409101E */  addiu      $t1, $zero, 0x101e
/* 67D5C 8006715C 00005012 */  mflo       $t2
/* 67D60 80067160 00CA5821 */  addu       $t3, $a2, $t2
/* 67D64 80067164 A5690084 */  sh         $t1, 0x84($t3)
/* 67D68 80067168 10000024 */  b          .L800671FC
/* 67D6C 8006716C E468011C */   swc1      $f8, 0x11c($v1)
.L80067170:
/* 67D70 80067170 00A70019 */  multu      $a1, $a3
/* 67D74 80067174 3C014110 */  lui        $at, 0x4110
/* 67D78 80067178 44815000 */  mtc1       $at, $f10
/* 67D7C 8006717C 240C1014 */  addiu      $t4, $zero, 0x1014
/* 67D80 80067180 00006812 */  mflo       $t5
/* 67D84 80067184 00CD7021 */  addu       $t6, $a2, $t5
/* 67D88 80067188 A5CC0084 */  sh         $t4, 0x84($t6)
/* 67D8C 8006718C 1000001B */  b          .L800671FC
/* 67D90 80067190 E46A011C */   swc1      $f10, 0x11c($v1)
.L80067194:
/* 67D94 80067194 00A70019 */  multu      $a1, $a3
/* 67D98 80067198 3C014080 */  lui        $at, 0x4080
/* 67D9C 8006719C 44818000 */  mtc1       $at, $f16
/* 67DA0 800671A0 240F101C */  addiu      $t7, $zero, 0x101c
/* 67DA4 800671A4 0000C012 */  mflo       $t8
/* 67DA8 800671A8 00D8C821 */  addu       $t9, $a2, $t8
/* 67DAC 800671AC A72F0084 */  sh         $t7, 0x84($t9)
/* 67DB0 800671B0 10000012 */  b          .L800671FC
/* 67DB4 800671B4 E470011C */   swc1      $f16, 0x11c($v1)
.L800671B8:
/* 67DB8 800671B8 00A70019 */  multu      $a1, $a3
/* 67DBC 800671BC 3C0140E0 */  lui        $at, 0x40e0
/* 67DC0 800671C0 44819000 */  mtc1       $at, $f18
/* 67DC4 800671C4 24081016 */  addiu      $t0, $zero, 0x1016
/* 67DC8 800671C8 00005012 */  mflo       $t2
/* 67DCC 800671CC 00CA4821 */  addu       $t1, $a2, $t2
/* 67DD0 800671D0 A5280084 */  sh         $t0, 0x84($t1)
/* 67DD4 800671D4 10000009 */  b          .L800671FC
/* 67DD8 800671D8 E472011C */   swc1      $f18, 0x11c($v1)
.L800671DC:
/* 67DDC 800671DC 00A70019 */  multu      $a1, $a3
/* 67DE0 800671E0 3C0140C0 */  lui        $at, 0x40c0
/* 67DE4 800671E4 44812000 */  mtc1       $at, $f4
/* 67DE8 800671E8 240B1020 */  addiu      $t3, $zero, 0x1020
/* 67DEC 800671EC 00006812 */  mflo       $t5
/* 67DF0 800671F0 00CD6021 */  addu       $t4, $a2, $t5
/* 67DF4 800671F4 A58B0084 */  sh         $t3, 0x84($t4)
/* 67DF8 800671F8 E464011C */  swc1       $f4, 0x11c($v1)
.L800671FC:
/* 67DFC 800671FC C466011C */  lwc1       $f6, 0x11c($v1)
/* 67E00 80067200 C46800B4 */  lwc1       $f8, 0xb4($v1)
/* 67E04 80067204 00000000 */  nop
/* 67E08 80067208 46083282 */  mul.s      $f10, $f6, $f8
/* 67E0C 8006720C 03E00008 */  jr         $ra
/* 67E10 80067210 E46A011C */   swc1      $f10, 0x11c($v1)
