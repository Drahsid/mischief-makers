glabel func_8006C7B8
/* 6D3B8 8006C7B8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 6D3BC 8006C7BC AFB00018 */  sw         $s0, 0x18($sp)
/* 6D3C0 8006C7C0 3090FFFF */  andi       $s0, $a0, 0xffff
/* 6D3C4 8006C7C4 00107080 */  sll        $t6, $s0, 2
/* 6D3C8 8006C7C8 01D07023 */  subu       $t6, $t6, $s0
/* 6D3CC 8006C7CC 000E7080 */  sll        $t6, $t6, 2
/* 6D3D0 8006C7D0 01D07021 */  addu       $t6, $t6, $s0
/* 6D3D4 8006C7D4 000E7080 */  sll        $t6, $t6, 2
/* 6D3D8 8006C7D8 01D07023 */  subu       $t6, $t6, $s0
/* 6D3DC 8006C7DC 3C0F800F */  lui        $t7, %hi(gActors)
/* 6D3E0 8006C7E0 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 6D3E4 8006C7E4 000E70C0 */  sll        $t6, $t6, 3
/* 6D3E8 8006C7E8 01CF1021 */  addu       $v0, $t6, $t7
/* 6D3EC 8006C7EC 8C580098 */  lw         $t8, 0x98($v0)
/* 6D3F0 8006C7F0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 6D3F4 8006C7F4 33190200 */  andi       $t9, $t8, 0x200
/* 6D3F8 8006C7F8 1320002A */  beqz       $t9, .L8006C8A4
/* 6D3FC 8006C7FC AFA40028 */   sw        $a0, 0x28($sp)
/* 6D400 8006C800 8C480150 */  lw         $t0, 0x150($v0)
/* 6D404 8006C804 3204FFFF */  andi       $a0, $s0, 0xffff
/* 6D408 8006C808 00084B40 */  sll        $t1, $t0, 0xd
/* 6D40C 8006C80C 05200025 */  bltz       $t1, .L8006C8A4
/* 6D410 8006C810 00000000 */   nop
/* 6D414 8006C814 0C010216 */  jal        func_80040858
/* 6D418 8006C818 AFA20024 */   sw        $v0, 0x24($sp)
/* 6D41C 8006C81C 8FA20024 */  lw         $v0, 0x24($sp)
/* 6D420 8006C820 3C01800F */  lui        $at, %hi(D_800EC5BC)
/* 6D424 8006C824 944A0094 */  lhu        $t2, 0x94($v0)
/* 6D428 8006C828 C44600B4 */  lwc1       $f6, 0xb4($v0)
/* 6D42C 8006C82C 314BFFF7 */  andi       $t3, $t2, 0xfff7
/* 6D430 8006C830 A44B0094 */  sh         $t3, 0x94($v0)
/* 6D434 8006C834 C424C5BC */  lwc1       $f4, %lo(D_800EC5BC)($at)
/* 6D438 8006C838 C425C5B8 */  lwc1       $f5, -0x3a48($at)
/* 6D43C 8006C83C 46003221 */  cvt.d.s    $f8, $f6
/* 6D440 8006C840 46282032 */  c.eq.d     $f4, $f8
/* 6D444 8006C844 24040067 */  addiu      $a0, $zero, 0x67
/* 6D448 8006C848 45000008 */  bc1f       .L8006C86C
/* 6D44C 8006C84C 3205FFFF */   andi      $a1, $s0, 0xffff
/* 6D450 8006C850 240400A4 */  addiu      $a0, $zero, 0xa4
/* 6D454 8006C854 3205FFFF */  andi       $a1, $s0, 0xffff
/* 6D458 8006C858 0C000DB2 */  jal        func_800036C8
/* 6D45C 8006C85C AFA20024 */   sw        $v0, 0x24($sp)
/* 6D460 8006C860 8FA20024 */  lw         $v0, 0x24($sp)
/* 6D464 8006C864 10000006 */  b          .L8006C880
/* 6D468 8006C868 3204FFFF */   andi      $a0, $s0, 0xffff
.L8006C86C:
/* 6D46C 8006C86C 0C000DB2 */  jal        func_800036C8
/* 6D470 8006C870 AFA20024 */   sw        $v0, 0x24($sp)
/* 6D474 8006C874 8FA20024 */  lw         $v0, 0x24($sp)
/* 6D478 8006C878 00000000 */  nop
/* 6D47C 8006C87C 3204FFFF */  andi       $a0, $s0, 0xffff
.L8006C880:
/* 6D480 8006C880 0C00A44D */  jal        func_80029134
/* 6D484 8006C884 AFA20024 */   sw        $v0, 0x24($sp)
/* 6D488 8006C888 8FA20024 */  lw         $v0, 0x24($sp)
/* 6D48C 8006C88C 240C0160 */  addiu      $t4, $zero, 0x160
/* 6D490 8006C890 3204FFFF */  andi       $a0, $s0, 0xffff
/* 6D494 8006C894 0C01B1BC */  jal        func_8006C6F0
/* 6D498 8006C898 A44C00D0 */   sh        $t4, 0xd0($v0)
/* 6D49C 8006C89C 10000002 */  b          .L8006C8A8
/* 6D4A0 8006C8A0 24020001 */   addiu     $v0, $zero, 1
.L8006C8A4:
/* 6D4A4 8006C8A4 00001025 */  or         $v0, $zero, $zero
.L8006C8A8:
/* 6D4A8 8006C8A8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 6D4AC 8006C8AC 8FB00018 */  lw         $s0, 0x18($sp)
/* 6D4B0 8006C8B0 03E00008 */  jr         $ra
/* 6D4B4 8006C8B4 27BD0028 */   addiu     $sp, $sp, 0x28
