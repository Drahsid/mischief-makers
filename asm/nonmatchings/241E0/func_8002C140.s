glabel func_8002C140
/* 2CD40 8002C140 3C06800D */  lui        $a2, %hi(D_800D2230)
/* 2CD44 8002C144 AFA40000 */  sw         $a0, ($sp)
/* 2CD48 8002C148 24C62230 */  addiu      $a2, $a2, %lo(D_800D2230)
/* 2CD4C 8002C14C 00001025 */  or         $v0, $zero, $zero
.L8002C150:
/* 2CD50 8002C150 00027040 */  sll        $t6, $v0, 1
/* 2CD54 8002C154 00CE1821 */  addu       $v1, $a2, $t6
/* 2CD58 8002C158 94640000 */  lhu        $a0, ($v1)
/* 2CD5C 8002C15C 00000000 */  nop
/* 2CD60 8002C160 10800006 */  beqz       $a0, .L8002C17C
/* 2CD64 8002C164 308F8000 */   andi      $t7, $a0, 0x8000
/* 2CD68 8002C168 15E00004 */  bnez       $t7, .L8002C17C
/* 2CD6C 8002C16C 34998000 */   ori       $t9, $a0, 0x8000
/* 2CD70 8002C170 A4790000 */  sh         $t9, ($v1)
/* 2CD74 8002C174 03E00008 */  jr         $ra
/* 2CD78 8002C178 33227FFF */   andi      $v0, $t9, 0x7fff
.L8002C17C:
/* 2CD7C 8002C17C 24420001 */  addiu      $v0, $v0, 1
/* 2CD80 8002C180 3049FFFF */  andi       $t1, $v0, 0xffff
/* 2CD84 8002C184 29210020 */  slti       $at, $t1, 0x20
/* 2CD88 8002C188 1420FFF1 */  bnez       $at, .L8002C150
/* 2CD8C 8002C18C 01201025 */   or        $v0, $t1, $zero
/* 2CD90 8002C190 00001025 */  or         $v0, $zero, $zero
.L8002C194:
/* 2CD94 8002C194 00025040 */  sll        $t2, $v0, 1
/* 2CD98 8002C198 00CA5821 */  addu       $t3, $a2, $t2
/* 2CD9C 8002C19C 95650000 */  lhu        $a1, ($t3)
/* 2CDA0 8002C1A0 24420001 */  addiu      $v0, $v0, 1
/* 2CDA4 8002C1A4 30AC8000 */  andi       $t4, $a1, 0x8000
/* 2CDA8 8002C1A8 11800005 */  beqz       $t4, .L8002C1C0
/* 2CDAC 8002C1AC 304EFFFF */   andi      $t6, $v0, 0xffff
/* 2CDB0 8002C1B0 00A01025 */  or         $v0, $a1, $zero
/* 2CDB4 8002C1B4 304D7FFF */  andi       $t5, $v0, 0x7fff
/* 2CDB8 8002C1B8 03E00008 */  jr         $ra
/* 2CDBC 8002C1BC 01A01025 */   or        $v0, $t5, $zero
.L8002C1C0:
/* 2CDC0 8002C1C0 29C10020 */  slti       $at, $t6, 0x20
/* 2CDC4 8002C1C4 1420FFF3 */  bnez       $at, .L8002C194
/* 2CDC8 8002C1C8 01C01025 */   or        $v0, $t6, $zero
/* 2CDCC 8002C1CC 00001025 */  or         $v0, $zero, $zero
/* 2CDD0 8002C1D0 03E00008 */  jr         $ra
/* 2CDD4 8002C1D4 00000000 */   nop
