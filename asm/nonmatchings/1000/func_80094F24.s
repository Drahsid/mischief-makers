glabel func_80094F24
/* 95B24 80094F24 3C0E800C */  lui        $t6, %hi(D_800BE4E0)
/* 95B28 80094F28 95CEE4E0 */  lhu        $t6, %lo(D_800BE4E0)($t6)
/* 95B2C 80094F2C 24010007 */  addiu      $at, $zero, 7
/* 95B30 80094F30 01C1001A */  div        $zero, $t6, $at
/* 95B34 80094F34 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 95B38 80094F38 AFA40020 */  sw         $a0, 0x20($sp)
/* 95B3C 80094F3C AFBF0014 */  sw         $ra, 0x14($sp)
/* 95B40 80094F40 AFA50024 */  sw         $a1, 0x24($sp)
/* 95B44 80094F44 24040050 */  addiu      $a0, $zero, 0x50
/* 95B48 80094F48 00007810 */  mfhi       $t7
/* 95B4C 80094F4C 15E00022 */  bnez       $t7, .L80094FD8
/* 95B50 80094F50 8FBF0014 */   lw        $ra, 0x14($sp)
/* 95B54 80094F54 0C00A12E */  jal        func_800284B8
/* 95B58 80094F58 240500C0 */   addiu     $a1, $zero, 0xc0
/* 95B5C 80094F5C 1040001D */  beqz       $v0, .L80094FD4
/* 95B60 80094F60 3044FFFF */   andi      $a0, $v0, 0xffff
/* 95B64 80094F64 0004C080 */  sll        $t8, $a0, 2
/* 95B68 80094F68 0304C023 */  subu       $t8, $t8, $a0
/* 95B6C 80094F6C 0018C080 */  sll        $t8, $t8, 2
/* 95B70 80094F70 0304C021 */  addu       $t8, $t8, $a0
/* 95B74 80094F74 0018C080 */  sll        $t8, $t8, 2
/* 95B78 80094F78 0304C023 */  subu       $t8, $t8, $a0
/* 95B7C 80094F7C 3C19800F */  lui        $t9, %hi(D_800EF510)
/* 95B80 80094F80 2739F510 */  addiu      $t9, $t9, %lo(D_800EF510)
/* 95B84 80094F84 0018C0C0 */  sll        $t8, $t8, 3
/* 95B88 80094F88 03191821 */  addu       $v1, $t8, $t9
/* 95B8C 80094F8C 2408006C */  addiu      $t0, $zero, 0x6c
/* 95B90 80094F90 A46800D2 */  sh         $t0, 0xd2($v1)
/* 95B94 80094F94 0C0078B4 */  jal        func_8001E2D0
/* 95B98 80094F98 AFA30018 */   sw        $v1, 0x18($sp)
/* 95B9C 80094F9C 8FA30018 */  lw         $v1, 0x18($sp)
/* 95BA0 80094FA0 97A90022 */  lhu        $t1, 0x22($sp)
/* 95BA4 80094FA4 3C0A800C */  lui        $t2, %hi(D_800BE4E0)
/* 95BA8 80094FA8 AC690150 */  sw         $t1, 0x150($v1)
/* 95BAC 80094FAC 954AE4E0 */  lhu        $t2, %lo(D_800BE4E0)($t2)
/* 95BB0 80094FB0 2401000E */  addiu      $at, $zero, 0xe
/* 95BB4 80094FB4 0141001A */  div        $zero, $t2, $at
/* 95BB8 80094FB8 3C013F80 */  lui        $at, 0x3f80
/* 95BBC 80094FBC 00005810 */  mfhi       $t3
/* 95BC0 80094FC0 15600005 */  bnez       $t3, .L80094FD8
/* 95BC4 80094FC4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 95BC8 80094FC8 44812000 */  mtc1       $at, $f4
/* 95BCC 80094FCC 00000000 */  nop
/* 95BD0 80094FD0 E4640110 */  swc1       $f4, 0x110($v1)
.L80094FD4:
/* 95BD4 80094FD4 8FBF0014 */  lw         $ra, 0x14($sp)
.L80094FD8:
/* 95BD8 80094FD8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 95BDC 80094FDC 03E00008 */  jr         $ra
/* 95BE0 80094FE0 00000000 */   nop
