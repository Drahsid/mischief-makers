glabel func_800B4620
/* B5220 800B4620 27BDFFF8 */  addiu      $sp, $sp, -8
/* B5224 800B4624 93AE0004 */  lbu        $t6, 4($sp)
/* B5228 800B4628 31CFFF03 */  andi       $t7, $t6, 0xff03
/* B522C 800B462C 35F80030 */  ori        $t8, $t7, 0x30
/* B5230 800B4630 A3B80004 */  sb         $t8, 4($sp)
/* B5234 800B4634 93A90004 */  lbu        $t1, 4($sp)
/* B5238 800B4638 30B90003 */  andi       $t9, $a1, 3
/* B523C 800B463C 33280003 */  andi       $t0, $t9, 3
/* B5240 800B4640 312AFFFC */  andi       $t2, $t1, 0xfffc
/* B5244 800B4644 010A5825 */  or         $t3, $t0, $t2
/* B5248 800B4648 A3AB0004 */  sb         $t3, 4($sp)
/* B524C 800B464C 10A0000B */  beqz       $a1, .L800B467C
/* B5250 800B4650 AFA00000 */   sw        $zero, ($sp)
.L800B4654:
/* B5254 800B4654 8FAC0000 */  lw         $t4, ($sp)
/* B5258 800B4658 008C6821 */  addu       $t5, $a0, $t4
/* B525C 800B465C 91AE0000 */  lbu        $t6, ($t5)
/* B5260 800B4660 03AC7821 */  addu       $t7, $sp, $t4
/* B5264 800B4664 A1EE0005 */  sb         $t6, 5($t7)
/* B5268 800B4668 8FB80000 */  lw         $t8, ($sp)
/* B526C 800B466C 27190001 */  addiu      $t9, $t8, 1
/* B5270 800B4670 0325082B */  sltu       $at, $t9, $a1
/* B5274 800B4674 1420FFF7 */  bnez       $at, .L800B4654
/* B5278 800B4678 AFB90000 */   sw        $t9, ($sp)
.L800B467C:
/* B527C 800B467C 27A90004 */  addiu      $t1, $sp, 4
/* B5280 800B4680 8D280000 */  lw         $t0, ($t1)
/* B5284 800B4684 3C0AC000 */  lui        $t2, 0xc000
/* B5288 800B4688 AD480000 */  sw         $t0, ($t2)
/* B528C 800B468C 10000001 */  b          .L800B4694
/* B5290 800B4690 00000000 */   nop
.L800B4694:
/* B5294 800B4694 03E00008 */  jr         $ra
/* B5298 800B4698 27BD0008 */   addiu     $sp, $sp, 8
