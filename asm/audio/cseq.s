.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alCSeqNew
/* 9FA90 8009EE90 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9FA94 8009EE94 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9FA98 8009EE98 AFA40028 */  sw         $a0, 0x28($sp)
/* 9FA9C 8009EE9C AFA5002C */  sw         $a1, 0x2c($sp)
/* 9FAA0 8009EEA0 8FAE002C */  lw         $t6, 0x2c($sp)
/* 9FAA4 8009EEA4 8FAF0028 */  lw         $t7, 0x28($sp)
/* 9FAA8 8009EEA8 ADEE0000 */  sw         $t6, ($t7)
/* 9FAAC 8009EEAC 8FB80028 */  lw         $t8, 0x28($sp)
/* 9FAB0 8009EEB0 AF000004 */  sw         $zero, 4($t8)
/* 9FAB4 8009EEB4 8FB90028 */  lw         $t9, 0x28($sp)
/* 9FAB8 8009EEB8 AF200010 */  sw         $zero, 0x10($t9)
/* 9FABC 8009EEBC 8FA80028 */  lw         $t0, 0x28($sp)
/* 9FAC0 8009EEC0 AD00000C */  sw         $zero, 0xc($t0)
/* 9FAC4 8009EEC4 8FAA0028 */  lw         $t2, 0x28($sp)
/* 9FAC8 8009EEC8 24090001 */  addiu      $t1, $zero, 1
/* 9FACC 8009EECC AD490014 */  sw         $t1, 0x14($t2)
/* 9FAD0 8009EED0 AFA00024 */  sw         $zero, 0x24($sp)
.L8009EED4:
/* 9FAD4 8009EED4 8FAB0028 */  lw         $t3, 0x28($sp)
/* 9FAD8 8009EED8 8FAC0024 */  lw         $t4, 0x24($sp)
/* 9FADC 8009EEDC 016C6821 */  addu       $t5, $t3, $t4
/* 9FAE0 8009EEE0 A1A000A8 */  sb         $zero, 0xa8($t5)
/* 9FAE4 8009EEE4 8FAF0024 */  lw         $t7, 0x24($sp)
/* 9FAE8 8009EEE8 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9FAEC 8009EEEC 000FC080 */  sll        $t8, $t7, 2
/* 9FAF0 8009EEF0 01D8C821 */  addu       $t9, $t6, $t8
/* 9FAF4 8009EEF4 AF200058 */  sw         $zero, 0x58($t9)
/* 9FAF8 8009EEF8 8FA80028 */  lw         $t0, 0x28($sp)
/* 9FAFC 8009EEFC 8FA90024 */  lw         $t1, 0x24($sp)
/* 9FB00 8009EF00 01095021 */  addu       $t2, $t0, $t1
/* 9FB04 8009EF04 A1400098 */  sb         $zero, 0x98($t2)
/* 9FB08 8009EF08 8FAB0028 */  lw         $t3, 0x28($sp)
/* 9FB0C 8009EF0C 8FAD0024 */  lw         $t5, 0x24($sp)
/* 9FB10 8009EF10 8D6C0000 */  lw         $t4, ($t3)
/* 9FB14 8009EF14 000D7880 */  sll        $t7, $t5, 2
/* 9FB18 8009EF18 018F7021 */  addu       $t6, $t4, $t7
/* 9FB1C 8009EF1C 8DD80000 */  lw         $t8, ($t6)
/* 9FB20 8009EF20 AFB80020 */  sw         $t8, 0x20($sp)
/* 9FB24 8009EF24 8FB90020 */  lw         $t9, 0x20($sp)
/* 9FB28 8009EF28 1320001B */  beqz       $t9, .L8009EF98
/* 9FB2C 8009EF2C 00000000 */   nop
/* 9FB30 8009EF30 8FA80024 */  lw         $t0, 0x24($sp)
/* 9FB34 8009EF34 24090001 */  addiu      $t1, $zero, 1
/* 9FB38 8009EF38 01095004 */  sllv       $t2, $t1, $t0
/* 9FB3C 8009EF3C AFAA001C */  sw         $t2, 0x1c($sp)
/* 9FB40 8009EF40 8FAB0028 */  lw         $t3, 0x28($sp)
/* 9FB44 8009EF44 8FAC001C */  lw         $t4, 0x1c($sp)
/* 9FB48 8009EF48 8D6D0004 */  lw         $t5, 4($t3)
/* 9FB4C 8009EF4C 01AC7825 */  or         $t7, $t5, $t4
/* 9FB50 8009EF50 AD6F0004 */  sw         $t7, 4($t3)
/* 9FB54 8009EF54 8FA80024 */  lw         $t0, 0x24($sp)
/* 9FB58 8009EF58 8FAE002C */  lw         $t6, 0x2c($sp)
/* 9FB5C 8009EF5C 8FB80020 */  lw         $t8, 0x20($sp)
/* 9FB60 8009EF60 8FA90028 */  lw         $t1, 0x28($sp)
/* 9FB64 8009EF64 00085080 */  sll        $t2, $t0, 2
/* 9FB68 8009EF68 01D8C821 */  addu       $t9, $t6, $t8
/* 9FB6C 8009EF6C 012A6821 */  addu       $t5, $t1, $t2
/* 9FB70 8009EF70 ADB90018 */  sw         $t9, 0x18($t5)
/* 9FB74 8009EF74 8FA40028 */  lw         $a0, 0x28($sp)
/* 9FB78 8009EF78 0C027F42 */  jal        __readVarLen
/* 9FB7C 8009EF7C 8FA50024 */   lw        $a1, 0x24($sp)
/* 9FB80 8009EF80 8FAF0024 */  lw         $t7, 0x24($sp)
/* 9FB84 8009EF84 8FAC0028 */  lw         $t4, 0x28($sp)
/* 9FB88 8009EF88 000F5880 */  sll        $t3, $t7, 2
/* 9FB8C 8009EF8C 018B7021 */  addu       $t6, $t4, $t3
/* 9FB90 8009EF90 10000006 */  b          .L8009EFAC
/* 9FB94 8009EF94 ADC200B8 */   sw        $v0, 0xb8($t6)
.L8009EF98:
/* 9FB98 8009EF98 8FA80024 */  lw         $t0, 0x24($sp)
/* 9FB9C 8009EF9C 8FB80028 */  lw         $t8, 0x28($sp)
/* 9FBA0 8009EFA0 00084880 */  sll        $t1, $t0, 2
/* 9FBA4 8009EFA4 03095021 */  addu       $t2, $t8, $t1
/* 9FBA8 8009EFA8 AD400018 */  sw         $zero, 0x18($t2)
.L8009EFAC:
/* 9FBAC 8009EFAC 8FB90024 */  lw         $t9, 0x24($sp)
/* 9FBB0 8009EFB0 272D0001 */  addiu      $t5, $t9, 1
/* 9FBB4 8009EFB4 2DA10010 */  sltiu      $at, $t5, 0x10
/* 9FBB8 8009EFB8 1420FFC6 */  bnez       $at, .L8009EED4
/* 9FBBC 8009EFBC AFAD0024 */   sw        $t5, 0x24($sp)
/* 9FBC0 8009EFC0 8FAF0028 */  lw         $t7, 0x28($sp)
/* 9FBC4 8009EFC4 3C013FF0 */  lui        $at, 0x3ff0
/* 9FBC8 8009EFC8 44812800 */  mtc1       $at, $f5
/* 9FBCC 8009EFCC 8DEC0000 */  lw         $t4, ($t7)
/* 9FBD0 8009EFD0 44802000 */  mtc1       $zero, $f4
/* 9FBD4 8009EFD4 8D8B0040 */  lw         $t3, 0x40($t4)
/* 9FBD8 8009EFD8 448B3000 */  mtc1       $t3, $f6
/* 9FBDC 8009EFDC 05610005 */  bgez       $t3, .L8009EFF4
/* 9FBE0 8009EFE0 46803220 */   cvt.s.w   $f8, $f6
/* 9FBE4 8009EFE4 3C014F80 */  lui        $at, 0x4f80
/* 9FBE8 8009EFE8 44815000 */  mtc1       $at, $f10
/* 9FBEC 8009EFEC 00000000 */  nop
/* 9FBF0 8009EFF0 460A4200 */  add.s      $f8, $f8, $f10
.L8009EFF4:
/* 9FBF4 8009EFF4 46004421 */  cvt.d.s    $f16, $f8
/* 9FBF8 8009EFF8 46302483 */  div.d      $f18, $f4, $f16
/* 9FBFC 8009EFFC 462091A0 */  cvt.s.d    $f6, $f18
/* 9FC00 8009F000 E5E60008 */  swc1       $f6, 8($t7)
/* 9FC04 8009F004 10000001 */  b          .L8009F00C
/* 9FC08 8009F008 00000000 */   nop
.L8009F00C:
/* 9FC0C 8009F00C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9FC10 8009F010 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9FC14 8009F014 03E00008 */  jr         $ra
/* 9FC18 8009F018 00000000 */   nop

glabel alCSeqNextEvent
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
/* 9FC58 8009F058 0C0297B4 */  jal        __osError
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
/* 9FD10 8009F110 0C027CA2 */  jal        __alCSeqGetTrackEvent
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
/* 9FD5C 8009F15C 0C027F42 */  jal        __readVarLen
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

