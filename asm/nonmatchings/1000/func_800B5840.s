glabel func_800B5840
/* B6440 800B5840 AFA40000 */  sw         $a0, ($sp)
/* B6444 800B5844 10000003 */  b          .L800B5854
/* B6448 800B5848 2402FFFF */   addiu     $v0, $zero, -1
/* B644C 800B584C 10000001 */  b          .L800B5854
/* B6450 800B5850 00000000 */   nop
.L800B5854:
/* B6454 800B5854 03E00008 */  jr         $ra
/* B6458 800B5858 00000000 */   nop
