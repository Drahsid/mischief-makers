glabel func_800A9B00
/* AA700 800A9B00 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AA704 800A9B04 AFBF0014 */  sw         $ra, 0x14($sp)
/* AA708 800A9B08 AFA40018 */  sw         $a0, 0x18($sp)
/* AA70C 800A9B0C AFA5001C */  sw         $a1, 0x1c($sp)
/* AA710 800A9B10 8FAE001C */  lw         $t6, 0x1c($sp)
/* AA714 800A9B14 11C00001 */  beqz       $t6, .L800A9B1C
/* AA718 800A9B18 00000000 */   nop
.L800A9B1C:
/* AA71C 800A9B1C 8FAF0018 */  lw         $t7, 0x18($sp)
/* AA720 800A9B20 3C198019 */  lui        $t9, %hi(D_8018A398)
/* AA724 800A9B24 2739A398 */  addiu      $t9, $t9, %lo(D_8018A398)
/* AA728 800A9B28 8DF80000 */  lw         $t8, ($t7)
/* AA72C 800A9B2C AF380004 */  sw         $t8, 4($t9)
/* AA730 800A9B30 8FA90018 */  lw         $t1, 0x18($sp)
/* AA734 800A9B34 2408040D */  addiu      $t0, $zero, 0x40d
/* AA738 800A9B38 AD280000 */  sw         $t0, ($t1)
/* AA73C 800A9B3C 8FA40018 */  lw         $a0, 0x18($sp)
/* AA740 800A9B40 0C029BC4 */  jal        func_800A6F10
/* AA744 800A9B44 24050004 */   addiu     $a1, $zero, 4
/* AA748 800A9B48 8FA40018 */  lw         $a0, 0x18($sp)
/* AA74C 800A9B4C 0C029BE4 */  jal        func_800A6F90
/* AA750 800A9B50 24050004 */   addiu     $a1, $zero, 4
/* AA754 800A9B54 8FAA0018 */  lw         $t2, 0x18($sp)
/* AA758 800A9B58 3C0B8019 */  lui        $t3, %hi(D_8018A398)
/* AA75C 800A9B5C 256BA398 */  addiu      $t3, $t3, %lo(D_8018A398)
/* AA760 800A9B60 AD6A0000 */  sw         $t2, ($t3)
/* AA764 800A9B64 8FAC001C */  lw         $t4, 0x1c($sp)
/* AA768 800A9B68 11800011 */  beqz       $t4, .L800A9BB0
/* AA76C 800A9B6C 00000000 */   nop
/* AA770 800A9B70 8FAD001C */  lw         $t5, 0x1c($sp)
/* AA774 800A9B74 3C018019 */  lui        $at, %hi(D_8018A41C)
/* AA778 800A9B78 8DAE0000 */  lw         $t6, ($t5)
/* AA77C 800A9B7C AC2EA41C */  sw         $t6, %lo(D_8018A41C)($at)
/* AA780 800A9B80 8FB8001C */  lw         $t8, 0x1c($sp)
/* AA784 800A9B84 240F040D */  addiu      $t7, $zero, 0x40d
/* AA788 800A9B88 AF0F0000 */  sw         $t7, ($t8)
/* AA78C 800A9B8C 8FA4001C */  lw         $a0, 0x1c($sp)
/* AA790 800A9B90 0C029BC4 */  jal        func_800A6F10
/* AA794 800A9B94 24050004 */   addiu     $a1, $zero, 4
/* AA798 800A9B98 8FA4001C */  lw         $a0, 0x1c($sp)
/* AA79C 800A9B9C 0C029BE4 */  jal        func_800A6F90
/* AA7A0 800A9BA0 24050004 */   addiu     $a1, $zero, 4
/* AA7A4 800A9BA4 8FB9001C */  lw         $t9, 0x1c($sp)
/* AA7A8 800A9BA8 3C018019 */  lui        $at, %hi(D_8018A418)
/* AA7AC 800A9BAC AC39A418 */  sw         $t9, %lo(D_8018A418)($at)
.L800A9BB0:
/* AA7B0 800A9BB0 10000001 */  b          .L800A9BB8
/* AA7B4 800A9BB4 00000000 */   nop
.L800A9BB8:
/* AA7B8 800A9BB8 8FBF0014 */  lw         $ra, 0x14($sp)
/* AA7BC 800A9BBC 27BD0018 */  addiu      $sp, $sp, 0x18
/* AA7C0 800A9BC0 03E00008 */  jr         $ra
/* AA7C4 800A9BC4 00000000 */   nop
