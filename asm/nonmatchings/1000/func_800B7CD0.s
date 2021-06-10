glabel func_800B7CD0
/* B88D0 800B7CD0 AC800000 */  sw         $zero, ($a0)
/* B88D4 800B7CD4 AC850004 */  sw         $a1, 4($a0)
/* B88D8 800B7CD8 AC860008 */  sw         $a2, 8($a0)
/* B88DC 800B7CDC A480000C */  sh         $zero, 0xc($a0)
/* B88E0 800B7CE0 A480000E */  sh         $zero, 0xe($a0)
/* B88E4 800B7CE4 AC870010 */  sw         $a3, 0x10($a0)
/* B88E8 800B7CE8 03E00008 */  jr         $ra
/* B88EC 800B7CEC 00000000 */   nop
