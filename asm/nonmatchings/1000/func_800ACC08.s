glabel func_800ACC08
/* AD808 800ACC08 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AD80C 800ACC0C AFBF0014 */  sw         $ra, 0x14($sp)
/* AD810 800ACC10 AFA40020 */  sw         $a0, 0x20($sp)
/* AD814 800ACC14 AFA50024 */  sw         $a1, 0x24($sp)
/* AD818 800ACC18 AFA0001C */  sw         $zero, 0x1c($sp)
/* AD81C 800ACC1C 8FAE0020 */  lw         $t6, 0x20($sp)
/* AD820 800ACC20 8DCF0064 */  lw         $t7, 0x64($t6)
/* AD824 800ACC24 11E00029 */  beqz       $t7, .L800ACCCC
/* AD828 800ACC28 AFAF0018 */   sw        $t7, 0x18($sp)
.L800ACC2C:
/* AD82C 800ACC2C 8FB80018 */  lw         $t8, 0x18($sp)
/* AD830 800ACC30 8FA80024 */  lw         $t0, 0x24($sp)
/* AD834 800ACC34 27190004 */  addiu      $t9, $t8, 4
/* AD838 800ACC38 1728001E */  bne        $t9, $t0, .L800ACCB4
/* AD83C 800ACC3C 00000000 */   nop
/* AD840 800ACC40 8FA9001C */  lw         $t1, 0x1c($sp)
/* AD844 800ACC44 11200006 */  beqz       $t1, .L800ACC60
/* AD848 800ACC48 00000000 */   nop
/* AD84C 800ACC4C 8FAA0018 */  lw         $t2, 0x18($sp)
/* AD850 800ACC50 8FAC001C */  lw         $t4, 0x1c($sp)
/* AD854 800ACC54 8D4B0000 */  lw         $t3, ($t2)
/* AD858 800ACC58 10000005 */  b          .L800ACC70
/* AD85C 800ACC5C AD8B0000 */   sw        $t3, ($t4)
.L800ACC60:
/* AD860 800ACC60 8FAD0018 */  lw         $t5, 0x18($sp)
/* AD864 800ACC64 8FAF0020 */  lw         $t7, 0x20($sp)
/* AD868 800ACC68 8DAE0000 */  lw         $t6, ($t5)
/* AD86C 800ACC6C ADEE0064 */  sw         $t6, 0x64($t7)
.L800ACC70:
/* AD870 800ACC70 8FB80020 */  lw         $t8, 0x20($sp)
/* AD874 800ACC74 8FA80018 */  lw         $t0, 0x18($sp)
/* AD878 800ACC78 8F190068 */  lw         $t9, 0x68($t8)
/* AD87C 800ACC7C 17280004 */  bne        $t9, $t0, .L800ACC90
/* AD880 800ACC80 00000000 */   nop
/* AD884 800ACC84 8FA9001C */  lw         $t1, 0x1c($sp)
/* AD888 800ACC88 8FAA0020 */  lw         $t2, 0x20($sp)
/* AD88C 800ACC8C AD490068 */  sw         $t1, 0x68($t2)
.L800ACC90:
/* AD890 800ACC90 8FAB0020 */  lw         $t3, 0x20($sp)
/* AD894 800ACC94 8FAD0018 */  lw         $t5, 0x18($sp)
/* AD898 800ACC98 8D6C006C */  lw         $t4, 0x6c($t3)
/* AD89C 800ACC9C ADAC0000 */  sw         $t4, ($t5)
/* AD8A0 800ACCA0 8FAE0018 */  lw         $t6, 0x18($sp)
/* AD8A4 800ACCA4 8FAF0020 */  lw         $t7, 0x20($sp)
/* AD8A8 800ACCA8 ADEE006C */  sw         $t6, 0x6c($t7)
/* AD8AC 800ACCAC 1000000D */  b          .L800ACCE4
/* AD8B0 800ACCB0 00000000 */   nop
.L800ACCB4:
/* AD8B4 800ACCB4 8FB80018 */  lw         $t8, 0x18($sp)
/* AD8B8 800ACCB8 AFB8001C */  sw         $t8, 0x1c($sp)
/* AD8BC 800ACCBC 8FB90018 */  lw         $t9, 0x18($sp)
/* AD8C0 800ACCC0 8F280000 */  lw         $t0, ($t9)
/* AD8C4 800ACCC4 1500FFD9 */  bnez       $t0, .L800ACC2C
/* AD8C8 800ACCC8 AFA80018 */   sw        $t0, 0x18($sp)
.L800ACCCC:
/* AD8CC 800ACCCC 2404007B */  addiu      $a0, $zero, 0x7b
/* AD8D0 800ACCD0 24050001 */  addiu      $a1, $zero, 1
/* AD8D4 800ACCD4 0C0297B4 */  jal        func_800A5ED0
/* AD8D8 800ACCD8 8FA60024 */   lw        $a2, 0x24($sp)
/* AD8DC 800ACCDC 10000001 */  b          .L800ACCE4
/* AD8E0 800ACCE0 00000000 */   nop
.L800ACCE4:
/* AD8E4 800ACCE4 8FBF0014 */  lw         $ra, 0x14($sp)
/* AD8E8 800ACCE8 27BD0020 */  addiu      $sp, $sp, 0x20
/* AD8EC 800ACCEC 03E00008 */  jr         $ra
/* AD8F0 800ACCF0 00000000 */   nop
