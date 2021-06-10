glabel func_800B1F70
/* B2B70 800B1F70 27BDFFF8 */  addiu      $sp, $sp, -8
/* B2B74 800B1F74 AFA40004 */  sw         $a0, 4($sp)
/* B2B78 800B1F78 8FAE0004 */  lw         $t6, 4($sp)
/* B2B7C 800B1F7C 8DCF001C */  lw         $t7, 0x1c($t6)
/* B2B80 800B1F80 AFAF0000 */  sw         $t7, ($sp)
/* B2B84 800B1F84 24010002 */  addiu      $at, $zero, 2
/* B2B88 800B1F88 14A1000F */  bne        $a1, $at, .L800B1FC8
/* B2B8C 800B1F8C 00000000 */   nop
/* B2B90 800B1F90 10000001 */  b          .L800B1F98
/* B2B94 800B1F94 00000000 */   nop
.L800B1F98:
/* B2B98 800B1F98 8FB90004 */  lw         $t9, 4($sp)
/* B2B9C 800B1F9C 8FB80000 */  lw         $t8, ($sp)
/* B2BA0 800B1FA0 8F280014 */  lw         $t0, 0x14($t9)
/* B2BA4 800B1FA4 00084880 */  sll        $t1, $t0, 2
/* B2BA8 800B1FA8 03095021 */  addu       $t2, $t8, $t1
/* B2BAC 800B1FAC AD460000 */  sw         $a2, ($t2)
/* B2BB0 800B1FB0 8FAB0004 */  lw         $t3, 4($sp)
/* B2BB4 800B1FB4 8D6C0014 */  lw         $t4, 0x14($t3)
/* B2BB8 800B1FB8 258D0001 */  addiu      $t5, $t4, 1
/* B2BBC 800B1FBC AD6D0014 */  sw         $t5, 0x14($t3)
/* B2BC0 800B1FC0 10000003 */  b          .L800B1FD0
/* B2BC4 800B1FC4 00000000 */   nop
.L800B1FC8:
/* B2BC8 800B1FC8 10000001 */  b          .L800B1FD0
/* B2BCC 800B1FCC 00000000 */   nop
.L800B1FD0:
/* B2BD0 800B1FD0 10000003 */  b          .L800B1FE0
/* B2BD4 800B1FD4 00001025 */   or        $v0, $zero, $zero
/* B2BD8 800B1FD8 10000001 */  b          .L800B1FE0
/* B2BDC 800B1FDC 00000000 */   nop
.L800B1FE0:
/* B2BE0 800B1FE0 03E00008 */  jr         $ra
/* B2BE4 800B1FE4 27BD0008 */   addiu     $sp, $sp, 8
/* B2BE8 800B1FE8 00000000 */  nop
/* B2BEC 800B1FEC 00000000 */  nop