glabel __alCSeqNextDelta
/* 9FDAC 8009F1AC 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 9FDB0 8009F1B0 240EFFFF */  addiu      $t6, $zero, -1
/* 9FDB4 8009F1B4 AFAE0008 */  sw         $t6, 8($sp)
/* 9FDB8 8009F1B8 8C8F0010 */  lw         $t7, 0x10($a0)
/* 9FDBC 8009F1BC AFAF0004 */  sw         $t7, 4($sp)
/* 9FDC0 8009F1C0 8C980004 */  lw         $t8, 4($a0)
/* 9FDC4 8009F1C4 17000003 */  bnez       $t8, .L8009F1D4
/* 9FDC8 8009F1C8 00000000 */   nop
/* 9FDCC 8009F1CC 1000002C */  b          .L8009F280
/* 9FDD0 8009F1D0 00001025 */   or        $v0, $zero, $zero
.L8009F1D4:
/* 9FDD4 8009F1D4 AFA0000C */  sw         $zero, 0xc($sp)
.L8009F1D8:
/* 9FDD8 8009F1D8 8C990004 */  lw         $t9, 4($a0)
/* 9FDDC 8009F1DC 8FA8000C */  lw         $t0, 0xc($sp)
/* 9FDE0 8009F1E0 01194806 */  srlv       $t1, $t9, $t0
/* 9FDE4 8009F1E4 312A0001 */  andi       $t2, $t1, 1
/* 9FDE8 8009F1E8 11400019 */  beqz       $t2, .L8009F250
/* 9FDEC 8009F1EC 00000000 */   nop
/* 9FDF0 8009F1F0 8C8B0014 */  lw         $t3, 0x14($a0)
/* 9FDF4 8009F1F4 11600009 */  beqz       $t3, .L8009F21C
/* 9FDF8 8009F1F8 00000000 */   nop
/* 9FDFC 8009F1FC 8FAC000C */  lw         $t4, 0xc($sp)
/* 9FE00 8009F200 8FB80004 */  lw         $t8, 4($sp)
/* 9FE04 8009F204 000C6880 */  sll        $t5, $t4, 2
/* 9FE08 8009F208 008D7021 */  addu       $t6, $a0, $t5
/* 9FE0C 8009F20C 8DCF00B8 */  lw         $t7, 0xb8($t6)
/* 9FE10 8009F210 008D4021 */  addu       $t0, $a0, $t5
/* 9FE14 8009F214 01F8C823 */  subu       $t9, $t7, $t8
/* 9FE18 8009F218 AD1900B8 */  sw         $t9, 0xb8($t0)
.L8009F21C:
/* 9FE1C 8009F21C 8FA9000C */  lw         $t1, 0xc($sp)
/* 9FE20 8009F220 8FAE0008 */  lw         $t6, 8($sp)
/* 9FE24 8009F224 00095080 */  sll        $t2, $t1, 2
/* 9FE28 8009F228 008A5821 */  addu       $t3, $a0, $t2
/* 9FE2C 8009F22C 8D6C00B8 */  lw         $t4, 0xb8($t3)
/* 9FE30 8009F230 018E082B */  sltu       $at, $t4, $t6
/* 9FE34 8009F234 10200006 */  beqz       $at, .L8009F250
/* 9FE38 8009F238 00000000 */   nop
/* 9FE3C 8009F23C 8FAF000C */  lw         $t7, 0xc($sp)
/* 9FE40 8009F240 000FC080 */  sll        $t8, $t7, 2
/* 9FE44 8009F244 00986821 */  addu       $t5, $a0, $t8
/* 9FE48 8009F248 8DB900B8 */  lw         $t9, 0xb8($t5)
/* 9FE4C 8009F24C AFB90008 */  sw         $t9, 8($sp)
.L8009F250:
/* 9FE50 8009F250 8FA8000C */  lw         $t0, 0xc($sp)
/* 9FE54 8009F254 25090001 */  addiu      $t1, $t0, 1
/* 9FE58 8009F258 2D210010 */  sltiu      $at, $t1, 0x10
/* 9FE5C 8009F25C 1420FFDE */  bnez       $at, .L8009F1D8
/* 9FE60 8009F260 AFA9000C */   sw        $t1, 0xc($sp)
/* 9FE64 8009F264 AC800014 */  sw         $zero, 0x14($a0)
/* 9FE68 8009F268 8FAA0008 */  lw         $t2, 8($sp)
/* 9FE6C 8009F26C ACAA0000 */  sw         $t2, ($a1)
/* 9FE70 8009F270 10000003 */  b          .L8009F280
/* 9FE74 8009F274 24020001 */   addiu     $v0, $zero, 1
/* 9FE78 8009F278 10000001 */  b          .L8009F280
/* 9FE7C 8009F27C 00000000 */   nop
.L8009F280:
/* 9FE80 8009F280 03E00008 */  jr         $ra
/* 9FE84 8009F284 27BD0010 */   addiu     $sp, $sp, 0x10

