.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8005C520
/* 5D120 8005C520 3C02800F */  lui        $v0, %hi(gActors)
/* 5D124 8005C524 2442F510 */  addiu      $v0, $v0, %lo(gActors)
/* 5D128 8005C528 904800DC */  lbu        $t0, 0xdc($v0)
/* 5D12C 8005C52C 3C038013 */  lui        $v1, %hi(D_801373E0)
/* 5D130 8005C530 246373E0 */  addiu      $v1, $v1, %lo(D_801373E0)
/* 5D134 8005C534 35090040 */  ori        $t1, $t0, 0x40
/* 5D138 8005C538 AFA40000 */  sw         $a0, ($sp)
/* 5D13C 8005C53C AFA50004 */  sw         $a1, 4($sp)
/* 5D140 8005C540 A04900DC */  sb         $t1, 0xdc($v0)
/* 5D144 8005C544 A064000A */  sb         $a0, 0xa($v1)
/* 5D148 8005C548 03E00008 */  jr         $ra
/* 5D14C 8005C54C A065000B */   sb        $a1, 0xb($v1)

glabel func_8005C550
/* 5D150 8005C550 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5D154 8005C554 000EC880 */  sll        $t9, $t6, 2
/* 5D158 8005C558 032EC823 */  subu       $t9, $t9, $t6
/* 5D15C 8005C55C 0019C880 */  sll        $t9, $t9, 2
/* 5D160 8005C560 032EC821 */  addu       $t9, $t9, $t6
/* 5D164 8005C564 0019C880 */  sll        $t9, $t9, 2
/* 5D168 8005C568 032EC823 */  subu       $t9, $t9, $t6
/* 5D16C 8005C56C 3C08800F */  lui        $t0, %hi(gActors)
/* 5D170 8005C570 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 5D174 8005C574 0019C8C0 */  sll        $t9, $t9, 3
/* 5D178 8005C578 03281821 */  addu       $v1, $t9, $t0
/* 5D17C 8005C57C 8462013C */  lh         $v0, 0x13c($v1)
/* 5D180 8005C580 00057C00 */  sll        $t7, $a1, 0x10
/* 5D184 8005C584 000FC403 */  sra        $t8, $t7, 0x10
/* 5D188 8005C588 AFA50004 */  sw         $a1, 4($sp)
/* 5D18C 8005C58C 03002825 */  or         $a1, $t8, $zero
/* 5D190 8005C590 14400004 */  bnez       $v0, .L8005C5A4
/* 5D194 8005C594 AFA40000 */   sw        $a0, ($sp)
/* 5D198 8005C598 A478013C */  sh         $t8, 0x13c($v1)
/* 5D19C 8005C59C 03E00008 */  jr         $ra
/* 5D1A0 8005C5A0 24020001 */   addiu     $v0, $zero, 1
.L8005C5A4:
/* 5D1A4 8005C5A4 18A00005 */  blez       $a1, .L8005C5BC
/* 5D1A8 8005C5A8 0045082A */   slt       $at, $v0, $a1
/* 5D1AC 8005C5AC 10200009 */  beqz       $at, .L8005C5D4
/* 5D1B0 8005C5B0 24020002 */   addiu     $v0, $zero, 2
/* 5D1B4 8005C5B4 03E00008 */  jr         $ra
/* 5D1B8 8005C5B8 A465013C */   sh        $a1, 0x13c($v1)
.L8005C5BC:
/* 5D1BC 8005C5BC 04410005 */  bgez       $v0, .L8005C5D4
/* 5D1C0 8005C5C0 00A2082A */   slt       $at, $a1, $v0
/* 5D1C4 8005C5C4 10200003 */  beqz       $at, .L8005C5D4
/* 5D1C8 8005C5C8 24020003 */   addiu     $v0, $zero, 3
/* 5D1CC 8005C5CC 03E00008 */  jr         $ra
/* 5D1D0 8005C5D0 A465013C */   sh        $a1, 0x13c($v1)
.L8005C5D4:
/* 5D1D4 8005C5D4 00001025 */  or         $v0, $zero, $zero
/* 5D1D8 8005C5D8 03E00008 */  jr         $ra
/* 5D1DC 8005C5DC 00000000 */   nop

glabel func_8005C5E0
/* 5D1E0 8005C5E0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5D1E4 8005C5E4 000E7880 */  sll        $t7, $t6, 2
/* 5D1E8 8005C5E8 01EE7823 */  subu       $t7, $t7, $t6
/* 5D1EC 8005C5EC 000F7880 */  sll        $t7, $t7, 2
/* 5D1F0 8005C5F0 01EE7821 */  addu       $t7, $t7, $t6
/* 5D1F4 8005C5F4 000F7880 */  sll        $t7, $t7, 2
/* 5D1F8 8005C5F8 01EE7823 */  subu       $t7, $t7, $t6
/* 5D1FC 8005C5FC 3C18800F */  lui        $t8, %hi(gActors)
/* 5D200 8005C600 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 5D204 8005C604 000F78C0 */  sll        $t7, $t7, 3
/* 5D208 8005C608 01F81821 */  addu       $v1, $t7, $t8
/* 5D20C 8005C60C 8C790080 */  lw         $t9, 0x80($v1)
/* 5D210 8005C610 3C01FFFF */  lui        $at, 0xffff
/* 5D214 8005C614 37281000 */  ori        $t0, $t9, 0x1000
/* 5D218 8005C618 8462013C */  lh         $v0, 0x13c($v1)
/* 5D21C 8005C61C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5D220 8005C620 34217FFF */  ori        $at, $at, 0x7fff
/* 5D224 8005C624 AFA40020 */  sw         $a0, 0x20($sp)
/* 5D228 8005C628 AC680080 */  sw         $t0, 0x80($v1)
/* 5D22C 8005C62C 01015024 */  and        $t2, $t0, $at
/* 5D230 8005C630 01C02025 */  or         $a0, $t6, $zero
/* 5D234 8005C634 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5D238 8005C638 14400003 */  bnez       $v0, .L8005C648
/* 5D23C 8005C63C AC6A0080 */   sw        $t2, 0x80($v1)
/* 5D240 8005C640 1000001F */  b          .L8005C6C0
/* 5D244 8005C644 00001025 */   or        $v0, $zero, $zero
.L8005C648:
/* 5D248 8005C648 8C6B0080 */  lw         $t3, 0x80($v1)
/* 5D24C 8005C64C 2401EFFF */  addiu      $at, $zero, -0x1001
/* 5D250 8005C650 01616024 */  and        $t4, $t3, $at
/* 5D254 8005C654 18400004 */  blez       $v0, .L8005C668
/* 5D258 8005C658 AC6C0080 */   sw        $t4, 0x80($v1)
/* 5D25C 8005C65C 358E8000 */  ori        $t6, $t4, 0x8000
/* 5D260 8005C660 8462013C */  lh         $v0, 0x13c($v1)
/* 5D264 8005C664 AC6E0080 */  sw         $t6, 0x80($v1)
.L8005C668:
/* 5D268 8005C668 24017FFF */  addiu      $at, $zero, 0x7fff
/* 5D26C 8005C66C 10410003 */  beq        $v0, $at, .L8005C67C
/* 5D270 8005C670 24018000 */   addiu     $at, $zero, -0x8000
/* 5D274 8005C674 14410009 */  bne        $v0, $at, .L8005C69C
/* 5D278 8005C678 00000000 */   nop
.L8005C67C:
/* 5D27C 8005C67C 0C017506 */  jal        func_8005D418
/* 5D280 8005C680 AFA3001C */   sw        $v1, 0x1c($sp)
/* 5D284 8005C684 8FA3001C */  lw         $v1, 0x1c($sp)
/* 5D288 8005C688 10400002 */  beqz       $v0, .L8005C694
/* 5D28C 8005C68C 00000000 */   nop
/* 5D290 8005C690 A460013C */  sh         $zero, 0x13c($v1)
.L8005C694:
/* 5D294 8005C694 1000000A */  b          .L8005C6C0
/* 5D298 8005C698 24020002 */   addiu     $v0, $zero, 2
.L8005C69C:
/* 5D29C 8005C69C 04410004 */  bgez       $v0, .L8005C6B0
/* 5D2A0 8005C6A0 244F0001 */   addiu     $t7, $v0, 1
/* 5D2A4 8005C6A4 A46F013C */  sh         $t7, 0x13c($v1)
/* 5D2A8 8005C6A8 8462013C */  lh         $v0, 0x13c($v1)
/* 5D2AC 8005C6AC 00000000 */  nop
.L8005C6B0:
/* 5D2B0 8005C6B0 18400002 */  blez       $v0, .L8005C6BC
/* 5D2B4 8005C6B4 2458FFFF */   addiu     $t8, $v0, -1
/* 5D2B8 8005C6B8 A478013C */  sh         $t8, 0x13c($v1)
.L8005C6BC:
/* 5D2BC 8005C6BC 24020001 */  addiu      $v0, $zero, 1
.L8005C6C0:
/* 5D2C0 8005C6C0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5D2C4 8005C6C4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 5D2C8 8005C6C8 03E00008 */  jr         $ra
/* 5D2CC 8005C6CC 00000000 */   nop

glabel func_8005C6D0
/* 5D2D0 8005C6D0 04810002 */  bgez       $a0, .L8005C6DC
/* 5D2D4 8005C6D4 00000000 */   nop
/* 5D2D8 8005C6D8 00042023 */  negu       $a0, $a0
.L8005C6DC:
/* 5D2DC 8005C6DC 03E00008 */  jr         $ra
/* 5D2E0 8005C6E0 00801025 */   or        $v0, $a0, $zero

glabel func_8005C6E4
/* 5D2E4 8005C6E4 44802000 */  mtc1       $zero, $f4
/* 5D2E8 8005C6E8 00000000 */  nop
/* 5D2EC 8005C6EC 4604603C */  c.lt.s     $f12, $f4
/* 5D2F0 8005C6F0 00000000 */  nop
/* 5D2F4 8005C6F4 45000002 */  bc1f       .L8005C700
/* 5D2F8 8005C6F8 00000000 */   nop
/* 5D2FC 8005C6FC 46006307 */  neg.s      $f12, $f12
.L8005C700:
/* 5D300 8005C700 03E00008 */  jr         $ra
/* 5D304 8005C704 46006006 */   mov.s     $f0, $f12

glabel func_8005C708
/* 5D308 8005C708 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5D30C 8005C70C AFBF0014 */  sw         $ra, 0x14($sp)
/* 5D310 8005C710 0C0005E3 */  jal        func_8000178C
/* 5D314 8005C714 AFA40018 */   sw        $a0, 0x18($sp)
/* 5D318 8005C718 8FA50018 */  lw         $a1, 0x18($sp)
/* 5D31C 8005C71C 00022600 */  sll        $a0, $v0, 0x18
/* 5D320 8005C720 00047603 */  sra        $t6, $a0, 0x18
/* 5D324 8005C724 01C02025 */  or         $a0, $t6, $zero
/* 5D328 8005C728 10A0000E */  beqz       $a1, .L8005C764
/* 5D32C 8005C72C 01C01825 */   or        $v1, $t6, $zero
/* 5D330 8005C730 01C5001A */  div        $zero, $t6, $a1
/* 5D334 8005C734 14A00002 */  bnez       $a1, .L8005C740
/* 5D338 8005C738 00000000 */   nop
/* 5D33C 8005C73C 0007000D */  break      7
.L8005C740:
/* 5D340 8005C740 2401FFFF */   addiu     $at, $zero, -1
/* 5D344 8005C744 14A10004 */  bne        $a1, $at, .L8005C758
/* 5D348 8005C748 3C018000 */   lui       $at, 0x8000
/* 5D34C 8005C74C 14810002 */  bne        $a0, $at, .L8005C758
/* 5D350 8005C750 00000000 */   nop
/* 5D354 8005C754 0006000D */  break      6
.L8005C758:
/* 5D358 8005C758 00001810 */   mfhi      $v1
/* 5D35C 8005C75C 00000000 */  nop
/* 5D360 8005C760 00000000 */  nop
.L8005C764:
/* 5D364 8005C764 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5D368 8005C768 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5D36C 8005C76C 03E00008 */  jr         $ra
/* 5D370 8005C770 00601025 */   or        $v0, $v1, $zero

