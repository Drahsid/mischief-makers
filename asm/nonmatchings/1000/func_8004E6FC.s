glabel func_8004E6FC
/* 4F2FC 8004E6FC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 4F300 8004E700 000E7880 */  sll        $t7, $t6, 2
/* 4F304 8004E704 01EE7823 */  subu       $t7, $t7, $t6
/* 4F308 8004E708 000F7880 */  sll        $t7, $t7, 2
/* 4F30C 8004E70C 01EE7821 */  addu       $t7, $t7, $t6
/* 4F310 8004E710 000F7880 */  sll        $t7, $t7, 2
/* 4F314 8004E714 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 4F318 8004E718 01EE7823 */  subu       $t7, $t7, $t6
/* 4F31C 8004E71C 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 4F320 8004E720 AFB00018 */  sw         $s0, 0x18($sp)
/* 4F324 8004E724 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 4F328 8004E728 000F78C0 */  sll        $t7, $t7, 3
/* 4F32C 8004E72C 01F88021 */  addu       $s0, $t7, $t8
/* 4F330 8004E730 9219012E */  lbu        $t9, 0x12e($s0)
/* 4F334 8004E734 AFBF001C */  sw         $ra, 0x1c($sp)
/* 4F338 8004E738 AFA40028 */  sw         $a0, 0x28($sp)
/* 4F33C 8004E73C 37280040 */  ori        $t0, $t9, 0x40
/* 4F340 8004E740 01C02025 */  or         $a0, $t6, $zero
/* 4F344 8004E744 A208012E */  sb         $t0, 0x12e($s0)
/* 4F348 8004E748 A7AE002A */  sh         $t6, 0x2a($sp)
/* 4F34C 8004E74C 0C0174CE */  jal        func_8005D338
/* 4F350 8004E750 A7A00022 */   sh        $zero, 0x22($sp)
/* 4F354 8004E754 87A70022 */  lh         $a3, 0x22($sp)
/* 4F358 8004E758 10400023 */  beqz       $v0, .L8004E7E8
/* 4F35C 8004E75C 00000000 */   nop
/* 4F360 8004E760 97A4002A */  lhu        $a0, 0x2a($sp)
/* 4F364 8004E764 0C0174CE */  jal        func_8005D338
/* 4F368 8004E768 A7A70022 */   sh        $a3, 0x22($sp)
/* 4F36C 8004E76C 8E0900E8 */  lw         $t1, 0xe8($s0)
/* 4F370 8004E770 00025080 */  sll        $t2, $v0, 2
/* 4F374 8004E774 012A5821 */  addu       $t3, $t1, $t2
/* 4F378 8004E778 8D6C0000 */  lw         $t4, ($t3)
/* 4F37C 8004E77C 97A4002A */  lhu        $a0, 0x2a($sp)
/* 4F380 8004E780 0C0174CE */  jal        func_8005D338
/* 4F384 8004E784 AFAC0024 */   sw        $t4, 0x24($sp)
/* 4F388 8004E788 86050088 */  lh         $a1, 0x88($s0)
/* 4F38C 8004E78C 8606008C */  lh         $a2, 0x8c($s0)
/* 4F390 8004E790 00402025 */  or         $a0, $v0, $zero
/* 4F394 8004E794 24A5FFE0 */  addiu      $a1, $a1, -0x20
/* 4F398 8004E798 0C020E81 */  jal        func_80083A04
/* 4F39C 8004E79C 24C60050 */   addiu     $a2, $a2, 0x50
/* 4F3A0 8004E7A0 86050088 */  lh         $a1, 0x88($s0)
/* 4F3A4 8004E7A4 8606008C */  lh         $a2, 0x8c($s0)
/* 4F3A8 8004E7A8 82040171 */  lb         $a0, 0x171($s0)
/* 4F3AC 8004E7AC 24A5FFE0 */  addiu      $a1, $a1, -0x20
/* 4F3B0 8004E7B0 0C020E81 */  jal        func_80083A04
/* 4F3B4 8004E7B4 24C60040 */   addiu     $a2, $a2, 0x40
/* 4F3B8 8004E7B8 820F0171 */  lb         $t7, 0x171($s0)
/* 4F3BC 8004E7BC 8FAD0024 */  lw         $t5, 0x24($sp)
/* 4F3C0 8004E7C0 000FC080 */  sll        $t8, $t7, 2
/* 4F3C4 8004E7C4 86050088 */  lh         $a1, 0x88($s0)
/* 4F3C8 8004E7C8 8606008C */  lh         $a2, 0x8c($s0)
/* 4F3CC 8004E7CC 01B8C821 */  addu       $t9, $t5, $t8
/* 4F3D0 8004E7D0 87240002 */  lh         $a0, 2($t9)
/* 4F3D4 8004E7D4 24A5FFE0 */  addiu      $a1, $a1, -0x20
/* 4F3D8 8004E7D8 0C020E81 */  jal        func_80083A04
/* 4F3DC 8004E7DC 24C60030 */   addiu     $a2, $a2, 0x30
/* 4F3E0 8004E7E0 87A70022 */  lh         $a3, 0x22($sp)
/* 4F3E4 8004E7E4 00000000 */  nop
.L8004E7E8:
/* 4F3E8 8004E7E8 3C08800C */  lui        $t0, %hi(D_800BE4FC)
/* 4F3EC 8004E7EC 3C09800C */  lui        $t1, %hi(D_800BE518)
/* 4F3F0 8004E7F0 9529E518 */  lhu        $t1, %lo(D_800BE518)($t1)
/* 4F3F4 8004E7F4 9508E4FC */  lhu        $t0, %lo(D_800BE4FC)($t0)
/* 4F3F8 8004E7F8 00000000 */  nop
/* 4F3FC 8004E7FC 01095024 */  and        $t2, $t0, $t1
/* 4F400 8004E800 11400008 */  beqz       $t2, .L8004E824
/* 4F404 8004E804 00000000 */   nop
/* 4F408 8004E808 97A4002A */  lhu        $a0, 0x2a($sp)
/* 4F40C 8004E80C A2000171 */  sb         $zero, 0x171($s0)
/* 4F410 8004E810 A2000170 */  sb         $zero, 0x170($s0)
/* 4F414 8004E814 0C0174F6 */  jal        func_8005D3D8
/* 4F418 8004E818 A7A70022 */   sh        $a3, 0x22($sp)
/* 4F41C 8004E81C 87A70022 */  lh         $a3, 0x22($sp)
/* 4F420 8004E820 00000000 */  nop
.L8004E824:
/* 4F424 8004E824 3C04800C */  lui        $a0, %hi(D_800BE4F8)
/* 4F428 8004E828 3C0B800C */  lui        $t3, %hi(D_800BE514)
/* 4F42C 8004E82C 956BE514 */  lhu        $t3, %lo(D_800BE514)($t3)
/* 4F430 8004E830 9484E4F8 */  lhu        $a0, %lo(D_800BE4F8)($a0)
/* 4F434 8004E834 3C08800C */  lui        $t0, 0x800c
/* 4F438 8004E838 008B6024 */  and        $t4, $a0, $t3
/* 4F43C 8004E83C 1580003B */  bnez       $t4, .L8004E92C
/* 4F440 8004E840 00000000 */   nop
/* 4F444 8004E844 960E0172 */  lhu        $t6, 0x172($s0)
/* 4F448 8004E848 3C0D800C */  lui        $t5, %hi(D_800BE50C)
/* 4F44C 8004E84C 31CFBFFF */  andi       $t7, $t6, 0xbfff
/* 4F450 8004E850 A60F0172 */  sh         $t7, 0x172($s0)
/* 4F454 8004E854 95ADE50C */  lhu        $t5, %lo(D_800BE50C)($t5)
/* 4F458 8004E858 00000000 */  nop
/* 4F45C 8004E85C 008DC024 */  and        $t8, $a0, $t5
/* 4F460 8004E860 13000014 */  beqz       $t8, .L8004E8B4
/* 4F464 8004E864 00000000 */   nop
/* 4F468 8004E868 8E020150 */  lw         $v0, 0x150($s0)
/* 4F46C 8004E86C 24070001 */  addiu      $a3, $zero, 1
/* 4F470 8004E870 10400003 */  beqz       $v0, .L8004E880
/* 4F474 8004E874 28410009 */   slti      $at, $v0, 9
/* 4F478 8004E878 1420000E */  bnez       $at, .L8004E8B4
/* 4F47C 8004E87C 00000000 */   nop
.L8004E880:
/* 4F480 8004E880 97A4002A */  lhu        $a0, 0x2a($sp)
/* 4F484 8004E884 0C0174CE */  jal        func_8005D338
/* 4F488 8004E888 A7A70022 */   sh        $a3, 0x22($sp)
/* 4F48C 8004E88C 8E190158 */  lw         $t9, 0x158($s0)
/* 4F490 8004E890 2443FFFF */  addiu      $v1, $v0, -1
/* 4F494 8004E894 87A70022 */  lh         $a3, 0x22($sp)
/* 4F498 8004E898 0323082A */  slt        $at, $t9, $v1
/* 4F49C 8004E89C 14200005 */  bnez       $at, .L8004E8B4
/* 4F4A0 8004E8A0 AE030170 */   sw        $v1, 0x170($s0)
/* 4F4A4 8004E8A4 8E08015C */  lw         $t0, 0x15c($s0)
/* 4F4A8 8004E8A8 00000000 */  nop
/* 4F4AC 8004E8AC 2509FFFF */  addiu      $t1, $t0, -1
/* 4F4B0 8004E8B0 AE090170 */  sw         $t1, 0x170($s0)
.L8004E8B4:
/* 4F4B4 8004E8B4 3C0A800C */  lui        $t2, %hi(D_800BE4F8)
/* 4F4B8 8004E8B8 3C0B800C */  lui        $t3, %hi(D_800BE510)
/* 4F4BC 8004E8BC 956BE510 */  lhu        $t3, %lo(D_800BE510)($t3)
/* 4F4C0 8004E8C0 954AE4F8 */  lhu        $t2, %lo(D_800BE4F8)($t2)
/* 4F4C4 8004E8C4 00000000 */  nop
/* 4F4C8 8004E8C8 014B6024 */  and        $t4, $t2, $t3
/* 4F4CC 8004E8CC 11800079 */  beqz       $t4, .L8004EAB4
/* 4F4D0 8004E8D0 00000000 */   nop
/* 4F4D4 8004E8D4 8E020150 */  lw         $v0, 0x150($s0)
/* 4F4D8 8004E8D8 24E70001 */  addiu      $a3, $a3, 1
/* 4F4DC 8004E8DC 00077400 */  sll        $t6, $a3, 0x10
/* 4F4E0 8004E8E0 10400004 */  beqz       $v0, .L8004E8F4
/* 4F4E4 8004E8E4 000E3C03 */   sra       $a3, $t6, 0x10
/* 4F4E8 8004E8E8 28410009 */  slti       $at, $v0, 9
/* 4F4EC 8004E8EC 14200071 */  bnez       $at, .L8004EAB4
/* 4F4F0 8004E8F0 00000000 */   nop
.L8004E8F4:
/* 4F4F4 8004E8F4 97A4002A */  lhu        $a0, 0x2a($sp)
/* 4F4F8 8004E8F8 0C0174CE */  jal        func_8005D338
/* 4F4FC 8004E8FC A7A70022 */   sh        $a3, 0x22($sp)
/* 4F500 8004E900 8E0D015C */  lw         $t5, 0x15c($s0)
/* 4F504 8004E904 24430001 */  addiu      $v1, $v0, 1
/* 4F508 8004E908 87A70022 */  lh         $a3, 0x22($sp)
/* 4F50C 8004E90C 006D082A */  slt        $at, $v1, $t5
/* 4F510 8004E910 14200068 */  bnez       $at, .L8004EAB4
/* 4F514 8004E914 AE030170 */   sw        $v1, 0x170($s0)
/* 4F518 8004E918 8E180158 */  lw         $t8, 0x158($s0)
/* 4F51C 8004E91C 00000000 */  nop
/* 4F520 8004E920 27190001 */  addiu      $t9, $t8, 1
/* 4F524 8004E924 10000063 */  b          .L8004EAB4
/* 4F528 8004E928 AE190170 */   sw        $t9, 0x170($s0)
.L8004E92C:
/* 4F52C 8004E92C 9508E50C */  lhu        $t0, -0x1af4($t0)
/* 4F530 8004E930 00000000 */  nop
/* 4F534 8004E934 00884824 */  and        $t1, $a0, $t0
/* 4F538 8004E938 11200013 */  beqz       $t1, .L8004E988
/* 4F53C 8004E93C 00000000 */   nop
/* 4F540 8004E940 8E020150 */  lw         $v0, 0x150($s0)
/* 4F544 8004E944 24070001 */  addiu      $a3, $zero, 1
/* 4F548 8004E948 10400003 */  beqz       $v0, .L8004E958
/* 4F54C 8004E94C 28410009 */   slti      $at, $v0, 9
/* 4F550 8004E950 1420000D */  bnez       $at, .L8004E988
/* 4F554 8004E954 00000000 */   nop
.L8004E958:
/* 4F558 8004E958 82020171 */  lb         $v0, 0x171($s0)
/* 4F55C 8004E95C 00000000 */  nop
/* 4F560 8004E960 10400009 */  beqz       $v0, .L8004E988
/* 4F564 8004E964 244AFFFF */   addiu     $t2, $v0, -1
/* 4F568 8004E968 97A4002A */  lhu        $a0, 0x2a($sp)
/* 4F56C 8004E96C A20A0171 */  sb         $t2, 0x171($s0)
/* 4F570 8004E970 0C0174F6 */  jal        func_8005D3D8
/* 4F574 8004E974 A7A70022 */   sh        $a3, 0x22($sp)
/* 4F578 8004E978 3C04800C */  lui        $a0, %hi(D_800BE4F8)
/* 4F57C 8004E97C 9484E4F8 */  lhu        $a0, %lo(D_800BE4F8)($a0)
/* 4F580 8004E980 87A70022 */  lh         $a3, 0x22($sp)
/* 4F584 8004E984 00000000 */  nop
.L8004E988:
/* 4F588 8004E988 3C0B800C */  lui        $t3, %hi(D_800BE510)
/* 4F58C 8004E98C 956BE510 */  lhu        $t3, %lo(D_800BE510)($t3)
/* 4F590 8004E990 00000000 */  nop
/* 4F594 8004E994 008B6024 */  and        $t4, $a0, $t3
/* 4F598 8004E998 11800012 */  beqz       $t4, .L8004E9E4
/* 4F59C 8004E99C 3C0B800C */   lui       $t3, 0x800c
/* 4F5A0 8004E9A0 8E020150 */  lw         $v0, 0x150($s0)
/* 4F5A4 8004E9A4 24E70001 */  addiu      $a3, $a3, 1
/* 4F5A8 8004E9A8 00077400 */  sll        $t6, $a3, 0x10
/* 4F5AC 8004E9AC 10400004 */  beqz       $v0, .L8004E9C0
/* 4F5B0 8004E9B0 000E3C03 */   sra       $a3, $t6, 0x10
/* 4F5B4 8004E9B4 28410009 */  slti       $at, $v0, 9
/* 4F5B8 8004E9B8 1420000A */  bnez       $at, .L8004E9E4
/* 4F5BC 8004E9BC 00000000 */   nop
.L8004E9C0:
/* 4F5C0 8004E9C0 82020171 */  lb         $v0, 0x171($s0)
/* 4F5C4 8004E9C4 8FAD0024 */  lw         $t5, 0x24($sp)
/* 4F5C8 8004E9C8 0002C880 */  sll        $t9, $v0, 2
/* 4F5CC 8004E9CC 01B94021 */  addu       $t0, $t5, $t9
/* 4F5D0 8004E9D0 85090004 */  lh         $t1, 4($t0)
/* 4F5D4 8004E9D4 244A0001 */  addiu      $t2, $v0, 1
/* 4F5D8 8004E9D8 19200002 */  blez       $t1, .L8004E9E4
/* 4F5DC 8004E9DC 00000000 */   nop
/* 4F5E0 8004E9E0 A20A0171 */  sb         $t2, 0x171($s0)
.L8004E9E4:
/* 4F5E4 8004E9E4 956BE504 */  lhu        $t3, -0x1afc($t3)
/* 4F5E8 8004E9E8 3C0A800C */  lui        $t2, 0x800c
/* 4F5EC 8004E9EC 008B6024 */  and        $t4, $a0, $t3
/* 4F5F0 8004E9F0 11800015 */  beqz       $t4, .L8004EA48
/* 4F5F4 8004E9F4 00000000 */   nop
/* 4F5F8 8004E9F8 8E020150 */  lw         $v0, 0x150($s0)
/* 4F5FC 8004E9FC 24E70001 */  addiu      $a3, $a3, 1
/* 4F600 8004EA00 00077400 */  sll        $t6, $a3, 0x10
/* 4F604 8004EA04 10400004 */  beqz       $v0, .L8004EA18
/* 4F608 8004EA08 000E3C03 */   sra       $a3, $t6, 0x10
/* 4F60C 8004EA0C 28410009 */  slti       $at, $v0, 9
/* 4F610 8004EA10 1420000D */  bnez       $at, .L8004EA48
/* 4F614 8004EA14 00000000 */   nop
.L8004EA18:
/* 4F618 8004EA18 82190171 */  lb         $t9, 0x171($s0)
/* 4F61C 8004EA1C 8FB80024 */  lw         $t8, 0x24($sp)
/* 4F620 8004EA20 00194080 */  sll        $t0, $t9, 2
/* 4F624 8004EA24 03081021 */  addu       $v0, $t8, $t0
/* 4F628 8004EA28 84430002 */  lh         $v1, 2($v0)
/* 4F62C 8004EA2C 00000000 */  nop
/* 4F630 8004EA30 10600005 */  beqz       $v1, .L8004EA48
/* 4F634 8004EA34 2469FFFF */   addiu     $t1, $v1, -1
/* 4F638 8004EA38 A4490002 */  sh         $t1, 2($v0)
/* 4F63C 8004EA3C 3C04800C */  lui        $a0, %hi(D_800BE4F8)
/* 4F640 8004EA40 9484E4F8 */  lhu        $a0, %lo(D_800BE4F8)($a0)
/* 4F644 8004EA44 00000000 */  nop
.L8004EA48:
/* 4F648 8004EA48 954AE508 */  lhu        $t2, -0x1af8($t2)
/* 4F64C 8004EA4C 00000000 */  nop
/* 4F650 8004EA50 008A5824 */  and        $t3, $a0, $t2
/* 4F654 8004EA54 11600013 */  beqz       $t3, .L8004EAA4
/* 4F658 8004EA58 00000000 */   nop
/* 4F65C 8004EA5C 8E020150 */  lw         $v0, 0x150($s0)
/* 4F660 8004EA60 24E70001 */  addiu      $a3, $a3, 1
/* 4F664 8004EA64 00076400 */  sll        $t4, $a3, 0x10
/* 4F668 8004EA68 10400004 */  beqz       $v0, .L8004EA7C
/* 4F66C 8004EA6C 000C3C03 */   sra       $a3, $t4, 0x10
/* 4F670 8004EA70 28410009 */  slti       $at, $v0, 9
/* 4F674 8004EA74 1420000B */  bnez       $at, .L8004EAA4
/* 4F678 8004EA78 00000000 */   nop
.L8004EA7C:
/* 4F67C 8004EA7C 82190171 */  lb         $t9, 0x171($s0)
/* 4F680 8004EA80 8FAF0024 */  lw         $t7, 0x24($sp)
/* 4F684 8004EA84 0019C080 */  sll        $t8, $t9, 2
/* 4F688 8004EA88 01F81021 */  addu       $v0, $t7, $t8
/* 4F68C 8004EA8C 84430002 */  lh         $v1, 2($v0)
/* 4F690 8004EA90 00000000 */  nop
/* 4F694 8004EA94 2861007F */  slti       $at, $v1, 0x7f
/* 4F698 8004EA98 10200002 */  beqz       $at, .L8004EAA4
/* 4F69C 8004EA9C 24680001 */   addiu     $t0, $v1, 1
/* 4F6A0 8004EAA0 A4480002 */  sh         $t0, 2($v0)
.L8004EAA4:
/* 4F6A4 8004EAA4 96090172 */  lhu        $t1, 0x172($s0)
/* 4F6A8 8004EAA8 A2000170 */  sb         $zero, 0x170($s0)
/* 4F6AC 8004EAAC 352A4000 */  ori        $t2, $t1, 0x4000
/* 4F6B0 8004EAB0 A60A0172 */  sh         $t2, 0x172($s0)
.L8004EAB4:
/* 4F6B4 8004EAB4 14E00003 */  bnez       $a3, .L8004EAC4
/* 4F6B8 8004EAB8 00000000 */   nop
/* 4F6BC 8004EABC 10000005 */  b          .L8004EAD4
/* 4F6C0 8004EAC0 AE000150 */   sw        $zero, 0x150($s0)
.L8004EAC4:
/* 4F6C4 8004EAC4 8E0B0150 */  lw         $t3, 0x150($s0)
/* 4F6C8 8004EAC8 00000000 */  nop
/* 4F6CC 8004EACC 256C0001 */  addiu      $t4, $t3, 1
/* 4F6D0 8004EAD0 AE0C0150 */  sw         $t4, 0x150($s0)
.L8004EAD4:
/* 4F6D4 8004EAD4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 4F6D8 8004EAD8 8FB00018 */  lw         $s0, 0x18($sp)
/* 4F6DC 8004EADC 03E00008 */  jr         $ra
/* 4F6E0 8004EAE0 27BD0028 */   addiu     $sp, $sp, 0x28
