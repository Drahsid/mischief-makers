glabel func_800A00BC
/* A0CBC 800A00BC 27BDFE38 */  addiu      $sp, $sp, -0x1c8
/* A0CC0 800A00C0 27AE0194 */  addiu      $t6, $sp, 0x194
/* A0CC4 800A00C4 AFAE0190 */  sw         $t6, 0x190($sp)
/* A0CC8 800A00C8 84CF0002 */  lh         $t7, 2($a2)
/* A0CCC 800A00CC AFAF01A8 */  sw         $t7, 0x1a8($sp)
/* A0CD0 800A00D0 84B8002E */  lh         $t8, 0x2e($a1)
/* A0CD4 800A00D4 AFB801A4 */  sw         $t8, 0x1a4($sp)
/* A0CD8 800A00D8 8C990000 */  lw         $t9, ($a0)
/* A0CDC 800A00DC AFB901AC */  sw         $t9, 0x1ac($sp)
/* A0CE0 800A00E0 3C0B8018 */  lui        $t3, %hi(D_801856C0)
/* A0CE4 800A00E4 8D6B56C0 */  lw         $t3, %lo(D_801856C0)($t3)
/* A0CE8 800A00E8 00EB082A */  slt        $at, $a3, $t3
/* A0CEC 800A00EC 10200007 */  beqz       $at, .L800A010C
/* A0CF0 800A00F0 00000000 */   nop
/* A0CF4 800A00F4 3C0D8018 */  lui        $t5, %hi(D_801856C4)
/* A0CF8 800A00F8 8DAD56C4 */  lw         $t5, %lo(D_801856C4)($t5)
/* A0CFC 800A00FC 8FAC01D8 */  lw         $t4, 0x1d8($sp)
/* A0D00 800A0100 018D082A */  slt        $at, $t4, $t5
/* A0D04 800A0104 14200003 */  bnez       $at, .L800A0114
/* A0D08 800A0108 00000000 */   nop
.L800A010C:
/* A0D0C 800A010C 10000A11 */  b          .L800A2954
/* A0D10 800A0110 00000000 */   nop
.L800A0114:
/* A0D14 800A0114 3C0F8018 */  lui        $t7, %hi(D_801856C8)
/* A0D18 800A0118 8DEF56C8 */  lw         $t7, %lo(D_801856C8)($t7)
/* A0D1C 800A011C 8FAE01DC */  lw         $t6, 0x1dc($sp)
/* A0D20 800A0120 01CF082A */  slt        $at, $t6, $t7
/* A0D24 800A0124 14200007 */  bnez       $at, .L800A0144
/* A0D28 800A0128 00000000 */   nop
/* A0D2C 800A012C 3C198018 */  lui        $t9, %hi(D_801856CC)
/* A0D30 800A0130 8F3956CC */  lw         $t9, %lo(D_801856CC)($t9)
/* A0D34 800A0134 8FB801E0 */  lw         $t8, 0x1e0($sp)
/* A0D38 800A0138 0319082A */  slt        $at, $t8, $t9
/* A0D3C 800A013C 10200003 */  beqz       $at, .L800A014C
/* A0D40 800A0140 00000000 */   nop
.L800A0144:
/* A0D44 800A0144 10000A03 */  b          .L800A2954
/* A0D48 800A0148 00000000 */   nop
.L800A014C:
/* A0D4C 800A014C 3C0B8018 */  lui        $t3, %hi(D_801856C8)
/* A0D50 800A0150 8D6B56C8 */  lw         $t3, %lo(D_801856C8)($t3)
/* A0D54 800A0154 00EB082A */  slt        $at, $a3, $t3
/* A0D58 800A0158 10200013 */  beqz       $at, .L800A01A8
/* A0D5C 800A015C 00000000 */   nop
/* A0D60 800A0160 3C0C8018 */  lui        $t4, %hi(D_801856C8)
/* A0D64 800A0164 8D8C56C8 */  lw         $t4, %lo(D_801856C8)($t4)
/* A0D68 800A0168 000C6880 */  sll        $t5, $t4, 2
/* A0D6C 800A016C AFAD01BC */  sw         $t5, 0x1bc($sp)
/* A0D70 800A0170 3C0B8018 */  lui        $t3, %hi(D_801856C8)
/* A0D74 800A0174 8D6B56C8 */  lw         $t3, %lo(D_801856C8)($t3)
/* A0D78 800A0178 8FAD01EC */  lw         $t5, 0x1ec($sp)
/* A0D7C 800A017C 84CE0004 */  lh         $t6, 4($a2)
/* A0D80 800A0180 01676023 */  subu       $t4, $t3, $a3
/* A0D84 800A0184 018D0019 */  multu      $t4, $t5
/* A0D88 800A0188 8FB801E4 */  lw         $t8, 0x1e4($sp)
/* A0D8C 800A018C 000E7940 */  sll        $t7, $t6, 5
/* A0D90 800A0190 01F8C821 */  addu       $t9, $t7, $t8
/* A0D94 800A0194 00007012 */  mflo       $t6
/* A0D98 800A0198 000E7943 */  sra        $t7, $t6, 5
/* A0D9C 800A019C 032FC021 */  addu       $t8, $t9, $t7
/* A0DA0 800A01A0 10000008 */  b          .L800A01C4
/* A0DA4 800A01A4 AFB801C4 */   sw        $t8, 0x1c4($sp)
.L800A01A8:
/* A0DA8 800A01A8 00075880 */  sll        $t3, $a3, 2
/* A0DAC 800A01AC AFAB01BC */  sw         $t3, 0x1bc($sp)
/* A0DB0 800A01B0 84CC0004 */  lh         $t4, 4($a2)
/* A0DB4 800A01B4 8FAE01E4 */  lw         $t6, 0x1e4($sp)
/* A0DB8 800A01B8 000C6940 */  sll        $t5, $t4, 5
/* A0DBC 800A01BC 01AEC821 */  addu       $t9, $t5, $t6
/* A0DC0 800A01C0 AFB901C4 */  sw         $t9, 0x1c4($sp)
.L800A01C4:
/* A0DC4 800A01C4 3C188018 */  lui        $t8, %hi(D_801856CC)
/* A0DC8 800A01C8 8F1856CC */  lw         $t8, %lo(D_801856CC)($t8)
/* A0DCC 800A01CC 8FAF01D8 */  lw         $t7, 0x1d8($sp)
/* A0DD0 800A01D0 01F8082A */  slt        $at, $t7, $t8
/* A0DD4 800A01D4 10200014 */  beqz       $at, .L800A0228
/* A0DD8 800A01D8 00000000 */   nop
/* A0DDC 800A01DC 3C0B8018 */  lui        $t3, %hi(D_801856CC)
/* A0DE0 800A01E0 8D6B56CC */  lw         $t3, %lo(D_801856CC)($t3)
/* A0DE4 800A01E4 000B6080 */  sll        $t4, $t3, 2
/* A0DE8 800A01E8 AFAC01B8 */  sw         $t4, 0x1b8($sp)
/* A0DEC 800A01EC 84CD0006 */  lh         $t5, 6($a2)
/* A0DF0 800A01F0 3C188018 */  lui        $t8, %hi(D_801856CC)
/* A0DF4 800A01F4 8F1856CC */  lw         $t8, %lo(D_801856CC)($t8)
/* A0DF8 800A01F8 8FAB01D8 */  lw         $t3, 0x1d8($sp)
/* A0DFC 800A01FC 000D7140 */  sll        $t6, $t5, 5
/* A0E00 800A0200 8FAD01F0 */  lw         $t5, 0x1f0($sp)
/* A0E04 800A0204 030B6023 */  subu       $t4, $t8, $t3
/* A0E08 800A0208 8FB901E8 */  lw         $t9, 0x1e8($sp)
/* A0E0C 800A020C 018D0019 */  multu      $t4, $t5
/* A0E10 800A0210 01D97821 */  addu       $t7, $t6, $t9
/* A0E14 800A0214 00007012 */  mflo       $t6
/* A0E18 800A0218 000EC943 */  sra        $t9, $t6, 5
/* A0E1C 800A021C 01F9C021 */  addu       $t8, $t7, $t9
/* A0E20 800A0220 10000009 */  b          .L800A0248
/* A0E24 800A0224 AFB801C0 */   sw        $t8, 0x1c0($sp)
.L800A0228:
/* A0E28 800A0228 8FAB01D8 */  lw         $t3, 0x1d8($sp)
/* A0E2C 800A022C 000B6080 */  sll        $t4, $t3, 2
/* A0E30 800A0230 AFAC01B8 */  sw         $t4, 0x1b8($sp)
/* A0E34 800A0234 84CD0006 */  lh         $t5, 6($a2)
/* A0E38 800A0238 8FAF01E8 */  lw         $t7, 0x1e8($sp)
/* A0E3C 800A023C 000D7140 */  sll        $t6, $t5, 5
/* A0E40 800A0240 01CFC821 */  addu       $t9, $t6, $t7
/* A0E44 800A0244 AFB901C0 */  sw         $t9, 0x1c0($sp)
.L800A0248:
/* A0E48 800A0248 3C0B8018 */  lui        $t3, %hi(D_801856C0)
/* A0E4C 800A024C 8D6B56C0 */  lw         $t3, %lo(D_801856C0)($t3)
/* A0E50 800A0250 8FB801DC */  lw         $t8, 0x1dc($sp)
/* A0E54 800A0254 030B082A */  slt        $at, $t8, $t3
/* A0E58 800A0258 14200006 */  bnez       $at, .L800A0274
/* A0E5C 800A025C 00000000 */   nop
/* A0E60 800A0260 3C0C8018 */  lui        $t4, %hi(D_801856C0)
/* A0E64 800A0264 8D8C56C0 */  lw         $t4, %lo(D_801856C0)($t4)
/* A0E68 800A0268 000C6880 */  sll        $t5, $t4, 2
/* A0E6C 800A026C 10000004 */  b          .L800A0280
/* A0E70 800A0270 AFAD01B4 */   sw        $t5, 0x1b4($sp)
.L800A0274:
/* A0E74 800A0274 8FAE01DC */  lw         $t6, 0x1dc($sp)
/* A0E78 800A0278 000E7880 */  sll        $t7, $t6, 2
/* A0E7C 800A027C AFAF01B4 */  sw         $t7, 0x1b4($sp)
.L800A0280:
/* A0E80 800A0280 3C188018 */  lui        $t8, %hi(D_801856C4)
/* A0E84 800A0284 8F1856C4 */  lw         $t8, %lo(D_801856C4)($t8)
/* A0E88 800A0288 8FB901E0 */  lw         $t9, 0x1e0($sp)
/* A0E8C 800A028C 0338082A */  slt        $at, $t9, $t8
/* A0E90 800A0290 14200006 */  bnez       $at, .L800A02AC
/* A0E94 800A0294 00000000 */   nop
/* A0E98 800A0298 3C0B8018 */  lui        $t3, %hi(D_801856C4)
/* A0E9C 800A029C 8D6B56C4 */  lw         $t3, %lo(D_801856C4)($t3)
/* A0EA0 800A02A0 000B6080 */  sll        $t4, $t3, 2
/* A0EA4 800A02A4 10000004 */  b          .L800A02B8
/* A0EA8 800A02A8 AFAC01B0 */   sw        $t4, 0x1b0($sp)
.L800A02AC:
/* A0EAC 800A02AC 8FAD01E0 */  lw         $t5, 0x1e0($sp)
/* A0EB0 800A02B0 000D7080 */  sll        $t6, $t5, 2
/* A0EB4 800A02B4 AFAE01B0 */  sw         $t6, 0x1b0($sp)
.L800A02B8:
/* A0EB8 800A02B8 240F0002 */  addiu      $t7, $zero, 2
/* A0EBC 800A02BC AFAF018C */  sw         $t7, 0x18c($sp)
/* A0EC0 800A02C0 24190002 */  addiu      $t9, $zero, 2
/* A0EC4 800A02C4 AFB90188 */  sw         $t9, 0x188($sp)
/* A0EC8 800A02C8 AFA00184 */  sw         $zero, 0x184($sp)
/* A0ECC 800A02CC AFA00180 */  sw         $zero, 0x180($sp)
/* A0ED0 800A02D0 AFA0017C */  sw         $zero, 0x17c($sp)
/* A0ED4 800A02D4 AFA00178 */  sw         $zero, 0x178($sp)
/* A0ED8 800A02D8 3C0B800F */  lui        $t3, %hi(D_800EA540)
/* A0EDC 800A02DC 8D6BA540 */  lw         $t3, %lo(D_800EA540)($t3)
/* A0EE0 800A02E0 8CD80008 */  lw         $t8, 8($a2)
/* A0EE4 800A02E4 130B0909 */  beq        $t8, $t3, .L800A270C
/* A0EE8 800A02E8 00000000 */   nop
/* A0EEC 800A02EC 90A80031 */  lbu        $t0, 0x31($a1)
/* A0EF0 800A02F0 1100000C */  beqz       $t0, .L800A0324
/* A0EF4 800A02F4 00000000 */   nop
/* A0EF8 800A02F8 24010001 */  addiu      $at, $zero, 1
/* A0EFC 800A02FC 1101017D */  beq        $t0, $at, .L800A08F4
/* A0F00 800A0300 00000000 */   nop
/* A0F04 800A0304 24010002 */  addiu      $at, $zero, 2
/* A0F08 800A0308 110102F0 */  beq        $t0, $at, .L800A0ECC
/* A0F0C 800A030C 00000000 */   nop
/* A0F10 800A0310 24010003 */  addiu      $at, $zero, 3
/* A0F14 800A0314 11010780 */  beq        $t0, $at, .L800A2118
/* A0F18 800A0318 00000000 */   nop
/* A0F1C 800A031C 100008F8 */  b          .L800A2700
/* A0F20 800A0320 00000000 */   nop
.L800A0324:
/* A0F24 800A0324 94AC0014 */  lhu        $t4, 0x14($a1)
/* A0F28 800A0328 318D0200 */  andi       $t5, $t4, 0x200
/* A0F2C 800A032C 11A000A3 */  beqz       $t5, .L800A05BC
/* A0F30 800A0330 00000000 */   nop
/* A0F34 800A0334 8FAE01AC */  lw         $t6, 0x1ac($sp)
/* A0F38 800A0338 25CF0008 */  addiu      $t7, $t6, 8
/* A0F3C 800A033C AFAF01AC */  sw         $t7, 0x1ac($sp)
/* A0F40 800A0340 AFAE0174 */  sw         $t6, 0x174($sp)
/* A0F44 800A0344 90B90030 */  lbu        $t9, 0x30($a1)
/* A0F48 800A0348 3C01FD00 */  lui        $at, 0xfd00
/* A0F4C 800A034C 8FAE0174 */  lw         $t6, 0x174($sp)
/* A0F50 800A0350 33380007 */  andi       $t8, $t9, 7
/* A0F54 800A0354 00185D40 */  sll        $t3, $t8, 0x15
/* A0F58 800A0358 01616025 */  or         $t4, $t3, $at
/* A0F5C 800A035C 3C010010 */  lui        $at, 0x10
/* A0F60 800A0360 01816825 */  or         $t5, $t4, $at
/* A0F64 800A0364 ADCD0000 */  sw         $t5, ($t6)
/* A0F68 800A0368 8CCF0008 */  lw         $t7, 8($a2)
/* A0F6C 800A036C 8FB90174 */  lw         $t9, 0x174($sp)
/* A0F70 800A0370 AF2F0004 */  sw         $t7, 4($t9)
/* A0F74 800A0374 8FB801AC */  lw         $t8, 0x1ac($sp)
/* A0F78 800A0378 270B0008 */  addiu      $t3, $t8, 8
/* A0F7C 800A037C AFAB01AC */  sw         $t3, 0x1ac($sp)
/* A0F80 800A0380 AFB80170 */  sw         $t8, 0x170($sp)
/* A0F84 800A0384 90AC0030 */  lbu        $t4, 0x30($a1)
/* A0F88 800A0388 3C01F500 */  lui        $at, 0xf500
/* A0F8C 800A038C 8FB80170 */  lw         $t8, 0x170($sp)
/* A0F90 800A0390 318D0007 */  andi       $t5, $t4, 7
/* A0F94 800A0394 000D7540 */  sll        $t6, $t5, 0x15
/* A0F98 800A0398 01C17825 */  or         $t7, $t6, $at
/* A0F9C 800A039C 3C010010 */  lui        $at, 0x10
/* A0FA0 800A03A0 01E1C825 */  or         $t9, $t7, $at
/* A0FA4 800A03A4 AF190000 */  sw         $t9, ($t8)
/* A0FA8 800A03A8 8FAB0188 */  lw         $t3, 0x188($sp)
/* A0FAC 800A03AC 8FAF0180 */  lw         $t7, 0x180($sp)
/* A0FB0 800A03B0 3C010700 */  lui        $at, 0x700
/* A0FB4 800A03B4 316C0003 */  andi       $t4, $t3, 3
/* A0FB8 800A03B8 000C6C80 */  sll        $t5, $t4, 0x12
/* A0FBC 800A03BC 8FAC0178 */  lw         $t4, 0x178($sp)
/* A0FC0 800A03C0 01A17025 */  or         $t6, $t5, $at
/* A0FC4 800A03C4 31F9000F */  andi       $t9, $t7, 0xf
/* A0FC8 800A03C8 0019C380 */  sll        $t8, $t9, 0xe
/* A0FCC 800A03CC 01D85825 */  or         $t3, $t6, $t8
/* A0FD0 800A03D0 8FAE018C */  lw         $t6, 0x18c($sp)
/* A0FD4 800A03D4 318D000F */  andi       $t5, $t4, 0xf
/* A0FD8 800A03D8 000D7A80 */  sll        $t7, $t5, 0xa
/* A0FDC 800A03DC 016FC825 */  or         $t9, $t3, $t7
/* A0FE0 800A03E0 8FAB0184 */  lw         $t3, 0x184($sp)
/* A0FE4 800A03E4 31D80003 */  andi       $t8, $t6, 3
/* A0FE8 800A03E8 00186200 */  sll        $t4, $t8, 8
/* A0FEC 800A03EC 032C6825 */  or         $t5, $t9, $t4
/* A0FF0 800A03F0 8FB9017C */  lw         $t9, 0x17c($sp)
/* A0FF4 800A03F4 316F000F */  andi       $t7, $t3, 0xf
/* A0FF8 800A03F8 000F7100 */  sll        $t6, $t7, 4
/* A0FFC 800A03FC 8FAF0170 */  lw         $t7, 0x170($sp)
/* A1000 800A0400 01AEC025 */  or         $t8, $t5, $t6
/* A1004 800A0404 332C000F */  andi       $t4, $t9, 0xf
/* A1008 800A0408 030C5825 */  or         $t3, $t8, $t4
/* A100C 800A040C ADEB0004 */  sw         $t3, 4($t7)
/* A1010 800A0410 8FAD01AC */  lw         $t5, 0x1ac($sp)
/* A1014 800A0414 25AE0008 */  addiu      $t6, $t5, 8
/* A1018 800A0418 AFAE01AC */  sw         $t6, 0x1ac($sp)
/* A101C 800A041C AFAD016C */  sw         $t5, 0x16c($sp)
/* A1020 800A0420 8FB8016C */  lw         $t8, 0x16c($sp)
/* A1024 800A0424 3C19E600 */  lui        $t9, 0xe600
/* A1028 800A0428 AF190000 */  sw         $t9, ($t8)
/* A102C 800A042C 8FAC016C */  lw         $t4, 0x16c($sp)
/* A1030 800A0430 AD800004 */  sw         $zero, 4($t4)
/* A1034 800A0434 8FAB01AC */  lw         $t3, 0x1ac($sp)
/* A1038 800A0438 256F0008 */  addiu      $t7, $t3, 8
/* A103C 800A043C AFAF01AC */  sw         $t7, 0x1ac($sp)
/* A1040 800A0440 AFAB0168 */  sw         $t3, 0x168($sp)
/* A1044 800A0444 8FAE0168 */  lw         $t6, 0x168($sp)
/* A1048 800A0448 3C0DF300 */  lui        $t5, 0xf300
/* A104C 800A044C ADCD0000 */  sw         $t5, ($t6)
/* A1050 800A0450 8FB901A8 */  lw         $t9, 0x1a8($sp)
/* A1054 800A0454 8FB801A4 */  lw         $t8, 0x1a4($sp)
/* A1058 800A0458 03380019 */  multu      $t9, $t8
/* A105C 800A045C 00006012 */  mflo       $t4
/* A1060 800A0460 258B0003 */  addiu      $t3, $t4, 3
/* A1064 800A0464 000B7883 */  sra        $t7, $t3, 2
/* A1068 800A0468 25EDFFFF */  addiu      $t5, $t7, -1
/* A106C 800A046C 29A107FF */  slti       $at, $t5, 0x7ff
/* A1070 800A0470 10200003 */  beqz       $at, .L800A0480
/* A1074 800A0474 00000000 */   nop
/* A1078 800A0478 10000002 */  b          .L800A0484
/* A107C 800A047C 01A04025 */   or        $t0, $t5, $zero
.L800A0480:
/* A1080 800A0480 240807FF */  addiu      $t0, $zero, 0x7ff
.L800A0484:
/* A1084 800A0484 8FAC0168 */  lw         $t4, 0x168($sp)
/* A1088 800A0488 310E0FFF */  andi       $t6, $t0, 0xfff
/* A108C 800A048C 000ECB00 */  sll        $t9, $t6, 0xc
/* A1090 800A0490 3C010700 */  lui        $at, 0x700
/* A1094 800A0494 0321C025 */  or         $t8, $t9, $at
/* A1098 800A0498 AD980004 */  sw         $t8, 4($t4)
/* A109C 800A049C 8FAB01AC */  lw         $t3, 0x1ac($sp)
/* A10A0 800A04A0 256F0008 */  addiu      $t7, $t3, 8
/* A10A4 800A04A4 AFAF01AC */  sw         $t7, 0x1ac($sp)
/* A10A8 800A04A8 AFAB0164 */  sw         $t3, 0x164($sp)
/* A10AC 800A04AC 8FAE0164 */  lw         $t6, 0x164($sp)
/* A10B0 800A04B0 3C0DE700 */  lui        $t5, 0xe700
/* A10B4 800A04B4 ADCD0000 */  sw         $t5, ($t6)
/* A10B8 800A04B8 8FB90164 */  lw         $t9, 0x164($sp)
/* A10BC 800A04BC AF200004 */  sw         $zero, 4($t9)
/* A10C0 800A04C0 8FB801AC */  lw         $t8, 0x1ac($sp)
/* A10C4 800A04C4 270C0008 */  addiu      $t4, $t8, 8
/* A10C8 800A04C8 AFAC01AC */  sw         $t4, 0x1ac($sp)
/* A10CC 800A04CC AFB80160 */  sw         $t8, 0x160($sp)
/* A10D0 800A04D0 90AB0030 */  lbu        $t3, 0x30($a1)
/* A10D4 800A04D4 8FB901A8 */  lw         $t9, 0x1a8($sp)
/* A10D8 800A04D8 3C01F500 */  lui        $at, 0xf500
/* A10DC 800A04DC 316F0007 */  andi       $t7, $t3, 7
/* A10E0 800A04E0 0019C043 */  sra        $t8, $t9, 1
/* A10E4 800A04E4 270C0007 */  addiu      $t4, $t8, 7
/* A10E8 800A04E8 000F6D40 */  sll        $t5, $t7, 0x15
/* A10EC 800A04EC 000C58C3 */  sra        $t3, $t4, 3
/* A10F0 800A04F0 8FB80160 */  lw         $t8, 0x160($sp)
/* A10F4 800A04F4 316F01FF */  andi       $t7, $t3, 0x1ff
/* A10F8 800A04F8 01A17025 */  or         $t6, $t5, $at
/* A10FC 800A04FC 000F6A40 */  sll        $t5, $t7, 9
/* A1100 800A0500 01CDC825 */  or         $t9, $t6, $t5
/* A1104 800A0504 AF190000 */  sw         $t9, ($t8)
/* A1108 800A0508 8FAC0188 */  lw         $t4, 0x188($sp)
/* A110C 800A050C 8FAE0180 */  lw         $t6, 0x180($sp)
/* A1110 800A0510 318B0003 */  andi       $t3, $t4, 3
/* A1114 800A0514 8FAC0178 */  lw         $t4, 0x178($sp)
/* A1118 800A0518 000B7C80 */  sll        $t7, $t3, 0x12
/* A111C 800A051C 31CD000F */  andi       $t5, $t6, 0xf
/* A1120 800A0520 000DCB80 */  sll        $t9, $t5, 0xe
/* A1124 800A0524 01F9C025 */  or         $t8, $t7, $t9
/* A1128 800A0528 8FAF018C */  lw         $t7, 0x18c($sp)
/* A112C 800A052C 318B000F */  andi       $t3, $t4, 0xf
/* A1130 800A0530 000B7280 */  sll        $t6, $t3, 0xa
/* A1134 800A0534 030E6825 */  or         $t5, $t8, $t6
/* A1138 800A0538 8FB80184 */  lw         $t8, 0x184($sp)
/* A113C 800A053C 31F90003 */  andi       $t9, $t7, 3
/* A1140 800A0540 00196200 */  sll        $t4, $t9, 8
/* A1144 800A0544 01AC5825 */  or         $t3, $t5, $t4
/* A1148 800A0548 8FAD017C */  lw         $t5, 0x17c($sp)
/* A114C 800A054C 330E000F */  andi       $t6, $t8, 0xf
/* A1150 800A0550 000E7900 */  sll        $t7, $t6, 4
/* A1154 800A0554 8FAE0160 */  lw         $t6, 0x160($sp)
/* A1158 800A0558 016FC825 */  or         $t9, $t3, $t7
/* A115C 800A055C 31AC000F */  andi       $t4, $t5, 0xf
/* A1160 800A0560 032CC025 */  or         $t8, $t9, $t4
/* A1164 800A0564 ADD80004 */  sw         $t8, 4($t6)
/* A1168 800A0568 8FAB01AC */  lw         $t3, 0x1ac($sp)
/* A116C 800A056C 256F0008 */  addiu      $t7, $t3, 8
/* A1170 800A0570 AFAF01AC */  sw         $t7, 0x1ac($sp)
/* A1174 800A0574 AFAB015C */  sw         $t3, 0x15c($sp)
/* A1178 800A0578 8FB9015C */  lw         $t9, 0x15c($sp)
/* A117C 800A057C 3C0DF200 */  lui        $t5, 0xf200
/* A1180 800A0580 AF2D0000 */  sw         $t5, ($t9)
/* A1184 800A0584 8FAC01A8 */  lw         $t4, 0x1a8($sp)
/* A1188 800A0588 8FAD01A4 */  lw         $t5, 0x1a4($sp)
/* A118C 800A058C 2598FFFF */  addiu      $t8, $t4, -1
/* A1190 800A0590 00187080 */  sll        $t6, $t8, 2
/* A1194 800A0594 31CB0FFF */  andi       $t3, $t6, 0xfff
/* A1198 800A0598 000B7B00 */  sll        $t7, $t3, 0xc
/* A119C 800A059C 25B9FFFF */  addiu      $t9, $t5, -1
/* A11A0 800A05A0 8FAB015C */  lw         $t3, 0x15c($sp)
/* A11A4 800A05A4 00196080 */  sll        $t4, $t9, 2
/* A11A8 800A05A8 31980FFF */  andi       $t8, $t4, 0xfff
/* A11AC 800A05AC 01F87025 */  or         $t6, $t7, $t8
/* A11B0 800A05B0 AD6E0004 */  sw         $t6, 4($t3)
/* A11B4 800A05B4 100000CD */  b          .L800A08EC
/* A11B8 800A05B8 00000000 */   nop
.L800A05BC:
/* A11BC 800A05BC 8FAD01AC */  lw         $t5, 0x1ac($sp)
/* A11C0 800A05C0 25B90008 */  addiu      $t9, $t5, 8
/* A11C4 800A05C4 AFB901AC */  sw         $t9, 0x1ac($sp)
/* A11C8 800A05C8 AFAD0158 */  sw         $t5, 0x158($sp)
/* A11CC 800A05CC 90AC0030 */  lbu        $t4, 0x30($a1)
/* A11D0 800A05D0 3C01FD00 */  lui        $at, 0xfd00
/* A11D4 800A05D4 8FAD0158 */  lw         $t5, 0x158($sp)
/* A11D8 800A05D8 318F0007 */  andi       $t7, $t4, 7
/* A11DC 800A05DC 000FC540 */  sll        $t8, $t7, 0x15
/* A11E0 800A05E0 03017025 */  or         $t6, $t8, $at
/* A11E4 800A05E4 3C010010 */  lui        $at, 0x10
/* A11E8 800A05E8 01C15825 */  or         $t3, $t6, $at
/* A11EC 800A05EC ADAB0000 */  sw         $t3, ($t5)
/* A11F0 800A05F0 8CD90008 */  lw         $t9, 8($a2)
/* A11F4 800A05F4 8FAC0158 */  lw         $t4, 0x158($sp)
/* A11F8 800A05F8 AD990004 */  sw         $t9, 4($t4)
/* A11FC 800A05FC 8FAF01AC */  lw         $t7, 0x1ac($sp)
/* A1200 800A0600 25F80008 */  addiu      $t8, $t7, 8
/* A1204 800A0604 AFB801AC */  sw         $t8, 0x1ac($sp)
/* A1208 800A0608 AFAF0154 */  sw         $t7, 0x154($sp)
/* A120C 800A060C 90AE0030 */  lbu        $t6, 0x30($a1)
/* A1210 800A0610 3C01F500 */  lui        $at, 0xf500
/* A1214 800A0614 8FAF0154 */  lw         $t7, 0x154($sp)
/* A1218 800A0618 31CB0007 */  andi       $t3, $t6, 7
/* A121C 800A061C 000B6D40 */  sll        $t5, $t3, 0x15
/* A1220 800A0620 01A1C825 */  or         $t9, $t5, $at
/* A1224 800A0624 3C010010 */  lui        $at, 0x10
/* A1228 800A0628 03216025 */  or         $t4, $t9, $at
/* A122C 800A062C ADEC0000 */  sw         $t4, ($t7)
/* A1230 800A0630 8FB80188 */  lw         $t8, 0x188($sp)
/* A1234 800A0634 8FB90180 */  lw         $t9, 0x180($sp)
/* A1238 800A0638 3C010700 */  lui        $at, 0x700
/* A123C 800A063C 330E0003 */  andi       $t6, $t8, 3
/* A1240 800A0640 000E5C80 */  sll        $t3, $t6, 0x12
/* A1244 800A0644 8FAE0178 */  lw         $t6, 0x178($sp)
/* A1248 800A0648 01616825 */  or         $t5, $t3, $at
/* A124C 800A064C 332C000F */  andi       $t4, $t9, 0xf
/* A1250 800A0650 000C7B80 */  sll        $t7, $t4, 0xe
/* A1254 800A0654 01AFC025 */  or         $t8, $t5, $t7
/* A1258 800A0658 8FAD018C */  lw         $t5, 0x18c($sp)
/* A125C 800A065C 31CB000F */  andi       $t3, $t6, 0xf
/* A1260 800A0660 000BCA80 */  sll        $t9, $t3, 0xa
/* A1264 800A0664 03196025 */  or         $t4, $t8, $t9
/* A1268 800A0668 8FB80184 */  lw         $t8, 0x184($sp)
/* A126C 800A066C 31AF0003 */  andi       $t7, $t5, 3
/* A1270 800A0670 000F7200 */  sll        $t6, $t7, 8
/* A1274 800A0674 018E5825 */  or         $t3, $t4, $t6
/* A1278 800A0678 8FAC017C */  lw         $t4, 0x17c($sp)
/* A127C 800A067C 3319000F */  andi       $t9, $t8, 0xf
/* A1280 800A0680 00196900 */  sll        $t5, $t9, 4
/* A1284 800A0684 8FB90154 */  lw         $t9, 0x154($sp)
/* A1288 800A0688 016D7825 */  or         $t7, $t3, $t5
/* A128C 800A068C 318E000F */  andi       $t6, $t4, 0xf
/* A1290 800A0690 01EEC025 */  or         $t8, $t7, $t6
/* A1294 800A0694 AF380004 */  sw         $t8, 4($t9)
/* A1298 800A0698 8FAB01AC */  lw         $t3, 0x1ac($sp)
/* A129C 800A069C 256D0008 */  addiu      $t5, $t3, 8
/* A12A0 800A06A0 AFAD01AC */  sw         $t5, 0x1ac($sp)
/* A12A4 800A06A4 AFAB0150 */  sw         $t3, 0x150($sp)
/* A12A8 800A06A8 8FAF0150 */  lw         $t7, 0x150($sp)
/* A12AC 800A06AC 3C0CE600 */  lui        $t4, 0xe600
/* A12B0 800A06B0 ADEC0000 */  sw         $t4, ($t7)
/* A12B4 800A06B4 8FAE0150 */  lw         $t6, 0x150($sp)
/* A12B8 800A06B8 ADC00004 */  sw         $zero, 4($t6)
/* A12BC 800A06BC 8FB801AC */  lw         $t8, 0x1ac($sp)
/* A12C0 800A06C0 27190008 */  addiu      $t9, $t8, 8
/* A12C4 800A06C4 AFB901AC */  sw         $t9, 0x1ac($sp)
/* A12C8 800A06C8 AFB8014C */  sw         $t8, 0x14c($sp)
/* A12CC 800A06CC 8FAD014C */  lw         $t5, 0x14c($sp)
/* A12D0 800A06D0 3C0BF300 */  lui        $t3, 0xf300
/* A12D4 800A06D4 ADAB0000 */  sw         $t3, ($t5)
/* A12D8 800A06D8 8FAC01A8 */  lw         $t4, 0x1a8($sp)
/* A12DC 800A06DC 8FAF01A4 */  lw         $t7, 0x1a4($sp)
/* A12E0 800A06E0 018F0019 */  multu      $t4, $t7
/* A12E4 800A06E4 00007012 */  mflo       $t6
/* A12E8 800A06E8 25D80003 */  addiu      $t8, $t6, 3
/* A12EC 800A06EC 0018C883 */  sra        $t9, $t8, 2
/* A12F0 800A06F0 272BFFFF */  addiu      $t3, $t9, -1
/* A12F4 800A06F4 296107FF */  slti       $at, $t3, 0x7ff
/* A12F8 800A06F8 10200003 */  beqz       $at, .L800A0708
/* A12FC 800A06FC 00000000 */   nop
/* A1300 800A0700 10000002 */  b          .L800A070C
/* A1304 800A0704 01605025 */   or        $t2, $t3, $zero
.L800A0708:
/* A1308 800A0708 240A07FF */  addiu      $t2, $zero, 0x7ff
.L800A070C:
/* A130C 800A070C 8FAD01A8 */  lw         $t5, 0x1a8($sp)
/* A1310 800A0710 05A10003 */  bgez       $t5, .L800A0720
/* A1314 800A0714 000D6103 */   sra       $t4, $t5, 4
/* A1318 800A0718 25A1000F */  addiu      $at, $t5, 0xf
/* A131C 800A071C 00016103 */  sra        $t4, $at, 4
.L800A0720:
/* A1320 800A0720 1D800003 */  bgtz       $t4, .L800A0730
/* A1324 800A0724 00000000 */   nop
/* A1328 800A0728 10000007 */  b          .L800A0748
/* A132C 800A072C 24090001 */   addiu     $t1, $zero, 1
.L800A0730:
/* A1330 800A0730 8FA901A8 */  lw         $t1, 0x1a8($sp)
/* A1334 800A0734 05210003 */  bgez       $t1, .L800A0744
/* A1338 800A0738 00097903 */   sra       $t7, $t1, 4
/* A133C 800A073C 2521000F */  addiu      $at, $t1, 0xf
/* A1340 800A0740 00017903 */  sra        $t7, $at, 4
.L800A0744:
/* A1344 800A0744 01E04825 */  or         $t1, $t7, $zero
.L800A0748:
/* A1348 800A0748 8FAE01A8 */  lw         $t6, 0x1a8($sp)
/* A134C 800A074C 05C10003 */  bgez       $t6, .L800A075C
/* A1350 800A0750 000EC103 */   sra       $t8, $t6, 4
/* A1354 800A0754 25C1000F */  addiu      $at, $t6, 0xf
/* A1358 800A0758 0001C103 */  sra        $t8, $at, 4
.L800A075C:
/* A135C 800A075C 1F000003 */  bgtz       $t8, .L800A076C
/* A1360 800A0760 00000000 */   nop
/* A1364 800A0764 10000007 */  b          .L800A0784
/* A1368 800A0768 24080001 */   addiu     $t0, $zero, 1
.L800A076C:
/* A136C 800A076C 8FA801A8 */  lw         $t0, 0x1a8($sp)
/* A1370 800A0770 05010003 */  bgez       $t0, .L800A0780
/* A1374 800A0774 0008C903 */   sra       $t9, $t0, 4
/* A1378 800A0778 2501000F */  addiu      $at, $t0, 0xf
/* A137C 800A077C 0001C903 */  sra        $t9, $at, 4
.L800A0780:
/* A1380 800A0780 03204025 */  or         $t0, $t9, $zero
.L800A0784:
/* A1384 800A0784 252B07FF */  addiu      $t3, $t1, 0x7ff
/* A1388 800A0788 0168001A */  div        $zero, $t3, $t0
/* A138C 800A078C 15000002 */  bnez       $t0, .L800A0798
/* A1390 800A0790 00000000 */   nop
/* A1394 800A0794 0007000D */  break      7
.L800A0798:
/* A1398 800A0798 2401FFFF */   addiu     $at, $zero, -1
/* A139C 800A079C 15010004 */  bne        $t0, $at, .L800A07B0
/* A13A0 800A07A0 3C018000 */   lui       $at, 0x8000
/* A13A4 800A07A4 15610002 */  bne        $t3, $at, .L800A07B0
/* A13A8 800A07A8 00000000 */   nop
/* A13AC 800A07AC 0006000D */  break      6
.L800A07B0:
/* A13B0 800A07B0 314F0FFF */   andi      $t7, $t2, 0xfff
/* A13B4 800A07B4 8FAB014C */  lw         $t3, 0x14c($sp)
/* A13B8 800A07B8 000F7300 */  sll        $t6, $t7, 0xc
/* A13BC 800A07BC 3C010700 */  lui        $at, 0x700
/* A13C0 800A07C0 00006812 */  mflo       $t5
/* A13C4 800A07C4 31AC0FFF */  andi       $t4, $t5, 0xfff
/* A13C8 800A07C8 01C1C025 */  or         $t8, $t6, $at
/* A13CC 800A07CC 0198C825 */  or         $t9, $t4, $t8
/* A13D0 800A07D0 AD790004 */  sw         $t9, 4($t3)
/* A13D4 800A07D4 8FAD01AC */  lw         $t5, 0x1ac($sp)
/* A13D8 800A07D8 25AF0008 */  addiu      $t7, $t5, 8
/* A13DC 800A07DC AFAF01AC */  sw         $t7, 0x1ac($sp)
/* A13E0 800A07E0 AFAD0148 */  sw         $t5, 0x148($sp)
/* A13E4 800A07E4 8FAC0148 */  lw         $t4, 0x148($sp)
/* A13E8 800A07E8 3C0EE700 */  lui        $t6, 0xe700
/* A13EC 800A07EC AD8E0000 */  sw         $t6, ($t4)
/* A13F0 800A07F0 8FB80148 */  lw         $t8, 0x148($sp)
/* A13F4 800A07F4 AF000004 */  sw         $zero, 4($t8)
/* A13F8 800A07F8 8FB901AC */  lw         $t9, 0x1ac($sp)
/* A13FC 800A07FC 272B0008 */  addiu      $t3, $t9, 8
/* A1400 800A0800 AFAB01AC */  sw         $t3, 0x1ac($sp)
/* A1404 800A0804 AFB90144 */  sw         $t9, 0x144($sp)
/* A1408 800A0808 90AD0030 */  lbu        $t5, 0x30($a1)
/* A140C 800A080C 8FB801A8 */  lw         $t8, 0x1a8($sp)
/* A1410 800A0810 3C01F500 */  lui        $at, 0xf500
/* A1414 800A0814 31AF0007 */  andi       $t7, $t5, 7
/* A1418 800A0818 0018C843 */  sra        $t9, $t8, 1
/* A141C 800A081C 272B0007 */  addiu      $t3, $t9, 7
/* A1420 800A0820 000F7540 */  sll        $t6, $t7, 0x15
/* A1424 800A0824 000B68C3 */  sra        $t5, $t3, 3
/* A1428 800A0828 8FB90144 */  lw         $t9, 0x144($sp)
/* A142C 800A082C 31AF01FF */  andi       $t7, $t5, 0x1ff
/* A1430 800A0830 01C16025 */  or         $t4, $t6, $at
/* A1434 800A0834 000F7240 */  sll        $t6, $t7, 9
/* A1438 800A0838 018EC025 */  or         $t8, $t4, $t6
/* A143C 800A083C AF380000 */  sw         $t8, ($t9)
/* A1440 800A0840 8FAB0188 */  lw         $t3, 0x188($sp)
/* A1444 800A0844 8FAC0180 */  lw         $t4, 0x180($sp)
/* A1448 800A0848 316D0003 */  andi       $t5, $t3, 3
/* A144C 800A084C 8FAB0178 */  lw         $t3, 0x178($sp)
/* A1450 800A0850 000D7C80 */  sll        $t7, $t5, 0x12
/* A1454 800A0854 318E000F */  andi       $t6, $t4, 0xf
/* A1458 800A0858 000EC380 */  sll        $t8, $t6, 0xe
/* A145C 800A085C 01F8C825 */  or         $t9, $t7, $t8
/* A1460 800A0860 8FAF018C */  lw         $t7, 0x18c($sp)
/* A1464 800A0864 316D000F */  andi       $t5, $t3, 0xf
/* A1468 800A0868 000D6280 */  sll        $t4, $t5, 0xa
/* A146C 800A086C 032C7025 */  or         $t6, $t9, $t4
/* A1470 800A0870 8FB90184 */  lw         $t9, 0x184($sp)
/* A1474 800A0874 31F80003 */  andi       $t8, $t7, 3
/* A1478 800A0878 00185A00 */  sll        $t3, $t8, 8
/* A147C 800A087C 01CB6825 */  or         $t5, $t6, $t3
/* A1480 800A0880 8FAE017C */  lw         $t6, 0x17c($sp)
/* A1484 800A0884 332C000F */  andi       $t4, $t9, 0xf
/* A1488 800A0888 000C7900 */  sll        $t7, $t4, 4
/* A148C 800A088C 8FAC0144 */  lw         $t4, 0x144($sp)
/* A1490 800A0890 01AFC025 */  or         $t8, $t5, $t7
/* A1494 800A0894 31CB000F */  andi       $t3, $t6, 0xf
/* A1498 800A0898 030BC825 */  or         $t9, $t8, $t3
/* A149C 800A089C AD990004 */  sw         $t9, 4($t4)
/* A14A0 800A08A0 8FAD01AC */  lw         $t5, 0x1ac($sp)
/* A14A4 800A08A4 25AF0008 */  addiu      $t7, $t5, 8
/* A14A8 800A08A8 AFAF01AC */  sw         $t7, 0x1ac($sp)
/* A14AC 800A08AC AFAD0140 */  sw         $t5, 0x140($sp)
/* A14B0 800A08B0 8FB80140 */  lw         $t8, 0x140($sp)
/* A14B4 800A08B4 3C0EF200 */  lui        $t6, 0xf200
/* A14B8 800A08B8 AF0E0000 */  sw         $t6, ($t8)
/* A14BC 800A08BC 8FAB01A8 */  lw         $t3, 0x1a8($sp)
/* A14C0 800A08C0 8FAE01A4 */  lw         $t6, 0x1a4($sp)
/* A14C4 800A08C4 2579FFFF */  addiu      $t9, $t3, -1
/* A14C8 800A08C8 00196080 */  sll        $t4, $t9, 2
/* A14CC 800A08CC 318D0FFF */  andi       $t5, $t4, 0xfff
/* A14D0 800A08D0 000D7B00 */  sll        $t7, $t5, 0xc
/* A14D4 800A08D4 25D8FFFF */  addiu      $t8, $t6, -1
/* A14D8 800A08D8 8FAD0140 */  lw         $t5, 0x140($sp)
/* A14DC 800A08DC 00185880 */  sll        $t3, $t8, 2
/* A14E0 800A08E0 31790FFF */  andi       $t9, $t3, 0xfff
/* A14E4 800A08E4 01F96025 */  or         $t4, $t7, $t9
/* A14E8 800A08E8 ADAC0004 */  sw         $t4, 4($t5)
.L800A08EC:
/* A14EC 800A08EC 10000784 */  b          .L800A2700
/* A14F0 800A08F0 00000000 */   nop
.L800A08F4:
/* A14F4 800A08F4 94AE0014 */  lhu        $t6, 0x14($a1)
/* A14F8 800A08F8 31D80200 */  andi       $t8, $t6, 0x200
/* A14FC 800A08FC 130000A4 */  beqz       $t8, .L800A0B90
/* A1500 800A0900 00000000 */   nop
/* A1504 800A0904 8FAB01AC */  lw         $t3, 0x1ac($sp)
/* A1508 800A0908 256F0008 */  addiu      $t7, $t3, 8
/* A150C 800A090C AFAF01AC */  sw         $t7, 0x1ac($sp)
/* A1510 800A0910 AFAB013C */  sw         $t3, 0x13c($sp)
/* A1514 800A0914 90B90030 */  lbu        $t9, 0x30($a1)
/* A1518 800A0918 3C01FD00 */  lui        $at, 0xfd00
/* A151C 800A091C 8FAB013C */  lw         $t3, 0x13c($sp)
/* A1520 800A0920 332C0007 */  andi       $t4, $t9, 7
/* A1524 800A0924 000C6D40 */  sll        $t5, $t4, 0x15
/* A1528 800A0928 01A17025 */  or         $t6, $t5, $at
/* A152C 800A092C 3C010010 */  lui        $at, 0x10
/* A1530 800A0930 01C1C025 */  or         $t8, $t6, $at
/* A1534 800A0934 AD780000 */  sw         $t8, ($t3)
/* A1538 800A0938 8CCF0008 */  lw         $t7, 8($a2)
/* A153C 800A093C 8FB9013C */  lw         $t9, 0x13c($sp)
/* A1540 800A0940 AF2F0004 */  sw         $t7, 4($t9)
/* A1544 800A0944 8FAC01AC */  lw         $t4, 0x1ac($sp)
/* A1548 800A0948 258D0008 */  addiu      $t5, $t4, 8
/* A154C 800A094C AFAD01AC */  sw         $t5, 0x1ac($sp)
/* A1550 800A0950 AFAC0138 */  sw         $t4, 0x138($sp)
/* A1554 800A0954 90AE0030 */  lbu        $t6, 0x30($a1)
/* A1558 800A0958 3C01F500 */  lui        $at, 0xf500
/* A155C 800A095C 8FAC0138 */  lw         $t4, 0x138($sp)
/* A1560 800A0960 31D80007 */  andi       $t8, $t6, 7
/* A1564 800A0964 00185D40 */  sll        $t3, $t8, 0x15
/* A1568 800A0968 01617825 */  or         $t7, $t3, $at
/* A156C 800A096C 3C010010 */  lui        $at, 0x10
/* A1570 800A0970 01E1C825 */  or         $t9, $t7, $at
/* A1574 800A0974 AD990000 */  sw         $t9, ($t4)
/* A1578 800A0978 8FAD0188 */  lw         $t5, 0x188($sp)
/* A157C 800A097C 8FAF0180 */  lw         $t7, 0x180($sp)
/* A1580 800A0980 3C010700 */  lui        $at, 0x700
/* A1584 800A0984 31AE0003 */  andi       $t6, $t5, 3
/* A1588 800A0988 000EC480 */  sll        $t8, $t6, 0x12
/* A158C 800A098C 8FAE0178 */  lw         $t6, 0x178($sp)
/* A1590 800A0990 03015825 */  or         $t3, $t8, $at
/* A1594 800A0994 31F9000F */  andi       $t9, $t7, 0xf
/* A1598 800A0998 00196380 */  sll        $t4, $t9, 0xe
/* A159C 800A099C 016C6825 */  or         $t5, $t3, $t4
/* A15A0 800A09A0 8FAB018C */  lw         $t3, 0x18c($sp)
/* A15A4 800A09A4 31D8000F */  andi       $t8, $t6, 0xf
/* A15A8 800A09A8 00187A80 */  sll        $t7, $t8, 0xa
/* A15AC 800A09AC 01AFC825 */  or         $t9, $t5, $t7
/* A15B0 800A09B0 8FAD0184 */  lw         $t5, 0x184($sp)
/* A15B4 800A09B4 316C0003 */  andi       $t4, $t3, 3
/* A15B8 800A09B8 000C7200 */  sll        $t6, $t4, 8
/* A15BC 800A09BC 032EC025 */  or         $t8, $t9, $t6
/* A15C0 800A09C0 8FB9017C */  lw         $t9, 0x17c($sp)
/* A15C4 800A09C4 31AF000F */  andi       $t7, $t5, 0xf
/* A15C8 800A09C8 000F5900 */  sll        $t3, $t7, 4
/* A15CC 800A09CC 8FAF0138 */  lw         $t7, 0x138($sp)
/* A15D0 800A09D0 030B6025 */  or         $t4, $t8, $t3
/* A15D4 800A09D4 332E000F */  andi       $t6, $t9, 0xf
/* A15D8 800A09D8 018E6825 */  or         $t5, $t4, $t6
/* A15DC 800A09DC ADED0004 */  sw         $t5, 4($t7)
/* A15E0 800A09E0 8FB801AC */  lw         $t8, 0x1ac($sp)
/* A15E4 800A09E4 270B0008 */  addiu      $t3, $t8, 8
/* A15E8 800A09E8 AFAB01AC */  sw         $t3, 0x1ac($sp)
/* A15EC 800A09EC AFB80134 */  sw         $t8, 0x134($sp)
/* A15F0 800A09F0 8FAC0134 */  lw         $t4, 0x134($sp)
/* A15F4 800A09F4 3C19E600 */  lui        $t9, 0xe600
/* A15F8 800A09F8 AD990000 */  sw         $t9, ($t4)
/* A15FC 800A09FC 8FAE0134 */  lw         $t6, 0x134($sp)
/* A1600 800A0A00 ADC00004 */  sw         $zero, 4($t6)
/* A1604 800A0A04 8FAD01AC */  lw         $t5, 0x1ac($sp)
/* A1608 800A0A08 25AF0008 */  addiu      $t7, $t5, 8
/* A160C 800A0A0C AFAF01AC */  sw         $t7, 0x1ac($sp)
/* A1610 800A0A10 AFAD0130 */  sw         $t5, 0x130($sp)
/* A1614 800A0A14 8FAB0130 */  lw         $t3, 0x130($sp)
/* A1618 800A0A18 3C18F300 */  lui        $t8, 0xf300
/* A161C 800A0A1C AD780000 */  sw         $t8, ($t3)
/* A1620 800A0A20 8FB901A8 */  lw         $t9, 0x1a8($sp)
/* A1624 800A0A24 8FAC01A4 */  lw         $t4, 0x1a4($sp)
/* A1628 800A0A28 032C0019 */  multu      $t9, $t4
/* A162C 800A0A2C 00007012 */  mflo       $t6
/* A1630 800A0A30 25CD0001 */  addiu      $t5, $t6, 1
/* A1634 800A0A34 000D7843 */  sra        $t7, $t5, 1
/* A1638 800A0A38 25F8FFFF */  addiu      $t8, $t7, -1
/* A163C 800A0A3C 2B0107FF */  slti       $at, $t8, 0x7ff
/* A1640 800A0A40 10200003 */  beqz       $at, .L800A0A50
/* A1644 800A0A44 00000000 */   nop
/* A1648 800A0A48 10000002 */  b          .L800A0A54
/* A164C 800A0A4C 03004025 */   or        $t0, $t8, $zero
.L800A0A50:
/* A1650 800A0A50 240807FF */  addiu      $t0, $zero, 0x7ff
.L800A0A54:
/* A1654 800A0A54 8FAE0130 */  lw         $t6, 0x130($sp)
/* A1658 800A0A58 310B0FFF */  andi       $t3, $t0, 0xfff
/* A165C 800A0A5C 000BCB00 */  sll        $t9, $t3, 0xc
/* A1660 800A0A60 3C010700 */  lui        $at, 0x700
/* A1664 800A0A64 03216025 */  or         $t4, $t9, $at
/* A1668 800A0A68 ADCC0004 */  sw         $t4, 4($t6)
/* A166C 800A0A6C 8FAD01AC */  lw         $t5, 0x1ac($sp)
/* A1670 800A0A70 25AF0008 */  addiu      $t7, $t5, 8
/* A1674 800A0A74 AFAF01AC */  sw         $t7, 0x1ac($sp)
/* A1678 800A0A78 AFAD012C */  sw         $t5, 0x12c($sp)
/* A167C 800A0A7C 8FAB012C */  lw         $t3, 0x12c($sp)
/* A1680 800A0A80 3C18E700 */  lui        $t8, 0xe700
/* A1684 800A0A84 AD780000 */  sw         $t8, ($t3)
/* A1688 800A0A88 8FB9012C */  lw         $t9, 0x12c($sp)
/* A168C 800A0A8C AF200004 */  sw         $zero, 4($t9)
/* A1690 800A0A90 8FAC01AC */  lw         $t4, 0x1ac($sp)
/* A1694 800A0A94 258E0008 */  addiu      $t6, $t4, 8
/* A1698 800A0A98 AFAE01AC */  sw         $t6, 0x1ac($sp)
/* A169C 800A0A9C AFAC0128 */  sw         $t4, 0x128($sp)
/* A16A0 800A0AA0 90AD0030 */  lbu        $t5, 0x30($a1)
/* A16A4 800A0AA4 8FAC01A8 */  lw         $t4, 0x1a8($sp)
/* A16A8 800A0AA8 3C01F500 */  lui        $at, 0xf500
/* A16AC 800A0AAC 31AF0007 */  andi       $t7, $t5, 7
/* A16B0 800A0AB0 000FC540 */  sll        $t8, $t7, 0x15
/* A16B4 800A0AB4 03015825 */  or         $t3, $t8, $at
/* A16B8 800A0AB8 258E0007 */  addiu      $t6, $t4, 7
/* A16BC 800A0ABC 000E68C3 */  sra        $t5, $t6, 3
/* A16C0 800A0AC0 8FAC0128 */  lw         $t4, 0x128($sp)
/* A16C4 800A0AC4 31AF01FF */  andi       $t7, $t5, 0x1ff
/* A16C8 800A0AC8 3C010008 */  lui        $at, 8
/* A16CC 800A0ACC 0161C825 */  or         $t9, $t3, $at
/* A16D0 800A0AD0 000FC240 */  sll        $t8, $t7, 9
/* A16D4 800A0AD4 03385825 */  or         $t3, $t9, $t8
/* A16D8 800A0AD8 AD8B0000 */  sw         $t3, ($t4)
/* A16DC 800A0ADC 8FAE0188 */  lw         $t6, 0x188($sp)
/* A16E0 800A0AE0 8FB90180 */  lw         $t9, 0x180($sp)
/* A16E4 800A0AE4 31CD0003 */  andi       $t5, $t6, 3
/* A16E8 800A0AE8 8FAE0178 */  lw         $t6, 0x178($sp)
/* A16EC 800A0AEC 000D7C80 */  sll        $t7, $t5, 0x12
/* A16F0 800A0AF0 3338000F */  andi       $t8, $t9, 0xf
/* A16F4 800A0AF4 00185B80 */  sll        $t3, $t8, 0xe
/* A16F8 800A0AF8 01EB6025 */  or         $t4, $t7, $t3
/* A16FC 800A0AFC 8FAF018C */  lw         $t7, 0x18c($sp)
/* A1700 800A0B00 31CD000F */  andi       $t5, $t6, 0xf
/* A1704 800A0B04 000DCA80 */  sll        $t9, $t5, 0xa
/* A1708 800A0B08 0199C025 */  or         $t8, $t4, $t9
/* A170C 800A0B0C 8FAC0184 */  lw         $t4, 0x184($sp)
/* A1710 800A0B10 31EB0003 */  andi       $t3, $t7, 3
/* A1714 800A0B14 000B7200 */  sll        $t6, $t3, 8
/* A1718 800A0B18 030E6825 */  or         $t5, $t8, $t6
/* A171C 800A0B1C 8FB8017C */  lw         $t8, 0x17c($sp)
/* A1720 800A0B20 3199000F */  andi       $t9, $t4, 0xf
/* A1724 800A0B24 00197900 */  sll        $t7, $t9, 4
/* A1728 800A0B28 8FB90128 */  lw         $t9, 0x128($sp)
/* A172C 800A0B2C 01AF5825 */  or         $t3, $t5, $t7
/* A1730 800A0B30 330E000F */  andi       $t6, $t8, 0xf
/* A1734 800A0B34 016E6025 */  or         $t4, $t3, $t6
/* A1738 800A0B38 AF2C0004 */  sw         $t4, 4($t9)
/* A173C 800A0B3C 8FAD01AC */  lw         $t5, 0x1ac($sp)
/* A1740 800A0B40 25AF0008 */  addiu      $t7, $t5, 8
/* A1744 800A0B44 AFAF01AC */  sw         $t7, 0x1ac($sp)
/* A1748 800A0B48 AFAD0124 */  sw         $t5, 0x124($sp)
/* A174C 800A0B4C 8FAB0124 */  lw         $t3, 0x124($sp)
/* A1750 800A0B50 3C18F200 */  lui        $t8, 0xf200
/* A1754 800A0B54 AD780000 */  sw         $t8, ($t3)
/* A1758 800A0B58 8FAE01A8 */  lw         $t6, 0x1a8($sp)
/* A175C 800A0B5C 8FB801A4 */  lw         $t8, 0x1a4($sp)
/* A1760 800A0B60 25CCFFFF */  addiu      $t4, $t6, -1
/* A1764 800A0B64 000CC880 */  sll        $t9, $t4, 2
/* A1768 800A0B68 332D0FFF */  andi       $t5, $t9, 0xfff
/* A176C 800A0B6C 000D7B00 */  sll        $t7, $t5, 0xc
/* A1770 800A0B70 270BFFFF */  addiu      $t3, $t8, -1
/* A1774 800A0B74 8FAD0124 */  lw         $t5, 0x124($sp)
/* A1778 800A0B78 000B7080 */  sll        $t6, $t3, 2
/* A177C 800A0B7C 31CC0FFF */  andi       $t4, $t6, 0xfff
/* A1780 800A0B80 01ECC825 */  or         $t9, $t7, $t4
/* A1784 800A0B84 ADB90004 */  sw         $t9, 4($t5)
/* A1788 800A0B88 100000CE */  b          .L800A0EC4
/* A178C 800A0B8C 00000000 */   nop
.L800A0B90:
/* A1790 800A0B90 8FB801AC */  lw         $t8, 0x1ac($sp)
/* A1794 800A0B94 270B0008 */  addiu      $t3, $t8, 8
/* A1798 800A0B98 AFAB01AC */  sw         $t3, 0x1ac($sp)
/* A179C 800A0B9C AFB80120 */  sw         $t8, 0x120($sp)
/* A17A0 800A0BA0 90AE0030 */  lbu        $t6, 0x30($a1)
/* A17A4 800A0BA4 3C01FD00 */  lui        $at, 0xfd00
/* A17A8 800A0BA8 8FB80120 */  lw         $t8, 0x120($sp)
/* A17AC 800A0BAC 31CF0007 */  andi       $t7, $t6, 7
/* A17B0 800A0BB0 000F6540 */  sll        $t4, $t7, 0x15
/* A17B4 800A0BB4 0181C825 */  or         $t9, $t4, $at
/* A17B8 800A0BB8 3C010010 */  lui        $at, 0x10
/* A17BC 800A0BBC 03216825 */  or         $t5, $t9, $at
/* A17C0 800A0BC0 AF0D0000 */  sw         $t5, ($t8)
/* A17C4 800A0BC4 8CCB0008 */  lw         $t3, 8($a2)
/* A17C8 800A0BC8 8FAE0120 */  lw         $t6, 0x120($sp)
/* A17CC 800A0BCC ADCB0004 */  sw         $t3, 4($t6)
/* A17D0 800A0BD0 8FAF01AC */  lw         $t7, 0x1ac($sp)
/* A17D4 800A0BD4 25EC0008 */  addiu      $t4, $t7, 8
/* A17D8 800A0BD8 AFAC01AC */  sw         $t4, 0x1ac($sp)
/* A17DC 800A0BDC AFAF011C */  sw         $t7, 0x11c($sp)
/* A17E0 800A0BE0 90B90030 */  lbu        $t9, 0x30($a1)
/* A17E4 800A0BE4 3C01F500 */  lui        $at, 0xf500
/* A17E8 800A0BE8 8FAF011C */  lw         $t7, 0x11c($sp)
/* A17EC 800A0BEC 332D0007 */  andi       $t5, $t9, 7
/* A17F0 800A0BF0 000DC540 */  sll        $t8, $t5, 0x15
/* A17F4 800A0BF4 03015825 */  or         $t3, $t8, $at
/* A17F8 800A0BF8 3C010010 */  lui        $at, 0x10
/* A17FC 800A0BFC 01617025 */  or         $t6, $t3, $at
/* A1800 800A0C00 ADEE0000 */  sw         $t6, ($t7)
/* A1804 800A0C04 8FAC0188 */  lw         $t4, 0x188($sp)
/* A1808 800A0C08 8FAB0180 */  lw         $t3, 0x180($sp)
/* A180C 800A0C0C 3C010700 */  lui        $at, 0x700
/* A1810 800A0C10 31990003 */  andi       $t9, $t4, 3
/* A1814 800A0C14 00196C80 */  sll        $t5, $t9, 0x12
/* A1818 800A0C18 8FB90178 */  lw         $t9, 0x178($sp)
/* A181C 800A0C1C 01A1C025 */  or         $t8, $t5, $at
/* A1820 800A0C20 316E000F */  andi       $t6, $t3, 0xf
/* A1824 800A0C24 000E7B80 */  sll        $t7, $t6, 0xe
/* A1828 800A0C28 030F6025 */  or         $t4, $t8, $t7
/* A182C 800A0C2C 8FB8018C */  lw         $t8, 0x18c($sp)
/* A1830 800A0C30 332D000F */  andi       $t5, $t9, 0xf
/* A1834 800A0C34 000D5A80 */  sll        $t3, $t5, 0xa
/* A1838 800A0C38 018B7025 */  or         $t6, $t4, $t3
/* A183C 800A0C3C 8FAC0184 */  lw         $t4, 0x184($sp)
/* A1840 800A0C40 330F0003 */  andi       $t7, $t8, 3
/* A1844 800A0C44 000FCA00 */  sll        $t9, $t7, 8
/* A1848 800A0C48 01D96825 */  or         $t5, $t6, $t9
/* A184C 800A0C4C 8FAE017C */  lw         $t6, 0x17c($sp)
/* A1850 800A0C50 318B000F */  andi       $t3, $t4, 0xf
/* A1854 800A0C54 000BC100 */  sll        $t8, $t3, 4
/* A1858 800A0C58 8FAB011C */  lw         $t3, 0x11c($sp)
/* A185C 800A0C5C 01B87825 */  or         $t7, $t5, $t8
/* A1860 800A0C60 31D9000F */  andi       $t9, $t6, 0xf
/* A1864 800A0C64 01F96025 */  or         $t4, $t7, $t9
/* A1868 800A0C68 AD6C0004 */  sw         $t4, 4($t3)
/* A186C 800A0C6C 8FAD01AC */  lw         $t5, 0x1ac($sp)
/* A1870 800A0C70 25B80008 */  addiu      $t8, $t5, 8
/* A1874 800A0C74 AFB801AC */  sw         $t8, 0x1ac($sp)
/* A1878 800A0C78 AFAD0118 */  sw         $t5, 0x118($sp)
/* A187C 800A0C7C 8FAF0118 */  lw         $t7, 0x118($sp)
/* A1880 800A0C80 3C0EE600 */  lui        $t6, 0xe600
/* A1884 800A0C84 ADEE0000 */  sw         $t6, ($t7)
/* A1888 800A0C88 8FB90118 */  lw         $t9, 0x118($sp)
/* A188C 800A0C8C AF200004 */  sw         $zero, 4($t9)
/* A1890 800A0C90 8FAC01AC */  lw         $t4, 0x1ac($sp)
/* A1894 800A0C94 258B0008 */  addiu      $t3, $t4, 8
/* A1898 800A0C98 AFAB01AC */  sw         $t3, 0x1ac($sp)
/* A189C 800A0C9C AFAC0114 */  sw         $t4, 0x114($sp)
/* A18A0 800A0CA0 8FB80114 */  lw         $t8, 0x114($sp)
/* A18A4 800A0CA4 3C0DF300 */  lui        $t5, 0xf300
/* A18A8 800A0CA8 AF0D0000 */  sw         $t5, ($t8)
/* A18AC 800A0CAC 8FAE01A8 */  lw         $t6, 0x1a8($sp)
/* A18B0 800A0CB0 8FAF01A4 */  lw         $t7, 0x1a4($sp)
/* A18B4 800A0CB4 01CF0019 */  multu      $t6, $t7
/* A18B8 800A0CB8 0000C812 */  mflo       $t9
/* A18BC 800A0CBC 272C0001 */  addiu      $t4, $t9, 1
/* A18C0 800A0CC0 000C5843 */  sra        $t3, $t4, 1
/* A18C4 800A0CC4 256DFFFF */  addiu      $t5, $t3, -1
/* A18C8 800A0CC8 29A107FF */  slti       $at, $t5, 0x7ff
/* A18CC 800A0CCC 10200003 */  beqz       $at, .L800A0CDC
/* A18D0 800A0CD0 00000000 */   nop
/* A18D4 800A0CD4 10000002 */  b          .L800A0CE0
/* A18D8 800A0CD8 01A05025 */   or        $t2, $t5, $zero
.L800A0CDC:
/* A18DC 800A0CDC 240A07FF */  addiu      $t2, $zero, 0x7ff
.L800A0CE0:
/* A18E0 800A0CE0 8FB801A8 */  lw         $t8, 0x1a8($sp)
/* A18E4 800A0CE4 07010003 */  bgez       $t8, .L800A0CF4
/* A18E8 800A0CE8 001870C3 */   sra       $t6, $t8, 3
/* A18EC 800A0CEC 27010007 */  addiu      $at, $t8, 7
/* A18F0 800A0CF0 000170C3 */  sra        $t6, $at, 3
.L800A0CF4:
/* A18F4 800A0CF4 1DC00003 */  bgtz       $t6, .L800A0D04
/* A18F8 800A0CF8 00000000 */   nop
/* A18FC 800A0CFC 10000007 */  b          .L800A0D1C
/* A1900 800A0D00 24090001 */   addiu     $t1, $zero, 1
.L800A0D04:
/* A1904 800A0D04 8FA901A8 */  lw         $t1, 0x1a8($sp)
/* A1908 800A0D08 05210003 */  bgez       $t1, .L800A0D18
/* A190C 800A0D0C 000978C3 */   sra       $t7, $t1, 3
/* A1910 800A0D10 25210007 */  addiu      $at, $t1, 7
/* A1914 800A0D14 000178C3 */  sra        $t7, $at, 3
.L800A0D18:
/* A1918 800A0D18 01E04825 */  or         $t1, $t7, $zero
.L800A0D1C:
/* A191C 800A0D1C 8FB901A8 */  lw         $t9, 0x1a8($sp)
/* A1920 800A0D20 07210003 */  bgez       $t9, .L800A0D30
/* A1924 800A0D24 001960C3 */   sra       $t4, $t9, 3
/* A1928 800A0D28 27210007 */  addiu      $at, $t9, 7
/* A192C 800A0D2C 000160C3 */  sra        $t4, $at, 3
.L800A0D30:
/* A1930 800A0D30 1D800003 */  bgtz       $t4, .L800A0D40
/* A1934 800A0D34 00000000 */   nop
/* A1938 800A0D38 10000007 */  b          .L800A0D58
/* A193C 800A0D3C 24080001 */   addiu     $t0, $zero, 1
.L800A0D40:
/* A1940 800A0D40 8FA801A8 */  lw         $t0, 0x1a8($sp)
/* A1944 800A0D44 05010003 */  bgez       $t0, .L800A0D54
/* A1948 800A0D48 000858C3 */   sra       $t3, $t0, 3
/* A194C 800A0D4C 25010007 */  addiu      $at, $t0, 7
/* A1950 800A0D50 000158C3 */  sra        $t3, $at, 3
.L800A0D54:
/* A1954 800A0D54 01604025 */  or         $t0, $t3, $zero
.L800A0D58:
/* A1958 800A0D58 252D07FF */  addiu      $t5, $t1, 0x7ff
/* A195C 800A0D5C 01A8001A */  div        $zero, $t5, $t0
/* A1960 800A0D60 15000002 */  bnez       $t0, .L800A0D6C
/* A1964 800A0D64 00000000 */   nop
/* A1968 800A0D68 0007000D */  break      7
.L800A0D6C:
/* A196C 800A0D6C 2401FFFF */   addiu     $at, $zero, -1
/* A1970 800A0D70 15010004 */  bne        $t0, $at, .L800A0D84
/* A1974 800A0D74 3C018000 */   lui       $at, 0x8000
/* A1978 800A0D78 15A10002 */  bne        $t5, $at, .L800A0D84
/* A197C 800A0D7C 00000000 */   nop
/* A1980 800A0D80 0006000D */  break      6
.L800A0D84:
/* A1984 800A0D84 314F0FFF */   andi      $t7, $t2, 0xfff
/* A1988 800A0D88 8FAD0114 */  lw         $t5, 0x114($sp)
/* A198C 800A0D8C 000FCB00 */  sll        $t9, $t7, 0xc
/* A1990 800A0D90 3C010700 */  lui        $at, 0x700
/* A1994 800A0D94 0000C012 */  mflo       $t8
/* A1998 800A0D98 330E0FFF */  andi       $t6, $t8, 0xfff
/* A199C 800A0D9C 03216025 */  or         $t4, $t9, $at
/* A19A0 800A0DA0 01CC5825 */  or         $t3, $t6, $t4
/* A19A4 800A0DA4 ADAB0004 */  sw         $t3, 4($t5)
/* A19A8 800A0DA8 8FB801AC */  lw         $t8, 0x1ac($sp)
/* A19AC 800A0DAC 270F0008 */  addiu      $t7, $t8, 8
/* A19B0 800A0DB0 AFAF01AC */  sw         $t7, 0x1ac($sp)
/* A19B4 800A0DB4 AFB80110 */  sw         $t8, 0x110($sp)
/* A19B8 800A0DB8 8FAE0110 */  lw         $t6, 0x110($sp)
/* A19BC 800A0DBC 3C19E700 */  lui        $t9, 0xe700
/* A19C0 800A0DC0 ADD90000 */  sw         $t9, ($t6)
/* A19C4 800A0DC4 8FAC0110 */  lw         $t4, 0x110($sp)
/* A19C8 800A0DC8 AD800004 */  sw         $zero, 4($t4)
/* A19CC 800A0DCC 8FAB01AC */  lw         $t3, 0x1ac($sp)
/* A19D0 800A0DD0 256D0008 */  addiu      $t5, $t3, 8
/* A19D4 800A0DD4 AFAD01AC */  sw         $t5, 0x1ac($sp)
/* A19D8 800A0DD8 AFAB010C */  sw         $t3, 0x10c($sp)
/* A19DC 800A0DDC 90B80030 */  lbu        $t8, 0x30($a1)
/* A19E0 800A0DE0 8FAB01A8 */  lw         $t3, 0x1a8($sp)
/* A19E4 800A0DE4 3C01F500 */  lui        $at, 0xf500
/* A19E8 800A0DE8 330F0007 */  andi       $t7, $t8, 7
/* A19EC 800A0DEC 000FCD40 */  sll        $t9, $t7, 0x15
/* A19F0 800A0DF0 03217025 */  or         $t6, $t9, $at
/* A19F4 800A0DF4 256D0007 */  addiu      $t5, $t3, 7
/* A19F8 800A0DF8 000DC0C3 */  sra        $t8, $t5, 3
/* A19FC 800A0DFC 8FAB010C */  lw         $t3, 0x10c($sp)
/* A1A00 800A0E00 330F01FF */  andi       $t7, $t8, 0x1ff
/* A1A04 800A0E04 3C010008 */  lui        $at, 8
/* A1A08 800A0E08 01C16025 */  or         $t4, $t6, $at
/* A1A0C 800A0E0C 000FCA40 */  sll        $t9, $t7, 9
/* A1A10 800A0E10 01997025 */  or         $t6, $t4, $t9
/* A1A14 800A0E14 AD6E0000 */  sw         $t6, ($t3)
/* A1A18 800A0E18 8FAD0188 */  lw         $t5, 0x188($sp)
/* A1A1C 800A0E1C 8FAC0180 */  lw         $t4, 0x180($sp)
/* A1A20 800A0E20 31B80003 */  andi       $t8, $t5, 3
/* A1A24 800A0E24 8FAD0178 */  lw         $t5, 0x178($sp)
/* A1A28 800A0E28 00187C80 */  sll        $t7, $t8, 0x12
/* A1A2C 800A0E2C 3199000F */  andi       $t9, $t4, 0xf
/* A1A30 800A0E30 00197380 */  sll        $t6, $t9, 0xe
/* A1A34 800A0E34 01EE5825 */  or         $t3, $t7, $t6
/* A1A38 800A0E38 8FAF018C */  lw         $t7, 0x18c($sp)
/* A1A3C 800A0E3C 31B8000F */  andi       $t8, $t5, 0xf
/* A1A40 800A0E40 00186280 */  sll        $t4, $t8, 0xa
/* A1A44 800A0E44 016CC825 */  or         $t9, $t3, $t4
/* A1A48 800A0E48 8FAB0184 */  lw         $t3, 0x184($sp)
/* A1A4C 800A0E4C 31EE0003 */  andi       $t6, $t7, 3
/* A1A50 800A0E50 000E6A00 */  sll        $t5, $t6, 8
/* A1A54 800A0E54 032DC025 */  or         $t8, $t9, $t5
/* A1A58 800A0E58 8FB9017C */  lw         $t9, 0x17c($sp)
/* A1A5C 800A0E5C 316C000F */  andi       $t4, $t3, 0xf
/* A1A60 800A0E60 000C7900 */  sll        $t7, $t4, 4
/* A1A64 800A0E64 8FAC010C */  lw         $t4, 0x10c($sp)
/* A1A68 800A0E68 030F7025 */  or         $t6, $t8, $t7
/* A1A6C 800A0E6C 332D000F */  andi       $t5, $t9, 0xf
/* A1A70 800A0E70 01CD5825 */  or         $t3, $t6, $t5
/* A1A74 800A0E74 AD8B0004 */  sw         $t3, 4($t4)
/* A1A78 800A0E78 8FB801AC */  lw         $t8, 0x1ac($sp)
/* A1A7C 800A0E7C 270F0008 */  addiu      $t7, $t8, 8
/* A1A80 800A0E80 AFAF01AC */  sw         $t7, 0x1ac($sp)
/* A1A84 800A0E84 AFB80108 */  sw         $t8, 0x108($sp)
/* A1A88 800A0E88 8FAE0108 */  lw         $t6, 0x108($sp)
/* A1A8C 800A0E8C 3C19F200 */  lui        $t9, 0xf200
/* A1A90 800A0E90 ADD90000 */  sw         $t9, ($t6)
/* A1A94 800A0E94 8FAD01A8 */  lw         $t5, 0x1a8($sp)
/* A1A98 800A0E98 8FB901A4 */  lw         $t9, 0x1a4($sp)
/* A1A9C 800A0E9C 25ABFFFF */  addiu      $t3, $t5, -1
/* A1AA0 800A0EA0 000B6080 */  sll        $t4, $t3, 2
/* A1AA4 800A0EA4 31980FFF */  andi       $t8, $t4, 0xfff
/* A1AA8 800A0EA8 00187B00 */  sll        $t7, $t8, 0xc
/* A1AAC 800A0EAC 272EFFFF */  addiu      $t6, $t9, -1
/* A1AB0 800A0EB0 8FB80108 */  lw         $t8, 0x108($sp)
/* A1AB4 800A0EB4 000E6880 */  sll        $t5, $t6, 2
/* A1AB8 800A0EB8 31AB0FFF */  andi       $t3, $t5, 0xfff
/* A1ABC 800A0EBC 01EB6025 */  or         $t4, $t7, $t3
/* A1AC0 800A0EC0 AF0C0004 */  sw         $t4, 4($t8)
.L800A0EC4:
/* A1AC4 800A0EC4 1000060E */  b          .L800A2700
/* A1AC8 800A0EC8 00000000 */   nop
.L800A0ECC:
/* A1ACC 800A0ECC 90B90030 */  lbu        $t9, 0x30($a1)
/* A1AD0 800A0ED0 24010001 */  addiu      $at, $zero, 1
/* A1AD4 800A0ED4 17210316 */  bne        $t9, $at, .L800A1B30
/* A1AD8 800A0ED8 00000000 */   nop
/* A1ADC 800A0EDC 94AE0014 */  lhu        $t6, 0x14($a1)
/* A1AE0 800A0EE0 31CD0200 */  andi       $t5, $t6, 0x200
/* A1AE4 800A0EE4 11A000A2 */  beqz       $t5, .L800A1170
/* A1AE8 800A0EE8 00000000 */   nop
/* A1AEC 800A0EEC 8FAF01AC */  lw         $t7, 0x1ac($sp)
/* A1AF0 800A0EF0 25EB0008 */  addiu      $t3, $t7, 8
/* A1AF4 800A0EF4 AFAB01AC */  sw         $t3, 0x1ac($sp)
/* A1AF8 800A0EF8 AFAF0104 */  sw         $t7, 0x104($sp)
/* A1AFC 800A0EFC 90AC0030 */  lbu        $t4, 0x30($a1)
/* A1B00 800A0F00 3C01FD00 */  lui        $at, 0xfd00
/* A1B04 800A0F04 8FAF0104 */  lw         $t7, 0x104($sp)
/* A1B08 800A0F08 31980007 */  andi       $t8, $t4, 7
/* A1B0C 800A0F0C 0018CD40 */  sll        $t9, $t8, 0x15
/* A1B10 800A0F10 03217025 */  or         $t6, $t9, $at
/* A1B14 800A0F14 3C010010 */  lui        $at, 0x10
/* A1B18 800A0F18 01C16825 */  or         $t5, $t6, $at
/* A1B1C 800A0F1C ADED0000 */  sw         $t5, ($t7)
/* A1B20 800A0F20 8CCB0008 */  lw         $t3, 8($a2)
/* A1B24 800A0F24 8FAC0104 */  lw         $t4, 0x104($sp)
/* A1B28 800A0F28 AD8B0004 */  sw         $t3, 4($t4)
/* A1B2C 800A0F2C 8FB801AC */  lw         $t8, 0x1ac($sp)
/* A1B30 800A0F30 27190008 */  addiu      $t9, $t8, 8
/* A1B34 800A0F34 AFB901AC */  sw         $t9, 0x1ac($sp)
/* A1B38 800A0F38 AFB80100 */  sw         $t8, 0x100($sp)
/* A1B3C 800A0F3C 90AE0030 */  lbu        $t6, 0x30($a1)
/* A1B40 800A0F40 3C01F500 */  lui        $at, 0xf500
/* A1B44 800A0F44 8FB80100 */  lw         $t8, 0x100($sp)
/* A1B48 800A0F48 31CD0007 */  andi       $t5, $t6, 7
/* A1B4C 800A0F4C 000D7D40 */  sll        $t7, $t5, 0x15
/* A1B50 800A0F50 01E15825 */  or         $t3, $t7, $at
/* A1B54 800A0F54 3C010010 */  lui        $at, 0x10
/* A1B58 800A0F58 01616025 */  or         $t4, $t3, $at
/* A1B5C 800A0F5C AF0C0000 */  sw         $t4, ($t8)
/* A1B60 800A0F60 8FB90188 */  lw         $t9, 0x188($sp)
/* A1B64 800A0F64 8FAB0180 */  lw         $t3, 0x180($sp)
/* A1B68 800A0F68 3C010700 */  lui        $at, 0x700
/* A1B6C 800A0F6C 332E0003 */  andi       $t6, $t9, 3
/* A1B70 800A0F70 000E6C80 */  sll        $t5, $t6, 0x12
/* A1B74 800A0F74 8FAE0178 */  lw         $t6, 0x178($sp)
/* A1B78 800A0F78 01A17825 */  or         $t7, $t5, $at
/* A1B7C 800A0F7C 316C000F */  andi       $t4, $t3, 0xf
/* A1B80 800A0F80 000CC380 */  sll        $t8, $t4, 0xe
/* A1B84 800A0F84 01F8C825 */  or         $t9, $t7, $t8
/* A1B88 800A0F88 8FAF018C */  lw         $t7, 0x18c($sp)
/* A1B8C 800A0F8C 31CD000F */  andi       $t5, $t6, 0xf
/* A1B90 800A0F90 000D5A80 */  sll        $t3, $t5, 0xa
/* A1B94 800A0F94 032B6025 */  or         $t4, $t9, $t3
/* A1B98 800A0F98 8FB90184 */  lw         $t9, 0x184($sp)
/* A1B9C 800A0F9C 31F80003 */  andi       $t8, $t7, 3
/* A1BA0 800A0FA0 00187200 */  sll        $t6, $t8, 8
/* A1BA4 800A0FA4 018E6825 */  or         $t5, $t4, $t6
/* A1BA8 800A0FA8 8FAC017C */  lw         $t4, 0x17c($sp)
/* A1BAC 800A0FAC 332B000F */  andi       $t3, $t9, 0xf
/* A1BB0 800A0FB0 000B7900 */  sll        $t7, $t3, 4
/* A1BB4 800A0FB4 8FAB0100 */  lw         $t3, 0x100($sp)
/* A1BB8 800A0FB8 01AFC025 */  or         $t8, $t5, $t7
/* A1BBC 800A0FBC 318E000F */  andi       $t6, $t4, 0xf
/* A1BC0 800A0FC0 030EC825 */  or         $t9, $t8, $t6
/* A1BC4 800A0FC4 AD790004 */  sw         $t9, 4($t3)
/* A1BC8 800A0FC8 8FAD01AC */  lw         $t5, 0x1ac($sp)
/* A1BCC 800A0FCC 25AF0008 */  addiu      $t7, $t5, 8
/* A1BD0 800A0FD0 AFAF01AC */  sw         $t7, 0x1ac($sp)
/* A1BD4 800A0FD4 AFAD00FC */  sw         $t5, 0xfc($sp)
/* A1BD8 800A0FD8 8FB800FC */  lw         $t8, 0xfc($sp)
/* A1BDC 800A0FDC 3C0CE600 */  lui        $t4, 0xe600
/* A1BE0 800A0FE0 AF0C0000 */  sw         $t4, ($t8)
/* A1BE4 800A0FE4 8FAE00FC */  lw         $t6, 0xfc($sp)
/* A1BE8 800A0FE8 ADC00004 */  sw         $zero, 4($t6)
/* A1BEC 800A0FEC 8FB901AC */  lw         $t9, 0x1ac($sp)
/* A1BF0 800A0FF0 272B0008 */  addiu      $t3, $t9, 8
/* A1BF4 800A0FF4 AFAB01AC */  sw         $t3, 0x1ac($sp)
/* A1BF8 800A0FF8 AFB900F8 */  sw         $t9, 0xf8($sp)
/* A1BFC 800A0FFC 8FAF00F8 */  lw         $t7, 0xf8($sp)
/* A1C00 800A1000 3C0DF300 */  lui        $t5, 0xf300
/* A1C04 800A1004 ADED0000 */  sw         $t5, ($t7)
/* A1C08 800A1008 8FAC01A8 */  lw         $t4, 0x1a8($sp)
/* A1C0C 800A100C 8FB801A4 */  lw         $t8, 0x1a4($sp)
/* A1C10 800A1010 01980019 */  multu      $t4, $t8
/* A1C14 800A1014 00007012 */  mflo       $t6
/* A1C18 800A1018 25D9FFFF */  addiu      $t9, $t6, -1
/* A1C1C 800A101C 2B2107FF */  slti       $at, $t9, 0x7ff
/* A1C20 800A1020 10200003 */  beqz       $at, .L800A1030
/* A1C24 800A1024 00000000 */   nop
/* A1C28 800A1028 10000002 */  b          .L800A1034
/* A1C2C 800A102C 03204025 */   or        $t0, $t9, $zero
.L800A1030:
/* A1C30 800A1030 240807FF */  addiu      $t0, $zero, 0x7ff
.L800A1034:
/* A1C34 800A1034 8FAC00F8 */  lw         $t4, 0xf8($sp)
/* A1C38 800A1038 310B0FFF */  andi       $t3, $t0, 0xfff
/* A1C3C 800A103C 000B6B00 */  sll        $t5, $t3, 0xc
/* A1C40 800A1040 3C010700 */  lui        $at, 0x700
/* A1C44 800A1044 01A17825 */  or         $t7, $t5, $at
/* A1C48 800A1048 AD8F0004 */  sw         $t7, 4($t4)
/* A1C4C 800A104C 8FB801AC */  lw         $t8, 0x1ac($sp)
/* A1C50 800A1050 270E0008 */  addiu      $t6, $t8, 8
/* A1C54 800A1054 AFAE01AC */  sw         $t6, 0x1ac($sp)
/* A1C58 800A1058 AFB800F4 */  sw         $t8, 0xf4($sp)
/* A1C5C 800A105C 8FAB00F4 */  lw         $t3, 0xf4($sp)
/* A1C60 800A1060 3C19E700 */  lui        $t9, 0xe700
/* A1C64 800A1064 AD790000 */  sw         $t9, ($t3)
/* A1C68 800A1068 8FAD00F4 */  lw         $t5, 0xf4($sp)
/* A1C6C 800A106C ADA00004 */  sw         $zero, 4($t5)
/* A1C70 800A1070 8FAF01AC */  lw         $t7, 0x1ac($sp)
/* A1C74 800A1074 25EC0008 */  addiu      $t4, $t7, 8
/* A1C78 800A1078 AFAC01AC */  sw         $t4, 0x1ac($sp)
/* A1C7C 800A107C AFAF00F0 */  sw         $t7, 0xf0($sp)
/* A1C80 800A1080 90B80030 */  lbu        $t8, 0x30($a1)
/* A1C84 800A1084 8FAF01A8 */  lw         $t7, 0x1a8($sp)
/* A1C88 800A1088 3C01F500 */  lui        $at, 0xf500
/* A1C8C 800A108C 330E0007 */  andi       $t6, $t8, 7
/* A1C90 800A1090 000ECD40 */  sll        $t9, $t6, 0x15
/* A1C94 800A1094 03215825 */  or         $t3, $t9, $at
/* A1C98 800A1098 25EC0007 */  addiu      $t4, $t7, 7
/* A1C9C 800A109C 000CC0C3 */  sra        $t8, $t4, 3
/* A1CA0 800A10A0 8FAF00F0 */  lw         $t7, 0xf0($sp)
/* A1CA4 800A10A4 330E01FF */  andi       $t6, $t8, 0x1ff
/* A1CA8 800A10A8 3C010010 */  lui        $at, 0x10
/* A1CAC 800A10AC 01616825 */  or         $t5, $t3, $at
/* A1CB0 800A10B0 000ECA40 */  sll        $t9, $t6, 9
/* A1CB4 800A10B4 01B95825 */  or         $t3, $t5, $t9
/* A1CB8 800A10B8 ADEB0000 */  sw         $t3, ($t7)
/* A1CBC 800A10BC 8FAC0188 */  lw         $t4, 0x188($sp)
/* A1CC0 800A10C0 8FAD0180 */  lw         $t5, 0x180($sp)
/* A1CC4 800A10C4 31980003 */  andi       $t8, $t4, 3
/* A1CC8 800A10C8 8FAC0178 */  lw         $t4, 0x178($sp)
/* A1CCC 800A10CC 00187480 */  sll        $t6, $t8, 0x12
/* A1CD0 800A10D0 31B9000F */  andi       $t9, $t5, 0xf
/* A1CD4 800A10D4 00195B80 */  sll        $t3, $t9, 0xe
/* A1CD8 800A10D8 01CB7825 */  or         $t7, $t6, $t3
/* A1CDC 800A10DC 8FAE018C */  lw         $t6, 0x18c($sp)
/* A1CE0 800A10E0 3198000F */  andi       $t8, $t4, 0xf
/* A1CE4 800A10E4 00186A80 */  sll        $t5, $t8, 0xa
/* A1CE8 800A10E8 01EDC825 */  or         $t9, $t7, $t5
/* A1CEC 800A10EC 8FAF0184 */  lw         $t7, 0x184($sp)
/* A1CF0 800A10F0 31CB0003 */  andi       $t3, $t6, 3
/* A1CF4 800A10F4 000B6200 */  sll        $t4, $t3, 8
/* A1CF8 800A10F8 032CC025 */  or         $t8, $t9, $t4
/* A1CFC 800A10FC 8FB9017C */  lw         $t9, 0x17c($sp)
/* A1D00 800A1100 31ED000F */  andi       $t5, $t7, 0xf
/* A1D04 800A1104 000D7100 */  sll        $t6, $t5, 4
/* A1D08 800A1108 8FAD00F0 */  lw         $t5, 0xf0($sp)
/* A1D0C 800A110C 030E5825 */  or         $t3, $t8, $t6
/* A1D10 800A1110 332C000F */  andi       $t4, $t9, 0xf
/* A1D14 800A1114 016C7825 */  or         $t7, $t3, $t4
/* A1D18 800A1118 ADAF0004 */  sw         $t7, 4($t5)
/* A1D1C 800A111C 8FB801AC */  lw         $t8, 0x1ac($sp)
/* A1D20 800A1120 270E0008 */  addiu      $t6, $t8, 8
/* A1D24 800A1124 AFAE01AC */  sw         $t6, 0x1ac($sp)
/* A1D28 800A1128 AFB800EC */  sw         $t8, 0xec($sp)
/* A1D2C 800A112C 8FAB00EC */  lw         $t3, 0xec($sp)
/* A1D30 800A1130 3C19F200 */  lui        $t9, 0xf200
/* A1D34 800A1134 AD790000 */  sw         $t9, ($t3)
/* A1D38 800A1138 8FAC01A8 */  lw         $t4, 0x1a8($sp)
/* A1D3C 800A113C 8FB901A4 */  lw         $t9, 0x1a4($sp)
/* A1D40 800A1140 258FFFFF */  addiu      $t7, $t4, -1
/* A1D44 800A1144 000F6880 */  sll        $t5, $t7, 2
/* A1D48 800A1148 31B80FFF */  andi       $t8, $t5, 0xfff
/* A1D4C 800A114C 00187300 */  sll        $t6, $t8, 0xc
/* A1D50 800A1150 272BFFFF */  addiu      $t3, $t9, -1
/* A1D54 800A1154 8FB800EC */  lw         $t8, 0xec($sp)
/* A1D58 800A1158 000B6080 */  sll        $t4, $t3, 2
/* A1D5C 800A115C 318F0FFF */  andi       $t7, $t4, 0xfff
/* A1D60 800A1160 01CF6825 */  or         $t5, $t6, $t7
/* A1D64 800A1164 AF0D0004 */  sw         $t5, 4($t8)
/* A1D68 800A1168 1000026F */  b          .L800A1B28
/* A1D6C 800A116C 00000000 */   nop
.L800A1170:
/* A1D70 800A1170 84D9000E */  lh         $t9, 0xe($a2)
/* A1D74 800A1174 1320019B */  beqz       $t9, .L800A17E4
/* A1D78 800A1178 00000000 */   nop
/* A1D7C 800A117C 8FAB01AC */  lw         $t3, 0x1ac($sp)
/* A1D80 800A1180 256C0008 */  addiu      $t4, $t3, 8
/* A1D84 800A1184 AFAC01AC */  sw         $t4, 0x1ac($sp)
/* A1D88 800A1188 AFAB00D4 */  sw         $t3, 0xd4($sp)
/* A1D8C 800A118C 8FAF00D4 */  lw         $t7, 0xd4($sp)
/* A1D90 800A1190 3C0EFD88 */  lui        $t6, 0xfd88
/* A1D94 800A1194 ADEE0000 */  sw         $t6, ($t7)
/* A1D98 800A1198 8CCD0008 */  lw         $t5, 8($a2)
/* A1D9C 800A119C 8FB800D4 */  lw         $t8, 0xd4($sp)
/* A1DA0 800A11A0 AF0D0004 */  sw         $t5, 4($t8)
/* A1DA4 800A11A4 8FB901AC */  lw         $t9, 0x1ac($sp)
/* A1DA8 800A11A8 272B0008 */  addiu      $t3, $t9, 8
/* A1DAC 800A11AC AFAB01AC */  sw         $t3, 0x1ac($sp)
/* A1DB0 800A11B0 AFB900D0 */  sw         $t9, 0xd0($sp)
/* A1DB4 800A11B4 8FAE00D0 */  lw         $t6, 0xd0($sp)
/* A1DB8 800A11B8 3C0CF588 */  lui        $t4, 0xf588
/* A1DBC 800A11BC 358C0100 */  ori        $t4, $t4, 0x100
/* A1DC0 800A11C0 ADCC0000 */  sw         $t4, ($t6)
/* A1DC4 800A11C4 8FAF0188 */  lw         $t7, 0x188($sp)
/* A1DC8 800A11C8 8FAB0180 */  lw         $t3, 0x180($sp)
/* A1DCC 800A11CC 3C010700 */  lui        $at, 0x700
/* A1DD0 800A11D0 31ED0003 */  andi       $t5, $t7, 3
/* A1DD4 800A11D4 000DC480 */  sll        $t8, $t5, 0x12
/* A1DD8 800A11D8 8FAD0178 */  lw         $t5, 0x178($sp)
/* A1DDC 800A11DC 0301C825 */  or         $t9, $t8, $at
/* A1DE0 800A11E0 316C000F */  andi       $t4, $t3, 0xf
/* A1DE4 800A11E4 000C7380 */  sll        $t6, $t4, 0xe
/* A1DE8 800A11E8 032E7825 */  or         $t7, $t9, $t6
/* A1DEC 800A11EC 8FB9018C */  lw         $t9, 0x18c($sp)
/* A1DF0 800A11F0 31B8000F */  andi       $t8, $t5, 0xf
/* A1DF4 800A11F4 00185A80 */  sll        $t3, $t8, 0xa
/* A1DF8 800A11F8 01EB6025 */  or         $t4, $t7, $t3
/* A1DFC 800A11FC 8FAF0184 */  lw         $t7, 0x184($sp)
/* A1E00 800A1200 332E0003 */  andi       $t6, $t9, 3
/* A1E04 800A1204 000E6A00 */  sll        $t5, $t6, 8
/* A1E08 800A1208 018DC025 */  or         $t8, $t4, $t5
/* A1E0C 800A120C 8FAC017C */  lw         $t4, 0x17c($sp)
/* A1E10 800A1210 31EB000F */  andi       $t3, $t7, 0xf
/* A1E14 800A1214 000BC900 */  sll        $t9, $t3, 4
/* A1E18 800A1218 8FAB00D0 */  lw         $t3, 0xd0($sp)
/* A1E1C 800A121C 03197025 */  or         $t6, $t8, $t9
/* A1E20 800A1220 318D000F */  andi       $t5, $t4, 0xf
/* A1E24 800A1224 01CD7825 */  or         $t7, $t6, $t5
/* A1E28 800A1228 AD6F0004 */  sw         $t7, 4($t3)
/* A1E2C 800A122C 8FB801AC */  lw         $t8, 0x1ac($sp)
/* A1E30 800A1230 27190008 */  addiu      $t9, $t8, 8
/* A1E34 800A1234 AFB901AC */  sw         $t9, 0x1ac($sp)
/* A1E38 800A1238 AFB800CC */  sw         $t8, 0xcc($sp)
/* A1E3C 800A123C 8FAE00CC */  lw         $t6, 0xcc($sp)
/* A1E40 800A1240 3C0CE600 */  lui        $t4, 0xe600
/* A1E44 800A1244 ADCC0000 */  sw         $t4, ($t6)
/* A1E48 800A1248 8FAD00CC */  lw         $t5, 0xcc($sp)
/* A1E4C 800A124C ADA00004 */  sw         $zero, 4($t5)
/* A1E50 800A1250 8FAF01AC */  lw         $t7, 0x1ac($sp)
/* A1E54 800A1254 25EB0008 */  addiu      $t3, $t7, 8
/* A1E58 800A1258 AFAB01AC */  sw         $t3, 0x1ac($sp)
/* A1E5C 800A125C AFAF00C8 */  sw         $t7, 0xc8($sp)
/* A1E60 800A1260 8FB900C8 */  lw         $t9, 0xc8($sp)
/* A1E64 800A1264 3C18F300 */  lui        $t8, 0xf300
/* A1E68 800A1268 AF380000 */  sw         $t8, ($t9)
/* A1E6C 800A126C 8FAC01A8 */  lw         $t4, 0x1a8($sp)
/* A1E70 800A1270 8FAE01A4 */  lw         $t6, 0x1a4($sp)
/* A1E74 800A1274 018E0019 */  multu      $t4, $t6
/* A1E78 800A1278 00006812 */  mflo       $t5
/* A1E7C 800A127C 25AFFFFF */  addiu      $t7, $t5, -1
/* A1E80 800A1280 29E107FF */  slti       $at, $t7, 0x7ff
/* A1E84 800A1284 10200003 */  beqz       $at, .L800A1294
/* A1E88 800A1288 00000000 */   nop
/* A1E8C 800A128C 10000002 */  b          .L800A1298
/* A1E90 800A1290 01E05025 */   or        $t2, $t7, $zero
.L800A1294:
/* A1E94 800A1294 240A07FF */  addiu      $t2, $zero, 0x7ff
.L800A1298:
/* A1E98 800A1298 8FAB01A8 */  lw         $t3, 0x1a8($sp)
/* A1E9C 800A129C 05610003 */  bgez       $t3, .L800A12AC
/* A1EA0 800A12A0 000BC0C3 */   sra       $t8, $t3, 3
/* A1EA4 800A12A4 25610007 */  addiu      $at, $t3, 7
/* A1EA8 800A12A8 0001C0C3 */  sra        $t8, $at, 3
.L800A12AC:
/* A1EAC 800A12AC 1F000003 */  bgtz       $t8, .L800A12BC
/* A1EB0 800A12B0 00000000 */   nop
/* A1EB4 800A12B4 10000007 */  b          .L800A12D4
/* A1EB8 800A12B8 24090001 */   addiu     $t1, $zero, 1
.L800A12BC:
/* A1EBC 800A12BC 8FA901A8 */  lw         $t1, 0x1a8($sp)
/* A1EC0 800A12C0 05210003 */  bgez       $t1, .L800A12D0
/* A1EC4 800A12C4 0009C8C3 */   sra       $t9, $t1, 3
/* A1EC8 800A12C8 25210007 */  addiu      $at, $t1, 7
/* A1ECC 800A12CC 0001C8C3 */  sra        $t9, $at, 3
.L800A12D0:
/* A1ED0 800A12D0 03204825 */  or         $t1, $t9, $zero
.L800A12D4:
/* A1ED4 800A12D4 8FAC01A8 */  lw         $t4, 0x1a8($sp)
/* A1ED8 800A12D8 05810003 */  bgez       $t4, .L800A12E8
/* A1EDC 800A12DC 000C70C3 */   sra       $t6, $t4, 3
/* A1EE0 800A12E0 25810007 */  addiu      $at, $t4, 7
/* A1EE4 800A12E4 000170C3 */  sra        $t6, $at, 3
.L800A12E8:
/* A1EE8 800A12E8 1DC00003 */  bgtz       $t6, .L800A12F8
/* A1EEC 800A12EC 00000000 */   nop
/* A1EF0 800A12F0 10000007 */  b          .L800A1310
/* A1EF4 800A12F4 24080001 */   addiu     $t0, $zero, 1
.L800A12F8:
/* A1EF8 800A12F8 8FA801A8 */  lw         $t0, 0x1a8($sp)
/* A1EFC 800A12FC 05010003 */  bgez       $t0, .L800A130C
/* A1F00 800A1300 000868C3 */   sra       $t5, $t0, 3
/* A1F04 800A1304 25010007 */  addiu      $at, $t0, 7
/* A1F08 800A1308 000168C3 */  sra        $t5, $at, 3
.L800A130C:
/* A1F0C 800A130C 01A04025 */  or         $t0, $t5, $zero
.L800A1310:
/* A1F10 800A1310 252F07FF */  addiu      $t7, $t1, 0x7ff
/* A1F14 800A1314 01E8001A */  div        $zero, $t7, $t0
/* A1F18 800A1318 15000002 */  bnez       $t0, .L800A1324
/* A1F1C 800A131C 00000000 */   nop
/* A1F20 800A1320 0007000D */  break      7
.L800A1324:
/* A1F24 800A1324 2401FFFF */   addiu     $at, $zero, -1
/* A1F28 800A1328 15010004 */  bne        $t0, $at, .L800A133C
/* A1F2C 800A132C 3C018000 */   lui       $at, 0x8000
/* A1F30 800A1330 15E10002 */  bne        $t7, $at, .L800A133C
/* A1F34 800A1334 00000000 */   nop
/* A1F38 800A1338 0006000D */  break      6
.L800A133C:
/* A1F3C 800A133C 31590FFF */   andi      $t9, $t2, 0xfff
/* A1F40 800A1340 8FAF00C8 */  lw         $t7, 0xc8($sp)
/* A1F44 800A1344 00196300 */  sll        $t4, $t9, 0xc
/* A1F48 800A1348 3C010700 */  lui        $at, 0x700
/* A1F4C 800A134C 00005812 */  mflo       $t3
/* A1F50 800A1350 31780FFF */  andi       $t8, $t3, 0xfff
/* A1F54 800A1354 01817025 */  or         $t6, $t4, $at
/* A1F58 800A1358 030E6825 */  or         $t5, $t8, $t6
/* A1F5C 800A135C ADED0004 */  sw         $t5, 4($t7)
/* A1F60 800A1360 8FAB01AC */  lw         $t3, 0x1ac($sp)
/* A1F64 800A1364 25790008 */  addiu      $t9, $t3, 8
/* A1F68 800A1368 AFB901AC */  sw         $t9, 0x1ac($sp)
/* A1F6C 800A136C AFAB00C4 */  sw         $t3, 0xc4($sp)
/* A1F70 800A1370 8FB800C4 */  lw         $t8, 0xc4($sp)
/* A1F74 800A1374 3C0CE600 */  lui        $t4, 0xe600
/* A1F78 800A1378 AF0C0000 */  sw         $t4, ($t8)
/* A1F7C 800A137C 8FAE00C4 */  lw         $t6, 0xc4($sp)
/* A1F80 800A1380 ADC00004 */  sw         $zero, 4($t6)
/* A1F84 800A1384 8FAD01A8 */  lw         $t5, 0x1a8($sp)
/* A1F88 800A1388 8FAF01A4 */  lw         $t7, 0x1a4($sp)
/* A1F8C 800A138C 84CC000E */  lh         $t4, 0xe($a2)
/* A1F90 800A1390 8CCE0008 */  lw         $t6, 8($a2)
/* A1F94 800A1394 01AF0019 */  multu      $t5, $t7
/* A1F98 800A1398 00005812 */  mflo       $t3
/* A1F9C 800A139C 05610003 */  bgez       $t3, .L800A13AC
/* A1FA0 800A13A0 000BC843 */   sra       $t9, $t3, 1
/* A1FA4 800A13A4 25610001 */  addiu      $at, $t3, 1
/* A1FA8 800A13A8 0001C843 */  sra        $t9, $at, 1
.L800A13AC:
/* A1FAC 800A13AC 032C0019 */  multu      $t9, $t4
/* A1FB0 800A13B0 0000C012 */  mflo       $t8
/* A1FB4 800A13B4 01D86821 */  addu       $t5, $t6, $t8
/* A1FB8 800A13B8 AFAD00E8 */  sw         $t5, 0xe8($sp)
/* A1FBC 800A13BC 8FAF01A4 */  lw         $t7, 0x1a4($sp)
/* A1FC0 800A13C0 AFA000E0 */  sw         $zero, 0xe0($sp)
/* A1FC4 800A13C4 05E10003 */  bgez       $t7, .L800A13D4
/* A1FC8 800A13C8 000F5843 */   sra       $t3, $t7, 1
/* A1FCC 800A13CC 25E10001 */  addiu      $at, $t7, 1
/* A1FD0 800A13D0 00015843 */  sra        $t3, $at, 1
.L800A13D4:
/* A1FD4 800A13D4 056000C3 */  bltz       $t3, .L800A16E4
/* A1FD8 800A13D8 00000000 */   nop
.L800A13DC:
/* A1FDC 800A13DC 8FB901A4 */  lw         $t9, 0x1a4($sp)
/* A1FE0 800A13E0 8FAE00E0 */  lw         $t6, 0xe0($sp)
/* A1FE4 800A13E4 8FAF01A8 */  lw         $t7, 0x1a8($sp)
/* A1FE8 800A13E8 07210003 */  bgez       $t9, .L800A13F8
/* A1FEC 800A13EC 00196043 */   sra       $t4, $t9, 1
/* A1FF0 800A13F0 27210001 */  addiu      $at, $t9, 1
/* A1FF4 800A13F4 00016043 */  sra        $t4, $at, 1
.L800A13F8:
/* A1FF8 800A13F8 018EC023 */  subu       $t8, $t4, $t6
/* A1FFC 800A13FC 270DFFFE */  addiu      $t5, $t8, -2
/* A2000 800A1400 01AF0019 */  multu      $t5, $t7
/* A2004 800A1404 8FB900E8 */  lw         $t9, 0xe8($sp)
/* A2008 800A1408 00005812 */  mflo       $t3
/* A200C 800A140C 01796021 */  addu       $t4, $t3, $t9
/* A2010 800A1410 AFAC00E4 */  sw         $t4, 0xe4($sp)
/* A2014 800A1414 8FAE01A8 */  lw         $t6, 0x1a8($sp)
/* A2018 800A1418 000EC080 */  sll        $t8, $t6, 2
/* A201C 800A141C 030EC023 */  subu       $t8, $t8, $t6
/* A2020 800A1420 AFB800D8 */  sw         $t8, 0xd8($sp)
/* A2024 800A1424 8FAF00E0 */  lw         $t7, 0xe0($sp)
/* A2028 800A1428 8FAD01A4 */  lw         $t5, 0x1a4($sp)
/* A202C 800A142C 8FAE01A8 */  lw         $t6, 0x1a8($sp)
/* A2030 800A1430 000F5840 */  sll        $t3, $t7, 1
/* A2034 800A1434 01ABC823 */  subu       $t9, $t5, $t3
/* A2038 800A1438 272CFFFE */  addiu      $t4, $t9, -2
/* A203C 800A143C 05C10003 */  bgez       $t6, .L800A144C
/* A2040 800A1440 000EC0C3 */   sra       $t8, $t6, 3
/* A2044 800A1444 25C10007 */  addiu      $at, $t6, 7
/* A2048 800A1448 0001C0C3 */  sra        $t8, $at, 3
.L800A144C:
/* A204C 800A144C 030C0019 */  multu      $t8, $t4
/* A2050 800A1450 00007812 */  mflo       $t7
/* A2054 800A1454 AFAF00DC */  sw         $t7, 0xdc($sp)
/* A2058 800A1458 00000000 */  nop
/* A205C 800A145C 8FAD00DC */  lw         $t5, 0xdc($sp)
/* A2060 800A1460 05A1000E */  bgez       $t5, .L800A149C
/* A2064 800A1464 00000000 */   nop
/* A2068 800A1468 8FB900DC */  lw         $t9, 0xdc($sp)
/* A206C 800A146C 8FAB00E4 */  lw         $t3, 0xe4($sp)
/* A2070 800A1470 00197023 */  negu       $t6, $t9
/* A2074 800A1474 000EC0C0 */  sll        $t8, $t6, 3
/* A2078 800A1478 01786021 */  addu       $t4, $t3, $t8
/* A207C 800A147C AFAC00E4 */  sw         $t4, 0xe4($sp)
/* A2080 800A1480 8FAD00DC */  lw         $t5, 0xdc($sp)
/* A2084 800A1484 8FAF00D8 */  lw         $t7, 0xd8($sp)
/* A2088 800A1488 000DC823 */  negu       $t9, $t5
/* A208C 800A148C 001970C0 */  sll        $t6, $t9, 3
/* A2090 800A1490 01EE5823 */  subu       $t3, $t7, $t6
/* A2094 800A1494 AFAB00D8 */  sw         $t3, 0xd8($sp)
/* A2098 800A1498 AFA000DC */  sw         $zero, 0xdc($sp)
.L800A149C:
/* A209C 800A149C 8FB800E0 */  lw         $t8, 0xe0($sp)
/* A20A0 800A14A0 17000004 */  bnez       $t8, .L800A14B4
/* A20A4 800A14A4 00000000 */   nop
/* A20A8 800A14A8 8FAC01A8 */  lw         $t4, 0x1a8($sp)
/* A20AC 800A14AC 000C6840 */  sll        $t5, $t4, 1
/* A20B0 800A14B0 AFAD00D8 */  sw         $t5, 0xd8($sp)
.L800A14B4:
/* A20B4 800A14B4 8FB901AC */  lw         $t9, 0x1ac($sp)
/* A20B8 800A14B8 272F0008 */  addiu      $t7, $t9, 8
/* A20BC 800A14BC AFAF01AC */  sw         $t7, 0x1ac($sp)
/* A20C0 800A14C0 AFB900C0 */  sw         $t9, 0xc0($sp)
/* A20C4 800A14C4 8FAB00C0 */  lw         $t3, 0xc0($sp)
/* A20C8 800A14C8 3C0EFD88 */  lui        $t6, 0xfd88
/* A20CC 800A14CC AD6E0000 */  sw         $t6, ($t3)
/* A20D0 800A14D0 8FB800E4 */  lw         $t8, 0xe4($sp)
/* A20D4 800A14D4 8FAC00C0 */  lw         $t4, 0xc0($sp)
/* A20D8 800A14D8 AD980004 */  sw         $t8, 4($t4)
/* A20DC 800A14DC 8FAD01AC */  lw         $t5, 0x1ac($sp)
/* A20E0 800A14E0 25B90008 */  addiu      $t9, $t5, 8
/* A20E4 800A14E4 AFB901AC */  sw         $t9, 0x1ac($sp)
/* A20E8 800A14E8 AFAD00BC */  sw         $t5, 0xbc($sp)
/* A20EC 800A14EC 8FAF00DC */  lw         $t7, 0xdc($sp)
/* A20F0 800A14F0 8FB800BC */  lw         $t8, 0xbc($sp)
/* A20F4 800A14F4 3C01F588 */  lui        $at, 0xf588
/* A20F8 800A14F8 31EE01FF */  andi       $t6, $t7, 0x1ff
/* A20FC 800A14FC 01C15825 */  or         $t3, $t6, $at
/* A2100 800A1500 AF0B0000 */  sw         $t3, ($t8)
/* A2104 800A1504 8FAC0188 */  lw         $t4, 0x188($sp)
/* A2108 800A1508 8FAE0180 */  lw         $t6, 0x180($sp)
/* A210C 800A150C 3C010700 */  lui        $at, 0x700
/* A2110 800A1510 318D0003 */  andi       $t5, $t4, 3
/* A2114 800A1514 000DCC80 */  sll        $t9, $t5, 0x12
/* A2118 800A1518 8FAD0178 */  lw         $t5, 0x178($sp)
/* A211C 800A151C 03217825 */  or         $t7, $t9, $at
/* A2120 800A1520 31CB000F */  andi       $t3, $t6, 0xf
/* A2124 800A1524 000BC380 */  sll        $t8, $t3, 0xe
/* A2128 800A1528 01F86025 */  or         $t4, $t7, $t8
/* A212C 800A152C 8FAF018C */  lw         $t7, 0x18c($sp)
/* A2130 800A1530 31B9000F */  andi       $t9, $t5, 0xf
/* A2134 800A1534 00197280 */  sll        $t6, $t9, 0xa
/* A2138 800A1538 018E5825 */  or         $t3, $t4, $t6
/* A213C 800A153C 8FAC0184 */  lw         $t4, 0x184($sp)
/* A2140 800A1540 31F80003 */  andi       $t8, $t7, 3
/* A2144 800A1544 00186A00 */  sll        $t5, $t8, 8
/* A2148 800A1548 016DC825 */  or         $t9, $t3, $t5
/* A214C 800A154C 8FAB017C */  lw         $t3, 0x17c($sp)
/* A2150 800A1550 318E000F */  andi       $t6, $t4, 0xf
/* A2154 800A1554 000E7900 */  sll        $t7, $t6, 4
/* A2158 800A1558 8FAE00BC */  lw         $t6, 0xbc($sp)
/* A215C 800A155C 032FC025 */  or         $t8, $t9, $t7
/* A2160 800A1560 316D000F */  andi       $t5, $t3, 0xf
/* A2164 800A1564 030D6025 */  or         $t4, $t8, $t5
/* A2168 800A1568 ADCC0004 */  sw         $t4, 4($t6)
/* A216C 800A156C 8FB901AC */  lw         $t9, 0x1ac($sp)
/* A2170 800A1570 272F0008 */  addiu      $t7, $t9, 8
/* A2174 800A1574 AFAF01AC */  sw         $t7, 0x1ac($sp)
/* A2178 800A1578 AFB900B8 */  sw         $t9, 0xb8($sp)
/* A217C 800A157C 8FB800B8 */  lw         $t8, 0xb8($sp)
/* A2180 800A1580 3C0BE600 */  lui        $t3, 0xe600
/* A2184 800A1584 AF0B0000 */  sw         $t3, ($t8)
/* A2188 800A1588 8FAD00B8 */  lw         $t5, 0xb8($sp)
/* A218C 800A158C ADA00004 */  sw         $zero, 4($t5)
/* A2190 800A1590 8FAC01AC */  lw         $t4, 0x1ac($sp)
/* A2194 800A1594 258E0008 */  addiu      $t6, $t4, 8
/* A2198 800A1598 AFAE01AC */  sw         $t6, 0x1ac($sp)
/* A219C 800A159C AFAC00B4 */  sw         $t4, 0xb4($sp)
/* A21A0 800A15A0 8FAF00B4 */  lw         $t7, 0xb4($sp)
/* A21A4 800A15A4 3C19F300 */  lui        $t9, 0xf300
/* A21A8 800A15A8 ADF90000 */  sw         $t9, ($t7)
/* A21AC 800A15AC 8FAB00D8 */  lw         $t3, 0xd8($sp)
/* A21B0 800A15B0 2578FFFF */  addiu      $t8, $t3, -1
/* A21B4 800A15B4 2B0107FF */  slti       $at, $t8, 0x7ff
/* A21B8 800A15B8 10200003 */  beqz       $at, .L800A15C8
/* A21BC 800A15BC 00000000 */   nop
/* A21C0 800A15C0 10000002 */  b          .L800A15CC
/* A21C4 800A15C4 03005025 */   or        $t2, $t8, $zero
.L800A15C8:
/* A21C8 800A15C8 240A07FF */  addiu      $t2, $zero, 0x7ff
.L800A15CC:
/* A21CC 800A15CC 8FAD01A8 */  lw         $t5, 0x1a8($sp)
/* A21D0 800A15D0 05A10003 */  bgez       $t5, .L800A15E0
/* A21D4 800A15D4 000D60C3 */   sra       $t4, $t5, 3
/* A21D8 800A15D8 25A10007 */  addiu      $at, $t5, 7
/* A21DC 800A15DC 000160C3 */  sra        $t4, $at, 3
.L800A15E0:
/* A21E0 800A15E0 1D800003 */  bgtz       $t4, .L800A15F0
/* A21E4 800A15E4 00000000 */   nop
/* A21E8 800A15E8 10000007 */  b          .L800A1608
/* A21EC 800A15EC 24090001 */   addiu     $t1, $zero, 1
.L800A15F0:
/* A21F0 800A15F0 8FA901A8 */  lw         $t1, 0x1a8($sp)
/* A21F4 800A15F4 05210003 */  bgez       $t1, .L800A1604
/* A21F8 800A15F8 000970C3 */   sra       $t6, $t1, 3
/* A21FC 800A15FC 25210007 */  addiu      $at, $t1, 7
/* A2200 800A1600 000170C3 */  sra        $t6, $at, 3
.L800A1604:
/* A2204 800A1604 01C04825 */  or         $t1, $t6, $zero
.L800A1608:
/* A2208 800A1608 8FB901A8 */  lw         $t9, 0x1a8($sp)
/* A220C 800A160C 07210003 */  bgez       $t9, .L800A161C
/* A2210 800A1610 001978C3 */   sra       $t7, $t9, 3
/* A2214 800A1614 27210007 */  addiu      $at, $t9, 7
/* A2218 800A1618 000178C3 */  sra        $t7, $at, 3
.L800A161C:
/* A221C 800A161C 1DE00003 */  bgtz       $t7, .L800A162C
/* A2220 800A1620 00000000 */   nop
/* A2224 800A1624 10000007 */  b          .L800A1644
/* A2228 800A1628 24080001 */   addiu     $t0, $zero, 1
.L800A162C:
/* A222C 800A162C 8FA801A8 */  lw         $t0, 0x1a8($sp)
/* A2230 800A1630 05010003 */  bgez       $t0, .L800A1640
/* A2234 800A1634 000858C3 */   sra       $t3, $t0, 3
/* A2238 800A1638 25010007 */  addiu      $at, $t0, 7
/* A223C 800A163C 000158C3 */  sra        $t3, $at, 3
.L800A1640:
/* A2240 800A1640 01604025 */  or         $t0, $t3, $zero
.L800A1644:
/* A2244 800A1644 253807FF */  addiu      $t8, $t1, 0x7ff
/* A2248 800A1648 0308001A */  div        $zero, $t8, $t0
/* A224C 800A164C 15000002 */  bnez       $t0, .L800A1658
/* A2250 800A1650 00000000 */   nop
/* A2254 800A1654 0007000D */  break      7
.L800A1658:
/* A2258 800A1658 2401FFFF */   addiu     $at, $zero, -1
/* A225C 800A165C 15010004 */  bne        $t0, $at, .L800A1670
/* A2260 800A1660 3C018000 */   lui       $at, 0x8000
/* A2264 800A1664 17010002 */  bne        $t8, $at, .L800A1670
/* A2268 800A1668 00000000 */   nop
/* A226C 800A166C 0006000D */  break      6
.L800A1670:
/* A2270 800A1670 314E0FFF */   andi      $t6, $t2, 0xfff
/* A2274 800A1674 8FB800B4 */  lw         $t8, 0xb4($sp)
/* A2278 800A1678 000ECB00 */  sll        $t9, $t6, 0xc
/* A227C 800A167C 3C010700 */  lui        $at, 0x700
/* A2280 800A1680 00006812 */  mflo       $t5
/* A2284 800A1684 31AC0FFF */  andi       $t4, $t5, 0xfff
/* A2288 800A1688 03217825 */  or         $t7, $t9, $at
/* A228C 800A168C 018F5825 */  or         $t3, $t4, $t7
/* A2290 800A1690 AF0B0004 */  sw         $t3, 4($t8)
/* A2294 800A1694 8FAD01AC */  lw         $t5, 0x1ac($sp)
/* A2298 800A1698 25AE0008 */  addiu      $t6, $t5, 8
/* A229C 800A169C AFAE01AC */  sw         $t6, 0x1ac($sp)
/* A22A0 800A16A0 AFAD00B0 */  sw         $t5, 0xb0($sp)
/* A22A4 800A16A4 8FAC00B0 */  lw         $t4, 0xb0($sp)
/* A22A8 800A16A8 3C19E600 */  lui        $t9, 0xe600
/* A22AC 800A16AC AD990000 */  sw         $t9, ($t4)
/* A22B0 800A16B0 8FAF00B0 */  lw         $t7, 0xb0($sp)
/* A22B4 800A16B4 ADE00004 */  sw         $zero, 4($t7)
/* A22B8 800A16B8 8FAD01A4 */  lw         $t5, 0x1a4($sp)
/* A22BC 800A16BC 8FAB00E0 */  lw         $t3, 0xe0($sp)
/* A22C0 800A16C0 25780001 */  addiu      $t8, $t3, 1
/* A22C4 800A16C4 AFB800E0 */  sw         $t8, 0xe0($sp)
/* A22C8 800A16C8 05A10003 */  bgez       $t5, .L800A16D8
/* A22CC 800A16CC 000D7043 */   sra       $t6, $t5, 1
/* A22D0 800A16D0 25A10001 */  addiu      $at, $t5, 1
/* A22D4 800A16D4 00017043 */  sra        $t6, $at, 1
.L800A16D8:
/* A22D8 800A16D8 01D8082A */  slt        $at, $t6, $t8
/* A22DC 800A16DC 1020FF3F */  beqz       $at, .L800A13DC
/* A22E0 800A16E0 00000000 */   nop
.L800A16E4:
/* A22E4 800A16E4 8FB901AC */  lw         $t9, 0x1ac($sp)
/* A22E8 800A16E8 272C0008 */  addiu      $t4, $t9, 8
/* A22EC 800A16EC AFAC01AC */  sw         $t4, 0x1ac($sp)
/* A22F0 800A16F0 AFB900AC */  sw         $t9, 0xac($sp)
/* A22F4 800A16F4 90AF0030 */  lbu        $t7, 0x30($a1)
/* A22F8 800A16F8 8FB901A8 */  lw         $t9, 0x1a8($sp)
/* A22FC 800A16FC 3C01F500 */  lui        $at, 0xf500
/* A2300 800A1700 31EB0007 */  andi       $t3, $t7, 7
/* A2304 800A1704 000B6D40 */  sll        $t5, $t3, 0x15
/* A2308 800A1708 01A1C025 */  or         $t8, $t5, $at
/* A230C 800A170C 272C0007 */  addiu      $t4, $t9, 7
/* A2310 800A1710 000C78C3 */  sra        $t7, $t4, 3
/* A2314 800A1714 8FB900AC */  lw         $t9, 0xac($sp)
/* A2318 800A1718 31EB01FF */  andi       $t3, $t7, 0x1ff
/* A231C 800A171C 3C010010 */  lui        $at, 0x10
/* A2320 800A1720 03017025 */  or         $t6, $t8, $at
/* A2324 800A1724 000B6A40 */  sll        $t5, $t3, 9
/* A2328 800A1728 01CDC025 */  or         $t8, $t6, $t5
/* A232C 800A172C AF380000 */  sw         $t8, ($t9)
/* A2330 800A1730 8FAC0188 */  lw         $t4, 0x188($sp)
/* A2334 800A1734 8FAE0180 */  lw         $t6, 0x180($sp)
/* A2338 800A1738 318F0003 */  andi       $t7, $t4, 3
/* A233C 800A173C 8FAC0178 */  lw         $t4, 0x178($sp)
/* A2340 800A1740 000F5C80 */  sll        $t3, $t7, 0x12
/* A2344 800A1744 31CD000F */  andi       $t5, $t6, 0xf
/* A2348 800A1748 000DC380 */  sll        $t8, $t5, 0xe
/* A234C 800A174C 0178C825 */  or         $t9, $t3, $t8
/* A2350 800A1750 8FAB018C */  lw         $t3, 0x18c($sp)
/* A2354 800A1754 318F000F */  andi       $t7, $t4, 0xf
/* A2358 800A1758 000F7280 */  sll        $t6, $t7, 0xa
/* A235C 800A175C 032E6825 */  or         $t5, $t9, $t6
/* A2360 800A1760 8FB90184 */  lw         $t9, 0x184($sp)
/* A2364 800A1764 31780003 */  andi       $t8, $t3, 3
/* A2368 800A1768 00186200 */  sll        $t4, $t8, 8
/* A236C 800A176C 01AC7825 */  or         $t7, $t5, $t4
/* A2370 800A1770 8FAD017C */  lw         $t5, 0x17c($sp)
/* A2374 800A1774 332E000F */  andi       $t6, $t9, 0xf
/* A2378 800A1778 000E5900 */  sll        $t3, $t6, 4
/* A237C 800A177C 8FAE00AC */  lw         $t6, 0xac($sp)
/* A2380 800A1780 01EBC025 */  or         $t8, $t7, $t3
/* A2384 800A1784 31AC000F */  andi       $t4, $t5, 0xf
/* A2388 800A1788 030CC825 */  or         $t9, $t8, $t4
/* A238C 800A178C ADD90004 */  sw         $t9, 4($t6)
/* A2390 800A1790 8FAF01AC */  lw         $t7, 0x1ac($sp)
/* A2394 800A1794 25EB0008 */  addiu      $t3, $t7, 8
/* A2398 800A1798 AFAB01AC */  sw         $t3, 0x1ac($sp)
/* A239C 800A179C AFAF00A8 */  sw         $t7, 0xa8($sp)
/* A23A0 800A17A0 8FB800A8 */  lw         $t8, 0xa8($sp)
/* A23A4 800A17A4 3C0DF200 */  lui        $t5, 0xf200
/* A23A8 800A17A8 AF0D0000 */  sw         $t5, ($t8)
/* A23AC 800A17AC 8FAC01A8 */  lw         $t4, 0x1a8($sp)
/* A23B0 800A17B0 8FAD01A4 */  lw         $t5, 0x1a4($sp)
/* A23B4 800A17B4 2599FFFF */  addiu      $t9, $t4, -1
/* A23B8 800A17B8 00197080 */  sll        $t6, $t9, 2
/* A23BC 800A17BC 31CF0FFF */  andi       $t7, $t6, 0xfff
/* A23C0 800A17C0 000F5B00 */  sll        $t3, $t7, 0xc
/* A23C4 800A17C4 25B8FFFF */  addiu      $t8, $t5, -1
/* A23C8 800A17C8 8FAF00A8 */  lw         $t7, 0xa8($sp)
/* A23CC 800A17CC 00186080 */  sll        $t4, $t8, 2
/* A23D0 800A17D0 31990FFF */  andi       $t9, $t4, 0xfff
/* A23D4 800A17D4 01797025 */  or         $t6, $t3, $t9
/* A23D8 800A17D8 ADEE0004 */  sw         $t6, 4($t7)
/* A23DC 800A17DC 100000D2 */  b          .L800A1B28
/* A23E0 800A17E0 00000000 */   nop
.L800A17E4:
/* A23E4 800A17E4 8FAD01AC */  lw         $t5, 0x1ac($sp)
/* A23E8 800A17E8 25B80008 */  addiu      $t8, $t5, 8
/* A23EC 800A17EC AFB801AC */  sw         $t8, 0x1ac($sp)
/* A23F0 800A17F0 AFAD00A4 */  sw         $t5, 0xa4($sp)
/* A23F4 800A17F4 90AC0030 */  lbu        $t4, 0x30($a1)
/* A23F8 800A17F8 3C01FD00 */  lui        $at, 0xfd00
/* A23FC 800A17FC 8FAD00A4 */  lw         $t5, 0xa4($sp)
/* A2400 800A1800 318B0007 */  andi       $t3, $t4, 7
/* A2404 800A1804 000BCD40 */  sll        $t9, $t3, 0x15
/* A2408 800A1808 03217025 */  or         $t6, $t9, $at
/* A240C 800A180C 3C010010 */  lui        $at, 0x10
/* A2410 800A1810 01C17825 */  or         $t7, $t6, $at
/* A2414 800A1814 ADAF0000 */  sw         $t7, ($t5)
/* A2418 800A1818 8CD80008 */  lw         $t8, 8($a2)
/* A241C 800A181C 8FAC00A4 */  lw         $t4, 0xa4($sp)
/* A2420 800A1820 AD980004 */  sw         $t8, 4($t4)
/* A2424 800A1824 8FAB01AC */  lw         $t3, 0x1ac($sp)
/* A2428 800A1828 25790008 */  addiu      $t9, $t3, 8
/* A242C 800A182C AFB901AC */  sw         $t9, 0x1ac($sp)
/* A2430 800A1830 AFAB00A0 */  sw         $t3, 0xa0($sp)
/* A2434 800A1834 90AE0030 */  lbu        $t6, 0x30($a1)
/* A2438 800A1838 3C01F500 */  lui        $at, 0xf500
/* A243C 800A183C 8FAB00A0 */  lw         $t3, 0xa0($sp)
/* A2440 800A1840 31CF0007 */  andi       $t7, $t6, 7
/* A2444 800A1844 000F6D40 */  sll        $t5, $t7, 0x15
/* A2448 800A1848 01A1C025 */  or         $t8, $t5, $at
/* A244C 800A184C 3C010010 */  lui        $at, 0x10
/* A2450 800A1850 03016025 */  or         $t4, $t8, $at
/* A2454 800A1854 AD6C0000 */  sw         $t4, ($t3)
/* A2458 800A1858 8FB90188 */  lw         $t9, 0x188($sp)
/* A245C 800A185C 8FB80180 */  lw         $t8, 0x180($sp)
/* A2460 800A1860 3C010700 */  lui        $at, 0x700
/* A2464 800A1864 332E0003 */  andi       $t6, $t9, 3
/* A2468 800A1868 000E7C80 */  sll        $t7, $t6, 0x12
/* A246C 800A186C 8FAE0178 */  lw         $t6, 0x178($sp)
/* A2470 800A1870 01E16825 */  or         $t5, $t7, $at
/* A2474 800A1874 330C000F */  andi       $t4, $t8, 0xf
/* A2478 800A1878 000C5B80 */  sll        $t3, $t4, 0xe
/* A247C 800A187C 01ABC825 */  or         $t9, $t5, $t3
/* A2480 800A1880 8FAD018C */  lw         $t5, 0x18c($sp)
/* A2484 800A1884 31CF000F */  andi       $t7, $t6, 0xf
/* A2488 800A1888 000FC280 */  sll        $t8, $t7, 0xa
/* A248C 800A188C 03386025 */  or         $t4, $t9, $t8
/* A2490 800A1890 8FB90184 */  lw         $t9, 0x184($sp)
/* A2494 800A1894 31AB0003 */  andi       $t3, $t5, 3
/* A2498 800A1898 000B7200 */  sll        $t6, $t3, 8
/* A249C 800A189C 018E7825 */  or         $t7, $t4, $t6
/* A24A0 800A18A0 8FAC017C */  lw         $t4, 0x17c($sp)
/* A24A4 800A18A4 3338000F */  andi       $t8, $t9, 0xf
/* A24A8 800A18A8 00186900 */  sll        $t5, $t8, 4
/* A24AC 800A18AC 8FB800A0 */  lw         $t8, 0xa0($sp)
/* A24B0 800A18B0 01ED5825 */  or         $t3, $t7, $t5
/* A24B4 800A18B4 318E000F */  andi       $t6, $t4, 0xf
/* A24B8 800A18B8 016EC825 */  or         $t9, $t3, $t6
/* A24BC 800A18BC AF190004 */  sw         $t9, 4($t8)
/* A24C0 800A18C0 8FAF01AC */  lw         $t7, 0x1ac($sp)
/* A24C4 800A18C4 25ED0008 */  addiu      $t5, $t7, 8
/* A24C8 800A18C8 AFAD01AC */  sw         $t5, 0x1ac($sp)
/* A24CC 800A18CC AFAF009C */  sw         $t7, 0x9c($sp)
/* A24D0 800A18D0 8FAB009C */  lw         $t3, 0x9c($sp)
/* A24D4 800A18D4 3C0CE600 */  lui        $t4, 0xe600
/* A24D8 800A18D8 AD6C0000 */  sw         $t4, ($t3)
/* A24DC 800A18DC 8FAE009C */  lw         $t6, 0x9c($sp)
/* A24E0 800A18E0 ADC00004 */  sw         $zero, 4($t6)
/* A24E4 800A18E4 8FB901AC */  lw         $t9, 0x1ac($sp)
/* A24E8 800A18E8 27380008 */  addiu      $t8, $t9, 8
/* A24EC 800A18EC AFB801AC */  sw         $t8, 0x1ac($sp)
/* A24F0 800A18F0 AFB90098 */  sw         $t9, 0x98($sp)
/* A24F4 800A18F4 8FAD0098 */  lw         $t5, 0x98($sp)
/* A24F8 800A18F8 3C0FF300 */  lui        $t7, 0xf300
/* A24FC 800A18FC ADAF0000 */  sw         $t7, ($t5)
/* A2500 800A1900 8FAC01A8 */  lw         $t4, 0x1a8($sp)
/* A2504 800A1904 8FAB01A4 */  lw         $t3, 0x1a4($sp)
/* A2508 800A1908 018B0019 */  multu      $t4, $t3
/* A250C 800A190C 00007012 */  mflo       $t6
/* A2510 800A1910 25D9FFFF */  addiu      $t9, $t6, -1
/* A2514 800A1914 2B2107FF */  slti       $at, $t9, 0x7ff
/* A2518 800A1918 10200003 */  beqz       $at, .L800A1928
/* A251C 800A191C 00000000 */   nop
/* A2520 800A1920 10000002 */  b          .L800A192C
/* A2524 800A1924 03205025 */   or        $t2, $t9, $zero
.L800A1928:
/* A2528 800A1928 240A07FF */  addiu      $t2, $zero, 0x7ff
.L800A192C:
/* A252C 800A192C 8FB801A8 */  lw         $t8, 0x1a8($sp)
/* A2530 800A1930 00187840 */  sll        $t7, $t8, 1
/* A2534 800A1934 05E10003 */  bgez       $t7, .L800A1944
/* A2538 800A1938 000F68C3 */   sra       $t5, $t7, 3
/* A253C 800A193C 25E10007 */  addiu      $at, $t7, 7
/* A2540 800A1940 000168C3 */  sra        $t5, $at, 3
.L800A1944:
/* A2544 800A1944 1DA00003 */  bgtz       $t5, .L800A1954
/* A2548 800A1948 00000000 */   nop
/* A254C 800A194C 10000009 */  b          .L800A1974
/* A2550 800A1950 24090001 */   addiu     $t1, $zero, 1
.L800A1954:
/* A2554 800A1954 8FA901A8 */  lw         $t1, 0x1a8($sp)
/* A2558 800A1958 00096040 */  sll        $t4, $t1, 1
/* A255C 800A195C 01804825 */  or         $t1, $t4, $zero
/* A2560 800A1960 05210003 */  bgez       $t1, .L800A1970
/* A2564 800A1964 000958C3 */   sra       $t3, $t1, 3
/* A2568 800A1968 25210007 */  addiu      $at, $t1, 7
/* A256C 800A196C 000158C3 */  sra        $t3, $at, 3
.L800A1970:
/* A2570 800A1970 01604825 */  or         $t1, $t3, $zero
.L800A1974:
/* A2574 800A1974 8FAE01A8 */  lw         $t6, 0x1a8($sp)
/* A2578 800A1978 000EC840 */  sll        $t9, $t6, 1
/* A257C 800A197C 07210003 */  bgez       $t9, .L800A198C
/* A2580 800A1980 0019C0C3 */   sra       $t8, $t9, 3
/* A2584 800A1984 27210007 */  addiu      $at, $t9, 7
/* A2588 800A1988 0001C0C3 */  sra        $t8, $at, 3
.L800A198C:
/* A258C 800A198C 1F000003 */  bgtz       $t8, .L800A199C
/* A2590 800A1990 00000000 */   nop
/* A2594 800A1994 10000009 */  b          .L800A19BC
/* A2598 800A1998 24080001 */   addiu     $t0, $zero, 1
.L800A199C:
/* A259C 800A199C 8FA801A8 */  lw         $t0, 0x1a8($sp)
/* A25A0 800A19A0 00087840 */  sll        $t7, $t0, 1
/* A25A4 800A19A4 01E04025 */  or         $t0, $t7, $zero
/* A25A8 800A19A8 05010003 */  bgez       $t0, .L800A19B8
/* A25AC 800A19AC 000868C3 */   sra       $t5, $t0, 3
/* A25B0 800A19B0 25010007 */  addiu      $at, $t0, 7
/* A25B4 800A19B4 000168C3 */  sra        $t5, $at, 3
.L800A19B8:
/* A25B8 800A19B8 01A04025 */  or         $t0, $t5, $zero
.L800A19BC:
/* A25BC 800A19BC 252C07FF */  addiu      $t4, $t1, 0x7ff
/* A25C0 800A19C0 0188001A */  div        $zero, $t4, $t0
/* A25C4 800A19C4 15000002 */  bnez       $t0, .L800A19D0
/* A25C8 800A19C8 00000000 */   nop
/* A25CC 800A19CC 0007000D */  break      7
.L800A19D0:
/* A25D0 800A19D0 2401FFFF */   addiu     $at, $zero, -1
/* A25D4 800A19D4 15010004 */  bne        $t0, $at, .L800A19E8
/* A25D8 800A19D8 3C018000 */   lui       $at, 0x8000
/* A25DC 800A19DC 15810002 */  bne        $t4, $at, .L800A19E8
/* A25E0 800A19E0 00000000 */   nop
/* A25E4 800A19E4 0006000D */  break      6
.L800A19E8:
/* A25E8 800A19E8 31590FFF */   andi      $t9, $t2, 0xfff
/* A25EC 800A19EC 8FAC0098 */  lw         $t4, 0x98($sp)
/* A25F0 800A19F0 0019C300 */  sll        $t8, $t9, 0xc
/* A25F4 800A19F4 3C010700 */  lui        $at, 0x700
/* A25F8 800A19F8 00005812 */  mflo       $t3
/* A25FC 800A19FC 316E0FFF */  andi       $t6, $t3, 0xfff
/* A2600 800A1A00 03017825 */  or         $t7, $t8, $at
/* A2604 800A1A04 01CF6825 */  or         $t5, $t6, $t7
/* A2608 800A1A08 AD8D0004 */  sw         $t5, 4($t4)
/* A260C 800A1A0C 8FAB01AC */  lw         $t3, 0x1ac($sp)
/* A2610 800A1A10 25790008 */  addiu      $t9, $t3, 8
/* A2614 800A1A14 AFB901AC */  sw         $t9, 0x1ac($sp)
/* A2618 800A1A18 AFAB0094 */  sw         $t3, 0x94($sp)
/* A261C 800A1A1C 8FAE0094 */  lw         $t6, 0x94($sp)
/* A2620 800A1A20 3C18E700 */  lui        $t8, 0xe700
/* A2624 800A1A24 ADD80000 */  sw         $t8, ($t6)
/* A2628 800A1A28 8FAF0094 */  lw         $t7, 0x94($sp)
/* A262C 800A1A2C ADE00004 */  sw         $zero, 4($t7)
/* A2630 800A1A30 8FAD01AC */  lw         $t5, 0x1ac($sp)
/* A2634 800A1A34 25AC0008 */  addiu      $t4, $t5, 8
/* A2638 800A1A38 AFAC01AC */  sw         $t4, 0x1ac($sp)
/* A263C 800A1A3C AFAD0090 */  sw         $t5, 0x90($sp)
/* A2640 800A1A40 90AB0030 */  lbu        $t3, 0x30($a1)
/* A2644 800A1A44 8FAD01A8 */  lw         $t5, 0x1a8($sp)
/* A2648 800A1A48 3C01F500 */  lui        $at, 0xf500
/* A264C 800A1A4C 31790007 */  andi       $t9, $t3, 7
/* A2650 800A1A50 0019C540 */  sll        $t8, $t9, 0x15
/* A2654 800A1A54 03017025 */  or         $t6, $t8, $at
/* A2658 800A1A58 25AC0007 */  addiu      $t4, $t5, 7
/* A265C 800A1A5C 000C58C3 */  sra        $t3, $t4, 3
/* A2660 800A1A60 8FAD0090 */  lw         $t5, 0x90($sp)
/* A2664 800A1A64 317901FF */  andi       $t9, $t3, 0x1ff
/* A2668 800A1A68 3C010010 */  lui        $at, 0x10
/* A266C 800A1A6C 01C17825 */  or         $t7, $t6, $at
/* A2670 800A1A70 0019C240 */  sll        $t8, $t9, 9
/* A2674 800A1A74 01F87025 */  or         $t6, $t7, $t8
/* A2678 800A1A78 ADAE0000 */  sw         $t6, ($t5)
/* A267C 800A1A7C 8FAC0188 */  lw         $t4, 0x188($sp)
/* A2680 800A1A80 8FAF0180 */  lw         $t7, 0x180($sp)
/* A2684 800A1A84 318B0003 */  andi       $t3, $t4, 3
/* A2688 800A1A88 8FAC0178 */  lw         $t4, 0x178($sp)
/* A268C 800A1A8C 000BCC80 */  sll        $t9, $t3, 0x12
/* A2690 800A1A90 31F8000F */  andi       $t8, $t7, 0xf
/* A2694 800A1A94 00187380 */  sll        $t6, $t8, 0xe
/* A2698 800A1A98 032E6825 */  or         $t5, $t9, $t6
/* A269C 800A1A9C 8FB9018C */  lw         $t9, 0x18c($sp)
/* A26A0 800A1AA0 318B000F */  andi       $t3, $t4, 0xf
/* A26A4 800A1AA4 000B7A80 */  sll        $t7, $t3, 0xa
/* A26A8 800A1AA8 01AFC025 */  or         $t8, $t5, $t7
/* A26AC 800A1AAC 8FAD0184 */  lw         $t5, 0x184($sp)
/* A26B0 800A1AB0 332E0003 */  andi       $t6, $t9, 3
/* A26B4 800A1AB4 000E6200 */  sll        $t4, $t6, 8
/* A26B8 800A1AB8 030C5825 */  or         $t3, $t8, $t4
/* A26BC 800A1ABC 8FB8017C */  lw         $t8, 0x17c($sp)
/* A26C0 800A1AC0 31AF000F */  andi       $t7, $t5, 0xf
/* A26C4 800A1AC4 000FC900 */  sll        $t9, $t7, 4
/* A26C8 800A1AC8 8FAF0090 */  lw         $t7, 0x90($sp)
/* A26CC 800A1ACC 01797025 */  or         $t6, $t3, $t9
/* A26D0 800A1AD0 330C000F */  andi       $t4, $t8, 0xf
/* A26D4 800A1AD4 01CC6825 */  or         $t5, $t6, $t4
/* A26D8 800A1AD8 ADED0004 */  sw         $t5, 4($t7)
/* A26DC 800A1ADC 8FAB01AC */  lw         $t3, 0x1ac($sp)
/* A26E0 800A1AE0 25790008 */  addiu      $t9, $t3, 8
/* A26E4 800A1AE4 AFB901AC */  sw         $t9, 0x1ac($sp)
/* A26E8 800A1AE8 AFAB008C */  sw         $t3, 0x8c($sp)
/* A26EC 800A1AEC 8FAE008C */  lw         $t6, 0x8c($sp)
/* A26F0 800A1AF0 3C18F200 */  lui        $t8, 0xf200
/* A26F4 800A1AF4 ADD80000 */  sw         $t8, ($t6)
/* A26F8 800A1AF8 8FAC01A8 */  lw         $t4, 0x1a8($sp)
/* A26FC 800A1AFC 8FB801A4 */  lw         $t8, 0x1a4($sp)
/* A2700 800A1B00 258DFFFF */  addiu      $t5, $t4, -1
/* A2704 800A1B04 000D7880 */  sll        $t7, $t5, 2
/* A2708 800A1B08 31EB0FFF */  andi       $t3, $t7, 0xfff
/* A270C 800A1B0C 000BCB00 */  sll        $t9, $t3, 0xc
/* A2710 800A1B10 270EFFFF */  addiu      $t6, $t8, -1
/* A2714 800A1B14 8FAB008C */  lw         $t3, 0x8c($sp)
/* A2718 800A1B18 000E6080 */  sll        $t4, $t6, 2
/* A271C 800A1B1C 318D0FFF */  andi       $t5, $t4, 0xfff
/* A2720 800A1B20 032D7825 */  or         $t7, $t9, $t5
/* A2724 800A1B24 AD6F0004 */  sw         $t7, 4($t3)
.L800A1B28:
/* A2728 800A1B28 10000179 */  b          .L800A2110
/* A272C 800A1B2C 00000000 */   nop
.L800A1B30:
/* A2730 800A1B30 94B80014 */  lhu        $t8, 0x14($a1)
/* A2734 800A1B34 330E0200 */  andi       $t6, $t8, 0x200
/* A2738 800A1B38 11C000A3 */  beqz       $t6, .L800A1DC8
/* A273C 800A1B3C 00000000 */   nop
/* A2740 800A1B40 8FAC01AC */  lw         $t4, 0x1ac($sp)
/* A2744 800A1B44 25990008 */  addiu      $t9, $t4, 8
/* A2748 800A1B48 AFB901AC */  sw         $t9, 0x1ac($sp)
/* A274C 800A1B4C AFAC0088 */  sw         $t4, 0x88($sp)
/* A2750 800A1B50 90AD0030 */  lbu        $t5, 0x30($a1)
/* A2754 800A1B54 3C01FD00 */  lui        $at, 0xfd00
/* A2758 800A1B58 8FAC0088 */  lw         $t4, 0x88($sp)
/* A275C 800A1B5C 31AF0007 */  andi       $t7, $t5, 7
/* A2760 800A1B60 000F5D40 */  sll        $t3, $t7, 0x15
/* A2764 800A1B64 0161C025 */  or         $t8, $t3, $at
/* A2768 800A1B68 3C010010 */  lui        $at, 0x10
/* A276C 800A1B6C 03017025 */  or         $t6, $t8, $at
/* A2770 800A1B70 AD8E0000 */  sw         $t6, ($t4)
/* A2774 800A1B74 8CD90008 */  lw         $t9, 8($a2)
/* A2778 800A1B78 8FAD0088 */  lw         $t5, 0x88($sp)
/* A277C 800A1B7C ADB90004 */  sw         $t9, 4($t5)
/* A2780 800A1B80 8FAF01AC */  lw         $t7, 0x1ac($sp)
/* A2784 800A1B84 25EB0008 */  addiu      $t3, $t7, 8
/* A2788 800A1B88 AFAB01AC */  sw         $t3, 0x1ac($sp)
/* A278C 800A1B8C AFAF0084 */  sw         $t7, 0x84($sp)
/* A2790 800A1B90 90B80030 */  lbu        $t8, 0x30($a1)
/* A2794 800A1B94 3C01F500 */  lui        $at, 0xf500
/* A2798 800A1B98 8FAF0084 */  lw         $t7, 0x84($sp)
/* A279C 800A1B9C 330E0007 */  andi       $t6, $t8, 7
/* A27A0 800A1BA0 000E6540 */  sll        $t4, $t6, 0x15
/* A27A4 800A1BA4 0181C825 */  or         $t9, $t4, $at
/* A27A8 800A1BA8 3C010010 */  lui        $at, 0x10
/* A27AC 800A1BAC 03216825 */  or         $t5, $t9, $at
/* A27B0 800A1BB0 ADED0000 */  sw         $t5, ($t7)
/* A27B4 800A1BB4 8FAB0188 */  lw         $t3, 0x188($sp)
/* A27B8 800A1BB8 8FB90180 */  lw         $t9, 0x180($sp)
/* A27BC 800A1BBC 3C010700 */  lui        $at, 0x700
/* A27C0 800A1BC0 31780003 */  andi       $t8, $t3, 3
/* A27C4 800A1BC4 00187480 */  sll        $t6, $t8, 0x12
/* A27C8 800A1BC8 8FB80178 */  lw         $t8, 0x178($sp)
/* A27CC 800A1BCC 01C16025 */  or         $t4, $t6, $at
/* A27D0 800A1BD0 332D000F */  andi       $t5, $t9, 0xf
/* A27D4 800A1BD4 000D7B80 */  sll        $t7, $t5, 0xe
/* A27D8 800A1BD8 018F5825 */  or         $t3, $t4, $t7
/* A27DC 800A1BDC 8FAC018C */  lw         $t4, 0x18c($sp)
/* A27E0 800A1BE0 330E000F */  andi       $t6, $t8, 0xf
/* A27E4 800A1BE4 000ECA80 */  sll        $t9, $t6, 0xa
/* A27E8 800A1BE8 01796825 */  or         $t5, $t3, $t9
/* A27EC 800A1BEC 8FAB0184 */  lw         $t3, 0x184($sp)
/* A27F0 800A1BF0 318F0003 */  andi       $t7, $t4, 3
/* A27F4 800A1BF4 000FC200 */  sll        $t8, $t7, 8
/* A27F8 800A1BF8 01B87025 */  or         $t6, $t5, $t8
/* A27FC 800A1BFC 8FAD017C */  lw         $t5, 0x17c($sp)
/* A2800 800A1C00 3179000F */  andi       $t9, $t3, 0xf
/* A2804 800A1C04 00196100 */  sll        $t4, $t9, 4
/* A2808 800A1C08 8FB90084 */  lw         $t9, 0x84($sp)
/* A280C 800A1C0C 01CC7825 */  or         $t7, $t6, $t4
/* A2810 800A1C10 31B8000F */  andi       $t8, $t5, 0xf
/* A2814 800A1C14 01F85825 */  or         $t3, $t7, $t8
/* A2818 800A1C18 AF2B0004 */  sw         $t3, 4($t9)
/* A281C 800A1C1C 8FAE01AC */  lw         $t6, 0x1ac($sp)
/* A2820 800A1C20 25CC0008 */  addiu      $t4, $t6, 8
/* A2824 800A1C24 AFAC01AC */  sw         $t4, 0x1ac($sp)
/* A2828 800A1C28 AFAE0080 */  sw         $t6, 0x80($sp)
/* A282C 800A1C2C 8FAF0080 */  lw         $t7, 0x80($sp)
/* A2830 800A1C30 3C0DE600 */  lui        $t5, 0xe600
/* A2834 800A1C34 ADED0000 */  sw         $t5, ($t7)
/* A2838 800A1C38 8FB80080 */  lw         $t8, 0x80($sp)
/* A283C 800A1C3C AF000004 */  sw         $zero, 4($t8)
/* A2840 800A1C40 8FAB01AC */  lw         $t3, 0x1ac($sp)
/* A2844 800A1C44 25790008 */  addiu      $t9, $t3, 8
/* A2848 800A1C48 AFB901AC */  sw         $t9, 0x1ac($sp)
/* A284C 800A1C4C AFAB007C */  sw         $t3, 0x7c($sp)
/* A2850 800A1C50 8FAC007C */  lw         $t4, 0x7c($sp)
/* A2854 800A1C54 3C0EF300 */  lui        $t6, 0xf300
/* A2858 800A1C58 AD8E0000 */  sw         $t6, ($t4)
/* A285C 800A1C5C 8FAD01A8 */  lw         $t5, 0x1a8($sp)
/* A2860 800A1C60 8FAF01A4 */  lw         $t7, 0x1a4($sp)
/* A2864 800A1C64 01AF0019 */  multu      $t5, $t7
/* A2868 800A1C68 0000C012 */  mflo       $t8
/* A286C 800A1C6C 270BFFFF */  addiu      $t3, $t8, -1
/* A2870 800A1C70 296107FF */  slti       $at, $t3, 0x7ff
/* A2874 800A1C74 10200003 */  beqz       $at, .L800A1C84
/* A2878 800A1C78 00000000 */   nop
/* A287C 800A1C7C 10000002 */  b          .L800A1C88
/* A2880 800A1C80 01604025 */   or        $t0, $t3, $zero
.L800A1C84:
/* A2884 800A1C84 240807FF */  addiu      $t0, $zero, 0x7ff
.L800A1C88:
/* A2888 800A1C88 8FAD007C */  lw         $t5, 0x7c($sp)
/* A288C 800A1C8C 31190FFF */  andi       $t9, $t0, 0xfff
/* A2890 800A1C90 00197300 */  sll        $t6, $t9, 0xc
/* A2894 800A1C94 3C010700 */  lui        $at, 0x700
/* A2898 800A1C98 01C16025 */  or         $t4, $t6, $at
/* A289C 800A1C9C ADAC0004 */  sw         $t4, 4($t5)
/* A28A0 800A1CA0 8FAF01AC */  lw         $t7, 0x1ac($sp)
/* A28A4 800A1CA4 25F80008 */  addiu      $t8, $t7, 8
/* A28A8 800A1CA8 AFB801AC */  sw         $t8, 0x1ac($sp)
/* A28AC 800A1CAC AFAF0078 */  sw         $t7, 0x78($sp)
/* A28B0 800A1CB0 8FB90078 */  lw         $t9, 0x78($sp)
/* A28B4 800A1CB4 3C0BE700 */  lui        $t3, 0xe700
/* A28B8 800A1CB8 AF2B0000 */  sw         $t3, ($t9)
/* A28BC 800A1CBC 8FAE0078 */  lw         $t6, 0x78($sp)
/* A28C0 800A1CC0 ADC00004 */  sw         $zero, 4($t6)
/* A28C4 800A1CC4 8FAC01AC */  lw         $t4, 0x1ac($sp)
/* A28C8 800A1CC8 258D0008 */  addiu      $t5, $t4, 8
/* A28CC 800A1CCC AFAD01AC */  sw         $t5, 0x1ac($sp)
/* A28D0 800A1CD0 AFAC0074 */  sw         $t4, 0x74($sp)
/* A28D4 800A1CD4 90AF0030 */  lbu        $t7, 0x30($a1)
/* A28D8 800A1CD8 8FAC01A8 */  lw         $t4, 0x1a8($sp)
/* A28DC 800A1CDC 3C01F500 */  lui        $at, 0xf500
/* A28E0 800A1CE0 31F80007 */  andi       $t8, $t7, 7
/* A28E4 800A1CE4 00185D40 */  sll        $t3, $t8, 0x15
/* A28E8 800A1CE8 0161C825 */  or         $t9, $t3, $at
/* A28EC 800A1CEC 000C6840 */  sll        $t5, $t4, 1
/* A28F0 800A1CF0 25AF0007 */  addiu      $t7, $t5, 7
/* A28F4 800A1CF4 000FC0C3 */  sra        $t8, $t7, 3
/* A28F8 800A1CF8 3C010010 */  lui        $at, 0x10
/* A28FC 800A1CFC 8FAD0074 */  lw         $t5, 0x74($sp)
/* A2900 800A1D00 03217025 */  or         $t6, $t9, $at
/* A2904 800A1D04 330B01FF */  andi       $t3, $t8, 0x1ff
/* A2908 800A1D08 000BCA40 */  sll        $t9, $t3, 9
/* A290C 800A1D0C 01D96025 */  or         $t4, $t6, $t9
/* A2910 800A1D10 ADAC0000 */  sw         $t4, ($t5)
/* A2914 800A1D14 8FAF0188 */  lw         $t7, 0x188($sp)
/* A2918 800A1D18 8FAE0180 */  lw         $t6, 0x180($sp)
/* A291C 800A1D1C 31F80003 */  andi       $t8, $t7, 3
/* A2920 800A1D20 8FAF0178 */  lw         $t7, 0x178($sp)
/* A2924 800A1D24 00185C80 */  sll        $t3, $t8, 0x12
/* A2928 800A1D28 31D9000F */  andi       $t9, $t6, 0xf
/* A292C 800A1D2C 00196380 */  sll        $t4, $t9, 0xe
/* A2930 800A1D30 016C6825 */  or         $t5, $t3, $t4
/* A2934 800A1D34 8FAB018C */  lw         $t3, 0x18c($sp)
/* A2938 800A1D38 31F8000F */  andi       $t8, $t7, 0xf
/* A293C 800A1D3C 00187280 */  sll        $t6, $t8, 0xa
/* A2940 800A1D40 01AEC825 */  or         $t9, $t5, $t6
/* A2944 800A1D44 8FAD0184 */  lw         $t5, 0x184($sp)
/* A2948 800A1D48 316C0003 */  andi       $t4, $t3, 3
/* A294C 800A1D4C 000C7A00 */  sll        $t7, $t4, 8
/* A2950 800A1D50 032FC025 */  or         $t8, $t9, $t7
/* A2954 800A1D54 8FB9017C */  lw         $t9, 0x17c($sp)
/* A2958 800A1D58 31AE000F */  andi       $t6, $t5, 0xf
/* A295C 800A1D5C 000E5900 */  sll        $t3, $t6, 4
/* A2960 800A1D60 8FAE0074 */  lw         $t6, 0x74($sp)
/* A2964 800A1D64 030B6025 */  or         $t4, $t8, $t3
/* A2968 800A1D68 332F000F */  andi       $t7, $t9, 0xf
/* A296C 800A1D6C 018F6825 */  or         $t5, $t4, $t7
/* A2970 800A1D70 ADCD0004 */  sw         $t5, 4($t6)
/* A2974 800A1D74 8FB801AC */  lw         $t8, 0x1ac($sp)
/* A2978 800A1D78 270B0008 */  addiu      $t3, $t8, 8
/* A297C 800A1D7C AFAB01AC */  sw         $t3, 0x1ac($sp)
/* A2980 800A1D80 AFB80070 */  sw         $t8, 0x70($sp)
/* A2984 800A1D84 8FAC0070 */  lw         $t4, 0x70($sp)
/* A2988 800A1D88 3C19F200 */  lui        $t9, 0xf200
/* A298C 800A1D8C AD990000 */  sw         $t9, ($t4)
/* A2990 800A1D90 8FAF01A8 */  lw         $t7, 0x1a8($sp)
/* A2994 800A1D94 8FB901A4 */  lw         $t9, 0x1a4($sp)
/* A2998 800A1D98 25EDFFFF */  addiu      $t5, $t7, -1
/* A299C 800A1D9C 000D7080 */  sll        $t6, $t5, 2
/* A29A0 800A1DA0 31D80FFF */  andi       $t8, $t6, 0xfff
/* A29A4 800A1DA4 00185B00 */  sll        $t3, $t8, 0xc
/* A29A8 800A1DA8 272CFFFF */  addiu      $t4, $t9, -1
/* A29AC 800A1DAC 8FB80070 */  lw         $t8, 0x70($sp)
/* A29B0 800A1DB0 000C7880 */  sll        $t7, $t4, 2
/* A29B4 800A1DB4 31ED0FFF */  andi       $t5, $t7, 0xfff
/* A29B8 800A1DB8 016D7025 */  or         $t6, $t3, $t5
/* A29BC 800A1DBC AF0E0004 */  sw         $t6, 4($t8)
/* A29C0 800A1DC0 100000D3 */  b          .L800A2110
/* A29C4 800A1DC4 00000000 */   nop
.L800A1DC8:
/* A29C8 800A1DC8 8FB901AC */  lw         $t9, 0x1ac($sp)
/* A29CC 800A1DCC 272C0008 */  addiu      $t4, $t9, 8
/* A29D0 800A1DD0 AFAC01AC */  sw         $t4, 0x1ac($sp)
/* A29D4 800A1DD4 AFB9006C */  sw         $t9, 0x6c($sp)
/* A29D8 800A1DD8 90AF0030 */  lbu        $t7, 0x30($a1)
/* A29DC 800A1DDC 3C01FD00 */  lui        $at, 0xfd00
/* A29E0 800A1DE0 8FB9006C */  lw         $t9, 0x6c($sp)
/* A29E4 800A1DE4 31EB0007 */  andi       $t3, $t7, 7
/* A29E8 800A1DE8 000B6D40 */  sll        $t5, $t3, 0x15
/* A29EC 800A1DEC 01A17025 */  or         $t6, $t5, $at
/* A29F0 800A1DF0 3C010010 */  lui        $at, 0x10
/* A29F4 800A1DF4 01C1C025 */  or         $t8, $t6, $at
/* A29F8 800A1DF8 AF380000 */  sw         $t8, ($t9)
/* A29FC 800A1DFC 8CCC0008 */  lw         $t4, 8($a2)
/* A2A00 800A1E00 8FAF006C */  lw         $t7, 0x6c($sp)
/* A2A04 800A1E04 ADEC0004 */  sw         $t4, 4($t7)
/* A2A08 800A1E08 8FAB01AC */  lw         $t3, 0x1ac($sp)
/* A2A0C 800A1E0C 256D0008 */  addiu      $t5, $t3, 8
/* A2A10 800A1E10 AFAD01AC */  sw         $t5, 0x1ac($sp)
/* A2A14 800A1E14 AFAB0068 */  sw         $t3, 0x68($sp)
/* A2A18 800A1E18 90AE0030 */  lbu        $t6, 0x30($a1)
/* A2A1C 800A1E1C 3C01F500 */  lui        $at, 0xf500
/* A2A20 800A1E20 8FAB0068 */  lw         $t3, 0x68($sp)
/* A2A24 800A1E24 31D80007 */  andi       $t8, $t6, 7
/* A2A28 800A1E28 0018CD40 */  sll        $t9, $t8, 0x15
/* A2A2C 800A1E2C 03216025 */  or         $t4, $t9, $at
/* A2A30 800A1E30 3C010010 */  lui        $at, 0x10
/* A2A34 800A1E34 01817825 */  or         $t7, $t4, $at
/* A2A38 800A1E38 AD6F0000 */  sw         $t7, ($t3)
/* A2A3C 800A1E3C 8FAD0188 */  lw         $t5, 0x188($sp)
/* A2A40 800A1E40 8FAC0180 */  lw         $t4, 0x180($sp)
/* A2A44 800A1E44 3C010700 */  lui        $at, 0x700
/* A2A48 800A1E48 31AE0003 */  andi       $t6, $t5, 3
/* A2A4C 800A1E4C 000EC480 */  sll        $t8, $t6, 0x12
/* A2A50 800A1E50 8FAE0178 */  lw         $t6, 0x178($sp)
/* A2A54 800A1E54 0301C825 */  or         $t9, $t8, $at
/* A2A58 800A1E58 318F000F */  andi       $t7, $t4, 0xf
/* A2A5C 800A1E5C 000F5B80 */  sll        $t3, $t7, 0xe
/* A2A60 800A1E60 032B6825 */  or         $t5, $t9, $t3
/* A2A64 800A1E64 8FB9018C */  lw         $t9, 0x18c($sp)
/* A2A68 800A1E68 31D8000F */  andi       $t8, $t6, 0xf
/* A2A6C 800A1E6C 00186280 */  sll        $t4, $t8, 0xa
/* A2A70 800A1E70 01AC7825 */  or         $t7, $t5, $t4
/* A2A74 800A1E74 8FAD0184 */  lw         $t5, 0x184($sp)
/* A2A78 800A1E78 332B0003 */  andi       $t3, $t9, 3
/* A2A7C 800A1E7C 000B7200 */  sll        $t6, $t3, 8
/* A2A80 800A1E80 01EEC025 */  or         $t8, $t7, $t6
/* A2A84 800A1E84 8FAF017C */  lw         $t7, 0x17c($sp)
/* A2A88 800A1E88 31AC000F */  andi       $t4, $t5, 0xf
/* A2A8C 800A1E8C 000CC900 */  sll        $t9, $t4, 4
/* A2A90 800A1E90 8FAC0068 */  lw         $t4, 0x68($sp)
/* A2A94 800A1E94 03195825 */  or         $t3, $t8, $t9
/* A2A98 800A1E98 31EE000F */  andi       $t6, $t7, 0xf
/* A2A9C 800A1E9C 016E6825 */  or         $t5, $t3, $t6
/* A2AA0 800A1EA0 AD8D0004 */  sw         $t5, 4($t4)
/* A2AA4 800A1EA4 8FB801AC */  lw         $t8, 0x1ac($sp)
/* A2AA8 800A1EA8 27190008 */  addiu      $t9, $t8, 8
/* A2AAC 800A1EAC AFB901AC */  sw         $t9, 0x1ac($sp)
/* A2AB0 800A1EB0 AFB80064 */  sw         $t8, 0x64($sp)
/* A2AB4 800A1EB4 8FAB0064 */  lw         $t3, 0x64($sp)
/* A2AB8 800A1EB8 3C0FE600 */  lui        $t7, 0xe600
/* A2ABC 800A1EBC AD6F0000 */  sw         $t7, ($t3)
/* A2AC0 800A1EC0 8FAE0064 */  lw         $t6, 0x64($sp)
/* A2AC4 800A1EC4 ADC00004 */  sw         $zero, 4($t6)
/* A2AC8 800A1EC8 8FAD01AC */  lw         $t5, 0x1ac($sp)
/* A2ACC 800A1ECC 25AC0008 */  addiu      $t4, $t5, 8
/* A2AD0 800A1ED0 AFAC01AC */  sw         $t4, 0x1ac($sp)
/* A2AD4 800A1ED4 AFAD0060 */  sw         $t5, 0x60($sp)
/* A2AD8 800A1ED8 8FB90060 */  lw         $t9, 0x60($sp)
/* A2ADC 800A1EDC 3C18F300 */  lui        $t8, 0xf300
/* A2AE0 800A1EE0 AF380000 */  sw         $t8, ($t9)
/* A2AE4 800A1EE4 8FAF01A8 */  lw         $t7, 0x1a8($sp)
/* A2AE8 800A1EE8 8FAB01A4 */  lw         $t3, 0x1a4($sp)
/* A2AEC 800A1EEC 01EB0019 */  multu      $t7, $t3
/* A2AF0 800A1EF0 00007012 */  mflo       $t6
/* A2AF4 800A1EF4 25CDFFFF */  addiu      $t5, $t6, -1
/* A2AF8 800A1EF8 29A107FF */  slti       $at, $t5, 0x7ff
/* A2AFC 800A1EFC 10200003 */  beqz       $at, .L800A1F0C
/* A2B00 800A1F00 00000000 */   nop
/* A2B04 800A1F04 10000002 */  b          .L800A1F10
/* A2B08 800A1F08 01A05025 */   or        $t2, $t5, $zero
.L800A1F0C:
/* A2B0C 800A1F0C 240A07FF */  addiu      $t2, $zero, 0x7ff
.L800A1F10:
/* A2B10 800A1F10 8FAC01A8 */  lw         $t4, 0x1a8($sp)
/* A2B14 800A1F14 000CC040 */  sll        $t8, $t4, 1
/* A2B18 800A1F18 07010003 */  bgez       $t8, .L800A1F28
/* A2B1C 800A1F1C 0018C8C3 */   sra       $t9, $t8, 3
/* A2B20 800A1F20 27010007 */  addiu      $at, $t8, 7
/* A2B24 800A1F24 0001C8C3 */  sra        $t9, $at, 3
.L800A1F28:
/* A2B28 800A1F28 1F200003 */  bgtz       $t9, .L800A1F38
/* A2B2C 800A1F2C 00000000 */   nop
/* A2B30 800A1F30 10000009 */  b          .L800A1F58
/* A2B34 800A1F34 24090001 */   addiu     $t1, $zero, 1
.L800A1F38:
/* A2B38 800A1F38 8FA901A8 */  lw         $t1, 0x1a8($sp)
/* A2B3C 800A1F3C 00097840 */  sll        $t7, $t1, 1
/* A2B40 800A1F40 01E04825 */  or         $t1, $t7, $zero
/* A2B44 800A1F44 05210003 */  bgez       $t1, .L800A1F54
/* A2B48 800A1F48 000958C3 */   sra       $t3, $t1, 3
/* A2B4C 800A1F4C 25210007 */  addiu      $at, $t1, 7
/* A2B50 800A1F50 000158C3 */  sra        $t3, $at, 3
.L800A1F54:
/* A2B54 800A1F54 01604825 */  or         $t1, $t3, $zero
.L800A1F58:
/* A2B58 800A1F58 8FAE01A8 */  lw         $t6, 0x1a8($sp)
/* A2B5C 800A1F5C 000E6840 */  sll        $t5, $t6, 1
/* A2B60 800A1F60 05A10003 */  bgez       $t5, .L800A1F70
/* A2B64 800A1F64 000D60C3 */   sra       $t4, $t5, 3
/* A2B68 800A1F68 25A10007 */  addiu      $at, $t5, 7
/* A2B6C 800A1F6C 000160C3 */  sra        $t4, $at, 3
.L800A1F70:
/* A2B70 800A1F70 1D800003 */  bgtz       $t4, .L800A1F80
/* A2B74 800A1F74 00000000 */   nop
/* A2B78 800A1F78 10000009 */  b          .L800A1FA0
/* A2B7C 800A1F7C 24080001 */   addiu     $t0, $zero, 1
.L800A1F80:
/* A2B80 800A1F80 8FA801A8 */  lw         $t0, 0x1a8($sp)
/* A2B84 800A1F84 0008C040 */  sll        $t8, $t0, 1
/* A2B88 800A1F88 03004025 */  or         $t0, $t8, $zero
/* A2B8C 800A1F8C 05010003 */  bgez       $t0, .L800A1F9C
/* A2B90 800A1F90 0008C8C3 */   sra       $t9, $t0, 3
/* A2B94 800A1F94 25010007 */  addiu      $at, $t0, 7
/* A2B98 800A1F98 0001C8C3 */  sra        $t9, $at, 3
.L800A1F9C:
/* A2B9C 800A1F9C 03204025 */  or         $t0, $t9, $zero
.L800A1FA0:
/* A2BA0 800A1FA0 252F07FF */  addiu      $t7, $t1, 0x7ff
/* A2BA4 800A1FA4 01E8001A */  div        $zero, $t7, $t0
/* A2BA8 800A1FA8 15000002 */  bnez       $t0, .L800A1FB4
/* A2BAC 800A1FAC 00000000 */   nop
/* A2BB0 800A1FB0 0007000D */  break      7
.L800A1FB4:
/* A2BB4 800A1FB4 2401FFFF */   addiu     $at, $zero, -1
/* A2BB8 800A1FB8 15010004 */  bne        $t0, $at, .L800A1FCC
/* A2BBC 800A1FBC 3C018000 */   lui       $at, 0x8000
/* A2BC0 800A1FC0 15E10002 */  bne        $t7, $at, .L800A1FCC
/* A2BC4 800A1FC4 00000000 */   nop
/* A2BC8 800A1FC8 0006000D */  break      6
.L800A1FCC:
/* A2BCC 800A1FCC 314D0FFF */   andi      $t5, $t2, 0xfff
/* A2BD0 800A1FD0 8FAF0060 */  lw         $t7, 0x60($sp)
/* A2BD4 800A1FD4 000D6300 */  sll        $t4, $t5, 0xc
/* A2BD8 800A1FD8 3C010700 */  lui        $at, 0x700
/* A2BDC 800A1FDC 00005812 */  mflo       $t3
/* A2BE0 800A1FE0 316E0FFF */  andi       $t6, $t3, 0xfff
/* A2BE4 800A1FE4 0181C025 */  or         $t8, $t4, $at
/* A2BE8 800A1FE8 01D8C825 */  or         $t9, $t6, $t8
/* A2BEC 800A1FEC ADF90004 */  sw         $t9, 4($t7)
/* A2BF0 800A1FF0 8FAB01AC */  lw         $t3, 0x1ac($sp)
/* A2BF4 800A1FF4 256D0008 */  addiu      $t5, $t3, 8
/* A2BF8 800A1FF8 AFAD01AC */  sw         $t5, 0x1ac($sp)
/* A2BFC 800A1FFC AFAB005C */  sw         $t3, 0x5c($sp)
/* A2C00 800A2000 8FAE005C */  lw         $t6, 0x5c($sp)
/* A2C04 800A2004 3C0CE700 */  lui        $t4, 0xe700
/* A2C08 800A2008 ADCC0000 */  sw         $t4, ($t6)
/* A2C0C 800A200C 8FB8005C */  lw         $t8, 0x5c($sp)
/* A2C10 800A2010 AF000004 */  sw         $zero, 4($t8)
/* A2C14 800A2014 8FB901AC */  lw         $t9, 0x1ac($sp)
/* A2C18 800A2018 272F0008 */  addiu      $t7, $t9, 8
/* A2C1C 800A201C AFAF01AC */  sw         $t7, 0x1ac($sp)
/* A2C20 800A2020 AFB90058 */  sw         $t9, 0x58($sp)
/* A2C24 800A2024 90AB0030 */  lbu        $t3, 0x30($a1)
/* A2C28 800A2028 8FB901A8 */  lw         $t9, 0x1a8($sp)
/* A2C2C 800A202C 3C01F500 */  lui        $at, 0xf500
/* A2C30 800A2030 316D0007 */  andi       $t5, $t3, 7
/* A2C34 800A2034 000D6540 */  sll        $t4, $t5, 0x15
/* A2C38 800A2038 01817025 */  or         $t6, $t4, $at
/* A2C3C 800A203C 00197840 */  sll        $t7, $t9, 1
/* A2C40 800A2040 25EB0007 */  addiu      $t3, $t7, 7
/* A2C44 800A2044 000B68C3 */  sra        $t5, $t3, 3
/* A2C48 800A2048 3C010010 */  lui        $at, 0x10
/* A2C4C 800A204C 8FAF0058 */  lw         $t7, 0x58($sp)
/* A2C50 800A2050 01C1C025 */  or         $t8, $t6, $at
/* A2C54 800A2054 31AC01FF */  andi       $t4, $t5, 0x1ff
/* A2C58 800A2058 000C7240 */  sll        $t6, $t4, 9
/* A2C5C 800A205C 030EC825 */  or         $t9, $t8, $t6
/* A2C60 800A2060 ADF90000 */  sw         $t9, ($t7)
/* A2C64 800A2064 8FAB0188 */  lw         $t3, 0x188($sp)
/* A2C68 800A2068 8FB80180 */  lw         $t8, 0x180($sp)
/* A2C6C 800A206C 316D0003 */  andi       $t5, $t3, 3
/* A2C70 800A2070 8FAB0178 */  lw         $t3, 0x178($sp)
/* A2C74 800A2074 000D6480 */  sll        $t4, $t5, 0x12
/* A2C78 800A2078 330E000F */  andi       $t6, $t8, 0xf
/* A2C7C 800A207C 000ECB80 */  sll        $t9, $t6, 0xe
/* A2C80 800A2080 01997825 */  or         $t7, $t4, $t9
/* A2C84 800A2084 8FAC018C */  lw         $t4, 0x18c($sp)
/* A2C88 800A2088 316D000F */  andi       $t5, $t3, 0xf
/* A2C8C 800A208C 000DC280 */  sll        $t8, $t5, 0xa
/* A2C90 800A2090 01F87025 */  or         $t6, $t7, $t8
/* A2C94 800A2094 8FAF0184 */  lw         $t7, 0x184($sp)
/* A2C98 800A2098 31990003 */  andi       $t9, $t4, 3
/* A2C9C 800A209C 00195A00 */  sll        $t3, $t9, 8
/* A2CA0 800A20A0 01CB6825 */  or         $t5, $t6, $t3
/* A2CA4 800A20A4 8FAE017C */  lw         $t6, 0x17c($sp)
/* A2CA8 800A20A8 31F8000F */  andi       $t8, $t7, 0xf
/* A2CAC 800A20AC 00186100 */  sll        $t4, $t8, 4
/* A2CB0 800A20B0 8FB80058 */  lw         $t8, 0x58($sp)
/* A2CB4 800A20B4 01ACC825 */  or         $t9, $t5, $t4
/* A2CB8 800A20B8 31CB000F */  andi       $t3, $t6, 0xf
/* A2CBC 800A20BC 032B7825 */  or         $t7, $t9, $t3
/* A2CC0 800A20C0 AF0F0004 */  sw         $t7, 4($t8)
/* A2CC4 800A20C4 8FAD01AC */  lw         $t5, 0x1ac($sp)
/* A2CC8 800A20C8 25AC0008 */  addiu      $t4, $t5, 8
/* A2CCC 800A20CC AFAC01AC */  sw         $t4, 0x1ac($sp)
/* A2CD0 800A20D0 AFAD0054 */  sw         $t5, 0x54($sp)
/* A2CD4 800A20D4 8FB90054 */  lw         $t9, 0x54($sp)
/* A2CD8 800A20D8 3C0EF200 */  lui        $t6, 0xf200
/* A2CDC 800A20DC AF2E0000 */  sw         $t6, ($t9)
/* A2CE0 800A20E0 8FAB01A8 */  lw         $t3, 0x1a8($sp)
/* A2CE4 800A20E4 8FAE01A4 */  lw         $t6, 0x1a4($sp)
/* A2CE8 800A20E8 256FFFFF */  addiu      $t7, $t3, -1
/* A2CEC 800A20EC 000FC080 */  sll        $t8, $t7, 2
/* A2CF0 800A20F0 330D0FFF */  andi       $t5, $t8, 0xfff
/* A2CF4 800A20F4 000D6300 */  sll        $t4, $t5, 0xc
/* A2CF8 800A20F8 25D9FFFF */  addiu      $t9, $t6, -1
/* A2CFC 800A20FC 8FAD0054 */  lw         $t5, 0x54($sp)
/* A2D00 800A2100 00195880 */  sll        $t3, $t9, 2
/* A2D04 800A2104 316F0FFF */  andi       $t7, $t3, 0xfff
/* A2D08 800A2108 018FC025 */  or         $t8, $t4, $t7
/* A2D0C 800A210C ADB80004 */  sw         $t8, 4($t5)
.L800A2110:
/* A2D10 800A2110 1000017B */  b          .L800A2700
/* A2D14 800A2114 00000000 */   nop
.L800A2118:
/* A2D18 800A2118 94AE0014 */  lhu        $t6, 0x14($a1)
/* A2D1C 800A211C 31D90200 */  andi       $t9, $t6, 0x200
/* A2D20 800A2120 132000A3 */  beqz       $t9, .L800A23B0
/* A2D24 800A2124 00000000 */   nop
/* A2D28 800A2128 8FAB01AC */  lw         $t3, 0x1ac($sp)
/* A2D2C 800A212C 256C0008 */  addiu      $t4, $t3, 8
/* A2D30 800A2130 AFAC01AC */  sw         $t4, 0x1ac($sp)
/* A2D34 800A2134 AFAB0050 */  sw         $t3, 0x50($sp)
/* A2D38 800A2138 90AF0030 */  lbu        $t7, 0x30($a1)
/* A2D3C 800A213C 3C01FD00 */  lui        $at, 0xfd00
/* A2D40 800A2140 8FAB0050 */  lw         $t3, 0x50($sp)
/* A2D44 800A2144 31F80007 */  andi       $t8, $t7, 7
/* A2D48 800A2148 00186D40 */  sll        $t5, $t8, 0x15
/* A2D4C 800A214C 01A17025 */  or         $t6, $t5, $at
/* A2D50 800A2150 3C010018 */  lui        $at, 0x18
/* A2D54 800A2154 01C1C825 */  or         $t9, $t6, $at
/* A2D58 800A2158 AD790000 */  sw         $t9, ($t3)
/* A2D5C 800A215C 8CCC0008 */  lw         $t4, 8($a2)
/* A2D60 800A2160 8FAF0050 */  lw         $t7, 0x50($sp)
/* A2D64 800A2164 ADEC0004 */  sw         $t4, 4($t7)
/* A2D68 800A2168 8FB801AC */  lw         $t8, 0x1ac($sp)
/* A2D6C 800A216C 270D0008 */  addiu      $t5, $t8, 8
/* A2D70 800A2170 AFAD01AC */  sw         $t5, 0x1ac($sp)
/* A2D74 800A2174 AFB8004C */  sw         $t8, 0x4c($sp)
/* A2D78 800A2178 90AE0030 */  lbu        $t6, 0x30($a1)
/* A2D7C 800A217C 3C01F500 */  lui        $at, 0xf500
/* A2D80 800A2180 8FB8004C */  lw         $t8, 0x4c($sp)
/* A2D84 800A2184 31D90007 */  andi       $t9, $t6, 7
/* A2D88 800A2188 00195D40 */  sll        $t3, $t9, 0x15
/* A2D8C 800A218C 01616025 */  or         $t4, $t3, $at
/* A2D90 800A2190 3C010018 */  lui        $at, 0x18
/* A2D94 800A2194 01817825 */  or         $t7, $t4, $at
/* A2D98 800A2198 AF0F0000 */  sw         $t7, ($t8)
/* A2D9C 800A219C 8FAD0188 */  lw         $t5, 0x188($sp)
/* A2DA0 800A21A0 8FAC0180 */  lw         $t4, 0x180($sp)
/* A2DA4 800A21A4 3C010700 */  lui        $at, 0x700
/* A2DA8 800A21A8 31AE0003 */  andi       $t6, $t5, 3
/* A2DAC 800A21AC 000ECC80 */  sll        $t9, $t6, 0x12
/* A2DB0 800A21B0 8FAE0178 */  lw         $t6, 0x178($sp)
/* A2DB4 800A21B4 03215825 */  or         $t3, $t9, $at
/* A2DB8 800A21B8 318F000F */  andi       $t7, $t4, 0xf
/* A2DBC 800A21BC 000FC380 */  sll        $t8, $t7, 0xe
/* A2DC0 800A21C0 01786825 */  or         $t5, $t3, $t8
/* A2DC4 800A21C4 8FAB018C */  lw         $t3, 0x18c($sp)
/* A2DC8 800A21C8 31D9000F */  andi       $t9, $t6, 0xf
/* A2DCC 800A21CC 00196280 */  sll        $t4, $t9, 0xa
/* A2DD0 800A21D0 01AC7825 */  or         $t7, $t5, $t4
/* A2DD4 800A21D4 8FAD0184 */  lw         $t5, 0x184($sp)
/* A2DD8 800A21D8 31780003 */  andi       $t8, $t3, 3
/* A2DDC 800A21DC 00187200 */  sll        $t6, $t8, 8
/* A2DE0 800A21E0 01EEC825 */  or         $t9, $t7, $t6
/* A2DE4 800A21E4 8FAF017C */  lw         $t7, 0x17c($sp)
/* A2DE8 800A21E8 31AC000F */  andi       $t4, $t5, 0xf
/* A2DEC 800A21EC 000C5900 */  sll        $t3, $t4, 4
/* A2DF0 800A21F0 8FAC004C */  lw         $t4, 0x4c($sp)
/* A2DF4 800A21F4 032BC025 */  or         $t8, $t9, $t3
/* A2DF8 800A21F8 31EE000F */  andi       $t6, $t7, 0xf
/* A2DFC 800A21FC 030E6825 */  or         $t5, $t8, $t6
/* A2E00 800A2200 AD8D0004 */  sw         $t5, 4($t4)
/* A2E04 800A2204 8FB901AC */  lw         $t9, 0x1ac($sp)
/* A2E08 800A2208 272B0008 */  addiu      $t3, $t9, 8
/* A2E0C 800A220C AFAB01AC */  sw         $t3, 0x1ac($sp)
/* A2E10 800A2210 AFB90048 */  sw         $t9, 0x48($sp)
/* A2E14 800A2214 8FB80048 */  lw         $t8, 0x48($sp)
/* A2E18 800A2218 3C0FE600 */  lui        $t7, 0xe600
/* A2E1C 800A221C AF0F0000 */  sw         $t7, ($t8)
/* A2E20 800A2220 8FAE0048 */  lw         $t6, 0x48($sp)
/* A2E24 800A2224 ADC00004 */  sw         $zero, 4($t6)
/* A2E28 800A2228 8FAD01AC */  lw         $t5, 0x1ac($sp)
/* A2E2C 800A222C 25AC0008 */  addiu      $t4, $t5, 8
/* A2E30 800A2230 AFAC01AC */  sw         $t4, 0x1ac($sp)
/* A2E34 800A2234 AFAD0044 */  sw         $t5, 0x44($sp)
/* A2E38 800A2238 8FAB0044 */  lw         $t3, 0x44($sp)
/* A2E3C 800A223C 3C19F300 */  lui        $t9, 0xf300
/* A2E40 800A2240 AD790000 */  sw         $t9, ($t3)
/* A2E44 800A2244 8FAF01A8 */  lw         $t7, 0x1a8($sp)
/* A2E48 800A2248 8FB801A4 */  lw         $t8, 0x1a4($sp)
/* A2E4C 800A224C 01F80019 */  multu      $t7, $t8
/* A2E50 800A2250 00007012 */  mflo       $t6
/* A2E54 800A2254 25CDFFFF */  addiu      $t5, $t6, -1
/* A2E58 800A2258 29A107FF */  slti       $at, $t5, 0x7ff
/* A2E5C 800A225C 10200003 */  beqz       $at, .L800A226C
/* A2E60 800A2260 00000000 */   nop
/* A2E64 800A2264 10000002 */  b          .L800A2270
/* A2E68 800A2268 01A04025 */   or        $t0, $t5, $zero
.L800A226C:
/* A2E6C 800A226C 240807FF */  addiu      $t0, $zero, 0x7ff
.L800A2270:
/* A2E70 800A2270 8FAF0044 */  lw         $t7, 0x44($sp)
/* A2E74 800A2274 310C0FFF */  andi       $t4, $t0, 0xfff
/* A2E78 800A2278 000CCB00 */  sll        $t9, $t4, 0xc
/* A2E7C 800A227C 3C010700 */  lui        $at, 0x700
/* A2E80 800A2280 03215825 */  or         $t3, $t9, $at
/* A2E84 800A2284 ADEB0004 */  sw         $t3, 4($t7)
/* A2E88 800A2288 8FB801AC */  lw         $t8, 0x1ac($sp)
/* A2E8C 800A228C 270E0008 */  addiu      $t6, $t8, 8
/* A2E90 800A2290 AFAE01AC */  sw         $t6, 0x1ac($sp)
/* A2E94 800A2294 AFB80040 */  sw         $t8, 0x40($sp)
/* A2E98 800A2298 8FAC0040 */  lw         $t4, 0x40($sp)
/* A2E9C 800A229C 3C0DE700 */  lui        $t5, 0xe700
/* A2EA0 800A22A0 AD8D0000 */  sw         $t5, ($t4)
/* A2EA4 800A22A4 8FB90040 */  lw         $t9, 0x40($sp)
/* A2EA8 800A22A8 AF200004 */  sw         $zero, 4($t9)
/* A2EAC 800A22AC 8FAB01AC */  lw         $t3, 0x1ac($sp)
/* A2EB0 800A22B0 256F0008 */  addiu      $t7, $t3, 8
/* A2EB4 800A22B4 AFAF01AC */  sw         $t7, 0x1ac($sp)
/* A2EB8 800A22B8 AFAB003C */  sw         $t3, 0x3c($sp)
/* A2EBC 800A22BC 90B80030 */  lbu        $t8, 0x30($a1)
/* A2EC0 800A22C0 8FAB01A8 */  lw         $t3, 0x1a8($sp)
/* A2EC4 800A22C4 3C01F500 */  lui        $at, 0xf500
/* A2EC8 800A22C8 330E0007 */  andi       $t6, $t8, 7
/* A2ECC 800A22CC 000E6D40 */  sll        $t5, $t6, 0x15
/* A2ED0 800A22D0 01A16025 */  or         $t4, $t5, $at
/* A2ED4 800A22D4 000B7840 */  sll        $t7, $t3, 1
/* A2ED8 800A22D8 25F80007 */  addiu      $t8, $t7, 7
/* A2EDC 800A22DC 001870C3 */  sra        $t6, $t8, 3
/* A2EE0 800A22E0 3C010018 */  lui        $at, 0x18
/* A2EE4 800A22E4 8FAF003C */  lw         $t7, 0x3c($sp)
/* A2EE8 800A22E8 0181C825 */  or         $t9, $t4, $at
/* A2EEC 800A22EC 31CD01FF */  andi       $t5, $t6, 0x1ff
/* A2EF0 800A22F0 000D6240 */  sll        $t4, $t5, 9
/* A2EF4 800A22F4 032C5825 */  or         $t3, $t9, $t4
/* A2EF8 800A22F8 ADEB0000 */  sw         $t3, ($t7)
/* A2EFC 800A22FC 8FB80188 */  lw         $t8, 0x188($sp)
/* A2F00 800A2300 8FB90180 */  lw         $t9, 0x180($sp)
/* A2F04 800A2304 330E0003 */  andi       $t6, $t8, 3
/* A2F08 800A2308 8FB80178 */  lw         $t8, 0x178($sp)
/* A2F0C 800A230C 000E6C80 */  sll        $t5, $t6, 0x12
/* A2F10 800A2310 332C000F */  andi       $t4, $t9, 0xf
/* A2F14 800A2314 000C5B80 */  sll        $t3, $t4, 0xe
/* A2F18 800A2318 01AB7825 */  or         $t7, $t5, $t3
/* A2F1C 800A231C 8FAD018C */  lw         $t5, 0x18c($sp)
/* A2F20 800A2320 330E000F */  andi       $t6, $t8, 0xf
/* A2F24 800A2324 000ECA80 */  sll        $t9, $t6, 0xa
/* A2F28 800A2328 01F96025 */  or         $t4, $t7, $t9
/* A2F2C 800A232C 8FAF0184 */  lw         $t7, 0x184($sp)
/* A2F30 800A2330 31AB0003 */  andi       $t3, $t5, 3
/* A2F34 800A2334 000BC200 */  sll        $t8, $t3, 8
/* A2F38 800A2338 01987025 */  or         $t6, $t4, $t8
/* A2F3C 800A233C 8FAC017C */  lw         $t4, 0x17c($sp)
/* A2F40 800A2340 31F9000F */  andi       $t9, $t7, 0xf
/* A2F44 800A2344 00196900 */  sll        $t5, $t9, 4
/* A2F48 800A2348 8FB9003C */  lw         $t9, 0x3c($sp)
/* A2F4C 800A234C 01CD5825 */  or         $t3, $t6, $t5
/* A2F50 800A2350 3198000F */  andi       $t8, $t4, 0xf
/* A2F54 800A2354 01787825 */  or         $t7, $t3, $t8
/* A2F58 800A2358 AF2F0004 */  sw         $t7, 4($t9)
/* A2F5C 800A235C 8FAE01AC */  lw         $t6, 0x1ac($sp)
/* A2F60 800A2360 25CD0008 */  addiu      $t5, $t6, 8
/* A2F64 800A2364 AFAD01AC */  sw         $t5, 0x1ac($sp)
/* A2F68 800A2368 AFAE0038 */  sw         $t6, 0x38($sp)
/* A2F6C 800A236C 8FAB0038 */  lw         $t3, 0x38($sp)
/* A2F70 800A2370 3C0CF200 */  lui        $t4, 0xf200
/* A2F74 800A2374 AD6C0000 */  sw         $t4, ($t3)
/* A2F78 800A2378 8FB801A8 */  lw         $t8, 0x1a8($sp)
/* A2F7C 800A237C 8FAC01A4 */  lw         $t4, 0x1a4($sp)
/* A2F80 800A2380 270FFFFF */  addiu      $t7, $t8, -1
/* A2F84 800A2384 000FC880 */  sll        $t9, $t7, 2
/* A2F88 800A2388 332E0FFF */  andi       $t6, $t9, 0xfff
/* A2F8C 800A238C 000E6B00 */  sll        $t5, $t6, 0xc
/* A2F90 800A2390 258BFFFF */  addiu      $t3, $t4, -1
/* A2F94 800A2394 8FAE0038 */  lw         $t6, 0x38($sp)
/* A2F98 800A2398 000BC080 */  sll        $t8, $t3, 2
/* A2F9C 800A239C 330F0FFF */  andi       $t7, $t8, 0xfff
/* A2FA0 800A23A0 01AFC825 */  or         $t9, $t5, $t7
/* A2FA4 800A23A4 ADD90004 */  sw         $t9, 4($t6)
/* A2FA8 800A23A8 100000D3 */  b          .L800A26F8
/* A2FAC 800A23AC 00000000 */   nop
.L800A23B0:
/* A2FB0 800A23B0 8FAC01AC */  lw         $t4, 0x1ac($sp)
/* A2FB4 800A23B4 258B0008 */  addiu      $t3, $t4, 8
/* A2FB8 800A23B8 AFAB01AC */  sw         $t3, 0x1ac($sp)
/* A2FBC 800A23BC AFAC0034 */  sw         $t4, 0x34($sp)
/* A2FC0 800A23C0 90B80030 */  lbu        $t8, 0x30($a1)
/* A2FC4 800A23C4 3C01FD00 */  lui        $at, 0xfd00
/* A2FC8 800A23C8 8FAC0034 */  lw         $t4, 0x34($sp)
/* A2FCC 800A23CC 330D0007 */  andi       $t5, $t8, 7
/* A2FD0 800A23D0 000D7D40 */  sll        $t7, $t5, 0x15
/* A2FD4 800A23D4 01E1C825 */  or         $t9, $t7, $at
/* A2FD8 800A23D8 3C010018 */  lui        $at, 0x18
/* A2FDC 800A23DC 03217025 */  or         $t6, $t9, $at
/* A2FE0 800A23E0 AD8E0000 */  sw         $t6, ($t4)
/* A2FE4 800A23E4 8CCB0008 */  lw         $t3, 8($a2)
/* A2FE8 800A23E8 8FB80034 */  lw         $t8, 0x34($sp)
/* A2FEC 800A23EC AF0B0004 */  sw         $t3, 4($t8)
/* A2FF0 800A23F0 8FAD01AC */  lw         $t5, 0x1ac($sp)
/* A2FF4 800A23F4 25AF0008 */  addiu      $t7, $t5, 8
/* A2FF8 800A23F8 AFAF01AC */  sw         $t7, 0x1ac($sp)
/* A2FFC 800A23FC AFAD0030 */  sw         $t5, 0x30($sp)
/* A3000 800A2400 90B90030 */  lbu        $t9, 0x30($a1)
/* A3004 800A2404 3C01F500 */  lui        $at, 0xf500
/* A3008 800A2408 8FAD0030 */  lw         $t5, 0x30($sp)
/* A300C 800A240C 332E0007 */  andi       $t6, $t9, 7
/* A3010 800A2410 000E6540 */  sll        $t4, $t6, 0x15
/* A3014 800A2414 01815825 */  or         $t3, $t4, $at
/* A3018 800A2418 3C010018 */  lui        $at, 0x18
/* A301C 800A241C 0161C025 */  or         $t8, $t3, $at
/* A3020 800A2420 ADB80000 */  sw         $t8, ($t5)
/* A3024 800A2424 8FAF0188 */  lw         $t7, 0x188($sp)
/* A3028 800A2428 8FAB0180 */  lw         $t3, 0x180($sp)
/* A302C 800A242C 3C010700 */  lui        $at, 0x700
/* A3030 800A2430 31F90003 */  andi       $t9, $t7, 3
/* A3034 800A2434 00197480 */  sll        $t6, $t9, 0x12
/* A3038 800A2438 8FB90178 */  lw         $t9, 0x178($sp)
/* A303C 800A243C 01C16025 */  or         $t4, $t6, $at
/* A3040 800A2440 3178000F */  andi       $t8, $t3, 0xf
/* A3044 800A2444 00186B80 */  sll        $t5, $t8, 0xe
/* A3048 800A2448 018D7825 */  or         $t7, $t4, $t5
/* A304C 800A244C 8FAC018C */  lw         $t4, 0x18c($sp)
/* A3050 800A2450 332E000F */  andi       $t6, $t9, 0xf
/* A3054 800A2454 000E5A80 */  sll        $t3, $t6, 0xa
/* A3058 800A2458 01EBC025 */  or         $t8, $t7, $t3
/* A305C 800A245C 8FAF0184 */  lw         $t7, 0x184($sp)
/* A3060 800A2460 318D0003 */  andi       $t5, $t4, 3
/* A3064 800A2464 000DCA00 */  sll        $t9, $t5, 8
/* A3068 800A2468 03197025 */  or         $t6, $t8, $t9
/* A306C 800A246C 8FB8017C */  lw         $t8, 0x17c($sp)
/* A3070 800A2470 31EB000F */  andi       $t3, $t7, 0xf
/* A3074 800A2474 000B6100 */  sll        $t4, $t3, 4
/* A3078 800A2478 8FAB0030 */  lw         $t3, 0x30($sp)
/* A307C 800A247C 01CC6825 */  or         $t5, $t6, $t4
/* A3080 800A2480 3319000F */  andi       $t9, $t8, 0xf
/* A3084 800A2484 01B97825 */  or         $t7, $t5, $t9
/* A3088 800A2488 AD6F0004 */  sw         $t7, 4($t3)
/* A308C 800A248C 8FAE01AC */  lw         $t6, 0x1ac($sp)
/* A3090 800A2490 25CC0008 */  addiu      $t4, $t6, 8
/* A3094 800A2494 AFAC01AC */  sw         $t4, 0x1ac($sp)
/* A3098 800A2498 AFAE002C */  sw         $t6, 0x2c($sp)
/* A309C 800A249C 8FAD002C */  lw         $t5, 0x2c($sp)
/* A30A0 800A24A0 3C18E600 */  lui        $t8, 0xe600
/* A30A4 800A24A4 ADB80000 */  sw         $t8, ($t5)
/* A30A8 800A24A8 8FB9002C */  lw         $t9, 0x2c($sp)
/* A30AC 800A24AC AF200004 */  sw         $zero, 4($t9)
/* A30B0 800A24B0 8FAF01AC */  lw         $t7, 0x1ac($sp)
/* A30B4 800A24B4 25EB0008 */  addiu      $t3, $t7, 8
/* A30B8 800A24B8 AFAB01AC */  sw         $t3, 0x1ac($sp)
/* A30BC 800A24BC AFAF0028 */  sw         $t7, 0x28($sp)
/* A30C0 800A24C0 8FAC0028 */  lw         $t4, 0x28($sp)
/* A30C4 800A24C4 3C0EF300 */  lui        $t6, 0xf300
/* A30C8 800A24C8 AD8E0000 */  sw         $t6, ($t4)
/* A30CC 800A24CC 8FB801A8 */  lw         $t8, 0x1a8($sp)
/* A30D0 800A24D0 8FAD01A4 */  lw         $t5, 0x1a4($sp)
/* A30D4 800A24D4 030D0019 */  multu      $t8, $t5
/* A30D8 800A24D8 0000C812 */  mflo       $t9
/* A30DC 800A24DC 272FFFFF */  addiu      $t7, $t9, -1
/* A30E0 800A24E0 29E107FF */  slti       $at, $t7, 0x7ff
/* A30E4 800A24E4 10200003 */  beqz       $at, .L800A24F4
/* A30E8 800A24E8 00000000 */   nop
/* A30EC 800A24EC 10000002 */  b          .L800A24F8
/* A30F0 800A24F0 01E05025 */   or        $t2, $t7, $zero
.L800A24F4:
/* A30F4 800A24F4 240A07FF */  addiu      $t2, $zero, 0x7ff
.L800A24F8:
/* A30F8 800A24F8 8FAB01A8 */  lw         $t3, 0x1a8($sp)
/* A30FC 800A24FC 000B7080 */  sll        $t6, $t3, 2
/* A3100 800A2500 05C10003 */  bgez       $t6, .L800A2510
/* A3104 800A2504 000E60C3 */   sra       $t4, $t6, 3
/* A3108 800A2508 25C10007 */  addiu      $at, $t6, 7
/* A310C 800A250C 000160C3 */  sra        $t4, $at, 3
.L800A2510:
/* A3110 800A2510 1D800003 */  bgtz       $t4, .L800A2520
/* A3114 800A2514 00000000 */   nop
/* A3118 800A2518 10000009 */  b          .L800A2540
/* A311C 800A251C 24090001 */   addiu     $t1, $zero, 1
.L800A2520:
/* A3120 800A2520 8FA901A8 */  lw         $t1, 0x1a8($sp)
/* A3124 800A2524 0009C080 */  sll        $t8, $t1, 2
/* A3128 800A2528 03004825 */  or         $t1, $t8, $zero
/* A312C 800A252C 05210003 */  bgez       $t1, .L800A253C
/* A3130 800A2530 000968C3 */   sra       $t5, $t1, 3
/* A3134 800A2534 25210007 */  addiu      $at, $t1, 7
/* A3138 800A2538 000168C3 */  sra        $t5, $at, 3
.L800A253C:
/* A313C 800A253C 01A04825 */  or         $t1, $t5, $zero
.L800A2540:
/* A3140 800A2540 8FB901A8 */  lw         $t9, 0x1a8($sp)
/* A3144 800A2544 00197880 */  sll        $t7, $t9, 2
/* A3148 800A2548 05E10003 */  bgez       $t7, .L800A2558
/* A314C 800A254C 000F58C3 */   sra       $t3, $t7, 3
/* A3150 800A2550 25E10007 */  addiu      $at, $t7, 7
/* A3154 800A2554 000158C3 */  sra        $t3, $at, 3
.L800A2558:
/* A3158 800A2558 1D600003 */  bgtz       $t3, .L800A2568
/* A315C 800A255C 00000000 */   nop
/* A3160 800A2560 10000009 */  b          .L800A2588
/* A3164 800A2564 24080001 */   addiu     $t0, $zero, 1
.L800A2568:
/* A3168 800A2568 8FA801A8 */  lw         $t0, 0x1a8($sp)
/* A316C 800A256C 00087080 */  sll        $t6, $t0, 2
/* A3170 800A2570 01C04025 */  or         $t0, $t6, $zero
/* A3174 800A2574 05010003 */  bgez       $t0, .L800A2584
/* A3178 800A2578 000860C3 */   sra       $t4, $t0, 3
/* A317C 800A257C 25010007 */  addiu      $at, $t0, 7
/* A3180 800A2580 000160C3 */  sra        $t4, $at, 3
.L800A2584:
/* A3184 800A2584 01804025 */  or         $t0, $t4, $zero
.L800A2588:
/* A3188 800A2588 253807FF */  addiu      $t8, $t1, 0x7ff
/* A318C 800A258C 0308001A */  div        $zero, $t8, $t0
/* A3190 800A2590 15000002 */  bnez       $t0, .L800A259C
/* A3194 800A2594 00000000 */   nop
/* A3198 800A2598 0007000D */  break      7
.L800A259C:
/* A319C 800A259C 2401FFFF */   addiu     $at, $zero, -1
/* A31A0 800A25A0 15010004 */  bne        $t0, $at, .L800A25B4
/* A31A4 800A25A4 3C018000 */   lui       $at, 0x8000
/* A31A8 800A25A8 17010002 */  bne        $t8, $at, .L800A25B4
/* A31AC 800A25AC 00000000 */   nop
/* A31B0 800A25B0 0006000D */  break      6
.L800A25B4:
/* A31B4 800A25B4 314F0FFF */   andi      $t7, $t2, 0xfff
/* A31B8 800A25B8 8FB80028 */  lw         $t8, 0x28($sp)
/* A31BC 800A25BC 000F5B00 */  sll        $t3, $t7, 0xc
/* A31C0 800A25C0 3C010700 */  lui        $at, 0x700
/* A31C4 800A25C4 00006812 */  mflo       $t5
/* A31C8 800A25C8 31B90FFF */  andi       $t9, $t5, 0xfff
/* A31CC 800A25CC 01617025 */  or         $t6, $t3, $at
/* A31D0 800A25D0 032E6025 */  or         $t4, $t9, $t6
/* A31D4 800A25D4 AF0C0004 */  sw         $t4, 4($t8)
/* A31D8 800A25D8 8FAD01AC */  lw         $t5, 0x1ac($sp)
/* A31DC 800A25DC 25AF0008 */  addiu      $t7, $t5, 8
/* A31E0 800A25E0 AFAF01AC */  sw         $t7, 0x1ac($sp)
/* A31E4 800A25E4 AFAD0024 */  sw         $t5, 0x24($sp)
/* A31E8 800A25E8 8FB90024 */  lw         $t9, 0x24($sp)
/* A31EC 800A25EC 3C0BE700 */  lui        $t3, 0xe700
/* A31F0 800A25F0 AF2B0000 */  sw         $t3, ($t9)
/* A31F4 800A25F4 8FAE0024 */  lw         $t6, 0x24($sp)
/* A31F8 800A25F8 ADC00004 */  sw         $zero, 4($t6)
/* A31FC 800A25FC 8FAC01AC */  lw         $t4, 0x1ac($sp)
/* A3200 800A2600 25980008 */  addiu      $t8, $t4, 8
/* A3204 800A2604 AFB801AC */  sw         $t8, 0x1ac($sp)
/* A3208 800A2608 AFAC0020 */  sw         $t4, 0x20($sp)
/* A320C 800A260C 90AD0030 */  lbu        $t5, 0x30($a1)
/* A3210 800A2610 8FAC01A8 */  lw         $t4, 0x1a8($sp)
/* A3214 800A2614 3C01F500 */  lui        $at, 0xf500
/* A3218 800A2618 31AF0007 */  andi       $t7, $t5, 7
/* A321C 800A261C 000F5D40 */  sll        $t3, $t7, 0x15
/* A3220 800A2620 0161C825 */  or         $t9, $t3, $at
/* A3224 800A2624 000CC040 */  sll        $t8, $t4, 1
/* A3228 800A2628 270D0007 */  addiu      $t5, $t8, 7
/* A322C 800A262C 000D78C3 */  sra        $t7, $t5, 3
/* A3230 800A2630 3C010018 */  lui        $at, 0x18
/* A3234 800A2634 8FB80020 */  lw         $t8, 0x20($sp)
/* A3238 800A2638 03217025 */  or         $t6, $t9, $at
/* A323C 800A263C 31EB01FF */  andi       $t3, $t7, 0x1ff
/* A3240 800A2640 000BCA40 */  sll        $t9, $t3, 9
/* A3244 800A2644 01D96025 */  or         $t4, $t6, $t9
/* A3248 800A2648 AF0C0000 */  sw         $t4, ($t8)
/* A324C 800A264C 8FAD0188 */  lw         $t5, 0x188($sp)
/* A3250 800A2650 8FAE0180 */  lw         $t6, 0x180($sp)
/* A3254 800A2654 31AF0003 */  andi       $t7, $t5, 3
/* A3258 800A2658 8FAD0178 */  lw         $t5, 0x178($sp)
/* A325C 800A265C 000F5C80 */  sll        $t3, $t7, 0x12
/* A3260 800A2660 31D9000F */  andi       $t9, $t6, 0xf
/* A3264 800A2664 00196380 */  sll        $t4, $t9, 0xe
/* A3268 800A2668 016CC025 */  or         $t8, $t3, $t4
/* A326C 800A266C 8FAB018C */  lw         $t3, 0x18c($sp)
/* A3270 800A2670 31AF000F */  andi       $t7, $t5, 0xf
/* A3274 800A2674 000F7280 */  sll        $t6, $t7, 0xa
/* A3278 800A2678 030EC825 */  or         $t9, $t8, $t6
/* A327C 800A267C 8FB80184 */  lw         $t8, 0x184($sp)
/* A3280 800A2680 316C0003 */  andi       $t4, $t3, 3
/* A3284 800A2684 000C6A00 */  sll        $t5, $t4, 8
/* A3288 800A2688 032D7825 */  or         $t7, $t9, $t5
/* A328C 800A268C 8FB9017C */  lw         $t9, 0x17c($sp)
/* A3290 800A2690 330E000F */  andi       $t6, $t8, 0xf
/* A3294 800A2694 000E5900 */  sll        $t3, $t6, 4
/* A3298 800A2698 8FAE0020 */  lw         $t6, 0x20($sp)
/* A329C 800A269C 01EB6025 */  or         $t4, $t7, $t3
/* A32A0 800A26A0 332D000F */  andi       $t5, $t9, 0xf
/* A32A4 800A26A4 018DC025 */  or         $t8, $t4, $t5
/* A32A8 800A26A8 ADD80004 */  sw         $t8, 4($t6)
/* A32AC 800A26AC 8FAF01AC */  lw         $t7, 0x1ac($sp)
/* A32B0 800A26B0 25EB0008 */  addiu      $t3, $t7, 8
/* A32B4 800A26B4 AFAB01AC */  sw         $t3, 0x1ac($sp)
/* A32B8 800A26B8 AFAF001C */  sw         $t7, 0x1c($sp)
/* A32BC 800A26BC 8FAC001C */  lw         $t4, 0x1c($sp)
/* A32C0 800A26C0 3C19F200 */  lui        $t9, 0xf200
/* A32C4 800A26C4 AD990000 */  sw         $t9, ($t4)
/* A32C8 800A26C8 8FAD01A8 */  lw         $t5, 0x1a8($sp)
/* A32CC 800A26CC 8FB901A4 */  lw         $t9, 0x1a4($sp)
/* A32D0 800A26D0 25B8FFFF */  addiu      $t8, $t5, -1
/* A32D4 800A26D4 00187080 */  sll        $t6, $t8, 2
/* A32D8 800A26D8 31CF0FFF */  andi       $t7, $t6, 0xfff
/* A32DC 800A26DC 000F5B00 */  sll        $t3, $t7, 0xc
/* A32E0 800A26E0 272CFFFF */  addiu      $t4, $t9, -1
/* A32E4 800A26E4 8FAF001C */  lw         $t7, 0x1c($sp)
/* A32E8 800A26E8 000C6880 */  sll        $t5, $t4, 2
/* A32EC 800A26EC 31B80FFF */  andi       $t8, $t5, 0xfff
/* A32F0 800A26F0 01787025 */  or         $t6, $t3, $t8
/* A32F4 800A26F4 ADEE0004 */  sw         $t6, 4($t7)
.L800A26F8:
/* A32F8 800A26F8 10000001 */  b          .L800A2700
/* A32FC 800A26FC 00000000 */   nop
.L800A2700:
/* A3300 800A2700 8CD90008 */  lw         $t9, 8($a2)
/* A3304 800A2704 3C01800F */  lui        $at, %hi(D_800EA540)
/* A3308 800A2708 AC39A540 */  sw         $t9, %lo(D_800EA540)($at)
.L800A270C:
/* A330C 800A270C 8FAD0190 */  lw         $t5, 0x190($sp)
/* A3310 800A2710 240C00E4 */  addiu      $t4, $zero, 0xe4
/* A3314 800A2714 A1AC0000 */  sb         $t4, ($t5)
/* A3318 800A2718 8FAB0190 */  lw         $t3, 0x190($sp)
/* A331C 800A271C 91780004 */  lbu        $t8, 4($t3)
/* A3320 800A2720 330EFFF8 */  andi       $t6, $t8, 0xfff8
/* A3324 800A2724 A16E0004 */  sb         $t6, 4($t3)
/* A3328 800A2728 8FAC0190 */  lw         $t4, 0x190($sp)
/* A332C 800A272C 8FAF01BC */  lw         $t7, 0x1bc($sp)
/* A3330 800A2730 8D8D0004 */  lw         $t5, 4($t4)
/* A3334 800A2734 31F90FFF */  andi       $t9, $t7, 0xfff
/* A3338 800A2738 000DC302 */  srl        $t8, $t5, 0xc
/* A333C 800A273C 03387026 */  xor        $t6, $t9, $t8
/* A3340 800A2740 000E5D00 */  sll        $t3, $t6, 0x14
/* A3344 800A2744 000B7A02 */  srl        $t7, $t3, 8
/* A3348 800A2748 01EDC826 */  xor        $t9, $t7, $t5
/* A334C 800A274C AD990004 */  sw         $t9, 4($t4)
/* A3350 800A2750 8FAB0190 */  lw         $t3, 0x190($sp)
/* A3354 800A2754 8FB801B4 */  lw         $t8, 0x1b4($sp)
/* A3358 800A2758 8D6F0000 */  lw         $t7, ($t3)
/* A335C 800A275C 330E0FFF */  andi       $t6, $t8, 0xfff
/* A3360 800A2760 000F6B02 */  srl        $t5, $t7, 0xc
/* A3364 800A2764 01CDC826 */  xor        $t9, $t6, $t5
/* A3368 800A2768 00196500 */  sll        $t4, $t9, 0x14
/* A336C 800A276C 000CC202 */  srl        $t8, $t4, 8
/* A3370 800A2770 030F7026 */  xor        $t6, $t8, $t7
/* A3374 800A2774 AD6E0000 */  sw         $t6, ($t3)
/* A3378 800A2778 8FB80190 */  lw         $t8, 0x190($sp)
/* A337C 800A277C 8FAD01B8 */  lw         $t5, 0x1b8($sp)
/* A3380 800A2780 970F0006 */  lhu        $t7, 6($t8)
/* A3384 800A2784 31B90FFF */  andi       $t9, $t5, 0xfff
/* A3388 800A2788 332C0FFF */  andi       $t4, $t9, 0xfff
/* A338C 800A278C 31EEF000 */  andi       $t6, $t7, 0xf000
/* A3390 800A2790 018E5825 */  or         $t3, $t4, $t6
/* A3394 800A2794 A70B0006 */  sh         $t3, 6($t8)
/* A3398 800A2798 8FAC0190 */  lw         $t4, 0x190($sp)
/* A339C 800A279C 8FAD01B0 */  lw         $t5, 0x1b0($sp)
/* A33A0 800A27A0 958E0002 */  lhu        $t6, 2($t4)
/* A33A4 800A27A4 31B90FFF */  andi       $t9, $t5, 0xfff
/* A33A8 800A27A8 332F0FFF */  andi       $t7, $t9, 0xfff
/* A33AC 800A27AC 31CBF000 */  andi       $t3, $t6, 0xf000
/* A33B0 800A27B0 01EBC025 */  or         $t8, $t7, $t3
/* A33B4 800A27B4 A5980002 */  sh         $t8, 2($t4)
/* A33B8 800A27B8 8FAD01C4 */  lw         $t5, 0x1c4($sp)
/* A33BC 800A27BC 8FB90190 */  lw         $t9, 0x190($sp)
/* A33C0 800A27C0 A72D0008 */  sh         $t5, 8($t9)
/* A33C4 800A27C4 8FAE01C0 */  lw         $t6, 0x1c0($sp)
/* A33C8 800A27C8 8FAF0190 */  lw         $t7, 0x190($sp)
/* A33CC 800A27CC A5EE000A */  sh         $t6, 0xa($t7)
/* A33D0 800A27D0 94AB0014 */  lhu        $t3, 0x14($a1)
/* A33D4 800A27D4 31780020 */  andi       $t8, $t3, 0x20
/* A33D8 800A27D8 1300000A */  beqz       $t8, .L800A2804
/* A33DC 800A27DC 00000000 */   nop
/* A33E0 800A27E0 90AC0030 */  lbu        $t4, 0x30($a1)
/* A33E4 800A27E4 24010001 */  addiu      $at, $zero, 1
/* A33E8 800A27E8 11810006 */  beq        $t4, $at, .L800A2804
/* A33EC 800A27EC 00000000 */   nop
/* A33F0 800A27F0 8FAD01EC */  lw         $t5, 0x1ec($sp)
/* A33F4 800A27F4 8FAE0190 */  lw         $t6, 0x190($sp)
/* A33F8 800A27F8 000DC880 */  sll        $t9, $t5, 2
/* A33FC 800A27FC 10000004 */  b          .L800A2810
/* A3400 800A2800 A5D9000C */   sh        $t9, 0xc($t6)
.L800A2804:
/* A3404 800A2804 8FAF01EC */  lw         $t7, 0x1ec($sp)
/* A3408 800A2808 8FAB0190 */  lw         $t3, 0x190($sp)
/* A340C 800A280C A56F000C */  sh         $t7, 0xc($t3)
.L800A2810:
/* A3410 800A2810 8FB801F0 */  lw         $t8, 0x1f0($sp)
/* A3414 800A2814 8FAC0190 */  lw         $t4, 0x190($sp)
/* A3418 800A2818 A598000E */  sh         $t8, 0xe($t4)
/* A341C 800A281C 8FAD01AC */  lw         $t5, 0x1ac($sp)
/* A3420 800A2820 25B90008 */  addiu      $t9, $t5, 8
/* A3424 800A2824 AFB901AC */  sw         $t9, 0x1ac($sp)
/* A3428 800A2828 AFAD0018 */  sw         $t5, 0x18($sp)
/* A342C 800A282C 8FAE0190 */  lw         $t6, 0x190($sp)
/* A3430 800A2830 3C01E400 */  lui        $at, 0xe400
/* A3434 800A2834 8DCF0000 */  lw         $t7, ($t6)
/* A3438 800A2838 000F5A00 */  sll        $t3, $t7, 8
/* A343C 800A283C 000BC502 */  srl        $t8, $t3, 0x14
/* A3440 800A2840 330C0FFF */  andi       $t4, $t8, 0xfff
/* A3444 800A2844 000C6B00 */  sll        $t5, $t4, 0xc
/* A3448 800A2848 8FAC0018 */  lw         $t4, 0x18($sp)
/* A344C 800A284C 31EE0FFF */  andi       $t6, $t7, 0xfff
/* A3450 800A2850 31CB0FFF */  andi       $t3, $t6, 0xfff
/* A3454 800A2854 01A1C825 */  or         $t9, $t5, $at
/* A3458 800A2858 032BC025 */  or         $t8, $t9, $t3
/* A345C 800A285C AD980000 */  sw         $t8, ($t4)
/* A3460 800A2860 8FAD0190 */  lw         $t5, 0x190($sp)
/* A3464 800A2864 91AF0004 */  lbu        $t7, 4($t5)
/* A3468 800A2868 8DB80004 */  lw         $t8, 4($t5)
/* A346C 800A286C 31EE0007 */  andi       $t6, $t7, 7
/* A3470 800A2870 31D90007 */  andi       $t9, $t6, 7
/* A3474 800A2874 00186200 */  sll        $t4, $t8, 8
/* A3478 800A2878 000C7D02 */  srl        $t7, $t4, 0x14
/* A347C 800A287C 31EE0FFF */  andi       $t6, $t7, 0xfff
/* A3480 800A2880 00195E00 */  sll        $t3, $t9, 0x18
/* A3484 800A2884 000ECB00 */  sll        $t9, $t6, 0xc
/* A3488 800A2888 01796825 */  or         $t5, $t3, $t9
/* A348C 800A288C 8FAB0018 */  lw         $t3, 0x18($sp)
/* A3490 800A2890 330C0FFF */  andi       $t4, $t8, 0xfff
/* A3494 800A2894 318F0FFF */  andi       $t7, $t4, 0xfff
/* A3498 800A2898 01AF7025 */  or         $t6, $t5, $t7
/* A349C 800A289C AD6E0004 */  sw         $t6, 4($t3)
/* A34A0 800A28A0 8FB901AC */  lw         $t9, 0x1ac($sp)
/* A34A4 800A28A4 27380008 */  addiu      $t8, $t9, 8
/* A34A8 800A28A8 AFB801AC */  sw         $t8, 0x1ac($sp)
/* A34AC 800A28AC AFB90014 */  sw         $t9, 0x14($sp)
/* A34B0 800A28B0 8FAD0014 */  lw         $t5, 0x14($sp)
/* A34B4 800A28B4 3C0CB400 */  lui        $t4, 0xb400
/* A34B8 800A28B8 ADAC0000 */  sw         $t4, ($t5)
/* A34BC 800A28BC 8FAF0190 */  lw         $t7, 0x190($sp)
/* A34C0 800A28C0 95EE0008 */  lhu        $t6, 8($t7)
/* A34C4 800A28C4 95F8000A */  lhu        $t8, 0xa($t7)
/* A34C8 800A28C8 31CBFFFF */  andi       $t3, $t6, 0xffff
/* A34CC 800A28CC 8FAE0014 */  lw         $t6, 0x14($sp)
/* A34D0 800A28D0 000BCC00 */  sll        $t9, $t3, 0x10
/* A34D4 800A28D4 330CFFFF */  andi       $t4, $t8, 0xffff
/* A34D8 800A28D8 032C6825 */  or         $t5, $t9, $t4
/* A34DC 800A28DC ADCD0004 */  sw         $t5, 4($t6)
/* A34E0 800A28E0 8FAB01AC */  lw         $t3, 0x1ac($sp)
/* A34E4 800A28E4 256F0008 */  addiu      $t7, $t3, 8
/* A34E8 800A28E8 AFAF01AC */  sw         $t7, 0x1ac($sp)
/* A34EC 800A28EC AFAB0010 */  sw         $t3, 0x10($sp)
/* A34F0 800A28F0 8FB90010 */  lw         $t9, 0x10($sp)
/* A34F4 800A28F4 3C18B300 */  lui        $t8, 0xb300
/* A34F8 800A28F8 AF380000 */  sw         $t8, ($t9)
/* A34FC 800A28FC 8FAC0190 */  lw         $t4, 0x190($sp)
/* A3500 800A2900 958D000C */  lhu        $t5, 0xc($t4)
/* A3504 800A2904 958F000E */  lhu        $t7, 0xe($t4)
/* A3508 800A2908 31AEFFFF */  andi       $t6, $t5, 0xffff
/* A350C 800A290C 8FAD0010 */  lw         $t5, 0x10($sp)
/* A3510 800A2910 000E5C00 */  sll        $t3, $t6, 0x10
/* A3514 800A2914 31F8FFFF */  andi       $t8, $t7, 0xffff
/* A3518 800A2918 0178C825 */  or         $t9, $t3, $t8
/* A351C 800A291C ADB90004 */  sw         $t9, 4($t5)
/* A3520 800A2920 8FAE01AC */  lw         $t6, 0x1ac($sp)
/* A3524 800A2924 25CC0008 */  addiu      $t4, $t6, 8
/* A3528 800A2928 AFAC01AC */  sw         $t4, 0x1ac($sp)
/* A352C 800A292C AFAE000C */  sw         $t6, 0xc($sp)
/* A3530 800A2930 8FAB000C */  lw         $t3, 0xc($sp)
/* A3534 800A2934 3C0FE700 */  lui        $t7, 0xe700
/* A3538 800A2938 AD6F0000 */  sw         $t7, ($t3)
/* A353C 800A293C 8FB8000C */  lw         $t8, 0xc($sp)
/* A3540 800A2940 AF000004 */  sw         $zero, 4($t8)
/* A3544 800A2944 8FB901AC */  lw         $t9, 0x1ac($sp)
/* A3548 800A2948 AC990000 */  sw         $t9, ($a0)
/* A354C 800A294C 10000001 */  b          .L800A2954
/* A3550 800A2950 00000000 */   nop
.L800A2954:
/* A3554 800A2954 03E00008 */  jr         $ra
/* A3558 800A2958 27BD01C8 */   addiu     $sp, $sp, 0x1c8
