glabel func_80070234
/* 70E34 80070234 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 70E38 80070238 AFA40020 */  sw         $a0, 0x20($sp)
/* 70E3C 8007023C AFBF0014 */  sw         $ra, 0x14($sp)
/* 70E40 80070240 97A40022 */  lhu        $a0, 0x22($sp)
/* 70E44 80070244 0C01B22E */  jal        func_8006C8B8
/* 70E48 80070248 00000000 */   nop
/* 70E4C 8007024C 14400036 */  bnez       $v0, .L80070328
/* 70E50 80070250 3C0F800F */   lui       $t7, %hi(D_800EF510)
/* 70E54 80070254 97A40022 */  lhu        $a0, 0x22($sp)
/* 70E58 80070258 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 70E5C 8007025C 00047080 */  sll        $t6, $a0, 2
/* 70E60 80070260 01C47023 */  subu       $t6, $t6, $a0
/* 70E64 80070264 000E7080 */  sll        $t6, $t6, 2
/* 70E68 80070268 01C47021 */  addu       $t6, $t6, $a0
/* 70E6C 8007026C 000E7080 */  sll        $t6, $t6, 2
/* 70E70 80070270 01C47023 */  subu       $t6, $t6, $a0
/* 70E74 80070274 000E70C0 */  sll        $t6, $t6, 3
/* 70E78 80070278 01CF1821 */  addu       $v1, $t6, $t7
/* 70E7C 8007027C 946200D0 */  lhu        $v0, 0xd0($v1)
/* 70E80 80070280 24010260 */  addiu      $at, $zero, 0x260
/* 70E84 80070284 10410007 */  beq        $v0, $at, .L800702A4
/* 70E88 80070288 24010261 */   addiu     $at, $zero, 0x261
/* 70E8C 8007028C 10410015 */  beq        $v0, $at, .L800702E4
/* 70E90 80070290 24010262 */   addiu     $at, $zero, 0x262
/* 70E94 80070294 1041001D */  beq        $v0, $at, .L8007030C
/* 70E98 80070298 00000000 */   nop
/* 70E9C 8007029C 10000023 */  b          .L8007032C
/* 70EA0 800702A0 8FBF0014 */   lw        $ra, 0x14($sp)
.L800702A4:
/* 70EA4 800702A4 0C01AF42 */  jal        func_8006BD08
/* 70EA8 800702A8 AFA30018 */   sw        $v1, 0x18($sp)
/* 70EAC 800702AC 8FA30018 */  lw         $v1, 0x18($sp)
/* 70EB0 800702B0 14400004 */  bnez       $v0, .L800702C4
/* 70EB4 800702B4 3C09800E */   lui       $t1, %hi(D_800E1EAC)
/* 70EB8 800702B8 24180200 */  addiu      $t8, $zero, 0x200
/* 70EBC 800702BC 1000001A */  b          .L80070328
/* 70EC0 800702C0 A47800D0 */   sh        $t8, 0xd0($v1)
.L800702C4:
/* 70EC4 800702C4 947900D0 */  lhu        $t9, 0xd0($v1)
/* 70EC8 800702C8 25291EAC */  addiu      $t1, $t1, %lo(D_800E1EAC)
/* 70ECC 800702CC 240A0001 */  addiu      $t2, $zero, 1
/* 70ED0 800702D0 27280001 */  addiu      $t0, $t9, 1
/* 70ED4 800702D4 97A40022 */  lhu        $a0, 0x22($sp)
/* 70ED8 800702D8 A46800D0 */  sh         $t0, 0xd0($v1)
/* 70EDC 800702DC A46A00E6 */  sh         $t2, 0xe6($v1)
/* 70EE0 800702E0 AC6900E8 */  sw         $t1, 0xe8($v1)
.L800702E4:
/* 70EE4 800702E4 0C01AFBD */  jal        func_8006BEF4
/* 70EE8 800702E8 AFA30018 */   sw        $v1, 0x18($sp)
/* 70EEC 800702EC 8FA30018 */  lw         $v1, 0x18($sp)
/* 70EF0 800702F0 1040000D */  beqz       $v0, .L80070328
/* 70EF4 800702F4 3C0B800E */   lui       $t3, %hi(D_800E1E80)
/* 70EF8 800702F8 256B1E80 */  addiu      $t3, $t3, %lo(D_800E1E80)
/* 70EFC 800702FC 240C0001 */  addiu      $t4, $zero, 1
/* 70F00 80070300 AC6B00E8 */  sw         $t3, 0xe8($v1)
/* 70F04 80070304 10000008 */  b          .L80070328
/* 70F08 80070308 A46C00E6 */   sh        $t4, 0xe6($v1)
.L8007030C:
/* 70F0C 8007030C 846D00E6 */  lh         $t5, 0xe6($v1)
/* 70F10 80070310 240E0200 */  addiu      $t6, $zero, 0x200
/* 70F14 80070314 15A00004 */  bnez       $t5, .L80070328
/* 70F18 80070318 3C014110 */   lui       $at, 0x4110
/* 70F1C 8007031C 44812000 */  mtc1       $at, $f4
/* 70F20 80070320 A46E00D0 */  sh         $t6, 0xd0($v1)
/* 70F24 80070324 E464013C */  swc1       $f4, 0x13c($v1)
.L80070328:
/* 70F28 80070328 8FBF0014 */  lw         $ra, 0x14($sp)
.L8007032C:
/* 70F2C 8007032C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 70F30 80070330 03E00008 */  jr         $ra
/* 70F34 80070334 00000000 */   nop
