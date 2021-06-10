glabel func_800A9060
/* A9C60 800A9060 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A9C64 800A9064 AFBF0014 */  sw         $ra, 0x14($sp)
/* A9C68 800A9068 AFA40018 */  sw         $a0, 0x18($sp)
/* A9C6C 800A906C AFA5001C */  sw         $a1, 0x1c($sp)
/* A9C70 800A9070 8FAE0018 */  lw         $t6, 0x18($sp)
/* A9C74 800A9074 31CF0003 */  andi       $t7, $t6, 3
/* A9C78 800A9078 15E00003 */  bnez       $t7, .L800A9088
/* A9C7C 800A907C 00000000 */   nop
/* A9C80 800A9080 10000007 */  b          .L800A90A0
/* A9C84 800A9084 00000000 */   nop
.L800A9088:
/* A9C88 800A9088 3C04800F */  lui        $a0, %hi(D_800EDBF0)
/* A9C8C 800A908C 3C05800F */  lui        $a1, %hi(D_800EDC08)
/* A9C90 800A9090 24A5DC08 */  addiu      $a1, $a1, %lo(D_800EDC08)
/* A9C94 800A9094 2484DBF0 */  addiu      $a0, $a0, %lo(D_800EDBF0)
/* A9C98 800A9098 0C026E74 */  jal        func_8009B9D0
/* A9C9C 800A909C 24060033 */   addiu     $a2, $zero, 0x33
.L800A90A0:
/* A9CA0 800A90A0 8FB8001C */  lw         $t8, 0x1c($sp)
/* A9CA4 800A90A4 13000003 */  beqz       $t8, .L800A90B4
/* A9CA8 800A90A8 00000000 */   nop
/* A9CAC 800A90AC 10000007 */  b          .L800A90CC
/* A9CB0 800A90B0 00000000 */   nop
.L800A90B4:
/* A9CB4 800A90B4 3C04800F */  lui        $a0, %hi(D_800EDC1C)
/* A9CB8 800A90B8 3C05800F */  lui        $a1, %hi(D_800EDC2C)
/* A9CBC 800A90BC 24A5DC2C */  addiu      $a1, $a1, %lo(D_800EDC2C)
/* A9CC0 800A90C0 2484DC1C */  addiu      $a0, $a0, %lo(D_800EDC1C)
/* A9CC4 800A90C4 0C026E74 */  jal        func_8009B9D0
/* A9CC8 800A90C8 24060034 */   addiu     $a2, $zero, 0x34
.L800A90CC:
/* A9CCC 800A90CC 0C02ABC0 */  jal        func_800AAF00
/* A9CD0 800A90D0 00000000 */   nop
/* A9CD4 800A90D4 10400003 */  beqz       $v0, .L800A90E4
/* A9CD8 800A90D8 00000000 */   nop
/* A9CDC 800A90DC 1000000B */  b          .L800A910C
/* A9CE0 800A90E0 2402FFFF */   addiu     $v0, $zero, -1
.L800A90E4:
/* A9CE4 800A90E4 8FB90018 */  lw         $t9, 0x18($sp)
/* A9CE8 800A90E8 3C01A000 */  lui        $at, 0xa000
/* A9CEC 800A90EC 8FAA001C */  lw         $t2, 0x1c($sp)
/* A9CF0 800A90F0 03214025 */  or         $t0, $t9, $at
/* A9CF4 800A90F4 8D090000 */  lw         $t1, ($t0)
/* A9CF8 800A90F8 AD490000 */  sw         $t1, ($t2)
/* A9CFC 800A90FC 10000003 */  b          .L800A910C
/* A9D00 800A9100 00001025 */   or        $v0, $zero, $zero
/* A9D04 800A9104 10000001 */  b          .L800A910C
/* A9D08 800A9108 00000000 */   nop
.L800A910C:
/* A9D0C 800A910C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A9D10 800A9110 27BD0018 */  addiu      $sp, $sp, 0x18
/* A9D14 800A9114 03E00008 */  jr         $ra
/* A9D18 800A9118 00000000 */   nop
/* A9D1C 800A911C 00000000 */  nop
