glabel func_8009E108
/* 9ED08 8009E108 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9ED0C 8009E10C AFBF0014 */  sw         $ra, 0x14($sp)
/* 9ED10 8009E110 AFA40028 */  sw         $a0, 0x28($sp)
/* 9ED14 8009E114 AFA5002C */  sw         $a1, 0x2c($sp)
/* 9ED18 8009E118 0C02B9A8 */  jal        func_800AE6A0
/* 9ED1C 8009E11C 24040001 */   addiu     $a0, $zero, 1
/* 9ED20 8009E120 AFA20024 */  sw         $v0, 0x24($sp)
/* 9ED24 8009E124 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9ED28 8009E128 00000000 */  nop
/* 9ED2C 8009E12C 25CF0008 */  addiu      $t7, $t6, 8
/* 9ED30 8009E130 11E00036 */  beqz       $t7, .L8009E20C
/* 9ED34 8009E134 AFAF0020 */   sw        $t7, 0x20($sp)
.L8009E138:
/* 9ED38 8009E138 8FB80020 */  lw         $t8, 0x20($sp)
/* 9ED3C 8009E13C 00000000 */  nop
/* 9ED40 8009E140 8F190000 */  lw         $t9, ($t8)
/* 9ED44 8009E144 00000000 */  nop
/* 9ED48 8009E148 17200009 */  bnez       $t9, .L8009E170
/* 9ED4C 8009E14C 00000000 */   nop
/* 9ED50 8009E150 8FA4002C */  lw         $a0, 0x2c($sp)
/* 9ED54 8009E154 8FA50020 */  lw         $a1, 0x20($sp)
/* 9ED58 8009E158 0C026EAE */  jal        func_8009BAB8
/* 9ED5C 8009E15C 00000000 */   nop
/* 9ED60 8009E160 1000002A */  b          .L8009E20C
/* 9ED64 8009E164 00000000 */   nop
/* 9ED68 8009E168 10000022 */  b          .L8009E1F4
/* 9ED6C 8009E16C 00000000 */   nop
.L8009E170:
/* 9ED70 8009E170 8FA80020 */  lw         $t0, 0x20($sp)
/* 9ED74 8009E174 00000000 */  nop
/* 9ED78 8009E178 8D090000 */  lw         $t1, ($t0)
/* 9ED7C 8009E17C 00000000 */  nop
/* 9ED80 8009E180 AFA9001C */  sw         $t1, 0x1c($sp)
/* 9ED84 8009E184 8FAA002C */  lw         $t2, 0x2c($sp)
/* 9ED88 8009E188 8FAC001C */  lw         $t4, 0x1c($sp)
/* 9ED8C 8009E18C 8D4B0008 */  lw         $t3, 8($t2)
/* 9ED90 8009E190 8D8D0008 */  lw         $t5, 8($t4)
/* 9ED94 8009E194 00000000 */  nop
/* 9ED98 8009E198 016D082A */  slt        $at, $t3, $t5
/* 9ED9C 8009E19C 1020000E */  beqz       $at, .L8009E1D8
/* 9EDA0 8009E1A0 00000000 */   nop
/* 9EDA4 8009E1A4 8FAE001C */  lw         $t6, 0x1c($sp)
/* 9EDA8 8009E1A8 8FB8002C */  lw         $t8, 0x2c($sp)
/* 9EDAC 8009E1AC 8DCF0008 */  lw         $t7, 8($t6)
/* 9EDB0 8009E1B0 8F190008 */  lw         $t9, 8($t8)
/* 9EDB4 8009E1B4 00000000 */  nop
/* 9EDB8 8009E1B8 01F94023 */  subu       $t0, $t7, $t9
/* 9EDBC 8009E1BC ADC80008 */  sw         $t0, 8($t6)
/* 9EDC0 8009E1C0 8FA4002C */  lw         $a0, 0x2c($sp)
/* 9EDC4 8009E1C4 8FA50020 */  lw         $a1, 0x20($sp)
/* 9EDC8 8009E1C8 0C026EAE */  jal        func_8009BAB8
/* 9EDCC 8009E1CC 00000000 */   nop
/* 9EDD0 8009E1D0 1000000E */  b          .L8009E20C
/* 9EDD4 8009E1D4 00000000 */   nop
.L8009E1D8:
/* 9EDD8 8009E1D8 8FA9002C */  lw         $t1, 0x2c($sp)
/* 9EDDC 8009E1DC 8FAC001C */  lw         $t4, 0x1c($sp)
/* 9EDE0 8009E1E0 8D2A0008 */  lw         $t2, 8($t1)
/* 9EDE4 8009E1E4 8D8B0008 */  lw         $t3, 8($t4)
/* 9EDE8 8009E1E8 00000000 */  nop
/* 9EDEC 8009E1EC 014B6823 */  subu       $t5, $t2, $t3
/* 9EDF0 8009E1F0 AD2D0008 */  sw         $t5, 8($t1)
.L8009E1F4:
/* 9EDF4 8009E1F4 8FB80020 */  lw         $t8, 0x20($sp)
/* 9EDF8 8009E1F8 00000000 */  nop
/* 9EDFC 8009E1FC 8F0F0000 */  lw         $t7, ($t8)
/* 9EE00 8009E200 00000000 */  nop
/* 9EE04 8009E204 15E0FFCC */  bnez       $t7, .L8009E138
/* 9EE08 8009E208 AFAF0020 */   sw        $t7, 0x20($sp)
.L8009E20C:
/* 9EE0C 8009E20C 8FA40024 */  lw         $a0, 0x24($sp)
/* 9EE10 8009E210 0C02B9A8 */  jal        func_800AE6A0
/* 9EE14 8009E214 00000000 */   nop
/* 9EE18 8009E218 10000001 */  b          .L8009E220
/* 9EE1C 8009E21C 00000000 */   nop
.L8009E220:
/* 9EE20 8009E220 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9EE24 8009E224 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9EE28 8009E228 03E00008 */  jr         $ra
/* 9EE2C 8009E22C 00000000 */   nop
