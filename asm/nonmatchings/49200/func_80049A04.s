glabel func_80049A04
/* 4A604 80049A04 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4A608 80049A08 AFA40018 */  sw         $a0, 0x18($sp)
/* 4A60C 80049A0C AFBF0014 */  sw         $ra, 0x14($sp)
/* 4A610 80049A10 97A4001A */  lhu        $a0, 0x1a($sp)
/* 4A614 80049A14 0C0174CE */  jal        func_8005D338
/* 4A618 80049A18 00000000 */   nop
/* 4A61C 80049A1C 00027080 */  sll        $t6, $v0, 2
/* 4A620 80049A20 3C04800D */  lui        $a0, %hi(D_800D4184)
/* 4A624 80049A24 008E2021 */  addu       $a0, $a0, $t6
/* 4A628 80049A28 8C844184 */  lw         $a0, %lo(D_800D4184)($a0)
/* 4A62C 80049A2C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4A630 80049A30 14800003 */  bnez       $a0, .L80049A40
/* 4A634 80049A34 3C05800F */   lui       $a1, %hi(gActors)
/* 4A638 80049A38 1000001F */  b          .L80049AB8
/* 4A63C 80049A3C 00001025 */   or        $v0, $zero, $zero
.L80049A40:
/* 4A640 80049A40 97AF001A */  lhu        $t7, 0x1a($sp)
/* 4A644 80049A44 24A5F510 */  addiu      $a1, $a1, %lo(gActors)
/* 4A648 80049A48 000FC080 */  sll        $t8, $t7, 2
/* 4A64C 80049A4C 030FC023 */  subu       $t8, $t8, $t7
/* 4A650 80049A50 0018C080 */  sll        $t8, $t8, 2
/* 4A654 80049A54 030FC021 */  addu       $t8, $t8, $t7
/* 4A658 80049A58 0018C080 */  sll        $t8, $t8, 2
/* 4A65C 80049A5C 030FC023 */  subu       $t8, $t8, $t7
/* 4A660 80049A60 0018C0C0 */  sll        $t8, $t8, 3
/* 4A664 80049A64 00B8C821 */  addu       $t9, $a1, $t8
/* 4A668 80049A68 83280171 */  lb         $t0, 0x171($t9)
/* 4A66C 80049A6C C4A80120 */  lwc1       $f8, 0x120($a1)
/* 4A670 80049A70 01044821 */  addu       $t1, $t0, $a0
/* 4A674 80049A74 81230000 */  lb         $v1, ($t1)
/* 4A678 80049A78 00000000 */  nop
/* 4A67C 80049A7C 00035400 */  sll        $t2, $v1, 0x10
/* 4A680 80049A80 448A2000 */  mtc1       $t2, $f4
/* 4A684 80049A84 00000000 */  nop
/* 4A688 80049A88 468021A0 */  cvt.s.w    $f6, $f4
/* 4A68C 80049A8C 46083282 */  mul.s      $f10, $f6, $f8
/* 4A690 80049A90 444BF800 */  cfc1       $t3, $31
/* 4A694 80049A94 00000000 */  nop
/* 4A698 80049A98 35610003 */  ori        $at, $t3, 3
/* 4A69C 80049A9C 38210002 */  xori       $at, $at, 2
/* 4A6A0 80049AA0 44C1F800 */  ctc1       $at, $31
/* 4A6A4 80049AA4 00000000 */  nop
/* 4A6A8 80049AA8 46005424 */  cvt.w.s    $f16, $f10
/* 4A6AC 80049AAC 44CBF800 */  ctc1       $t3, $31
/* 4A6B0 80049AB0 44028000 */  mfc1       $v0, $f16
/* 4A6B4 80049AB4 00000000 */  nop
.L80049AB8:
/* 4A6B8 80049AB8 03E00008 */  jr         $ra
/* 4A6BC 80049ABC 27BD0018 */   addiu     $sp, $sp, 0x18
