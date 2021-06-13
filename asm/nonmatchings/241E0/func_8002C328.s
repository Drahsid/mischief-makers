glabel func_8002C328
/* 2CF28 8002C328 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2CF2C 8002C32C 000E7880 */  sll        $t7, $t6, 2
/* 2CF30 8002C330 01EE7823 */  subu       $t7, $t7, $t6
/* 2CF34 8002C334 000F7880 */  sll        $t7, $t7, 2
/* 2CF38 8002C338 01EE7821 */  addu       $t7, $t7, $t6
/* 2CF3C 8002C33C 000F7880 */  sll        $t7, $t7, 2
/* 2CF40 8002C340 01EE7823 */  subu       $t7, $t7, $t6
/* 2CF44 8002C344 3C18800F */  lui        $t8, %hi(gActors)
/* 2CF48 8002C348 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 2CF4C 8002C34C 000F78C0 */  sll        $t7, $t7, 3
/* 2CF50 8002C350 01F81021 */  addu       $v0, $t7, $t8
/* 2CF54 8002C354 8C5900EC */  lw         $t9, 0xec($v0)
/* 2CF58 8002C358 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2CF5C 8002C35C AFA40020 */  sw         $a0, 0x20($sp)
/* 2CF60 8002C360 01C02025 */  or         $a0, $t6, $zero
/* 2CF64 8002C364 13200006 */  beqz       $t9, .L8002C380
/* 2CF68 8002C368 AFBF0014 */   sw        $ra, 0x14($sp)
/* 2CF6C 8002C36C 0C00B086 */  jal        func_8002C218
/* 2CF70 8002C370 AFA2001C */   sw        $v0, 0x1c($sp)
/* 2CF74 8002C374 8FA2001C */  lw         $v0, 0x1c($sp)
/* 2CF78 8002C378 10000003 */  b          .L8002C388
/* 2CF7C 8002C37C 8C480188 */   lw        $t0, 0x188($v0)
.L8002C380:
/* 2CF80 8002C380 AC400188 */  sw         $zero, 0x188($v0)
/* 2CF84 8002C384 8C480188 */  lw         $t0, 0x188($v0)
.L8002C388:
/* 2CF88 8002C388 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2CF8C 8002C38C 05010004 */  bgez       $t0, .L8002C3A0
/* 2CF90 8002C390 00084C03 */   sra       $t1, $t0, 0x10
/* 2CF94 8002C394 3401FFFF */  ori        $at, $zero, 0xffff
/* 2CF98 8002C398 00280821 */  addu       $at, $at, $t0
/* 2CF9C 8002C39C 00014C03 */  sra        $t1, $at, 0x10
.L8002C3A0:
/* 2CFA0 8002C3A0 44892000 */  mtc1       $t1, $f4
/* 2CFA4 8002C3A4 3C01800F */  lui        $at, %hi(D_800EB688)
/* 2CFA8 8002C3A8 468021A1 */  cvt.d.w    $f6, $f4
/* 2CFAC 8002C3AC C429B688 */  lwc1       $f9, %lo(D_800EB688)($at)
/* 2CFB0 8002C3B0 C428B68C */  lwc1       $f8, -0x4974($at)
/* 2CFB4 8002C3B4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2CFB8 8002C3B8 46283282 */  mul.d      $f10, $f6, $f8
/* 2CFBC 8002C3BC 46205420 */  cvt.s.d    $f16, $f10
/* 2CFC0 8002C3C0 03E00008 */  jr         $ra
/* 2CFC4 8002C3C4 E45000C4 */   swc1      $f16, 0xc4($v0)
