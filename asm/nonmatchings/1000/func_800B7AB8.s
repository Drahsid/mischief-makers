glabel func_800B7AB8
/* B86B8 800B7AB8 27BDFFF8 */  addiu      $sp, $sp, -8
/* B86BC 800B7ABC 8C8E0008 */  lw         $t6, 8($a0)
/* B86C0 800B7AC0 91CF0000 */  lbu        $t7, ($t6)
/* B86C4 800B7AC4 000FC200 */  sll        $t8, $t7, 8
/* B86C8 800B7AC8 A7B80006 */  sh         $t8, 6($sp)
/* B86CC 800B7ACC 8C990008 */  lw         $t9, 8($a0)
/* B86D0 800B7AD0 27280001 */  addiu      $t0, $t9, 1
/* B86D4 800B7AD4 AC880008 */  sw         $t0, 8($a0)
/* B86D8 800B7AD8 8C8A0008 */  lw         $t2, 8($a0)
/* B86DC 800B7ADC 87A90006 */  lh         $t1, 6($sp)
/* B86E0 800B7AE0 914B0000 */  lbu        $t3, ($t2)
/* B86E4 800B7AE4 012B6025 */  or         $t4, $t1, $t3
/* B86E8 800B7AE8 A7AC0006 */  sh         $t4, 6($sp)
/* B86EC 800B7AEC 8C8D0008 */  lw         $t5, 8($a0)
/* B86F0 800B7AF0 25AE0001 */  addiu      $t6, $t5, 1
/* B86F4 800B7AF4 AC8E0008 */  sw         $t6, 8($a0)
/* B86F8 800B7AF8 10000003 */  b          .L800B7B08
/* B86FC 800B7AFC 87A20006 */   lh        $v0, 6($sp)
/* B8700 800B7B00 10000001 */  b          .L800B7B08
/* B8704 800B7B04 00000000 */   nop
.L800B7B08:
/* B8708 800B7B08 03E00008 */  jr         $ra
/* B870C 800B7B0C 27BD0008 */   addiu     $sp, $sp, 8
