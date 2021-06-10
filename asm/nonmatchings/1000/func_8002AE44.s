glabel func_8002AE44
/* 2BA44 8002AE44 00047400 */  sll        $t6, $a0, 0x10
/* 2BA48 8002AE48 0005C400 */  sll        $t8, $a1, 0x10
/* 2BA4C 8002AE4C 0018CC03 */  sra        $t9, $t8, 0x10
/* 2BA50 8002AE50 000E7C03 */  sra        $t7, $t6, 0x10
/* 2BA54 8002AE54 AFA40000 */  sw         $a0, ($sp)
/* 2BA58 8002AE58 AFA50004 */  sw         $a1, 4($sp)
/* 2BA5C 8002AE5C 03202825 */  or         $a1, $t9, $zero
/* 2BA60 8002AE60 0721000A */  bgez       $t9, .L8002AE8C
/* 2BA64 8002AE64 01E02025 */   or        $a0, $t7, $zero
/* 2BA68 8002AE68 00194023 */  negu       $t0, $t9
/* 2BA6C 8002AE6C 010F082A */  slt        $at, $t0, $t7
/* 2BA70 8002AE70 14200003 */  bnez       $at, .L8002AE80
/* 2BA74 8002AE74 00851021 */   addu      $v0, $a0, $a1
/* 2BA78 8002AE78 03E00008 */  jr         $ra
/* 2BA7C 8002AE7C 00001025 */   or        $v0, $zero, $zero
.L8002AE80:
/* 2BA80 8002AE80 3049FFFF */  andi       $t1, $v0, 0xffff
/* 2BA84 8002AE84 03E00008 */  jr         $ra
/* 2BA88 8002AE88 01201025 */   or        $v0, $t1, $zero
.L8002AE8C:
/* 2BA8C 8002AE8C 00852021 */  addu       $a0, $a0, $a1
/* 2BA90 8002AE90 00045400 */  sll        $t2, $a0, 0x10
/* 2BA94 8002AE94 000A2403 */  sra        $a0, $t2, 0x10
/* 2BA98 8002AE98 28810100 */  slti       $at, $a0, 0x100
/* 2BA9C 8002AE9C 14200003 */  bnez       $at, .L8002AEAC
/* 2BAA0 8002AEA0 3082FFFF */   andi      $v0, $a0, 0xffff
/* 2BAA4 8002AEA4 03E00008 */  jr         $ra
/* 2BAA8 8002AEA8 240200FF */   addiu     $v0, $zero, 0xff
.L8002AEAC:
/* 2BAAC 8002AEAC 03E00008 */  jr         $ra
/* 2BAB0 8002AEB0 00000000 */   nop