glabel func_8005C774
/* 5D374 8005C774 14800005 */  bnez       $a0, .L8005C78C
/* 5D378 8005C778 28810064 */   slti      $at, $a0, 0x64
/* 5D37C 8005C77C 3C02800C */  lui        $v0, %hi(D_800BE668)
/* 5D380 8005C780 9442E668 */  lhu        $v0, %lo(D_800BE668)($v0)
/* 5D384 8005C784 03E00008 */  jr         $ra
/* 5D388 8005C788 00000000 */   nop
.L8005C78C:
/* 5D38C 8005C78C 14200007 */  bnez       $at, .L8005C7AC
/* 5D390 8005C790 3C02800C */   lui       $v0, %hi(D_800BE668)
/* 5D394 8005C794 9442E668 */  lhu        $v0, %lo(D_800BE668)($v0)
/* 5D398 8005C798 00000000 */  nop
/* 5D39C 8005C79C 24420001 */  addiu      $v0, $v0, 1
/* 5D3A0 8005C7A0 304EFFFF */  andi       $t6, $v0, 0xffff
/* 5D3A4 8005C7A4 03E00008 */  jr         $ra
/* 5D3A8 8005C7A8 01C01025 */   or        $v0, $t6, $zero
.L8005C7AC:
/* 5D3AC 8005C7AC 44844000 */  mtc1       $a0, $f8
/* 5D3B0 8005C7B0 3C0142C8 */  lui        $at, 0x42c8
/* 5D3B4 8005C7B4 468042A0 */  cvt.s.w    $f10, $f8
/* 5D3B8 8005C7B8 44813000 */  mtc1       $at, $f6
/* 5D3BC 8005C7BC 3C0F800C */  lui        $t7, %hi(D_800BE668)
/* 5D3C0 8005C7C0 460A3403 */  div.s      $f16, $f6, $f10
/* 5D3C4 8005C7C4 95EFE668 */  lhu        $t7, %lo(D_800BE668)($t7)
/* 5D3C8 8005C7C8 24020001 */  addiu      $v0, $zero, 1
/* 5D3CC 8005C7CC 25F80001 */  addiu      $t8, $t7, 1
/* 5D3D0 8005C7D0 44982000 */  mtc1       $t8, $f4
/* 5D3D4 8005C7D4 3C014F00 */  lui        $at, 0x4f00
/* 5D3D8 8005C7D8 46802020 */  cvt.s.w    $f0, $f4
/* 5D3DC 8005C7DC 00000000 */  nop
/* 5D3E0 8005C7E0 46100003 */  div.s      $f0, $f0, $f16
/* 5D3E4 8005C7E4 4459F800 */  cfc1       $t9, $31
/* 5D3E8 8005C7E8 44C2F800 */  ctc1       $v0, $31
/* 5D3EC 8005C7EC 00000000 */  nop
/* 5D3F0 8005C7F0 460004A4 */  cvt.w.s    $f18, $f0
/* 5D3F4 8005C7F4 4442F800 */  cfc1       $v0, $31
/* 5D3F8 8005C7F8 00000000 */  nop
/* 5D3FC 8005C7FC 30420078 */  andi       $v0, $v0, 0x78
/* 5D400 8005C800 10400012 */  beqz       $v0, .L8005C84C
/* 5D404 8005C804 00000000 */   nop
/* 5D408 8005C808 44819000 */  mtc1       $at, $f18
/* 5D40C 8005C80C 24020001 */  addiu      $v0, $zero, 1
/* 5D410 8005C810 46120481 */  sub.s      $f18, $f0, $f18
/* 5D414 8005C814 3C018000 */  lui        $at, 0x8000
/* 5D418 8005C818 44C2F800 */  ctc1       $v0, $31
/* 5D41C 8005C81C 00000000 */  nop
/* 5D420 8005C820 460094A4 */  cvt.w.s    $f18, $f18
/* 5D424 8005C824 4442F800 */  cfc1       $v0, $31
/* 5D428 8005C828 00000000 */  nop
/* 5D42C 8005C82C 30420078 */  andi       $v0, $v0, 0x78
/* 5D430 8005C830 14400004 */  bnez       $v0, .L8005C844
/* 5D434 8005C834 00000000 */   nop
/* 5D438 8005C838 44029000 */  mfc1       $v0, $f18
/* 5D43C 8005C83C 10000007 */  b          .L8005C85C
/* 5D440 8005C840 00411025 */   or        $v0, $v0, $at
.L8005C844:
/* 5D444 8005C844 10000005 */  b          .L8005C85C
/* 5D448 8005C848 2402FFFF */   addiu     $v0, $zero, -1
.L8005C84C:
/* 5D44C 8005C84C 44029000 */  mfc1       $v0, $f18
/* 5D450 8005C850 00000000 */  nop
/* 5D454 8005C854 0440FFFB */  bltz       $v0, .L8005C844
/* 5D458 8005C858 00000000 */   nop
.L8005C85C:
/* 5D45C 8005C85C 44D9F800 */  ctc1       $t9, $31
/* 5D460 8005C860 3048FFFF */  andi       $t0, $v0, 0xffff
/* 5D464 8005C864 01001025 */  or         $v0, $t0, $zero
/* 5D468 8005C868 03E00008 */  jr         $ra
/* 5D46C 8005C86C 00000000 */   nop

glabel func_8005C870
/* 5D470 8005C870 308E00FF */  andi       $t6, $a0, 0xff
/* 5D474 8005C874 AFA40000 */  sw         $a0, ($sp)
/* 5D478 8005C878 31CF0030 */  andi       $t7, $t6, 0x30
/* 5D47C 8005C87C 24010030 */  addiu      $at, $zero, 0x30
/* 5D480 8005C880 15E10005 */  bne        $t7, $at, .L8005C898
/* 5D484 8005C884 01C02025 */   or        $a0, $t6, $zero
/* 5D488 8005C888 01C01025 */  or         $v0, $t6, $zero
/* 5D48C 8005C88C 305800C0 */  andi       $t8, $v0, 0xc0
/* 5D490 8005C890 03E00008 */  jr         $ra
/* 5D494 8005C894 03001025 */   or        $v0, $t8, $zero
.L8005C898:
/* 5D498 8005C898 00801025 */  or         $v0, $a0, $zero
/* 5D49C 8005C89C 03E00008 */  jr         $ra
/* 5D4A0 8005C8A0 00000000 */   nop

glabel func_8005C8A4
/* 5D4A4 8005C8A4 3C05800C */  lui        $a1, %hi(D_800BE590)
/* 5D4A8 8005C8A8 24A5E590 */  addiu      $a1, $a1, %lo(D_800BE590)
/* 5D4AC 8005C8AC 84A30000 */  lh         $v1, ($a1)
/* 5D4B0 8005C8B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5D4B4 8005C8B4 14600005 */  bnez       $v1, .L8005C8CC
/* 5D4B8 8005C8B8 AFBF0014 */   sw        $ra, 0x14($sp)
/* 5D4BC 8005C8BC 3C06800C */  lui        $a2, %hi(D_800BE594)
/* 5D4C0 8005C8C0 24C6E594 */  addiu      $a2, $a2, %lo(D_800BE594)
/* 5D4C4 8005C8C4 10000057 */  b          .L8005CA24
/* 5D4C8 8005C8C8 A4C00000 */   sh        $zero, ($a2)
.L8005C8CC:
/* 5D4CC 8005C8CC 306E0001 */  andi       $t6, $v1, 1
/* 5D4D0 8005C8D0 15C0000D */  bnez       $t6, .L8005C908
/* 5D4D4 8005C8D4 2468FFFF */   addiu     $t0, $v1, -1
/* 5D4D8 8005C8D8 3C07800C */  lui        $a3, %hi(D_800BE59C)
/* 5D4DC 8005C8DC 24E7E59C */  addiu      $a3, $a3, %lo(D_800BE59C)
/* 5D4E0 8005C8E0 8CE20000 */  lw         $v0, ($a3)
/* 5D4E4 8005C8E4 3C06800C */  lui        $a2, %hi(D_800BE594)
/* 5D4E8 8005C8E8 24C6E594 */  addiu      $a2, $a2, %lo(D_800BE594)
/* 5D4EC 8005C8EC 04410004 */  bgez       $v0, .L8005C900
/* 5D4F0 8005C8F0 00027C03 */   sra       $t7, $v0, 0x10
/* 5D4F4 8005C8F4 3401FFFF */  ori        $at, $zero, 0xffff
/* 5D4F8 8005C8F8 00220821 */  addu       $at, $at, $v0
/* 5D4FC 8005C8FC 00017C03 */  sra        $t7, $at, 0x10
.L8005C900:
/* 5D500 8005C900 1000000D */  b          .L8005C938
/* 5D504 8005C904 A4CF0000 */   sh        $t7, ($a2)
.L8005C908:
/* 5D508 8005C908 3C07800C */  lui        $a3, %hi(D_800BE59C)
/* 5D50C 8005C90C 24E7E59C */  addiu      $a3, $a3, %lo(D_800BE59C)
/* 5D510 8005C910 8CE20000 */  lw         $v0, ($a3)
/* 5D514 8005C914 3C06800C */  lui        $a2, %hi(D_800BE594)
/* 5D518 8005C918 0002C023 */  negu       $t8, $v0
/* 5D51C 8005C91C 24C6E594 */  addiu      $a2, $a2, %lo(D_800BE594)
/* 5D520 8005C920 07010004 */  bgez       $t8, .L8005C934
/* 5D524 8005C924 0018CC03 */   sra       $t9, $t8, 0x10
/* 5D528 8005C928 3401FFFF */  ori        $at, $zero, 0xffff
/* 5D52C 8005C92C 00380821 */  addu       $at, $at, $t8
/* 5D530 8005C930 0001CC03 */  sra        $t9, $at, 0x10
.L8005C934:
/* 5D534 8005C934 A4D90000 */  sh         $t9, ($a2)
.L8005C938:
/* 5D538 8005C938 A4A80000 */  sh         $t0, ($a1)
/* 5D53C 8005C93C 3C04800C */  lui        $a0, %hi(D_800BE598)
/* 5D540 8005C940 8484E598 */  lh         $a0, %lo(D_800BE598)($a0)
/* 5D544 8005C944 24010001 */  addiu      $at, $zero, 1
/* 5D548 8005C948 10810008 */  beq        $a0, $at, .L8005C96C
/* 5D54C 8005C94C 24010002 */   addiu     $at, $zero, 2
/* 5D550 8005C950 10810011 */  beq        $a0, $at, .L8005C998
/* 5D554 8005C954 3C09800C */   lui       $t1, %hi(D_800BE5A0)
/* 5D558 8005C958 8D29E5A0 */  lw         $t1, %lo(D_800BE5A0)($t1)
/* 5D55C 8005C95C 00000000 */  nop
/* 5D560 8005C960 00495023 */  subu       $t2, $v0, $t1
/* 5D564 8005C964 1000001B */  b          .L8005C9D4
/* 5D568 8005C968 ACEA0000 */   sw        $t2, ($a3)
.L8005C96C:
/* 5D56C 8005C96C 84AB0000 */  lh         $t3, ($a1)
/* 5D570 8005C970 3C0D800C */  lui        $t5, %hi(D_800BE5A0)
/* 5D574 8005C974 316C0001 */  andi       $t4, $t3, 1
/* 5D578 8005C978 15800016 */  bnez       $t4, .L8005C9D4
/* 5D57C 8005C97C 00000000 */   nop
/* 5D580 8005C980 8DADE5A0 */  lw         $t5, %lo(D_800BE5A0)($t5)
/* 5D584 8005C984 00000000 */  nop
/* 5D588 8005C988 000D7040 */  sll        $t6, $t5, 1
/* 5D58C 8005C98C 004E7823 */  subu       $t7, $v0, $t6
/* 5D590 8005C990 10000010 */  b          .L8005C9D4
/* 5D594 8005C994 ACEF0000 */   sw        $t7, ($a3)
.L8005C998:
/* 5D598 8005C998 84B80000 */  lh         $t8, ($a1)
/* 5D59C 8005C99C 00000000 */  nop
/* 5D5A0 8005C9A0 33190002 */  andi       $t9, $t8, 2
/* 5D5A4 8005C9A4 1720000B */  bnez       $t9, .L8005C9D4
/* 5D5A8 8005C9A8 00000000 */   nop
/* 5D5AC 8005C9AC 04410004 */  bgez       $v0, .L8005C9C0
/* 5D5B0 8005C9B0 00022403 */   sra       $a0, $v0, 0x10
/* 5D5B4 8005C9B4 3401FFFF */  ori        $at, $zero, 0xffff
/* 5D5B8 8005C9B8 00220821 */  addu       $at, $at, $v0
/* 5D5BC 8005C9BC 00012403 */  sra        $a0, $at, 0x10
.L8005C9C0:
/* 5D5C0 8005C9C0 0C0171C2 */  jal        func_8005C708
/* 5D5C4 8005C9C4 00000000 */   nop
/* 5D5C8 8005C9C8 3C06800C */  lui        $a2, %hi(D_800BE594)
/* 5D5CC 8005C9CC 24C6E594 */  addiu      $a2, $a2, %lo(D_800BE594)
/* 5D5D0 8005C9D0 A4C20000 */  sh         $v0, ($a2)
.L8005C9D4:
/* 5D5D4 8005C9D4 3C08800C */  lui        $t0, %hi(D_800BE5D0)
/* 5D5D8 8005C9D8 9509E5D0 */  lhu        $t1, %lo(D_800BE5D0)($t0)
/* 5D5DC 8005C9DC 3C02800D */  lui        $v0, %hi(D_800CCC78)
/* 5D5E0 8005C9E0 00095100 */  sll        $t2, $t1, 4
/* 5D5E4 8005C9E4 004A1021 */  addu       $v0, $v0, $t2
/* 5D5E8 8005C9E8 8442CC78 */  lh         $v0, %lo(D_800CCC78)($v0)
/* 5D5EC 8005C9EC 24010001 */  addiu      $at, $zero, 1
/* 5D5F0 8005C9F0 14410005 */  bne        $v0, $at, .L8005CA08
/* 5D5F4 8005C9F4 24010002 */   addiu     $at, $zero, 2
/* 5D5F8 8005C9F8 84CB0000 */  lh         $t3, ($a2)
/* 5D5FC 8005C9FC 00000000 */  nop
/* 5D600 8005CA00 05600007 */  bltz       $t3, .L8005CA20
/* 5D604 8005CA04 24010002 */   addiu     $at, $zero, 2
.L8005CA08:
/* 5D608 8005CA08 14410007 */  bne        $v0, $at, .L8005CA28
/* 5D60C 8005CA0C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 5D610 8005CA10 84CC0000 */  lh         $t4, ($a2)
/* 5D614 8005CA14 00000000 */  nop
/* 5D618 8005CA18 19800003 */  blez       $t4, .L8005CA28
/* 5D61C 8005CA1C 8FBF0014 */   lw        $ra, 0x14($sp)
.L8005CA20:
/* 5D620 8005CA20 A4C00000 */  sh         $zero, ($a2)
.L8005CA24:
/* 5D624 8005CA24 8FBF0014 */  lw         $ra, 0x14($sp)
.L8005CA28:
/* 5D628 8005CA28 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5D62C 8005CA2C 03E00008 */  jr         $ra
/* 5D630 8005CA30 00000000 */   nop

