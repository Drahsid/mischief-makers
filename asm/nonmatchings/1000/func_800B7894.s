glabel func_800B7894
/* B8494 800B7894 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* B8498 800B7898 AFBF0014 */  sw         $ra, 0x14($sp)
/* B849C 800B789C AFA40040 */  sw         $a0, 0x40($sp)
/* B84A0 800B78A0 AFA50044 */  sw         $a1, 0x44($sp)
/* B84A4 800B78A4 AFA60048 */  sw         $a2, 0x48($sp)
/* B84A8 800B78A8 8FAE0048 */  lw         $t6, 0x48($sp)
/* B84AC 800B78AC 15C0000F */  bnez       $t6, .L800B78EC
/* B84B0 800B78B0 00000000 */   nop
/* B84B4 800B78B4 8FAF0040 */  lw         $t7, 0x40($sp)
/* B84B8 800B78B8 8FB90044 */  lw         $t9, 0x44($sp)
/* B84BC 800B78BC 8DF80004 */  lw         $t8, 4($t7)
/* B84C0 800B78C0 AF380000 */  sw         $t8, ($t9)
/* B84C4 800B78C4 8FA80044 */  lw         $t0, 0x44($sp)
/* B84C8 800B78C8 A500000C */  sh         $zero, 0xc($t0)
/* B84CC 800B78CC 8FA90044 */  lw         $t1, 0x44($sp)
/* B84D0 800B78D0 AD200004 */  sw         $zero, 4($t1)
/* B84D4 800B78D4 8FAA0044 */  lw         $t2, 0x44($sp)
/* B84D8 800B78D8 AD400008 */  sw         $zero, 8($t2)
/* B84DC 800B78DC 1000004C */  b          .L800B7A10
/* B84E0 800B78E0 00000000 */   nop
/* B84E4 800B78E4 10000048 */  b          .L800B7A08
/* B84E8 800B78E8 00000000 */   nop
.L800B78EC:
/* B84EC 800B78EC 8FAB0040 */  lw         $t3, 0x40($sp)
/* B84F0 800B78F0 8D6C0008 */  lw         $t4, 8($t3)
/* B84F4 800B78F4 AFAC002C */  sw         $t4, 0x2c($sp)
/* B84F8 800B78F8 8FAD0040 */  lw         $t5, 0x40($sp)
/* B84FC 800B78FC 85AE001A */  lh         $t6, 0x1a($t5)
/* B8500 800B7900 A7AE001E */  sh         $t6, 0x1e($sp)
/* B8504 800B7904 8FAF0040 */  lw         $t7, 0x40($sp)
/* B8508 800B7908 8DF8000C */  lw         $t8, 0xc($t7)
/* B850C 800B790C AFB80024 */  sw         $t8, 0x24($sp)
/* B8510 800B7910 8FB90040 */  lw         $t9, 0x40($sp)
/* B8514 800B7914 8F280004 */  lw         $t0, 4($t9)
/* B8518 800B7918 AF280008 */  sw         $t0, 8($t9)
/* B851C 800B791C 8FA90040 */  lw         $t1, 0x40($sp)
/* B8520 800B7920 A520001A */  sh         $zero, 0x1a($t1)
/* B8524 800B7924 8FAA0040 */  lw         $t2, 0x40($sp)
/* B8528 800B7928 AD40000C */  sw         $zero, 0xc($t2)
.L800B792C:
/* B852C 800B792C 8FAB0040 */  lw         $t3, 0x40($sp)
/* B8530 800B7930 8D6C0008 */  lw         $t4, 8($t3)
/* B8534 800B7934 AFAC0028 */  sw         $t4, 0x28($sp)
/* B8538 800B7938 8FAD0040 */  lw         $t5, 0x40($sp)
/* B853C 800B793C 85AE001A */  lh         $t6, 0x1a($t5)
/* B8540 800B7940 A7AE001C */  sh         $t6, 0x1c($sp)
/* B8544 800B7944 8FAF0040 */  lw         $t7, 0x40($sp)
/* B8548 800B7948 8DF8000C */  lw         $t8, 0xc($t7)
/* B854C 800B794C AFB80020 */  sw         $t8, 0x20($sp)
/* B8550 800B7950 8FA40040 */  lw         $a0, 0x40($sp)
/* B8554 800B7954 0C02DCEB */  jal        func_800B73AC
/* B8558 800B7958 27A50030 */   addiu     $a1, $sp, 0x30
/* B855C 800B795C 87A80030 */  lh         $t0, 0x30($sp)
/* B8560 800B7960 24010004 */  addiu      $at, $zero, 4
/* B8564 800B7964 1501000C */  bne        $t0, $at, .L800B7998
/* B8568 800B7968 00000000 */   nop
/* B856C 800B796C 8FB90040 */  lw         $t9, 0x40($sp)
/* B8570 800B7970 8F290008 */  lw         $t1, 8($t9)
/* B8574 800B7974 AFA90028 */  sw         $t1, 0x28($sp)
/* B8578 800B7978 8FAA0040 */  lw         $t2, 0x40($sp)
/* B857C 800B797C 854B001A */  lh         $t3, 0x1a($t2)
/* B8580 800B7980 A7AB001C */  sh         $t3, 0x1c($sp)
/* B8584 800B7984 8FAC0040 */  lw         $t4, 0x40($sp)
/* B8588 800B7988 8D8D000C */  lw         $t5, 0xc($t4)
/* B858C 800B798C AFAD0020 */  sw         $t5, 0x20($sp)
/* B8590 800B7990 10000007 */  b          .L800B79B0
/* B8594 800B7994 00000000 */   nop
.L800B7998:
/* B8598 800B7998 8FAE0040 */  lw         $t6, 0x40($sp)
/* B859C 800B799C 8FB80048 */  lw         $t8, 0x48($sp)
/* B85A0 800B79A0 8DCF000C */  lw         $t7, 0xc($t6)
/* B85A4 800B79A4 01F8082B */  sltu       $at, $t7, $t8
/* B85A8 800B79A8 1420FFE0 */  bnez       $at, .L800B792C
/* B85AC 800B79AC 00000000 */   nop
.L800B79B0:
/* B85B0 800B79B0 8FA80028 */  lw         $t0, 0x28($sp)
/* B85B4 800B79B4 8FB90044 */  lw         $t9, 0x44($sp)
/* B85B8 800B79B8 AF280000 */  sw         $t0, ($t9)
/* B85BC 800B79BC 87A9001C */  lh         $t1, 0x1c($sp)
/* B85C0 800B79C0 8FAA0044 */  lw         $t2, 0x44($sp)
/* B85C4 800B79C4 A549000C */  sh         $t1, 0xc($t2)
/* B85C8 800B79C8 8FAB0020 */  lw         $t3, 0x20($sp)
/* B85CC 800B79CC 8FAC0044 */  lw         $t4, 0x44($sp)
/* B85D0 800B79D0 AD8B0004 */  sw         $t3, 4($t4)
/* B85D4 800B79D4 8FAD0040 */  lw         $t5, 0x40($sp)
/* B85D8 800B79D8 8FAF0044 */  lw         $t7, 0x44($sp)
/* B85DC 800B79DC 8DAE000C */  lw         $t6, 0xc($t5)
/* B85E0 800B79E0 ADEE0008 */  sw         $t6, 8($t7)
/* B85E4 800B79E4 8FB8002C */  lw         $t8, 0x2c($sp)
/* B85E8 800B79E8 8FA80040 */  lw         $t0, 0x40($sp)
/* B85EC 800B79EC AD180008 */  sw         $t8, 8($t0)
/* B85F0 800B79F0 87B9001E */  lh         $t9, 0x1e($sp)
/* B85F4 800B79F4 8FA90040 */  lw         $t1, 0x40($sp)
/* B85F8 800B79F8 A539001A */  sh         $t9, 0x1a($t1)
/* B85FC 800B79FC 8FAA0024 */  lw         $t2, 0x24($sp)
/* B8600 800B7A00 8FAB0040 */  lw         $t3, 0x40($sp)
/* B8604 800B7A04 AD6A000C */  sw         $t2, 0xc($t3)
.L800B7A08:
/* B8608 800B7A08 10000001 */  b          .L800B7A10
/* B860C 800B7A0C 00000000 */   nop
.L800B7A10:
/* B8610 800B7A10 8FBF0014 */  lw         $ra, 0x14($sp)
/* B8614 800B7A14 27BD0040 */  addiu      $sp, $sp, 0x40
/* B8618 800B7A18 03E00008 */  jr         $ra
/* B861C 800B7A1C 00000000 */   nop