glabel __alCSeqGetTrackEvent
/* 9FE88 8009F288 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9FE8C 8009F28C AFBF0014 */  sw         $ra, 0x14($sp)
/* 9FE90 8009F290 AFA40030 */  sw         $a0, 0x30($sp)
/* 9FE94 8009F294 AFA50034 */  sw         $a1, 0x34($sp)
/* 9FE98 8009F298 AFA60038 */  sw         $a2, 0x38($sp)
/* 9FE9C 8009F29C 8FA40030 */  lw         $a0, 0x30($sp)
/* 9FEA0 8009F2A0 0C027EC5 */  jal        __getTrackByte
/* 9FEA4 8009F2A4 8FA50034 */   lw        $a1, 0x34($sp)
/* 9FEA8 8009F2A8 A3A2002B */  sb         $v0, 0x2b($sp)
/* 9FEAC 8009F2AC 93AE002B */  lbu        $t6, 0x2b($sp)
/* 9FEB0 8009F2B0 240100FF */  addiu      $at, $zero, 0xff
/* 9FEB4 8009F2B4 15C100B2 */  bne        $t6, $at, .L8009F580
/* 9FEB8 8009F2B8 00000000 */   nop
/* 9FEBC 8009F2BC 8FA40030 */  lw         $a0, 0x30($sp)
/* 9FEC0 8009F2C0 0C027EC5 */  jal        __getTrackByte
/* 9FEC4 8009F2C4 8FA50034 */   lw        $a1, 0x34($sp)
/* 9FEC8 8009F2C8 A3A20023 */  sb         $v0, 0x23($sp)
/* 9FECC 8009F2CC 93AF0023 */  lbu        $t7, 0x23($sp)
/* 9FED0 8009F2D0 24010051 */  addiu      $at, $zero, 0x51
/* 9FED4 8009F2D4 15E1001E */  bne        $t7, $at, .L8009F350
/* 9FED8 8009F2D8 00000000 */   nop
/* 9FEDC 8009F2DC 8FB90038 */  lw         $t9, 0x38($sp)
/* 9FEE0 8009F2E0 24180003 */  addiu      $t8, $zero, 3
/* 9FEE4 8009F2E4 A7380000 */  sh         $t8, ($t9)
/* 9FEE8 8009F2E8 93A8002B */  lbu        $t0, 0x2b($sp)
/* 9FEEC 8009F2EC 8FA90038 */  lw         $t1, 0x38($sp)
/* 9FEF0 8009F2F0 A1280008 */  sb         $t0, 8($t1)
/* 9FEF4 8009F2F4 93AA0023 */  lbu        $t2, 0x23($sp)
/* 9FEF8 8009F2F8 8FAB0038 */  lw         $t3, 0x38($sp)
/* 9FEFC 8009F2FC A16A0009 */  sb         $t2, 9($t3)
/* 9FF00 8009F300 8FA40030 */  lw         $a0, 0x30($sp)
/* 9FF04 8009F304 0C027EC5 */  jal        __getTrackByte
/* 9FF08 8009F308 8FA50034 */   lw        $a1, 0x34($sp)
/* 9FF0C 8009F30C 8FAC0038 */  lw         $t4, 0x38($sp)
/* 9FF10 8009F310 A182000B */  sb         $v0, 0xb($t4)
/* 9FF14 8009F314 8FA40030 */  lw         $a0, 0x30($sp)
/* 9FF18 8009F318 0C027EC5 */  jal        __getTrackByte
/* 9FF1C 8009F31C 8FA50034 */   lw        $a1, 0x34($sp)
/* 9FF20 8009F320 8FAD0038 */  lw         $t5, 0x38($sp)
/* 9FF24 8009F324 A1A2000C */  sb         $v0, 0xc($t5)
/* 9FF28 8009F328 8FA40030 */  lw         $a0, 0x30($sp)
/* 9FF2C 8009F32C 0C027EC5 */  jal        __getTrackByte
/* 9FF30 8009F330 8FA50034 */   lw        $a1, 0x34($sp)
/* 9FF34 8009F334 8FAE0038 */  lw         $t6, 0x38($sp)
/* 9FF38 8009F338 A1C2000D */  sb         $v0, 0xd($t6)
/* 9FF3C 8009F33C 8FAF0030 */  lw         $t7, 0x30($sp)
/* 9FF40 8009F340 8FB80034 */  lw         $t8, 0x34($sp)
/* 9FF44 8009F344 01F8C821 */  addu       $t9, $t7, $t8
/* 9FF48 8009F348 1000008B */  b          .L8009F578
/* 9FF4C 8009F34C A32000A8 */   sb        $zero, 0xa8($t9)
.L8009F350:
/* 9FF50 8009F350 93A80023 */  lbu        $t0, 0x23($sp)
/* 9FF54 8009F354 2401002F */  addiu      $at, $zero, 0x2f
/* 9FF58 8009F358 15010017 */  bne        $t0, $at, .L8009F3B8
/* 9FF5C 8009F35C 00000000 */   nop
/* 9FF60 8009F360 8FA90034 */  lw         $t1, 0x34($sp)
/* 9FF64 8009F364 240A0001 */  addiu      $t2, $zero, 1
/* 9FF68 8009F368 012A5804 */  sllv       $t3, $t2, $t1
/* 9FF6C 8009F36C AFAB001C */  sw         $t3, 0x1c($sp)
/* 9FF70 8009F370 8FAC0030 */  lw         $t4, 0x30($sp)
/* 9FF74 8009F374 8FAE001C */  lw         $t6, 0x1c($sp)
/* 9FF78 8009F378 8D8D0004 */  lw         $t5, 4($t4)
/* 9FF7C 8009F37C 01AE7826 */  xor        $t7, $t5, $t6
/* 9FF80 8009F380 AD8F0004 */  sw         $t7, 4($t4)
/* 9FF84 8009F384 8FB80030 */  lw         $t8, 0x30($sp)
/* 9FF88 8009F388 8F190004 */  lw         $t9, 4($t8)
/* 9FF8C 8009F38C 13200005 */  beqz       $t9, .L8009F3A4
/* 9FF90 8009F390 00000000 */   nop
/* 9FF94 8009F394 8FAA0038 */  lw         $t2, 0x38($sp)
/* 9FF98 8009F398 24080012 */  addiu      $t0, $zero, 0x12
/* 9FF9C 8009F39C 10000004 */  b          .L8009F3B0
/* 9FFA0 8009F3A0 A5480000 */   sh        $t0, ($t2)
.L8009F3A4:
/* 9FFA4 8009F3A4 8FAB0038 */  lw         $t3, 0x38($sp)
/* 9FFA8 8009F3A8 24090004 */  addiu      $t1, $zero, 4
/* 9FFAC 8009F3AC A5690000 */  sh         $t1, ($t3)
.L8009F3B0:
/* 9FFB0 8009F3B0 10000071 */  b          .L8009F578
/* 9FFB4 8009F3B4 00000000 */   nop
.L8009F3B8:
/* 9FFB8 8009F3B8 93AD0023 */  lbu        $t5, 0x23($sp)
/* 9FFBC 8009F3BC 2401002E */  addiu      $at, $zero, 0x2e
/* 9FFC0 8009F3C0 15A10011 */  bne        $t5, $at, .L8009F408
/* 9FFC4 8009F3C4 00000000 */   nop
/* 9FFC8 8009F3C8 8FA40030 */  lw         $a0, 0x30($sp)
/* 9FFCC 8009F3CC 0C027EC5 */  jal        __getTrackByte
/* 9FFD0 8009F3D0 8FA50034 */   lw        $a1, 0x34($sp)
/* 9FFD4 8009F3D4 A3A2002B */  sb         $v0, 0x2b($sp)
/* 9FFD8 8009F3D8 8FA40030 */  lw         $a0, 0x30($sp)
/* 9FFDC 8009F3DC 0C027EC5 */  jal        __getTrackByte
/* 9FFE0 8009F3E0 8FA50034 */   lw        $a1, 0x34($sp)
/* 9FFE4 8009F3E4 A3A2002B */  sb         $v0, 0x2b($sp)
/* 9FFE8 8009F3E8 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9FFEC 8009F3EC 8FAF0034 */  lw         $t7, 0x34($sp)
/* 9FFF0 8009F3F0 01CF6021 */  addu       $t4, $t6, $t7
/* 9FFF4 8009F3F4 A18000A8 */  sb         $zero, 0xa8($t4)
/* 9FFF8 8009F3F8 8FB90038 */  lw         $t9, 0x38($sp)
/* 9FFFC 8009F3FC 24180013 */  addiu      $t8, $zero, 0x13
/* A0000 8009F400 1000005D */  b          .L8009F578
/* A0004 8009F404 A7380000 */   sh        $t8, ($t9)
.L8009F408:
/* A0008 8009F408 93A80023 */  lbu        $t0, 0x23($sp)
/* A000C 8009F40C 2401002D */  addiu      $at, $zero, 0x2d
/* A0010 8009F410 15010055 */  bne        $t0, $at, .L8009F568
/* A0014 8009F414 00000000 */   nop
/* A0018 8009F418 8FA90034 */  lw         $t1, 0x34($sp)
/* A001C 8009F41C 8FAA0030 */  lw         $t2, 0x30($sp)
/* A0020 8009F420 00095880 */  sll        $t3, $t1, 2
/* A0024 8009F424 014B6821 */  addu       $t5, $t2, $t3
/* A0028 8009F428 8DAE0018 */  lw         $t6, 0x18($t5)
/* A002C 8009F42C AFAE0024 */  sw         $t6, 0x24($sp)
/* A0030 8009F430 8FAF0024 */  lw         $t7, 0x24($sp)
/* A0034 8009F434 91EC0000 */  lbu        $t4, ($t7)
/* A0038 8009F438 25F80001 */  addiu      $t8, $t7, 1
/* A003C 8009F43C AFB80024 */  sw         $t8, 0x24($sp)
/* A0040 8009F440 A3AC002A */  sb         $t4, 0x2a($sp)
/* A0044 8009F444 8FB90024 */  lw         $t9, 0x24($sp)
/* A0048 8009F448 93280000 */  lbu        $t0, ($t9)
/* A004C 8009F44C A3A80029 */  sb         $t0, 0x29($sp)
/* A0050 8009F450 93A90029 */  lbu        $t1, 0x29($sp)
/* A0054 8009F454 1520000C */  bnez       $t1, .L8009F488
/* A0058 8009F458 00000000 */   nop
/* A005C 8009F45C 93AA002A */  lbu        $t2, 0x2a($sp)
/* A0060 8009F460 8FAB0024 */  lw         $t3, 0x24($sp)
/* A0064 8009F464 A16A0000 */  sb         $t2, ($t3)
/* A0068 8009F468 8FAF0034 */  lw         $t7, 0x34($sp)
/* A006C 8009F46C 8FAD0024 */  lw         $t5, 0x24($sp)
/* A0070 8009F470 8FAC0030 */  lw         $t4, 0x30($sp)
/* A0074 8009F474 000FC080 */  sll        $t8, $t7, 2
/* A0078 8009F478 25AE0005 */  addiu      $t6, $t5, 5
/* A007C 8009F47C 0198C821 */  addu       $t9, $t4, $t8
/* A0080 8009F480 10000031 */  b          .L8009F548
/* A0084 8009F484 AF2E0018 */   sw        $t6, 0x18($t9)
.L8009F488:
/* A0088 8009F488 93A80029 */  lbu        $t0, 0x29($sp)
/* A008C 8009F48C 240100FF */  addiu      $at, $zero, 0xff
/* A0090 8009F490 11010005 */  beq        $t0, $at, .L8009F4A8
/* A0094 8009F494 00000000 */   nop
/* A0098 8009F498 93A90029 */  lbu        $t1, 0x29($sp)
/* A009C 8009F49C 8FAB0024 */  lw         $t3, 0x24($sp)
/* A00A0 8009F4A0 252AFFFF */  addiu      $t2, $t1, -1
/* A00A4 8009F4A4 A16A0000 */  sb         $t2, ($t3)
.L8009F4A8:
/* A00A8 8009F4A8 8FAD0024 */  lw         $t5, 0x24($sp)
/* A00AC 8009F4AC 25AF0001 */  addiu      $t7, $t5, 1
/* A00B0 8009F4B0 AFAF0024 */  sw         $t7, 0x24($sp)
/* A00B4 8009F4B4 8FAC0024 */  lw         $t4, 0x24($sp)
/* A00B8 8009F4B8 91980000 */  lbu        $t8, ($t4)
/* A00BC 8009F4BC 25990001 */  addiu      $t9, $t4, 1
/* A00C0 8009F4C0 AFB90024 */  sw         $t9, 0x24($sp)
/* A00C4 8009F4C4 00187600 */  sll        $t6, $t8, 0x18
/* A00C8 8009F4C8 AFAE002C */  sw         $t6, 0x2c($sp)
/* A00CC 8009F4CC 8FA90024 */  lw         $t1, 0x24($sp)
/* A00D0 8009F4D0 8FA8002C */  lw         $t0, 0x2c($sp)
/* A00D4 8009F4D4 912A0000 */  lbu        $t2, ($t1)
/* A00D8 8009F4D8 252F0001 */  addiu      $t7, $t1, 1
/* A00DC 8009F4DC AFAF0024 */  sw         $t7, 0x24($sp)
/* A00E0 8009F4E0 000A5C00 */  sll        $t3, $t2, 0x10
/* A00E4 8009F4E4 010B6821 */  addu       $t5, $t0, $t3
/* A00E8 8009F4E8 AFAD002C */  sw         $t5, 0x2c($sp)
/* A00EC 8009F4EC 8FAE0024 */  lw         $t6, 0x24($sp)
/* A00F0 8009F4F0 8FB8002C */  lw         $t8, 0x2c($sp)
/* A00F4 8009F4F4 91CC0000 */  lbu        $t4, ($t6)
/* A00F8 8009F4F8 25C80001 */  addiu      $t0, $t6, 1
/* A00FC 8009F4FC AFA80024 */  sw         $t0, 0x24($sp)
/* A0100 8009F500 000CCA00 */  sll        $t9, $t4, 8
/* A0104 8009F504 03195021 */  addu       $t2, $t8, $t9
/* A0108 8009F508 AFAA002C */  sw         $t2, 0x2c($sp)
/* A010C 8009F50C 8FAD0024 */  lw         $t5, 0x24($sp)
/* A0110 8009F510 8FAB002C */  lw         $t3, 0x2c($sp)
/* A0114 8009F514 91A90000 */  lbu        $t1, ($t5)
/* A0118 8009F518 25AC0001 */  addiu      $t4, $t5, 1
/* A011C 8009F51C AFAC0024 */  sw         $t4, 0x24($sp)
/* A0120 8009F520 01697821 */  addu       $t7, $t3, $t1
/* A0124 8009F524 AFAF002C */  sw         $t7, 0x2c($sp)
/* A0128 8009F528 8FA80034 */  lw         $t0, 0x34($sp)
/* A012C 8009F52C 8FB80024 */  lw         $t8, 0x24($sp)
/* A0130 8009F530 8FB9002C */  lw         $t9, 0x2c($sp)
/* A0134 8009F534 8FAE0030 */  lw         $t6, 0x30($sp)
/* A0138 8009F538 00085880 */  sll        $t3, $t0, 2
/* A013C 8009F53C 03195023 */  subu       $t2, $t8, $t9
/* A0140 8009F540 01CB4821 */  addu       $t1, $t6, $t3
/* A0144 8009F544 AD2A0018 */  sw         $t2, 0x18($t1)
.L8009F548:
/* A0148 8009F548 8FAF0030 */  lw         $t7, 0x30($sp)
/* A014C 8009F54C 8FAD0034 */  lw         $t5, 0x34($sp)
/* A0150 8009F550 01ED6021 */  addu       $t4, $t7, $t5
/* A0154 8009F554 A18000A8 */  sb         $zero, 0xa8($t4)
/* A0158 8009F558 8FB90038 */  lw         $t9, 0x38($sp)
/* A015C 8009F55C 24180014 */  addiu      $t8, $zero, 0x14
/* A0160 8009F560 10000005 */  b          .L8009F578
/* A0164 8009F564 A7380000 */   sh        $t8, ($t9)
.L8009F568:
/* A0168 8009F568 24040078 */  addiu      $a0, $zero, 0x78
/* A016C 8009F56C 24050001 */  addiu      $a1, $zero, 1
/* A0170 8009F570 0C0297B4 */  jal        __osError
/* A0174 8009F574 93A60023 */   lbu       $a2, 0x23($sp)
.L8009F578:
/* A0178 8009F578 1000004E */  b          .L8009F6B4
/* A017C 8009F57C 00000000 */   nop
.L8009F580:
/* A0180 8009F580 8FAE0038 */  lw         $t6, 0x38($sp)
/* A0184 8009F584 24080001 */  addiu      $t0, $zero, 1
/* A0188 8009F588 A5C80000 */  sh         $t0, ($t6)
/* A018C 8009F58C 93AB002B */  lbu        $t3, 0x2b($sp)
/* A0190 8009F590 316A0080 */  andi       $t2, $t3, 0x80
/* A0194 8009F594 1140000F */  beqz       $t2, .L8009F5D4
/* A0198 8009F598 00000000 */   nop
/* A019C 8009F59C 93A9002B */  lbu        $t1, 0x2b($sp)
/* A01A0 8009F5A0 8FAF0038 */  lw         $t7, 0x38($sp)
/* A01A4 8009F5A4 A1E90008 */  sb         $t1, 8($t7)
/* A01A8 8009F5A8 8FA40030 */  lw         $a0, 0x30($sp)
/* A01AC 8009F5AC 0C027EC5 */  jal        __getTrackByte
/* A01B0 8009F5B0 8FA50034 */   lw        $a1, 0x34($sp)
/* A01B4 8009F5B4 8FAD0038 */  lw         $t5, 0x38($sp)
/* A01B8 8009F5B8 A1A20009 */  sb         $v0, 9($t5)
/* A01BC 8009F5BC 8FB80030 */  lw         $t8, 0x30($sp)
/* A01C0 8009F5C0 8FB90034 */  lw         $t9, 0x34($sp)
/* A01C4 8009F5C4 93AC002B */  lbu        $t4, 0x2b($sp)
/* A01C8 8009F5C8 03194021 */  addu       $t0, $t8, $t9
/* A01CC 8009F5CC 10000014 */  b          .L8009F620
/* A01D0 8009F5D0 A10C00A8 */   sb        $t4, 0xa8($t0)
.L8009F5D4:
/* A01D4 8009F5D4 8FAE0030 */  lw         $t6, 0x30($sp)
/* A01D8 8009F5D8 8FAB0034 */  lw         $t3, 0x34($sp)
/* A01DC 8009F5DC 01CB5021 */  addu       $t2, $t6, $t3
/* A01E0 8009F5E0 914900A8 */  lbu        $t1, 0xa8($t2)
/* A01E4 8009F5E4 15200005 */  bnez       $t1, .L8009F5FC
/* A01E8 8009F5E8 00000000 */   nop
/* A01EC 8009F5EC 24040080 */  addiu      $a0, $zero, 0x80
/* A01F0 8009F5F0 24050001 */  addiu      $a1, $zero, 1
/* A01F4 8009F5F4 0C0297B4 */  jal        __osError
/* A01F8 8009F5F8 8FA60034 */   lw        $a2, 0x34($sp)
.L8009F5FC:
/* A01FC 8009F5FC 8FAF0030 */  lw         $t7, 0x30($sp)
/* A0200 8009F600 8FAD0034 */  lw         $t5, 0x34($sp)
/* A0204 8009F604 8FAC0038 */  lw         $t4, 0x38($sp)
/* A0208 8009F608 01EDC021 */  addu       $t8, $t7, $t5
/* A020C 8009F60C 931900A8 */  lbu        $t9, 0xa8($t8)
/* A0210 8009F610 A1990008 */  sb         $t9, 8($t4)
/* A0214 8009F614 93A8002B */  lbu        $t0, 0x2b($sp)
/* A0218 8009F618 8FAE0038 */  lw         $t6, 0x38($sp)
/* A021C 8009F61C A1C80009 */  sb         $t0, 9($t6)
.L8009F620:
/* A0220 8009F620 8FAB0038 */  lw         $t3, 0x38($sp)
/* A0224 8009F624 240100C0 */  addiu      $at, $zero, 0xc0
/* A0228 8009F628 916A0008 */  lbu        $t2, 8($t3)
/* A022C 8009F62C 314900F0 */  andi       $t1, $t2, 0xf0
/* A0230 8009F630 1121001E */  beq        $t1, $at, .L8009F6AC
/* A0234 8009F634 00000000 */   nop
/* A0238 8009F638 240100D0 */  addiu      $at, $zero, 0xd0
/* A023C 8009F63C 1121001B */  beq        $t1, $at, .L8009F6AC
/* A0240 8009F640 00000000 */   nop
/* A0244 8009F644 8FA40030 */  lw         $a0, 0x30($sp)
/* A0248 8009F648 0C027EC5 */  jal        __getTrackByte
/* A024C 8009F64C 8FA50034 */   lw        $a1, 0x34($sp)
/* A0250 8009F650 8FAF0038 */  lw         $t7, 0x38($sp)
/* A0254 8009F654 A1E2000A */  sb         $v0, 0xa($t7)
/* A0258 8009F658 8FAD0038 */  lw         $t5, 0x38($sp)
/* A025C 8009F65C 24010090 */  addiu      $at, $zero, 0x90
/* A0260 8009F660 91B80008 */  lbu        $t8, 8($t5)
/* A0264 8009F664 331900F0 */  andi       $t9, $t8, 0xf0
/* A0268 8009F668 1721000E */  bne        $t9, $at, .L8009F6A4
/* A026C 8009F66C 00000000 */   nop
/* A0270 8009F670 8FA40030 */  lw         $a0, 0x30($sp)
/* A0274 8009F674 0C027F42 */  jal        __readVarLen
/* A0278 8009F678 8FA50034 */   lw        $a1, 0x34($sp)
/* A027C 8009F67C 8FAC0038 */  lw         $t4, 0x38($sp)
/* A0280 8009F680 AD82000C */  sw         $v0, 0xc($t4)
/* A0284 8009F684 8FA80038 */  lw         $t0, 0x38($sp)
/* A0288 8009F688 910E000A */  lbu        $t6, 0xa($t0)
/* A028C 8009F68C 15C00005 */  bnez       $t6, .L8009F6A4
/* A0290 8009F690 00000000 */   nop
/* A0294 8009F694 24040081 */  addiu      $a0, $zero, 0x81
/* A0298 8009F698 24050001 */  addiu      $a1, $zero, 1
/* A029C 8009F69C 0C0297B4 */  jal        __osError
/* A02A0 8009F6A0 8FA60034 */   lw        $a2, 0x34($sp)
.L8009F6A4:
/* A02A4 8009F6A4 10000003 */  b          .L8009F6B4
/* A02A8 8009F6A8 00000000 */   nop
.L8009F6AC:
/* A02AC 8009F6AC 8FAB0038 */  lw         $t3, 0x38($sp)
/* A02B0 8009F6B0 A160000A */  sb         $zero, 0xa($t3)
.L8009F6B4:
/* A02B4 8009F6B4 10000003 */  b          .L8009F6C4
/* A02B8 8009F6B8 24020001 */   addiu     $v0, $zero, 1
/* A02BC 8009F6BC 10000001 */  b          .L8009F6C4
/* A02C0 8009F6C0 00000000 */   nop
.L8009F6C4:
/* A02C4 8009F6C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* A02C8 8009F6C8 27BD0030 */  addiu      $sp, $sp, 0x30
/* A02CC 8009F6CC 03E00008 */  jr         $ra
/* A02D0 8009F6D0 00000000 */   nop

