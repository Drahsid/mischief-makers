glabel func_8002F1C8
/* 2FDC8 8002F1C8 3C0E800D */  lui        $t6, %hi(D_800D2958)
/* 2FDCC 8002F1CC 85CE2958 */  lh         $t6, %lo(D_800D2958)($t6)
/* 2FDD0 8002F1D0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2FDD4 8002F1D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2FDD8 8002F1D8 AFA40020 */  sw         $a0, 0x20($sp)
/* 2FDDC 8002F1DC 05C0002E */  bltz       $t6, .L8002F298
/* 2FDE0 8002F1E0 00002825 */   or        $a1, $zero, $zero
/* 2FDE4 8002F1E4 3C048018 */  lui        $a0, %hi(D_80178162)
/* 2FDE8 8002F1E8 94848162 */  lhu        $a0, %lo(D_80178162)($a0)
/* 2FDEC 8002F1EC 0C0071FC */  jal        func_8001C7F0
/* 2FDF0 8002F1F0 A7A0001E */   sh        $zero, 0x1e($sp)
/* 2FDF4 8002F1F4 97A5001E */  lhu        $a1, 0x1e($sp)
/* 2FDF8 8002F1F8 14400028 */  bnez       $v0, .L8002F29C
/* 2FDFC 8002F1FC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 2FE00 8002F200 14600025 */  bnez       $v1, .L8002F298
/* 2FE04 8002F204 3C08800F */   lui       $t0, %hi(gActors)
/* 2FE08 8002F208 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 2FE0C 8002F20C 8506008C */  lh         $a2, 0x8c($t0)
/* 2FE10 8002F210 3C013F80 */  lui        $at, 0x3f80
/* 2FE14 8002F214 24C60030 */  addiu      $a2, $a2, 0x30
/* 2FE18 8002F218 00067C00 */  sll        $t7, $a2, 0x10
/* 2FE1C 8002F21C 44816000 */  mtc1       $at, $f12
/* 2FE20 8002F220 85050088 */  lh         $a1, 0x88($t0)
/* 2FE24 8002F224 000F3403 */  sra        $a2, $t7, 0x10
/* 2FE28 8002F228 0C00FF93 */  jal        func_8003FE4C
/* 2FE2C 8002F22C 24070002 */   addiu     $a3, $zero, 2
/* 2FE30 8002F230 97A40022 */  lhu        $a0, 0x22($sp)
/* 2FE34 8002F234 24050032 */  addiu      $a1, $zero, 0x32
/* 2FE38 8002F238 0C00BBF9 */  jal        func_8002EFE4
/* 2FE3C 8002F23C 00003025 */   or        $a2, $zero, $zero
/* 2FE40 8002F240 3C08800F */  lui        $t0, %hi(gActors)
/* 2FE44 8002F244 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 2FE48 8002F248 10400013 */  beqz       $v0, .L8002F298
/* 2FE4C 8002F24C 3045FFFF */   andi      $a1, $v0, 0xffff
/* 2FE50 8002F250 3059FFFF */  andi       $t9, $v0, 0xffff
/* 2FE54 8002F254 00194880 */  sll        $t1, $t9, 2
/* 2FE58 8002F258 01394823 */  subu       $t1, $t1, $t9
/* 2FE5C 8002F25C 00094880 */  sll        $t1, $t1, 2
/* 2FE60 8002F260 01394821 */  addu       $t1, $t1, $t9
/* 2FE64 8002F264 00094880 */  sll        $t1, $t1, 2
/* 2FE68 8002F268 01394823 */  subu       $t1, $t1, $t9
/* 2FE6C 8002F26C 000948C0 */  sll        $t1, $t1, 3
/* 2FE70 8002F270 01092021 */  addu       $a0, $t0, $t1
/* 2FE74 8002F274 240A003D */  addiu      $t2, $zero, 0x3d
/* 2FE78 8002F278 A48A00D2 */  sh         $t2, 0xd2($a0)
/* 2FE7C 8002F27C 850B0088 */  lh         $t3, 0x88($t0)
/* 2FE80 8002F280 00000000 */  nop
/* 2FE84 8002F284 A48B0088 */  sh         $t3, 0x88($a0)
/* 2FE88 8002F288 850C008C */  lh         $t4, 0x8c($t0)
/* 2FE8C 8002F28C 00000000 */  nop
/* 2FE90 8002F290 258D0030 */  addiu      $t5, $t4, 0x30
/* 2FE94 8002F294 A48D008C */  sh         $t5, 0x8c($a0)
.L8002F298:
/* 2FE98 8002F298 8FBF0014 */  lw         $ra, 0x14($sp)
.L8002F29C:
/* 2FE9C 8002F29C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2FEA0 8002F2A0 03E00008 */  jr         $ra
/* 2FEA4 8002F2A4 00A01025 */   or        $v0, $a1, $zero
