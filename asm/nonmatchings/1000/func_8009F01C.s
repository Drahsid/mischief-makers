glabel func_8009F01C
/* 9FC1C 8009F01C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 9FC20 8009F020 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9FC24 8009F024 AFA40038 */  sw         $a0, 0x38($sp)
/* 9FC28 8009F028 AFA5003C */  sw         $a1, 0x3c($sp)
/* 9FC2C 8009F02C AFB00018 */  sw         $s0, 0x18($sp)
/* 9FC30 8009F030 240EFFFF */  addiu      $t6, $zero, -1
/* 9FC34 8009F034 AFAE0030 */  sw         $t6, 0x30($sp)
/* 9FC38 8009F038 8FAF0038 */  lw         $t7, 0x38($sp)
/* 9FC3C 8009F03C 8DF80010 */  lw         $t8, 0x10($t7)
/* 9FC40 8009F040 AFB80028 */  sw         $t8, 0x28($sp)
/* 9FC44 8009F044 8FB90038 */  lw         $t9, 0x38($sp)
/* 9FC48 8009F048 8F280004 */  lw         $t0, 4($t9)
/* 9FC4C 8009F04C 15000004 */  bnez       $t0, .L8009F060
/* 9FC50 8009F050 00000000 */   nop
/* 9FC54 8009F054 24040083 */  addiu      $a0, $zero, 0x83
/* 9FC58 8009F058 0C0297B4 */  jal        func_800A5ED0
/* 9FC5C 8009F05C 00002825 */   or        $a1, $zero, $zero
.L8009F060:
/* 9FC60 8009F060 AFA00034 */  sw         $zero, 0x34($sp)
.L8009F064:
/* 9FC64 8009F064 8FA90038 */  lw         $t1, 0x38($sp)
/* 9FC68 8009F068 8FAB0034 */  lw         $t3, 0x34($sp)
/* 9FC6C 8009F06C 8D2A0004 */  lw         $t2, 4($t1)
/* 9FC70 8009F070 016A6006 */  srlv       $t4, $t2, $t3
/* 9FC74 8009F074 318D0001 */  andi       $t5, $t4, 1
/* 9FC78 8009F078 11A0001E */  beqz       $t5, .L8009F0F4
/* 9FC7C 8009F07C 00000000 */   nop
/* 9FC80 8009F080 8FAE0038 */  lw         $t6, 0x38($sp)
/* 9FC84 8009F084 8DCF0014 */  lw         $t7, 0x14($t6)
/* 9FC88 8009F088 11E00009 */  beqz       $t7, .L8009F0B0
/* 9FC8C 8009F08C 00000000 */   nop
/* 9FC90 8009F090 8FB90034 */  lw         $t9, 0x34($sp)
/* 9FC94 8009F094 8FB80038 */  lw         $t8, 0x38($sp)
/* 9FC98 8009F098 8FAB0028 */  lw         $t3, 0x28($sp)
/* 9FC9C 8009F09C 00194080 */  sll        $t0, $t9, 2
/* 9FCA0 8009F0A0 03084821 */  addu       $t1, $t8, $t0
/* 9FCA4 8009F0A4 8D2A00B8 */  lw         $t2, 0xb8($t1)
/* 9FCA8 8009F0A8 014B6023 */  subu       $t4, $t2, $t3
/* 9FCAC 8009F0AC AD2C00B8 */  sw         $t4, 0xb8($t1)
.L8009F0B0:
/* 9FCB0 8009F0B0 8FAE0034 */  lw         $t6, 0x34($sp)
/* 9FCB4 8009F0B4 8FAD0038 */  lw         $t5, 0x38($sp)
/* 9FCB8 8009F0B8 8FA80030 */  lw         $t0, 0x30($sp)
/* 9FCBC 8009F0BC 000E7880 */  sll        $t7, $t6, 2
/* 9FCC0 8009F0C0 01AFC821 */  addu       $t9, $t5, $t7
/* 9FCC4 8009F0C4 8F3800B8 */  lw         $t8, 0xb8($t9)
/* 9FCC8 8009F0C8 0308082B */  sltu       $at, $t8, $t0
/* 9FCCC 8009F0CC 10200009 */  beqz       $at, .L8009F0F4
/* 9FCD0 8009F0D0 00000000 */   nop
/* 9FCD4 8009F0D4 8FAB0034 */  lw         $t3, 0x34($sp)
/* 9FCD8 8009F0D8 8FAA0038 */  lw         $t2, 0x38($sp)
/* 9FCDC 8009F0DC 000B6080 */  sll        $t4, $t3, 2
/* 9FCE0 8009F0E0 014C4821 */  addu       $t1, $t2, $t4
/* 9FCE4 8009F0E4 8D2E00B8 */  lw         $t6, 0xb8($t1)
/* 9FCE8 8009F0E8 AFAE0030 */  sw         $t6, 0x30($sp)
/* 9FCEC 8009F0EC 8FAD0034 */  lw         $t5, 0x34($sp)
/* 9FCF0 8009F0F0 AFAD002C */  sw         $t5, 0x2c($sp)
.L8009F0F4:
/* 9FCF4 8009F0F4 8FAF0034 */  lw         $t7, 0x34($sp)
/* 9FCF8 8009F0F8 25F90001 */  addiu      $t9, $t7, 1
/* 9FCFC 8009F0FC 2F210010 */  sltiu      $at, $t9, 0x10
/* 9FD00 8009F100 1420FFD8 */  bnez       $at, .L8009F064
/* 9FD04 8009F104 AFB90034 */   sw        $t9, 0x34($sp)
/* 9FD08 8009F108 8FA40038 */  lw         $a0, 0x38($sp)
/* 9FD0C 8009F10C 8FA5002C */  lw         $a1, 0x2c($sp)
/* 9FD10 8009F110 0C027CA2 */  jal        func_8009F288
/* 9FD14 8009F114 8FA6003C */   lw        $a2, 0x3c($sp)
/* 9FD18 8009F118 8FB80030 */  lw         $t8, 0x30($sp)
/* 9FD1C 8009F11C 8FA8003C */  lw         $t0, 0x3c($sp)
/* 9FD20 8009F120 AD180004 */  sw         $t8, 4($t0)
/* 9FD24 8009F124 8FAB0038 */  lw         $t3, 0x38($sp)
/* 9FD28 8009F128 8FAC0030 */  lw         $t4, 0x30($sp)
/* 9FD2C 8009F12C 8D6A000C */  lw         $t2, 0xc($t3)
/* 9FD30 8009F130 014C4821 */  addu       $t1, $t2, $t4
/* 9FD34 8009F134 AD69000C */  sw         $t1, 0xc($t3)
/* 9FD38 8009F138 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9FD3C 8009F13C 8FAD0038 */  lw         $t5, 0x38($sp)
/* 9FD40 8009F140 ADAE0010 */  sw         $t6, 0x10($t5)
/* 9FD44 8009F144 8FAF003C */  lw         $t7, 0x3c($sp)
/* 9FD48 8009F148 24010012 */  addiu      $at, $zero, 0x12
/* 9FD4C 8009F14C 85F90000 */  lh         $t9, ($t7)
/* 9FD50 8009F150 1321000C */  beq        $t9, $at, .L8009F184
/* 9FD54 8009F154 00000000 */   nop
/* 9FD58 8009F158 8FA40038 */  lw         $a0, 0x38($sp)
/* 9FD5C 8009F15C 0C027F42 */  jal        func_8009FD08
/* 9FD60 8009F160 8FA5002C */   lw        $a1, 0x2c($sp)
/* 9FD64 8009F164 8FA8002C */  lw         $t0, 0x2c($sp)
/* 9FD68 8009F168 8FB80038 */  lw         $t8, 0x38($sp)
/* 9FD6C 8009F16C 00408025 */  or         $s0, $v0, $zero
/* 9FD70 8009F170 00085080 */  sll        $t2, $t0, 2
/* 9FD74 8009F174 030A6021 */  addu       $t4, $t8, $t2
/* 9FD78 8009F178 8D8900B8 */  lw         $t1, 0xb8($t4)
/* 9FD7C 8009F17C 01305821 */  addu       $t3, $t1, $s0
/* 9FD80 8009F180 AD8B00B8 */  sw         $t3, 0xb8($t4)
.L8009F184:
/* 9FD84 8009F184 8FAD0038 */  lw         $t5, 0x38($sp)
/* 9FD88 8009F188 240E0001 */  addiu      $t6, $zero, 1
/* 9FD8C 8009F18C ADAE0014 */  sw         $t6, 0x14($t5)
/* 9FD90 8009F190 10000001 */  b          .L8009F198
/* 9FD94 8009F194 00000000 */   nop
.L8009F198:
/* 9FD98 8009F198 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9FD9C 8009F19C 8FB00018 */  lw         $s0, 0x18($sp)
/* 9FDA0 8009F1A0 27BD0038 */  addiu      $sp, $sp, 0x38
/* 9FDA4 8009F1A4 03E00008 */  jr         $ra
/* 9FDA8 8009F1A8 00000000 */   nop
