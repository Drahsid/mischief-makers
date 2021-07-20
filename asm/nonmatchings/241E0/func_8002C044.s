glabel func_8002C044
/* 2CC44 8002C044 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 2CC48 8002C048 AFB40024 */  sw         $s4, 0x24($sp)
/* 2CC4C 8002C04C AFB2001C */  sw         $s2, 0x1c($sp)
/* 2CC50 8002C050 AFB50028 */  sw         $s5, 0x28($sp)
/* 2CC54 8002C054 AFB30020 */  sw         $s3, 0x20($sp)
/* 2CC58 8002C058 AFB10018 */  sw         $s1, 0x18($sp)
/* 2CC5C 8002C05C AFB00014 */  sw         $s0, 0x14($sp)
/* 2CC60 8002C060 3C12800D */  lui        $s2, %hi(D_800D2230)
/* 2CC64 8002C064 3C14800F */  lui        $s4, %hi(gActors)
/* 2CC68 8002C068 AFBF002C */  sw         $ra, 0x2c($sp)
/* 2CC6C 8002C06C 00008025 */  or         $s0, $zero, $zero
/* 2CC70 8002C070 2694F510 */  addiu      $s4, $s4, %lo(gActors)
/* 2CC74 8002C074 26522230 */  addiu      $s2, $s2, %lo(D_800D2230)
/* 2CC78 8002C078 24110030 */  addiu      $s1, $zero, 0x30
/* 2CC7C 8002C07C 24130402 */  addiu      $s3, $zero, 0x402
/* 2CC80 8002C080 24150198 */  addiu      $s5, $zero, 0x198
.L8002C084:
/* 2CC84 8002C084 02350019 */  multu      $s1, $s5
/* 2CC88 8002C088 00007012 */  mflo       $t6
/* 2CC8C 8002C08C 028E1021 */  addu       $v0, $s4, $t6
/* 2CC90 8002C090 8C4F0080 */  lw         $t7, 0x80($v0)
/* 2CC94 8002C094 00000000 */  nop
/* 2CC98 8002C098 31F80402 */  andi       $t8, $t7, 0x402
/* 2CC9C 8002C09C 16780010 */  bne        $s3, $t8, .L8002C0E0
/* 2CCA0 8002C0A0 00000000 */   nop
/* 2CCA4 8002C0A4 845900E0 */  lh         $t9, 0xe0($v0)
/* 2CCA8 8002C0A8 3224FFFF */  andi       $a0, $s1, 0xffff
/* 2CCAC 8002C0AC 1B20000C */  blez       $t9, .L8002C0E0
/* 2CCB0 8002C0B0 00000000 */   nop
/* 2CCB4 8002C0B4 0C00A23B */  jal        func_800288EC
/* 2CCB8 8002C0B8 24050020 */   addiu     $a1, $zero, 0x20
/* 2CCBC 8002C0BC 14400008 */  bnez       $v0, .L8002C0E0
/* 2CCC0 8002C0C0 00104040 */   sll       $t0, $s0, 1
/* 2CCC4 8002C0C4 26100001 */  addiu      $s0, $s0, 1
/* 2CCC8 8002C0C8 320AFFFF */  andi       $t2, $s0, 0xffff
/* 2CCCC 8002C0CC 02484821 */  addu       $t1, $s2, $t0
/* 2CCD0 8002C0D0 29410020 */  slti       $at, $t2, 0x20
/* 2CCD4 8002C0D4 A5310000 */  sh         $s1, ($t1)
/* 2CCD8 8002C0D8 10200010 */  beqz       $at, .L8002C11C
/* 2CCDC 8002C0DC 01408025 */   or        $s0, $t2, $zero
.L8002C0E0:
/* 2CCE0 8002C0E0 26310001 */  addiu      $s1, $s1, 1
/* 2CCE4 8002C0E4 322BFFFF */  andi       $t3, $s1, 0xffff
/* 2CCE8 8002C0E8 29610090 */  slti       $at, $t3, 0x90
/* 2CCEC 8002C0EC 1420FFE5 */  bnez       $at, .L8002C084
/* 2CCF0 8002C0F0 01608825 */   or        $s1, $t3, $zero
/* 2CCF4 8002C0F4 2A010020 */  slti       $at, $s0, 0x20
/* 2CCF8 8002C0F8 10200008 */  beqz       $at, .L8002C11C
.L8002C0FC:
/* 2CCFC 8002C0FC 00106040 */   sll       $t4, $s0, 1
/* 2CD00 8002C100 26100001 */  addiu      $s0, $s0, 1
/* 2CD04 8002C104 320EFFFF */  andi       $t6, $s0, 0xffff
/* 2CD08 8002C108 29C10020 */  slti       $at, $t6, 0x20
/* 2CD0C 8002C10C 024C6821 */  addu       $t5, $s2, $t4
/* 2CD10 8002C110 01C08025 */  or         $s0, $t6, $zero
/* 2CD14 8002C114 1420FFF9 */  bnez       $at, .L8002C0FC
/* 2CD18 8002C118 A5A00000 */   sh        $zero, ($t5)
.L8002C11C:
/* 2CD1C 8002C11C 8FBF002C */  lw         $ra, 0x2c($sp)
/* 2CD20 8002C120 8FB00014 */  lw         $s0, 0x14($sp)
/* 2CD24 8002C124 8FB10018 */  lw         $s1, 0x18($sp)
/* 2CD28 8002C128 8FB2001C */  lw         $s2, 0x1c($sp)
/* 2CD2C 8002C12C 8FB30020 */  lw         $s3, 0x20($sp)
/* 2CD30 8002C130 8FB40024 */  lw         $s4, 0x24($sp)
/* 2CD34 8002C134 8FB50028 */  lw         $s5, 0x28($sp)
/* 2CD38 8002C138 03E00008 */  jr         $ra
/* 2CD3C 8002C13C 27BD0030 */   addiu     $sp, $sp, 0x30