glabel func_8005CA34
/* 5D634 8005CA34 00047400 */  sll        $t6, $a0, 0x10
/* 5D638 8005CA38 01C5001A */  div        $zero, $t6, $a1
/* 5D63C 8005CA3C 3C01800C */  lui        $at, %hi(D_800BE598)
/* 5D640 8005CA40 A420E598 */  sh         $zero, %lo(D_800BE598)($at)
/* 5D644 8005CA44 3C01800C */  lui        $at, %hi(D_800BE590)
/* 5D648 8005CA48 A425E590 */  sh         $a1, %lo(D_800BE590)($at)
/* 5D64C 8005CA4C 01C07825 */  or         $t7, $t6, $zero
/* 5D650 8005CA50 3C02800C */  lui        $v0, %hi(D_800BE59C)
/* 5D654 8005CA54 2442E59C */  addiu      $v0, $v0, %lo(D_800BE59C)
/* 5D658 8005CA58 AC4E0000 */  sw         $t6, ($v0)
/* 5D65C 8005CA5C 14A00002 */  bnez       $a1, .L8005CA68
/* 5D660 8005CA60 00000000 */   nop
/* 5D664 8005CA64 0007000D */  break      7
.L8005CA68:
/* 5D668 8005CA68 2401FFFF */   addiu     $at, $zero, -1
/* 5D66C 8005CA6C 14A10004 */  bne        $a1, $at, .L8005CA80
/* 5D670 8005CA70 3C018000 */   lui       $at, 0x8000
/* 5D674 8005CA74 15E10002 */  bne        $t7, $at, .L8005CA80
/* 5D678 8005CA78 00000000 */   nop
/* 5D67C 8005CA7C 0006000D */  break      6
.L8005CA80:
/* 5D680 8005CA80 3C01800C */   lui       $at, %hi(D_800BE5A0)
/* 5D684 8005CA84 0000C012 */  mflo       $t8
/* 5D688 8005CA88 AC38E5A0 */  sw         $t8, %lo(D_800BE5A0)($at)
/* 5D68C 8005CA8C 3C01800C */  lui        $at, %hi(D_800BE594)
/* 5D690 8005CA90 03E00008 */  jr         $ra
/* 5D694 8005CA94 A420E594 */   sh        $zero, %lo(D_800BE594)($at)

glabel func_8005CA98
/* 5D698 8005CA98 3C02800C */  lui        $v0, %hi(D_800BE590)
/* 5D69C 8005CA9C 8442E590 */  lh         $v0, %lo(D_800BE590)($v0)
/* 5D6A0 8005CAA0 03E00008 */  jr         $ra
/* 5D6A4 8005CAA4 00000000 */   nop

