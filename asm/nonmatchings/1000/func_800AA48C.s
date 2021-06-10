glabel func_800AA48C
/* AB08C 800AA48C 240E0001 */  addiu      $t6, $zero, 1
/* AB090 800AA490 AC8E000C */  sw         $t6, 0xc($a0)
/* AB094 800AA494 240F0002 */  addiu      $t7, $zero, 2
/* AB098 800AA498 A48F0010 */  sh         $t7, 0x10($a0)
/* AB09C 800AA49C A4800012 */  sh         $zero, 0x12($a0)
/* AB0A0 800AA4A0 AC800030 */  sw         $zero, 0x30($a0)
/* AB0A4 800AA4A4 24180002 */  addiu      $t8, $zero, 2
/* AB0A8 800AA4A8 A4980024 */  sh         $t8, 0x24($a0)
/* AB0AC 800AA4AC 24190004 */  addiu      $t9, $zero, 4
/* AB0B0 800AA4B0 A4990026 */  sh         $t9, 0x26($a0)
/* AB0B4 800AA4B4 24080004 */  addiu      $t0, $zero, 4
/* AB0B8 800AA4B8 A0880004 */  sb         $t0, 4($a0)
/* AB0BC 800AA4BC A4800006 */  sh         $zero, 6($a0)
/* AB0C0 800AA4C0 2409004C */  addiu      $t1, $zero, 0x4c
/* AB0C4 800AA4C4 AC890000 */  sw         $t1, ($a0)
/* AB0C8 800AA4C8 03E00008 */  jr         $ra
/* AB0CC 800AA4CC 00000000 */   nop
