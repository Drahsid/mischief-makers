glabel func_80028DAC
/* 299AC 80028DAC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 299B0 80028DB0 3C06800F */  lui        $a2, %hi(D_800EF59C)
/* 299B4 80028DB4 84C6F59C */  lh         $a2, %lo(D_800EF59C)($a2)
/* 299B8 80028DB8 AFA40018 */  sw         $a0, 0x18($sp)
/* 299BC 80028DBC AFA5001C */  sw         $a1, 0x1c($sp)
/* 299C0 80028DC0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 299C4 80028DC4 87A5001E */  lh         $a1, 0x1e($sp)
/* 299C8 80028DC8 97A4001A */  lhu        $a0, 0x1a($sp)
/* 299CC 80028DCC 0C007F28 */  jal        func_8001FCA0
/* 299D0 80028DD0 24C60002 */   addiu     $a2, $a2, 2
/* 299D4 80028DD4 304E0080 */  andi       $t6, $v0, 0x80
/* 299D8 80028DD8 11C0000B */  beqz       $t6, .L80028E08
/* 299DC 80028DDC 3C06800F */   lui       $a2, %hi(D_800EF59C)
/* 299E0 80028DE0 84C6F59C */  lh         $a2, %lo(D_800EF59C)($a2)
/* 299E4 80028DE4 97A4001A */  lhu        $a0, 0x1a($sp)
/* 299E8 80028DE8 87A5001E */  lh         $a1, 0x1e($sp)
/* 299EC 80028DEC 0C007F28 */  jal        func_8001FCA0
/* 299F0 80028DF0 24C60002 */   addiu     $a2, $a2, 2
/* 299F4 80028DF4 304F0080 */  andi       $t7, $v0, 0x80
/* 299F8 80028DF8 11E00004 */  beqz       $t7, .L80028E0C
/* 299FC 80028DFC 00001025 */   or        $v0, $zero, $zero
/* 29A00 80028E00 10000002 */  b          .L80028E0C
/* 29A04 80028E04 24020001 */   addiu     $v0, $zero, 1
.L80028E08:
/* 29A08 80028E08 00001025 */  or         $v0, $zero, $zero
.L80028E0C:
/* 29A0C 80028E0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 29A10 80028E10 27BD0018 */  addiu      $sp, $sp, 0x18
/* 29A14 80028E14 03E00008 */  jr         $ra
/* 29A18 80028E18 00000000 */   nop