glabel func_8005CAA8
/* 5D6A8 8005CAA8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5D6AC 8005CAAC 000E7880 */  sll        $t7, $t6, 2
/* 5D6B0 8005CAB0 01EE7823 */  subu       $t7, $t7, $t6
/* 5D6B4 8005CAB4 000F7880 */  sll        $t7, $t7, 2
/* 5D6B8 8005CAB8 01EE7821 */  addu       $t7, $t7, $t6
/* 5D6BC 8005CABC 000F7880 */  sll        $t7, $t7, 2
/* 5D6C0 8005CAC0 3C07800F */  lui        $a3, %hi(gActors)
/* 5D6C4 8005CAC4 01EE7823 */  subu       $t7, $t7, $t6
/* 5D6C8 8005CAC8 24E7F510 */  addiu      $a3, $a3, %lo(gActors)
/* 5D6CC 8005CACC 000F78C0 */  sll        $t7, $t7, 3
/* 5D6D0 8005CAD0 00EF1021 */  addu       $v0, $a3, $t7
/* 5D6D4 8005CAD4 8043017D */  lb         $v1, 0x17d($v0)
/* 5D6D8 8005CAD8 AFA40000 */  sw         $a0, ($sp)
/* 5D6DC 8005CADC 1060000B */  beqz       $v1, .L8005CB0C
/* 5D6E0 8005CAE0 00000000 */   nop
/* 5D6E4 8005CAE4 8058017C */  lb         $t8, 0x17c($v0)
/* 5D6E8 8005CAE8 00000000 */  nop
/* 5D6EC 8005CAEC 27190001 */  addiu      $t9, $t8, 1
/* 5D6F0 8005CAF0 A059017C */  sb         $t9, 0x17c($v0)
/* 5D6F4 8005CAF4 8048017C */  lb         $t0, 0x17c($v0)
/* 5D6F8 8005CAF8 00000000 */  nop
/* 5D6FC 8005CAFC 0103082A */  slt        $at, $t0, $v1
/* 5D700 8005CB00 14200002 */  bnez       $at, .L8005CB0C
/* 5D704 8005CB04 00000000 */   nop
/* 5D708 8005CB08 A040017C */  sb         $zero, 0x17c($v0)
.L8005CB0C:
/* 5D70C 8005CB0C 8049017C */  lb         $t1, 0x17c($v0)
/* 5D710 8005CB10 00001825 */  or         $v1, $zero, $zero
/* 5D714 8005CB14 152001A4 */  bnez       $t1, .L8005D1A8
/* 5D718 8005CB18 00000000 */   nop
/* 5D71C 8005CB1C 8444017E */  lh         $a0, 0x17e($v0)
/* 5D720 8005CB20 804B017D */  lb         $t3, 0x17d($v0)
/* 5D724 8005CB24 00045080 */  sll        $t2, $a0, 2
/* 5D728 8005CB28 15600057 */  bnez       $t3, .L8005CC88
/* 5D72C 8005CB2C 01402025 */   or        $a0, $t2, $zero
/* 5D730 8005CB30 8C4C0080 */  lw         $t4, 0x80($v0)
/* 5D734 8005CB34 00853021 */  addu       $a2, $a0, $a1
/* 5D738 8005CB38 318D0020 */  andi       $t5, $t4, 0x20
/* 5D73C 8005CB3C 15A00008 */  bnez       $t5, .L8005CB60
/* 5D740 8005CB40 00000000 */   nop
/* 5D744 8005CB44 01453021 */  addu       $a2, $t2, $a1
/* 5D748 8005CB48 80CE0000 */  lb         $t6, ($a2)
/* 5D74C 8005CB4C 00000000 */  nop
/* 5D750 8005CB50 A44E00AA */  sh         $t6, 0xaa($v0)
/* 5D754 8005CB54 80CF0001 */  lb         $t7, 1($a2)
/* 5D758 8005CB58 10000009 */  b          .L8005CB80
/* 5D75C 8005CB5C A44F00AC */   sh        $t7, 0xac($v0)
.L8005CB60:
/* 5D760 8005CB60 80D80001 */  lb         $t8, 1($a2)
/* 5D764 8005CB64 00000000 */  nop
/* 5D768 8005CB68 0018C823 */  negu       $t9, $t8
/* 5D76C 8005CB6C A45900AA */  sh         $t9, 0xaa($v0)
/* 5D770 8005CB70 80C80000 */  lb         $t0, ($a2)
/* 5D774 8005CB74 00000000 */  nop
/* 5D778 8005CB78 00084823 */  negu       $t1, $t0
/* 5D77C 8005CB7C A44900AC */  sh         $t1, 0xac($v0)
.L8005CB80:
/* 5D780 8005CB80 80CA0002 */  lb         $t2, 2($a2)
/* 5D784 8005CB84 844C00AA */  lh         $t4, 0xaa($v0)
/* 5D788 8005CB88 A44A00AE */  sh         $t2, 0xae($v0)
/* 5D78C 8005CB8C 80CB0003 */  lb         $t3, 3($a2)
/* 5D790 8005CB90 448C2000 */  mtc1       $t4, $f4
/* 5D794 8005CB94 A44B00B0 */  sh         $t3, 0xb0($v0)
/* 5D798 8005CB98 468021A0 */  cvt.s.w    $f6, $f4
/* 5D79C 8005CB9C C4E80120 */  lwc1       $f8, 0x120($a3)
/* 5D7A0 8005CBA0 844F00AC */  lh         $t7, 0xac($v0)
/* 5D7A4 8005CBA4 46083282 */  mul.s      $f10, $f6, $f8
/* 5D7A8 8005CBA8 448F9000 */  mtc1       $t7, $f18
/* 5D7AC 8005CBAC 844800AE */  lh         $t0, 0xae($v0)
/* 5D7B0 8005CBB0 844B00B0 */  lh         $t3, 0xb0($v0)
/* 5D7B4 8005CBB4 444DF800 */  cfc1       $t5, $31
/* 5D7B8 8005CBB8 00000000 */  nop
/* 5D7BC 8005CBBC 35A10003 */  ori        $at, $t5, 3
/* 5D7C0 8005CBC0 38210002 */  xori       $at, $at, 2
/* 5D7C4 8005CBC4 44C1F800 */  ctc1       $at, $31
/* 5D7C8 8005CBC8 00000000 */  nop
/* 5D7CC 8005CBCC 46005424 */  cvt.w.s    $f16, $f10
/* 5D7D0 8005CBD0 44CDF800 */  ctc1       $t5, $31
/* 5D7D4 8005CBD4 440E8000 */  mfc1       $t6, $f16
/* 5D7D8 8005CBD8 46809120 */  cvt.s.w    $f4, $f18
/* 5D7DC 8005CBDC A44E00AA */  sh         $t6, 0xaa($v0)
/* 5D7E0 8005CBE0 C4E60120 */  lwc1       $f6, 0x120($a3)
/* 5D7E4 8005CBE4 44888000 */  mtc1       $t0, $f16
/* 5D7E8 8005CBE8 46062202 */  mul.s      $f8, $f4, $f6
/* 5D7EC 8005CBEC 4458F800 */  cfc1       $t8, $31
/* 5D7F0 8005CBF0 00000000 */  nop
/* 5D7F4 8005CBF4 37010003 */  ori        $at, $t8, 3
/* 5D7F8 8005CBF8 38210002 */  xori       $at, $at, 2
/* 5D7FC 8005CBFC 44C1F800 */  ctc1       $at, $31
/* 5D800 8005CC00 00000000 */  nop
/* 5D804 8005CC04 460042A4 */  cvt.w.s    $f10, $f8
/* 5D808 8005CC08 44D8F800 */  ctc1       $t8, $31
/* 5D80C 8005CC0C 44195000 */  mfc1       $t9, $f10
/* 5D810 8005CC10 468084A0 */  cvt.s.w    $f18, $f16
/* 5D814 8005CC14 A45900AC */  sh         $t9, 0xac($v0)
/* 5D818 8005CC18 C4E40120 */  lwc1       $f4, 0x120($a3)
/* 5D81C 8005CC1C 448B5000 */  mtc1       $t3, $f10
/* 5D820 8005CC20 46049182 */  mul.s      $f6, $f18, $f4
/* 5D824 8005CC24 4449F800 */  cfc1       $t1, $31
/* 5D828 8005CC28 00000000 */  nop
/* 5D82C 8005CC2C 35210003 */  ori        $at, $t1, 3
/* 5D830 8005CC30 38210002 */  xori       $at, $at, 2
/* 5D834 8005CC34 44C1F800 */  ctc1       $at, $31
/* 5D838 8005CC38 00000000 */  nop
/* 5D83C 8005CC3C 46003224 */  cvt.w.s    $f8, $f6
/* 5D840 8005CC40 44C9F800 */  ctc1       $t1, $31
/* 5D844 8005CC44 440A4000 */  mfc1       $t2, $f8
/* 5D848 8005CC48 46805420 */  cvt.s.w    $f16, $f10
/* 5D84C 8005CC4C A44A00AE */  sh         $t2, 0xae($v0)
/* 5D850 8005CC50 C4F20120 */  lwc1       $f18, 0x120($a3)
/* 5D854 8005CC54 00000000 */  nop
/* 5D858 8005CC58 46128102 */  mul.s      $f4, $f16, $f18
/* 5D85C 8005CC5C 444CF800 */  cfc1       $t4, $31
/* 5D860 8005CC60 00000000 */  nop
/* 5D864 8005CC64 35810003 */  ori        $at, $t4, 3
/* 5D868 8005CC68 38210002 */  xori       $at, $at, 2
/* 5D86C 8005CC6C 44C1F800 */  ctc1       $at, $31
/* 5D870 8005CC70 00000000 */  nop
/* 5D874 8005CC74 460021A4 */  cvt.w.s    $f6, $f4
/* 5D878 8005CC78 440D3000 */  mfc1       $t5, $f6
/* 5D87C 8005CC7C 44CCF800 */  ctc1       $t4, $31
/* 5D880 8005CC80 10000145 */  b          .L8005D198
/* 5D884 8005CC84 A44D00B0 */   sh        $t5, 0xb0($v0)
.L8005CC88:
/* 5D888 8005CC88 8C4E0080 */  lw         $t6, 0x80($v0)
/* 5D88C 8005CC8C 00A43021 */  addu       $a2, $a1, $a0
/* 5D890 8005CC90 31CF0020 */  andi       $t7, $t6, 0x20
/* 5D894 8005CC94 15E0006D */  bnez       $t7, .L8005CE4C
/* 5D898 8005CC98 00000000 */   nop
/* 5D89C 8005CC9C 00A43021 */  addu       $a2, $a1, $a0
/* 5D8A0 8005CCA0 80D90000 */  lb         $t9, ($a2)
/* 5D8A4 8005CCA4 845800AA */  lh         $t8, 0xaa($v0)
/* 5D8A8 8005CCA8 44995000 */  mtc1       $t9, $f10
/* 5D8AC 8005CCAC C4E20120 */  lwc1       $f2, 0x120($a3)
/* 5D8B0 8005CCB0 46805420 */  cvt.s.w    $f16, $f10
/* 5D8B4 8005CCB4 44984000 */  mtc1       $t8, $f8
/* 5D8B8 8005CCB8 3C013F80 */  lui        $at, 0x3f80
/* 5D8BC 8005CCBC 46101302 */  mul.s      $f12, $f2, $f16
/* 5D8C0 8005CCC0 46804020 */  cvt.s.w    $f0, $f8
/* 5D8C4 8005CCC4 460C003C */  c.lt.s     $f0, $f12
/* 5D8C8 8005CCC8 00000000 */  nop
/* 5D8CC 8005CCCC 45000017 */  bc1f       .L8005CD2C
/* 5D8D0 8005CCD0 00000000 */   nop
/* 5D8D4 8005CCD4 44817000 */  mtc1       $at, $f14
/* 5D8D8 8005CCD8 24030001 */  addiu      $v1, $zero, 1
/* 5D8DC 8005CCDC 46027482 */  mul.s      $f18, $f14, $f2
/* 5D8E0 8005CCE0 46120100 */  add.s      $f4, $f0, $f18
/* 5D8E4 8005CCE4 4448F800 */  cfc1       $t0, $31
/* 5D8E8 8005CCE8 00000000 */  nop
/* 5D8EC 8005CCEC 35010003 */  ori        $at, $t0, 3
/* 5D8F0 8005CCF0 38210002 */  xori       $at, $at, 2
/* 5D8F4 8005CCF4 44C1F800 */  ctc1       $at, $31
/* 5D8F8 8005CCF8 3C01800F */  lui        $at, 0x800f
/* 5D8FC 8005CCFC 460021A4 */  cvt.w.s    $f6, $f4
/* 5D900 8005CD00 44093000 */  mfc1       $t1, $f6
/* 5D904 8005CD04 44C8F800 */  ctc1       $t0, $31
/* 5D908 8005CD08 A44900AA */  sh         $t1, 0xaa($v0)
/* 5D90C 8005CD0C 80CB0000 */  lb         $t3, ($a2)
/* 5D910 8005CD10 844A00AA */  lh         $t2, 0xaa($v0)
/* 5D914 8005CD14 448B5000 */  mtc1       $t3, $f10
/* 5D918 8005CD18 C422F630 */  lwc1       $f2, -0x9d0($at)
/* 5D91C 8005CD1C 46805420 */  cvt.s.w    $f16, $f10
/* 5D920 8005CD20 448A4000 */  mtc1       $t2, $f8
/* 5D924 8005CD24 46101302 */  mul.s      $f12, $f2, $f16
/* 5D928 8005CD28 46804020 */  cvt.s.w    $f0, $f8
.L8005CD2C:
/* 5D92C 8005CD2C 4600603C */  c.lt.s     $f12, $f0
/* 5D930 8005CD30 3C013F80 */  lui        $at, 0x3f80
/* 5D934 8005CD34 44817000 */  mtc1       $at, $f14
/* 5D938 8005CD38 45000010 */  bc1f       .L8005CD7C
/* 5D93C 8005CD3C 00000000 */   nop
/* 5D940 8005CD40 46027482 */  mul.s      $f18, $f14, $f2
/* 5D944 8005CD44 24630001 */  addiu      $v1, $v1, 1
/* 5D948 8005CD48 46120101 */  sub.s      $f4, $f0, $f18
/* 5D94C 8005CD4C 444CF800 */  cfc1       $t4, $31
/* 5D950 8005CD50 00000000 */  nop
/* 5D954 8005CD54 35810003 */  ori        $at, $t4, 3
/* 5D958 8005CD58 38210002 */  xori       $at, $at, 2
/* 5D95C 8005CD5C 44C1F800 */  ctc1       $at, $31
/* 5D960 8005CD60 3C01800F */  lui        $at, %hi(gActors+0x120)
/* 5D964 8005CD64 460021A4 */  cvt.w.s    $f6, $f4
/* 5D968 8005CD68 440D3000 */  mfc1       $t5, $f6
/* 5D96C 8005CD6C 44CCF800 */  ctc1       $t4, $31
/* 5D970 8005CD70 A44D00AA */  sh         $t5, 0xaa($v0)
/* 5D974 8005CD74 C422F630 */  lwc1       $f2, %lo(gActors+0x120)($at)
/* 5D978 8005CD78 00000000 */  nop
.L8005CD7C:
/* 5D97C 8005CD7C 80CF0001 */  lb         $t7, 1($a2)
/* 5D980 8005CD80 844E00AC */  lh         $t6, 0xac($v0)
/* 5D984 8005CD84 448F5000 */  mtc1       $t7, $f10
/* 5D988 8005CD88 448E4000 */  mtc1       $t6, $f8
/* 5D98C 8005CD8C 46805420 */  cvt.s.w    $f16, $f10
/* 5D990 8005CD90 46101302 */  mul.s      $f12, $f2, $f16
/* 5D994 8005CD94 46804020 */  cvt.s.w    $f0, $f8
/* 5D998 8005CD98 460C003C */  c.lt.s     $f0, $f12
/* 5D99C 8005CD9C 00000000 */  nop
/* 5D9A0 8005CDA0 45000016 */  bc1f       .L8005CDFC
/* 5D9A4 8005CDA4 00000000 */   nop
/* 5D9A8 8005CDA8 46027482 */  mul.s      $f18, $f14, $f2
/* 5D9AC 8005CDAC 24630001 */  addiu      $v1, $v1, 1
/* 5D9B0 8005CDB0 46120100 */  add.s      $f4, $f0, $f18
/* 5D9B4 8005CDB4 4458F800 */  cfc1       $t8, $31
/* 5D9B8 8005CDB8 00000000 */  nop
/* 5D9BC 8005CDBC 37010003 */  ori        $at, $t8, 3
/* 5D9C0 8005CDC0 38210002 */  xori       $at, $at, 2
/* 5D9C4 8005CDC4 44C1F800 */  ctc1       $at, $31
/* 5D9C8 8005CDC8 3C01800F */  lui        $at, 0x800f
/* 5D9CC 8005CDCC 460021A4 */  cvt.w.s    $f6, $f4
/* 5D9D0 8005CDD0 44193000 */  mfc1       $t9, $f6
/* 5D9D4 8005CDD4 44D8F800 */  ctc1       $t8, $31
/* 5D9D8 8005CDD8 A45900AC */  sh         $t9, 0xac($v0)
/* 5D9DC 8005CDDC 80C90001 */  lb         $t1, 1($a2)
/* 5D9E0 8005CDE0 844800AC */  lh         $t0, 0xac($v0)
/* 5D9E4 8005CDE4 44895000 */  mtc1       $t1, $f10
/* 5D9E8 8005CDE8 C422F630 */  lwc1       $f2, -0x9d0($at)
/* 5D9EC 8005CDEC 46805420 */  cvt.s.w    $f16, $f10
/* 5D9F0 8005CDF0 44884000 */  mtc1       $t0, $f8
/* 5D9F4 8005CDF4 46101302 */  mul.s      $f12, $f2, $f16
/* 5D9F8 8005CDF8 46804020 */  cvt.s.w    $f0, $f8
.L8005CDFC:
/* 5D9FC 8005CDFC 4600603C */  c.lt.s     $f12, $f0
/* 5DA00 8005CE00 00000000 */  nop
/* 5DA04 8005CE04 4500007F */  bc1f       .L8005D004
/* 5DA08 8005CE08 00000000 */   nop
/* 5DA0C 8005CE0C 46027482 */  mul.s      $f18, $f14, $f2
/* 5DA10 8005CE10 24630001 */  addiu      $v1, $v1, 1
/* 5DA14 8005CE14 46120101 */  sub.s      $f4, $f0, $f18
/* 5DA18 8005CE18 444AF800 */  cfc1       $t2, $31
/* 5DA1C 8005CE1C 00000000 */  nop
/* 5DA20 8005CE20 35410003 */  ori        $at, $t2, 3
/* 5DA24 8005CE24 38210002 */  xori       $at, $at, 2
/* 5DA28 8005CE28 44C1F800 */  ctc1       $at, $31
/* 5DA2C 8005CE2C 3C01800F */  lui        $at, %hi(gActors+0x120)
/* 5DA30 8005CE30 460021A4 */  cvt.w.s    $f6, $f4
/* 5DA34 8005CE34 440B3000 */  mfc1       $t3, $f6
/* 5DA38 8005CE38 44CAF800 */  ctc1       $t2, $31
/* 5DA3C 8005CE3C A44B00AC */  sh         $t3, 0xac($v0)
/* 5DA40 8005CE40 C422F630 */  lwc1       $f2, %lo(gActors+0x120)($at)
/* 5DA44 8005CE44 10000070 */  b          .L8005D008
/* 5DA48 8005CE48 80CD0002 */   lb        $t5, 2($a2)
.L8005CE4C:
/* 5DA4C 8005CE4C 80CD0001 */  lb         $t5, 1($a2)
/* 5DA50 8005CE50 844C00AA */  lh         $t4, 0xaa($v0)
/* 5DA54 8005CE54 000D7023 */  negu       $t6, $t5
/* 5DA58 8005CE58 448E5000 */  mtc1       $t6, $f10
/* 5DA5C 8005CE5C C4E20120 */  lwc1       $f2, 0x120($a3)
/* 5DA60 8005CE60 46805420 */  cvt.s.w    $f16, $f10
/* 5DA64 8005CE64 448C4000 */  mtc1       $t4, $f8
/* 5DA68 8005CE68 3C013F80 */  lui        $at, 0x3f80
/* 5DA6C 8005CE6C 46101302 */  mul.s      $f12, $f2, $f16
/* 5DA70 8005CE70 46804020 */  cvt.s.w    $f0, $f8
/* 5DA74 8005CE74 460C003C */  c.lt.s     $f0, $f12
/* 5DA78 8005CE78 00000000 */  nop
/* 5DA7C 8005CE7C 45000018 */  bc1f       .L8005CEE0
/* 5DA80 8005CE80 00000000 */   nop
/* 5DA84 8005CE84 44817000 */  mtc1       $at, $f14
/* 5DA88 8005CE88 24030001 */  addiu      $v1, $zero, 1
/* 5DA8C 8005CE8C 46027482 */  mul.s      $f18, $f14, $f2
/* 5DA90 8005CE90 46120100 */  add.s      $f4, $f0, $f18
/* 5DA94 8005CE94 444FF800 */  cfc1       $t7, $31
/* 5DA98 8005CE98 00000000 */  nop
/* 5DA9C 8005CE9C 35E10003 */  ori        $at, $t7, 3
/* 5DAA0 8005CEA0 38210002 */  xori       $at, $at, 2
/* 5DAA4 8005CEA4 44C1F800 */  ctc1       $at, $31
/* 5DAA8 8005CEA8 3C01800F */  lui        $at, 0x800f
/* 5DAAC 8005CEAC 460021A4 */  cvt.w.s    $f6, $f4
/* 5DAB0 8005CEB0 44183000 */  mfc1       $t8, $f6
/* 5DAB4 8005CEB4 44CFF800 */  ctc1       $t7, $31
/* 5DAB8 8005CEB8 A45800AA */  sh         $t8, 0xaa($v0)
/* 5DABC 8005CEBC 80C80001 */  lb         $t0, 1($a2)
/* 5DAC0 8005CEC0 845900AA */  lh         $t9, 0xaa($v0)
/* 5DAC4 8005CEC4 00084823 */  negu       $t1, $t0
/* 5DAC8 8005CEC8 44895000 */  mtc1       $t1, $f10
/* 5DACC 8005CECC C422F630 */  lwc1       $f2, -0x9d0($at)
/* 5DAD0 8005CED0 46805420 */  cvt.s.w    $f16, $f10
/* 5DAD4 8005CED4 44994000 */  mtc1       $t9, $f8
/* 5DAD8 8005CED8 46101302 */  mul.s      $f12, $f2, $f16
/* 5DADC 8005CEDC 46804020 */  cvt.s.w    $f0, $f8
.L8005CEE0:
/* 5DAE0 8005CEE0 4600603C */  c.lt.s     $f12, $f0
/* 5DAE4 8005CEE4 3C013F80 */  lui        $at, 0x3f80
/* 5DAE8 8005CEE8 44817000 */  mtc1       $at, $f14
/* 5DAEC 8005CEEC 45000010 */  bc1f       .L8005CF30
/* 5DAF0 8005CEF0 00000000 */   nop
/* 5DAF4 8005CEF4 46027482 */  mul.s      $f18, $f14, $f2
/* 5DAF8 8005CEF8 24630001 */  addiu      $v1, $v1, 1
/* 5DAFC 8005CEFC 46120101 */  sub.s      $f4, $f0, $f18
/* 5DB00 8005CF00 444AF800 */  cfc1       $t2, $31
/* 5DB04 8005CF04 00000000 */  nop
/* 5DB08 8005CF08 35410003 */  ori        $at, $t2, 3
/* 5DB0C 8005CF0C 38210002 */  xori       $at, $at, 2
/* 5DB10 8005CF10 44C1F800 */  ctc1       $at, $31
/* 5DB14 8005CF14 3C01800F */  lui        $at, %hi(gActors+0x120)
/* 5DB18 8005CF18 460021A4 */  cvt.w.s    $f6, $f4
/* 5DB1C 8005CF1C 440B3000 */  mfc1       $t3, $f6
/* 5DB20 8005CF20 44CAF800 */  ctc1       $t2, $31
/* 5DB24 8005CF24 A44B00AA */  sh         $t3, 0xaa($v0)
/* 5DB28 8005CF28 C422F630 */  lwc1       $f2, %lo(gActors+0x120)($at)
/* 5DB2C 8005CF2C 00000000 */  nop
.L8005CF30:
/* 5DB30 8005CF30 80CD0000 */  lb         $t5, ($a2)
/* 5DB34 8005CF34 844C00AC */  lh         $t4, 0xac($v0)
/* 5DB38 8005CF38 000D7023 */  negu       $t6, $t5
/* 5DB3C 8005CF3C 448E5000 */  mtc1       $t6, $f10
/* 5DB40 8005CF40 448C4000 */  mtc1       $t4, $f8
/* 5DB44 8005CF44 46805420 */  cvt.s.w    $f16, $f10
/* 5DB48 8005CF48 46101302 */  mul.s      $f12, $f2, $f16
/* 5DB4C 8005CF4C 46804020 */  cvt.s.w    $f0, $f8
/* 5DB50 8005CF50 460C003C */  c.lt.s     $f0, $f12
/* 5DB54 8005CF54 00000000 */  nop
/* 5DB58 8005CF58 45000017 */  bc1f       .L8005CFB8
/* 5DB5C 8005CF5C 00000000 */   nop
/* 5DB60 8005CF60 46027482 */  mul.s      $f18, $f14, $f2
/* 5DB64 8005CF64 24630001 */  addiu      $v1, $v1, 1
/* 5DB68 8005CF68 46120100 */  add.s      $f4, $f0, $f18
/* 5DB6C 8005CF6C 444FF800 */  cfc1       $t7, $31
/* 5DB70 8005CF70 00000000 */  nop
/* 5DB74 8005CF74 35E10003 */  ori        $at, $t7, 3
/* 5DB78 8005CF78 38210002 */  xori       $at, $at, 2
/* 5DB7C 8005CF7C 44C1F800 */  ctc1       $at, $31
/* 5DB80 8005CF80 3C01800F */  lui        $at, 0x800f
/* 5DB84 8005CF84 460021A4 */  cvt.w.s    $f6, $f4
/* 5DB88 8005CF88 44183000 */  mfc1       $t8, $f6
/* 5DB8C 8005CF8C 44CFF800 */  ctc1       $t7, $31
/* 5DB90 8005CF90 A45800AC */  sh         $t8, 0xac($v0)
/* 5DB94 8005CF94 80C80000 */  lb         $t0, ($a2)
/* 5DB98 8005CF98 845900AC */  lh         $t9, 0xac($v0)
/* 5DB9C 8005CF9C 00084823 */  negu       $t1, $t0
/* 5DBA0 8005CFA0 44895000 */  mtc1       $t1, $f10
/* 5DBA4 8005CFA4 C422F630 */  lwc1       $f2, -0x9d0($at)
/* 5DBA8 8005CFA8 46805420 */  cvt.s.w    $f16, $f10
/* 5DBAC 8005CFAC 44994000 */  mtc1       $t9, $f8
/* 5DBB0 8005CFB0 46101302 */  mul.s      $f12, $f2, $f16
/* 5DBB4 8005CFB4 46804020 */  cvt.s.w    $f0, $f8
.L8005CFB8:
/* 5DBB8 8005CFB8 4600603C */  c.lt.s     $f12, $f0
/* 5DBBC 8005CFBC 00000000 */  nop
/* 5DBC0 8005CFC0 45000010 */  bc1f       .L8005D004
/* 5DBC4 8005CFC4 00000000 */   nop
/* 5DBC8 8005CFC8 46027482 */  mul.s      $f18, $f14, $f2
/* 5DBCC 8005CFCC 24630001 */  addiu      $v1, $v1, 1
/* 5DBD0 8005CFD0 46120101 */  sub.s      $f4, $f0, $f18
/* 5DBD4 8005CFD4 444AF800 */  cfc1       $t2, $31
/* 5DBD8 8005CFD8 00000000 */  nop
/* 5DBDC 8005CFDC 35410003 */  ori        $at, $t2, 3
/* 5DBE0 8005CFE0 38210002 */  xori       $at, $at, 2
/* 5DBE4 8005CFE4 44C1F800 */  ctc1       $at, $31
/* 5DBE8 8005CFE8 3C01800F */  lui        $at, %hi(gActors+0x120)
/* 5DBEC 8005CFEC 460021A4 */  cvt.w.s    $f6, $f4
/* 5DBF0 8005CFF0 440B3000 */  mfc1       $t3, $f6
/* 5DBF4 8005CFF4 44CAF800 */  ctc1       $t2, $31
/* 5DBF8 8005CFF8 A44B00AC */  sh         $t3, 0xac($v0)
/* 5DBFC 8005CFFC C422F630 */  lwc1       $f2, %lo(gActors+0x120)($at)
/* 5DC00 8005D000 00000000 */  nop
.L8005D004:
/* 5DC04 8005D004 80CD0002 */  lb         $t5, 2($a2)
.L8005D008:
/* 5DC08 8005D008 844C00AE */  lh         $t4, 0xae($v0)
/* 5DC0C 8005D00C 448D5000 */  mtc1       $t5, $f10
/* 5DC10 8005D010 448C4000 */  mtc1       $t4, $f8
/* 5DC14 8005D014 46805420 */  cvt.s.w    $f16, $f10
/* 5DC18 8005D018 46101302 */  mul.s      $f12, $f2, $f16
/* 5DC1C 8005D01C 46804020 */  cvt.s.w    $f0, $f8
/* 5DC20 8005D020 460C003C */  c.lt.s     $f0, $f12
/* 5DC24 8005D024 00000000 */  nop
/* 5DC28 8005D028 45000016 */  bc1f       .L8005D084
/* 5DC2C 8005D02C 00000000 */   nop
/* 5DC30 8005D030 46027482 */  mul.s      $f18, $f14, $f2
/* 5DC34 8005D034 24630001 */  addiu      $v1, $v1, 1
/* 5DC38 8005D038 46120100 */  add.s      $f4, $f0, $f18
/* 5DC3C 8005D03C 444EF800 */  cfc1       $t6, $31
/* 5DC40 8005D040 00000000 */  nop
/* 5DC44 8005D044 35C10003 */  ori        $at, $t6, 3
/* 5DC48 8005D048 38210002 */  xori       $at, $at, 2
/* 5DC4C 8005D04C 44C1F800 */  ctc1       $at, $31
/* 5DC50 8005D050 3C01800F */  lui        $at, 0x800f
/* 5DC54 8005D054 460021A4 */  cvt.w.s    $f6, $f4
/* 5DC58 8005D058 440F3000 */  mfc1       $t7, $f6
/* 5DC5C 8005D05C 44CEF800 */  ctc1       $t6, $31
/* 5DC60 8005D060 A44F00AE */  sh         $t7, 0xae($v0)
/* 5DC64 8005D064 80D90002 */  lb         $t9, 2($a2)
/* 5DC68 8005D068 845800AE */  lh         $t8, 0xae($v0)
/* 5DC6C 8005D06C 44995000 */  mtc1       $t9, $f10
/* 5DC70 8005D070 C422F630 */  lwc1       $f2, -0x9d0($at)
/* 5DC74 8005D074 46805420 */  cvt.s.w    $f16, $f10
/* 5DC78 8005D078 44984000 */  mtc1       $t8, $f8
/* 5DC7C 8005D07C 46101302 */  mul.s      $f12, $f2, $f16
/* 5DC80 8005D080 46804020 */  cvt.s.w    $f0, $f8
.L8005D084:
/* 5DC84 8005D084 4600603C */  c.lt.s     $f12, $f0
/* 5DC88 8005D088 00000000 */  nop
/* 5DC8C 8005D08C 45000010 */  bc1f       .L8005D0D0
/* 5DC90 8005D090 00000000 */   nop
/* 5DC94 8005D094 46027482 */  mul.s      $f18, $f14, $f2
/* 5DC98 8005D098 24630001 */  addiu      $v1, $v1, 1
/* 5DC9C 8005D09C 46120101 */  sub.s      $f4, $f0, $f18
/* 5DCA0 8005D0A0 4448F800 */  cfc1       $t0, $31
/* 5DCA4 8005D0A4 00000000 */  nop
/* 5DCA8 8005D0A8 35010003 */  ori        $at, $t0, 3
/* 5DCAC 8005D0AC 38210002 */  xori       $at, $at, 2
/* 5DCB0 8005D0B0 44C1F800 */  ctc1       $at, $31
/* 5DCB4 8005D0B4 3C01800F */  lui        $at, %hi(gActors+0x120)
/* 5DCB8 8005D0B8 460021A4 */  cvt.w.s    $f6, $f4
/* 5DCBC 8005D0BC 44093000 */  mfc1       $t1, $f6
/* 5DCC0 8005D0C0 44C8F800 */  ctc1       $t0, $31
/* 5DCC4 8005D0C4 A44900AE */  sh         $t1, 0xae($v0)
/* 5DCC8 8005D0C8 C422F630 */  lwc1       $f2, %lo(gActors+0x120)($at)
/* 5DCCC 8005D0CC 00000000 */  nop
.L8005D0D0:
/* 5DCD0 8005D0D0 80CB0003 */  lb         $t3, 3($a2)
/* 5DCD4 8005D0D4 844A00B0 */  lh         $t2, 0xb0($v0)
/* 5DCD8 8005D0D8 448B5000 */  mtc1       $t3, $f10
/* 5DCDC 8005D0DC 448A4000 */  mtc1       $t2, $f8
/* 5DCE0 8005D0E0 46805420 */  cvt.s.w    $f16, $f10
/* 5DCE4 8005D0E4 46101302 */  mul.s      $f12, $f2, $f16
/* 5DCE8 8005D0E8 46804020 */  cvt.s.w    $f0, $f8
/* 5DCEC 8005D0EC 460C003C */  c.lt.s     $f0, $f12
/* 5DCF0 8005D0F0 00000000 */  nop
/* 5DCF4 8005D0F4 45000016 */  bc1f       .L8005D150
/* 5DCF8 8005D0F8 00000000 */   nop
/* 5DCFC 8005D0FC 46027482 */  mul.s      $f18, $f14, $f2
/* 5DD00 8005D100 24630001 */  addiu      $v1, $v1, 1
/* 5DD04 8005D104 46120100 */  add.s      $f4, $f0, $f18
/* 5DD08 8005D108 444CF800 */  cfc1       $t4, $31
/* 5DD0C 8005D10C 00000000 */  nop
/* 5DD10 8005D110 35810003 */  ori        $at, $t4, 3
/* 5DD14 8005D114 38210002 */  xori       $at, $at, 2
/* 5DD18 8005D118 44C1F800 */  ctc1       $at, $31
/* 5DD1C 8005D11C 3C01800F */  lui        $at, 0x800f
/* 5DD20 8005D120 460021A4 */  cvt.w.s    $f6, $f4
/* 5DD24 8005D124 440D3000 */  mfc1       $t5, $f6
/* 5DD28 8005D128 44CCF800 */  ctc1       $t4, $31
/* 5DD2C 8005D12C A44D00B0 */  sh         $t5, 0xb0($v0)
/* 5DD30 8005D130 80CF0003 */  lb         $t7, 3($a2)
/* 5DD34 8005D134 844E00B0 */  lh         $t6, 0xb0($v0)
/* 5DD38 8005D138 448F5000 */  mtc1       $t7, $f10
/* 5DD3C 8005D13C C422F630 */  lwc1       $f2, -0x9d0($at)
/* 5DD40 8005D140 46805420 */  cvt.s.w    $f16, $f10
/* 5DD44 8005D144 448E4000 */  mtc1       $t6, $f8
/* 5DD48 8005D148 46101302 */  mul.s      $f12, $f2, $f16
/* 5DD4C 8005D14C 46804020 */  cvt.s.w    $f0, $f8
.L8005D150:
/* 5DD50 8005D150 4600603C */  c.lt.s     $f12, $f0
/* 5DD54 8005D154 00000000 */  nop
/* 5DD58 8005D158 4500000F */  bc1f       .L8005D198
/* 5DD5C 8005D15C 00000000 */   nop
/* 5DD60 8005D160 46027482 */  mul.s      $f18, $f14, $f2
/* 5DD64 8005D164 24630001 */  addiu      $v1, $v1, 1
/* 5DD68 8005D168 46120101 */  sub.s      $f4, $f0, $f18
/* 5DD6C 8005D16C 4458F800 */  cfc1       $t8, $31
/* 5DD70 8005D170 00000000 */  nop
/* 5DD74 8005D174 37010003 */  ori        $at, $t8, 3
/* 5DD78 8005D178 38210002 */  xori       $at, $at, 2
/* 5DD7C 8005D17C 44C1F800 */  ctc1       $at, $31
/* 5DD80 8005D180 00000000 */  nop
/* 5DD84 8005D184 460021A4 */  cvt.w.s    $f6, $f4
/* 5DD88 8005D188 44193000 */  mfc1       $t9, $f6
/* 5DD8C 8005D18C 44D8F800 */  ctc1       $t8, $31
/* 5DD90 8005D190 A45900B0 */  sh         $t9, 0xb0($v0)
/* 5DD94 8005D194 00000000 */  nop
.L8005D198:
/* 5DD98 8005D198 14600003 */  bnez       $v1, .L8005D1A8
/* 5DD9C 8005D19C 00000000 */   nop
/* 5DDA0 8005D1A0 A040017D */  sb         $zero, 0x17d($v0)
/* 5DDA4 8005D1A4 A040017C */  sb         $zero, 0x17c($v0)
.L8005D1A8:
/* 5DDA8 8005D1A8 03E00008 */  jr         $ra
/* 5DDAC 8005D1AC 00000000 */   nop

