glabel func_8008CC00
/* 8D800 8008CC00 3C03800F */  lui        $v1, %hi(D_800F0E90)
/* 8D804 8008CC04 240E0005 */  addiu      $t6, $zero, 5
/* 8D808 8008CC08 3C01800C */  lui        $at, %hi(D_800BE5F4)
/* 8D80C 8008CC0C 24630E90 */  addiu      $v1, $v1, %lo(D_800F0E90)
/* 8D810 8008CC10 AC2EE5F4 */  sw         $t6, %lo(D_800BE5F4)($at)
/* 8D814 8008CC14 846F0088 */  lh         $t7, 0x88($v1)
/* 8D818 8008CC18 3C02800F */  lui        $v0, %hi(D_800EF510)
/* 8D81C 8008CC1C 2442F510 */  addiu      $v0, $v0, %lo(D_800EF510)
/* 8D820 8008CC20 A44F0088 */  sh         $t7, 0x88($v0)
/* 8D824 8008CC24 8478008C */  lh         $t8, 0x8c($v1)
/* 8D828 8008CC28 3C19800C */  lui        $t9, %hi(D_800BE558)
/* 8D82C 8008CC2C A458008C */  sh         $t8, 0x8c($v0)
/* 8D830 8008CC30 84680088 */  lh         $t0, 0x88($v1)
/* 8D834 8008CC34 8739E558 */  lh         $t9, %lo(D_800BE558)($t9)
/* 8D838 8008CC38 3C01800C */  lui        $at, %hi(D_800BE5D8)
/* 8D83C 8008CC3C 03284821 */  addu       $t1, $t9, $t0
/* 8D840 8008CC40 A429E5D8 */  sh         $t1, %lo(D_800BE5D8)($at)
/* 8D844 8008CC44 3C0A800C */  lui        $t2, %hi(D_800BE55C)
/* 8D848 8008CC48 854AE55C */  lh         $t2, %lo(D_800BE55C)($t2)
/* 8D84C 8008CC4C 846B008C */  lh         $t3, 0x8c($v1)
/* 8D850 8008CC50 3C01800C */  lui        $at, %hi(D_800BE5DC)
/* 8D854 8008CC54 014B6021 */  addu       $t4, $t2, $t3
/* 8D858 8008CC58 A42CE5DC */  sh         $t4, %lo(D_800BE5DC)($at)
/* 8D85C 8008CC5C 8C4D0080 */  lw         $t5, 0x80($v0)
/* 8D860 8008CC60 2401FFDF */  addiu      $at, $zero, -0x21
/* 8D864 8008CC64 01A17024 */  and        $t6, $t5, $at
/* 8D868 8008CC68 AC4E0080 */  sw         $t6, 0x80($v0)
/* 8D86C 8008CC6C 8C780080 */  lw         $t8, 0x80($v1)
/* 8D870 8008CC70 3C01800D */  lui        $at, %hi(D_800D294C)
/* 8D874 8008CC74 33190020 */  andi       $t9, $t8, 0x20
/* 8D878 8008CC78 01D94025 */  or         $t0, $t6, $t9
/* 8D87C 8008CC7C AC480080 */  sw         $t0, 0x80($v0)
/* 8D880 8008CC80 A420294C */  sh         $zero, %lo(D_800D294C)($at)
/* 8D884 8008CC84 AC600080 */  sw         $zero, 0x80($v1)
/* 8D888 8008CC88 03E00008 */  jr         $ra
/* 8D88C 8008CC8C A46000D0 */   sh        $zero, 0xd0($v1)
