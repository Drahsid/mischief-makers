glabel func_8006E3E4
/* 6EFE4 8006E3E4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6EFE8 8006E3E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6EFEC 8006E3EC AFA40020 */  sw         $a0, 0x20($sp)
/* 6EFF0 8006E3F0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6EFF4 8006E3F4 01C02025 */  or         $a0, $t6, $zero
/* 6EFF8 8006E3F8 0C01B22E */  jal        func_8006C8B8
/* 6EFFC 8006E3FC A7AE0022 */   sh        $t6, 0x22($sp)
/* 6F000 8006E400 97A40022 */  lhu        $a0, 0x22($sp)
/* 6F004 8006E404 14400035 */  bnez       $v0, .L8006E4DC
/* 6F008 8006E408 00047880 */   sll       $t7, $a0, 2
/* 6F00C 8006E40C 01E47823 */  subu       $t7, $t7, $a0
/* 6F010 8006E410 000F7880 */  sll        $t7, $t7, 2
/* 6F014 8006E414 01E47821 */  addu       $t7, $t7, $a0
/* 6F018 8006E418 000F7880 */  sll        $t7, $t7, 2
/* 6F01C 8006E41C 01E47823 */  subu       $t7, $t7, $a0
/* 6F020 8006E420 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 6F024 8006E424 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 6F028 8006E428 000F78C0 */  sll        $t7, $t7, 3
/* 6F02C 8006E42C 01F81021 */  addu       $v0, $t7, $t8
/* 6F030 8006E430 944300D0 */  lhu        $v1, 0xd0($v0)
/* 6F034 8006E434 24010150 */  addiu      $at, $zero, 0x150
/* 6F038 8006E438 14610017 */  bne        $v1, $at, .L8006E498
/* 6F03C 8006E43C 24790001 */   addiu     $t9, $v1, 1
/* 6F040 8006E440 8C480080 */  lw         $t0, 0x80($v0)
/* 6F044 8006E444 3C010001 */  lui        $at, 1
/* 6F048 8006E448 01014825 */  or         $t1, $t0, $at
/* 6F04C 8006E44C 3C01FFFD */  lui        $at, 0xfffd
/* 6F050 8006E450 3421FFFF */  ori        $at, $at, 0xffff
/* 6F054 8006E454 8C4C0098 */  lw         $t4, 0x98($v0)
/* 6F058 8006E458 01215824 */  and        $t3, $t1, $at
/* 6F05C 8006E45C 44802000 */  mtc1       $zero, $f4
/* 6F060 8006E460 2401FFBF */  addiu      $at, $zero, -0x41
/* 6F064 8006E464 AC490080 */  sw         $t1, 0x80($v0)
/* 6F068 8006E468 01816824 */  and        $t5, $t4, $at
/* 6F06C 8006E46C A45900D0 */  sh         $t9, 0xd0($v0)
/* 6F070 8006E470 AC4D0098 */  sw         $t5, 0x98($v0)
/* 6F074 8006E474 AC4B0080 */  sw         $t3, 0x80($v0)
/* 6F078 8006E478 AC4000F0 */  sw         $zero, 0xf0($v0)
/* 6F07C 8006E47C AFA2001C */  sw         $v0, 0x1c($sp)
/* 6F080 8006E480 A7A40022 */  sh         $a0, 0x22($sp)
/* 6F084 8006E484 0C019636 */  jal        func_800658D8
/* 6F088 8006E488 E4440144 */   swc1      $f4, 0x144($v0)
/* 6F08C 8006E48C 8FA2001C */  lw         $v0, 0x1c($sp)
/* 6F090 8006E490 97A40022 */  lhu        $a0, 0x22($sp)
/* 6F094 8006E494 00000000 */  nop
.L8006E498:
/* 6F098 8006E498 844E00E0 */  lh         $t6, 0xe0($v0)
/* 6F09C 8006E49C 00000000 */  nop
/* 6F0A0 8006E4A0 11C0000C */  beqz       $t6, .L8006E4D4
/* 6F0A4 8006E4A4 00000000 */   nop
/* 6F0A8 8006E4A8 844F00E6 */  lh         $t7, 0xe6($v0)
/* 6F0AC 8006E4AC 24180060 */  addiu      $t8, $zero, 0x60
/* 6F0B0 8006E4B0 15E00004 */  bnez       $t7, .L8006E4C4
/* 6F0B4 8006E4B4 3C014080 */   lui       $at, 0x4080
/* 6F0B8 8006E4B8 44813000 */  mtc1       $at, $f6
/* 6F0BC 8006E4BC A45800D0 */  sh         $t8, 0xd0($v0)
/* 6F0C0 8006E4C0 E446013C */  swc1       $f6, 0x13c($v0)
.L8006E4C4:
/* 6F0C4 8006E4C4 0C01A6E5 */  jal        func_80069B94
/* 6F0C8 8006E4C8 00000000 */   nop
/* 6F0CC 8006E4CC 10000004 */  b          .L8006E4E0
/* 6F0D0 8006E4D0 8FBF0014 */   lw        $ra, 0x14($sp)
.L8006E4D4:
/* 6F0D4 8006E4D4 0C01A5AA */  jal        func_800696A8
/* 6F0D8 8006E4D8 00000000 */   nop
.L8006E4DC:
/* 6F0DC 8006E4DC 8FBF0014 */  lw         $ra, 0x14($sp)
.L8006E4E0:
/* 6F0E0 8006E4E0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 6F0E4 8006E4E4 03E00008 */  jr         $ra
/* 6F0E8 8006E4E8 00000000 */   nop