glabel func_8005D1B0
/* 5DDB0 8005D1B0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5DDB4 8005D1B4 000E7880 */  sll        $t7, $t6, 2
/* 5DDB8 8005D1B8 01EE7823 */  subu       $t7, $t7, $t6
/* 5DDBC 8005D1BC 000F7880 */  sll        $t7, $t7, 2
/* 5DDC0 8005D1C0 01EE7821 */  addu       $t7, $t7, $t6
/* 5DDC4 8005D1C4 000F7880 */  sll        $t7, $t7, 2
/* 5DDC8 8005D1C8 01EE7823 */  subu       $t7, $t7, $t6
/* 5DDCC 8005D1CC 000F78C0 */  sll        $t7, $t7, 3
/* 5DDD0 8005D1D0 3C02800F */  lui        $v0, %hi(gActors+0xDF)
/* 5DDD4 8005D1D4 004F1021 */  addu       $v0, $v0, $t7
/* 5DDD8 8005D1D8 9058F5EF */  lbu        $t8, %lo(gActors+0xDF)($v0)
/* 5DDDC 8005D1DC AFA40000 */  sw         $a0, ($sp)
/* 5DDE0 8005D1E0 03E00008 */  jr         $ra
/* 5DDE4 8005D1E4 33020003 */   andi      $v0, $t8, 3