glabel func_8009F6D4
/* A02D4 8009F6D4 44852000 */  mtc1       $a1, $f4
/* A02D8 8009F6D8 44864000 */  mtc1       $a2, $f8
/* A02DC 8009F6DC 468021A0 */  cvt.s.w    $f6, $f4
/* A02E0 8009F6E0 04C10005 */  bgez       $a2, .L8009F6F8
/* A02E4 8009F6E4 468042A0 */   cvt.s.w   $f10, $f8
/* A02E8 8009F6E8 3C014F80 */  lui        $at, 0x4f80
/* A02EC 8009F6EC 44818000 */  mtc1       $at, $f16
/* A02F0 8009F6F0 00000000 */  nop
/* A02F4 8009F6F4 46105280 */  add.s      $f10, $f10, $f16
.L8009F6F8:
/* A02F8 8009F6F8 8C8E0000 */  lw         $t6, ($a0)
/* A02FC 8009F6FC 460A3482 */  mul.s      $f18, $f6, $f10
/* A0300 8009F700 8DCF0040 */  lw         $t7, 0x40($t6)
/* A0304 8009F704 448F4000 */  mtc1       $t7, $f8
/* A0308 8009F708 46009121 */  cvt.d.s    $f4, $f18
/* A030C 8009F70C 05E10005 */  bgez       $t7, .L8009F724
/* A0310 8009F710 46804420 */   cvt.s.w   $f16, $f8
/* A0314 8009F714 3C014F80 */  lui        $at, 0x4f80
/* A0318 8009F718 44813000 */  mtc1       $at, $f6
/* A031C 8009F71C 00000000 */  nop
/* A0320 8009F720 46068400 */  add.s      $f16, $f16, $f6
.L8009F724:
/* A0324 8009F724 3C01800F */  lui        $at, %hi(D_800EDA10)
/* A0328 8009F728 D432DA10 */  ldc1       $f18, %lo(D_800EDA10)($at)
/* A032C 8009F72C 460082A1 */  cvt.d.s    $f10, $f16
/* A0330 8009F730 46325202 */  mul.d      $f8, $f10, $f18
/* A0334 8009F734 46282183 */  div.d      $f6, $f4, $f8
/* A0338 8009F738 03E00008 */  jr         $ra
/* A033C 8009F73C 46203020 */   cvt.s.d   $f0, $f6

