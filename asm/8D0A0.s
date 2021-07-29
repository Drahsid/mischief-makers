.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8008C4A0
/* 8D0A0 8008C4A0 03E00008 */  jr         $ra
/* 8D0A4 8008C4A4 AFA40000 */   sw        $a0, ($sp)

glabel func_8008C4A8
/* 8D0A8 8008C4A8 03E00008 */  jr         $ra
/* 8D0AC 8008C4AC AFA40000 */   sw        $a0, ($sp)

glabel func_8008C4B0
/* 8D0B0 8008C4B0 AFA40000 */  sw         $a0, ($sp)
/* 8D0B4 8008C4B4 AFA50004 */  sw         $a1, 4($sp)
/* 8D0B8 8008C4B8 03E00008 */  jr         $ra
/* 8D0BC 8008C4BC AFA60008 */   sw        $a2, 8($sp)

glabel func_8008C4C0
/* 8D0C0 8008C4C0 03E00008 */  jr         $ra
/* 8D0C4 8008C4C4 AFA40000 */   sw        $a0, ($sp)

glabel func_8008C4C8
/* 8D0C8 8008C4C8 03E00008 */  jr         $ra
/* 8D0CC 8008C4CC AFA40000 */   sw        $a0, ($sp)

glabel func_8008C4D0
/* 8D0D0 8008C4D0 03E00008 */  jr         $ra
/* 8D0D4 8008C4D4 AFA40000 */   sw        $a0, ($sp)

glabel func_8008C4D8
/* 8D0D8 8008C4D8 03E00008 */  jr         $ra
/* 8D0DC 8008C4DC AFA40000 */   sw        $a0, ($sp)

glabel func_8008C4E0
/* 8D0E0 8008C4E0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8D0E4 8008C4E4 000E7880 */  sll        $t7, $t6, 2
/* 8D0E8 8008C4E8 01EE7823 */  subu       $t7, $t7, $t6
/* 8D0EC 8008C4EC 000F7880 */  sll        $t7, $t7, 2
/* 8D0F0 8008C4F0 01EE7821 */  addu       $t7, $t7, $t6
/* 8D0F4 8008C4F4 000F7880 */  sll        $t7, $t7, 2
/* 8D0F8 8008C4F8 01EE7823 */  subu       $t7, $t7, $t6
/* 8D0FC 8008C4FC 3C18800F */  lui        $t8, %hi(gActors)
/* 8D100 8008C500 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 8D104 8008C504 000F78C0 */  sll        $t7, $t7, 3
/* 8D108 8008C508 01F81021 */  addu       $v0, $t7, $t8
/* 8D10C 8008C50C A040009E */  sb         $zero, 0x9e($v0)
/* 8D110 8008C510 A040009D */  sb         $zero, 0x9d($v0)
/* 8D114 8008C514 A040009C */  sb         $zero, 0x9c($v0)
/* 8D118 8008C518 3C018013 */  lui        $at, %hi(D_80137420)
/* 8D11C 8008C51C AFA40000 */  sw         $a0, ($sp)
/* 8D120 8008C520 03E00008 */  jr         $ra
/* 8D124 8008C524 AC207420 */   sw        $zero, %lo(D_80137420)($at)

glabel func_8008C528
/* 8D128 8008C528 3C098013 */  lui        $t1, %hi(D_801373E0)
/* 8D12C 8008C52C 252973E0 */  addiu      $t1, $t1, %lo(D_801373E0)
/* 8D130 8008C530 8D2E0064 */  lw         $t6, 0x64($t1)
/* 8D134 8008C534 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 8D138 8008C538 31CF0002 */  andi       $t7, $t6, 2
/* 8D13C 8008C53C AFBF001C */  sw         $ra, 0x1c($sp)
/* 8D140 8008C540 11E0000A */  beqz       $t7, .L8008C56C
/* 8D144 8008C544 AFA40028 */   sw        $a0, 0x28($sp)
/* 8D148 8008C548 3C03800F */  lui        $v1, %hi(D_800EF5E1)
/* 8D14C 8008C54C 9063F5E1 */  lbu        $v1, %lo(D_800EF5E1)($v1)
/* 8D150 8008C550 00000000 */  nop
/* 8D154 8008C554 28610030 */  slti       $at, $v1, 0x30
/* 8D158 8008C558 14200004 */  bnez       $at, .L8008C56C
/* 8D15C 8008C55C 28610037 */   slti      $at, $v1, 0x37
/* 8D160 8008C560 10200002 */  beqz       $at, .L8008C56C
/* 8D164 8008C564 24180001 */   addiu     $t8, $zero, 1
/* 8D168 8008C568 A1380043 */  sb         $t8, 0x43($t1)
.L8008C56C:
/* 8D16C 8008C56C 91220043 */  lbu        $v0, 0x43($t1)
/* 8D170 8008C570 3C03800F */  lui        $v1, 0x800f
/* 8D174 8008C574 10400006 */  beqz       $v0, .L8008C590
/* 8D178 8008C578 3C08800F */   lui       $t0, 0x800f
/* 8D17C 8008C57C 24010001 */  addiu      $at, $zero, 1
/* 8D180 8008C580 10410007 */  beq        $v0, $at, .L8008C5A0
/* 8D184 8008C584 3C19800E */   lui       $t9, 0x800e
/* 8D188 8008C588 10000007 */  b          .L8008C5A8
/* 8D18C 8008C58C 00000000 */   nop
.L8008C590:
/* 8D190 8008C590 3C04800E */  lui        $a0, %hi(D_800E4560)
/* 8D194 8008C594 24844560 */  addiu      $a0, $a0, %lo(D_800E4560)
/* 8D198 8008C598 10000003 */  b          .L8008C5A8
/* 8D19C 8008C59C AFA40024 */   sw        $a0, 0x24($sp)
.L8008C5A0:
/* 8D1A0 8008C5A0 2739457C */  addiu      $t9, $t9, 0x457c
/* 8D1A4 8008C5A4 AFB90024 */  sw         $t9, 0x24($sp)
.L8008C5A8:
/* 8D1A8 8008C5A8 3C0A800F */  lui        $t2, %hi(D_800EF5A4)
/* 8D1AC 8008C5AC 954AF5A4 */  lhu        $t2, %lo(D_800EF5A4)($t2)
/* 8D1B0 8008C5B0 3C02800F */  lui        $v0, %hi(D_800EF5AC)
/* 8D1B4 8008C5B4 9042F5AC */  lbu        $v0, %lo(D_800EF5AC)($v0)
/* 8D1B8 8008C5B8 9063F5AD */  lbu        $v1, -0xa53($v1)
/* 8D1BC 8008C5BC 9108F5AE */  lbu        $t0, -0xa52($t0)
/* 8D1C0 8008C5C0 314B0010 */  andi       $t3, $t2, 0x10
/* 8D1C4 8008C5C4 1160000A */  beqz       $t3, .L8008C5F0
/* 8D1C8 8008C5C8 3C04800E */   lui       $a0, 0x800e
/* 8D1CC 8008C5CC 00021023 */  negu       $v0, $v0
/* 8D1D0 8008C5D0 00031823 */  negu       $v1, $v1
/* 8D1D4 8008C5D4 00084023 */  negu       $t0, $t0
/* 8D1D8 8008C5D8 00026400 */  sll        $t4, $v0, 0x10
/* 8D1DC 8008C5DC 00037400 */  sll        $t6, $v1, 0x10
/* 8D1E0 8008C5E0 0008C400 */  sll        $t8, $t0, 0x10
/* 8D1E4 8008C5E4 000C1403 */  sra        $v0, $t4, 0x10
/* 8D1E8 8008C5E8 000E1C03 */  sra        $v1, $t6, 0x10
/* 8D1EC 8008C5EC 00184403 */  sra        $t0, $t8, 0x10
.L8008C5F0:
/* 8D1F0 8008C5F0 3C058022 */  lui        $a1, 0x8022
/* 8D1F4 8008C5F4 34A52220 */  ori        $a1, $a1, 0x2220
/* 8D1F8 8008C5F8 24844594 */  addiu      $a0, $a0, 0x4594
/* 8D1FC 8008C5FC 2406001A */  addiu      $a2, $zero, 0x1a
/* 8D200 8008C600 05010003 */  bgez       $t0, .L8008C610
/* 8D204 8008C604 000838C3 */   sra       $a3, $t0, 3
/* 8D208 8008C608 25010007 */  addiu      $at, $t0, 7
/* 8D20C 8008C60C 000138C3 */  sra        $a3, $at, 3
.L8008C610:
/* 8D210 8008C610 00075400 */  sll        $t2, $a3, 0x10
/* 8D214 8008C614 000A5C03 */  sra        $t3, $t2, 0x10
/* 8D218 8008C618 01603825 */  or         $a3, $t3, $zero
/* 8D21C 8008C61C 04610003 */  bgez       $v1, .L8008C62C
/* 8D220 8008C620 000360C3 */   sra       $t4, $v1, 3
/* 8D224 8008C624 24610007 */  addiu      $at, $v1, 7
/* 8D228 8008C628 000160C3 */  sra        $t4, $at, 3
.L8008C62C:
/* 8D22C 8008C62C AFAC0010 */  sw         $t4, 0x10($sp)
/* 8D230 8008C630 04410003 */  bgez       $v0, .L8008C640
/* 8D234 8008C634 000268C3 */   sra       $t5, $v0, 3
/* 8D238 8008C638 24410007 */  addiu      $at, $v0, 7
/* 8D23C 8008C63C 000168C3 */  sra        $t5, $at, 3
.L8008C640:
/* 8D240 8008C640 0C00AE0B */  jal        func_8002B82C
/* 8D244 8008C644 AFAD0014 */   sw        $t5, 0x14($sp)
/* 8D248 8008C648 3C098013 */  lui        $t1, %hi(D_801373E0)
/* 8D24C 8008C64C 252973E0 */  addiu      $t1, $t1, %lo(D_801373E0)
/* 8D250 8008C650 81220042 */  lb         $v0, 0x42($t1)
/* 8D254 8008C654 97B9002A */  lhu        $t9, 0x2a($sp)
/* 8D258 8008C658 8FA40024 */  lw         $a0, 0x24($sp)
/* 8D25C 8008C65C 00027880 */  sll        $t7, $v0, 2
/* 8D260 8008C660 00195080 */  sll        $t2, $t9, 2
/* 8D264 8008C664 01595021 */  addu       $t2, $t2, $t9
/* 8D268 8008C668 008F1821 */  addu       $v1, $a0, $t7
/* 8D26C 8008C66C 84780000 */  lh         $t8, ($v1)
/* 8D270 8008C670 000A5140 */  sll        $t2, $t2, 5
/* 8D274 8008C674 3C018010 */  lui        $at, %hi(D_8010411A)
/* 8D278 8008C678 002A0821 */  addu       $at, $at, $t2
/* 8D27C 8008C67C A438411A */  sh         $t8, %lo(D_8010411A)($at)
/* 8D280 8008C680 852B0040 */  lh         $t3, 0x40($t1)
/* 8D284 8008C684 00000000 */  nop
/* 8D288 8008C688 256C0001 */  addiu      $t4, $t3, 1
/* 8D28C 8008C68C A52C0040 */  sh         $t4, 0x40($t1)
/* 8D290 8008C690 846E0002 */  lh         $t6, 2($v1)
/* 8D294 8008C694 852D0040 */  lh         $t5, 0x40($t1)
/* 8D298 8008C698 00000000 */  nop
/* 8D29C 8008C69C 01AE082A */  slt        $at, $t5, $t6
/* 8D2A0 8008C6A0 14200018 */  bnez       $at, .L8008C704
/* 8D2A4 8008C6A4 8FBF001C */   lw        $ra, 0x1c($sp)
/* 8D2A8 8008C6A8 846F0004 */  lh         $t7, 4($v1)
/* 8D2AC 8008C6AC 24590001 */  addiu      $t9, $v0, 1
/* 8D2B0 8008C6B0 15E00003 */  bnez       $t7, .L8008C6C0
/* 8D2B4 8008C6B4 00000000 */   nop
/* 8D2B8 8008C6B8 10000003 */  b          .L8008C6C8
/* 8D2BC 8008C6BC AD200040 */   sw        $zero, 0x40($t1)
.L8008C6C0:
/* 8D2C0 8008C6C0 A1390042 */  sb         $t9, 0x42($t1)
/* 8D2C4 8008C6C4 A5200040 */  sh         $zero, 0x40($t1)
.L8008C6C8:
/* 8D2C8 8008C6C8 81220042 */  lb         $v0, 0x42($t1)
/* 8D2CC 8008C6CC 00000000 */  nop
/* 8D2D0 8008C6D0 00025080 */  sll        $t2, $v0, 2
/* 8D2D4 8008C6D4 008A5821 */  addu       $t3, $a0, $t2
/* 8D2D8 8008C6D8 85630000 */  lh         $v1, ($t3)
/* 8D2DC 8008C6DC 00000000 */  nop
/* 8D2E0 8008C6E0 04610007 */  bgez       $v1, .L8008C700
/* 8D2E4 8008C6E4 00436021 */   addu      $t4, $v0, $v1
/* 8D2E8 8008C6E8 0C0005E3 */  jal        func_8000178C
/* 8D2EC 8008C6EC A12C0042 */   sb        $t4, 0x42($t1)
/* 8D2F0 8008C6F0 3C098013 */  lui        $t1, %hi(D_801373E0)
/* 8D2F4 8008C6F4 252973E0 */  addiu      $t1, $t1, %lo(D_801373E0)
/* 8D2F8 8008C6F8 00026840 */  sll        $t5, $v0, 1
/* 8D2FC 8008C6FC A52D0040 */  sh         $t5, 0x40($t1)
.L8008C700:
/* 8D300 8008C700 8FBF001C */  lw         $ra, 0x1c($sp)
.L8008C704:
/* 8D304 8008C704 27BD0028 */  addiu      $sp, $sp, 0x28
/* 8D308 8008C708 03E00008 */  jr         $ra
/* 8D30C 8008C70C 00000000 */   nop

