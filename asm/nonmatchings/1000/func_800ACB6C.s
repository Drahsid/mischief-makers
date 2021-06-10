glabel func_800ACB6C
/* AD76C 800ACB6C 27BDFFF8 */  addiu      $sp, $sp, -8
/* AD770 800ACB70 30A500FF */  andi       $a1, $a1, 0xff
/* AD774 800ACB74 30C600FF */  andi       $a2, $a2, 0xff
/* AD778 800ACB78 30E700FF */  andi       $a3, $a3, 0xff
/* AD77C 800ACB7C 8C8E006C */  lw         $t6, 0x6c($a0)
/* AD780 800ACB80 AFAE0004 */  sw         $t6, 4($sp)
/* AD784 800ACB84 8FAF0004 */  lw         $t7, 4($sp)
/* AD788 800ACB88 11E00019 */  beqz       $t7, .L800ACBF0
/* AD78C 800ACB8C 00000000 */   nop
/* AD790 800ACB90 8FB80004 */  lw         $t8, 4($sp)
/* AD794 800ACB94 8F190000 */  lw         $t9, ($t8)
/* AD798 800ACB98 AC99006C */  sw         $t9, 0x6c($a0)
/* AD79C 800ACB9C 8FA80004 */  lw         $t0, 4($sp)
/* AD7A0 800ACBA0 AD000000 */  sw         $zero, ($t0)
/* AD7A4 800ACBA4 8C890064 */  lw         $t1, 0x64($a0)
/* AD7A8 800ACBA8 15200004 */  bnez       $t1, .L800ACBBC
/* AD7AC 800ACBAC 00000000 */   nop
/* AD7B0 800ACBB0 8FAA0004 */  lw         $t2, 4($sp)
/* AD7B4 800ACBB4 10000004 */  b          .L800ACBC8
/* AD7B8 800ACBB8 AC8A0064 */   sw        $t2, 0x64($a0)
.L800ACBBC:
/* AD7BC 800ACBBC 8FAB0004 */  lw         $t3, 4($sp)
/* AD7C0 800ACBC0 8C8C0068 */  lw         $t4, 0x68($a0)
/* AD7C4 800ACBC4 AD8B0000 */  sw         $t3, ($t4)
.L800ACBC8:
/* AD7C8 800ACBC8 8FAD0004 */  lw         $t5, 4($sp)
/* AD7CC 800ACBCC AC8D0068 */  sw         $t5, 0x68($a0)
/* AD7D0 800ACBD0 8FAE0004 */  lw         $t6, 4($sp)
/* AD7D4 800ACBD4 A1C70031 */  sb         $a3, 0x31($t6)
/* AD7D8 800ACBD8 8FAF0004 */  lw         $t7, 4($sp)
/* AD7DC 800ACBDC A1E50032 */  sb         $a1, 0x32($t7)
/* AD7E0 800ACBE0 8FB80004 */  lw         $t8, 4($sp)
/* AD7E4 800ACBE4 A3060033 */  sb         $a2, 0x33($t8)
/* AD7E8 800ACBE8 8FB90004 */  lw         $t9, 4($sp)
/* AD7EC 800ACBEC AF390014 */  sw         $t9, 0x14($t9)
.L800ACBF0:
/* AD7F0 800ACBF0 10000003 */  b          .L800ACC00
/* AD7F4 800ACBF4 8FA20004 */   lw        $v0, 4($sp)
/* AD7F8 800ACBF8 10000001 */  b          .L800ACC00
/* AD7FC 800ACBFC 00000000 */   nop
.L800ACC00:
/* AD800 800ACC00 03E00008 */  jr         $ra
/* AD804 800ACC04 27BD0008 */   addiu     $sp, $sp, 8