glabel func_8009F740
/* A0340 8009F740 03E00008 */  jr         $ra
/* A0344 8009F744 00000000 */   nop

glabel func_8009F748
/* A0348 8009F748 03E00008 */  jr         $ra
/* A034C 8009F74C 00000000 */   nop

glabel func_8009F750
/* A0350 8009F750 AFA50004 */  sw         $a1, 4($sp)
/* A0354 8009F754 8C8E0000 */  lw         $t6, ($a0)
/* A0358 8009F758 C7A40004 */  lwc1       $f4, 4($sp)
/* A035C 8009F75C 3C01800F */  lui        $at, %hi(D_800EDA18)
/* A0360 8009F760 8DCF0040 */  lw         $t7, 0x40($t6)
/* A0364 8009F764 D428DA18 */  ldc1       $f8, %lo(D_800EDA18)($at)
/* A0368 8009F768 460021A1 */  cvt.d.s    $f6, $f4
/* A036C 8009F76C 448F8000 */  mtc1       $t7, $f16
/* A0370 8009F770 46283282 */  mul.d      $f10, $f6, $f8
/* A0374 8009F774 05E10006 */  bgez       $t7, .L8009F790
/* A0378 8009F778 468084A1 */   cvt.d.w   $f18, $f16
/* A037C 8009F77C 3C0141F0 */  lui        $at, 0x41f0
/* A0380 8009F780 44812800 */  mtc1       $at, $f5
/* A0384 8009F784 44802000 */  mtc1       $zero, $f4
/* A0388 8009F788 00000000 */  nop
/* A038C 8009F78C 46249480 */  add.d      $f18, $f18, $f4
.L8009F790:
/* A0390 8009F790 44864000 */  mtc1       $a2, $f8
/* A0394 8009F794 46325182 */  mul.d      $f6, $f10, $f18
/* A0398 8009F798 04C10006 */  bgez       $a2, .L8009F7B4
/* A039C 8009F79C 46804421 */   cvt.d.w   $f16, $f8
/* A03A0 8009F7A0 3C0141F0 */  lui        $at, 0x41f0
/* A03A4 8009F7A4 44812800 */  mtc1       $at, $f5
/* A03A8 8009F7A8 44802000 */  mtc1       $zero, $f4
/* A03AC 8009F7AC 00000000 */  nop
/* A03B0 8009F7B0 46248400 */  add.d      $f16, $f16, $f4
.L8009F7B4:
/* A03B4 8009F7B4 46303283 */  div.d      $f10, $f6, $f16
/* A03B8 8009F7B8 24020001 */  addiu      $v0, $zero, 1
/* A03BC 8009F7BC 4458F800 */  cfc1       $t8, $31
/* A03C0 8009F7C0 44C2F800 */  ctc1       $v0, $31
/* A03C4 8009F7C4 00000000 */  nop
/* A03C8 8009F7C8 462054A4 */  cvt.w.d    $f18, $f10
/* A03CC 8009F7CC 4442F800 */  cfc1       $v0, $31
/* A03D0 8009F7D0 00000000 */  nop
/* A03D4 8009F7D4 30410004 */  andi       $at, $v0, 4
/* A03D8 8009F7D8 30420078 */  andi       $v0, $v0, 0x78
/* A03DC 8009F7DC 10400015 */  beqz       $v0, .L8009F834
/* A03E0 8009F7E0 00000000 */   nop
/* A03E4 8009F7E4 3C0141E0 */  lui        $at, 0x41e0
/* A03E8 8009F7E8 44819800 */  mtc1       $at, $f19
/* A03EC 8009F7EC 44809000 */  mtc1       $zero, $f18
/* A03F0 8009F7F0 24020001 */  addiu      $v0, $zero, 1
/* A03F4 8009F7F4 46325481 */  sub.d      $f18, $f10, $f18
/* A03F8 8009F7F8 44C2F800 */  ctc1       $v0, $31
/* A03FC 8009F7FC 00000000 */  nop
/* A0400 8009F800 462094A4 */  cvt.w.d    $f18, $f18
/* A0404 8009F804 4442F800 */  cfc1       $v0, $31
/* A0408 8009F808 00000000 */  nop
/* A040C 8009F80C 30410004 */  andi       $at, $v0, 4
/* A0410 8009F810 30420078 */  andi       $v0, $v0, 0x78
/* A0414 8009F814 14400005 */  bnez       $v0, .L8009F82C
/* A0418 8009F818 00000000 */   nop
/* A041C 8009F81C 44029000 */  mfc1       $v0, $f18
/* A0420 8009F820 3C018000 */  lui        $at, 0x8000
/* A0424 8009F824 10000007 */  b          .L8009F844
/* A0428 8009F828 00411025 */   or        $v0, $v0, $at
.L8009F82C:
/* A042C 8009F82C 10000005 */  b          .L8009F844
/* A0430 8009F830 2402FFFF */   addiu     $v0, $zero, -1
.L8009F834:
/* A0434 8009F834 44029000 */  mfc1       $v0, $f18
/* A0438 8009F838 00000000 */  nop
/* A043C 8009F83C 0440FFFB */  bltz       $v0, .L8009F82C
/* A0440 8009F840 00000000 */   nop
.L8009F844:
/* A0444 8009F844 44D8F800 */  ctc1       $t8, $31
/* A0448 8009F848 10000003 */  b          .L8009F858
/* A044C 8009F84C 00000000 */   nop
/* A0450 8009F850 10000001 */  b          .L8009F858
/* A0454 8009F854 00000000 */   nop
.L8009F858:
/* A0458 8009F858 03E00008 */  jr         $ra
/* A045C 8009F85C 00000000 */   nop

glabel func_8009F860
/* A0460 8009F860 03E00008 */  jr         $ra
/* A0464 8009F864 8C82000C */   lw        $v0, 0xc($a0)

glabel func_8009F868
/* A0468 8009F868 03E00008 */  jr         $ra
/* A046C 8009F86C 00000000 */   nop

glabel func_8009F870
/* A0470 8009F870 03E00008 */  jr         $ra
/* A0474 8009F874 00000000 */   nop