glabel func_8008C710
/* 8D310 8008C710 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8D314 8008C714 000E7880 */  sll        $t7, $t6, 2
/* 8D318 8008C718 01EE7823 */  subu       $t7, $t7, $t6
/* 8D31C 8008C71C 000F7880 */  sll        $t7, $t7, 2
/* 8D320 8008C720 01EE7821 */  addu       $t7, $t7, $t6
/* 8D324 8008C724 000F7880 */  sll        $t7, $t7, 2
/* 8D328 8008C728 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 8D32C 8008C72C 01EE7823 */  subu       $t7, $t7, $t6
/* 8D330 8008C730 3C18800F */  lui        $t8, %hi(gActors)
/* 8D334 8008C734 AFB00018 */  sw         $s0, 0x18($sp)
/* 8D338 8008C738 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 8D33C 8008C73C 000F78C0 */  sll        $t7, $t7, 3
/* 8D340 8008C740 01F88021 */  addu       $s0, $t7, $t8
/* 8D344 8008C744 8E0502EC */  lw         $a1, 0x2ec($s0)
/* 8D348 8008C748 AFA40030 */  sw         $a0, 0x30($sp)
/* 8D34C 8008C74C 0005C823 */  negu       $t9, $a1
/* 8D350 8008C750 01C02025 */  or         $a0, $t6, $zero
/* 8D354 8008C754 AFB1001C */  sw         $s1, 0x1c($sp)
/* 8D358 8008C758 24091864 */  addiu      $t1, $zero, 0x1864
/* 8D35C 8008C75C AFBF002C */  sw         $ra, 0x2c($sp)
/* 8D360 8008C760 AFB40028 */  sw         $s4, 0x28($sp)
/* 8D364 8008C764 AFB30024 */  sw         $s3, 0x24($sp)
/* 8D368 8008C768 AFB20020 */  sw         $s2, 0x20($sp)
/* 8D36C 8008C76C 01C08825 */  or         $s1, $t6, $zero
/* 8D370 8008C770 07210004 */  bgez       $t9, .L8008C784
/* 8D374 8008C774 00194403 */   sra       $t0, $t9, 0x10
/* 8D378 8008C778 3401FFFF */  ori        $at, $zero, 0xffff
/* 8D37C 8008C77C 00390821 */  addu       $at, $at, $t9
/* 8D380 8008C780 00014403 */  sra        $t0, $at, 0x10
.L8008C784:
/* 8D384 8008C784 44882000 */  mtc1       $t0, $f4
/* 8D388 8008C788 3C030001 */  lui        $v1, 1
/* 8D38C 8008C78C 468021A0 */  cvt.s.w    $f6, $f4
/* 8D390 8008C790 A609021C */  sh         $t1, 0x21c($s0)
/* 8D394 8008C794 3C040003 */  lui        $a0, 3
/* 8D398 8008C798 E60602D0 */  swc1       $f6, 0x2d0($s0)
/* 8D39C 8008C79C 00001025 */  or         $v0, $zero, $zero
.L8008C7A0:
/* 8D3A0 8008C7A0 0065082A */  slt        $at, $v1, $a1
/* 8D3A4 8008C7A4 14200007 */  bnez       $at, .L8008C7C4
/* 8D3A8 8008C7A8 00641821 */   addu      $v1, $v1, $a0
/* 8D3AC 8008C7AC 00025040 */  sll        $t2, $v0, 1
/* 8D3B0 8008C7B0 3C0B800E */  lui        $t3, %hi(D_800E5A3C)
/* 8D3B4 8008C7B4 016A5821 */  addu       $t3, $t3, $t2
/* 8D3B8 8008C7B8 956B5A3C */  lhu        $t3, %lo(D_800E5A3C)($t3)
/* 8D3BC 8008C7BC 10000006 */  b          .L8008C7D8
/* 8D3C0 8008C7C0 A60B021C */   sh        $t3, 0x21c($s0)
.L8008C7C4:
/* 8D3C4 8008C7C4 24420001 */  addiu      $v0, $v0, 1
/* 8D3C8 8008C7C8 304CFFFF */  andi       $t4, $v0, 0xffff
/* 8D3CC 8008C7CC 29810004 */  slti       $at, $t4, 4
/* 8D3D0 8008C7D0 1420FFF3 */  bnez       $at, .L8008C7A0
/* 8D3D4 8008C7D4 01801025 */   or        $v0, $t4, $zero
.L8008C7D8:
/* 8D3D8 8008C7D8 960D021C */  lhu        $t5, 0x21c($s0)
/* 8D3DC 8008C7DC 24011810 */  addiu      $at, $zero, 0x1810
/* 8D3E0 8008C7E0 15A1000E */  bne        $t5, $at, .L8008C81C
/* 8D3E4 8008C7E4 2412FFEF */   addiu     $s2, $zero, -0x11
/* 8D3E8 8008C7E8 8E0E03B0 */  lw         $t6, 0x3b0($s0)
/* 8D3EC 8008C7EC 8E180548 */  lw         $t8, 0x548($s0)
/* 8D3F0 8008C7F0 8E081208 */  lw         $t0, 0x1208($s0)
/* 8D3F4 8008C7F4 8E0A3518 */  lw         $t2, 0x3518($s0)
/* 8D3F8 8008C7F8 35CF0001 */  ori        $t7, $t6, 1
/* 8D3FC 8008C7FC 37190001 */  ori        $t9, $t8, 1
/* 8D400 8008C800 35090001 */  ori        $t1, $t0, 1
/* 8D404 8008C804 354B0001 */  ori        $t3, $t2, 1
/* 8D408 8008C808 AE0F03B0 */  sw         $t7, 0x3b0($s0)
/* 8D40C 8008C80C AE190548 */  sw         $t9, 0x548($s0)
/* 8D410 8008C810 AE091208 */  sw         $t1, 0x1208($s0)
/* 8D414 8008C814 10000011 */  b          .L8008C85C
/* 8D418 8008C818 AE0B3518 */   sw        $t3, 0x3518($s0)
.L8008C81C:
/* 8D41C 8008C81C 2402FFFE */  addiu      $v0, $zero, -2
/* 8D420 8008C820 860C0224 */  lh         $t4, 0x224($s0)
/* 8D424 8008C824 8E0E03B0 */  lw         $t6, 0x3b0($s0)
/* 8D428 8008C828 8E180548 */  lw         $t8, 0x548($s0)
/* 8D42C 8008C82C 8E081208 */  lw         $t0, 0x1208($s0)
/* 8D430 8008C830 8E0A3518 */  lw         $t2, 0x3518($s0)
/* 8D434 8008C834 258D0004 */  addiu      $t5, $t4, 4
/* 8D438 8008C838 01C27824 */  and        $t7, $t6, $v0
/* 8D43C 8008C83C 0302C824 */  and        $t9, $t8, $v0
/* 8D440 8008C840 01024824 */  and        $t1, $t0, $v0
/* 8D444 8008C844 01425824 */  and        $t3, $t2, $v0
/* 8D448 8008C848 A60D0224 */  sh         $t5, 0x224($s0)
/* 8D44C 8008C84C AE0F03B0 */  sw         $t7, 0x3b0($s0)
/* 8D450 8008C850 AE190548 */  sw         $t9, 0x548($s0)
/* 8D454 8008C854 AE091208 */  sw         $t1, 0x1208($s0)
/* 8D458 8008C858 AE0B3518 */  sw         $t3, 0x3518($s0)
.L8008C85C:
/* 8D45C 8008C85C 960C021C */  lhu        $t4, 0x21c($s0)
/* 8D460 8008C860 24011864 */  addiu      $at, $zero, 0x1864
/* 8D464 8008C864 1581000A */  bne        $t4, $at, .L8008C890
/* 8D468 8008C868 26240001 */   addiu     $a0, $s1, 1
/* 8D46C 8008C86C 3C014160 */  lui        $at, 0x4160
/* 8D470 8008C870 44810000 */  mtc1       $at, $f0
/* 8D474 8008C874 3C014170 */  lui        $at, 0x4170
/* 8D478 8008C878 44814000 */  mtc1       $at, $f8
/* 8D47C 8008C87C E60015F4 */  swc1       $f0, 0x15f4($s0)
/* 8D480 8008C880 E6001C54 */  swc1       $f0, 0x1c54($s0)
/* 8D484 8008C884 E6001DEC */  swc1       $f0, 0x1dec($s0)
/* 8D488 8008C888 10000008 */  b          .L8008C8AC
/* 8D48C 8008C88C E6081924 */   swc1      $f8, 0x1924($s0)
.L8008C890:
/* 8D490 8008C890 44800000 */  mtc1       $zero, $f0
/* 8D494 8008C894 3C013F80 */  lui        $at, 0x3f80
/* 8D498 8008C898 44815000 */  mtc1       $at, $f10
/* 8D49C 8008C89C E60015F4 */  swc1       $f0, 0x15f4($s0)
/* 8D4A0 8008C8A0 E6001C54 */  swc1       $f0, 0x1c54($s0)
/* 8D4A4 8008C8A4 E6001DEC */  swc1       $f0, 0x1dec($s0)
/* 8D4A8 8008C8A8 E60A1924 */  swc1       $f10, 0x1924($s0)
.L8008C8AC:
/* 8D4AC 8008C8AC 960D022C */  lhu        $t5, 0x22c($s0)
/* 8D4B0 8008C8B0 308FFFFF */  andi       $t7, $a0, 0xffff
/* 8D4B4 8008C8B4 31AEFFEF */  andi       $t6, $t5, 0xffef
/* 8D4B8 8008C8B8 A60E022C */  sh         $t6, 0x22c($s0)
/* 8D4BC 8008C8BC 01E02025 */  or         $a0, $t7, $zero
/* 8D4C0 8008C8C0 0C00ABAD */  jal        func_8002AEB4
/* 8D4C4 8008C8C4 24050020 */   addiu     $a1, $zero, 0x20
/* 8D4C8 8008C8C8 9618352C */  lhu        $t8, 0x352c($s0)
/* 8D4CC 8008C8CC 26240021 */  addiu      $a0, $s1, 0x21
/* 8D4D0 8008C8D0 3088FFFF */  andi       $t0, $a0, 0xffff
/* 8D4D4 8008C8D4 0312C824 */  and        $t9, $t8, $s2
/* 8D4D8 8008C8D8 A619352C */  sh         $t9, 0x352c($s0)
/* 8D4DC 8008C8DC 01002025 */  or         $a0, $t0, $zero
/* 8D4E0 8008C8E0 0C00ABAD */  jal        func_8002AEB4
/* 8D4E4 8008C8E4 24050018 */   addiu     $a1, $zero, 0x18
/* 8D4E8 8008C8E8 9609121C */  lhu        $t1, 0x121c($s0)
/* 8D4EC 8008C8EC 2624000B */  addiu      $a0, $s1, 0xb
/* 8D4F0 8008C8F0 308BFFFF */  andi       $t3, $a0, 0xffff
/* 8D4F4 8008C8F4 352A0010 */  ori        $t2, $t1, 0x10
/* 8D4F8 8008C8F8 A60A121C */  sh         $t2, 0x121c($s0)
/* 8D4FC 8008C8FC 01602025 */  or         $a0, $t3, $zero
/* 8D500 8008C900 0C00ABAD */  jal        func_8002AEB4
/* 8D504 8008C904 24050020 */   addiu     $a1, $zero, 0x20
/* 8D508 8008C908 960C187C */  lhu        $t4, 0x187c($s0)
/* 8D50C 8008C90C 2624000F */  addiu      $a0, $s1, 0xf
/* 8D510 8008C910 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8D514 8008C914 358D0010 */  ori        $t5, $t4, 0x10
/* 8D518 8008C918 A60D187C */  sh         $t5, 0x187c($s0)
/* 8D51C 8008C91C 01C02025 */  or         $a0, $t6, $zero
/* 8D520 8008C920 0C00ABAD */  jal        func_8002AEB4
/* 8D524 8008C924 24050020 */   addiu     $a1, $zero, 0x20
/* 8D528 8008C928 960F1BAC */  lhu        $t7, 0x1bac($s0)
/* 8D52C 8008C92C 26240011 */  addiu      $a0, $s1, 0x11
/* 8D530 8008C930 3099FFFF */  andi       $t9, $a0, 0xffff
/* 8D534 8008C934 35F80010 */  ori        $t8, $t7, 0x10
/* 8D538 8008C938 A6181BAC */  sh         $t8, 0x1bac($s0)
/* 8D53C 8008C93C 03202025 */  or         $a0, $t9, $zero
/* 8D540 8008C940 0C00ABAD */  jal        func_8002AEB4
/* 8D544 8008C944 24050030 */   addiu     $a1, $zero, 0x30
/* 8D548 8008C948 96081D44 */  lhu        $t0, 0x1d44($s0)
/* 8D54C 8008C94C 26240012 */  addiu      $a0, $s1, 0x12
/* 8D550 8008C950 308AFFFF */  andi       $t2, $a0, 0xffff
/* 8D554 8008C954 35090010 */  ori        $t1, $t0, 0x10
/* 8D558 8008C958 A6091D44 */  sh         $t1, 0x1d44($s0)
/* 8D55C 8008C95C 01402025 */  or         $a0, $t2, $zero
/* 8D560 8008C960 0C00ABAD */  jal        func_8002AEB4
/* 8D564 8008C964 24050020 */   addiu     $a1, $zero, 0x20
/* 8D568 8008C968 960B0EEC */  lhu        $t3, 0xeec($s0)
/* 8D56C 8008C96C 26240009 */  addiu      $a0, $s1, 9
/* 8D570 8008C970 308DFFFF */  andi       $t5, $a0, 0xffff
/* 8D574 8008C974 356C0010 */  ori        $t4, $t3, 0x10
/* 8D578 8008C978 A60C0EEC */  sh         $t4, 0xeec($s0)
/* 8D57C 8008C97C 01A02025 */  or         $a0, $t5, $zero
/* 8D580 8008C980 0C00ABAD */  jal        func_8002AEB4
/* 8D584 8008C984 24050020 */   addiu     $a1, $zero, 0x20
/* 8D588 8008C988 960E2D34 */  lhu        $t6, 0x2d34($s0)
/* 8D58C 8008C98C 2624001C */  addiu      $a0, $s1, 0x1c
/* 8D590 8008C990 3098FFFF */  andi       $t8, $a0, 0xffff
/* 8D594 8008C994 35CF0010 */  ori        $t7, $t6, 0x10
/* 8D598 8008C998 A60F2D34 */  sh         $t7, 0x2d34($s0)
/* 8D59C 8008C99C 03002025 */  or         $a0, $t8, $zero
/* 8D5A0 8008C9A0 0C00ABAD */  jal        func_8002AEB4
/* 8D5A4 8008C9A4 24050030 */   addiu     $a1, $zero, 0x30
/* 8D5A8 8008C9A8 96193064 */  lhu        $t9, 0x3064($s0)
/* 8D5AC 8008C9AC 2624001E */  addiu      $a0, $s1, 0x1e
/* 8D5B0 8008C9B0 3089FFFF */  andi       $t1, $a0, 0xffff
/* 8D5B4 8008C9B4 37280010 */  ori        $t0, $t9, 0x10
/* 8D5B8 8008C9B8 A6083064 */  sh         $t0, 0x3064($s0)
/* 8D5BC 8008C9BC 01202025 */  or         $a0, $t1, $zero
/* 8D5C0 8008C9C0 0C00ABAD */  jal        func_8002AEB4
/* 8D5C4 8008C9C4 24050030 */   addiu     $a1, $zero, 0x30
/* 8D5C8 8008C9C8 0C0115B7 */  jal        func_800456DC
/* 8D5CC 8008C9CC 00000000 */   nop
/* 8D5D0 8008C9D0 3C13800E */  lui        $s3, %hi(D_800E5A44)
/* 8D5D4 8008C9D4 26735A44 */  addiu      $s3, $s3, %lo(D_800E5A44)
/* 8D5D8 8008C9D8 966C0000 */  lhu        $t4, ($s3)
/* 8D5DC 8008C9DC 04410003 */  bgez       $v0, .L8008C9EC
/* 8D5E0 8008C9E0 00029043 */   sra       $s2, $v0, 1
/* 8D5E4 8008C9E4 24410001 */  addiu      $at, $v0, 1
/* 8D5E8 8008C9E8 00019043 */  sra        $s2, $at, 1
.L8008C9EC:
/* 8D5EC 8008C9EC 00125400 */  sll        $t2, $s2, 0x10
/* 8D5F0 8008C9F0 1180001B */  beqz       $t4, .L8008CA60
/* 8D5F4 8008C9F4 000A9403 */   sra       $s2, $t2, 0x10
/* 8D5F8 8008C9F8 3C10800E */  lui        $s0, %hi(D_800E5A44)
/* 8D5FC 8008C9FC 3C148033 */  lui        $s4, 0x8033
/* 8D600 8008CA00 36945D58 */  ori        $s4, $s4, 0x5d58
/* 8D604 8008CA04 26105A44 */  addiu      $s0, $s0, %lo(D_800E5A44)
/* 8D608 8008CA08 00008825 */  or         $s1, $zero, $zero
/* 8D60C 8008CA0C 00122C00 */  sll        $a1, $s2, 0x10
.L8008CA10:
/* 8D610 8008CA10 00123400 */  sll        $a2, $s2, 0x10
/* 8D614 8008CA14 00067403 */  sra        $t6, $a2, 0x10
/* 8D618 8008CA18 00056C03 */  sra        $t5, $a1, 0x10
/* 8D61C 8008CA1C 96040002 */  lhu        $a0, 2($s0)
/* 8D620 8008CA20 01A02825 */  or         $a1, $t5, $zero
/* 8D624 8008CA24 01C03025 */  or         $a2, $t6, $zero
/* 8D628 8008CA28 0C00AD68 */  jal        func_8002B5A0
/* 8D62C 8008CA2C 00003825 */   or        $a3, $zero, $zero
/* 8D630 8008CA30 960F0000 */  lhu        $t7, ($s0)
/* 8D634 8008CA34 26230002 */  addiu      $v1, $s1, 2
/* 8D638 8008CA38 3071FFFF */  andi       $s1, $v1, 0xffff
/* 8D63C 8008CA3C 000FC040 */  sll        $t8, $t7, 1
/* 8D640 8008CA40 00114840 */  sll        $t1, $s1, 1
/* 8D644 8008CA44 0298C821 */  addu       $t9, $s4, $t8
/* 8D648 8008CA48 02698021 */  addu       $s0, $s3, $t1
/* 8D64C 8008CA4C A7220000 */  sh         $v0, ($t9)
/* 8D650 8008CA50 960A0000 */  lhu        $t2, ($s0)
/* 8D654 8008CA54 00000000 */  nop
/* 8D658 8008CA58 1540FFED */  bnez       $t2, .L8008CA10
/* 8D65C 8008CA5C 00122C00 */   sll       $a1, $s2, 0x10
.L8008CA60:
/* 8D660 8008CA60 3C148033 */  lui        $s4, 0x8033
/* 8D664 8008CA64 0C0115C7 */  jal        func_8004571C
/* 8D668 8008CA68 36945D58 */   ori       $s4, $s4, 0x5d58
/* 8D66C 8008CA6C A682017C */  sh         $v0, 0x17c($s4)
/* 8D670 8008CA70 8FBF002C */  lw         $ra, 0x2c($sp)
/* 8D674 8008CA74 8FB40028 */  lw         $s4, 0x28($sp)
/* 8D678 8008CA78 8FB30024 */  lw         $s3, 0x24($sp)
/* 8D67C 8008CA7C 8FB20020 */  lw         $s2, 0x20($sp)
/* 8D680 8008CA80 8FB1001C */  lw         $s1, 0x1c($sp)
/* 8D684 8008CA84 8FB00018 */  lw         $s0, 0x18($sp)
/* 8D688 8008CA88 03E00008 */  jr         $ra
/* 8D68C 8008CA8C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8008CA90
/* 8D690 8008CA90 3C02800D */  lui        $v0, %hi(D_800D294C)
/* 8D694 8008CA94 9442294C */  lhu        $v0, %lo(D_800D294C)($v0)
/* 8D698 8008CA98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8D69C 8008CA9C 10400054 */  beqz       $v0, .L8008CBF0
/* 8D6A0 8008CAA0 AFBF0014 */   sw        $ra, 0x14($sp)
/* 8D6A4 8008CAA4 304E8000 */  andi       $t6, $v0, 0x8000
/* 8D6A8 8008CAA8 15C00051 */  bnez       $t6, .L8008CBF0
/* 8D6AC 8008CAAC 240F0072 */   addiu     $t7, $zero, 0x72
/* 8D6B0 8008CAB0 3C01800F */  lui        $at, %hi(D_800F0F62)
/* 8D6B4 8008CAB4 A42F0F62 */  sh         $t7, %lo(D_800F0F62)($at)
/* 8D6B8 8008CAB8 0C0078B4 */  jal        func_8001E2D0
/* 8D6BC 8008CABC 24040010 */   addiu     $a0, $zero, 0x10
/* 8D6C0 8008CAC0 34188030 */  ori        $t8, $zero, 0x8030
/* 8D6C4 8008CAC4 44982000 */  mtc1       $t8, $f4
/* 8D6C8 8008CAC8 3C01800F */  lui        $at, %hi(D_800F0FA0)
/* 8D6CC 8008CACC 468021A0 */  cvt.s.w    $f6, $f4
/* 8D6D0 8008CAD0 3C05800F */  lui        $a1, 0x800f
/* 8D6D4 8008CAD4 24190004 */  addiu      $t9, $zero, 4
/* 8D6D8 8008CAD8 E4260FA0 */  swc1       $f6, %lo(D_800F0FA0)($at)
/* 8D6DC 8008CADC 3C01800F */  lui        $at, %hi(D_800F0F68)
/* 8D6E0 8008CAE0 A4200F68 */  sh         $zero, %lo(D_800F0F68)($at)
/* 8D6E4 8008CAE4 3C01800C */  lui        $at, %hi(D_800BE5F4)
/* 8D6E8 8008CAE8 24A5F510 */  addiu      $a1, $a1, -0xaf0
/* 8D6EC 8008CAEC AC39E5F4 */  sw         $t9, %lo(D_800BE5F4)($at)
/* 8D6F0 8008CAF0 84A80088 */  lh         $t0, 0x88($a1)
/* 8D6F4 8008CAF4 3C01800F */  lui        $at, %hi(D_800F0F18)
/* 8D6F8 8008CAF8 A4280F18 */  sh         $t0, %lo(D_800F0F18)($at)
/* 8D6FC 8008CAFC 84A9008C */  lh         $t1, 0x8c($a1)
/* 8D700 8008CB00 3C01800F */  lui        $at, %hi(D_800F0F1C)
/* 8D704 8008CB04 A4290F1C */  sh         $t1, %lo(D_800F0F1C)($at)
/* 8D708 8008CB08 84AA00E0 */  lh         $t2, 0xe0($a1)
/* 8D70C 8008CB0C 3C01800F */  lui        $at, %hi(D_800F0F70)
/* 8D710 8008CB10 A42A0F70 */  sh         $t2, %lo(D_800F0F70)($at)
/* 8D714 8008CB14 3C01800F */  lui        $at, %hi(D_800F0F60)
/* 8D718 8008CB18 A4200F60 */  sh         $zero, %lo(D_800F0F60)($at)
/* 8D71C 8008CB1C 0C0237C8 */  jal        func_8008DF20
/* 8D720 8008CB20 24040010 */   addiu     $a0, $zero, 0x10
/* 8D724 8008CB24 3C0B800F */  lui        $t3, %hi(D_800F0F10)
/* 8D728 8008CB28 8D6B0F10 */  lw         $t3, %lo(D_800F0F10)($t3)
/* 8D72C 8008CB2C 2401FFDF */  addiu      $at, $zero, -0x21
/* 8D730 8008CB30 01616024 */  and        $t4, $t3, $at
/* 8D734 8008CB34 3C05800F */  lui        $a1, %hi(gActors)
/* 8D738 8008CB38 3C01800F */  lui        $at, %hi(D_800F0F10)
/* 8D73C 8008CB3C 24A5F510 */  addiu      $a1, $a1, %lo(gActors)
/* 8D740 8008CB40 AC2C0F10 */  sw         $t4, %lo(D_800F0F10)($at)
/* 8D744 8008CB44 8CAD0080 */  lw         $t5, 0x80($a1)
/* 8D748 8008CB48 3C03800D */  lui        $v1, %hi(D_800D294C)
/* 8D74C 8008CB4C 31AE0020 */  andi       $t6, $t5, 0x20
/* 8D750 8008CB50 018E7825 */  or         $t7, $t4, $t6
/* 8D754 8008CB54 9463294C */  lhu        $v1, %lo(D_800D294C)($v1)
/* 8D758 8008CB58 AC2F0F10 */  sw         $t7, 0xf10($at)
/* 8D75C 8008CB5C 24010001 */  addiu      $at, $zero, 1
/* 8D760 8008CB60 10610009 */  beq        $v1, $at, .L8008CB88
/* 8D764 8008CB64 24010002 */   addiu     $at, $zero, 2
/* 8D768 8008CB68 1061000D */  beq        $v1, $at, .L8008CBA0
/* 8D76C 8008CB6C 24010003 */   addiu     $at, $zero, 3
/* 8D770 8008CB70 10610011 */  beq        $v1, $at, .L8008CBB8
/* 8D774 8008CB74 24010004 */   addiu     $at, $zero, 4
/* 8D778 8008CB78 10610015 */  beq        $v1, $at, .L8008CBD0
/* 8D77C 8008CB7C 00000000 */   nop
/* 8D780 8008CB80 10000019 */  b          .L8008CBE8
/* 8D784 8008CB84 34788000 */   ori       $t8, $v1, 0x8000
.L8008CB88:
/* 8D788 8008CB88 0C0233D8 */  jal        func_8008CF60
/* 8D78C 8008CB8C 24040010 */   addiu     $a0, $zero, 0x10
/* 8D790 8008CB90 3C03800D */  lui        $v1, %hi(D_800D294C)
/* 8D794 8008CB94 9463294C */  lhu        $v1, %lo(D_800D294C)($v1)
/* 8D798 8008CB98 10000013 */  b          .L8008CBE8
/* 8D79C 8008CB9C 34788000 */   ori       $t8, $v1, 0x8000
.L8008CBA0:
/* 8D7A0 8008CBA0 0C02347A */  jal        func_8008D1E8
/* 8D7A4 8008CBA4 24040010 */   addiu     $a0, $zero, 0x10
/* 8D7A8 8008CBA8 3C03800D */  lui        $v1, %hi(D_800D294C)
/* 8D7AC 8008CBAC 9463294C */  lhu        $v1, %lo(D_800D294C)($v1)
/* 8D7B0 8008CBB0 1000000D */  b          .L8008CBE8
/* 8D7B4 8008CBB4 34788000 */   ori       $t8, $v1, 0x8000
.L8008CBB8:
/* 8D7B8 8008CBB8 0C0234AC */  jal        func_8008D2B0
/* 8D7BC 8008CBBC 24040010 */   addiu     $a0, $zero, 0x10
/* 8D7C0 8008CBC0 3C03800D */  lui        $v1, %hi(D_800D294C)
/* 8D7C4 8008CBC4 9463294C */  lhu        $v1, %lo(D_800D294C)($v1)
/* 8D7C8 8008CBC8 10000007 */  b          .L8008CBE8
/* 8D7CC 8008CBCC 34788000 */   ori       $t8, $v1, 0x8000
.L8008CBD0:
/* 8D7D0 8008CBD0 0C0234C8 */  jal        func_8008D320
/* 8D7D4 8008CBD4 24040010 */   addiu     $a0, $zero, 0x10
/* 8D7D8 8008CBD8 3C03800D */  lui        $v1, %hi(D_800D294C)
/* 8D7DC 8008CBDC 9463294C */  lhu        $v1, %lo(D_800D294C)($v1)
/* 8D7E0 8008CBE0 00000000 */  nop
/* 8D7E4 8008CBE4 34788000 */  ori        $t8, $v1, 0x8000
.L8008CBE8:
/* 8D7E8 8008CBE8 3C01800D */  lui        $at, %hi(D_800D294C)
/* 8D7EC 8008CBEC A438294C */  sh         $t8, %lo(D_800D294C)($at)
.L8008CBF0:
/* 8D7F0 8008CBF0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8D7F4 8008CBF4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8D7F8 8008CBF8 03E00008 */  jr         $ra
/* 8D7FC 8008CBFC 00000000 */   nop