glabel func_8005D1E8
/* 5DDE8 8005D1E8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5DDEC 8005D1EC 000E7880 */  sll        $t7, $t6, 2
/* 5DDF0 8005D1F0 01EE7823 */  subu       $t7, $t7, $t6
/* 5DDF4 8005D1F4 000F7880 */  sll        $t7, $t7, 2
/* 5DDF8 8005D1F8 01EE7821 */  addu       $t7, $t7, $t6
/* 5DDFC 8005D1FC 000F7880 */  sll        $t7, $t7, 2
/* 5DE00 8005D200 3C08800F */  lui        $t0, %hi(gActors)
/* 5DE04 8005D204 01EE7823 */  subu       $t7, $t7, $t6
/* 5DE08 8005D208 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 5DE0C 8005D20C 000F78C0 */  sll        $t7, $t7, 3
/* 5DE10 8005D210 010F1021 */  addu       $v0, $t0, $t7
/* 5DE14 8005D214 84430088 */  lh         $v1, 0x88($v0)
/* 5DE18 8005D218 845800A4 */  lh         $t8, 0xa4($v0)
/* 5DE1C 8005D21C 85060088 */  lh         $a2, 0x88($t0)
/* 5DE20 8005D220 851900AA */  lh         $t9, 0xaa($t0)
/* 5DE24 8005D224 03032821 */  addu       $a1, $t8, $v1
/* 5DE28 8005D228 00D94821 */  addu       $t1, $a2, $t9
/* 5DE2C 8005D22C 00A9082A */  slt        $at, $a1, $t1
/* 5DE30 8005D230 1420001A */  bnez       $at, .L8005D29C
/* 5DE34 8005D234 AFA40000 */   sw        $a0, ($sp)
/* 5DE38 8005D238 850A00AC */  lh         $t2, 0xac($t0)
/* 5DE3C 8005D23C 844C00A2 */  lh         $t4, 0xa2($v0)
/* 5DE40 8005D240 00CA5821 */  addu       $t3, $a2, $t2
/* 5DE44 8005D244 01836821 */  addu       $t5, $t4, $v1
/* 5DE48 8005D248 016D082A */  slt        $at, $t3, $t5
/* 5DE4C 8005D24C 14200013 */  bnez       $at, .L8005D29C
/* 5DE50 8005D250 00000000 */   nop
/* 5DE54 8005D254 8504008C */  lh         $a0, 0x8c($t0)
/* 5DE58 8005D258 8447008C */  lh         $a3, 0x8c($v0)
/* 5DE5C 8005D25C 850E00AE */  lh         $t6, 0xae($t0)
/* 5DE60 8005D260 845800A8 */  lh         $t8, 0xa8($v0)
/* 5DE64 8005D264 008E7821 */  addu       $t7, $a0, $t6
/* 5DE68 8005D268 0307C821 */  addu       $t9, $t8, $a3
/* 5DE6C 8005D26C 01F9082A */  slt        $at, $t7, $t9
/* 5DE70 8005D270 1420000A */  bnez       $at, .L8005D29C
/* 5DE74 8005D274 00000000 */   nop
/* 5DE78 8005D278 844900A6 */  lh         $t1, 0xa6($v0)
/* 5DE7C 8005D27C 850C00B0 */  lh         $t4, 0xb0($t0)
/* 5DE80 8005D280 01275021 */  addu       $t2, $t1, $a3
/* 5DE84 8005D284 008C5821 */  addu       $t3, $a0, $t4
/* 5DE88 8005D288 014B082A */  slt        $at, $t2, $t3
/* 5DE8C 8005D28C 14200003 */  bnez       $at, .L8005D29C
/* 5DE90 8005D290 00000000 */   nop
/* 5DE94 8005D294 03E00008 */  jr         $ra
/* 5DE98 8005D298 24020001 */   addiu     $v0, $zero, 1
.L8005D29C:
/* 5DE9C 8005D29C 8D0D0080 */  lw         $t5, 0x80($t0)
/* 5DEA0 8005D2A0 00000000 */  nop
/* 5DEA4 8005D2A4 31AE0800 */  andi       $t6, $t5, 0x800
/* 5DEA8 8005D2A8 11C00020 */  beqz       $t6, .L8005D32C
/* 5DEAC 8005D2AC 00000000 */   nop
/* 5DEB0 8005D2B0 851800A2 */  lh         $t8, 0xa2($t0)
/* 5DEB4 8005D2B4 00000000 */  nop
/* 5DEB8 8005D2B8 00D87821 */  addu       $t7, $a2, $t8
/* 5DEBC 8005D2BC 00AF082A */  slt        $at, $a1, $t7
/* 5DEC0 8005D2C0 1420001A */  bnez       $at, .L8005D32C
/* 5DEC4 8005D2C4 00000000 */   nop
/* 5DEC8 8005D2C8 851900A4 */  lh         $t9, 0xa4($t0)
/* 5DECC 8005D2CC 844C00A2 */  lh         $t4, 0xa2($v0)
/* 5DED0 8005D2D0 00D94821 */  addu       $t1, $a2, $t9
/* 5DED4 8005D2D4 01835021 */  addu       $t2, $t4, $v1
/* 5DED8 8005D2D8 012A082A */  slt        $at, $t1, $t2
/* 5DEDC 8005D2DC 14200013 */  bnez       $at, .L8005D32C
/* 5DEE0 8005D2E0 00000000 */   nop
/* 5DEE4 8005D2E4 8504008C */  lh         $a0, 0x8c($t0)
/* 5DEE8 8005D2E8 8447008C */  lh         $a3, 0x8c($v0)
/* 5DEEC 8005D2EC 850B00A6 */  lh         $t3, 0xa6($t0)
/* 5DEF0 8005D2F0 844E00A8 */  lh         $t6, 0xa8($v0)
/* 5DEF4 8005D2F4 008B6821 */  addu       $t5, $a0, $t3
/* 5DEF8 8005D2F8 01C7C021 */  addu       $t8, $t6, $a3
/* 5DEFC 8005D2FC 01B8082A */  slt        $at, $t5, $t8
/* 5DF00 8005D300 1420000A */  bnez       $at, .L8005D32C
/* 5DF04 8005D304 00000000 */   nop
/* 5DF08 8005D308 844F00A6 */  lh         $t7, 0xa6($v0)
/* 5DF0C 8005D30C 850C00A8 */  lh         $t4, 0xa8($t0)
/* 5DF10 8005D310 01E7C821 */  addu       $t9, $t7, $a3
/* 5DF14 8005D314 008C4821 */  addu       $t1, $a0, $t4
/* 5DF18 8005D318 0329082A */  slt        $at, $t9, $t1
/* 5DF1C 8005D31C 14200004 */  bnez       $at, .L8005D330
/* 5DF20 8005D320 00001025 */   or        $v0, $zero, $zero
/* 5DF24 8005D324 03E00008 */  jr         $ra
/* 5DF28 8005D328 24020002 */   addiu     $v0, $zero, 2
.L8005D32C:
/* 5DF2C 8005D32C 00001025 */  or         $v0, $zero, $zero
.L8005D330:
/* 5DF30 8005D330 03E00008 */  jr         $ra
/* 5DF34 8005D334 00000000 */   nop