glabel alCSeqNewMarker
/* A0478 8009F878 27BDFED8 */  addiu      $sp, $sp, -0x128
/* A047C 8009F87C AFBF0014 */  sw         $ra, 0x14($sp)
/* A0480 8009F880 AFA40128 */  sw         $a0, 0x128($sp)
/* A0484 8009F884 AFA5012C */  sw         $a1, 0x12c($sp)
/* A0488 8009F888 AFA60130 */  sw         $a2, 0x130($sp)
/* A048C 8009F88C 8FAE0128 */  lw         $t6, 0x128($sp)
/* A0490 8009F890 27A40020 */  addiu      $a0, $sp, 0x20
/* A0494 8009F894 0C027BA4 */  jal        alCSeqNew
/* A0498 8009F898 8DC50000 */   lw        $a1, ($t6)
.L8009F89C:
/* A049C 8009F89C 8FAF0024 */  lw         $t7, 0x24($sp)
/* A04A0 8009F8A0 8FB8012C */  lw         $t8, 0x12c($sp)
/* A04A4 8009F8A4 AF0F0000 */  sw         $t7, ($t8)
/* A04A8 8009F8A8 8FB9002C */  lw         $t9, 0x2c($sp)
/* A04AC 8009F8AC 8FA8012C */  lw         $t0, 0x12c($sp)
/* A04B0 8009F8B0 AD190004 */  sw         $t9, 4($t0)
/* A04B4 8009F8B4 8FA90030 */  lw         $t1, 0x30($sp)
/* A04B8 8009F8B8 8FAA012C */  lw         $t2, 0x12c($sp)
/* A04BC 8009F8BC AD490008 */  sw         $t1, 8($t2)
/* A04C0 8009F8C0 AFA0001C */  sw         $zero, 0x1c($sp)
.L8009F8C4:
/* A04C4 8009F8C4 8FAB001C */  lw         $t3, 0x1c($sp)
/* A04C8 8009F8C8 8FAE012C */  lw         $t6, 0x12c($sp)
/* A04CC 8009F8CC 000B6080 */  sll        $t4, $t3, 2
/* A04D0 8009F8D0 03AC6821 */  addu       $t5, $sp, $t4
/* A04D4 8009F8D4 8DAD0038 */  lw         $t5, 0x38($t5)
/* A04D8 8009F8D8 01CC7821 */  addu       $t7, $t6, $t4
/* A04DC 8009F8DC ADED000C */  sw         $t5, 0xc($t7)
/* A04E0 8009F8E0 8FB8001C */  lw         $t8, 0x1c($sp)
/* A04E4 8009F8E4 8FA9012C */  lw         $t1, 0x12c($sp)
/* A04E8 8009F8E8 0018C880 */  sll        $t9, $t8, 2
/* A04EC 8009F8EC 03B94021 */  addu       $t0, $sp, $t9
/* A04F0 8009F8F0 8D080078 */  lw         $t0, 0x78($t0)
/* A04F4 8009F8F4 01395021 */  addu       $t2, $t1, $t9
/* A04F8 8009F8F8 AD48004C */  sw         $t0, 0x4c($t2)
/* A04FC 8009F8FC 8FAB001C */  lw         $t3, 0x1c($sp)
/* A0500 8009F900 8FAC012C */  lw         $t4, 0x12c($sp)
/* A0504 8009F904 03AB7021 */  addu       $t6, $sp, $t3
/* A0508 8009F908 91CE00B8 */  lbu        $t6, 0xb8($t6)
/* A050C 8009F90C 018B6821 */  addu       $t5, $t4, $t3
/* A0510 8009F910 A1AE008C */  sb         $t6, 0x8c($t5)
/* A0514 8009F914 8FAF001C */  lw         $t7, 0x1c($sp)
/* A0518 8009F918 8FA9012C */  lw         $t1, 0x12c($sp)
/* A051C 8009F91C 03AFC021 */  addu       $t8, $sp, $t7
/* A0520 8009F920 931800C8 */  lbu        $t8, 0xc8($t8)
/* A0524 8009F924 012FC821 */  addu       $t9, $t1, $t7
/* A0528 8009F928 A338009C */  sb         $t8, 0x9c($t9)
/* A052C 8009F92C 8FA8001C */  lw         $t0, 0x1c($sp)
/* A0530 8009F930 8FAB012C */  lw         $t3, 0x12c($sp)
/* A0534 8009F934 00085080 */  sll        $t2, $t0, 2
/* A0538 8009F938 03AA6021 */  addu       $t4, $sp, $t2
/* A053C 8009F93C 8D8C00D8 */  lw         $t4, 0xd8($t4)
/* A0540 8009F940 016A7021 */  addu       $t6, $t3, $t2
/* A0544 8009F944 ADCC00AC */  sw         $t4, 0xac($t6)
/* A0548 8009F948 8FAD001C */  lw         $t5, 0x1c($sp)
/* A054C 8009F94C 25A90001 */  addiu      $t1, $t5, 1
/* A0550 8009F950 29210010 */  slti       $at, $t1, 0x10
/* A0554 8009F954 1420FFDB */  bnez       $at, .L8009F8C4
/* A0558 8009F958 AFA9001C */   sw        $t1, 0x1c($sp)
/* A055C 8009F95C 27A40020 */  addiu      $a0, $sp, 0x20
/* A0560 8009F960 0C027C07 */  jal        alCSeqNextEvent
/* A0564 8009F964 27A50118 */   addiu     $a1, $sp, 0x118
/* A0568 8009F968 87AF0118 */  lh         $t7, 0x118($sp)
/* A056C 8009F96C 24010004 */  addiu      $at, $zero, 4
/* A0570 8009F970 15E10003 */  bne        $t7, $at, .L8009F980
/* A0574 8009F974 00000000 */   nop
/* A0578 8009F978 10000006 */  b          .L8009F994
/* A057C 8009F97C 00000000 */   nop
.L8009F980:
/* A0580 8009F980 8FB8002C */  lw         $t8, 0x2c($sp)
/* A0584 8009F984 8FB90130 */  lw         $t9, 0x130($sp)
/* A0588 8009F988 0319082B */  sltu       $at, $t8, $t9
/* A058C 8009F98C 1420FFC3 */  bnez       $at, .L8009F89C
/* A0590 8009F990 00000000 */   nop
.L8009F994:
/* A0594 8009F994 10000001 */  b          .L8009F99C
/* A0598 8009F998 00000000 */   nop
.L8009F99C:
/* A059C 8009F99C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A05A0 8009F9A0 27BD0128 */  addiu      $sp, $sp, 0x128
/* A05A4 8009F9A4 03E00008 */  jr         $ra
/* A05A8 8009F9A8 00000000 */   nop

glabel alCSeqSetLoc
/* A05AC 8009F9AC 27BDFFF8 */  addiu      $sp, $sp, -8
/* A05B0 8009F9B0 8CAE0000 */  lw         $t6, ($a1)
/* A05B4 8009F9B4 AC8E0004 */  sw         $t6, 4($a0)
/* A05B8 8009F9B8 8CAF0004 */  lw         $t7, 4($a1)
/* A05BC 8009F9BC AC8F000C */  sw         $t7, 0xc($a0)
/* A05C0 8009F9C0 8CB80008 */  lw         $t8, 8($a1)
/* A05C4 8009F9C4 AC980010 */  sw         $t8, 0x10($a0)
/* A05C8 8009F9C8 AFA00004 */  sw         $zero, 4($sp)
.L8009F9CC:
/* A05CC 8009F9CC 8FB90004 */  lw         $t9, 4($sp)
/* A05D0 8009F9D0 00194080 */  sll        $t0, $t9, 2
/* A05D4 8009F9D4 00A84821 */  addu       $t1, $a1, $t0
/* A05D8 8009F9D8 8D2A000C */  lw         $t2, 0xc($t1)
/* A05DC 8009F9DC 00885821 */  addu       $t3, $a0, $t0
/* A05E0 8009F9E0 AD6A0018 */  sw         $t2, 0x18($t3)
/* A05E4 8009F9E4 8FAC0004 */  lw         $t4, 4($sp)
/* A05E8 8009F9E8 000C6880 */  sll        $t5, $t4, 2
/* A05EC 8009F9EC 00AD7021 */  addu       $t6, $a1, $t5
/* A05F0 8009F9F0 8DCF004C */  lw         $t7, 0x4c($t6)
/* A05F4 8009F9F4 008DC021 */  addu       $t8, $a0, $t5
/* A05F8 8009F9F8 AF0F0058 */  sw         $t7, 0x58($t8)
/* A05FC 8009F9FC 8FB90004 */  lw         $t9, 4($sp)
/* A0600 8009FA00 00B94821 */  addu       $t1, $a1, $t9
/* A0604 8009FA04 9128008C */  lbu        $t0, 0x8c($t1)
/* A0608 8009FA08 00995021 */  addu       $t2, $a0, $t9
/* A060C 8009FA0C A1480098 */  sb         $t0, 0x98($t2)
/* A0610 8009FA10 8FAB0004 */  lw         $t3, 4($sp)
/* A0614 8009FA14 00AB6021 */  addu       $t4, $a1, $t3
/* A0618 8009FA18 918E009C */  lbu        $t6, 0x9c($t4)
/* A061C 8009FA1C 008B6821 */  addu       $t5, $a0, $t3
/* A0620 8009FA20 A1AE00A8 */  sb         $t6, 0xa8($t5)
/* A0624 8009FA24 8FAF0004 */  lw         $t7, 4($sp)
/* A0628 8009FA28 000FC080 */  sll        $t8, $t7, 2
/* A062C 8009FA2C 00B84821 */  addu       $t1, $a1, $t8
/* A0630 8009FA30 8D3900AC */  lw         $t9, 0xac($t1)
/* A0634 8009FA34 00984021 */  addu       $t0, $a0, $t8
/* A0638 8009FA38 AD1900B8 */  sw         $t9, 0xb8($t0)
/* A063C 8009FA3C 8FAA0004 */  lw         $t2, 4($sp)
/* A0640 8009FA40 254C0001 */  addiu      $t4, $t2, 1
/* A0644 8009FA44 29810010 */  slti       $at, $t4, 0x10
/* A0648 8009FA48 1420FFE0 */  bnez       $at, .L8009F9CC
/* A064C 8009FA4C AFAC0004 */   sw        $t4, 4($sp)
/* A0650 8009FA50 10000001 */  b          .L8009FA58
/* A0654 8009FA54 00000000 */   nop
.L8009FA58:
/* A0658 8009FA58 03E00008 */  jr         $ra
/* A065C 8009FA5C 27BD0008 */   addiu     $sp, $sp, 8

