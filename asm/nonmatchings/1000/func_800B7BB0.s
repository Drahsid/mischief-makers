glabel func_800B7BB0
/* B87B0 800B7BB0 27BDFFF8 */  addiu      $sp, $sp, -8
/* B87B4 800B7BB4 8C8E0008 */  lw         $t6, 8($a0)
/* B87B8 800B7BB8 91CF0000 */  lbu        $t7, ($t6)
/* B87BC 800B7BBC AFAF0000 */  sw         $t7, ($sp)
/* B87C0 800B7BC0 8C980008 */  lw         $t8, 8($a0)
/* B87C4 800B7BC4 27190001 */  addiu      $t9, $t8, 1
/* B87C8 800B7BC8 AC990008 */  sw         $t9, 8($a0)
/* B87CC 800B7BCC 8FA80000 */  lw         $t0, ($sp)
/* B87D0 800B7BD0 AFA80004 */  sw         $t0, 4($sp)
/* B87D4 800B7BD4 8FA90000 */  lw         $t1, ($sp)
/* B87D8 800B7BD8 312A0080 */  andi       $t2, $t1, 0x80
/* B87DC 800B7BDC 11400014 */  beqz       $t2, .L800B7C30
/* B87E0 800B7BE0 00000000 */   nop
/* B87E4 800B7BE4 8FAB0004 */  lw         $t3, 4($sp)
/* B87E8 800B7BE8 316C007F */  andi       $t4, $t3, 0x7f
/* B87EC 800B7BEC AFAC0004 */  sw         $t4, 4($sp)
.L800B7BF0:
/* B87F0 800B7BF0 8C8D0008 */  lw         $t5, 8($a0)
/* B87F4 800B7BF4 91AE0000 */  lbu        $t6, ($t5)
/* B87F8 800B7BF8 AFAE0000 */  sw         $t6, ($sp)
/* B87FC 800B7BFC 8C8F0008 */  lw         $t7, 8($a0)
/* B8800 800B7C00 25F80001 */  addiu      $t8, $t7, 1
/* B8804 800B7C04 AC980008 */  sw         $t8, 8($a0)
/* B8808 800B7C08 8FB90004 */  lw         $t9, 4($sp)
/* B880C 800B7C0C 8FA90000 */  lw         $t1, ($sp)
/* B8810 800B7C10 001941C0 */  sll        $t0, $t9, 7
/* B8814 800B7C14 312A007F */  andi       $t2, $t1, 0x7f
/* B8818 800B7C18 010A5821 */  addu       $t3, $t0, $t2
/* B881C 800B7C1C AFAB0004 */  sw         $t3, 4($sp)
/* B8820 800B7C20 8FAC0000 */  lw         $t4, ($sp)
/* B8824 800B7C24 318D0080 */  andi       $t5, $t4, 0x80
/* B8828 800B7C28 15A0FFF1 */  bnez       $t5, .L800B7BF0
/* B882C 800B7C2C 00000000 */   nop
.L800B7C30:
/* B8830 800B7C30 10000003 */  b          .L800B7C40
/* B8834 800B7C34 8FA20004 */   lw        $v0, 4($sp)
/* B8838 800B7C38 10000001 */  b          .L800B7C40
/* B883C 800B7C3C 00000000 */   nop
.L800B7C40:
/* B8840 800B7C40 03E00008 */  jr         $ra
/* B8844 800B7C44 27BD0008 */   addiu     $sp, $sp, 8
/* B8848 800B7C48 00000000 */  nop
/* B884C 800B7C4C 00000000 */  nop
