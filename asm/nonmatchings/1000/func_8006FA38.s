glabel func_8006FA38
/* 70638 8006FA38 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7063C 8006FA3C AFA40020 */  sw         $a0, 0x20($sp)
/* 70640 8006FA40 AFBF0014 */  sw         $ra, 0x14($sp)
/* 70644 8006FA44 97A40022 */  lhu        $a0, 0x22($sp)
/* 70648 8006FA48 0C01B274 */  jal        func_8006C9D0
/* 7064C 8006FA4C 00000000 */   nop
/* 70650 8006FA50 14400017 */  bnez       $v0, .L8006FAB0
/* 70654 8006FA54 3C0F800F */   lui       $t7, %hi(gActors)
/* 70658 8006FA58 97A40022 */  lhu        $a0, 0x22($sp)
/* 7065C 8006FA5C 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 70660 8006FA60 00047080 */  sll        $t6, $a0, 2
/* 70664 8006FA64 01C47023 */  subu       $t6, $t6, $a0
/* 70668 8006FA68 000E7080 */  sll        $t6, $t6, 2
/* 7066C 8006FA6C 01C47021 */  addu       $t6, $t6, $a0
/* 70670 8006FA70 000E7080 */  sll        $t6, $t6, 2
/* 70674 8006FA74 01C47023 */  subu       $t6, $t6, $a0
/* 70678 8006FA78 000E70C0 */  sll        $t6, $t6, 3
/* 7067C 8006FA7C 01CF1021 */  addu       $v0, $t6, $t7
/* 70680 8006FA80 945800D0 */  lhu        $t8, 0xd0($v0)
/* 70684 8006FA84 240101D0 */  addiu      $at, $zero, 0x1d0
/* 70688 8006FA88 17010007 */  bne        $t8, $at, .L8006FAA8
/* 7068C 8006FA8C 00000000 */   nop
/* 70690 8006FA90 0C01A9C9 */  jal        func_8006A724
/* 70694 8006FA94 AFA2001C */   sw        $v0, 0x1c($sp)
/* 70698 8006FA98 8FA2001C */  lw         $v0, 0x1c($sp)
/* 7069C 8006FA9C 241901D1 */  addiu      $t9, $zero, 0x1d1
/* 706A0 8006FAA0 97A40022 */  lhu        $a0, 0x22($sp)
/* 706A4 8006FAA4 A45900D0 */  sh         $t9, 0xd0($v0)
.L8006FAA8:
/* 706A8 8006FAA8 0C01AA49 */  jal        func_8006A924
/* 706AC 8006FAAC 00000000 */   nop
.L8006FAB0:
/* 706B0 8006FAB0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 706B4 8006FAB4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 706B8 8006FAB8 03E00008 */  jr         $ra
/* 706BC 8006FABC 00000000 */   nop