glabel alCSeqGetLoc
/* A0660 8009FA60 27BDFFF8 */  addiu      $sp, $sp, -8
/* A0664 8009FA64 8C8E0004 */  lw         $t6, 4($a0)
/* A0668 8009FA68 ACAE0000 */  sw         $t6, ($a1)
/* A066C 8009FA6C 8C8F000C */  lw         $t7, 0xc($a0)
/* A0670 8009FA70 ACAF0004 */  sw         $t7, 4($a1)
/* A0674 8009FA74 8C980010 */  lw         $t8, 0x10($a0)
/* A0678 8009FA78 ACB80008 */  sw         $t8, 8($a1)
/* A067C 8009FA7C AFA00004 */  sw         $zero, 4($sp)
.L8009FA80:
/* A0680 8009FA80 8FB90004 */  lw         $t9, 4($sp)
/* A0684 8009FA84 00194080 */  sll        $t0, $t9, 2
/* A0688 8009FA88 00884821 */  addu       $t1, $a0, $t0
/* A068C 8009FA8C 8D2A0018 */  lw         $t2, 0x18($t1)
/* A0690 8009FA90 00A85821 */  addu       $t3, $a1, $t0
/* A0694 8009FA94 AD6A000C */  sw         $t2, 0xc($t3)
/* A0698 8009FA98 8FAC0004 */  lw         $t4, 4($sp)
/* A069C 8009FA9C 000C6880 */  sll        $t5, $t4, 2
/* A06A0 8009FAA0 008D7021 */  addu       $t6, $a0, $t5
/* A06A4 8009FAA4 8DCF0058 */  lw         $t7, 0x58($t6)
/* A06A8 8009FAA8 00ADC021 */  addu       $t8, $a1, $t5
/* A06AC 8009FAAC AF0F004C */  sw         $t7, 0x4c($t8)
/* A06B0 8009FAB0 8FB90004 */  lw         $t9, 4($sp)
/* A06B4 8009FAB4 00994821 */  addu       $t1, $a0, $t9
/* A06B8 8009FAB8 91280098 */  lbu        $t0, 0x98($t1)
/* A06BC 8009FABC 00B95021 */  addu       $t2, $a1, $t9
/* A06C0 8009FAC0 A148008C */  sb         $t0, 0x8c($t2)
/* A06C4 8009FAC4 8FAB0004 */  lw         $t3, 4($sp)
/* A06C8 8009FAC8 008B6021 */  addu       $t4, $a0, $t3
/* A06CC 8009FACC 918E00A8 */  lbu        $t6, 0xa8($t4)
/* A06D0 8009FAD0 00AB6821 */  addu       $t5, $a1, $t3
/* A06D4 8009FAD4 A1AE009C */  sb         $t6, 0x9c($t5)
/* A06D8 8009FAD8 8FAF0004 */  lw         $t7, 4($sp)
/* A06DC 8009FADC 000FC080 */  sll        $t8, $t7, 2
/* A06E0 8009FAE0 00984821 */  addu       $t1, $a0, $t8
/* A06E4 8009FAE4 8D3900B8 */  lw         $t9, 0xb8($t1)
/* A06E8 8009FAE8 00B84021 */  addu       $t0, $a1, $t8
/* A06EC 8009FAEC AD1900AC */  sw         $t9, 0xac($t0)
/* A06F0 8009FAF0 8FAA0004 */  lw         $t2, 4($sp)
/* A06F4 8009FAF4 254C0001 */  addiu      $t4, $t2, 1
/* A06F8 8009FAF8 29810010 */  slti       $at, $t4, 0x10
/* A06FC 8009FAFC 1420FFE0 */  bnez       $at, .L8009FA80
/* A0700 8009FB00 AFAC0004 */   sw        $t4, 4($sp)
/* A0704 8009FB04 10000001 */  b          .L8009FB0C
/* A0708 8009FB08 00000000 */   nop
.L8009FB0C:
/* A070C 8009FB0C 03E00008 */  jr         $ra
/* A0710 8009FB10 27BD0008 */   addiu     $sp, $sp, 8

