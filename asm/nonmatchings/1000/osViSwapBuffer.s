glabel osViSwapBuffer
/* 99A70 80098E70 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 99A74 80098E74 AFBF0014 */  sw         $ra, 0x14($sp)
/* 99A78 80098E78 AFA40020 */  sw         $a0, 0x20($sp)
/* 99A7C 80098E7C 3C0E800F */  lui        $t6, %hi(D_800E9790)
/* 99A80 80098E80 8DCE9790 */  lw         $t6, %lo(D_800E9790)($t6)
/* 99A84 80098E84 15C00006 */  bnez       $t6, .L80098EA0
/* 99A88 80098E88 00000000 */   nop
/* 99A8C 80098E8C 24040030 */  addiu      $a0, $zero, 0x30
/* 99A90 80098E90 0C0297B4 */  jal        func_800A5ED0
/* 99A94 80098E94 00002825 */   or        $a1, $zero, $zero
/* 99A98 80098E98 10000026 */  b          .L80098F34
/* 99A9C 80098E9C 00000000 */   nop
.L80098EA0:
/* 99AA0 80098EA0 8FAF0020 */  lw         $t7, 0x20($sp)
/* 99AA4 80098EA4 11E00003 */  beqz       $t7, .L80098EB4
/* 99AA8 80098EA8 00000000 */   nop
/* 99AAC 80098EAC 10000007 */  b          .L80098ECC
/* 99AB0 80098EB0 00000000 */   nop
.L80098EB4:
/* 99AB4 80098EB4 3C04800F */  lui        $a0, %hi(D_800ED600)
/* 99AB8 80098EB8 3C05800F */  lui        $a1, %hi(D_800ED614)
/* 99ABC 80098EBC 24A5D614 */  addiu      $a1, $a1, %lo(D_800ED614)
/* 99AC0 80098EC0 2484D600 */  addiu      $a0, $a0, %lo(D_800ED600)
/* 99AC4 80098EC4 0C026E74 */  jal        func_8009B9D0
/* 99AC8 80098EC8 2406003E */   addiu     $a2, $zero, 0x3e
.L80098ECC:
/* 99ACC 80098ECC 8FB80020 */  lw         $t8, 0x20($sp)
/* 99AD0 80098ED0 3319003F */  andi       $t9, $t8, 0x3f
/* 99AD4 80098ED4 13200007 */  beqz       $t9, .L80098EF4
/* 99AD8 80098ED8 00000000 */   nop
/* 99ADC 80098EDC 2404002F */  addiu      $a0, $zero, 0x2f
/* 99AE0 80098EE0 24050001 */  addiu      $a1, $zero, 1
/* 99AE4 80098EE4 0C0297B4 */  jal        func_800A5ED0
/* 99AE8 80098EE8 8FA60020 */   lw        $a2, 0x20($sp)
/* 99AEC 80098EEC 10000011 */  b          .L80098F34
/* 99AF0 80098EF0 00000000 */   nop
.L80098EF4:
/* 99AF4 80098EF4 0C0297A4 */  jal        func_800A5E90
/* 99AF8 80098EF8 00000000 */   nop
/* 99AFC 80098EFC AFA2001C */  sw         $v0, 0x1c($sp)
/* 99B00 80098F00 3C09800F */  lui        $t1, %hi(D_800EA5D4)
/* 99B04 80098F04 8D29A5D4 */  lw         $t1, %lo(D_800EA5D4)($t1)
/* 99B08 80098F08 8FA80020 */  lw         $t0, 0x20($sp)
/* 99B0C 80098F0C AD280004 */  sw         $t0, 4($t1)
/* 99B10 80098F10 3C0A800F */  lui        $t2, %hi(D_800EA5D4)
/* 99B14 80098F14 8D4AA5D4 */  lw         $t2, %lo(D_800EA5D4)($t2)
/* 99B18 80098F18 954B0000 */  lhu        $t3, ($t2)
/* 99B1C 80098F1C 356C0010 */  ori        $t4, $t3, 0x10
/* 99B20 80098F20 A54C0000 */  sh         $t4, ($t2)
/* 99B24 80098F24 0C0297AC */  jal        func_800A5EB0
/* 99B28 80098F28 8FA4001C */   lw        $a0, 0x1c($sp)
/* 99B2C 80098F2C 10000001 */  b          .L80098F34
/* 99B30 80098F30 00000000 */   nop
.L80098F34:
/* 99B34 80098F34 8FBF0014 */  lw         $ra, 0x14($sp)
/* 99B38 80098F38 27BD0020 */  addiu      $sp, $sp, 0x20
/* 99B3C 80098F3C 03E00008 */  jr         $ra
/* 99B40 80098F40 00000000 */   nop
/* 99B44 80098F44 00000000 */  nop
/* 99B48 80098F48 00000000 */  nop
/* 99B4C 80098F4C 00000000 */  nop
