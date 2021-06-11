glabel func_80094EB8
/* 95AB8 80094EB8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 95ABC 80094EBC AFBF0014 */  sw         $ra, 0x14($sp)
/* 95AC0 80094EC0 AFA40018 */  sw         $a0, 0x18($sp)
/* 95AC4 80094EC4 24040050 */  addiu      $a0, $zero, 0x50
/* 95AC8 80094EC8 24050040 */  addiu      $a1, $zero, 0x40
/* 95ACC 80094ECC 0C00A6C0 */  jal        func_80029B00
/* 95AD0 80094ED0 2406FFC0 */   addiu     $a2, $zero, -0x40
/* 95AD4 80094ED4 1040000F */  beqz       $v0, .L80094F14
/* 95AD8 80094ED8 3C18800F */   lui       $t8, %hi(gActors)
/* 95ADC 80094EDC 97AE001A */  lhu        $t6, 0x1a($sp)
/* 95AE0 80094EE0 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 95AE4 80094EE4 000E7880 */  sll        $t7, $t6, 2
/* 95AE8 80094EE8 01EE7823 */  subu       $t7, $t7, $t6
/* 95AEC 80094EEC 000F7880 */  sll        $t7, $t7, 2
/* 95AF0 80094EF0 01EE7821 */  addu       $t7, $t7, $t6
/* 95AF4 80094EF4 000F7880 */  sll        $t7, $t7, 2
/* 95AF8 80094EF8 01EE7823 */  subu       $t7, $t7, $t6
/* 95AFC 80094EFC 000F78C0 */  sll        $t7, $t7, 3
/* 95B00 80094F00 01F81021 */  addu       $v0, $t7, $t8
/* 95B04 80094F04 8C590098 */  lw         $t9, 0x98($v0)
/* 95B08 80094F08 3C010004 */  lui        $at, 4
/* 95B0C 80094F0C 03214025 */  or         $t0, $t9, $at
/* 95B10 80094F10 AC480098 */  sw         $t0, 0x98($v0)
.L80094F14:
/* 95B14 80094F14 8FBF0014 */  lw         $ra, 0x14($sp)
/* 95B18 80094F18 27BD0018 */  addiu      $sp, $sp, 0x18
/* 95B1C 80094F1C 03E00008 */  jr         $ra
/* 95B20 80094F20 00000000 */   nop
