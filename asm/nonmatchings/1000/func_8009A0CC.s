glabel func_8009A0CC
/* 9ACCC 8009A0CC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9ACD0 8009A0D0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9ACD4 8009A0D4 AFA40030 */  sw         $a0, 0x30($sp)
/* 9ACD8 8009A0D8 AFA50034 */  sw         $a1, 0x34($sp)
/* 9ACDC 8009A0DC AFA60038 */  sw         $a2, 0x38($sp)
/* 9ACE0 8009A0E0 AFB00018 */  sw         $s0, 0x18($sp)
/* 9ACE4 8009A0E4 AFA00028 */  sw         $zero, 0x28($sp)
/* 9ACE8 8009A0E8 8FAE0034 */  lw         $t6, 0x34($sp)
/* 9ACEC 8009A0EC 8FAF0030 */  lw         $t7, 0x30($sp)
/* 9ACF0 8009A0F0 ADEE0000 */  sw         $t6, ($t7)
/* 9ACF4 8009A0F4 27B80034 */  addiu      $t8, $sp, 0x34
/* 9ACF8 8009A0F8 AFB8002C */  sw         $t8, 0x2c($sp)
/* 9ACFC 8009A0FC 8FB90028 */  lw         $t9, 0x28($sp)
/* 9AD00 8009A100 2B210004 */  slti       $at, $t9, 4
/* 9AD04 8009A104 10200010 */  beqz       $at, .L8009A148
/* 9AD08 8009A108 00000000 */   nop
.L8009A10C:
/* 9AD0C 8009A10C 8FA90028 */  lw         $t1, 0x28($sp)
/* 9AD10 8009A110 8FA8002C */  lw         $t0, 0x2c($sp)
/* 9AD14 8009A114 240A0004 */  addiu      $t2, $zero, 4
/* 9AD18 8009A118 24060008 */  addiu      $a2, $zero, 8
/* 9AD1C 8009A11C 01492823 */  subu       $a1, $t2, $t1
/* 9AD20 8009A120 0C02A254 */  jal        func_800A8950
/* 9AD24 8009A124 01092021 */   addu      $a0, $t0, $t1
/* 9AD28 8009A128 8FAB0028 */  lw         $t3, 0x28($sp)
/* 9AD2C 8009A12C 00408025 */  or         $s0, $v0, $zero
/* 9AD30 8009A130 01706021 */  addu       $t4, $t3, $s0
/* 9AD34 8009A134 AFAC0028 */  sw         $t4, 0x28($sp)
/* 9AD38 8009A138 8FAD0028 */  lw         $t5, 0x28($sp)
/* 9AD3C 8009A13C 29A10004 */  slti       $at, $t5, 4
/* 9AD40 8009A140 1420FFF2 */  bnez       $at, .L8009A10C
/* 9AD44 8009A144 00000000 */   nop
.L8009A148:
/* 9AD48 8009A148 8FA40030 */  lw         $a0, 0x30($sp)
/* 9AD4C 8009A14C 8FA50034 */  lw         $a1, 0x34($sp)
/* 9AD50 8009A150 0C026808 */  jal        func_8009A020
/* 9AD54 8009A154 8FA60038 */   lw        $a2, 0x38($sp)
/* 9AD58 8009A158 0C02A3A8 */  jal        func_800A8EA0
/* 9AD5C 8009A15C 00000000 */   nop
/* 9AD60 8009A160 10000001 */  b          .L8009A168
/* 9AD64 8009A164 00000000 */   nop
.L8009A168:
/* 9AD68 8009A168 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9AD6C 8009A16C 8FB00018 */  lw         $s0, 0x18($sp)
/* 9AD70 8009A170 27BD0030 */  addiu      $sp, $sp, 0x30
/* 9AD74 8009A174 03E00008 */  jr         $ra
/* 9AD78 8009A178 00000000 */   nop
