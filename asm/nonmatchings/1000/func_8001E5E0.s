glabel func_8001E5E0
/* 1F1E0 8001E5E0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 1F1E4 8001E5E4 000E7880 */  sll        $t7, $t6, 2
/* 1F1E8 8001E5E8 01EE7823 */  subu       $t7, $t7, $t6
/* 1F1EC 8001E5EC 000F7880 */  sll        $t7, $t7, 2
/* 1F1F0 8001E5F0 01EE7821 */  addu       $t7, $t7, $t6
/* 1F1F4 8001E5F4 000F7880 */  sll        $t7, $t7, 2
/* 1F1F8 8001E5F8 01EE7823 */  subu       $t7, $t7, $t6
/* 1F1FC 8001E5FC 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 1F200 8001E600 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 1F204 8001E604 000F78C0 */  sll        $t7, $t7, 3
/* 1F208 8001E608 01F81821 */  addu       $v1, $t7, $t8
/* 1F20C 8001E60C 847900E2 */  lh         $t9, 0xe2($v1)
/* 1F210 8001E610 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1F214 8001E614 44992000 */  mtc1       $t9, $f4
/* 1F218 8001E618 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1F21C 8001E61C AFA40028 */  sw         $a0, 0x28($sp)
/* 1F220 8001E620 AFA5002C */  sw         $a1, 0x2c($sp)
/* 1F224 8001E624 AFA60030 */  sw         $a2, 0x30($sp)
/* 1F228 8001E628 AFA3001C */  sw         $v1, 0x1c($sp)
/* 1F22C 8001E62C 0C0295C4 */  jal        func_800A5710
/* 1F230 8001E630 46802320 */   cvt.s.w   $f12, $f4
/* 1F234 8001E634 97A8002E */  lhu        $t0, 0x2e($sp)
/* 1F238 8001E638 3C0A800F */  lui        $t2, 0x800f
/* 1F23C 8001E63C 00084880 */  sll        $t1, $t0, 2
/* 1F240 8001E640 01284823 */  subu       $t1, $t1, $t0
/* 1F244 8001E644 00094880 */  sll        $t1, $t1, 2
/* 1F248 8001E648 01284821 */  addu       $t1, $t1, $t0
/* 1F24C 8001E64C 00094880 */  sll        $t1, $t1, 2
/* 1F250 8001E650 01284823 */  subu       $t1, $t1, $t0
/* 1F254 8001E654 8FA3001C */  lw         $v1, 0x1c($sp)
/* 1F258 8001E658 000948C0 */  sll        $t1, $t1, 3
/* 1F25C 8001E65C 254AF510 */  addiu      $t2, $t2, -0xaf0
/* 1F260 8001E660 012A1021 */  addu       $v0, $t1, $t2
/* 1F264 8001E664 8C4C0088 */  lw         $t4, 0x88($v0)
/* 1F268 8001E668 8C4E008C */  lw         $t6, 0x8c($v0)
/* 1F26C 8001E66C 8C6B0088 */  lw         $t3, 0x88($v1)
/* 1F270 8001E670 8C6D008C */  lw         $t5, 0x8c($v1)
/* 1F274 8001E674 E7A00020 */  swc1       $f0, 0x20($sp)
/* 1F278 8001E678 016C2023 */  subu       $a0, $t3, $t4
/* 1F27C 8001E67C 0C00A538 */  jal        func_800294E0
/* 1F280 8001E680 01AE2823 */   subu      $a1, $t5, $t6
/* 1F284 8001E684 8FAF0030 */  lw         $t7, 0x30($sp)
/* 1F288 8001E688 C7A60020 */  lwc1       $f6, 0x20($sp)
/* 1F28C 8001E68C 448F4000 */  mtc1       $t7, $f8
/* 1F290 8001E690 3C014000 */  lui        $at, 0x4000
/* 1F294 8001E694 468042A0 */  cvt.s.w    $f10, $f8
/* 1F298 8001E698 44819000 */  mtc1       $at, $f18
/* 1F29C 8001E69C 24590100 */  addiu      $t9, $v0, 0x100
/* 1F2A0 8001E6A0 460A3402 */  mul.s      $f16, $f6, $f10
/* 1F2A4 8001E6A4 33280200 */  andi       $t0, $t9, 0x200
/* 1F2A8 8001E6A8 00084880 */  sll        $t1, $t0, 2
/* 1F2AC 8001E6AC 3C01800C */  lui        $at, %hi(D_800BCCD0)
/* 1F2B0 8001E6B0 46128102 */  mul.s      $f4, $f16, $f18
/* 1F2B4 8001E6B4 00290821 */  addu       $at, $at, $t1
/* 1F2B8 8001E6B8 C428CCD0 */  lwc1       $f8, %lo(D_800BCCD0)($at)
/* 1F2BC 8001E6BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1F2C0 8001E6C0 46044182 */  mul.s      $f6, $f8, $f4
/* 1F2C4 8001E6C4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1F2C8 8001E6C8 444AF800 */  cfc1       $t2, $31
/* 1F2CC 8001E6CC 00000000 */  nop
/* 1F2D0 8001E6D0 35410003 */  ori        $at, $t2, 3
/* 1F2D4 8001E6D4 38210002 */  xori       $at, $at, 2
/* 1F2D8 8001E6D8 44C1F800 */  ctc1       $at, $31
/* 1F2DC 8001E6DC 00000000 */  nop
/* 1F2E0 8001E6E0 460032A4 */  cvt.w.s    $f10, $f6
/* 1F2E4 8001E6E4 44025000 */  mfc1       $v0, $f10
/* 1F2E8 8001E6E8 44CAF800 */  ctc1       $t2, $31
/* 1F2EC 8001E6EC 03E00008 */  jr         $ra
/* 1F2F0 8001E6F0 00000000 */   nop
