glabel func_80083A04
/* 84604 80083A04 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 84608 80083A08 AFA50084 */  sw         $a1, 0x84($sp)
/* 8460C 80083A0C AFA60088 */  sw         $a2, 0x88($sp)
/* 84610 80083A10 00803025 */  or         $a2, $a0, $zero
/* 84614 80083A14 AFBF002C */  sw         $ra, 0x2c($sp)
/* 84618 80083A18 AFA40080 */  sw         $a0, 0x80($sp)
/* 8461C 80083A1C 3C05800F */  lui        $a1, %hi(D_800ED070)
/* 84620 80083A20 24A5D070 */  addiu      $a1, $a1, %lo(D_800ED070)
/* 84624 80083A24 0C029590 */  jal        func_800A5640
/* 84628 80083A28 27A40030 */   addiu     $a0, $sp, 0x30
/* 8462C 80083A2C 3C013F80 */  lui        $at, 0x3f80
/* 84630 80083A30 3C07800C */  lui        $a3, %hi(D_800BE6B9)
/* 84634 80083A34 44810000 */  mtc1       $at, $f0
/* 84638 80083A38 90E7E6B9 */  lbu        $a3, %lo(D_800BE6B9)($a3)
/* 8463C 80083A3C 8FA50084 */  lw         $a1, 0x84($sp)
/* 84640 80083A40 8FA60088 */  lw         $a2, 0x88($sp)
/* 84644 80083A44 240E00FF */  addiu      $t6, $zero, 0xff
/* 84648 80083A48 AFAE0018 */  sw         $t6, 0x18($sp)
/* 8464C 80083A4C 27A40030 */  addiu      $a0, $sp, 0x30
/* 84650 80083A50 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 84654 80083A54 E7A00020 */  swc1       $f0, 0x20($sp)
/* 84658 80083A58 AFA70010 */  sw         $a3, 0x10($sp)
/* 8465C 80083A5C 0C020E47 */  jal        func_8008391C
/* 84660 80083A60 AFA70014 */   sw        $a3, 0x14($sp)
/* 84664 80083A64 8FBF002C */  lw         $ra, 0x2c($sp)
/* 84668 80083A68 27BD0080 */  addiu      $sp, $sp, 0x80
/* 8466C 80083A6C 03E00008 */  jr         $ra
/* 84670 80083A70 00000000 */   nop