glabel func_8008CC00
/* 8D800 8008CC00 3C03800F */  lui        $v1, %hi(D_800F0E90)
/* 8D804 8008CC04 240E0005 */  addiu      $t6, $zero, 5
/* 8D808 8008CC08 3C01800C */  lui        $at, %hi(D_800BE5F4)
/* 8D80C 8008CC0C 24630E90 */  addiu      $v1, $v1, %lo(D_800F0E90)
/* 8D810 8008CC10 AC2EE5F4 */  sw         $t6, %lo(D_800BE5F4)($at)
/* 8D814 8008CC14 846F0088 */  lh         $t7, 0x88($v1)
/* 8D818 8008CC18 3C02800F */  lui        $v0, %hi(gActors)
/* 8D81C 8008CC1C 2442F510 */  addiu      $v0, $v0, %lo(gActors)
/* 8D820 8008CC20 A44F0088 */  sh         $t7, 0x88($v0)
/* 8D824 8008CC24 8478008C */  lh         $t8, 0x8c($v1)
/* 8D828 8008CC28 3C19800C */  lui        $t9, %hi(D_800BE558)
/* 8D82C 8008CC2C A458008C */  sh         $t8, 0x8c($v0)
/* 8D830 8008CC30 84680088 */  lh         $t0, 0x88($v1)
/* 8D834 8008CC34 8739E558 */  lh         $t9, %lo(D_800BE558)($t9)
/* 8D838 8008CC38 3C01800C */  lui        $at, %hi(D_800BE5D8)
/* 8D83C 8008CC3C 03284821 */  addu       $t1, $t9, $t0
/* 8D840 8008CC40 A429E5D8 */  sh         $t1, %lo(D_800BE5D8)($at)
/* 8D844 8008CC44 3C0A800C */  lui        $t2, %hi(D_800BE55C)
/* 8D848 8008CC48 854AE55C */  lh         $t2, %lo(D_800BE55C)($t2)
/* 8D84C 8008CC4C 846B008C */  lh         $t3, 0x8c($v1)
/* 8D850 8008CC50 3C01800C */  lui        $at, %hi(D_800BE5DC)
/* 8D854 8008CC54 014B6021 */  addu       $t4, $t2, $t3
/* 8D858 8008CC58 A42CE5DC */  sh         $t4, %lo(D_800BE5DC)($at)
/* 8D85C 8008CC5C 8C4D0080 */  lw         $t5, 0x80($v0)
/* 8D860 8008CC60 2401FFDF */  addiu      $at, $zero, -0x21
/* 8D864 8008CC64 01A17024 */  and        $t6, $t5, $at
/* 8D868 8008CC68 AC4E0080 */  sw         $t6, 0x80($v0)
/* 8D86C 8008CC6C 8C780080 */  lw         $t8, 0x80($v1)
/* 8D870 8008CC70 3C01800D */  lui        $at, %hi(D_800D294C)
/* 8D874 8008CC74 33190020 */  andi       $t9, $t8, 0x20
/* 8D878 8008CC78 01D94025 */  or         $t0, $t6, $t9
/* 8D87C 8008CC7C AC480080 */  sw         $t0, 0x80($v0)
/* 8D880 8008CC80 A420294C */  sh         $zero, %lo(D_800D294C)($at)
/* 8D884 8008CC84 AC600080 */  sw         $zero, 0x80($v1)
/* 8D888 8008CC88 03E00008 */  jr         $ra
/* 8D88C 8008CC8C A46000D0 */   sh        $zero, 0xd0($v1)

glabel func_8008CC90
/* 8D890 8008CC90 3085FFFF */  andi       $a1, $a0, 0xffff
/* 8D894 8008CC94 00057080 */  sll        $t6, $a1, 2
/* 8D898 8008CC98 01C57023 */  subu       $t6, $t6, $a1
/* 8D89C 8008CC9C 000E7080 */  sll        $t6, $t6, 2
/* 8D8A0 8008CCA0 01C57021 */  addu       $t6, $t6, $a1
/* 8D8A4 8008CCA4 000E7080 */  sll        $t6, $t6, 2
/* 8D8A8 8008CCA8 01C57023 */  subu       $t6, $t6, $a1
/* 8D8AC 8008CCAC 3C0F800F */  lui        $t7, %hi(gActors)
/* 8D8B0 8008CCB0 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 8D8B4 8008CCB4 000E70C0 */  sll        $t6, $t6, 3
/* 8D8B8 8008CCB8 01CF1821 */  addu       $v1, $t6, $t7
/* 8D8BC 8008CCBC 947800D0 */  lhu        $t8, 0xd0($v1)
/* 8D8C0 8008CCC0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8D8C4 8008CCC4 2B010021 */  slti       $at, $t8, 0x21
/* 8D8C8 8008CCC8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8D8CC 8008CCCC 10200004 */  beqz       $at, .L8008CCE0
/* 8D8D0 8008CCD0 AFA40020 */   sw        $a0, 0x20($sp)
/* 8D8D4 8008CCD4 24190002 */  addiu      $t9, $zero, 2
/* 8D8D8 8008CCD8 10000036 */  b          .L8008CDB4
/* 8D8DC 8008CCDC AC790080 */   sw        $t9, 0x80($v1)
.L8008CCE0:
/* 8D8E0 8008CCE0 44801000 */  mtc1       $zero, $f2
/* 8D8E4 8008CCE4 C4600118 */  lwc1       $f0, 0x118($v1)
/* 8D8E8 8008CCE8 3C013F80 */  lui        $at, 0x3f80
/* 8D8EC 8008CCEC 46001032 */  c.eq.s     $f2, $f0
/* 8D8F0 8008CCF0 00000000 */  nop
/* 8D8F4 8008CCF4 45010021 */  bc1t       .L8008CD7C
/* 8D8F8 8008CCF8 30A4FFFF */   andi      $a0, $a1, 0xffff
/* 8D8FC 8008CCFC 44812000 */  mtc1       $at, $f4
/* 8D900 8008CD00 00000000 */  nop
/* 8D904 8008CD04 46040181 */  sub.s      $f6, $f0, $f4
/* 8D908 8008CD08 E4660118 */  swc1       $f6, 0x118($v1)
/* 8D90C 8008CD0C C4680118 */  lwc1       $f8, 0x118($v1)
/* 8D910 8008CD10 00000000 */  nop
/* 8D914 8008CD14 46081032 */  c.eq.s     $f2, $f8
/* 8D918 8008CD18 00000000 */  nop
/* 8D91C 8008CD1C 45000017 */  bc1f       .L8008CD7C
/* 8D920 8008CD20 30A4FFFF */   andi      $a0, $a1, 0xffff
/* 8D924 8008CD24 8C62018C */  lw         $v0, 0x18c($v1)
/* 8D928 8008CD28 00000000 */  nop
/* 8D92C 8008CD2C 84480000 */  lh         $t0, ($v0)
/* 8D930 8008CD30 24420004 */  addiu      $v0, $v0, 4
/* 8D934 8008CD34 A4680084 */  sh         $t0, 0x84($v1)
/* 8D938 8008CD38 8449FFFE */  lh         $t1, -2($v0)
/* 8D93C 8008CD3C 00000000 */  nop
/* 8D940 8008CD40 44895000 */  mtc1       $t1, $f10
/* 8D944 8008CD44 00000000 */  nop
/* 8D948 8008CD48 46805420 */  cvt.s.w    $f16, $f10
/* 8D94C 8008CD4C E4700118 */  swc1       $f16, 0x118($v1)
/* 8D950 8008CD50 84440000 */  lh         $a0, ($v0)
/* 8D954 8008CD54 00000000 */  nop
/* 8D958 8008CD58 14800003 */  bnez       $a0, .L8008CD68
/* 8D95C 8008CD5C 00000000 */   nop
/* 8D960 8008CD60 10000005 */  b          .L8008CD78
/* 8D964 8008CD64 E4620118 */   swc1      $f2, 0x118($v1)
.L8008CD68:
/* 8D968 8008CD68 04810002 */  bgez       $a0, .L8008CD74
/* 8D96C 8008CD6C 00045880 */   sll       $t3, $a0, 2
/* 8D970 8008CD70 004B1021 */  addu       $v0, $v0, $t3
.L8008CD74:
/* 8D974 8008CD74 AC62018C */  sw         $v0, 0x18c($v1)
.L8008CD78:
/* 8D978 8008CD78 30A4FFFF */  andi       $a0, $a1, 0xffff
.L8008CD7C:
/* 8D97C 8008CD7C 0C023544 */  jal        func_8008D510
/* 8D980 8008CD80 AFA30018 */   sw        $v1, 0x18($sp)
/* 8D984 8008CD84 8FA30018 */  lw         $v1, 0x18($sp)
/* 8D988 8008CD88 3C010800 */  lui        $at, 0x800
/* 8D98C 8008CD8C 8C6C0080 */  lw         $t4, 0x80($v1)
/* 8D990 8008CD90 34210001 */  ori        $at, $at, 1
/* 8D994 8008CD94 01816825 */  or         $t5, $t4, $at
/* 8D998 8008CD98 3C01800C */  lui        $at, %hi(D_800BE714)
/* 8D99C 8008CD9C 240E0001 */  addiu      $t6, $zero, 1
/* 8D9A0 8008CDA0 AC6D0080 */  sw         $t5, 0x80($v1)
/* 8D9A4 8008CDA4 A42EE714 */  sh         $t6, %lo(D_800BE714)($at)
/* 8D9A8 8008CDA8 946F0084 */  lhu        $t7, 0x84($v1)
/* 8D9AC 8008CDAC 3C01800F */  lui        $at, %hi(D_800EF594)
/* 8D9B0 8008CDB0 A42FF594 */  sh         $t7, %lo(D_800EF594)($at)
.L8008CDB4:
/* 8D9B4 8008CDB4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8D9B8 8008CDB8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8D9BC 8008CDBC 03E00008 */  jr         $ra
/* 8D9C0 8008CDC0 00000000 */   nop

glabel func_8008CDC4
/* 8D9C4 8008CDC4 AFA40000 */  sw         $a0, ($sp)
/* 8D9C8 8008CDC8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8D9CC 8008CDCC 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 8D9D0 8008CDD0 01C02025 */  or         $a0, $t6, $zero
/* 8D9D4 8008CDD4 11E00007 */  beqz       $t7, .L8008CDF4
/* 8D9D8 8008CDD8 AFA50004 */   sw        $a1, 4($sp)
/* 8D9DC 8008CDDC 24050001 */  addiu      $a1, $zero, 1
/* 8D9E0 8008CDE0 11E5001C */  beq        $t7, $a1, .L8008CE54
/* 8D9E4 8008CDE4 00045080 */   sll       $t2, $a0, 2
/* 8D9E8 8008CDE8 24010012 */  addiu      $at, $zero, 0x12
/* 8D9EC 8008CDEC 11E1002F */  beq        $t7, $at, .L8008CEAC
/* 8D9F0 8008CDF0 00047080 */   sll       $t6, $a0, 2
.L8008CDF4:
/* 8D9F4 8008CDF4 0004C080 */  sll        $t8, $a0, 2
/* 8D9F8 8008CDF8 0304C023 */  subu       $t8, $t8, $a0
/* 8D9FC 8008CDFC 0018C080 */  sll        $t8, $t8, 2
/* 8DA00 8008CE00 0304C021 */  addu       $t8, $t8, $a0
/* 8DA04 8008CE04 0018C080 */  sll        $t8, $t8, 2
/* 8DA08 8008CE08 0304C023 */  subu       $t8, $t8, $a0
/* 8DA0C 8008CE0C 3C19800F */  lui        $t9, %hi(gActors)
/* 8DA10 8008CE10 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 8DA14 8008CE14 0018C0C0 */  sll        $t8, $t8, 3
/* 8DA18 8008CE18 03191821 */  addu       $v1, $t8, $t9
/* 8DA1C 8008CE1C 8C620190 */  lw         $v0, 0x190($v1)
/* 8DA20 8008CE20 24050001 */  addiu      $a1, $zero, 1
/* 8DA24 8008CE24 10400005 */  beqz       $v0, .L8008CE3C
/* 8DA28 8008CE28 3C08800D */   lui       $t0, %hi(D_800D431C)
/* 8DA2C 8008CE2C 10450006 */  beq        $v0, $a1, .L8008CE48
/* 8DA30 8008CE30 3C09800D */   lui       $t1, 0x800d
/* 8DA34 8008CE34 10000033 */  b          .L8008CF04
/* 8DA38 8008CE38 3C013F80 */   lui       $at, 0x3f80
.L8008CE3C:
/* 8DA3C 8008CE3C 2508431C */  addiu      $t0, $t0, %lo(D_800D431C)
/* 8DA40 8008CE40 1000002F */  b          .L8008CF00
/* 8DA44 8008CE44 AC68018C */   sw        $t0, 0x18c($v1)
.L8008CE48:
/* 8DA48 8008CE48 25294F90 */  addiu      $t1, $t1, 0x4f90
/* 8DA4C 8008CE4C 1000002C */  b          .L8008CF00
/* 8DA50 8008CE50 AC69018C */   sw        $t1, 0x18c($v1)
.L8008CE54:
/* 8DA54 8008CE54 01445023 */  subu       $t2, $t2, $a0
/* 8DA58 8008CE58 000A5080 */  sll        $t2, $t2, 2
/* 8DA5C 8008CE5C 01445021 */  addu       $t2, $t2, $a0
/* 8DA60 8008CE60 000A5080 */  sll        $t2, $t2, 2
/* 8DA64 8008CE64 01445023 */  subu       $t2, $t2, $a0
/* 8DA68 8008CE68 3C0B800F */  lui        $t3, %hi(gActors)
/* 8DA6C 8008CE6C 256BF510 */  addiu      $t3, $t3, %lo(gActors)
/* 8DA70 8008CE70 000A50C0 */  sll        $t2, $t2, 3
/* 8DA74 8008CE74 014B1821 */  addu       $v1, $t2, $t3
/* 8DA78 8008CE78 8C620190 */  lw         $v0, 0x190($v1)
/* 8DA7C 8008CE7C 3C0C800D */  lui        $t4, %hi(D_800D5348)
/* 8DA80 8008CE80 10400005 */  beqz       $v0, .L8008CE98
/* 8DA84 8008CE84 258C5348 */   addiu     $t4, $t4, %lo(D_800D5348)
/* 8DA88 8008CE88 10450005 */  beq        $v0, $a1, .L8008CEA0
/* 8DA8C 8008CE8C 3C0D800D */   lui       $t5, %hi(D_800D4F90)
/* 8DA90 8008CE90 1000001C */  b          .L8008CF04
/* 8DA94 8008CE94 3C013F80 */   lui       $at, 0x3f80
.L8008CE98:
/* 8DA98 8008CE98 10000019 */  b          .L8008CF00
/* 8DA9C 8008CE9C AC6C018C */   sw        $t4, 0x18c($v1)
.L8008CEA0:
/* 8DAA0 8008CEA0 25AD4F90 */  addiu      $t5, $t5, %lo(D_800D4F90)
/* 8DAA4 8008CEA4 10000016 */  b          .L8008CF00
/* 8DAA8 8008CEA8 AC6D018C */   sw        $t5, 0x18c($v1)
.L8008CEAC:
/* 8DAAC 8008CEAC 01C47023 */  subu       $t6, $t6, $a0
/* 8DAB0 8008CEB0 000E7080 */  sll        $t6, $t6, 2
/* 8DAB4 8008CEB4 01C47021 */  addu       $t6, $t6, $a0
/* 8DAB8 8008CEB8 000E7080 */  sll        $t6, $t6, 2
/* 8DABC 8008CEBC 01C47023 */  subu       $t6, $t6, $a0
/* 8DAC0 8008CEC0 3C0F800F */  lui        $t7, %hi(gActors)
/* 8DAC4 8008CEC4 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 8DAC8 8008CEC8 000E70C0 */  sll        $t6, $t6, 3
/* 8DACC 8008CECC 01CF1821 */  addu       $v1, $t6, $t7
/* 8DAD0 8008CED0 8C620190 */  lw         $v0, 0x190($v1)
/* 8DAD4 8008CED4 3C18800D */  lui        $t8, %hi(D_800D47B4)
/* 8DAD8 8008CED8 10400005 */  beqz       $v0, .L8008CEF0
/* 8DADC 8008CEDC 271847B4 */   addiu     $t8, $t8, %lo(D_800D47B4)
/* 8DAE0 8008CEE0 10450005 */  beq        $v0, $a1, .L8008CEF8
/* 8DAE4 8008CEE4 3C19800D */   lui       $t9, %hi(D_800D47B4)
/* 8DAE8 8008CEE8 10000006 */  b          .L8008CF04
/* 8DAEC 8008CEEC 3C013F80 */   lui       $at, 0x3f80
.L8008CEF0:
/* 8DAF0 8008CEF0 10000003 */  b          .L8008CF00
/* 8DAF4 8008CEF4 AC78018C */   sw        $t8, 0x18c($v1)
.L8008CEF8:
/* 8DAF8 8008CEF8 273947B4 */  addiu      $t9, $t9, %lo(D_800D47B4)
/* 8DAFC 8008CEFC AC79018C */  sw         $t9, 0x18c($v1)
.L8008CF00:
/* 8DB00 8008CF00 3C013F80 */  lui        $at, 0x3f80
.L8008CF04:
/* 8DB04 8008CF04 44812000 */  mtc1       $at, $f4
/* 8DB08 8008CF08 03E00008 */  jr         $ra
/* 8DB0C 8008CF0C E4640118 */   swc1      $f4, 0x118($v1)

glabel func_8008CF10
/* 8DB10 8008CF10 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8DB14 8008CF14 000E7880 */  sll        $t7, $t6, 2
/* 8DB18 8008CF18 01EE7823 */  subu       $t7, $t7, $t6
/* 8DB1C 8008CF1C 000F7880 */  sll        $t7, $t7, 2
/* 8DB20 8008CF20 01EE7821 */  addu       $t7, $t7, $t6
/* 8DB24 8008CF24 000F7880 */  sll        $t7, $t7, 2
/* 8DB28 8008CF28 01EE7823 */  subu       $t7, $t7, $t6
/* 8DB2C 8008CF2C 3C18800F */  lui        $t8, %hi(gActors)
/* 8DB30 8008CF30 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 8DB34 8008CF34 000F78C0 */  sll        $t7, $t7, 3
/* 8DB38 8008CF38 01F81021 */  addu       $v0, $t7, $t8
/* 8DB3C 8008CF3C 24030008 */  addiu      $v1, $zero, 8
/* 8DB40 8008CF40 2419FFF2 */  addiu      $t9, $zero, -0xe
/* 8DB44 8008CF44 2408FFF8 */  addiu      $t0, $zero, -8
/* 8DB48 8008CF48 AFA40000 */  sw         $a0, ($sp)
/* 8DB4C 8008CF4C A44300AE */  sh         $v1, 0xae($v0)
/* 8DB50 8008CF50 A45900B0 */  sh         $t9, 0xb0($v0)
/* 8DB54 8008CF54 A44800AA */  sh         $t0, 0xaa($v0)
/* 8DB58 8008CF58 03E00008 */  jr         $ra
/* 8DB5C 8008CF5C A44300AC */   sh        $v1, 0xac($v0)

glabel func_8008CF60
/* 8DB60 8008CF60 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8DB64 8008CF64 000E7880 */  sll        $t7, $t6, 2
/* 8DB68 8008CF68 01EE7823 */  subu       $t7, $t7, $t6
/* 8DB6C 8008CF6C 000F7880 */  sll        $t7, $t7, 2
/* 8DB70 8008CF70 01EE7821 */  addu       $t7, $t7, $t6
/* 8DB74 8008CF74 000F7880 */  sll        $t7, $t7, 2
/* 8DB78 8008CF78 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8DB7C 8008CF7C 01EE7823 */  subu       $t7, $t7, $t6
/* 8DB80 8008CF80 3C18800F */  lui        $t8, %hi(gActors)
/* 8DB84 8008CF84 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 8DB88 8008CF88 000F78C0 */  sll        $t7, $t7, 3
/* 8DB8C 8008CF8C AFBF0014 */  sw         $ra, 0x14($sp)
/* 8DB90 8008CF90 AFA40020 */  sw         $a0, 0x20($sp)
/* 8DB94 8008CF94 01F81021 */  addu       $v0, $t7, $t8
/* 8DB98 8008CF98 24190070 */  addiu      $t9, $zero, 0x70
/* 8DB9C 8008CF9C 01C02025 */  or         $a0, $t6, $zero
/* 8DBA0 8008CFA0 A45900D0 */  sh         $t9, 0xd0($v0)
/* 8DBA4 8008CFA4 AFA2001C */  sw         $v0, 0x1c($sp)
/* 8DBA8 8008CFA8 0C023371 */  jal        func_8008CDC4
/* 8DBAC 8008CFAC 00002825 */   or        $a1, $zero, $zero
/* 8DBB0 8008CFB0 8FA2001C */  lw         $v0, 0x1c($sp)
/* 8DBB4 8008CFB4 3C01FFFD */  lui        $at, 0xfffd
/* 8DBB8 8008CFB8 8C480080 */  lw         $t0, 0x80($v0)
/* 8DBBC 8008CFBC 3421FFFF */  ori        $at, $at, 0xffff
/* 8DBC0 8008CFC0 01014824 */  and        $t1, $t0, $at
/* 8DBC4 8008CFC4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8DBC8 8008CFC8 3C010001 */  lui        $at, 1
/* 8DBCC 8008CFCC 01215825 */  or         $t3, $t1, $at
/* 8DBD0 8008CFD0 AC490080 */  sw         $t1, 0x80($v0)
/* 8DBD4 8008CFD4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8DBD8 8008CFD8 AC4B0080 */  sw         $t3, 0x80($v0)
/* 8DBDC 8008CFDC 03E00008 */  jr         $ra
/* 8DBE0 8008CFE0 AC400188 */   sw        $zero, 0x188($v0)

