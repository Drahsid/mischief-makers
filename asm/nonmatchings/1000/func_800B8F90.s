glabel func_800B8F90
/* B9B90 800B8F90 27BDFF90 */  addiu      $sp, $sp, -0x70
/* B9B94 800B8F94 AFBF0024 */  sw         $ra, 0x24($sp)
/* B9B98 800B8F98 AFA40070 */  sw         $a0, 0x70($sp)
/* B9B9C 800B8F9C AFA50074 */  sw         $a1, 0x74($sp)
/* B9BA0 800B8FA0 AFB00020 */  sw         $s0, 0x20($sp)
/* B9BA4 800B8FA4 93AE0077 */  lbu        $t6, 0x77($sp)
/* B9BA8 800B8FA8 24010058 */  addiu      $at, $zero, 0x58
/* B9BAC 800B8FAC 15C10005 */  bne        $t6, $at, .L800B8FC4
/* B9BB0 800B8FB0 00000000 */   nop
/* B9BB4 800B8FB4 3C0F800F */  lui        $t7, %hi(D_800EABC4)
/* B9BB8 800B8FB8 25EFABC4 */  addiu      $t7, $t7, %lo(D_800EABC4)
/* B9BBC 800B8FBC 10000004 */  b          .L800B8FD0
/* B9BC0 800B8FC0 AFAF0054 */   sw        $t7, 0x54($sp)
.L800B8FC4:
/* B9BC4 800B8FC4 3C18800F */  lui        $t8, %hi(D_800EABB0)
/* B9BC8 800B8FC8 2718ABB0 */  addiu      $t8, $t8, %lo(D_800EABB0)
/* B9BCC 800B8FCC AFB80054 */  sw         $t8, 0x54($sp)
.L800B8FD0:
/* B9BD0 800B8FD0 93B90077 */  lbu        $t9, 0x77($sp)
/* B9BD4 800B8FD4 2401006F */  addiu      $at, $zero, 0x6f
/* B9BD8 800B8FD8 17210004 */  bne        $t9, $at, .L800B8FEC
/* B9BDC 800B8FDC 00000000 */   nop
/* B9BE0 800B8FE0 24080008 */  addiu      $t0, $zero, 8
/* B9BE4 800B8FE4 1000000C */  b          .L800B9018
/* B9BE8 800B8FE8 AFA80050 */   sw        $t0, 0x50($sp)
.L800B8FEC:
/* B9BEC 800B8FEC 93A90077 */  lbu        $t1, 0x77($sp)
/* B9BF0 800B8FF0 24010078 */  addiu      $at, $zero, 0x78
/* B9BF4 800B8FF4 11210006 */  beq        $t1, $at, .L800B9010
/* B9BF8 800B8FF8 00000000 */   nop
/* B9BFC 800B8FFC 24010058 */  addiu      $at, $zero, 0x58
/* B9C00 800B9000 11210003 */  beq        $t1, $at, .L800B9010
/* B9C04 800B9004 00000000 */   nop
/* B9C08 800B9008 10000002 */  b          .L800B9014
/* B9C0C 800B900C 2410000A */   addiu     $s0, $zero, 0xa
.L800B9010:
/* B9C10 800B9010 24100010 */  addiu      $s0, $zero, 0x10
.L800B9014:
/* B9C14 800B9014 AFB00050 */  sw         $s0, 0x50($sp)
.L800B9018:
/* B9C18 800B9018 240A0018 */  addiu      $t2, $zero, 0x18
/* B9C1C 800B901C AFAA004C */  sw         $t2, 0x4c($sp)
/* B9C20 800B9020 8FAB0070 */  lw         $t3, 0x70($sp)
/* B9C24 800B9024 8D6C0000 */  lw         $t4, ($t3)
/* B9C28 800B9028 8D6D0004 */  lw         $t5, 4($t3)
/* B9C2C 800B902C AFAC0040 */  sw         $t4, 0x40($sp)
/* B9C30 800B9030 AFAD0044 */  sw         $t5, 0x44($sp)
/* B9C34 800B9034 93AE0077 */  lbu        $t6, 0x77($sp)
/* B9C38 800B9038 24010064 */  addiu      $at, $zero, 0x64
/* B9C3C 800B903C 11C10004 */  beq        $t6, $at, .L800B9050
/* B9C40 800B9040 00000000 */   nop
/* B9C44 800B9044 24010069 */  addiu      $at, $zero, 0x69
/* B9C48 800B9048 15C10012 */  bne        $t6, $at, .L800B9094
/* B9C4C 800B904C 00000000 */   nop
.L800B9050:
/* B9C50 800B9050 8FAF0070 */  lw         $t7, 0x70($sp)
/* B9C54 800B9054 8DF80000 */  lw         $t8, ($t7)
/* B9C58 800B9058 8DF90004 */  lw         $t9, 4($t7)
/* B9C5C 800B905C 1F00000D */  bgtz       $t8, .L800B9094
/* B9C60 800B9060 00000000 */   nop
/* B9C64 800B9064 07000003 */  bltz       $t8, .L800B9074
/* B9C68 800B9068 00000000 */   nop
/* B9C6C 800B906C 10000009 */  b          .L800B9094
/* B9C70 800B9070 00000000 */   nop
.L800B9074:
/* B9C74 800B9074 8FA80040 */  lw         $t0, 0x40($sp)
/* B9C78 800B9078 8FA90044 */  lw         $t1, 0x44($sp)
/* B9C7C 800B907C 01005027 */  not        $t2, $t0
/* B9C80 800B9080 2D210001 */  sltiu      $at, $t1, 1
/* B9C84 800B9084 01415021 */  addu       $t2, $t2, $at
/* B9C88 800B9088 00095823 */  negu       $t3, $t1
/* B9C8C 800B908C AFAB0044 */  sw         $t3, 0x44($sp)
/* B9C90 800B9090 AFAA0040 */  sw         $t2, 0x40($sp)
.L800B9094:
/* B9C94 800B9094 8FAC0040 */  lw         $t4, 0x40($sp)
/* B9C98 800B9098 8FAD0044 */  lw         $t5, 0x44($sp)
/* B9C9C 800B909C 15800007 */  bnez       $t4, .L800B90BC
/* B9CA0 800B90A0 00000000 */   nop
/* B9CA4 800B90A4 15A00005 */  bnez       $t5, .L800B90BC
/* B9CA8 800B90A8 00000000 */   nop
/* B9CAC 800B90AC 8FAE0070 */  lw         $t6, 0x70($sp)
/* B9CB0 800B90B0 8DCF0024 */  lw         $t7, 0x24($t6)
/* B9CB4 800B90B4 11E00010 */  beqz       $t7, .L800B90F8
/* B9CB8 800B90B8 00000000 */   nop
.L800B90BC:
/* B9CBC 800B90BC 8FB0004C */  lw         $s0, 0x4c($sp)
/* B9CC0 800B90C0 8FB80050 */  lw         $t8, 0x50($sp)
/* B9CC4 800B90C4 8FA40040 */  lw         $a0, 0x40($sp)
/* B9CC8 800B90C8 2610FFFF */  addiu      $s0, $s0, -1
/* B9CCC 800B90CC AFB0004C */  sw         $s0, 0x4c($sp)
/* B9CD0 800B90D0 8FA50044 */  lw         $a1, 0x44($sp)
/* B9CD4 800B90D4 03003825 */  or         $a3, $t8, $zero
/* B9CD8 800B90D8 0C0290AF */  jal        func_800A42BC
/* B9CDC 800B90DC 001837C3 */   sra       $a2, $t8, 0x1f
/* B9CE0 800B90E0 8FA80054 */  lw         $t0, 0x54($sp)
/* B9CE4 800B90E4 0060C825 */  or         $t9, $v1, $zero
/* B9CE8 800B90E8 03B05821 */  addu       $t3, $sp, $s0
/* B9CEC 800B90EC 03284821 */  addu       $t1, $t9, $t0
/* B9CF0 800B90F0 912A0000 */  lbu        $t2, ($t1)
/* B9CF4 800B90F4 A16A0058 */  sb         $t2, 0x58($t3)
.L800B90F8:
/* B9CF8 800B90F8 8FAC0050 */  lw         $t4, 0x50($sp)
/* B9CFC 800B90FC 8FA40040 */  lw         $a0, 0x40($sp)
/* B9D00 800B9100 8FA50044 */  lw         $a1, 0x44($sp)
/* B9D04 800B9104 01803825 */  or         $a3, $t4, $zero
/* B9D08 800B9108 0C0290C2 */  jal        func_800A4308
/* B9D0C 800B910C 000C37C3 */   sra       $a2, $t4, 0x1f
/* B9D10 800B9110 8FAD0070 */  lw         $t5, 0x70($sp)
/* B9D14 800B9114 ADA20000 */  sw         $v0, ($t5)
/* B9D18 800B9118 ADA30004 */  sw         $v1, 4($t5)
/* B9D1C 800B911C 8FAE0070 */  lw         $t6, 0x70($sp)
/* B9D20 800B9120 8DD80000 */  lw         $t8, ($t6)
/* B9D24 800B9124 8DD90004 */  lw         $t9, 4($t6)
/* B9D28 800B9128 0700002E */  bltz       $t8, .L800B91E4
/* B9D2C 800B912C 00000000 */   nop
/* B9D30 800B9130 1F000003 */  bgtz       $t8, .L800B9140
/* B9D34 800B9134 00000000 */   nop
/* B9D38 800B9138 1320002A */  beqz       $t9, .L800B91E4
/* B9D3C 800B913C 00000000 */   nop
.L800B9140:
/* B9D40 800B9140 8FAF004C */  lw         $t7, 0x4c($sp)
/* B9D44 800B9144 19E00027 */  blez       $t7, .L800B91E4
/* B9D48 800B9148 00000000 */   nop
.L800B914C:
/* B9D4C 800B914C 8FA80070 */  lw         $t0, 0x70($sp)
/* B9D50 800B9150 8FA90050 */  lw         $t1, 0x50($sp)
/* B9D54 800B9154 27A40030 */  addiu      $a0, $sp, 0x30
/* B9D58 800B9158 8D060000 */  lw         $a2, ($t0)
/* B9D5C 800B915C 8D070004 */  lw         $a3, 4($t0)
/* B9D60 800B9160 01205825 */  or         $t3, $t1, $zero
/* B9D64 800B9164 000957C3 */  sra        $t2, $t1, 0x1f
/* B9D68 800B9168 AFAA0010 */  sw         $t2, 0x10($sp)
/* B9D6C 800B916C 0C02EA25 */  jal        func_800BA894
/* B9D70 800B9170 AFAB0014 */   sw        $t3, 0x14($sp)
/* B9D74 800B9174 8FAE0070 */  lw         $t6, 0x70($sp)
/* B9D78 800B9178 8FAC0030 */  lw         $t4, 0x30($sp)
/* B9D7C 800B917C 8FAD0034 */  lw         $t5, 0x34($sp)
/* B9D80 800B9180 ADCC0000 */  sw         $t4, ($t6)
/* B9D84 800B9184 ADCD0004 */  sw         $t5, 4($t6)
/* B9D88 800B9188 8FB0004C */  lw         $s0, 0x4c($sp)
/* B9D8C 800B918C 8FB9003C */  lw         $t9, 0x3c($sp)
/* B9D90 800B9190 8FA80054 */  lw         $t0, 0x54($sp)
/* B9D94 800B9194 2610FFFF */  addiu      $s0, $s0, -1
/* B9D98 800B9198 03207825 */  or         $t7, $t9, $zero
/* B9D9C 800B919C AFB0004C */  sw         $s0, 0x4c($sp)
/* B9DA0 800B91A0 01E84821 */  addu       $t1, $t7, $t0
/* B9DA4 800B91A4 912A0000 */  lbu        $t2, ($t1)
/* B9DA8 800B91A8 03B05821 */  addu       $t3, $sp, $s0
/* B9DAC 800B91AC 8FB80038 */  lw         $t8, 0x38($sp)
/* B9DB0 800B91B0 A16A0058 */  sb         $t2, 0x58($t3)
/* B9DB4 800B91B4 8FAC0070 */  lw         $t4, 0x70($sp)
/* B9DB8 800B91B8 8D8E0000 */  lw         $t6, ($t4)
/* B9DBC 800B91BC 8D8F0004 */  lw         $t7, 4($t4)
/* B9DC0 800B91C0 05C00008 */  bltz       $t6, .L800B91E4
/* B9DC4 800B91C4 00000000 */   nop
/* B9DC8 800B91C8 1DC00003 */  bgtz       $t6, .L800B91D8
/* B9DCC 800B91CC 00000000 */   nop
/* B9DD0 800B91D0 11E00004 */  beqz       $t7, .L800B91E4
/* B9DD4 800B91D4 00000000 */   nop
.L800B91D8:
/* B9DD8 800B91D8 8FAD004C */  lw         $t5, 0x4c($sp)
/* B9DDC 800B91DC 1DA0FFDB */  bgtz       $t5, .L800B914C
/* B9DE0 800B91E0 00000000 */   nop
.L800B91E4:
/* B9DE4 800B91E4 8FB8004C */  lw         $t8, 0x4c($sp)
/* B9DE8 800B91E8 8FA90070 */  lw         $t1, 0x70($sp)
/* B9DEC 800B91EC 24190018 */  addiu      $t9, $zero, 0x18
/* B9DF0 800B91F0 03384023 */  subu       $t0, $t9, $t8
/* B9DF4 800B91F4 AD280014 */  sw         $t0, 0x14($t1)
/* B9DF8 800B91F8 8FAA0070 */  lw         $t2, 0x70($sp)
/* B9DFC 800B91FC 8FAB004C */  lw         $t3, 0x4c($sp)
/* B9E00 800B9200 27AC0058 */  addiu      $t4, $sp, 0x58
/* B9E04 800B9204 8D440008 */  lw         $a0, 8($t2)
/* B9E08 800B9208 8D460014 */  lw         $a2, 0x14($t2)
/* B9E0C 800B920C 0C029735 */  jal        func_800A5CD4
/* B9E10 800B9210 016C2821 */   addu      $a1, $t3, $t4
/* B9E14 800B9214 8FAE0070 */  lw         $t6, 0x70($sp)
/* B9E18 800B9218 8DCF0014 */  lw         $t7, 0x14($t6)
/* B9E1C 800B921C 8DCD0024 */  lw         $t5, 0x24($t6)
/* B9E20 800B9220 01ED082A */  slt        $at, $t7, $t5
/* B9E24 800B9224 10200006 */  beqz       $at, .L800B9240
/* B9E28 800B9228 00000000 */   nop
/* B9E2C 800B922C 8FB90070 */  lw         $t9, 0x70($sp)
/* B9E30 800B9230 8F380024 */  lw         $t8, 0x24($t9)
/* B9E34 800B9234 8F280014 */  lw         $t0, 0x14($t9)
/* B9E38 800B9238 03084823 */  subu       $t1, $t8, $t0
/* B9E3C 800B923C AF290010 */  sw         $t1, 0x10($t9)
.L800B9240:
/* B9E40 800B9240 8FAB0070 */  lw         $t3, 0x70($sp)
/* B9E44 800B9244 8D6C0024 */  lw         $t4, 0x24($t3)
/* B9E48 800B9248 05810014 */  bgez       $t4, .L800B929C
/* B9E4C 800B924C 00000000 */   nop
/* B9E50 800B9250 8D6A0030 */  lw         $t2, 0x30($t3)
/* B9E54 800B9254 24010010 */  addiu      $at, $zero, 0x10
/* B9E58 800B9258 314E0014 */  andi       $t6, $t2, 0x14
/* B9E5C 800B925C 15C1000F */  bne        $t6, $at, .L800B929C
/* B9E60 800B9260 00000000 */   nop
/* B9E64 800B9264 8D6F0028 */  lw         $t7, 0x28($t3)
/* B9E68 800B9268 8D6D000C */  lw         $t5, 0xc($t3)
/* B9E6C 800B926C 8D680010 */  lw         $t0, 0x10($t3)
/* B9E70 800B9270 8D790014 */  lw         $t9, 0x14($t3)
/* B9E74 800B9274 01EDC023 */  subu       $t8, $t7, $t5
/* B9E78 800B9278 03084823 */  subu       $t1, $t8, $t0
/* B9E7C 800B927C 01396023 */  subu       $t4, $t1, $t9
/* B9E80 800B9280 19800006 */  blez       $t4, .L800B929C
/* B9E84 800B9284 AFAC004C */   sw        $t4, 0x4c($sp)
/* B9E88 800B9288 8FAA0070 */  lw         $t2, 0x70($sp)
/* B9E8C 800B928C 8FAF004C */  lw         $t7, 0x4c($sp)
/* B9E90 800B9290 8D4E0010 */  lw         $t6, 0x10($t2)
/* B9E94 800B9294 01CF6821 */  addu       $t5, $t6, $t7
/* B9E98 800B9298 AD4D0010 */  sw         $t5, 0x10($t2)
.L800B929C:
/* B9E9C 800B929C 10000001 */  b          .L800B92A4
/* B9EA0 800B92A0 00000000 */   nop
.L800B92A4:
/* B9EA4 800B92A4 8FBF0024 */  lw         $ra, 0x24($sp)
/* B9EA8 800B92A8 8FB00020 */  lw         $s0, 0x20($sp)
/* B9EAC 800B92AC 27BD0070 */  addiu      $sp, $sp, 0x70
/* B9EB0 800B92B0 03E00008 */  jr         $ra
/* B9EB4 800B92B4 00000000 */   nop
/* B9EB8 800B92B8 00000000 */  nop
/* B9EBC 800B92BC 00000000 */  nop
