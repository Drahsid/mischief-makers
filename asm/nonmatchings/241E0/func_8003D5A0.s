glabel func_8003D5A0
/* 3E1A0 8003D5A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3E1A4 8003D5A4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 3E1A8 8003D5A8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 3E1AC 8003D5AC AFA40020 */  sw         $a0, 0x20($sp)
/* 3E1B0 8003D5B0 AFA50024 */  sw         $a1, 0x24($sp)
/* 3E1B4 8003D5B4 AFA60028 */  sw         $a2, 0x28($sp)
/* 3E1B8 8003D5B8 15C0000D */  bnez       $t6, .L8003D5F0
/* 3E1BC 8003D5BC AFA7002C */   sw        $a3, 0x2c($sp)
/* 3E1C0 8003D5C0 24040010 */  addiu      $a0, $zero, 0x10
/* 3E1C4 8003D5C4 0C00A12E */  jal        func_800284B8
/* 3E1C8 8003D5C8 2405002D */   addiu     $a1, $zero, 0x2d
/* 3E1CC 8003D5CC 8FAF0030 */  lw         $t7, 0x30($sp)
/* 3E1D0 8003D5D0 97A50026 */  lhu        $a1, 0x26($sp)
/* 3E1D4 8003D5D4 8FA60028 */  lw         $a2, 0x28($sp)
/* 3E1D8 8003D5D8 8FA7002C */  lw         $a3, 0x2c($sp)
/* 3E1DC 8003D5DC 3044FFFF */  andi       $a0, $v0, 0xffff
/* 3E1E0 8003D5E0 0C00C429 */  jal        func_800310A4
/* 3E1E4 8003D5E4 AFAF0010 */   sw        $t7, 0x10($sp)
/* 3E1E8 8003D5E8 1000000C */  b          .L8003D61C
/* 3E1EC 8003D5EC 8FBF001C */   lw        $ra, 0x1c($sp)
.L8003D5F0:
/* 3E1F0 8003D5F0 24040090 */  addiu      $a0, $zero, 0x90
/* 3E1F4 8003D5F4 0C00A12E */  jal        func_800284B8
/* 3E1F8 8003D5F8 240500C0 */   addiu     $a1, $zero, 0xc0
/* 3E1FC 8003D5FC 8FB80030 */  lw         $t8, 0x30($sp)
/* 3E200 8003D600 97A50026 */  lhu        $a1, 0x26($sp)
/* 3E204 8003D604 8FA60028 */  lw         $a2, 0x28($sp)
/* 3E208 8003D608 8FA7002C */  lw         $a3, 0x2c($sp)
/* 3E20C 8003D60C 3044FFFF */  andi       $a0, $v0, 0xffff
/* 3E210 8003D610 0C00C429 */  jal        func_800310A4
/* 3E214 8003D614 AFB80010 */   sw        $t8, 0x10($sp)
/* 3E218 8003D618 8FBF001C */  lw         $ra, 0x1c($sp)
.L8003D61C:
/* 3E21C 8003D61C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3E220 8003D620 03E00008 */  jr         $ra
/* 3E224 8003D624 00000000 */   nop