glabel func_8008CFE4
/* 8DBE4 8008CFE4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8DBE8 8008CFE8 000E7880 */  sll        $t7, $t6, 2
/* 8DBEC 8008CFEC 01EE7823 */  subu       $t7, $t7, $t6
/* 8DBF0 8008CFF0 000F7880 */  sll        $t7, $t7, 2
/* 8DBF4 8008CFF4 01EE7821 */  addu       $t7, $t7, $t6
/* 8DBF8 8008CFF8 000F7880 */  sll        $t7, $t7, 2
/* 8DBFC 8008CFFC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8DC00 8008D000 01EE7823 */  subu       $t7, $t7, $t6
/* 8DC04 8008D004 3C18800F */  lui        $t8, %hi(gActors)
/* 8DC08 8008D008 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 8DC0C 8008D00C 000F78C0 */  sll        $t7, $t7, 3
/* 8DC10 8008D010 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8DC14 8008D014 AFA40020 */  sw         $a0, 0x20($sp)
/* 8DC18 8008D018 01F81021 */  addu       $v0, $t7, $t8
/* 8DC1C 8008D01C 24190090 */  addiu      $t9, $zero, 0x90
/* 8DC20 8008D020 01C02025 */  or         $a0, $t6, $zero
/* 8DC24 8008D024 A45900D0 */  sh         $t9, 0xd0($v0)
/* 8DC28 8008D028 AFA2001C */  sw         $v0, 0x1c($sp)
/* 8DC2C 8008D02C 0C023371 */  jal        func_8008CDC4
/* 8DC30 8008D030 24050012 */   addiu     $a1, $zero, 0x12
/* 8DC34 8008D034 8FA2001C */  lw         $v0, 0x1c($sp)
/* 8DC38 8008D038 3C01FFFD */  lui        $at, 0xfffd
/* 8DC3C 8008D03C 8C480080 */  lw         $t0, 0x80($v0)
/* 8DC40 8008D040 8C4C0184 */  lw         $t4, 0x184($v0)
/* 8DC44 8008D044 3421FFFF */  ori        $at, $at, 0xffff
/* 8DC48 8008D048 448C2000 */  mtc1       $t4, $f4
/* 8DC4C 8008D04C 01014824 */  and        $t1, $t0, $at
/* 8DC50 8008D050 3C010001 */  lui        $at, 1
/* 8DC54 8008D054 468021A0 */  cvt.s.w    $f6, $f4
/* 8DC58 8008D058 01215825 */  or         $t3, $t1, $at
/* 8DC5C 8008D05C 3C013FE8 */  lui        $at, 0x3fe8
/* 8DC60 8008D060 44815800 */  mtc1       $at, $f11
/* 8DC64 8008D064 44805000 */  mtc1       $zero, $f10
/* 8DC68 8008D068 46003221 */  cvt.d.s    $f8, $f6
/* 8DC6C 8008D06C 462A4402 */  mul.d      $f16, $f8, $f10
/* 8DC70 8008D070 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8DC74 8008D074 AC490080 */  sw         $t1, 0x80($v0)
/* 8DC78 8008D078 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8DC7C 8008D07C AC4B0080 */  sw         $t3, 0x80($v0)
/* 8DC80 8008D080 444DF800 */  cfc1       $t5, $31
/* 8DC84 8008D084 AC400188 */  sw         $zero, 0x188($v0)
/* 8DC88 8008D088 35A10003 */  ori        $at, $t5, 3
/* 8DC8C 8008D08C 38210002 */  xori       $at, $at, 2
/* 8DC90 8008D090 44C1F800 */  ctc1       $at, $31
/* 8DC94 8008D094 00000000 */  nop
/* 8DC98 8008D098 462084A4 */  cvt.w.d    $f18, $f16
/* 8DC9C 8008D09C 44CDF800 */  ctc1       $t5, $31
/* 8DCA0 8008D0A0 03E00008 */  jr         $ra
/* 8DCA4 8008D0A4 E4520184 */   swc1      $f18, 0x184($v0)

glabel func_8008D0A8
/* 8DCA8 8008D0A8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8DCAC 8008D0AC 000E7880 */  sll        $t7, $t6, 2
/* 8DCB0 8008D0B0 01EE7823 */  subu       $t7, $t7, $t6
/* 8DCB4 8008D0B4 000F7880 */  sll        $t7, $t7, 2
/* 8DCB8 8008D0B8 01EE7821 */  addu       $t7, $t7, $t6
/* 8DCBC 8008D0BC 000F7880 */  sll        $t7, $t7, 2
/* 8DCC0 8008D0C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8DCC4 8008D0C4 01EE7823 */  subu       $t7, $t7, $t6
/* 8DCC8 8008D0C8 3C18800F */  lui        $t8, %hi(gActors)
/* 8DCCC 8008D0CC 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 8DCD0 8008D0D0 000F78C0 */  sll        $t7, $t7, 3
/* 8DCD4 8008D0D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8DCD8 8008D0D8 AFA40020 */  sw         $a0, 0x20($sp)
/* 8DCDC 8008D0DC 01F81021 */  addu       $v0, $t7, $t8
/* 8DCE0 8008D0E0 24190080 */  addiu      $t9, $zero, 0x80
/* 8DCE4 8008D0E4 01C02025 */  or         $a0, $t6, $zero
/* 8DCE8 8008D0E8 A45900D0 */  sh         $t9, 0xd0($v0)
/* 8DCEC 8008D0EC AFA2001C */  sw         $v0, 0x1c($sp)
/* 8DCF0 8008D0F0 0C023371 */  jal        func_8008CDC4
/* 8DCF4 8008D0F4 24050011 */   addiu     $a1, $zero, 0x11
/* 8DCF8 8008D0F8 8FA2001C */  lw         $v0, 0x1c($sp)
/* 8DCFC 8008D0FC 3C01FFFE */  lui        $at, 0xfffe
/* 8DD00 8008D100 8C480080 */  lw         $t0, 0x80($v0)
/* 8DD04 8008D104 3421FFFF */  ori        $at, $at, 0xffff
/* 8DD08 8008D108 01014824 */  and        $t1, $t0, $at
/* 8DD0C 8008D10C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8DD10 8008D110 3C010002 */  lui        $at, 2
/* 8DD14 8008D114 01215825 */  or         $t3, $t1, $at
/* 8DD18 8008D118 AC490080 */  sw         $t1, 0x80($v0)
/* 8DD1C 8008D11C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8DD20 8008D120 03E00008 */  jr         $ra
/* 8DD24 8008D124 AC4B0080 */   sw        $t3, 0x80($v0)

glabel func_8008D128
/* 8DD28 8008D128 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8DD2C 8008D12C AFA40018 */  sw         $a0, 0x18($sp)
/* 8DD30 8008D130 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8DD34 8008D134 97A4001A */  lhu        $a0, 0x1a($sp)
/* 8DD38 8008D138 0C00ABAD */  jal        func_8002AEB4
/* 8DD3C 8008D13C 2405007F */   addiu     $a1, $zero, 0x7f
/* 8DD40 8008D140 97AE001A */  lhu        $t6, 0x1a($sp)
/* 8DD44 8008D144 3C03800F */  lui        $v1, 0x800f
/* 8DD48 8008D148 000E7880 */  sll        $t7, $t6, 2
/* 8DD4C 8008D14C 01EE7823 */  subu       $t7, $t7, $t6
/* 8DD50 8008D150 000F7880 */  sll        $t7, $t7, 2
/* 8DD54 8008D154 01EE7821 */  addu       $t7, $t7, $t6
/* 8DD58 8008D158 000F7880 */  sll        $t7, $t7, 2
/* 8DD5C 8008D15C 01EE7823 */  subu       $t7, $t7, $t6
/* 8DD60 8008D160 2463F510 */  addiu      $v1, $v1, -0xaf0
/* 8DD64 8008D164 000F78C0 */  sll        $t7, $t7, 3
/* 8DD68 8008D168 006F1021 */  addu       $v0, $v1, $t7
/* 8DD6C 8008D16C 8C590080 */  lw         $t9, 0x80($v0)
/* 8DD70 8008D170 3C01FFFE */  lui        $at, 0xfffe
/* 8DD74 8008D174 3421FEFF */  ori        $at, $at, 0xfeff
/* 8DD78 8008D178 03214024 */  and        $t0, $t9, $at
/* 8DD7C 8008D17C 3C010002 */  lui        $at, 2
/* 8DD80 8008D180 01015025 */  or         $t2, $t0, $at
/* 8DD84 8008D184 3C013F80 */  lui        $at, 0x3f80
/* 8DD88 8008D188 44812000 */  mtc1       $at, $f4
/* 8DD8C 8008D18C 2418003C */  addiu      $t8, $zero, 0x3c
/* 8DD90 8008D190 AC480080 */  sw         $t0, 0x80($v0)
/* 8DD94 8008D194 A45800D4 */  sh         $t8, 0xd4($v0)
/* 8DD98 8008D198 AC4A0080 */  sw         $t2, 0x80($v0)
/* 8DD9C 8008D19C E4440118 */  swc1       $f4, 0x118($v0)
/* 8DDA0 8008D1A0 8C6400F8 */  lw         $a0, 0xf8($v1)
/* 8DDA4 8008D1A4 354E0020 */  ori        $t6, $t2, 0x20
/* 8DDA8 8008D1A8 AC440184 */  sw         $a0, 0x184($v0)
/* 8DDAC 8008D1AC 8C6C00FC */  lw         $t4, 0xfc($v1)
/* 8DDB0 8008D1B0 18800003 */  blez       $a0, .L8008D1C0
/* 8DDB4 8008D1B4 AC4C0188 */   sw        $t4, 0x188($v0)
/* 8DDB8 8008D1B8 10000007 */  b          .L8008D1D8
/* 8DDBC 8008D1BC AC4E0080 */   sw        $t6, 0x80($v0)
.L8008D1C0:
/* 8DDC0 8008D1C0 04810006 */  bgez       $a0, .L8008D1DC
/* 8DDC4 8008D1C4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 8DDC8 8008D1C8 8C4F0080 */  lw         $t7, 0x80($v0)
/* 8DDCC 8008D1CC 2401FFDF */  addiu      $at, $zero, -0x21
/* 8DDD0 8008D1D0 01E1C024 */  and        $t8, $t7, $at
/* 8DDD4 8008D1D4 AC580080 */  sw         $t8, 0x80($v0)
.L8008D1D8:
/* 8DDD8 8008D1D8 8FBF0014 */  lw         $ra, 0x14($sp)
.L8008D1DC:
/* 8DDDC 8008D1DC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8DDE0 8008D1E0 03E00008 */  jr         $ra
/* 8DDE4 8008D1E4 00000000 */   nop

glabel func_8008D1E8
/* 8DDE8 8008D1E8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8DDEC 8008D1EC 000E7880 */  sll        $t7, $t6, 2
/* 8DDF0 8008D1F0 01EE7823 */  subu       $t7, $t7, $t6
/* 8DDF4 8008D1F4 000F7880 */  sll        $t7, $t7, 2
/* 8DDF8 8008D1F8 01EE7821 */  addu       $t7, $t7, $t6
/* 8DDFC 8008D1FC 000F7880 */  sll        $t7, $t7, 2
/* 8DE00 8008D200 3C03800F */  lui        $v1, %hi(gActors)
/* 8DE04 8008D204 01EE7823 */  subu       $t7, $t7, $t6
/* 8DE08 8008D208 2463F510 */  addiu      $v1, $v1, %lo(gActors)
/* 8DE0C 8008D20C 000F78C0 */  sll        $t7, $t7, 3
/* 8DE10 8008D210 006F1021 */  addu       $v0, $v1, $t7
/* 8DE14 8008D214 8C590080 */  lw         $t9, 0x80($v0)
/* 8DE18 8008D218 3C01FFFE */  lui        $at, 0xfffe
/* 8DE1C 8008D21C 3421FFFF */  ori        $at, $at, 0xffff
/* 8DE20 8008D220 03214024 */  and        $t0, $t9, $at
/* 8DE24 8008D224 3C010002 */  lui        $at, 2
/* 8DE28 8008D228 01015025 */  or         $t2, $t0, $at
/* 8DE2C 8008D22C 3C013F80 */  lui        $at, 0x3f80
/* 8DE30 8008D230 44812000 */  mtc1       $at, $f4
/* 8DE34 8008D234 3C0B800D */  lui        $t3, %hi(D_800D4958)
/* 8DE38 8008D238 241800A0 */  addiu      $t8, $zero, 0xa0
/* 8DE3C 8008D23C AC480080 */  sw         $t0, 0x80($v0)
/* 8DE40 8008D240 256B4958 */  addiu      $t3, $t3, %lo(D_800D4958)
/* 8DE44 8008D244 A45800D0 */  sh         $t8, 0xd0($v0)
/* 8DE48 8008D248 AC4A0080 */  sw         $t2, 0x80($v0)
/* 8DE4C 8008D24C AC4B018C */  sw         $t3, 0x18c($v0)
/* 8DE50 8008D250 E4440118 */  swc1       $f4, 0x118($v0)
/* 8DE54 8008D254 8C6500F8 */  lw         $a1, 0xf8($v1)
/* 8DE58 8008D258 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8DE5C 8008D25C AC450184 */  sw         $a1, 0x184($v0)
/* 8DE60 8008D260 8C6D00FC */  lw         $t5, 0xfc($v1)
/* 8DE64 8008D264 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8DE68 8008D268 AFA40018 */  sw         $a0, 0x18($sp)
/* 8DE6C 8008D26C 18A00004 */  blez       $a1, .L8008D280
/* 8DE70 8008D270 AC4D0188 */   sw        $t5, 0x188($v0)
/* 8DE74 8008D274 354F0020 */  ori        $t7, $t2, 0x20
/* 8DE78 8008D278 10000007 */  b          .L8008D298
/* 8DE7C 8008D27C AC4F0080 */   sw        $t7, 0x80($v0)
.L8008D280:
/* 8DE80 8008D280 04A10005 */  bgez       $a1, .L8008D298
/* 8DE84 8008D284 00000000 */   nop
/* 8DE88 8008D288 8C580080 */  lw         $t8, 0x80($v0)
/* 8DE8C 8008D28C 2401FFDF */  addiu      $at, $zero, -0x21
/* 8DE90 8008D290 0301C824 */  and        $t9, $t8, $at
/* 8DE94 8008D294 AC590080 */  sw         $t9, 0x80($v0)
.L8008D298:
/* 8DE98 8008D298 0C000CD3 */  jal        func_8000334C
/* 8DE9C 8008D29C 24040063 */   addiu     $a0, $zero, 0x63
/* 8DEA0 8008D2A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8DEA4 8008D2A4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8DEA8 8008D2A8 03E00008 */  jr         $ra
/* 8DEAC 8008D2AC 00000000 */   nop

glabel func_8008D2B0
/* 8DEB0 8008D2B0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8DEB4 8008D2B4 000E7880 */  sll        $t7, $t6, 2
/* 8DEB8 8008D2B8 01EE7823 */  subu       $t7, $t7, $t6
/* 8DEBC 8008D2BC 000F7880 */  sll        $t7, $t7, 2
/* 8DEC0 8008D2C0 01EE7821 */  addu       $t7, $t7, $t6
/* 8DEC4 8008D2C4 000F7880 */  sll        $t7, $t7, 2
/* 8DEC8 8008D2C8 01EE7823 */  subu       $t7, $t7, $t6
/* 8DECC 8008D2CC 3C18800F */  lui        $t8, %hi(gActors)
/* 8DED0 8008D2D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8DED4 8008D2D4 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 8DED8 8008D2D8 000F78C0 */  sll        $t7, $t7, 3
/* 8DEDC 8008D2DC 3C014100 */  lui        $at, 0x4100
/* 8DEE0 8008D2E0 44812000 */  mtc1       $at, $f4
/* 8DEE4 8008D2E4 01F81021 */  addu       $v0, $t7, $t8
/* 8DEE8 8008D2E8 3C08800D */  lui        $t0, %hi(D_800D44F4)
/* 8DEEC 8008D2EC AFBF0014 */  sw         $ra, 0x14($sp)
/* 8DEF0 8008D2F0 AFA40018 */  sw         $a0, 0x18($sp)
/* 8DEF4 8008D2F4 241900B0 */  addiu      $t9, $zero, 0xb0
/* 8DEF8 8008D2F8 250844F4 */  addiu      $t0, $t0, %lo(D_800D44F4)
/* 8DEFC 8008D2FC 01C02025 */  or         $a0, $t6, $zero
/* 8DF00 8008D300 A45900D0 */  sh         $t9, 0xd0($v0)
/* 8DF04 8008D304 AC48018C */  sw         $t0, 0x18c($v0)
/* 8DF08 8008D308 0C02344A */  jal        func_8008D128
/* 8DF0C 8008D30C E4440120 */   swc1      $f4, 0x120($v0)
/* 8DF10 8008D310 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8DF14 8008D314 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8DF18 8008D318 03E00008 */  jr         $ra
/* 8DF1C 8008D31C 00000000 */   nop

glabel func_8008D320
/* 8DF20 8008D320 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8DF24 8008D324 000E7880 */  sll        $t7, $t6, 2
/* 8DF28 8008D328 01EE7823 */  subu       $t7, $t7, $t6
/* 8DF2C 8008D32C 000F7880 */  sll        $t7, $t7, 2
/* 8DF30 8008D330 01EE7821 */  addu       $t7, $t7, $t6
/* 8DF34 8008D334 000F7880 */  sll        $t7, $t7, 2
/* 8DF38 8008D338 01EE7823 */  subu       $t7, $t7, $t6
/* 8DF3C 8008D33C 3C18800F */  lui        $t8, %hi(gActors)
/* 8DF40 8008D340 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 8DF44 8008D344 000F78C0 */  sll        $t7, $t7, 3
/* 8DF48 8008D348 01F81021 */  addu       $v0, $t7, $t8
/* 8DF4C 8008D34C 94480094 */  lhu        $t0, 0x94($v0)
/* 8DF50 8008D350 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8DF54 8008D354 3C0141A0 */  lui        $at, 0x41a0
/* 8DF58 8008D358 44812000 */  mtc1       $at, $f4
/* 8DF5C 8008D35C 3C0A800D */  lui        $t2, %hi(D_800D4518)
/* 8DF60 8008D360 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8DF64 8008D364 AFA40018 */  sw         $a0, 0x18($sp)
/* 8DF68 8008D368 241900B0 */  addiu      $t9, $zero, 0xb0
/* 8DF6C 8008D36C 254A4518 */  addiu      $t2, $t2, %lo(D_800D4518)
/* 8DF70 8008D370 35090008 */  ori        $t1, $t0, 8
/* 8DF74 8008D374 01C02025 */  or         $a0, $t6, $zero
/* 8DF78 8008D378 A45900D0 */  sh         $t9, 0xd0($v0)
/* 8DF7C 8008D37C A4490094 */  sh         $t1, 0x94($v0)
/* 8DF80 8008D380 AC4A018C */  sw         $t2, 0x18c($v0)
/* 8DF84 8008D384 0C02344A */  jal        func_8008D128
/* 8DF88 8008D388 E4440120 */   swc1      $f4, 0x120($v0)
/* 8DF8C 8008D38C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8DF90 8008D390 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8DF94 8008D394 03E00008 */  jr         $ra
/* 8DF98 8008D398 00000000 */   nop

glabel func_8008D39C
/* 8DF9C 8008D39C 3087FFFF */  andi       $a3, $a0, 0xffff
/* 8DFA0 8008D3A0 00077080 */  sll        $t6, $a3, 2
/* 8DFA4 8008D3A4 01C77023 */  subu       $t6, $t6, $a3
/* 8DFA8 8008D3A8 000E7080 */  sll        $t6, $t6, 2
/* 8DFAC 8008D3AC 01C77021 */  addu       $t6, $t6, $a3
/* 8DFB0 8008D3B0 000E7080 */  sll        $t6, $t6, 2
/* 8DFB4 8008D3B4 01C77023 */  subu       $t6, $t6, $a3
/* 8DFB8 8008D3B8 3C0F800F */  lui        $t7, %hi(gActors)
/* 8DFBC 8008D3BC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8DFC0 8008D3C0 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 8DFC4 8008D3C4 000E70C0 */  sll        $t6, $t6, 3
/* 8DFC8 8008D3C8 AFA40020 */  sw         $a0, 0x20($sp)
/* 8DFCC 8008D3CC 01CF1821 */  addu       $v1, $t6, $t7
/* 8DFD0 8008D3D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8DFD4 8008D3D4 8C640184 */  lw         $a0, 0x184($v1)
/* 8DFD8 8008D3D8 AFA3001C */  sw         $v1, 0x1c($sp)
/* 8DFDC 8008D3DC 00002825 */  or         $a1, $zero, $zero
/* 8DFE0 8008D3E0 0C00A607 */  jal        func_8002981C
/* 8DFE4 8008D3E4 24061000 */   addiu     $a2, $zero, 0x1000
/* 8DFE8 8008D3E8 8FA3001C */  lw         $v1, 0x1c($sp)
/* 8DFEC 8008D3EC 3C05FFF9 */  lui        $a1, 0xfff9
/* 8DFF0 8008D3F0 8C640188 */  lw         $a0, 0x188($v1)
/* 8DFF4 8008D3F4 34A58000 */  ori        $a1, $a1, 0x8000
/* 8DFF8 8008D3F8 24063800 */  addiu      $a2, $zero, 0x3800
/* 8DFFC 8008D3FC 0C00A607 */  jal        func_8002981C
/* 8E000 8008D400 AC620184 */   sw        $v0, 0x184($v1)
/* 8E004 8008D404 8FA3001C */  lw         $v1, 0x1c($sp)
/* 8E008 8008D408 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8E00C 8008D40C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8E010 8008D410 03E00008 */  jr         $ra
/* 8E014 8008D414 AC620188 */   sw        $v0, 0x188($v1)

glabel func_8008D418
/* 8E018 8008D418 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8E01C 8008D41C 000E7880 */  sll        $t7, $t6, 2
/* 8E020 8008D420 01EE7823 */  subu       $t7, $t7, $t6
/* 8E024 8008D424 000F7880 */  sll        $t7, $t7, 2
/* 8E028 8008D428 01EE7821 */  addu       $t7, $t7, $t6
/* 8E02C 8008D42C 000F7880 */  sll        $t7, $t7, 2
/* 8E030 8008D430 01EE7823 */  subu       $t7, $t7, $t6
/* 8E034 8008D434 000F78C0 */  sll        $t7, $t7, 3
/* 8E038 8008D438 3C18800F */  lui        $t8, %hi(D_800EF5A8)
/* 8E03C 8008D43C 030FC021 */  addu       $t8, $t8, $t7
/* 8E040 8008D440 8F18F5A8 */  lw         $t8, %lo(D_800EF5A8)($t8)
/* 8E044 8008D444 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8E048 8008D448 AFA40018 */  sw         $a0, 0x18($sp)
/* 8E04C 8008D44C 33190040 */  andi       $t9, $t8, 0x40
/* 8E050 8008D450 01C02025 */  or         $a0, $t6, $zero
/* 8E054 8008D454 13200005 */  beqz       $t9, .L8008D46C
/* 8E058 8008D458 AFBF0014 */   sw        $ra, 0x14($sp)
/* 8E05C 8008D45C 0C02342A */  jal        func_8008D0A8
/* 8E060 8008D460 00000000 */   nop
/* 8E064 8008D464 10000002 */  b          .L8008D470
/* 8E068 8008D468 24020001 */   addiu     $v0, $zero, 1
.L8008D46C:
/* 8E06C 8008D46C 00001025 */  or         $v0, $zero, $zero
.L8008D470:
/* 8E070 8008D470 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8E074 8008D474 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8E078 8008D478 03E00008 */  jr         $ra
/* 8E07C 8008D47C 00000000 */   nop

