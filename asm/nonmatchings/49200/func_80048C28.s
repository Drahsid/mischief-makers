glabel func_80048C28
/* 49828 80048C28 10800008 */  beqz       $a0, .L80048C4C
/* 4982C 80048C2C 3C0E8013 */   lui       $t6, %hi(D_801373D8)
/* 49830 80048C30 95CE73D8 */  lhu        $t6, %lo(D_801373D8)($t6)
/* 49834 80048C34 00000000 */  nop
/* 49838 80048C38 31CF0033 */  andi       $t7, $t6, 0x33
/* 4983C 80048C3C 15E00003 */  bnez       $t7, .L80048C4C
/* 49840 80048C40 00000000 */   nop
/* 49844 80048C44 03E00008 */  jr         $ra
/* 49848 80048C48 240200FF */   addiu     $v0, $zero, 0xff
.L80048C4C:
/* 4984C 80048C4C 3C028013 */  lui        $v0, %hi(D_801373D8)
/* 49850 80048C50 944273D8 */  lhu        $v0, %lo(D_801373D8)($v0)
/* 49854 80048C54 24030004 */  addiu      $v1, $zero, 4
/* 49858 80048C58 30580010 */  andi       $t8, $v0, 0x10
/* 4985C 80048C5C 13000005 */  beqz       $t8, .L80048C74
/* 49860 80048C60 30480020 */   andi      $t0, $v0, 0x20
/* 49864 80048C64 30590003 */  andi       $t9, $v0, 3
/* 49868 80048C68 13200002 */  beqz       $t9, .L80048C74
/* 4986C 80048C6C 24030008 */   addiu     $v1, $zero, 8
/* 49870 80048C70 24030006 */  addiu      $v1, $zero, 6
.L80048C74:
/* 49874 80048C74 11000004 */  beqz       $t0, .L80048C88
/* 49878 80048C78 30490003 */   andi      $t1, $v0, 3
/* 4987C 80048C7C 11200002 */  beqz       $t1, .L80048C88
/* 49880 80048C80 00001825 */   or        $v1, $zero, $zero
/* 49884 80048C84 24030002 */  addiu      $v1, $zero, 2
.L80048C88:
/* 49888 80048C88 00601025 */  or         $v0, $v1, $zero
/* 4988C 80048C8C 03E00008 */  jr         $ra
/* 49890 80048C90 00000000 */   nop
