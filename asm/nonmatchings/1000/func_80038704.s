glabel func_80038704
/* 39304 80038704 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 39308 80038708 AFBF001C */  sw         $ra, 0x1c($sp)
/* 3930C 8003870C 0C0005E3 */  jal        func_8000178C
/* 39310 80038710 AFA40028 */   sw        $a0, 0x28($sp)
/* 39314 80038714 0C0005E3 */  jal        func_8000178C
/* 39318 80038718 A7A20024 */   sh        $v0, 0x24($sp)
/* 3931C 8003871C 97A70024 */  lhu        $a3, 0x24($sp)
/* 39320 80038720 97A4002A */  lhu        $a0, 0x2a($sp)
/* 39324 80038724 30EE0003 */  andi       $t6, $a3, 3
/* 39328 80038728 000E3823 */  negu       $a3, $t6
/* 3932C 8003872C 00077C00 */  sll        $t7, $a3, 0x10
/* 39330 80038730 30590003 */  andi       $t9, $v0, 3
/* 39334 80038734 AFB90010 */  sw         $t9, 0x10($sp)
/* 39338 80038738 000F3C03 */  sra        $a3, $t7, 0x10
/* 3933C 8003873C 24054000 */  addiu      $a1, $zero, 0x4000
/* 39340 80038740 0C00E13F */  jal        func_800384FC
/* 39344 80038744 24060400 */   addiu     $a2, $zero, 0x400
/* 39348 80038748 0C0005E3 */  jal        func_8000178C
/* 3934C 8003874C 00000000 */   nop
/* 39350 80038750 0C0005E3 */  jal        func_8000178C
/* 39354 80038754 A7A20024 */   sh        $v0, 0x24($sp)
/* 39358 80038758 97A70024 */  lhu        $a3, 0x24($sp)
/* 3935C 8003875C 97A4002A */  lhu        $a0, 0x2a($sp)
/* 39360 80038760 30E80001 */  andi       $t0, $a3, 1
/* 39364 80038764 00083823 */  negu       $a3, $t0
/* 39368 80038768 00074C00 */  sll        $t1, $a3, 0x10
/* 3936C 8003876C 304B0001 */  andi       $t3, $v0, 1
/* 39370 80038770 AFAB0010 */  sw         $t3, 0x10($sp)
/* 39374 80038774 00093C03 */  sra        $a3, $t1, 0x10
/* 39378 80038778 24054000 */  addiu      $a1, $zero, 0x4000
/* 3937C 8003877C 0C00E180 */  jal        func_80038600
/* 39380 80038780 24060400 */   addiu     $a2, $zero, 0x400
/* 39384 80038784 8FBF001C */  lw         $ra, 0x1c($sp)
/* 39388 80038788 27BD0028 */  addiu      $sp, $sp, 0x28
/* 3938C 8003878C 03E00008 */  jr         $ra
/* 39390 80038790 00000000 */   nop
