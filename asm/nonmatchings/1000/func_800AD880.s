glabel func_800AD880
/* AE480 800AD880 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* AE484 800AD884 AFBF0014 */  sw         $ra, 0x14($sp)
/* AE488 800AD888 AFA40030 */  sw         $a0, 0x30($sp)
/* AE48C 800AD88C AFA50034 */  sw         $a1, 0x34($sp)
/* AE490 800AD890 AFA60038 */  sw         $a2, 0x38($sp)
/* AE494 800AD894 AFA00020 */  sw         $zero, 0x20($sp)
/* AE498 800AD898 0C02B9A8 */  jal        func_800AE6A0
/* AE49C 800AD89C 24040001 */   addiu     $a0, $zero, 1
/* AE4A0 800AD8A0 AFA2001C */  sw         $v0, 0x1c($sp)
/* AE4A4 800AD8A4 8FAE0030 */  lw         $t6, 0x30($sp)
/* AE4A8 800AD8A8 8DCF0000 */  lw         $t7, ($t6)
/* AE4AC 800AD8AC AFAF002C */  sw         $t7, 0x2c($sp)
/* AE4B0 800AD8B0 8FB8002C */  lw         $t8, 0x2c($sp)
/* AE4B4 800AD8B4 17000008 */  bnez       $t8, .L800AD8D8
/* AE4B8 800AD8B8 00000000 */   nop
/* AE4BC 800AD8BC 0C02B9A8 */  jal        func_800AE6A0
/* AE4C0 800AD8C0 8FA4001C */   lw        $a0, 0x1c($sp)
/* AE4C4 800AD8C4 2404007C */  addiu      $a0, $zero, 0x7c
/* AE4C8 800AD8C8 0C0297B4 */  jal        func_800A5ED0
/* AE4CC 800AD8CC 00002825 */   or        $a1, $zero, $zero
/* AE4D0 800AD8D0 1000004A */  b          .L800AD9FC
/* AE4D4 800AD8D4 00000000 */   nop
.L800AD8D8:
/* AE4D8 800AD8D8 0C026EBB */  jal        func_8009BAEC
/* AE4DC 800AD8DC 8FA4002C */   lw        $a0, 0x2c($sp)
/* AE4E0 800AD8E0 8FA5002C */  lw         $a1, 0x2c($sp)
/* AE4E4 800AD8E4 8FA40034 */  lw         $a0, 0x34($sp)
/* AE4E8 800AD8E8 24060010 */  addiu      $a2, $zero, 0x10
/* AE4EC 800AD8EC 0C02DF1C */  jal        func_800B7C70
/* AE4F0 800AD8F0 24A5000C */   addiu     $a1, $a1, 0xc
/* AE4F4 800AD8F4 8FB90038 */  lw         $t9, 0x38($sp)
/* AE4F8 800AD8F8 3C017FFF */  lui        $at, 0x7fff
/* AE4FC 800AD8FC 3421FFFF */  ori        $at, $at, 0xffff
/* AE500 800AD900 17210003 */  bne        $t9, $at, .L800AD910
/* AE504 800AD904 00000000 */   nop
/* AE508 800AD908 2408FFFF */  addiu      $t0, $zero, -1
/* AE50C 800AD90C AFA80020 */  sw         $t0, 0x20($sp)
.L800AD910:
/* AE510 800AD910 8FA90030 */  lw         $t1, 0x30($sp)
/* AE514 800AD914 252A0008 */  addiu      $t2, $t1, 8
/* AE518 800AD918 11400034 */  beqz       $t2, .L800AD9EC
/* AE51C 800AD91C AFAA0024 */   sw        $t2, 0x24($sp)
.L800AD920:
/* AE520 800AD920 8FAB0024 */  lw         $t3, 0x24($sp)
/* AE524 800AD924 8D6C0000 */  lw         $t4, ($t3)
/* AE528 800AD928 15800011 */  bnez       $t4, .L800AD970
/* AE52C 800AD92C 00000000 */   nop
/* AE530 800AD930 8FAD0020 */  lw         $t5, 0x20($sp)
/* AE534 800AD934 11A00004 */  beqz       $t5, .L800AD948
/* AE538 800AD938 00000000 */   nop
/* AE53C 800AD93C 8FAE002C */  lw         $t6, 0x2c($sp)
/* AE540 800AD940 10000004 */  b          .L800AD954
/* AE544 800AD944 ADC00008 */   sw        $zero, 8($t6)
.L800AD948:
/* AE548 800AD948 8FAF0038 */  lw         $t7, 0x38($sp)
/* AE54C 800AD94C 8FB8002C */  lw         $t8, 0x2c($sp)
/* AE550 800AD950 AF0F0008 */  sw         $t7, 8($t8)
.L800AD954:
/* AE554 800AD954 8FA4002C */  lw         $a0, 0x2c($sp)
/* AE558 800AD958 0C026EAE */  jal        func_8009BAB8
/* AE55C 800AD95C 8FA50024 */   lw        $a1, 0x24($sp)
/* AE560 800AD960 10000022 */  b          .L800AD9EC
/* AE564 800AD964 00000000 */   nop
/* AE568 800AD968 1000001C */  b          .L800AD9DC
/* AE56C 800AD96C 00000000 */   nop
.L800AD970:
/* AE570 800AD970 8FB90024 */  lw         $t9, 0x24($sp)
/* AE574 800AD974 8F280000 */  lw         $t0, ($t9)
/* AE578 800AD978 AFA80028 */  sw         $t0, 0x28($sp)
/* AE57C 800AD97C 8FAA0028 */  lw         $t2, 0x28($sp)
/* AE580 800AD980 8FA90038 */  lw         $t1, 0x38($sp)
/* AE584 800AD984 8D4B0008 */  lw         $t3, 8($t2)
/* AE588 800AD988 012B082A */  slt        $at, $t1, $t3
/* AE58C 800AD98C 1020000E */  beqz       $at, .L800AD9C8
/* AE590 800AD990 00000000 */   nop
/* AE594 800AD994 8FAC0038 */  lw         $t4, 0x38($sp)
/* AE598 800AD998 8FAD002C */  lw         $t5, 0x2c($sp)
/* AE59C 800AD99C ADAC0008 */  sw         $t4, 8($t5)
/* AE5A0 800AD9A0 8FAE0028 */  lw         $t6, 0x28($sp)
/* AE5A4 800AD9A4 8FB80038 */  lw         $t8, 0x38($sp)
/* AE5A8 800AD9A8 8DCF0008 */  lw         $t7, 8($t6)
/* AE5AC 800AD9AC 01F8C823 */  subu       $t9, $t7, $t8
/* AE5B0 800AD9B0 ADD90008 */  sw         $t9, 8($t6)
/* AE5B4 800AD9B4 8FA4002C */  lw         $a0, 0x2c($sp)
/* AE5B8 800AD9B8 0C026EAE */  jal        func_8009BAB8
/* AE5BC 800AD9BC 8FA50024 */   lw        $a1, 0x24($sp)
/* AE5C0 800AD9C0 1000000A */  b          .L800AD9EC
/* AE5C4 800AD9C4 00000000 */   nop
.L800AD9C8:
/* AE5C8 800AD9C8 8FAA0028 */  lw         $t2, 0x28($sp)
/* AE5CC 800AD9CC 8FA80038 */  lw         $t0, 0x38($sp)
/* AE5D0 800AD9D0 8D490008 */  lw         $t1, 8($t2)
/* AE5D4 800AD9D4 01095823 */  subu       $t3, $t0, $t1
/* AE5D8 800AD9D8 AFAB0038 */  sw         $t3, 0x38($sp)
.L800AD9DC:
/* AE5DC 800AD9DC 8FAC0024 */  lw         $t4, 0x24($sp)
/* AE5E0 800AD9E0 8D8D0000 */  lw         $t5, ($t4)
/* AE5E4 800AD9E4 15A0FFCE */  bnez       $t5, .L800AD920
/* AE5E8 800AD9E8 AFAD0024 */   sw        $t5, 0x24($sp)
.L800AD9EC:
/* AE5EC 800AD9EC 0C02B9A8 */  jal        func_800AE6A0
/* AE5F0 800AD9F0 8FA4001C */   lw        $a0, 0x1c($sp)
/* AE5F4 800AD9F4 10000001 */  b          .L800AD9FC
/* AE5F8 800AD9F8 00000000 */   nop
.L800AD9FC:
/* AE5FC 800AD9FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* AE600 800ADA00 27BD0030 */  addiu      $sp, $sp, 0x30
/* AE604 800ADA04 03E00008 */  jr         $ra
/* AE608 800ADA08 00000000 */   nop
