glabel func_8006F850
/* 70450 8006F850 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 70454 8006F854 AFBF0014 */  sw         $ra, 0x14($sp)
/* 70458 8006F858 AFA40020 */  sw         $a0, 0x20($sp)
/* 7045C 8006F85C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 70460 8006F860 01C02025 */  or         $a0, $t6, $zero
/* 70464 8006F864 0C01B22E */  jal        func_8006C8B8
/* 70468 8006F868 A7AE0022 */   sh        $t6, 0x22($sp)
/* 7046C 8006F86C 97A40022 */  lhu        $a0, 0x22($sp)
/* 70470 8006F870 14400022 */  bnez       $v0, .L8006F8FC
/* 70474 8006F874 00047880 */   sll       $t7, $a0, 2
/* 70478 8006F878 01E47823 */  subu       $t7, $t7, $a0
/* 7047C 8006F87C 000F7880 */  sll        $t7, $t7, 2
/* 70480 8006F880 01E47821 */  addu       $t7, $t7, $a0
/* 70484 8006F884 000F7880 */  sll        $t7, $t7, 2
/* 70488 8006F888 01E47823 */  subu       $t7, $t7, $a0
/* 7048C 8006F88C 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 70490 8006F890 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 70494 8006F894 000F78C0 */  sll        $t7, $t7, 3
/* 70498 8006F898 01F81021 */  addu       $v0, $t7, $t8
/* 7049C 8006F89C 944300D0 */  lhu        $v1, 0xd0($v0)
/* 704A0 8006F8A0 240101B0 */  addiu      $at, $zero, 0x1b0
/* 704A4 8006F8A4 14610007 */  bne        $v1, $at, .L8006F8C4
/* 704A8 8006F8A8 24790001 */   addiu     $t9, $v1, 1
/* 704AC 8006F8AC 3C08800E */  lui        $t0, %hi(D_800E20FC)
/* 704B0 8006F8B0 250820FC */  addiu      $t0, $t0, %lo(D_800E20FC)
/* 704B4 8006F8B4 24090001 */  addiu      $t1, $zero, 1
/* 704B8 8006F8B8 A45900D0 */  sh         $t9, 0xd0($v0)
/* 704BC 8006F8BC A44900E6 */  sh         $t1, 0xe6($v0)
/* 704C0 8006F8C0 AC4800E8 */  sw         $t0, 0xe8($v0)
.L8006F8C4:
/* 704C4 8006F8C4 0C01A6E5 */  jal        func_80069B94
/* 704C8 8006F8C8 AFA2001C */   sw        $v0, 0x1c($sp)
/* 704CC 8006F8CC 8FA2001C */  lw         $v0, 0x1c($sp)
/* 704D0 8006F8D0 240B0060 */  addiu      $t3, $zero, 0x60
/* 704D4 8006F8D4 844A00E6 */  lh         $t2, 0xe6($v0)
/* 704D8 8006F8D8 3C0141C0 */  lui        $at, 0x41c0
/* 704DC 8006F8DC 15400008 */  bnez       $t2, .L8006F900
/* 704E0 8006F8E0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 704E4 8006F8E4 8C4C0080 */  lw         $t4, 0x80($v0)
/* 704E8 8006F8E8 44812000 */  mtc1       $at, $f4
/* 704EC 8006F8EC 358D1000 */  ori        $t5, $t4, 0x1000
/* 704F0 8006F8F0 A44B00D0 */  sh         $t3, 0xd0($v0)
/* 704F4 8006F8F4 AC4D0080 */  sw         $t5, 0x80($v0)
/* 704F8 8006F8F8 E444013C */  swc1       $f4, 0x13c($v0)
.L8006F8FC:
/* 704FC 8006F8FC 8FBF0014 */  lw         $ra, 0x14($sp)
.L8006F900:
/* 70500 8006F900 27BD0020 */  addiu      $sp, $sp, 0x20
/* 70504 8006F904 03E00008 */  jr         $ra
/* 70508 8006F908 00000000 */   nop
