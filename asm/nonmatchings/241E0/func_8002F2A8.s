glabel func_8002F2A8
/* 2FEA8 8002F2A8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2FEAC 8002F2AC AFBF0014 */  sw         $ra, 0x14($sp)
/* 2FEB0 8002F2B0 0C00A14A */  jal        func_80028528
/* 2FEB4 8002F2B4 AFA40020 */   sw        $a0, 0x20($sp)
/* 2FEB8 8002F2B8 10400055 */  beqz       $v0, .L8002F410
/* 2FEBC 8002F2BC 3044FFFF */   andi      $a0, $v0, 0xffff
/* 2FEC0 8002F2C0 00047080 */  sll        $t6, $a0, 2
/* 2FEC4 8002F2C4 01C47023 */  subu       $t6, $t6, $a0
/* 2FEC8 8002F2C8 000E7080 */  sll        $t6, $t6, 2
/* 2FECC 8002F2CC 01C47021 */  addu       $t6, $t6, $a0
/* 2FED0 8002F2D0 000E7080 */  sll        $t6, $t6, 2
/* 2FED4 8002F2D4 01C47023 */  subu       $t6, $t6, $a0
/* 2FED8 8002F2D8 3C0F800F */  lui        $t7, %hi(gActors)
/* 2FEDC 8002F2DC 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 2FEE0 8002F2E0 000E70C0 */  sll        $t6, $t6, 3
/* 2FEE4 8002F2E4 01CF1021 */  addu       $v0, $t6, $t7
/* 2FEE8 8002F2E8 2418007B */  addiu      $t8, $zero, 0x7b
/* 2FEEC 8002F2EC A45800D2 */  sh         $t8, 0xd2($v0)
/* 2FEF0 8002F2F0 0C0078B4 */  jal        func_8001E2D0
/* 2FEF4 8002F2F4 AFA20018 */   sw        $v0, 0x18($sp)
/* 2FEF8 8002F2F8 97A30022 */  lhu        $v1, 0x22($sp)
/* 2FEFC 8002F2FC 240F0168 */  addiu      $t7, $zero, 0x168
/* 2FF00 8002F300 3065000F */  andi       $a1, $v1, 0xf
/* 2FF04 8002F304 01E5001A */  div        $zero, $t7, $a1
/* 2FF08 8002F308 8FA20018 */  lw         $v0, 0x18($sp)
/* 2FF0C 8002F30C 306B0300 */  andi       $t3, $v1, 0x300
/* 2FF10 8002F310 3C09800E */  lui        $t1, %hi(D_800E164C)
/* 2FF14 8002F314 24190300 */  addiu      $t9, $zero, 0x300
/* 2FF18 8002F318 24080002 */  addiu      $t0, $zero, 2
/* 2FF1C 8002F31C 2529164C */  addiu      $t1, $t1, %lo(D_800E164C)
/* 2FF20 8002F320 240A0001 */  addiu      $t2, $zero, 1
/* 2FF24 8002F324 3C0E800D */  lui        $t6, 0x800d
/* 2FF28 8002F328 A4590094 */  sh         $t9, 0x94($v0)
/* 2FF2C 8002F32C AC480080 */  sw         $t0, 0x80($v0)
/* 2FF30 8002F330 A44A00E6 */  sh         $t2, 0xe6($v0)
/* 2FF34 8002F334 AC4900E8 */  sw         $t1, 0xe8($v0)
/* 2FF38 8002F338 05610003 */  bgez       $t3, .L8002F348
/* 2FF3C 8002F33C 000B6203 */   sra       $t4, $t3, 8
/* 2FF40 8002F340 256100FF */  addiu      $at, $t3, 0xff
/* 2FF44 8002F344 00016203 */  sra        $t4, $at, 8
.L8002F348:
/* 2FF48 8002F348 000C6880 */  sll        $t5, $t4, 2
/* 2FF4C 8002F34C 01CD7021 */  addu       $t6, $t6, $t5
/* 2FF50 8002F350 8DCE1958 */  lw         $t6, 0x1958($t6)
/* 2FF54 8002F354 30648000 */  andi       $a0, $v1, 0x8000
/* 2FF58 8002F358 AC440150 */  sw         $a0, 0x150($v0)
/* 2FF5C 8002F35C AC450154 */  sw         $a1, 0x154($v0)
/* 2FF60 8002F360 AC4E018C */  sw         $t6, 0x18c($v0)
/* 2FF64 8002F364 14A00002 */  bnez       $a1, .L8002F370
/* 2FF68 8002F368 00000000 */   nop
/* 2FF6C 8002F36C 0007000D */  break      7
.L8002F370:
/* 2FF70 8002F370 2401FFFF */   addiu     $at, $zero, -1
/* 2FF74 8002F374 14A10004 */  bne        $a1, $at, .L8002F388
/* 2FF78 8002F378 3C018000 */   lui       $at, 0x8000
/* 2FF7C 8002F37C 15E10002 */  bne        $t7, $at, .L8002F388
/* 2FF80 8002F380 00000000 */   nop
/* 2FF84 8002F384 0006000D */  break      6
.L8002F388:
/* 2FF88 8002F388 0000C012 */   mflo      $t8
/* 2FF8C 8002F38C 44982000 */  mtc1       $t8, $f4
/* 2FF90 8002F390 3C01800F */  lui        $at, %hi(D_800EB908)
/* 2FF94 8002F394 468021A1 */  cvt.d.w    $f6, $f4
/* 2FF98 8002F398 C429B908 */  lwc1       $f9, %lo(D_800EB908)($at)
/* 2FF9C 8002F39C C428B90C */  lwc1       $f8, -0x46f4($at)
/* 2FFA0 8002F3A0 30680100 */  andi       $t0, $v1, 0x100
/* 2FFA4 8002F3A4 46283283 */  div.d      $f10, $f6, $f8
/* 2FFA8 8002F3A8 3C038018 */  lui        $v1, %hi(D_80178136)
/* 2FFAC 8002F3AC 24638136 */  addiu      $v1, $v1, %lo(D_80178136)
/* 2FFB0 8002F3B0 AC48015C */  sw         $t0, 0x15c($v0)
/* 2FFB4 8002F3B4 4459F800 */  cfc1       $t9, $31
/* 2FFB8 8002F3B8 00000000 */  nop
/* 2FFBC 8002F3BC 37210003 */  ori        $at, $t9, 3
/* 2FFC0 8002F3C0 38210002 */  xori       $at, $at, 2
/* 2FFC4 8002F3C4 44C1F800 */  ctc1       $at, $31
/* 2FFC8 8002F3C8 3C0142FE */  lui        $at, 0x42fe
/* 2FFCC 8002F3CC 46205424 */  cvt.w.d    $f16, $f10
/* 2FFD0 8002F3D0 44D9F800 */  ctc1       $t9, $31
/* 2FFD4 8002F3D4 1080000B */  beqz       $a0, .L8002F404
/* 2FFD8 8002F3D8 E4500158 */   swc1      $f16, 0x158($v0)
/* 2FFDC 8002F3DC 94690000 */  lhu        $t1, ($v1)
/* 2FFE0 8002F3E0 8C4A0154 */  lw         $t2, 0x154($v0)
/* 2FFE4 8002F3E4 44809000 */  mtc1       $zero, $f18
/* 2FFE8 8002F3E8 012A6023 */  subu       $t4, $t1, $t2
/* 2FFEC 8002F3EC 318D8000 */  andi       $t5, $t4, 0x8000
/* 2FFF0 8002F3F0 A46C0000 */  sh         $t4, ($v1)
/* 2FFF4 8002F3F4 11A00006 */  beqz       $t5, .L8002F410
/* 2FFF8 8002F3F8 E452012C */   swc1      $f18, 0x12c($v0)
/* 2FFFC 8002F3FC 10000004 */  b          .L8002F410
/* 30000 8002F400 A4600000 */   sh        $zero, ($v1)
.L8002F404:
/* 30004 8002F404 44812000 */  mtc1       $at, $f4
/* 30008 8002F408 00000000 */  nop
/* 3000C 8002F40C E444012C */  swc1       $f4, 0x12c($v0)
.L8002F410:
/* 30010 8002F410 8FBF0014 */  lw         $ra, 0x14($sp)
/* 30014 8002F414 27BD0020 */  addiu      $sp, $sp, 0x20
/* 30018 8002F418 03E00008 */  jr         $ra
/* 3001C 8002F41C 00000000 */   nop
