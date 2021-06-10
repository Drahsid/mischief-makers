glabel func_8008E3C0
/* 8EFC0 8008E3C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8EFC4 8008E3C4 AFA40018 */  sw         $a0, 0x18($sp)
/* 8EFC8 8008E3C8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8EFCC 8008E3CC 240E0004 */  addiu      $t6, $zero, 4
/* 8EFD0 8008E3D0 3C01800C */  lui        $at, %hi(D_800BE5F4)
/* 8EFD4 8008E3D4 97A4001A */  lhu        $a0, 0x1a($sp)
/* 8EFD8 8008E3D8 0C0237C8 */  jal        func_8008DF20
/* 8EFDC 8008E3DC AC2EE5F4 */   sw        $t6, %lo(D_800BE5F4)($at)
/* 8EFE0 8008E3E0 97AF001A */  lhu        $t7, 0x1a($sp)
/* 8EFE4 8008E3E4 3C19800F */  lui        $t9, 0x800f
/* 8EFE8 8008E3E8 000FC080 */  sll        $t8, $t7, 2
/* 8EFEC 8008E3EC 030FC023 */  subu       $t8, $t8, $t7
/* 8EFF0 8008E3F0 0018C080 */  sll        $t8, $t8, 2
/* 8EFF4 8008E3F4 030FC021 */  addu       $t8, $t8, $t7
/* 8EFF8 8008E3F8 0018C080 */  sll        $t8, $t8, 2
/* 8EFFC 8008E3FC 030FC023 */  subu       $t8, $t8, $t7
/* 8F000 8008E400 0018C0C0 */  sll        $t8, $t8, 3
/* 8F004 8008E404 2739F510 */  addiu      $t9, $t9, -0xaf0
/* 8F008 8008E408 03191021 */  addu       $v0, $t8, $t9
/* 8F00C 8008E40C 944800D0 */  lhu        $t0, 0xd0($v0)
/* 8F010 8008E410 24010010 */  addiu      $at, $zero, 0x10
/* 8F014 8008E414 15010013 */  bne        $t0, $at, .L8008E464
/* 8F018 8008E418 24090004 */   addiu     $t1, $zero, 4
/* 8F01C 8008E41C 3C01800C */  lui        $at, %hi(D_800BE5F4)
/* 8F020 8008E420 AC29E5F4 */  sw         $t1, %lo(D_800BE5F4)($at)
/* 8F024 8008E424 3C013F80 */  lui        $at, 0x3f80
/* 8F028 8008E428 44812000 */  mtc1       $at, $f4
/* 8F02C 8008E42C 3C0B800D */  lui        $t3, %hi(D_800D46A8)
/* 8F030 8008E430 240A0030 */  addiu      $t2, $zero, 0x30
/* 8F034 8008E434 256B46A8 */  addiu      $t3, $t3, %lo(D_800D46A8)
/* 8F038 8008E438 3C0C0002 */  lui        $t4, 2
/* 8F03C 8008E43C A44A00D0 */  sh         $t2, 0xd0($v0)
/* 8F040 8008E440 AC4B018C */  sw         $t3, 0x18c($v0)
/* 8F044 8008E444 AC4C00F0 */  sw         $t4, 0xf0($v0)
/* 8F048 8008E448 240400B5 */  addiu      $a0, $zero, 0xb5
/* 8F04C 8008E44C 0C000CB1 */  jal        func_800032C4
/* 8F050 8008E450 E4440118 */   swc1      $f4, 0x118($v0)
/* 8F054 8008E454 0C000CB1 */  jal        func_800032C4
/* 8F058 8008E458 240400B4 */   addiu     $a0, $zero, 0xb4
/* 8F05C 8008E45C 0C000CD3 */  jal        func_8000334C
/* 8F060 8008E460 240400CD */   addiu     $a0, $zero, 0xcd
.L8008E464:
/* 8F064 8008E464 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8F068 8008E468 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8F06C 8008E46C 03E00008 */  jr         $ra
/* 8F070 8008E470 00000000 */   nop
/* 8F074 8008E474 00000000 */  nop
/* 8F078 8008E478 00000000 */  nop
/* 8F07C 8008E47C 00000000 */  nop
