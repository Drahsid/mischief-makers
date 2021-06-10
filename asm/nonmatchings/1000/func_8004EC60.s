glabel func_8004EC60
/* 4F860 8004EC60 308EFFFF */  andi       $t6, $a0, 0xffff
/* 4F864 8004EC64 000E7880 */  sll        $t7, $t6, 2
/* 4F868 8004EC68 01EE7823 */  subu       $t7, $t7, $t6
/* 4F86C 8004EC6C 000F7880 */  sll        $t7, $t7, 2
/* 4F870 8004EC70 01EE7821 */  addu       $t7, $t7, $t6
/* 4F874 8004EC74 000F7880 */  sll        $t7, $t7, 2
/* 4F878 8004EC78 01EE7823 */  subu       $t7, $t7, $t6
/* 4F87C 8004EC7C 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 4F880 8004EC80 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 4F884 8004EC84 000F78C0 */  sll        $t7, $t7, 3
/* 4F888 8004EC88 01F81021 */  addu       $v0, $t7, $t8
/* 4F88C 8004EC8C 9059012E */  lbu        $t9, 0x12e($v0)
/* 4F890 8004EC90 AC4000EC */  sw         $zero, 0xec($v0)
/* 4F894 8004EC94 372800C1 */  ori        $t0, $t9, 0xc1
/* 4F898 8004EC98 A048012E */  sb         $t0, 0x12e($v0)
/* 4F89C 8004EC9C AC4000F0 */  sw         $zero, 0xf0($v0)
/* 4F8A0 8004ECA0 3C038013 */  lui        $v1, %hi(D_801373D8)
/* 4F8A4 8004ECA4 946373D8 */  lhu        $v1, %lo(D_801373D8)($v1)
/* 4F8A8 8004ECA8 AFA40000 */  sw         $a0, ($sp)
/* 4F8AC 8004ECAC 30690002 */  andi       $t1, $v1, 2
/* 4F8B0 8004ECB0 11200003 */  beqz       $t1, .L8004ECC0
/* 4F8B4 8004ECB4 306B0001 */   andi      $t3, $v1, 1
/* 4F8B8 8004ECB8 3C0A0008 */  lui        $t2, 8
/* 4F8BC 8004ECBC AC4A00EC */  sw         $t2, 0xec($v0)
.L8004ECC0:
/* 4F8C0 8004ECC0 11600003 */  beqz       $t3, .L8004ECD0
/* 4F8C4 8004ECC4 306D0020 */   andi      $t5, $v1, 0x20
/* 4F8C8 8004ECC8 3C0CFFF8 */  lui        $t4, 0xfff8
/* 4F8CC 8004ECCC AC4C00EC */  sw         $t4, 0xec($v0)
.L8004ECD0:
/* 4F8D0 8004ECD0 11A00003 */  beqz       $t5, .L8004ECE0
/* 4F8D4 8004ECD4 306F0010 */   andi      $t7, $v1, 0x10
/* 4F8D8 8004ECD8 3C0E0008 */  lui        $t6, 8
/* 4F8DC 8004ECDC AC4E00F0 */  sw         $t6, 0xf0($v0)
.L8004ECE0:
/* 4F8E0 8004ECE0 11E00003 */  beqz       $t7, .L8004ECF0
/* 4F8E4 8004ECE4 3C19800C */   lui       $t9, %hi(D_800BE5D8)
/* 4F8E8 8004ECE8 3C18FFF8 */  lui        $t8, 0xfff8
/* 4F8EC 8004ECEC AC5800F0 */  sw         $t8, 0xf0($v0)
.L8004ECF0:
/* 4F8F0 8004ECF0 8F39E5D8 */  lw         $t9, %lo(D_800BE5D8)($t9)
/* 4F8F4 8004ECF4 3C028013 */  lui        $v0, %hi(D_801373E0)
/* 4F8F8 8004ECF8 244273E0 */  addiu      $v0, $v0, %lo(D_801373E0)
/* 4F8FC 8004ECFC 3C08800C */  lui        $t0, %hi(D_800BE5DC)
/* 4F900 8004ED00 AC590050 */  sw         $t9, 0x50($v0)
/* 4F904 8004ED04 8D08E5DC */  lw         $t0, %lo(D_800BE5DC)($t0)
/* 4F908 8004ED08 03E00008 */  jr         $ra
/* 4F90C 8004ED0C AC480054 */   sw        $t0, 0x54($v0)
