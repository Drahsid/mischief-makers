glabel func_8006FAC0
/* 706C0 8006FAC0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 706C4 8006FAC4 AFA40020 */  sw         $a0, 0x20($sp)
/* 706C8 8006FAC8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 706CC 8006FACC 97A40022 */  lhu        $a0, 0x22($sp)
/* 706D0 8006FAD0 0C01B274 */  jal        func_8006C9D0
/* 706D4 8006FAD4 00000000 */   nop
/* 706D8 8006FAD8 14400017 */  bnez       $v0, .L8006FB38
/* 706DC 8006FADC 3C0F800F */   lui       $t7, %hi(gActors)
/* 706E0 8006FAE0 97A40022 */  lhu        $a0, 0x22($sp)
/* 706E4 8006FAE4 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 706E8 8006FAE8 00047080 */  sll        $t6, $a0, 2
/* 706EC 8006FAEC 01C47023 */  subu       $t6, $t6, $a0
/* 706F0 8006FAF0 000E7080 */  sll        $t6, $t6, 2
/* 706F4 8006FAF4 01C47021 */  addu       $t6, $t6, $a0
/* 706F8 8006FAF8 000E7080 */  sll        $t6, $t6, 2
/* 706FC 8006FAFC 01C47023 */  subu       $t6, $t6, $a0
/* 70700 8006FB00 000E70C0 */  sll        $t6, $t6, 3
/* 70704 8006FB04 01CF1021 */  addu       $v0, $t6, $t7
/* 70708 8006FB08 945800D0 */  lhu        $t8, 0xd0($v0)
/* 7070C 8006FB0C 240101E0 */  addiu      $at, $zero, 0x1e0
/* 70710 8006FB10 17010007 */  bne        $t8, $at, .L8006FB30
/* 70714 8006FB14 00000000 */   nop
/* 70718 8006FB18 0C01A9C9 */  jal        func_8006A724
/* 7071C 8006FB1C AFA2001C */   sw        $v0, 0x1c($sp)
/* 70720 8006FB20 8FA2001C */  lw         $v0, 0x1c($sp)
/* 70724 8006FB24 241901E1 */  addiu      $t9, $zero, 0x1e1
/* 70728 8006FB28 97A40022 */  lhu        $a0, 0x22($sp)
/* 7072C 8006FB2C A45900D0 */  sh         $t9, 0xd0($v0)
.L8006FB30:
/* 70730 8006FB30 0C01A9EC */  jal        func_8006A7B0
/* 70734 8006FB34 00000000 */   nop
.L8006FB38:
/* 70738 8006FB38 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7073C 8006FB3C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 70740 8006FB40 03E00008 */  jr         $ra
/* 70744 8006FB44 00000000 */   nop
