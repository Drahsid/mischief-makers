glabel func_800AF0BC
/* AFCBC 800AF0BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AFCC0 800AF0C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* AFCC4 800AF0C4 AFA40018 */  sw         $a0, 0x18($sp)
/* AFCC8 800AF0C8 AFA5001C */  sw         $a1, 0x1c($sp)
/* AFCCC 800AF0CC AFA60020 */  sw         $a2, 0x20($sp)
/* AFCD0 800AF0D0 3C05800B */  lui        $a1, %hi(func_800B1E50)
/* AFCD4 800AF0D4 3C06800B */  lui        $a2, %hi(func_800B1F70)
/* AFCD8 800AF0D8 24C61F70 */  addiu      $a2, $a2, %lo(func_800B1F70)
/* AFCDC 800AF0DC 24A51E50 */  addiu      $a1, $a1, %lo(func_800B1E50)
/* AFCE0 800AF0E0 8FA40018 */  lw         $a0, 0x18($sp)
/* AFCE4 800AF0E4 0C02DF34 */  jal        func_800B7CD0
/* AFCE8 800AF0E8 24070006 */   addiu     $a3, $zero, 6
/* AFCEC 800AF0EC 8FAE0018 */  lw         $t6, 0x18($sp)
/* AFCF0 800AF0F0 ADC00014 */  sw         $zero, 0x14($t6)
/* AFCF4 800AF0F4 8FAF0020 */  lw         $t7, 0x20($sp)
/* AFCF8 800AF0F8 8FB80018 */  lw         $t8, 0x18($sp)
/* AFCFC 800AF0FC AF0F0018 */  sw         $t7, 0x18($t8)
/* AFD00 800AF100 8FB9001C */  lw         $t9, 0x1c($sp)
/* AFD04 800AF104 8FA80018 */  lw         $t0, 0x18($sp)
/* AFD08 800AF108 AD19001C */  sw         $t9, 0x1c($t0)
/* AFD0C 800AF10C 10000001 */  b          .L800AF114
/* AFD10 800AF110 00000000 */   nop
.L800AF114:
/* AFD14 800AF114 8FBF0014 */  lw         $ra, 0x14($sp)
/* AFD18 800AF118 27BD0018 */  addiu      $sp, $sp, 0x18
/* AFD1C 800AF11C 03E00008 */  jr         $ra
/* AFD20 800AF120 00000000 */   nop
