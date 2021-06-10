glabel func_800A9714
/* AA314 800A9714 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* AA318 800A9718 AFBF0014 */  sw         $ra, 0x14($sp)
/* AA31C 800A971C AFA40038 */  sw         $a0, 0x38($sp)
/* AA320 800A9720 8FAE0038 */  lw         $t6, 0x38($sp)
/* AA324 800A9724 AFAE0034 */  sw         $t6, 0x34($sp)
/* AA328 800A9728 AFA00028 */  sw         $zero, 0x28($sp)
/* AA32C 800A972C 240F0001 */  addiu      $t7, $zero, 1
/* AA330 800A9730 A7AF002C */  sh         $t7, 0x2c($sp)
/* AA334 800A9734 8FB80038 */  lw         $t8, 0x38($sp)
/* AA338 800A9738 24010001 */  addiu      $at, $zero, 1
/* AA33C 800A973C 93190009 */  lbu        $t9, 9($t8)
/* AA340 800A9740 17210005 */  bne        $t9, $at, .L800A9758
/* AA344 800A9744 00000000 */   nop
/* AA348 800A9748 240803E9 */  addiu      $t0, $zero, 0x3e9
/* AA34C 800A974C 27A9001C */  addiu      $t1, $sp, 0x1c
/* AA350 800A9750 10000004 */  b          .L800A9764
/* AA354 800A9754 AD280014 */   sw        $t0, 0x14($t1)
.L800A9758:
/* AA358 800A9758 240A03EA */  addiu      $t2, $zero, 0x3ea
/* AA35C 800A975C 27AB001C */  addiu      $t3, $sp, 0x1c
/* AA360 800A9760 AD6A0014 */  sw         $t2, 0x14($t3)
.L800A9764:
/* AA364 800A9764 8FAC0034 */  lw         $t4, 0x34($sp)
/* AA368 800A9768 918D0004 */  lbu        $t5, 4($t4)
/* AA36C 800A976C A3AD0020 */  sb         $t5, 0x20($sp)
/* AA370 800A9770 A7A00022 */  sh         $zero, 0x22($sp)
/* AA374 800A9774 27A4001C */  addiu      $a0, $sp, 0x1c
/* AA378 800A9778 24050018 */  addiu      $a1, $zero, 0x18
/* AA37C 800A977C 0C026833 */  jal        func_8009A0CC
/* AA380 800A9780 24060001 */   addiu     $a2, $zero, 1
/* AA384 800A9784 10000003 */  b          .L800A9794
/* AA388 800A9788 00001025 */   or        $v0, $zero, $zero
/* AA38C 800A978C 10000001 */  b          .L800A9794
/* AA390 800A9790 00000000 */   nop
.L800A9794:
/* AA394 800A9794 8FBF0014 */  lw         $ra, 0x14($sp)
/* AA398 800A9798 27BD0038 */  addiu      $sp, $sp, 0x38
/* AA39C 800A979C 03E00008 */  jr         $ra
/* AA3A0 800A97A0 00000000 */   nop
