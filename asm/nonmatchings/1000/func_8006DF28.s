glabel func_8006DF28
/* 6EB28 8006DF28 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6EB2C 8006DF2C AFBF0014 */  sw         $ra, 0x14($sp)
/* 6EB30 8006DF30 AFA40018 */  sw         $a0, 0x18($sp)
/* 6EB34 8006DF34 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6EB38 8006DF38 01C02025 */  or         $a0, $t6, $zero
/* 6EB3C 8006DF3C 0C01B22E */  jal        func_8006C8B8
/* 6EB40 8006DF40 A7AE001A */   sh        $t6, 0x1a($sp)
/* 6EB44 8006DF44 97A4001A */  lhu        $a0, 0x1a($sp)
/* 6EB48 8006DF48 14400029 */  bnez       $v0, .L8006DFF0
/* 6EB4C 8006DF4C 00047880 */   sll       $t7, $a0, 2
/* 6EB50 8006DF50 01E47823 */  subu       $t7, $t7, $a0
/* 6EB54 8006DF54 000F7880 */  sll        $t7, $t7, 2
/* 6EB58 8006DF58 01E47821 */  addu       $t7, $t7, $a0
/* 6EB5C 8006DF5C 000F7880 */  sll        $t7, $t7, 2
/* 6EB60 8006DF60 01E47823 */  subu       $t7, $t7, $a0
/* 6EB64 8006DF64 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 6EB68 8006DF68 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 6EB6C 8006DF6C 000F78C0 */  sll        $t7, $t7, 3
/* 6EB70 8006DF70 01F81021 */  addu       $v0, $t7, $t8
/* 6EB74 8006DF74 944300D0 */  lhu        $v1, 0xd0($v0)
/* 6EB78 8006DF78 24010120 */  addiu      $at, $zero, 0x120
/* 6EB7C 8006DF7C 14610016 */  bne        $v1, $at, .L8006DFD8
/* 6EB80 8006DF80 24790001 */   addiu     $t9, $v1, 1
/* 6EB84 8006DF84 8C480080 */  lw         $t0, 0x80($v0)
/* 6EB88 8006DF88 3C010001 */  lui        $at, 1
/* 6EB8C 8006DF8C 01014825 */  or         $t1, $t0, $at
/* 6EB90 8006DF90 3C01FFFD */  lui        $at, 0xfffd
/* 6EB94 8006DF94 3421FFFF */  ori        $at, $at, 0xffff
/* 6EB98 8006DF98 8C4C0098 */  lw         $t4, 0x98($v0)
/* 6EB9C 8006DF9C 01215824 */  and        $t3, $t1, $at
/* 6EBA0 8006DFA0 44802000 */  mtc1       $zero, $f4
/* 6EBA4 8006DFA4 2401FFBF */  addiu      $at, $zero, -0x41
/* 6EBA8 8006DFA8 3C0E800E */  lui        $t6, %hi(D_800E1BF4)
/* 6EBAC 8006DFAC AC490080 */  sw         $t1, 0x80($v0)
/* 6EBB0 8006DFB0 25CE1BF4 */  addiu      $t6, $t6, %lo(D_800E1BF4)
/* 6EBB4 8006DFB4 240F0001 */  addiu      $t7, $zero, 1
/* 6EBB8 8006DFB8 01816824 */  and        $t5, $t4, $at
/* 6EBBC 8006DFBC A45900D0 */  sh         $t9, 0xd0($v0)
/* 6EBC0 8006DFC0 AC4D0098 */  sw         $t5, 0x98($v0)
/* 6EBC4 8006DFC4 AC4B0080 */  sw         $t3, 0x80($v0)
/* 6EBC8 8006DFC8 A44F00E6 */  sh         $t7, 0xe6($v0)
/* 6EBCC 8006DFCC AC4E00E8 */  sw         $t6, 0xe8($v0)
/* 6EBD0 8006DFD0 AC4000EC */  sw         $zero, 0xec($v0)
/* 6EBD4 8006DFD4 E4440144 */  swc1       $f4, 0x144($v0)
.L8006DFD8:
/* 6EBD8 8006DFD8 845800E6 */  lh         $t8, 0xe6($v0)
/* 6EBDC 8006DFDC 24190130 */  addiu      $t9, $zero, 0x130
/* 6EBE0 8006DFE0 17000004 */  bnez       $t8, .L8006DFF4
/* 6EBE4 8006DFE4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 6EBE8 8006DFE8 0C0195EC */  jal        func_800657B0
/* 6EBEC 8006DFEC A45900D0 */   sh        $t9, 0xd0($v0)
.L8006DFF0:
/* 6EBF0 8006DFF0 8FBF0014 */  lw         $ra, 0x14($sp)
.L8006DFF4:
/* 6EBF4 8006DFF4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6EBF8 8006DFF8 03E00008 */  jr         $ra
/* 6EBFC 8006DFFC 00000000 */   nop
