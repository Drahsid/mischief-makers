glabel func_8006FED0
/* 70AD0 8006FED0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 70AD4 8006FED4 AFB00018 */  sw         $s0, 0x18($sp)
/* 70AD8 8006FED8 3090FFFF */  andi       $s0, $a0, 0xffff
/* 70ADC 8006FEDC AFBF001C */  sw         $ra, 0x1c($sp)
/* 70AE0 8006FEE0 AFA40020 */  sw         $a0, 0x20($sp)
/* 70AE4 8006FEE4 0C01B22E */  jal        func_8006C8B8
/* 70AE8 8006FEE8 3204FFFF */   andi      $a0, $s0, 0xffff
/* 70AEC 8006FEEC 1440001C */  bnez       $v0, .L8006FF60
/* 70AF0 8006FEF0 00107080 */   sll       $t6, $s0, 2
/* 70AF4 8006FEF4 01D07023 */  subu       $t6, $t6, $s0
/* 70AF8 8006FEF8 000E7080 */  sll        $t6, $t6, 2
/* 70AFC 8006FEFC 01D07021 */  addu       $t6, $t6, $s0
/* 70B00 8006FF00 000E7080 */  sll        $t6, $t6, 2
/* 70B04 8006FF04 01D07023 */  subu       $t6, $t6, $s0
/* 70B08 8006FF08 3C0F800F */  lui        $t7, %hi(gActors)
/* 70B0C 8006FF0C 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 70B10 8006FF10 000E70C0 */  sll        $t6, $t6, 3
/* 70B14 8006FF14 01CF1021 */  addu       $v0, $t6, $t7
/* 70B18 8006FF18 944300D0 */  lhu        $v1, 0xd0($v0)
/* 70B1C 8006FF1C 24010230 */  addiu      $at, $zero, 0x230
/* 70B20 8006FF20 1461000A */  bne        $v1, $at, .L8006FF4C
/* 70B24 8006FF24 24780001 */   addiu     $t8, $v1, 1
/* 70B28 8006FF28 3C014080 */  lui        $at, 0x4080
/* 70B2C 8006FF2C 44812000 */  mtc1       $at, $f4
/* 70B30 8006FF30 3C19800E */  lui        $t9, %hi(D_800E1924)
/* 70B34 8006FF34 27391924 */  addiu      $t9, $t9, %lo(D_800E1924)
/* 70B38 8006FF38 A45800D0 */  sh         $t8, 0xd0($v0)
/* 70B3C 8006FF3C AC5900E8 */  sw         $t9, 0xe8($v0)
/* 70B40 8006FF40 3204FFFF */  andi       $a0, $s0, 0xffff
/* 70B44 8006FF44 0C01AD6C */  jal        func_8006B5B0
/* 70B48 8006FF48 E4440144 */   swc1      $f4, 0x144($v0)
.L8006FF4C:
/* 70B4C 8006FF4C 0C01A6E5 */  jal        func_80069B94
/* 70B50 8006FF50 3204FFFF */   andi      $a0, $s0, 0xffff
/* 70B54 8006FF54 3204FFFF */  andi       $a0, $s0, 0xffff
/* 70B58 8006FF58 0C01AD92 */  jal        func_8006B648
/* 70B5C 8006FF5C 24050001 */   addiu     $a1, $zero, 1
.L8006FF60:
/* 70B60 8006FF60 8FBF001C */  lw         $ra, 0x1c($sp)
/* 70B64 8006FF64 8FB00018 */  lw         $s0, 0x18($sp)
/* 70B68 8006FF68 03E00008 */  jr         $ra
/* 70B6C 8006FF6C 27BD0020 */   addiu     $sp, $sp, 0x20
