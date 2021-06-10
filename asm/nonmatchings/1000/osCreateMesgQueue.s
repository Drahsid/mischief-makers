glabel osCreateMesgQueue
/* 9B250 8009A650 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9B254 8009A654 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9B258 8009A658 AFA40018 */  sw         $a0, 0x18($sp)
/* 9B25C 8009A65C AFA5001C */  sw         $a1, 0x1c($sp)
/* 9B260 8009A660 AFA60020 */  sw         $a2, 0x20($sp)
/* 9B264 8009A664 8FAE0020 */  lw         $t6, 0x20($sp)
/* 9B268 8009A668 1DC00007 */  bgtz       $t6, .L8009A688
/* 9B26C 8009A66C 00000000 */   nop
/* 9B270 8009A670 24040005 */  addiu      $a0, $zero, 5
/* 9B274 8009A674 24050001 */  addiu      $a1, $zero, 1
/* 9B278 8009A678 0C0297B4 */  jal        func_800A5ED0
/* 9B27C 8009A67C 8FA60020 */   lw        $a2, 0x20($sp)
/* 9B280 8009A680 10000015 */  b          .L8009A6D8
/* 9B284 8009A684 00000000 */   nop
.L8009A688:
/* 9B288 8009A688 8FB80018 */  lw         $t8, 0x18($sp)
/* 9B28C 8009A68C 3C0F800F */  lui        $t7, %hi(D_800EA600)
/* 9B290 8009A690 25EFA600 */  addiu      $t7, $t7, %lo(D_800EA600)
/* 9B294 8009A694 AF0F0000 */  sw         $t7, ($t8)
/* 9B298 8009A698 8FA80018 */  lw         $t0, 0x18($sp)
/* 9B29C 8009A69C 3C19800F */  lui        $t9, %hi(D_800EA600)
/* 9B2A0 8009A6A0 2739A600 */  addiu      $t9, $t9, %lo(D_800EA600)
/* 9B2A4 8009A6A4 AD190004 */  sw         $t9, 4($t0)
/* 9B2A8 8009A6A8 8FA90018 */  lw         $t1, 0x18($sp)
/* 9B2AC 8009A6AC AD200008 */  sw         $zero, 8($t1)
/* 9B2B0 8009A6B0 8FAA0018 */  lw         $t2, 0x18($sp)
/* 9B2B4 8009A6B4 AD40000C */  sw         $zero, 0xc($t2)
/* 9B2B8 8009A6B8 8FAB0020 */  lw         $t3, 0x20($sp)
/* 9B2BC 8009A6BC 8FAC0018 */  lw         $t4, 0x18($sp)
/* 9B2C0 8009A6C0 AD8B0010 */  sw         $t3, 0x10($t4)
/* 9B2C4 8009A6C4 8FAD001C */  lw         $t5, 0x1c($sp)
/* 9B2C8 8009A6C8 8FAE0018 */  lw         $t6, 0x18($sp)
/* 9B2CC 8009A6CC ADCD0014 */  sw         $t5, 0x14($t6)
/* 9B2D0 8009A6D0 10000001 */  b          .L8009A6D8
/* 9B2D4 8009A6D4 00000000 */   nop
.L8009A6D8:
/* 9B2D8 8009A6D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9B2DC 8009A6DC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 9B2E0 8009A6E0 03E00008 */  jr         $ra
/* 9B2E4 8009A6E4 00000000 */   nop
/* 9B2E8 8009A6E8 00000000 */  nop
/* 9B2EC 8009A6EC 00000000 */  nop