glabel func_8005D338
/* 5DF38 8005D338 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5DF3C 8005D33C 000E7880 */  sll        $t7, $t6, 2
/* 5DF40 8005D340 01EE7823 */  subu       $t7, $t7, $t6
/* 5DF44 8005D344 000F7880 */  sll        $t7, $t7, 2
/* 5DF48 8005D348 01EE7821 */  addu       $t7, $t7, $t6
/* 5DF4C 8005D34C 000F7880 */  sll        $t7, $t7, 2
/* 5DF50 8005D350 01EE7823 */  subu       $t7, $t7, $t6
/* 5DF54 8005D354 000F78C0 */  sll        $t7, $t7, 3
/* 5DF58 8005D358 3C02800F */  lui        $v0, %hi(gActors+0x172)
/* 5DF5C 8005D35C 004F1021 */  addu       $v0, $v0, $t7
/* 5DF60 8005D360 9458F682 */  lhu        $t8, %lo(gActors+0x172)($v0)
/* 5DF64 8005D364 AFA40000 */  sw         $a0, ($sp)
/* 5DF68 8005D368 03E00008 */  jr         $ra
/* 5DF6C 8005D36C 33021FFF */   andi      $v0, $t8, 0x1fff

glabel func_8005D370
/* 5DF70 8005D370 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5DF74 8005D374 AFA40018 */  sw         $a0, 0x18($sp)
/* 5DF78 8005D378 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5DF7C 8005D37C 97A4001A */  lhu        $a0, 0x1a($sp)
/* 5DF80 8005D380 0C0174CE */  jal        func_8005D338
/* 5DF84 8005D384 AFA5001C */   sw        $a1, 0x1c($sp)
/* 5DF88 8005D388 97A3001E */  lhu        $v1, 0x1e($sp)
/* 5DF8C 8005D38C 97AE001A */  lhu        $t6, 0x1a($sp)
/* 5DF90 8005D390 14620003 */  bne        $v1, $v0, .L8005D3A0
/* 5DF94 8005D394 000E7880 */   sll       $t7, $t6, 2
/* 5DF98 8005D398 1000000B */  b          .L8005D3C8
/* 5DF9C 8005D39C 00001025 */   or        $v0, $zero, $zero
.L8005D3A0:
/* 5DFA0 8005D3A0 01EE7823 */  subu       $t7, $t7, $t6
/* 5DFA4 8005D3A4 000F7880 */  sll        $t7, $t7, 2
/* 5DFA8 8005D3A8 01EE7821 */  addu       $t7, $t7, $t6
/* 5DFAC 8005D3AC 000F7880 */  sll        $t7, $t7, 2
/* 5DFB0 8005D3B0 01EE7823 */  subu       $t7, $t7, $t6
/* 5DFB4 8005D3B4 000F78C0 */  sll        $t7, $t7, 3
/* 5DFB8 8005D3B8 3C01800F */  lui        $at, %hi(gActors+0x170)
/* 5DFBC 8005D3BC 002F0821 */  addu       $at, $at, $t7
/* 5DFC0 8005D3C0 AC23F680 */  sw         $v1, %lo(gActors+0x170)($at)
/* 5DFC4 8005D3C4 24020001 */  addiu      $v0, $zero, 1
.L8005D3C8:
/* 5DFC8 8005D3C8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5DFCC 8005D3CC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5DFD0 8005D3D0 03E00008 */  jr         $ra
/* 5DFD4 8005D3D4 00000000 */   nop

glabel func_8005D3D8
/* 5DFD8 8005D3D8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5DFDC 8005D3DC 000E7880 */  sll        $t7, $t6, 2
/* 5DFE0 8005D3E0 01EE7823 */  subu       $t7, $t7, $t6
/* 5DFE4 8005D3E4 000F7880 */  sll        $t7, $t7, 2
/* 5DFE8 8005D3E8 01EE7821 */  addu       $t7, $t7, $t6
/* 5DFEC 8005D3EC 000F7880 */  sll        $t7, $t7, 2
/* 5DFF0 8005D3F0 01EE7823 */  subu       $t7, $t7, $t6
/* 5DFF4 8005D3F4 3C18800F */  lui        $t8, %hi(gActors)
/* 5DFF8 8005D3F8 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 5DFFC 8005D3FC 000F78C0 */  sll        $t7, $t7, 3
/* 5E000 8005D400 01F81021 */  addu       $v0, $t7, $t8
/* 5E004 8005D404 94590172 */  lhu        $t9, 0x172($v0)
/* 5E008 8005D408 AFA40000 */  sw         $a0, ($sp)
/* 5E00C 8005D40C 33281FFF */  andi       $t0, $t9, 0x1fff
/* 5E010 8005D410 03E00008 */  jr         $ra
/* 5E014 8005D414 A4480172 */   sh        $t0, 0x172($v0)

