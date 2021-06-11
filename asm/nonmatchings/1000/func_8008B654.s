glabel func_8008B654
/* 8C254 8008B654 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8C258 8008B658 AFB10018 */  sw         $s1, 0x18($sp)
/* 8C25C 8008B65C 3091FFFF */  andi       $s1, $a0, 0xffff
/* 8C260 8008B660 00117080 */  sll        $t6, $s1, 2
/* 8C264 8008B664 01D17023 */  subu       $t6, $t6, $s1
/* 8C268 8008B668 000E7080 */  sll        $t6, $t6, 2
/* 8C26C 8008B66C 01D17021 */  addu       $t6, $t6, $s1
/* 8C270 8008B670 000E7080 */  sll        $t6, $t6, 2
/* 8C274 8008B674 01D17023 */  subu       $t6, $t6, $s1
/* 8C278 8008B678 3C0F800F */  lui        $t7, %hi(gActors)
/* 8C27C 8008B67C AFB00014 */  sw         $s0, 0x14($sp)
/* 8C280 8008B680 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 8C284 8008B684 000E70C0 */  sll        $t6, $t6, 3
/* 8C288 8008B688 01CF8021 */  addu       $s0, $t6, $t7
/* 8C28C 8008B68C 960200D0 */  lhu        $v0, 0xd0($s0)
/* 8C290 8008B690 AFBF001C */  sw         $ra, 0x1c($sp)
/* 8C294 8008B694 10400006 */  beqz       $v0, .L8008B6B0
/* 8C298 8008B698 AFA40020 */   sw        $a0, 0x20($sp)
/* 8C29C 8008B69C 24010001 */  addiu      $at, $zero, 1
/* 8C2A0 8008B6A0 1041002B */  beq        $v0, $at, .L8008B750
/* 8C2A4 8008B6A4 00000000 */   nop
/* 8C2A8 8008B6A8 1000003F */  b          .L8008B7A8
/* 8C2AC 8008B6AC 8E190098 */   lw        $t9, 0x98($s0)
.L8008B6B0:
/* 8C2B0 8008B6B0 4458F800 */  cfc1       $t8, $31
/* 8C2B4 8008B6B4 C6040110 */  lwc1       $f4, 0x110($s0)
/* 8C2B8 8008B6B8 37010003 */  ori        $at, $t8, 3
/* 8C2BC 8008B6BC 38210002 */  xori       $at, $at, 2
/* 8C2C0 8008B6C0 44C1F800 */  ctc1       $at, $31
/* 8C2C4 8008B6C4 3C0B800E */  lui        $t3, 0x800e
/* 8C2C8 8008B6C8 460021A4 */  cvt.w.s    $f6, $f4
/* 8C2CC 8008B6CC 24190A09 */  addiu      $t9, $zero, 0xa09
/* 8C2D0 8008B6D0 44023000 */  mfc1       $v0, $f6
/* 8C2D4 8008B6D4 24080003 */  addiu      $t0, $zero, 3
/* 8C2D8 8008B6D8 24090001 */  addiu      $t1, $zero, 1
/* 8C2DC 8008B6DC 240AFFF8 */  addiu      $t2, $zero, -8
/* 8C2E0 8008B6E0 256BE188 */  addiu      $t3, $t3, -0x1e78
/* 8C2E4 8008B6E4 44D8F800 */  ctc1       $t8, $31
/* 8C2E8 8008B6E8 304C0100 */  andi       $t4, $v0, 0x100
/* 8C2EC 8008B6EC A6190094 */  sh         $t9, 0x94($s0)
/* 8C2F0 8008B6F0 AE080080 */  sw         $t0, 0x80($s0)
/* 8C2F4 8008B6F4 A60900E6 */  sh         $t1, 0xe6($s0)
/* 8C2F8 8008B6F8 A60A0090 */  sh         $t2, 0x90($s0)
/* 8C2FC 8008B6FC AE000188 */  sw         $zero, 0x188($s0)
/* 8C300 8008B700 AE0B018C */  sw         $t3, 0x18c($s0)
/* 8C304 8008B704 11800005 */  beqz       $t4, .L8008B71C
/* 8C308 8008B708 AE020150 */   sw        $v0, 0x150($s0)
/* 8C30C 8008B70C 3C0142B4 */  lui        $at, 0x42b4
/* 8C310 8008B710 44814000 */  mtc1       $at, $f8
/* 8C314 8008B714 10000005 */  b          .L8008B72C
/* 8C318 8008B718 E60800C4 */   swc1      $f8, 0xc4($s0)
.L8008B71C:
/* 8C31C 8008B71C 3C014387 */  lui        $at, 0x4387
/* 8C320 8008B720 44815000 */  mtc1       $at, $f10
/* 8C324 8008B724 00000000 */  nop
/* 8C328 8008B728 E60A00C4 */  swc1       $f10, 0xc4($s0)
.L8008B72C:
/* 8C32C 8008B72C 3C0D800E */  lui        $t5, %hi(D_800E44DC)
/* 8C330 8008B730 25AD44DC */  addiu      $t5, $t5, %lo(D_800E44DC)
/* 8C334 8008B734 AE0D00E8 */  sw         $t5, 0xe8($s0)
/* 8C338 8008B738 0C022B9E */  jal        func_8008AE78
/* 8C33C 8008B73C 3224FFFF */   andi      $a0, $s1, 0xffff
/* 8C340 8008B740 960E00D0 */  lhu        $t6, 0xd0($s0)
/* 8C344 8008B744 00000000 */  nop
/* 8C348 8008B748 25CF0001 */  addiu      $t7, $t6, 1
/* 8C34C 8008B74C A60F00D0 */  sh         $t7, 0xd0($s0)
.L8008B750:
/* 8C350 8008B750 0C022BC1 */  jal        func_8008AF04
/* 8C354 8008B754 3224FFFF */   andi      $a0, $s1, 0xffff
/* 8C358 8008B758 0C022CA1 */  jal        func_8008B284
/* 8C35C 8008B75C 3224FFFF */   andi      $a0, $s1, 0xffff
/* 8C360 8008B760 10400010 */  beqz       $v0, .L8008B7A4
/* 8C364 8008B764 00000000 */   nop
/* 8C368 8008B768 8E020150 */  lw         $v0, 0x150($s0)
/* 8C36C 8008B76C 24011000 */  addiu      $at, $zero, 0x1000
/* 8C370 8008B770 3058F000 */  andi       $t8, $v0, 0xf000
/* 8C374 8008B774 13000005 */  beqz       $t8, .L8008B78C
/* 8C378 8008B778 00000000 */   nop
/* 8C37C 8008B77C 13010007 */  beq        $t8, $at, .L8008B79C
/* 8C380 8008B780 00000000 */   nop
/* 8C384 8008B784 10000008 */  b          .L8008B7A8
/* 8C388 8008B788 8E190098 */   lw        $t9, 0x98($s0)
.L8008B78C:
/* 8C38C 8008B78C 0C022D0E */  jal        func_8008B438
/* 8C390 8008B790 3224FFFF */   andi      $a0, $s1, 0xffff
/* 8C394 8008B794 10000004 */  b          .L8008B7A8
/* 8C398 8008B798 8E190098 */   lw        $t9, 0x98($s0)
.L8008B79C:
/* 8C39C 8008B79C 0C022D52 */  jal        func_8008B548
/* 8C3A0 8008B7A0 3224FFFF */   andi      $a0, $s1, 0xffff
.L8008B7A4:
/* 8C3A4 8008B7A4 8E190098 */  lw         $t9, 0x98($s0)
.L8008B7A8:
/* 8C3A8 8008B7A8 3C01FFDF */  lui        $at, 0xffdf
/* 8C3AC 8008B7AC 3421F9FF */  ori        $at, $at, 0xf9ff
/* 8C3B0 8008B7B0 03214024 */  and        $t0, $t9, $at
/* 8C3B4 8008B7B4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 8C3B8 8008B7B8 AE080098 */  sw         $t0, 0x98($s0)
/* 8C3BC 8008B7BC 8FB00014 */  lw         $s0, 0x14($sp)
/* 8C3C0 8008B7C0 8FB10018 */  lw         $s1, 0x18($sp)
/* 8C3C4 8008B7C4 03E00008 */  jr         $ra
/* 8C3C8 8008B7C8 27BD0020 */   addiu     $sp, $sp, 0x20
