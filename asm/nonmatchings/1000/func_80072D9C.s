glabel func_80072D9C
/* 7399C 80072D9C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 739A0 80072DA0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 739A4 80072DA4 AFA40018 */  sw         $a0, 0x18($sp)
/* 739A8 80072DA8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 739AC 80072DAC 0C01CB31 */  jal        func_80072CC4
/* 739B0 80072DB0 01C02025 */   or        $a0, $t6, $zero
/* 739B4 80072DB4 10400004 */  beqz       $v0, .L80072DC8
/* 739B8 80072DB8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 739BC 80072DBC 0C0177F2 */  jal        func_8005DFC8
/* 739C0 80072DC0 00002025 */   or        $a0, $zero, $zero
/* 739C4 80072DC4 8FBF0014 */  lw         $ra, 0x14($sp)
.L80072DC8:
/* 739C8 80072DC8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 739CC 80072DCC 03E00008 */  jr         $ra
/* 739D0 80072DD0 00000000 */   nop
