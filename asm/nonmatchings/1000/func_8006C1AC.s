glabel func_8006C1AC
/* 6CDAC 8006C1AC 3086FFFF */  andi       $a2, $a0, 0xffff
/* 6CDB0 8006C1B0 00067080 */  sll        $t6, $a2, 2
/* 6CDB4 8006C1B4 01C67023 */  subu       $t6, $t6, $a2
/* 6CDB8 8006C1B8 000E7080 */  sll        $t6, $t6, 2
/* 6CDBC 8006C1BC 01C67021 */  addu       $t6, $t6, $a2
/* 6CDC0 8006C1C0 000E7080 */  sll        $t6, $t6, 2
/* 6CDC4 8006C1C4 01C67023 */  subu       $t6, $t6, $a2
/* 6CDC8 8006C1C8 3C0F800F */  lui        $t7, %hi(gActors)
/* 6CDCC 8006C1CC 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 6CDD0 8006C1D0 000E70C0 */  sll        $t6, $t6, 3
/* 6CDD4 8006C1D4 01CF1821 */  addu       $v1, $t6, $t7
/* 6CDD8 8006C1D8 8C650150 */  lw         $a1, 0x150($v1)
/* 6CDDC 8006C1DC 44802000 */  mtc1       $zero, $f4
/* 6CDE0 8006C1E0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 6CDE4 8006C1E4 30B80800 */  andi       $t8, $a1, 0x800
/* 6CDE8 8006C1E8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 6CDEC 8006C1EC AFA40038 */  sw         $a0, 0x38($sp)
/* 6CDF0 8006C1F0 13000011 */  beqz       $t8, .L8006C238
/* 6CDF4 8006C1F4 E464013C */   swc1      $f4, 0x13c($v1)
/* 6CDF8 8006C1F8 84620088 */  lh         $v0, 0x88($v1)
/* 6CDFC 8006C1FC 00000000 */  nop
/* 6CE00 8006C200 28410181 */  slti       $at, $v0, 0x181
/* 6CE04 8006C204 1020000A */  beqz       $at, .L8006C230
/* 6CE08 8006C208 2841FE80 */   slti      $at, $v0, -0x180
/* 6CE0C 8006C20C 14200008 */  bnez       $at, .L8006C230
/* 6CE10 8006C210 00000000 */   nop
/* 6CE14 8006C214 8464008C */  lh         $a0, 0x8c($v1)
/* 6CE18 8006C218 00000000 */  nop
/* 6CE1C 8006C21C 28810181 */  slti       $at, $a0, 0x181
/* 6CE20 8006C220 10200003 */  beqz       $at, .L8006C230
/* 6CE24 8006C224 2881FE80 */   slti      $at, $a0, -0x180
/* 6CE28 8006C228 10200004 */  beqz       $at, .L8006C23C
/* 6CE2C 8006C22C 3C01FF7D */   lui       $at, 0xff7d
.L8006C230:
/* 6CE30 8006C230 100000D8 */  b          .L8006C594
/* 6CE34 8006C234 AC600080 */   sw        $zero, 0x80($v1)
.L8006C238:
/* 6CE38 8006C238 3C01FF7D */  lui        $at, 0xff7d
.L8006C23C:
/* 6CE3C 8006C23C 34213FFF */  ori        $at, $at, 0x3fff
/* 6CE40 8006C240 00A1C824 */  and        $t9, $a1, $at
/* 6CE44 8006C244 33292000 */  andi       $t1, $t9, 0x2000
/* 6CE48 8006C248 11200008 */  beqz       $t1, .L8006C26C
/* 6CE4C 8006C24C AC790150 */   sw        $t9, 0x150($v1)
/* 6CE50 8006C250 240A0080 */  addiu      $t2, $zero, 0x80
/* 6CE54 8006C254 3C01800E */  lui        $at, %hi(D_800E3570)
/* 6CE58 8006C258 A42A3570 */  sh         $t2, %lo(D_800E3570)($at)
/* 6CE5C 8006C25C 3C01800E */  lui        $at, %hi(D_800E3574)
/* 6CE60 8006C260 240B0100 */  addiu      $t3, $zero, 0x100
/* 6CE64 8006C264 10000007 */  b          .L8006C284
/* 6CE68 8006C268 A42B3574 */   sh        $t3, %lo(D_800E3574)($at)
.L8006C26C:
/* 6CE6C 8006C26C 240C0200 */  addiu      $t4, $zero, 0x200
/* 6CE70 8006C270 3C01800E */  lui        $at, %hi(D_800E3570)
/* 6CE74 8006C274 A42C3570 */  sh         $t4, %lo(D_800E3570)($at)
/* 6CE78 8006C278 3C01800E */  lui        $at, %hi(D_800E3574)
/* 6CE7C 8006C27C 240D0400 */  addiu      $t5, $zero, 0x400
/* 6CE80 8006C280 A42D3574 */  sh         $t5, %lo(D_800E3574)($at)
.L8006C284:
/* 6CE84 8006C284 30C4FFFF */  andi       $a0, $a2, 0xffff
/* 6CE88 8006C288 24050008 */  addiu      $a1, $zero, 8
/* 6CE8C 8006C28C AFA30024 */  sw         $v1, 0x24($sp)
/* 6CE90 8006C290 0C00AC74 */  jal        func_8002B1D0
/* 6CE94 8006C294 A7A6003A */   sh        $a2, 0x3a($sp)
/* 6CE98 8006C298 8FA30024 */  lw         $v1, 0x24($sp)
/* 6CE9C 8006C29C 3C18800C */  lui        $t8, 0x800c
/* 6CEA0 8006C2A0 84620088 */  lh         $v0, 0x88($v1)
/* 6CEA4 8006C2A4 3C08800C */  lui        $t0, 0x800c
/* 6CEA8 8006C2A8 28410099 */  slti       $at, $v0, 0x99
/* 6CEAC 8006C2AC 1020000A */  beqz       $at, .L8006C2D8
/* 6CEB0 8006C2B0 2841FF68 */   slti      $at, $v0, -0x98
/* 6CEB4 8006C2B4 14200008 */  bnez       $at, .L8006C2D8
/* 6CEB8 8006C2B8 00000000 */   nop
/* 6CEBC 8006C2BC 8464008C */  lh         $a0, 0x8c($v1)
/* 6CEC0 8006C2C0 00000000 */  nop
/* 6CEC4 8006C2C4 28810069 */  slti       $at, $a0, 0x69
/* 6CEC8 8006C2C8 10200003 */  beqz       $at, .L8006C2D8
/* 6CECC 8006C2CC 2881FF98 */   slti      $at, $a0, -0x68
/* 6CED0 8006C2D0 10200007 */  beqz       $at, .L8006C2F0
/* 6CED4 8006C2D4 00000000 */   nop
.L8006C2D8:
/* 6CED8 8006C2D8 8C6E0150 */  lw         $t6, 0x150($v1)
/* 6CEDC 8006C2DC 3C010080 */  lui        $at, 0x80
/* 6CEE0 8006C2E0 01C17825 */  or         $t7, $t6, $at
/* 6CEE4 8006C2E4 84620088 */  lh         $v0, 0x88($v1)
/* 6CEE8 8006C2E8 8464008C */  lh         $a0, 0x8c($v1)
/* 6CEEC 8006C2EC AC6F0150 */  sw         $t7, 0x150($v1)
.L8006C2F0:
/* 6CEF0 8006C2F0 8718E558 */  lh         $t8, -0x1aa8($t8)
/* 6CEF4 8006C2F4 946A00D0 */  lhu        $t2, 0xd0($v1)
/* 6CEF8 8006C2F8 0058C821 */  addu       $t9, $v0, $t8
/* 6CEFC 8006C2FC AC79017C */  sw         $t9, 0x17c($v1)
/* 6CF00 8006C300 8508E55C */  lh         $t0, -0x1aa4($t0)
/* 6CF04 8006C304 29410051 */  slti       $at, $t2, 0x51
/* 6CF08 8006C308 00884821 */  addu       $t1, $a0, $t0
/* 6CF0C 8006C30C 1420006B */  bnez       $at, .L8006C4BC
/* 6CF10 8006C310 AC690180 */   sw        $t1, 0x180($v1)
/* 6CF14 8006C314 846B00E0 */  lh         $t3, 0xe0($v1)
/* 6CF18 8006C318 00000000 */  nop
/* 6CF1C 8006C31C 1D600009 */  bgtz       $t3, .L8006C344
/* 6CF20 8006C320 00000000 */   nop
/* 6CF24 8006C324 8C650150 */  lw         $a1, 0x150($v1)
/* 6CF28 8006C328 3C018000 */  lui        $at, 0x8000
/* 6CF2C 8006C32C 30AC0080 */  andi       $t4, $a1, 0x80
/* 6CF30 8006C330 11800004 */  beqz       $t4, .L8006C344
/* 6CF34 8006C334 00A16825 */   or        $t5, $a1, $at
/* 6CF38 8006C338 240E4000 */  addiu      $t6, $zero, 0x4000
/* 6CF3C 8006C33C AC6D0150 */  sw         $t5, 0x150($v1)
/* 6CF40 8006C340 A46E00E0 */  sh         $t6, 0xe0($v1)
.L8006C344:
/* 6CF44 8006C344 8C780080 */  lw         $t8, 0x80($v1)
/* 6CF48 8006C348 8C650150 */  lw         $a1, 0x150($v1)
/* 6CF4C 8006C34C 8C6F0154 */  lw         $t7, 0x154($v1)
/* 6CF50 8006C350 2401DFFF */  addiu      $at, $zero, -0x2001
/* 6CF54 8006C354 0301C824 */  and        $t9, $t8, $at
/* 6CF58 8006C358 30A81000 */  andi       $t0, $a1, 0x1000
/* 6CF5C 8006C35C AC790080 */  sw         $t9, 0x80($v1)
/* 6CF60 8006C360 1100000F */  beqz       $t0, .L8006C3A0
/* 6CF64 8006C364 AC6F0090 */   sw        $t7, 0x90($v1)
/* 6CF68 8006C368 00054980 */  sll        $t1, $a1, 6
/* 6CF6C 8006C36C 05210032 */  bgez       $t1, .L8006C438
/* 6CF70 8006C370 00000000 */   nop
/* 6CF74 8006C374 97A4003A */  lhu        $a0, 0x3a($sp)
/* 6CF78 8006C378 0C00A213 */  jal        func_8002884C
/* 6CF7C 8006C37C AFA30024 */   sw        $v1, 0x24($sp)
/* 6CF80 8006C380 8FA30024 */  lw         $v1, 0x24($sp)
/* 6CF84 8006C384 1040002C */  beqz       $v0, .L8006C438
/* 6CF88 8006C388 3C01FDFF */   lui       $at, 0xfdff
/* 6CF8C 8006C38C 8C6A0150 */  lw         $t2, 0x150($v1)
/* 6CF90 8006C390 3421FFFF */  ori        $at, $at, 0xffff
/* 6CF94 8006C394 01415824 */  and        $t3, $t2, $at
/* 6CF98 8006C398 10000027 */  b          .L8006C438
/* 6CF9C 8006C39C AC6B0150 */   sw        $t3, 0x150($v1)
.L8006C3A0:
/* 6CFA0 8006C3A0 00056180 */  sll        $t4, $a1, 6
/* 6CFA4 8006C3A4 05810014 */  bgez       $t4, .L8006C3F8
/* 6CFA8 8006C3A8 97A4003A */   lhu       $a0, 0x3a($sp)
/* 6CFAC 8006C3AC 97A4003A */  lhu        $a0, 0x3a($sp)
/* 6CFB0 8006C3B0 0C00A213 */  jal        func_8002884C
/* 6CFB4 8006C3B4 AFA30024 */   sw        $v1, 0x24($sp)
/* 6CFB8 8006C3B8 8FA30024 */  lw         $v1, 0x24($sp)
/* 6CFBC 8006C3BC 10400007 */  beqz       $v0, .L8006C3DC
/* 6CFC0 8006C3C0 240F0008 */   addiu     $t7, $zero, 8
/* 6CFC4 8006C3C4 8C6D0150 */  lw         $t5, 0x150($v1)
/* 6CFC8 8006C3C8 3C01FDFF */  lui        $at, 0xfdff
/* 6CFCC 8006C3CC 3421FFFF */  ori        $at, $at, 0xffff
/* 6CFD0 8006C3D0 01A17024 */  and        $t6, $t5, $at
/* 6CFD4 8006C3D4 10000018 */  b          .L8006C438
/* 6CFD8 8006C3D8 AC6E0150 */   sw        $t6, 0x150($v1)
.L8006C3DC:
/* 6CFDC 8006C3DC 8C780098 */  lw         $t8, 0x98($v1)
/* 6CFE0 8006C3E0 2401FFFD */  addiu      $at, $zero, -3
/* 6CFE4 8006C3E4 0301C824 */  and        $t9, $t8, $at
/* 6CFE8 8006C3E8 A46F00D4 */  sh         $t7, 0xd4($v1)
/* 6CFEC 8006C3EC 10000012 */  b          .L8006C438
/* 6CFF0 8006C3F0 AC790098 */   sw        $t9, 0x98($v1)
/* 6CFF4 8006C3F4 97A4003A */  lhu        $a0, 0x3a($sp)
.L8006C3F8:
/* 6CFF8 8006C3F8 0C00A1DF */  jal        func_8002877C
/* 6CFFC 8006C3FC AFA30024 */   sw        $v1, 0x24($sp)
/* 6D000 8006C400 8FA30024 */  lw         $v1, 0x24($sp)
/* 6D004 8006C404 1040000C */  beqz       $v0, .L8006C438
/* 6D008 8006C408 30480001 */   andi      $t0, $v0, 1
/* 6D00C 8006C40C 11000006 */  beqz       $t0, .L8006C428
/* 6D010 8006C410 00000000 */   nop
/* 6D014 8006C414 8C690150 */  lw         $t1, 0x150($v1)
/* 6D018 8006C418 00000000 */  nop
/* 6D01C 8006C41C 352A4000 */  ori        $t2, $t1, 0x4000
/* 6D020 8006C420 10000005 */  b          .L8006C438
/* 6D024 8006C424 AC6A0150 */   sw        $t2, 0x150($v1)
.L8006C428:
/* 6D028 8006C428 8C6B0150 */  lw         $t3, 0x150($v1)
/* 6D02C 8006C42C 00000000 */  nop
/* 6D030 8006C430 356C8000 */  ori        $t4, $t3, 0x8000
/* 6D034 8006C434 AC6C0150 */  sw         $t4, 0x150($v1)
.L8006C438:
/* 6D038 8006C438 946D00D8 */  lhu        $t5, 0xd8($v1)
/* 6D03C 8006C43C 24010020 */  addiu      $at, $zero, 0x20
/* 6D040 8006C440 31AE0030 */  andi       $t6, $t5, 0x30
/* 6D044 8006C444 15C10012 */  bne        $t6, $at, .L8006C490
/* 6D048 8006C448 24050400 */   addiu     $a1, $zero, 0x400
/* 6D04C 8006C44C 97A4003A */  lhu        $a0, 0x3a($sp)
/* 6D050 8006C450 240F0065 */  addiu      $t7, $zero, 0x65
/* 6D054 8006C454 AFAF0010 */  sw         $t7, 0x10($sp)
/* 6D058 8006C458 00003025 */  or         $a2, $zero, $zero
/* 6D05C 8006C45C 00003825 */  or         $a3, $zero, $zero
/* 6D060 8006C460 0C00D49B */  jal        func_8003526C
/* 6D064 8006C464 AFA30024 */   sw        $v1, 0x24($sp)
/* 6D068 8006C468 8FA30024 */  lw         $v1, 0x24($sp)
/* 6D06C 8006C46C 04400008 */  bltz       $v0, .L8006C490
/* 6D070 8006C470 24180002 */   addiu     $t8, $zero, 2
/* 6D074 8006C474 44803000 */  mtc1       $zero, $f6
/* 6D078 8006C478 24190020 */  addiu      $t9, $zero, 0x20
/* 6D07C 8006C47C AC780080 */  sw         $t8, 0x80($v1)
/* 6D080 8006C480 A47900D0 */  sh         $t9, 0xd0($v1)
/* 6D084 8006C484 AC6000EC */  sw         $zero, 0xec($v1)
/* 6D088 8006C488 AC6000F0 */  sw         $zero, 0xf0($v1)
/* 6D08C 8006C48C E46600C4 */  swc1       $f6, 0xc4($v1)
.L8006C490:
/* 6D090 8006C490 8C680098 */  lw         $t0, 0x98($v1)
/* 6D094 8006C494 240A0002 */  addiu      $t2, $zero, 2
/* 6D098 8006C498 00084A80 */  sll        $t1, $t0, 0xa
/* 6D09C 8006C49C 05210007 */  bgez       $t1, .L8006C4BC
/* 6D0A0 8006C4A0 240B0030 */   addiu     $t3, $zero, 0x30
/* 6D0A4 8006C4A4 44804000 */  mtc1       $zero, $f8
/* 6D0A8 8006C4A8 AC6A0080 */  sw         $t2, 0x80($v1)
/* 6D0AC 8006C4AC A46B00D0 */  sh         $t3, 0xd0($v1)
/* 6D0B0 8006C4B0 AC6000EC */  sw         $zero, 0xec($v1)
/* 6D0B4 8006C4B4 AC6000F0 */  sw         $zero, 0xf0($v1)
/* 6D0B8 8006C4B8 E46800C4 */  swc1       $f8, 0xc4($v1)
.L8006C4BC:
/* 6D0BC 8006C4BC 444CF800 */  cfc1       $t4, $31
/* 6D0C0 8006C4C0 24020001 */  addiu      $v0, $zero, 1
/* 6D0C4 8006C4C4 44C2F800 */  ctc1       $v0, $31
/* 6D0C8 8006C4C8 C46A0110 */  lwc1       $f10, 0x110($v1)
/* 6D0CC 8006C4CC 3C014F00 */  lui        $at, 0x4f00
/* 6D0D0 8006C4D0 46005424 */  cvt.w.s    $f16, $f10
/* 6D0D4 8006C4D4 4442F800 */  cfc1       $v0, $31
/* 6D0D8 8006C4D8 00000000 */  nop
/* 6D0DC 8006C4DC 30420078 */  andi       $v0, $v0, 0x78
/* 6D0E0 8006C4E0 10400012 */  beqz       $v0, .L8006C52C
/* 6D0E4 8006C4E4 00000000 */   nop
/* 6D0E8 8006C4E8 44818000 */  mtc1       $at, $f16
/* 6D0EC 8006C4EC 24020001 */  addiu      $v0, $zero, 1
/* 6D0F0 8006C4F0 46105401 */  sub.s      $f16, $f10, $f16
/* 6D0F4 8006C4F4 3C018000 */  lui        $at, 0x8000
/* 6D0F8 8006C4F8 44C2F800 */  ctc1       $v0, $31
/* 6D0FC 8006C4FC 00000000 */  nop
/* 6D100 8006C500 46008424 */  cvt.w.s    $f16, $f16
/* 6D104 8006C504 4442F800 */  cfc1       $v0, $31
/* 6D108 8006C508 00000000 */  nop
/* 6D10C 8006C50C 30420078 */  andi       $v0, $v0, 0x78
/* 6D110 8006C510 14400004 */  bnez       $v0, .L8006C524
/* 6D114 8006C514 00000000 */   nop
/* 6D118 8006C518 44028000 */  mfc1       $v0, $f16
/* 6D11C 8006C51C 10000007 */  b          .L8006C53C
/* 6D120 8006C520 00411025 */   or        $v0, $v0, $at
.L8006C524:
/* 6D124 8006C524 10000005 */  b          .L8006C53C
/* 6D128 8006C528 2402FFFF */   addiu     $v0, $zero, -1
.L8006C52C:
/* 6D12C 8006C52C 44028000 */  mfc1       $v0, $f16
/* 6D130 8006C530 00000000 */  nop
/* 6D134 8006C534 0440FFFB */  bltz       $v0, .L8006C524
/* 6D138 8006C538 00000000 */   nop
.L8006C53C:
/* 6D13C 8006C53C 304DFFFF */  andi       $t5, $v0, 0xffff
/* 6D140 8006C540 31AE4000 */  andi       $t6, $t5, 0x4000
/* 6D144 8006C544 44CCF800 */  ctc1       $t4, $31
/* 6D148 8006C548 11C0000E */  beqz       $t6, .L8006C584
/* 6D14C 8006C54C 3C01800E */   lui       $at, 0x800e
/* 6D150 8006C550 31AF2000 */  andi       $t7, $t5, 0x2000
/* 6D154 8006C554 11E00007 */  beqz       $t7, .L8006C574
/* 6D158 8006C558 97A4003A */   lhu       $a0, 0x3a($sp)
/* 6D15C 8006C55C 97A4003A */  lhu        $a0, 0x3a($sp)
/* 6D160 8006C560 0C00A2BA */  jal        func_80028AE8
/* 6D164 8006C564 00000000 */   nop
/* 6D168 8006C568 10000008 */  b          .L8006C58C
/* 6D16C 8006C56C 97A4003A */   lhu       $a0, 0x3a($sp)
/* 6D170 8006C570 97A4003A */  lhu        $a0, 0x3a($sp)
.L8006C574:
/* 6D174 8006C574 0C00A2C7 */  jal        func_80028B1C
/* 6D178 8006C578 00000000 */   nop
/* 6D17C 8006C57C 10000003 */  b          .L8006C58C
/* 6D180 8006C580 97A4003A */   lhu       $a0, 0x3a($sp)
.L8006C584:
/* 6D184 8006C584 A4203580 */  sh         $zero, 0x3580($at)
/* 6D188 8006C588 97A4003A */  lhu        $a0, 0x3a($sp)
.L8006C58C:
/* 6D18C 8006C58C 0C00AA88 */  jal        func_8002AA20
/* 6D190 8006C590 00002825 */   or        $a1, $zero, $zero
.L8006C594:
/* 6D194 8006C594 8FBF001C */  lw         $ra, 0x1c($sp)
/* 6D198 8006C598 27BD0038 */  addiu      $sp, $sp, 0x38
/* 6D19C 8006C59C 03E00008 */  jr         $ra
/* 6D1A0 8006C5A0 00000000 */   nop