glabel func_8008D480
/* 8E080 8008D480 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8E084 8008D484 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8E088 8008D488 AFA40018 */  sw         $a0, 0x18($sp)
/* 8E08C 8008D48C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8E090 8008D490 01C02025 */  or         $a0, $t6, $zero
/* 8E094 8008D494 0C0234E7 */  jal        func_8008D39C
/* 8E098 8008D498 A7AE001A */   sh        $t6, 0x1a($sp)
/* 8E09C 8008D49C 97A4001A */  lhu        $a0, 0x1a($sp)
/* 8E0A0 8008D4A0 3C18800F */  lui        $t8, 0x800f
/* 8E0A4 8008D4A4 00047880 */  sll        $t7, $a0, 2
/* 8E0A8 8008D4A8 01E47823 */  subu       $t7, $t7, $a0
/* 8E0AC 8008D4AC 000F7880 */  sll        $t7, $t7, 2
/* 8E0B0 8008D4B0 01E47821 */  addu       $t7, $t7, $a0
/* 8E0B4 8008D4B4 000F7880 */  sll        $t7, $t7, 2
/* 8E0B8 8008D4B8 01E47823 */  subu       $t7, $t7, $a0
/* 8E0BC 8008D4BC 000F78C0 */  sll        $t7, $t7, 3
/* 8E0C0 8008D4C0 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 8E0C4 8008D4C4 01F81021 */  addu       $v0, $t7, $t8
/* 8E0C8 8008D4C8 8C590188 */  lw         $t9, 0x188($v0)
/* 8E0CC 8008D4CC 00000000 */  nop
/* 8E0D0 8008D4D0 0721000A */  bgez       $t9, .L8008D4FC
/* 8E0D4 8008D4D4 00000000 */   nop
/* 8E0D8 8008D4D8 8C480098 */  lw         $t0, 0x98($v0)
/* 8E0DC 8008D4DC 00000000 */  nop
/* 8E0E0 8008D4E0 31090020 */  andi       $t1, $t0, 0x20
/* 8E0E4 8008D4E4 11200006 */  beqz       $t1, .L8008D500
/* 8E0E8 8008D4E8 00001025 */   or        $v0, $zero, $zero
/* 8E0EC 8008D4EC 0C0233F9 */  jal        func_8008CFE4
/* 8E0F0 8008D4F0 00000000 */   nop
/* 8E0F4 8008D4F4 10000002 */  b          .L8008D500
/* 8E0F8 8008D4F8 24020001 */   addiu     $v0, $zero, 1
.L8008D4FC:
/* 8E0FC 8008D4FC 00001025 */  or         $v0, $zero, $zero
.L8008D500:
/* 8E100 8008D500 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8E104 8008D504 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8E108 8008D508 03E00008 */  jr         $ra
/* 8E10C 8008D50C 00000000 */   nop

glabel func_8008D510
/* 8E110 8008D510 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8E114 8008D514 000E7880 */  sll        $t7, $t6, 2
/* 8E118 8008D518 01EE7823 */  subu       $t7, $t7, $t6
/* 8E11C 8008D51C 000F7880 */  sll        $t7, $t7, 2
/* 8E120 8008D520 01EE7821 */  addu       $t7, $t7, $t6
/* 8E124 8008D524 000F7880 */  sll        $t7, $t7, 2
/* 8E128 8008D528 01EE7823 */  subu       $t7, $t7, $t6
/* 8E12C 8008D52C 3C18800F */  lui        $t8, %hi(gActors)
/* 8E130 8008D530 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 8E134 8008D534 000F78C0 */  sll        $t7, $t7, 3
/* 8E138 8008D538 01F81021 */  addu       $v0, $t7, $t8
/* 8E13C 8008D53C 4459F800 */  cfc1       $t9, $31
/* 8E140 8008D540 24030001 */  addiu      $v1, $zero, 1
/* 8E144 8008D544 44C3F800 */  ctc1       $v1, $31
/* 8E148 8008D548 C4440110 */  lwc1       $f4, 0x110($v0)
/* 8E14C 8008D54C AFA40000 */  sw         $a0, ($sp)
/* 8E150 8008D550 460021A4 */  cvt.w.s    $f6, $f4
/* 8E154 8008D554 3C014F00 */  lui        $at, 0x4f00
/* 8E158 8008D558 4443F800 */  cfc1       $v1, $31
/* 8E15C 8008D55C 00000000 */  nop
/* 8E160 8008D560 30630078 */  andi       $v1, $v1, 0x78
/* 8E164 8008D564 10600012 */  beqz       $v1, .L8008D5B0
/* 8E168 8008D568 00000000 */   nop
/* 8E16C 8008D56C 44813000 */  mtc1       $at, $f6
/* 8E170 8008D570 24030001 */  addiu      $v1, $zero, 1
/* 8E174 8008D574 46062181 */  sub.s      $f6, $f4, $f6
/* 8E178 8008D578 3C018000 */  lui        $at, 0x8000
/* 8E17C 8008D57C 44C3F800 */  ctc1       $v1, $31
/* 8E180 8008D580 00000000 */  nop
/* 8E184 8008D584 460031A4 */  cvt.w.s    $f6, $f6
/* 8E188 8008D588 4443F800 */  cfc1       $v1, $31
/* 8E18C 8008D58C 00000000 */  nop
/* 8E190 8008D590 30630078 */  andi       $v1, $v1, 0x78
/* 8E194 8008D594 14600004 */  bnez       $v1, .L8008D5A8
/* 8E198 8008D598 00000000 */   nop
/* 8E19C 8008D59C 44033000 */  mfc1       $v1, $f6
/* 8E1A0 8008D5A0 10000007 */  b          .L8008D5C0
/* 8E1A4 8008D5A4 00611825 */   or        $v1, $v1, $at
.L8008D5A8:
/* 8E1A8 8008D5A8 10000005 */  b          .L8008D5C0
/* 8E1AC 8008D5AC 2403FFFF */   addiu     $v1, $zero, -1
.L8008D5B0:
/* 8E1B0 8008D5B0 44033000 */  mfc1       $v1, $f6
/* 8E1B4 8008D5B4 00000000 */  nop
/* 8E1B8 8008D5B8 0460FFFB */  bltz       $v1, .L8008D5A8
/* 8E1BC 8008D5BC 00000000 */   nop
.L8008D5C0:
/* 8E1C0 8008D5C0 3068FFFF */  andi       $t0, $v1, 0xffff
/* 8E1C4 8008D5C4 31090010 */  andi       $t1, $t0, 0x10
/* 8E1C8 8008D5C8 44D9F800 */  ctc1       $t9, $31
/* 8E1CC 8008D5CC 11200026 */  beqz       $t1, .L8008D668
/* 8E1D0 8008D5D0 01001825 */   or        $v1, $t0, $zero
/* 8E1D4 8008D5D4 444CF800 */  cfc1       $t4, $31
/* 8E1D8 8008D5D8 24030001 */  addiu      $v1, $zero, 1
/* 8E1DC 8008D5DC 44C3F800 */  ctc1       $v1, $31
/* 8E1E0 8008D5E0 C4480110 */  lwc1       $f8, 0x110($v0)
/* 8E1E4 8008D5E4 8C4A0080 */  lw         $t2, 0x80($v0)
/* 8E1E8 8008D5E8 460042A4 */  cvt.w.s    $f10, $f8
/* 8E1EC 8008D5EC 3C010002 */  lui        $at, 2
/* 8E1F0 8008D5F0 4443F800 */  cfc1       $v1, $31
/* 8E1F4 8008D5F4 01415825 */  or         $t3, $t2, $at
/* 8E1F8 8008D5F8 30630078 */  andi       $v1, $v1, 0x78
/* 8E1FC 8008D5FC 10600013 */  beqz       $v1, .L8008D64C
/* 8E200 8008D600 AC4B0080 */   sw        $t3, 0x80($v0)
/* 8E204 8008D604 3C014F00 */  lui        $at, 0x4f00
/* 8E208 8008D608 44815000 */  mtc1       $at, $f10
/* 8E20C 8008D60C 24030001 */  addiu      $v1, $zero, 1
/* 8E210 8008D610 460A4281 */  sub.s      $f10, $f8, $f10
/* 8E214 8008D614 3C018000 */  lui        $at, 0x8000
/* 8E218 8008D618 44C3F800 */  ctc1       $v1, $31
/* 8E21C 8008D61C 00000000 */  nop
/* 8E220 8008D620 460052A4 */  cvt.w.s    $f10, $f10
/* 8E224 8008D624 4443F800 */  cfc1       $v1, $31
/* 8E228 8008D628 00000000 */  nop
/* 8E22C 8008D62C 30630078 */  andi       $v1, $v1, 0x78
/* 8E230 8008D630 14600004 */  bnez       $v1, .L8008D644
/* 8E234 8008D634 00000000 */   nop
/* 8E238 8008D638 44035000 */  mfc1       $v1, $f10
/* 8E23C 8008D63C 10000007 */  b          .L8008D65C
/* 8E240 8008D640 00611825 */   or        $v1, $v1, $at
.L8008D644:
/* 8E244 8008D644 10000005 */  b          .L8008D65C
/* 8E248 8008D648 2403FFFF */   addiu     $v1, $zero, -1
.L8008D64C:
/* 8E24C 8008D64C 44035000 */  mfc1       $v1, $f10
/* 8E250 8008D650 00000000 */  nop
/* 8E254 8008D654 0460FFFB */  bltz       $v1, .L8008D644
/* 8E258 8008D658 00000000 */   nop
.L8008D65C:
/* 8E25C 8008D65C 44CCF800 */  ctc1       $t4, $31
/* 8E260 8008D660 306DFFFF */  andi       $t5, $v1, 0xffff
/* 8E264 8008D664 01A01825 */  or         $v1, $t5, $zero
.L8008D668:
/* 8E268 8008D668 306E0020 */  andi       $t6, $v1, 0x20
/* 8E26C 8008D66C 11C00026 */  beqz       $t6, .L8008D708
/* 8E270 8008D670 30690040 */   andi      $t1, $v1, 0x40
/* 8E274 8008D674 4459F800 */  cfc1       $t9, $31
/* 8E278 8008D678 24030001 */  addiu      $v1, $zero, 1
/* 8E27C 8008D67C 44C3F800 */  ctc1       $v1, $31
/* 8E280 8008D680 C4500110 */  lwc1       $f16, 0x110($v0)
/* 8E284 8008D684 8C4F0080 */  lw         $t7, 0x80($v0)
/* 8E288 8008D688 460084A4 */  cvt.w.s    $f18, $f16
/* 8E28C 8008D68C 35F81100 */  ori        $t8, $t7, 0x1100
/* 8E290 8008D690 4443F800 */  cfc1       $v1, $31
/* 8E294 8008D694 AC580080 */  sw         $t8, 0x80($v0)
/* 8E298 8008D698 30630078 */  andi       $v1, $v1, 0x78
/* 8E29C 8008D69C 10600012 */  beqz       $v1, .L8008D6E8
/* 8E2A0 8008D6A0 3C014F00 */   lui       $at, 0x4f00
/* 8E2A4 8008D6A4 44819000 */  mtc1       $at, $f18
/* 8E2A8 8008D6A8 24030001 */  addiu      $v1, $zero, 1
/* 8E2AC 8008D6AC 46128481 */  sub.s      $f18, $f16, $f18
/* 8E2B0 8008D6B0 3C018000 */  lui        $at, 0x8000
/* 8E2B4 8008D6B4 44C3F800 */  ctc1       $v1, $31
/* 8E2B8 8008D6B8 00000000 */  nop
/* 8E2BC 8008D6BC 460094A4 */  cvt.w.s    $f18, $f18
/* 8E2C0 8008D6C0 4443F800 */  cfc1       $v1, $31
/* 8E2C4 8008D6C4 00000000 */  nop
/* 8E2C8 8008D6C8 30630078 */  andi       $v1, $v1, 0x78
/* 8E2CC 8008D6CC 14600004 */  bnez       $v1, .L8008D6E0
/* 8E2D0 8008D6D0 00000000 */   nop
/* 8E2D4 8008D6D4 44039000 */  mfc1       $v1, $f18
/* 8E2D8 8008D6D8 10000007 */  b          .L8008D6F8
/* 8E2DC 8008D6DC 00611825 */   or        $v1, $v1, $at
.L8008D6E0:
/* 8E2E0 8008D6E0 10000005 */  b          .L8008D6F8
/* 8E2E4 8008D6E4 2403FFFF */   addiu     $v1, $zero, -1
.L8008D6E8:
/* 8E2E8 8008D6E8 44039000 */  mfc1       $v1, $f18
/* 8E2EC 8008D6EC 00000000 */  nop
/* 8E2F0 8008D6F0 0460FFFB */  bltz       $v1, .L8008D6E0
/* 8E2F4 8008D6F4 00000000 */   nop
.L8008D6F8:
/* 8E2F8 8008D6F8 44D9F800 */  ctc1       $t9, $31
/* 8E2FC 8008D6FC 3068FFFF */  andi       $t0, $v1, 0xffff
/* 8E300 8008D700 01001825 */  or         $v1, $t0, $zero
/* 8E304 8008D704 30690040 */  andi       $t1, $v1, 0x40
.L8008D708:
/* 8E308 8008D708 11200005 */  beqz       $t1, .L8008D720
/* 8E30C 8008D70C 00000000 */   nop
/* 8E310 8008D710 8C4A0080 */  lw         $t2, 0x80($v0)
/* 8E314 8008D714 00000000 */  nop
/* 8E318 8008D718 354B1400 */  ori        $t3, $t2, 0x1400
/* 8E31C 8008D71C AC4B0080 */  sw         $t3, 0x80($v0)
.L8008D720:
/* 8E320 8008D720 03E00008 */  jr         $ra
/* 8E324 8008D724 00000000 */   nop

glabel func_8008D728
/* 8E328 8008D728 03E00008 */  jr         $ra
/* 8E32C 8008D72C AFA40000 */   sw        $a0, ($sp)

glabel func_8008D730
/* 8E330 8008D730 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8E334 8008D734 000E7880 */  sll        $t7, $t6, 2
/* 8E338 8008D738 01EE7823 */  subu       $t7, $t7, $t6
/* 8E33C 8008D73C 000F7880 */  sll        $t7, $t7, 2
/* 8E340 8008D740 01EE7821 */  addu       $t7, $t7, $t6
/* 8E344 8008D744 000F7880 */  sll        $t7, $t7, 2
/* 8E348 8008D748 01EE7823 */  subu       $t7, $t7, $t6
/* 8E34C 8008D74C 3C18800F */  lui        $t8, %hi(gActors)
/* 8E350 8008D750 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 8E354 8008D754 000F78C0 */  sll        $t7, $t7, 3
/* 8E358 8008D758 01F81021 */  addu       $v0, $t7, $t8
/* 8E35C 8008D75C 444AF800 */  cfc1       $t2, $31
/* 8E360 8008D760 24030001 */  addiu      $v1, $zero, 1
/* 8E364 8008D764 44C3F800 */  ctc1       $v1, $31
/* 8E368 8008D768 C4440110 */  lwc1       $f4, 0x110($v0)
/* 8E36C 8008D76C 24190010 */  addiu      $t9, $zero, 0x10
/* 8E370 8008D770 460021A4 */  cvt.w.s    $f6, $f4
/* 8E374 8008D774 34088000 */  ori        $t0, $zero, 0x8000
/* 8E378 8008D778 4443F800 */  cfc1       $v1, $31
/* 8E37C 8008D77C 24090002 */  addiu      $t1, $zero, 2
/* 8E380 8008D780 30630078 */  andi       $v1, $v1, 0x78
/* 8E384 8008D784 AFA40000 */  sw         $a0, ($sp)
/* 8E388 8008D788 A45900D0 */  sh         $t9, 0xd0($v0)
/* 8E38C 8008D78C A4480094 */  sh         $t0, 0x94($v0)
/* 8E390 8008D790 10600013 */  beqz       $v1, .L8008D7E0
/* 8E394 8008D794 AC490080 */   sw        $t1, 0x80($v0)
/* 8E398 8008D798 3C014F00 */  lui        $at, 0x4f00
/* 8E39C 8008D79C 44813000 */  mtc1       $at, $f6
/* 8E3A0 8008D7A0 24030001 */  addiu      $v1, $zero, 1
/* 8E3A4 8008D7A4 46062181 */  sub.s      $f6, $f4, $f6
/* 8E3A8 8008D7A8 3C018000 */  lui        $at, 0x8000
/* 8E3AC 8008D7AC 44C3F800 */  ctc1       $v1, $31
/* 8E3B0 8008D7B0 00000000 */  nop
/* 8E3B4 8008D7B4 460031A4 */  cvt.w.s    $f6, $f6
/* 8E3B8 8008D7B8 4443F800 */  cfc1       $v1, $31
/* 8E3BC 8008D7BC 00000000 */  nop
/* 8E3C0 8008D7C0 30630078 */  andi       $v1, $v1, 0x78
/* 8E3C4 8008D7C4 14600004 */  bnez       $v1, .L8008D7D8
/* 8E3C8 8008D7C8 00000000 */   nop
/* 8E3CC 8008D7CC 44033000 */  mfc1       $v1, $f6
/* 8E3D0 8008D7D0 10000007 */  b          .L8008D7F0
/* 8E3D4 8008D7D4 00611825 */   or        $v1, $v1, $at
.L8008D7D8:
/* 8E3D8 8008D7D8 10000005 */  b          .L8008D7F0
/* 8E3DC 8008D7DC 2403FFFF */   addiu     $v1, $zero, -1
.L8008D7E0:
/* 8E3E0 8008D7E0 44033000 */  mfc1       $v1, $f6
/* 8E3E4 8008D7E4 00000000 */  nop
/* 8E3E8 8008D7E8 0460FFFB */  bltz       $v1, .L8008D7D8
/* 8E3EC 8008D7EC 00000000 */   nop
.L8008D7F0:
/* 8E3F0 8008D7F0 306BFFFF */  andi       $t3, $v1, 0xffff
/* 8E3F4 8008D7F4 316C0010 */  andi       $t4, $t3, 0x10
/* 8E3F8 8008D7F8 44CAF800 */  ctc1       $t2, $31
/* 8E3FC 8008D7FC 11800026 */  beqz       $t4, .L8008D898
/* 8E400 8008D800 01601825 */   or        $v1, $t3, $zero
/* 8E404 8008D804 444FF800 */  cfc1       $t7, $31
/* 8E408 8008D808 24030001 */  addiu      $v1, $zero, 1
/* 8E40C 8008D80C 44C3F800 */  ctc1       $v1, $31
/* 8E410 8008D810 C4480110 */  lwc1       $f8, 0x110($v0)
/* 8E414 8008D814 8C4D0080 */  lw         $t5, 0x80($v0)
/* 8E418 8008D818 460042A4 */  cvt.w.s    $f10, $f8
/* 8E41C 8008D81C 3C010002 */  lui        $at, 2
/* 8E420 8008D820 4443F800 */  cfc1       $v1, $31
/* 8E424 8008D824 01A17025 */  or         $t6, $t5, $at
/* 8E428 8008D828 30630078 */  andi       $v1, $v1, 0x78
/* 8E42C 8008D82C 10600013 */  beqz       $v1, .L8008D87C
/* 8E430 8008D830 AC4E0080 */   sw        $t6, 0x80($v0)
/* 8E434 8008D834 3C014F00 */  lui        $at, 0x4f00
/* 8E438 8008D838 44815000 */  mtc1       $at, $f10
/* 8E43C 8008D83C 24030001 */  addiu      $v1, $zero, 1
/* 8E440 8008D840 460A4281 */  sub.s      $f10, $f8, $f10
/* 8E444 8008D844 3C018000 */  lui        $at, 0x8000
/* 8E448 8008D848 44C3F800 */  ctc1       $v1, $31
/* 8E44C 8008D84C 00000000 */  nop
/* 8E450 8008D850 460052A4 */  cvt.w.s    $f10, $f10
/* 8E454 8008D854 4443F800 */  cfc1       $v1, $31
/* 8E458 8008D858 00000000 */  nop
/* 8E45C 8008D85C 30630078 */  andi       $v1, $v1, 0x78
/* 8E460 8008D860 14600004 */  bnez       $v1, .L8008D874
/* 8E464 8008D864 00000000 */   nop
/* 8E468 8008D868 44035000 */  mfc1       $v1, $f10
/* 8E46C 8008D86C 10000007 */  b          .L8008D88C
/* 8E470 8008D870 00611825 */   or        $v1, $v1, $at
.L8008D874:
/* 8E474 8008D874 10000005 */  b          .L8008D88C
/* 8E478 8008D878 2403FFFF */   addiu     $v1, $zero, -1
.L8008D87C:
/* 8E47C 8008D87C 44035000 */  mfc1       $v1, $f10
/* 8E480 8008D880 00000000 */  nop
/* 8E484 8008D884 0460FFFB */  bltz       $v1, .L8008D874
/* 8E488 8008D888 00000000 */   nop
.L8008D88C:
/* 8E48C 8008D88C 44CFF800 */  ctc1       $t7, $31
/* 8E490 8008D890 3078FFFF */  andi       $t8, $v1, 0xffff
/* 8E494 8008D894 03001825 */  or         $v1, $t8, $zero
.L8008D898:
/* 8E498 8008D898 30790020 */  andi       $t9, $v1, 0x20
/* 8E49C 8008D89C 13200026 */  beqz       $t9, .L8008D938
/* 8E4A0 8008D8A0 306C0040 */   andi      $t4, $v1, 0x40
/* 8E4A4 8008D8A4 444AF800 */  cfc1       $t2, $31
/* 8E4A8 8008D8A8 24030001 */  addiu      $v1, $zero, 1
/* 8E4AC 8008D8AC 44C3F800 */  ctc1       $v1, $31
/* 8E4B0 8008D8B0 C4500110 */  lwc1       $f16, 0x110($v0)
/* 8E4B4 8008D8B4 8C480080 */  lw         $t0, 0x80($v0)
/* 8E4B8 8008D8B8 460084A4 */  cvt.w.s    $f18, $f16
/* 8E4BC 8008D8BC 35091100 */  ori        $t1, $t0, 0x1100
/* 8E4C0 8008D8C0 4443F800 */  cfc1       $v1, $31
/* 8E4C4 8008D8C4 AC490080 */  sw         $t1, 0x80($v0)
/* 8E4C8 8008D8C8 30630078 */  andi       $v1, $v1, 0x78
/* 8E4CC 8008D8CC 10600012 */  beqz       $v1, .L8008D918
/* 8E4D0 8008D8D0 3C014F00 */   lui       $at, 0x4f00
/* 8E4D4 8008D8D4 44819000 */  mtc1       $at, $f18
/* 8E4D8 8008D8D8 24030001 */  addiu      $v1, $zero, 1
/* 8E4DC 8008D8DC 46128481 */  sub.s      $f18, $f16, $f18
/* 8E4E0 8008D8E0 3C018000 */  lui        $at, 0x8000
/* 8E4E4 8008D8E4 44C3F800 */  ctc1       $v1, $31
/* 8E4E8 8008D8E8 00000000 */  nop
/* 8E4EC 8008D8EC 460094A4 */  cvt.w.s    $f18, $f18
/* 8E4F0 8008D8F0 4443F800 */  cfc1       $v1, $31
/* 8E4F4 8008D8F4 00000000 */  nop
/* 8E4F8 8008D8F8 30630078 */  andi       $v1, $v1, 0x78
/* 8E4FC 8008D8FC 14600004 */  bnez       $v1, .L8008D910
/* 8E500 8008D900 00000000 */   nop
/* 8E504 8008D904 44039000 */  mfc1       $v1, $f18
/* 8E508 8008D908 10000007 */  b          .L8008D928
/* 8E50C 8008D90C 00611825 */   or        $v1, $v1, $at
.L8008D910:
/* 8E510 8008D910 10000005 */  b          .L8008D928
/* 8E514 8008D914 2403FFFF */   addiu     $v1, $zero, -1
.L8008D918:
/* 8E518 8008D918 44039000 */  mfc1       $v1, $f18
/* 8E51C 8008D91C 00000000 */  nop
/* 8E520 8008D920 0460FFFB */  bltz       $v1, .L8008D910
/* 8E524 8008D924 00000000 */   nop
.L8008D928:
/* 8E528 8008D928 44CAF800 */  ctc1       $t2, $31
/* 8E52C 8008D92C 306BFFFF */  andi       $t3, $v1, 0xffff
/* 8E530 8008D930 01601825 */  or         $v1, $t3, $zero
/* 8E534 8008D934 306C0040 */  andi       $t4, $v1, 0x40
.L8008D938:
/* 8E538 8008D938 11800005 */  beqz       $t4, .L8008D950
/* 8E53C 8008D93C 00000000 */   nop
/* 8E540 8008D940 8C4D0080 */  lw         $t5, 0x80($v0)
/* 8E544 8008D944 00000000 */  nop
/* 8E548 8008D948 35AE1400 */  ori        $t6, $t5, 0x1400
/* 8E54C 8008D94C AC4E0080 */  sw         $t6, 0x80($v0)
.L8008D950:
/* 8E550 8008D950 03E00008 */  jr         $ra
/* 8E554 8008D954 00000000 */   nop

