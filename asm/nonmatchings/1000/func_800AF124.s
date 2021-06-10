glabel func_800AF124
/* AFD24 800AF124 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AFD28 800AF128 AFBF0014 */  sw         $ra, 0x14($sp)
/* AFD2C 800AF12C AFA40018 */  sw         $a0, 0x18($sp)
/* AFD30 800AF130 AFA5001C */  sw         $a1, 0x1c($sp)
/* AFD34 800AF134 AFA60020 */  sw         $a2, 0x20($sp)
/* AFD38 800AF138 3C05800B */  lui        $a1, %hi(func_800AF2E0)
/* AFD3C 800AF13C 3C06800B */  lui        $a2, %hi(func_800AF490)
/* AFD40 800AF140 24C6F490 */  addiu      $a2, $a2, %lo(func_800AF490)
/* AFD44 800AF144 24A5F2E0 */  addiu      $a1, $a1, %lo(func_800AF2E0)
/* AFD48 800AF148 8FA40018 */  lw         $a0, 0x18($sp)
/* AFD4C 800AF14C 0C02DF34 */  jal        func_800B7CD0
/* AFD50 800AF150 24070007 */   addiu     $a3, $zero, 7
/* AFD54 800AF154 8FAE0018 */  lw         $t6, 0x18($sp)
/* AFD58 800AF158 ADC00014 */  sw         $zero, 0x14($t6)
/* AFD5C 800AF15C 8FAF0020 */  lw         $t7, 0x20($sp)
/* AFD60 800AF160 8FB80018 */  lw         $t8, 0x18($sp)
/* AFD64 800AF164 AF0F0018 */  sw         $t7, 0x18($t8)
/* AFD68 800AF168 8FB9001C */  lw         $t9, 0x1c($sp)
/* AFD6C 800AF16C 8FA80018 */  lw         $t0, 0x18($sp)
/* AFD70 800AF170 AD19001C */  sw         $t9, 0x1c($t0)
/* AFD74 800AF174 10000001 */  b          .L800AF17C
/* AFD78 800AF178 00000000 */   nop
.L800AF17C:
/* AFD7C 800AF17C 8FBF0014 */  lw         $ra, 0x14($sp)
/* AFD80 800AF180 27BD0018 */  addiu      $sp, $sp, 0x18
/* AFD84 800AF184 03E00008 */  jr         $ra
/* AFD88 800AF188 00000000 */   nop
