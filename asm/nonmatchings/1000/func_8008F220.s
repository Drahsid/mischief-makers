glabel func_8008F220
/* 8FE20 8008F220 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8FE24 8008F224 AFA40018 */  sw         $a0, 0x18($sp)
/* 8FE28 8008F228 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8FE2C 8008F22C 97A4001A */  lhu        $a0, 0x1a($sp)
/* 8FE30 8008F230 0C023BEA */  jal        func_8008EFA8
/* 8FE34 8008F234 00000000 */   nop
/* 8FE38 8008F238 10400004 */  beqz       $v0, .L8008F24C
/* 8FE3C 8008F23C 97A4001A */   lhu       $a0, 0x1a($sp)
/* 8FE40 8008F240 10000010 */  b          .L8008F284
/* 8FE44 8008F244 24020004 */   addiu     $v0, $zero, 4
/* 8FE48 8008F248 97A4001A */  lhu        $a0, 0x1a($sp)
.L8008F24C:
/* 8FE4C 8008F24C 0C023BBE */  jal        func_8008EEF8
/* 8FE50 8008F250 00000000 */   nop
/* 8FE54 8008F254 10400004 */  beqz       $v0, .L8008F268
/* 8FE58 8008F258 97A4001A */   lhu       $a0, 0x1a($sp)
/* 8FE5C 8008F25C 10000009 */  b          .L8008F284
/* 8FE60 8008F260 24020001 */   addiu     $v0, $zero, 1
/* 8FE64 8008F264 97A4001A */  lhu        $a0, 0x1a($sp)
.L8008F268:
/* 8FE68 8008F268 0C023B6C */  jal        func_8008EDB0
/* 8FE6C 8008F26C 00000000 */   nop
/* 8FE70 8008F270 10400004 */  beqz       $v0, .L8008F284
/* 8FE74 8008F274 00001025 */   or        $v0, $zero, $zero
/* 8FE78 8008F278 10000002 */  b          .L8008F284
/* 8FE7C 8008F27C 24020002 */   addiu     $v0, $zero, 2
/* 8FE80 8008F280 00001025 */  or         $v0, $zero, $zero
.L8008F284:
/* 8FE84 8008F284 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8FE88 8008F288 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8FE8C 8008F28C 03E00008 */  jr         $ra
/* 8FE90 8008F290 00000000 */   nop
