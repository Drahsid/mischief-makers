glabel func_80029F00
/* 2AB00 80029F00 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2AB04 80029F04 000E5080 */  sll        $t2, $t6, 2
/* 2AB08 80029F08 014E5023 */  subu       $t2, $t2, $t6
/* 2AB0C 80029F0C 000A5080 */  sll        $t2, $t2, 2
/* 2AB10 80029F10 014E5021 */  addu       $t2, $t2, $t6
/* 2AB14 80029F14 000A5080 */  sll        $t2, $t2, 2
/* 2AB18 80029F18 014E5023 */  subu       $t2, $t2, $t6
/* 2AB1C 80029F1C 000A50C0 */  sll        $t2, $t2, 3
/* 2AB20 80029F20 3C0B800F */  lui        $t3, %hi(gActors+0x8C)
/* 2AB24 80029F24 016A5821 */  addu       $t3, $t3, $t2
/* 2AB28 80029F28 3C09800C */  lui        $t1, %hi(D_800BE55C)
/* 2AB2C 80029F2C 8529E55C */  lh         $t1, %lo(D_800BE55C)($t1)
/* 2AB30 80029F30 856BF59C */  lh         $t3, %lo(gActors+0x8C)($t3)
/* 2AB34 80029F34 AFA60008 */  sw         $a2, 8($sp)
/* 2AB38 80029F38 012B1021 */  addu       $v0, $t1, $t3
/* 2AB3C 80029F3C 0006CC00 */  sll        $t9, $a2, 0x10
/* 2AB40 80029F40 00026400 */  sll        $t4, $v0, 0x10
/* 2AB44 80029F44 00193403 */  sra        $a2, $t9, 0x10
/* 2AB48 80029F48 00057C00 */  sll        $t7, $a1, 0x10
/* 2AB4C 80029F4C 000C6C03 */  sra        $t5, $t4, 0x10
/* 2AB50 80029F50 000FC403 */  sra        $t8, $t7, 0x10
/* 2AB54 80029F54 AFA50004 */  sw         $a1, 4($sp)
/* 2AB58 80029F58 00CD082A */  slt        $at, $a2, $t5
/* 2AB5C 80029F5C 03002825 */  or         $a1, $t8, $zero
/* 2AB60 80029F60 AFA40000 */  sw         $a0, ($sp)
/* 2AB64 80029F64 10200004 */  beqz       $at, .L80029F78
/* 2AB68 80029F68 01A01025 */   or        $v0, $t5, $zero
/* 2AB6C 80029F6C 030D082A */  slt        $at, $t8, $t5
/* 2AB70 80029F70 10200003 */  beqz       $at, .L80029F80
/* 2AB74 80029F74 00001825 */   or        $v1, $zero, $zero
.L80029F78:
/* 2AB78 80029F78 10000001 */  b          .L80029F80
/* 2AB7C 80029F7C 34038000 */   ori       $v1, $zero, 0x8000
.L80029F80:
/* 2AB80 80029F80 00A67023 */  subu       $t6, $a1, $a2
/* 2AB84 80029F84 05C10003 */  bgez       $t6, .L80029F94
/* 2AB88 80029F88 000E7843 */   sra       $t7, $t6, 1
/* 2AB8C 80029F8C 25C10001 */  addiu      $at, $t6, 1
/* 2AB90 80029F90 00017843 */  sra        $t7, $at, 1
.L80029F94:
/* 2AB94 80029F94 00CFC021 */  addu       $t8, $a2, $t7
/* 2AB98 80029F98 0018CC00 */  sll        $t9, $t8, 0x10
/* 2AB9C 80029F9C 00194403 */  sra        $t0, $t9, 0x10
/* 2ABA0 80029FA0 0102082A */  slt        $at, $t0, $v0
/* 2ABA4 80029FA4 10200002 */  beqz       $at, .L80029FB0
/* 2ABA8 80029FA8 346A0002 */   ori       $t2, $v1, 2
/* 2ABAC 80029FAC 3143FFFF */  andi       $v1, $t2, 0xffff
.L80029FB0:
/* 2ABB0 80029FB0 03E00008 */  jr         $ra
/* 2ABB4 80029FB4 00601025 */   or        $v0, $v1, $zero
