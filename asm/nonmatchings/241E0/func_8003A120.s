glabel func_8003A120
/* 3AD20 8003A120 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 3AD24 8003A124 AFA40030 */  sw         $a0, 0x30($sp)
/* 3AD28 8003A128 AFBF001C */  sw         $ra, 0x1c($sp)
/* 3AD2C 8003A12C 97A40032 */  lhu        $a0, 0x32($sp)
/* 3AD30 8003A130 0C00E591 */  jal        func_80039644
/* 3AD34 8003A134 AFB00018 */   sw        $s0, 0x18($sp)
/* 3AD38 8003A138 10400018 */  beqz       $v0, .L8003A19C
/* 3AD3C 8003A13C 3C18800F */   lui       $t8, %hi(gActors)
/* 3AD40 8003A140 97AE0032 */  lhu        $t6, 0x32($sp)
/* 3AD44 8003A144 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 3AD48 8003A148 000E7880 */  sll        $t7, $t6, 2
/* 3AD4C 8003A14C 01EE7823 */  subu       $t7, $t7, $t6
/* 3AD50 8003A150 000F7880 */  sll        $t7, $t7, 2
/* 3AD54 8003A154 01EE7821 */  addu       $t7, $t7, $t6
/* 3AD58 8003A158 000F7880 */  sll        $t7, $t7, 2
/* 3AD5C 8003A15C 01EE7823 */  subu       $t7, $t7, $t6
/* 3AD60 8003A160 000F78C0 */  sll        $t7, $t7, 3
/* 3AD64 8003A164 01F8C821 */  addu       $t9, $t7, $t8
/* 3AD68 8003A168 8F220188 */  lw         $v0, 0x188($t9)
/* 3AD6C 8003A16C 00000000 */  nop
/* 3AD70 8003A170 1040000A */  beqz       $v0, .L8003A19C
/* 3AD74 8003A174 304AFFFF */   andi      $t2, $v0, 0xffff
/* 3AD78 8003A178 000A5880 */  sll        $t3, $t2, 2
/* 3AD7C 8003A17C 016A5823 */  subu       $t3, $t3, $t2
/* 3AD80 8003A180 000B5880 */  sll        $t3, $t3, 2
/* 3AD84 8003A184 016A5821 */  addu       $t3, $t3, $t2
/* 3AD88 8003A188 000B5880 */  sll        $t3, $t3, 2
/* 3AD8C 8003A18C 016A5823 */  subu       $t3, $t3, $t2
/* 3AD90 8003A190 000B58C0 */  sll        $t3, $t3, 3
/* 3AD94 8003A194 01786021 */  addu       $t4, $t3, $t8
/* 3AD98 8003A198 AD8E0158 */  sw         $t6, 0x158($t4)
.L8003A19C:
/* 3AD9C 8003A19C 97AD0032 */  lhu        $t5, 0x32($sp)
/* 3ADA0 8003A1A0 3C19800F */  lui        $t9, 0x800f
/* 3ADA4 8003A1A4 000D7880 */  sll        $t7, $t5, 2
/* 3ADA8 8003A1A8 01ED7823 */  subu       $t7, $t7, $t5
/* 3ADAC 8003A1AC 000F7880 */  sll        $t7, $t7, 2
/* 3ADB0 8003A1B0 01ED7821 */  addu       $t7, $t7, $t5
/* 3ADB4 8003A1B4 000F7880 */  sll        $t7, $t7, 2
/* 3ADB8 8003A1B8 01ED7823 */  subu       $t7, $t7, $t5
/* 3ADBC 8003A1BC 000F78C0 */  sll        $t7, $t7, 3
/* 3ADC0 8003A1C0 2739F510 */  addiu      $t9, $t9, -0xaf0
/* 3ADC4 8003A1C4 01F98021 */  addu       $s0, $t7, $t9
/* 3ADC8 8003A1C8 960200D0 */  lhu        $v0, 0xd0($s0)
/* 3ADCC 8003A1CC 97A40032 */  lhu        $a0, 0x32($sp)
/* 3ADD0 8003A1D0 10400008 */  beqz       $v0, .L8003A1F4
/* 3ADD4 8003A1D4 24010001 */   addiu     $at, $zero, 1
/* 3ADD8 8003A1D8 10410025 */  beq        $v0, $at, .L8003A270
/* 3ADDC 8003A1DC 24010002 */   addiu     $at, $zero, 2
/* 3ADE0 8003A1E0 1041005E */  beq        $v0, $at, .L8003A35C
/* 3ADE4 8003A1E4 00000000 */   nop
/* 3ADE8 8003A1E8 8E020150 */  lw         $v0, 0x150($s0)
/* 3ADEC 8003A1EC 10000196 */  b          .L8003A848
/* 3ADF0 8003A1F0 304E8000 */   andi      $t6, $v0, 0x8000
.L8003A1F4:
/* 3ADF4 8003A1F4 0C00E5C9 */  jal        func_80039724
/* 3ADF8 8003A1F8 00000000 */   nop
/* 3ADFC 8003A1FC 3C014200 */  lui        $at, 0x4200
/* 3AE00 8003A200 44810000 */  mtc1       $at, $f0
/* 3AE04 8003A204 960A00D0 */  lhu        $t2, 0xd0($s0)
/* 3AE08 8003A208 8E020150 */  lw         $v0, 0x150($s0)
/* 3AE0C 8003A20C 44802000 */  mtc1       $zero, $f4
/* 3AE10 8003A210 254B0001 */  addiu      $t3, $t2, 1
/* 3AE14 8003A214 304E00FF */  andi       $t6, $v0, 0xff
/* 3AE18 8003A218 A60B00D0 */  sh         $t3, 0xd0($s0)
/* 3AE1C 8003A21C AE0E0188 */  sw         $t6, 0x188($s0)
/* 3AE20 8003A220 3C0D800C */  lui        $t5, %hi(D_800BE558)
/* 3AE24 8003A224 E6000138 */  swc1       $f0, 0x138($s0)
/* 3AE28 8003A228 E600013C */  swc1       $f0, 0x13c($s0)
/* 3AE2C 8003A22C E6040148 */  swc1       $f4, 0x148($s0)
/* 3AE30 8003A230 85ADE558 */  lh         $t5, %lo(D_800BE558)($t5)
/* 3AE34 8003A234 860C0088 */  lh         $t4, 0x88($s0)
/* 3AE38 8003A238 3C19800C */  lui        $t9, %hi(D_800BE55C)
/* 3AE3C 8003A23C 018D1821 */  addu       $v1, $t4, $t5
/* 3AE40 8003A240 AE030170 */  sw         $v1, 0x170($s0)
/* 3AE44 8003A244 8739E55C */  lh         $t9, %lo(D_800BE55C)($t9)
/* 3AE48 8003A248 860F008C */  lh         $t7, 0x8c($s0)
/* 3AE4C 8003A24C 240B0040 */  addiu      $t3, $zero, 0x40
/* 3AE50 8003A250 240A0008 */  addiu      $t2, $zero, 8
/* 3AE54 8003A254 01F92021 */  addu       $a0, $t7, $t9
/* 3AE58 8003A258 AE040174 */  sw         $a0, 0x174($s0)
/* 3AE5C 8003A25C AE04017C */  sw         $a0, 0x17c($s0)
/* 3AE60 8003A260 AE030178 */  sw         $v1, 0x178($s0)
/* 3AE64 8003A264 A20A00DE */  sb         $t2, 0xde($s0)
/* 3AE68 8003A268 10000176 */  b          .L8003A844
/* 3AE6C 8003A26C A20B00DF */   sb        $t3, 0xdf($s0)
.L8003A270:
/* 3AE70 8003A270 8E180164 */  lw         $t8, 0x164($s0)
/* 3AE74 8003A274 3C013F80 */  lui        $at, 0x3f80
/* 3AE78 8003A278 270EFFFF */  addiu      $t6, $t8, -1
/* 3AE7C 8003A27C 1DC00012 */  bgtz       $t6, .L8003A2C8
/* 3AE80 8003A280 AE0E0164 */   sw        $t6, 0x164($s0)
/* 3AE84 8003A284 960D00D0 */  lhu        $t5, 0xd0($s0)
/* 3AE88 8003A288 96190094 */  lhu        $t9, 0x94($s0)
/* 3AE8C 8003A28C 97A40032 */  lhu        $a0, 0x32($sp)
/* 3AE90 8003A290 25AF0001 */  addiu      $t7, $t5, 1
/* 3AE94 8003A294 332AFFFE */  andi       $t2, $t9, 0xfffe
/* 3AE98 8003A298 A60F00D0 */  sh         $t7, 0xd0($s0)
/* 3AE9C 8003A29C A60A0094 */  sh         $t2, 0x94($s0)
/* 3AEA0 8003A2A0 AE000154 */  sw         $zero, 0x154($s0)
/* 3AEA4 8003A2A4 AE000158 */  sw         $zero, 0x158($s0)
/* 3AEA8 8003A2A8 AE00015C */  sw         $zero, 0x15c($s0)
/* 3AEAC 8003A2AC AE000160 */  sw         $zero, 0x160($s0)
/* 3AEB0 8003A2B0 AE000168 */  sw         $zero, 0x168($s0)
/* 3AEB4 8003A2B4 AE00016C */  sw         $zero, 0x16c($s0)
/* 3AEB8 8003A2B8 0C00ABAD */  jal        func_8002AEB4
/* 3AEBC 8003A2BC 00002825 */   or        $a1, $zero, $zero
/* 3AEC0 8003A2C0 10000027 */  b          .L8003A360
/* 3AEC4 8003A2C4 8E190098 */   lw        $t9, 0x98($s0)
.L8003A2C8:
/* 3AEC8 8003A2C8 960B0094 */  lhu        $t3, 0x94($s0)
/* 3AECC 8003A2CC 8E0E015C */  lw         $t6, 0x15c($s0)
/* 3AED0 8003A2D0 8E0C0168 */  lw         $t4, 0x168($s0)
/* 3AED4 8003A2D4 8E0F0160 */  lw         $t7, 0x160($s0)
/* 3AED8 8003A2D8 8E19016C */  lw         $t9, 0x16c($s0)
/* 3AEDC 8003A2DC 35780001 */  ori        $t8, $t3, 1
/* 3AEE0 8003A2E0 01CC6821 */  addu       $t5, $t6, $t4
/* 3AEE4 8003A2E4 8E0B0154 */  lw         $t3, 0x154($s0)
/* 3AEE8 8003A2E8 8E0C0158 */  lw         $t4, 0x158($s0)
/* 3AEEC 8003A2EC 01F95021 */  addu       $t2, $t7, $t9
/* 3AEF0 8003A2F0 C60C00B4 */  lwc1       $f12, 0xb4($s0)
/* 3AEF4 8003A2F4 44817000 */  mtc1       $at, $f14
/* 3AEF8 8003A2F8 3C063D8F */  lui        $a2, 0x3d8f
/* 3AEFC 8003A2FC 016D7021 */  addu       $t6, $t3, $t5
/* 3AF00 8003A300 018A7821 */  addu       $t7, $t4, $t2
/* 3AF04 8003A304 A6180094 */  sh         $t8, 0x94($s0)
/* 3AF08 8003A308 AE0D015C */  sw         $t5, 0x15c($s0)
/* 3AF0C 8003A30C AE0A0160 */  sw         $t2, 0x160($s0)
/* 3AF10 8003A310 AE0E0154 */  sw         $t6, 0x154($s0)
/* 3AF14 8003A314 AE0F0158 */  sw         $t7, 0x158($s0)
/* 3AF18 8003A318 0C00A618 */  jal        func_80029860
/* 3AF1C 8003A31C 34C65C29 */   ori       $a2, $a2, 0x5c29
/* 3AF20 8003A320 3C013F80 */  lui        $at, 0x3f80
/* 3AF24 8003A324 44817000 */  mtc1       $at, $f14
/* 3AF28 8003A328 C60C00B8 */  lwc1       $f12, 0xb8($s0)
/* 3AF2C 8003A32C 3C063D8F */  lui        $a2, 0x3d8f
/* 3AF30 8003A330 E60000B4 */  swc1       $f0, 0xb4($s0)
/* 3AF34 8003A334 0C00A618 */  jal        func_80029860
/* 3AF38 8003A338 34C65C29 */   ori       $a2, $a2, 0x5c29
/* 3AF3C 8003A33C 9204009C */  lbu        $a0, 0x9c($s0)
/* 3AF40 8003A340 E60000B8 */  swc1       $f0, 0xb8($s0)
/* 3AF44 8003A344 00002825 */  or         $a1, $zero, $zero
/* 3AF48 8003A348 0C00A607 */  jal        func_8002981C
/* 3AF4C 8003A34C 2406000A */   addiu     $a2, $zero, 0xa
/* 3AF50 8003A350 A202009C */  sb         $v0, 0x9c($s0)
/* 3AF54 8003A354 A202009D */  sb         $v0, 0x9d($s0)
/* 3AF58 8003A358 A202009E */  sb         $v0, 0x9e($s0)
.L8003A35C:
/* 3AF5C 8003A35C 8E190098 */  lw         $t9, 0x98($s0)
.L8003A360:
/* 3AF60 8003A360 00000000 */  nop
/* 3AF64 8003A364 332A0200 */  andi       $t2, $t9, 0x200
/* 3AF68 8003A368 11400134 */  beqz       $t2, .L8003A83C
/* 3AF6C 8003A36C 00000000 */   nop
/* 3AF70 8003A370 960B00D6 */  lhu        $t3, 0xd6($s0)
/* 3AF74 8003A374 00000000 */  nop
/* 3AF78 8003A378 15600130 */  bnez       $t3, .L8003A83C
/* 3AF7C 8003A37C 00000000 */   nop
/* 3AF80 8003A380 8E0E0150 */  lw         $t6, 0x150($s0)
/* 3AF84 8003A384 8E18010C */  lw         $t8, 0x10c($s0)
/* 3AF88 8003A388 000E6080 */  sll        $t4, $t6, 2
/* 3AF8C 8003A38C 0581000F */  bgez       $t4, .L8003A3CC
/* 3AF90 8003A390 AE180090 */   sw        $t8, 0x90($s0)
/* 3AF94 8003A394 3C0D800F */  lui        $t5, %hi(gActors+0x80)
/* 3AF98 8003A398 8DADF590 */  lw         $t5, %lo(gActors+0x80)($t5)
/* 3AF9C 8003A39C 00000000 */  nop
/* 3AFA0 8003A3A0 31AF0020 */  andi       $t7, $t5, 0x20
/* 3AFA4 8003A3A4 15E00015 */  bnez       $t7, .L8003A3FC
/* 3AFA8 8003A3A8 00000000 */   nop
/* 3AFAC 8003A3AC 0C000CD3 */  jal        SFX_Play_1
/* 3AFB0 8003A3B0 24040117 */   addiu     $a0, $zero, 0x117
/* 3AFB4 8003A3B4 8E190150 */  lw         $t9, 0x150($s0)
/* 3AFB8 8003A3B8 3C01DFFF */  lui        $at, 0xdfff
/* 3AFBC 8003A3BC 3421FFFF */  ori        $at, $at, 0xffff
/* 3AFC0 8003A3C0 03215024 */  and        $t2, $t9, $at
/* 3AFC4 8003A3C4 1000000D */  b          .L8003A3FC
/* 3AFC8 8003A3C8 AE0A0150 */   sw        $t2, 0x150($s0)
.L8003A3CC:
/* 3AFCC 8003A3CC 3C0B800F */  lui        $t3, %hi(gActors+0x80)
/* 3AFD0 8003A3D0 8D6BF590 */  lw         $t3, %lo(gActors+0x80)($t3)
/* 3AFD4 8003A3D4 00000000 */  nop
/* 3AFD8 8003A3D8 31780020 */  andi       $t8, $t3, 0x20
/* 3AFDC 8003A3DC 13000007 */  beqz       $t8, .L8003A3FC
/* 3AFE0 8003A3E0 00000000 */   nop
/* 3AFE4 8003A3E4 0C000CD3 */  jal        SFX_Play_1
/* 3AFE8 8003A3E8 24040117 */   addiu     $a0, $zero, 0x117
/* 3AFEC 8003A3EC 8E0E0150 */  lw         $t6, 0x150($s0)
/* 3AFF0 8003A3F0 3C012000 */  lui        $at, 0x2000
/* 3AFF4 8003A3F4 01C16025 */  or         $t4, $t6, $at
/* 3AFF8 8003A3F8 AE0C0150 */  sw         $t4, 0x150($s0)
.L8003A3FC:
/* 3AFFC 8003A3FC 960D00D0 */  lhu        $t5, 0xd0($s0)
/* 3B000 8003A400 24010002 */  addiu      $at, $zero, 2
/* 3B004 8003A404 15A10083 */  bne        $t5, $at, .L8003A614
/* 3B008 8003A408 3C0F8013 */   lui       $t7, %hi(D_801373F2)
/* 3B00C 8003A40C 81EF73F2 */  lb         $t7, %lo(D_801373F2)($t7)
/* 3B010 8003A410 00000000 */  nop
/* 3B014 8003A414 15E0007F */  bnez       $t7, .L8003A614
/* 3B018 8003A418 00000000 */   nop
/* 3B01C 8003A41C 8E190098 */  lw         $t9, 0x98($s0)
/* 3B020 8003A420 00000000 */  nop
/* 3B024 8003A424 00195380 */  sll        $t2, $t9, 0xe
/* 3B028 8003A428 0541007A */  bgez       $t2, .L8003A614
/* 3B02C 8003A42C 00000000 */   nop
/* 3B030 8003A430 8E0B0150 */  lw         $t3, 0x150($s0)
/* 3B034 8003A434 97A50032 */  lhu        $a1, 0x32($sp)
/* 3B038 8003A438 31788000 */  andi       $t8, $t3, 0x8000
/* 3B03C 8003A43C 17000003 */  bnez       $t8, .L8003A44C
/* 3B040 8003A440 00000000 */   nop
/* 3B044 8003A444 0C000DB2 */  jal        func_800036C8
/* 3B048 8003A448 24040115 */   addiu     $a0, $zero, 0x115
.L8003A44C:
/* 3B04C 8003A44C 0C0121BD */  jal        func_800486F4
/* 3B050 8003A450 00000000 */   nop
/* 3B054 8003A454 2401000C */  addiu      $at, $zero, 0xc
/* 3B058 8003A458 14410019 */  bne        $v0, $at, .L8003A4C0
/* 3B05C 8003A45C 3C0EFFF9 */   lui       $t6, 0xfff9
/* 3B060 8003A460 3C0C0001 */  lui        $t4, 1
/* 3B064 8003A464 35CEB334 */  ori        $t6, $t6, 0xb334
/* 3B068 8003A468 358C0199 */  ori        $t4, $t4, 0x199
/* 3B06C 8003A46C AE0E015C */  sw         $t6, 0x15c($s0)
/* 3B070 8003A470 AE0C0168 */  sw         $t4, 0x168($s0)
/* 3B074 8003A474 3C01800F */  lui        $at, %hi(D_800EBAEC)
/* 3B078 8003A478 C426BAEC */  lwc1       $f6, %lo(D_800EBAEC)($at)
/* 3B07C 8003A47C 3C01800F */  lui        $at, %hi(D_800EBAF0)
/* 3B080 8003A480 E60600B4 */  swc1       $f6, 0xb4($s0)
/* 3B084 8003A484 C428BAF0 */  lwc1       $f8, %lo(D_800EBAF0)($at)
/* 3B088 8003A488 97A40032 */  lhu        $a0, 0x32($sp)
/* 3B08C 8003A48C 0C00E60E */  jal        func_80039838
/* 3B090 8003A490 E60800B8 */   swc1      $f8, 0xb8($s0)
/* 3B094 8003A494 8E020150 */  lw         $v0, 0x150($s0)
/* 3B098 8003A498 3C01FDFF */  lui        $at, 0xfdff
/* 3B09C 8003A49C 304D2000 */  andi       $t5, $v0, 0x2000
/* 3B0A0 8003A4A0 11A0005C */  beqz       $t5, .L8003A614
/* 3B0A4 8003A4A4 3421FFFF */   ori       $at, $at, 0xffff
/* 3B0A8 8003A4A8 00417824 */  and        $t7, $v0, $at
/* 3B0AC 8003A4AC 97A40032 */  lhu        $a0, 0x32($sp)
/* 3B0B0 8003A4B0 0C00E625 */  jal        func_80039894
/* 3B0B4 8003A4B4 AE0F0150 */   sw        $t7, 0x150($s0)
/* 3B0B8 8003A4B8 10000057 */  b          .L8003A618
/* 3B0BC 8003A4BC 8E0E0150 */   lw        $t6, 0x150($s0)
.L8003A4C0:
/* 3B0C0 8003A4C0 0C0121BD */  jal        func_800486F4
/* 3B0C4 8003A4C4 00000000 */   nop
/* 3B0C8 8003A4C8 24010004 */  addiu      $at, $zero, 4
/* 3B0CC 8003A4CC 14410018 */  bne        $v0, $at, .L8003A530
/* 3B0D0 8003A4D0 3C190006 */   lui       $t9, 6
/* 3B0D4 8003A4D4 3C0AFFFE */  lui        $t2, 0xfffe
/* 3B0D8 8003A4D8 37394CCC */  ori        $t9, $t9, 0x4ccc
/* 3B0DC 8003A4DC 354AFE67 */  ori        $t2, $t2, 0xfe67
/* 3B0E0 8003A4E0 AE19015C */  sw         $t9, 0x15c($s0)
/* 3B0E4 8003A4E4 AE0A0168 */  sw         $t2, 0x168($s0)
/* 3B0E8 8003A4E8 3C01800F */  lui        $at, %hi(D_800EBAF4)
/* 3B0EC 8003A4EC C42ABAF4 */  lwc1       $f10, %lo(D_800EBAF4)($at)
/* 3B0F0 8003A4F0 3C01800F */  lui        $at, %hi(D_800EBAF8)
/* 3B0F4 8003A4F4 E60A00B4 */  swc1       $f10, 0xb4($s0)
/* 3B0F8 8003A4F8 C430BAF8 */  lwc1       $f16, %lo(D_800EBAF8)($at)
/* 3B0FC 8003A4FC 97A40032 */  lhu        $a0, 0x32($sp)
/* 3B100 8003A500 0C00E60E */  jal        func_80039838
/* 3B104 8003A504 E61000B8 */   swc1      $f16, 0xb8($s0)
/* 3B108 8003A508 8E020150 */  lw         $v0, 0x150($s0)
/* 3B10C 8003A50C 3C010200 */  lui        $at, 0x200
/* 3B110 8003A510 304B2000 */  andi       $t3, $v0, 0x2000
/* 3B114 8003A514 1160003F */  beqz       $t3, .L8003A614
/* 3B118 8003A518 0041C025 */   or        $t8, $v0, $at
/* 3B11C 8003A51C 97A40032 */  lhu        $a0, 0x32($sp)
/* 3B120 8003A520 0C00E625 */  jal        func_80039894
/* 3B124 8003A524 AE180150 */   sw        $t8, 0x150($s0)
/* 3B128 8003A528 1000003B */  b          .L8003A618
/* 3B12C 8003A52C 8E0E0150 */   lw        $t6, 0x150($s0)
.L8003A530:
/* 3B130 8003A530 0C0121BD */  jal        func_800486F4
/* 3B134 8003A534 00000000 */   nop
/* 3B138 8003A538 24010008 */  addiu      $at, $zero, 8
/* 3B13C 8003A53C 1441001C */  bne        $v0, $at, .L8003A5B0
/* 3B140 8003A540 3C0EFFF9 */   lui       $t6, 0xfff9
/* 3B144 8003A544 3C0C0001 */  lui        $t4, 1
/* 3B148 8003A548 35CEB334 */  ori        $t6, $t6, 0xb334
/* 3B14C 8003A54C 358C0199 */  ori        $t4, $t4, 0x199
/* 3B150 8003A550 AE0E0160 */  sw         $t6, 0x160($s0)
/* 3B154 8003A554 AE0C016C */  sw         $t4, 0x16c($s0)
/* 3B158 8003A558 3C01800F */  lui        $at, %hi(D_800EBAFC)
/* 3B15C 8003A55C C432BAFC */  lwc1       $f18, %lo(D_800EBAFC)($at)
/* 3B160 8003A560 3C01800F */  lui        $at, %hi(D_800EBB00)
/* 3B164 8003A564 E61200B4 */  swc1       $f18, 0xb4($s0)
/* 3B168 8003A568 C424BB00 */  lwc1       $f4, %lo(D_800EBB00)($at)
/* 3B16C 8003A56C 97A40032 */  lhu        $a0, 0x32($sp)
/* 3B170 8003A570 0C00E60E */  jal        func_80039838
/* 3B174 8003A574 E60400B8 */   swc1      $f4, 0xb8($s0)
/* 3B178 8003A578 8E020150 */  lw         $v0, 0x150($s0)
/* 3B17C 8003A57C 3C01FBFF */  lui        $at, 0xfbff
/* 3B180 8003A580 304D4000 */  andi       $t5, $v0, 0x4000
/* 3B184 8003A584 11A00023 */  beqz       $t5, .L8003A614
/* 3B188 8003A588 3421FFFF */   ori       $at, $at, 0xffff
/* 3B18C 8003A58C 00417824 */  and        $t7, $v0, $at
/* 3B190 8003A590 97A40032 */  lhu        $a0, 0x32($sp)
/* 3B194 8003A594 0C00E625 */  jal        func_80039894
/* 3B198 8003A598 AE0F0150 */   sw        $t7, 0x150($s0)
/* 3B19C 8003A59C 97A40032 */  lhu        $a0, 0x32($sp)
/* 3B1A0 8003A5A0 0C00E79F */  jal        func_80039E7C
/* 3B1A4 8003A5A4 00000000 */   nop
/* 3B1A8 8003A5A8 1000001B */  b          .L8003A618
/* 3B1AC 8003A5AC 8E0E0150 */   lw        $t6, 0x150($s0)
.L8003A5B0:
/* 3B1B0 8003A5B0 0C0121BD */  jal        func_800486F4
/* 3B1B4 8003A5B4 00000000 */   nop
/* 3B1B8 8003A5B8 14400016 */  bnez       $v0, .L8003A614
/* 3B1BC 8003A5BC 3C190006 */   lui       $t9, 6
/* 3B1C0 8003A5C0 3C0AFFFE */  lui        $t2, 0xfffe
/* 3B1C4 8003A5C4 37394CCC */  ori        $t9, $t9, 0x4ccc
/* 3B1C8 8003A5C8 354AFE67 */  ori        $t2, $t2, 0xfe67
/* 3B1CC 8003A5CC AE190160 */  sw         $t9, 0x160($s0)
/* 3B1D0 8003A5D0 AE0A016C */  sw         $t2, 0x16c($s0)
/* 3B1D4 8003A5D4 3C01800F */  lui        $at, %hi(D_800EBB04)
/* 3B1D8 8003A5D8 C426BB04 */  lwc1       $f6, %lo(D_800EBB04)($at)
/* 3B1DC 8003A5DC 3C01800F */  lui        $at, %hi(D_800EBB08)
/* 3B1E0 8003A5E0 E60600B4 */  swc1       $f6, 0xb4($s0)
/* 3B1E4 8003A5E4 C428BB08 */  lwc1       $f8, %lo(D_800EBB08)($at)
/* 3B1E8 8003A5E8 97A40032 */  lhu        $a0, 0x32($sp)
/* 3B1EC 8003A5EC 0C00E60E */  jal        func_80039838
/* 3B1F0 8003A5F0 E60800B8 */   swc1      $f8, 0xb8($s0)
/* 3B1F4 8003A5F4 8E020150 */  lw         $v0, 0x150($s0)
/* 3B1F8 8003A5F8 3C010400 */  lui        $at, 0x400
/* 3B1FC 8003A5FC 304B4000 */  andi       $t3, $v0, 0x4000
/* 3B200 8003A600 11600004 */  beqz       $t3, .L8003A614
/* 3B204 8003A604 0041C025 */   or        $t8, $v0, $at
/* 3B208 8003A608 97A40032 */  lhu        $a0, 0x32($sp)
/* 3B20C 8003A60C 0C00E625 */  jal        func_80039894
/* 3B210 8003A610 AE180150 */   sw        $t8, 0x150($s0)
.L8003A614:
/* 3B214 8003A614 8E0E0150 */  lw         $t6, 0x150($s0)
.L8003A618:
/* 3B218 8003A618 3C0D800C */  lui        $t5, %hi(gButton_DLeft)
/* 3B21C 8003A61C 31CC1000 */  andi       $t4, $t6, 0x1000
/* 3B220 8003A620 11800086 */  beqz       $t4, .L8003A83C
/* 3B224 8003A624 3C0F800C */   lui       $t7, %hi(gButton_DRight)
/* 3B228 8003A628 95ADE50C */  lhu        $t5, %lo(gButton_DLeft)($t5)
/* 3B22C 8003A62C 95EFE510 */  lhu        $t7, %lo(gButton_DRight)($t7)
/* 3B230 8003A630 3C0A800C */  lui        $t2, %hi(gButton_DUp)
/* 3B234 8003A634 954AE504 */  lhu        $t2, %lo(gButton_DUp)($t2)
/* 3B238 8003A638 3C18800C */  lui        $t8, %hi(gButton_DDown)
/* 3B23C 8003A63C 9718E508 */  lhu        $t8, %lo(gButton_DDown)($t8)
/* 3B240 8003A640 3C0C800C */  lui        $t4, %hi(gButtonHold)
/* 3B244 8003A644 01AFC821 */  addu       $t9, $t5, $t7
/* 3B248 8003A648 958CE4F8 */  lhu        $t4, %lo(gButtonHold)($t4)
/* 3B24C 8003A64C 032A5821 */  addu       $t3, $t9, $t2
/* 3B250 8003A650 01787021 */  addu       $t6, $t3, $t8
/* 3B254 8003A654 24010100 */  addiu      $at, $zero, 0x100
/* 3B258 8003A658 018E1824 */  and        $v1, $t4, $t6
/* 3B25C 8003A65C 10610037 */  beq        $v1, $at, .L8003A73C
/* 3B260 8003A660 00601025 */   or        $v0, $v1, $zero
/* 3B264 8003A664 24010200 */  addiu      $at, $zero, 0x200
/* 3B268 8003A668 1041002C */  beq        $v0, $at, .L8003A71C
/* 3B26C 8003A66C 2408FFE8 */   addiu     $t0, $zero, -0x18
/* 3B270 8003A670 24010400 */  addiu      $at, $zero, 0x400
/* 3B274 8003A674 1041001E */  beq        $v0, $at, .L8003A6F0
/* 3B278 8003A678 3C0B800F */   lui       $t3, 0x800f
/* 3B27C 8003A67C 24010500 */  addiu      $at, $zero, 0x500
/* 3B280 8003A680 10410033 */  beq        $v0, $at, .L8003A750
/* 3B284 8003A684 240FFFF0 */   addiu     $t7, $zero, -0x10
/* 3B288 8003A688 24010600 */  addiu      $at, $zero, 0x600
/* 3B28C 8003A68C 10410027 */  beq        $v0, $at, .L8003A72C
/* 3B290 8003A690 240EFFF0 */   addiu     $t6, $zero, -0x10
/* 3B294 8003A694 24010800 */  addiu      $at, $zero, 0x800
/* 3B298 8003A698 1041000A */  beq        $v0, $at, .L8003A6C4
/* 3B29C 8003A69C 3C0F800F */   lui       $t7, 0x800f
/* 3B2A0 8003A6A0 24010900 */  addiu      $at, $zero, 0x900
/* 3B2A4 8003A6A4 10410025 */  beq        $v0, $at, .L8003A73C
/* 3B2A8 8003A6A8 24010A00 */   addiu     $at, $zero, 0xa00
/* 3B2AC 8003A6AC 1041001C */  beq        $v0, $at, .L8003A720
/* 3B2B0 8003A6B0 240C0010 */   addiu     $t4, $zero, 0x10
/* 3B2B4 8003A6B4 8FA90020 */  lw         $t1, 0x20($sp)
/* 3B2B8 8003A6B8 8FA80028 */  lw         $t0, 0x28($sp)
/* 3B2BC 8003A6BC 10000027 */  b          .L8003A75C
/* 3B2C0 8003A6C0 00000000 */   nop
.L8003A6C4:
/* 3B2C4 8003A6C4 8DEFF590 */  lw         $t7, -0xa70($t7)
/* 3B2C8 8003A6C8 240D0010 */  addiu      $t5, $zero, 0x10
/* 3B2CC 8003A6CC 31F90020 */  andi       $t9, $t7, 0x20
/* 3B2D0 8003A6D0 13200004 */  beqz       $t9, .L8003A6E4
/* 3B2D4 8003A6D4 AFAD0024 */   sw        $t5, 0x24($sp)
/* 3B2D8 8003A6D8 24080018 */  addiu      $t0, $zero, 0x18
/* 3B2DC 8003A6DC 1000001F */  b          .L8003A75C
/* 3B2E0 8003A6E0 3C090080 */   lui       $t1, 0x80
.L8003A6E4:
/* 3B2E4 8003A6E4 2408FFE8 */  addiu      $t0, $zero, -0x18
/* 3B2E8 8003A6E8 1000001C */  b          .L8003A75C
/* 3B2EC 8003A6EC 3C090180 */   lui       $t1, 0x180
.L8003A6F0:
/* 3B2F0 8003A6F0 8D6BF590 */  lw         $t3, -0xa70($t3)
/* 3B2F4 8003A6F4 240AFFF0 */  addiu      $t2, $zero, -0x10
/* 3B2F8 8003A6F8 31780020 */  andi       $t8, $t3, 0x20
/* 3B2FC 8003A6FC 13000004 */  beqz       $t8, .L8003A710
/* 3B300 8003A700 AFAA0024 */   sw        $t2, 0x24($sp)
/* 3B304 8003A704 24080018 */  addiu      $t0, $zero, 0x18
/* 3B308 8003A708 10000014 */  b          .L8003A75C
/* 3B30C 8003A70C 3C090380 */   lui       $t1, 0x380
.L8003A710:
/* 3B310 8003A710 2408FFE8 */  addiu      $t0, $zero, -0x18
/* 3B314 8003A714 10000011 */  b          .L8003A75C
/* 3B318 8003A718 3C090280 */   lui       $t1, 0x280
.L8003A71C:
/* 3B31C 8003A71C 240C0010 */  addiu      $t4, $zero, 0x10
.L8003A720:
/* 3B320 8003A720 AFAC0024 */  sw         $t4, 0x24($sp)
/* 3B324 8003A724 1000000D */  b          .L8003A75C
/* 3B328 8003A728 3C090180 */   lui       $t1, 0x180
.L8003A72C:
/* 3B32C 8003A72C 2408FFE8 */  addiu      $t0, $zero, -0x18
/* 3B330 8003A730 AFAE0024 */  sw         $t6, 0x24($sp)
/* 3B334 8003A734 10000009 */  b          .L8003A75C
/* 3B338 8003A738 3C090280 */   lui       $t1, 0x280
.L8003A73C:
/* 3B33C 8003A73C 240D0010 */  addiu      $t5, $zero, 0x10
/* 3B340 8003A740 24080018 */  addiu      $t0, $zero, 0x18
/* 3B344 8003A744 AFAD0024 */  sw         $t5, 0x24($sp)
/* 3B348 8003A748 10000004 */  b          .L8003A75C
/* 3B34C 8003A74C 3C090080 */   lui       $t1, 0x80
.L8003A750:
/* 3B350 8003A750 24080018 */  addiu      $t0, $zero, 0x18
/* 3B354 8003A754 AFAF0024 */  sw         $t7, 0x24($sp)
/* 3B358 8003A758 3C090380 */  lui        $t1, 0x380
.L8003A75C:
/* 3B35C 8003A75C 3C19800C */  lui        $t9, %hi(D_800BE4E0)
/* 3B360 8003A760 9739E4E0 */  lhu        $t9, %lo(D_800BE4E0)($t9)
/* 3B364 8003A764 00000000 */  nop
/* 3B368 8003A768 332A000F */  andi       $t2, $t9, 0xf
/* 3B36C 8003A76C 15400033 */  bnez       $t2, .L8003A83C
/* 3B370 8003A770 00000000 */   nop
/* 3B374 8003A774 10600031 */  beqz       $v1, .L8003A83C
/* 3B378 8003A778 3C04800E */   lui       $a0, 0x800e
/* 3B37C 8003A77C 3C07800F */  lui        $a3, %hi(gActors+0x90)
/* 3B380 8003A780 84E7F5A0 */  lh         $a3, %lo(gActors+0x90)($a3)
/* 3B384 8003A784 860B0088 */  lh         $t3, 0x88($s0)
/* 3B388 8003A788 8618008C */  lh         $t8, 0x8c($s0)
/* 3B38C 8003A78C 8FAC0024 */  lw         $t4, 0x24($sp)
/* 3B390 8003A790 24841380 */  addiu      $a0, $a0, 0x1380
/* 3B394 8003A794 AFA80028 */  sw         $t0, 0x28($sp)
/* 3B398 8003A798 AFA90020 */  sw         $t1, 0x20($sp)
/* 3B39C 8003A79C 24E70001 */  addiu      $a3, $a3, 1
/* 3B3A0 8003A7A0 01682821 */  addu       $a1, $t3, $t0
/* 3B3A4 8003A7A4 0C00C48F */  jal        func_8003123C
/* 3B3A8 8003A7A8 030C3021 */   addu      $a2, $t8, $t4
/* 3B3AC 8003A7AC 8FA80028 */  lw         $t0, 0x28($sp)
/* 3B3B0 8003A7B0 8FA90020 */  lw         $t1, 0x20($sp)
/* 3B3B4 8003A7B4 10400021 */  beqz       $v0, .L8003A83C
/* 3B3B8 8003A7B8 3C01800F */   lui       $at, 0x800f
/* 3B3BC 8003A7BC 00027080 */  sll        $t6, $v0, 2
/* 3B3C0 8003A7C0 01C27023 */  subu       $t6, $t6, $v0
/* 3B3C4 8003A7C4 000E7080 */  sll        $t6, $t6, 2
/* 3B3C8 8003A7C8 01C27021 */  addu       $t6, $t6, $v0
/* 3B3CC 8003A7CC 000E7080 */  sll        $t6, $t6, 2
/* 3B3D0 8003A7D0 01C27023 */  subu       $t6, $t6, $v0
/* 3B3D4 8003A7D4 3C0D800F */  lui        $t5, %hi(gActors)
/* 3B3D8 8003A7D8 C420BB0C */  lwc1       $f0, -0x44f4($at)
/* 3B3DC 8003A7DC 25ADF510 */  addiu      $t5, $t5, %lo(gActors)
/* 3B3E0 8003A7E0 000E70C0 */  sll        $t6, $t6, 3
/* 3B3E4 8003A7E4 01CD1821 */  addu       $v1, $t6, $t5
/* 3B3E8 8003A7E8 8FB80024 */  lw         $t8, 0x24($sp)
/* 3B3EC 8003A7EC 3C014170 */  lui        $at, 0x4170
/* 3B3F0 8003A7F0 00085880 */  sll        $t3, $t0, 2
/* 3B3F4 8003A7F4 00186080 */  sll        $t4, $t8, 2
/* 3B3F8 8003A7F8 44815000 */  mtc1       $at, $f10
/* 3B3FC 8003A7FC 01685823 */  subu       $t3, $t3, $t0
/* 3B400 8003A800 01986023 */  subu       $t4, $t4, $t8
/* 3B404 8003A804 240F0009 */  addiu      $t7, $zero, 9
/* 3B408 8003A808 2419012E */  addiu      $t9, $zero, 0x12e
/* 3B40C 8003A80C 240AFFF4 */  addiu      $t2, $zero, -0xc
/* 3B410 8003A810 000B5A40 */  sll        $t3, $t3, 9
/* 3B414 8003A814 000C6240 */  sll        $t4, $t4, 9
/* 3B418 8003A818 A46F0094 */  sh         $t7, 0x94($v1)
/* 3B41C 8003A81C A4790084 */  sh         $t9, 0x84($v1)
/* 3B420 8003A820 AC690160 */  sw         $t1, 0x160($v1)
/* 3B424 8003A824 AC6A0154 */  sw         $t2, 0x154($v1)
/* 3B428 8003A828 AC6B00EC */  sw         $t3, 0xec($v1)
/* 3B42C 8003A82C AC6C00F0 */  sw         $t4, 0xf0($v1)
/* 3B430 8003A830 E4600110 */  swc1       $f0, 0x110($v1)
/* 3B434 8003A834 E4600114 */  swc1       $f0, 0x114($v1)
/* 3B438 8003A838 E46A0148 */  swc1       $f10, 0x148($v1)
.L8003A83C:
/* 3B43C 8003A83C 8E020150 */  lw         $v0, 0x150($s0)
/* 3B440 8003A840 00000000 */  nop
.L8003A844:
/* 3B444 8003A844 304E8000 */  andi       $t6, $v0, 0x8000
.L8003A848:
/* 3B448 8003A848 11C00017 */  beqz       $t6, .L8003A8A8
/* 3B44C 8003A84C 3C19800C */   lui       $t9, 0x800c
/* 3B450 8003A850 960D018A */  lhu        $t5, 0x18a($s0)
/* 3B454 8003A854 3C19800F */  lui        $t9, 0x800f
/* 3B458 8003A858 000D7880 */  sll        $t7, $t5, 2
/* 3B45C 8003A85C 01ED7823 */  subu       $t7, $t7, $t5
/* 3B460 8003A860 000F7880 */  sll        $t7, $t7, 2
/* 3B464 8003A864 01ED7821 */  addu       $t7, $t7, $t5
/* 3B468 8003A868 000F7880 */  sll        $t7, $t7, 2
/* 3B46C 8003A86C 01ED7823 */  subu       $t7, $t7, $t5
/* 3B470 8003A870 000F78C0 */  sll        $t7, $t7, 3
/* 3B474 8003A874 2739F510 */  addiu      $t9, $t9, -0xaf0
/* 3B478 8003A878 01F91021 */  addu       $v0, $t7, $t9
/* 3B47C 8003A87C 8C4A0098 */  lw         $t2, 0x98($v0)
/* 3B480 8003A880 8E0B0098 */  lw         $t3, 0x98($s0)
/* 3B484 8003A884 3C064080 */  lui        $a2, 0x4080
/* 3B488 8003A888 014BC025 */  or         $t8, $t2, $t3
/* 3B48C 8003A88C AC580098 */  sw         $t8, 0x98($v0)
/* 3B490 8003A890 C60E0138 */  lwc1       $f14, 0x138($s0)
/* 3B494 8003A894 C60C013C */  lwc1       $f12, 0x13c($s0)
/* 3B498 8003A898 0C00A618 */  jal        func_80029860
/* 3B49C 8003A89C 00000000 */   nop
/* 3B4A0 8003A8A0 10000024 */  b          .L8003A934
/* 3B4A4 8003A8A4 E600013C */   swc1      $f0, 0x13c($s0)
.L8003A8A8:
/* 3B4A8 8003A8A8 8E0C0154 */  lw         $t4, 0x154($s0)
/* 3B4AC 8003A8AC 8E0D0170 */  lw         $t5, 0x170($s0)
/* 3B4B0 8003A8B0 8739E558 */  lh         $t9, -0x1aa8($t9)
/* 3B4B4 8003A8B4 05810004 */  bgez       $t4, .L8003A8C8
/* 3B4B8 8003A8B8 000C7403 */   sra       $t6, $t4, 0x10
/* 3B4BC 8003A8BC 3401FFFF */  ori        $at, $zero, 0xffff
/* 3B4C0 8003A8C0 002C0821 */  addu       $at, $at, $t4
/* 3B4C4 8003A8C4 00017403 */  sra        $t6, $at, 0x10
.L8003A8C8:
/* 3B4C8 8003A8C8 01CD7821 */  addu       $t7, $t6, $t5
/* 3B4CC 8003A8CC 01F95023 */  subu       $t2, $t7, $t9
/* 3B4D0 8003A8D0 A60A0088 */  sh         $t2, 0x88($s0)
/* 3B4D4 8003A8D4 3C0B800C */  lui        $t3, %hi(D_800BE4E0)
/* 3B4D8 8003A8D8 956BE4E0 */  lhu        $t3, %lo(D_800BE4E0)($t3)
/* 3B4DC 8003A8DC 3C0D800D */  lui        $t5, 0x800d
/* 3B4E0 8003A8E0 05610003 */  bgez       $t3, .L8003A8F0
/* 3B4E4 8003A8E4 000BC043 */   sra       $t8, $t3, 1
/* 3B4E8 8003A8E8 25610001 */  addiu      $at, $t3, 1
/* 3B4EC 8003A8EC 0001C043 */  sra        $t8, $at, 1
.L8003A8F0:
/* 3B4F0 8003A8F0 330C000F */  andi       $t4, $t8, 0xf
/* 3B4F4 8003A8F4 000C7040 */  sll        $t6, $t4, 1
/* 3B4F8 8003A8F8 01AE6821 */  addu       $t5, $t5, $t6
/* 3B4FC 8003A8FC 85AD26F4 */  lh         $t5, 0x26f4($t5)
/* 3B500 8003A900 8E180158 */  lw         $t8, 0x158($s0)
/* 3B504 8003A904 8E0F0174 */  lw         $t7, 0x174($s0)
/* 3B508 8003A908 3C0A800C */  lui        $t2, %hi(D_800BE55C)
/* 3B50C 8003A90C 854AE55C */  lh         $t2, %lo(D_800BE55C)($t2)
/* 3B510 8003A910 01AFC821 */  addu       $t9, $t5, $t7
/* 3B514 8003A914 032A5823 */  subu       $t3, $t9, $t2
/* 3B518 8003A918 07010004 */  bgez       $t8, .L8003A92C
/* 3B51C 8003A91C 00186403 */   sra       $t4, $t8, 0x10
/* 3B520 8003A920 3401FFFF */  ori        $at, $zero, 0xffff
/* 3B524 8003A924 00380821 */  addu       $at, $at, $t8
/* 3B528 8003A928 00016403 */  sra        $t4, $at, 0x10
.L8003A92C:
/* 3B52C 8003A92C 016C7021 */  addu       $t6, $t3, $t4
/* 3B530 8003A930 A60E008C */  sh         $t6, 0x8c($s0)
.L8003A934:
/* 3B534 8003A934 8E0D0098 */  lw         $t5, 0x98($s0)
/* 3B538 8003A938 3C01FFDF */  lui        $at, 0xffdf
/* 3B53C 8003A93C 3421F9FF */  ori        $at, $at, 0xf9ff
/* 3B540 8003A940 01A17824 */  and        $t7, $t5, $at
/* 3B544 8003A944 8FBF001C */  lw         $ra, 0x1c($sp)
/* 3B548 8003A948 AE0F0098 */  sw         $t7, 0x98($s0)
/* 3B54C 8003A94C 8FB00018 */  lw         $s0, 0x18($sp)
/* 3B550 8003A950 03E00008 */  jr         $ra
/* 3B554 8003A954 27BD0030 */   addiu     $sp, $sp, 0x30
