glabel func_8003E640
/* 3F240 8003E640 308EFFFF */  andi       $t6, $a0, 0xffff
/* 3F244 8003E644 24060198 */  addiu      $a2, $zero, 0x198
/* 3F248 8003E648 01C60019 */  multu      $t6, $a2
/* 3F24C 8003E64C 3C05800F */  lui        $a1, %hi(D_800EF510)
/* 3F250 8003E650 24A5F510 */  addiu      $a1, $a1, %lo(D_800EF510)
/* 3F254 8003E654 3C010020 */  lui        $at, 0x20
/* 3F258 8003E658 AFA40000 */  sw         $a0, ($sp)
/* 3F25C 8003E65C 00007812 */  mflo       $t7
/* 3F260 8003E660 00AF1021 */  addu       $v0, $a1, $t7
/* 3F264 8003E664 94580152 */  lhu        $t8, 0x152($v0)
/* 3F268 8003E668 00000000 */  nop
/* 3F26C 8003E66C 03060019 */  multu      $t8, $a2
/* 3F270 8003E670 0000C812 */  mflo       $t9
/* 3F274 8003E674 00B91821 */  addu       $v1, $a1, $t9
/* 3F278 8003E678 8C680088 */  lw         $t0, 0x88($v1)
/* 3F27C 8003E67C 00000000 */  nop
/* 3F280 8003E680 AC480088 */  sw         $t0, 0x88($v0)
/* 3F284 8003E684 8C69008C */  lw         $t1, 0x8c($v1)
/* 3F288 8003E688 00000000 */  nop
/* 3F28C 8003E68C AC49008C */  sw         $t1, 0x8c($v0)
/* 3F290 8003E690 8C6A0090 */  lw         $t2, 0x90($v1)
/* 3F294 8003E694 00000000 */  nop
/* 3F298 8003E698 01415821 */  addu       $t3, $t2, $at
/* 3F29C 8003E69C 03E00008 */  jr         $ra
/* 3F2A0 8003E6A0 AC4B0090 */   sw        $t3, 0x90($v0)
