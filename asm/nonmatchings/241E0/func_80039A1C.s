glabel func_80039A1C
/* 3A61C 80039A1C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 3A620 80039A20 000E7880 */  sll        $t7, $t6, 2
/* 3A624 80039A24 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3A628 80039A28 01EE7823 */  subu       $t7, $t7, $t6
/* 3A62C 80039A2C 000F7880 */  sll        $t7, $t7, 2
/* 3A630 80039A30 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3A634 80039A34 AFA40020 */  sw         $a0, 0x20($sp)
/* 3A638 80039A38 01EE7821 */  addu       $t7, $t7, $t6
/* 3A63C 80039A3C 94B90008 */  lhu        $t9, 8($a1)
/* 3A640 80039A40 000F7880 */  sll        $t7, $t7, 2
/* 3A644 80039A44 01EE7823 */  subu       $t7, $t7, $t6
/* 3A648 80039A48 3C18800F */  lui        $t8, %hi(gActors)
/* 3A64C 80039A4C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 3A650 80039A50 000F78C0 */  sll        $t7, $t7, 3
/* 3A654 80039A54 01F81021 */  addu       $v0, $t7, $t8
/* 3A658 80039A58 33287FFF */  andi       $t0, $t9, 0x7fff
/* 3A65C 80039A5C 01C02025 */  or         $a0, $t6, $zero
/* 3A660 80039A60 A44800D2 */  sh         $t0, 0xd2($v0)
/* 3A664 80039A64 AFA2001C */  sw         $v0, 0x1c($sp)
/* 3A668 80039A68 0C0078B4 */  jal        func_8001E2D0
/* 3A66C 80039A6C AFA50024 */   sw        $a1, 0x24($sp)
/* 3A670 80039A70 8FA50024 */  lw         $a1, 0x24($sp)
/* 3A674 80039A74 3C0A800C */  lui        $t2, %hi(D_800BE558)
/* 3A678 80039A78 854AE558 */  lh         $t2, %lo(D_800BE558)($t2)
/* 3A67C 80039A7C 94A90000 */  lhu        $t1, ($a1)
/* 3A680 80039A80 8FA2001C */  lw         $v0, 0x1c($sp)
/* 3A684 80039A84 012A5823 */  subu       $t3, $t1, $t2
/* 3A688 80039A88 A44B0088 */  sh         $t3, 0x88($v0)
/* 3A68C 80039A8C 3C0D800C */  lui        $t5, %hi(D_800BE55C)
/* 3A690 80039A90 85ADE55C */  lh         $t5, %lo(D_800BE55C)($t5)
/* 3A694 80039A94 94AC0002 */  lhu        $t4, 2($a1)
/* 3A698 80039A98 3C014F80 */  lui        $at, 0x4f80
/* 3A69C 80039A9C 018D7023 */  subu       $t6, $t4, $t5
/* 3A6A0 80039AA0 A44E008C */  sh         $t6, 0x8c($v0)
/* 3A6A4 80039AA4 94AF0004 */  lhu        $t7, 4($a1)
/* 3A6A8 80039AA8 00000000 */  nop
/* 3A6AC 80039AAC 448F2000 */  mtc1       $t7, $f4
/* 3A6B0 80039AB0 05E10004 */  bgez       $t7, .L80039AC4
/* 3A6B4 80039AB4 468021A0 */   cvt.s.w   $f6, $f4
/* 3A6B8 80039AB8 44814000 */  mtc1       $at, $f8
/* 3A6BC 80039ABC 00000000 */  nop
/* 3A6C0 80039AC0 46083180 */  add.s      $f6, $f6, $f8
.L80039AC4:
/* 3A6C4 80039AC4 E4460110 */  swc1       $f6, 0x110($v0)
/* 3A6C8 80039AC8 94B80006 */  lhu        $t8, 6($a1)
/* 3A6CC 80039ACC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3A6D0 80039AD0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3A6D4 80039AD4 03E00008 */  jr         $ra
/* 3A6D8 80039AD8 A45800D8 */   sh        $t8, 0xd8($v0)