glabel func_8005D418
/* 5E018 8005D418 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E01C 8005D41C 000E7880 */  sll        $t7, $t6, 2
/* 5E020 8005D420 01EE7823 */  subu       $t7, $t7, $t6
/* 5E024 8005D424 000F7880 */  sll        $t7, $t7, 2
/* 5E028 8005D428 01EE7821 */  addu       $t7, $t7, $t6
/* 5E02C 8005D42C 000F7880 */  sll        $t7, $t7, 2
/* 5E030 8005D430 01EE7823 */  subu       $t7, $t7, $t6
/* 5E034 8005D434 000F78C0 */  sll        $t7, $t7, 3
/* 5E038 8005D438 3C02800F */  lui        $v0, %hi(gActors+0x172)
/* 5E03C 8005D43C 004F1021 */  addu       $v0, $v0, $t7
/* 5E040 8005D440 9458F682 */  lhu        $t8, %lo(gActors+0x172)($v0)
/* 5E044 8005D444 AFA40000 */  sw         $a0, ($sp)
/* 5E048 8005D448 03E00008 */  jr         $ra
/* 5E04C 8005D44C 3302A000 */   andi      $v0, $t8, 0xa000

glabel func_8005D450
/* 5E050 8005D450 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E054 8005D454 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E058 8005D458 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E05C 8005D45C 97A4001A */  lhu        $a0, 0x1a($sp)
/* 5E060 8005D460 0C0174CE */  jal        func_8005D338
/* 5E064 8005D464 00000000 */   nop
/* 5E068 8005D468 1040006B */  beqz       $v0, .L8005D618
/* 5E06C 8005D46C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 5E070 8005D470 97A4001A */  lhu        $a0, 0x1a($sp)
/* 5E074 8005D474 0C0174CE */  jal        func_8005D338
/* 5E078 8005D478 00000000 */   nop
/* 5E07C 8005D47C 24011000 */  addiu      $at, $zero, 0x1000
/* 5E080 8005D480 1441000E */  bne        $v0, $at, .L8005D4BC
/* 5E084 8005D484 3C18800F */   lui       $t8, %hi(gActors)
/* 5E088 8005D488 97AE001A */  lhu        $t6, 0x1a($sp)
/* 5E08C 8005D48C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 5E090 8005D490 000E7880 */  sll        $t7, $t6, 2
/* 5E094 8005D494 01EE7823 */  subu       $t7, $t7, $t6
/* 5E098 8005D498 000F7880 */  sll        $t7, $t7, 2
/* 5E09C 8005D49C 01EE7821 */  addu       $t7, $t7, $t6
/* 5E0A0 8005D4A0 000F7880 */  sll        $t7, $t7, 2
/* 5E0A4 8005D4A4 01EE7823 */  subu       $t7, $t7, $t6
/* 5E0A8 8005D4A8 000F78C0 */  sll        $t7, $t7, 3
/* 5E0AC 8005D4AC 01F81821 */  addu       $v1, $t7, $t8
/* 5E0B0 8005D4B0 8C6400E8 */  lw         $a0, 0xe8($v1)
/* 5E0B4 8005D4B4 10000015 */  b          .L8005D50C
/* 5E0B8 8005D4B8 80620171 */   lb        $v0, 0x171($v1)
.L8005D4BC:
/* 5E0BC 8005D4BC 97A4001A */  lhu        $a0, 0x1a($sp)
/* 5E0C0 8005D4C0 0C0174CE */  jal        func_8005D338
/* 5E0C4 8005D4C4 00000000 */   nop
/* 5E0C8 8005D4C8 97B9001A */  lhu        $t9, 0x1a($sp)
/* 5E0CC 8005D4CC 3C09800F */  lui        $t1, 0x800f
/* 5E0D0 8005D4D0 00194080 */  sll        $t0, $t9, 2
/* 5E0D4 8005D4D4 01194023 */  subu       $t0, $t0, $t9
/* 5E0D8 8005D4D8 00084080 */  sll        $t0, $t0, 2
/* 5E0DC 8005D4DC 01194021 */  addu       $t0, $t0, $t9
/* 5E0E0 8005D4E0 00084080 */  sll        $t0, $t0, 2
/* 5E0E4 8005D4E4 01194023 */  subu       $t0, $t0, $t9
/* 5E0E8 8005D4E8 000840C0 */  sll        $t0, $t0, 3
/* 5E0EC 8005D4EC 2529F510 */  addiu      $t1, $t1, -0xaf0
/* 5E0F0 8005D4F0 01091821 */  addu       $v1, $t0, $t1
/* 5E0F4 8005D4F4 8C6A00E8 */  lw         $t2, 0xe8($v1)
/* 5E0F8 8005D4F8 00025880 */  sll        $t3, $v0, 2
/* 5E0FC 8005D4FC 014B6021 */  addu       $t4, $t2, $t3
/* 5E100 8005D500 8D840000 */  lw         $a0, ($t4)
/* 5E104 8005D504 00000000 */  nop
/* 5E108 8005D508 80620171 */  lb         $v0, 0x171($v1)
.L8005D50C:
/* 5E10C 8005D50C 2405007F */  addiu      $a1, $zero, 0x7f
/* 5E110 8005D510 14A20014 */  bne        $a1, $v0, .L8005D564
/* 5E114 8005D514 00026880 */   sll       $t5, $v0, 2
/* 5E118 8005D518 A0600171 */  sb         $zero, 0x171($v1)
/* 5E11C 8005D51C 80620171 */  lb         $v0, 0x171($v1)
/* 5E120 8005D520 A0650170 */  sb         $a1, 0x170($v1)
/* 5E124 8005D524 00027080 */  sll        $t6, $v0, 2
/* 5E128 8005D528 008E7821 */  addu       $t7, $a0, $t6
/* 5E12C 8005D52C 85F80004 */  lh         $t8, 4($t7)
/* 5E130 8005D530 00000000 */  nop
/* 5E134 8005D534 1B00000A */  blez       $t8, .L8005D560
/* 5E138 8005D538 24590001 */   addiu     $t9, $v0, 1
.L8005D53C:
/* 5E13C 8005D53C A0790171 */  sb         $t9, 0x171($v1)
/* 5E140 8005D540 80620171 */  lb         $v0, 0x171($v1)
/* 5E144 8005D544 00000000 */  nop
/* 5E148 8005D548 00024880 */  sll        $t1, $v0, 2
/* 5E14C 8005D54C 00895021 */  addu       $t2, $a0, $t1
/* 5E150 8005D550 854B0004 */  lh         $t3, 4($t2)
/* 5E154 8005D554 00000000 */  nop
/* 5E158 8005D558 1D60FFF8 */  bgtz       $t3, .L8005D53C
/* 5E15C 8005D55C 24590001 */   addiu     $t9, $v0, 1
.L8005D560:
/* 5E160 8005D560 00026880 */  sll        $t5, $v0, 2
.L8005D564:
/* 5E164 8005D564 946F0172 */  lhu        $t7, 0x172($v1)
/* 5E168 8005D568 008D2821 */  addu       $a1, $a0, $t5
/* 5E16C 8005D56C 84AE0000 */  lh         $t6, ($a1)
/* 5E170 8005D570 31F84000 */  andi       $t8, $t7, 0x4000
/* 5E174 8005D574 1700000A */  bnez       $t8, .L8005D5A0
/* 5E178 8005D578 A46E0084 */   sh        $t6, 0x84($v1)
/* 5E17C 8005D57C 80660170 */  lb         $a2, 0x170($v1)
/* 5E180 8005D580 00000000 */  nop
/* 5E184 8005D584 28C1007F */  slti       $at, $a2, 0x7f
/* 5E188 8005D588 10200005 */  beqz       $at, .L8005D5A0
/* 5E18C 8005D58C 24D90001 */   addiu     $t9, $a2, 1
/* 5E190 8005D590 80620171 */  lb         $v0, 0x171($v1)
/* 5E194 8005D594 A0790170 */  sb         $t9, 0x170($v1)
/* 5E198 8005D598 00024880 */  sll        $t1, $v0, 2
/* 5E19C 8005D59C 00892821 */  addu       $a1, $a0, $t1
.L8005D5A0:
/* 5E1A0 8005D5A0 806A0170 */  lb         $t2, 0x170($v1)
/* 5E1A4 8005D5A4 84AB0002 */  lh         $t3, 2($a1)
/* 5E1A8 8005D5A8 00000000 */  nop
/* 5E1AC 8005D5AC 014B082A */  slt        $at, $t2, $t3
/* 5E1B0 8005D5B0 14200019 */  bnez       $at, .L8005D618
/* 5E1B4 8005D5B4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 5E1B8 8005D5B8 84AC0004 */  lh         $t4, 4($a1)
/* 5E1BC 8005D5BC 244F0001 */  addiu      $t7, $v0, 1
/* 5E1C0 8005D5C0 15800006 */  bnez       $t4, .L8005D5DC
/* 5E1C4 8005D5C4 00000000 */   nop
/* 5E1C8 8005D5C8 946D0172 */  lhu        $t5, 0x172($v1)
/* 5E1CC 8005D5CC 00000000 */  nop
/* 5E1D0 8005D5D0 35AEC000 */  ori        $t6, $t5, 0xc000
/* 5E1D4 8005D5D4 10000003 */  b          .L8005D5E4
/* 5E1D8 8005D5D8 A46E0172 */   sh        $t6, 0x172($v1)
.L8005D5DC:
/* 5E1DC 8005D5DC A06F0171 */  sb         $t7, 0x171($v1)
/* 5E1E0 8005D5E0 A0600170 */  sb         $zero, 0x170($v1)
.L8005D5E4:
/* 5E1E4 8005D5E4 80620171 */  lb         $v0, 0x171($v1)
/* 5E1E8 8005D5E8 00000000 */  nop
/* 5E1EC 8005D5EC 0002C880 */  sll        $t9, $v0, 2
/* 5E1F0 8005D5F0 00994021 */  addu       $t0, $a0, $t9
/* 5E1F4 8005D5F4 85050000 */  lh         $a1, ($t0)
/* 5E1F8 8005D5F8 00000000 */  nop
/* 5E1FC 8005D5FC 04A10005 */  bgez       $a1, .L8005D614
/* 5E200 8005D600 00454821 */   addu      $t1, $v0, $a1
/* 5E204 8005D604 946A0172 */  lhu        $t2, 0x172($v1)
/* 5E208 8005D608 A0690171 */  sb         $t1, 0x171($v1)
/* 5E20C 8005D60C 354B2000 */  ori        $t3, $t2, 0x2000
/* 5E210 8005D610 A46B0172 */  sh         $t3, 0x172($v1)
.L8005D614:
/* 5E214 8005D614 8FBF0014 */  lw         $ra, 0x14($sp)
.L8005D618:
/* 5E218 8005D618 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E21C 8005D61C 03E00008 */  jr         $ra
/* 5E220 8005D620 00000000 */   nop
/* 5E224 8005D624 00000000 */  nop
/* 5E228 8005D628 00000000 */  nop
/* 5E22C 8005D62C 00000000 */  nop
