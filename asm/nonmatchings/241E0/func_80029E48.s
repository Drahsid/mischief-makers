glabel func_80029E48
/* 2AA48 80029E48 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2AA4C 80029E4C 000E5080 */  sll        $t2, $t6, 2
/* 2AA50 80029E50 014E5023 */  subu       $t2, $t2, $t6
/* 2AA54 80029E54 000A5080 */  sll        $t2, $t2, 2
/* 2AA58 80029E58 014E5021 */  addu       $t2, $t2, $t6
/* 2AA5C 80029E5C 000A5080 */  sll        $t2, $t2, 2
/* 2AA60 80029E60 014E5023 */  subu       $t2, $t2, $t6
/* 2AA64 80029E64 000A50C0 */  sll        $t2, $t2, 3
/* 2AA68 80029E68 3C0B800F */  lui        $t3, %hi(FB_BGCOLOR)
/* 2AA6C 80029E6C 016A5821 */  addu       $t3, $t3, $t2
/* 2AA70 80029E70 3C09800C */  lui        $t1, %hi(D_800BE558)
/* 2AA74 80029E74 8529E558 */  lh         $t1, %lo(D_800BE558)($t1)
/* 2AA78 80029E78 856BF598 */  lh         $t3, %lo(FB_BGCOLOR)($t3)
/* 2AA7C 80029E7C AFA50004 */  sw         $a1, 4($sp)
/* 2AA80 80029E80 012B1021 */  addu       $v0, $t1, $t3
/* 2AA84 80029E84 00057C00 */  sll        $t7, $a1, 0x10
/* 2AA88 80029E88 00026400 */  sll        $t4, $v0, 0x10
/* 2AA8C 80029E8C 000F2C03 */  sra        $a1, $t7, 0x10
/* 2AA90 80029E90 0006CC00 */  sll        $t9, $a2, 0x10
/* 2AA94 80029E94 000C6C03 */  sra        $t5, $t4, 0x10
/* 2AA98 80029E98 00194403 */  sra        $t0, $t9, 0x10
/* 2AA9C 80029E9C AFA60008 */  sw         $a2, 8($sp)
/* 2AAA0 80029EA0 00AD082A */  slt        $at, $a1, $t5
/* 2AAA4 80029EA4 01003025 */  or         $a2, $t0, $zero
/* 2AAA8 80029EA8 AFA40000 */  sw         $a0, ($sp)
/* 2AAAC 80029EAC 10200004 */  beqz       $at, .L80029EC0
/* 2AAB0 80029EB0 01A01025 */   or        $v0, $t5, $zero
/* 2AAB4 80029EB4 010D082A */  slt        $at, $t0, $t5
/* 2AAB8 80029EB8 10200003 */  beqz       $at, .L80029EC8
/* 2AABC 80029EBC 00001825 */   or        $v1, $zero, $zero
.L80029EC0:
/* 2AAC0 80029EC0 10000001 */  b          .L80029EC8
/* 2AAC4 80029EC4 34038000 */   ori       $v1, $zero, 0x8000
.L80029EC8:
/* 2AAC8 80029EC8 00C57023 */  subu       $t6, $a2, $a1
/* 2AACC 80029ECC 05C10003 */  bgez       $t6, .L80029EDC
/* 2AAD0 80029ED0 000E7843 */   sra       $t7, $t6, 1
/* 2AAD4 80029ED4 25C10001 */  addiu      $at, $t6, 1
/* 2AAD8 80029ED8 00017843 */  sra        $t7, $at, 1
.L80029EDC:
/* 2AADC 80029EDC 00AFC021 */  addu       $t8, $a1, $t7
/* 2AAE0 80029EE0 0018CC00 */  sll        $t9, $t8, 0x10
/* 2AAE4 80029EE4 00194403 */  sra        $t0, $t9, 0x10
/* 2AAE8 80029EE8 0102082A */  slt        $at, $t0, $v0
/* 2AAEC 80029EEC 10200002 */  beqz       $at, .L80029EF8
/* 2AAF0 80029EF0 346A0001 */   ori       $t2, $v1, 1
/* 2AAF4 80029EF4 3143FFFF */  andi       $v1, $t2, 0xffff
.L80029EF8:
/* 2AAF8 80029EF8 03E00008 */  jr         $ra
/* 2AAFC 80029EFC 00601025 */   or        $v0, $v1, $zero