glabel func_8008D958
/* 8E558 8008D958 03E00008 */  jr         $ra
/* 8E55C 8008D95C AFA40000 */   sw        $a0, ($sp)

glabel func_8008D960
/* 8E560 8008D960 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8E564 8008D964 AFA40018 */  sw         $a0, 0x18($sp)
/* 8E568 8008D968 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8E56C 8008D96C 97A4001A */  lhu        $a0, 0x1a($sp)
/* 8E570 8008D970 0C023506 */  jal        func_8008D418
/* 8E574 8008D974 00000000 */   nop
/* 8E578 8008D978 14400005 */  bnez       $v0, .L8008D990
/* 8E57C 8008D97C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 8E580 8008D980 97A4001A */  lhu        $a0, 0x1a($sp)
/* 8E584 8008D984 0C0233C4 */  jal        func_8008CF10
/* 8E588 8008D988 00000000 */   nop
/* 8E58C 8008D98C 8FBF0014 */  lw         $ra, 0x14($sp)
.L8008D990:
/* 8E590 8008D990 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8E594 8008D994 03E00008 */  jr         $ra
/* 8E598 8008D998 00000000 */   nop

glabel func_8008D99C
/* 8E59C 8008D99C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8E5A0 8008D9A0 AFA40018 */  sw         $a0, 0x18($sp)
/* 8E5A4 8008D9A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8E5A8 8008D9A8 97A4001A */  lhu        $a0, 0x1a($sp)
/* 8E5AC 8008D9AC 0C023506 */  jal        func_8008D418
/* 8E5B0 8008D9B0 00000000 */   nop
/* 8E5B4 8008D9B4 14400018 */  bnez       $v0, .L8008DA18
/* 8E5B8 8008D9B8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 8E5BC 8008D9BC 97A4001A */  lhu        $a0, 0x1a($sp)
/* 8E5C0 8008D9C0 0C0233C4 */  jal        func_8008CF10
/* 8E5C4 8008D9C4 00000000 */   nop
/* 8E5C8 8008D9C8 97AE001A */  lhu        $t6, 0x1a($sp)
/* 8E5CC 8008D9CC 3C01800F */  lui        $at, 0x800f
/* 8E5D0 8008D9D0 000E7880 */  sll        $t7, $t6, 2
/* 8E5D4 8008D9D4 01EE7823 */  subu       $t7, $t7, $t6
/* 8E5D8 8008D9D8 000F7880 */  sll        $t7, $t7, 2
/* 8E5DC 8008D9DC 01EE7821 */  addu       $t7, $t7, $t6
/* 8E5E0 8008D9E0 000F7880 */  sll        $t7, $t7, 2
/* 8E5E4 8008D9E4 01EE7823 */  subu       $t7, $t7, $t6
/* 8E5E8 8008D9E8 000F78C0 */  sll        $t7, $t7, 3
/* 8E5EC 8008D9EC 002F0821 */  addu       $at, $at, $t7
/* 8E5F0 8008D9F0 C426F628 */  lwc1       $f6, -0x9d8($at)
/* 8E5F4 8008D9F4 44802000 */  mtc1       $zero, $f4
/* 8E5F8 8008D9F8 00000000 */  nop
/* 8E5FC 8008D9FC 46062032 */  c.eq.s     $f4, $f6
/* 8E600 8008DA00 00000000 */  nop
/* 8E604 8008DA04 45000004 */  bc1f       .L8008DA18
/* 8E608 8008DA08 8FBF0014 */   lw        $ra, 0x14($sp)
/* 8E60C 8008DA0C 0C0233D8 */  jal        func_8008CF60
/* 8E610 8008DA10 01C02025 */   or        $a0, $t6, $zero
/* 8E614 8008DA14 8FBF0014 */  lw         $ra, 0x14($sp)
.L8008DA18:
/* 8E618 8008DA18 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8E61C 8008DA1C 03E00008 */  jr         $ra
/* 8E620 8008DA20 00000000 */   nop

glabel func_8008DA24
/* 8E624 8008DA24 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8E628 8008DA28 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8E62C 8008DA2C AFA40018 */  sw         $a0, 0x18($sp)
/* 8E630 8008DA30 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8E634 8008DA34 0C023520 */  jal        func_8008D480
/* 8E638 8008DA38 01C02025 */   or        $a0, $t6, $zero
/* 8E63C 8008DA3C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8E640 8008DA40 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8E644 8008DA44 03E00008 */  jr         $ra
/* 8E648 8008DA48 00000000 */   nop

glabel func_8008DA4C
/* 8E64C 8008DA4C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 8E650 8008DA50 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8E654 8008DA54 AFA40028 */  sw         $a0, 0x28($sp)
/* 8E658 8008DA58 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8E65C 8008DA5C 01C02025 */  or         $a0, $t6, $zero
/* 8E660 8008DA60 0C0234E7 */  jal        func_8008D39C
/* 8E664 8008DA64 A7AE002A */   sh        $t6, 0x2a($sp)
/* 8E668 8008DA68 3C02800C */  lui        $v0, %hi(gButtonHold)
/* 8E66C 8008DA6C 3C0F800C */  lui        $t7, %hi(gButton_DRight)
/* 8E670 8008DA70 95EFE510 */  lhu        $t7, %lo(gButton_DRight)($t7)
/* 8E674 8008DA74 9442E4F8 */  lhu        $v0, %lo(gButtonHold)($v0)
/* 8E678 8008DA78 97A4002A */  lhu        $a0, 0x2a($sp)
/* 8E67C 8008DA7C 004FC024 */  and        $t8, $v0, $t7
/* 8E680 8008DA80 13000014 */  beqz       $t8, .L8008DAD4
/* 8E684 8008DA84 0004C880 */   sll       $t9, $a0, 2
/* 8E688 8008DA88 0324C823 */  subu       $t9, $t9, $a0
/* 8E68C 8008DA8C 0019C880 */  sll        $t9, $t9, 2
/* 8E690 8008DA90 0324C821 */  addu       $t9, $t9, $a0
/* 8E694 8008DA94 0019C880 */  sll        $t9, $t9, 2
/* 8E698 8008DA98 0324C823 */  subu       $t9, $t9, $a0
/* 8E69C 8008DA9C 3C08800F */  lui        $t0, %hi(gActors)
/* 8E6A0 8008DAA0 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 8E6A4 8008DAA4 0019C8C0 */  sll        $t9, $t9, 3
/* 8E6A8 8008DAA8 03281821 */  addu       $v1, $t9, $t0
/* 8E6AC 8008DAAC 8C6900EC */  lw         $t1, 0xec($v1)
/* 8E6B0 8008DAB0 3C050001 */  lui        $a1, 1
/* 8E6B4 8008DAB4 05210007 */  bgez       $t1, .L8008DAD4
/* 8E6B8 8008DAB8 24062000 */   addiu     $a2, $zero, 0x2000
/* 8E6BC 8008DABC 8C640184 */  lw         $a0, 0x184($v1)
/* 8E6C0 8008DAC0 0C00A607 */  jal        func_8002981C
/* 8E6C4 8008DAC4 AFA3001C */   sw        $v1, 0x1c($sp)
/* 8E6C8 8008DAC8 8FA3001C */  lw         $v1, 0x1c($sp)
/* 8E6CC 8008DACC 10000019 */  b          .L8008DB34
/* 8E6D0 8008DAD0 AC620184 */   sw        $v0, 0x184($v1)
.L8008DAD4:
/* 8E6D4 8008DAD4 00045080 */  sll        $t2, $a0, 2
/* 8E6D8 8008DAD8 01445023 */  subu       $t2, $t2, $a0
/* 8E6DC 8008DADC 000A5080 */  sll        $t2, $t2, 2
/* 8E6E0 8008DAE0 01445021 */  addu       $t2, $t2, $a0
/* 8E6E4 8008DAE4 3C0C800C */  lui        $t4, %hi(gButton_DLeft)
/* 8E6E8 8008DAE8 958CE50C */  lhu        $t4, %lo(gButton_DLeft)($t4)
/* 8E6EC 8008DAEC 000A5080 */  sll        $t2, $t2, 2
/* 8E6F0 8008DAF0 01445023 */  subu       $t2, $t2, $a0
/* 8E6F4 8008DAF4 3C0B800F */  lui        $t3, %hi(gActors)
/* 8E6F8 8008DAF8 256BF510 */  addiu      $t3, $t3, %lo(gActors)
/* 8E6FC 8008DAFC 000A50C0 */  sll        $t2, $t2, 3
/* 8E700 8008DB00 004C6824 */  and        $t5, $v0, $t4
/* 8E704 8008DB04 11A0000B */  beqz       $t5, .L8008DB34
/* 8E708 8008DB08 014B1821 */   addu      $v1, $t2, $t3
/* 8E70C 8008DB0C 8C6E00EC */  lw         $t6, 0xec($v1)
/* 8E710 8008DB10 3C05FFFF */  lui        $a1, 0xffff
/* 8E714 8008DB14 19C00007 */  blez       $t6, .L8008DB34
/* 8E718 8008DB18 24062000 */   addiu     $a2, $zero, 0x2000
/* 8E71C 8008DB1C 8C640184 */  lw         $a0, 0x184($v1)
/* 8E720 8008DB20 0C00A607 */  jal        func_8002981C
/* 8E724 8008DB24 AFA3001C */   sw        $v1, 0x1c($sp)
/* 8E728 8008DB28 8FA3001C */  lw         $v1, 0x1c($sp)
/* 8E72C 8008DB2C 00000000 */  nop
/* 8E730 8008DB30 AC620184 */  sw         $v0, 0x184($v1)
.L8008DB34:
/* 8E734 8008DB34 8C6F0188 */  lw         $t7, 0x188($v1)
/* 8E738 8008DB38 00000000 */  nop
/* 8E73C 8008DB3C 05E10011 */  bgez       $t7, .L8008DB84
/* 8E740 8008DB40 00000000 */   nop
/* 8E744 8008DB44 8C780098 */  lw         $t8, 0x98($v1)
/* 8E748 8008DB48 00000000 */  nop
/* 8E74C 8008DB4C 33190020 */  andi       $t9, $t8, 0x20
/* 8E750 8008DB50 1320000C */  beqz       $t9, .L8008DB84
/* 8E754 8008DB54 00000000 */   nop
/* 8E758 8008DB58 8C620080 */  lw         $v0, 0x80($v1)
/* 8E75C 8008DB5C 3C050001 */  lui        $a1, 1
/* 8E760 8008DB60 00024380 */  sll        $t0, $v0, 0xe
/* 8E764 8008DB64 05010007 */  bgez       $t0, .L8008DB84
/* 8E768 8008DB68 00454825 */   or        $t1, $v0, $a1
/* 8E76C 8008DB6C 3C01FFFD */  lui        $at, 0xfffd
/* 8E770 8008DB70 3421FFFF */  ori        $at, $at, 0xffff
/* 8E774 8008DB74 AC690080 */  sw         $t1, 0x80($v1)
/* 8E778 8008DB78 01215824 */  and        $t3, $t1, $at
/* 8E77C 8008DB7C AC600188 */  sw         $zero, 0x188($v1)
/* 8E780 8008DB80 AC6B0080 */  sw         $t3, 0x80($v1)
.L8008DB84:
/* 8E784 8008DB84 946400D0 */  lhu        $a0, 0xd0($v1)
/* 8E788 8008DB88 240100A0 */  addiu      $at, $zero, 0xa0
/* 8E78C 8008DB8C 3C050001 */  lui        $a1, 1
/* 8E790 8008DB90 10810008 */  beq        $a0, $at, .L8008DBB4
/* 8E794 8008DB94 00801025 */   or        $v0, $a0, $zero
/* 8E798 8008DB98 240100A1 */  addiu      $at, $zero, 0xa1
/* 8E79C 8008DB9C 10410012 */  beq        $v0, $at, .L8008DBE8
/* 8E7A0 8008DBA0 240100A2 */   addiu     $at, $zero, 0xa2
/* 8E7A4 8008DBA4 10410027 */  beq        $v0, $at, .L8008DC44
/* 8E7A8 8008DBA8 00000000 */   nop
/* 8E7AC 8008DBAC 1000002D */  b          .L8008DC64
/* 8E7B0 8008DBB0 8FBF0014 */   lw        $ra, 0x14($sp)
.L8008DBB4:
/* 8E7B4 8008DBB4 44802000 */  mtc1       $zero, $f4
/* 8E7B8 8008DBB8 C4660118 */  lwc1       $f6, 0x118($v1)
/* 8E7BC 8008DBBC 3C0D800D */  lui        $t5, %hi(D_800D4AA4)
/* 8E7C0 8008DBC0 46062032 */  c.eq.s     $f4, $f6
/* 8E7C4 8008DBC4 248C0001 */  addiu      $t4, $a0, 1
/* 8E7C8 8008DBC8 45000025 */  bc1f       .L8008DC60
/* 8E7CC 8008DBCC 25AD4AA4 */   addiu     $t5, $t5, %lo(D_800D4AA4)
/* 8E7D0 8008DBD0 3C013F80 */  lui        $at, 0x3f80
/* 8E7D4 8008DBD4 44814000 */  mtc1       $at, $f8
/* 8E7D8 8008DBD8 A46C00D0 */  sh         $t4, 0xd0($v1)
/* 8E7DC 8008DBDC AC6D018C */  sw         $t5, 0x18c($v1)
/* 8E7E0 8008DBE0 1000001F */  b          .L8008DC60
/* 8E7E4 8008DBE4 E4680118 */   swc1      $f8, 0x118($v1)
.L8008DBE8:
/* 8E7E8 8008DBE8 44805000 */  mtc1       $zero, $f10
/* 8E7EC 8008DBEC C4700118 */  lwc1       $f16, 0x118($v1)
/* 8E7F0 8008DBF0 00000000 */  nop
/* 8E7F4 8008DBF4 46105032 */  c.eq.s     $f10, $f16
/* 8E7F8 8008DBF8 00000000 */  nop
/* 8E7FC 8008DBFC 45000019 */  bc1f       .L8008DC64
/* 8E800 8008DC00 8FBF0014 */   lw        $ra, 0x14($sp)
/* 8E804 8008DC04 8C6E0080 */  lw         $t6, 0x80($v1)
/* 8E808 8008DC08 24980001 */  addiu      $t8, $a0, 1
/* 8E80C 8008DC0C 01C57824 */  and        $t7, $t6, $a1
/* 8E810 8008DC10 11E00005 */  beqz       $t7, .L8008DC28
/* 8E814 8008DC14 3C19800D */   lui       $t9, 0x800d
/* 8E818 8008DC18 0C023300 */  jal        func_8008CC00
/* 8E81C 8008DC1C 00000000 */   nop
/* 8E820 8008DC20 10000010 */  b          .L8008DC64
/* 8E824 8008DC24 8FBF0014 */   lw        $ra, 0x14($sp)
.L8008DC28:
/* 8E828 8008DC28 3C013F80 */  lui        $at, 0x3f80
/* 8E82C 8008DC2C 44819000 */  mtc1       $at, $f18
/* 8E830 8008DC30 273944A8 */  addiu      $t9, $t9, 0x44a8
/* 8E834 8008DC34 A47800D0 */  sh         $t8, 0xd0($v1)
/* 8E838 8008DC38 AC79018C */  sw         $t9, 0x18c($v1)
/* 8E83C 8008DC3C 10000008 */  b          .L8008DC60
/* 8E840 8008DC40 E4720118 */   swc1      $f18, 0x118($v1)
.L8008DC44:
/* 8E844 8008DC44 8C680080 */  lw         $t0, 0x80($v1)
/* 8E848 8008DC48 00000000 */  nop
/* 8E84C 8008DC4C 01054824 */  and        $t1, $t0, $a1
/* 8E850 8008DC50 11200004 */  beqz       $t1, .L8008DC64
/* 8E854 8008DC54 8FBF0014 */   lw        $ra, 0x14($sp)
/* 8E858 8008DC58 0C023300 */  jal        func_8008CC00
/* 8E85C 8008DC5C 00000000 */   nop
.L8008DC60:
/* 8E860 8008DC60 8FBF0014 */  lw         $ra, 0x14($sp)
.L8008DC64:
/* 8E864 8008DC64 27BD0028 */  addiu      $sp, $sp, 0x28
/* 8E868 8008DC68 03E00008 */  jr         $ra
/* 8E86C 8008DC6C 00000000 */   nop

