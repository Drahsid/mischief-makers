glabel func_8002A320
/* 2AF20 8002A320 3087FFFF */  andi       $a3, $a0, 0xffff
/* 2AF24 8002A324 00077080 */  sll        $t6, $a3, 2
/* 2AF28 8002A328 01C77023 */  subu       $t6, $t6, $a3
/* 2AF2C 8002A32C 000E7080 */  sll        $t6, $t6, 2
/* 2AF30 8002A330 01C77021 */  addu       $t6, $t6, $a3
/* 2AF34 8002A334 000E7080 */  sll        $t6, $t6, 2
/* 2AF38 8002A338 01C77023 */  subu       $t6, $t6, $a3
/* 2AF3C 8002A33C 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 2AF40 8002A340 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2AF44 8002A344 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 2AF48 8002A348 000E70C0 */  sll        $t6, $t6, 3
/* 2AF4C 8002A34C 01CF3021 */  addu       $a2, $t6, $t7
/* 2AF50 8002A350 AFA40020 */  sw         $a0, 0x20($sp)
/* 2AF54 8002A354 AFA50024 */  sw         $a1, 0x24($sp)
/* 2AF58 8002A358 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2AF5C 8002A35C 8CC500F0 */  lw         $a1, 0xf0($a2)
/* 2AF60 8002A360 8CC400EC */  lw         $a0, 0xec($a2)
/* 2AF64 8002A364 0C00A538 */  jal        func_800294E0
/* 2AF68 8002A368 AFA60018 */   sw        $a2, 0x18($sp)
/* 2AF6C 8002A36C 8FB90024 */  lw         $t9, 0x24($sp)
/* 2AF70 8002A370 3C04800C */  lui        $a0, %hi(D_800BCCD0)
/* 2AF74 8002A374 44992000 */  mtc1       $t9, $f4
/* 2AF78 8002A378 304803FF */  andi       $t0, $v0, 0x3ff
/* 2AF7C 8002A37C 2484CCD0 */  addiu      $a0, $a0, %lo(D_800BCCD0)
/* 2AF80 8002A380 00084880 */  sll        $t1, $t0, 2
/* 2AF84 8002A384 46802020 */  cvt.s.w    $f0, $f4
/* 2AF88 8002A388 00895021 */  addu       $t2, $a0, $t1
/* 2AF8C 8002A38C C5460000 */  lwc1       $f6, ($t2)
/* 2AF90 8002A390 244DFF00 */  addiu      $t5, $v0, -0x100
/* 2AF94 8002A394 46003202 */  mul.s      $f8, $f6, $f0
/* 2AF98 8002A398 31AE03FF */  andi       $t6, $t5, 0x3ff
/* 2AF9C 8002A39C 000E7880 */  sll        $t7, $t6, 2
/* 2AFA0 8002A3A0 008FC021 */  addu       $t8, $a0, $t7
/* 2AFA4 8002A3A4 444BF800 */  cfc1       $t3, $31
/* 2AFA8 8002A3A8 C7100000 */  lwc1       $f16, ($t8)
/* 2AFAC 8002A3AC 35610003 */  ori        $at, $t3, 3
/* 2AFB0 8002A3B0 38210002 */  xori       $at, $at, 2
/* 2AFB4 8002A3B4 44C1F800 */  ctc1       $at, $31
/* 2AFB8 8002A3B8 8FA60018 */  lw         $a2, 0x18($sp)
/* 2AFBC 8002A3BC 460042A4 */  cvt.w.s    $f10, $f8
/* 2AFC0 8002A3C0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2AFC4 8002A3C4 44CBF800 */  ctc1       $t3, $31
/* 2AFC8 8002A3C8 440C5000 */  mfc1       $t4, $f10
/* 2AFCC 8002A3CC 46008482 */  mul.s      $f18, $f16, $f0
/* 2AFD0 8002A3D0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2AFD4 8002A3D4 ACCC00F8 */  sw         $t4, 0xf8($a2)
/* 2AFD8 8002A3D8 4459F800 */  cfc1       $t9, $31
/* 2AFDC 8002A3DC 00000000 */  nop
/* 2AFE0 8002A3E0 37210003 */  ori        $at, $t9, 3
/* 2AFE4 8002A3E4 38210002 */  xori       $at, $at, 2
/* 2AFE8 8002A3E8 44C1F800 */  ctc1       $at, $31
/* 2AFEC 8002A3EC 00000000 */  nop
/* 2AFF0 8002A3F0 46009124 */  cvt.w.s    $f4, $f18
/* 2AFF4 8002A3F4 44082000 */  mfc1       $t0, $f4
/* 2AFF8 8002A3F8 44D9F800 */  ctc1       $t9, $31
/* 2AFFC 8002A3FC 03E00008 */  jr         $ra
/* 2B000 8002A400 ACC800FC */   sw        $t0, 0xfc($a2)
