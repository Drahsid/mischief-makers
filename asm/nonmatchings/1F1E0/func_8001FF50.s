glabel func_8001FF50
/* 20B50 8001FF50 3C060038 */  lui        $a2, 0x38
/* 20B54 8001FF54 3C04800F */  lui        $a0, %hi(D_800EF510)
/* 20B58 8001FF58 2484F510 */  addiu      $a0, $a0, %lo(D_800EF510)
/* 20B5C 8001FF5C 34C60600 */  ori        $a2, $a2, 0x600
/* 20B60 8001FF60 24020001 */  addiu      $v0, $zero, 1
/* 20B64 8001FF64 24050198 */  addiu      $a1, $zero, 0x198
.L8001FF68:
/* 20B68 8001FF68 00450019 */  multu      $v0, $a1
/* 20B6C 8001FF6C 24420001 */  addiu      $v0, $v0, 1
/* 20B70 8001FF70 3059FFFF */  andi       $t9, $v0, 0xffff
/* 20B74 8001FF74 2B2100C0 */  slti       $at, $t9, 0xc0
/* 20B78 8001FF78 03201025 */  or         $v0, $t9, $zero
/* 20B7C 8001FF7C 00007012 */  mflo       $t6
/* 20B80 8001FF80 008E1821 */  addu       $v1, $a0, $t6
/* 20B84 8001FF84 8C6F0098 */  lw         $t7, 0x98($v1)
/* 20B88 8001FF88 00000000 */  nop
/* 20B8C 8001FF8C 01E6C024 */  and        $t8, $t7, $a2
/* 20B90 8001FF90 1420FFF5 */  bnez       $at, .L8001FF68
/* 20B94 8001FF94 AC780098 */   sw        $t8, 0x98($v1)
/* 20B98 8001FF98 03E00008 */  jr         $ra
/* 20B9C 8001FF9C 00000000 */   nop