glabel func_8008DC70
/* 8E870 8008DC70 3C03800C */  lui        $v1, %hi(gGameState)
/* 8E874 8008DC74 2463E4F0 */  addiu      $v1, $v1, %lo(gGameState)
/* 8E878 8008DC78 946F0000 */  lhu        $t7, ($v1)
/* 8E87C 8008DC7C 24010006 */  addiu      $at, $zero, 6
/* 8E880 8008DC80 AFA40000 */  sw         $a0, ($sp)
/* 8E884 8008DC84 15E10014 */  bne        $t7, $at, .L8008DCD8
/* 8E888 8008DC88 308EFFFF */   andi      $t6, $a0, 0xffff
/* 8E88C 8008DC8C 000EC080 */  sll        $t8, $t6, 2
/* 8E890 8008DC90 030EC023 */  subu       $t8, $t8, $t6
/* 8E894 8008DC94 0018C080 */  sll        $t8, $t8, 2
/* 8E898 8008DC98 030EC021 */  addu       $t8, $t8, $t6
/* 8E89C 8008DC9C 0018C080 */  sll        $t8, $t8, 2
/* 8E8A0 8008DCA0 030EC023 */  subu       $t8, $t8, $t6
/* 8E8A4 8008DCA4 3C19800F */  lui        $t9, %hi(gActors)
/* 8E8A8 8008DCA8 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 8E8AC 8008DCAC 0018C0C0 */  sll        $t8, $t8, 3
/* 8E8B0 8008DCB0 03191021 */  addu       $v0, $t8, $t9
/* 8E8B4 8008DCB4 24080007 */  addiu      $t0, $zero, 7
/* 8E8B8 8008DCB8 AC400080 */  sw         $zero, 0x80($v0)
/* 8E8BC 8008DCBC A44000D0 */  sh         $zero, 0xd0($v0)
/* 8E8C0 8008DCC0 A4680000 */  sh         $t0, ($v1)
/* 8E8C4 8008DCC4 3C01800C */  lui        $at, %hi(gGameSubState)
/* 8E8C8 8008DCC8 A420E4F4 */  sh         $zero, %lo(gGameSubState)($at)
/* 8E8CC 8008DCCC AC4000EC */  sw         $zero, 0xec($v0)
/* 8E8D0 8008DCD0 AC4000F0 */  sw         $zero, 0xf0($v0)
/* 8E8D4 8008DCD4 AC4000F4 */  sw         $zero, 0xf4($v0)
.L8008DCD8:
/* 8E8D8 8008DCD8 03E00008 */  jr         $ra
/* 8E8DC 8008DCDC 00000000 */   nop

glabel func_8008DCE0
/* 8E8E0 8008DCE0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8E8E4 8008DCE4 AFA40020 */  sw         $a0, 0x20($sp)
/* 8E8E8 8008DCE8 97AE0022 */  lhu        $t6, 0x22($sp)
/* 8E8EC 8008DCEC 3C18800F */  lui        $t8, 0x800f
/* 8E8F0 8008DCF0 000E7880 */  sll        $t7, $t6, 2
/* 8E8F4 8008DCF4 01EE7823 */  subu       $t7, $t7, $t6
/* 8E8F8 8008DCF8 000F7880 */  sll        $t7, $t7, 2
/* 8E8FC 8008DCFC 01EE7821 */  addu       $t7, $t7, $t6
/* 8E900 8008DD00 000F7880 */  sll        $t7, $t7, 2
/* 8E904 8008DD04 01EE7823 */  subu       $t7, $t7, $t6
/* 8E908 8008DD08 AFB00018 */  sw         $s0, 0x18($sp)
/* 8E90C 8008DD0C 000F78C0 */  sll        $t7, $t7, 3
/* 8E910 8008DD10 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 8E914 8008DD14 01F88021 */  addu       $s0, $t7, $t8
/* 8E918 8008DD18 AFBF001C */  sw         $ra, 0x1c($sp)
/* 8E91C 8008DD1C 9204009C */  lbu        $a0, 0x9c($s0)
/* 8E920 8008DD20 00002825 */  or         $a1, $zero, $zero
/* 8E924 8008DD24 0C00A607 */  jal        func_8002981C
/* 8E928 8008DD28 24060004 */   addiu     $a2, $zero, 4
/* 8E92C 8008DD2C 9204009D */  lbu        $a0, 0x9d($s0)
/* 8E930 8008DD30 A202009C */  sb         $v0, 0x9c($s0)
/* 8E934 8008DD34 00002825 */  or         $a1, $zero, $zero
/* 8E938 8008DD38 0C00A607 */  jal        func_8002981C
/* 8E93C 8008DD3C 24060004 */   addiu     $a2, $zero, 4
/* 8E940 8008DD40 9204009E */  lbu        $a0, 0x9e($s0)
/* 8E944 8008DD44 A202009D */  sb         $v0, 0x9d($s0)
/* 8E948 8008DD48 00002825 */  or         $a1, $zero, $zero
/* 8E94C 8008DD4C 0C00A607 */  jal        func_8002981C
/* 8E950 8008DD50 24060004 */   addiu     $a2, $zero, 4
/* 8E954 8008DD54 97A40022 */  lhu        $a0, 0x22($sp)
/* 8E958 8008DD58 0C0234E7 */  jal        func_8008D39C
/* 8E95C 8008DD5C A202009E */   sb        $v0, 0x9e($s0)
/* 8E960 8008DD60 96190094 */  lhu        $t9, 0x94($s0)
/* 8E964 8008DD64 3C0141A0 */  lui        $at, 0x41a0
/* 8E968 8008DD68 33280008 */  andi       $t0, $t9, 8
/* 8E96C 8008DD6C 11000006 */  beqz       $t0, .L8008DD88
/* 8E970 8008DD70 3C02800F */   lui       $v0, 0x800f
/* 8E974 8008DD74 C60400C4 */  lwc1       $f4, 0xc4($s0)
/* 8E978 8008DD78 44813000 */  mtc1       $at, $f6
/* 8E97C 8008DD7C 00000000 */  nop
/* 8E980 8008DD80 46062200 */  add.s      $f8, $f4, $f6
/* 8E984 8008DD84 E60800C4 */  swc1       $f8, 0xc4($s0)
.L8008DD88:
/* 8E988 8008DD88 3C013F80 */  lui        $at, 0x3f80
/* 8E98C 8008DD8C 44818000 */  mtc1       $at, $f16
/* 8E990 8008DD90 C60A0120 */  lwc1       $f10, 0x120($s0)
/* 8E994 8008DD94 44803000 */  mtc1       $zero, $f6
/* 8E998 8008DD98 46105481 */  sub.s      $f18, $f10, $f16
/* 8E99C 8008DD9C E6120120 */  swc1       $f18, 0x120($s0)
/* 8E9A0 8008DDA0 C6040120 */  lwc1       $f4, 0x120($s0)
/* 8E9A4 8008DDA4 00000000 */  nop
/* 8E9A8 8008DDA8 4606203C */  c.lt.s     $f4, $f6
/* 8E9AC 8008DDAC 00000000 */  nop
/* 8E9B0 8008DDB0 4501000B */  bc1t       .L8008DDE0
/* 8E9B4 8008DDB4 00000000 */   nop
/* 8E9B8 8008DDB8 8E090098 */  lw         $t1, 0x98($s0)
/* 8E9BC 8008DDBC 00000000 */  nop
/* 8E9C0 8008DDC0 312A0020 */  andi       $t2, $t1, 0x20
/* 8E9C4 8008DDC4 11400013 */  beqz       $t2, .L8008DE14
/* 8E9C8 8008DDC8 8FBF001C */   lw        $ra, 0x1c($sp)
/* 8E9CC 8008DDCC 8E0B0080 */  lw         $t3, 0x80($s0)
/* 8E9D0 8008DDD0 00000000 */  nop
/* 8E9D4 8008DDD4 000B6380 */  sll        $t4, $t3, 0xe
/* 8E9D8 8008DDD8 0581000E */  bgez       $t4, .L8008DE14
/* 8E9DC 8008DDDC 8FBF001C */   lw        $ra, 0x1c($sp)
.L8008DDE0:
/* 8E9E0 8008DDE0 8442F5F0 */  lh         $v0, -0xa10($v0)
/* 8E9E4 8008DDE4 97A40022 */  lhu        $a0, 0x22($sp)
/* 8E9E8 8008DDE8 10400003 */  beqz       $v0, .L8008DDF8
/* 8E9EC 8008DDEC 304D8000 */   andi      $t5, $v0, 0x8000
/* 8E9F0 8008DDF0 11A00005 */  beqz       $t5, .L8008DE08
/* 8E9F4 8008DDF4 00000000 */   nop
.L8008DDF8:
/* 8E9F8 8008DDF8 0C02371C */  jal        func_8008DC70
/* 8E9FC 8008DDFC 00000000 */   nop
/* 8EA00 8008DE00 10000004 */  b          .L8008DE14
/* 8EA04 8008DE04 8FBF001C */   lw        $ra, 0x1c($sp)
.L8008DE08:
/* 8EA08 8008DE08 0C023300 */  jal        func_8008CC00
/* 8EA0C 8008DE0C 00000000 */   nop
/* 8EA10 8008DE10 8FBF001C */  lw         $ra, 0x1c($sp)
.L8008DE14:
/* 8EA14 8008DE14 8FB00018 */  lw         $s0, 0x18($sp)
/* 8EA18 8008DE18 03E00008 */  jr         $ra
/* 8EA1C 8008DE1C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8008DE20
/* 8EA20 8008DE20 03E00008 */  jr         $ra
/* 8EA24 8008DE24 AFA40000 */   sw        $a0, ($sp)

glabel func_8008DE28
/* 8EA28 8008DE28 03E00008 */  jr         $ra
/* 8EA2C 8008DE2C AFA40000 */   sw        $a0, ($sp)

glabel func_8008DE30
/* 8EA30 8008DE30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8EA34 8008DE34 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8EA38 8008DE38 AFA40018 */  sw         $a0, 0x18($sp)
/* 8EA3C 8008DE3C 0C000CB1 */  jal        func_800032C4
/* 8EA40 8008DE40 240400B5 */   addiu     $a0, $zero, 0xb5
/* 8EA44 8008DE44 0C000CB1 */  jal        func_800032C4
/* 8EA48 8008DE48 240400B4 */   addiu     $a0, $zero, 0xb4
/* 8EA4C 8008DE4C 97AE001A */  lhu        $t6, 0x1a($sp)
/* 8EA50 8008DE50 3C18800F */  lui        $t8, 0x800f
/* 8EA54 8008DE54 000E7880 */  sll        $t7, $t6, 2
/* 8EA58 8008DE58 01EE7823 */  subu       $t7, $t7, $t6
/* 8EA5C 8008DE5C 000F7880 */  sll        $t7, $t7, 2
/* 8EA60 8008DE60 01EE7821 */  addu       $t7, $t7, $t6
/* 8EA64 8008DE64 000F7880 */  sll        $t7, $t7, 2
/* 8EA68 8008DE68 01EE7823 */  subu       $t7, $t7, $t6
/* 8EA6C 8008DE6C 000F78C0 */  sll        $t7, $t7, 3
/* 8EA70 8008DE70 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 8EA74 8008DE74 01F81021 */  addu       $v0, $t7, $t8
/* 8EA78 8008DE78 8C4300F0 */  lw         $v1, 0xf0($v0)
/* 8EA7C 8008DE7C 3C01FFF9 */  lui        $at, 0xfff9
/* 8EA80 8008DE80 34218001 */  ori        $at, $at, 0x8001
/* 8EA84 8008DE84 0061082A */  slt        $at, $v1, $at
/* 8EA88 8008DE88 14200002 */  bnez       $at, .L8008DE94
/* 8EA8C 8008DE8C 2479CE00 */   addiu     $t9, $v1, -0x3200
/* 8EA90 8008DE90 AC5900F0 */  sw         $t9, 0xf0($v0)
.L8008DE94:
/* 8EA94 8008DE94 8448008C */  lh         $t0, 0x8c($v0)
/* 8EA98 8008DE98 24090040 */  addiu      $t1, $zero, 0x40
/* 8EA9C 8008DE9C 2901FF00 */  slti       $at, $t0, -0x100
/* 8EAA0 8008DEA0 10200003 */  beqz       $at, .L8008DEB0
/* 8EAA4 8008DEA4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 8EAA8 8008DEA8 A44900D0 */  sh         $t1, 0xd0($v0)
/* 8EAAC 8008DEAC 8FBF0014 */  lw         $ra, 0x14($sp)
.L8008DEB0:
/* 8EAB0 8008DEB0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8EAB4 8008DEB4 03E00008 */  jr         $ra
/* 8EAB8 8008DEB8 00000000 */   nop

glabel func_8008DEBC
/* 8EABC 8008DEBC 3C0F800D */  lui        $t7, %hi(D_800D28E4)
/* 8EAC0 8008DEC0 95EF28E4 */  lhu        $t7, %lo(D_800D28E4)($t7)
/* 8EAC4 8008DEC4 AFA40000 */  sw         $a0, ($sp)
/* 8EAC8 8008DEC8 29E10061 */  slti       $at, $t7, 0x61
/* 8EACC 8008DECC 1420000C */  bnez       $at, .L8008DF00
/* 8EAD0 8008DED0 308EFFFF */   andi      $t6, $a0, 0xffff
/* 8EAD4 8008DED4 000EC080 */  sll        $t8, $t6, 2
/* 8EAD8 8008DED8 030EC023 */  subu       $t8, $t8, $t6
/* 8EADC 8008DEDC 0018C080 */  sll        $t8, $t8, 2
/* 8EAE0 8008DEE0 030EC021 */  addu       $t8, $t8, $t6
/* 8EAE4 8008DEE4 0018C080 */  sll        $t8, $t8, 2
/* 8EAE8 8008DEE8 030EC023 */  subu       $t8, $t8, $t6
/* 8EAEC 8008DEEC 0018C0C0 */  sll        $t8, $t8, 3
/* 8EAF0 8008DEF0 3C01800F */  lui        $at, %hi(D_800EF590)
/* 8EAF4 8008DEF4 00380821 */  addu       $at, $at, $t8
/* 8EAF8 8008DEF8 03E00008 */  jr         $ra
/* 8EAFC 8008DEFC AC20F590 */   sw        $zero, %lo(D_800EF590)($at)
.L8008DF00:
/* 8EB00 8008DF00 3C02800D */  lui        $v0, %hi(D_800D28FC)
/* 8EB04 8008DF04 244228FC */  addiu      $v0, $v0, %lo(D_800D28FC)
/* 8EB08 8008DF08 8C590000 */  lw         $t9, ($v0)
/* 8EB0C 8008DF0C 00000000 */  nop
/* 8EB10 8008DF10 37280200 */  ori        $t0, $t9, 0x200
/* 8EB14 8008DF14 AC480000 */  sw         $t0, ($v0)
/* 8EB18 8008DF18 03E00008 */  jr         $ra
/* 8EB1C 8008DF1C 00000000 */   nop

glabel func_8008DF20
/* 8EB20 8008DF20 3086FFFF */  andi       $a2, $a0, 0xffff
/* 8EB24 8008DF24 00067080 */  sll        $t6, $a2, 2
/* 8EB28 8008DF28 01C67023 */  subu       $t6, $t6, $a2
/* 8EB2C 8008DF2C 000E7080 */  sll        $t6, $t6, 2
/* 8EB30 8008DF30 01C67021 */  addu       $t6, $t6, $a2
/* 8EB34 8008DF34 000E7080 */  sll        $t6, $t6, 2
/* 8EB38 8008DF38 3C05800F */  lui        $a1, %hi(gActors)
/* 8EB3C 8008DF3C 01C67023 */  subu       $t6, $t6, $a2
/* 8EB40 8008DF40 24A5F510 */  addiu      $a1, $a1, %lo(gActors)
/* 8EB44 8008DF44 000E70C0 */  sll        $t6, $t6, 3
/* 8EB48 8008DF48 00AE1021 */  addu       $v0, $a1, $t6
/* 8EB4C 8008DF4C 944300D0 */  lhu        $v1, 0xd0($v0)
/* 8EB50 8008DF50 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8EB54 8008DF54 28610061 */  slti       $at, $v1, 0x61
/* 8EB58 8008DF58 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8EB5C 8008DF5C 1420000B */  bnez       $at, .L8008DF8C
/* 8EB60 8008DF60 AFA40020 */   sw        $a0, 0x20($sp)
/* 8EB64 8008DF64 8C4F0098 */  lw         $t7, 0x98($v0)
/* 8EB68 8008DF68 00000000 */  nop
/* 8EB6C 8008DF6C 31F80002 */  andi       $t8, $t7, 2
/* 8EB70 8008DF70 13000006 */  beqz       $t8, .L8008DF8C
/* 8EB74 8008DF74 00000000 */   nop
/* 8EB78 8008DF78 845900E0 */  lh         $t9, 0xe0($v0)
/* 8EB7C 8008DF7C 0C023300 */  jal        func_8008CC00
/* 8EB80 8008DF80 A4B900E0 */   sh        $t9, 0xe0($a1)
/* 8EB84 8008DF84 10000083 */  b          .L8008E194
/* 8EB88 8008DF88 8FBF0014 */   lw        $ra, 0x14($sp)
.L8008DF8C:
/* 8EB8C 8008DF8C 3C19800E */  lui        $t9, 0x800e
/* 8EB90 8008DF90 30C4FFFF */  andi       $a0, $a2, 0xffff
/* 8EB94 8008DF94 AFA2001C */  sw         $v0, 0x1c($sp)
/* 8EB98 8008DF98 A7A60022 */  sh         $a2, 0x22($sp)
/* 8EB9C 8008DF9C 04610003 */  bgez       $v1, .L8008DFAC
/* 8EBA0 8008DFA0 00034103 */   sra       $t0, $v1, 4
/* 8EBA4 8008DFA4 2461000F */  addiu      $at, $v1, 0xf
/* 8EBA8 8008DFA8 00014103 */  sra        $t0, $at, 4
.L8008DFAC:
/* 8EBAC 8008DFAC 00084880 */  sll        $t1, $t0, 2
/* 8EBB0 8008DFB0 0329C821 */  addu       $t9, $t9, $t1
/* 8EBB4 8008DFB4 8F395A80 */  lw         $t9, 0x5a80($t9)
/* 8EBB8 8008DFB8 00000000 */  nop
/* 8EBBC 8008DFBC 0320F809 */  jalr       $t9
/* 8EBC0 8008DFC0 00000000 */   nop
/* 8EBC4 8008DFC4 8FA2001C */  lw         $v0, 0x1c($sp)
/* 8EBC8 8008DFC8 3C05800F */  lui        $a1, %hi(gActors)
/* 8EBCC 8008DFCC 944A00D0 */  lhu        $t2, 0xd0($v0)
/* 8EBD0 8008DFD0 97A60022 */  lhu        $a2, 0x22($sp)
/* 8EBD4 8008DFD4 29410061 */  slti       $at, $t2, 0x61
/* 8EBD8 8008DFD8 14200025 */  bnez       $at, .L8008E070
/* 8EBDC 8008DFDC 24A5F510 */   addiu     $a1, $a1, %lo(gActors)
/* 8EBE0 8008DFE0 8C430184 */  lw         $v1, 0x184($v0)
/* 8EBE4 8008DFE4 3C070008 */  lui        $a3, 8
/* 8EBE8 8008DFE8 0067082A */  slt        $at, $v1, $a3
/* 8EBEC 8008DFEC 14200007 */  bnez       $at, .L8008E00C
/* 8EBF0 8008DFF0 3C04FFF8 */   lui       $a0, 0xfff8
/* 8EBF4 8008DFF4 3C0B0007 */  lui        $t3, 7
/* 8EBF8 8008DFF8 356BFFFF */  ori        $t3, $t3, 0xffff
/* 8EBFC 8008DFFC 3C04FFF8 */  lui        $a0, 0xfff8
/* 8EC00 8008E000 34840001 */  ori        $a0, $a0, 1
/* 8EC04 8008E004 10000008 */  b          .L8008E028
/* 8EC08 8008E008 AC4B00EC */   sw        $t3, 0xec($v0)
.L8008E00C:
/* 8EC0C 8008E00C 34840001 */  ori        $a0, $a0, 1
/* 8EC10 8008E010 0064082A */  slt        $at, $v1, $a0
/* 8EC14 8008E014 10200003 */  beqz       $at, .L8008E024
/* 8EC18 8008E018 00000000 */   nop
/* 8EC1C 8008E01C 10000002 */  b          .L8008E028
/* 8EC20 8008E020 AC4400EC */   sw        $a0, 0xec($v0)
.L8008E024:
/* 8EC24 8008E024 AC4300EC */  sw         $v1, 0xec($v0)
.L8008E028:
/* 8EC28 8008E028 8C430188 */  lw         $v1, 0x188($v0)
/* 8EC2C 8008E02C 3C0C0007 */  lui        $t4, 7
/* 8EC30 8008E030 0067082A */  slt        $at, $v1, $a3
/* 8EC34 8008E034 14200003 */  bnez       $at, .L8008E044
/* 8EC38 8008E038 358CFFFF */   ori       $t4, $t4, 0xffff
/* 8EC3C 8008E03C 10000007 */  b          .L8008E05C
/* 8EC40 8008E040 AC4C00F0 */   sw        $t4, 0xf0($v0)
.L8008E044:
/* 8EC44 8008E044 0064082A */  slt        $at, $v1, $a0
/* 8EC48 8008E048 10200003 */  beqz       $at, .L8008E058
/* 8EC4C 8008E04C 00000000 */   nop
/* 8EC50 8008E050 10000002 */  b          .L8008E05C
/* 8EC54 8008E054 AC4400F0 */   sw        $a0, 0xf0($v0)
.L8008E058:
/* 8EC58 8008E058 AC4300F0 */  sw         $v1, 0xf0($v0)
.L8008E05C:
/* 8EC5C 8008E05C 944300D4 */  lhu        $v1, 0xd4($v0)
/* 8EC60 8008E060 00000000 */  nop
/* 8EC64 8008E064 18600002 */  blez       $v1, .L8008E070
/* 8EC68 8008E068 246DFFFF */   addiu     $t5, $v1, -1
/* 8EC6C 8008E06C A44D00D4 */  sh         $t5, 0xd4($v0)
.L8008E070:
/* 8EC70 8008E070 944E00D0 */  lhu        $t6, 0xd0($v0)
/* 8EC74 8008E074 24180001 */  addiu      $t8, $zero, 1
/* 8EC78 8008E078 29C10021 */  slti       $at, $t6, 0x21
/* 8EC7C 8008E07C 1420003C */  bnez       $at, .L8008E170
/* 8EC80 8008E080 30C4FFFF */   andi      $a0, $a2, 0xffff
/* 8EC84 8008E084 444FF800 */  cfc1       $t7, $31
/* 8EC88 8008E088 44D8F800 */  ctc1       $t8, $31
/* 8EC8C 8008E08C C4440110 */  lwc1       $f4, 0x110($v0)
/* 8EC90 8008E090 3C014F00 */  lui        $at, 0x4f00
/* 8EC94 8008E094 460021A4 */  cvt.w.s    $f6, $f4
/* 8EC98 8008E098 4458F800 */  cfc1       $t8, $31
/* 8EC9C 8008E09C 00000000 */  nop
/* 8ECA0 8008E0A0 33180078 */  andi       $t8, $t8, 0x78
/* 8ECA4 8008E0A4 13000012 */  beqz       $t8, .L8008E0F0
/* 8ECA8 8008E0A8 00000000 */   nop
/* 8ECAC 8008E0AC 44813000 */  mtc1       $at, $f6
/* 8ECB0 8008E0B0 24180001 */  addiu      $t8, $zero, 1
/* 8ECB4 8008E0B4 46062181 */  sub.s      $f6, $f4, $f6
/* 8ECB8 8008E0B8 3C018000 */  lui        $at, 0x8000
/* 8ECBC 8008E0BC 44D8F800 */  ctc1       $t8, $31
/* 8ECC0 8008E0C0 00000000 */  nop
/* 8ECC4 8008E0C4 460031A4 */  cvt.w.s    $f6, $f6
/* 8ECC8 8008E0C8 4458F800 */  cfc1       $t8, $31
/* 8ECCC 8008E0CC 00000000 */  nop
/* 8ECD0 8008E0D0 33180078 */  andi       $t8, $t8, 0x78
/* 8ECD4 8008E0D4 17000004 */  bnez       $t8, .L8008E0E8
/* 8ECD8 8008E0D8 00000000 */   nop
/* 8ECDC 8008E0DC 44183000 */  mfc1       $t8, $f6
/* 8ECE0 8008E0E0 10000007 */  b          .L8008E100
/* 8ECE4 8008E0E4 0301C025 */   or        $t8, $t8, $at
.L8008E0E8:
/* 8ECE8 8008E0E8 10000005 */  b          .L8008E100
/* 8ECEC 8008E0EC 2418FFFF */   addiu     $t8, $zero, -1
.L8008E0F0:
/* 8ECF0 8008E0F0 44183000 */  mfc1       $t8, $f6
/* 8ECF4 8008E0F4 00000000 */  nop
/* 8ECF8 8008E0F8 0700FFFB */  bltz       $t8, .L8008E0E8
/* 8ECFC 8008E0FC 00000000 */   nop
.L8008E100:
/* 8ED00 8008E100 44CFF800 */  ctc1       $t7, $31
/* 8ED04 8008E104 33098000 */  andi       $t1, $t8, 0x8000
/* 8ED08 8008E108 11200019 */  beqz       $t1, .L8008E170
/* 8ED0C 8008E10C 00000000 */   nop
/* 8ED10 8008E110 8CB90080 */  lw         $t9, 0x80($a1)
/* 8ED14 8008E114 2401FFDF */  addiu      $at, $zero, -0x21
/* 8ED18 8008E118 03215024 */  and        $t2, $t9, $at
/* 8ED1C 8008E11C ACAA0080 */  sw         $t2, 0x80($a1)
/* 8ED20 8008E120 8C4C0080 */  lw         $t4, 0x80($v0)
/* 8ED24 8008E124 3C08800C */  lui        $t0, 0x800c
/* 8ED28 8008E128 318D0020 */  andi       $t5, $t4, 0x20
/* 8ED2C 8008E12C 014D7025 */  or         $t6, $t2, $t5
/* 8ED30 8008E130 ACAE0080 */  sw         $t6, 0x80($a1)
/* 8ED34 8008E134 8C4F0088 */  lw         $t7, 0x88($v0)
/* 8ED38 8008E138 3C01800C */  lui        $at, 0x800c
/* 8ED3C 8008E13C ACAF0088 */  sw         $t7, 0x88($a1)
/* 8ED40 8008E140 8C58008C */  lw         $t8, 0x8c($v0)
/* 8ED44 8008E144 3C0A800C */  lui        $t2, %hi(D_800BE55C)
/* 8ED48 8008E148 ACB8008C */  sw         $t8, 0x8c($a1)
/* 8ED4C 8008E14C 84490088 */  lh         $t1, 0x88($v0)
/* 8ED50 8008E150 8508E558 */  lh         $t0, -0x1aa8($t0)
/* 8ED54 8008E154 854AE55C */  lh         $t2, %lo(D_800BE55C)($t2)
/* 8ED58 8008E158 0109C821 */  addu       $t9, $t0, $t1
/* 8ED5C 8008E15C A439E5D8 */  sh         $t9, -0x1a28($at)
/* 8ED60 8008E160 844C008C */  lh         $t4, 0x8c($v0)
/* 8ED64 8008E164 3C01800C */  lui        $at, %hi(D_800BE5DC)
/* 8ED68 8008E168 014C5821 */  addu       $t3, $t2, $t4
/* 8ED6C 8008E16C A42BE5DC */  sh         $t3, %lo(D_800BE5DC)($at)
.L8008E170:
/* 8ED70 8008E170 0C023324 */  jal        func_8008CC90
/* 8ED74 8008E174 AFA2001C */   sw        $v0, 0x1c($sp)
/* 8ED78 8008E178 8FA2001C */  lw         $v0, 0x1c($sp)
/* 8ED7C 8008E17C 3C01FFDF */  lui        $at, 0xffdf
/* 8ED80 8008E180 8C4D0098 */  lw         $t5, 0x98($v0)
/* 8ED84 8008E184 3421F9FF */  ori        $at, $at, 0xf9ff
/* 8ED88 8008E188 01A17024 */  and        $t6, $t5, $at
/* 8ED8C 8008E18C AC4E0098 */  sw         $t6, 0x98($v0)
/* 8ED90 8008E190 8FBF0014 */  lw         $ra, 0x14($sp)
.L8008E194:
/* 8ED94 8008E194 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8ED98 8008E198 03E00008 */  jr         $ra
/* 8ED9C 8008E19C 00000000 */   nop

