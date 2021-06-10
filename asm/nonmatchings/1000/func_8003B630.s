glabel func_8003B630
/* 3C230 8003B630 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3C234 8003B634 AFB10018 */  sw         $s1, 0x18($sp)
/* 3C238 8003B638 3091FFFF */  andi       $s1, $a0, 0xffff
/* 3C23C 8003B63C 00117080 */  sll        $t6, $s1, 2
/* 3C240 8003B640 01D17023 */  subu       $t6, $t6, $s1
/* 3C244 8003B644 000E7080 */  sll        $t6, $t6, 2
/* 3C248 8003B648 01D17021 */  addu       $t6, $t6, $s1
/* 3C24C 8003B64C 000E7080 */  sll        $t6, $t6, 2
/* 3C250 8003B650 01D17023 */  subu       $t6, $t6, $s1
/* 3C254 8003B654 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 3C258 8003B658 AFB00014 */  sw         $s0, 0x14($sp)
/* 3C25C 8003B65C 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 3C260 8003B660 000E70C0 */  sll        $t6, $t6, 3
/* 3C264 8003B664 01CF8021 */  addu       $s0, $t6, $t7
/* 3C268 8003B668 960200D0 */  lhu        $v0, 0xd0($s0)
/* 3C26C 8003B66C AFBF001C */  sw         $ra, 0x1c($sp)
/* 3C270 8003B670 10400009 */  beqz       $v0, .L8003B698
/* 3C274 8003B674 AFA40020 */   sw        $a0, 0x20($sp)
/* 3C278 8003B678 960300D8 */  lhu        $v1, 0xd8($s0)
/* 3C27C 8003B67C 24190003 */  addiu      $t9, $zero, 3
/* 3C280 8003B680 30780001 */  andi       $t8, $v1, 1
/* 3C284 8003B684 13000004 */  beqz       $t8, .L8003B698
/* 3C288 8003B688 3068FFFE */   andi      $t0, $v1, 0xfffe
/* 3C28C 8003B68C A61900D0 */  sh         $t9, 0xd0($s0)
/* 3C290 8003B690 A60800D8 */  sh         $t0, 0xd8($s0)
/* 3C294 8003B694 3322FFFF */  andi       $v0, $t9, 0xffff
.L8003B698:
/* 3C298 8003B698 2C410005 */  sltiu      $at, $v0, 5
/* 3C29C 8003B69C 10200084 */  beqz       $at, .L8003B8B0
/* 3C2A0 8003B6A0 00024880 */   sll       $t1, $v0, 2
/* 3C2A4 8003B6A4 3C01800F */  lui        $at, %hi(D_800EBB28)
/* 3C2A8 8003B6A8 00290821 */  addu       $at, $at, $t1
/* 3C2AC 8003B6AC 8C29BB28 */  lw         $t1, %lo(D_800EBB28)($at)
/* 3C2B0 8003B6B0 00000000 */  nop
/* 3C2B4 8003B6B4 01200008 */  jr         $t1
/* 3C2B8 8003B6B8 00000000 */   nop
/* 3C2BC 8003B6BC 3C0C0001 */  lui        $t4, 1
/* 3C2C0 8003B6C0 3C0D800E */  lui        $t5, %hi(D_800E1700)
/* 3C2C4 8003B6C4 244A0001 */  addiu      $t2, $v0, 1
/* 3C2C8 8003B6C8 240B0200 */  addiu      $t3, $zero, 0x200
/* 3C2CC 8003B6CC 358C0023 */  ori        $t4, $t4, 0x23
/* 3C2D0 8003B6D0 25AD1700 */  addiu      $t5, $t5, %lo(D_800E1700)
/* 3C2D4 8003B6D4 240E0001 */  addiu      $t6, $zero, 1
/* 3C2D8 8003B6D8 240FFFFF */  addiu      $t7, $zero, -1
/* 3C2DC 8003B6DC A60A00D0 */  sh         $t2, 0xd0($s0)
/* 3C2E0 8003B6E0 A60B0094 */  sh         $t3, 0x94($s0)
/* 3C2E4 8003B6E4 AE0C0080 */  sw         $t4, 0x80($s0)
/* 3C2E8 8003B6E8 A60E00E6 */  sh         $t6, 0xe6($s0)
/* 3C2EC 8003B6EC AE0D00E8 */  sw         $t5, 0xe8($s0)
/* 3C2F0 8003B6F0 A60F0090 */  sh         $t7, 0x90($s0)
/* 3C2F4 8003B6F4 0C01B357 */  jal        func_8006CD5C
/* 3C2F8 8003B6F8 3224FFFF */   andi      $a0, $s1, 0xffff
/* 3C2FC 8003B6FC 0C01B31C */  jal        func_8006CC70
/* 3C300 8003B700 3224FFFF */   andi      $a0, $s1, 0xffff
/* 3C304 8003B704 3224FFFF */  andi       $a0, $s1, 0xffff
/* 3C308 8003B708 0C00AB0C */  jal        func_8002AC30
/* 3C30C 8003B70C 2405000A */   addiu     $a1, $zero, 0xa
/* 3C310 8003B710 8E0400EC */  lw         $a0, 0xec($s0)
/* 3C314 8003B714 00002825 */  or         $a1, $zero, $zero
/* 3C318 8003B718 0C00A607 */  jal        func_8002981C
/* 3C31C 8003B71C 24062000 */   addiu     $a2, $zero, 0x2000
/* 3C320 8003B720 8E180098 */  lw         $t8, 0x98($s0)
/* 3C324 8003B724 AE0200EC */  sw         $v0, 0xec($s0)
/* 3C328 8003B728 33190040 */  andi       $t9, $t8, 0x40
/* 3C32C 8003B72C 13200010 */  beqz       $t9, .L8003B770
/* 3C330 8003B730 24080002 */   addiu     $t0, $zero, 2
/* 3C334 8003B734 8E0B0080 */  lw         $t3, 0x80($s0)
/* 3C338 8003B738 3C01FFFE */  lui        $at, 0xfffe
/* 3C33C 8003B73C 3421FFFF */  ori        $at, $at, 0xffff
/* 3C340 8003B740 01616024 */  and        $t4, $t3, $at
/* 3C344 8003B744 3C09800E */  lui        $t1, %hi(D_800E1C1C)
/* 3C348 8003B748 3C010002 */  lui        $at, 2
/* 3C34C 8003B74C 25291C1C */  addiu      $t1, $t1, %lo(D_800E1C1C)
/* 3C350 8003B750 240A0001 */  addiu      $t2, $zero, 1
/* 3C354 8003B754 01817025 */  or         $t6, $t4, $at
/* 3C358 8003B758 AE0C0080 */  sw         $t4, 0x80($s0)
/* 3C35C 8003B75C A60800D0 */  sh         $t0, 0xd0($s0)
/* 3C360 8003B760 A60A00E6 */  sh         $t2, 0xe6($s0)
/* 3C364 8003B764 AE0900E8 */  sw         $t1, 0xe8($s0)
/* 3C368 8003B768 10000051 */  b          .L8003B8B0
/* 3C36C 8003B76C AE0E0080 */   sw        $t6, 0x80($s0)
.L8003B770:
/* 3C370 8003B770 0C019FBC */  jal        func_80067EF0
/* 3C374 8003B774 3224FFFF */   andi      $a0, $s1, 0xffff
/* 3C378 8003B778 1000004D */  b          .L8003B8B0
/* 3C37C 8003B77C 00000000 */   nop
/* 3C380 8003B780 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 3C384 8003B784 3C05FFF9 */  lui        $a1, 0xfff9
/* 3C388 8003B788 34A58000 */  ori        $a1, $a1, 0x8000
/* 3C38C 8003B78C 0C00A607 */  jal        func_8002981C
/* 3C390 8003B790 24063800 */   addiu     $a2, $zero, 0x3800
/* 3C394 8003B794 8E0F0098 */  lw         $t7, 0x98($s0)
/* 3C398 8003B798 AE0200F0 */  sw         $v0, 0xf0($s0)
/* 3C39C 8003B79C 31F80020 */  andi       $t8, $t7, 0x20
/* 3C3A0 8003B7A0 13000043 */  beqz       $t8, .L8003B8B0
/* 3C3A4 8003B7A4 24190001 */   addiu     $t9, $zero, 1
/* 3C3A8 8003B7A8 8E0A0080 */  lw         $t2, 0x80($s0)
/* 3C3AC 8003B7AC 3C01FFFD */  lui        $at, 0xfffd
/* 3C3B0 8003B7B0 3421FFFF */  ori        $at, $at, 0xffff
/* 3C3B4 8003B7B4 01415824 */  and        $t3, $t2, $at
/* 3C3B8 8003B7B8 8E0E00EC */  lw         $t6, 0xec($s0)
/* 3C3BC 8003B7BC 3C010001 */  lui        $at, 1
/* 3C3C0 8003B7C0 01616825 */  or         $t5, $t3, $at
/* 3C3C4 8003B7C4 3C08800E */  lui        $t0, %hi(D_800E1C2C)
/* 3C3C8 8003B7C8 25081C2C */  addiu      $t0, $t0, %lo(D_800E1C2C)
/* 3C3CC 8003B7CC 24090001 */  addiu      $t1, $zero, 1
/* 3C3D0 8003B7D0 AE0B0080 */  sw         $t3, 0x80($s0)
/* 3C3D4 8003B7D4 A61900D0 */  sh         $t9, 0xd0($s0)
/* 3C3D8 8003B7D8 A60900E6 */  sh         $t1, 0xe6($s0)
/* 3C3DC 8003B7DC AE0800E8 */  sw         $t0, 0xe8($s0)
/* 3C3E0 8003B7E0 AE0D0080 */  sw         $t5, 0x80($s0)
/* 3C3E4 8003B7E4 01606025 */  or         $t4, $t3, $zero
/* 3C3E8 8003B7E8 05C10003 */  bgez       $t6, .L8003B7F8
/* 3C3EC 8003B7EC 000E7843 */   sra       $t7, $t6, 1
/* 3C3F0 8003B7F0 25C10001 */  addiu      $at, $t6, 1
/* 3C3F4 8003B7F4 00017843 */  sra        $t7, $at, 1
.L8003B7F8:
/* 3C3F8 8003B7F8 AE0F00EC */  sw         $t7, 0xec($s0)
/* 3C3FC 8003B7FC 1000002C */  b          .L8003B8B0
/* 3C400 8003B800 AE0000F0 */   sw        $zero, 0xf0($s0)
/* 3C404 8003B804 8E090080 */  lw         $t1, 0x80($s0)
/* 3C408 8003B808 3C01FFFC */  lui        $at, 0xfffc
/* 3C40C 8003B80C 3C19800E */  lui        $t9, %hi(D_800E1D0C)
/* 3C410 8003B810 3421FFFF */  ori        $at, $at, 0xffff
/* 3C414 8003B814 24580001 */  addiu      $t8, $v0, 1
/* 3C418 8003B818 27391D0C */  addiu      $t9, $t9, %lo(D_800E1D0C)
/* 3C41C 8003B81C 24080001 */  addiu      $t0, $zero, 1
/* 3C420 8003B820 240B2000 */  addiu      $t3, $zero, 0x2000
/* 3C424 8003B824 240C0078 */  addiu      $t4, $zero, 0x78
/* 3C428 8003B828 01215024 */  and        $t2, $t1, $at
/* 3C42C 8003B82C A61800D0 */  sh         $t8, 0xd0($s0)
/* 3C430 8003B830 A60800E6 */  sh         $t0, 0xe6($s0)
/* 3C434 8003B834 AE1900E8 */  sw         $t9, 0xe8($s0)
/* 3C438 8003B838 AE0A0080 */  sw         $t2, 0x80($s0)
/* 3C43C 8003B83C AE0000EC */  sw         $zero, 0xec($s0)
/* 3C440 8003B840 AE0B00F0 */  sw         $t3, 0xf0($s0)
/* 3C444 8003B844 AE0C0150 */  sw         $t4, 0x150($s0)
/* 3C448 8003B848 8E0D0150 */  lw         $t5, 0x150($s0)
/* 3C44C 8003B84C 2418003F */  addiu      $t8, $zero, 0x3f
/* 3C450 8003B850 25AEFFFF */  addiu      $t6, $t5, -1
/* 3C454 8003B854 05C1000C */  bgez       $t6, .L8003B888
/* 3C458 8003B858 AE0E0150 */   sw        $t6, 0x150($s0)
/* 3C45C 8003B85C A61800D2 */  sh         $t8, 0xd2($s0)
/* 3C460 8003B860 0C0078B4 */  jal        func_8001E2D0
/* 3C464 8003B864 3224FFFF */   andi      $a0, $s1, 0xffff
/* 3C468 8003B868 3C190002 */  lui        $t9, 2
/* 3C46C 8003B86C AE1900F0 */  sw         $t9, 0xf0($s0)
/* 3C470 8003B870 3C01800F */  lui        $at, %hi(D_800EBB3C)
/* 3C474 8003B874 C424BB3C */  lwc1       $f4, %lo(D_800EBB3C)($at)
/* 3C478 8003B878 24080001 */  addiu      $t0, $zero, 1
/* 3C47C 8003B87C A60800D8 */  sh         $t0, 0xd8($s0)
/* 3C480 8003B880 1000000D */  b          .L8003B8B8
/* 3C484 8003B884 E6040110 */   swc1      $f4, 0x110($s0)
.L8003B888:
/* 3C488 8003B888 860900E6 */  lh         $t1, 0xe6($s0)
/* 3C48C 8003B88C 3C0A800E */  lui        $t2, %hi(D_800E1D0C)
/* 3C490 8003B890 15200007 */  bnez       $t1, .L8003B8B0
/* 3C494 8003B894 254A1D0C */   addiu     $t2, $t2, %lo(D_800E1D0C)
/* 3C498 8003B898 240B0001 */  addiu      $t3, $zero, 1
/* 3C49C 8003B89C A60B00E6 */  sh         $t3, 0xe6($s0)
/* 3C4A0 8003B8A0 AE0A00E8 */  sw         $t2, 0xe8($s0)
/* 3C4A4 8003B8A4 2404002A */  addiu      $a0, $zero, 0x2a
/* 3C4A8 8003B8A8 0C000DB2 */  jal        func_800036C8
/* 3C4AC 8003B8AC 3225FFFF */   andi      $a1, $s1, 0xffff
.L8003B8B0:
/* 3C4B0 8003B8B0 0C019AF3 */  jal        func_80066BCC
/* 3C4B4 8003B8B4 3224FFFF */   andi      $a0, $s1, 0xffff
.L8003B8B8:
/* 3C4B8 8003B8B8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 3C4BC 8003B8BC 8FB00014 */  lw         $s0, 0x14($sp)
/* 3C4C0 8003B8C0 8FB10018 */  lw         $s1, 0x18($sp)
/* 3C4C4 8003B8C4 03E00008 */  jr         $ra
/* 3C4C8 8003B8C8 27BD0020 */   addiu     $sp, $sp, 0x20