glabel __getTrackByte
/* A0714 8009FB14 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* A0718 8009FB18 00857021 */  addu       $t6, $a0, $a1
/* A071C 8009FB1C 91CF0098 */  lbu        $t7, 0x98($t6)
/* A0720 8009FB20 11E00013 */  beqz       $t7, .L8009FB70
/* A0724 8009FB24 00000000 */   nop
/* A0728 8009FB28 0005C080 */  sll        $t8, $a1, 2
/* A072C 8009FB2C 0098C821 */  addu       $t9, $a0, $t8
/* A0730 8009FB30 8F280058 */  lw         $t0, 0x58($t9)
/* A0734 8009FB34 91090000 */  lbu        $t1, ($t0)
/* A0738 8009FB38 A3A9000F */  sb         $t1, 0xf($sp)
/* A073C 8009FB3C 00055080 */  sll        $t2, $a1, 2
/* A0740 8009FB40 008A5821 */  addu       $t3, $a0, $t2
/* A0744 8009FB44 8D6C0058 */  lw         $t4, 0x58($t3)
/* A0748 8009FB48 00057080 */  sll        $t6, $a1, 2
/* A074C 8009FB4C 008E7821 */  addu       $t7, $a0, $t6
/* A0750 8009FB50 258D0001 */  addiu      $t5, $t4, 1
/* A0754 8009FB54 ADED0058 */  sw         $t5, 0x58($t7)
/* A0758 8009FB58 0085C021 */  addu       $t8, $a0, $a1
/* A075C 8009FB5C 93190098 */  lbu        $t9, 0x98($t8)
/* A0760 8009FB60 00854821 */  addu       $t1, $a0, $a1
/* A0764 8009FB64 2728FFFF */  addiu      $t0, $t9, -1
/* A0768 8009FB68 10000061 */  b          .L8009FCF0
/* A076C 8009FB6C A1280098 */   sb        $t0, 0x98($t1)
.L8009FB70:
/* A0770 8009FB70 00055080 */  sll        $t2, $a1, 2
/* A0774 8009FB74 008A5821 */  addu       $t3, $a0, $t2
/* A0778 8009FB78 8D6C0018 */  lw         $t4, 0x18($t3)
/* A077C 8009FB7C 918E0000 */  lbu        $t6, ($t4)
/* A0780 8009FB80 A3AE000F */  sb         $t6, 0xf($sp)
/* A0784 8009FB84 00056880 */  sll        $t5, $a1, 2
/* A0788 8009FB88 008D7821 */  addu       $t7, $a0, $t5
/* A078C 8009FB8C 8DF80018 */  lw         $t8, 0x18($t7)
/* A0790 8009FB90 00054080 */  sll        $t0, $a1, 2
/* A0794 8009FB94 00884821 */  addu       $t1, $a0, $t0
/* A0798 8009FB98 27190001 */  addiu      $t9, $t8, 1
/* A079C 8009FB9C AD390018 */  sw         $t9, 0x18($t1)
/* A07A0 8009FBA0 93AA000F */  lbu        $t2, 0xf($sp)
/* A07A4 8009FBA4 240100FE */  addiu      $at, $zero, 0xfe
/* A07A8 8009FBA8 15410051 */  bne        $t2, $at, .L8009FCF0
/* A07AC 8009FBAC 00000000 */   nop
/* A07B0 8009FBB0 00055880 */  sll        $t3, $a1, 2
/* A07B4 8009FBB4 008B6021 */  addu       $t4, $a0, $t3
/* A07B8 8009FBB8 8D8E0018 */  lw         $t6, 0x18($t4)
/* A07BC 8009FBBC 91CD0000 */  lbu        $t5, ($t6)
/* A07C0 8009FBC0 A3AD000B */  sb         $t5, 0xb($sp)
/* A07C4 8009FBC4 00057880 */  sll        $t7, $a1, 2
/* A07C8 8009FBC8 008FC021 */  addu       $t8, $a0, $t7
/* A07CC 8009FBCC 8F080018 */  lw         $t0, 0x18($t8)
/* A07D0 8009FBD0 00054880 */  sll        $t1, $a1, 2
/* A07D4 8009FBD4 00895021 */  addu       $t2, $a0, $t1
/* A07D8 8009FBD8 25190001 */  addiu      $t9, $t0, 1
/* A07DC 8009FBDC AD590018 */  sw         $t9, 0x18($t2)
/* A07E0 8009FBE0 93AB000B */  lbu        $t3, 0xb($sp)
/* A07E4 8009FBE4 240100FE */  addiu      $at, $zero, 0xfe
/* A07E8 8009FBE8 11610041 */  beq        $t3, $at, .L8009FCF0
/* A07EC 8009FBEC 00000000 */   nop
/* A07F0 8009FBF0 93AC000B */  lbu        $t4, 0xb($sp)
/* A07F4 8009FBF4 A3AC000D */  sb         $t4, 0xd($sp)
/* A07F8 8009FBF8 00057080 */  sll        $t6, $a1, 2
/* A07FC 8009FBFC 008E6821 */  addu       $t5, $a0, $t6
/* A0800 8009FC00 8DAF0018 */  lw         $t7, 0x18($t5)
/* A0804 8009FC04 91F80000 */  lbu        $t8, ($t7)
/* A0808 8009FC08 A3B8000E */  sb         $t8, 0xe($sp)
/* A080C 8009FC0C 00054080 */  sll        $t0, $a1, 2
/* A0810 8009FC10 00884821 */  addu       $t1, $a0, $t0
/* A0814 8009FC14 8D390018 */  lw         $t9, 0x18($t1)
/* A0818 8009FC18 00055880 */  sll        $t3, $a1, 2
/* A081C 8009FC1C 008B6021 */  addu       $t4, $a0, $t3
/* A0820 8009FC20 272A0001 */  addiu      $t2, $t9, 1
/* A0824 8009FC24 AD8A0018 */  sw         $t2, 0x18($t4)
/* A0828 8009FC28 00057080 */  sll        $t6, $a1, 2
/* A082C 8009FC2C 008E6821 */  addu       $t5, $a0, $t6
/* A0830 8009FC30 8DAF0018 */  lw         $t7, 0x18($t5)
/* A0834 8009FC34 91F80000 */  lbu        $t8, ($t7)
/* A0838 8009FC38 A3B8000C */  sb         $t8, 0xc($sp)
/* A083C 8009FC3C 00054080 */  sll        $t0, $a1, 2
/* A0840 8009FC40 00884821 */  addu       $t1, $a0, $t0
/* A0844 8009FC44 8D390018 */  lw         $t9, 0x18($t1)
/* A0848 8009FC48 00055080 */  sll        $t2, $a1, 2
/* A084C 8009FC4C 008A6021 */  addu       $t4, $a0, $t2
/* A0850 8009FC50 272B0001 */  addiu      $t3, $t9, 1
/* A0854 8009FC54 AD8B0018 */  sw         $t3, 0x18($t4)
/* A0858 8009FC58 93AE000D */  lbu        $t6, 0xd($sp)
/* A085C 8009FC5C AFAE0004 */  sw         $t6, 4($sp)
/* A0860 8009FC60 8FAD0004 */  lw         $t5, 4($sp)
/* A0864 8009FC64 000D7A00 */  sll        $t7, $t5, 8
/* A0868 8009FC68 AFAF0004 */  sw         $t7, 4($sp)
/* A086C 8009FC6C 8FB80004 */  lw         $t8, 4($sp)
/* A0870 8009FC70 93A8000E */  lbu        $t0, 0xe($sp)
/* A0874 8009FC74 03084821 */  addu       $t1, $t8, $t0
/* A0878 8009FC78 AFA90004 */  sw         $t1, 4($sp)
/* A087C 8009FC7C 0005C880 */  sll        $t9, $a1, 2
/* A0880 8009FC80 00995021 */  addu       $t2, $a0, $t9
/* A0884 8009FC84 8D4B0018 */  lw         $t3, 0x18($t2)
/* A0888 8009FC88 8FAC0004 */  lw         $t4, 4($sp)
/* A088C 8009FC8C 00057880 */  sll        $t7, $a1, 2
/* A0890 8009FC90 008FC021 */  addu       $t8, $a0, $t7
/* A0894 8009FC94 016C7023 */  subu       $t6, $t3, $t4
/* A0898 8009FC98 25CDFFFC */  addiu      $t5, $t6, -4
/* A089C 8009FC9C AF0D0058 */  sw         $t5, 0x58($t8)
/* A08A0 8009FCA0 93A8000C */  lbu        $t0, 0xc($sp)
/* A08A4 8009FCA4 00854821 */  addu       $t1, $a0, $a1
/* A08A8 8009FCA8 A1280098 */  sb         $t0, 0x98($t1)
/* A08AC 8009FCAC 0005C880 */  sll        $t9, $a1, 2
/* A08B0 8009FCB0 00995021 */  addu       $t2, $a0, $t9
/* A08B4 8009FCB4 8D4B0058 */  lw         $t3, 0x58($t2)
/* A08B8 8009FCB8 916C0000 */  lbu        $t4, ($t3)
/* A08BC 8009FCBC A3AC000F */  sb         $t4, 0xf($sp)
/* A08C0 8009FCC0 00057080 */  sll        $t6, $a1, 2
/* A08C4 8009FCC4 008E7821 */  addu       $t7, $a0, $t6
/* A08C8 8009FCC8 8DED0058 */  lw         $t5, 0x58($t7)
/* A08CC 8009FCCC 00054080 */  sll        $t0, $a1, 2
/* A08D0 8009FCD0 00884821 */  addu       $t1, $a0, $t0
/* A08D4 8009FCD4 25B80001 */  addiu      $t8, $t5, 1
/* A08D8 8009FCD8 AD380058 */  sw         $t8, 0x58($t1)
/* A08DC 8009FCDC 0085C821 */  addu       $t9, $a0, $a1
/* A08E0 8009FCE0 932A0098 */  lbu        $t2, 0x98($t9)
/* A08E4 8009FCE4 00856021 */  addu       $t4, $a0, $a1
/* A08E8 8009FCE8 254BFFFF */  addiu      $t3, $t2, -1
/* A08EC 8009FCEC A18B0098 */  sb         $t3, 0x98($t4)
.L8009FCF0:
/* A08F0 8009FCF0 10000003 */  b          .L8009FD00
/* A08F4 8009FCF4 93A2000F */   lbu       $v0, 0xf($sp)
/* A08F8 8009FCF8 10000001 */  b          .L8009FD00
/* A08FC 8009FCFC 00000000 */   nop
.L8009FD00:
/* A0900 8009FD00 03E00008 */  jr         $ra
/* A0904 8009FD04 27BD0010 */   addiu     $sp, $sp, 0x10

glabel __readVarLen
/* A0908 8009FD08 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A090C 8009FD0C AFBF0014 */  sw         $ra, 0x14($sp)
/* A0910 8009FD10 AFA40020 */  sw         $a0, 0x20($sp)
/* A0914 8009FD14 AFA50024 */  sw         $a1, 0x24($sp)
/* A0918 8009FD18 8FA40020 */  lw         $a0, 0x20($sp)
/* A091C 8009FD1C 0C027EC5 */  jal        __getTrackByte
/* A0920 8009FD20 8FA50024 */   lw        $a1, 0x24($sp)
/* A0924 8009FD24 AFA2001C */  sw         $v0, 0x1c($sp)
/* A0928 8009FD28 8FAE001C */  lw         $t6, 0x1c($sp)
/* A092C 8009FD2C 31CF0080 */  andi       $t7, $t6, 0x80
/* A0930 8009FD30 11E00012 */  beqz       $t7, .L8009FD7C
/* A0934 8009FD34 00000000 */   nop
/* A0938 8009FD38 8FB8001C */  lw         $t8, 0x1c($sp)
/* A093C 8009FD3C 3319007F */  andi       $t9, $t8, 0x7f
/* A0940 8009FD40 AFB9001C */  sw         $t9, 0x1c($sp)
.L8009FD44:
/* A0944 8009FD44 8FA40020 */  lw         $a0, 0x20($sp)
/* A0948 8009FD48 0C027EC5 */  jal        __getTrackByte
/* A094C 8009FD4C 8FA50024 */   lw        $a1, 0x24($sp)
/* A0950 8009FD50 AFA20018 */  sw         $v0, 0x18($sp)
/* A0954 8009FD54 8FA8001C */  lw         $t0, 0x1c($sp)
/* A0958 8009FD58 8FAA0018 */  lw         $t2, 0x18($sp)
/* A095C 8009FD5C 000849C0 */  sll        $t1, $t0, 7
/* A0960 8009FD60 314B007F */  andi       $t3, $t2, 0x7f
/* A0964 8009FD64 012B6021 */  addu       $t4, $t1, $t3
/* A0968 8009FD68 AFAC001C */  sw         $t4, 0x1c($sp)
/* A096C 8009FD6C 8FAD0018 */  lw         $t5, 0x18($sp)
/* A0970 8009FD70 31AE0080 */  andi       $t6, $t5, 0x80
/* A0974 8009FD74 15C0FFF3 */  bnez       $t6, .L8009FD44
/* A0978 8009FD78 00000000 */   nop
.L8009FD7C:
/* A097C 8009FD7C 10000003 */  b          .L8009FD8C
/* A0980 8009FD80 8FA2001C */   lw        $v0, 0x1c($sp)
/* A0984 8009FD84 10000001 */  b          .L8009FD8C
/* A0988 8009FD88 00000000 */   nop
.L8009FD8C:
/* A098C 8009FD8C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A0990 8009FD90 27BD0020 */  addiu      $sp, $sp, 0x20
/* A0994 8009FD94 03E00008 */  jr         $ra
/* A0998 8009FD98 00000000 */   nop
/* A099C 8009FD9C 00000000 */  nop