glabel func_8008E1A0
/* 8EDA0 8008E1A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8EDA4 8008E1A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8EDA8 8008E1A8 AFA40020 */  sw         $a0, 0x20($sp)
/* 8EDAC 8008E1AC 00803825 */  or         $a3, $a0, $zero
/* 8EDB0 8008E1B0 30E4FFFF */  andi       $a0, $a3, 0xffff
/* 8EDB4 8008E1B4 0C0237C8 */  jal        func_8008DF20
/* 8EDB8 8008E1B8 A7A70022 */   sh        $a3, 0x22($sp)
/* 8EDBC 8008E1BC 97A70022 */  lhu        $a3, 0x22($sp)
/* 8EDC0 8008E1C0 3C0F800F */  lui        $t7, 0x800f
/* 8EDC4 8008E1C4 00077080 */  sll        $t6, $a3, 2
/* 8EDC8 8008E1C8 01C77023 */  subu       $t6, $t6, $a3
/* 8EDCC 8008E1CC 000E7080 */  sll        $t6, $t6, 2
/* 8EDD0 8008E1D0 01C77021 */  addu       $t6, $t6, $a3
/* 8EDD4 8008E1D4 000E7080 */  sll        $t6, $t6, 2
/* 8EDD8 8008E1D8 01C77023 */  subu       $t6, $t6, $a3
/* 8EDDC 8008E1DC 000E70C0 */  sll        $t6, $t6, 3
/* 8EDE0 8008E1E0 25EFF510 */  addiu      $t7, $t7, -0xaf0
/* 8EDE4 8008E1E4 01CF1821 */  addu       $v1, $t6, $t7
/* 8EDE8 8008E1E8 946200D0 */  lhu        $v0, 0xd0($v1)
/* 8EDEC 8008E1EC 24010010 */  addiu      $at, $zero, 0x10
/* 8EDF0 8008E1F0 10410005 */  beq        $v0, $at, .L8008E208
/* 8EDF4 8008E1F4 24010070 */   addiu     $at, $zero, 0x70
/* 8EDF8 8008E1F8 1041001E */  beq        $v0, $at, .L8008E274
/* 8EDFC 8008E1FC 00002825 */   or        $a1, $zero, $zero
/* 8EE00 8008E200 10000040 */  b          .L8008E304
/* 8EE04 8008E204 8FBF0014 */   lw        $ra, 0x14($sp)
.L8008E208:
/* 8EE08 8008E208 24010001 */  addiu      $at, $zero, 1
/* 8EE0C 8008E20C 10410009 */  beq        $v0, $at, .L8008E234
/* 8EE10 8008E210 24010002 */   addiu     $at, $zero, 2
/* 8EE14 8008E214 1041000B */  beq        $v0, $at, .L8008E244
/* 8EE18 8008E218 24010003 */   addiu     $at, $zero, 3
/* 8EE1C 8008E21C 1041000D */  beq        $v0, $at, .L8008E254
/* 8EE20 8008E220 24010004 */   addiu     $at, $zero, 4
/* 8EE24 8008E224 1041000F */  beq        $v0, $at, .L8008E264
/* 8EE28 8008E228 00000000 */   nop
/* 8EE2C 8008E22C 10000035 */  b          .L8008E304
/* 8EE30 8008E230 8FBF0014 */   lw        $ra, 0x14($sp)
.L8008E234:
/* 8EE34 8008E234 0C0233D8 */  jal        func_8008CF60
/* 8EE38 8008E238 30E4FFFF */   andi      $a0, $a3, 0xffff
/* 8EE3C 8008E23C 10000031 */  b          .L8008E304
/* 8EE40 8008E240 8FBF0014 */   lw        $ra, 0x14($sp)
.L8008E244:
/* 8EE44 8008E244 0C02347A */  jal        func_8008D1E8
/* 8EE48 8008E248 30E4FFFF */   andi      $a0, $a3, 0xffff
/* 8EE4C 8008E24C 1000002D */  b          .L8008E304
/* 8EE50 8008E250 8FBF0014 */   lw        $ra, 0x14($sp)
.L8008E254:
/* 8EE54 8008E254 0C0234AC */  jal        func_8008D2B0
/* 8EE58 8008E258 30E4FFFF */   andi      $a0, $a3, 0xffff
/* 8EE5C 8008E25C 10000029 */  b          .L8008E304
/* 8EE60 8008E260 8FBF0014 */   lw        $ra, 0x14($sp)
.L8008E264:
/* 8EE64 8008E264 0C0234C8 */  jal        func_8008D320
/* 8EE68 8008E268 30E4FFFF */   andi      $a0, $a3, 0xffff
/* 8EE6C 8008E26C 10000025 */  b          .L8008E304
/* 8EE70 8008E270 8FBF0014 */   lw        $ra, 0x14($sp)
.L8008E274:
/* 8EE74 8008E274 8C640184 */  lw         $a0, 0x184($v1)
/* 8EE78 8008E278 24062000 */  addiu      $a2, $zero, 0x2000
/* 8EE7C 8008E27C AFA30018 */  sw         $v1, 0x18($sp)
/* 8EE80 8008E280 0C00A607 */  jal        func_8002981C
/* 8EE84 8008E284 A7A70022 */   sh        $a3, 0x22($sp)
/* 8EE88 8008E288 8FA30018 */  lw         $v1, 0x18($sp)
/* 8EE8C 8008E28C 3C04800C */  lui        $a0, %hi(gButtonHold)
/* 8EE90 8008E290 AC620184 */  sw         $v0, 0x184($v1)
/* 8EE94 8008E294 3C18800C */  lui        $t8, %hi(gButton_DLeft)
/* 8EE98 8008E298 9718E50C */  lhu        $t8, %lo(gButton_DLeft)($t8)
/* 8EE9C 8008E29C 9484E4F8 */  lhu        $a0, %lo(gButtonHold)($a0)
/* 8EEA0 8008E2A0 97A70022 */  lhu        $a3, 0x22($sp)
/* 8EEA4 8008E2A4 0098C824 */  and        $t9, $a0, $t8
/* 8EEA8 8008E2A8 13200003 */  beqz       $t9, .L8008E2B8
/* 8EEAC 8008E2AC 3C09800C */   lui       $t1, %hi(gButton_DRight)
/* 8EEB0 8008E2B0 3C08FFFE */  lui        $t0, 0xfffe
/* 8EEB4 8008E2B4 AC680184 */  sw         $t0, 0x184($v1)
.L8008E2B8:
/* 8EEB8 8008E2B8 9529E510 */  lhu        $t1, %lo(gButton_DRight)($t1)
/* 8EEBC 8008E2BC 3C0C800C */  lui        $t4, 0x800c
/* 8EEC0 8008E2C0 00895024 */  and        $t2, $a0, $t1
/* 8EEC4 8008E2C4 11400003 */  beqz       $t2, .L8008E2D4
/* 8EEC8 8008E2C8 3C0D800C */   lui       $t5, %hi(gButton_A)
/* 8EECC 8008E2CC 3C0B0002 */  lui        $t3, 2
/* 8EED0 8008E2D0 AC6B0184 */  sw         $t3, 0x184($v1)
.L8008E2D4:
/* 8EED4 8008E2D4 958CE4FC */  lhu        $t4, -0x1b04($t4)
/* 8EED8 8008E2D8 95ADE518 */  lhu        $t5, %lo(gButton_A)($t5)
/* 8EEDC 8008E2DC 30E4FFFF */  andi       $a0, $a3, 0xffff
/* 8EEE0 8008E2E0 018D7024 */  and        $t6, $t4, $t5
/* 8EEE4 8008E2E4 11C00007 */  beqz       $t6, .L8008E304
/* 8EEE8 8008E2E8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 8EEEC 8008E2EC 0C02342A */  jal        func_8008D0A8
/* 8EEF0 8008E2F0 AFA30018 */   sw        $v1, 0x18($sp)
/* 8EEF4 8008E2F4 8FA30018 */  lw         $v1, 0x18($sp)
/* 8EEF8 8008E2F8 3C0F0004 */  lui        $t7, 4
/* 8EEFC 8008E2FC AC6F0188 */  sw         $t7, 0x188($v1)
/* 8EF00 8008E300 8FBF0014 */  lw         $ra, 0x14($sp)
.L8008E304:
/* 8EF04 8008E304 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8EF08 8008E308 03E00008 */  jr         $ra
/* 8EF0C 8008E30C 00000000 */   nop

glabel func_8008E310
/* 8EF10 8008E310 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8EF14 8008E314 AFA40020 */  sw         $a0, 0x20($sp)
/* 8EF18 8008E318 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8EF1C 8008E31C 240F0004 */  addiu      $t7, $zero, 4
/* 8EF20 8008E320 3C01800C */  lui        $at, %hi(D_800BE5F4)
/* 8EF24 8008E324 01C02025 */  or         $a0, $t6, $zero
/* 8EF28 8008E328 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8EF2C 8008E32C AFA50024 */  sw         $a1, 0x24($sp)
/* 8EF30 8008E330 15C00002 */  bnez       $t6, .L8008E33C
/* 8EF34 8008E334 AC2FE5F4 */   sw        $t7, %lo(D_800BE5F4)($at)
/* 8EF38 8008E338 24040010 */  addiu      $a0, $zero, 0x10
.L8008E33C:
/* 8EF3C 8008E33C 0004C080 */  sll        $t8, $a0, 2
/* 8EF40 8008E340 0304C023 */  subu       $t8, $t8, $a0
/* 8EF44 8008E344 0018C080 */  sll        $t8, $t8, 2
/* 8EF48 8008E348 0304C021 */  addu       $t8, $t8, $a0
/* 8EF4C 8008E34C 0018C080 */  sll        $t8, $t8, 2
/* 8EF50 8008E350 3C03800F */  lui        $v1, %hi(gActors)
/* 8EF54 8008E354 0304C023 */  subu       $t8, $t8, $a0
/* 8EF58 8008E358 2463F510 */  addiu      $v1, $v1, %lo(gActors)
/* 8EF5C 8008E35C 0018C0C0 */  sll        $t8, $t8, 3
/* 8EF60 8008E360 00781021 */  addu       $v0, $v1, $t8
/* 8EF64 8008E364 24190070 */  addiu      $t9, $zero, 0x70
/* 8EF68 8008E368 A45900D2 */  sh         $t9, 0xd2($v0)
/* 8EF6C 8008E36C 0C0078B4 */  jal        func_8001E2D0
/* 8EF70 8008E370 AFA2001C */   sw        $v0, 0x1c($sp)
/* 8EF74 8008E374 8FA2001C */  lw         $v0, 0x1c($sp)
/* 8EF78 8008E378 3C03800F */  lui        $v1, %hi(gActors)
/* 8EF7C 8008E37C 24080002 */  addiu      $t0, $zero, 2
/* 8EF80 8008E380 2463F510 */  addiu      $v1, $v1, %lo(gActors)
/* 8EF84 8008E384 AC480080 */  sw         $t0, 0x80($v0)
/* 8EF88 8008E388 84690088 */  lh         $t1, 0x88($v1)
/* 8EF8C 8008E38C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8EF90 8008E390 A4490088 */  sh         $t1, 0x88($v0)
/* 8EF94 8008E394 846A008C */  lh         $t2, 0x8c($v1)
/* 8EF98 8008E398 00000000 */  nop
/* 8EF9C 8008E39C A44A008C */  sh         $t2, 0x8c($v0)
/* 8EFA0 8008E3A0 8C6B00EC */  lw         $t3, 0xec($v1)
/* 8EFA4 8008E3A4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8EFA8 8008E3A8 05610003 */  bgez       $t3, .L8008E3B8
/* 8EFAC 8008E3AC 000B6043 */   sra       $t4, $t3, 1
/* 8EFB0 8008E3B0 25610001 */  addiu      $at, $t3, 1
/* 8EFB4 8008E3B4 00016043 */  sra        $t4, $at, 1
.L8008E3B8:
/* 8EFB8 8008E3B8 03E00008 */  jr         $ra
/* 8EFBC 8008E3BC AC4C00EC */   sw        $t4, 0xec($v0)

glabel func_8008E3C0
/* 8EFC0 8008E3C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8EFC4 8008E3C4 AFA40018 */  sw         $a0, 0x18($sp)
/* 8EFC8 8008E3C8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8EFCC 8008E3CC 240E0004 */  addiu      $t6, $zero, 4
/* 8EFD0 8008E3D0 3C01800C */  lui        $at, %hi(D_800BE5F4)
/* 8EFD4 8008E3D4 97A4001A */  lhu        $a0, 0x1a($sp)
/* 8EFD8 8008E3D8 0C0237C8 */  jal        func_8008DF20
/* 8EFDC 8008E3DC AC2EE5F4 */   sw        $t6, %lo(D_800BE5F4)($at)
/* 8EFE0 8008E3E0 97AF001A */  lhu        $t7, 0x1a($sp)
/* 8EFE4 8008E3E4 3C19800F */  lui        $t9, 0x800f
/* 8EFE8 8008E3E8 000FC080 */  sll        $t8, $t7, 2
/* 8EFEC 8008E3EC 030FC023 */  subu       $t8, $t8, $t7
/* 8EFF0 8008E3F0 0018C080 */  sll        $t8, $t8, 2
/* 8EFF4 8008E3F4 030FC021 */  addu       $t8, $t8, $t7
/* 8EFF8 8008E3F8 0018C080 */  sll        $t8, $t8, 2
/* 8EFFC 8008E3FC 030FC023 */  subu       $t8, $t8, $t7
/* 8F000 8008E400 0018C0C0 */  sll        $t8, $t8, 3
/* 8F004 8008E404 2739F510 */  addiu      $t9, $t9, -0xaf0
/* 8F008 8008E408 03191021 */  addu       $v0, $t8, $t9
/* 8F00C 8008E40C 944800D0 */  lhu        $t0, 0xd0($v0)
/* 8F010 8008E410 24010010 */  addiu      $at, $zero, 0x10
/* 8F014 8008E414 15010013 */  bne        $t0, $at, .L8008E464
/* 8F018 8008E418 24090004 */   addiu     $t1, $zero, 4
/* 8F01C 8008E41C 3C01800C */  lui        $at, %hi(D_800BE5F4)
/* 8F020 8008E420 AC29E5F4 */  sw         $t1, %lo(D_800BE5F4)($at)
/* 8F024 8008E424 3C013F80 */  lui        $at, 0x3f80
/* 8F028 8008E428 44812000 */  mtc1       $at, $f4
/* 8F02C 8008E42C 3C0B800D */  lui        $t3, %hi(D_800D46A8)
/* 8F030 8008E430 240A0030 */  addiu      $t2, $zero, 0x30
/* 8F034 8008E434 256B46A8 */  addiu      $t3, $t3, %lo(D_800D46A8)
/* 8F038 8008E438 3C0C0002 */  lui        $t4, 2
/* 8F03C 8008E43C A44A00D0 */  sh         $t2, 0xd0($v0)
/* 8F040 8008E440 AC4B018C */  sw         $t3, 0x18c($v0)
/* 8F044 8008E444 AC4C00F0 */  sw         $t4, 0xf0($v0)
/* 8F048 8008E448 240400B5 */  addiu      $a0, $zero, 0xb5
/* 8F04C 8008E44C 0C000CB1 */  jal        func_800032C4
/* 8F050 8008E450 E4440118 */   swc1      $f4, 0x118($v0)
/* 8F054 8008E454 0C000CB1 */  jal        func_800032C4
/* 8F058 8008E458 240400B4 */   addiu     $a0, $zero, 0xb4
/* 8F05C 8008E45C 0C000CD3 */  jal        func_8000334C
/* 8F060 8008E460 240400CD */   addiu     $a0, $zero, 0xcd
.L8008E464:
/* 8F064 8008E464 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8F068 8008E468 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8F06C 8008E46C 03E00008 */  jr         $ra
/* 8F070 8008E470 00000000 */   nop
/* 8F074 8008E474 00000000 */  nop
/* 8F078 8008E478 00000000 */  nop
/* 8F07C 8008E47C 00000000 */  nop
