glabel func_80016CB4
/* 178B4 80016CB4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 178B8 80016CB8 3C0E8013 */  lui        $t6, %hi(D_80137458)
/* 178BC 80016CBC 8DCE7458 */  lw         $t6, %lo(D_80137458)($t6)
/* 178C0 80016CC0 AFBF002C */  sw         $ra, 0x2c($sp)
/* 178C4 80016CC4 31CF0010 */  andi       $t7, $t6, 0x10
/* 178C8 80016CC8 AFB40028 */  sw         $s4, 0x28($sp)
/* 178CC 80016CCC AFB30024 */  sw         $s3, 0x24($sp)
/* 178D0 80016CD0 AFB20020 */  sw         $s2, 0x20($sp)
/* 178D4 80016CD4 AFB1001C */  sw         $s1, 0x1c($sp)
/* 178D8 80016CD8 15E00026 */  bnez       $t7, .L80016D74
/* 178DC 80016CDC AFB00018 */   sw        $s0, 0x18($sp)
/* 178E0 80016CE0 3C14800F */  lui        $s4, %hi(gActors)
/* 178E4 80016CE4 3C13FFF7 */  lui        $s3, 0xfff7
/* 178E8 80016CE8 3673FFFF */  ori        $s3, $s3, 0xffff
/* 178EC 80016CEC 2694F510 */  addiu      $s4, $s4, %lo(gActors)
/* 178F0 80016CF0 00008825 */  or         $s1, $zero, $zero
/* 178F4 80016CF4 24120198 */  addiu      $s2, $zero, 0x198
.L80016CF8:
/* 178F8 80016CF8 02320019 */  multu      $s1, $s2
/* 178FC 80016CFC 0000C012 */  mflo       $t8
/* 17900 80016D00 02988021 */  addu       $s0, $s4, $t8
/* 17904 80016D04 8E190080 */  lw         $t9, 0x80($s0)
/* 17908 80016D08 00000000 */  nop
/* 1790C 80016D0C 33280002 */  andi       $t0, $t9, 2
/* 17910 80016D10 11000007 */  beqz       $t0, .L80016D30
/* 17914 80016D14 00000000 */   nop
/* 17918 80016D18 0C00583B */  jal        func_800160EC
/* 1791C 80016D1C 3224FFFF */   andi      $a0, $s1, 0xffff
/* 17920 80016D20 8E090098 */  lw         $t1, 0x98($s0)
/* 17924 80016D24 00000000 */  nop
/* 17928 80016D28 01335024 */  and        $t2, $t1, $s3
/* 1792C 80016D2C AE0A0098 */  sw         $t2, 0x98($s0)
.L80016D30:
/* 17930 80016D30 26310001 */  addiu      $s1, $s1, 1
/* 17934 80016D34 322BFFFF */  andi       $t3, $s1, 0xffff
/* 17938 80016D38 296100C0 */  slti       $at, $t3, 0xc0
/* 1793C 80016D3C 1420FFEE */  bnez       $at, .L80016CF8
/* 17940 80016D40 01608825 */   or        $s1, $t3, $zero
/* 17944 80016D44 3C0D800C */  lui        $t5, %hi(D_800BE558)
/* 17948 80016D48 8DADE558 */  lw         $t5, %lo(D_800BE558)($t5)
/* 1794C 80016D4C 8E8C0088 */  lw         $t4, 0x88($s4)
/* 17950 80016D50 3C01800C */  lui        $at, %hi(gPlayerPosXMirror)
/* 17954 80016D54 018D7021 */  addu       $t6, $t4, $t5
/* 17958 80016D58 AC2EE5D8 */  sw         $t6, %lo(gPlayerPosXMirror)($at)
/* 1795C 80016D5C 3C18800C */  lui        $t8, %hi(D_800BE55C)
/* 17960 80016D60 8F18E55C */  lw         $t8, %lo(D_800BE55C)($t8)
/* 17964 80016D64 8E8F008C */  lw         $t7, 0x8c($s4)
/* 17968 80016D68 3C01800C */  lui        $at, %hi(gPlayerPosYMirror)
/* 1796C 80016D6C 01F8C821 */  addu       $t9, $t7, $t8
/* 17970 80016D70 AC39E5DC */  sw         $t9, %lo(gPlayerPosYMirror)($at)
.L80016D74:
/* 17974 80016D74 8FBF002C */  lw         $ra, 0x2c($sp)
/* 17978 80016D78 8FB00018 */  lw         $s0, 0x18($sp)
/* 1797C 80016D7C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 17980 80016D80 8FB20020 */  lw         $s2, 0x20($sp)
/* 17984 80016D84 8FB30024 */  lw         $s3, 0x24($sp)
/* 17988 80016D88 8FB40028 */  lw         $s4, 0x28($sp)
/* 1798C 80016D8C 03E00008 */  jr         $ra
/* 17990 80016D90 27BD0030 */   addiu     $sp, $sp, 0x30
