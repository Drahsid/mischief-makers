glabel func_80011D6C
/* 1296C 80011D6C 00047600 */  sll        $t6, $a0, 0x18
/* 12970 80011D70 3C0A8013 */  lui        $t2, %hi(D_8013746C)
/* 12974 80011D74 8D4A746C */  lw         $t2, %lo(D_8013746C)($t2)
/* 12978 80011D78 000E7E03 */  sra        $t7, $t6, 0x18
/* 1297C 80011D7C 0005C600 */  sll        $t8, $a1, 0x18
/* 12980 80011D80 000F5900 */  sll        $t3, $t7, 4
/* 12984 80011D84 0018CE03 */  sra        $t9, $t8, 0x18
/* 12988 80011D88 014B6021 */  addu       $t4, $t2, $t3
/* 1298C 80011D8C AFA40000 */  sw         $a0, ($sp)
/* 12990 80011D90 AFA50004 */  sw         $a1, 4($sp)
/* 12994 80011D94 AFA60008 */  sw         $a2, 8($sp)
/* 12998 80011D98 01996821 */  addu       $t5, $t4, $t9
/* 1299C 80011D9C 03E00008 */  jr         $ra
/* 129A0 80011DA0 A1A60000 */   sb        $a2, ($t5)
