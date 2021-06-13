.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8008E480
/* 8F080 8008E480 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 8F084 8008E484 AFB40038 */  sw         $s4, 0x38($sp)
/* 8F088 8008E488 3094FFFF */  andi       $s4, $a0, 0xffff
/* 8F08C 8008E48C 00147080 */  sll        $t6, $s4, 2
/* 8F090 8008E490 01D47023 */  subu       $t6, $t6, $s4
/* 8F094 8008E494 00147880 */  sll        $t7, $s4, 2
/* 8F098 8008E498 01F47823 */  subu       $t7, $t7, $s4
/* 8F09C 8008E49C 000E7080 */  sll        $t6, $t6, 2
/* 8F0A0 8008E4A0 01D47021 */  addu       $t6, $t6, $s4
/* 8F0A4 8008E4A4 000F7880 */  sll        $t7, $t7, 2
/* 8F0A8 8008E4A8 01F47821 */  addu       $t7, $t7, $s4
/* 8F0AC 8008E4AC 000E7080 */  sll        $t6, $t6, 2
/* 8F0B0 8008E4B0 3C02800F */  lui        $v0, %hi(gActors)
/* 8F0B4 8008E4B4 01D47023 */  subu       $t6, $t6, $s4
/* 8F0B8 8008E4B8 000F7880 */  sll        $t7, $t7, 2
/* 8F0BC 8008E4BC 2442F510 */  addiu      $v0, $v0, %lo(gActors)
/* 8F0C0 8008E4C0 AFB20030 */  sw         $s2, 0x30($sp)
/* 8F0C4 8008E4C4 01F47823 */  subu       $t7, $t7, $s4
/* 8F0C8 8008E4C8 000E70C0 */  sll        $t6, $t6, 3
/* 8F0CC 8008E4CC AFB5003C */  sw         $s5, 0x3c($sp)
/* 8F0D0 8008E4D0 004E9021 */  addu       $s2, $v0, $t6
/* 8F0D4 8008E4D4 000F78C0 */  sll        $t7, $t7, 3
/* 8F0D8 8008E4D8 86580088 */  lh         $t8, 0x88($s2)
/* 8F0DC 8008E4DC 004FA821 */  addu       $s5, $v0, $t7
/* 8F0E0 8008E4E0 3C0141F0 */  lui        $at, 0x41f0
/* 8F0E4 8008E4E4 44812000 */  mtc1       $at, $f4
/* 8F0E8 8008E4E8 C6A602C8 */  lwc1       $f6, 0x2c8($s5)
/* 8F0EC 8008E4EC 44985000 */  mtc1       $t8, $f10
/* 8F0F0 8008E4F0 46062202 */  mul.s      $f8, $f4, $f6
/* 8F0F4 8008E4F4 8648008C */  lh         $t0, 0x8c($s2)
/* 8F0F8 8008E4F8 864900B0 */  lh         $t1, 0xb0($s2)
/* 8F0FC 8008E4FC AFB30034 */  sw         $s3, 0x34($sp)
/* 8F100 8008E500 46805420 */  cvt.s.w    $f16, $f10
/* 8F104 8008E504 AFB00028 */  sw         $s0, 0x28($sp)
/* 8F108 8008E508 AFB60040 */  sw         $s6, 0x40($sp)
/* 8F10C 8008E50C 46088480 */  add.s      $f18, $f16, $f8
/* 8F110 8008E510 AFB1002C */  sw         $s1, 0x2c($sp)
/* 8F114 8008E514 4459F800 */  cfc1       $t9, $31
/* 8F118 8008E518 01098021 */  addu       $s0, $t0, $t1
/* 8F11C 8008E51C 37210003 */  ori        $at, $t9, 3
/* 8F120 8008E520 38210002 */  xori       $at, $at, 2
/* 8F124 8008E524 44C1F800 */  ctc1       $at, $31
/* 8F128 8008E528 AFBF0044 */  sw         $ra, 0x44($sp)
/* 8F12C 8008E52C 46009124 */  cvt.w.s    $f4, $f18
/* 8F130 8008E530 E7B70020 */  swc1       $f23, 0x20($sp)
/* 8F134 8008E534 44D9F800 */  ctc1       $t9, $31
/* 8F138 8008E538 44132000 */  mfc1       $s3, $f4
/* 8F13C 8008E53C E7B60024 */  swc1       $f22, 0x24($sp)
/* 8F140 8008E540 E7B50018 */  swc1       $f21, 0x18($sp)
/* 8F144 8008E544 E7B4001C */  swc1       $f20, 0x1c($sp)
/* 8F148 8008E548 AFA40048 */  sw         $a0, 0x48($sp)
/* 8F14C 8008E54C 26100001 */  addiu      $s0, $s0, 1
/* 8F150 8008E550 00008825 */  or         $s1, $zero, $zero
/* 8F154 8008E554 24160003 */  addiu      $s6, $zero, 3
.L8008E558:
/* 8F158 8008E558 3284FFFF */  andi       $a0, $s4, 0xffff
/* 8F15C 8008E55C 02602825 */  or         $a1, $s3, $zero
/* 8F160 8008E560 0C007F28 */  jal        func_8001FCA0
/* 8F164 8008E564 02003025 */   or        $a2, $s0, $zero
/* 8F168 8008E568 304A0080 */  andi       $t2, $v0, 0x80
/* 8F16C 8008E56C 11400003 */  beqz       $t2, .L8008E57C
/* 8F170 8008E570 2610000F */   addiu     $s0, $s0, 0xf
/* 8F174 8008E574 10000005 */  b          .L8008E58C
/* 8F178 8008E578 02201025 */   or        $v0, $s1, $zero
.L8008E57C:
/* 8F17C 8008E57C 26310001 */  addiu      $s1, $s1, 1
/* 8F180 8008E580 3222FFFF */  andi       $v0, $s1, 0xffff
/* 8F184 8008E584 16C2FFF4 */  bne        $s6, $v0, .L8008E558
/* 8F188 8008E588 00408825 */   or        $s1, $v0, $zero
.L8008E58C:
/* 8F18C 8008E58C 12C20071 */  beq        $s6, $v0, .L8008E754
/* 8F190 8008E590 24110006 */   addiu     $s1, $zero, 6
/* 8F194 8008E594 3C0141F8 */  lui        $at, 0x41f8
/* 8F198 8008E598 4481B000 */  mtc1       $at, $f22
/* 8F19C 8008E59C 865000AE */  lh         $s0, 0xae($s2)
/* 8F1A0 8008E5A0 3C014180 */  lui        $at, 0x4180
/* 8F1A4 8008E5A4 4481A000 */  mtc1       $at, $f20
/* 8F1A8 8008E5A8 26100008 */  addiu      $s0, $s0, 8
.L8008E5AC:
/* 8F1AC 8008E5AC 864C008C */  lh         $t4, 0x8c($s2)
/* 8F1B0 8008E5B0 86450088 */  lh         $a1, 0x88($s2)
/* 8F1B4 8008E5B4 3284FFFF */  andi       $a0, $s4, 0xffff
/* 8F1B8 8008E5B8 0C007F28 */  jal        func_8001FCA0
/* 8F1BC 8008E5BC 01903021 */   addu      $a2, $t4, $s0
/* 8F1C0 8008E5C0 304D0080 */  andi       $t5, $v0, 0x80
/* 8F1C4 8008E5C4 15A00064 */  bnez       $t5, .L8008E758
/* 8F1C8 8008E5C8 24020001 */   addiu     $v0, $zero, 1
/* 8F1CC 8008E5CC 864E0088 */  lh         $t6, 0x88($s2)
/* 8F1D0 8008E5D0 C6A602C8 */  lwc1       $f6, 0x2c8($s5)
/* 8F1D4 8008E5D4 448E8000 */  mtc1       $t6, $f16
/* 8F1D8 8008E5D8 46163282 */  mul.s      $f10, $f6, $f22
/* 8F1DC 8008E5DC 8658008C */  lh         $t8, 0x8c($s2)
/* 8F1E0 8008E5E0 3284FFFF */  andi       $a0, $s4, 0xffff
/* 8F1E4 8008E5E4 03103021 */  addu       $a2, $t8, $s0
/* 8F1E8 8008E5E8 46808220 */  cvt.s.w    $f8, $f16
/* 8F1EC 8008E5EC 46085480 */  add.s      $f18, $f10, $f8
/* 8F1F0 8008E5F0 444FF800 */  cfc1       $t7, $31
/* 8F1F4 8008E5F4 00000000 */  nop
/* 8F1F8 8008E5F8 35E10003 */  ori        $at, $t7, 3
/* 8F1FC 8008E5FC 38210002 */  xori       $at, $at, 2
/* 8F200 8008E600 44C1F800 */  ctc1       $at, $31
/* 8F204 8008E604 00000000 */  nop
/* 8F208 8008E608 46009124 */  cvt.w.s    $f4, $f18
/* 8F20C 8008E60C 44052000 */  mfc1       $a1, $f4
/* 8F210 8008E610 44CFF800 */  ctc1       $t7, $31
/* 8F214 8008E614 0C007F28 */  jal        func_8001FCA0
/* 8F218 8008E618 00000000 */   nop
/* 8F21C 8008E61C 86480088 */  lh         $t0, 0x88($s2)
/* 8F220 8008E620 C6A602C8 */  lwc1       $f6, 0x2c8($s5)
/* 8F224 8008E624 44885000 */  mtc1       $t0, $f10
/* 8F228 8008E628 46143402 */  mul.s      $f16, $f6, $f20
/* 8F22C 8008E62C 864A008C */  lh         $t2, 0x8c($s2)
/* 8F230 8008E630 00409825 */  or         $s3, $v0, $zero
/* 8F234 8008E634 32790080 */  andi       $t9, $s3, 0x80
/* 8F238 8008E638 46805220 */  cvt.s.w    $f8, $f10
/* 8F23C 8008E63C 03209825 */  or         $s3, $t9, $zero
/* 8F240 8008E640 3284FFFF */  andi       $a0, $s4, 0xffff
/* 8F244 8008E644 46088480 */  add.s      $f18, $f16, $f8
/* 8F248 8008E648 01503021 */  addu       $a2, $t2, $s0
/* 8F24C 8008E64C 4449F800 */  cfc1       $t1, $31
/* 8F250 8008E650 00000000 */  nop
/* 8F254 8008E654 35210003 */  ori        $at, $t1, 3
/* 8F258 8008E658 38210002 */  xori       $at, $at, 2
/* 8F25C 8008E65C 44C1F800 */  ctc1       $at, $31
/* 8F260 8008E660 00000000 */  nop
/* 8F264 8008E664 46009124 */  cvt.w.s    $f4, $f18
/* 8F268 8008E668 44052000 */  mfc1       $a1, $f4
/* 8F26C 8008E66C 44C9F800 */  ctc1       $t1, $31
/* 8F270 8008E670 0C007F28 */  jal        func_8001FCA0
/* 8F274 8008E674 00000000 */   nop
/* 8F278 8008E678 16600031 */  bnez       $s3, .L8008E740
/* 8F27C 8008E67C 304C0080 */   andi      $t4, $v0, 0x80
/* 8F280 8008E680 15800030 */  bnez       $t4, .L8008E744
/* 8F284 8008E684 2631FFFF */   addiu     $s1, $s1, -1
/* 8F288 8008E688 26100008 */  addiu      $s0, $s0, 8
/* 8F28C 8008E68C 00107100 */  sll        $t6, $s0, 4
/* 8F290 8008E690 448E5000 */  mtc1       $t6, $f10
/* 8F294 8008E694 3C014200 */  lui        $at, 0x4200
/* 8F298 8008E698 46805420 */  cvt.s.w    $f16, $f10
/* 8F29C 8008E69C 44813000 */  mtc1       $at, $f6
/* 8F2A0 8008E6A0 240D0170 */  addiu      $t5, $zero, 0x170
/* 8F2A4 8008E6A4 46103202 */  mul.s      $f8, $f6, $f16
/* 8F2A8 8008E6A8 A64D00D0 */  sh         $t5, 0xd0($s2)
/* 8F2AC 8008E6AC 0C0295C4 */  jal        func_800A5710
/* 8F2B0 8008E6B0 46144300 */   add.s     $f12, $f8, $f20
/* 8F2B4 8008E6B4 3C0147C0 */  lui        $at, 0x47c0
/* 8F2B8 8008E6B8 44812000 */  mtc1       $at, $f4
/* 8F2BC 8008E6BC C6B202C8 */  lwc1       $f18, 0x2c8($s5)
/* 8F2C0 8008E6C0 00001025 */  or         $v0, $zero, $zero
/* 8F2C4 8008E6C4 46049282 */  mul.s      $f10, $f18, $f4
/* 8F2C8 8008E6C8 444FF800 */  cfc1       $t7, $31
/* 8F2CC 8008E6CC 00000000 */  nop
/* 8F2D0 8008E6D0 35E10003 */  ori        $at, $t7, 3
/* 8F2D4 8008E6D4 38210002 */  xori       $at, $at, 2
/* 8F2D8 8008E6D8 44C1F800 */  ctc1       $at, $31
/* 8F2DC 8008E6DC 3C014080 */  lui        $at, 0x4080
/* 8F2E0 8008E6E0 460051A4 */  cvt.w.s    $f6, $f10
/* 8F2E4 8008E6E4 44818000 */  mtc1       $at, $f16
/* 8F2E8 8008E6E8 44CFF800 */  ctc1       $t7, $31
/* 8F2EC 8008E6EC 3C014100 */  lui        $at, 0x4100
/* 8F2F0 8008E6F0 44819000 */  mtc1       $at, $f18
/* 8F2F4 8008E6F4 46100201 */  sub.s      $f8, $f0, $f16
/* 8F2F8 8008E6F8 3C014688 */  lui        $at, 0x4688
/* 8F2FC 8008E6FC 46124103 */  div.s      $f4, $f8, $f18
/* 8F300 8008E700 44815000 */  mtc1       $at, $f10
/* 8F304 8008E704 44183000 */  mfc1       $t8, $f6
/* 8F308 8008E708 00000000 */  nop
/* 8F30C 8008E70C AEB804B0 */  sw         $t8, 0x4b0($s5)
/* 8F310 8008E710 460A2182 */  mul.s      $f6, $f4, $f10
/* 8F314 8008E714 4459F800 */  cfc1       $t9, $31
/* 8F318 8008E718 00000000 */  nop
/* 8F31C 8008E71C 37210003 */  ori        $at, $t9, 3
/* 8F320 8008E720 38210002 */  xori       $at, $at, 2
/* 8F324 8008E724 44C1F800 */  ctc1       $at, $31
/* 8F328 8008E728 00000000 */  nop
/* 8F32C 8008E72C 46003424 */  cvt.w.s    $f16, $f6
/* 8F330 8008E730 44088000 */  mfc1       $t0, $f16
/* 8F334 8008E734 44D9F800 */  ctc1       $t9, $31
/* 8F338 8008E738 10000007 */  b          .L8008E758
/* 8F33C 8008E73C AEA80648 */   sw        $t0, 0x648($s5)
.L8008E740:
/* 8F340 8008E740 2631FFFF */  addiu      $s1, $s1, -1
.L8008E744:
/* 8F344 8008E744 3229FFFF */  andi       $t1, $s1, 0xffff
/* 8F348 8008E748 01208825 */  or         $s1, $t1, $zero
/* 8F34C 8008E74C 1D20FF97 */  bgtz       $t1, .L8008E5AC
/* 8F350 8008E750 26100010 */   addiu     $s0, $s0, 0x10
.L8008E754:
/* 8F354 8008E754 24020001 */  addiu      $v0, $zero, 1
.L8008E758:
/* 8F358 8008E758 8FBF0044 */  lw         $ra, 0x44($sp)
/* 8F35C 8008E75C C7B50018 */  lwc1       $f21, 0x18($sp)
/* 8F360 8008E760 C7B4001C */  lwc1       $f20, 0x1c($sp)
/* 8F364 8008E764 C7B70020 */  lwc1       $f23, 0x20($sp)
/* 8F368 8008E768 C7B60024 */  lwc1       $f22, 0x24($sp)
/* 8F36C 8008E76C 8FB00028 */  lw         $s0, 0x28($sp)
/* 8F370 8008E770 8FB1002C */  lw         $s1, 0x2c($sp)
/* 8F374 8008E774 8FB20030 */  lw         $s2, 0x30($sp)
/* 8F378 8008E778 8FB30034 */  lw         $s3, 0x34($sp)
/* 8F37C 8008E77C 8FB40038 */  lw         $s4, 0x38($sp)
/* 8F380 8008E780 8FB5003C */  lw         $s5, 0x3c($sp)
/* 8F384 8008E784 8FB60040 */  lw         $s6, 0x40($sp)
/* 8F388 8008E788 03E00008 */  jr         $ra
/* 8F38C 8008E78C 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8008E790
/* 8F390 8008E790 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 8F394 8008E794 AFA70044 */  sw         $a3, 0x44($sp)
/* 8F398 8008E798 87AE0052 */  lh         $t6, 0x52($sp)
/* 8F39C 8008E79C AFA40038 */  sw         $a0, 0x38($sp)
/* 8F3A0 8008E7A0 AFA5003C */  sw         $a1, 0x3c($sp)
/* 8F3A4 8008E7A4 AFA60040 */  sw         $a2, 0x40($sp)
/* 8F3A8 8008E7A8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 8F3AC 8008E7AC 87A6004A */  lh         $a2, 0x4a($sp)
/* 8F3B0 8008E7B0 87A50046 */  lh         $a1, 0x46($sp)
/* 8F3B4 8008E7B4 97A4003A */  lhu        $a0, 0x3a($sp)
/* 8F3B8 8008E7B8 87A7004E */  lh         $a3, 0x4e($sp)
/* 8F3BC 8008E7BC 0C00A7EE */  jal        func_80029FB8
/* 8F3C0 8008E7C0 AFAE0010 */   sw        $t6, 0x10($sp)
/* 8F3C4 8008E7C4 97A6003E */  lhu        $a2, 0x3e($sp)
/* 8F3C8 8008E7C8 97A7003A */  lhu        $a3, 0x3a($sp)
/* 8F3CC 8008E7CC 97A90042 */  lhu        $t1, 0x42($sp)
/* 8F3D0 8008E7D0 304F8000 */  andi       $t7, $v0, 0x8000
/* 8F3D4 8008E7D4 3048FFFF */  andi       $t0, $v0, 0xffff
/* 8F3D8 8008E7D8 11E00039 */  beqz       $t7, .L8008E8C0
/* 8F3DC 8008E7DC 00402025 */   or        $a0, $v0, $zero
/* 8F3E0 8008E7E0 0007C080 */  sll        $t8, $a3, 2
/* 8F3E4 8008E7E4 0307C023 */  subu       $t8, $t8, $a3
/* 8F3E8 8008E7E8 0018C080 */  sll        $t8, $t8, 2
/* 8F3EC 8008E7EC 0307C021 */  addu       $t8, $t8, $a3
/* 8F3F0 8008E7F0 0018C080 */  sll        $t8, $t8, 2
/* 8F3F4 8008E7F4 0307C023 */  subu       $t8, $t8, $a3
/* 8F3F8 8008E7F8 3C19800F */  lui        $t9, %hi(gActors)
/* 8F3FC 8008E7FC 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 8F400 8008E800 0018C0C0 */  sll        $t8, $t8, 3
/* 8F404 8008E804 03192821 */  addu       $a1, $t8, $t9
/* 8F408 8008E808 8CA30080 */  lw         $v1, 0x80($a1)
/* 8F40C 8008E80C 304B0001 */  andi       $t3, $v0, 1
/* 8F410 8008E810 306A0020 */  andi       $t2, $v1, 0x20
/* 8F414 8008E814 15400003 */  bnez       $t2, .L8008E824
/* 8F418 8008E818 01401825 */   or        $v1, $t2, $zero
/* 8F41C 8008E81C 15600005 */  bnez       $t3, .L8008E834
/* 8F420 8008E820 00000000 */   nop
.L8008E824:
/* 8F424 8008E824 10600004 */  beqz       $v1, .L8008E838
/* 8F428 8008E828 308C0001 */   andi      $t4, $a0, 1
/* 8F42C 8008E82C 15800002 */  bnez       $t4, .L8008E838
/* 8F430 8008E830 00000000 */   nop
.L8008E834:
/* 8F434 8008E834 3126FFFF */  andi       $a2, $t1, 0xffff
.L8008E838:
/* 8F438 8008E838 94A400D0 */  lhu        $a0, 0xd0($a1)
/* 8F43C 8008E83C 24010111 */  addiu      $at, $zero, 0x111
/* 8F440 8008E840 10810006 */  beq        $a0, $at, .L8008E85C
/* 8F444 8008E844 00801025 */   or        $v0, $a0, $zero
/* 8F448 8008E848 24010131 */  addiu      $at, $zero, 0x131
/* 8F44C 8008E84C 10410003 */  beq        $v0, $at, .L8008E85C
/* 8F450 8008E850 24010141 */   addiu     $at, $zero, 0x141
/* 8F454 8008E854 1441002D */  bne        $v0, $at, .L8008E90C
/* 8F458 8008E858 8FBF001C */   lw        $ra, 0x1c($sp)
.L8008E85C:
/* 8F45C 8008E85C 11260013 */  beq        $t1, $a2, .L8008E8AC
/* 8F460 8008E860 00C01825 */   or        $v1, $a2, $zero
/* 8F464 8008E864 30E4FFFF */  andi       $a0, $a3, 0xffff
/* 8F468 8008E868 AFA30024 */  sw         $v1, 0x24($sp)
/* 8F46C 8008E86C AFA50028 */  sw         $a1, 0x28($sp)
/* 8F470 8008E870 A7A6003E */  sh         $a2, 0x3e($sp)
/* 8F474 8008E874 0C023920 */  jal        func_8008E480
/* 8F478 8008E878 A7A80036 */   sh        $t0, 0x36($sp)
/* 8F47C 8008E87C 8FA30024 */  lw         $v1, 0x24($sp)
/* 8F480 8008E880 8FA50028 */  lw         $a1, 0x28($sp)
/* 8F484 8008E884 97A6003E */  lhu        $a2, 0x3e($sp)
/* 8F488 8008E888 97A80036 */  lhu        $t0, 0x36($sp)
/* 8F48C 8008E88C 1040001F */  beqz       $v0, .L8008E90C
/* 8F490 8008E890 8FBF001C */   lw        $ra, 0x1c($sp)
/* 8F494 8008E894 94AE00D0 */  lhu        $t6, 0xd0($a1)
/* 8F498 8008E898 246D0001 */  addiu      $t5, $v1, 1
/* 8F49C 8008E89C 11AE001B */  beq        $t5, $t6, .L8008E90C
/* 8F4A0 8008E8A0 8FBF001C */   lw        $ra, 0x1c($sp)
/* 8F4A4 8008E8A4 10000018 */  b          .L8008E908
/* 8F4A8 8008E8A8 A4A600D0 */   sh        $a2, 0xd0($a1)
.L8008E8AC:
/* 8F4AC 8008E8AC 246F0001 */  addiu      $t7, $v1, 1
/* 8F4B0 8008E8B0 11E40016 */  beq        $t7, $a0, .L8008E90C
/* 8F4B4 8008E8B4 8FBF001C */   lw        $ra, 0x1c($sp)
/* 8F4B8 8008E8B8 10000013 */  b          .L8008E908
/* 8F4BC 8008E8BC A4A600D0 */   sh        $a2, 0xd0($a1)
.L8008E8C0:
/* 8F4C0 8008E8C0 0007C080 */  sll        $t8, $a3, 2
/* 8F4C4 8008E8C4 0307C023 */  subu       $t8, $t8, $a3
/* 8F4C8 8008E8C8 0018C080 */  sll        $t8, $t8, 2
/* 8F4CC 8008E8CC 0307C021 */  addu       $t8, $t8, $a3
/* 8F4D0 8008E8D0 0018C080 */  sll        $t8, $t8, 2
/* 8F4D4 8008E8D4 0307C023 */  subu       $t8, $t8, $a3
/* 8F4D8 8008E8D8 3C19800F */  lui        $t9, %hi(gActors)
/* 8F4DC 8008E8DC 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 8F4E0 8008E8E0 0018C0C0 */  sll        $t8, $t8, 3
/* 8F4E4 8008E8E4 03192821 */  addu       $a1, $t8, $t9
/* 8F4E8 8008E8E8 94A200D0 */  lhu        $v0, 0xd0($a1)
/* 8F4EC 8008E8EC 24010131 */  addiu      $at, $zero, 0x131
/* 8F4F0 8008E8F0 10410004 */  beq        $v0, $at, .L8008E904
/* 8F4F4 8008E8F4 240A0110 */   addiu     $t2, $zero, 0x110
/* 8F4F8 8008E8F8 24010141 */  addiu      $at, $zero, 0x141
/* 8F4FC 8008E8FC 14410003 */  bne        $v0, $at, .L8008E90C
/* 8F500 8008E900 8FBF001C */   lw        $ra, 0x1c($sp)
.L8008E904:
/* 8F504 8008E904 A4AA00D0 */  sh         $t2, 0xd0($a1)
.L8008E908:
/* 8F508 8008E908 8FBF001C */  lw         $ra, 0x1c($sp)
.L8008E90C:
/* 8F50C 8008E90C 27BD0038 */  addiu      $sp, $sp, 0x38
/* 8F510 8008E910 03E00008 */  jr         $ra
/* 8F514 8008E914 01001025 */   or        $v0, $t0, $zero

glabel func_8008E918
/* 8F518 8008E918 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8F51C 8008E91C AFBF0014 */  sw         $ra, 0x14($sp)
/* 8F520 8008E920 AFA40018 */  sw         $a0, 0x18($sp)
/* 8F524 8008E924 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8F528 8008E928 3C05800F */  lui        $a1, %hi(D_800E8BEC)
/* 8F52C 8008E92C 01C02025 */  or         $a0, $t6, $zero
/* 8F530 8008E930 0C0205E4 */  jal        func_80081790
/* 8F534 8008E934 24A58BEC */   addiu     $a1, $a1, %lo(D_800E8BEC)
/* 8F538 8008E938 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8F53C 8008E93C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8F540 8008E940 03E00008 */  jr         $ra
/* 8F544 8008E944 00000000 */   nop

glabel func_8008E948
/* 8F548 8008E948 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8F54C 8008E94C 000E7880 */  sll        $t7, $t6, 2
/* 8F550 8008E950 01EE7823 */  subu       $t7, $t7, $t6
/* 8F554 8008E954 000F7880 */  sll        $t7, $t7, 2
/* 8F558 8008E958 01EE7821 */  addu       $t7, $t7, $t6
/* 8F55C 8008E95C 000F7880 */  sll        $t7, $t7, 2
/* 8F560 8008E960 3C03800F */  lui        $v1, %hi(gActors)
/* 8F564 8008E964 01EE7823 */  subu       $t7, $t7, $t6
/* 8F568 8008E968 2463F510 */  addiu      $v1, $v1, %lo(gActors)
/* 8F56C 8008E96C 000F78C0 */  sll        $t7, $t7, 3
/* 8F570 8008E970 006FC021 */  addu       $t8, $v1, $t7
/* 8F574 8008E974 4459F800 */  cfc1       $t9, $31
/* 8F578 8008E978 24020001 */  addiu      $v0, $zero, 1
/* 8F57C 8008E97C 44C2F800 */  ctc1       $v0, $31
/* 8F580 8008E980 C7040440 */  lwc1       $f4, 0x440($t8)
/* 8F584 8008E984 AFA40000 */  sw         $a0, ($sp)
/* 8F588 8008E988 460021A4 */  cvt.w.s    $f6, $f4
/* 8F58C 8008E98C 3C014F00 */  lui        $at, 0x4f00
/* 8F590 8008E990 4442F800 */  cfc1       $v0, $31
/* 8F594 8008E994 00000000 */  nop
/* 8F598 8008E998 30420078 */  andi       $v0, $v0, 0x78
/* 8F59C 8008E99C 10400012 */  beqz       $v0, .L8008E9E8
/* 8F5A0 8008E9A0 00000000 */   nop
/* 8F5A4 8008E9A4 44813000 */  mtc1       $at, $f6
/* 8F5A8 8008E9A8 24020001 */  addiu      $v0, $zero, 1
/* 8F5AC 8008E9AC 46062181 */  sub.s      $f6, $f4, $f6
/* 8F5B0 8008E9B0 3C018000 */  lui        $at, 0x8000
/* 8F5B4 8008E9B4 44C2F800 */  ctc1       $v0, $31
/* 8F5B8 8008E9B8 00000000 */  nop
/* 8F5BC 8008E9BC 460031A4 */  cvt.w.s    $f6, $f6
/* 8F5C0 8008E9C0 4442F800 */  cfc1       $v0, $31
/* 8F5C4 8008E9C4 00000000 */  nop
/* 8F5C8 8008E9C8 30420078 */  andi       $v0, $v0, 0x78
/* 8F5CC 8008E9CC 14400004 */  bnez       $v0, .L8008E9E0
/* 8F5D0 8008E9D0 00000000 */   nop
/* 8F5D4 8008E9D4 44023000 */  mfc1       $v0, $f6
/* 8F5D8 8008E9D8 10000007 */  b          .L8008E9F8
/* 8F5DC 8008E9DC 00411025 */   or        $v0, $v0, $at
.L8008E9E0:
/* 8F5E0 8008E9E0 10000005 */  b          .L8008E9F8
/* 8F5E4 8008E9E4 2402FFFF */   addiu     $v0, $zero, -1
.L8008E9E8:
/* 8F5E8 8008E9E8 44023000 */  mfc1       $v0, $f6
/* 8F5EC 8008E9EC 00000000 */  nop
/* 8F5F0 8008E9F0 0440FFFB */  bltz       $v0, .L8008E9E0
/* 8F5F4 8008E9F4 00000000 */   nop
.L8008E9F8:
/* 8F5F8 8008E9F8 44D9F800 */  ctc1       $t9, $31
/* 8F5FC 8008E9FC 3048FFFF */  andi       $t0, $v0, 0xffff
/* 8F600 8008EA00 1100000F */  beqz       $t0, .L8008EA40
/* 8F604 8008EA04 00084880 */   sll       $t1, $t0, 2
/* 8F608 8008EA08 01284823 */  subu       $t1, $t1, $t0
/* 8F60C 8008EA0C 00094880 */  sll        $t1, $t1, 2
/* 8F610 8008EA10 01284821 */  addu       $t1, $t1, $t0
/* 8F614 8008EA14 00094880 */  sll        $t1, $t1, 2
/* 8F618 8008EA18 01284823 */  subu       $t1, $t1, $t0
/* 8F61C 8008EA1C 000948C0 */  sll        $t1, $t1, 3
/* 8F620 8008EA20 00695021 */  addu       $t2, $v1, $t1
/* 8F624 8008EA24 8D4B0098 */  lw         $t3, 0x98($t2)
/* 8F628 8008EA28 00000000 */  nop
/* 8F62C 8008EA2C 316C0001 */  andi       $t4, $t3, 1
/* 8F630 8008EA30 11800004 */  beqz       $t4, .L8008EA44
/* 8F634 8008EA34 00001025 */   or        $v0, $zero, $zero
/* 8F638 8008EA38 03E00008 */  jr         $ra
/* 8F63C 8008EA3C 24020001 */   addiu     $v0, $zero, 1
.L8008EA40:
/* 8F640 8008EA40 00001025 */  or         $v0, $zero, $zero
.L8008EA44:
/* 8F644 8008EA44 03E00008 */  jr         $ra
/* 8F648 8008EA48 00000000 */   nop

glabel func_8008EA4C
/* 8F64C 8008EA4C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8F650 8008EA50 000E7880 */  sll        $t7, $t6, 2
/* 8F654 8008EA54 01EE7823 */  subu       $t7, $t7, $t6
/* 8F658 8008EA58 000F7880 */  sll        $t7, $t7, 2
/* 8F65C 8008EA5C 01EE7821 */  addu       $t7, $t7, $t6
/* 8F660 8008EA60 000F7880 */  sll        $t7, $t7, 2
/* 8F664 8008EA64 3C05800F */  lui        $a1, %hi(gActors)
/* 8F668 8008EA68 01EE7823 */  subu       $t7, $t7, $t6
/* 8F66C 8008EA6C 24A5F510 */  addiu      $a1, $a1, %lo(gActors)
/* 8F670 8008EA70 000F78C0 */  sll        $t7, $t7, 3
/* 8F674 8008EA74 00AF1821 */  addu       $v1, $a1, $t7
/* 8F678 8008EA78 4458F800 */  cfc1       $t8, $31
/* 8F67C 8008EA7C 24020001 */  addiu      $v0, $zero, 1
/* 8F680 8008EA80 44C2F800 */  ctc1       $v0, $31
/* 8F684 8008EA84 C4640440 */  lwc1       $f4, 0x440($v1)
/* 8F688 8008EA88 AFA40000 */  sw         $a0, ($sp)
/* 8F68C 8008EA8C 460021A4 */  cvt.w.s    $f6, $f4
/* 8F690 8008EA90 3C014F00 */  lui        $at, 0x4f00
/* 8F694 8008EA94 4442F800 */  cfc1       $v0, $31
/* 8F698 8008EA98 00000000 */  nop
/* 8F69C 8008EA9C 30420078 */  andi       $v0, $v0, 0x78
/* 8F6A0 8008EAA0 10400012 */  beqz       $v0, .L8008EAEC
/* 8F6A4 8008EAA4 00000000 */   nop
/* 8F6A8 8008EAA8 44813000 */  mtc1       $at, $f6
/* 8F6AC 8008EAAC 24020001 */  addiu      $v0, $zero, 1
/* 8F6B0 8008EAB0 46062181 */  sub.s      $f6, $f4, $f6
/* 8F6B4 8008EAB4 3C018000 */  lui        $at, 0x8000
/* 8F6B8 8008EAB8 44C2F800 */  ctc1       $v0, $31
/* 8F6BC 8008EABC 00000000 */  nop
/* 8F6C0 8008EAC0 460031A4 */  cvt.w.s    $f6, $f6
/* 8F6C4 8008EAC4 4442F800 */  cfc1       $v0, $31
/* 8F6C8 8008EAC8 00000000 */  nop
/* 8F6CC 8008EACC 30420078 */  andi       $v0, $v0, 0x78
/* 8F6D0 8008EAD0 14400004 */  bnez       $v0, .L8008EAE4
/* 8F6D4 8008EAD4 00000000 */   nop
/* 8F6D8 8008EAD8 44023000 */  mfc1       $v0, $f6
/* 8F6DC 8008EADC 10000007 */  b          .L8008EAFC
/* 8F6E0 8008EAE0 00411025 */   or        $v0, $v0, $at
.L8008EAE4:
/* 8F6E4 8008EAE4 10000005 */  b          .L8008EAFC
/* 8F6E8 8008EAE8 2402FFFF */   addiu     $v0, $zero, -1
.L8008EAEC:
/* 8F6EC 8008EAEC 44023000 */  mfc1       $v0, $f6
/* 8F6F0 8008EAF0 00000000 */  nop
/* 8F6F4 8008EAF4 0440FFFB */  bltz       $v0, .L8008EAE4
/* 8F6F8 8008EAF8 00000000 */   nop
.L8008EAFC:
/* 8F6FC 8008EAFC 44D8F800 */  ctc1       $t8, $31
/* 8F700 8008EB00 3059FFFF */  andi       $t9, $v0, 0xffff
/* 8F704 8008EB04 1320000C */  beqz       $t9, .L8008EB38
/* 8F708 8008EB08 00194080 */   sll       $t0, $t9, 2
/* 8F70C 8008EB0C 01194023 */  subu       $t0, $t0, $t9
/* 8F710 8008EB10 00084080 */  sll        $t0, $t0, 2
/* 8F714 8008EB14 01194021 */  addu       $t0, $t0, $t9
/* 8F718 8008EB18 00084080 */  sll        $t0, $t0, 2
/* 8F71C 8008EB1C 01194023 */  subu       $t0, $t0, $t9
/* 8F720 8008EB20 000840C0 */  sll        $t0, $t0, 3
/* 8F724 8008EB24 00A82021 */  addu       $a0, $a1, $t0
/* 8F728 8008EB28 8C890080 */  lw         $t1, 0x80($a0)
/* 8F72C 8008EB2C 2401F57F */  addiu      $at, $zero, -0xa81
/* 8F730 8008EB30 01215024 */  and        $t2, $t1, $at
/* 8F734 8008EB34 AC8A0080 */  sw         $t2, 0x80($a0)
.L8008EB38:
/* 8F738 8008EB38 44804000 */  mtc1       $zero, $f8
/* 8F73C 8008EB3C 03E00008 */  jr         $ra
/* 8F740 8008EB40 E4680440 */   swc1      $f8, 0x440($v1)

glabel func_8008EB44
/* 8F744 8008EB44 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8F748 8008EB48 AFA40018 */  sw         $a0, 0x18($sp)
/* 8F74C 8008EB4C AFBF0014 */  sw         $ra, 0x14($sp)
/* 8F750 8008EB50 97A4001A */  lhu        $a0, 0x1a($sp)
/* 8F754 8008EB54 0C023A93 */  jal        func_8008EA4C
/* 8F758 8008EB58 00000000 */   nop
/* 8F75C 8008EB5C 97AE001A */  lhu        $t6, 0x1a($sp)
/* 8F760 8008EB60 3C18800F */  lui        $t8, 0x800f
/* 8F764 8008EB64 000E7880 */  sll        $t7, $t6, 2
/* 8F768 8008EB68 01EE7823 */  subu       $t7, $t7, $t6
/* 8F76C 8008EB6C 000F7880 */  sll        $t7, $t7, 2
/* 8F770 8008EB70 01EE7821 */  addu       $t7, $t7, $t6
/* 8F774 8008EB74 000F7880 */  sll        $t7, $t7, 2
/* 8F778 8008EB78 01EE7823 */  subu       $t7, $t7, $t6
/* 8F77C 8008EB7C 000F78C0 */  sll        $t7, $t7, 3
/* 8F780 8008EB80 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 8F784 8008EB84 01F81021 */  addu       $v0, $t7, $t8
/* 8F788 8008EB88 8C480080 */  lw         $t0, 0x80($v0)
/* 8F78C 8008EB8C 3C01FFFF */  lui        $at, 0xffff
/* 8F790 8008EB90 8C4400F8 */  lw         $a0, 0xf8($v0)
/* 8F794 8008EB94 3421747F */  ori        $at, $at, 0x747f
/* 8F798 8008EB98 24190007 */  addiu      $t9, $zero, 7
/* 8F79C 8008EB9C 01014824 */  and        $t1, $t0, $at
/* 8F7A0 8008EBA0 AC400170 */  sw         $zero, 0x170($v0)
/* 8F7A4 8008EBA4 A45900D4 */  sh         $t9, 0xd4($v0)
/* 8F7A8 8008EBA8 AC490080 */  sw         $t1, 0x80($v0)
/* 8F7AC 8008EBAC AC4000EC */  sw         $zero, 0xec($v0)
/* 8F7B0 8008EBB0 1080000B */  beqz       $a0, .L8008EBE0
/* 8F7B4 8008EBB4 AC4000F0 */   sw        $zero, 0xf0($v0)
/* 8F7B8 8008EBB8 31230020 */  andi       $v1, $t1, 0x20
/* 8F7BC 8008EBBC 14600003 */  bnez       $v1, .L8008EBCC
/* 8F7C0 8008EBC0 01202825 */   or        $a1, $t1, $zero
/* 8F7C4 8008EBC4 1C800005 */  bgtz       $a0, .L8008EBDC
/* 8F7C8 8008EBC8 38AA0020 */   xori      $t2, $a1, 0x20
.L8008EBCC:
/* 8F7CC 8008EBCC 10600005 */  beqz       $v1, .L8008EBE4
/* 8F7D0 8008EBD0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 8F7D4 8008EBD4 04810002 */  bgez       $a0, .L8008EBE0
/* 8F7D8 8008EBD8 38AA0020 */   xori      $t2, $a1, 0x20
.L8008EBDC:
/* 8F7DC 8008EBDC AC4A0080 */  sw         $t2, 0x80($v0)
.L8008EBE0:
/* 8F7E0 8008EBE0 8FBF0014 */  lw         $ra, 0x14($sp)
.L8008EBE4:
/* 8F7E4 8008EBE4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8F7E8 8008EBE8 03E00008 */  jr         $ra
/* 8F7EC 8008EBEC 00000000 */   nop

glabel func_8008EBF0
/* 8F7F0 8008EBF0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8F7F4 8008EBF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8F7F8 8008EBF8 AFA40018 */  sw         $a0, 0x18($sp)
/* 8F7FC 8008EBFC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8F800 8008EC00 01C02025 */  or         $a0, $t6, $zero
/* 8F804 8008EC04 0C023AD1 */  jal        func_8008EB44
/* 8F808 8008EC08 A7AE001A */   sh        $t6, 0x1a($sp)
/* 8F80C 8008EC0C 97A4001A */  lhu        $a0, 0x1a($sp)
/* 8F810 8008EC10 0C00A880 */  jal        func_8002A200
/* 8F814 8008EC14 3C050002 */   lui       $a1, 2
/* 8F818 8008EC18 97A4001A */  lhu        $a0, 0x1a($sp)
/* 8F81C 8008EC1C 3C03800F */  lui        $v1, 0x800f
/* 8F820 8008EC20 00047880 */  sll        $t7, $a0, 2
/* 8F824 8008EC24 01E47823 */  subu       $t7, $t7, $a0
/* 8F828 8008EC28 000F7880 */  sll        $t7, $t7, 2
/* 8F82C 8008EC2C 01E47821 */  addu       $t7, $t7, $a0
/* 8F830 8008EC30 000F7880 */  sll        $t7, $t7, 2
/* 8F834 8008EC34 01E47823 */  subu       $t7, $t7, $a0
/* 8F838 8008EC38 2463F510 */  addiu      $v1, $v1, -0xaf0
/* 8F83C 8008EC3C 000F78C0 */  sll        $t7, $t7, 3
/* 8F840 8008EC40 006F1021 */  addu       $v0, $v1, $t7
/* 8F844 8008EC44 8C580080 */  lw         $t8, 0x80($v0)
/* 8F848 8008EC48 240D01E0 */  addiu      $t5, $zero, 0x1e0
/* 8F84C 8008EC4C 0018CB80 */  sll        $t9, $t8, 0xe
/* 8F850 8008EC50 07210012 */  bgez       $t9, .L8008EC9C
/* 8F854 8008EC54 3C0E800F */   lui       $t6, 0x800f
/* 8F858 8008EC58 00045880 */  sll        $t3, $a0, 2
/* 8F85C 8008EC5C 01645823 */  subu       $t3, $t3, $a0
/* 8F860 8008EC60 000B5880 */  sll        $t3, $t3, 2
/* 8F864 8008EC64 01645821 */  addu       $t3, $t3, $a0
/* 8F868 8008EC68 000B5880 */  sll        $t3, $t3, 2
/* 8F86C 8008EC6C 3C090001 */  lui        $t1, 1
/* 8F870 8008EC70 01645823 */  subu       $t3, $t3, $a0
/* 8F874 8008EC74 240801F0 */  addiu      $t0, $zero, 0x1f0
/* 8F878 8008EC78 35298000 */  ori        $t1, $t1, 0x8000
/* 8F87C 8008EC7C 000B58C0 */  sll        $t3, $t3, 3
/* 8F880 8008EC80 3C0A800F */  lui        $t2, %hi(D_800E8D8C)
/* 8F884 8008EC84 A44800D0 */  sh         $t0, 0xd0($v0)
/* 8F888 8008EC88 AC4900FC */  sw         $t1, 0xfc($v0)
/* 8F88C 8008EC8C 254A8D8C */  addiu      $t2, $t2, %lo(D_800E8D8C)
/* 8F890 8008EC90 006B6021 */  addu       $t4, $v1, $t3
/* 8F894 8008EC94 1000000D */  b          .L8008ECCC
/* 8F898 8008EC98 AD8A0978 */   sw        $t2, 0x978($t4)
.L8008EC9C:
/* 8F89C 8008EC9C 00047880 */  sll        $t7, $a0, 2
/* 8F8A0 8008ECA0 01E47823 */  subu       $t7, $t7, $a0
/* 8F8A4 8008ECA4 000F7880 */  sll        $t7, $t7, 2
/* 8F8A8 8008ECA8 01E47821 */  addu       $t7, $t7, $a0
/* 8F8AC 8008ECAC 000F7880 */  sll        $t7, $t7, 2
/* 8F8B0 8008ECB0 01E47823 */  subu       $t7, $t7, $a0
/* 8F8B4 8008ECB4 000F78C0 */  sll        $t7, $t7, 3
/* 8F8B8 8008ECB8 A44D00D0 */  sh         $t5, 0xd0($v0)
/* 8F8BC 8008ECBC AC4000FC */  sw         $zero, 0xfc($v0)
/* 8F8C0 8008ECC0 006FC021 */  addu       $t8, $v1, $t7
/* 8F8C4 8008ECC4 25CE8D8C */  addiu      $t6, $t6, -0x7274
/* 8F8C8 8008ECC8 AF0E0978 */  sw         $t6, 0x978($t8)
.L8008ECCC:
/* 8F8CC 8008ECCC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8F8D0 8008ECD0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8F8D4 8008ECD4 03E00008 */  jr         $ra
/* 8F8D8 8008ECD8 00000000 */   nop

glabel func_8008ECDC
/* 8F8DC 8008ECDC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8F8E0 8008ECE0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8F8E4 8008ECE4 AFA40020 */  sw         $a0, 0x20($sp)
/* 8F8E8 8008ECE8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8F8EC 8008ECEC 01C02025 */  or         $a0, $t6, $zero
/* 8F8F0 8008ECF0 0C023AD1 */  jal        func_8008EB44
/* 8F8F4 8008ECF4 A7AE0022 */   sh        $t6, 0x22($sp)
/* 8F8F8 8008ECF8 97A40022 */  lhu        $a0, 0x22($sp)
/* 8F8FC 8008ECFC 3C03800F */  lui        $v1, 0x800f
/* 8F900 8008ED00 00047880 */  sll        $t7, $a0, 2
/* 8F904 8008ED04 01E47823 */  subu       $t7, $t7, $a0
/* 8F908 8008ED08 00044080 */  sll        $t0, $a0, 2
/* 8F90C 8008ED0C 000F7880 */  sll        $t7, $t7, 2
/* 8F910 8008ED10 01044023 */  subu       $t0, $t0, $a0
/* 8F914 8008ED14 00084080 */  sll        $t0, $t0, 2
/* 8F918 8008ED18 01E47821 */  addu       $t7, $t7, $a0
/* 8F91C 8008ED1C 000F7880 */  sll        $t7, $t7, 2
/* 8F920 8008ED20 01044021 */  addu       $t0, $t0, $a0
/* 8F924 8008ED24 00084080 */  sll        $t0, $t0, 2
/* 8F928 8008ED28 01E47823 */  subu       $t7, $t7, $a0
/* 8F92C 8008ED2C 2463F510 */  addiu      $v1, $v1, -0xaf0
/* 8F930 8008ED30 000F78C0 */  sll        $t7, $t7, 3
/* 8F934 8008ED34 01044023 */  subu       $t0, $t0, $a0
/* 8F938 8008ED38 006F1021 */  addu       $v0, $v1, $t7
/* 8F93C 8008ED3C 24180200 */  addiu      $t8, $zero, 0x200
/* 8F940 8008ED40 000840C0 */  sll        $t0, $t0, 3
/* 8F944 8008ED44 3C19800F */  lui        $t9, %hi(D_800E8D8C)
/* 8F948 8008ED48 A45800D0 */  sh         $t8, 0xd0($v0)
/* 8F94C 8008ED4C 27398D8C */  addiu      $t9, $t9, %lo(D_800E8D8C)
/* 8F950 8008ED50 00684821 */  addu       $t1, $v1, $t0
/* 8F954 8008ED54 AD390978 */  sw         $t9, 0x978($t1)
/* 8F958 8008ED58 AFA2001C */  sw         $v0, 0x1c($sp)
/* 8F95C 8008ED5C 0C00A880 */  jal        func_8002A200
/* 8F960 8008ED60 3C050004 */   lui       $a1, 4
/* 8F964 8008ED64 8FA2001C */  lw         $v0, 0x1c($sp)
/* 8F968 8008ED68 3C010002 */  lui        $at, 2
/* 8F96C 8008ED6C 8C4B0080 */  lw         $t3, 0x80($v0)
/* 8F970 8008ED70 8C4F0098 */  lw         $t7, 0x98($v0)
/* 8F974 8008ED74 01616025 */  or         $t4, $t3, $at
/* 8F978 8008ED78 3C01FFFE */  lui        $at, 0xfffe
/* 8F97C 8008ED7C 3421FFFF */  ori        $at, $at, 0xffff
/* 8F980 8008ED80 01817024 */  and        $t6, $t4, $at
/* 8F984 8008ED84 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8F988 8008ED88 3C0A0002 */  lui        $t2, 2
/* 8F98C 8008ED8C 2401FFDF */  addiu      $at, $zero, -0x21
/* 8F990 8008ED90 354A8000 */  ori        $t2, $t2, 0x8000
/* 8F994 8008ED94 AC4C0080 */  sw         $t4, 0x80($v0)
/* 8F998 8008ED98 01E1C024 */  and        $t8, $t7, $at
/* 8F99C 8008ED9C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8F9A0 8008EDA0 AC4A00FC */  sw         $t2, 0xfc($v0)
/* 8F9A4 8008EDA4 AC580098 */  sw         $t8, 0x98($v0)
/* 8F9A8 8008EDA8 03E00008 */  jr         $ra
/* 8F9AC 8008EDAC AC4E0080 */   sw        $t6, 0x80($v0)

glabel func_8008EDB0
/* 8F9B0 8008EDB0 3085FFFF */  andi       $a1, $a0, 0xffff
/* 8F9B4 8008EDB4 00057080 */  sll        $t6, $a1, 2
/* 8F9B8 8008EDB8 01C57023 */  subu       $t6, $t6, $a1
/* 8F9BC 8008EDBC 000E7080 */  sll        $t6, $t6, 2
/* 8F9C0 8008EDC0 01C57021 */  addu       $t6, $t6, $a1
/* 8F9C4 8008EDC4 000E7080 */  sll        $t6, $t6, 2
/* 8F9C8 8008EDC8 01C57023 */  subu       $t6, $t6, $a1
/* 8F9CC 8008EDCC 3C0F800F */  lui        $t7, %hi(gActors)
/* 8F9D0 8008EDD0 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 8F9D4 8008EDD4 000E70C0 */  sll        $t6, $t6, 3
/* 8F9D8 8008EDD8 01CF1021 */  addu       $v0, $t6, $t7
/* 8F9DC 8008EDDC 8C580098 */  lw         $t8, 0x98($v0)
/* 8F9E0 8008EDE0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8F9E4 8008EDE4 33190002 */  andi       $t9, $t8, 2
/* 8F9E8 8008EDE8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8F9EC 8008EDEC 1320003D */  beqz       $t9, .L8008EEE4
/* 8F9F0 8008EDF0 AFA40020 */   sw        $a0, 0x20($sp)
/* 8F9F4 8008EDF4 8C480080 */  lw         $t0, 0x80($v0)
/* 8F9F8 8008EDF8 00000000 */  nop
/* 8F9FC 8008EDFC 31098000 */  andi       $t1, $t0, 0x8000
/* 8FA00 8008EE00 15200038 */  bnez       $t1, .L8008EEE4
/* 8FA04 8008EE04 00000000 */   nop
/* 8FA08 8008EE08 904A00DD */  lbu        $t2, 0xdd($v0)
/* 8FA0C 8008EE0C 00000000 */  nop
/* 8FA10 8008EE10 254BFFFE */  addiu      $t3, $t2, -2
/* 8FA14 8008EE14 2D610016 */  sltiu      $at, $t3, 0x16
/* 8FA18 8008EE18 10200009 */  beqz       $at, .L8008EE40
/* 8FA1C 8008EE1C 000B5880 */   sll       $t3, $t3, 2
/* 8FA20 8008EE20 3C01800F */  lui        $at, %hi(D_800ED2F0)
/* 8FA24 8008EE24 002B0821 */  addu       $at, $at, $t3
/* 8FA28 8008EE28 8C2BD2F0 */  lw         $t3, %lo(D_800ED2F0)($at)
/* 8FA2C 8008EE2C 00000000 */  nop
/* 8FA30 8008EE30 01600008 */  jr         $t3
/* 8FA34 8008EE34 00000000 */   nop
/* 8FA38 8008EE38 1000002B */  b          .L8008EEE8
/* 8FA3C 8008EE3C 00001025 */   or        $v0, $zero, $zero
.L8008EE40:
/* 8FA40 8008EE40 30A4FFFF */  andi       $a0, $a1, 0xffff
/* 8FA44 8008EE44 0C023AFC */  jal        func_8008EBF0
/* 8FA48 8008EE48 A7A50022 */   sh        $a1, 0x22($sp)
/* 8FA4C 8008EE4C 97A50022 */  lhu        $a1, 0x22($sp)
/* 8FA50 8008EE50 0C000DB2 */  jal        func_800036C8
/* 8FA54 8008EE54 2404009D */   addiu     $a0, $zero, 0x9d
/* 8FA58 8008EE58 10000023 */  b          .L8008EEE8
/* 8FA5C 8008EE5C 24020001 */   addiu     $v0, $zero, 1
/* 8FA60 8008EE60 30A4FFFF */  andi       $a0, $a1, 0xffff
/* 8FA64 8008EE64 0C023B37 */  jal        func_8008ECDC
/* 8FA68 8008EE68 A7A50022 */   sh        $a1, 0x22($sp)
/* 8FA6C 8008EE6C 97A50022 */  lhu        $a1, 0x22($sp)
/* 8FA70 8008EE70 0C000DB2 */  jal        func_800036C8
/* 8FA74 8008EE74 2404009D */   addiu     $a0, $zero, 0x9d
/* 8FA78 8008EE78 1000001B */  b          .L8008EEE8
/* 8FA7C 8008EE7C 24020001 */   addiu     $v0, $zero, 1
/* 8FA80 8008EE80 30A4FFFF */  andi       $a0, $a1, 0xffff
/* 8FA84 8008EE84 0C023B37 */  jal        func_8008ECDC
/* 8FA88 8008EE88 A7A50022 */   sh        $a1, 0x22($sp)
/* 8FA8C 8008EE8C 97A50022 */  lhu        $a1, 0x22($sp)
/* 8FA90 8008EE90 0C000DB2 */  jal        func_800036C8
/* 8FA94 8008EE94 2404009D */   addiu     $a0, $zero, 0x9d
/* 8FA98 8008EE98 10000013 */  b          .L8008EEE8
/* 8FA9C 8008EE9C 24020001 */   addiu     $v0, $zero, 1
/* 8FAA0 8008EEA0 30A4FFFF */  andi       $a0, $a1, 0xffff
/* 8FAA4 8008EEA4 0C023B37 */  jal        func_8008ECDC
/* 8FAA8 8008EEA8 A7A50022 */   sh        $a1, 0x22($sp)
/* 8FAAC 8008EEAC 97A50022 */  lhu        $a1, 0x22($sp)
/* 8FAB0 8008EEB0 0C000DB2 */  jal        func_800036C8
/* 8FAB4 8008EEB4 2404009D */   addiu     $a0, $zero, 0x9d
/* 8FAB8 8008EEB8 1000000B */  b          .L8008EEE8
/* 8FABC 8008EEBC 24020001 */   addiu     $v0, $zero, 1
/* 8FAC0 8008EEC0 2404009D */  addiu      $a0, $zero, 0x9d
/* 8FAC4 8008EEC4 0C000DB2 */  jal        func_800036C8
/* 8FAC8 8008EEC8 AFA20018 */   sw        $v0, 0x18($sp)
/* 8FACC 8008EECC 8FA20018 */  lw         $v0, 0x18($sp)
/* 8FAD0 8008EED0 00000000 */  nop
/* 8FAD4 8008EED4 AC400080 */  sw         $zero, 0x80($v0)
/* 8FAD8 8008EED8 A44000E0 */  sh         $zero, 0xe0($v0)
/* 8FADC 8008EEDC 10000002 */  b          .L8008EEE8
/* 8FAE0 8008EEE0 24020001 */   addiu     $v0, $zero, 1
.L8008EEE4:
/* 8FAE4 8008EEE4 00001025 */  or         $v0, $zero, $zero
.L8008EEE8:
/* 8FAE8 8008EEE8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8FAEC 8008EEEC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8FAF0 8008EEF0 03E00008 */  jr         $ra
/* 8FAF4 8008EEF4 00000000 */   nop

glabel func_8008EEF8
/* 8FAF8 8008EEF8 3085FFFF */  andi       $a1, $a0, 0xffff
/* 8FAFC 8008EEFC 00057080 */  sll        $t6, $a1, 2
/* 8FB00 8008EF00 01C57023 */  subu       $t6, $t6, $a1
/* 8FB04 8008EF04 000E7080 */  sll        $t6, $t6, 2
/* 8FB08 8008EF08 01C57021 */  addu       $t6, $t6, $a1
/* 8FB0C 8008EF0C 000E7080 */  sll        $t6, $t6, 2
/* 8FB10 8008EF10 01C57023 */  subu       $t6, $t6, $a1
/* 8FB14 8008EF14 3C0F800F */  lui        $t7, %hi(gActors)
/* 8FB18 8008EF18 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 8FB1C 8008EF1C 000E70C0 */  sll        $t6, $t6, 3
/* 8FB20 8008EF20 01CF1821 */  addu       $v1, $t6, $t7
/* 8FB24 8008EF24 8C780098 */  lw         $t8, 0x98($v1)
/* 8FB28 8008EF28 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8FB2C 8008EF2C 33190200 */  andi       $t9, $t8, 0x200
/* 8FB30 8008EF30 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8FB34 8008EF34 13200017 */  beqz       $t9, .L8008EF94
/* 8FB38 8008EF38 AFA40020 */   sw        $a0, 0x20($sp)
/* 8FB3C 8008EF3C 2404002F */  addiu      $a0, $zero, 0x2f
/* 8FB40 8008EF40 AFA3001C */  sw         $v1, 0x1c($sp)
/* 8FB44 8008EF44 0C000DB2 */  jal        func_800036C8
/* 8FB48 8008EF48 A7A50022 */   sh        $a1, 0x22($sp)
/* 8FB4C 8008EF4C 97A40022 */  lhu        $a0, 0x22($sp)
/* 8FB50 8008EF50 0C023A93 */  jal        func_8008EA4C
/* 8FB54 8008EF54 00000000 */   nop
/* 8FB58 8008EF58 8FA3001C */  lw         $v1, 0x1c($sp)
/* 8FB5C 8008EF5C 3C01FFFE */  lui        $at, 0xfffe
/* 8FB60 8008EF60 8C690080 */  lw         $t1, 0x80($v1)
/* 8FB64 8008EF64 3421FD7F */  ori        $at, $at, 0xfd7f
/* 8FB68 8008EF68 01215024 */  and        $t2, $t1, $at
/* 8FB6C 8008EF6C 3C010002 */  lui        $at, 2
/* 8FB70 8008EF70 240801B0 */  addiu      $t0, $zero, 0x1b0
/* 8FB74 8008EF74 01416025 */  or         $t4, $t2, $at
/* 8FB78 8008EF78 AC6A0080 */  sw         $t2, 0x80($v1)
/* 8FB7C 8008EF7C 24020001 */  addiu      $v0, $zero, 1
/* 8FB80 8008EF80 A46800D0 */  sh         $t0, 0xd0($v1)
/* 8FB84 8008EF84 AC6C0080 */  sw         $t4, 0x80($v1)
/* 8FB88 8008EF88 AC6000EC */  sw         $zero, 0xec($v1)
/* 8FB8C 8008EF8C 10000002 */  b          .L8008EF98
/* 8FB90 8008EF90 AC6000F0 */   sw        $zero, 0xf0($v1)
.L8008EF94:
/* 8FB94 8008EF94 00001025 */  or         $v0, $zero, $zero
.L8008EF98:
/* 8FB98 8008EF98 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8FB9C 8008EF9C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8FBA0 8008EFA0 03E00008 */  jr         $ra
/* 8FBA4 8008EFA4 00000000 */   nop

glabel func_8008EFA8
/* 8FBA8 8008EFA8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8FBAC 8008EFAC 000E7880 */  sll        $t7, $t6, 2
/* 8FBB0 8008EFB0 01EE7823 */  subu       $t7, $t7, $t6
/* 8FBB4 8008EFB4 000F7880 */  sll        $t7, $t7, 2
/* 8FBB8 8008EFB8 01EE7821 */  addu       $t7, $t7, $t6
/* 8FBBC 8008EFBC 000F7880 */  sll        $t7, $t7, 2
/* 8FBC0 8008EFC0 01EE7823 */  subu       $t7, $t7, $t6
/* 8FBC4 8008EFC4 3C18800F */  lui        $t8, %hi(gActors)
/* 8FBC8 8008EFC8 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 8FBCC 8008EFCC 000F78C0 */  sll        $t7, $t7, 3
/* 8FBD0 8008EFD0 01F81821 */  addu       $v1, $t7, $t8
/* 8FBD4 8008EFD4 4459F800 */  cfc1       $t9, $31
/* 8FBD8 8008EFD8 24080001 */  addiu      $t0, $zero, 1
/* 8FBDC 8008EFDC 44C8F800 */  ctc1       $t0, $31
/* 8FBE0 8008EFE0 C4640110 */  lwc1       $f4, 0x110($v1)
/* 8FBE4 8008EFE4 AFA40000 */  sw         $a0, ($sp)
/* 8FBE8 8008EFE8 460021A4 */  cvt.w.s    $f6, $f4
/* 8FBEC 8008EFEC 3C014F00 */  lui        $at, 0x4f00
/* 8FBF0 8008EFF0 4448F800 */  cfc1       $t0, $31
/* 8FBF4 8008EFF4 00000000 */  nop
/* 8FBF8 8008EFF8 31080078 */  andi       $t0, $t0, 0x78
/* 8FBFC 8008EFFC 11000012 */  beqz       $t0, .L8008F048
/* 8FC00 8008F000 00000000 */   nop
/* 8FC04 8008F004 44813000 */  mtc1       $at, $f6
/* 8FC08 8008F008 24080001 */  addiu      $t0, $zero, 1
/* 8FC0C 8008F00C 46062181 */  sub.s      $f6, $f4, $f6
/* 8FC10 8008F010 3C018000 */  lui        $at, 0x8000
/* 8FC14 8008F014 44C8F800 */  ctc1       $t0, $31
/* 8FC18 8008F018 00000000 */  nop
/* 8FC1C 8008F01C 460031A4 */  cvt.w.s    $f6, $f6
/* 8FC20 8008F020 4448F800 */  cfc1       $t0, $31
/* 8FC24 8008F024 00000000 */  nop
/* 8FC28 8008F028 31080078 */  andi       $t0, $t0, 0x78
/* 8FC2C 8008F02C 15000004 */  bnez       $t0, .L8008F040
/* 8FC30 8008F030 00000000 */   nop
/* 8FC34 8008F034 44083000 */  mfc1       $t0, $f6
/* 8FC38 8008F038 10000007 */  b          .L8008F058
/* 8FC3C 8008F03C 01014025 */   or        $t0, $t0, $at
.L8008F040:
/* 8FC40 8008F040 10000005 */  b          .L8008F058
/* 8FC44 8008F044 2408FFFF */   addiu     $t0, $zero, -1
.L8008F048:
/* 8FC48 8008F048 44083000 */  mfc1       $t0, $f6
/* 8FC4C 8008F04C 00000000 */  nop
/* 8FC50 8008F050 0500FFFB */  bltz       $t0, .L8008F040
/* 8FC54 8008F054 00000000 */   nop
.L8008F058:
/* 8FC58 8008F058 44D9F800 */  ctc1       $t9, $31
/* 8FC5C 8008F05C 310A0080 */  andi       $t2, $t0, 0x80
/* 8FC60 8008F060 1540000A */  bnez       $t2, .L8008F08C
/* 8FC64 8008F064 00001025 */   or        $v0, $zero, $zero
/* 8FC68 8008F068 846B00E0 */  lh         $t3, 0xe0($v1)
/* 8FC6C 8008F06C 240C0250 */  addiu      $t4, $zero, 0x250
/* 8FC70 8008F070 15600005 */  bnez       $t3, .L8008F088
/* 8FC74 8008F074 240D2710 */   addiu     $t5, $zero, 0x2710
/* 8FC78 8008F078 A46C00D0 */  sh         $t4, 0xd0($v1)
/* 8FC7C 8008F07C A46D00D4 */  sh         $t5, 0xd4($v1)
/* 8FC80 8008F080 03E00008 */  jr         $ra
/* 8FC84 8008F084 24020001 */   addiu     $v0, $zero, 1
.L8008F088:
/* 8FC88 8008F088 00001025 */  or         $v0, $zero, $zero
.L8008F08C:
/* 8FC8C 8008F08C 03E00008 */  jr         $ra
/* 8FC90 8008F090 00000000 */   nop

glabel func_8008F094
/* 8FC94 8008F094 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8FC98 8008F098 000EC080 */  sll        $t8, $t6, 2
/* 8FC9C 8008F09C 030EC023 */  subu       $t8, $t8, $t6
/* 8FCA0 8008F0A0 0018C080 */  sll        $t8, $t8, 2
/* 8FCA4 8008F0A4 030EC021 */  addu       $t8, $t8, $t6
/* 8FCA8 8008F0A8 0018C080 */  sll        $t8, $t8, 2
/* 8FCAC 8008F0AC 030EC023 */  subu       $t8, $t8, $t6
/* 8FCB0 8008F0B0 3C19800F */  lui        $t9, %hi(gActors)
/* 8FCB4 8008F0B4 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 8FCB8 8008F0B8 0018C0C0 */  sll        $t8, $t8, 3
/* 8FCBC 8008F0BC 03191021 */  addu       $v0, $t8, $t9
/* 8FCC0 8008F0C0 844800E0 */  lh         $t0, 0xe0($v0)
/* 8FCC4 8008F0C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8FCC8 8008F0C8 01054823 */  subu       $t1, $t0, $a1
/* 8FCCC 8008F0CC A44900E0 */  sh         $t1, 0xe0($v0)
/* 8FCD0 8008F0D0 844A00E0 */  lh         $t2, 0xe0($v0)
/* 8FCD4 8008F0D4 AFA40018 */  sw         $a0, 0x18($sp)
/* 8FCD8 8008F0D8 314B8000 */  andi       $t3, $t2, 0x8000
/* 8FCDC 8008F0DC 01C02025 */  or         $a0, $t6, $zero
/* 8FCE0 8008F0E0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8FCE4 8008F0E4 11600002 */  beqz       $t3, .L8008F0F0
/* 8FCE8 8008F0E8 AFA5001C */   sw        $a1, 0x1c($sp)
/* 8FCEC 8008F0EC A44000E0 */  sh         $zero, 0xe0($v0)
.L8008F0F0:
/* 8FCF0 8008F0F0 0C023BEA */  jal        func_8008EFA8
/* 8FCF4 8008F0F4 00000000 */   nop
/* 8FCF8 8008F0F8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8FCFC 8008F0FC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8FD00 8008F100 03E00008 */  jr         $ra
/* 8FD04 8008F104 00000000 */   nop

glabel func_8008F108
/* 8FD08 8008F108 3087FFFF */  andi       $a3, $a0, 0xffff
/* 8FD0C 8008F10C 00077080 */  sll        $t6, $a3, 2
/* 8FD10 8008F110 01C77023 */  subu       $t6, $t6, $a3
/* 8FD14 8008F114 000E7080 */  sll        $t6, $t6, 2
/* 8FD18 8008F118 01C77021 */  addu       $t6, $t6, $a3
/* 8FD1C 8008F11C 000E7080 */  sll        $t6, $t6, 2
/* 8FD20 8008F120 01C77023 */  subu       $t6, $t6, $a3
/* 8FD24 8008F124 3C0F800F */  lui        $t7, %hi(gActors)
/* 8FD28 8008F128 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8FD2C 8008F12C 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 8FD30 8008F130 000E70C0 */  sll        $t6, $t6, 3
/* 8FD34 8008F134 AFA40020 */  sw         $a0, 0x20($sp)
/* 8FD38 8008F138 01CF1821 */  addu       $v1, $t6, $t7
/* 8FD3C 8008F13C AFBF0014 */  sw         $ra, 0x14($sp)
/* 8FD40 8008F140 8C6400EC */  lw         $a0, 0xec($v1)
/* 8FD44 8008F144 AFA3001C */  sw         $v1, 0x1c($sp)
/* 8FD48 8008F148 00002825 */  or         $a1, $zero, $zero
/* 8FD4C 8008F14C 0C00A607 */  jal        func_8002981C
/* 8FD50 8008F150 3C060001 */   lui       $a2, 1
/* 8FD54 8008F154 8FA3001C */  lw         $v1, 0x1c($sp)
/* 8FD58 8008F158 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8FD5C 8008F15C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8FD60 8008F160 03E00008 */  jr         $ra
/* 8FD64 8008F164 AC6200EC */   sw        $v0, 0xec($v1)

glabel func_8008F168
/* 8FD68 8008F168 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8FD6C 8008F16C AFA40018 */  sw         $a0, 0x18($sp)
/* 8FD70 8008F170 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8FD74 8008F174 97A4001A */  lhu        $a0, 0x1a($sp)
/* 8FD78 8008F178 0C023BEA */  jal        func_8008EFA8
/* 8FD7C 8008F17C 00000000 */   nop
/* 8FD80 8008F180 10400004 */  beqz       $v0, .L8008F194
/* 8FD84 8008F184 97A4001A */   lhu       $a0, 0x1a($sp)
/* 8FD88 8008F188 10000021 */  b          .L8008F210
/* 8FD8C 8008F18C 24020004 */   addiu     $v0, $zero, 4
/* 8FD90 8008F190 97A4001A */  lhu        $a0, 0x1a($sp)
.L8008F194:
/* 8FD94 8008F194 0C023BBE */  jal        func_8008EEF8
/* 8FD98 8008F198 00000000 */   nop
/* 8FD9C 8008F19C 10400004 */  beqz       $v0, .L8008F1B0
/* 8FDA0 8008F1A0 97A4001A */   lhu       $a0, 0x1a($sp)
/* 8FDA4 8008F1A4 1000001A */  b          .L8008F210
/* 8FDA8 8008F1A8 24020001 */   addiu     $v0, $zero, 1
/* 8FDAC 8008F1AC 97A4001A */  lhu        $a0, 0x1a($sp)
.L8008F1B0:
/* 8FDB0 8008F1B0 0C023B6C */  jal        func_8008EDB0
/* 8FDB4 8008F1B4 00000000 */   nop
/* 8FDB8 8008F1B8 10400003 */  beqz       $v0, .L8008F1C8
/* 8FDBC 8008F1BC 3C18800F */   lui       $t8, %hi(gActors)
/* 8FDC0 8008F1C0 10000013 */  b          .L8008F210
/* 8FDC4 8008F1C4 24020002 */   addiu     $v0, $zero, 2
.L8008F1C8:
/* 8FDC8 8008F1C8 97AE001A */  lhu        $t6, 0x1a($sp)
/* 8FDCC 8008F1CC 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 8FDD0 8008F1D0 000E7880 */  sll        $t7, $t6, 2
/* 8FDD4 8008F1D4 01EE7823 */  subu       $t7, $t7, $t6
/* 8FDD8 8008F1D8 000F7880 */  sll        $t7, $t7, 2
/* 8FDDC 8008F1DC 01EE7821 */  addu       $t7, $t7, $t6
/* 8FDE0 8008F1E0 000F7880 */  sll        $t7, $t7, 2
/* 8FDE4 8008F1E4 01EE7823 */  subu       $t7, $t7, $t6
/* 8FDE8 8008F1E8 000F78C0 */  sll        $t7, $t7, 3
/* 8FDEC 8008F1EC 01F81821 */  addu       $v1, $t7, $t8
/* 8FDF0 8008F1F0 8C790098 */  lw         $t9, 0x98($v1)
/* 8FDF4 8008F1F4 24090150 */  addiu      $t1, $zero, 0x150
/* 8FDF8 8008F1F8 33280040 */  andi       $t0, $t9, 0x40
/* 8FDFC 8008F1FC 11000003 */  beqz       $t0, .L8008F20C
/* 8FE00 8008F200 24020003 */   addiu     $v0, $zero, 3
/* 8FE04 8008F204 10000002 */  b          .L8008F210
/* 8FE08 8008F208 A46900D0 */   sh        $t1, 0xd0($v1)
.L8008F20C:
/* 8FE0C 8008F20C 00001025 */  or         $v0, $zero, $zero
.L8008F210:
/* 8FE10 8008F210 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8FE14 8008F214 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8FE18 8008F218 03E00008 */  jr         $ra
/* 8FE1C 8008F21C 00000000 */   nop

glabel func_8008F220
/* 8FE20 8008F220 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8FE24 8008F224 AFA40018 */  sw         $a0, 0x18($sp)
/* 8FE28 8008F228 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8FE2C 8008F22C 97A4001A */  lhu        $a0, 0x1a($sp)
/* 8FE30 8008F230 0C023BEA */  jal        func_8008EFA8
/* 8FE34 8008F234 00000000 */   nop
/* 8FE38 8008F238 10400004 */  beqz       $v0, .L8008F24C
/* 8FE3C 8008F23C 97A4001A */   lhu       $a0, 0x1a($sp)
/* 8FE40 8008F240 10000010 */  b          .L8008F284
/* 8FE44 8008F244 24020004 */   addiu     $v0, $zero, 4
/* 8FE48 8008F248 97A4001A */  lhu        $a0, 0x1a($sp)
.L8008F24C:
/* 8FE4C 8008F24C 0C023BBE */  jal        func_8008EEF8
/* 8FE50 8008F250 00000000 */   nop
/* 8FE54 8008F254 10400004 */  beqz       $v0, .L8008F268
/* 8FE58 8008F258 97A4001A */   lhu       $a0, 0x1a($sp)
/* 8FE5C 8008F25C 10000009 */  b          .L8008F284
/* 8FE60 8008F260 24020001 */   addiu     $v0, $zero, 1
/* 8FE64 8008F264 97A4001A */  lhu        $a0, 0x1a($sp)
.L8008F268:
/* 8FE68 8008F268 0C023B6C */  jal        func_8008EDB0
/* 8FE6C 8008F26C 00000000 */   nop
/* 8FE70 8008F270 10400004 */  beqz       $v0, .L8008F284
/* 8FE74 8008F274 00001025 */   or        $v0, $zero, $zero
/* 8FE78 8008F278 10000002 */  b          .L8008F284
/* 8FE7C 8008F27C 24020002 */   addiu     $v0, $zero, 2
/* 8FE80 8008F280 00001025 */  or         $v0, $zero, $zero
.L8008F284:
/* 8FE84 8008F284 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8FE88 8008F288 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8FE8C 8008F28C 03E00008 */  jr         $ra
/* 8FE90 8008F290 00000000 */   nop

glabel func_8008F294
/* 8FE94 8008F294 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8FE98 8008F298 000E7880 */  sll        $t7, $t6, 2
/* 8FE9C 8008F29C 01EE7823 */  subu       $t7, $t7, $t6
/* 8FEA0 8008F2A0 000F7880 */  sll        $t7, $t7, 2
/* 8FEA4 8008F2A4 01EE7821 */  addu       $t7, $t7, $t6
/* 8FEA8 8008F2A8 000F7880 */  sll        $t7, $t7, 2
/* 8FEAC 8008F2AC 01EE7823 */  subu       $t7, $t7, $t6
/* 8FEB0 8008F2B0 3C18800F */  lui        $t8, %hi(gActors)
/* 8FEB4 8008F2B4 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 8FEB8 8008F2B8 000F78C0 */  sll        $t7, $t7, 3
/* 8FEBC 8008F2BC 01F81021 */  addu       $v0, $t7, $t8
/* 8FEC0 8008F2C0 C444011C */  lwc1       $f4, 0x11c($v0)
/* 8FEC4 8008F2C4 44803000 */  mtc1       $zero, $f6
/* 8FEC8 8008F2C8 AFA40000 */  sw         $a0, ($sp)
/* 8FECC 8008F2CC 4606203C */  c.lt.s     $f4, $f6
/* 8FED0 8008F2D0 24190110 */  addiu      $t9, $zero, 0x110
/* 8FED4 8008F2D4 45000002 */  bc1f       .L8008F2E0
/* 8FED8 8008F2D8 00000000 */   nop
/* 8FEDC 8008F2DC A45900D0 */  sh         $t9, 0xd0($v0)
.L8008F2E0:
/* 8FEE0 8008F2E0 03E00008 */  jr         $ra
/* 8FEE4 8008F2E4 00000000 */   nop

glabel func_8008F2E8
/* 8FEE8 8008F2E8 30AEFFFF */  andi       $t6, $a1, 0xffff
/* 8FEEC 8008F2EC 000E7880 */  sll        $t7, $t6, 2
/* 8FEF0 8008F2F0 01EE7823 */  subu       $t7, $t7, $t6
/* 8FEF4 8008F2F4 000F7880 */  sll        $t7, $t7, 2
/* 8FEF8 8008F2F8 01EE7821 */  addu       $t7, $t7, $t6
/* 8FEFC 8008F2FC 000F7880 */  sll        $t7, $t7, 2
/* 8FF00 8008F300 3C0A800F */  lui        $t2, %hi(gActors)
/* 8FF04 8008F304 01EE7823 */  subu       $t7, $t7, $t6
/* 8FF08 8008F308 254AF510 */  addiu      $t2, $t2, %lo(gActors)
/* 8FF0C 8008F30C 000F78C0 */  sll        $t7, $t7, 3
/* 8FF10 8008F310 014F1821 */  addu       $v1, $t2, $t7
/* 8FF14 8008F314 8C780080 */  lw         $t8, 0x80($v1)
/* 8FF18 8008F318 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 8FF1C 8008F31C 33190020 */  andi       $t9, $t8, 0x20
/* 8FF20 8008F320 AFBF001C */  sw         $ra, 0x1c($sp)
/* 8FF24 8008F324 AFA40038 */  sw         $a0, 0x38($sp)
/* 8FF28 8008F328 AFA5003C */  sw         $a1, 0x3c($sp)
/* 8FF2C 8008F32C 13200005 */  beqz       $t9, .L8008F344
/* 8FF30 8008F330 3086FFFF */   andi      $a2, $a0, 0xffff
/* 8FF34 8008F334 8C6B0150 */  lw         $t3, 0x150($v1)
/* 8FF38 8008F338 240C0200 */  addiu      $t4, $zero, 0x200
/* 8FF3C 8008F33C 10000003 */  b          .L8008F34C
/* 8FF40 8008F340 018B4023 */   subu      $t0, $t4, $t3
.L8008F344:
/* 8FF44 8008F344 8C680150 */  lw         $t0, 0x150($v1)
/* 8FF48 8008F348 00000000 */  nop
.L8008F34C:
/* 8FF4C 8008F34C 25080040 */  addiu      $t0, $t0, 0x40
/* 8FF50 8008F350 310D0380 */  andi       $t5, $t0, 0x380
/* 8FF54 8008F354 3C02800C */  lui        $v0, %hi(D_800BCCD0)
/* 8FF58 8008F358 31AF03FF */  andi       $t7, $t5, 0x3ff
/* 8FF5C 8008F35C 2442CCD0 */  addiu      $v0, $v0, %lo(D_800BCCD0)
/* 8FF60 8008F360 000FC080 */  sll        $t8, $t7, 2
/* 8FF64 8008F364 3C014900 */  lui        $at, 0x4900
/* 8FF68 8008F368 0058C821 */  addu       $t9, $v0, $t8
/* 8FF6C 8008F36C 44811000 */  mtc1       $at, $f2
/* 8FF70 8008F370 C7280000 */  lwc1       $f8, ($t9)
/* 8FF74 8008F374 8C6E0088 */  lw         $t6, 0x88($v1)
/* 8FF78 8008F378 46024282 */  mul.s      $f10, $f8, $f2
/* 8FF7C 8008F37C C46000B4 */  lwc1       $f0, 0xb4($v1)
/* 8FF80 8008F380 448E2000 */  mtc1       $t6, $f4
/* 8FF84 8008F384 01A04025 */  or         $t0, $t5, $zero
/* 8FF88 8008F388 46005402 */  mul.s      $f16, $f10, $f0
/* 8FF8C 8008F38C 25ADFF00 */  addiu      $t5, $t5, -0x100
/* 8FF90 8008F390 31AE03FF */  andi       $t6, $t5, 0x3ff
/* 8FF94 8008F394 000E7880 */  sll        $t7, $t6, 2
/* 8FF98 8008F398 468021A0 */  cvt.s.w    $f6, $f4
/* 8FF9C 8008F39C 004FC021 */  addu       $t8, $v0, $t7
/* 8FFA0 8008F3A0 8C6B008C */  lw         $t3, 0x8c($v1)
/* 8FFA4 8008F3A4 46103480 */  add.s      $f18, $f6, $f16
/* 8FFA8 8008F3A8 C7060000 */  lwc1       $f6, ($t8)
/* 8FFAC 8008F3AC 444CF800 */  cfc1       $t4, $31
/* 8FFB0 8008F3B0 448B4000 */  mtc1       $t3, $f8
/* 8FFB4 8008F3B4 35810003 */  ori        $at, $t4, 3
/* 8FFB8 8008F3B8 38210002 */  xori       $at, $at, 2
/* 8FFBC 8008F3BC 44C1F800 */  ctc1       $at, $31
/* 8FFC0 8008F3C0 00002025 */  or         $a0, $zero, $zero
/* 8FFC4 8008F3C4 46009124 */  cvt.w.s    $f4, $f18
/* 8FFC8 8008F3C8 2405007A */  addiu      $a1, $zero, 0x7a
/* 8FFCC 8008F3CC 44CCF800 */  ctc1       $t4, $31
/* 8FFD0 8008F3D0 44072000 */  mfc1       $a3, $f4
/* 8FFD4 8008F3D4 46023402 */  mul.s      $f16, $f6, $f2
/* 8FFD8 8008F3D8 00066080 */  sll        $t4, $a2, 2
/* 8FFDC 8008F3DC 01866023 */  subu       $t4, $t4, $a2
/* 8FFE0 8008F3E0 000C6080 */  sll        $t4, $t4, 2
/* 8FFE4 8008F3E4 46008482 */  mul.s      $f18, $f16, $f0
/* 8FFE8 8008F3E8 01866021 */  addu       $t4, $t4, $a2
/* 8FFEC 8008F3EC 000C6080 */  sll        $t4, $t4, 2
/* 8FFF0 8008F3F0 01866023 */  subu       $t4, $t4, $a2
/* 8FFF4 8008F3F4 468042A0 */  cvt.s.w    $f10, $f8
/* 8FFF8 8008F3F8 000C60C0 */  sll        $t4, $t4, 3
/* 8FFFC 8008F3FC 014C5821 */  addu       $t3, $t2, $t4
/* 90000 8008F400 46125100 */  add.s      $f4, $f10, $f18
/* 90004 8008F404 8D6D04B0 */  lw         $t5, 0x4b0($t3)
/* 90008 8008F408 4459F800 */  cfc1       $t9, $31
/* 9000C 8008F40C 00000000 */  nop
/* 90010 8008F410 37210003 */  ori        $at, $t9, 3
/* 90014 8008F414 38210002 */  xori       $at, $at, 2
/* 90018 8008F418 44C1F800 */  ctc1       $at, $31
/* 9001C 8008F41C 00000000 */  nop
/* 90020 8008F420 46002224 */  cvt.w.s    $f8, $f4
/* 90024 8008F424 44094000 */  mfc1       $t1, $f8
/* 90028 8008F428 44D9F800 */  ctc1       $t9, $31
/* 9002C 8008F42C 15A00017 */  bnez       $t5, .L8008F48C
/* 90030 8008F430 8FBF001C */   lw        $ra, 0x1c($sp)
/* 90034 8008F434 24040070 */  addiu      $a0, $zero, 0x70
/* 90038 8008F438 AFA30020 */  sw         $v1, 0x20($sp)
/* 9003C 8008F43C AFA70028 */  sw         $a3, 0x28($sp)
/* 90040 8008F440 AFA8002C */  sw         $t0, 0x2c($sp)
/* 90044 8008F444 0C00A12E */  jal        func_800284B8
/* 90048 8008F448 AFA90024 */   sw        $t1, 0x24($sp)
/* 9004C 8008F44C 8FA30020 */  lw         $v1, 0x20($sp)
/* 90050 8008F450 8FA70028 */  lw         $a3, 0x28($sp)
/* 90054 8008F454 8FA8002C */  lw         $t0, 0x2c($sp)
/* 90058 8008F458 8FA90024 */  lw         $t1, 0x24($sp)
/* 9005C 8008F45C 1040000A */  beqz       $v0, .L8008F488
/* 90060 8008F460 3044FFFF */   andi      $a0, $v0, 0xffff
/* 90064 8008F464 8C6E0090 */  lw         $t6, 0x90($v1)
/* 90068 8008F468 00002825 */  or         $a1, $zero, $zero
/* 9006C 8008F46C 00083400 */  sll        $a2, $t0, 0x10
/* 90070 8008F470 AFA90010 */  sw         $t1, 0x10($sp)
/* 90074 8008F474 A7A40036 */  sh         $a0, 0x36($sp)
/* 90078 8008F478 0C00B6C3 */  jal        func_8002DB0C
/* 9007C 8008F47C AFAE0014 */   sw        $t6, 0x14($sp)
/* 90080 8008F480 97A40036 */  lhu        $a0, 0x36($sp)
/* 90084 8008F484 00000000 */  nop
.L8008F488:
/* 90088 8008F488 8FBF001C */  lw         $ra, 0x1c($sp)
.L8008F48C:
/* 9008C 8008F48C 27BD0038 */  addiu      $sp, $sp, 0x38
/* 90090 8008F490 03E00008 */  jr         $ra
/* 90094 8008F494 00801025 */   or        $v0, $a0, $zero

glabel func_8008F498
/* 90098 8008F498 308EFFFF */  andi       $t6, $a0, 0xffff
/* 9009C 8008F49C 000EC080 */  sll        $t8, $t6, 2
/* 900A0 8008F4A0 030EC023 */  subu       $t8, $t8, $t6
/* 900A4 8008F4A4 0018C080 */  sll        $t8, $t8, 2
/* 900A8 8008F4A8 030EC021 */  addu       $t8, $t8, $t6
/* 900AC 8008F4AC 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 900B0 8008F4B0 0018C080 */  sll        $t8, $t8, 2
/* 900B4 8008F4B4 AFA50004 */  sw         $a1, 4($sp)
/* 900B8 8008F4B8 3C03800F */  lui        $v1, %hi(D_800E90E8)
/* 900BC 8008F4BC 030EC023 */  subu       $t8, $t8, $t6
/* 900C0 8008F4C0 3C19800F */  lui        $t9, %hi(gActors)
/* 900C4 8008F4C4 246390E8 */  addiu      $v1, $v1, %lo(D_800E90E8)
/* 900C8 8008F4C8 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 900CC 8008F4CC 0018C0C0 */  sll        $t8, $t8, 3
/* 900D0 8008F4D0 25E50001 */  addiu      $a1, $t7, 1
/* 900D4 8008F4D4 000F4080 */  sll        $t0, $t7, 2
/* 900D8 8008F4D8 00684821 */  addu       $t1, $v1, $t0
/* 900DC 8008F4DC 30AAFFFF */  andi       $t2, $a1, 0xffff
/* 900E0 8008F4E0 03191021 */  addu       $v0, $t8, $t9
/* 900E4 8008F4E4 C444024C */  lwc1       $f4, 0x24c($v0)
/* 900E8 8008F4E8 C5260000 */  lwc1       $f6, ($t1)
/* 900EC 8008F4EC 000A5880 */  sll        $t3, $t2, 2
/* 900F0 8008F4F0 25450001 */  addiu      $a1, $t2, 1
/* 900F4 8008F4F4 46062202 */  mul.s      $f8, $f4, $f6
/* 900F8 8008F4F8 30ADFFFF */  andi       $t5, $a1, 0xffff
/* 900FC 8008F4FC 006B6021 */  addu       $t4, $v1, $t3
/* 90100 8008F500 C5900000 */  lwc1       $f16, ($t4)
/* 90104 8008F504 C44A0250 */  lwc1       $f10, 0x250($v0)
/* 90108 8008F508 000D7080 */  sll        $t6, $t5, 2
/* 9010C 8008F50C 25A50001 */  addiu      $a1, $t5, 1
/* 90110 8008F510 46105482 */  mul.s      $f18, $f10, $f16
/* 90114 8008F514 30B8FFFF */  andi       $t8, $a1, 0xffff
/* 90118 8008F518 006E7821 */  addu       $t7, $v1, $t6
/* 9011C 8008F51C C5E60000 */  lwc1       $f6, ($t7)
/* 90120 8008F520 C444057C */  lwc1       $f4, 0x57c($v0)
/* 90124 8008F524 E448024C */  swc1       $f8, 0x24c($v0)
/* 90128 8008F528 0018C880 */  sll        $t9, $t8, 2
/* 9012C 8008F52C 27050001 */  addiu      $a1, $t8, 1
/* 90130 8008F530 46062202 */  mul.s      $f8, $f4, $f6
/* 90134 8008F534 30A9FFFF */  andi       $t1, $a1, 0xffff
/* 90138 8008F538 00794021 */  addu       $t0, $v1, $t9
/* 9013C 8008F53C C5100000 */  lwc1       $f16, ($t0)
/* 90140 8008F540 C44A0580 */  lwc1       $f10, 0x580($v0)
/* 90144 8008F544 E4520250 */  swc1       $f18, 0x250($v0)
/* 90148 8008F548 00095080 */  sll        $t2, $t1, 2
/* 9014C 8008F54C 25250001 */  addiu      $a1, $t1, 1
/* 90150 8008F550 46105482 */  mul.s      $f18, $f10, $f16
/* 90154 8008F554 30ACFFFF */  andi       $t4, $a1, 0xffff
/* 90158 8008F558 006A5821 */  addu       $t3, $v1, $t2
/* 9015C 8008F55C C5660000 */  lwc1       $f6, ($t3)
/* 90160 8008F560 C4440714 */  lwc1       $f4, 0x714($v0)
/* 90164 8008F564 E448057C */  swc1       $f8, 0x57c($v0)
/* 90168 8008F568 000C6880 */  sll        $t5, $t4, 2
/* 9016C 8008F56C 25850001 */  addiu      $a1, $t4, 1
/* 90170 8008F570 46062202 */  mul.s      $f8, $f4, $f6
/* 90174 8008F574 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 90178 8008F578 006D7021 */  addu       $t6, $v1, $t5
/* 9017C 8008F57C C5D00000 */  lwc1       $f16, ($t6)
/* 90180 8008F580 C44A0718 */  lwc1       $f10, 0x718($v0)
/* 90184 8008F584 E4520580 */  swc1       $f18, 0x580($v0)
/* 90188 8008F588 000FC080 */  sll        $t8, $t7, 2
/* 9018C 8008F58C 25E50001 */  addiu      $a1, $t7, 1
/* 90190 8008F590 46105482 */  mul.s      $f18, $f10, $f16
/* 90194 8008F594 30A8FFFF */  andi       $t0, $a1, 0xffff
/* 90198 8008F598 0078C821 */  addu       $t9, $v1, $t8
/* 9019C 8008F59C C7260000 */  lwc1       $f6, ($t9)
/* 901A0 8008F5A0 C44408AC */  lwc1       $f4, 0x8ac($v0)
/* 901A4 8008F5A4 E4480714 */  swc1       $f8, 0x714($v0)
/* 901A8 8008F5A8 00084880 */  sll        $t1, $t0, 2
/* 901AC 8008F5AC 25050001 */  addiu      $a1, $t0, 1
/* 901B0 8008F5B0 46062202 */  mul.s      $f8, $f4, $f6
/* 901B4 8008F5B4 30ABFFFF */  andi       $t3, $a1, 0xffff
/* 901B8 8008F5B8 00695021 */  addu       $t2, $v1, $t1
/* 901BC 8008F5BC C5500000 */  lwc1       $f16, ($t2)
/* 901C0 8008F5C0 C44A08B0 */  lwc1       $f10, 0x8b0($v0)
/* 901C4 8008F5C4 E4520718 */  swc1       $f18, 0x718($v0)
/* 901C8 8008F5C8 000B6080 */  sll        $t4, $t3, 2
/* 901CC 8008F5CC 25650001 */  addiu      $a1, $t3, 1
/* 901D0 8008F5D0 46105482 */  mul.s      $f18, $f10, $f16
/* 901D4 8008F5D4 30AEFFFF */  andi       $t6, $a1, 0xffff
/* 901D8 8008F5D8 006C6821 */  addu       $t5, $v1, $t4
/* 901DC 8008F5DC C5A60000 */  lwc1       $f6, ($t5)
/* 901E0 8008F5E0 C4440BDC */  lwc1       $f4, 0xbdc($v0)
/* 901E4 8008F5E4 E44808AC */  swc1       $f8, 0x8ac($v0)
/* 901E8 8008F5E8 000E7880 */  sll        $t7, $t6, 2
/* 901EC 8008F5EC 25C50001 */  addiu      $a1, $t6, 1
/* 901F0 8008F5F0 46062202 */  mul.s      $f8, $f4, $f6
/* 901F4 8008F5F4 30B9FFFF */  andi       $t9, $a1, 0xffff
/* 901F8 8008F5F8 006FC021 */  addu       $t8, $v1, $t7
/* 901FC 8008F5FC C7100000 */  lwc1       $f16, ($t8)
/* 90200 8008F600 C44A0BE0 */  lwc1       $f10, 0xbe0($v0)
/* 90204 8008F604 E45208B0 */  swc1       $f18, 0x8b0($v0)
/* 90208 8008F608 00194080 */  sll        $t0, $t9, 2
/* 9020C 8008F60C 27250001 */  addiu      $a1, $t9, 1
/* 90210 8008F610 46105482 */  mul.s      $f18, $f10, $f16
/* 90214 8008F614 AFA40000 */  sw         $a0, ($sp)
/* 90218 8008F618 30AAFFFF */  andi       $t2, $a1, 0xffff
/* 9021C 8008F61C 00684821 */  addu       $t1, $v1, $t0
/* 90220 8008F620 C5260000 */  lwc1       $f6, ($t1)
/* 90224 8008F624 C444156C */  lwc1       $f4, 0x156c($v0)
/* 90228 8008F628 E4480BDC */  swc1       $f8, 0xbdc($v0)
/* 9022C 8008F62C 000A5880 */  sll        $t3, $t2, 2
/* 90230 8008F630 25450001 */  addiu      $a1, $t2, 1
/* 90234 8008F634 46062202 */  mul.s      $f8, $f4, $f6
/* 90238 8008F638 30ADFFFF */  andi       $t5, $a1, 0xffff
/* 9023C 8008F63C 006B6021 */  addu       $t4, $v1, $t3
/* 90240 8008F640 C5900000 */  lwc1       $f16, ($t4)
/* 90244 8008F644 C44A1570 */  lwc1       $f10, 0x1570($v0)
/* 90248 8008F648 E4520BE0 */  swc1       $f18, 0xbe0($v0)
/* 9024C 8008F64C 000D7080 */  sll        $t6, $t5, 2
/* 90250 8008F650 25A50001 */  addiu      $a1, $t5, 1
/* 90254 8008F654 46105482 */  mul.s      $f18, $f10, $f16
/* 90258 8008F658 30B8FFFF */  andi       $t8, $a1, 0xffff
/* 9025C 8008F65C 006E7821 */  addu       $t7, $v1, $t6
/* 90260 8008F660 C5E60000 */  lwc1       $f6, ($t7)
/* 90264 8008F664 C444189C */  lwc1       $f4, 0x189c($v0)
/* 90268 8008F668 E448156C */  swc1       $f8, 0x156c($v0)
/* 9026C 8008F66C 0018C880 */  sll        $t9, $t8, 2
/* 90270 8008F670 27050001 */  addiu      $a1, $t8, 1
/* 90274 8008F674 46062202 */  mul.s      $f8, $f4, $f6
/* 90278 8008F678 30A9FFFF */  andi       $t1, $a1, 0xffff
/* 9027C 8008F67C 00794021 */  addu       $t0, $v1, $t9
/* 90280 8008F680 C5100000 */  lwc1       $f16, ($t0)
/* 90284 8008F684 C44A18A0 */  lwc1       $f10, 0x18a0($v0)
/* 90288 8008F688 25250001 */  addiu      $a1, $t1, 1
/* 9028C 8008F68C E4521570 */  swc1       $f18, 0x1570($v0)
/* 90290 8008F690 30ACFFFF */  andi       $t4, $a1, 0xffff
/* 90294 8008F694 00095080 */  sll        $t2, $t1, 2
/* 90298 8008F698 46105482 */  mul.s      $f18, $f10, $f16
/* 9029C 8008F69C 006A5821 */  addu       $t3, $v1, $t2
/* 902A0 8008F6A0 000C6880 */  sll        $t5, $t4, 2
/* 902A4 8008F6A4 C5660000 */  lwc1       $f6, ($t3)
/* 902A8 8008F6A8 006D7021 */  addu       $t6, $v1, $t5
/* 902AC 8008F6AC C4441BCC */  lwc1       $f4, 0x1bcc($v0)
/* 902B0 8008F6B0 C5D00000 */  lwc1       $f16, ($t6)
/* 902B4 8008F6B4 E448189C */  swc1       $f8, 0x189c($v0)
/* 902B8 8008F6B8 46062202 */  mul.s      $f8, $f4, $f6
/* 902BC 8008F6BC C44A1BD0 */  lwc1       $f10, 0x1bd0($v0)
/* 902C0 8008F6C0 E45218A0 */  swc1       $f18, 0x18a0($v0)
/* 902C4 8008F6C4 C4440714 */  lwc1       $f4, 0x714($v0)
/* 902C8 8008F6C8 46105482 */  mul.s      $f18, $f10, $f16
/* 902CC 8008F6CC E4481BCC */  swc1       $f8, 0x1bcc($v0)
/* 902D0 8008F6D0 C44608AC */  lwc1       $f6, 0x8ac($v0)
/* 902D4 8008F6D4 C4480BDC */  lwc1       $f8, 0xbdc($v0)
/* 902D8 8008F6D8 E4521BD0 */  swc1       $f18, 0x1bd0($v0)
/* 902DC 8008F6DC C44A0718 */  lwc1       $f10, 0x718($v0)
/* 902E0 8008F6E0 C45008B0 */  lwc1       $f16, 0x8b0($v0)
/* 902E4 8008F6E4 C4520BE0 */  lwc1       $f18, 0xbe0($v0)
/* 902E8 8008F6E8 E4440D74 */  swc1       $f4, 0xd74($v0)
/* 902EC 8008F6EC E4460F0C */  swc1       $f6, 0xf0c($v0)
/* 902F0 8008F6F0 E448123C */  swc1       $f8, 0x123c($v0)
/* 902F4 8008F6F4 E44A0D78 */  swc1       $f10, 0xd78($v0)
/* 902F8 8008F6F8 E4500F10 */  swc1       $f16, 0xf10($v0)
/* 902FC 8008F6FC E4521240 */  swc1       $f18, 0x1240($v0)
/* 90300 8008F700 C444156C */  lwc1       $f4, 0x156c($v0)
/* 90304 8008F704 C446189C */  lwc1       $f6, 0x189c($v0)
/* 90308 8008F708 C4481BCC */  lwc1       $f8, 0x1bcc($v0)
/* 9030C 8008F70C C44A1570 */  lwc1       $f10, 0x1570($v0)
/* 90310 8008F710 C45018A0 */  lwc1       $f16, 0x18a0($v0)
/* 90314 8008F714 C4521BD0 */  lwc1       $f18, 0x1bd0($v0)
/* 90318 8008F718 E4441EFC */  swc1       $f4, 0x1efc($v0)
/* 9031C 8008F71C E446222C */  swc1       $f6, 0x222c($v0)
/* 90320 8008F720 E448255C */  swc1       $f8, 0x255c($v0)
/* 90324 8008F724 E44A1F00 */  swc1       $f10, 0x1f00($v0)
/* 90328 8008F728 E4502230 */  swc1       $f16, 0x2230($v0)
/* 9032C 8008F72C 03E00008 */  jr         $ra
/* 90330 8008F730 E4522560 */   swc1      $f18, 0x2560($v0)

glabel func_8008F734
/* 90334 8008F734 308EFFFF */  andi       $t6, $a0, 0xffff
/* 90338 8008F738 000E7880 */  sll        $t7, $t6, 2
/* 9033C 8008F73C 01EE7823 */  subu       $t7, $t7, $t6
/* 90340 8008F740 000F7880 */  sll        $t7, $t7, 2
/* 90344 8008F744 01EE7821 */  addu       $t7, $t7, $t6
/* 90348 8008F748 000F7880 */  sll        $t7, $t7, 2
/* 9034C 8008F74C 3C03800F */  lui        $v1, %hi(gActors)
/* 90350 8008F750 01EE7823 */  subu       $t7, $t7, $t6
/* 90354 8008F754 2463F510 */  addiu      $v1, $v1, %lo(gActors)
/* 90358 8008F758 000F78C0 */  sll        $t7, $t7, 3
/* 9035C 8008F75C 006FC021 */  addu       $t8, $v1, $t7
/* 90360 8008F760 8F02016C */  lw         $v0, 0x16c($t8)
/* 90364 8008F764 AFA40000 */  sw         $a0, ($sp)
/* 90368 8008F768 30590100 */  andi       $t9, $v0, 0x100
/* 9036C 8008F76C 1320000D */  beqz       $t9, .L8008F7A4
/* 90370 8008F770 01C02025 */   or        $a0, $t6, $zero
/* 90374 8008F774 000E4080 */  sll        $t0, $t6, 2
/* 90378 8008F778 010E4023 */  subu       $t0, $t0, $t6
/* 9037C 8008F77C 00084080 */  sll        $t0, $t0, 2
/* 90380 8008F780 010E4021 */  addu       $t0, $t0, $t6
/* 90384 8008F784 00084080 */  sll        $t0, $t0, 2
/* 90388 8008F788 010E4023 */  subu       $t0, $t0, $t6
/* 9038C 8008F78C 3C014140 */  lui        $at, 0x4140
/* 90390 8008F790 44812000 */  mtc1       $at, $f4
/* 90394 8008F794 000840C0 */  sll        $t0, $t0, 3
/* 90398 8008F798 00684821 */  addu       $t1, $v1, $t0
/* 9039C 8008F79C 03E00008 */  jr         $ra
/* 903A0 8008F7A0 E524112C */   swc1      $f4, 0x112c($t1)
.L8008F7A4:
/* 903A4 8008F7A4 304A0200 */  andi       $t2, $v0, 0x200
/* 903A8 8008F7A8 1140000B */  beqz       $t2, .L8008F7D8
/* 903AC 8008F7AC 3C0140A0 */   lui       $at, 0x40a0
/* 903B0 8008F7B0 00045880 */  sll        $t3, $a0, 2
/* 903B4 8008F7B4 01645823 */  subu       $t3, $t3, $a0
/* 903B8 8008F7B8 000B5880 */  sll        $t3, $t3, 2
/* 903BC 8008F7BC 01645821 */  addu       $t3, $t3, $a0
/* 903C0 8008F7C0 000B5880 */  sll        $t3, $t3, 2
/* 903C4 8008F7C4 01645823 */  subu       $t3, $t3, $a0
/* 903C8 8008F7C8 44813000 */  mtc1       $at, $f6
/* 903CC 8008F7CC 000B58C0 */  sll        $t3, $t3, 3
/* 903D0 8008F7D0 006B6021 */  addu       $t4, $v1, $t3
/* 903D4 8008F7D4 E586112C */  swc1       $f6, 0x112c($t4)
.L8008F7D8:
/* 903D8 8008F7D8 03E00008 */  jr         $ra
/* 903DC 8008F7DC 00000000 */   nop

glabel func_8008F7E0
/* 903E0 8008F7E0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 903E4 8008F7E4 AFB00018 */  sw         $s0, 0x18($sp)
/* 903E8 8008F7E8 3090FFFF */  andi       $s0, $a0, 0xffff
/* 903EC 8008F7EC 00107080 */  sll        $t6, $s0, 2
/* 903F0 8008F7F0 01D07023 */  subu       $t6, $t6, $s0
/* 903F4 8008F7F4 000E7080 */  sll        $t6, $t6, 2
/* 903F8 8008F7F8 01D07021 */  addu       $t6, $t6, $s0
/* 903FC 8008F7FC 000E7080 */  sll        $t6, $t6, 2
/* 90400 8008F800 3C07800F */  lui        $a3, %hi(gActors)
/* 90404 8008F804 01D07023 */  subu       $t6, $t6, $s0
/* 90408 8008F808 24E7F510 */  addiu      $a3, $a3, %lo(gActors)
/* 9040C 8008F80C 000E70C0 */  sll        $t6, $t6, 3
/* 90410 8008F810 00EE3021 */  addu       $a2, $a3, $t6
/* 90414 8008F814 94C200D0 */  lhu        $v0, 0xd0($a2)
/* 90418 8008F818 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9041C 8008F81C 28410101 */  slti       $at, $v0, 0x101
/* 90420 8008F820 1420006A */  bnez       $at, .L8008F9CC
/* 90424 8008F824 AFA40030 */   sw        $a0, 0x30($sp)
/* 90428 8008F828 0010C080 */  sll        $t8, $s0, 2
/* 9042C 8008F82C 0310C023 */  subu       $t8, $t8, $s0
/* 90430 8008F830 0018C080 */  sll        $t8, $t8, 2
/* 90434 8008F834 0310C021 */  addu       $t8, $t8, $s0
/* 90438 8008F838 0018C080 */  sll        $t8, $t8, 2
/* 9043C 8008F83C 0310C023 */  subu       $t8, $t8, $s0
/* 90440 8008F840 340FEFFF */  ori        $t7, $zero, 0xefff
/* 90444 8008F844 0018C0C0 */  sll        $t8, $t8, 3
/* 90448 8008F848 ACCF0090 */  sw         $t7, 0x90($a2)
/* 9044C 8008F84C 00F81821 */  addu       $v1, $a3, $t8
/* 90450 8008F850 8C790318 */  lw         $t9, 0x318($v1)
/* 90454 8008F854 3C01FF7F */  lui        $at, 0xff7f
/* 90458 8008F858 3421FCFF */  ori        $at, $at, 0xfcff
/* 9045C 8008F85C 03214024 */  and        $t0, $t9, $at
/* 90460 8008F860 AC680318 */  sw         $t0, 0x318($v1)
/* 90464 8008F864 4449F800 */  cfc1       $t1, $31
/* 90468 8008F868 240A0001 */  addiu      $t2, $zero, 1
/* 9046C 8008F86C 44CAF800 */  ctc1       $t2, $31
/* 90470 8008F870 C4C40110 */  lwc1       $f4, 0x110($a2)
/* 90474 8008F874 3C014F00 */  lui        $at, 0x4f00
/* 90478 8008F878 460021A4 */  cvt.w.s    $f6, $f4
/* 9047C 8008F87C 3204FFFF */  andi       $a0, $s0, 0xffff
/* 90480 8008F880 444AF800 */  cfc1       $t2, $31
/* 90484 8008F884 00000000 */  nop
/* 90488 8008F888 314A0078 */  andi       $t2, $t2, 0x78
/* 9048C 8008F88C 11400012 */  beqz       $t2, .L8008F8D8
/* 90490 8008F890 00000000 */   nop
/* 90494 8008F894 44813000 */  mtc1       $at, $f6
/* 90498 8008F898 240A0001 */  addiu      $t2, $zero, 1
/* 9049C 8008F89C 46062181 */  sub.s      $f6, $f4, $f6
/* 904A0 8008F8A0 3C018000 */  lui        $at, 0x8000
/* 904A4 8008F8A4 44CAF800 */  ctc1       $t2, $31
/* 904A8 8008F8A8 00000000 */  nop
/* 904AC 8008F8AC 460031A4 */  cvt.w.s    $f6, $f6
/* 904B0 8008F8B0 444AF800 */  cfc1       $t2, $31
/* 904B4 8008F8B4 00000000 */  nop
/* 904B8 8008F8B8 314A0078 */  andi       $t2, $t2, 0x78
/* 904BC 8008F8BC 15400004 */  bnez       $t2, .L8008F8D0
/* 904C0 8008F8C0 00000000 */   nop
/* 904C4 8008F8C4 440A3000 */  mfc1       $t2, $f6
/* 904C8 8008F8C8 10000007 */  b          .L8008F8E8
/* 904CC 8008F8CC 01415025 */   or        $t2, $t2, $at
.L8008F8D0:
/* 904D0 8008F8D0 10000005 */  b          .L8008F8E8
/* 904D4 8008F8D4 240AFFFF */   addiu     $t2, $zero, -1
.L8008F8D8:
/* 904D8 8008F8D8 440A3000 */  mfc1       $t2, $f6
/* 904DC 8008F8DC 00000000 */  nop
/* 904E0 8008F8E0 0540FFFB */  bltz       $t2, .L8008F8D0
/* 904E4 8008F8E4 00000000 */   nop
.L8008F8E8:
/* 904E8 8008F8E8 44C9F800 */  ctc1       $t1, $31
/* 904EC 8008F8EC 314C1000 */  andi       $t4, $t2, 0x1000
/* 904F0 8008F8F0 15800013 */  bnez       $t4, .L8008F940
/* 904F4 8008F8F4 00000000 */   nop
/* 904F8 8008F8F8 AFA30024 */  sw         $v1, 0x24($sp)
/* 904FC 8008F8FC 0C00A1DF */  jal        func_8002877C
/* 90500 8008F900 AFA60028 */   sw        $a2, 0x28($sp)
/* 90504 8008F904 8FA30024 */  lw         $v1, 0x24($sp)
/* 90508 8008F908 8FA60028 */  lw         $a2, 0x28($sp)
/* 9050C 8008F90C 1040000C */  beqz       $v0, .L8008F940
/* 90510 8008F910 304D0001 */   andi      $t5, $v0, 1
/* 90514 8008F914 11A00006 */  beqz       $t5, .L8008F930
/* 90518 8008F918 00000000 */   nop
/* 9051C 8008F91C 8C6E0318 */  lw         $t6, 0x318($v1)
/* 90520 8008F920 00000000 */  nop
/* 90524 8008F924 35CF0100 */  ori        $t7, $t6, 0x100
/* 90528 8008F928 10000005 */  b          .L8008F940
/* 9052C 8008F92C AC6F0318 */   sw        $t7, 0x318($v1)
.L8008F930:
/* 90530 8008F930 8C780318 */  lw         $t8, 0x318($v1)
/* 90534 8008F934 00000000 */  nop
/* 90538 8008F938 37190200 */  ori        $t9, $t8, 0x200
/* 9053C 8008F93C AC790318 */  sw         $t9, 0x318($v1)
.L8008F940:
/* 90540 8008F940 3C01800E */  lui        $at, %hi(D_800E3580)
/* 90544 8008F944 A4203580 */  sh         $zero, %lo(D_800E3580)($at)
/* 90548 8008F948 3204FFFF */  andi       $a0, $s0, 0xffff
/* 9054C 8008F94C 00002825 */  or         $a1, $zero, $zero
/* 90550 8008F950 AFA30024 */  sw         $v1, 0x24($sp)
/* 90554 8008F954 0C00AA88 */  jal        func_8002AA20
/* 90558 8008F958 AFA60028 */   sw        $a2, 0x28($sp)
/* 9055C 8008F95C 8FA60028 */  lw         $a2, 0x28($sp)
/* 90560 8008F960 8FA30024 */  lw         $v1, 0x24($sp)
/* 90564 8008F964 94C200D4 */  lhu        $v0, 0xd4($a2)
/* 90568 8008F968 3204FFFF */  andi       $a0, $s0, 0xffff
/* 9056C 8008F96C 18400003 */  blez       $v0, .L8008F97C
/* 90570 8008F970 3C05800E */   lui       $a1, %hi(D_800E5E48)
/* 90574 8008F974 2448FFFF */  addiu      $t0, $v0, -1
/* 90578 8008F978 A4C800D4 */  sh         $t0, 0xd4($a2)
.L8008F97C:
/* 9057C 8008F97C 24A55E48 */  addiu      $a1, $a1, %lo(D_800E5E48)
/* 90580 8008F980 AFA30024 */  sw         $v1, 0x24($sp)
/* 90584 8008F984 0C02066A */  jal        func_800819A8
/* 90588 8008F988 AFA60028 */   sw        $a2, 0x28($sp)
/* 9058C 8008F98C 8FA60028 */  lw         $a2, 0x28($sp)
/* 90590 8008F990 3C01800F */  lui        $at, %hi(D_800ED348)
/* 90594 8008F994 8CC90168 */  lw         $t1, 0x168($a2)
/* 90598 8008F998 C430D348 */  lwc1       $f16, %lo(D_800ED348)($at)
/* 9059C 8008F99C 44894000 */  mtc1       $t1, $f8
/* 905A0 8008F9A0 8FA30024 */  lw         $v1, 0x24($sp)
/* 905A4 8008F9A4 468042A0 */  cvt.s.w    $f10, $f8
/* 905A8 8008F9A8 00000000 */  nop
/* 905AC 8008F9AC 46105483 */  div.s      $f18, $f10, $f16
/* 905B0 8008F9B0 E47202C4 */  swc1       $f18, 0x2c4($v1)
/* 905B4 8008F9B4 C4C60120 */  lwc1       $f6, 0x120($a2)
/* 905B8 8008F9B8 C46402C4 */  lwc1       $f4, 0x2c4($v1)
/* 905BC 8008F9BC 00000000 */  nop
/* 905C0 8008F9C0 46062202 */  mul.s      $f8, $f4, $f6
/* 905C4 8008F9C4 1000001E */  b          .L8008FA40
/* 905C8 8008F9C8 E46802C4 */   swc1      $f8, 0x2c4($v1)
.L8008F9CC:
/* 905CC 8008F9CC 1040001C */  beqz       $v0, .L8008FA40
/* 905D0 8008F9D0 3C05800E */   lui       $a1, %hi(D_800E5E48)
/* 905D4 8008F9D4 24A55E48 */  addiu      $a1, $a1, %lo(D_800E5E48)
/* 905D8 8008F9D8 3204FFFF */  andi       $a0, $s0, 0xffff
/* 905DC 8008F9DC 0C02066A */  jal        func_800819A8
/* 905E0 8008F9E0 AFA60028 */   sw        $a2, 0x28($sp)
/* 905E4 8008F9E4 8FA60028 */  lw         $a2, 0x28($sp)
/* 905E8 8008F9E8 3C01800F */  lui        $at, %hi(D_800ED34C)
/* 905EC 8008F9EC 8CCB0168 */  lw         $t3, 0x168($a2)
/* 905F0 8008F9F0 C432D34C */  lwc1       $f18, %lo(D_800ED34C)($at)
/* 905F4 8008F9F4 448B5000 */  mtc1       $t3, $f10
/* 905F8 8008F9F8 00105080 */  sll        $t2, $s0, 2
/* 905FC 8008F9FC 46805420 */  cvt.s.w    $f16, $f10
/* 90600 8008FA00 01505023 */  subu       $t2, $t2, $s0
/* 90604 8008FA04 000A5080 */  sll        $t2, $t2, 2
/* 90608 8008FA08 46128103 */  div.s      $f4, $f16, $f18
/* 9060C 8008FA0C 01505021 */  addu       $t2, $t2, $s0
/* 90610 8008FA10 000A5080 */  sll        $t2, $t2, 2
/* 90614 8008FA14 3C07800F */  lui        $a3, %hi(gActors)
/* 90618 8008FA18 01505023 */  subu       $t2, $t2, $s0
/* 9061C 8008FA1C 24E7F510 */  addiu      $a3, $a3, %lo(gActors)
/* 90620 8008FA20 000A50C0 */  sll        $t2, $t2, 3
/* 90624 8008FA24 00EA1821 */  addu       $v1, $a3, $t2
/* 90628 8008FA28 E46402C4 */  swc1       $f4, 0x2c4($v1)
/* 9062C 8008FA2C C46602C4 */  lwc1       $f6, 0x2c4($v1)
/* 90630 8008FA30 C4C80120 */  lwc1       $f8, 0x120($a2)
/* 90634 8008FA34 00000000 */  nop
/* 90638 8008FA38 46083282 */  mul.s      $f10, $f6, $f8
/* 9063C 8008FA3C E46A02C4 */  swc1       $f10, 0x2c4($v1)
.L8008FA40:
/* 90640 8008FA40 8FBF001C */  lw         $ra, 0x1c($sp)
/* 90644 8008FA44 8FB00018 */  lw         $s0, 0x18($sp)
/* 90648 8008FA48 03E00008 */  jr         $ra
/* 9064C 8008FA4C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8008FA50
/* 90650 8008FA50 30AEFFFF */  andi       $t6, $a1, 0xffff
/* 90654 8008FA54 000E7880 */  sll        $t7, $t6, 2
/* 90658 8008FA58 01EE7823 */  subu       $t7, $t7, $t6
/* 9065C 8008FA5C 000F7880 */  sll        $t7, $t7, 2
/* 90660 8008FA60 01EE7821 */  addu       $t7, $t7, $t6
/* 90664 8008FA64 000F7880 */  sll        $t7, $t7, 2
/* 90668 8008FA68 01EE7823 */  subu       $t7, $t7, $t6
/* 9066C 8008FA6C 3C18800F */  lui        $t8, %hi(gActors)
/* 90670 8008FA70 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 90674 8008FA74 000F78C0 */  sll        $t7, $t7, 3
/* 90678 8008FA78 01F81021 */  addu       $v0, $t7, $t8
/* 9067C 8008FA7C 8C430154 */  lw         $v1, 0x154($v0)
/* 90680 8008FA80 AFA40000 */  sw         $a0, ($sp)
/* 90684 8008FA84 0003C823 */  negu       $t9, $v1
/* 90688 8008FA88 AFA50004 */  sw         $a1, 4($sp)
/* 9068C 8008FA8C 01C02825 */  or         $a1, $t6, $zero
/* 90690 8008FA90 07210004 */  bgez       $t9, .L8008FAA4
/* 90694 8008FA94 00194403 */   sra       $t0, $t9, 0x10
/* 90698 8008FA98 3401FFFF */  ori        $at, $zero, 0xffff
/* 9069C 8008FA9C 00390821 */  addu       $at, $at, $t9
/* 906A0 8008FAA0 00014403 */  sra        $t0, $at, 0x10
.L8008FAA4:
/* 906A4 8008FAA4 44882000 */  mtc1       $t0, $f4
/* 906A8 8008FAA8 00002025 */  or         $a0, $zero, $zero
/* 906AC 8008FAAC 468021A0 */  cvt.s.w    $f6, $f4
/* 906B0 8008FAB0 3C050004 */  lui        $a1, 4
/* 906B4 8008FAB4 00003825 */  or         $a3, $zero, $zero
/* 906B8 8008FAB8 E4460138 */  swc1       $f6, 0x138($v0)
/* 906BC 8008FABC 94C90000 */  lhu        $t1, ($a2)
/* 906C0 8008FAC0 00000000 */  nop
/* 906C4 8008FAC4 1120000F */  beqz       $t1, .L8008FB04
.L8008FAC8:
/* 906C8 8008FAC8 0064082A */   slt       $at, $v1, $a0
/* 906CC 8008FACC 10200005 */  beqz       $at, .L8008FAE4
/* 906D0 8008FAD0 00075040 */   sll       $t2, $a3, 1
/* 906D4 8008FAD4 00CA5821 */  addu       $t3, $a2, $t2
/* 906D8 8008FAD8 956C0000 */  lhu        $t4, ($t3)
/* 906DC 8008FADC 03E00008 */  jr         $ra
/* 906E0 8008FAE0 A44C0084 */   sh        $t4, 0x84($v0)
.L8008FAE4:
/* 906E4 8008FAE4 24E70001 */  addiu      $a3, $a3, 1
/* 906E8 8008FAE8 30EDFFFF */  andi       $t5, $a3, 0xffff
/* 906EC 8008FAEC 000D7040 */  sll        $t6, $t5, 1
/* 906F0 8008FAF0 00CE7821 */  addu       $t7, $a2, $t6
/* 906F4 8008FAF4 95F80000 */  lhu        $t8, ($t7)
/* 906F8 8008FAF8 01A03825 */  or         $a3, $t5, $zero
/* 906FC 8008FAFC 1700FFF2 */  bnez       $t8, .L8008FAC8
/* 90700 8008FB00 00852021 */   addu      $a0, $a0, $a1
.L8008FB04:
/* 90704 8008FB04 0007C840 */  sll        $t9, $a3, 1
/* 90708 8008FB08 00D94021 */  addu       $t0, $a2, $t9
/* 9070C 8008FB0C 9509FFFE */  lhu        $t1, -2($t0)
/* 90710 8008FB10 00000000 */  nop
/* 90714 8008FB14 A4490084 */  sh         $t1, 0x84($v0)
/* 90718 8008FB18 03E00008 */  jr         $ra
/* 9071C 8008FB1C 00000000 */   nop

glabel func_8008FB20
/* 90720 8008FB20 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 90724 8008FB24 AFB10028 */  sw         $s1, 0x28($sp)
/* 90728 8008FB28 3091FFFF */  andi       $s1, $a0, 0xffff
/* 9072C 8008FB2C 00117080 */  sll        $t6, $s1, 2
/* 90730 8008FB30 01D17023 */  subu       $t6, $t6, $s1
/* 90734 8008FB34 000E7080 */  sll        $t6, $t6, 2
/* 90738 8008FB38 01D17021 */  addu       $t6, $t6, $s1
/* 9073C 8008FB3C 000E7080 */  sll        $t6, $t6, 2
/* 90740 8008FB40 01D17023 */  subu       $t6, $t6, $s1
/* 90744 8008FB44 3C0F800F */  lui        $t7, %hi(gActors)
/* 90748 8008FB48 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 9074C 8008FB4C 000E70C0 */  sll        $t6, $t6, 3
/* 90750 8008FB50 01CF1821 */  addu       $v1, $t6, $t7
/* 90754 8008FB54 8C780168 */  lw         $t8, 0x168($v1)
/* 90758 8008FB58 3C01800F */  lui        $at, %hi(D_800ED350)
/* 9075C 8008FB5C 44982000 */  mtc1       $t8, $f4
/* 90760 8008FB60 C428D350 */  lwc1       $f8, %lo(D_800ED350)($at)
/* 90764 8008FB64 468021A0 */  cvt.s.w    $f6, $f4
/* 90768 8008FB68 3C014040 */  lui        $at, 0x4040
/* 9076C 8008FB6C 44815000 */  mtc1       $at, $f10
/* 90770 8008FB70 46083003 */  div.s      $f0, $f6, $f8
/* 90774 8008FB74 3C01800F */  lui        $at, %hi(D_800ED358)
/* 90778 8008FB78 C425D358 */  lwc1       $f5, %lo(D_800ED358)($at)
/* 9077C 8008FB7C C424D35C */  lwc1       $f4, -0x2ca4($at)
/* 90780 8008FB80 AFA40048 */  sw         $a0, 0x48($sp)
/* 90784 8008FB84 26240008 */  addiu      $a0, $s1, 8
/* 90788 8008FB88 AFBF002C */  sw         $ra, 0x2c($sp)
/* 9078C 8008FB8C AFB00024 */  sw         $s0, 0x24($sp)
/* 90790 8008FB90 3099FFFF */  andi       $t9, $a0, 0xffff
/* 90794 8008FB94 2408FFFF */  addiu      $t0, $zero, -1
/* 90798 8008FB98 AFA80010 */  sw         $t0, 0x10($sp)
/* 9079C 8008FB9C 03202025 */  or         $a0, $t9, $zero
/* 907A0 8008FBA0 46005402 */  mul.s      $f16, $f10, $f0
/* 907A4 8008FBA4 460004A1 */  cvt.d.s    $f18, $f0
/* 907A8 8008FBA8 AFB90034 */  sw         $t9, 0x34($sp)
/* 907AC 8008FBAC 02208025 */  or         $s0, $s1, $zero
/* 907B0 8008FBB0 46249182 */  mul.d      $f6, $f18, $f4
/* 907B4 8008FBB4 44078000 */  mfc1       $a3, $f16
/* 907B8 8008FBB8 AFA3003C */  sw         $v1, 0x3c($sp)
/* 907BC 8008FBBC 2405182A */  addiu      $a1, $zero, 0x182a
/* 907C0 8008FBC0 24060300 */  addiu      $a2, $zero, 0x300
/* 907C4 8008FBC4 462030A0 */  cvt.s.d    $f2, $f6
/* 907C8 8008FBC8 E7A20014 */  swc1       $f2, 0x14($sp)
/* 907CC 8008FBCC 0C00CB98 */  jal        func_80032E60
/* 907D0 8008FBD0 E7A20018 */   swc1      $f2, 0x18($sp)
/* 907D4 8008FBD4 8FA3003C */  lw         $v1, 0x3c($sp)
/* 907D8 8008FBD8 24060018 */  addiu      $a2, $zero, 0x18
/* 907DC 8008FBDC 8FA40034 */  lw         $a0, 0x34($sp)
/* 907E0 8008FBE0 00002825 */  or         $a1, $zero, $zero
/* 907E4 8008FBE4 A066009C */  sb         $a2, 0x9c($v1)
/* 907E8 8008FBE8 A066009D */  sb         $a2, 0x9d($v1)
/* 907EC 8008FBEC 0C00ABAD */  jal        func_8002AEB4
/* 907F0 8008FBF0 A066009E */   sb        $a2, 0x9e($v1)
/* 907F4 8008FBF4 2604000B */  addiu      $a0, $s0, 0xb
/* 907F8 8008FBF8 3089FFFF */  andi       $t1, $a0, 0xffff
/* 907FC 8008FBFC 01202025 */  or         $a0, $t1, $zero
/* 90800 8008FC00 AFA9003C */  sw         $t1, 0x3c($sp)
/* 90804 8008FC04 0C00ABAD */  jal        func_8002AEB4
/* 90808 8008FC08 00002825 */   or        $a1, $zero, $zero
/* 9080C 8008FC0C 26040013 */  addiu      $a0, $s0, 0x13
/* 90810 8008FC10 308AFFFF */  andi       $t2, $a0, 0xffff
/* 90814 8008FC14 01402025 */  or         $a0, $t2, $zero
/* 90818 8008FC18 0C00ABAD */  jal        func_8002AEB4
/* 9081C 8008FC1C 00002825 */   or        $a1, $zero, $zero
/* 90820 8008FC20 26040015 */  addiu      $a0, $s0, 0x15
/* 90824 8008FC24 308BFFFF */  andi       $t3, $a0, 0xffff
/* 90828 8008FC28 01602025 */  or         $a0, $t3, $zero
/* 9082C 8008FC2C 0C00ABAD */  jal        func_8002AEB4
/* 90830 8008FC30 00002825 */   or        $a1, $zero, $zero
/* 90834 8008FC34 26040017 */  addiu      $a0, $s0, 0x17
/* 90838 8008FC38 308CFFFF */  andi       $t4, $a0, 0xffff
/* 9083C 8008FC3C 01802025 */  or         $a0, $t4, $zero
/* 90840 8008FC40 0C00ABAD */  jal        func_8002AEB4
/* 90844 8008FC44 00002825 */   or        $a1, $zero, $zero
/* 90848 8008FC48 26050003 */  addiu      $a1, $s0, 3
/* 9084C 8008FC4C 30ADFFFF */  andi       $t5, $a1, 0xffff
/* 90850 8008FC50 3C06800F */  lui        $a2, %hi(D_800E9210)
/* 90854 8008FC54 24C69210 */  addiu      $a2, $a2, %lo(D_800E9210)
/* 90858 8008FC58 01A02825 */  or         $a1, $t5, $zero
/* 9085C 8008FC5C 0C023E94 */  jal        func_8008FA50
/* 90860 8008FC60 3224FFFF */   andi      $a0, $s1, 0xffff
/* 90864 8008FC64 26050007 */  addiu      $a1, $s0, 7
/* 90868 8008FC68 30AEFFFF */  andi       $t6, $a1, 0xffff
/* 9086C 8008FC6C 3C06800F */  lui        $a2, %hi(D_800E921C)
/* 90870 8008FC70 24C6921C */  addiu      $a2, $a2, %lo(D_800E921C)
/* 90874 8008FC74 01C02825 */  or         $a1, $t6, $zero
/* 90878 8008FC78 0C023E94 */  jal        func_8008FA50
/* 9087C 8008FC7C 3224FFFF */   andi      $a0, $s1, 0xffff
/* 90880 8008FC80 97A5003E */  lhu        $a1, 0x3e($sp)
/* 90884 8008FC84 3C06800F */  lui        $a2, %hi(D_800E9224)
/* 90888 8008FC88 24C69224 */  addiu      $a2, $a2, %lo(D_800E9224)
/* 9088C 8008FC8C 0C023E94 */  jal        func_8008FA50
/* 90890 8008FC90 3224FFFF */   andi      $a0, $s1, 0xffff
/* 90894 8008FC94 0C0115C7 */  jal        func_8004571C
/* 90898 8008FC98 00000000 */   nop
/* 9089C 8008FC9C 0010C080 */  sll        $t8, $s0, 2
/* 908A0 8008FCA0 0310C023 */  subu       $t8, $t8, $s0
/* 908A4 8008FCA4 0018C080 */  sll        $t8, $t8, 2
/* 908A8 8008FCA8 0310C021 */  addu       $t8, $t8, $s0
/* 908AC 8008FCAC 0018C080 */  sll        $t8, $t8, 2
/* 908B0 8008FCB0 0310C023 */  subu       $t8, $t8, $s0
/* 908B4 8008FCB4 3C19800F */  lui        $t9, %hi(gActors)
/* 908B8 8008FCB8 3C0F8033 */  lui        $t7, %hi(D_80335ED4)
/* 908BC 8008FCBC 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 908C0 8008FCC0 0018C0C0 */  sll        $t8, $t8, 3
/* 908C4 8008FCC4 A5E25ED4 */  sh         $v0, %lo(D_80335ED4)($t7)
/* 908C8 8008FCC8 03191821 */  addu       $v1, $t8, $t9
/* 908CC 8008FCCC 8C68061C */  lw         $t0, 0x61c($v1)
/* 908D0 8008FCD0 8FBF002C */  lw         $ra, 0x2c($sp)
/* 908D4 8008FCD4 00084823 */  negu       $t1, $t0
/* 908D8 8008FCD8 05210004 */  bgez       $t1, .L8008FCEC
/* 908DC 8008FCDC 00095403 */   sra       $t2, $t1, 0x10
/* 908E0 8008FCE0 3401FFFF */  ori        $at, $zero, 0xffff
/* 908E4 8008FCE4 00290821 */  addu       $at, $at, $t1
/* 908E8 8008FCE8 00015403 */  sra        $t2, $at, 0x10
.L8008FCEC:
/* 908EC 8008FCEC 448A4000 */  mtc1       $t2, $f8
/* 908F0 8008FCF0 8FB10028 */  lw         $s1, 0x28($sp)
/* 908F4 8008FCF4 468042A0 */  cvt.s.w    $f10, $f8
/* 908F8 8008FCF8 8FB00024 */  lw         $s0, 0x24($sp)
/* 908FC 8008FCFC 27BD0048 */  addiu      $sp, $sp, 0x48
/* 90900 8008FD00 03E00008 */  jr         $ra
/* 90904 8008FD04 E46A0600 */   swc1      $f10, 0x600($v1)

glabel func_8008FD08
/* 90908 8008FD08 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 9090C 8008FD0C AFB10030 */  sw         $s1, 0x30($sp)
/* 90910 8008FD10 AFA40048 */  sw         $a0, 0x48($sp)
/* 90914 8008FD14 97B1004A */  lhu        $s1, 0x4a($sp)
/* 90918 8008FD18 3C18800F */  lui        $t8, 0x800f
/* 9091C 8008FD1C 00117880 */  sll        $t7, $s1, 2
/* 90920 8008FD20 01F17823 */  subu       $t7, $t7, $s1
/* 90924 8008FD24 000F7880 */  sll        $t7, $t7, 2
/* 90928 8008FD28 01F17821 */  addu       $t7, $t7, $s1
/* 9092C 8008FD2C 000F7880 */  sll        $t7, $t7, 2
/* 90930 8008FD30 01F17823 */  subu       $t7, $t7, $s1
/* 90934 8008FD34 000F78C0 */  sll        $t7, $t7, 3
/* 90938 8008FD38 030FC021 */  addu       $t8, $t8, $t7
/* 9093C 8008FD3C 8F18F678 */  lw         $t8, -0x988($t8)
/* 90940 8008FD40 3C01800F */  lui        $at, %hi(D_800ED360)
/* 90944 8008FD44 44982000 */  mtc1       $t8, $f4
/* 90948 8008FD48 C428D360 */  lwc1       $f8, %lo(D_800ED360)($at)
/* 9094C 8008FD4C 468021A0 */  cvt.s.w    $f6, $f4
/* 90950 8008FD50 E7B50020 */  swc1       $f21, 0x20($sp)
/* 90954 8008FD54 E7B40024 */  swc1       $f20, 0x24($sp)
/* 90958 8008FD58 46083503 */  div.s      $f20, $f6, $f8
/* 9095C 8008FD5C 3C014110 */  lui        $at, 0x4110
/* 90960 8008FD60 44815000 */  mtc1       $at, $f10
/* 90964 8008FD64 AFB0002C */  sw         $s0, 0x2c($sp)
/* 90968 8008FD68 26300003 */  addiu      $s0, $s1, 3
/* 9096C 8008FD6C AFBF0034 */  sw         $ra, 0x34($sp)
/* 90970 8008FD70 3219FFFF */  andi       $t9, $s0, 0xffff
/* 90974 8008FD74 24080001 */  addiu      $t0, $zero, 1
/* 90978 8008FD78 AFA80010 */  sw         $t0, 0x10($sp)
/* 9097C 8008FD7C 03208025 */  or         $s0, $t9, $zero
/* 90980 8008FD80 3324FFFF */  andi       $a0, $t9, 0xffff
/* 90984 8008FD84 24051044 */  addiu      $a1, $zero, 0x1044
/* 90988 8008FD88 46145402 */  mul.s      $f16, $f10, $f20
/* 9098C 8008FD8C E7B40014 */  swc1       $f20, 0x14($sp)
/* 90990 8008FD90 E7B40018 */  swc1       $f20, 0x18($sp)
/* 90994 8008FD94 24060120 */  addiu      $a2, $zero, 0x120
/* 90998 8008FD98 44078000 */  mfc1       $a3, $f16
/* 9099C 8008FD9C 0C00CB98 */  jal        func_80032E60
/* 909A0 8008FDA0 00000000 */   nop
/* 909A4 8008FDA4 3C014100 */  lui        $at, 0x4100
/* 909A8 8008FDA8 44819000 */  mtc1       $at, $f18
/* 909AC 8008FDAC 3204FFFF */  andi       $a0, $s0, 0xffff
/* 909B0 8008FDB0 46149102 */  mul.s      $f4, $f18, $f20
/* 909B4 8008FDB4 24051042 */  addiu      $a1, $zero, 0x1042
/* 909B8 8008FDB8 24060180 */  addiu      $a2, $zero, 0x180
/* 909BC 8008FDBC AFA00010 */  sw         $zero, 0x10($sp)
/* 909C0 8008FDC0 44072000 */  mfc1       $a3, $f4
/* 909C4 8008FDC4 E7B40014 */  swc1       $f20, 0x14($sp)
/* 909C8 8008FDC8 0C00CB98 */  jal        func_80032E60
/* 909CC 8008FDCC E7B40018 */   swc1      $f20, 0x18($sp)
/* 909D0 8008FDD0 3C014150 */  lui        $at, 0x4150
/* 909D4 8008FDD4 44813000 */  mtc1       $at, $f6
/* 909D8 8008FDD8 24090002 */  addiu      $t1, $zero, 2
/* 909DC 8008FDDC 46143202 */  mul.s      $f8, $f6, $f20
/* 909E0 8008FDE0 AFA90010 */  sw         $t1, 0x10($sp)
/* 909E4 8008FDE4 3204FFFF */  andi       $a0, $s0, 0xffff
/* 909E8 8008FDE8 24051048 */  addiu      $a1, $zero, 0x1048
/* 909EC 8008FDEC 44074000 */  mfc1       $a3, $f8
/* 909F0 8008FDF0 24060190 */  addiu      $a2, $zero, 0x190
/* 909F4 8008FDF4 E7B40014 */  swc1       $f20, 0x14($sp)
/* 909F8 8008FDF8 0C00CB98 */  jal        func_80032E60
/* 909FC 8008FDFC E7B40018 */   swc1      $f20, 0x18($sp)
/* 90A00 8008FE00 3C0141A8 */  lui        $at, 0x41a8
/* 90A04 8008FE04 44815000 */  mtc1       $at, $f10
/* 90A08 8008FE08 240A0002 */  addiu      $t2, $zero, 2
/* 90A0C 8008FE0C 46145402 */  mul.s      $f16, $f10, $f20
/* 90A10 8008FE10 AFAA0010 */  sw         $t2, 0x10($sp)
/* 90A14 8008FE14 3204FFFF */  andi       $a0, $s0, 0xffff
/* 90A18 8008FE18 2405104A */  addiu      $a1, $zero, 0x104a
/* 90A1C 8008FE1C 44078000 */  mfc1       $a3, $f16
/* 90A20 8008FE20 240601B8 */  addiu      $a2, $zero, 0x1b8
/* 90A24 8008FE24 E7B40014 */  swc1       $f20, 0x14($sp)
/* 90A28 8008FE28 0C00CB98 */  jal        func_80032E60
/* 90A2C 8008FE2C E7B40018 */   swc1      $f20, 0x18($sp)
/* 90A30 8008FE30 3C01800F */  lui        $at, %hi(D_800ED368)
/* 90A34 8008FE34 C421D368 */  lwc1       $f1, %lo(D_800ED368)($at)
/* 90A38 8008FE38 C420D36C */  lwc1       $f0, -0x2c94($at)
/* 90A3C 8008FE3C 3C01800F */  lui        $at, %hi(D_800ED370)
/* 90A40 8008FE40 C423D370 */  lwc1       $f3, %lo(D_800ED370)($at)
/* 90A44 8008FE44 C422D374 */  lwc1       $f2, -0x2c8c($at)
/* 90A48 8008FE48 00115880 */  sll        $t3, $s1, 2
/* 90A4C 8008FE4C 3C01800F */  lui        $at, %hi(D_800ED378)
/* 90A50 8008FE50 01715823 */  subu       $t3, $t3, $s1
/* 90A54 8008FE54 000B5880 */  sll        $t3, $t3, 2
/* 90A58 8008FE58 C42DD378 */  lwc1       $f13, %lo(D_800ED378)($at)
/* 90A5C 8008FE5C C42CD37C */  lwc1       $f12, -0x2c84($at)
/* 90A60 8008FE60 01715821 */  addu       $t3, $t3, $s1
/* 90A64 8008FE64 3C01800F */  lui        $at, %hi(D_800ED380)
/* 90A68 8008FE68 000B5880 */  sll        $t3, $t3, 2
/* 90A6C 8008FE6C 01715823 */  subu       $t3, $t3, $s1
/* 90A70 8008FE70 3C0C800F */  lui        $t4, %hi(gActors)
/* 90A74 8008FE74 C42FD380 */  lwc1       $f15, %lo(D_800ED380)($at)
/* 90A78 8008FE78 C42ED384 */  lwc1       $f14, -0x2c7c($at)
/* 90A7C 8008FE7C 258CF510 */  addiu      $t4, $t4, %lo(gActors)
/* 90A80 8008FE80 000B58C0 */  sll        $t3, $t3, 3
/* 90A84 8008FE84 016C8021 */  addu       $s0, $t3, $t4
/* 90A88 8008FE88 3C01800F */  lui        $at, %hi(D_800ED388)
/* 90A8C 8008FE8C C612024C */  lwc1       $f18, 0x24c($s0)
/* 90A90 8008FE90 C427D388 */  lwc1       $f7, %lo(D_800ED388)($at)
/* 90A94 8008FE94 C426D38C */  lwc1       $f6, -0x2c74($at)
/* 90A98 8008FE98 46009121 */  cvt.d.s    $f4, $f18
/* 90A9C 8008FE9C 46262202 */  mul.d      $f8, $f4, $f6
/* 90AA0 8008FEA0 C61008AC */  lwc1       $f16, 0x8ac($s0)
/* 90AA4 8008FEA4 960D0D54 */  lhu        $t5, 0xd54($s0)
/* 90AA8 8008FEA8 460084A1 */  cvt.d.s    $f18, $f16
/* 90AAC 8008FEAC 9618121C */  lhu        $t8, 0x121c($s0)
/* 90AB0 8008FEB0 46209102 */  mul.d      $f4, $f18, $f0
/* 90AB4 8008FEB4 462042A0 */  cvt.s.d    $f10, $f8
/* 90AB8 8008FEB8 C6080F0C */  lwc1       $f8, 0xf0c($s0)
/* 90ABC 8008FEBC E60A024C */  swc1       $f10, 0x24c($s0)
/* 90AC0 8008FEC0 96191EDC */  lhu        $t9, 0x1edc($s0)
/* 90AC4 8008FEC4 460042A1 */  cvt.d.s    $f10, $f8
/* 90AC8 8008FEC8 46205402 */  mul.d      $f16, $f10, $f0
/* 90ACC 8008FECC 462021A0 */  cvt.s.d    $f6, $f4
/* 90AD0 8008FED0 C6040714 */  lwc1       $f4, 0x714($s0)
/* 90AD4 8008FED4 E60608AC */  swc1       $f6, 0x8ac($s0)
/* 90AD8 8008FED8 9609220C */  lhu        $t1, 0x220c($s0)
/* 90ADC 8008FEDC 460021A1 */  cvt.d.s    $f6, $f4
/* 90AE0 8008FEE0 46223202 */  mul.d      $f8, $f6, $f2
/* 90AE4 8008FEE4 462084A0 */  cvt.s.d    $f18, $f16
/* 90AE8 8008FEE8 26240008 */  addiu      $a0, $s1, 8
/* 90AEC 8008FEEC E6120F0C */  swc1       $f18, 0xf0c($s0)
/* 90AF0 8008FEF0 C6120D74 */  lwc1       $f18, 0xd74($s0)
/* 90AF4 8008FEF4 462042A0 */  cvt.s.d    $f10, $f8
/* 90AF8 8008FEF8 308BFFFF */  andi       $t3, $a0, 0xffff
/* 90AFC 8008FEFC 46009121 */  cvt.d.s    $f4, $f18
/* 90B00 8008FF00 46222182 */  mul.d      $f6, $f4, $f2
/* 90B04 8008FF04 E60A0714 */  swc1       $f10, 0x714($s0)
/* 90B08 8008FF08 C6100714 */  lwc1       $f16, 0x714($s0)
/* 90B0C 8008FF0C 35AF0010 */  ori        $t7, $t5, 0x10
/* 90B10 8008FF10 E6100718 */  swc1       $f16, 0x718($s0)
/* 90B14 8008FF14 46203220 */  cvt.s.d    $f8, $f6
/* 90B18 8008FF18 C610156C */  lwc1       $f16, 0x156c($s0)
/* 90B1C 8008FF1C E6080D74 */  swc1       $f8, 0xd74($s0)
/* 90B20 8008FF20 460084A1 */  cvt.d.s    $f18, $f16
/* 90B24 8008FF24 462C9102 */  mul.d      $f4, $f18, $f12
/* 90B28 8008FF28 C60A0D74 */  lwc1       $f10, 0xd74($s0)
/* 90B2C 8008FF2C C6081EFC */  lwc1       $f8, 0x1efc($s0)
/* 90B30 8008FF30 E60A0D78 */  swc1       $f10, 0xd78($s0)
/* 90B34 8008FF34 370E0010 */  ori        $t6, $t8, 0x10
/* 90B38 8008FF38 460042A1 */  cvt.d.s    $f10, $f8
/* 90B3C 8008FF3C 462C5402 */  mul.d      $f16, $f10, $f12
/* 90B40 8008FF40 462021A0 */  cvt.s.d    $f6, $f4
/* 90B44 8008FF44 C60418A0 */  lwc1       $f4, 0x18a0($s0)
/* 90B48 8008FF48 E606156C */  swc1       $f6, 0x156c($s0)
/* 90B4C 8008FF4C 37280010 */  ori        $t0, $t9, 0x10
/* 90B50 8008FF50 462084A0 */  cvt.s.d    $f18, $f16
/* 90B54 8008FF54 C6102230 */  lwc1       $f16, 0x2230($s0)
/* 90B58 8008FF58 460021A1 */  cvt.d.s    $f6, $f4
/* 90B5C 8008FF5C 462E3202 */  mul.d      $f8, $f6, $f14
/* 90B60 8008FF60 E6121EFC */  swc1       $f18, 0x1efc($s0)
/* 90B64 8008FF64 460084A1 */  cvt.d.s    $f18, $f16
/* 90B68 8008FF68 352A0010 */  ori        $t2, $t1, 0x10
/* 90B6C 8008FF6C A60F0D54 */  sh         $t7, 0xd54($s0)
/* 90B70 8008FF70 462E9102 */  mul.d      $f4, $f18, $f14
/* 90B74 8008FF74 462042A0 */  cvt.s.d    $f10, $f8
/* 90B78 8008FF78 A60E121C */  sh         $t6, 0x121c($s0)
/* 90B7C 8008FF7C E60A18A0 */  swc1       $f10, 0x18a0($s0)
/* 90B80 8008FF80 A6081EDC */  sh         $t0, 0x1edc($s0)
/* 90B84 8008FF84 462021A0 */  cvt.s.d    $f6, $f4
/* 90B88 8008FF88 A60A220C */  sh         $t2, 0x220c($s0)
/* 90B8C 8008FF8C E6062230 */  swc1       $f6, 0x2230($s0)
/* 90B90 8008FF90 01602025 */  or         $a0, $t3, $zero
/* 90B94 8008FF94 0C00ABAD */  jal        func_8002AEB4
/* 90B98 8008FF98 24050020 */   addiu     $a1, $zero, 0x20
/* 90B9C 8008FF9C 2624000B */  addiu      $a0, $s1, 0xb
/* 90BA0 8008FFA0 308CFFFF */  andi       $t4, $a0, 0xffff
/* 90BA4 8008FFA4 01802025 */  or         $a0, $t4, $zero
/* 90BA8 8008FFA8 AFAC0038 */  sw         $t4, 0x38($sp)
/* 90BAC 8008FFAC 0C00ABAD */  jal        func_8002AEB4
/* 90BB0 8008FFB0 24050020 */   addiu     $a1, $zero, 0x20
/* 90BB4 8008FFB4 26240013 */  addiu      $a0, $s1, 0x13
/* 90BB8 8008FFB8 308DFFFF */  andi       $t5, $a0, 0xffff
/* 90BBC 8008FFBC 01A02025 */  or         $a0, $t5, $zero
/* 90BC0 8008FFC0 0C00ABAD */  jal        func_8002AEB4
/* 90BC4 8008FFC4 24050020 */   addiu     $a1, $zero, 0x20
/* 90BC8 8008FFC8 26240015 */  addiu      $a0, $s1, 0x15
/* 90BCC 8008FFCC 308FFFFF */  andi       $t7, $a0, 0xffff
/* 90BD0 8008FFD0 01E02025 */  or         $a0, $t7, $zero
/* 90BD4 8008FFD4 0C00ABAD */  jal        func_8002AEB4
/* 90BD8 8008FFD8 24050020 */   addiu     $a1, $zero, 0x20
/* 90BDC 8008FFDC 26250007 */  addiu      $a1, $s1, 7
/* 90BE0 8008FFE0 30B8FFFF */  andi       $t8, $a1, 0xffff
/* 90BE4 8008FFE4 97A4004A */  lhu        $a0, 0x4a($sp)
/* 90BE8 8008FFE8 3C06800F */  lui        $a2, %hi(D_800E91E8)
/* 90BEC 8008FFEC 24C691E8 */  addiu      $a2, $a2, %lo(D_800E91E8)
/* 90BF0 8008FFF0 0C023E94 */  jal        func_8008FA50
/* 90BF4 8008FFF4 03002825 */   or        $a1, $t8, $zero
/* 90BF8 8008FFF8 97A4004A */  lhu        $a0, 0x4a($sp)
/* 90BFC 8008FFFC 97A5003A */  lhu        $a1, 0x3a($sp)
/* 90C00 80090000 3C06800F */  lui        $a2, %hi(D_800E91F0)
/* 90C04 80090004 0C023E94 */  jal        func_8008FA50
/* 90C08 80090008 24C691F0 */   addiu     $a2, $a2, %lo(D_800E91F0)
/* 90C0C 8009000C 3C01BF80 */  lui        $at, 0xbf80
/* 90C10 80090010 44810000 */  mtc1       $at, $f0
/* 90C14 80090014 8E0E061C */  lw         $t6, 0x61c($s0)
/* 90C18 80090018 8FBF0034 */  lw         $ra, 0x34($sp)
/* 90C1C 8009001C 000EC823 */  negu       $t9, $t6
/* 90C20 80090020 07210004 */  bgez       $t9, .L80090034
/* 90C24 80090024 00194403 */   sra       $t0, $t9, 0x10
/* 90C28 80090028 3401FFFF */  ori        $at, $zero, 0xffff
/* 90C2C 8009002C 00390821 */  addu       $at, $at, $t9
/* 90C30 80090030 00014403 */  sra        $t0, $at, 0x10
.L80090034:
/* 90C34 80090034 44884000 */  mtc1       $t0, $f8
/* 90C38 80090038 E6000AC8 */  swc1       $f0, 0xac8($s0)
/* 90C3C 8009003C 468042A0 */  cvt.s.w    $f10, $f8
/* 90C40 80090040 E6001128 */  swc1       $f0, 0x1128($s0)
/* 90C44 80090044 E6000468 */  swc1       $f0, 0x468($s0)
/* 90C48 80090048 E60A0600 */  swc1       $f10, 0x600($s0)
/* 90C4C 8009004C 8FB0002C */  lw         $s0, 0x2c($sp)
/* 90C50 80090050 C7B50020 */  lwc1       $f21, 0x20($sp)
/* 90C54 80090054 C7B40024 */  lwc1       $f20, 0x24($sp)
/* 90C58 80090058 8FB10030 */  lw         $s1, 0x30($sp)
/* 90C5C 8009005C 03E00008 */  jr         $ra
/* 90C60 80090060 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_80090064
/* 90C64 80090064 44809000 */  mtc1       $zero, $f18
/* 90C68 80090068 308EFFFF */  andi       $t6, $a0, 0xffff
/* 90C6C 8009006C 3C01800F */  lui        $at, %hi(D_800ED390)
/* 90C70 80090070 C431D390 */  lwc1       $f17, %lo(D_800ED390)($at)
/* 90C74 80090074 C430D394 */  lwc1       $f16, -0x2c6c($at)
/* 90C78 80090078 3C01800F */  lui        $at, %hi(D_800ED398)
/* 90C7C 8009007C C42FD398 */  lwc1       $f15, %lo(D_800ED398)($at)
/* 90C80 80090080 C42ED39C */  lwc1       $f14, -0x2c64($at)
/* 90C84 80090084 000E7880 */  sll        $t7, $t6, 2
/* 90C88 80090088 01EE7823 */  subu       $t7, $t7, $t6
/* 90C8C 8009008C 000F7880 */  sll        $t7, $t7, 2
/* 90C90 80090090 01EE7821 */  addu       $t7, $t7, $t6
/* 90C94 80090094 000F7880 */  sll        $t7, $t7, 2
/* 90C98 80090098 01EE7823 */  subu       $t7, $t7, $t6
/* 90C9C 8009009C 000F78C0 */  sll        $t7, $t7, 3
/* 90CA0 800900A0 3C18800F */  lui        $t8, %hi(gActors)
/* 90CA4 800900A4 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 90CA8 800900A8 01F81021 */  addu       $v0, $t7, $t8
/* 90CAC 800900AC C44C0714 */  lwc1       $f12, 0x714($v0)
/* 90CB0 800900B0 C44A0D74 */  lwc1       $f10, 0xd74($v0)
/* 90CB4 800900B4 3C013FE8 */  lui        $at, 0x3fe8
/* 90CB8 800900B8 44819800 */  mtc1       $at, $f19
/* 90CBC 800900BC 46006321 */  cvt.d.s    $f12, $f12
/* 90CC0 800900C0 462E6302 */  mul.d      $f12, $f12, $f14
/* 90CC4 800900C4 C44808AC */  lwc1       $f8, 0x8ac($v0)
/* 90CC8 800900C8 C4460F0C */  lwc1       $f6, 0xf0c($v0)
/* 90CCC 800900CC 460052A1 */  cvt.d.s    $f10, $f10
/* 90CD0 800900D0 C4440BDC */  lwc1       $f4, 0xbdc($v0)
/* 90CD4 800900D4 462E5382 */  mul.d      $f14, $f10, $f14
/* 90CD8 800900D8 46206320 */  cvt.s.d    $f12, $f12
/* 90CDC 800900DC C44A0BE0 */  lwc1       $f10, 0xbe0($v0)
/* 90CE0 800900E0 46004221 */  cvt.d.s    $f8, $f8
/* 90CE4 800900E4 E44C0714 */  swc1       $f12, 0x714($v0)
/* 90CE8 800900E8 46304202 */  mul.d      $f8, $f8, $f16
/* 90CEC 800900EC 462073A0 */  cvt.s.d    $f14, $f14
/* 90CF0 800900F0 C44C0714 */  lwc1       $f12, 0x714($v0)
/* 90CF4 800900F4 460031A1 */  cvt.d.s    $f6, $f6
/* 90CF8 800900F8 E44E0D74 */  swc1       $f14, 0xd74($v0)
/* 90CFC 800900FC 46303182 */  mul.d      $f6, $f6, $f16
/* 90D00 80090100 46204220 */  cvt.s.d    $f8, $f8
/* 90D04 80090104 C44E0D74 */  lwc1       $f14, 0xd74($v0)
/* 90D08 80090108 E44C0718 */  swc1       $f12, 0x718($v0)
/* 90D0C 8009010C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 90D10 80090110 462031A0 */  cvt.s.d    $f6, $f6
/* 90D14 80090114 C44C123C */  lwc1       $f12, 0x123c($v0)
/* 90D18 80090118 46002121 */  cvt.d.s    $f4, $f4
/* 90D1C 8009011C 46322102 */  mul.d      $f4, $f4, $f18
/* 90D20 80090120 E44E0D78 */  swc1       $f14, 0xd78($v0)
/* 90D24 80090124 C44E1240 */  lwc1       $f14, 0x1240($v0)
/* 90D28 80090128 E44808AC */  swc1       $f8, 0x8ac($v0)
/* 90D2C 8009012C E4460F0C */  swc1       $f6, 0xf0c($v0)
/* 90D30 80090130 46202120 */  cvt.s.d    $f4, $f4
/* 90D34 80090134 AFBF0014 */  sw         $ra, 0x14($sp)
/* 90D38 80090138 AFA40020 */  sw         $a0, 0x20($sp)
/* 90D3C 8009013C 460052A1 */  cvt.d.s    $f10, $f10
/* 90D40 80090140 46305282 */  mul.d      $f10, $f10, $f16
/* 90D44 80090144 46006321 */  cvt.d.s    $f12, $f12
/* 90D48 80090148 E4440BDC */  swc1       $f4, 0xbdc($v0)
/* 90D4C 8009014C C44418A0 */  lwc1       $f4, 0x18a0($v0)
/* 90D50 80090150 C4462230 */  lwc1       $f6, 0x2230($v0)
/* 90D54 80090154 46326482 */  mul.d      $f18, $f12, $f18
/* 90D58 80090158 462052A0 */  cvt.s.d    $f10, $f10
/* 90D5C 8009015C 3C01800F */  lui        $at, 0x800f
/* 90D60 80090160 460073A1 */  cvt.d.s    $f14, $f14
/* 90D64 80090164 E44A0BE0 */  swc1       $f10, 0xbe0($v0)
/* 90D68 80090168 46307402 */  mul.d      $f16, $f14, $f16
/* 90D6C 8009016C 462094A0 */  cvt.s.d    $f18, $f18
/* 90D70 80090170 01C02025 */  or         $a0, $t6, $zero
/* 90D74 80090174 E452123C */  swc1       $f18, 0x123c($v0)
/* 90D78 80090178 25C50007 */  addiu      $a1, $t6, 7
/* 90D7C 8009017C 46208420 */  cvt.s.d    $f16, $f16
/* 90D80 80090180 30B9FFFF */  andi       $t9, $a1, 0xffff
/* 90D84 80090184 E4501240 */  swc1       $f16, 0x1240($v0)
/* 90D88 80090188 C431D3A0 */  lwc1       $f17, -0x2c60($at)
/* 90D8C 8009018C C430D3A4 */  lwc1       $f16, -0x2c5c($at)
/* 90D90 80090190 46002121 */  cvt.d.s    $f4, $f4
/* 90D94 80090194 46302102 */  mul.d      $f4, $f4, $f16
/* 90D98 80090198 460031A1 */  cvt.d.s    $f6, $f6
/* 90D9C 8009019C 3C06800F */  lui        $a2, %hi(D_800E91F8)
/* 90DA0 800901A0 03202825 */  or         $a1, $t9, $zero
/* 90DA4 800901A4 24C691F8 */  addiu      $a2, $a2, %lo(D_800E91F8)
/* 90DA8 800901A8 46303402 */  mul.d      $f16, $f6, $f16
/* 90DAC 800901AC 46202120 */  cvt.s.d    $f4, $f4
/* 90DB0 800901B0 AFA20018 */  sw         $v0, 0x18($sp)
/* 90DB4 800901B4 E44418A0 */  swc1       $f4, 0x18a0($v0)
/* 90DB8 800901B8 AFAE001C */  sw         $t6, 0x1c($sp)
/* 90DBC 800901BC 46208420 */  cvt.s.d    $f16, $f16
/* 90DC0 800901C0 A7AE0022 */  sh         $t6, 0x22($sp)
/* 90DC4 800901C4 0C023E94 */  jal        func_8008FA50
/* 90DC8 800901C8 E4502230 */   swc1      $f16, 0x2230($v0)
/* 90DCC 800901CC 8FA3001C */  lw         $v1, 0x1c($sp)
/* 90DD0 800901D0 97A40022 */  lhu        $a0, 0x22($sp)
/* 90DD4 800901D4 2465000B */  addiu      $a1, $v1, 0xb
/* 90DD8 800901D8 30A8FFFF */  andi       $t0, $a1, 0xffff
/* 90DDC 800901DC 3C06800F */  lui        $a2, %hi(D_800E9204)
/* 90DE0 800901E0 24C69204 */  addiu      $a2, $a2, %lo(D_800E9204)
/* 90DE4 800901E4 0C023E94 */  jal        func_8008FA50
/* 90DE8 800901E8 01002825 */   or        $a1, $t0, $zero
/* 90DEC 800901EC 97A90022 */  lhu        $t1, 0x22($sp)
/* 90DF0 800901F0 3C0B800F */  lui        $t3, 0x800f
/* 90DF4 800901F4 00095080 */  sll        $t2, $t1, 2
/* 90DF8 800901F8 01495023 */  subu       $t2, $t2, $t1
/* 90DFC 800901FC 000A5080 */  sll        $t2, $t2, 2
/* 90E00 80090200 01495021 */  addu       $t2, $t2, $t1
/* 90E04 80090204 000A5080 */  sll        $t2, $t2, 2
/* 90E08 80090208 01495023 */  subu       $t2, $t2, $t1
/* 90E0C 8009020C 000A50C0 */  sll        $t2, $t2, 3
/* 90E10 80090210 016A5821 */  addu       $t3, $t3, $t2
/* 90E14 80090214 8D6BF69C */  lw         $t3, -0x964($t3)
/* 90E18 80090218 8FA20018 */  lw         $v0, 0x18($sp)
/* 90E1C 8009021C 15600013 */  bnez       $t3, .L8009026C
/* 90E20 80090220 3C01C000 */   lui       $at, 0xc000
/* 90E24 80090224 3C03800E */  lui        $v1, %hi(D_800DB87C)
/* 90E28 80090228 2463B87C */  addiu      $v1, $v1, %lo(D_800DB87C)
/* 90E2C 8009022C 944C06F4 */  lhu        $t4, 0x6f4($v0)
/* 90E30 80090230 944E0BBC */  lhu        $t6, 0xbbc($v0)
/* 90E34 80090234 94580D54 */  lhu        $t8, 0xd54($v0)
/* 90E38 80090238 9448121C */  lhu        $t0, 0x121c($v0)
/* 90E3C 8009023C 358D0200 */  ori        $t5, $t4, 0x200
/* 90E40 80090240 35CF0200 */  ori        $t7, $t6, 0x200
/* 90E44 80090244 37190200 */  ori        $t9, $t8, 0x200
/* 90E48 80090248 35090200 */  ori        $t1, $t0, 0x200
/* 90E4C 8009024C A44D06F4 */  sh         $t5, 0x6f4($v0)
/* 90E50 80090250 A44F0BBC */  sh         $t7, 0xbbc($v0)
/* 90E54 80090254 A4590D54 */  sh         $t9, 0xd54($v0)
/* 90E58 80090258 A449121C */  sh         $t1, 0x121c($v0)
/* 90E5C 8009025C AC4307EC */  sw         $v1, 0x7ec($v0)
/* 90E60 80090260 AC430CB4 */  sw         $v1, 0xcb4($v0)
/* 90E64 80090264 AC430E4C */  sw         $v1, 0xe4c($v0)
/* 90E68 80090268 AC431314 */  sw         $v1, 0x1314($v0)
.L8009026C:
/* 90E6C 8009026C 44810000 */  mtc1       $at, $f0
/* 90E70 80090270 8C4A061C */  lw         $t2, 0x61c($v0)
/* 90E74 80090274 8FBF0014 */  lw         $ra, 0x14($sp)
/* 90E78 80090278 000A5823 */  negu       $t3, $t2
/* 90E7C 8009027C 05610004 */  bgez       $t3, .L80090290
/* 90E80 80090280 000B6403 */   sra       $t4, $t3, 0x10
/* 90E84 80090284 3401FFFF */  ori        $at, $zero, 0xffff
/* 90E88 80090288 002B0821 */  addu       $at, $at, $t3
/* 90E8C 8009028C 00016403 */  sra        $t4, $at, 0x10
.L80090290:
/* 90E90 80090290 448C2000 */  mtc1       $t4, $f4
/* 90E94 80090294 27BD0020 */  addiu      $sp, $sp, 0x20
/* 90E98 80090298 468021A0 */  cvt.s.w    $f6, $f4
/* 90E9C 8009029C E4400468 */  swc1       $f0, 0x468($v0)
/* 90EA0 800902A0 E4400AC8 */  swc1       $f0, 0xac8($v0)
/* 90EA4 800902A4 E4460600 */  swc1       $f6, 0x600($v0)
/* 90EA8 800902A8 03E00008 */  jr         $ra
/* 90EAC 800902AC E4401128 */   swc1      $f0, 0x1128($v0)

glabel func_800902B0
/* 90EB0 800902B0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 90EB4 800902B4 AFA40038 */  sw         $a0, 0x38($sp)
/* 90EB8 800902B8 97A3003A */  lhu        $v1, 0x3a($sp)
/* 90EBC 800902BC 3C18800F */  lui        $t8, 0x800f
/* 90EC0 800902C0 00037880 */  sll        $t7, $v1, 2
/* 90EC4 800902C4 01E37823 */  subu       $t7, $t7, $v1
/* 90EC8 800902C8 000F7880 */  sll        $t7, $t7, 2
/* 90ECC 800902CC 01E37821 */  addu       $t7, $t7, $v1
/* 90ED0 800902D0 000F7880 */  sll        $t7, $t7, 2
/* 90ED4 800902D4 01E37823 */  subu       $t7, $t7, $v1
/* 90ED8 800902D8 000F78C0 */  sll        $t7, $t7, 3
/* 90EDC 800902DC 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 90EE0 800902E0 01F81021 */  addu       $v0, $t7, $t8
/* 90EE4 800902E4 8C590168 */  lw         $t9, 0x168($v0)
/* 90EE8 800902E8 3C01800F */  lui        $at, %hi(D_800ED3A8)
/* 90EEC 800902EC 44992000 */  mtc1       $t9, $f4
/* 90EF0 800902F0 C428D3A8 */  lwc1       $f8, %lo(D_800ED3A8)($at)
/* 90EF4 800902F4 468021A0 */  cvt.s.w    $f6, $f4
/* 90EF8 800902F8 3C014120 */  lui        $at, 0x4120
/* 90EFC 800902FC 44815000 */  mtc1       $at, $f10
/* 90F00 80090300 46083003 */  div.s      $f0, $f6, $f8
/* 90F04 80090304 24640003 */  addiu      $a0, $v1, 3
/* 90F08 80090308 AFBF0024 */  sw         $ra, 0x24($sp)
/* 90F0C 8009030C 3088FFFF */  andi       $t0, $a0, 0xffff
/* 90F10 80090310 24090001 */  addiu      $t1, $zero, 1
/* 90F14 80090314 AFA90010 */  sw         $t1, 0x10($sp)
/* 90F18 80090318 01002025 */  or         $a0, $t0, $zero
/* 90F1C 8009031C AFA20030 */  sw         $v0, 0x30($sp)
/* 90F20 80090320 24050254 */  addiu      $a1, $zero, 0x254
/* 90F24 80090324 24060118 */  addiu      $a2, $zero, 0x118
/* 90F28 80090328 AFA3002C */  sw         $v1, 0x2c($sp)
/* 90F2C 8009032C 46005402 */  mul.s      $f16, $f10, $f0
/* 90F30 80090330 E7A00014 */  swc1       $f0, 0x14($sp)
/* 90F34 80090334 E7A00018 */  swc1       $f0, 0x18($sp)
/* 90F38 80090338 44078000 */  mfc1       $a3, $f16
/* 90F3C 8009033C 0C00CB98 */  jal        func_80032E60
/* 90F40 80090340 00000000 */   nop
/* 90F44 80090344 8FA3002C */  lw         $v1, 0x2c($sp)
/* 90F48 80090348 44809000 */  mtc1       $zero, $f18
/* 90F4C 8009034C 3C01800F */  lui        $at, %hi(D_800ED3B0)
/* 90F50 80090350 C431D3B0 */  lwc1       $f17, %lo(D_800ED3B0)($at)
/* 90F54 80090354 C430D3B4 */  lwc1       $f16, -0x2c4c($at)
/* 90F58 80090358 00035080 */  sll        $t2, $v1, 2
/* 90F5C 8009035C 01435023 */  subu       $t2, $t2, $v1
/* 90F60 80090360 3C01800F */  lui        $at, %hi(D_800ED3B8)
/* 90F64 80090364 C42FD3B8 */  lwc1       $f15, %lo(D_800ED3B8)($at)
/* 90F68 80090368 C42ED3BC */  lwc1       $f14, -0x2c44($at)
/* 90F6C 8009036C 000A5080 */  sll        $t2, $t2, 2
/* 90F70 80090370 01435021 */  addu       $t2, $t2, $v1
/* 90F74 80090374 000A5080 */  sll        $t2, $t2, 2
/* 90F78 80090378 01435023 */  subu       $t2, $t2, $v1
/* 90F7C 8009037C 000A50C0 */  sll        $t2, $t2, 3
/* 90F80 80090380 3C0B800F */  lui        $t3, %hi(gActors)
/* 90F84 80090384 256BF510 */  addiu      $t3, $t3, %lo(gActors)
/* 90F88 80090388 014B1021 */  addu       $v0, $t2, $t3
/* 90F8C 8009038C C44C0714 */  lwc1       $f12, 0x714($v0)
/* 90F90 80090390 C44A0D74 */  lwc1       $f10, 0xd74($v0)
/* 90F94 80090394 3C013FE8 */  lui        $at, 0x3fe8
/* 90F98 80090398 44819800 */  mtc1       $at, $f19
/* 90F9C 8009039C 46006321 */  cvt.d.s    $f12, $f12
/* 90FA0 800903A0 46306302 */  mul.d      $f12, $f12, $f16
/* 90FA4 800903A4 C44808AC */  lwc1       $f8, 0x8ac($v0)
/* 90FA8 800903A8 C4460F0C */  lwc1       $f6, 0xf0c($v0)
/* 90FAC 800903AC 460052A1 */  cvt.d.s    $f10, $f10
/* 90FB0 800903B0 C4440BDC */  lwc1       $f4, 0xbdc($v0)
/* 90FB4 800903B4 46305282 */  mul.d      $f10, $f10, $f16
/* 90FB8 800903B8 46206320 */  cvt.s.d    $f12, $f12
/* 90FBC 800903BC C4420BE0 */  lwc1       $f2, 0xbe0($v0)
/* 90FC0 800903C0 46004221 */  cvt.d.s    $f8, $f8
/* 90FC4 800903C4 E44C0714 */  swc1       $f12, 0x714($v0)
/* 90FC8 800903C8 462E4202 */  mul.d      $f8, $f8, $f14
/* 90FCC 800903CC 462052A0 */  cvt.s.d    $f10, $f10
/* 90FD0 800903D0 C44C0714 */  lwc1       $f12, 0x714($v0)
/* 90FD4 800903D4 460031A1 */  cvt.d.s    $f6, $f6
/* 90FD8 800903D8 E44A0D74 */  swc1       $f10, 0xd74($v0)
/* 90FDC 800903DC 462E3382 */  mul.d      $f14, $f6, $f14
/* 90FE0 800903E0 46204220 */  cvt.s.d    $f8, $f8
/* 90FE4 800903E4 C4460D74 */  lwc1       $f6, 0xd74($v0)
/* 90FE8 800903E8 E44C0718 */  swc1       $f12, 0x718($v0)
/* 90FEC 800903EC C44C123C */  lwc1       $f12, 0x123c($v0)
/* 90FF0 800903F0 462073A0 */  cvt.s.d    $f14, $f14
/* 90FF4 800903F4 E4460D78 */  swc1       $f6, 0xd78($v0)
/* 90FF8 800903F8 46002121 */  cvt.d.s    $f4, $f4
/* 90FFC 800903FC 46322102 */  mul.d      $f4, $f4, $f18
/* 91000 80090400 460010A1 */  cvt.d.s    $f2, $f2
/* 91004 80090404 C4461240 */  lwc1       $f6, 0x1240($v0)
/* 91008 80090408 E44808AC */  swc1       $f8, 0x8ac($v0)
/* 9100C 8009040C E44E0F0C */  swc1       $f14, 0xf0c($v0)
/* 91010 80090410 46301082 */  mul.d      $f2, $f2, $f16
/* 91014 80090414 46202120 */  cvt.s.d    $f4, $f4
/* 91018 80090418 C44E18A0 */  lwc1       $f14, 0x18a0($v0)
/* 9101C 8009041C 46006321 */  cvt.d.s    $f12, $f12
/* 91020 80090420 E4440BDC */  swc1       $f4, 0xbdc($v0)
/* 91024 80090424 46326482 */  mul.d      $f18, $f12, $f18
/* 91028 80090428 462010A0 */  cvt.s.d    $f2, $f2
/* 9102C 8009042C C44C2230 */  lwc1       $f12, 0x2230($v0)
/* 91030 80090430 460031A1 */  cvt.d.s    $f6, $f6
/* 91034 80090434 E4420BE0 */  swc1       $f2, 0xbe0($v0)
/* 91038 80090438 46303402 */  mul.d      $f16, $f6, $f16
/* 9103C 8009043C 462094A0 */  cvt.s.d    $f18, $f18
/* 91040 80090440 3C01800F */  lui        $at, 0x800f
/* 91044 80090444 E452123C */  swc1       $f18, 0x123c($v0)
/* 91048 80090448 24650007 */  addiu      $a1, $v1, 7
/* 9104C 8009044C 46208420 */  cvt.s.d    $f16, $f16
/* 91050 80090450 97A4003A */  lhu        $a0, 0x3a($sp)
/* 91054 80090454 E4501240 */  swc1       $f16, 0x1240($v0)
/* 91058 80090458 C431D3C0 */  lwc1       $f17, -0x2c40($at)
/* 9105C 8009045C C430D3C4 */  lwc1       $f16, -0x2c3c($at)
/* 91060 80090460 460073A1 */  cvt.d.s    $f14, $f14
/* 91064 80090464 46307382 */  mul.d      $f14, $f14, $f16
/* 91068 80090468 46006321 */  cvt.d.s    $f12, $f12
/* 9106C 8009046C 30ACFFFF */  andi       $t4, $a1, 0xffff
/* 91070 80090470 3C06800F */  lui        $a2, %hi(D_800E91F8)
/* 91074 80090474 01802825 */  or         $a1, $t4, $zero
/* 91078 80090478 46306402 */  mul.d      $f16, $f12, $f16
/* 9107C 8009047C 462073A0 */  cvt.s.d    $f14, $f14
/* 91080 80090480 24C691F8 */  addiu      $a2, $a2, %lo(D_800E91F8)
/* 91084 80090484 E44E18A0 */  swc1       $f14, 0x18a0($v0)
/* 91088 80090488 AFA20028 */  sw         $v0, 0x28($sp)
/* 9108C 8009048C 46208420 */  cvt.s.d    $f16, $f16
/* 91090 80090490 AFA3002C */  sw         $v1, 0x2c($sp)
/* 91094 80090494 0C023E94 */  jal        func_8008FA50
/* 91098 80090498 E4502230 */   swc1      $f16, 0x2230($v0)
/* 9109C 8009049C 8FA3002C */  lw         $v1, 0x2c($sp)
/* 910A0 800904A0 97A4003A */  lhu        $a0, 0x3a($sp)
/* 910A4 800904A4 2465000B */  addiu      $a1, $v1, 0xb
/* 910A8 800904A8 30ADFFFF */  andi       $t5, $a1, 0xffff
/* 910AC 800904AC 3C06800F */  lui        $a2, %hi(D_800E9204)
/* 910B0 800904B0 24C69204 */  addiu      $a2, $a2, %lo(D_800E9204)
/* 910B4 800904B4 0C023E94 */  jal        func_8008FA50
/* 910B8 800904B8 01A02825 */   or        $a1, $t5, $zero
/* 910BC 800904BC 8FAF0030 */  lw         $t7, 0x30($sp)
/* 910C0 800904C0 8FA20028 */  lw         $v0, 0x28($sp)
/* 910C4 800904C4 8DF8018C */  lw         $t8, 0x18c($t7)
/* 910C8 800904C8 3C03800E */  lui        $v1, %hi(D_800DB67C)
/* 910CC 800904CC 17000012 */  bnez       $t8, .L80090518
/* 910D0 800904D0 3C01C000 */   lui       $at, 0xc000
/* 910D4 800904D4 2463B67C */  addiu      $v1, $v1, %lo(D_800DB67C)
/* 910D8 800904D8 945906F4 */  lhu        $t9, 0x6f4($v0)
/* 910DC 800904DC 94480BBC */  lhu        $t0, 0xbbc($v0)
/* 910E0 800904E0 944A0D54 */  lhu        $t2, 0xd54($v0)
/* 910E4 800904E4 944C121C */  lhu        $t4, 0x121c($v0)
/* 910E8 800904E8 372E0200 */  ori        $t6, $t9, 0x200
/* 910EC 800904EC 35090200 */  ori        $t1, $t0, 0x200
/* 910F0 800904F0 354B0200 */  ori        $t3, $t2, 0x200
/* 910F4 800904F4 358D0200 */  ori        $t5, $t4, 0x200
/* 910F8 800904F8 A44E06F4 */  sh         $t6, 0x6f4($v0)
/* 910FC 800904FC A4490BBC */  sh         $t1, 0xbbc($v0)
/* 91100 80090500 A44B0D54 */  sh         $t3, 0xd54($v0)
/* 91104 80090504 A44D121C */  sh         $t5, 0x121c($v0)
/* 91108 80090508 AC4307EC */  sw         $v1, 0x7ec($v0)
/* 9110C 8009050C AC430CB4 */  sw         $v1, 0xcb4($v0)
/* 91110 80090510 AC430E4C */  sw         $v1, 0xe4c($v0)
/* 91114 80090514 AC431314 */  sw         $v1, 0x1314($v0)
.L80090518:
/* 91118 80090518 44810000 */  mtc1       $at, $f0
/* 9111C 8009051C 8C4F061C */  lw         $t7, 0x61c($v0)
/* 91120 80090520 8FBF0024 */  lw         $ra, 0x24($sp)
/* 91124 80090524 000FC023 */  negu       $t8, $t7
/* 91128 80090528 07010004 */  bgez       $t8, .L8009053C
/* 9112C 8009052C 0018CC03 */   sra       $t9, $t8, 0x10
/* 91130 80090530 3401FFFF */  ori        $at, $zero, 0xffff
/* 91134 80090534 00380821 */  addu       $at, $at, $t8
/* 91138 80090538 0001CC03 */  sra        $t9, $at, 0x10
.L8009053C:
/* 9113C 8009053C 44999000 */  mtc1       $t9, $f18
/* 91140 80090540 27BD0038 */  addiu      $sp, $sp, 0x38
/* 91144 80090544 46809120 */  cvt.s.w    $f4, $f18
/* 91148 80090548 E4400AC8 */  swc1       $f0, 0xac8($v0)
/* 9114C 8009054C E4401128 */  swc1       $f0, 0x1128($v0)
/* 91150 80090550 03E00008 */  jr         $ra
/* 91154 80090554 E4440600 */   swc1      $f4, 0x600($v0)

glabel func_80090558
/* 91158 80090558 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9115C 8009055C AFB00014 */  sw         $s0, 0x14($sp)
/* 91160 80090560 3090FFFF */  andi       $s0, $a0, 0xffff
/* 91164 80090564 00107080 */  sll        $t6, $s0, 2
/* 91168 80090568 01D07023 */  subu       $t6, $t6, $s0
/* 9116C 8009056C 000E7080 */  sll        $t6, $t6, 2
/* 91170 80090570 01D07021 */  addu       $t6, $t6, $s0
/* 91174 80090574 000E7080 */  sll        $t6, $t6, 2
/* 91178 80090578 01D07023 */  subu       $t6, $t6, $s0
/* 9117C 8009057C 3C0F800F */  lui        $t7, %hi(gActors)
/* 91180 80090580 AFB10018 */  sw         $s1, 0x18($sp)
/* 91184 80090584 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 91188 80090588 000E70C0 */  sll        $t6, $t6, 3
/* 9118C 8009058C 01CF8821 */  addu       $s1, $t6, $t7
/* 91190 80090590 96380270 */  lhu        $t8, 0x270($s1)
/* 91194 80090594 AFBF001C */  sw         $ra, 0x1c($sp)
/* 91198 80090598 2F010006 */  sltiu      $at, $t8, 6
/* 9119C 8009059C AFA40028 */  sw         $a0, 0x28($sp)
/* 911A0 800905A0 10200036 */  beqz       $at, .L8009067C
/* 911A4 800905A4 02001025 */   or        $v0, $s0, $zero
/* 911A8 800905A8 0018C080 */  sll        $t8, $t8, 2
/* 911AC 800905AC 3C01800F */  lui        $at, %hi(D_800ED3C8)
/* 911B0 800905B0 00380821 */  addu       $at, $at, $t8
/* 911B4 800905B4 8C38D3C8 */  lw         $t8, %lo(D_800ED3C8)($at)
/* 911B8 800905B8 00000000 */  nop
/* 911BC 800905BC 03000008 */  jr         $t8
/* 911C0 800905C0 00000000 */   nop
/* 911C4 800905C4 3204FFFF */  andi       $a0, $s0, 0xffff
/* 911C8 800905C8 0C023DCD */  jal        func_8008F734
/* 911CC 800905CC AFA20020 */   sw        $v0, 0x20($sp)
/* 911D0 800905D0 8FA20020 */  lw         $v0, 0x20($sp)
/* 911D4 800905D4 3C06800F */  lui        $a2, %hi(D_800E91F8)
/* 911D8 800905D8 24450007 */  addiu      $a1, $v0, 7
/* 911DC 800905DC 30B9FFFF */  andi       $t9, $a1, 0xffff
/* 911E0 800905E0 03202825 */  or         $a1, $t9, $zero
/* 911E4 800905E4 24C691F8 */  addiu      $a2, $a2, %lo(D_800E91F8)
/* 911E8 800905E8 0C023E94 */  jal        func_8008FA50
/* 911EC 800905EC 3204FFFF */   andi      $a0, $s0, 0xffff
/* 911F0 800905F0 8FA20020 */  lw         $v0, 0x20($sp)
/* 911F4 800905F4 3C06800F */  lui        $a2, %hi(D_800E9204)
/* 911F8 800905F8 2445000B */  addiu      $a1, $v0, 0xb
/* 911FC 800905FC 30A8FFFF */  andi       $t0, $a1, 0xffff
/* 91200 80090600 01002825 */  or         $a1, $t0, $zero
/* 91204 80090604 24C69204 */  addiu      $a2, $a2, %lo(D_800E9204)
/* 91208 80090608 0C023E94 */  jal        func_8008FA50
/* 9120C 8009060C 3204FFFF */   andi      $a0, $s0, 0xffff
/* 91210 80090610 8E29061C */  lw         $t1, 0x61c($s1)
/* 91214 80090614 00000000 */  nop
/* 91218 80090618 00095023 */  negu       $t2, $t1
/* 9121C 8009061C 05410004 */  bgez       $t2, .L80090630
/* 91220 80090620 000A5C03 */   sra       $t3, $t2, 0x10
/* 91224 80090624 3401FFFF */  ori        $at, $zero, 0xffff
/* 91228 80090628 002A0821 */  addu       $at, $at, $t2
/* 9122C 8009062C 00015C03 */  sra        $t3, $at, 0x10
.L80090630:
/* 91230 80090630 448B2000 */  mtc1       $t3, $f4
/* 91234 80090634 00000000 */  nop
/* 91238 80090638 468021A0 */  cvt.s.w    $f6, $f4
/* 9123C 8009063C 1000000F */  b          .L8009067C
/* 91240 80090640 E6260600 */   swc1      $f6, 0x600($s1)
/* 91244 80090644 0C023EC8 */  jal        func_8008FB20
/* 91248 80090648 3204FFFF */   andi      $a0, $s0, 0xffff
/* 9124C 8009064C 1000000C */  b          .L80090680
/* 91250 80090650 00106080 */   sll       $t4, $s0, 2
/* 91254 80090654 0C023F42 */  jal        func_8008FD08
/* 91258 80090658 3204FFFF */   andi      $a0, $s0, 0xffff
/* 9125C 8009065C 10000008 */  b          .L80090680
/* 91260 80090660 00106080 */   sll       $t4, $s0, 2
/* 91264 80090664 0C024019 */  jal        func_80090064
/* 91268 80090668 3204FFFF */   andi      $a0, $s0, 0xffff
/* 9126C 8009066C 10000004 */  b          .L80090680
/* 91270 80090670 00106080 */   sll       $t4, $s0, 2
/* 91274 80090674 0C0240AC */  jal        func_800902B0
/* 91278 80090678 3204FFFF */   andi      $a0, $s0, 0xffff
.L8009067C:
/* 9127C 8009067C 00106080 */  sll        $t4, $s0, 2
.L80090680:
/* 91280 80090680 01906023 */  subu       $t4, $t4, $s0
/* 91284 80090684 000C6080 */  sll        $t4, $t4, 2
/* 91288 80090688 01906021 */  addu       $t4, $t4, $s0
/* 9128C 8009068C 000C6080 */  sll        $t4, $t4, 2
/* 91290 80090690 01906023 */  subu       $t4, $t4, $s0
/* 91294 80090694 3C0D800F */  lui        $t5, %hi(gActors)
/* 91298 80090698 25ADF510 */  addiu      $t5, $t5, %lo(gActors)
/* 9129C 8009069C 000C60C0 */  sll        $t4, $t4, 3
/* 912A0 800906A0 018D1021 */  addu       $v0, $t4, $t5
/* 912A4 800906A4 8C4E0080 */  lw         $t6, 0x80($v0)
/* 912A8 800906A8 3C013F80 */  lui        $at, 0x3f80
/* 912AC 800906AC 31CF0020 */  andi       $t7, $t6, 0x20
/* 912B0 800906B0 11E00008 */  beqz       $t7, .L800906D4
/* 912B4 800906B4 00000000 */   nop
/* 912B8 800906B8 3C01BF80 */  lui        $at, 0xbf80
/* 912BC 800906BC 44814000 */  mtc1       $at, $f8
/* 912C0 800906C0 3C013F80 */  lui        $at, 0x3f80
/* 912C4 800906C4 44815000 */  mtc1       $at, $f10
/* 912C8 800906C8 E62802C8 */  swc1       $f8, 0x2c8($s1)
/* 912CC 800906CC 10000005 */  b          .L800906E4
/* 912D0 800906D0 E44A0138 */   swc1      $f10, 0x138($v0)
.L800906D4:
/* 912D4 800906D4 44818000 */  mtc1       $at, $f16
/* 912D8 800906D8 44809000 */  mtc1       $zero, $f18
/* 912DC 800906DC E63002C8 */  swc1       $f16, 0x2c8($s1)
/* 912E0 800906E0 E4520138 */  swc1       $f18, 0x138($v0)
.L800906E4:
/* 912E4 800906E4 3C014190 */  lui        $at, 0x4190
/* 912E8 800906E8 44813000 */  mtc1       $at, $f6
/* 912EC 800906EC C62402C4 */  lwc1       $f4, 0x2c4($s1)
/* 912F0 800906F0 8C4E0098 */  lw         $t6, 0x98($v0)
/* 912F4 800906F4 46062202 */  mul.s      $f8, $f4, $f6
/* 912F8 800906F8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 912FC 800906FC 8FB00014 */  lw         $s0, 0x14($sp)
/* 91300 80090700 4458F800 */  cfc1       $t8, $31
/* 91304 80090704 00000000 */  nop
/* 91308 80090708 37010003 */  ori        $at, $t8, 3
/* 9130C 8009070C 38210002 */  xori       $at, $at, 2
/* 91310 80090710 44C1F800 */  ctc1       $at, $31
/* 91314 80090714 3C01C180 */  lui        $at, 0xc180
/* 91318 80090718 460042A4 */  cvt.w.s    $f10, $f8
/* 9131C 8009071C 44819000 */  mtc1       $at, $f18
/* 91320 80090720 44195000 */  mfc1       $t9, $f10
/* 91324 80090724 44D8F800 */  ctc1       $t8, $31
/* 91328 80090728 A45900AE */  sh         $t9, 0xae($v0)
/* 9132C 8009072C C63002C4 */  lwc1       $f16, 0x2c4($s1)
/* 91330 80090730 00000000 */  nop
/* 91334 80090734 46128102 */  mul.s      $f4, $f16, $f18
/* 91338 80090738 4448F800 */  cfc1       $t0, $31
/* 9133C 8009073C 00000000 */  nop
/* 91340 80090740 35010003 */  ori        $at, $t0, 3
/* 91344 80090744 38210002 */  xori       $at, $at, 2
/* 91348 80090748 44C1F800 */  ctc1       $at, $31
/* 9134C 8009074C 3C01C100 */  lui        $at, 0xc100
/* 91350 80090750 460021A4 */  cvt.w.s    $f6, $f4
/* 91354 80090754 44815000 */  mtc1       $at, $f10
/* 91358 80090758 44093000 */  mfc1       $t1, $f6
/* 9135C 8009075C 44C8F800 */  ctc1       $t0, $31
/* 91360 80090760 A44900B0 */  sh         $t1, 0xb0($v0)
/* 91364 80090764 C62802C4 */  lwc1       $f8, 0x2c4($s1)
/* 91368 80090768 00000000 */  nop
/* 9136C 8009076C 460A4402 */  mul.s      $f16, $f8, $f10
/* 91370 80090770 444AF800 */  cfc1       $t2, $31
/* 91374 80090774 00000000 */  nop
/* 91378 80090778 35410003 */  ori        $at, $t2, 3
/* 9137C 8009077C 38210002 */  xori       $at, $at, 2
/* 91380 80090780 44C1F800 */  ctc1       $at, $31
/* 91384 80090784 3C014100 */  lui        $at, 0x4100
/* 91388 80090788 460084A4 */  cvt.w.s    $f18, $f16
/* 9138C 8009078C 44813000 */  mtc1       $at, $f6
/* 91390 80090790 440B9000 */  mfc1       $t3, $f18
/* 91394 80090794 44CAF800 */  ctc1       $t2, $31
/* 91398 80090798 A44B00AA */  sh         $t3, 0xaa($v0)
/* 9139C 8009079C C62402C4 */  lwc1       $f4, 0x2c4($s1)
/* 913A0 800907A0 8FB10018 */  lw         $s1, 0x18($sp)
/* 913A4 800907A4 46062202 */  mul.s      $f8, $f4, $f6
/* 913A8 800907A8 27BD0028 */  addiu      $sp, $sp, 0x28
/* 913AC 800907AC 444CF800 */  cfc1       $t4, $31
/* 913B0 800907B0 00000000 */  nop
/* 913B4 800907B4 35810003 */  ori        $at, $t4, 3
/* 913B8 800907B8 38210002 */  xori       $at, $at, 2
/* 913BC 800907BC 44C1F800 */  ctc1       $at, $31
/* 913C0 800907C0 3C01FFDF */  lui        $at, 0xffdf
/* 913C4 800907C4 460042A4 */  cvt.w.s    $f10, $f8
/* 913C8 800907C8 3421F9FF */  ori        $at, $at, 0xf9ff
/* 913CC 800907CC 440D5000 */  mfc1       $t5, $f10
/* 913D0 800907D0 01C17824 */  and        $t7, $t6, $at
/* 913D4 800907D4 44CCF800 */  ctc1       $t4, $31
/* 913D8 800907D8 AC4F0098 */  sw         $t7, 0x98($v0)
/* 913DC 800907DC 03E00008 */  jr         $ra
/* 913E0 800907E0 A44D00AC */   sh        $t5, 0xac($v0)

glabel func_800907E4
/* 913E4 800907E4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 913E8 800907E8 AFB20020 */  sw         $s2, 0x20($sp)
/* 913EC 800907EC 3092FFFF */  andi       $s2, $a0, 0xffff
/* 913F0 800907F0 00127080 */  sll        $t6, $s2, 2
/* 913F4 800907F4 01D27023 */  subu       $t6, $t6, $s2
/* 913F8 800907F8 000E7080 */  sll        $t6, $t6, 2
/* 913FC 800907FC 01D27021 */  addu       $t6, $t6, $s2
/* 91400 80090800 000E7080 */  sll        $t6, $t6, 2
/* 91404 80090804 00125080 */  sll        $t2, $s2, 2
/* 91408 80090808 3C02800F */  lui        $v0, %hi(gActors)
/* 9140C 8009080C 01D27023 */  subu       $t6, $t6, $s2
/* 91410 80090810 01525023 */  subu       $t2, $t2, $s2
/* 91414 80090814 2442F510 */  addiu      $v0, $v0, %lo(gActors)
/* 91418 80090818 AFB00018 */  sw         $s0, 0x18($sp)
/* 9141C 8009081C 000E70C0 */  sll        $t6, $t6, 3
/* 91420 80090820 000A5080 */  sll        $t2, $t2, 2
/* 91424 80090824 004E8021 */  addu       $s0, $v0, $t6
/* 91428 80090828 01525021 */  addu       $t2, $t2, $s2
/* 9142C 8009082C 000A5080 */  sll        $t2, $t2, 2
/* 91430 80090830 3C190001 */  lui        $t9, 1
/* 91434 80090834 01525023 */  subu       $t2, $t2, $s2
/* 91438 80090838 AFB1001C */  sw         $s1, 0x1c($sp)
/* 9143C 8009083C 240F0001 */  addiu      $t7, $zero, 1
/* 91440 80090840 24180001 */  addiu      $t8, $zero, 1
/* 91444 80090844 37391403 */  ori        $t9, $t9, 0x1403
/* 91448 80090848 2409000A */  addiu      $t1, $zero, 0xa
/* 9144C 8009084C 000A50C0 */  sll        $t2, $t2, 3
/* 91450 80090850 A60F0090 */  sh         $t7, 0x90($s0)
/* 91454 80090854 A6180094 */  sh         $t8, 0x94($s0)
/* 91458 80090858 AE190080 */  sw         $t9, 0x80($s0)
/* 9145C 8009085C A60900CE */  sh         $t1, 0xce($s0)
/* 91460 80090860 004A8821 */  addu       $s1, $v0, $t2
/* 91464 80090864 962B0270 */  lhu        $t3, 0x270($s1)
/* 91468 80090868 AFBF0024 */  sw         $ra, 0x24($sp)
/* 9146C 8009086C 2D610006 */  sltiu      $at, $t3, 6
/* 91470 80090870 10200041 */  beqz       $at, .L80090978
/* 91474 80090874 AFA40028 */   sw        $a0, 0x28($sp)
/* 91478 80090878 000B5880 */  sll        $t3, $t3, 2
/* 9147C 8009087C 3C01800F */  lui        $at, %hi(D_800ED3E0)
/* 91480 80090880 002B0821 */  addu       $at, $at, $t3
/* 91484 80090884 8C2BD3E0 */  lw         $t3, %lo(D_800ED3E0)($at)
/* 91488 80090888 00000000 */  nop
/* 9148C 8009088C 01600008 */  jr         $t3
/* 91490 80090890 00000000 */   nop
/* 91494 80090894 960C0094 */  lhu        $t4, 0x94($s0)
/* 91498 80090898 3C0E8020 */  lui        $t6, 0x8020
/* 9149C 8009089C 35CE2C90 */  ori        $t6, $t6, 0x2c90
/* 914A0 800908A0 3C05800E */  lui        $a1, 0x800e
/* 914A4 800908A4 3C06800E */  lui        $a2, %hi(D_800E5B00)
/* 914A8 800908A8 358D0200 */  ori        $t5, $t4, 0x200
/* 914AC 800908AC A60D0094 */  sh         $t5, 0x94($s0)
/* 914B0 800908B0 AE0E018C */  sw         $t6, 0x18c($s0)
/* 914B4 800908B4 24C65B00 */  addiu      $a2, $a2, %lo(D_800E5B00)
/* 914B8 800908B8 24A55E48 */  addiu      $a1, $a1, 0x5e48
/* 914BC 800908BC 0C020417 */  jal        func_8008105C
/* 914C0 800908C0 3244FFFF */   andi      $a0, $s2, 0xffff
/* 914C4 800908C4 1000002C */  b          .L80090978
/* 914C8 800908C8 00000000 */   nop
/* 914CC 800908CC 3C05800E */  lui        $a1, %hi(D_800E5E48)
/* 914D0 800908D0 3C06800E */  lui        $a2, %hi(D_800E5B8C)
/* 914D4 800908D4 AE00018C */  sw         $zero, 0x18c($s0)
/* 914D8 800908D8 24C65B8C */  addiu      $a2, $a2, %lo(D_800E5B8C)
/* 914DC 800908DC 24A55E48 */  addiu      $a1, $a1, %lo(D_800E5E48)
/* 914E0 800908E0 0C020417 */  jal        func_8008105C
/* 914E4 800908E4 3244FFFF */   andi      $a0, $s2, 0xffff
/* 914E8 800908E8 10000023 */  b          .L80090978
/* 914EC 800908EC 00000000 */   nop
/* 914F0 800908F0 3C05800E */  lui        $a1, %hi(D_800E5E48)
/* 914F4 800908F4 3C06800E */  lui        $a2, %hi(D_800E5C18)
/* 914F8 800908F8 AE00018C */  sw         $zero, 0x18c($s0)
/* 914FC 800908FC 24C65C18 */  addiu      $a2, $a2, %lo(D_800E5C18)
/* 91500 80090900 24A55E48 */  addiu      $a1, $a1, %lo(D_800E5E48)
/* 91504 80090904 0C020417 */  jal        func_8008105C
/* 91508 80090908 3244FFFF */   andi      $a0, $s2, 0xffff
/* 9150C 8009090C 1000001A */  b          .L80090978
/* 91510 80090910 00000000 */   nop
/* 91514 80090914 3C05800E */  lui        $a1, %hi(D_800E5E48)
/* 91518 80090918 3C06800E */  lui        $a2, %hi(D_800E5D30)
/* 9151C 8009091C AE00018C */  sw         $zero, 0x18c($s0)
/* 91520 80090920 24C65D30 */  addiu      $a2, $a2, %lo(D_800E5D30)
/* 91524 80090924 24A55E48 */  addiu      $a1, $a1, %lo(D_800E5E48)
/* 91528 80090928 0C020417 */  jal        func_8008105C
/* 9152C 8009092C 3244FFFF */   andi      $a0, $s2, 0xffff
/* 91530 80090930 10000011 */  b          .L80090978
/* 91534 80090934 00000000 */   nop
/* 91538 80090938 3C05800E */  lui        $a1, %hi(D_800E5E48)
/* 9153C 8009093C 3C06800E */  lui        $a2, %hi(D_800E5DBC)
/* 91540 80090940 AE00018C */  sw         $zero, 0x18c($s0)
/* 91544 80090944 24C65DBC */  addiu      $a2, $a2, %lo(D_800E5DBC)
/* 91548 80090948 24A55E48 */  addiu      $a1, $a1, %lo(D_800E5E48)
/* 9154C 8009094C 0C020417 */  jal        func_8008105C
/* 91550 80090950 3244FFFF */   andi      $a0, $s2, 0xffff
/* 91554 80090954 10000008 */  b          .L80090978
/* 91558 80090958 00000000 */   nop
/* 9155C 8009095C 3C05800E */  lui        $a1, %hi(D_800E5E48)
/* 91560 80090960 3C06800E */  lui        $a2, %hi(D_800E5CA4)
/* 91564 80090964 AE00018C */  sw         $zero, 0x18c($s0)
/* 91568 80090968 24C65CA4 */  addiu      $a2, $a2, %lo(D_800E5CA4)
/* 9156C 8009096C 24A55E48 */  addiu      $a1, $a1, %lo(D_800E5E48)
/* 91570 80090970 0C020417 */  jal        func_8008105C
/* 91574 80090974 3244FFFF */   andi      $a0, $s2, 0xffff
.L80090978:
/* 91578 80090978 3C0F800F */  lui        $t7, %hi(D_800E8820)
/* 9157C 8009097C 25EF8820 */  addiu      $t7, $t7, %lo(D_800E8820)
/* 91580 80090980 3C05800E */  lui        $a1, %hi(D_800E5E48)
/* 91584 80090984 AE0F0178 */  sw         $t7, 0x178($s0)
/* 91588 80090988 24A55E48 */  addiu      $a1, $a1, %lo(D_800E5E48)
/* 9158C 8009098C 3244FFFF */  andi       $a0, $s2, 0xffff
/* 91590 80090990 0C02051E */  jal        func_80081478
/* 91594 80090994 24060001 */   addiu     $a2, $zero, 1
/* 91598 80090998 3C05800F */  lui        $a1, %hi(D_800E89D4)
/* 9159C 8009099C 24A589D4 */  addiu      $a1, $a1, %lo(D_800E89D4)
/* 915A0 800909A0 0C0205E4 */  jal        func_80081790
/* 915A4 800909A4 3244FFFF */   andi      $a0, $s2, 0xffff
/* 915A8 800909A8 3C05800E */  lui        $a1, %hi(D_800E5E48)
/* 915AC 800909AC 24A55E48 */  addiu      $a1, $a1, %lo(D_800E5E48)
/* 915B0 800909B0 0C02066A */  jal        func_800819A8
/* 915B4 800909B4 3244FFFF */   andi      $a0, $s2, 0xffff
/* 915B8 800909B8 241800FE */  addiu      $t8, $zero, 0xfe
/* 915BC 800909BC A218009F */  sb         $t8, 0x9f($s0)
/* 915C0 800909C0 3C19800C */  lui        $t9, %hi(D_800BE558)
/* 915C4 800909C4 8739E558 */  lh         $t9, %lo(D_800BE558)($t9)
/* 915C8 800909C8 86090088 */  lh         $t1, 0x88($s0)
/* 915CC 800909CC 3C0B800C */  lui        $t3, %hi(D_800BE55C)
/* 915D0 800909D0 03295021 */  addu       $t2, $t9, $t1
/* 915D4 800909D4 AE2A1170 */  sw         $t2, 0x1170($s1)
/* 915D8 800909D8 860C008C */  lh         $t4, 0x8c($s0)
/* 915DC 800909DC 856BE55C */  lh         $t3, %lo(D_800BE55C)($t3)
/* 915E0 800909E0 00000000 */  nop
/* 915E4 800909E4 016C6821 */  addu       $t5, $t3, $t4
/* 915E8 800909E8 AE2D1308 */  sw         $t5, 0x1308($s1)
/* 915EC 800909EC 960E0094 */  lhu        $t6, 0x94($s0)
/* 915F0 800909F0 3C0C800F */  lui        $t4, %hi(D_800E905C)
/* 915F4 800909F4 31CF0200 */  andi       $t7, $t6, 0x200
/* 915F8 800909F8 11E0001E */  beqz       $t7, .L80090A74
/* 915FC 800909FC 8FBF0024 */   lw        $ra, 0x24($sp)
/* 91600 80090A00 960800D8 */  lhu        $t0, 0xd8($s0)
/* 91604 80090A04 258C905C */  addiu      $t4, $t4, %lo(D_800E905C)
/* 91608 80090A08 311801F0 */  andi       $t8, $t0, 0x1f0
/* 9160C 80090A0C 03004025 */  or         $t0, $t8, $zero
/* 91610 80090A10 05010003 */  bgez       $t0, .L80090A20
/* 91614 80090A14 0008C903 */   sra       $t9, $t0, 4
/* 91618 80090A18 2501000F */  addiu      $at, $t0, 0xf
/* 9161C 80090A1C 0001C903 */  sra        $t9, $at, 4
.L80090A20:
/* 91620 80090A20 00194880 */  sll        $t1, $t9, 2
/* 91624 80090A24 01394821 */  addu       $t1, $t1, $t9
/* 91628 80090A28 312AFFFF */  andi       $t2, $t1, 0xffff
/* 9162C 80090A2C 000A5880 */  sll        $t3, $t2, 2
/* 91630 80090A30 016C1021 */  addu       $v0, $t3, $t4
/* 91634 80090A34 8C430000 */  lw         $v1, ($v0)
/* 91638 80090A38 8C440004 */  lw         $a0, 4($v0)
/* 9163C 80090A3C 8C450008 */  lw         $a1, 8($v0)
/* 91640 80090A40 8C46000C */  lw         $a2, 0xc($v0)
/* 91644 80090A44 8C470010 */  lw         $a3, 0x10($v0)
/* 91648 80090A48 AE230324 */  sw         $v1, 0x324($s1)
/* 9164C 80090A4C AE230654 */  sw         $v1, 0x654($s1)
/* 91650 80090A50 AE2407EC */  sw         $a0, 0x7ec($s1)
/* 91654 80090A54 AE240E4C */  sw         $a0, 0xe4c($s1)
/* 91658 80090A58 AE250CB4 */  sw         $a1, 0xcb4($s1)
/* 9165C 80090A5C AE251314 */  sw         $a1, 0x1314($s1)
/* 91660 80090A60 AE261974 */  sw         $a2, 0x1974($s1)
/* 91664 80090A64 AE262304 */  sw         $a2, 0x2304($s1)
/* 91668 80090A68 AE271CA4 */  sw         $a3, 0x1ca4($s1)
/* 9166C 80090A6C AE272634 */  sw         $a3, 0x2634($s1)
/* 91670 80090A70 8FBF0024 */  lw         $ra, 0x24($sp)
.L80090A74:
/* 91674 80090A74 8FB00018 */  lw         $s0, 0x18($sp)
/* 91678 80090A78 8FB1001C */  lw         $s1, 0x1c($sp)
/* 9167C 80090A7C 8FB20020 */  lw         $s2, 0x20($sp)
/* 91680 80090A80 03E00008 */  jr         $ra
/* 91684 80090A84 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80090A88
/* 91688 80090A88 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9168C 80090A8C AFB00018 */  sw         $s0, 0x18($sp)
/* 91690 80090A90 3090FFFF */  andi       $s0, $a0, 0xffff
/* 91694 80090A94 AFBF001C */  sw         $ra, 0x1c($sp)
/* 91698 80090A98 AFA40030 */  sw         $a0, 0x30($sp)
/* 9169C 80090A9C 0C023C5A */  jal        func_8008F168
/* 916A0 80090AA0 3204FFFF */   andi      $a0, $s0, 0xffff
/* 916A4 80090AA4 14400051 */  bnez       $v0, .L80090BEC
/* 916A8 80090AA8 3C07800F */   lui       $a3, 0x800f
/* 916AC 80090AAC 00107080 */  sll        $t6, $s0, 2
/* 916B0 80090AB0 01D07023 */  subu       $t6, $t6, $s0
/* 916B4 80090AB4 000E7080 */  sll        $t6, $t6, 2
/* 916B8 80090AB8 01D07021 */  addu       $t6, $t6, $s0
/* 916BC 80090ABC 000E7080 */  sll        $t6, $t6, 2
/* 916C0 80090AC0 01D07023 */  subu       $t6, $t6, $s0
/* 916C4 80090AC4 24E7F510 */  addiu      $a3, $a3, -0xaf0
/* 916C8 80090AC8 000E70C0 */  sll        $t6, $t6, 3
/* 916CC 80090ACC 00EE1821 */  addu       $v1, $a3, $t6
/* 916D0 80090AD0 946400D0 */  lhu        $a0, 0xd0($v1)
/* 916D4 80090AD4 24010110 */  addiu      $at, $zero, 0x110
/* 916D8 80090AD8 10810006 */  beq        $a0, $at, .L80090AF4
/* 916DC 80090ADC 00801025 */   or        $v0, $a0, $zero
/* 916E0 80090AE0 24010111 */  addiu      $at, $zero, 0x111
/* 916E4 80090AE4 10410032 */  beq        $v0, $at, .L80090BB0
/* 916E8 80090AE8 00104880 */   sll       $t1, $s0, 2
/* 916EC 80090AEC 10000040 */  b          .L80090BF0
/* 916F0 80090AF0 8FBF001C */   lw        $ra, 0x1c($sp)
.L80090AF4:
/* 916F4 80090AF4 00104080 */  sll        $t0, $s0, 2
/* 916F8 80090AF8 01104023 */  subu       $t0, $t0, $s0
/* 916FC 80090AFC 00084080 */  sll        $t0, $t0, 2
/* 91700 80090B00 01104021 */  addu       $t0, $t0, $s0
/* 91704 80090B04 8C780080 */  lw         $t8, 0x80($v1)
/* 91708 80090B08 00084080 */  sll        $t0, $t0, 2
/* 9170C 80090B0C 01104023 */  subu       $t0, $t0, $s0
/* 91710 80090B10 248F0001 */  addiu      $t7, $a0, 1
/* 91714 80090B14 000840C0 */  sll        $t0, $t0, 3
/* 91718 80090B18 37191000 */  ori        $t9, $t8, 0x1000
/* 9171C 80090B1C A46F00D0 */  sh         $t7, 0xd0($v1)
/* 91720 80090B20 AC790080 */  sw         $t9, 0x80($v1)
/* 91724 80090B24 00E83021 */  addu       $a2, $a3, $t0
/* 91728 80090B28 94C20270 */  lhu        $v0, 0x270($a2)
/* 9172C 80090B2C 24010002 */  addiu      $at, $zero, 2
/* 91730 80090B30 1041000E */  beq        $v0, $at, .L80090B6C
/* 91734 80090B34 3204FFFF */   andi      $a0, $s0, 0xffff
/* 91738 80090B38 24010003 */  addiu      $at, $zero, 3
/* 9173C 80090B3C 10410004 */  beq        $v0, $at, .L80090B50
/* 91740 80090B40 3204FFFF */   andi      $a0, $s0, 0xffff
/* 91744 80090B44 24010005 */  addiu      $at, $zero, 5
/* 91748 80090B48 1441000F */  bne        $v0, $at, .L80090B88
/* 9174C 80090B4C 3C05800F */   lui       $a1, 0x800f
.L80090B50:
/* 91750 80090B50 3C05800F */  lui        $a1, %hi(D_800E8EAC)
/* 91754 80090B54 24A58EAC */  addiu      $a1, $a1, %lo(D_800E8EAC)
/* 91758 80090B58 0C0205E4 */  jal        func_80081790
/* 9175C 80090B5C AFA60020 */   sw        $a2, 0x20($sp)
/* 91760 80090B60 8FA60020 */  lw         $a2, 0x20($sp)
/* 91764 80090B64 1000000E */  b          .L80090BA0
/* 91768 80090B68 00000000 */   nop
.L80090B6C:
/* 9176C 80090B6C 3C05800F */  lui        $a1, %hi(D_800E8F4C)
/* 91770 80090B70 24A58F4C */  addiu      $a1, $a1, %lo(D_800E8F4C)
/* 91774 80090B74 0C0205E4 */  jal        func_80081790
/* 91778 80090B78 AFA60020 */   sw        $a2, 0x20($sp)
/* 9177C 80090B7C 8FA60020 */  lw         $a2, 0x20($sp)
/* 91780 80090B80 10000007 */  b          .L80090BA0
/* 91784 80090B84 00000000 */   nop
.L80090B88:
/* 91788 80090B88 3204FFFF */  andi       $a0, $s0, 0xffff
/* 9178C 80090B8C 24A589D4 */  addiu      $a1, $a1, -0x762c
/* 91790 80090B90 0C0205E4 */  jal        func_80081790
/* 91794 80090B94 AFA60020 */   sw        $a2, 0x20($sp)
/* 91798 80090B98 8FA60020 */  lw         $a2, 0x20($sp)
/* 9179C 80090B9C 00000000 */  nop
.L80090BA0:
/* 917A0 80090BA0 3C07800F */  lui        $a3, %hi(gActors)
/* 917A4 80090BA4 ACC004B0 */  sw         $zero, 0x4b0($a2)
/* 917A8 80090BA8 24E7F510 */  addiu      $a3, $a3, %lo(gActors)
/* 917AC 80090BAC 00104880 */  sll        $t1, $s0, 2
.L80090BB0:
/* 917B0 80090BB0 01304823 */  subu       $t1, $t1, $s0
/* 917B4 80090BB4 00094880 */  sll        $t1, $t1, 2
/* 917B8 80090BB8 01304821 */  addu       $t1, $t1, $s0
/* 917BC 80090BBC 00094880 */  sll        $t1, $t1, 2
/* 917C0 80090BC0 01304823 */  subu       $t1, $t1, $s0
/* 917C4 80090BC4 000948C0 */  sll        $t1, $t1, 3
/* 917C8 80090BC8 00E93021 */  addu       $a2, $a3, $t1
/* 917CC 80090BCC 8CC204B0 */  lw         $v0, 0x4b0($a2)
/* 917D0 80090BD0 00000000 */  nop
/* 917D4 80090BD4 28417FFF */  slti       $at, $v0, 0x7fff
/* 917D8 80090BD8 10200002 */  beqz       $at, .L80090BE4
/* 917DC 80090BDC 244A0001 */   addiu     $t2, $v0, 1
/* 917E0 80090BE0 ACCA04B0 */  sw         $t2, 0x4b0($a2)
.L80090BE4:
/* 917E4 80090BE4 0C023C42 */  jal        func_8008F108
/* 917E8 80090BE8 3204FFFF */   andi      $a0, $s0, 0xffff
.L80090BEC:
/* 917EC 80090BEC 8FBF001C */  lw         $ra, 0x1c($sp)
.L80090BF0:
/* 917F0 80090BF0 8FB00018 */  lw         $s0, 0x18($sp)
/* 917F4 80090BF4 03E00008 */  jr         $ra
/* 917F8 80090BF8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80090BFC
/* 917FC 80090BFC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 91800 80090C00 AFBF0014 */  sw         $ra, 0x14($sp)
/* 91804 80090C04 AFA40020 */  sw         $a0, 0x20($sp)
/* 91808 80090C08 308EFFFF */  andi       $t6, $a0, 0xffff
/* 9180C 80090C0C 01C02025 */  or         $a0, $t6, $zero
/* 91810 80090C10 0C023C5A */  jal        func_8008F168
/* 91814 80090C14 A7AE0022 */   sh        $t6, 0x22($sp)
/* 91818 80090C18 97A40022 */  lhu        $a0, 0x22($sp)
/* 9181C 80090C1C 1440002B */  bnez       $v0, .L80090CCC
/* 91820 80090C20 00047880 */   sll       $t7, $a0, 2
/* 91824 80090C24 01E47823 */  subu       $t7, $t7, $a0
/* 91828 80090C28 000F7880 */  sll        $t7, $t7, 2
/* 9182C 80090C2C 01E47821 */  addu       $t7, $t7, $a0
/* 91830 80090C30 000F7880 */  sll        $t7, $t7, 2
/* 91834 80090C34 01E47823 */  subu       $t7, $t7, $a0
/* 91838 80090C38 3C18800F */  lui        $t8, %hi(gActors)
/* 9183C 80090C3C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 91840 80090C40 000F78C0 */  sll        $t7, $t7, 3
/* 91844 80090C44 01F81021 */  addu       $v0, $t7, $t8
/* 91848 80090C48 944600D0 */  lhu        $a2, 0xd0($v0)
/* 9184C 80090C4C 24010120 */  addiu      $at, $zero, 0x120
/* 91850 80090C50 10C10006 */  beq        $a2, $at, .L80090C6C
/* 91854 80090C54 00C01825 */   or        $v1, $a2, $zero
/* 91858 80090C58 24010121 */  addiu      $at, $zero, 0x121
/* 9185C 80090C5C 1061000B */  beq        $v1, $at, .L80090C8C
/* 91860 80090C60 00000000 */   nop
/* 91864 80090C64 1000001A */  b          .L80090CD0
/* 91868 80090C68 8FBF0014 */   lw        $ra, 0x14($sp)
.L80090C6C:
/* 9186C 80090C6C 24D90001 */  addiu      $t9, $a2, 1
/* 91870 80090C70 3C05800F */  lui        $a1, %hi(D_800E8A08)
/* 91874 80090C74 A45900D0 */  sh         $t9, 0xd0($v0)
/* 91878 80090C78 24A58A08 */  addiu      $a1, $a1, %lo(D_800E8A08)
/* 9187C 80090C7C 0C0205E4 */  jal        func_80081790
/* 91880 80090C80 AFA20018 */   sw        $v0, 0x18($sp)
/* 91884 80090C84 8FA20018 */  lw         $v0, 0x18($sp)
/* 91888 80090C88 00000000 */  nop
.L80090C8C:
/* 9188C 80090C8C 8C48016C */  lw         $t0, 0x16c($v0)
/* 91890 80090C90 44803000 */  mtc1       $zero, $f6
/* 91894 80090C94 31090001 */  andi       $t1, $t0, 1
/* 91898 80090C98 11200005 */  beqz       $t1, .L80090CB0
/* 9189C 80090C9C 240C0110 */   addiu     $t4, $zero, 0x110
/* 918A0 80090CA0 8C4A0080 */  lw         $t2, 0x80($v0)
/* 918A4 80090CA4 00000000 */  nop
/* 918A8 80090CA8 394B0020 */  xori       $t3, $t2, 0x20
/* 918AC 80090CAC AC4B0080 */  sw         $t3, 0x80($v0)
.L80090CB0:
/* 918B0 80090CB0 C444011C */  lwc1       $f4, 0x11c($v0)
/* 918B4 80090CB4 00000000 */  nop
/* 918B8 80090CB8 4606203C */  c.lt.s     $f4, $f6
/* 918BC 80090CBC 00000000 */  nop
/* 918C0 80090CC0 45000003 */  bc1f       .L80090CD0
/* 918C4 80090CC4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 918C8 80090CC8 A44C00D0 */  sh         $t4, 0xd0($v0)
.L80090CCC:
/* 918CC 80090CCC 8FBF0014 */  lw         $ra, 0x14($sp)
.L80090CD0:
/* 918D0 80090CD0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 918D4 80090CD4 03E00008 */  jr         $ra
/* 918D8 80090CD8 00000000 */   nop

glabel func_80090CDC
/* 918DC 80090CDC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 918E0 80090CE0 AFB00018 */  sw         $s0, 0x18($sp)
/* 918E4 80090CE4 3090FFFF */  andi       $s0, $a0, 0xffff
/* 918E8 80090CE8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 918EC 80090CEC AFA40030 */  sw         $a0, 0x30($sp)
/* 918F0 80090CF0 0C023C5A */  jal        func_8008F168
/* 918F4 80090CF4 3204FFFF */   andi      $a0, $s0, 0xffff
/* 918F8 80090CF8 1440008F */  bnez       $v0, .L80090F38
/* 918FC 80090CFC 3C08800F */   lui       $t0, 0x800f
/* 91900 80090D00 00107080 */  sll        $t6, $s0, 2
/* 91904 80090D04 01D07023 */  subu       $t6, $t6, $s0
/* 91908 80090D08 000E7080 */  sll        $t6, $t6, 2
/* 9190C 80090D0C 01D07021 */  addu       $t6, $t6, $s0
/* 91910 80090D10 000E7080 */  sll        $t6, $t6, 2
/* 91914 80090D14 01D07023 */  subu       $t6, $t6, $s0
/* 91918 80090D18 2508F510 */  addiu      $t0, $t0, -0xaf0
/* 9191C 80090D1C 000E70C0 */  sll        $t6, $t6, 3
/* 91920 80090D20 010E3821 */  addu       $a3, $t0, $t6
/* 91924 80090D24 94E400D0 */  lhu        $a0, 0xd0($a3)
/* 91928 80090D28 24010130 */  addiu      $at, $zero, 0x130
/* 9192C 80090D2C 10810006 */  beq        $a0, $at, .L80090D48
/* 91930 80090D30 00801025 */   or        $v0, $a0, $zero
/* 91934 80090D34 24010131 */  addiu      $at, $zero, 0x131
/* 91938 80090D38 10410038 */  beq        $v0, $at, .L80090E1C
/* 9193C 80090D3C 00105080 */   sll       $t2, $s0, 2
/* 91940 80090D40 1000007E */  b          .L80090F3C
/* 91944 80090D44 8FBF001C */   lw        $ra, 0x1c($sp)
.L80090D48:
/* 91948 80090D48 0010C080 */  sll        $t8, $s0, 2
/* 9194C 80090D4C 0310C023 */  subu       $t8, $t8, $s0
/* 91950 80090D50 0018C080 */  sll        $t8, $t8, 2
/* 91954 80090D54 0310C021 */  addu       $t8, $t8, $s0
/* 91958 80090D58 0018C080 */  sll        $t8, $t8, 2
/* 9195C 80090D5C 0310C023 */  subu       $t8, $t8, $s0
/* 91960 80090D60 248F0001 */  addiu      $t7, $a0, 1
/* 91964 80090D64 0018C0C0 */  sll        $t8, $t8, 3
/* 91968 80090D68 A4EF00D0 */  sh         $t7, 0xd0($a3)
/* 9196C 80090D6C 01181821 */  addu       $v1, $t0, $t8
/* 91970 80090D70 3C014780 */  lui        $at, 0x4780
/* 91974 80090D74 44812000 */  mtc1       $at, $f4
/* 91978 80090D78 C46602C4 */  lwc1       $f6, 0x2c4($v1)
/* 9197C 80090D7C C46A02C8 */  lwc1       $f10, 0x2c8($v1)
/* 91980 80090D80 46062202 */  mul.s      $f8, $f4, $f6
/* 91984 80090D84 3C05800F */  lui        $a1, %hi(D_800E8FA4)
/* 91988 80090D88 24A58FA4 */  addiu      $a1, $a1, %lo(D_800E8FA4)
/* 9198C 80090D8C 3204FFFF */  andi       $a0, $s0, 0xffff
/* 91990 80090D90 46085402 */  mul.s      $f16, $f10, $f8
/* 91994 80090D94 4459F800 */  cfc1       $t9, $31
/* 91998 80090D98 00000000 */  nop
/* 9199C 80090D9C 37210003 */  ori        $at, $t9, 3
/* 919A0 80090DA0 38210002 */  xori       $at, $at, 2
/* 919A4 80090DA4 44C1F800 */  ctc1       $at, $31
/* 919A8 80090DA8 24010002 */  addiu      $at, $zero, 2
/* 919AC 80090DAC 460084A4 */  cvt.w.s    $f18, $f16
/* 919B0 80090DB0 44099000 */  mfc1       $t1, $f18
/* 919B4 80090DB4 44D9F800 */  ctc1       $t9, $31
/* 919B8 80090DB8 AC6904B0 */  sw         $t1, 0x4b0($v1)
/* 919BC 80090DBC ACE000EC */  sw         $zero, 0xec($a3)
/* 919C0 80090DC0 94620270 */  lhu        $v0, 0x270($v1)
/* 919C4 80090DC4 00000000 */  nop
/* 919C8 80090DC8 10410005 */  beq        $v0, $at, .L80090DE0
/* 919CC 80090DCC 24010003 */   addiu     $at, $zero, 3
/* 919D0 80090DD0 10410003 */  beq        $v0, $at, .L80090DE0
/* 919D4 80090DD4 24010005 */   addiu     $at, $zero, 5
/* 919D8 80090DD8 14410006 */  bne        $v0, $at, .L80090DF4
/* 919DC 80090DDC 00000000 */   nop
.L80090DE0:
/* 919E0 80090DE0 0C0205E4 */  jal        func_80081790
/* 919E4 80090DE4 AFA70028 */   sw        $a3, 0x28($sp)
/* 919E8 80090DE8 8FA70028 */  lw         $a3, 0x28($sp)
/* 919EC 80090DEC 10000008 */  b          .L80090E10
/* 919F0 80090DF0 00000000 */   nop
.L80090DF4:
/* 919F4 80090DF4 3C05800F */  lui        $a1, %hi(D_800E8A48)
/* 919F8 80090DF8 24A58A48 */  addiu      $a1, $a1, %lo(D_800E8A48)
/* 919FC 80090DFC 3204FFFF */  andi       $a0, $s0, 0xffff
/* 91A00 80090E00 0C0205E4 */  jal        func_80081790
/* 91A04 80090E04 AFA70028 */   sw        $a3, 0x28($sp)
/* 91A08 80090E08 8FA70028 */  lw         $a3, 0x28($sp)
/* 91A0C 80090E0C 00000000 */  nop
.L80090E10:
/* 91A10 80090E10 3C08800F */  lui        $t0, %hi(gActors)
/* 91A14 80090E14 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 91A18 80090E18 00105080 */  sll        $t2, $s0, 2
.L80090E1C:
/* 91A1C 80090E1C 01505023 */  subu       $t2, $t2, $s0
/* 91A20 80090E20 000A5080 */  sll        $t2, $t2, 2
/* 91A24 80090E24 01505021 */  addu       $t2, $t2, $s0
/* 91A28 80090E28 000A5080 */  sll        $t2, $t2, 2
/* 91A2C 80090E2C 01505023 */  subu       $t2, $t2, $s0
/* 91A30 80090E30 000A50C0 */  sll        $t2, $t2, 3
/* 91A34 80090E34 010A1821 */  addu       $v1, $t0, $t2
/* 91A38 80090E38 3C014600 */  lui        $at, 0x4600
/* 91A3C 80090E3C 44813000 */  mtc1       $at, $f6
/* 91A40 80090E40 C46402C4 */  lwc1       $f4, 0x2c4($v1)
/* 91A44 80090E44 8C6404B0 */  lw         $a0, 0x4b0($v1)
/* 91A48 80090E48 46062282 */  mul.s      $f10, $f4, $f6
/* 91A4C 80090E4C AFA30024 */  sw         $v1, 0x24($sp)
/* 91A50 80090E50 00002825 */  or         $a1, $zero, $zero
/* 91A54 80090E54 AFA70028 */  sw         $a3, 0x28($sp)
/* 91A58 80090E58 444BF800 */  cfc1       $t3, $31
/* 91A5C 80090E5C 00000000 */  nop
/* 91A60 80090E60 35610003 */  ori        $at, $t3, 3
/* 91A64 80090E64 38210002 */  xori       $at, $at, 2
/* 91A68 80090E68 44C1F800 */  ctc1       $at, $31
/* 91A6C 80090E6C 00000000 */  nop
/* 91A70 80090E70 46005224 */  cvt.w.s    $f8, $f10
/* 91A74 80090E74 44064000 */  mfc1       $a2, $f8
/* 91A78 80090E78 44CBF800 */  ctc1       $t3, $31
/* 91A7C 80090E7C 0C00A607 */  jal        func_8002981C
/* 91A80 80090E80 00000000 */   nop
/* 91A84 80090E84 8FA70028 */  lw         $a3, 0x28($sp)
/* 91A88 80090E88 8FA30024 */  lw         $v1, 0x24($sp)
/* 91A8C 80090E8C 3C014480 */  lui        $at, 0x4480
/* 91A90 80090E90 ACE200EC */  sw         $v0, 0xec($a3)
/* 91A94 80090E94 44819000 */  mtc1       $at, $f18
/* 91A98 80090E98 C47002C4 */  lwc1       $f16, 0x2c4($v1)
/* 91A9C 80090E9C 8C6404B0 */  lw         $a0, 0x4b0($v1)
/* 91AA0 80090EA0 46128102 */  mul.s      $f4, $f16, $f18
/* 91AA4 80090EA4 00002825 */  or         $a1, $zero, $zero
/* 91AA8 80090EA8 444CF800 */  cfc1       $t4, $31
/* 91AAC 80090EAC 00000000 */  nop
/* 91AB0 80090EB0 35810003 */  ori        $at, $t4, 3
/* 91AB4 80090EB4 38210002 */  xori       $at, $at, 2
/* 91AB8 80090EB8 44C1F800 */  ctc1       $at, $31
/* 91ABC 80090EBC 00000000 */  nop
/* 91AC0 80090EC0 460021A4 */  cvt.w.s    $f6, $f4
/* 91AC4 80090EC4 44063000 */  mfc1       $a2, $f6
/* 91AC8 80090EC8 44CCF800 */  ctc1       $t4, $31
/* 91ACC 80090ECC 0C00A607 */  jal        func_8002981C
/* 91AD0 80090ED0 00000000 */   nop
/* 91AD4 80090ED4 8FA30024 */  lw         $v1, 0x24($sp)
/* 91AD8 80090ED8 8FA70028 */  lw         $a3, 0x28($sp)
/* 91ADC 80090EDC AC6204B0 */  sw         $v0, 0x4b0($v1)
/* 91AE0 80090EE0 8CED016C */  lw         $t5, 0x16c($a3)
/* 91AE4 80090EE4 3C014798 */  lui        $at, 0x4798
/* 91AE8 80090EE8 31AE0001 */  andi       $t6, $t5, 1
/* 91AEC 80090EEC 11C00013 */  beqz       $t6, .L80090F3C
/* 91AF0 80090EF0 8FBF001C */   lw        $ra, 0x1c($sp)
/* 91AF4 80090EF4 44815000 */  mtc1       $at, $f10
/* 91AF8 80090EF8 C46802C4 */  lwc1       $f8, 0x2c4($v1)
/* 91AFC 80090EFC C47202C8 */  lwc1       $f18, 0x2c8($v1)
/* 91B00 80090F00 46085402 */  mul.s      $f16, $f10, $f8
/* 91B04 80090F04 00000000 */  nop
/* 91B08 80090F08 46109102 */  mul.s      $f4, $f18, $f16
/* 91B0C 80090F0C 444FF800 */  cfc1       $t7, $31
/* 91B10 80090F10 00000000 */  nop
/* 91B14 80090F14 35E10003 */  ori        $at, $t7, 3
/* 91B18 80090F18 38210002 */  xori       $at, $at, 2
/* 91B1C 80090F1C 44C1F800 */  ctc1       $at, $31
/* 91B20 80090F20 00000000 */  nop
/* 91B24 80090F24 460021A4 */  cvt.w.s    $f6, $f4
/* 91B28 80090F28 44183000 */  mfc1       $t8, $f6
/* 91B2C 80090F2C 44CFF800 */  ctc1       $t7, $31
/* 91B30 80090F30 AC7804B0 */  sw         $t8, 0x4b0($v1)
/* 91B34 80090F34 00000000 */  nop
.L80090F38:
/* 91B38 80090F38 8FBF001C */  lw         $ra, 0x1c($sp)
.L80090F3C:
/* 91B3C 80090F3C 8FB00018 */  lw         $s0, 0x18($sp)
/* 91B40 80090F40 03E00008 */  jr         $ra
/* 91B44 80090F44 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80090F48
/* 91B48 80090F48 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 91B4C 80090F4C AFA40028 */  sw         $a0, 0x28($sp)
/* 91B50 80090F50 AFBF0014 */  sw         $ra, 0x14($sp)
/* 91B54 80090F54 97A4002A */  lhu        $a0, 0x2a($sp)
/* 91B58 80090F58 0C023C5A */  jal        func_8008F168
/* 91B5C 80090F5C 00000000 */   nop
/* 91B60 80090F60 14400079 */  bnez       $v0, .L80091148
/* 91B64 80090F64 3C09800F */   lui       $t1, %hi(gActors)
/* 91B68 80090F68 97AE002A */  lhu        $t6, 0x2a($sp)
/* 91B6C 80090F6C 2529F510 */  addiu      $t1, $t1, %lo(gActors)
/* 91B70 80090F70 000E7880 */  sll        $t7, $t6, 2
/* 91B74 80090F74 01EE7823 */  subu       $t7, $t7, $t6
/* 91B78 80090F78 000F7880 */  sll        $t7, $t7, 2
/* 91B7C 80090F7C 01EE7821 */  addu       $t7, $t7, $t6
/* 91B80 80090F80 000F7880 */  sll        $t7, $t7, 2
/* 91B84 80090F84 01EE7823 */  subu       $t7, $t7, $t6
/* 91B88 80090F88 000F78C0 */  sll        $t7, $t7, 3
/* 91B8C 80090F8C 012F3821 */  addu       $a3, $t1, $t7
/* 91B90 80090F90 94E300D0 */  lhu        $v1, 0xd0($a3)
/* 91B94 80090F94 24010140 */  addiu      $at, $zero, 0x140
/* 91B98 80090F98 10610006 */  beq        $v1, $at, .L80090FB4
/* 91B9C 80090F9C 00601025 */   or        $v0, $v1, $zero
/* 91BA0 80090FA0 24010141 */  addiu      $at, $zero, 0x141
/* 91BA4 80090FA4 10410029 */  beq        $v0, $at, .L8009104C
/* 91BA8 80090FA8 97AC002A */   lhu       $t4, 0x2a($sp)
/* 91BAC 80090FAC 10000067 */  b          .L8009114C
/* 91BB0 80090FB0 8FBF0014 */   lw        $ra, 0x14($sp)
.L80090FB4:
/* 91BB4 80090FB4 97B9002A */  lhu        $t9, 0x2a($sp)
/* 91BB8 80090FB8 24780001 */  addiu      $t8, $v1, 1
/* 91BBC 80090FBC 00195080 */  sll        $t2, $t9, 2
/* 91BC0 80090FC0 01595023 */  subu       $t2, $t2, $t9
/* 91BC4 80090FC4 000A5080 */  sll        $t2, $t2, 2
/* 91BC8 80090FC8 01595021 */  addu       $t2, $t2, $t9
/* 91BCC 80090FCC 000A5080 */  sll        $t2, $t2, 2
/* 91BD0 80090FD0 01595023 */  subu       $t2, $t2, $t9
/* 91BD4 80090FD4 000A50C0 */  sll        $t2, $t2, 3
/* 91BD8 80090FD8 A4F800D0 */  sh         $t8, 0xd0($a3)
/* 91BDC 80090FDC ACE000EC */  sw         $zero, 0xec($a3)
/* 91BE0 80090FE0 012A5821 */  addu       $t3, $t1, $t2
/* 91BE4 80090FE4 95620270 */  lhu        $v0, 0x270($t3)
/* 91BE8 80090FE8 24010002 */  addiu      $at, $zero, 2
/* 91BEC 80090FEC 10410006 */  beq        $v0, $at, .L80091008
/* 91BF0 80090FF0 3C05800F */   lui       $a1, 0x800f
/* 91BF4 80090FF4 24010003 */  addiu      $at, $zero, 3
/* 91BF8 80090FF8 10410003 */  beq        $v0, $at, .L80091008
/* 91BFC 80090FFC 24010005 */   addiu     $at, $zero, 5
/* 91C00 80091000 14410009 */  bne        $v0, $at, .L80091028
/* 91C04 80091004 97A4002A */   lhu       $a0, 0x2a($sp)
.L80091008:
/* 91C08 80091008 97A4002A */  lhu        $a0, 0x2a($sp)
/* 91C0C 8009100C 24A58F60 */  addiu      $a1, $a1, -0x70a0
/* 91C10 80091010 0C0205E4 */  jal        func_80081790
/* 91C14 80091014 AFA70020 */   sw        $a3, 0x20($sp)
/* 91C18 80091018 8FA70020 */  lw         $a3, 0x20($sp)
/* 91C1C 8009101C 10000008 */  b          .L80091040
/* 91C20 80091020 00000000 */   nop
/* 91C24 80091024 97A4002A */  lhu        $a0, 0x2a($sp)
.L80091028:
/* 91C28 80091028 3C05800F */  lui        $a1, %hi(D_800E8AA8)
/* 91C2C 8009102C 24A58AA8 */  addiu      $a1, $a1, %lo(D_800E8AA8)
/* 91C30 80091030 0C0205E4 */  jal        func_80081790
/* 91C34 80091034 AFA70020 */   sw        $a3, 0x20($sp)
/* 91C38 80091038 8FA70020 */  lw         $a3, 0x20($sp)
/* 91C3C 8009103C 00000000 */  nop
.L80091040:
/* 91C40 80091040 3C09800F */  lui        $t1, %hi(gActors)
/* 91C44 80091044 2529F510 */  addiu      $t1, $t1, %lo(gActors)
/* 91C48 80091048 97AC002A */  lhu        $t4, 0x2a($sp)
.L8009104C:
/* 91C4C 8009104C 3C014400 */  lui        $at, 0x4400
/* 91C50 80091050 000C6880 */  sll        $t5, $t4, 2
/* 91C54 80091054 01AC6823 */  subu       $t5, $t5, $t4
/* 91C58 80091058 000D6880 */  sll        $t5, $t5, 2
/* 91C5C 8009105C 01AC6821 */  addu       $t5, $t5, $t4
/* 91C60 80091060 000D6880 */  sll        $t5, $t5, 2
/* 91C64 80091064 01AC6823 */  subu       $t5, $t5, $t4
/* 91C68 80091068 000D68C0 */  sll        $t5, $t5, 3
/* 91C6C 8009106C 012D4021 */  addu       $t0, $t1, $t5
/* 91C70 80091070 C50402C4 */  lwc1       $f4, 0x2c4($t0)
/* 91C74 80091074 44813000 */  mtc1       $at, $f6
/* 91C78 80091078 8CE400EC */  lw         $a0, 0xec($a3)
/* 91C7C 8009107C 46062202 */  mul.s      $f8, $f4, $f6
/* 91C80 80091080 AFA8001C */  sw         $t0, 0x1c($sp)
/* 91C84 80091084 00002825 */  or         $a1, $zero, $zero
/* 91C88 80091088 AFA70020 */  sw         $a3, 0x20($sp)
/* 91C8C 8009108C 444EF800 */  cfc1       $t6, $31
/* 91C90 80091090 00000000 */  nop
/* 91C94 80091094 35C10003 */  ori        $at, $t6, 3
/* 91C98 80091098 38210002 */  xori       $at, $at, 2
/* 91C9C 8009109C 44C1F800 */  ctc1       $at, $31
/* 91CA0 800910A0 00000000 */  nop
/* 91CA4 800910A4 460042A4 */  cvt.w.s    $f10, $f8
/* 91CA8 800910A8 44065000 */  mfc1       $a2, $f10
/* 91CAC 800910AC 44CEF800 */  ctc1       $t6, $31
/* 91CB0 800910B0 0C00A607 */  jal        func_8002981C
/* 91CB4 800910B4 00000000 */   nop
/* 91CB8 800910B8 8FA70020 */  lw         $a3, 0x20($sp)
/* 91CBC 800910BC 8FA8001C */  lw         $t0, 0x1c($sp)
/* 91CC0 800910C0 8CE3016C */  lw         $v1, 0x16c($a3)
/* 91CC4 800910C4 3C180002 */  lui        $t8, 2
/* 91CC8 800910C8 306F0001 */  andi       $t7, $v1, 1
/* 91CCC 800910CC 11E00003 */  beqz       $t7, .L800910DC
/* 91CD0 800910D0 ACE200EC */   sw        $v0, 0xec($a3)
/* 91CD4 800910D4 8CE3016C */  lw         $v1, 0x16c($a3)
/* 91CD8 800910D8 ACF800EC */  sw         $t8, 0xec($a3)
.L800910DC:
/* 91CDC 800910DC 30790002 */  andi       $t9, $v1, 2
/* 91CE0 800910E0 13200004 */  beqz       $t9, .L800910F4
/* 91CE4 800910E4 3C0A0002 */   lui       $t2, 2
/* 91CE8 800910E8 354A8000 */  ori        $t2, $t2, 0x8000
/* 91CEC 800910EC 8CE3016C */  lw         $v1, 0x16c($a3)
/* 91CF0 800910F0 ACEA00EC */  sw         $t2, 0xec($a3)
.L800910F4:
/* 91CF4 800910F4 306B0003 */  andi       $t3, $v1, 3
/* 91CF8 800910F8 11600014 */  beqz       $t3, .L8009114C
/* 91CFC 800910FC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 91D00 80091100 8CEC00EC */  lw         $t4, 0xec($a3)
/* 91D04 80091104 C51002C4 */  lwc1       $f16, 0x2c4($t0)
/* 91D08 80091108 C51202C8 */  lwc1       $f18, 0x2c8($t0)
/* 91D0C 8009110C 448C3000 */  mtc1       $t4, $f6
/* 91D10 80091110 46128102 */  mul.s      $f4, $f16, $f18
/* 91D14 80091114 46803220 */  cvt.s.w    $f8, $f6
/* 91D18 80091118 46044282 */  mul.s      $f10, $f8, $f4
/* 91D1C 8009111C 444DF800 */  cfc1       $t5, $31
/* 91D20 80091120 00000000 */  nop
/* 91D24 80091124 35A10003 */  ori        $at, $t5, 3
/* 91D28 80091128 38210002 */  xori       $at, $at, 2
/* 91D2C 8009112C 44C1F800 */  ctc1       $at, $31
/* 91D30 80091130 00000000 */  nop
/* 91D34 80091134 46005424 */  cvt.w.s    $f16, $f10
/* 91D38 80091138 440E8000 */  mfc1       $t6, $f16
/* 91D3C 8009113C 44CDF800 */  ctc1       $t5, $31
/* 91D40 80091140 ACEE00EC */  sw         $t6, 0xec($a3)
/* 91D44 80091144 00000000 */  nop
.L80091148:
/* 91D48 80091148 8FBF0014 */  lw         $ra, 0x14($sp)
.L8009114C:
/* 91D4C 8009114C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 91D50 80091150 03E00008 */  jr         $ra
/* 91D54 80091154 00000000 */   nop

glabel func_80091158
/* 91D58 80091158 3087FFFF */  andi       $a3, $a0, 0xffff
/* 91D5C 8009115C 00077080 */  sll        $t6, $a3, 2
/* 91D60 80091160 01C77023 */  subu       $t6, $t6, $a3
/* 91D64 80091164 000E7080 */  sll        $t6, $t6, 2
/* 91D68 80091168 01C77021 */  addu       $t6, $t6, $a3
/* 91D6C 8009116C 000E7080 */  sll        $t6, $t6, 2
/* 91D70 80091170 01C77023 */  subu       $t6, $t6, $a3
/* 91D74 80091174 3C0F800F */  lui        $t7, %hi(gActors)
/* 91D78 80091178 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 91D7C 8009117C 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 91D80 80091180 000E70C0 */  sll        $t6, $t6, 3
/* 91D84 80091184 AFA40020 */  sw         $a0, 0x20($sp)
/* 91D88 80091188 01CF1821 */  addu       $v1, $t6, $t7
/* 91D8C 8009118C AFBF0014 */  sw         $ra, 0x14($sp)
/* 91D90 80091190 8C6400EC */  lw         $a0, 0xec($v1)
/* 91D94 80091194 AFA3001C */  sw         $v1, 0x1c($sp)
/* 91D98 80091198 00002825 */  or         $a1, $zero, $zero
/* 91D9C 8009119C 0C00A607 */  jal        func_8002981C
/* 91DA0 800911A0 24060800 */   addiu     $a2, $zero, 0x800
/* 91DA4 800911A4 8FA3001C */  lw         $v1, 0x1c($sp)
/* 91DA8 800911A8 3C01FFF9 */  lui        $at, 0xfff9
/* 91DAC 800911AC 8C6400F0 */  lw         $a0, 0xf0($v1)
/* 91DB0 800911B0 34218001 */  ori        $at, $at, 0x8001
/* 91DB4 800911B4 0081082A */  slt        $at, $a0, $at
/* 91DB8 800911B8 14200003 */  bnez       $at, .L800911C8
/* 91DBC 800911BC AC6200EC */   sw        $v0, 0xec($v1)
/* 91DC0 800911C0 2498BC00 */  addiu      $t8, $a0, -0x4400
/* 91DC4 800911C4 AC7800F0 */  sw         $t8, 0xf0($v1)
.L800911C8:
/* 91DC8 800911C8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 91DCC 800911CC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 91DD0 800911D0 03E00008 */  jr         $ra
/* 91DD4 800911D4 00000000 */   nop

glabel func_800911D8
/* 91DD8 800911D8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 91DDC 800911DC AFBF0014 */  sw         $ra, 0x14($sp)
/* 91DE0 800911E0 AFA40020 */  sw         $a0, 0x20($sp)
/* 91DE4 800911E4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 91DE8 800911E8 01C02025 */  or         $a0, $t6, $zero
/* 91DEC 800911EC 0C024456 */  jal        func_80091158
/* 91DF0 800911F0 A7AE0022 */   sh        $t6, 0x22($sp)
/* 91DF4 800911F4 97A40022 */  lhu        $a0, 0x22($sp)
/* 91DF8 800911F8 3C18800F */  lui        $t8, 0x800f
/* 91DFC 800911FC 00047880 */  sll        $t7, $a0, 2
/* 91E00 80091200 01E47823 */  subu       $t7, $t7, $a0
/* 91E04 80091204 000F7880 */  sll        $t7, $t7, 2
/* 91E08 80091208 01E47821 */  addu       $t7, $t7, $a0
/* 91E0C 8009120C 000F7880 */  sll        $t7, $t7, 2
/* 91E10 80091210 01E47823 */  subu       $t7, $t7, $a0
/* 91E14 80091214 000F78C0 */  sll        $t7, $t7, 3
/* 91E18 80091218 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 91E1C 8009121C 01F81821 */  addu       $v1, $t7, $t8
/* 91E20 80091220 8C790098 */  lw         $t9, 0x98($v1)
/* 91E24 80091224 00000000 */  nop
/* 91E28 80091228 33280020 */  andi       $t0, $t9, 0x20
/* 91E2C 8009122C 11000030 */  beqz       $t0, .L800912F0
/* 91E30 80091230 00001025 */   or        $v0, $zero, $zero
/* 91E34 80091234 8C6200F0 */  lw         $v0, 0xf0($v1)
/* 91E38 80091238 3C01FFFC */  lui        $at, 0xfffc
/* 91E3C 8009123C 0441002B */  bgez       $v0, .L800912EC
/* 91E40 80091240 34214000 */   ori       $at, $at, 0x4000
/* 91E44 80091244 0041082A */  slt        $at, $v0, $at
/* 91E48 80091248 1020000A */  beqz       $at, .L80091274
/* 91E4C 8009124C 240A0110 */   addiu     $t2, $zero, 0x110
/* 91E50 80091250 24090160 */  addiu      $t1, $zero, 0x160
/* 91E54 80091254 3C05800F */  lui        $a1, %hi(D_800E8BEC)
/* 91E58 80091258 A46900D0 */  sh         $t1, 0xd0($v1)
/* 91E5C 8009125C 24A58BEC */  addiu      $a1, $a1, %lo(D_800E8BEC)
/* 91E60 80091260 0C0205E4 */  jal        func_80081790
/* 91E64 80091264 AFA3001C */   sw        $v1, 0x1c($sp)
/* 91E68 80091268 8FA3001C */  lw         $v1, 0x1c($sp)
/* 91E6C 8009126C 10000003 */  b          .L8009127C
/* 91E70 80091270 8C6B0080 */   lw        $t3, 0x80($v1)
.L80091274:
/* 91E74 80091274 A46A00D0 */  sh         $t2, 0xd0($v1)
/* 91E78 80091278 8C6B0080 */  lw         $t3, 0x80($v1)
.L8009127C:
/* 91E7C 8009127C 3C01FFFD */  lui        $at, 0xfffd
/* 91E80 80091280 3421FFFF */  ori        $at, $at, 0xffff
/* 91E84 80091284 8C6F00EC */  lw         $t7, 0xec($v1)
/* 91E88 80091288 01616024 */  and        $t4, $t3, $at
/* 91E8C 8009128C 3C010001 */  lui        $at, 1
/* 91E90 80091290 448F2000 */  mtc1       $t7, $f4
/* 91E94 80091294 01817025 */  or         $t6, $t4, $at
/* 91E98 80091298 AC6C0080 */  sw         $t4, 0x80($v1)
/* 91E9C 8009129C 468021A0 */  cvt.s.w    $f6, $f4
/* 91EA0 800912A0 AC6E0080 */  sw         $t6, 0x80($v1)
/* 91EA4 800912A4 3C01800F */  lui        $at, %hi(D_800ED3F8)
/* 91EA8 800912A8 C42BD3F8 */  lwc1       $f11, %lo(D_800ED3F8)($at)
/* 91EAC 800912AC C42AD3FC */  lwc1       $f10, -0x2c04($at)
/* 91EB0 800912B0 46003221 */  cvt.d.s    $f8, $f6
/* 91EB4 800912B4 462A4402 */  mul.d      $f16, $f8, $f10
/* 91EB8 800912B8 AC6000F0 */  sw         $zero, 0xf0($v1)
/* 91EBC 800912BC AC600170 */  sw         $zero, 0x170($v1)
/* 91EC0 800912C0 24020002 */  addiu      $v0, $zero, 2
/* 91EC4 800912C4 4458F800 */  cfc1       $t8, $31
/* 91EC8 800912C8 00000000 */  nop
/* 91ECC 800912CC 37010003 */  ori        $at, $t8, 3
/* 91ED0 800912D0 38210002 */  xori       $at, $at, 2
/* 91ED4 800912D4 44C1F800 */  ctc1       $at, $31
/* 91ED8 800912D8 00000000 */  nop
/* 91EDC 800912DC 462084A4 */  cvt.w.d    $f18, $f16
/* 91EE0 800912E0 44D8F800 */  ctc1       $t8, $31
/* 91EE4 800912E4 10000002 */  b          .L800912F0
/* 91EE8 800912E8 E47200EC */   swc1      $f18, 0xec($v1)
.L800912EC:
/* 91EEC 800912EC 00001025 */  or         $v0, $zero, $zero
.L800912F0:
/* 91EF0 800912F0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 91EF4 800912F4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 91EF8 800912F8 03E00008 */  jr         $ra
/* 91EFC 800912FC 00000000 */   nop

glabel func_80091300
/* 91F00 80091300 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 91F04 80091304 AFA40018 */  sw         $a0, 0x18($sp)
/* 91F08 80091308 AFBF0014 */  sw         $ra, 0x14($sp)
/* 91F0C 8009130C 97A4001A */  lhu        $a0, 0x1a($sp)
/* 91F10 80091310 0C023C88 */  jal        func_8008F220
/* 91F14 80091314 00000000 */   nop
/* 91F18 80091318 14400025 */  bnez       $v0, .L800913B0
/* 91F1C 8009131C 3C0F800F */   lui       $t7, %hi(gActors)
/* 91F20 80091320 97A4001A */  lhu        $a0, 0x1a($sp)
/* 91F24 80091324 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 91F28 80091328 00047080 */  sll        $t6, $a0, 2
/* 91F2C 8009132C 01C47023 */  subu       $t6, $t6, $a0
/* 91F30 80091330 000E7080 */  sll        $t6, $t6, 2
/* 91F34 80091334 01C47021 */  addu       $t6, $t6, $a0
/* 91F38 80091338 000E7080 */  sll        $t6, $t6, 2
/* 91F3C 8009133C 01C47023 */  subu       $t6, $t6, $a0
/* 91F40 80091340 000E70C0 */  sll        $t6, $t6, 3
/* 91F44 80091344 01CF1021 */  addu       $v0, $t6, $t7
/* 91F48 80091348 944600D0 */  lhu        $a2, 0xd0($v0)
/* 91F4C 8009134C 24010150 */  addiu      $at, $zero, 0x150
/* 91F50 80091350 10C10006 */  beq        $a2, $at, .L8009136C
/* 91F54 80091354 00C01825 */   or        $v1, $a2, $zero
/* 91F58 80091358 24010151 */  addiu      $at, $zero, 0x151
/* 91F5C 8009135C 10610012 */  beq        $v1, $at, .L800913A8
/* 91F60 80091360 00000000 */   nop
/* 91F64 80091364 10000013 */  b          .L800913B4
/* 91F68 80091368 8FBF0014 */   lw        $ra, 0x14($sp)
.L8009136C:
/* 91F6C 8009136C 8C590080 */  lw         $t9, 0x80($v0)
/* 91F70 80091370 3C01FFFE */  lui        $at, 0xfffe
/* 91F74 80091374 3421FFFF */  ori        $at, $at, 0xffff
/* 91F78 80091378 03214024 */  and        $t0, $t9, $at
/* 91F7C 8009137C 3C010002 */  lui        $at, 2
/* 91F80 80091380 24D80001 */  addiu      $t8, $a2, 1
/* 91F84 80091384 01015025 */  or         $t2, $t0, $at
/* 91F88 80091388 AC480080 */  sw         $t0, 0x80($v0)
/* 91F8C 8009138C 3C05800F */  lui        $a1, %hi(D_800E8BD0)
/* 91F90 80091390 A45800D0 */  sh         $t8, 0xd0($v0)
/* 91F94 80091394 AC4A0080 */  sw         $t2, 0x80($v0)
/* 91F98 80091398 0C0205E4 */  jal        func_80081790
/* 91F9C 8009139C 24A58BD0 */   addiu     $a1, $a1, %lo(D_800E8BD0)
/* 91FA0 800913A0 97A4001A */  lhu        $a0, 0x1a($sp)
/* 91FA4 800913A4 00000000 */  nop
.L800913A8:
/* 91FA8 800913A8 0C024476 */  jal        func_800911D8
/* 91FAC 800913AC 00000000 */   nop
.L800913B0:
/* 91FB0 800913B0 8FBF0014 */  lw         $ra, 0x14($sp)
.L800913B4:
/* 91FB4 800913B4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 91FB8 800913B8 03E00008 */  jr         $ra
/* 91FBC 800913BC 00000000 */   nop

glabel func_800913C0
/* 91FC0 800913C0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 91FC4 800913C4 AFB00018 */  sw         $s0, 0x18($sp)
/* 91FC8 800913C8 3090FFFF */  andi       $s0, $a0, 0xffff
/* 91FCC 800913CC AFBF001C */  sw         $ra, 0x1c($sp)
/* 91FD0 800913D0 AFA40028 */  sw         $a0, 0x28($sp)
/* 91FD4 800913D4 0C023C88 */  jal        func_8008F220
/* 91FD8 800913D8 3204FFFF */   andi      $a0, $s0, 0xffff
/* 91FDC 800913DC 1440004D */  bnez       $v0, .L80091514
/* 91FE0 800913E0 00107080 */   sll       $t6, $s0, 2
/* 91FE4 800913E4 01D07023 */  subu       $t6, $t6, $s0
/* 91FE8 800913E8 000E7080 */  sll        $t6, $t6, 2
/* 91FEC 800913EC 01D07021 */  addu       $t6, $t6, $s0
/* 91FF0 800913F0 000E7080 */  sll        $t6, $t6, 2
/* 91FF4 800913F4 01D07023 */  subu       $t6, $t6, $s0
/* 91FF8 800913F8 3C0F800F */  lui        $t7, %hi(gActors)
/* 91FFC 800913FC 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 92000 80091400 000E70C0 */  sll        $t6, $t6, 3
/* 92004 80091404 01CF1021 */  addu       $v0, $t6, $t7
/* 92008 80091408 944600D0 */  lhu        $a2, 0xd0($v0)
/* 9200C 8009140C 24010170 */  addiu      $at, $zero, 0x170
/* 92010 80091410 10C1000A */  beq        $a2, $at, .L8009143C
/* 92014 80091414 00C01825 */   or        $v1, $a2, $zero
/* 92018 80091418 24010171 */  addiu      $at, $zero, 0x171
/* 9201C 8009141C 10610011 */  beq        $v1, $at, .L80091464
/* 92020 80091420 24010172 */   addiu     $at, $zero, 0x172
/* 92024 80091424 1061002D */  beq        $v1, $at, .L800914DC
/* 92028 80091428 24010173 */   addiu     $at, $zero, 0x173
/* 9202C 8009142C 10610037 */  beq        $v1, $at, .L8009150C
/* 92030 80091430 00000000 */   nop
/* 92034 80091434 10000038 */  b          .L80091518
/* 92038 80091438 8FBF001C */   lw        $ra, 0x1c($sp)
.L8009143C:
/* 9203C 8009143C 24D80001 */  addiu      $t8, $a2, 1
/* 92040 80091440 3C05800F */  lui        $a1, %hi(D_800E8B98)
/* 92044 80091444 A45800D0 */  sh         $t8, 0xd0($v0)
/* 92048 80091448 AC4000EC */  sw         $zero, 0xec($v0)
/* 9204C 8009144C 24A58B98 */  addiu      $a1, $a1, %lo(D_800E8B98)
/* 92050 80091450 3204FFFF */  andi       $a0, $s0, 0xffff
/* 92054 80091454 0C0205E4 */  jal        func_80081790
/* 92058 80091458 AFA20020 */   sw        $v0, 0x20($sp)
/* 9205C 8009145C 8FA20020 */  lw         $v0, 0x20($sp)
/* 92060 80091460 00000000 */  nop
.L80091464:
/* 92064 80091464 8C59016C */  lw         $t9, 0x16c($v0)
/* 92068 80091468 3C01FFFE */  lui        $at, 0xfffe
/* 9206C 8009146C 33280001 */  andi       $t0, $t9, 1
/* 92070 80091470 11000028 */  beqz       $t0, .L80091514
/* 92074 80091474 3421FFFF */   ori       $at, $at, 0xffff
/* 92078 80091478 00107880 */  sll        $t7, $s0, 2
/* 9207C 8009147C 8C4B0080 */  lw         $t3, 0x80($v0)
/* 92080 80091480 01F07823 */  subu       $t7, $t7, $s0
/* 92084 80091484 000F7880 */  sll        $t7, $t7, 2
/* 92088 80091488 01F07821 */  addu       $t7, $t7, $s0
/* 9208C 8009148C 01616024 */  and        $t4, $t3, $at
/* 92090 80091490 944900D0 */  lhu        $t1, 0xd0($v0)
/* 92094 80091494 000F7880 */  sll        $t7, $t7, 2
/* 92098 80091498 3C010002 */  lui        $at, 2
/* 9209C 8009149C 01F07823 */  subu       $t7, $t7, $s0
/* 920A0 800914A0 3C18800F */  lui        $t8, %hi(gActors)
/* 920A4 800914A4 AC4C0080 */  sw         $t4, 0x80($v0)
/* 920A8 800914A8 01817025 */  or         $t6, $t4, $at
/* 920AC 800914AC 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 920B0 800914B0 000F78C0 */  sll        $t7, $t7, 3
/* 920B4 800914B4 252A0001 */  addiu      $t2, $t1, 1
/* 920B8 800914B8 A44A00D0 */  sh         $t2, 0xd0($v0)
/* 920BC 800914BC AC4E0080 */  sw         $t6, 0x80($v0)
/* 920C0 800914C0 01F81821 */  addu       $v1, $t7, $t8
/* 920C4 800914C4 8C7904B0 */  lw         $t9, 0x4b0($v1)
/* 920C8 800914C8 00000000 */  nop
/* 920CC 800914CC AC5900EC */  sw         $t9, 0xec($v0)
/* 920D0 800914D0 8C680648 */  lw         $t0, 0x648($v1)
/* 920D4 800914D4 1000000F */  b          .L80091514
/* 920D8 800914D8 AC4800F0 */   sw        $t0, 0xf0($v0)
.L800914DC:
/* 920DC 800914DC 8C4900F0 */  lw         $t1, 0xf0($v0)
/* 920E0 800914E0 24CA0001 */  addiu      $t2, $a2, 1
/* 920E4 800914E4 05210005 */  bgez       $t1, .L800914FC
/* 920E8 800914E8 3204FFFF */   andi      $a0, $s0, 0xffff
/* 920EC 800914EC 3C05800F */  lui        $a1, %hi(D_800E8BD0)
/* 920F0 800914F0 A44A00D0 */  sh         $t2, 0xd0($v0)
/* 920F4 800914F4 0C0205E4 */  jal        func_80081790
/* 920F8 800914F8 24A58BD0 */   addiu     $a1, $a1, %lo(D_800E8BD0)
.L800914FC:
/* 920FC 800914FC 0C024476 */  jal        func_800911D8
/* 92100 80091500 3204FFFF */   andi      $a0, $s0, 0xffff
/* 92104 80091504 10000004 */  b          .L80091518
/* 92108 80091508 8FBF001C */   lw        $ra, 0x1c($sp)
.L8009150C:
/* 9210C 8009150C 0C024476 */  jal        func_800911D8
/* 92110 80091510 3204FFFF */   andi      $a0, $s0, 0xffff
.L80091514:
/* 92114 80091514 8FBF001C */  lw         $ra, 0x1c($sp)
.L80091518:
/* 92118 80091518 8FB00018 */  lw         $s0, 0x18($sp)
/* 9211C 8009151C 03E00008 */  jr         $ra
/* 92120 80091520 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80091524
/* 92124 80091524 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92128 80091528 AFA40018 */  sw         $a0, 0x18($sp)
/* 9212C 8009152C AFBF0014 */  sw         $ra, 0x14($sp)
/* 92130 80091530 97A4001A */  lhu        $a0, 0x1a($sp)
/* 92134 80091534 0C023C5A */  jal        func_8008F168
/* 92138 80091538 00000000 */   nop
/* 9213C 8009153C 14400013 */  bnez       $v0, .L8009158C
/* 92140 80091540 3C18800F */   lui       $t8, %hi(gActors)
/* 92144 80091544 97AE001A */  lhu        $t6, 0x1a($sp)
/* 92148 80091548 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 9214C 8009154C 000E7880 */  sll        $t7, $t6, 2
/* 92150 80091550 01EE7823 */  subu       $t7, $t7, $t6
/* 92154 80091554 000F7880 */  sll        $t7, $t7, 2
/* 92158 80091558 01EE7821 */  addu       $t7, $t7, $t6
/* 9215C 8009155C 000F7880 */  sll        $t7, $t7, 2
/* 92160 80091560 01EE7823 */  subu       $t7, $t7, $t6
/* 92164 80091564 000F78C0 */  sll        $t7, $t7, 3
/* 92168 80091568 01F81021 */  addu       $v0, $t7, $t8
/* 9216C 8009156C C444011C */  lwc1       $f4, 0x11c($v0)
/* 92170 80091570 44803000 */  mtc1       $zero, $f6
/* 92174 80091574 24190110 */  addiu      $t9, $zero, 0x110
/* 92178 80091578 4606203C */  c.lt.s     $f4, $f6
/* 9217C 8009157C 00000000 */  nop
/* 92180 80091580 45000003 */  bc1f       .L80091590
/* 92184 80091584 8FBF0014 */   lw        $ra, 0x14($sp)
/* 92188 80091588 A45900D0 */  sh         $t9, 0xd0($v0)
.L8009158C:
/* 9218C 8009158C 8FBF0014 */  lw         $ra, 0x14($sp)
.L80091590:
/* 92190 80091590 27BD0018 */  addiu      $sp, $sp, 0x18
/* 92194 80091594 03E00008 */  jr         $ra
/* 92198 80091598 00000000 */   nop

glabel func_8009159C
/* 9219C 8009159C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 921A0 800915A0 AFA40028 */  sw         $a0, 0x28($sp)
/* 921A4 800915A4 97A6002A */  lhu        $a2, 0x2a($sp)
/* 921A8 800915A8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 921AC 800915AC 24C60007 */  addiu      $a2, $a2, 7
/* 921B0 800915B0 30C7FFFF */  andi       $a3, $a2, 0xffff
/* 921B4 800915B4 30E4FFFF */  andi       $a0, $a3, 0xffff
/* 921B8 800915B8 AFA7001C */  sw         $a3, 0x1c($sp)
/* 921BC 800915BC 0C00A302 */  jal        func_80028C08
/* 921C0 800915C0 AFA60020 */   sw        $a2, 0x20($sp)
/* 921C4 800915C4 8FA60020 */  lw         $a2, 0x20($sp)
/* 921C8 800915C8 8FA7001C */  lw         $a3, 0x1c($sp)
/* 921CC 800915CC 10400017 */  beqz       $v0, .L8009162C
/* 921D0 800915D0 24090198 */   addiu     $t1, $zero, 0x198
/* 921D4 800915D4 00E90019 */  multu      $a3, $t1
/* 921D8 800915D8 3C08800F */  lui        $t0, %hi(gActors)
/* 921DC 800915DC 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 921E0 800915E0 24020001 */  addiu      $v0, $zero, 1
/* 921E4 800915E4 00007012 */  mflo       $t6
/* 921E8 800915E8 010E2021 */  addu       $a0, $t0, $t6
/* 921EC 800915EC 948500D6 */  lhu        $a1, 0xd6($a0)
/* 921F0 800915F0 8C980088 */  lw         $t8, 0x88($a0)
/* 921F4 800915F4 00A90019 */  multu      $a1, $t1
/* 921F8 800915F8 00007812 */  mflo       $t7
/* 921FC 800915FC 010F1821 */  addu       $v1, $t0, $t7
/* 92200 80091600 AC780104 */  sw         $t8, 0x104($v1)
/* 92204 80091604 8C99008C */  lw         $t9, 0x8c($a0)
/* 92208 80091608 8C6C0098 */  lw         $t4, 0x98($v1)
/* 9220C 8009160C AC790108 */  sw         $t9, 0x108($v1)
/* 92210 80091610 8C8A0090 */  lw         $t2, 0x90($a0)
/* 92214 80091614 358D0200 */  ori        $t5, $t4, 0x200
/* 92218 80091618 254BFFFF */  addiu      $t3, $t2, -1
/* 9221C 8009161C AC6B010C */  sw         $t3, 0x10c($v1)
/* 92220 80091620 AC6D0098 */  sw         $t5, 0x98($v1)
/* 92224 80091624 1000000B */  b          .L80091654
/* 92228 80091628 A46600D6 */   sh        $a2, 0xd6($v1)
.L8009162C:
/* 9222C 8009162C 97AF002A */  lhu        $t7, 0x2a($sp)
/* 92230 80091630 24090198 */  addiu      $t1, $zero, 0x198
/* 92234 80091634 01E90019 */  multu      $t7, $t1
/* 92238 80091638 3C08800F */  lui        $t0, %hi(gActors)
/* 9223C 8009163C 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 92240 80091640 240E0110 */  addiu      $t6, $zero, 0x110
/* 92244 80091644 00001025 */  or         $v0, $zero, $zero
/* 92248 80091648 0000C012 */  mflo       $t8
/* 9224C 8009164C 0118C821 */  addu       $t9, $t0, $t8
/* 92250 80091650 A72E00D0 */  sh         $t6, 0xd0($t9)
.L80091654:
/* 92254 80091654 8FBF0014 */  lw         $ra, 0x14($sp)
/* 92258 80091658 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9225C 8009165C 03E00008 */  jr         $ra
/* 92260 80091660 00000000 */   nop

glabel func_80091664
/* 92264 80091664 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 92268 80091668 AFB00018 */  sw         $s0, 0x18($sp)
/* 9226C 8009166C 3090FFFF */  andi       $s0, $a0, 0xffff
/* 92270 80091670 AFBF001C */  sw         $ra, 0x1c($sp)
/* 92274 80091674 AFA40038 */  sw         $a0, 0x38($sp)
/* 92278 80091678 0C023C5A */  jal        func_8008F168
/* 9227C 8009167C 3204FFFF */   andi      $a0, $s0, 0xffff
/* 92280 80091680 1440008E */  bnez       $v0, .L800918BC
/* 92284 80091684 24090198 */   addiu     $t1, $zero, 0x198
/* 92288 80091688 02090019 */  multu      $s0, $t1
/* 9228C 8009168C 3C08800F */  lui        $t0, %hi(gActors)
/* 92290 80091690 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 92294 80091694 24010180 */  addiu      $at, $zero, 0x180
/* 92298 80091698 3C05800F */  lui        $a1, %hi(D_800E8D1C)
/* 9229C 8009169C 24A58D1C */  addiu      $a1, $a1, %lo(D_800E8D1C)
/* 922A0 800916A0 3204FFFF */  andi       $a0, $s0, 0xffff
/* 922A4 800916A4 00007012 */  mflo       $t6
/* 922A8 800916A8 010E3821 */  addu       $a3, $t0, $t6
/* 922AC 800916AC 94E300D0 */  lhu        $v1, 0xd0($a3)
/* 922B0 800916B0 00000000 */  nop
/* 922B4 800916B4 10610008 */  beq        $v1, $at, .L800916D8
/* 922B8 800916B8 00601025 */   or        $v0, $v1, $zero
/* 922BC 800916BC 24010181 */  addiu      $at, $zero, 0x181
/* 922C0 800916C0 1041000E */  beq        $v0, $at, .L800916FC
/* 922C4 800916C4 24010182 */   addiu     $at, $zero, 0x182
/* 922C8 800916C8 10410073 */  beq        $v0, $at, .L80091898
/* 922CC 800916CC 00000000 */   nop
/* 922D0 800916D0 1000007D */  b          .L800918C8
/* 922D4 800916D4 8FBF001C */   lw        $ra, 0x1c($sp)
.L800916D8:
/* 922D8 800916D8 246F0001 */  addiu      $t7, $v1, 1
/* 922DC 800916DC A4EF00D0 */  sh         $t7, 0xd0($a3)
/* 922E0 800916E0 ACE000EC */  sw         $zero, 0xec($a3)
/* 922E4 800916E4 0C0205E4 */  jal        func_80081790
/* 922E8 800916E8 AFA7002C */   sw        $a3, 0x2c($sp)
/* 922EC 800916EC 3C08800F */  lui        $t0, %hi(gActors)
/* 922F0 800916F0 8FA7002C */  lw         $a3, 0x2c($sp)
/* 922F4 800916F4 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 922F8 800916F8 24090198 */  addiu      $t1, $zero, 0x198
.L800916FC:
/* 922FC 800916FC 8CF8016C */  lw         $t8, 0x16c($a3)
/* 92300 80091700 00105080 */  sll        $t2, $s0, 2
/* 92304 80091704 33190002 */  andi       $t9, $t8, 2
/* 92308 80091708 1320002F */  beqz       $t9, .L800917C8
/* 9230C 8009170C 01505023 */   subu      $t2, $t2, $s0
/* 92310 80091710 000A5080 */  sll        $t2, $t2, 2
/* 92314 80091714 26040007 */  addiu      $a0, $s0, 7
/* 92318 80091718 308BFFFF */  andi       $t3, $a0, 0xffff
/* 9231C 8009171C 01505021 */  addu       $t2, $t2, $s0
/* 92320 80091720 000A5080 */  sll        $t2, $t2, 2
/* 92324 80091724 01602025 */  or         $a0, $t3, $zero
/* 92328 80091728 44842000 */  mtc1       $a0, $f4
/* 9232C 8009172C 01505023 */  subu       $t2, $t2, $s0
/* 92330 80091730 000A50C0 */  sll        $t2, $t2, 3
/* 92334 80091734 010A3021 */  addu       $a2, $t0, $t2
/* 92338 80091738 05610005 */  bgez       $t3, .L80091750
/* 9233C 8009173C 468021A0 */   cvt.s.w   $f6, $f4
/* 92340 80091740 3C014F80 */  lui        $at, 0x4f80
/* 92344 80091744 44814000 */  mtc1       $at, $f8
/* 92348 80091748 00000000 */  nop
/* 9234C 8009174C 46083180 */  add.s      $f6, $f6, $f8
.L80091750:
/* 92350 80091750 00890019 */  multu      $a0, $t1
/* 92354 80091754 E4C60440 */  swc1       $f6, 0x440($a2)
/* 92358 80091758 3C0140E0 */  lui        $at, 0x40e0
/* 9235C 8009175C 44818000 */  mtc1       $at, $f16
/* 92360 80091760 AFA7002C */  sw         $a3, 0x2c($sp)
/* 92364 80091764 00006012 */  mflo       $t4
/* 92368 80091768 010C1021 */  addu       $v0, $t0, $t4
/* 9236C 8009176C 8C4D0080 */  lw         $t5, 0x80($v0)
/* 92370 80091770 00000000 */  nop
/* 92374 80091774 35AE0800 */  ori        $t6, $t5, 0x800
/* 92378 80091778 AC4E0080 */  sw         $t6, 0x80($v0)
/* 9237C 8009177C C4CA02C4 */  lwc1       $f10, 0x2c4($a2)
/* 92380 80091780 00000000 */  nop
/* 92384 80091784 46105482 */  mul.s      $f18, $f10, $f16
/* 92388 80091788 444FF800 */  cfc1       $t7, $31
/* 9238C 8009178C 00000000 */  nop
/* 92390 80091790 35E10003 */  ori        $at, $t7, 3
/* 92394 80091794 38210002 */  xori       $at, $at, 2
/* 92398 80091798 44C1F800 */  ctc1       $at, $31
/* 9239C 8009179C 00000000 */  nop
/* 923A0 800917A0 46009124 */  cvt.w.s    $f4, $f18
/* 923A4 800917A4 44052000 */  mfc1       $a1, $f4
/* 923A8 800917A8 44CFF800 */  ctc1       $t7, $31
/* 923AC 800917AC 0005C400 */  sll        $t8, $a1, 0x10
/* 923B0 800917B0 0C00AAF9 */  jal        func_8002ABE4
/* 923B4 800917B4 00182C03 */   sra       $a1, $t8, 0x10
/* 923B8 800917B8 3C08800F */  lui        $t0, %hi(gActors)
/* 923BC 800917BC 8FA7002C */  lw         $a3, 0x2c($sp)
/* 923C0 800917C0 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 923C4 800917C4 24090198 */  addiu      $t1, $zero, 0x198
.L800917C8:
/* 923C8 800917C8 260A0007 */  addiu      $t2, $s0, 7
/* 923CC 800917CC 314BFFFF */  andi       $t3, $t2, 0xffff
/* 923D0 800917D0 01690019 */  multu      $t3, $t1
/* 923D4 800917D4 02001825 */  or         $v1, $s0, $zero
/* 923D8 800917D8 00006012 */  mflo       $t4
/* 923DC 800917DC 010C1021 */  addu       $v0, $t0, $t4
/* 923E0 800917E0 8C4D0098 */  lw         $t5, 0x98($v0)
/* 923E4 800917E4 00000000 */  nop
/* 923E8 800917E8 31AE0100 */  andi       $t6, $t5, 0x100
/* 923EC 800917EC 11C00017 */  beqz       $t6, .L8009184C
/* 923F0 800917F0 00000000 */   nop
/* 923F4 800917F4 944400D6 */  lhu        $a0, 0xd6($v0)
/* 923F8 800917F8 00000000 */  nop
/* 923FC 800917FC 10640013 */  beq        $v1, $a0, .L8009184C
/* 92400 80091800 00000000 */   nop
/* 92404 80091804 00890019 */  multu      $a0, $t1
/* 92408 80091808 240B0190 */  addiu      $t3, $zero, 0x190
/* 9240C 8009180C 2401F7FF */  addiu      $at, $zero, -0x801
/* 92410 80091810 00007812 */  mflo       $t7
/* 92414 80091814 010FC021 */  addu       $t8, $t0, $t7
/* 92418 80091818 931900DF */  lbu        $t9, 0xdf($t8)
/* 9241C 8009181C 00000000 */  nop
/* 92420 80091820 332A0040 */  andi       $t2, $t9, 0x40
/* 92424 80091824 15400009 */  bnez       $t2, .L8009184C
/* 92428 80091828 00000000 */   nop
/* 9242C 8009182C A4EB00D0 */  sh         $t3, 0xd0($a3)
/* 92430 80091830 8C4C0080 */  lw         $t4, 0x80($v0)
/* 92434 80091834 3204FFFF */  andi       $a0, $s0, 0xffff
/* 92438 80091838 01816824 */  and        $t5, $t4, $at
/* 9243C 8009183C 0C024567 */  jal        func_8009159C
/* 92440 80091840 AC4D0080 */   sw        $t5, 0x80($v0)
/* 92444 80091844 10000020 */  b          .L800918C8
/* 92448 80091848 8FBF001C */   lw        $ra, 0x1c($sp)
.L8009184C:
/* 9244C 8009184C C4E8011C */  lwc1       $f8, 0x11c($a3)
/* 92450 80091850 44803000 */  mtc1       $zero, $f6
/* 92454 80091854 3C05800F */  lui        $a1, %hi(D_800E8D3C)
/* 92458 80091858 4606403C */  c.lt.s     $f8, $f6
/* 9245C 8009185C 24A58D3C */  addiu      $a1, $a1, %lo(D_800E8D3C)
/* 92460 80091860 45000018 */  bc1f       .L800918C4
/* 92464 80091864 3204FFFF */   andi      $a0, $s0, 0xffff
/* 92468 80091868 94EE00D0 */  lhu        $t6, 0xd0($a3)
/* 9246C 8009186C AFA20024 */  sw         $v0, 0x24($sp)
/* 92470 80091870 25CF0001 */  addiu      $t7, $t6, 1
/* 92474 80091874 0C0205E4 */  jal        func_80081790
/* 92478 80091878 A4EF00D0 */   sh        $t7, 0xd0($a3)
/* 9247C 8009187C 8FA20024 */  lw         $v0, 0x24($sp)
/* 92480 80091880 2401F7FF */  addiu      $at, $zero, -0x801
/* 92484 80091884 8C580080 */  lw         $t8, 0x80($v0)
/* 92488 80091888 00000000 */  nop
/* 9248C 8009188C 0301C824 */  and        $t9, $t8, $at
/* 92490 80091890 1000000C */  b          .L800918C4
/* 92494 80091894 AC590080 */   sw        $t9, 0x80($v0)
.L80091898:
/* 92498 80091898 C4EA011C */  lwc1       $f10, 0x11c($a3)
/* 9249C 8009189C 44808000 */  mtc1       $zero, $f16
/* 924A0 800918A0 240A0110 */  addiu      $t2, $zero, 0x110
/* 924A4 800918A4 4610503C */  c.lt.s     $f10, $f16
/* 924A8 800918A8 00000000 */  nop
/* 924AC 800918AC 45000006 */  bc1f       .L800918C8
/* 924B0 800918B0 8FBF001C */   lw        $ra, 0x1c($sp)
/* 924B4 800918B4 10000003 */  b          .L800918C4
/* 924B8 800918B8 A4EA00D0 */   sh        $t2, 0xd0($a3)
.L800918BC:
/* 924BC 800918BC 0C023A93 */  jal        func_8008EA4C
/* 924C0 800918C0 3204FFFF */   andi      $a0, $s0, 0xffff
.L800918C4:
/* 924C4 800918C4 8FBF001C */  lw         $ra, 0x1c($sp)
.L800918C8:
/* 924C8 800918C8 8FB00018 */  lw         $s0, 0x18($sp)
/* 924CC 800918CC 03E00008 */  jr         $ra
/* 924D0 800918D0 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800918D4
/* 924D4 800918D4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 924D8 800918D8 AFB00018 */  sw         $s0, 0x18($sp)
/* 924DC 800918DC 3090FFFF */  andi       $s0, $a0, 0xffff
/* 924E0 800918E0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 924E4 800918E4 AFA40028 */  sw         $a0, 0x28($sp)
/* 924E8 800918E8 0C023C5A */  jal        func_8008F168
/* 924EC 800918EC 3204FFFF */   andi      $a0, $s0, 0xffff
/* 924F0 800918F0 14400031 */  bnez       $v0, .L800919B8
/* 924F4 800918F4 00107080 */   sll       $t6, $s0, 2
/* 924F8 800918F8 01D07023 */  subu       $t6, $t6, $s0
/* 924FC 800918FC 000E7080 */  sll        $t6, $t6, 2
/* 92500 80091900 01D07021 */  addu       $t6, $t6, $s0
/* 92504 80091904 000E7080 */  sll        $t6, $t6, 2
/* 92508 80091908 01D07023 */  subu       $t6, $t6, $s0
/* 9250C 8009190C 3C0F800F */  lui        $t7, %hi(gActors)
/* 92510 80091910 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 92514 80091914 000E70C0 */  sll        $t6, $t6, 3
/* 92518 80091918 01CF1821 */  addu       $v1, $t6, $t7
/* 9251C 8009191C 946200D0 */  lhu        $v0, 0xd0($v1)
/* 92520 80091920 24010190 */  addiu      $at, $zero, 0x190
/* 92524 80091924 10410005 */  beq        $v0, $at, .L8009193C
/* 92528 80091928 24010191 */   addiu     $at, $zero, 0x191
/* 9252C 8009192C 10410013 */  beq        $v0, $at, .L8009197C
/* 92530 80091930 3204FFFF */   andi      $a0, $s0, 0xffff
/* 92534 80091934 10000021 */  b          .L800919BC
/* 92538 80091938 8FBF001C */   lw        $ra, 0x1c($sp)
.L8009193C:
/* 9253C 8009193C C464011C */  lwc1       $f4, 0x11c($v1)
/* 92540 80091940 44803000 */  mtc1       $zero, $f6
/* 92544 80091944 AC6000EC */  sw         $zero, 0xec($v1)
/* 92548 80091948 4606203C */  c.lt.s     $f4, $f6
/* 9254C 8009194C 3204FFFF */  andi       $a0, $s0, 0xffff
/* 92550 80091950 45000006 */  bc1f       .L8009196C
/* 92554 80091954 3C05800F */   lui       $a1, %hi(D_800E8D4C)
/* 92558 80091958 947800D0 */  lhu        $t8, 0xd0($v1)
/* 9255C 8009195C 24A58D4C */  addiu      $a1, $a1, %lo(D_800E8D4C)
/* 92560 80091960 27190001 */  addiu      $t9, $t8, 1
/* 92564 80091964 0C0205E4 */  jal        func_80081790
/* 92568 80091968 A47900D0 */   sh        $t9, 0xd0($v1)
.L8009196C:
/* 9256C 8009196C 0C024567 */  jal        func_8009159C
/* 92570 80091970 3204FFFF */   andi      $a0, $s0, 0xffff
/* 92574 80091974 10000011 */  b          .L800919BC
/* 92578 80091978 8FBF001C */   lw        $ra, 0x1c($sp)
.L8009197C:
/* 9257C 8009197C 0C023C42 */  jal        func_8008F108
/* 92580 80091980 AFA30020 */   sw        $v1, 0x20($sp)
/* 92584 80091984 0C024567 */  jal        func_8009159C
/* 92588 80091988 3204FFFF */   andi      $a0, $s0, 0xffff
/* 9258C 8009198C 8FA30020 */  lw         $v1, 0x20($sp)
/* 92590 80091990 1040000A */  beqz       $v0, .L800919BC
/* 92594 80091994 8FBF001C */   lw        $ra, 0x1c($sp)
/* 92598 80091998 C468011C */  lwc1       $f8, 0x11c($v1)
/* 9259C 8009199C 44805000 */  mtc1       $zero, $f10
/* 925A0 800919A0 240801A0 */  addiu      $t0, $zero, 0x1a0
/* 925A4 800919A4 460A403C */  c.lt.s     $f8, $f10
/* 925A8 800919A8 00000000 */  nop
/* 925AC 800919AC 45000003 */  bc1f       .L800919BC
/* 925B0 800919B0 8FBF001C */   lw        $ra, 0x1c($sp)
/* 925B4 800919B4 A46800D0 */  sh         $t0, 0xd0($v1)
.L800919B8:
/* 925B8 800919B8 8FBF001C */  lw         $ra, 0x1c($sp)
.L800919BC:
/* 925BC 800919BC 8FB00018 */  lw         $s0, 0x18($sp)
/* 925C0 800919C0 03E00008 */  jr         $ra
/* 925C4 800919C4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800919C8
/* 925C8 800919C8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 925CC 800919CC AFA40028 */  sw         $a0, 0x28($sp)
/* 925D0 800919D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 925D4 800919D4 97A4002A */  lhu        $a0, 0x2a($sp)
/* 925D8 800919D8 0C023C5A */  jal        func_8008F168
/* 925DC 800919DC 00000000 */   nop
/* 925E0 800919E0 1440007A */  bnez       $v0, .L80091BCC
/* 925E4 800919E4 3C0F800F */   lui       $t7, %hi(gActors)
/* 925E8 800919E8 97A4002A */  lhu        $a0, 0x2a($sp)
/* 925EC 800919EC 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 925F0 800919F0 00047080 */  sll        $t6, $a0, 2
/* 925F4 800919F4 01C47023 */  subu       $t6, $t6, $a0
/* 925F8 800919F8 000E7080 */  sll        $t6, $t6, 2
/* 925FC 800919FC 01C47021 */  addu       $t6, $t6, $a0
/* 92600 80091A00 000E7080 */  sll        $t6, $t6, 2
/* 92604 80091A04 01C47023 */  subu       $t6, $t6, $a0
/* 92608 80091A08 000E70C0 */  sll        $t6, $t6, 3
/* 9260C 80091A0C 01CF3021 */  addu       $a2, $t6, $t7
/* 92610 80091A10 94C300D0 */  lhu        $v1, 0xd0($a2)
/* 92614 80091A14 240101A0 */  addiu      $at, $zero, 0x1a0
/* 92618 80091A18 10610008 */  beq        $v1, $at, .L80091A3C
/* 9261C 80091A1C 00601025 */   or        $v0, $v1, $zero
/* 92620 80091A20 240101A1 */  addiu      $at, $zero, 0x1a1
/* 92624 80091A24 1041000E */  beq        $v0, $at, .L80091A60
/* 92628 80091A28 240101A2 */   addiu     $at, $zero, 0x1a2
/* 9262C 80091A2C 1041005F */  beq        $v0, $at, .L80091BAC
/* 92630 80091A30 00000000 */   nop
/* 92634 80091A34 10000066 */  b          .L80091BD0
/* 92638 80091A38 8FBF0014 */   lw        $ra, 0x14($sp)
.L80091A3C:
/* 9263C 80091A3C 24780001 */  addiu      $t8, $v1, 1
/* 92640 80091A40 3C05800F */  lui        $a1, %hi(D_800E8D60)
/* 92644 80091A44 A4D800D0 */  sh         $t8, 0xd0($a2)
/* 92648 80091A48 24A58D60 */  addiu      $a1, $a1, %lo(D_800E8D60)
/* 9264C 80091A4C 0C0205E4 */  jal        func_80081790
/* 92650 80091A50 AFA60018 */   sw        $a2, 0x18($sp)
/* 92654 80091A54 8FA60018 */  lw         $a2, 0x18($sp)
/* 92658 80091A58 97A4002A */  lhu        $a0, 0x2a($sp)
/* 9265C 80091A5C 00000000 */  nop
.L80091A60:
/* 92660 80091A60 0C024567 */  jal        func_8009159C
/* 92664 80091A64 AFA60018 */   sw        $a2, 0x18($sp)
/* 92668 80091A68 8FA60018 */  lw         $a2, 0x18($sp)
/* 9266C 80091A6C 10400057 */  beqz       $v0, .L80091BCC
/* 92670 80091A70 3C09800F */   lui       $t1, %hi(gActors)
/* 92674 80091A74 97B9002A */  lhu        $t9, 0x2a($sp)
/* 92678 80091A78 2529F510 */  addiu      $t1, $t1, %lo(gActors)
/* 9267C 80091A7C 00194080 */  sll        $t0, $t9, 2
/* 92680 80091A80 01194023 */  subu       $t0, $t0, $t9
/* 92684 80091A84 00084080 */  sll        $t0, $t0, 2
/* 92688 80091A88 01194021 */  addu       $t0, $t0, $t9
/* 9268C 80091A8C 00084080 */  sll        $t0, $t0, 2
/* 92690 80091A90 01194023 */  subu       $t0, $t0, $t9
/* 92694 80091A94 000840C0 */  sll        $t0, $t0, 3
/* 92698 80091A98 8CCA016C */  lw         $t2, 0x16c($a2)
/* 9269C 80091A9C 01091821 */  addu       $v1, $t0, $t1
/* 926A0 80091AA0 94640BFE */  lhu        $a0, 0xbfe($v1)
/* 926A4 80091AA4 314B0002 */  andi       $t3, $t2, 2
/* 926A8 80091AA8 11600048 */  beqz       $t3, .L80091BCC
/* 926AC 80091AAC 00047080 */   sll       $t6, $a0, 2
/* 926B0 80091AB0 01C47023 */  subu       $t6, $t6, $a0
/* 926B4 80091AB4 000E7080 */  sll        $t6, $t6, 2
/* 926B8 80091AB8 01C47021 */  addu       $t6, $t6, $a0
/* 926BC 80091ABC 94CC00D0 */  lhu        $t4, 0xd0($a2)
/* 926C0 80091AC0 000E7080 */  sll        $t6, $t6, 2
/* 926C4 80091AC4 01C47023 */  subu       $t6, $t6, $a0
/* 926C8 80091AC8 3C0F800F */  lui        $t7, %hi(gActors)
/* 926CC 80091ACC 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 926D0 80091AD0 000E70C0 */  sll        $t6, $t6, 3
/* 926D4 80091AD4 258D0001 */  addiu      $t5, $t4, 1
/* 926D8 80091AD8 A4CD00D0 */  sh         $t5, 0xd0($a2)
/* 926DC 80091ADC 01CF1021 */  addu       $v0, $t6, $t7
/* 926E0 80091AE0 8C580098 */  lw         $t8, 0x98($v0)
/* 926E4 80091AE4 2401FDFF */  addiu      $at, $zero, -0x201
/* 926E8 80091AE8 0301C824 */  and        $t9, $t8, $at
/* 926EC 80091AEC AC590098 */  sw         $t9, 0x98($v0)
/* 926F0 80091AF0 37290400 */  ori        $t1, $t9, 0x400
/* 926F4 80091AF4 14800014 */  bnez       $a0, .L80091B48
/* 926F8 80091AF8 AC490098 */   sw        $t1, 0x98($v0)
/* 926FC 80091AFC 8C6A04B0 */  lw         $t2, 0x4b0($v1)
/* 92700 80091B00 C46402C8 */  lwc1       $f4, 0x2c8($v1)
/* 92704 80091B04 448A3000 */  mtc1       $t2, $f6
/* 92708 80091B08 00000000 */  nop
/* 9270C 80091B0C 46803220 */  cvt.s.w    $f8, $f6
/* 92710 80091B10 46082282 */  mul.s      $f10, $f4, $f8
/* 92714 80091B14 444BF800 */  cfc1       $t3, $31
/* 92718 80091B18 00000000 */  nop
/* 9271C 80091B1C 35610003 */  ori        $at, $t3, 3
/* 92720 80091B20 38210002 */  xori       $at, $at, 2
/* 92724 80091B24 44C1F800 */  ctc1       $at, $31
/* 92728 80091B28 00000000 */  nop
/* 9272C 80091B2C 46005424 */  cvt.w.s    $f16, $f10
/* 92730 80091B30 440C8000 */  mfc1       $t4, $f16
/* 92734 80091B34 44CBF800 */  ctc1       $t3, $31
/* 92738 80091B38 AC4C00F8 */  sw         $t4, 0xf8($v0)
/* 9273C 80091B3C 8C6D0648 */  lw         $t5, 0x648($v1)
/* 92740 80091B40 10000022 */  b          .L80091BCC
/* 92744 80091B44 AC4D00FC */   sw        $t5, 0xfc($v0)
.L80091B48:
/* 92748 80091B48 944500CE */  lhu        $a1, 0xce($v0)
/* 9274C 80091B4C 3C18800E */  lui        $t8, %hi(D_800E3630)
/* 92750 80091B50 00057080 */  sll        $t6, $a1, 2
/* 92754 80091B54 01C57021 */  addu       $t6, $t6, $a1
/* 92758 80091B58 000E78C0 */  sll        $t7, $t6, 3
/* 9275C 80091B5C 27183630 */  addiu      $t8, $t8, %lo(D_800E3630)
/* 92760 80091B60 01F82021 */  addu       $a0, $t7, $t8
/* 92764 80091B64 8C990010 */  lw         $t9, 0x10($a0)
/* 92768 80091B68 C47202C8 */  lwc1       $f18, 0x2c8($v1)
/* 9276C 80091B6C 44993000 */  mtc1       $t9, $f6
/* 92770 80091B70 8C8A0014 */  lw         $t2, 0x14($a0)
/* 92774 80091B74 46803120 */  cvt.s.w    $f4, $f6
/* 92778 80091B78 AC4A00FC */  sw         $t2, 0xfc($v0)
/* 9277C 80091B7C 46049202 */  mul.s      $f8, $f18, $f4
/* 92780 80091B80 4448F800 */  cfc1       $t0, $31
/* 92784 80091B84 00000000 */  nop
/* 92788 80091B88 35010003 */  ori        $at, $t0, 3
/* 9278C 80091B8C 38210002 */  xori       $at, $at, 2
/* 92790 80091B90 44C1F800 */  ctc1       $at, $31
/* 92794 80091B94 00000000 */  nop
/* 92798 80091B98 460042A4 */  cvt.w.s    $f10, $f8
/* 9279C 80091B9C 44095000 */  mfc1       $t1, $f10
/* 927A0 80091BA0 44C8F800 */  ctc1       $t0, $31
/* 927A4 80091BA4 10000009 */  b          .L80091BCC
/* 927A8 80091BA8 AC4900F8 */   sw        $t1, 0xf8($v0)
.L80091BAC:
/* 927AC 80091BAC C4D0011C */  lwc1       $f16, 0x11c($a2)
/* 927B0 80091BB0 44803000 */  mtc1       $zero, $f6
/* 927B4 80091BB4 240B0110 */  addiu      $t3, $zero, 0x110
/* 927B8 80091BB8 4606803C */  c.lt.s     $f16, $f6
/* 927BC 80091BBC 00000000 */  nop
/* 927C0 80091BC0 45000003 */  bc1f       .L80091BD0
/* 927C4 80091BC4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 927C8 80091BC8 A4CB00D0 */  sh         $t3, 0xd0($a2)
.L80091BCC:
/* 927CC 80091BCC 8FBF0014 */  lw         $ra, 0x14($sp)
.L80091BD0:
/* 927D0 80091BD0 27BD0028 */  addiu      $sp, $sp, 0x28
/* 927D4 80091BD4 03E00008 */  jr         $ra
/* 927D8 80091BD8 00000000 */   nop

glabel func_80091BDC
/* 927DC 80091BDC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 927E0 80091BE0 AFA40020 */  sw         $a0, 0x20($sp)
/* 927E4 80091BE4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 927E8 80091BE8 97A40022 */  lhu        $a0, 0x22($sp)
/* 927EC 80091BEC 0C010216 */  jal        func_80040858
/* 927F0 80091BF0 00000000 */   nop
/* 927F4 80091BF4 3C0E0002 */  lui        $t6, 2
/* 927F8 80091BF8 35CE1423 */  ori        $t6, $t6, 0x1423
/* 927FC 80091BFC 97A40022 */  lhu        $a0, 0x22($sp)
/* 92800 80091C00 3C060002 */  lui        $a2, 2
/* 92804 80091C04 34C614A3 */  ori        $a2, $a2, 0x14a3
/* 92808 80091C08 AFAE0010 */  sw         $t6, 0x10($sp)
/* 9280C 80091C0C 240501C0 */  addiu      $a1, $zero, 0x1c0
/* 92810 80091C10 0C00A46B */  jal        func_800291AC
/* 92814 80091C14 24070150 */   addiu     $a3, $zero, 0x150
/* 92818 80091C18 1040000A */  beqz       $v0, .L80091C44
/* 9281C 80091C1C 00401825 */   or        $v1, $v0, $zero
/* 92820 80091C20 24010001 */  addiu      $at, $zero, 1
/* 92824 80091C24 10410016 */  beq        $v0, $at, .L80091C80
/* 92828 80091C28 24010002 */   addiu     $at, $zero, 2
/* 9282C 80091C2C 10610014 */  beq        $v1, $at, .L80091C80
/* 92830 80091C30 24010003 */   addiu     $at, $zero, 3
/* 92834 80091C34 10610013 */  beq        $v1, $at, .L80091C84
/* 92838 80091C38 8FBF001C */   lw        $ra, 0x1c($sp)
/* 9283C 80091C3C 10000011 */  b          .L80091C84
/* 92840 80091C40 8FBF001C */   lw        $ra, 0x1c($sp)
.L80091C44:
/* 92844 80091C44 97AF0022 */  lhu        $t7, 0x22($sp)
/* 92848 80091C48 3C19800F */  lui        $t9, 0x800f
/* 9284C 80091C4C 000FC080 */  sll        $t8, $t7, 2
/* 92850 80091C50 030FC023 */  subu       $t8, $t8, $t7
/* 92854 80091C54 0018C080 */  sll        $t8, $t8, 2
/* 92858 80091C58 030FC021 */  addu       $t8, $t8, $t7
/* 9285C 80091C5C 0018C080 */  sll        $t8, $t8, 2
/* 92860 80091C60 030FC023 */  subu       $t8, $t8, $t7
/* 92864 80091C64 0018C0C0 */  sll        $t8, $t8, 3
/* 92868 80091C68 2739F510 */  addiu      $t9, $t9, -0xaf0
/* 9286C 80091C6C 03191021 */  addu       $v0, $t8, $t9
/* 92870 80091C70 8C48010C */  lw         $t0, 0x10c($v0)
/* 92874 80091C74 3C01FFFF */  lui        $at, 0xffff
/* 92878 80091C78 01014821 */  addu       $t1, $t0, $at
/* 9287C 80091C7C AC490090 */  sw         $t1, 0x90($v0)
.L80091C80:
/* 92880 80091C80 8FBF001C */  lw         $ra, 0x1c($sp)
.L80091C84:
/* 92884 80091C84 27BD0020 */  addiu      $sp, $sp, 0x20
/* 92888 80091C88 03E00008 */  jr         $ra
/* 9288C 80091C8C 00000000 */   nop

glabel func_80091C90
/* 92890 80091C90 308EFFFF */  andi       $t6, $a0, 0xffff
/* 92894 80091C94 000E7880 */  sll        $t7, $t6, 2
/* 92898 80091C98 01EE7823 */  subu       $t7, $t7, $t6
/* 9289C 80091C9C 000F7880 */  sll        $t7, $t7, 2
/* 928A0 80091CA0 01EE7821 */  addu       $t7, $t7, $t6
/* 928A4 80091CA4 000F7880 */  sll        $t7, $t7, 2
/* 928A8 80091CA8 01EE7823 */  subu       $t7, $t7, $t6
/* 928AC 80091CAC 3C18800F */  lui        $t8, %hi(gActors)
/* 928B0 80091CB0 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 928B4 80091CB4 000F78C0 */  sll        $t7, $t7, 3
/* 928B8 80091CB8 01F81821 */  addu       $v1, $t7, $t8
/* 928BC 80091CBC 946600D0 */  lhu        $a2, 0xd0($v1)
/* 928C0 80091CC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 928C4 80091CC4 AFA40018 */  sw         $a0, 0x18($sp)
/* 928C8 80091CC8 240101B0 */  addiu      $at, $zero, 0x1b0
/* 928CC 80091CCC 01C02025 */  or         $a0, $t6, $zero
/* 928D0 80091CD0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 928D4 80091CD4 10C10006 */  beq        $a2, $at, .L80091CF0
/* 928D8 80091CD8 00C01025 */   or        $v0, $a2, $zero
/* 928DC 80091CDC 240101B1 */  addiu      $at, $zero, 0x1b1
/* 928E0 80091CE0 1041000B */  beq        $v0, $at, .L80091D10
/* 928E4 80091CE4 00000000 */   nop
/* 928E8 80091CE8 1000000C */  b          .L80091D1C
/* 928EC 80091CEC 8FBF0014 */   lw        $ra, 0x14($sp)
.L80091CF0:
/* 928F0 80091CF0 24D90001 */  addiu      $t9, $a2, 1
/* 928F4 80091CF4 3C05800F */  lui        $a1, %hi(D_800E8C08)
/* 928F8 80091CF8 A47900D0 */  sh         $t9, 0xd0($v1)
/* 928FC 80091CFC 24A58C08 */  addiu      $a1, $a1, %lo(D_800E8C08)
/* 92900 80091D00 0C0205E4 */  jal        func_80081790
/* 92904 80091D04 A7A4001A */   sh        $a0, 0x1a($sp)
/* 92908 80091D08 97A4001A */  lhu        $a0, 0x1a($sp)
/* 9290C 80091D0C 00000000 */  nop
.L80091D10:
/* 92910 80091D10 0C0246F7 */  jal        func_80091BDC
/* 92914 80091D14 00000000 */   nop
/* 92918 80091D18 8FBF0014 */  lw         $ra, 0x14($sp)
.L80091D1C:
/* 9291C 80091D1C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 92920 80091D20 03E00008 */  jr         $ra
/* 92924 80091D24 00000000 */   nop

glabel func_80091D28
/* 92928 80091D28 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9292C 80091D2C AFB00018 */  sw         $s0, 0x18($sp)
/* 92930 80091D30 3090FFFF */  andi       $s0, $a0, 0xffff
/* 92934 80091D34 AFBF001C */  sw         $ra, 0x1c($sp)
/* 92938 80091D38 AFA40030 */  sw         $a0, 0x30($sp)
/* 9293C 80091D3C 0C023C88 */  jal        func_8008F220
/* 92940 80091D40 3204FFFF */   andi      $a0, $s0, 0xffff
/* 92944 80091D44 144000B4 */  bnez       $v0, .L80092018
/* 92948 80091D48 3C05800F */   lui       $a1, 0x800f
/* 9294C 80091D4C 00107080 */  sll        $t6, $s0, 2
/* 92950 80091D50 01D07023 */  subu       $t6, $t6, $s0
/* 92954 80091D54 000E7080 */  sll        $t6, $t6, 2
/* 92958 80091D58 01D07021 */  addu       $t6, $t6, $s0
/* 9295C 80091D5C 000E7080 */  sll        $t6, $t6, 2
/* 92960 80091D60 01D07023 */  subu       $t6, $t6, $s0
/* 92964 80091D64 24A5F510 */  addiu      $a1, $a1, -0xaf0
/* 92968 80091D68 000E70C0 */  sll        $t6, $t6, 3
/* 9296C 80091D6C 00AE1821 */  addu       $v1, $a1, $t6
/* 92970 80091D70 946400D0 */  lhu        $a0, 0xd0($v1)
/* 92974 80091D74 240101C0 */  addiu      $at, $zero, 0x1c0
/* 92978 80091D78 10810006 */  beq        $a0, $at, .L80091D94
/* 9297C 80091D7C 00801025 */   or        $v0, $a0, $zero
/* 92980 80091D80 240101C1 */  addiu      $at, $zero, 0x1c1
/* 92984 80091D84 10410011 */  beq        $v0, $at, .L80091DCC
/* 92988 80091D88 00105080 */   sll       $t2, $s0, 2
/* 9298C 80091D8C 100000A3 */  b          .L8009201C
/* 92990 80091D90 8FBF001C */   lw        $ra, 0x1c($sp)
.L80091D94:
/* 92994 80091D94 0010C080 */  sll        $t8, $s0, 2
/* 92998 80091D98 0310C023 */  subu       $t8, $t8, $s0
/* 9299C 80091D9C 0018C080 */  sll        $t8, $t8, 2
/* 929A0 80091DA0 0310C021 */  addu       $t8, $t8, $s0
/* 929A4 80091DA4 0018C080 */  sll        $t8, $t8, 2
/* 929A8 80091DA8 0310C023 */  subu       $t8, $t8, $s0
/* 929AC 80091DAC 3C014120 */  lui        $at, 0x4120
/* 929B0 80091DB0 44812000 */  mtc1       $at, $f4
/* 929B4 80091DB4 248F0001 */  addiu      $t7, $a0, 1
/* 929B8 80091DB8 0018C0C0 */  sll        $t8, $t8, 3
/* 929BC 80091DBC A46F00D0 */  sh         $t7, 0xd0($v1)
/* 929C0 80091DC0 00B8C821 */  addu       $t9, $a1, $t8
/* 929C4 80091DC4 E72402A8 */  swc1       $f4, 0x2a8($t9)
/* 929C8 80091DC8 00105080 */  sll        $t2, $s0, 2
.L80091DCC:
/* 929CC 80091DCC 01505023 */  subu       $t2, $t2, $s0
/* 929D0 80091DD0 000A5080 */  sll        $t2, $t2, 2
/* 929D4 80091DD4 01505021 */  addu       $t2, $t2, $s0
/* 929D8 80091DD8 000A5080 */  sll        $t2, $t2, 2
/* 929DC 80091DDC 8C680170 */  lw         $t0, 0x170($v1)
/* 929E0 80091DE0 8C640098 */  lw         $a0, 0x98($v1)
/* 929E4 80091DE4 01505023 */  subu       $t2, $t2, $s0
/* 929E8 80091DE8 3C0B800F */  lui        $t3, %hi(gActors)
/* 929EC 80091DEC 3C01FFD0 */  lui        $at, 0xffd0
/* 929F0 80091DF0 256BF510 */  addiu      $t3, $t3, %lo(gActors)
/* 929F4 80091DF4 000A50C0 */  sll        $t2, $t2, 3
/* 929F8 80091DF8 014B6021 */  addu       $t4, $t2, $t3
/* 929FC 80091DFC 01014821 */  addu       $t1, $t0, $at
/* 92A00 80091E00 308D0001 */  andi       $t5, $a0, 1
/* 92A04 80091E04 AC690170 */  sw         $t1, 0x170($v1)
/* 92A08 80091E08 15A0000E */  bnez       $t5, .L80091E44
/* 92A0C 80091E0C AFAC0024 */   sw        $t4, 0x24($sp)
/* 92A10 80091E10 308E0004 */  andi       $t6, $a0, 4
/* 92A14 80091E14 11C00005 */  beqz       $t6, .L80091E2C
/* 92A18 80091E18 30980008 */   andi      $t8, $a0, 8
/* 92A1C 80091E1C 8C6F00EC */  lw         $t7, 0xec($v1)
/* 92A20 80091E20 00000000 */  nop
/* 92A24 80091E24 05E00007 */  bltz       $t7, .L80091E44
/* 92A28 80091E28 00000000 */   nop
.L80091E2C:
/* 92A2C 80091E2C 13000031 */  beqz       $t8, .L80091EF4
/* 92A30 80091E30 308C0010 */   andi      $t4, $a0, 0x10
/* 92A34 80091E34 8C7900EC */  lw         $t9, 0xec($v1)
/* 92A38 80091E38 00000000 */  nop
/* 92A3C 80091E3C 1B20002D */  blez       $t9, .L80091EF4
/* 92A40 80091E40 308C0010 */   andi      $t4, $a0, 0x10
.L80091E44:
/* 92A44 80091E44 8C6800EC */  lw         $t0, 0xec($v1)
/* 92A48 80091E48 3C013FE8 */  lui        $at, 0x3fe8
/* 92A4C 80091E4C 44883000 */  mtc1       $t0, $f6
/* 92A50 80091E50 44810800 */  mtc1       $at, $f1
/* 92A54 80091E54 46803220 */  cvt.s.w    $f8, $f6
/* 92A58 80091E58 44800000 */  mtc1       $zero, $f0
/* 92A5C 80091E5C 8C6A00F0 */  lw         $t2, 0xf0($v1)
/* 92A60 80091E60 46004287 */  neg.s      $f10, $f8
/* 92A64 80091E64 46005421 */  cvt.d.s    $f16, $f10
/* 92A68 80091E68 46208482 */  mul.d      $f18, $f16, $f0
/* 92A6C 80091E6C 448A3000 */  mtc1       $t2, $f6
/* 92A70 80091E70 2404002D */  addiu      $a0, $zero, 0x2d
/* 92A74 80091E74 3205FFFF */  andi       $a1, $s0, 0xffff
/* 92A78 80091E78 AFA30028 */  sw         $v1, 0x28($sp)
/* 92A7C 80091E7C 4449F800 */  cfc1       $t1, $31
/* 92A80 80091E80 00000000 */  nop
/* 92A84 80091E84 35210003 */  ori        $at, $t1, 3
/* 92A88 80091E88 38210002 */  xori       $at, $at, 2
/* 92A8C 80091E8C 44C1F800 */  ctc1       $at, $31
/* 92A90 80091E90 00000000 */  nop
/* 92A94 80091E94 46209124 */  cvt.w.d    $f4, $f18
/* 92A98 80091E98 44C9F800 */  ctc1       $t1, $31
/* 92A9C 80091E9C E46400EC */  swc1       $f4, 0xec($v1)
/* 92AA0 80091EA0 46803220 */  cvt.s.w    $f8, $f6
/* 92AA4 80091EA4 460042A1 */  cvt.d.s    $f10, $f8
/* 92AA8 80091EA8 46205402 */  mul.d      $f16, $f10, $f0
/* 92AAC 80091EAC 444BF800 */  cfc1       $t3, $31
/* 92AB0 80091EB0 00000000 */  nop
/* 92AB4 80091EB4 35610003 */  ori        $at, $t3, 3
/* 92AB8 80091EB8 38210002 */  xori       $at, $at, 2
/* 92ABC 80091EBC 44C1F800 */  ctc1       $at, $31
/* 92AC0 80091EC0 00000000 */  nop
/* 92AC4 80091EC4 462084A4 */  cvt.w.d    $f18, $f16
/* 92AC8 80091EC8 44CBF800 */  ctc1       $t3, $31
/* 92ACC 80091ECC 0C000DB2 */  jal        func_800036C8
/* 92AD0 80091ED0 E47200F0 */   swc1      $f18, 0xf0($v1)
/* 92AD4 80091ED4 3204FFFF */  andi       $a0, $s0, 0xffff
/* 92AD8 80091ED8 0C023C25 */  jal        func_8008F094
/* 92ADC 80091EDC 24050032 */   addiu     $a1, $zero, 0x32
/* 92AE0 80091EE0 8FA30028 */  lw         $v1, 0x28($sp)
/* 92AE4 80091EE4 00000000 */  nop
/* 92AE8 80091EE8 8C640098 */  lw         $a0, 0x98($v1)
/* 92AEC 80091EEC 00000000 */  nop
/* 92AF0 80091EF0 308C0010 */  andi       $t4, $a0, 0x10
.L80091EF4:
/* 92AF4 80091EF4 11800025 */  beqz       $t4, .L80091F8C
/* 92AF8 80091EF8 30980020 */   andi      $t8, $a0, 0x20
/* 92AFC 80091EFC 8C6200F0 */  lw         $v0, 0xf0($v1)
/* 92B00 80091F00 00000000 */  nop
/* 92B04 80091F04 18400021 */  blez       $v0, .L80091F8C
/* 92B08 80091F08 30980020 */   andi      $t8, $a0, 0x20
/* 92B0C 80091F0C 8C6D00EC */  lw         $t5, 0xec($v1)
/* 92B10 80091F10 3C013FE8 */  lui        $at, 0x3fe8
/* 92B14 80091F14 448D2000 */  mtc1       $t5, $f4
/* 92B18 80091F18 44818800 */  mtc1       $at, $f17
/* 92B1C 80091F1C 468021A0 */  cvt.s.w    $f6, $f4
/* 92B20 80091F20 44808000 */  mtc1       $zero, $f16
/* 92B24 80091F24 00027823 */  negu       $t7, $v0
/* 92B28 80091F28 46003207 */  neg.s      $f8, $f6
/* 92B2C 80091F2C 460042A1 */  cvt.d.s    $f10, $f8
/* 92B30 80091F30 46305482 */  mul.d      $f18, $f10, $f16
/* 92B34 80091F34 AC6F00F0 */  sw         $t7, 0xf0($v1)
/* 92B38 80091F38 2404002D */  addiu      $a0, $zero, 0x2d
/* 92B3C 80091F3C 3205FFFF */  andi       $a1, $s0, 0xffff
/* 92B40 80091F40 AFA30028 */  sw         $v1, 0x28($sp)
/* 92B44 80091F44 444EF800 */  cfc1       $t6, $31
/* 92B48 80091F48 00000000 */  nop
/* 92B4C 80091F4C 35C10003 */  ori        $at, $t6, 3
/* 92B50 80091F50 38210002 */  xori       $at, $at, 2
/* 92B54 80091F54 44C1F800 */  ctc1       $at, $31
/* 92B58 80091F58 00000000 */  nop
/* 92B5C 80091F5C 46209124 */  cvt.w.d    $f4, $f18
/* 92B60 80091F60 44CEF800 */  ctc1       $t6, $31
/* 92B64 80091F64 0C000DB2 */  jal        func_800036C8
/* 92B68 80091F68 E46400EC */   swc1      $f4, 0xec($v1)
/* 92B6C 80091F6C 3204FFFF */  andi       $a0, $s0, 0xffff
/* 92B70 80091F70 0C023C25 */  jal        func_8008F094
/* 92B74 80091F74 24050032 */   addiu     $a1, $zero, 0x32
/* 92B78 80091F78 8FA30028 */  lw         $v1, 0x28($sp)
/* 92B7C 80091F7C 00000000 */  nop
/* 92B80 80091F80 8C640098 */  lw         $a0, 0x98($v1)
/* 92B84 80091F84 00000000 */  nop
/* 92B88 80091F88 30980020 */  andi       $t8, $a0, 0x20
.L80091F8C:
/* 92B8C 80091F8C 13000014 */  beqz       $t8, .L80091FE0
/* 92B90 80091F90 8FAB0024 */   lw        $t3, 0x24($sp)
/* 92B94 80091F94 8C7900F0 */  lw         $t9, 0xf0($v1)
/* 92B98 80091F98 3C0A0002 */  lui        $t2, 2
/* 92B9C 80091F9C 0721000F */  bgez       $t9, .L80091FDC
/* 92BA0 80091FA0 3204FFFF */   andi      $a0, $s0, 0xffff
/* 92BA4 80091FA4 8C6800EC */  lw         $t0, 0xec($v1)
/* 92BA8 80091FA8 AC6A00FC */  sw         $t2, 0xfc($v1)
/* 92BAC 80091FAC 05010003 */  bgez       $t0, .L80091FBC
/* 92BB0 80091FB0 00084843 */   sra       $t1, $t0, 1
/* 92BB4 80091FB4 25010001 */  addiu      $at, $t0, 1
/* 92BB8 80091FB8 00014843 */  sra        $t1, $at, 1
.L80091FBC:
/* 92BBC 80091FBC 0C023B37 */  jal        func_8008ECDC
/* 92BC0 80091FC0 AC6900F8 */   sw        $t1, 0xf8($v1)
/* 92BC4 80091FC4 2404002D */  addiu      $a0, $zero, 0x2d
/* 92BC8 80091FC8 0C000DB2 */  jal        func_800036C8
/* 92BCC 80091FCC 3205FFFF */   andi      $a1, $s0, 0xffff
/* 92BD0 80091FD0 3204FFFF */  andi       $a0, $s0, 0xffff
/* 92BD4 80091FD4 0C023C25 */  jal        func_8008F094
/* 92BD8 80091FD8 24050032 */   addiu     $a1, $zero, 0x32
.L80091FDC:
/* 92BDC 80091FDC 8FAB0024 */  lw         $t3, 0x24($sp)
.L80091FE0:
/* 92BE0 80091FE0 44803000 */  mtc1       $zero, $f6
/* 92BE4 80091FE4 C56002A8 */  lwc1       $f0, 0x2a8($t3)
/* 92BE8 80091FE8 3C013F80 */  lui        $at, 0x3f80
/* 92BEC 80091FEC 46003032 */  c.eq.s     $f6, $f0
/* 92BF0 80091FF0 00000000 */  nop
/* 92BF4 80091FF4 45010006 */  bc1t       .L80092010
/* 92BF8 80091FF8 00000000 */   nop
/* 92BFC 80091FFC 44814000 */  mtc1       $at, $f8
/* 92C00 80092000 00000000 */  nop
/* 92C04 80092004 46080281 */  sub.s      $f10, $f0, $f8
/* 92C08 80092008 10000003 */  b          .L80092018
/* 92C0C 8009200C E56A02A8 */   swc1      $f10, 0x2a8($t3)
.L80092010:
/* 92C10 80092010 0C024456 */  jal        func_80091158
/* 92C14 80092014 3204FFFF */   andi      $a0, $s0, 0xffff
.L80092018:
/* 92C18 80092018 8FBF001C */  lw         $ra, 0x1c($sp)
.L8009201C:
/* 92C1C 8009201C 8FB00018 */  lw         $s0, 0x18($sp)
/* 92C20 80092020 03E00008 */  jr         $ra
/* 92C24 80092024 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80092028
/* 92C28 80092028 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 92C2C 8009202C AFBF0014 */  sw         $ra, 0x14($sp)
/* 92C30 80092030 AFA40020 */  sw         $a0, 0x20($sp)
/* 92C34 80092034 308EFFFF */  andi       $t6, $a0, 0xffff
/* 92C38 80092038 01C02025 */  or         $a0, $t6, $zero
/* 92C3C 8009203C 0C023C5A */  jal        func_8008F168
/* 92C40 80092040 A7AE0022 */   sh        $t6, 0x22($sp)
/* 92C44 80092044 97A40022 */  lhu        $a0, 0x22($sp)
/* 92C48 80092048 1440002E */  bnez       $v0, .L80092104
/* 92C4C 8009204C 00047880 */   sll       $t7, $a0, 2
/* 92C50 80092050 01E47823 */  subu       $t7, $t7, $a0
/* 92C54 80092054 000F7880 */  sll        $t7, $t7, 2
/* 92C58 80092058 01E47821 */  addu       $t7, $t7, $a0
/* 92C5C 8009205C 000F7880 */  sll        $t7, $t7, 2
/* 92C60 80092060 01E47823 */  subu       $t7, $t7, $a0
/* 92C64 80092064 3C18800F */  lui        $t8, %hi(gActors)
/* 92C68 80092068 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 92C6C 8009206C 000F78C0 */  sll        $t7, $t7, 3
/* 92C70 80092070 01F81821 */  addu       $v1, $t7, $t8
/* 92C74 80092074 946600D0 */  lhu        $a2, 0xd0($v1)
/* 92C78 80092078 240101D0 */  addiu      $at, $zero, 0x1d0
/* 92C7C 8009207C 10C10008 */  beq        $a2, $at, .L800920A0
/* 92C80 80092080 00C01025 */   or        $v0, $a2, $zero
/* 92C84 80092084 240101D1 */  addiu      $at, $zero, 0x1d1
/* 92C88 80092088 1041000F */  beq        $v0, $at, .L800920C8
/* 92C8C 8009208C 240101D3 */   addiu     $at, $zero, 0x1d3
/* 92C90 80092090 1041001A */  beq        $v0, $at, .L800920FC
/* 92C94 80092094 00000000 */   nop
/* 92C98 80092098 1000001B */  b          .L80092108
/* 92C9C 8009209C 8FBF0014 */   lw        $ra, 0x14($sp)
.L800920A0:
/* 92CA0 800920A0 24D90001 */  addiu      $t9, $a2, 1
/* 92CA4 800920A4 3C05800F */  lui        $a1, %hi(D_800E8C18)
/* 92CA8 800920A8 A47900D0 */  sh         $t9, 0xd0($v1)
/* 92CAC 800920AC 24A58C18 */  addiu      $a1, $a1, %lo(D_800E8C18)
/* 92CB0 800920B0 AFA30018 */  sw         $v1, 0x18($sp)
/* 92CB4 800920B4 0C0205E4 */  jal        func_80081790
/* 92CB8 800920B8 A7A40022 */   sh        $a0, 0x22($sp)
/* 92CBC 800920BC 8FA30018 */  lw         $v1, 0x18($sp)
/* 92CC0 800920C0 97A40022 */  lhu        $a0, 0x22($sp)
/* 92CC4 800920C4 00000000 */  nop
.L800920C8:
/* 92CC8 800920C8 3C08800C */  lui        $t0, %hi(D_800BE4E0)
/* 92CCC 800920CC 9508E4E0 */  lhu        $t0, %lo(D_800BE4E0)($t0)
/* 92CD0 800920D0 3C05800F */  lui        $a1, %hi(D_800E8C2C)
/* 92CD4 800920D4 3109000F */  andi       $t1, $t0, 0xf
/* 92CD8 800920D8 1520000B */  bnez       $t1, .L80092108
/* 92CDC 800920DC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 92CE0 800920E0 946A00D0 */  lhu        $t2, 0xd0($v1)
/* 92CE4 800920E4 24A58C2C */  addiu      $a1, $a1, %lo(D_800E8C2C)
/* 92CE8 800920E8 254B0002 */  addiu      $t3, $t2, 2
/* 92CEC 800920EC 0C0205E4 */  jal        func_80081790
/* 92CF0 800920F0 A46B00D0 */   sh        $t3, 0xd0($v1)
/* 92CF4 800920F4 10000004 */  b          .L80092108
/* 92CF8 800920F8 8FBF0014 */   lw        $ra, 0x14($sp)
.L800920FC:
/* 92CFC 800920FC 0C023CA5 */  jal        func_8008F294
/* 92D00 80092100 00000000 */   nop
.L80092104:
/* 92D04 80092104 8FBF0014 */  lw         $ra, 0x14($sp)
.L80092108:
/* 92D08 80092108 27BD0020 */  addiu      $sp, $sp, 0x20
/* 92D0C 8009210C 03E00008 */  jr         $ra
/* 92D10 80092110 00000000 */   nop

glabel func_80092114
/* 92D14 80092114 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 92D18 80092118 AFB10018 */  sw         $s1, 0x18($sp)
/* 92D1C 8009211C 3091FFFF */  andi       $s1, $a0, 0xffff
/* 92D20 80092120 AFBF001C */  sw         $ra, 0x1c($sp)
/* 92D24 80092124 AFA40020 */  sw         $a0, 0x20($sp)
/* 92D28 80092128 AFB00014 */  sw         $s0, 0x14($sp)
/* 92D2C 8009212C 0C010216 */  jal        func_80040858
/* 92D30 80092130 3224FFFF */   andi      $a0, $s1, 0xffff
/* 92D34 80092134 0C023C5A */  jal        func_8008F168
/* 92D38 80092138 3224FFFF */   andi      $a0, $s1, 0xffff
/* 92D3C 8009213C 14400061 */  bnez       $v0, .L800922C4
/* 92D40 80092140 3C06800F */   lui       $a2, 0x800f
/* 92D44 80092144 00117080 */  sll        $t6, $s1, 2
/* 92D48 80092148 01D17023 */  subu       $t6, $t6, $s1
/* 92D4C 8009214C 000E7080 */  sll        $t6, $t6, 2
/* 92D50 80092150 01D17021 */  addu       $t6, $t6, $s1
/* 92D54 80092154 000E7080 */  sll        $t6, $t6, 2
/* 92D58 80092158 01D17023 */  subu       $t6, $t6, $s1
/* 92D5C 8009215C 24C6F510 */  addiu      $a2, $a2, -0xaf0
/* 92D60 80092160 000E70C0 */  sll        $t6, $t6, 3
/* 92D64 80092164 00CE8021 */  addu       $s0, $a2, $t6
/* 92D68 80092168 960300D0 */  lhu        $v1, 0xd0($s0)
/* 92D6C 8009216C 240101E0 */  addiu      $at, $zero, 0x1e0
/* 92D70 80092170 10610006 */  beq        $v1, $at, .L8009218C
/* 92D74 80092174 00601025 */   or        $v0, $v1, $zero
/* 92D78 80092178 240101E1 */  addiu      $at, $zero, 0x1e1
/* 92D7C 8009217C 10410024 */  beq        $v0, $at, .L80092210
/* 92D80 80092180 0011C880 */   sll       $t9, $s1, 2
/* 92D84 80092184 10000050 */  b          .L800922C8
/* 92D88 80092188 8FBF001C */   lw        $ra, 0x1c($sp)
.L8009218C:
/* 92D8C 8009218C 960F00D4 */  lhu        $t7, 0xd4($s0)
/* 92D90 80092190 24780001 */  addiu      $t8, $v1, 1
/* 92D94 80092194 29E10004 */  slti       $at, $t7, 4
/* 92D98 80092198 10200012 */  beqz       $at, .L800921E4
/* 92D9C 8009219C 0011C880 */   sll       $t9, $s1, 2
/* 92DA0 800921A0 0331C823 */  subu       $t9, $t9, $s1
/* 92DA4 800921A4 0019C880 */  sll        $t9, $t9, 2
/* 92DA8 800921A8 0331C821 */  addu       $t9, $t9, $s1
/* 92DAC 800921AC 0019C880 */  sll        $t9, $t9, 2
/* 92DB0 800921B0 0331C823 */  subu       $t9, $t9, $s1
/* 92DB4 800921B4 0019C8C0 */  sll        $t9, $t9, 3
/* 92DB8 800921B8 A61800D0 */  sh         $t8, 0xd0($s0)
/* 92DBC 800921BC 00D94021 */  addu       $t0, $a2, $t9
/* 92DC0 800921C0 8D050978 */  lw         $a1, 0x978($t0)
/* 92DC4 800921C4 0C0205E4 */  jal        func_80081790
/* 92DC8 800921C8 3224FFFF */   andi      $a0, $s1, 0xffff
/* 92DCC 800921CC 8E0900F8 */  lw         $t1, 0xf8($s0)
/* 92DD0 800921D0 8E0A00FC */  lw         $t2, 0xfc($s0)
/* 92DD4 800921D4 3C06800F */  lui        $a2, %hi(gActors)
/* 92DD8 800921D8 24C6F510 */  addiu      $a2, $a2, %lo(gActors)
/* 92DDC 800921DC AE0900EC */  sw         $t1, 0xec($s0)
/* 92DE0 800921E0 AE0A00F0 */  sw         $t2, 0xf0($s0)
.L800921E4:
/* 92DE4 800921E4 00115880 */  sll        $t3, $s1, 2
/* 92DE8 800921E8 01715823 */  subu       $t3, $t3, $s1
/* 92DEC 800921EC 000B5880 */  sll        $t3, $t3, 2
/* 92DF0 800921F0 01715821 */  addu       $t3, $t3, $s1
/* 92DF4 800921F4 000B5880 */  sll        $t3, $t3, 2
/* 92DF8 800921F8 01715823 */  subu       $t3, $t3, $s1
/* 92DFC 800921FC 44802000 */  mtc1       $zero, $f4
/* 92E00 80092200 000B58C0 */  sll        $t3, $t3, 3
/* 92E04 80092204 00CB6021 */  addu       $t4, $a2, $t3
/* 92E08 80092208 1000002E */  b          .L800922C4
/* 92E0C 8009220C E58402A8 */   swc1      $f4, 0x2a8($t4)
.L80092210:
/* 92E10 80092210 8E0D016C */  lw         $t5, 0x16c($s0)
/* 92E14 80092214 44804000 */  mtc1       $zero, $f8
/* 92E18 80092218 31AE0001 */  andi       $t6, $t5, 1
/* 92E1C 8009221C 11C0000C */  beqz       $t6, .L80092250
/* 92E20 80092220 0331C823 */   subu      $t9, $t9, $s1
/* 92E24 80092224 00117880 */  sll        $t7, $s1, 2
/* 92E28 80092228 01F17823 */  subu       $t7, $t7, $s1
/* 92E2C 8009222C 000F7880 */  sll        $t7, $t7, 2
/* 92E30 80092230 01F17821 */  addu       $t7, $t7, $s1
/* 92E34 80092234 000F7880 */  sll        $t7, $t7, 2
/* 92E38 80092238 01F17823 */  subu       $t7, $t7, $s1
/* 92E3C 8009223C 3C013F80 */  lui        $at, 0x3f80
/* 92E40 80092240 44813000 */  mtc1       $at, $f6
/* 92E44 80092244 000F78C0 */  sll        $t7, $t7, 3
/* 92E48 80092248 00CFC021 */  addu       $t8, $a2, $t7
/* 92E4C 8009224C E70602A8 */  swc1       $f6, 0x2a8($t8)
.L80092250:
/* 92E50 80092250 0019C880 */  sll        $t9, $t9, 2
/* 92E54 80092254 0331C821 */  addu       $t9, $t9, $s1
/* 92E58 80092258 0019C880 */  sll        $t9, $t9, 2
/* 92E5C 8009225C 0331C823 */  subu       $t9, $t9, $s1
/* 92E60 80092260 0019C8C0 */  sll        $t9, $t9, 3
/* 92E64 80092264 00D94021 */  addu       $t0, $a2, $t9
/* 92E68 80092268 C50A02A8 */  lwc1       $f10, 0x2a8($t0)
/* 92E6C 8009226C 24063000 */  addiu      $a2, $zero, 0x3000
/* 92E70 80092270 460A4032 */  c.eq.s     $f8, $f10
/* 92E74 80092274 00002825 */  or         $a1, $zero, $zero
/* 92E78 80092278 45010006 */  bc1t       .L80092294
/* 92E7C 8009227C 00000000 */   nop
/* 92E80 80092280 8E0400EC */  lw         $a0, 0xec($s0)
/* 92E84 80092284 0C00A607 */  jal        func_8002981C
/* 92E88 80092288 00002825 */   or        $a1, $zero, $zero
/* 92E8C 8009228C 10000005 */  b          .L800922A4
/* 92E90 80092290 AE0200EC */   sw        $v0, 0xec($s0)
.L80092294:
/* 92E94 80092294 8E0400EC */  lw         $a0, 0xec($s0)
/* 92E98 80092298 0C00A607 */  jal        func_8002981C
/* 92E9C 8009229C 24060400 */   addiu     $a2, $zero, 0x400
/* 92EA0 800922A0 AE0200EC */  sw         $v0, 0xec($s0)
.L800922A4:
/* 92EA4 800922A4 C610011C */  lwc1       $f16, 0x11c($s0)
/* 92EA8 800922A8 44809000 */  mtc1       $zero, $f18
/* 92EAC 800922AC 24090110 */  addiu      $t1, $zero, 0x110
/* 92EB0 800922B0 4612803C */  c.lt.s     $f16, $f18
/* 92EB4 800922B4 00000000 */  nop
/* 92EB8 800922B8 45000003 */  bc1f       .L800922C8
/* 92EBC 800922BC 8FBF001C */   lw        $ra, 0x1c($sp)
/* 92EC0 800922C0 A60900D0 */  sh         $t1, 0xd0($s0)
.L800922C4:
/* 92EC4 800922C4 8FBF001C */  lw         $ra, 0x1c($sp)
.L800922C8:
/* 92EC8 800922C8 8FB00014 */  lw         $s0, 0x14($sp)
/* 92ECC 800922CC 8FB10018 */  lw         $s1, 0x18($sp)
/* 92ED0 800922D0 03E00008 */  jr         $ra
/* 92ED4 800922D4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800922D8
/* 92ED8 800922D8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 92EDC 800922DC AFBF0014 */  sw         $ra, 0x14($sp)
/* 92EE0 800922E0 AFA40020 */  sw         $a0, 0x20($sp)
/* 92EE4 800922E4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 92EE8 800922E8 01C02025 */  or         $a0, $t6, $zero
/* 92EEC 800922EC 0C010216 */  jal        func_80040858
/* 92EF0 800922F0 A7AE0022 */   sh        $t6, 0x22($sp)
/* 92EF4 800922F4 97A40022 */  lhu        $a0, 0x22($sp)
/* 92EF8 800922F8 0C023C88 */  jal        func_8008F220
/* 92EFC 800922FC 00000000 */   nop
/* 92F00 80092300 97A40022 */  lhu        $a0, 0x22($sp)
/* 92F04 80092304 1440002C */  bnez       $v0, .L800923B8
/* 92F08 80092308 3C07800F */   lui       $a3, 0x800f
/* 92F0C 8009230C 00047880 */  sll        $t7, $a0, 2
/* 92F10 80092310 01E47823 */  subu       $t7, $t7, $a0
/* 92F14 80092314 000F7880 */  sll        $t7, $t7, 2
/* 92F18 80092318 01E47821 */  addu       $t7, $t7, $a0
/* 92F1C 8009231C 000F7880 */  sll        $t7, $t7, 2
/* 92F20 80092320 01E47823 */  subu       $t7, $t7, $a0
/* 92F24 80092324 24E7F510 */  addiu      $a3, $a3, -0xaf0
/* 92F28 80092328 000F78C0 */  sll        $t7, $t7, 3
/* 92F2C 8009232C 00EF1021 */  addu       $v0, $a3, $t7
/* 92F30 80092330 944600D0 */  lhu        $a2, 0xd0($v0)
/* 92F34 80092334 240101F0 */  addiu      $at, $zero, 0x1f0
/* 92F38 80092338 10C10006 */  beq        $a2, $at, .L80092354
/* 92F3C 8009233C 00C01825 */   or        $v1, $a2, $zero
/* 92F40 80092340 240101F1 */  addiu      $at, $zero, 0x1f1
/* 92F44 80092344 1061001A */  beq        $v1, $at, .L800923B0
/* 92F48 80092348 00000000 */   nop
/* 92F4C 8009234C 1000001B */  b          .L800923BC
/* 92F50 80092350 8FBF0014 */   lw        $ra, 0x14($sp)
.L80092354:
/* 92F54 80092354 945800D4 */  lhu        $t8, 0xd4($v0)
/* 92F58 80092358 24D90001 */  addiu      $t9, $a2, 1
/* 92F5C 8009235C 2B010004 */  slti       $at, $t8, 4
/* 92F60 80092360 10200015 */  beqz       $at, .L800923B8
/* 92F64 80092364 00044080 */   sll       $t0, $a0, 2
/* 92F68 80092368 01044023 */  subu       $t0, $t0, $a0
/* 92F6C 8009236C 00084080 */  sll        $t0, $t0, 2
/* 92F70 80092370 01044021 */  addu       $t0, $t0, $a0
/* 92F74 80092374 00084080 */  sll        $t0, $t0, 2
/* 92F78 80092378 01044023 */  subu       $t0, $t0, $a0
/* 92F7C 8009237C 000840C0 */  sll        $t0, $t0, 3
/* 92F80 80092380 A45900D0 */  sh         $t9, 0xd0($v0)
/* 92F84 80092384 00E84821 */  addu       $t1, $a3, $t0
/* 92F88 80092388 8D250978 */  lw         $a1, 0x978($t1)
/* 92F8C 8009238C 0C0205E4 */  jal        func_80081790
/* 92F90 80092390 AFA20018 */   sw        $v0, 0x18($sp)
/* 92F94 80092394 8FA20018 */  lw         $v0, 0x18($sp)
/* 92F98 80092398 00000000 */  nop
/* 92F9C 8009239C 8C4A00F8 */  lw         $t2, 0xf8($v0)
/* 92FA0 800923A0 8C4B00FC */  lw         $t3, 0xfc($v0)
/* 92FA4 800923A4 AC4A00EC */  sw         $t2, 0xec($v0)
/* 92FA8 800923A8 10000003 */  b          .L800923B8
/* 92FAC 800923AC AC4B00F0 */   sw        $t3, 0xf0($v0)
.L800923B0:
/* 92FB0 800923B0 0C024476 */  jal        func_800911D8
/* 92FB4 800923B4 00000000 */   nop
.L800923B8:
/* 92FB8 800923B8 8FBF0014 */  lw         $ra, 0x14($sp)
.L800923BC:
/* 92FBC 800923BC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 92FC0 800923C0 03E00008 */  jr         $ra
/* 92FC4 800923C4 00000000 */   nop

glabel func_800923C8
/* 92FC8 800923C8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 92FCC 800923CC AFB00018 */  sw         $s0, 0x18($sp)
/* 92FD0 800923D0 3090FFFF */  andi       $s0, $a0, 0xffff
/* 92FD4 800923D4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 92FD8 800923D8 AFA40028 */  sw         $a0, 0x28($sp)
/* 92FDC 800923DC 0C010216 */  jal        func_80040858
/* 92FE0 800923E0 3204FFFF */   andi      $a0, $s0, 0xffff
/* 92FE4 800923E4 0C023C88 */  jal        func_8008F220
/* 92FE8 800923E8 3204FFFF */   andi      $a0, $s0, 0xffff
/* 92FEC 800923EC 1440003E */  bnez       $v0, .L800924E8
/* 92FF0 800923F0 00107080 */   sll       $t6, $s0, 2
/* 92FF4 800923F4 01D07023 */  subu       $t6, $t6, $s0
/* 92FF8 800923F8 000E7080 */  sll        $t6, $t6, 2
/* 92FFC 800923FC 01D07021 */  addu       $t6, $t6, $s0
/* 93000 80092400 000E7080 */  sll        $t6, $t6, 2
/* 93004 80092404 01D07023 */  subu       $t6, $t6, $s0
/* 93008 80092408 3C0F800F */  lui        $t7, %hi(gActors)
/* 9300C 8009240C 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 93010 80092410 000E70C0 */  sll        $t6, $t6, 3
/* 93014 80092414 01CF1821 */  addu       $v1, $t6, $t7
/* 93018 80092418 946600D0 */  lhu        $a2, 0xd0($v1)
/* 9301C 8009241C 24010200 */  addiu      $at, $zero, 0x200
/* 93020 80092420 10C10006 */  beq        $a2, $at, .L8009243C
/* 93024 80092424 00C01025 */   or        $v0, $a2, $zero
/* 93028 80092428 24010201 */  addiu      $at, $zero, 0x201
/* 9302C 8009242C 10410014 */  beq        $v0, $at, .L80092480
/* 93030 80092430 3204FFFF */   andi      $a0, $s0, 0xffff
/* 93034 80092434 1000002D */  b          .L800924EC
/* 93038 80092438 8FBF001C */   lw        $ra, 0x1c($sp)
.L8009243C:
/* 9303C 8009243C 947800D4 */  lhu        $t8, 0xd4($v1)
/* 93040 80092440 24D90001 */  addiu      $t9, $a2, 1
/* 93044 80092444 2B010004 */  slti       $at, $t8, 4
/* 93048 80092448 10200027 */  beqz       $at, .L800924E8
/* 9304C 8009244C 3204FFFF */   andi      $a0, $s0, 0xffff
/* 93050 80092450 3C05800F */  lui        $a1, %hi(D_800E8DB8)
/* 93054 80092454 A47900D0 */  sh         $t9, 0xd0($v1)
/* 93058 80092458 24A58DB8 */  addiu      $a1, $a1, %lo(D_800E8DB8)
/* 9305C 8009245C 0C0205E4 */  jal        func_80081790
/* 93060 80092460 AFA30020 */   sw        $v1, 0x20($sp)
/* 93064 80092464 8FA30020 */  lw         $v1, 0x20($sp)
/* 93068 80092468 00000000 */  nop
/* 9306C 8009246C 8C6800F8 */  lw         $t0, 0xf8($v1)
/* 93070 80092470 8C6900FC */  lw         $t1, 0xfc($v1)
/* 93074 80092474 AC6800EC */  sw         $t0, 0xec($v1)
/* 93078 80092478 1000001B */  b          .L800924E8
/* 9307C 8009247C AC6900F0 */   sw        $t1, 0xf0($v1)
.L80092480:
/* 93080 80092480 0C024476 */  jal        func_800911D8
/* 93084 80092484 AFA30020 */   sw        $v1, 0x20($sp)
/* 93088 80092488 8FA30020 */  lw         $v1, 0x20($sp)
/* 9308C 8009248C 24010002 */  addiu      $at, $zero, 2
/* 93090 80092490 14410015 */  bne        $v0, $at, .L800924E8
/* 93094 80092494 240A0210 */   addiu     $t2, $zero, 0x210
/* 93098 80092498 A46A00D0 */  sh         $t2, 0xd0($v1)
/* 9309C 8009249C 24040094 */  addiu      $a0, $zero, 0x94
/* 930A0 800924A0 0C000DB2 */  jal        func_800036C8
/* 930A4 800924A4 3205FFFF */   andi      $a1, $s0, 0xffff
/* 930A8 800924A8 3C05800F */  lui        $a1, %hi(D_800E8DCC)
/* 930AC 800924AC 24A58DCC */  addiu      $a1, $a1, %lo(D_800E8DCC)
/* 930B0 800924B0 0C0205E4 */  jal        func_80081790
/* 930B4 800924B4 3204FFFF */   andi      $a0, $s0, 0xffff
/* 930B8 800924B8 00105880 */  sll        $t3, $s0, 2
/* 930BC 800924BC 01705823 */  subu       $t3, $t3, $s0
/* 930C0 800924C0 000B5880 */  sll        $t3, $t3, 2
/* 930C4 800924C4 01705821 */  addu       $t3, $t3, $s0
/* 930C8 800924C8 000B5880 */  sll        $t3, $t3, 2
/* 930CC 800924CC 3C014220 */  lui        $at, 0x4220
/* 930D0 800924D0 44812000 */  mtc1       $at, $f4
/* 930D4 800924D4 01705823 */  subu       $t3, $t3, $s0
/* 930D8 800924D8 000B58C0 */  sll        $t3, $t3, 3
/* 930DC 800924DC 3C01800F */  lui        $at, %hi(D_800EF7B8)
/* 930E0 800924E0 002B0821 */  addu       $at, $at, $t3
/* 930E4 800924E4 E424F7B8 */  swc1       $f4, %lo(D_800EF7B8)($at)
.L800924E8:
/* 930E8 800924E8 8FBF001C */  lw         $ra, 0x1c($sp)
.L800924EC:
/* 930EC 800924EC 8FB00018 */  lw         $s0, 0x18($sp)
/* 930F0 800924F0 03E00008 */  jr         $ra
/* 930F4 800924F4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800924F8
/* 930F8 800924F8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 930FC 800924FC AFB00018 */  sw         $s0, 0x18($sp)
/* 93100 80092500 3090FFFF */  andi       $s0, $a0, 0xffff
/* 93104 80092504 AFBF001C */  sw         $ra, 0x1c($sp)
/* 93108 80092508 AFA40028 */  sw         $a0, 0x28($sp)
/* 9310C 8009250C 0C010216 */  jal        func_80040858
/* 93110 80092510 3204FFFF */   andi      $a0, $s0, 0xffff
/* 93114 80092514 0C023C5A */  jal        func_8008F168
/* 93118 80092518 3204FFFF */   andi      $a0, $s0, 0xffff
/* 9311C 8009251C 1440002A */  bnez       $v0, .L800925C8
/* 93120 80092520 00107080 */   sll       $t6, $s0, 2
/* 93124 80092524 01D07023 */  subu       $t6, $t6, $s0
/* 93128 80092528 000E7080 */  sll        $t6, $t6, 2
/* 9312C 8009252C 01D07021 */  addu       $t6, $t6, $s0
/* 93130 80092530 000E7080 */  sll        $t6, $t6, 2
/* 93134 80092534 01D07023 */  subu       $t6, $t6, $s0
/* 93138 80092538 3C0F800F */  lui        $t7, %hi(gActors)
/* 9313C 8009253C 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 93140 80092540 000E70C0 */  sll        $t6, $t6, 3
/* 93144 80092544 01CF3021 */  addu       $a2, $t6, $t7
/* 93148 80092548 94D800D0 */  lhu        $t8, 0xd0($a2)
/* 9314C 8009254C 24010210 */  addiu      $at, $zero, 0x210
/* 93150 80092550 1701001D */  bne        $t8, $at, .L800925C8
/* 93154 80092554 3204FFFF */   andi      $a0, $s0, 0xffff
/* 93158 80092558 0C023C42 */  jal        func_8008F108
/* 9315C 8009255C AFA60024 */   sw        $a2, 0x24($sp)
/* 93160 80092560 0010C880 */  sll        $t9, $s0, 2
/* 93164 80092564 0330C823 */  subu       $t9, $t9, $s0
/* 93168 80092568 0019C880 */  sll        $t9, $t9, 2
/* 9316C 8009256C 0330C821 */  addu       $t9, $t9, $s0
/* 93170 80092570 0019C880 */  sll        $t9, $t9, 2
/* 93174 80092574 0330C823 */  subu       $t9, $t9, $s0
/* 93178 80092578 3C08800F */  lui        $t0, %hi(gActors)
/* 9317C 8009257C 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 93180 80092580 0019C8C0 */  sll        $t9, $t9, 3
/* 93184 80092584 03281821 */  addu       $v1, $t9, $t0
/* 93188 80092588 3C013F80 */  lui        $at, 0x3f80
/* 9318C 8009258C 44813000 */  mtc1       $at, $f6
/* 93190 80092590 C46402A8 */  lwc1       $f4, 0x2a8($v1)
/* 93194 80092594 44808000 */  mtc1       $zero, $f16
/* 93198 80092598 46062201 */  sub.s      $f8, $f4, $f6
/* 9319C 8009259C 8FA60024 */  lw         $a2, 0x24($sp)
/* 931A0 800925A0 E46802A8 */  swc1       $f8, 0x2a8($v1)
/* 931A4 800925A4 C46A02A8 */  lwc1       $f10, 0x2a8($v1)
/* 931A8 800925A8 24090220 */  addiu      $t1, $zero, 0x220
/* 931AC 800925AC 4610503C */  c.lt.s     $f10, $f16
/* 931B0 800925B0 3204FFFF */  andi       $a0, $s0, 0xffff
/* 931B4 800925B4 45000004 */  bc1f       .L800925C8
/* 931B8 800925B8 3C05800F */   lui       $a1, %hi(D_800E8E38)
/* 931BC 800925BC A4C900D0 */  sh         $t1, 0xd0($a2)
/* 931C0 800925C0 0C0205E4 */  jal        func_80081790
/* 931C4 800925C4 24A58E38 */   addiu     $a1, $a1, %lo(D_800E8E38)
.L800925C8:
/* 931C8 800925C8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 931CC 800925CC 8FB00018 */  lw         $s0, 0x18($sp)
/* 931D0 800925D0 03E00008 */  jr         $ra
/* 931D4 800925D4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800925D8
/* 931D8 800925D8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 931DC 800925DC AFA40018 */  sw         $a0, 0x18($sp)
/* 931E0 800925E0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 931E4 800925E4 97A4001A */  lhu        $a0, 0x1a($sp)
/* 931E8 800925E8 0C023C5A */  jal        func_8008F168
/* 931EC 800925EC 00000000 */   nop
/* 931F0 800925F0 14400017 */  bnez       $v0, .L80092650
/* 931F4 800925F4 3C18800F */   lui       $t8, %hi(gActors)
/* 931F8 800925F8 97AE001A */  lhu        $t6, 0x1a($sp)
/* 931FC 800925FC 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 93200 80092600 000E7880 */  sll        $t7, $t6, 2
/* 93204 80092604 01EE7823 */  subu       $t7, $t7, $t6
/* 93208 80092608 000F7880 */  sll        $t7, $t7, 2
/* 9320C 8009260C 01EE7821 */  addu       $t7, $t7, $t6
/* 93210 80092610 000F7880 */  sll        $t7, $t7, 2
/* 93214 80092614 01EE7823 */  subu       $t7, $t7, $t6
/* 93218 80092618 000F78C0 */  sll        $t7, $t7, 3
/* 9321C 8009261C 01F81021 */  addu       $v0, $t7, $t8
/* 93220 80092620 945900D0 */  lhu        $t9, 0xd0($v0)
/* 93224 80092624 24010220 */  addiu      $at, $zero, 0x220
/* 93228 80092628 1721000A */  bne        $t9, $at, .L80092654
/* 9322C 8009262C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 93230 80092630 C444011C */  lwc1       $f4, 0x11c($v0)
/* 93234 80092634 44803000 */  mtc1       $zero, $f6
/* 93238 80092638 24080110 */  addiu      $t0, $zero, 0x110
/* 9323C 8009263C 4606203C */  c.lt.s     $f4, $f6
/* 93240 80092640 00000000 */  nop
/* 93244 80092644 45000003 */  bc1f       .L80092654
/* 93248 80092648 8FBF0014 */   lw        $ra, 0x14($sp)
/* 9324C 8009264C A44800D0 */  sh         $t0, 0xd0($v0)
.L80092650:
/* 93250 80092650 8FBF0014 */  lw         $ra, 0x14($sp)
.L80092654:
/* 93254 80092654 27BD0018 */  addiu      $sp, $sp, 0x18
/* 93258 80092658 03E00008 */  jr         $ra
/* 9325C 8009265C 00000000 */   nop

glabel func_80092660
/* 93260 80092660 308EFFFF */  andi       $t6, $a0, 0xffff
/* 93264 80092664 000E7880 */  sll        $t7, $t6, 2
/* 93268 80092668 01EE7823 */  subu       $t7, $t7, $t6
/* 9326C 8009266C 000F7880 */  sll        $t7, $t7, 2
/* 93270 80092670 01EE7821 */  addu       $t7, $t7, $t6
/* 93274 80092674 000F7880 */  sll        $t7, $t7, 2
/* 93278 80092678 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9327C 8009267C 01EE7823 */  subu       $t7, $t7, $t6
/* 93280 80092680 3C18800F */  lui        $t8, %hi(gActors)
/* 93284 80092684 AFB00018 */  sw         $s0, 0x18($sp)
/* 93288 80092688 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 9328C 8009268C 000F78C0 */  sll        $t7, $t7, 3
/* 93290 80092690 01F88021 */  addu       $s0, $t7, $t8
/* 93294 80092694 960200D0 */  lhu        $v0, 0xd0($s0)
/* 93298 80092698 AFA40020 */  sw         $a0, 0x20($sp)
/* 9329C 8009269C 24010250 */  addiu      $at, $zero, 0x250
/* 932A0 800926A0 01C02025 */  or         $a0, $t6, $zero
/* 932A4 800926A4 10410006 */  beq        $v0, $at, .L800926C0
/* 932A8 800926A8 AFBF001C */   sw        $ra, 0x1c($sp)
/* 932AC 800926AC 24010251 */  addiu      $at, $zero, 0x251
/* 932B0 800926B0 10410034 */  beq        $v0, $at, .L80092784
/* 932B4 800926B4 00045080 */   sll       $t2, $a0, 2
/* 932B8 800926B8 100000B7 */  b          .L80092998
/* 932BC 800926BC A7AE0022 */   sh        $t6, 0x22($sp)
.L800926C0:
/* 932C0 800926C0 0C010216 */  jal        func_80040858
/* 932C4 800926C4 A7A40022 */   sh        $a0, 0x22($sp)
/* 932C8 800926C8 97A40022 */  lhu        $a0, 0x22($sp)
/* 932CC 800926CC 8E090080 */  lw         $t1, 0x80($s0)
/* 932D0 800926D0 00047880 */  sll        $t7, $a0, 2
/* 932D4 800926D4 3C01FFFE */  lui        $at, 0xfffe
/* 932D8 800926D8 01E47823 */  subu       $t7, $t7, $a0
/* 932DC 800926DC 3421FFFF */  ori        $at, $at, 0xffff
/* 932E0 800926E0 000F7880 */  sll        $t7, $t7, 2
/* 932E4 800926E4 01E47821 */  addu       $t7, $t7, $a0
/* 932E8 800926E8 01215024 */  and        $t2, $t1, $at
/* 932EC 800926EC 961900D0 */  lhu        $t9, 0xd0($s0)
/* 932F0 800926F0 3C010002 */  lui        $at, 2
/* 932F4 800926F4 000F7880 */  sll        $t7, $t7, 2
/* 932F8 800926F8 01416025 */  or         $t4, $t2, $at
/* 932FC 800926FC 01E47823 */  subu       $t7, $t7, $a0
/* 93300 80092700 AE0A0080 */  sw         $t2, 0x80($s0)
/* 93304 80092704 000F78C0 */  sll        $t7, $t7, 3
/* 93308 80092708 3C01800F */  lui        $at, 0x800f
/* 9330C 8009270C 27280001 */  addiu      $t0, $t9, 1
/* 93310 80092710 A60800D0 */  sh         $t0, 0xd0($s0)
/* 93314 80092714 AE0C0080 */  sw         $t4, 0x80($s0)
/* 93318 80092718 002F0821 */  addu       $at, $at, $t7
/* 9331C 8009271C 240D00DC */  addiu      $t5, $zero, 0xdc
/* 93320 80092720 3C05800F */  lui        $a1, %hi(D_800E9034)
/* 93324 80092724 AC2DF9C0 */  sw         $t5, -0x640($at)
/* 93328 80092728 0C0205E4 */  jal        func_80081790
/* 9332C 8009272C 24A59034 */   addiu     $a1, $a1, %lo(D_800E9034)
/* 93330 80092730 86070090 */  lh         $a3, 0x90($s0)
/* 93334 80092734 3C013FC0 */  lui        $at, 0x3fc0
/* 93338 80092738 24E7000A */  addiu      $a3, $a3, 0xa
/* 9333C 8009273C 0007C400 */  sll        $t8, $a3, 0x10
/* 93340 80092740 44816000 */  mtc1       $at, $f12
/* 93344 80092744 86050088 */  lh         $a1, 0x88($s0)
/* 93348 80092748 8606008C */  lh         $a2, 0x8c($s0)
/* 9334C 8009274C 0C00FFC8 */  jal        func_8003FF20
/* 93350 80092750 00183C03 */   sra       $a3, $t8, 0x10
/* 93354 80092754 86070090 */  lh         $a3, 0x90($s0)
/* 93358 80092758 3C014000 */  lui        $at, 0x4000
/* 9335C 8009275C 24E7000A */  addiu      $a3, $a3, 0xa
/* 93360 80092760 00074400 */  sll        $t0, $a3, 0x10
/* 93364 80092764 44816000 */  mtc1       $at, $f12
/* 93368 80092768 86050088 */  lh         $a1, 0x88($s0)
/* 9336C 8009276C 8606008C */  lh         $a2, 0x8c($s0)
/* 93370 80092770 0C00FBB0 */  jal        func_8003EEC0
/* 93374 80092774 00083C03 */   sra       $a3, $t0, 0x10
/* 93378 80092778 97A40022 */  lhu        $a0, 0x22($sp)
/* 9337C 8009277C 00000000 */  nop
/* 93380 80092780 00045080 */  sll        $t2, $a0, 2
.L80092784:
/* 93384 80092784 01445023 */  subu       $t2, $t2, $a0
/* 93388 80092788 000A5080 */  sll        $t2, $t2, 2
/* 9338C 8009278C 01445021 */  addu       $t2, $t2, $a0
/* 93390 80092790 000A5080 */  sll        $t2, $t2, 2
/* 93394 80092794 01445023 */  subu       $t2, $t2, $a0
/* 93398 80092798 3C0B800F */  lui        $t3, %hi(gActors)
/* 9339C 8009279C 256BF510 */  addiu      $t3, $t3, %lo(gActors)
/* 933A0 800927A0 000A50C0 */  sll        $t2, $t2, 3
/* 933A4 800927A4 014B1021 */  addu       $v0, $t2, $t3
/* 933A8 800927A8 8C4C04B0 */  lw         $t4, 0x4b0($v0)
/* 933AC 800927AC 3C05800E */  lui        $a1, 0x800e
/* 933B0 800927B0 258DFFFF */  addiu      $t5, $t4, -1
/* 933B4 800927B4 05A1000B */  bgez       $t5, .L800927E4
/* 933B8 800927B8 AC4D04B0 */   sw        $t5, 0x4b0($v0)
/* 933BC 800927BC 960E00D0 */  lhu        $t6, 0xd0($s0)
/* 933C0 800927C0 AE000080 */  sw         $zero, 0x80($s0)
/* 933C4 800927C4 25D80001 */  addiu      $t8, $t6, 1
/* 933C8 800927C8 A61800D0 */  sh         $t8, 0xd0($s0)
/* 933CC 800927CC A60000D2 */  sh         $zero, 0xd2($s0)
/* 933D0 800927D0 24A55E48 */  addiu      $a1, $a1, 0x5e48
/* 933D4 800927D4 0C0205C8 */  jal        func_80081720
/* 933D8 800927D8 24060003 */   addiu     $a2, $zero, 3
/* 933DC 800927DC 10000073 */  b          .L800929AC
/* 933E0 800927E0 8FBF001C */   lw        $ra, 0x1c($sp)
.L800927E4:
/* 933E4 800927E4 8E0200EC */  lw         $v0, 0xec($s0)
/* 933E8 800927E8 3C010040 */  lui        $at, 0x40
/* 933EC 800927EC 18400006 */  blez       $v0, .L80092808
/* 933F0 800927F0 00000000 */   nop
/* 933F4 800927F4 8E190098 */  lw         $t9, 0x98($s0)
/* 933F8 800927F8 00000000 */  nop
/* 933FC 800927FC 33280008 */  andi       $t0, $t9, 8
/* 93400 80092800 15000008 */  bnez       $t0, .L80092824
/* 93404 80092804 00025823 */   negu      $t3, $v0
.L80092808:
/* 93408 80092808 04410007 */  bgez       $v0, .L80092828
/* 9340C 8009280C 00000000 */   nop
/* 93410 80092810 8E090098 */  lw         $t1, 0x98($s0)
/* 93414 80092814 00000000 */  nop
/* 93418 80092818 312A0004 */  andi       $t2, $t1, 4
/* 9341C 8009281C 11400002 */  beqz       $t2, .L80092828
/* 93420 80092820 00025823 */   negu      $t3, $v0
.L80092824:
/* 93424 80092824 AE0B00EC */  sw         $t3, 0xec($s0)
.L80092828:
/* 93428 80092828 8E0200F0 */  lw         $v0, 0xf0($s0)
/* 9342C 8009282C 00000000 */  nop
/* 93430 80092830 18400008 */  blez       $v0, .L80092854
/* 93434 80092834 00000000 */   nop
/* 93438 80092838 8E0C0098 */  lw         $t4, 0x98($s0)
/* 9343C 8009283C 00027823 */  negu       $t7, $v0
/* 93440 80092840 318D0010 */  andi       $t5, $t4, 0x10
/* 93444 80092844 11A00003 */  beqz       $t5, .L80092854
/* 93448 80092848 00000000 */   nop
/* 9344C 8009284C AE0F00F0 */  sw         $t7, 0xf0($s0)
/* 93450 80092850 01E01025 */  or         $v0, $t7, $zero
.L80092854:
/* 93454 80092854 04410044 */  bgez       $v0, .L80092968
/* 93458 80092858 00000000 */   nop
/* 9345C 8009285C 8E0E0098 */  lw         $t6, 0x98($s0)
/* 93460 80092860 3C05800F */  lui        $a1, %hi(D_800E9034)
/* 93464 80092864 31D80020 */  andi       $t8, $t6, 0x20
/* 93468 80092868 1300003F */  beqz       $t8, .L80092968
/* 9346C 8009286C 24A59034 */   addiu     $a1, $a1, %lo(D_800E9034)
/* 93470 80092870 0C0205E4 */  jal        func_80081790
/* 93474 80092874 A7A40022 */   sh        $a0, 0x22($sp)
/* 93478 80092878 0C0005E3 */  jal        func_8000178C
/* 9347C 8009287C 00000000 */   nop
/* 93480 80092880 30590003 */  andi       $t9, $v0, 3
/* 93484 80092884 00194400 */  sll        $t0, $t9, 0x10
/* 93488 80092888 3C090008 */  lui        $t1, 8
/* 9348C 8009288C 01285023 */  subu       $t2, $t1, $t0
/* 93490 80092890 AE0A00F0 */  sw         $t2, 0xf0($s0)
/* 93494 80092894 0C00A6DD */  jal        func_80029B74
/* 93498 80092898 24040060 */   addiu     $a0, $zero, 0x60
/* 9349C 8009289C 10400013 */  beqz       $v0, .L800928EC
/* 934A0 800928A0 00000000 */   nop
/* 934A4 800928A4 0C0005E3 */  jal        func_8000178C
/* 934A8 800928A8 00000000 */   nop
/* 934AC 800928AC 304B0003 */  andi       $t3, $v0, 3
/* 934B0 800928B0 000B6080 */  sll        $t4, $t3, 2
/* 934B4 800928B4 018B6023 */  subu       $t4, $t4, $t3
/* 934B8 800928B8 000C6380 */  sll        $t4, $t4, 0xe
/* 934BC 800928BC 34018000 */  ori        $at, $zero, 0x8000
/* 934C0 800928C0 01816821 */  addu       $t5, $t4, $at
/* 934C4 800928C4 0C0005E3 */  jal        func_8000178C
/* 934C8 800928C8 AE0D00EC */   sw        $t5, 0xec($s0)
/* 934CC 800928CC 304F0001 */  andi       $t7, $v0, 1
/* 934D0 800928D0 11E00017 */  beqz       $t7, .L80092930
/* 934D4 800928D4 00000000 */   nop
/* 934D8 800928D8 8E0E00EC */  lw         $t6, 0xec($s0)
/* 934DC 800928DC 00000000 */  nop
/* 934E0 800928E0 000EC023 */  negu       $t8, $t6
/* 934E4 800928E4 10000012 */  b          .L80092930
/* 934E8 800928E8 AE1800EC */   sw        $t8, 0xec($s0)
.L800928EC:
/* 934EC 800928EC 0C0005E3 */  jal        func_8000178C
/* 934F0 800928F0 00000000 */   nop
/* 934F4 800928F4 30590003 */  andi       $t9, $v0, 3
/* 934F8 800928F8 00194880 */  sll        $t1, $t9, 2
/* 934FC 800928FC 01394823 */  subu       $t1, $t1, $t9
/* 93500 80092900 00094B80 */  sll        $t1, $t1, 0xe
/* 93504 80092904 34018000 */  ori        $at, $zero, 0x8000
/* 93508 80092908 01214021 */  addu       $t0, $t1, $at
/* 9350C 8009290C AE0800EC */  sw         $t0, 0xec($s0)
/* 93510 80092910 3C0A800F */  lui        $t2, %hi(D_800EF598)
/* 93514 80092914 854AF598 */  lh         $t2, %lo(D_800EF598)($t2)
/* 93518 80092918 860B0088 */  lh         $t3, 0x88($s0)
/* 9351C 8009291C 00086823 */  negu       $t5, $t0
/* 93520 80092920 014B082A */  slt        $at, $t2, $t3
/* 93524 80092924 10200002 */  beqz       $at, .L80092930
/* 93528 80092928 00000000 */   nop
/* 9352C 8009292C AE0D00EC */  sw         $t5, 0xec($s0)
.L80092930:
/* 93530 80092930 8E0F00EC */  lw         $t7, 0xec($s0)
/* 93534 80092934 00000000 */  nop
/* 93538 80092938 19E00006 */  blez       $t7, .L80092954
/* 9353C 8009293C 00000000 */   nop
/* 93540 80092940 8E0E0080 */  lw         $t6, 0x80($s0)
/* 93544 80092944 2401FFDF */  addiu      $at, $zero, -0x21
/* 93548 80092948 01C1C024 */  and        $t8, $t6, $at
/* 9354C 8009294C 1000000B */  b          .L8009297C
/* 93550 80092950 AE180080 */   sw        $t8, 0x80($s0)
.L80092954:
/* 93554 80092954 8E190080 */  lw         $t9, 0x80($s0)
/* 93558 80092958 00000000 */  nop
/* 9355C 8009295C 37290020 */  ori        $t1, $t9, 0x20
/* 93560 80092960 10000006 */  b          .L8009297C
/* 93564 80092964 AE090080 */   sw        $t1, 0x80($s0)
.L80092968:
/* 93568 80092968 8E080170 */  lw         $t0, 0x170($s0)
/* 9356C 8009296C A7A40022 */  sh         $a0, 0x22($sp)
/* 93570 80092970 01015021 */  addu       $t2, $t0, $at
/* 93574 80092974 0C024456 */  jal        func_80091158
/* 93578 80092978 AE0A0170 */   sw        $t2, 0x170($s0)
.L8009297C:
/* 9357C 8009297C 3C013FC0 */  lui        $at, 0x3fc0
/* 93580 80092980 44810000 */  mtc1       $at, $f0
/* 93584 80092984 97A50022 */  lhu        $a1, 0x22($sp)
/* 93588 80092988 44060000 */  mfc1       $a2, $f0
/* 9358C 8009298C 44070000 */  mfc1       $a3, $f0
/* 93590 80092990 0C00F7DE */  jal        func_8003DF78
/* 93594 80092994 00002025 */   or        $a0, $zero, $zero
.L80092998:
/* 93598 80092998 8E0B0080 */  lw         $t3, 0x80($s0)
/* 9359C 8009299C 2401EBFF */  addiu      $at, $zero, -0x1401
/* 935A0 800929A0 01616024 */  and        $t4, $t3, $at
/* 935A4 800929A4 AE0C0080 */  sw         $t4, 0x80($s0)
/* 935A8 800929A8 8FBF001C */  lw         $ra, 0x1c($sp)
.L800929AC:
/* 935AC 800929AC 8FB00018 */  lw         $s0, 0x18($sp)
/* 935B0 800929B0 03E00008 */  jr         $ra
/* 935B4 800929B4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800929B8
/* 935B8 800929B8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 935BC 800929BC AFB20020 */  sw         $s2, 0x20($sp)
/* 935C0 800929C0 3092FFFF */  andi       $s2, $a0, 0xffff
/* 935C4 800929C4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 935C8 800929C8 AFA40038 */  sw         $a0, 0x38($sp)
/* 935CC 800929CC AFB1001C */  sw         $s1, 0x1c($sp)
/* 935D0 800929D0 AFB00018 */  sw         $s0, 0x18($sp)
/* 935D4 800929D4 0C023C5A */  jal        func_8008F168
/* 935D8 800929D8 3244FFFF */   andi      $a0, $s2, 0xffff
/* 935DC 800929DC 1440010C */  bnez       $v0, .L80092E10
/* 935E0 800929E0 00127080 */   sll       $t6, $s2, 2
/* 935E4 800929E4 01D27023 */  subu       $t6, $t6, $s2
/* 935E8 800929E8 000E7080 */  sll        $t6, $t6, 2
/* 935EC 800929EC 01D27021 */  addu       $t6, $t6, $s2
/* 935F0 800929F0 000E7080 */  sll        $t6, $t6, 2
/* 935F4 800929F4 01D27023 */  subu       $t6, $t6, $s2
/* 935F8 800929F8 3C0F800F */  lui        $t7, %hi(gActors)
/* 935FC 800929FC 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 93600 80092A00 000E70C0 */  sll        $t6, $t6, 3
/* 93604 80092A04 01CF8821 */  addu       $s1, $t6, $t7
/* 93608 80092A08 962300D0 */  lhu        $v1, 0xd0($s1)
/* 9360C 80092A0C 24010230 */  addiu      $at, $zero, 0x230
/* 93610 80092A10 10610006 */  beq        $v1, $at, .L80092A2C
/* 93614 80092A14 00601025 */   or        $v0, $v1, $zero
/* 93618 80092A18 24010231 */  addiu      $at, $zero, 0x231
/* 9361C 80092A1C 1041001C */  beq        $v0, $at, .L80092A90
/* 93620 80092A20 00125080 */   sll       $t2, $s2, 2
/* 93624 80092A24 100000FD */  b          .L80092E1C
/* 93628 80092A28 8FBF0024 */   lw        $ra, 0x24($sp)
.L80092A2C:
/* 9362C 80092A2C 24780001 */  addiu      $t8, $v1, 1
/* 93630 80092A30 3C05800F */  lui        $a1, %hi(D_800E8C7C)
/* 93634 80092A34 A63800D0 */  sh         $t8, 0xd0($s1)
/* 93638 80092A38 24A58C7C */  addiu      $a1, $a1, %lo(D_800E8C7C)
/* 9363C 80092A3C 0C0205E4 */  jal        func_80081790
/* 93640 80092A40 3244FFFF */   andi      $a0, $s2, 0xffff
/* 93644 80092A44 0C0005E3 */  jal        func_8000178C
/* 93648 80092A48 00000000 */   nop
/* 9364C 80092A4C 0012C880 */  sll        $t9, $s2, 2
/* 93650 80092A50 0332C823 */  subu       $t9, $t9, $s2
/* 93654 80092A54 0019C880 */  sll        $t9, $t9, 2
/* 93658 80092A58 0332C821 */  addu       $t9, $t9, $s2
/* 9365C 80092A5C 30490003 */  andi       $t1, $v0, 3
/* 93660 80092A60 44892000 */  mtc1       $t1, $f4
/* 93664 80092A64 0019C880 */  sll        $t9, $t9, 2
/* 93668 80092A68 0332C823 */  subu       $t9, $t9, $s2
/* 9366C 80092A6C 3C08800F */  lui        $t0, %hi(gActors)
/* 93670 80092A70 468021A0 */  cvt.s.w    $f6, $f4
/* 93674 80092A74 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 93678 80092A78 0019C8C0 */  sll        $t9, $t9, 3
/* 9367C 80092A7C 44804000 */  mtc1       $zero, $f8
/* 93680 80092A80 03288021 */  addu       $s0, $t9, $t0
/* 93684 80092A84 E60602A8 */  swc1       $f6, 0x2a8($s0)
/* 93688 80092A88 E60802AC */  swc1       $f8, 0x2ac($s0)
/* 9368C 80092A8C 00125080 */  sll        $t2, $s2, 2
.L80092A90:
/* 93690 80092A90 01525023 */  subu       $t2, $t2, $s2
/* 93694 80092A94 000A5080 */  sll        $t2, $t2, 2
/* 93698 80092A98 01525021 */  addu       $t2, $t2, $s2
/* 9369C 80092A9C 000A5080 */  sll        $t2, $t2, 2
/* 936A0 80092AA0 01525023 */  subu       $t2, $t2, $s2
/* 936A4 80092AA4 3C0B800F */  lui        $t3, %hi(gActors)
/* 936A8 80092AA8 256BF510 */  addiu      $t3, $t3, %lo(gActors)
/* 936AC 80092AAC 000A50C0 */  sll        $t2, $t2, 3
/* 936B0 80092AB0 014B8021 */  addu       $s0, $t2, $t3
/* 936B4 80092AB4 3C014640 */  lui        $at, 0x4640
/* 936B8 80092AB8 44818000 */  mtc1       $at, $f16
/* 936BC 80092ABC C60A02C4 */  lwc1       $f10, 0x2c4($s0)
/* 936C0 80092AC0 8E2400EC */  lw         $a0, 0xec($s1)
/* 936C4 80092AC4 46105482 */  mul.s      $f18, $f10, $f16
/* 936C8 80092AC8 00002825 */  or         $a1, $zero, $zero
/* 936CC 80092ACC 02403825 */  or         $a3, $s2, $zero
/* 936D0 80092AD0 AFB20028 */  sw         $s2, 0x28($sp)
/* 936D4 80092AD4 444CF800 */  cfc1       $t4, $31
/* 936D8 80092AD8 00000000 */  nop
/* 936DC 80092ADC 35810003 */  ori        $at, $t4, 3
/* 936E0 80092AE0 38210002 */  xori       $at, $at, 2
/* 936E4 80092AE4 44C1F800 */  ctc1       $at, $31
/* 936E8 80092AE8 00000000 */  nop
/* 936EC 80092AEC 46009124 */  cvt.w.s    $f4, $f18
/* 936F0 80092AF0 44062000 */  mfc1       $a2, $f4
/* 936F4 80092AF4 44CCF800 */  ctc1       $t4, $31
/* 936F8 80092AF8 0C00A607 */  jal        func_8002981C
/* 936FC 80092AFC 00000000 */   nop
/* 93700 80092B00 8E23016C */  lw         $v1, 0x16c($s1)
/* 93704 80092B04 8FA70028 */  lw         $a3, 0x28($sp)
/* 93708 80092B08 306D0003 */  andi       $t5, $v1, 3
/* 9370C 80092B0C 11A00056 */  beqz       $t5, .L80092C68
/* 93710 80092B10 AE2200EC */   sw        $v0, 0xec($s1)
/* 93714 80092B14 306E0001 */  andi       $t6, $v1, 1
/* 93718 80092B18 11C00008 */  beqz       $t6, .L80092B3C
/* 9371C 80092B1C 3C0D800F */   lui       $t5, 0x800f
/* 93720 80092B20 3C0F0002 */  lui        $t7, 2
/* 93724 80092B24 24E4000B */  addiu      $a0, $a3, 0xb
/* 93728 80092B28 35EF4000 */  ori        $t7, $t7, 0x4000
/* 9372C 80092B2C 3098FFFF */  andi       $t8, $a0, 0xffff
/* 93730 80092B30 AE2F00EC */  sw         $t7, 0xec($s1)
/* 93734 80092B34 10000007 */  b          .L80092B54
/* 93738 80092B38 03002025 */   or        $a0, $t8, $zero
.L80092B3C:
/* 9373C 80092B3C 3C190002 */  lui        $t9, 2
/* 93740 80092B40 24E40007 */  addiu      $a0, $a3, 7
/* 93744 80092B44 3739A000 */  ori        $t9, $t9, 0xa000
/* 93748 80092B48 3088FFFF */  andi       $t0, $a0, 0xffff
/* 9374C 80092B4C AE3900EC */  sw         $t9, 0xec($s1)
/* 93750 80092B50 01002025 */  or         $a0, $t0, $zero
.L80092B54:
/* 93754 80092B54 8E2900EC */  lw         $t1, 0xec($s1)
/* 93758 80092B58 C60602C4 */  lwc1       $f6, 0x2c4($s0)
/* 9375C 80092B5C C60802C8 */  lwc1       $f8, 0x2c8($s0)
/* 93760 80092B60 44898000 */  mtc1       $t1, $f16
/* 93764 80092B64 46083282 */  mul.s      $f10, $f6, $f8
/* 93768 80092B68 00046080 */  sll        $t4, $a0, 2
/* 9376C 80092B6C 01846023 */  subu       $t4, $t4, $a0
/* 93770 80092B70 000C6080 */  sll        $t4, $t4, 2
/* 93774 80092B74 468084A0 */  cvt.s.w    $f18, $f16
/* 93778 80092B78 01846021 */  addu       $t4, $t4, $a0
/* 9377C 80092B7C 44848000 */  mtc1       $a0, $f16
/* 93780 80092B80 460A9102 */  mul.s      $f4, $f18, $f10
/* 93784 80092B84 000C6080 */  sll        $t4, $t4, 2
/* 93788 80092B88 01846023 */  subu       $t4, $t4, $a0
/* 9378C 80092B8C 000C60C0 */  sll        $t4, $t4, 3
/* 93790 80092B90 444AF800 */  cfc1       $t2, $31
/* 93794 80092B94 25ADF510 */  addiu      $t5, $t5, -0xaf0
/* 93798 80092B98 35410003 */  ori        $at, $t2, 3
/* 9379C 80092B9C 38210002 */  xori       $at, $at, 2
/* 937A0 80092BA0 44C1F800 */  ctc1       $at, $31
/* 937A4 80092BA4 3C014120 */  lui        $at, 0x4120
/* 937A8 80092BA8 460021A4 */  cvt.w.s    $f6, $f4
/* 937AC 80092BAC 44814000 */  mtc1       $at, $f8
/* 937B0 80092BB0 440B3000 */  mfc1       $t3, $f6
/* 937B4 80092BB4 44CAF800 */  ctc1       $t2, $31
/* 937B8 80092BB8 AE2B00EC */  sw         $t3, 0xec($s1)
/* 937BC 80092BBC E60802AC */  swc1       $f8, 0x2ac($s0)
/* 937C0 80092BC0 04810005 */  bgez       $a0, .L80092BD8
/* 937C4 80092BC4 468084A0 */   cvt.s.w   $f18, $f16
/* 937C8 80092BC8 3C014F80 */  lui        $at, 0x4f80
/* 937CC 80092BCC 44815000 */  mtc1       $at, $f10
/* 937D0 80092BD0 00000000 */  nop
/* 937D4 80092BD4 460A9480 */  add.s      $f18, $f18, $f10
.L80092BD8:
/* 937D8 80092BD8 E6120440 */  swc1       $f18, 0x440($s0)
/* 937DC 80092BDC 018D1021 */  addu       $v0, $t4, $t5
/* 937E0 80092BE0 8C4E0080 */  lw         $t6, 0x80($v0)
/* 937E4 80092BE4 3C090002 */  lui        $t1, 2
/* 937E8 80092BE8 3C0A0003 */  lui        $t2, 3
/* 937EC 80092BEC 24180004 */  addiu      $t8, $zero, 4
/* 937F0 80092BF0 24190003 */  addiu      $t9, $zero, 3
/* 937F4 80092BF4 2408001E */  addiu      $t0, $zero, 0x1e
/* 937F8 80092BF8 354A2000 */  ori        $t2, $t2, 0x2000
/* 937FC 80092BFC 35292000 */  ori        $t1, $t1, 0x2000
/* 93800 80092C00 35CF0200 */  ori        $t7, $t6, 0x200
/* 93804 80092C04 AC4F0080 */  sw         $t7, 0x80($v0)
/* 93808 80092C08 A44800E4 */  sh         $t0, 0xe4($v0)
/* 9380C 80092C0C A05900DB */  sb         $t9, 0xdb($v0)
/* 93810 80092C10 A05800DA */  sb         $t8, 0xda($v0)
/* 93814 80092C14 AC4900F8 */  sw         $t1, 0xf8($v0)
/* 93818 80092C18 AC4A00FC */  sw         $t2, 0xfc($v0)
/* 9381C 80092C1C 3C0140C0 */  lui        $at, 0x40c0
/* 93820 80092C20 44813000 */  mtc1       $at, $f6
/* 93824 80092C24 C60402C4 */  lwc1       $f4, 0x2c4($s0)
/* 93828 80092C28 00000000 */  nop
/* 9382C 80092C2C 46062202 */  mul.s      $f8, $f4, $f6
/* 93830 80092C30 444BF800 */  cfc1       $t3, $31
/* 93834 80092C34 00000000 */  nop
/* 93838 80092C38 35610003 */  ori        $at, $t3, 3
/* 9383C 80092C3C 38210002 */  xori       $at, $at, 2
/* 93840 80092C40 44C1F800 */  ctc1       $at, $31
/* 93844 80092C44 00000000 */  nop
/* 93848 80092C48 46004424 */  cvt.w.s    $f16, $f8
/* 9384C 80092C4C 44058000 */  mfc1       $a1, $f16
/* 93850 80092C50 44CBF800 */  ctc1       $t3, $31
/* 93854 80092C54 00056400 */  sll        $t4, $a1, 0x10
/* 93858 80092C58 0C00AAF9 */  jal        func_8002ABE4
/* 9385C 80092C5C 000C2C03 */   sra       $a1, $t4, 0x10
/* 93860 80092C60 8E23016C */  lw         $v1, 0x16c($s1)
/* 93864 80092C64 00000000 */  nop
.L80092C68:
/* 93868 80092C68 306E0004 */  andi       $t6, $v1, 4
/* 9386C 80092C6C 11C0000F */  beqz       $t6, .L80092CAC
/* 93870 80092C70 3C013F80 */   lui       $at, 0x3f80
/* 93874 80092C74 C60A02A8 */  lwc1       $f10, 0x2a8($s0)
/* 93878 80092C78 44819000 */  mtc1       $at, $f18
/* 9387C 80092C7C 44804000 */  mtc1       $zero, $f8
/* 93880 80092C80 46125101 */  sub.s      $f4, $f10, $f18
/* 93884 80092C84 3244FFFF */  andi       $a0, $s2, 0xffff
/* 93888 80092C88 E60402A8 */  swc1       $f4, 0x2a8($s0)
/* 9388C 80092C8C C60602A8 */  lwc1       $f6, 0x2a8($s0)
/* 93890 80092C90 3C05800F */  lui        $a1, 0x800f
/* 93894 80092C94 4608303C */  c.lt.s     $f6, $f8
/* 93898 80092C98 00000000 */  nop
/* 9389C 80092C9C 45000003 */  bc1f       .L80092CAC
/* 938A0 80092CA0 00000000 */   nop
/* 938A4 80092CA4 0C0205E4 */  jal        func_80081790
/* 938A8 80092CA8 24A58CE4 */   addiu     $a1, $a1, -0x731c
.L80092CAC:
/* 938AC 80092CAC C60002AC */  lwc1       $f0, 0x2ac($s0)
/* 938B0 80092CB0 44808000 */  mtc1       $zero, $f16
/* 938B4 80092CB4 3C013F80 */  lui        $at, 0x3f80
/* 938B8 80092CB8 46008032 */  c.eq.s     $f16, $f0
/* 938BC 80092CBC 00000000 */  nop
/* 938C0 80092CC0 4501000D */  bc1t       .L80092CF8
/* 938C4 80092CC4 00000000 */   nop
/* 938C8 80092CC8 44815000 */  mtc1       $at, $f10
/* 938CC 80092CCC 44802000 */  mtc1       $zero, $f4
/* 938D0 80092CD0 460A0481 */  sub.s      $f18, $f0, $f10
/* 938D4 80092CD4 E61202AC */  swc1       $f18, 0x2ac($s0)
/* 938D8 80092CD8 C60602AC */  lwc1       $f6, 0x2ac($s0)
/* 938DC 80092CDC 00000000 */  nop
/* 938E0 80092CE0 46062032 */  c.eq.s     $f4, $f6
/* 938E4 80092CE4 00000000 */  nop
/* 938E8 80092CE8 45000003 */  bc1f       .L80092CF8
/* 938EC 80092CEC 00000000 */   nop
/* 938F0 80092CF0 0C023A93 */  jal        func_8008EA4C
/* 938F4 80092CF4 3244FFFF */   andi      $a0, $s2, 0xffff
.L80092CF8:
/* 938F8 80092CF8 0C023A52 */  jal        func_8008E948
/* 938FC 80092CFC 3244FFFF */   andi      $a0, $s2, 0xffff
/* 93900 80092D00 1040003A */  beqz       $v0, .L80092DEC
/* 93904 80092D04 2404002C */   addiu     $a0, $zero, 0x2c
/* 93908 80092D08 0C000DB2 */  jal        func_800036C8
/* 9390C 80092D0C 3245FFFF */   andi      $a1, $s2, 0xffff
/* 93910 80092D10 444FF800 */  cfc1       $t7, $31
/* 93914 80092D14 24040001 */  addiu      $a0, $zero, 1
/* 93918 80092D18 44C4F800 */  ctc1       $a0, $31
/* 9391C 80092D1C C6080440 */  lwc1       $f8, 0x440($s0)
/* 93920 80092D20 2405000E */  addiu      $a1, $zero, 0xe
/* 93924 80092D24 46004424 */  cvt.w.s    $f16, $f8
/* 93928 80092D28 24060001 */  addiu      $a2, $zero, 1
/* 9392C 80092D2C 4444F800 */  cfc1       $a0, $31
/* 93930 80092D30 3C014F00 */  lui        $at, 0x4f00
/* 93934 80092D34 30840078 */  andi       $a0, $a0, 0x78
/* 93938 80092D38 10800012 */  beqz       $a0, .L80092D84
/* 9393C 80092D3C 00000000 */   nop
/* 93940 80092D40 44818000 */  mtc1       $at, $f16
/* 93944 80092D44 24040001 */  addiu      $a0, $zero, 1
/* 93948 80092D48 46104401 */  sub.s      $f16, $f8, $f16
/* 9394C 80092D4C 3C018000 */  lui        $at, 0x8000
/* 93950 80092D50 44C4F800 */  ctc1       $a0, $31
/* 93954 80092D54 00000000 */  nop
/* 93958 80092D58 46008424 */  cvt.w.s    $f16, $f16
/* 9395C 80092D5C 4444F800 */  cfc1       $a0, $31
/* 93960 80092D60 00000000 */  nop
/* 93964 80092D64 30840078 */  andi       $a0, $a0, 0x78
/* 93968 80092D68 14800004 */  bnez       $a0, .L80092D7C
/* 9396C 80092D6C 00000000 */   nop
/* 93970 80092D70 44048000 */  mfc1       $a0, $f16
/* 93974 80092D74 10000007 */  b          .L80092D94
/* 93978 80092D78 00812025 */   or        $a0, $a0, $at
.L80092D7C:
/* 9397C 80092D7C 10000005 */  b          .L80092D94
/* 93980 80092D80 2404FFFF */   addiu     $a0, $zero, -1
.L80092D84:
/* 93984 80092D84 44048000 */  mfc1       $a0, $f16
/* 93988 80092D88 00000000 */  nop
/* 9398C 80092D8C 0480FFFB */  bltz       $a0, .L80092D7C
/* 93990 80092D90 00000000 */   nop
.L80092D94:
/* 93994 80092D94 44CFF800 */  ctc1       $t7, $31
/* 93998 80092D98 3098FFFF */  andi       $t8, $a0, 0xffff
/* 9399C 80092D9C 0C00D033 */  jal        func_800340CC
/* 939A0 80092DA0 03002025 */   or        $a0, $t8, $zero
/* 939A4 80092DA4 C60A02C8 */  lwc1       $f10, 0x2c8($s0)
/* 939A8 80092DA8 C61202C4 */  lwc1       $f18, 0x2c4($s0)
/* 939AC 80092DAC 3C01C7E0 */  lui        $at, 0xc7e0
/* 939B0 80092DB0 46125102 */  mul.s      $f4, $f10, $f18
/* 939B4 80092DB4 44813000 */  mtc1       $at, $f6
/* 939B8 80092DB8 3244FFFF */  andi       $a0, $s2, 0xffff
/* 939BC 80092DBC 46062202 */  mul.s      $f8, $f4, $f6
/* 939C0 80092DC0 4459F800 */  cfc1       $t9, $31
/* 939C4 80092DC4 00000000 */  nop
/* 939C8 80092DC8 37210003 */  ori        $at, $t9, 3
/* 939CC 80092DCC 38210002 */  xori       $at, $at, 2
/* 939D0 80092DD0 44C1F800 */  ctc1       $at, $31
/* 939D4 80092DD4 00000000 */  nop
/* 939D8 80092DD8 46004424 */  cvt.w.s    $f16, $f8
/* 939DC 80092DDC 44088000 */  mfc1       $t0, $f16
/* 939E0 80092DE0 44D9F800 */  ctc1       $t9, $31
/* 939E4 80092DE4 0C023A93 */  jal        func_8008EA4C
/* 939E8 80092DE8 AE2800EC */   sw        $t0, 0xec($s1)
.L80092DEC:
/* 939EC 80092DEC C62A011C */  lwc1       $f10, 0x11c($s1)
/* 939F0 80092DF0 44809000 */  mtc1       $zero, $f18
/* 939F4 80092DF4 24090110 */  addiu      $t1, $zero, 0x110
/* 939F8 80092DF8 4612503C */  c.lt.s     $f10, $f18
/* 939FC 80092DFC 00000000 */  nop
/* 93A00 80092E00 45000006 */  bc1f       .L80092E1C
/* 93A04 80092E04 8FBF0024 */   lw        $ra, 0x24($sp)
/* 93A08 80092E08 10000003 */  b          .L80092E18
/* 93A0C 80092E0C A62900D0 */   sh        $t1, 0xd0($s1)
.L80092E10:
/* 93A10 80092E10 0C023A93 */  jal        func_8008EA4C
/* 93A14 80092E14 3244FFFF */   andi      $a0, $s2, 0xffff
.L80092E18:
/* 93A18 80092E18 8FBF0024 */  lw         $ra, 0x24($sp)
.L80092E1C:
/* 93A1C 80092E1C 8FB00018 */  lw         $s0, 0x18($sp)
/* 93A20 80092E20 8FB1001C */  lw         $s1, 0x1c($sp)
/* 93A24 80092E24 8FB20020 */  lw         $s2, 0x20($sp)
/* 93A28 80092E28 03E00008 */  jr         $ra
/* 93A2C 80092E2C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80092E30
/* 93A30 80092E30 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 93A34 80092E34 AFB00018 */  sw         $s0, 0x18($sp)
/* 93A38 80092E38 3090FFFF */  andi       $s0, $a0, 0xffff
/* 93A3C 80092E3C AFBF001C */  sw         $ra, 0x1c($sp)
/* 93A40 80092E40 AFA40028 */  sw         $a0, 0x28($sp)
/* 93A44 80092E44 0C023C5A */  jal        func_8008F168
/* 93A48 80092E48 3204FFFF */   andi      $a0, $s0, 0xffff
/* 93A4C 80092E4C 14400033 */  bnez       $v0, .L80092F1C
/* 93A50 80092E50 00107080 */   sll       $t6, $s0, 2
/* 93A54 80092E54 01D07023 */  subu       $t6, $t6, $s0
/* 93A58 80092E58 000E7080 */  sll        $t6, $t6, 2
/* 93A5C 80092E5C 01D07021 */  addu       $t6, $t6, $s0
/* 93A60 80092E60 000E7080 */  sll        $t6, $t6, 2
/* 93A64 80092E64 01D07023 */  subu       $t6, $t6, $s0
/* 93A68 80092E68 3C0F800F */  lui        $t7, %hi(gActors)
/* 93A6C 80092E6C 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 93A70 80092E70 000E70C0 */  sll        $t6, $t6, 3
/* 93A74 80092E74 01CF1821 */  addu       $v1, $t6, $t7
/* 93A78 80092E78 946600D0 */  lhu        $a2, 0xd0($v1)
/* 93A7C 80092E7C 24010240 */  addiu      $at, $zero, 0x240
/* 93A80 80092E80 10C10006 */  beq        $a2, $at, .L80092E9C
/* 93A84 80092E84 00C01025 */   or        $v0, $a2, $zero
/* 93A88 80092E88 24010241 */  addiu      $at, $zero, 0x241
/* 93A8C 80092E8C 1041000D */  beq        $v0, $at, .L80092EC4
/* 93A90 80092E90 3204FFFF */   andi      $a0, $s0, 0xffff
/* 93A94 80092E94 10000022 */  b          .L80092F20
/* 93A98 80092E98 8FBF001C */   lw        $ra, 0x1c($sp)
.L80092E9C:
/* 93A9C 80092E9C 24D80001 */  addiu      $t8, $a2, 1
/* 93AA0 80092EA0 3C05800F */  lui        $a1, %hi(D_800E8CF8)
/* 93AA4 80092EA4 A47800D0 */  sh         $t8, 0xd0($v1)
/* 93AA8 80092EA8 24A58CF8 */  addiu      $a1, $a1, %lo(D_800E8CF8)
/* 93AAC 80092EAC 3204FFFF */  andi       $a0, $s0, 0xffff
/* 93AB0 80092EB0 0C0205E4 */  jal        func_80081790
/* 93AB4 80092EB4 AFA30020 */   sw        $v1, 0x20($sp)
/* 93AB8 80092EB8 8FA30020 */  lw         $v1, 0x20($sp)
/* 93ABC 80092EBC 00000000 */  nop
/* 93AC0 80092EC0 3204FFFF */  andi       $a0, $s0, 0xffff
.L80092EC4:
/* 93AC4 80092EC4 0C023C42 */  jal        func_8008F108
/* 93AC8 80092EC8 AFA30020 */   sw        $v1, 0x20($sp)
/* 93ACC 80092ECC 8FA30020 */  lw         $v1, 0x20($sp)
/* 93AD0 80092ED0 2605000B */  addiu      $a1, $s0, 0xb
/* 93AD4 80092ED4 8C79016C */  lw         $t9, 0x16c($v1)
/* 93AD8 80092ED8 30A9FFFF */  andi       $t1, $a1, 0xffff
/* 93ADC 80092EDC 33280001 */  andi       $t0, $t9, 1
/* 93AE0 80092EE0 11000006 */  beqz       $t0, .L80092EFC
/* 93AE4 80092EE4 3204FFFF */   andi      $a0, $s0, 0xffff
/* 93AE8 80092EE8 01202825 */  or         $a1, $t1, $zero
/* 93AEC 80092EEC 0C023CBA */  jal        func_8008F2E8
/* 93AF0 80092EF0 AFA30020 */   sw        $v1, 0x20($sp)
/* 93AF4 80092EF4 8FA30020 */  lw         $v1, 0x20($sp)
/* 93AF8 80092EF8 00000000 */  nop
.L80092EFC:
/* 93AFC 80092EFC C464011C */  lwc1       $f4, 0x11c($v1)
/* 93B00 80092F00 44803000 */  mtc1       $zero, $f6
/* 93B04 80092F04 240A0110 */  addiu      $t2, $zero, 0x110
/* 93B08 80092F08 4606203C */  c.lt.s     $f4, $f6
/* 93B0C 80092F0C 00000000 */  nop
/* 93B10 80092F10 45000003 */  bc1f       .L80092F20
/* 93B14 80092F14 8FBF001C */   lw        $ra, 0x1c($sp)
/* 93B18 80092F18 A46A00D0 */  sh         $t2, 0xd0($v1)
.L80092F1C:
/* 93B1C 80092F1C 8FBF001C */  lw         $ra, 0x1c($sp)
.L80092F20:
/* 93B20 80092F20 8FB00018 */  lw         $s0, 0x18($sp)
/* 93B24 80092F24 03E00008 */  jr         $ra
/* 93B28 80092F28 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80092F2C
/* 93B2C 80092F2C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 93B30 80092F30 000EC080 */  sll        $t8, $t6, 2
/* 93B34 80092F34 030EC023 */  subu       $t8, $t8, $t6
/* 93B38 80092F38 0018C080 */  sll        $t8, $t8, 2
/* 93B3C 80092F3C 030EC021 */  addu       $t8, $t8, $t6
/* 93B40 80092F40 0018C080 */  sll        $t8, $t8, 2
/* 93B44 80092F44 030EC023 */  subu       $t8, $t8, $t6
/* 93B48 80092F48 3C19800F */  lui        $t9, %hi(gActors)
/* 93B4C 80092F4C 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 93B50 80092F50 0018C0C0 */  sll        $t8, $t8, 3
/* 93B54 80092F54 AFA40000 */  sw         $a0, ($sp)
/* 93B58 80092F58 AFA50004 */  sw         $a1, 4($sp)
/* 93B5C 80092F5C 03194021 */  addu       $t0, $t8, $t9
/* 93B60 80092F60 8D0204B0 */  lw         $v0, 0x4b0($t0)
/* 93B64 80092F64 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 93B68 80092F68 94490000 */  lhu        $t1, ($v0)
/* 93B6C 80092F6C 000F5880 */  sll        $t3, $t7, 2
/* 93B70 80092F70 312A8000 */  andi       $t2, $t1, 0x8000
/* 93B74 80092F74 15400015 */  bnez       $t2, .L80092FCC
/* 93B78 80092F78 00001825 */   or        $v1, $zero, $zero
/* 93B7C 80092F7C 016F5823 */  subu       $t3, $t3, $t7
/* 93B80 80092F80 000B5880 */  sll        $t3, $t3, 2
/* 93B84 80092F84 016F5821 */  addu       $t3, $t3, $t7
/* 93B88 80092F88 000B5880 */  sll        $t3, $t3, 2
/* 93B8C 80092F8C 016F5823 */  subu       $t3, $t3, $t7
/* 93B90 80092F90 000B58C0 */  sll        $t3, $t3, 3
/* 93B94 80092F94 94460000 */  lhu        $a2, ($v0)
/* 93B98 80092F98 01792021 */  addu       $a0, $t3, $t9
/* 93B9C 80092F9C 00036080 */  sll        $t4, $v1, 2
.L80092FA0:
/* 93BA0 80092FA0 24630001 */  addiu      $v1, $v1, 1
/* 93BA4 80092FA4 306EFFFF */  andi       $t6, $v1, 0xffff
/* 93BA8 80092FA8 000E7840 */  sll        $t7, $t6, 1
/* 93BAC 80092FAC 008C6821 */  addu       $t5, $a0, $t4
/* 93BB0 80092FB0 004FC021 */  addu       $t8, $v0, $t7
/* 93BB4 80092FB4 ADA60150 */  sw         $a2, 0x150($t5)
/* 93BB8 80092FB8 97060000 */  lhu        $a2, ($t8)
/* 93BBC 80092FBC 01C01825 */  or         $v1, $t6, $zero
/* 93BC0 80092FC0 30C88000 */  andi       $t0, $a2, 0x8000
/* 93BC4 80092FC4 1100FFF6 */  beqz       $t0, .L80092FA0
/* 93BC8 80092FC8 00036080 */   sll       $t4, $v1, 2
.L80092FCC:
/* 93BCC 80092FCC 03E00008 */  jr         $ra
/* 93BD0 80092FD0 00000000 */   nop

glabel func_80092FD4
/* 93BD4 80092FD4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 93BD8 80092FD8 000E7880 */  sll        $t7, $t6, 2
/* 93BDC 80092FDC 01EE7823 */  subu       $t7, $t7, $t6
/* 93BE0 80092FE0 000F7880 */  sll        $t7, $t7, 2
/* 93BE4 80092FE4 01EE7821 */  addu       $t7, $t7, $t6
/* 93BE8 80092FE8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 93BEC 80092FEC 000F7880 */  sll        $t7, $t7, 2
/* 93BF0 80092FF0 AFB20020 */  sw         $s2, 0x20($sp)
/* 93BF4 80092FF4 01EE7823 */  subu       $t7, $t7, $t6
/* 93BF8 80092FF8 000F78C0 */  sll        $t7, $t7, 3
/* 93BFC 80092FFC 3C12800F */  lui        $s2, %hi(D_800EF9C0)
/* 93C00 80093000 024F9021 */  addu       $s2, $s2, $t7
/* 93C04 80093004 8E52F9C0 */  lw         $s2, %lo(D_800EF9C0)($s2)
/* 93C08 80093008 AFBF0024 */  sw         $ra, 0x24($sp)
/* 93C0C 8009300C AFB1001C */  sw         $s1, 0x1c($sp)
/* 93C10 80093010 AFB00018 */  sw         $s0, 0x18($sp)
/* 93C14 80093014 AFA40028 */  sw         $a0, 0x28($sp)
/* 93C18 80093018 96580000 */  lhu        $t8, ($s2)
/* 93C1C 8009301C 00008825 */  or         $s1, $zero, $zero
/* 93C20 80093020 33198000 */  andi       $t9, $t8, 0x8000
/* 93C24 80093024 1720001A */  bnez       $t9, .L80093090
/* 93C28 80093028 02408025 */   or        $s0, $s2, $zero
.L8009302C:
/* 93C2C 8009302C 0C0177BF */  jal        func_8005DEFC
/* 93C30 80093030 00000000 */   nop
/* 93C34 80093034 96090000 */  lhu        $t1, ($s0)
/* 93C38 80093038 30487FFF */  andi       $t0, $v0, 0x7fff
/* 93C3C 8009303C 1509000B */  bne        $t0, $t1, .L8009306C
/* 93C40 80093040 00115040 */   sll       $t2, $s1, 1
/* 93C44 80093044 024A5821 */  addu       $t3, $s2, $t2
/* 93C48 80093048 956C0002 */  lhu        $t4, 2($t3)
/* 93C4C 8009304C 00000000 */  nop
/* 93C50 80093050 318D8000 */  andi       $t5, $t4, 0x8000
/* 93C54 80093054 11A00003 */  beqz       $t5, .L80093064
/* 93C58 80093058 00000000 */   nop
/* 93C5C 8009305C 1000000D */  b          .L80093094
/* 93C60 80093060 24020002 */   addiu     $v0, $zero, 2
.L80093064:
/* 93C64 80093064 1000000B */  b          .L80093094
/* 93C68 80093068 24020001 */   addiu     $v0, $zero, 1
.L8009306C:
/* 93C6C 8009306C 26310001 */  addiu      $s1, $s1, 1
/* 93C70 80093070 322EFFFF */  andi       $t6, $s1, 0xffff
/* 93C74 80093074 000E7840 */  sll        $t7, $t6, 1
/* 93C78 80093078 024F8021 */  addu       $s0, $s2, $t7
/* 93C7C 8009307C 96180000 */  lhu        $t8, ($s0)
/* 93C80 80093080 01C08825 */  or         $s1, $t6, $zero
/* 93C84 80093084 33198000 */  andi       $t9, $t8, 0x8000
/* 93C88 80093088 1320FFE8 */  beqz       $t9, .L8009302C
/* 93C8C 8009308C 00000000 */   nop
.L80093090:
/* 93C90 80093090 00001025 */  or         $v0, $zero, $zero
.L80093094:
/* 93C94 80093094 8FBF0024 */  lw         $ra, 0x24($sp)
/* 93C98 80093098 8FB00018 */  lw         $s0, 0x18($sp)
/* 93C9C 8009309C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 93CA0 800930A0 8FB20020 */  lw         $s2, 0x20($sp)
/* 93CA4 800930A4 03E00008 */  jr         $ra
/* 93CA8 800930A8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800930AC
/* 93CAC 800930AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 93CB0 800930B0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 93CB4 800930B4 AFA40018 */  sw         $a0, 0x18($sp)
/* 93CB8 800930B8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 93CBC 800930BC 0C024BF5 */  jal        func_80092FD4
/* 93CC0 800930C0 01C02025 */   or        $a0, $t6, $zero
/* 93CC4 800930C4 10400004 */  beqz       $v0, .L800930D8
/* 93CC8 800930C8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 93CCC 800930CC 0C0177F2 */  jal        func_8005DFC8
/* 93CD0 800930D0 00002025 */   or        $a0, $zero, $zero
/* 93CD4 800930D4 8FBF0014 */  lw         $ra, 0x14($sp)
.L800930D8:
/* 93CD8 800930D8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 93CDC 800930DC 03E00008 */  jr         $ra
/* 93CE0 800930E0 00000000 */   nop

glabel func_800930E4
/* 93CE4 800930E4 03E00008 */  jr         $ra
/* 93CE8 800930E8 AFA40000 */   sw        $a0, ($sp)

glabel func_800930EC
/* 93CEC 800930EC 3C038018 */  lui        $v1, %hi(D_801826B0)
/* 93CF0 800930F0 246326B0 */  addiu      $v1, $v1, %lo(D_801826B0)
/* 93CF4 800930F4 84620000 */  lh         $v0, ($v1)
/* 93CF8 800930F8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 93CFC 800930FC AFBF0034 */  sw         $ra, 0x34($sp)
/* 93D00 80093100 AFA40038 */  sw         $a0, 0x38($sp)
/* 93D04 80093104 04410004 */  bgez       $v0, .L80093118
/* 93D08 80093108 AFA5003C */   sw        $a1, 0x3c($sp)
/* 93D0C 8009310C A4600000 */  sh         $zero, ($v1)
/* 93D10 80093110 84620000 */  lh         $v0, ($v1)
/* 93D14 80093114 00000000 */  nop
.L80093118:
/* 93D18 80093118 28410100 */  slti       $at, $v0, 0x100
/* 93D1C 8009311C 14200004 */  bnez       $at, .L80093130
/* 93D20 80093120 240E00FF */   addiu     $t6, $zero, 0xff
/* 93D24 80093124 A46E0000 */  sh         $t6, ($v1)
/* 93D28 80093128 84620000 */  lh         $v0, ($v1)
/* 93D2C 8009312C 00000000 */  nop
.L80093130:
/* 93D30 80093130 10400022 */  beqz       $v0, .L800931BC
/* 93D34 80093134 24052910 */   addiu     $a1, $zero, 0x2910
/* 93D38 80093138 3C013F80 */  lui        $at, 0x3f80
/* 93D3C 8009313C 44812000 */  mtc1       $at, $f4
/* 93D40 80093140 8FA4003C */  lw         $a0, 0x3c($sp)
/* 93D44 80093144 3C0F0180 */  lui        $t7, 0x180
/* 93D48 80093148 24180010 */  addiu      $t8, $zero, 0x10
/* 93D4C 8009314C 24190010 */  addiu      $t9, $zero, 0x10
/* 93D50 80093150 AFB90020 */  sw         $t9, 0x20($sp)
/* 93D54 80093154 AFB8001C */  sw         $t8, 0x1c($sp)
/* 93D58 80093158 AFAF0010 */  sw         $t7, 0x10($sp)
/* 93D5C 8009315C 00003025 */  or         $a2, $zero, $zero
/* 93D60 80093160 3C07FFB0 */  lui        $a3, 0xffb0
/* 93D64 80093164 AFA00014 */  sw         $zero, 0x14($sp)
/* 93D68 80093168 AFA00018 */  sw         $zero, 0x18($sp)
/* 93D6C 8009316C AFA20024 */  sw         $v0, 0x24($sp)
/* 93D70 80093170 AFA00028 */  sw         $zero, 0x28($sp)
/* 93D74 80093174 0C01FA85 */  jal        func_8007EA14
/* 93D78 80093178 E7A4002C */   swc1      $f4, 0x2c($sp)
/* 93D7C 8009317C 3C038018 */  lui        $v1, %hi(D_801826B0)
/* 93D80 80093180 3C01800F */  lui        $at, %hi(D_800ED400)
/* 93D84 80093184 C420D400 */  lwc1       $f0, %lo(D_800ED400)($at)
/* 93D88 80093188 246326B0 */  addiu      $v1, $v1, %lo(D_801826B0)
/* 93D8C 8009318C 84690000 */  lh         $t1, ($v1)
/* 93D90 80093190 3C08017F */  lui        $t0, 0x17f
/* 93D94 80093194 3508FFFF */  ori        $t0, $t0, 0xffff
/* 93D98 80093198 8FA4003C */  lw         $a0, 0x3c($sp)
/* 93D9C 8009319C AFA80010 */  sw         $t0, 0x10($sp)
/* 93DA0 800931A0 24052901 */  addiu      $a1, $zero, 0x2901
/* 93DA4 800931A4 00003025 */  or         $a2, $zero, $zero
/* 93DA8 800931A8 3C07FFB0 */  lui        $a3, 0xffb0
/* 93DAC 800931AC E7A00018 */  swc1       $f0, 0x18($sp)
/* 93DB0 800931B0 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 93DB4 800931B4 0C01FBD6 */  jal        func_8007EF58
/* 93DB8 800931B8 AFA90014 */   sw        $t1, 0x14($sp)
.L800931BC:
/* 93DBC 800931BC 8FBF0034 */  lw         $ra, 0x34($sp)
/* 93DC0 800931C0 27BD0038 */  addiu      $sp, $sp, 0x38
/* 93DC4 800931C4 03E00008 */  jr         $ra
/* 93DC8 800931C8 00000000 */   nop

glabel func_800931CC
/* 93DCC 800931CC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 93DD0 800931D0 000E7880 */  sll        $t7, $t6, 2
/* 93DD4 800931D4 01EE7823 */  subu       $t7, $t7, $t6
/* 93DD8 800931D8 000F7880 */  sll        $t7, $t7, 2
/* 93DDC 800931DC 01EE7821 */  addu       $t7, $t7, $t6
/* 93DE0 800931E0 000F7880 */  sll        $t7, $t7, 2
/* 93DE4 800931E4 01EE7823 */  subu       $t7, $t7, $t6
/* 93DE8 800931E8 000F78C0 */  sll        $t7, $t7, 3
/* 93DEC 800931EC 3C18800F */  lui        $t8, %hi(D_800EF5E0)
/* 93DF0 800931F0 030FC021 */  addu       $t8, $t8, $t7
/* 93DF4 800931F4 9718F5E0 */  lhu        $t8, %lo(D_800EF5E0)($t8)
/* 93DF8 800931F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 93DFC 800931FC 2719FF1D */  addiu      $t9, $t8, -0xe3
/* 93E00 80093200 AFA40018 */  sw         $a0, 0x18($sp)
/* 93E04 80093204 2F21000B */  sltiu      $at, $t9, 0xb
/* 93E08 80093208 01C02025 */  or         $a0, $t6, $zero
/* 93E0C 8009320C 10200015 */  beqz       $at, .L80093264
/* 93E10 80093210 AFBF0014 */   sw        $ra, 0x14($sp)
/* 93E14 80093214 0019C880 */  sll        $t9, $t9, 2
/* 93E18 80093218 3C01800F */  lui        $at, %hi(D_800ED404)
/* 93E1C 8009321C 00390821 */  addu       $at, $at, $t9
/* 93E20 80093220 8C39D404 */  lw         $t9, %lo(D_800ED404)($at)
/* 93E24 80093224 00000000 */  nop
/* 93E28 80093228 03200008 */  jr         $t9
/* 93E2C 8009322C 00000000 */   nop
/* 93E30 80093230 3C05800F */  lui        $a1, %hi(D_800E922C)
/* 93E34 80093234 0C024C3B */  jal        func_800930EC
/* 93E38 80093238 24A5922C */   addiu     $a1, $a1, %lo(D_800E922C)
/* 93E3C 8009323C 1000000A */  b          .L80093268
/* 93E40 80093240 8FBF0014 */   lw        $ra, 0x14($sp)
/* 93E44 80093244 3C05800F */  lui        $a1, %hi(D_800E9248)
/* 93E48 80093248 0C024C3B */  jal        func_800930EC
/* 93E4C 8009324C 24A59248 */   addiu     $a1, $a1, %lo(D_800E9248)
/* 93E50 80093250 10000005 */  b          .L80093268
/* 93E54 80093254 8FBF0014 */   lw        $ra, 0x14($sp)
/* 93E58 80093258 3C05800F */  lui        $a1, %hi(D_800E9260)
/* 93E5C 8009325C 0C024C3B */  jal        func_800930EC
/* 93E60 80093260 24A59260 */   addiu     $a1, $a1, %lo(D_800E9260)
.L80093264:
/* 93E64 80093264 8FBF0014 */  lw         $ra, 0x14($sp)
.L80093268:
/* 93E68 80093268 27BD0018 */  addiu      $sp, $sp, 0x18
/* 93E6C 8009326C 03E00008 */  jr         $ra
/* 93E70 80093270 00000000 */   nop

glabel func_80093274
/* 93E74 80093274 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 93E78 80093278 AFA40018 */  sw         $a0, 0x18($sp)
/* 93E7C 8009327C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 93E80 80093280 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 93E84 80093284 01C02025 */  or         $a0, $t6, $zero
/* 93E88 80093288 AFBF0014 */  sw         $ra, 0x14($sp)
/* 93E8C 8009328C 11E00009 */  beqz       $t7, .L800932B4
/* 93E90 80093290 AFA5001C */   sw        $a1, 0x1c($sp)
/* 93E94 80093294 24010001 */  addiu      $at, $zero, 1
/* 93E98 80093298 11E1000B */  beq        $t7, $at, .L800932C8
/* 93E9C 8009329C 0004C080 */   sll       $t8, $a0, 2
/* 93EA0 800932A0 24010002 */  addiu      $at, $zero, 2
/* 93EA4 800932A4 11E1001F */  beq        $t7, $at, .L80093324
/* 93EA8 800932A8 3C05800F */   lui       $a1, 0x800f
/* 93EAC 800932AC 10000020 */  b          .L80093330
/* 93EB0 800932B0 8FBF0014 */   lw        $ra, 0x14($sp)
.L800932B4:
/* 93EB4 800932B4 3C05800F */  lui        $a1, %hi(D_800E9300)
/* 93EB8 800932B8 0C024C3B */  jal        func_800930EC
/* 93EBC 800932BC 24A59300 */   addiu     $a1, $a1, %lo(D_800E9300)
/* 93EC0 800932C0 1000001B */  b          .L80093330
/* 93EC4 800932C4 8FBF0014 */   lw        $ra, 0x14($sp)
.L800932C8:
/* 93EC8 800932C8 0304C023 */  subu       $t8, $t8, $a0
/* 93ECC 800932CC 0018C080 */  sll        $t8, $t8, 2
/* 93ED0 800932D0 0304C021 */  addu       $t8, $t8, $a0
/* 93ED4 800932D4 0018C080 */  sll        $t8, $t8, 2
/* 93ED8 800932D8 0304C023 */  subu       $t8, $t8, $a0
/* 93EDC 800932DC 0018C0C0 */  sll        $t8, $t8, 3
/* 93EE0 800932E0 3C02800F */  lui        $v0, %hi(D_800EF5E8)
/* 93EE4 800932E4 00581021 */  addu       $v0, $v0, $t8
/* 93EE8 800932E8 9442F5E8 */  lhu        $v0, %lo(D_800EF5E8)($v0)
/* 93EEC 800932EC 24010002 */  addiu      $at, $zero, 2
/* 93EF0 800932F0 10410008 */  beq        $v0, $at, .L80093314
/* 93EF4 800932F4 3C05800F */   lui       $a1, 0x800f
/* 93EF8 800932F8 24010005 */  addiu      $at, $zero, 5
/* 93EFC 800932FC 1441000B */  bne        $v0, $at, .L8009332C
/* 93F00 80093300 3C05800F */   lui       $a1, %hi(D_800E92E0)
/* 93F04 80093304 0C024C3B */  jal        func_800930EC
/* 93F08 80093308 24A592E0 */   addiu     $a1, $a1, %lo(D_800E92E0)
/* 93F0C 8009330C 10000008 */  b          .L80093330
/* 93F10 80093310 8FBF0014 */   lw        $ra, 0x14($sp)
.L80093314:
/* 93F14 80093314 0C024C3B */  jal        func_800930EC
/* 93F18 80093318 24A592E4 */   addiu     $a1, $a1, -0x6d1c
/* 93F1C 8009331C 10000004 */  b          .L80093330
/* 93F20 80093320 8FBF0014 */   lw        $ra, 0x14($sp)
.L80093324:
/* 93F24 80093324 0C024C3B */  jal        func_800930EC
/* 93F28 80093328 24A592C4 */   addiu     $a1, $a1, -0x6d3c
.L8009332C:
/* 93F2C 8009332C 8FBF0014 */  lw         $ra, 0x14($sp)
.L80093330:
/* 93F30 80093330 27BD0018 */  addiu      $sp, $sp, 0x18
/* 93F34 80093334 03E00008 */  jr         $ra
/* 93F38 80093338 00000000 */   nop

glabel func_8009333C
/* 93F3C 8009333C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 93F40 80093340 AFA40040 */  sw         $a0, 0x40($sp)
/* 93F44 80093344 97AE0042 */  lhu        $t6, 0x42($sp)
/* 93F48 80093348 3C18800F */  lui        $t8, 0x800f
/* 93F4C 8009334C 000E7880 */  sll        $t7, $t6, 2
/* 93F50 80093350 01EE7823 */  subu       $t7, $t7, $t6
/* 93F54 80093354 000F7880 */  sll        $t7, $t7, 2
/* 93F58 80093358 01EE7821 */  addu       $t7, $t7, $t6
/* 93F5C 8009335C 000F7880 */  sll        $t7, $t7, 2
/* 93F60 80093360 01EE7823 */  subu       $t7, $t7, $t6
/* 93F64 80093364 000F78C0 */  sll        $t7, $t7, 3
/* 93F68 80093368 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 93F6C 8009336C 01F81021 */  addu       $v0, $t7, $t8
/* 93F70 80093370 8C460B10 */  lw         $a2, 0xb10($v0)
/* 93F74 80093374 AFBF0034 */  sw         $ra, 0x34($sp)
/* 93F78 80093378 00063023 */  negu       $a2, $a2
/* 93F7C 8009337C 0006CC00 */  sll        $t9, $a2, 0x10
/* 93F80 80093380 24090098 */  addiu      $t1, $zero, 0x98
/* 93F84 80093384 3C0A0068 */  lui        $t2, 0x68
/* 93F88 80093388 3C0B0120 */  lui        $t3, 0x120
/* 93F8C 8009338C AFAB001C */  sw         $t3, 0x1c($sp)
/* 93F90 80093390 AFAA0018 */  sw         $t2, 0x18($sp)
/* 93F94 80093394 AFA90010 */  sw         $t1, 0x10($sp)
/* 93F98 80093398 00193403 */  sra        $a2, $t9, 0x10
/* 93F9C 8009339C AFA20038 */  sw         $v0, 0x38($sp)
/* 93FA0 800933A0 24042800 */  addiu      $a0, $zero, 0x2800
/* 93FA4 800933A4 AFA00014 */  sw         $zero, 0x14($sp)
/* 93FA8 800933A8 AFA00020 */  sw         $zero, 0x20($sp)
/* 93FAC 800933AC AFA00024 */  sw         $zero, 0x24($sp)
/* 93FB0 800933B0 AFA00028 */  sw         $zero, 0x28($sp)
/* 93FB4 800933B4 00002825 */  or         $a1, $zero, $zero
/* 93FB8 800933B8 0C00F5A3 */  jal        func_8003D68C
/* 93FBC 800933BC 2407FF68 */   addiu     $a3, $zero, -0x98
/* 93FC0 800933C0 8FA20038 */  lw         $v0, 0x38($sp)
/* 93FC4 800933C4 240C0098 */  addiu      $t4, $zero, 0x98
/* 93FC8 800933C8 3C0DFF98 */  lui        $t5, 0xff98
/* 93FCC 800933CC 3C0E0120 */  lui        $t6, 0x120
/* 93FD0 800933D0 84450B12 */  lh         $a1, 0xb12($v0)
/* 93FD4 800933D4 AFAE001C */  sw         $t6, 0x1c($sp)
/* 93FD8 800933D8 AFAD0018 */  sw         $t5, 0x18($sp)
/* 93FDC 800933DC AFAC0010 */  sw         $t4, 0x10($sp)
/* 93FE0 800933E0 24042800 */  addiu      $a0, $zero, 0x2800
/* 93FE4 800933E4 00003025 */  or         $a2, $zero, $zero
/* 93FE8 800933E8 2407FF68 */  addiu      $a3, $zero, -0x98
/* 93FEC 800933EC AFA00014 */  sw         $zero, 0x14($sp)
/* 93FF0 800933F0 AFA00020 */  sw         $zero, 0x20($sp)
/* 93FF4 800933F4 AFA00024 */  sw         $zero, 0x24($sp)
/* 93FF8 800933F8 0C00F5A3 */  jal        func_8003D68C
/* 93FFC 800933FC AFA00028 */   sw        $zero, 0x28($sp)
/* 94000 80093400 8FBF0034 */  lw         $ra, 0x34($sp)
/* 94004 80093404 27BD0040 */  addiu      $sp, $sp, 0x40
/* 94008 80093408 03E00008 */  jr         $ra
/* 9400C 8009340C 00000000 */   nop

glabel func_80093410
/* 94010 80093410 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 94014 80093414 AFA40020 */  sw         $a0, 0x20($sp)
/* 94018 80093418 97AE0022 */  lhu        $t6, 0x22($sp)
/* 9401C 8009341C 3C18800F */  lui        $t8, 0x800f
/* 94020 80093420 000E7880 */  sll        $t7, $t6, 2
/* 94024 80093424 01EE7823 */  subu       $t7, $t7, $t6
/* 94028 80093428 000F7880 */  sll        $t7, $t7, 2
/* 9402C 8009342C 01EE7821 */  addu       $t7, $t7, $t6
/* 94030 80093430 000F7880 */  sll        $t7, $t7, 2
/* 94034 80093434 01EE7823 */  subu       $t7, $t7, $t6
/* 94038 80093438 000F78C0 */  sll        $t7, $t7, 3
/* 9403C 8009343C 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 94040 80093440 01F81021 */  addu       $v0, $t7, $t8
/* 94044 80093444 AFBF0014 */  sw         $ra, 0x14($sp)
/* 94048 80093448 8C440B10 */  lw         $a0, 0xb10($v0)
/* 9404C 8009344C AFA2001C */  sw         $v0, 0x1c($sp)
/* 94050 80093450 240500A0 */  addiu      $a1, $zero, 0xa0
/* 94054 80093454 0C00A607 */  jal        func_8002981C
/* 94058 80093458 24060006 */   addiu     $a2, $zero, 6
/* 9405C 8009345C 8FB9001C */  lw         $t9, 0x1c($sp)
/* 94060 80093460 00000000 */  nop
/* 94064 80093464 AF220B10 */  sw         $v0, 0xb10($t9)
/* 94068 80093468 97A40022 */  lhu        $a0, 0x22($sp)
/* 9406C 8009346C 0C024CCF */  jal        func_8009333C
/* 94070 80093470 00000000 */   nop
/* 94074 80093474 8FA8001C */  lw         $t0, 0x1c($sp)
/* 94078 80093478 240100A0 */  addiu      $at, $zero, 0xa0
/* 9407C 8009347C 8D090B10 */  lw         $t1, 0xb10($t0)
/* 94080 80093480 8FBF0014 */  lw         $ra, 0x14($sp)
/* 94084 80093484 15210003 */  bne        $t1, $at, .L80093494
/* 94088 80093488 00001025 */   or        $v0, $zero, $zero
/* 9408C 8009348C 10000001 */  b          .L80093494
/* 94090 80093490 24020001 */   addiu     $v0, $zero, 1
.L80093494:
/* 94094 80093494 03E00008 */  jr         $ra
/* 94098 80093498 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8009349C
/* 9409C 8009349C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 940A0 800934A0 AFA40020 */  sw         $a0, 0x20($sp)
/* 940A4 800934A4 97AE0022 */  lhu        $t6, 0x22($sp)
/* 940A8 800934A8 3C18800F */  lui        $t8, 0x800f
/* 940AC 800934AC 000E7880 */  sll        $t7, $t6, 2
/* 940B0 800934B0 01EE7823 */  subu       $t7, $t7, $t6
/* 940B4 800934B4 000F7880 */  sll        $t7, $t7, 2
/* 940B8 800934B8 01EE7821 */  addu       $t7, $t7, $t6
/* 940BC 800934BC 000F7880 */  sll        $t7, $t7, 2
/* 940C0 800934C0 01EE7823 */  subu       $t7, $t7, $t6
/* 940C4 800934C4 000F78C0 */  sll        $t7, $t7, 3
/* 940C8 800934C8 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 940CC 800934CC 01F81821 */  addu       $v1, $t7, $t8
/* 940D0 800934D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 940D4 800934D4 8C640B10 */  lw         $a0, 0xb10($v1)
/* 940D8 800934D8 AFA3001C */  sw         $v1, 0x1c($sp)
/* 940DC 800934DC 00002825 */  or         $a1, $zero, $zero
/* 940E0 800934E0 0C00A607 */  jal        func_8002981C
/* 940E4 800934E4 24060006 */   addiu     $a2, $zero, 6
/* 940E8 800934E8 8FA3001C */  lw         $v1, 0x1c($sp)
/* 940EC 800934EC 14400003 */  bnez       $v0, .L800934FC
/* 940F0 800934F0 AC620B10 */   sw        $v0, 0xb10($v1)
/* 940F4 800934F4 10000005 */  b          .L8009350C
/* 940F8 800934F8 24020001 */   addiu     $v0, $zero, 1
.L800934FC:
/* 940FC 800934FC 97A40022 */  lhu        $a0, 0x22($sp)
/* 94100 80093500 0C024CCF */  jal        func_8009333C
/* 94104 80093504 00000000 */   nop
/* 94108 80093508 00001025 */  or         $v0, $zero, $zero
.L8009350C:
/* 9410C 8009350C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 94110 80093510 27BD0020 */  addiu      $sp, $sp, 0x20
/* 94114 80093514 03E00008 */  jr         $ra
/* 94118 80093518 00000000 */   nop

glabel func_8009351C
/* 9411C 8009351C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 94120 80093520 000E7880 */  sll        $t7, $t6, 2
/* 94124 80093524 01EE7823 */  subu       $t7, $t7, $t6
/* 94128 80093528 000F7880 */  sll        $t7, $t7, 2
/* 9412C 8009352C 01EE7821 */  addu       $t7, $t7, $t6
/* 94130 80093530 3C19800C */  lui        $t9, %hi(D_800BE73C)
/* 94134 80093534 8F39E73C */  lw         $t9, %lo(D_800BE73C)($t9)
/* 94138 80093538 000F7880 */  sll        $t7, $t7, 2
/* 9413C 8009353C 01EE7823 */  subu       $t7, $t7, $t6
/* 94140 80093540 3C18800F */  lui        $t8, %hi(gActors)
/* 94144 80093544 44992000 */  mtc1       $t9, $f4
/* 94148 80093548 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 9414C 8009354C 000F78C0 */  sll        $t7, $t7, 3
/* 94150 80093550 01F81021 */  addu       $v0, $t7, $t8
/* 94154 80093554 468021A0 */  cvt.s.w    $f6, $f4
/* 94158 80093558 8C48008C */  lw         $t0, 0x8c($v0)
/* 9415C 8009355C C448011C */  lwc1       $f8, 0x11c($v0)
/* 94160 80093560 44888000 */  mtc1       $t0, $f16
/* 94164 80093564 46083282 */  mul.s      $f10, $f6, $f8
/* 94168 80093568 8C4B0150 */  lw         $t3, 0x150($v0)
/* 9416C 8009356C AFA40000 */  sw         $a0, ($sp)
/* 94170 80093570 256CFFFF */  addiu      $t4, $t3, -1
/* 94174 80093574 468084A0 */  cvt.s.w    $f18, $f16
/* 94178 80093578 AC4C0150 */  sw         $t4, 0x150($v0)
/* 9417C 8009357C 460A9100 */  add.s      $f4, $f18, $f10
/* 94180 80093580 4449F800 */  cfc1       $t1, $31
/* 94184 80093584 00000000 */  nop
/* 94188 80093588 35210003 */  ori        $at, $t1, 3
/* 9418C 8009358C 38210002 */  xori       $at, $at, 2
/* 94190 80093590 44C1F800 */  ctc1       $at, $31
/* 94194 80093594 00000000 */  nop
/* 94198 80093598 460021A4 */  cvt.w.s    $f6, $f4
/* 9419C 8009359C 440A3000 */  mfc1       $t2, $f6
/* 941A0 800935A0 44C9F800 */  ctc1       $t1, $31
/* 941A4 800935A4 05810002 */  bgez       $t4, .L800935B0
/* 941A8 800935A8 AC4A008C */   sw        $t2, 0x8c($v0)
/* 941AC 800935AC AC400080 */  sw         $zero, 0x80($v0)
.L800935B0:
/* 941B0 800935B0 03E00008 */  jr         $ra
/* 941B4 800935B4 00000000 */   nop

glabel func_800935B8
/* 941B8 800935B8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 941BC 800935BC AFA40020 */  sw         $a0, 0x20($sp)
/* 941C0 800935C0 97A40022 */  lhu        $a0, 0x22($sp)
/* 941C4 800935C4 3C18800F */  lui        $t8, 0x800f
/* 941C8 800935C8 24840018 */  addiu      $a0, $a0, 0x18
/* 941CC 800935CC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 941D0 800935D0 000E7880 */  sll        $t7, $t6, 2
/* 941D4 800935D4 01EE7823 */  subu       $t7, $t7, $t6
/* 941D8 800935D8 000F7880 */  sll        $t7, $t7, 2
/* 941DC 800935DC 01EE7821 */  addu       $t7, $t7, $t6
/* 941E0 800935E0 000F7880 */  sll        $t7, $t7, 2
/* 941E4 800935E4 01EE7823 */  subu       $t7, $t7, $t6
/* 941E8 800935E8 000F78C0 */  sll        $t7, $t7, 3
/* 941EC 800935EC 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 941F0 800935F0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 941F4 800935F4 01F81021 */  addu       $v0, $t7, $t8
/* 941F8 800935F8 2419006D */  addiu      $t9, $zero, 0x6d
/* 941FC 800935FC AFA50024 */  sw         $a1, 0x24($sp)
/* 94200 80093600 A45900D2 */  sh         $t9, 0xd2($v0)
/* 94204 80093604 01C02025 */  or         $a0, $t6, $zero
/* 94208 80093608 0C0078B4 */  jal        func_8001E2D0
/* 9420C 8009360C AFA20018 */   sw        $v0, 0x18($sp)
/* 94210 80093610 97A90022 */  lhu        $t1, 0x22($sp)
/* 94214 80093614 8FA20018 */  lw         $v0, 0x18($sp)
/* 94218 80093618 44892000 */  mtc1       $t1, $f4
/* 9421C 8009361C 24080002 */  addiu      $t0, $zero, 2
/* 94220 80093620 AC480080 */  sw         $t0, 0x80($v0)
/* 94224 80093624 05210005 */  bgez       $t1, .L8009363C
/* 94228 80093628 468021A0 */   cvt.s.w   $f6, $f4
/* 9422C 8009362C 3C014F80 */  lui        $at, 0x4f80
/* 94230 80093630 44814000 */  mtc1       $at, $f8
/* 94234 80093634 00000000 */  nop
/* 94238 80093638 46083180 */  add.s      $f6, $f6, $f8
.L8009363C:
/* 9423C 8009363C 97AA0026 */  lhu        $t2, 0x26($sp)
/* 94240 80093640 8FBF0014 */  lw         $ra, 0x14($sp)
/* 94244 80093644 E4460110 */  swc1       $f6, 0x110($v0)
/* 94248 80093648 27BD0020 */  addiu      $sp, $sp, 0x20
/* 9424C 8009364C 03E00008 */  jr         $ra
/* 94250 80093650 A44A00D8 */   sh        $t2, 0xd8($v0)

glabel func_80093654
/* 94254 80093654 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 94258 80093658 AFA40028 */  sw         $a0, 0x28($sp)
/* 9425C 8009365C 97AE002A */  lhu        $t6, 0x2a($sp)
/* 94260 80093660 3C18800F */  lui        $t8, 0x800f
/* 94264 80093664 000E7880 */  sll        $t7, $t6, 2
/* 94268 80093668 01EE7823 */  subu       $t7, $t7, $t6
/* 9426C 8009366C 000F7880 */  sll        $t7, $t7, 2
/* 94270 80093670 01EE7821 */  addu       $t7, $t7, $t6
/* 94274 80093674 000F7880 */  sll        $t7, $t7, 2
/* 94278 80093678 01EE7823 */  subu       $t7, $t7, $t6
/* 9427C 8009367C 000F78C0 */  sll        $t7, $t7, 3
/* 94280 80093680 030FC021 */  addu       $t8, $t8, $t7
/* 94284 80093684 8F18F678 */  lw         $t8, -0x988($t8)
/* 94288 80093688 24012710 */  addiu      $at, $zero, 0x2710
/* 9428C 8009368C 0301001A */  div        $zero, $t8, $at
/* 94290 80093690 3C014080 */  lui        $at, 0x4080
/* 94294 80093694 44813000 */  mtc1       $at, $f6
/* 94298 80093698 3C013FE8 */  lui        $at, 0x3fe8
/* 9429C 8009369C 44818800 */  mtc1       $at, $f17
/* 942A0 800936A0 44808000 */  mtc1       $zero, $f16
/* 942A4 800936A4 25C4000B */  addiu      $a0, $t6, 0xb
/* 942A8 800936A8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 942AC 800936AC 3088FFFF */  andi       $t0, $a0, 0xffff
/* 942B0 800936B0 2409FFFF */  addiu      $t1, $zero, -1
/* 942B4 800936B4 AFA90010 */  sw         $t1, 0x10($sp)
/* 942B8 800936B8 01002025 */  or         $a0, $t0, $zero
/* 942BC 800936BC 24051098 */  addiu      $a1, $zero, 0x1098
/* 942C0 800936C0 00003025 */  or         $a2, $zero, $zero
/* 942C4 800936C4 0000C812 */  mflo       $t9
/* 942C8 800936C8 44992000 */  mtc1       $t9, $f4
/* 942CC 800936CC 00000000 */  nop
/* 942D0 800936D0 46802020 */  cvt.s.w    $f0, $f4
/* 942D4 800936D4 46003202 */  mul.s      $f8, $f6, $f0
/* 942D8 800936D8 460002A1 */  cvt.d.s    $f10, $f0
/* 942DC 800936DC 46305482 */  mul.d      $f18, $f10, $f16
/* 942E0 800936E0 44074000 */  mfc1       $a3, $f8
/* 942E4 800936E4 462090A0 */  cvt.s.d    $f2, $f18
/* 942E8 800936E8 E7A20014 */  swc1       $f2, 0x14($sp)
/* 942EC 800936EC 0C00CB98 */  jal        func_80032E60
/* 942F0 800936F0 E7A20018 */   swc1      $f2, 0x18($sp)
/* 942F4 800936F4 8FBF0024 */  lw         $ra, 0x24($sp)
/* 942F8 800936F8 27BD0028 */  addiu      $sp, $sp, 0x28
/* 942FC 800936FC 03E00008 */  jr         $ra
/* 94300 80093700 00000000 */   nop

glabel func_80093704
/* 94304 80093704 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 94308 80093708 AFBF0024 */  sw         $ra, 0x24($sp)
/* 9430C 8009370C AFB10020 */  sw         $s1, 0x20($sp)
/* 94310 80093710 AFB0001C */  sw         $s0, 0x1c($sp)
/* 94314 80093714 0C00A14A */  jal        func_80028528
/* 94318 80093718 AFA40038 */   sw        $a0, 0x38($sp)
/* 9431C 8009371C 1040009F */  beqz       $v0, .L8009399C
/* 94320 80093720 3051FFFF */   andi      $s1, $v0, 0xffff
/* 94324 80093724 00117080 */  sll        $t6, $s1, 2
/* 94328 80093728 01D17023 */  subu       $t6, $t6, $s1
/* 9432C 8009372C 000E7080 */  sll        $t6, $t6, 2
/* 94330 80093730 01D17021 */  addu       $t6, $t6, $s1
/* 94334 80093734 000E7080 */  sll        $t6, $t6, 2
/* 94338 80093738 01D17023 */  subu       $t6, $t6, $s1
/* 9433C 8009373C 3C0F800F */  lui        $t7, %hi(gActors)
/* 94340 80093740 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 94344 80093744 000E70C0 */  sll        $t6, $t6, 3
/* 94348 80093748 01CF8021 */  addu       $s0, $t6, $t7
/* 9434C 8009374C 24180034 */  addiu      $t8, $zero, 0x34
/* 94350 80093750 A61800D2 */  sh         $t8, 0xd2($s0)
/* 94354 80093754 0C0078B4 */  jal        func_8001E2D0
/* 94358 80093758 3224FFFF */   andi      $a0, $s1, 0xffff
/* 9435C 8009375C 97A4003A */  lhu        $a0, 0x3a($sp)
/* 94360 80093760 3C09800F */  lui        $t1, 0x800f
/* 94364 80093764 00044080 */  sll        $t0, $a0, 2
/* 94368 80093768 01044023 */  subu       $t0, $t0, $a0
/* 9436C 8009376C 00084080 */  sll        $t0, $t0, 2
/* 94370 80093770 01044021 */  addu       $t0, $t0, $a0
/* 94374 80093774 00084080 */  sll        $t0, $t0, 2
/* 94378 80093778 01044023 */  subu       $t0, $t0, $a0
/* 9437C 8009377C 000840C0 */  sll        $t0, $t0, 3
/* 94380 80093780 2529F510 */  addiu      $t1, $t1, -0xaf0
/* 94384 80093784 2419000B */  addiu      $t9, $zero, 0xb
/* 94388 80093788 01095021 */  addu       $t2, $t0, $t1
/* 9438C 8009378C AE190080 */  sw         $t9, 0x80($s0)
/* 94390 80093790 A6000088 */  sh         $zero, 0x88($s0)
/* 94394 80093794 A600008C */  sh         $zero, 0x8c($s0)
/* 94398 80093798 AFAA0028 */  sw         $t2, 0x28($sp)
/* 9439C 8009379C 954B00D0 */  lhu        $t3, 0xd0($t2)
/* 943A0 800937A0 24180319 */  addiu      $t8, $zero, 0x319
/* 943A4 800937A4 296100F6 */  slti       $at, $t3, 0xf6
/* 943A8 800937A8 1420000F */  bnez       $at, .L800937E8
/* 943AC 800937AC 241900C8 */   addiu     $t9, $zero, 0xc8
/* 943B0 800937B0 3C014150 */  lui        $at, 0x4150
/* 943B4 800937B4 44810000 */  mtc1       $at, $f0
/* 943B8 800937B8 3C0E800E */  lui        $t6, %hi(D_800D9284)
/* 943BC 800937BC 240C0311 */  addiu      $t4, $zero, 0x311
/* 943C0 800937C0 240D00DA */  addiu      $t5, $zero, 0xda
/* 943C4 800937C4 25CE9284 */  addiu      $t6, $t6, %lo(D_800D9284)
/* 943C8 800937C8 240FFFE0 */  addiu      $t7, $zero, -0x20
/* 943CC 800937CC A60C0094 */  sh         $t4, 0x94($s0)
/* 943D0 800937D0 A60D0084 */  sh         $t5, 0x84($s0)
/* 943D4 800937D4 AE0E018C */  sw         $t6, 0x18c($s0)
/* 943D8 800937D8 A60F0090 */  sh         $t7, 0x90($s0)
/* 943DC 800937DC E60000B4 */  swc1       $f0, 0xb4($s0)
/* 943E0 800937E0 10000047 */  b          .L80093900
/* 943E4 800937E4 E60000B8 */   swc1      $f0, 0xb8($s0)
.L800937E8:
/* 943E8 800937E8 3C0142B4 */  lui        $at, 0x42b4
/* 943EC 800937EC 44812000 */  mtc1       $at, $f4
/* 943F0 800937F0 3C014130 */  lui        $at, 0x4130
/* 943F4 800937F4 44813000 */  mtc1       $at, $f6
/* 943F8 800937F8 3C014140 */  lui        $at, 0x4140
/* 943FC 800937FC 44814000 */  mtc1       $at, $f8
/* 94400 80093800 3C08800E */  lui        $t0, %hi(D_800D99A4)
/* 94404 80093804 250899A4 */  addiu      $t0, $t0, %lo(D_800D99A4)
/* 94408 80093808 A6180094 */  sh         $t8, 0x94($s0)
/* 9440C 8009380C A6190084 */  sh         $t9, 0x84($s0)
/* 94410 80093810 AE08018C */  sw         $t0, 0x18c($s0)
/* 94414 80093814 3C09800C */  lui        $t1, %hi(D_800BE4E0)
/* 94418 80093818 E60400C4 */  swc1       $f4, 0xc4($s0)
/* 9441C 8009381C E60600B4 */  swc1       $f6, 0xb4($s0)
/* 94420 80093820 E60800B8 */  swc1       $f8, 0xb8($s0)
/* 94424 80093824 9529E4E0 */  lhu        $t1, %lo(D_800BE4E0)($t1)
/* 94428 80093828 2401000C */  addiu      $at, $zero, 0xc
/* 9442C 8009382C 0121001A */  div        $zero, $t1, $at
/* 94430 80093830 00005010 */  mfhi       $t2
/* 94434 80093834 15400031 */  bnez       $t2, .L800938FC
/* 94438 80093838 240B0100 */   addiu     $t3, $zero, 0x100
/* 9443C 8009383C 0C0005E3 */  jal        func_8000178C
/* 94440 80093840 00000000 */   nop
/* 94444 80093844 0C0005E3 */  jal        func_8000178C
/* 94448 80093848 A7A20032 */   sh        $v0, 0x32($sp)
/* 9444C 8009384C 97AB0032 */  lhu        $t3, 0x32($sp)
/* 94450 80093850 240C0080 */  addiu      $t4, $zero, 0x80
/* 94454 80093854 018B6823 */  subu       $t5, $t4, $t3
/* 94458 80093858 448D5000 */  mtc1       $t5, $f10
/* 9445C 8009385C 3C013FE8 */  lui        $at, 0x3fe8
/* 94460 80093860 46805420 */  cvt.s.w    $f16, $f10
/* 94464 80093864 44810800 */  mtc1       $at, $f1
/* 94468 80093868 44800000 */  mtc1       $zero, $f0
/* 9446C 8009386C 460084A1 */  cvt.d.s    $f18, $f16
/* 94470 80093870 46209102 */  mul.d      $f4, $f18, $f0
/* 94474 80093874 24190080 */  addiu      $t9, $zero, 0x80
/* 94478 80093878 03224023 */  subu       $t0, $t9, $v0
/* 9447C 8009387C 44884000 */  mtc1       $t0, $f8
/* 94480 80093880 97A4003A */  lhu        $a0, 0x3a($sp)
/* 94484 80093884 444EF800 */  cfc1       $t6, $31
/* 94488 80093888 3C063ECC */  lui        $a2, 0x3ecc
/* 9448C 8009388C 35C10003 */  ori        $at, $t6, 3
/* 94490 80093890 38210002 */  xori       $at, $at, 2
/* 94494 80093894 44C1F800 */  ctc1       $at, $31
/* 94498 80093898 34C6CCCD */  ori        $a2, $a2, 0xcccd
/* 9449C 8009389C 462021A4 */  cvt.w.d    $f6, $f4
/* 944A0 800938A0 AFAC0014 */  sw         $t4, 0x14($sp)
/* 944A4 800938A4 44CEF800 */  ctc1       $t6, $31
/* 944A8 800938A8 44073000 */  mfc1       $a3, $f6
/* 944AC 800938AC 468042A0 */  cvt.s.w    $f10, $f8
/* 944B0 800938B0 00077C00 */  sll        $t7, $a3, 0x10
/* 944B4 800938B4 000F3C03 */  sra        $a3, $t7, 0x10
/* 944B8 800938B8 46005421 */  cvt.d.s    $f16, $f10
/* 944BC 800938BC 46208482 */  mul.d      $f18, $f16, $f0
/* 944C0 800938C0 00002825 */  or         $a1, $zero, $zero
/* 944C4 800938C4 4449F800 */  cfc1       $t1, $31
/* 944C8 800938C8 00000000 */  nop
/* 944CC 800938CC 35210003 */  ori        $at, $t1, 3
/* 944D0 800938D0 38210002 */  xori       $at, $at, 2
/* 944D4 800938D4 44C1F800 */  ctc1       $at, $31
/* 944D8 800938D8 00000000 */  nop
/* 944DC 800938DC 46209124 */  cvt.w.d    $f4, $f18
/* 944E0 800938E0 440A2000 */  mfc1       $t2, $f4
/* 944E4 800938E4 44C9F800 */  ctc1       $t1, $31
/* 944E8 800938E8 0C00FEC8 */  jal        func_8003FB20
/* 944EC 800938EC AFAA0010 */   sw        $t2, 0x10($sp)
/* 944F0 800938F0 97A4003A */  lhu        $a0, 0x3a($sp)
/* 944F4 800938F4 00000000 */  nop
/* 944F8 800938F8 240B0100 */  addiu      $t3, $zero, 0x100
.L800938FC:
/* 944FC 800938FC A60B0090 */  sh         $t3, 0x90($s0)
.L80093900:
/* 94500 80093900 00046880 */  sll        $t5, $a0, 2
/* 94504 80093904 01A46823 */  subu       $t5, $t5, $a0
/* 94508 80093908 000D6880 */  sll        $t5, $t5, 2
/* 9450C 8009390C 01A46821 */  addu       $t5, $t5, $a0
/* 94510 80093910 000D6880 */  sll        $t5, $t5, 2
/* 94514 80093914 01A46823 */  subu       $t5, $t5, $a0
/* 94518 80093918 3C0E800F */  lui        $t6, %hi(gActors)
/* 9451C 8009391C 25CEF510 */  addiu      $t6, $t6, %lo(gActors)
/* 94520 80093920 000D68C0 */  sll        $t5, $t5, 3
/* 94524 80093924 01AE1021 */  addu       $v0, $t5, $t6
/* 94528 80093928 8C4F0E40 */  lw         $t7, 0xe40($v0)
/* 9452C 8009392C 3C0A8018 */  lui        $t2, 0x8018
/* 94530 80093930 05E10003 */  bgez       $t7, .L80093940
/* 94534 80093934 000FC143 */   sra       $t8, $t7, 5
/* 94538 80093938 25E1001F */  addiu      $at, $t7, 0x1f
/* 9453C 8009393C 0001C143 */  sra        $t8, $at, 5
.L80093940:
/* 94540 80093940 A218009C */  sb         $t8, 0x9c($s0)
/* 94544 80093944 8C590E40 */  lw         $t9, 0xe40($v0)
/* 94548 80093948 8FAC0028 */  lw         $t4, 0x28($sp)
/* 9454C 8009394C 07210003 */  bgez       $t9, .L8009395C
/* 94550 80093950 00194103 */   sra       $t0, $t9, 4
/* 94554 80093954 2721000F */  addiu      $at, $t9, 0xf
/* 94558 80093958 00014103 */  sra        $t0, $at, 4
.L8009395C:
/* 9455C 8009395C A208009D */  sb         $t0, 0x9d($s0)
/* 94560 80093960 A208009E */  sb         $t0, 0x9e($s0)
/* 94564 80093964 954A26B2 */  lhu        $t2, 0x26b2($t2)
/* 94568 80093968 3C0142F0 */  lui        $at, 0x42f0
/* 9456C 8009396C A20A009F */  sb         $t2, 0x9f($s0)
/* 94570 80093970 8D8B0080 */  lw         $t3, 0x80($t4)
/* 94574 80093974 00000000 */  nop
/* 94578 80093978 11600005 */  beqz       $t3, .L80093990
/* 9457C 8009397C 00000000 */   nop
/* 94580 80093980 0C00C756 */  jal        func_80031D58
/* 94584 80093984 3225FFFF */   andi      $a1, $s1, 0xffff
/* 94588 80093988 10000005 */  b          .L800939A0
/* 9458C 8009398C 97A4003A */   lhu       $a0, 0x3a($sp)
.L80093990:
/* 94590 80093990 44813000 */  mtc1       $at, $f6
/* 94594 80093994 00000000 */  nop
/* 94598 80093998 E6060148 */  swc1       $f6, 0x148($s0)
.L8009399C:
/* 9459C 8009399C 97A4003A */  lhu        $a0, 0x3a($sp)
.L800939A0:
/* 945A0 800939A0 3C0E800F */  lui        $t6, 0x800f
/* 945A4 800939A4 00046880 */  sll        $t5, $a0, 2
/* 945A8 800939A8 01A46823 */  subu       $t5, $t5, $a0
/* 945AC 800939AC 000D6880 */  sll        $t5, $t5, 2
/* 945B0 800939B0 01A46821 */  addu       $t5, $t5, $a0
/* 945B4 800939B4 000D6880 */  sll        $t5, $t5, 2
/* 945B8 800939B8 01A46823 */  subu       $t5, $t5, $a0
/* 945BC 800939BC 000D68C0 */  sll        $t5, $t5, 3
/* 945C0 800939C0 01CD7021 */  addu       $t6, $t6, $t5
/* 945C4 800939C4 95CEF5E0 */  lhu        $t6, -0xa20($t6)
/* 945C8 800939C8 3C0F800C */  lui        $t7, %hi(D_800BE4E0)
/* 945CC 800939CC 29C100F5 */  slti       $at, $t6, 0xf5
/* 945D0 800939D0 1020008B */  beqz       $at, .L80093C00
/* 945D4 800939D4 8FBF0024 */   lw        $ra, 0x24($sp)
/* 945D8 800939D8 95EFE4E0 */  lhu        $t7, %lo(D_800BE4E0)($t7)
/* 945DC 800939DC 24010006 */  addiu      $at, $zero, 6
/* 945E0 800939E0 01E1001A */  div        $zero, $t7, $at
/* 945E4 800939E4 0000C010 */  mfhi       $t8
/* 945E8 800939E8 17000085 */  bnez       $t8, .L80093C00
/* 945EC 800939EC 8FBF0024 */   lw        $ra, 0x24($sp)
/* 945F0 800939F0 0C00A14A */  jal        func_80028528
/* 945F4 800939F4 00000000 */   nop
/* 945F8 800939F8 10400080 */  beqz       $v0, .L80093BFC
/* 945FC 800939FC 3051FFFF */   andi      $s1, $v0, 0xffff
/* 94600 80093A00 0011C880 */  sll        $t9, $s1, 2
/* 94604 80093A04 0331C823 */  subu       $t9, $t9, $s1
/* 94608 80093A08 0019C880 */  sll        $t9, $t9, 2
/* 9460C 80093A0C 0331C821 */  addu       $t9, $t9, $s1
/* 94610 80093A10 0019C880 */  sll        $t9, $t9, 2
/* 94614 80093A14 0331C823 */  subu       $t9, $t9, $s1
/* 94618 80093A18 3C08800F */  lui        $t0, %hi(gActors)
/* 9461C 80093A1C 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 94620 80093A20 0019C8C0 */  sll        $t9, $t9, 3
/* 94624 80093A24 03288021 */  addu       $s0, $t9, $t0
/* 94628 80093A28 2409006F */  addiu      $t1, $zero, 0x6f
/* 9462C 80093A2C A60900D2 */  sh         $t1, 0xd2($s0)
/* 94630 80093A30 0C0078B4 */  jal        func_8001E2D0
/* 94634 80093A34 3224FFFF */   andi      $a0, $s1, 0xffff
/* 94638 80093A38 960A0094 */  lhu        $t2, 0x94($s0)
/* 9463C 80093A3C 3C0E800E */  lui        $t6, %hi(D_800D98F4)
/* 94640 80093A40 240B000B */  addiu      $t3, $zero, 0xb
/* 94644 80093A44 240D00C8 */  addiu      $t5, $zero, 0xc8
/* 94648 80093A48 25CE98F4 */  addiu      $t6, $t6, %lo(D_800D98F4)
/* 9464C 80093A4C 354C0309 */  ori        $t4, $t2, 0x309
/* 94650 80093A50 A60C0094 */  sh         $t4, 0x94($s0)
/* 94654 80093A54 AE0B0080 */  sw         $t3, 0x80($s0)
/* 94658 80093A58 A60D0084 */  sh         $t5, 0x84($s0)
/* 9465C 80093A5C 0C0005E3 */  jal        func_8000178C
/* 94660 80093A60 AE0E018C */   sw        $t6, 0x18c($s0)
/* 94664 80093A64 240F0080 */  addiu      $t7, $zero, 0x80
/* 94668 80093A68 01E2C023 */  subu       $t8, $t7, $v0
/* 9466C 80093A6C 44984000 */  mtc1       $t8, $f8
/* 94670 80093A70 3C013FF4 */  lui        $at, 0x3ff4
/* 94674 80093A74 468042A0 */  cvt.s.w    $f10, $f8
/* 94678 80093A78 44819800 */  mtc1       $at, $f19
/* 9467C 80093A7C 44809000 */  mtc1       $zero, $f18
/* 94680 80093A80 46005421 */  cvt.d.s    $f16, $f10
/* 94684 80093A84 46328102 */  mul.d      $f4, $f16, $f18
/* 94688 80093A88 4459F800 */  cfc1       $t9, $31
/* 9468C 80093A8C 00000000 */  nop
/* 94690 80093A90 37210003 */  ori        $at, $t9, 3
/* 94694 80093A94 38210002 */  xori       $at, $at, 2
/* 94698 80093A98 44C1F800 */  ctc1       $at, $31
/* 9469C 80093A9C 00000000 */  nop
/* 946A0 80093AA0 462021A4 */  cvt.w.d    $f6, $f4
/* 946A4 80093AA4 44083000 */  mfc1       $t0, $f6
/* 946A8 80093AA8 44D9F800 */  ctc1       $t9, $31
/* 946AC 80093AAC 0C0005E3 */  jal        func_8000178C
/* 946B0 80093AB0 A6080088 */   sh        $t0, 0x88($s0)
/* 946B4 80093AB4 24090080 */  addiu      $t1, $zero, 0x80
/* 946B8 80093AB8 01225023 */  subu       $t2, $t1, $v0
/* 946BC 80093ABC 448A4000 */  mtc1       $t2, $f8
/* 946C0 80093AC0 3C01800F */  lui        $at, %hi(D_800ED430)
/* 946C4 80093AC4 468042A0 */  cvt.s.w    $f10, $f8
/* 946C8 80093AC8 3C0C800C */  lui        $t4, %hi(D_800BE73C)
/* 946CC 80093ACC 8D8CE73C */  lw         $t4, %lo(D_800BE73C)($t4)
/* 946D0 80093AD0 C433D430 */  lwc1       $f19, %lo(D_800ED430)($at)
/* 946D4 80093AD4 C432D434 */  lwc1       $f18, -0x2bcc($at)
/* 946D8 80093AD8 46005421 */  cvt.d.s    $f16, $f10
/* 946DC 80093ADC 46328102 */  mul.d      $f4, $f16, $f18
/* 946E0 80093AE0 05810003 */  bgez       $t4, .L80093AF0
/* 946E4 80093AE4 000C5B03 */   sra       $t3, $t4, 0xc
/* 946E8 80093AE8 25810FFF */  addiu      $at, $t4, 0xfff
/* 946EC 80093AEC 00015B03 */  sra        $t3, $at, 0xc
.L80093AF0:
/* 946F0 80093AF0 448B3000 */  mtc1       $t3, $f6
/* 946F4 80093AF4 00000000 */  nop
/* 946F8 80093AF8 46803221 */  cvt.d.w    $f8, $f6
/* 946FC 80093AFC 46282281 */  sub.d      $f10, $f4, $f8
/* 94700 80093B00 444DF800 */  cfc1       $t5, $31
/* 94704 80093B04 00000000 */  nop
/* 94708 80093B08 35A10003 */  ori        $at, $t5, 3
/* 9470C 80093B0C 38210002 */  xori       $at, $at, 2
/* 94710 80093B10 44C1F800 */  ctc1       $at, $31
/* 94714 80093B14 00000000 */  nop
/* 94718 80093B18 46205424 */  cvt.w.d    $f16, $f10
/* 9471C 80093B1C 440E8000 */  mfc1       $t6, $f16
/* 94720 80093B20 44CDF800 */  ctc1       $t5, $31
/* 94724 80093B24 0C0005E3 */  jal        func_8000178C
/* 94728 80093B28 A60E008C */   sh        $t6, 0x8c($s0)
/* 9472C 80093B2C 304F003F */  andi       $t7, $v0, 0x3f
/* 94730 80093B30 448F9000 */  mtc1       $t7, $f18
/* 94734 80093B34 3C014180 */  lui        $at, 0x4180
/* 94738 80093B38 44817000 */  mtc1       $at, $f14
/* 9473C 80093B3C 468090A0 */  cvt.s.w    $f2, $f18
/* 94740 80093B40 3C01C280 */  lui        $at, 0xc280
/* 94744 80093B44 44813000 */  mtc1       $at, $f6
/* 94748 80093B48 24080060 */  addiu      $t0, $zero, 0x60
/* 9474C 80093B4C 46023101 */  sub.s      $f4, $f6, $f2
/* 94750 80093B50 44803000 */  mtc1       $zero, $f6
/* 94754 80093B54 4458F800 */  cfc1       $t8, $31
/* 94758 80093B58 2409007F */  addiu      $t1, $zero, 0x7f
/* 9475C 80093B5C 37010003 */  ori        $at, $t8, 3
/* 94760 80093B60 38210002 */  xori       $at, $at, 2
/* 94764 80093B64 44C1F800 */  ctc1       $at, $31
/* 94768 80093B68 3C014280 */  lui        $at, 0x4280
/* 9476C 80093B6C 46002224 */  cvt.w.s    $f8, $f4
/* 94770 80093B70 44818000 */  mtc1       $at, $f16
/* 94774 80093B74 44D8F800 */  ctc1       $t8, $31
/* 94778 80093B78 3C014010 */  lui        $at, 0x4010
/* 9477C 80093B7C 46028481 */  sub.s      $f18, $f16, $f2
/* 94780 80093B80 44813800 */  mtc1       $at, $f7
/* 94784 80093B84 460E9303 */  div.s      $f12, $f18, $f14
/* 94788 80093B88 44194000 */  mfc1       $t9, $f8
/* 9478C 80093B8C 3C01800F */  lui        $at, 0x800f
/* 94790 80093B90 A6190090 */  sh         $t9, 0x90($s0)
/* 94794 80093B94 240A0010 */  addiu      $t2, $zero, 0x10
/* 94798 80093B98 460E1283 */  div.s      $f10, $f2, $f14
/* 9479C 80093B9C 46006021 */  cvt.d.s    $f0, $f12
/* 947A0 80093BA0 46260102 */  mul.d      $f4, $f0, $f6
/* 947A4 80093BA4 E60C011C */  swc1       $f12, 0x11c($s0)
/* 947A8 80093BA8 46202220 */  cvt.s.d    $f8, $f4
/* 947AC 80093BAC E60800B4 */  swc1       $f8, 0xb4($s0)
/* 947B0 80093BB0 E60A0118 */  swc1       $f10, 0x118($s0)
/* 947B4 80093BB4 C42AD43C */  lwc1       $f10, -0x2bc4($at)
/* 947B8 80093BB8 C42BD438 */  lwc1       $f11, -0x2bc8($at)
/* 947BC 80093BBC A208009F */  sb         $t0, 0x9f($s0)
/* 947C0 80093BC0 462A0402 */  mul.d      $f16, $f0, $f10
/* 947C4 80093BC4 A209009C */  sb         $t1, 0x9c($s0)
/* 947C8 80093BC8 AE0A0150 */  sw         $t2, 0x150($s0)
/* 947CC 80093BCC 3C01800F */  lui        $at, %hi(D_800ED444)
/* 947D0 80093BD0 462084A0 */  cvt.s.d    $f18, $f16
/* 947D4 80093BD4 E61200B8 */  swc1       $f18, 0xb8($s0)
/* 947D8 80093BD8 C426D444 */  lwc1       $f6, %lo(D_800ED444)($at)
/* 947DC 80093BDC C427D440 */  lwc1       $f7, -0x2bc0($at)
/* 947E0 80093BE0 3C0142B4 */  lui        $at, 0x42b4
/* 947E4 80093BE4 46260102 */  mul.d      $f4, $f0, $f6
/* 947E8 80093BE8 44815000 */  mtc1       $at, $f10
/* 947EC 80093BEC 00000000 */  nop
/* 947F0 80093BF0 E60A00C4 */  swc1       $f10, 0xc4($s0)
/* 947F4 80093BF4 46202220 */  cvt.s.d    $f8, $f4
/* 947F8 80093BF8 E6080114 */  swc1       $f8, 0x114($s0)
.L80093BFC:
/* 947FC 80093BFC 8FBF0024 */  lw         $ra, 0x24($sp)
.L80093C00:
/* 94800 80093C00 8FB0001C */  lw         $s0, 0x1c($sp)
/* 94804 80093C04 8FB10020 */  lw         $s1, 0x20($sp)
/* 94808 80093C08 03E00008 */  jr         $ra
/* 9480C 80093C0C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80093C10
/* 94810 80093C10 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 94814 80093C14 AFBF0014 */  sw         $ra, 0x14($sp)
/* 94818 80093C18 0C00A14A */  jal        func_80028528
/* 9481C 80093C1C AFA40020 */   sw        $a0, 0x20($sp)
/* 94820 80093C20 10400041 */  beqz       $v0, .L80093D28
/* 94824 80093C24 3045FFFF */   andi      $a1, $v0, 0xffff
/* 94828 80093C28 00057080 */  sll        $t6, $a1, 2
/* 9482C 80093C2C 01C57023 */  subu       $t6, $t6, $a1
/* 94830 80093C30 000E7080 */  sll        $t6, $t6, 2
/* 94834 80093C34 01C57021 */  addu       $t6, $t6, $a1
/* 94838 80093C38 000E7080 */  sll        $t6, $t6, 2
/* 9483C 80093C3C 01C57023 */  subu       $t6, $t6, $a1
/* 94840 80093C40 3C0F800F */  lui        $t7, %hi(gActors)
/* 94844 80093C44 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 94848 80093C48 000E70C0 */  sll        $t6, $t6, 3
/* 9484C 80093C4C 01CF1821 */  addu       $v1, $t6, $t7
/* 94850 80093C50 24180034 */  addiu      $t8, $zero, 0x34
/* 94854 80093C54 A47800D2 */  sh         $t8, 0xd2($v1)
/* 94858 80093C58 AFA30018 */  sw         $v1, 0x18($sp)
/* 9485C 80093C5C 30A4FFFF */  andi       $a0, $a1, 0xffff
/* 94860 80093C60 0C0078B4 */  jal        func_8001E2D0
/* 94864 80093C64 A7A5001E */   sh        $a1, 0x1e($sp)
/* 94868 80093C68 8FA30018 */  lw         $v1, 0x18($sp)
/* 9486C 80093C6C 97A40022 */  lhu        $a0, 0x22($sp)
/* 94870 80093C70 3C014120 */  lui        $at, 0x4120
/* 94874 80093C74 00045080 */  sll        $t2, $a0, 2
/* 94878 80093C78 44812000 */  mtc1       $at, $f4
/* 9487C 80093C7C 01445023 */  subu       $t2, $t2, $a0
/* 94880 80093C80 24190309 */  addiu      $t9, $zero, 0x309
/* 94884 80093C84 2408000B */  addiu      $t0, $zero, 0xb
/* 94888 80093C88 240900C8 */  addiu      $t1, $zero, 0xc8
/* 9488C 80093C8C 000A5080 */  sll        $t2, $t2, 2
/* 94890 80093C90 3C018018 */  lui        $at, 0x8018
/* 94894 80093C94 A4790094 */  sh         $t9, 0x94($v1)
/* 94898 80093C98 AC680080 */  sw         $t0, 0x80($v1)
/* 9489C 80093C9C A4690084 */  sh         $t1, 0x84($v1)
/* 948A0 80093CA0 01445021 */  addu       $t2, $t2, $a0
/* 948A4 80093CA4 E46400B4 */  swc1       $f4, 0xb4($v1)
/* 948A8 80093CA8 C42626B8 */  lwc1       $f6, 0x26b8($at)
/* 948AC 80093CAC 000A5080 */  sll        $t2, $t2, 2
/* 948B0 80093CB0 01445023 */  subu       $t2, $t2, $a0
/* 948B4 80093CB4 000A50C0 */  sll        $t2, $t2, 3
/* 948B8 80093CB8 3C0B800F */  lui        $t3, %hi(D_800EF5A0)
/* 948BC 80093CBC 016A5821 */  addu       $t3, $t3, $t2
/* 948C0 80093CC0 A4600088 */  sh         $zero, 0x88($v1)
/* 948C4 80093CC4 A460008C */  sh         $zero, 0x8c($v1)
/* 948C8 80093CC8 E46600B8 */  swc1       $f6, 0xb8($v1)
/* 948CC 80093CCC 856BF5A0 */  lh         $t3, %lo(D_800EF5A0)($t3)
/* 948D0 80093CD0 3C0D8018 */  lui        $t5, %hi(D_801826B4)
/* 948D4 80093CD4 256C0004 */  addiu      $t4, $t3, 4
/* 948D8 80093CD8 3C0142B4 */  lui        $at, 0x42b4
/* 948DC 80093CDC A46C0090 */  sh         $t4, 0x90($v1)
/* 948E0 80093CE0 95AD26B4 */  lhu        $t5, %lo(D_801826B4)($t5)
/* 948E4 80093CE4 44814000 */  mtc1       $at, $f8
/* 948E8 80093CE8 3C0E800C */  lui        $t6, %hi(D_800BE4E0)
/* 948EC 80093CEC A06D009F */  sb         $t5, 0x9f($v1)
/* 948F0 80093CF0 E46800C4 */  swc1       $f8, 0xc4($v1)
/* 948F4 80093CF4 95CEE4E0 */  lhu        $t6, %lo(D_800BE4E0)($t6)
/* 948F8 80093CF8 97A5001E */  lhu        $a1, 0x1e($sp)
/* 948FC 80093CFC 31CF0001 */  andi       $t7, $t6, 1
/* 94900 80093D00 11E00005 */  beqz       $t7, .L80093D18
/* 94904 80093D04 3C19800E */   lui       $t9, %hi(D_800D98F4)
/* 94908 80093D08 3C18800E */  lui        $t8, %hi(D_800D99A4)
/* 9490C 80093D0C 271899A4 */  addiu      $t8, $t8, %lo(D_800D99A4)
/* 94910 80093D10 10000003 */  b          .L80093D20
/* 94914 80093D14 AC78018C */   sw        $t8, 0x18c($v1)
.L80093D18:
/* 94918 80093D18 273998F4 */  addiu      $t9, $t9, %lo(D_800D98F4)
/* 9491C 80093D1C AC79018C */  sw         $t9, 0x18c($v1)
.L80093D20:
/* 94920 80093D20 0C00C756 */  jal        func_80031D58
/* 94924 80093D24 00000000 */   nop
.L80093D28:
/* 94928 80093D28 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9492C 80093D2C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 94930 80093D30 03E00008 */  jr         $ra
/* 94934 80093D34 00000000 */   nop

glabel func_80093D38
/* 94938 80093D38 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9493C 80093D3C AFA40030 */  sw         $a0, 0x30($sp)
/* 94940 80093D40 97AE0032 */  lhu        $t6, 0x32($sp)
/* 94944 80093D44 3C18800F */  lui        $t8, 0x800f
/* 94948 80093D48 000E7880 */  sll        $t7, $t6, 2
/* 9494C 80093D4C 01EE7823 */  subu       $t7, $t7, $t6
/* 94950 80093D50 000F7880 */  sll        $t7, $t7, 2
/* 94954 80093D54 01EE7821 */  addu       $t7, $t7, $t6
/* 94958 80093D58 000F7880 */  sll        $t7, $t7, 2
/* 9495C 80093D5C 01EE7823 */  subu       $t7, $t7, $t6
/* 94960 80093D60 000F78C0 */  sll        $t7, $t7, 3
/* 94964 80093D64 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 94968 80093D68 000E5880 */  sll        $t3, $t6, 2
/* 9496C 80093D6C 01F8C821 */  addu       $t9, $t7, $t8
/* 94970 80093D70 016E5823 */  subu       $t3, $t3, $t6
/* 94974 80093D74 AFBF001C */  sw         $ra, 0x1c($sp)
/* 94978 80093D78 AFB00018 */  sw         $s0, 0x18($sp)
/* 9497C 80093D7C AFB90020 */  sw         $t9, 0x20($sp)
/* 94980 80093D80 000B5880 */  sll        $t3, $t3, 2
/* 94984 80093D84 AFAE0024 */  sw         $t6, 0x24($sp)
/* 94988 80093D88 8F280FD8 */  lw         $t0, 0xfd8($t9)
/* 9498C 80093D8C 016E5821 */  addu       $t3, $t3, $t6
/* 94990 80093D90 000B5880 */  sll        $t3, $t3, 2
/* 94994 80093D94 3C0C800F */  lui        $t4, 0x800f
/* 94998 80093D98 016E5823 */  subu       $t3, $t3, $t6
/* 9499C 80093D9C 25090001 */  addiu      $t1, $t0, 1
/* 949A0 80093DA0 AF290FD8 */  sw         $t1, 0xfd8($t9)
/* 949A4 80093DA4 240A0001 */  addiu      $t2, $zero, 1
/* 949A8 80093DA8 3C01800C */  lui        $at, %hi(D_800BE4EC)
/* 949AC 80093DAC 000B58C0 */  sll        $t3, $t3, 3
/* 949B0 80093DB0 258CF510 */  addiu      $t4, $t4, -0xaf0
/* 949B4 80093DB4 A42AE4EC */  sh         $t2, %lo(D_800BE4EC)($at)
/* 949B8 80093DB8 016C8021 */  addu       $s0, $t3, $t4
/* 949BC 80093DBC 960200D0 */  lhu        $v0, 0xd0($s0)
/* 949C0 80093DC0 00000000 */  nop
/* 949C4 80093DC4 244DFF20 */  addiu      $t5, $v0, -0xe0
/* 949C8 80093DC8 2DA10017 */  sltiu      $at, $t5, 0x17
/* 949CC 80093DCC 10200398 */  beqz       $at, .L80094C30
/* 949D0 80093DD0 000D6880 */   sll       $t5, $t5, 2
/* 949D4 80093DD4 3C01800F */  lui        $at, %hi(D_800ED448)
/* 949D8 80093DD8 002D0821 */  addu       $at, $at, $t5
/* 949DC 80093DDC 8C2DD448 */  lw         $t5, %lo(D_800ED448)($at)
/* 949E0 80093DE0 00000000 */  nop
/* 949E4 80093DE4 01A00008 */  jr         $t5
/* 949E8 80093DE8 00000000 */   nop
/* 949EC 80093DEC 244F0001 */  addiu      $t7, $v0, 1
/* 949F0 80093DF0 97A40032 */  lhu        $a0, 0x32($sp)
/* 949F4 80093DF4 3C05800E */  lui        $a1, %hi(D_800E5E48)
/* 949F8 80093DF8 A60F00D0 */  sh         $t7, 0xd0($s0)
/* 949FC 80093DFC 24A55E48 */  addiu      $a1, $a1, %lo(D_800E5E48)
/* 94A00 80093E00 0C0205C8 */  jal        func_80081720
/* 94A04 80093E04 24060003 */   addiu     $a2, $zero, 3
/* 94A08 80093E08 8FA80020 */  lw         $t0, 0x20($sp)
/* 94A0C 80093E0C 24180068 */  addiu      $t8, $zero, 0x68
/* 94A10 80093E10 AD180B10 */  sw         $t8, 0xb10($t0)
/* 94A14 80093E14 A200009F */  sb         $zero, 0x9f($s0)
/* 94A18 80093E18 3C090004 */  lui        $t1, 4
/* 94A1C 80093E1C 3C01800C */  lui        $at, %hi(D_800BE73C)
/* 94A20 80093E20 AC29E73C */  sw         $t1, %lo(D_800BE73C)($at)
/* 94A24 80093E24 3C018018 */  lui        $at, %hi(D_801826B2)
/* 94A28 80093E28 241900A0 */  addiu      $t9, $zero, 0xa0
/* 94A2C 80093E2C A43926B2 */  sh         $t9, %lo(D_801826B2)($at)
/* 94A30 80093E30 0C000CD3 */  jal        func_8000334C
/* 94A34 80093E34 2404013C */   addiu     $a0, $zero, 0x13c
/* 94A38 80093E38 1000037E */  b          .L80094C34
/* 94A3C 80093E3C 8E0A0080 */   lw        $t2, 0x80($s0)
/* 94A40 80093E40 97A40032 */  lhu        $a0, 0x32($sp)
/* 94A44 80093E44 0C024D27 */  jal        func_8009349C
/* 94A48 80093E48 00000000 */   nop
/* 94A4C 80093E4C 8FAA0020 */  lw         $t2, 0x20($sp)
/* 94A50 80093E50 24050500 */  addiu      $a1, $zero, 0x500
/* 94A54 80093E54 8D440E40 */  lw         $a0, 0xe40($t2)
/* 94A58 80093E58 0C00A607 */  jal        func_8002981C
/* 94A5C 80093E5C 24060008 */   addiu     $a2, $zero, 8
/* 94A60 80093E60 8FAE0020 */  lw         $t6, 0x20($sp)
/* 94A64 80093E64 00000000 */  nop
/* 94A68 80093E68 8DCB0FD8 */  lw         $t3, 0xfd8($t6)
/* 94A6C 80093E6C ADC20E40 */  sw         $v0, 0xe40($t6)
/* 94A70 80093E70 2961005B */  slti       $at, $t3, 0x5b
/* 94A74 80093E74 1420036E */  bnez       $at, .L80094C30
/* 94A78 80093E78 00000000 */   nop
/* 94A7C 80093E7C 960C00D0 */  lhu        $t4, 0xd0($s0)
/* 94A80 80093E80 8FAF0020 */  lw         $t7, 0x20($sp)
/* 94A84 80093E84 258D0001 */  addiu      $t5, $t4, 1
/* 94A88 80093E88 A60D00D0 */  sh         $t5, 0xd0($s0)
/* 94A8C 80093E8C 10000368 */  b          .L80094C30
/* 94A90 80093E90 ADE00FD8 */   sw        $zero, 0xfd8($t7)
/* 94A94 80093E94 24580001 */  addiu      $t8, $v0, 1
/* 94A98 80093E98 97A40032 */  lhu        $a0, 0x32($sp)
/* 94A9C 80093E9C 3C05800E */  lui        $a1, %hi(D_800E5E48)
/* 94AA0 80093EA0 A61800D0 */  sh         $t8, 0xd0($s0)
/* 94AA4 80093EA4 24A55E48 */  addiu      $a1, $a1, %lo(D_800E5E48)
/* 94AA8 80093EA8 0C0205AB */  jal        func_800816AC
/* 94AAC 80093EAC 24060003 */   addiu     $a2, $zero, 3
/* 94AB0 80093EB0 97A40032 */  lhu        $a0, 0x32($sp)
/* 94AB4 80093EB4 3C05800F */  lui        $a1, %hi(D_800E8F60)
/* 94AB8 80093EB8 0C0205E4 */  jal        func_80081790
/* 94ABC 80093EBC 24A58F60 */   addiu     $a1, $a1, %lo(D_800E8F60)
/* 94AC0 80093EC0 8E0C0080 */  lw         $t4, 0x80($s0)
/* 94AC4 80093EC4 2401FFDF */  addiu      $at, $zero, -0x21
/* 94AC8 80093EC8 3C068018 */  lui        $a2, %hi(D_801826B0)
/* 94ACC 80093ECC 01816824 */  and        $t5, $t4, $at
/* 94AD0 80093ED0 24C626B0 */  addiu      $a2, $a2, %lo(D_801826B0)
/* 94AD4 80093ED4 24030080 */  addiu      $v1, $zero, 0x80
/* 94AD8 80093ED8 2408FFC8 */  addiu      $t0, $zero, -0x38
/* 94ADC 80093EDC 2409FFE0 */  addiu      $t1, $zero, -0x20
/* 94AE0 80093EE0 24192000 */  addiu      $t9, $zero, 0x2000
/* 94AE4 80093EE4 340AB000 */  ori        $t2, $zero, 0xb000
/* 94AE8 80093EE8 3C0EFFFF */  lui        $t6, 0xffff
/* 94AEC 80093EEC 240B61A8 */  addiu      $t3, $zero, 0x61a8
/* 94AF0 80093EF0 A609008C */  sh         $t1, 0x8c($s0)
/* 94AF4 80093EF4 A6080088 */  sh         $t0, 0x88($s0)
/* 94AF8 80093EF8 A6030090 */  sh         $v1, 0x90($s0)
/* 94AFC 80093EFC AE0E00F4 */  sw         $t6, 0xf4($s0)
/* 94B00 80093F00 AE0A00F0 */  sw         $t2, 0xf0($s0)
/* 94B04 80093F04 AE1900EC */  sw         $t9, 0xec($s0)
/* 94B08 80093F08 AE0B0168 */  sw         $t3, 0x168($s0)
/* 94B0C 80093F0C AE0D0080 */  sw         $t5, 0x80($s0)
/* 94B10 80093F10 A4C00000 */  sh         $zero, ($a2)
/* 94B14 80093F14 3C01800F */  lui        $at, %hi(D_800ED4A4)
/* 94B18 80093F18 C424D4A4 */  lwc1       $f4, %lo(D_800ED4A4)($at)
/* 94B1C 80093F1C 10000344 */  b          .L80094C30
/* 94B20 80093F20 E6040120 */   swc1      $f4, 0x120($s0)
/* 94B24 80093F24 244F0001 */  addiu      $t7, $v0, 1
/* 94B28 80093F28 97A40032 */  lhu        $a0, 0x32($sp)
/* 94B2C 80093F2C 3C05800E */  lui        $a1, %hi(D_800E5E48)
/* 94B30 80093F30 A60F00D0 */  sh         $t7, 0xd0($s0)
/* 94B34 80093F34 24A55E48 */  addiu      $a1, $a1, %lo(D_800E5E48)
/* 94B38 80093F38 0C0205AB */  jal        func_800816AC
/* 94B3C 80093F3C 24060003 */   addiu     $a2, $zero, 3
/* 94B40 80093F40 97A40032 */  lhu        $a0, 0x32($sp)
/* 94B44 80093F44 3C05800F */  lui        $a1, %hi(D_800E8D60)
/* 94B48 80093F48 0C0205E4 */  jal        func_80081790
/* 94B4C 80093F4C 24A58D60 */   addiu     $a1, $a1, %lo(D_800E8D60)
/* 94B50 80093F50 8E0C0080 */  lw         $t4, 0x80($s0)
/* 94B54 80093F54 3C068018 */  lui        $a2, %hi(D_801826B0)
/* 94B58 80093F58 24C626B0 */  addiu      $a2, $a2, %lo(D_801826B0)
/* 94B5C 80093F5C 24180038 */  addiu      $t8, $zero, 0x38
/* 94B60 80093F60 2408FFE0 */  addiu      $t0, $zero, -0x20
/* 94B64 80093F64 24090040 */  addiu      $t1, $zero, 0x40
/* 94B68 80093F68 2419E000 */  addiu      $t9, $zero, -0x2000
/* 94B6C 80093F6C 340AA000 */  ori        $t2, $zero, 0xa000
/* 94B70 80093F70 3C0EFFFF */  lui        $t6, 0xffff
/* 94B74 80093F74 240B4E20 */  addiu      $t3, $zero, 0x4e20
/* 94B78 80093F78 358D0020 */  ori        $t5, $t4, 0x20
/* 94B7C 80093F7C A6090090 */  sh         $t1, 0x90($s0)
/* 94B80 80093F80 A608008C */  sh         $t0, 0x8c($s0)
/* 94B84 80093F84 A6180088 */  sh         $t8, 0x88($s0)
/* 94B88 80093F88 AE0E00F4 */  sw         $t6, 0xf4($s0)
/* 94B8C 80093F8C AE0A00F0 */  sw         $t2, 0xf0($s0)
/* 94B90 80093F90 AE1900EC */  sw         $t9, 0xec($s0)
/* 94B94 80093F94 AE0B0168 */  sw         $t3, 0x168($s0)
/* 94B98 80093F98 AE0D0080 */  sw         $t5, 0x80($s0)
/* 94B9C 80093F9C A4C00000 */  sh         $zero, ($a2)
/* 94BA0 80093FA0 3C01800F */  lui        $at, %hi(D_800ED4A8)
/* 94BA4 80093FA4 C426D4A8 */  lwc1       $f6, %lo(D_800ED4A8)($at)
/* 94BA8 80093FA8 10000321 */  b          .L80094C30
/* 94BAC 80093FAC E6060120 */   swc1      $f6, 0x120($s0)
/* 94BB0 80093FB0 244F0001 */  addiu      $t7, $v0, 1
/* 94BB4 80093FB4 97A40032 */  lhu        $a0, 0x32($sp)
/* 94BB8 80093FB8 3C05800E */  lui        $a1, %hi(D_800E5E48)
/* 94BBC 80093FBC A60F00D0 */  sh         $t7, 0xd0($s0)
/* 94BC0 80093FC0 24A55E48 */  addiu      $a1, $a1, %lo(D_800E5E48)
/* 94BC4 80093FC4 0C0205AB */  jal        func_800816AC
/* 94BC8 80093FC8 24060003 */   addiu     $a2, $zero, 3
/* 94BCC 80093FCC 97A40032 */  lhu        $a0, 0x32($sp)
/* 94BD0 80093FD0 3C05800F */  lui        $a1, %hi(D_800E8C40)
/* 94BD4 80093FD4 0C0205E4 */  jal        func_80081790
/* 94BD8 80093FD8 24A58C40 */   addiu     $a1, $a1, %lo(D_800E8C40)
/* 94BDC 80093FDC 8E0A0080 */  lw         $t2, 0x80($s0)
/* 94BE0 80093FE0 2401FFDF */  addiu      $at, $zero, -0x21
/* 94BE4 80093FE4 01417024 */  and        $t6, $t2, $at
/* 94BE8 80093FE8 3C014040 */  lui        $at, 0x4040
/* 94BEC 80093FEC 44814000 */  mtc1       $at, $f8
/* 94BF0 80093FF0 3C068018 */  lui        $a2, %hi(D_801826B0)
/* 94BF4 80093FF4 24C626B0 */  addiu      $a2, $a2, %lo(D_801826B0)
/* 94BF8 80093FF8 24030080 */  addiu      $v1, $zero, 0x80
/* 94BFC 80093FFC 2418FFB8 */  addiu      $t8, $zero, -0x48
/* 94C00 80094000 3C080001 */  lui        $t0, 1
/* 94C04 80094004 3C09FFFE */  lui        $t1, 0xfffe
/* 94C08 80094008 241961A8 */  addiu      $t9, $zero, 0x61a8
/* 94C0C 8009400C 97A40032 */  lhu        $a0, 0x32($sp)
/* 94C10 80094010 A618008C */  sh         $t8, 0x8c($s0)
/* 94C14 80094014 A6030090 */  sh         $v1, 0x90($s0)
/* 94C18 80094018 A6000088 */  sh         $zero, 0x88($s0)
/* 94C1C 8009401C AE0900F4 */  sw         $t1, 0xf4($s0)
/* 94C20 80094020 AE0800F0 */  sw         $t0, 0xf0($s0)
/* 94C24 80094024 AE0000EC */  sw         $zero, 0xec($s0)
/* 94C28 80094028 AE190168 */  sw         $t9, 0x168($s0)
/* 94C2C 8009402C AE0E0080 */  sw         $t6, 0x80($s0)
/* 94C30 80094030 A4C00000 */  sh         $zero, ($a2)
/* 94C34 80094034 24050002 */  addiu      $a1, $zero, 2
/* 94C38 80094038 0C024D6E */  jal        func_800935B8
/* 94C3C 8009403C E6080120 */   swc1      $f8, 0x120($s0)
/* 94C40 80094040 100002FC */  b          .L80094C34
/* 94C44 80094044 8E0A0080 */   lw        $t2, 0x80($s0)
/* 94C48 80094048 9204009F */  lbu        $a0, 0x9f($s0)
/* 94C4C 8009404C 240500FF */  addiu      $a1, $zero, 0xff
/* 94C50 80094050 0C00A607 */  jal        func_8002981C
/* 94C54 80094054 24060008 */   addiu     $a2, $zero, 8
/* 94C58 80094058 8E0B0168 */  lw         $t3, 0x168($s0)
/* 94C5C 8009405C 960D00D0 */  lhu        $t5, 0xd0($s0)
/* 94C60 80094060 240100EB */  addiu      $at, $zero, 0xeb
/* 94C64 80094064 256CFFCE */  addiu      $t4, $t3, -0x32
/* 94C68 80094068 A202009F */  sb         $v0, 0x9f($s0)
/* 94C6C 8009406C 11A10004 */  beq        $t5, $at, .L80094080
/* 94C70 80094070 AE0C0168 */   sw        $t4, 0x168($s0)
/* 94C74 80094074 97A40032 */  lhu        $a0, 0x32($sp)
/* 94C78 80094078 0C024D95 */  jal        func_80093654
/* 94C7C 8009407C 00000000 */   nop
.L80094080:
/* 94C80 80094080 8FAF0020 */  lw         $t7, 0x20($sp)
/* 94C84 80094084 24050500 */  addiu      $a1, $zero, 0x500
/* 94C88 80094088 8DE40E40 */  lw         $a0, 0xe40($t7)
/* 94C8C 8009408C 0C00A607 */  jal        func_8002981C
/* 94C90 80094090 24060008 */   addiu     $a2, $zero, 8
/* 94C94 80094094 8FB80020 */  lw         $t8, 0x20($sp)
/* 94C98 80094098 3C068018 */  lui        $a2, %hi(D_801826B0)
/* 94C9C 8009409C 24C626B0 */  addiu      $a2, $a2, %lo(D_801826B0)
/* 94CA0 800940A0 AF020E40 */  sw         $v0, 0xe40($t8)
/* 94CA4 800940A4 84C80000 */  lh         $t0, ($a2)
/* 94CA8 800940A8 97A40032 */  lhu        $a0, 0x32($sp)
/* 94CAC 800940AC 25090008 */  addiu      $t1, $t0, 8
/* 94CB0 800940B0 0C024C73 */  jal        func_800931CC
/* 94CB4 800940B4 A4C90000 */   sh        $t1, ($a2)
/* 94CB8 800940B8 8FB90020 */  lw         $t9, 0x20($sp)
/* 94CBC 800940BC 00000000 */  nop
/* 94CC0 800940C0 8F2A0FD8 */  lw         $t2, 0xfd8($t9)
/* 94CC4 800940C4 00000000 */  nop
/* 94CC8 800940C8 2941002E */  slti       $at, $t2, 0x2e
/* 94CCC 800940CC 142002D8 */  bnez       $at, .L80094C30
/* 94CD0 800940D0 00000000 */   nop
/* 94CD4 800940D4 960E00D0 */  lhu        $t6, 0xd0($s0)
/* 94CD8 800940D8 00000000 */  nop
/* 94CDC 800940DC 25CB0001 */  addiu      $t3, $t6, 1
/* 94CE0 800940E0 100002D3 */  b          .L80094C30
/* 94CE4 800940E4 A60B00D0 */   sh        $t3, 0xd0($s0)
/* 94CE8 800940E8 9204009F */  lbu        $a0, 0x9f($s0)
/* 94CEC 800940EC 00002825 */  or         $a1, $zero, $zero
/* 94CF0 800940F0 0C00A607 */  jal        func_8002981C
/* 94CF4 800940F4 24060008 */   addiu     $a2, $zero, 8
/* 94CF8 800940F8 3C068018 */  lui        $a2, %hi(D_801826B0)
/* 94CFC 800940FC 24C626B0 */  addiu      $a2, $a2, %lo(D_801826B0)
/* 94D00 80094100 84CC0000 */  lh         $t4, ($a2)
/* 94D04 80094104 97A40032 */  lhu        $a0, 0x32($sp)
/* 94D08 80094108 258DFFF8 */  addiu      $t5, $t4, -8
/* 94D0C 8009410C A202009F */  sb         $v0, 0x9f($s0)
/* 94D10 80094110 0C024C73 */  jal        func_800931CC
/* 94D14 80094114 A4CD0000 */   sh        $t5, ($a2)
/* 94D18 80094118 920F009F */  lbu        $t7, 0x9f($s0)
/* 94D1C 8009411C 3C05800E */  lui        $a1, %hi(D_800E5E48)
/* 94D20 80094120 15E00009 */  bnez       $t7, .L80094148
/* 94D24 80094124 24A55E48 */   addiu     $a1, $a1, %lo(D_800E5E48)
/* 94D28 80094128 961800D0 */  lhu        $t8, 0xd0($s0)
/* 94D2C 8009412C 97A40032 */  lhu        $a0, 0x32($sp)
/* 94D30 80094130 27080001 */  addiu      $t0, $t8, 1
/* 94D34 80094134 A60800D0 */  sh         $t0, 0xd0($s0)
/* 94D38 80094138 0C0205C8 */  jal        func_80081720
/* 94D3C 8009413C 24060003 */   addiu     $a2, $zero, 3
/* 94D40 80094140 100002BC */  b          .L80094C34
/* 94D44 80094144 8E0A0080 */   lw        $t2, 0x80($s0)
.L80094148:
/* 94D48 80094148 8E090168 */  lw         $t1, 0x168($s0)
/* 94D4C 8009414C 97A40032 */  lhu        $a0, 0x32($sp)
/* 94D50 80094150 2539FFCE */  addiu      $t9, $t1, -0x32
/* 94D54 80094154 0C024D95 */  jal        func_80093654
/* 94D58 80094158 AE190168 */   sw        $t9, 0x168($s0)
/* 94D5C 8009415C 100002B5 */  b          .L80094C34
/* 94D60 80094160 8E0A0080 */   lw        $t2, 0x80($s0)
/* 94D64 80094164 8FAA0020 */  lw         $t2, 0x20($sp)
/* 94D68 80094168 244B0001 */  addiu      $t3, $v0, 1
/* 94D6C 8009416C 8D4E0FD8 */  lw         $t6, 0xfd8($t2)
/* 94D70 80094170 00000000 */  nop
/* 94D74 80094174 29C1005B */  slti       $at, $t6, 0x5b
/* 94D78 80094178 142002AD */  bnez       $at, .L80094C30
/* 94D7C 8009417C 00000000 */   nop
/* 94D80 80094180 8FAC0020 */  lw         $t4, 0x20($sp)
/* 94D84 80094184 A60B00D0 */  sh         $t3, 0xd0($s0)
/* 94D88 80094188 100002A9 */  b          .L80094C30
/* 94D8C 8009418C AD800FD8 */   sw        $zero, 0xfd8($t4)
/* 94D90 80094190 244D0001 */  addiu      $t5, $v0, 1
/* 94D94 80094194 97A40032 */  lhu        $a0, 0x32($sp)
/* 94D98 80094198 3C05800F */  lui        $a1, %hi(D_800E8EC8)
/* 94D9C 8009419C A60D00D0 */  sh         $t5, 0xd0($s0)
/* 94DA0 800941A0 0C0205E4 */  jal        func_80081790
/* 94DA4 800941A4 24A58EC8 */   addiu     $a1, $a1, %lo(D_800E8EC8)
/* 94DA8 800941A8 3C013F80 */  lui        $at, 0x3f80
/* 94DAC 800941AC 44815000 */  mtc1       $at, $f10
/* 94DB0 800941B0 00000000 */  nop
/* 94DB4 800941B4 E60A0120 */  swc1       $f10, 0x120($s0)
/* 94DB8 800941B8 3C068018 */  lui        $a2, %hi(D_801826B0)
/* 94DBC 800941BC 24C626B0 */  addiu      $a2, $a2, %lo(D_801826B0)
/* 94DC0 800941C0 8E0F00F0 */  lw         $t7, 0xf0($s0)
/* 94DC4 800941C4 84C80000 */  lh         $t0, ($a2)
/* 94DC8 800941C8 97A40032 */  lhu        $a0, 0x32($sp)
/* 94DCC 800941CC 25F8FB00 */  addiu      $t8, $t7, -0x500
/* 94DD0 800941D0 2509FFF8 */  addiu      $t1, $t0, -8
/* 94DD4 800941D4 AE1800F0 */  sw         $t8, 0xf0($s0)
/* 94DD8 800941D8 0C024C73 */  jal        func_800931CC
/* 94DDC 800941DC A4C90000 */   sh        $t1, ($a2)
/* 94DE0 800941E0 8E19016C */  lw         $t9, 0x16c($s0)
/* 94DE4 800941E4 3C08800F */  lui        $t0, %hi(gActors)
/* 94DE8 800941E8 332A0001 */  andi       $t2, $t9, 1
/* 94DEC 800941EC 11400290 */  beqz       $t2, .L80094C30
/* 94DF0 800941F0 2508F510 */   addiu     $t0, $t0, %lo(gActors)
/* 94DF4 800941F4 8FAC0024 */  lw         $t4, 0x24($sp)
/* 94DF8 800941F8 960E00D0 */  lhu        $t6, 0xd0($s0)
/* 94DFC 800941FC 258D0018 */  addiu      $t5, $t4, 0x18
/* 94E00 80094200 31AFFFFF */  andi       $t7, $t5, 0xffff
/* 94E04 80094204 000FC080 */  sll        $t8, $t7, 2
/* 94E08 80094208 030FC023 */  subu       $t8, $t8, $t7
/* 94E0C 8009420C 0018C080 */  sll        $t8, $t8, 2
/* 94E10 80094210 030FC021 */  addu       $t8, $t8, $t7
/* 94E14 80094214 0018C080 */  sll        $t8, $t8, 2
/* 94E18 80094218 030FC023 */  subu       $t8, $t8, $t7
/* 94E1C 8009421C 0018C0C0 */  sll        $t8, $t8, 3
/* 94E20 80094220 25CB0001 */  addiu      $t3, $t6, 1
/* 94E24 80094224 A60B00D0 */  sh         $t3, 0xd0($s0)
/* 94E28 80094228 03081021 */  addu       $v0, $t8, $t0
/* 94E2C 8009422C 944900D0 */  lhu        $t1, 0xd0($v0)
/* 94E30 80094230 8FAE0020 */  lw         $t6, 0x20($sp)
/* 94E34 80094234 3C0A0008 */  lui        $t2, 8
/* 94E38 80094238 25390001 */  addiu      $t9, $t1, 1
/* 94E3C 8009423C A45900D0 */  sh         $t9, 0xd0($v0)
/* 94E40 80094240 AC4A00F0 */  sw         $t2, 0xf0($v0)
/* 94E44 80094244 2404002A */  addiu      $a0, $zero, 0x2a
/* 94E48 80094248 0C000CD3 */  jal        func_8000334C
/* 94E4C 8009424C ADC00FD8 */   sw        $zero, 0xfd8($t6)
/* 94E50 80094250 10000278 */  b          .L80094C34
/* 94E54 80094254 8E0A0080 */   lw        $t2, 0x80($s0)
/* 94E58 80094258 C610011C */  lwc1       $f16, 0x11c($s0)
/* 94E5C 8009425C 44809000 */  mtc1       $zero, $f18
/* 94E60 80094260 8E0B00F0 */  lw         $t3, 0xf0($s0)
/* 94E64 80094264 8E0D00F4 */  lw         $t5, 0xf4($s0)
/* 94E68 80094268 4612803C */  c.lt.s     $f16, $f18
/* 94E6C 8009426C 256CE000 */  addiu      $t4, $t3, -0x2000
/* 94E70 80094270 25AF2000 */  addiu      $t7, $t5, 0x2000
/* 94E74 80094274 AE0C00F0 */  sw         $t4, 0xf0($s0)
/* 94E78 80094278 4500026D */  bc1f       .L80094C30
/* 94E7C 8009427C AE0F00F4 */   sw        $t7, 0xf4($s0)
/* 94E80 80094280 97A40032 */  lhu        $a0, 0x32($sp)
/* 94E84 80094284 0C024D04 */  jal        func_80093410
/* 94E88 80094288 00000000 */   nop
/* 94E8C 8009428C 10400268 */  beqz       $v0, .L80094C30
/* 94E90 80094290 24050001 */   addiu     $a1, $zero, 1
/* 94E94 80094294 961800D0 */  lhu        $t8, 0xd0($s0)
/* 94E98 80094298 97A40032 */  lhu        $a0, 0x32($sp)
/* 94E9C 8009429C 27080001 */  addiu      $t0, $t8, 1
/* 94EA0 800942A0 0C024D6E */  jal        func_800935B8
/* 94EA4 800942A4 A60800D0 */   sh        $t0, 0xd0($s0)
/* 94EA8 800942A8 8FA90020 */  lw         $t1, 0x20($sp)
/* 94EAC 800942AC 3C05800E */  lui        $a1, %hi(D_800E5E48)
/* 94EB0 800942B0 AD200FD8 */  sw         $zero, 0xfd8($t1)
/* 94EB4 800942B4 97A40032 */  lhu        $a0, 0x32($sp)
/* 94EB8 800942B8 24A55E48 */  addiu      $a1, $a1, %lo(D_800E5E48)
/* 94EBC 800942BC 0C0205C8 */  jal        func_80081720
/* 94EC0 800942C0 24060003 */   addiu     $a2, $zero, 3
/* 94EC4 800942C4 3C018018 */  lui        $at, %hi(D_801826B2)
/* 94EC8 800942C8 A42026B2 */  sh         $zero, %lo(D_801826B2)($at)
/* 94ECC 800942CC 0C000CD3 */  jal        func_8000334C
/* 94ED0 800942D0 2404013D */   addiu     $a0, $zero, 0x13d
/* 94ED4 800942D4 10000257 */  b          .L80094C34
/* 94ED8 800942D8 8E0A0080 */   lw        $t2, 0x80($s0)
/* 94EDC 800942DC 97A40032 */  lhu        $a0, 0x32($sp)
/* 94EE0 800942E0 0C024D27 */  jal        func_8009349C
/* 94EE4 800942E4 00000000 */   nop
/* 94EE8 800942E8 8FB90020 */  lw         $t9, 0x20($sp)
/* 94EEC 800942EC 24050500 */  addiu      $a1, $zero, 0x500
/* 94EF0 800942F0 8F240E40 */  lw         $a0, 0xe40($t9)
/* 94EF4 800942F4 0C00A607 */  jal        func_8002981C
/* 94EF8 800942F8 24060008 */   addiu     $a2, $zero, 8
/* 94EFC 800942FC 8FAA0020 */  lw         $t2, 0x20($sp)
/* 94F00 80094300 3C048018 */  lui        $a0, %hi(D_801826B2)
/* 94F04 80094304 AD420E40 */  sw         $v0, 0xe40($t2)
/* 94F08 80094308 948426B2 */  lhu        $a0, %lo(D_801826B2)($a0)
/* 94F0C 8009430C 240500A0 */  addiu      $a1, $zero, 0xa0
/* 94F10 80094310 0C00A607 */  jal        func_8002981C
/* 94F14 80094314 24060001 */   addiu     $a2, $zero, 1
/* 94F18 80094318 8FAE0020 */  lw         $t6, 0x20($sp)
/* 94F1C 8009431C 3C018018 */  lui        $at, %hi(D_801826B2)
/* 94F20 80094320 A42226B2 */  sh         $v0, %lo(D_801826B2)($at)
/* 94F24 80094324 8DCB0FD8 */  lw         $t3, 0xfd8($t6)
/* 94F28 80094328 3C19800F */  lui        $t9, %hi(gActors)
/* 94F2C 8009432C 2961012D */  slti       $at, $t3, 0x12d
/* 94F30 80094330 1420023F */  bnez       $at, .L80094C30
/* 94F34 80094334 2739F510 */   addiu     $t9, $t9, %lo(gActors)
/* 94F38 80094338 8FAF0024 */  lw         $t7, 0x24($sp)
/* 94F3C 8009433C 960C00D0 */  lhu        $t4, 0xd0($s0)
/* 94F40 80094340 25F80018 */  addiu      $t8, $t7, 0x18
/* 94F44 80094344 3308FFFF */  andi       $t0, $t8, 0xffff
/* 94F48 80094348 00084880 */  sll        $t1, $t0, 2
/* 94F4C 8009434C 01284823 */  subu       $t1, $t1, $t0
/* 94F50 80094350 00094880 */  sll        $t1, $t1, 2
/* 94F54 80094354 01284821 */  addu       $t1, $t1, $t0
/* 94F58 80094358 00094880 */  sll        $t1, $t1, 2
/* 94F5C 8009435C 01284823 */  subu       $t1, $t1, $t0
/* 94F60 80094360 000948C0 */  sll        $t1, $t1, 3
/* 94F64 80094364 258D0001 */  addiu      $t5, $t4, 1
/* 94F68 80094368 A60D00D0 */  sh         $t5, 0xd0($s0)
/* 94F6C 8009436C 01391021 */  addu       $v0, $t1, $t9
/* 94F70 80094370 944A00D0 */  lhu        $t2, 0xd0($v0)
/* 94F74 80094374 00000000 */  nop
/* 94F78 80094378 254E0001 */  addiu      $t6, $t2, 1
/* 94F7C 8009437C 1000022C */  b          .L80094C30
/* 94F80 80094380 A44E00D0 */   sh        $t6, 0xd0($v0)
/* 94F84 80094384 3C04800C */  lui        $a0, %hi(D_800BE73C)
/* 94F88 80094388 8C84E73C */  lw         $a0, %lo(D_800BE73C)($a0)
/* 94F8C 8009438C 3C05FFFC */  lui        $a1, 0xfffc
/* 94F90 80094390 0C00A607 */  jal        func_8002981C
/* 94F94 80094394 24062000 */   addiu     $a2, $zero, 0x2000
/* 94F98 80094398 8FAB0020 */  lw         $t3, 0x20($sp)
/* 94F9C 8009439C 3C01800C */  lui        $at, %hi(D_800BE73C)
/* 94FA0 800943A0 AC22E73C */  sw         $v0, %lo(D_800BE73C)($at)
/* 94FA4 800943A4 8D640E40 */  lw         $a0, 0xe40($t3)
/* 94FA8 800943A8 24050500 */  addiu      $a1, $zero, 0x500
/* 94FAC 800943AC 0C00A607 */  jal        func_8002981C
/* 94FB0 800943B0 24060008 */   addiu     $a2, $zero, 8
/* 94FB4 800943B4 8FAC0020 */  lw         $t4, 0x20($sp)
/* 94FB8 800943B8 240EFF80 */  addiu      $t6, $zero, -0x80
/* 94FBC 800943BC 8D8D0FD8 */  lw         $t5, 0xfd8($t4)
/* 94FC0 800943C0 240B0040 */  addiu      $t3, $zero, 0x40
/* 94FC4 800943C4 29A10169 */  slti       $at, $t5, 0x169
/* 94FC8 800943C8 14200219 */  bnez       $at, .L80094C30
/* 94FCC 800943CC AD820E40 */   sw        $v0, 0xe40($t4)
/* 94FD0 800943D0 8FAF0024 */  lw         $t7, 0x24($sp)
/* 94FD4 800943D4 3C01800F */  lui        $at, 0x800f
/* 94FD8 800943D8 25F80018 */  addiu      $t8, $t7, 0x18
/* 94FDC 800943DC 3308FFFF */  andi       $t0, $t8, 0xffff
/* 94FE0 800943E0 00084880 */  sll        $t1, $t0, 2
/* 94FE4 800943E4 01284823 */  subu       $t1, $t1, $t0
/* 94FE8 800943E8 00094880 */  sll        $t1, $t1, 2
/* 94FEC 800943EC 01284821 */  addu       $t1, $t1, $t0
/* 94FF0 800943F0 00094880 */  sll        $t1, $t1, 2
/* 94FF4 800943F4 01284823 */  subu       $t1, $t1, $t0
/* 94FF8 800943F8 000948C0 */  sll        $t1, $t1, 3
/* 94FFC 800943FC 00290821 */  addu       $at, $at, $t1
/* 95000 80094400 AC20F590 */  sw         $zero, -0xa70($at)
/* 95004 80094404 AD800FD8 */  sw         $zero, 0xfd8($t4)
/* 95008 80094408 8E180080 */  lw         $t8, 0x80($s0)
/* 9500C 8009440C 2401FFDF */  addiu      $at, $zero, -0x21
/* 95010 80094410 03014024 */  and        $t0, $t8, $at
/* 95014 80094414 961900D0 */  lhu        $t9, 0xd0($s0)
/* 95018 80094418 3C013F80 */  lui        $at, 0x3f80
/* 9501C 8009441C 44812000 */  mtc1       $at, $f4
/* 95020 80094420 3C0D0002 */  lui        $t5, 2
/* 95024 80094424 35ADA000 */  ori        $t5, $t5, 0xa000
/* 95028 80094428 240F4650 */  addiu      $t7, $zero, 0x4650
/* 9502C 8009442C 240900FF */  addiu      $t1, $zero, 0xff
/* 95030 80094430 272A0001 */  addiu      $t2, $t9, 1
/* 95034 80094434 A60A00D0 */  sh         $t2, 0xd0($s0)
/* 95038 80094438 A60B0090 */  sh         $t3, 0x90($s0)
/* 9503C 8009443C A60E008C */  sh         $t6, 0x8c($s0)
/* 95040 80094440 A6000088 */  sh         $zero, 0x88($s0)
/* 95044 80094444 AE0D00F0 */  sw         $t5, 0xf0($s0)
/* 95048 80094448 AE0000F4 */  sw         $zero, 0xf4($s0)
/* 9504C 8009444C AE0000EC */  sw         $zero, 0xec($s0)
/* 95050 80094450 AE0F0168 */  sw         $t7, 0x168($s0)
/* 95054 80094454 AE080080 */  sw         $t0, 0x80($s0)
/* 95058 80094458 A209009F */  sb         $t1, 0x9f($s0)
/* 9505C 8009445C 2404004F */  addiu      $a0, $zero, 0x4f
/* 95060 80094460 0C000CD3 */  jal        func_8000334C
/* 95064 80094464 E6040120 */   swc1      $f4, 0x120($s0)
/* 95068 80094468 100001F2 */  b          .L80094C34
/* 9506C 8009446C 8E0A0080 */   lw        $t2, 0x80($s0)
/* 95070 80094470 244C0001 */  addiu      $t4, $v0, 1
/* 95074 80094474 97A40032 */  lhu        $a0, 0x32($sp)
/* 95078 80094478 3C05800E */  lui        $a1, %hi(D_800E5E48)
/* 9507C 8009447C A60C00D0 */  sh         $t4, 0xd0($s0)
/* 95080 80094480 24A55E48 */  addiu      $a1, $a1, %lo(D_800E5E48)
/* 95084 80094484 0C0205AB */  jal        func_800816AC
/* 95088 80094488 24060003 */   addiu     $a2, $zero, 3
/* 9508C 8009448C 3C04800C */  lui        $a0, %hi(D_800BE73C)
/* 95090 80094490 8C84E73C */  lw         $a0, %lo(D_800BE73C)($a0)
/* 95094 80094494 3C05FFFC */  lui        $a1, 0xfffc
/* 95098 80094498 0C00A607 */  jal        func_8002981C
/* 9509C 8009449C 24061000 */   addiu     $a2, $zero, 0x1000
/* 950A0 800944A0 3C01800C */  lui        $at, %hi(D_800BE73C)
/* 950A4 800944A4 97A40032 */  lhu        $a0, 0x32($sp)
/* 950A8 800944A8 AC22E73C */  sw         $v0, %lo(D_800BE73C)($at)
/* 950AC 800944AC 0C0253C9 */  jal        func_80094F24
/* 950B0 800944B0 00002825 */   or        $a1, $zero, $zero
/* 950B4 800944B4 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 950B8 800944B8 00002825 */  or         $a1, $zero, $zero
/* 950BC 800944BC 0C00A607 */  jal        func_8002981C
/* 950C0 800944C0 24060800 */   addiu     $a2, $zero, 0x800
/* 950C4 800944C4 8FB90020 */  lw         $t9, 0x20($sp)
/* 950C8 800944C8 AE0200F0 */  sw         $v0, 0xf0($s0)
/* 950CC 800944CC 8F230FD8 */  lw         $v1, 0xfd8($t9)
/* 950D0 800944D0 00000000 */  nop
/* 950D4 800944D4 2861003C */  slti       $at, $v1, 0x3c
/* 950D8 800944D8 1420001B */  bnez       $at, .L80094548
/* 950DC 800944DC 28610078 */   slti      $at, $v1, 0x78
/* 950E0 800944E0 10200019 */  beqz       $at, .L80094548
/* 950E4 800944E4 3C05800F */   lui       $a1, 0x800f
/* 950E8 800944E8 2861005B */  slti       $at, $v1, 0x5b
/* 950EC 800944EC 14200008 */  bnez       $at, .L80094510
/* 950F0 800944F0 3C068018 */   lui       $a2, 0x8018
/* 950F4 800944F4 3C068018 */  lui        $a2, %hi(D_801826B0)
/* 950F8 800944F8 24C626B0 */  addiu      $a2, $a2, %lo(D_801826B0)
/* 950FC 800944FC 84CA0000 */  lh         $t2, ($a2)
/* 95100 80094500 00000000 */  nop
/* 95104 80094504 254EFFF0 */  addiu      $t6, $t2, -0x10
/* 95108 80094508 10000006 */  b          .L80094524
/* 9510C 8009450C A4CE0000 */   sh        $t6, ($a2)
.L80094510:
/* 95110 80094510 24C626B0 */  addiu      $a2, $a2, 0x26b0
/* 95114 80094514 84CB0000 */  lh         $t3, ($a2)
/* 95118 80094518 00000000 */  nop
/* 9511C 8009451C 256D0020 */  addiu      $t5, $t3, 0x20
/* 95120 80094520 A4CD0000 */  sh         $t5, ($a2)
.L80094524:
/* 95124 80094524 97A40032 */  lhu        $a0, 0x32($sp)
/* 95128 80094528 0C024C3B */  jal        func_800930EC
/* 9512C 8009452C 24A5927C */   addiu     $a1, $a1, -0x6d84
/* 95130 80094530 0C000CD3 */  jal        func_8000334C
/* 95134 80094534 2404013E */   addiu     $a0, $zero, 0x13e
/* 95138 80094538 8FAF0020 */  lw         $t7, 0x20($sp)
/* 9513C 8009453C 00000000 */  nop
/* 95140 80094540 8DE30FD8 */  lw         $v1, 0xfd8($t7)
/* 95144 80094544 00000000 */  nop
.L80094548:
/* 95148 80094548 3C068018 */  lui        $a2, %hi(D_801826B0)
/* 9514C 8009454C 28610078 */  slti       $at, $v1, 0x78
/* 95150 80094550 14200017 */  bnez       $at, .L800945B0
/* 95154 80094554 24C626B0 */   addiu     $a2, $a2, %lo(D_801826B0)
/* 95158 80094558 286100B4 */  slti       $at, $v1, 0xb4
/* 9515C 8009455C 10200014 */  beqz       $at, .L800945B0
/* 95160 80094560 3C05800F */   lui       $a1, 0x800f
/* 95164 80094564 28610097 */  slti       $at, $v1, 0x97
/* 95168 80094568 14200006 */  bnez       $at, .L80094584
/* 9516C 8009456C 00000000 */   nop
/* 95170 80094570 84D80000 */  lh         $t8, ($a2)
/* 95174 80094574 00000000 */  nop
/* 95178 80094578 2708FFF0 */  addiu      $t0, $t8, -0x10
/* 9517C 8009457C 10000005 */  b          .L80094594
/* 95180 80094580 A4C80000 */   sh        $t0, ($a2)
.L80094584:
/* 95184 80094584 84C90000 */  lh         $t1, ($a2)
/* 95188 80094588 00000000 */  nop
/* 9518C 8009458C 252C0020 */  addiu      $t4, $t1, 0x20
/* 95190 80094590 A4CC0000 */  sh         $t4, ($a2)
.L80094594:
/* 95194 80094594 97A40032 */  lhu        $a0, 0x32($sp)
/* 95198 80094598 0C024C3B */  jal        func_800930EC
/* 9519C 8009459C 24A5928C */   addiu     $a1, $a1, -0x6d74
/* 951A0 800945A0 8FB90020 */  lw         $t9, 0x20($sp)
/* 951A4 800945A4 3C068018 */  lui        $a2, %hi(D_801826B0)
/* 951A8 800945A8 8F230FD8 */  lw         $v1, 0xfd8($t9)
/* 951AC 800945AC 24C626B0 */  addiu      $a2, $a2, %lo(D_801826B0)
.L800945B0:
/* 951B0 800945B0 286100B4 */  slti       $at, $v1, 0xb4
/* 951B4 800945B4 1420000B */  bnez       $at, .L800945E4
/* 951B8 800945B8 3C05800F */   lui       $a1, 0x800f
/* 951BC 800945BC 84CA0000 */  lh         $t2, ($a2)
/* 951C0 800945C0 97A40032 */  lhu        $a0, 0x32($sp)
/* 951C4 800945C4 254E0020 */  addiu      $t6, $t2, 0x20
/* 951C8 800945C8 A4CE0000 */  sh         $t6, ($a2)
/* 951CC 800945CC 0C024C3B */  jal        func_800930EC
/* 951D0 800945D0 24A592AC */   addiu     $a1, $a1, -0x6d54
/* 951D4 800945D4 8FAB0020 */  lw         $t3, 0x20($sp)
/* 951D8 800945D8 00000000 */  nop
/* 951DC 800945DC 8D630FD8 */  lw         $v1, 0xfd8($t3)
/* 951E0 800945E0 00000000 */  nop
.L800945E4:
/* 951E4 800945E4 240100F0 */  addiu      $at, $zero, 0xf0
/* 951E8 800945E8 14610191 */  bne        $v1, $at, .L80094C30
/* 951EC 800945EC 3C06800D */   lui       $a2, %hi(D_800D1C04)
/* 951F0 800945F0 960D00D0 */  lhu        $t5, 0xd0($s0)
/* 951F4 800945F4 24C61C04 */  addiu      $a2, $a2, %lo(D_800D1C04)
/* 951F8 800945F8 97A40032 */  lhu        $a0, 0x32($sp)
/* 951FC 800945FC 3C05800E */  lui        $a1, %hi(D_800E5E48)
/* 95200 80094600 25AF0001 */  addiu      $t7, $t5, 1
/* 95204 80094604 A60F00D0 */  sh         $t7, 0xd0($s0)
/* 95208 80094608 AE06018C */  sw         $a2, 0x18c($s0)
/* 9520C 8009460C 0C020561 */  jal        func_80081584
/* 95210 80094610 24A55E48 */   addiu     $a1, $a1, %lo(D_800E5E48)
/* 95214 80094614 0C000CD3 */  jal        func_8000334C
/* 95218 80094618 2404013F */   addiu     $a0, $zero, 0x13f
/* 9521C 8009461C 241800FE */  addiu      $t8, $zero, 0xfe
/* 95220 80094620 97A40032 */  lhu        $a0, 0x32($sp)
/* 95224 80094624 3C05800F */  lui        $a1, %hi(D_800E8FC0)
/* 95228 80094628 A218009F */  sb         $t8, 0x9f($s0)
/* 9522C 8009462C 0C0205E4 */  jal        func_80081790
/* 95230 80094630 24A58FC0 */   addiu     $a1, $a1, %lo(D_800E8FC0)
/* 95234 80094634 3C014080 */  lui        $at, 0x4080
/* 95238 80094638 44813000 */  mtc1       $at, $f6
/* 9523C 8009463C 3C0140A0 */  lui        $at, 0x40a0
/* 95240 80094640 44814000 */  mtc1       $at, $f8
/* 95244 80094644 3C028018 */  lui        $v0, %hi(D_801826B8)
/* 95248 80094648 3C038018 */  lui        $v1, %hi(D_801826B4)
/* 9524C 8009464C 246326B4 */  addiu      $v1, $v1, %lo(D_801826B4)
/* 95250 80094650 244226B8 */  addiu      $v0, $v0, %lo(D_801826B8)
/* 95254 80094654 240800A0 */  addiu      $t0, $zero, 0xa0
/* 95258 80094658 97A40032 */  lhu        $a0, 0x32($sp)
/* 9525C 8009465C A4680000 */  sh         $t0, ($v1)
/* 95260 80094660 E6060120 */  swc1       $f6, 0x120($s0)
/* 95264 80094664 0C024F04 */  jal        func_80093C10
/* 95268 80094668 E4480000 */   swc1      $f8, ($v0)
/* 9526C 8009466C 8FAC0020 */  lw         $t4, 0x20($sp)
/* 95270 80094670 240900FF */  addiu      $t1, $zero, 0xff
/* 95274 80094674 3C018018 */  lui        $at, %hi(D_801826B2)
/* 95278 80094678 A42926B2 */  sh         $t1, %lo(D_801826B2)($at)
/* 9527C 8009467C 1000016C */  b          .L80094C30
/* 95280 80094680 AD800FD8 */   sw        $zero, 0xfd8($t4)
/* 95284 80094684 3C048018 */  lui        $a0, %hi(D_801826B2)
/* 95288 80094688 948426B2 */  lhu        $a0, %lo(D_801826B2)($a0)
/* 9528C 8009468C 240500FF */  addiu      $a1, $zero, 0xff
/* 95290 80094690 0C00A607 */  jal        func_8002981C
/* 95294 80094694 24060010 */   addiu     $a2, $zero, 0x10
/* 95298 80094698 3C038018 */  lui        $v1, %hi(D_801826B2)
/* 9529C 8009469C 246326B2 */  addiu      $v1, $v1, %lo(D_801826B2)
/* 952A0 800946A0 3059FFFF */  andi       $t9, $v0, 0xffff
/* 952A4 800946A4 240100FF */  addiu      $at, $zero, 0xff
/* 952A8 800946A8 17210015 */  bne        $t9, $at, .L80094700
/* 952AC 800946AC A4620000 */   sh        $v0, ($v1)
/* 952B0 800946B0 960A00D0 */  lhu        $t2, 0xd0($s0)
/* 952B4 800946B4 8FAB0020 */  lw         $t3, 0x20($sp)
/* 952B8 800946B8 254E0001 */  addiu      $t6, $t2, 1
/* 952BC 800946BC A60E00D0 */  sh         $t6, 0xd0($s0)
/* 952C0 800946C0 AD600FD8 */  sw         $zero, 0xfd8($t3)
/* 952C4 800946C4 97A40032 */  lhu        $a0, 0x32($sp)
/* 952C8 800946C8 3C05800E */  lui        $a1, %hi(D_800E5E48)
/* 952CC 800946CC 24A55E48 */  addiu      $a1, $a1, %lo(D_800E5E48)
/* 952D0 800946D0 0C0205C8 */  jal        func_80081720
/* 952D4 800946D4 24060003 */   addiu     $a2, $zero, 3
/* 952D8 800946D8 97A40032 */  lhu        $a0, 0x32($sp)
/* 952DC 800946DC 0C024F04 */  jal        func_80093C10
/* 952E0 800946E0 00000000 */   nop
/* 952E4 800946E4 97A40032 */  lhu        $a0, 0x32($sp)
/* 952E8 800946E8 3C05800E */  lui        $a1, %hi(D_800E5E48)
/* 952EC 800946EC A200009F */  sb         $zero, 0x9f($s0)
/* 952F0 800946F0 0C020591 */  jal        func_80081644
/* 952F4 800946F4 24A55E48 */   addiu     $a1, $a1, %lo(D_800E5E48)
/* 952F8 800946F8 1000014E */  b          .L80094C34
/* 952FC 800946FC 8E0A0080 */   lw        $t2, 0x80($s0)
.L80094700:
/* 95300 80094700 8FAD0020 */  lw         $t5, 0x20($sp)
/* 95304 80094704 00002825 */  or         $a1, $zero, $zero
/* 95308 80094708 8DA40E40 */  lw         $a0, 0xe40($t5)
/* 9530C 8009470C 0C00A607 */  jal        func_8002981C
/* 95310 80094710 24060020 */   addiu     $a2, $zero, 0x20
/* 95314 80094714 8FAF0020 */  lw         $t7, 0x20($sp)
/* 95318 80094718 00000000 */  nop
/* 9531C 8009471C ADE20E40 */  sw         $v0, 0xe40($t7)
/* 95320 80094720 3C068018 */  lui        $a2, %hi(D_801826B0)
/* 95324 80094724 24C626B0 */  addiu      $a2, $a2, %lo(D_801826B0)
/* 95328 80094728 84D80000 */  lh         $t8, ($a2)
/* 9532C 8009472C 97A40032 */  lhu        $a0, 0x32($sp)
/* 95330 80094730 3C05800F */  lui        $a1, %hi(D_800E92AC)
/* 95334 80094734 2708FFF0 */  addiu      $t0, $t8, -0x10
/* 95338 80094738 A4C80000 */  sh         $t0, ($a2)
/* 9533C 8009473C 0C024C3B */  jal        func_800930EC
/* 95340 80094740 24A592AC */   addiu     $a1, $a1, %lo(D_800E92AC)
/* 95344 80094744 960900D0 */  lhu        $t1, 0xd0($s0)
/* 95348 80094748 240100F3 */  addiu      $at, $zero, 0xf3
/* 9534C 8009474C 15210007 */  bne        $t1, $at, .L8009476C
/* 95350 80094750 3C048018 */   lui       $a0, %hi(D_801826B2)
/* 95354 80094754 948426B2 */  lhu        $a0, %lo(D_801826B2)($a0)
/* 95358 80094758 240500A0 */  addiu      $a1, $zero, 0xa0
/* 9535C 8009475C 0C00A607 */  jal        func_8002981C
/* 95360 80094760 24060004 */   addiu     $a2, $zero, 4
/* 95364 80094764 3C018018 */  lui        $at, %hi(D_801826B2)
/* 95368 80094768 A42226B2 */  sh         $v0, %lo(D_801826B2)($at)
.L8009476C:
/* 9536C 8009476C 3C028018 */  lui        $v0, %hi(D_801826B8)
/* 95370 80094770 244226B8 */  addiu      $v0, $v0, %lo(D_801826B8)
/* 95374 80094774 3C01800F */  lui        $at, %hi(D_800ED4B0)
/* 95378 80094778 C44A0000 */  lwc1       $f10, ($v0)
/* 9537C 8009477C C433D4B0 */  lwc1       $f19, %lo(D_800ED4B0)($at)
/* 95380 80094780 C432D4B4 */  lwc1       $f18, -0x2b4c($at)
/* 95384 80094784 46005421 */  cvt.d.s    $f16, $f10
/* 95388 80094788 8E0C016C */  lw         $t4, 0x16c($s0)
/* 9538C 8009478C 46328100 */  add.d      $f4, $f16, $f18
/* 95390 80094790 31990001 */  andi       $t9, $t4, 1
/* 95394 80094794 462021A0 */  cvt.s.d    $f6, $f4
/* 95398 80094798 13200005 */  beqz       $t9, .L800947B0
/* 9539C 8009479C E4460000 */   swc1      $f6, ($v0)
/* 953A0 800947A0 8E0A0080 */  lw         $t2, 0x80($s0)
/* 953A4 800947A4 00000000 */  nop
/* 953A8 800947A8 394E0020 */  xori       $t6, $t2, 0x20
/* 953AC 800947AC AE0E0080 */  sw         $t6, 0x80($s0)
.L800947B0:
/* 953B0 800947B0 3C013F80 */  lui        $at, 0x3f80
/* 953B4 800947B4 44817000 */  mtc1       $at, $f14
/* 953B8 800947B8 C60C0120 */  lwc1       $f12, 0x120($s0)
/* 953BC 800947BC 3C063C75 */  lui        $a2, 0x3c75
/* 953C0 800947C0 0C00A618 */  jal        func_80029860
/* 953C4 800947C4 34C6C28F */   ori       $a2, $a2, 0xc28f
/* 953C8 800947C8 97A40032 */  lhu        $a0, 0x32($sp)
/* 953CC 800947CC 0C024F04 */  jal        func_80093C10
/* 953D0 800947D0 E6000120 */   swc1      $f0, 0x120($s0)
/* 953D4 800947D4 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 953D8 800947D8 24052000 */  addiu      $a1, $zero, 0x2000
/* 953DC 800947DC 0C00A607 */  jal        func_8002981C
/* 953E0 800947E0 24060080 */   addiu     $a2, $zero, 0x80
/* 953E4 800947E4 8E0B0168 */  lw         $t3, 0x168($s0)
/* 953E8 800947E8 8FAF0020 */  lw         $t7, 0x20($sp)
/* 953EC 800947EC 256DFFF6 */  addiu      $t5, $t3, -0xa
/* 953F0 800947F0 AE0200F0 */  sw         $v0, 0xf0($s0)
/* 953F4 800947F4 AE0D0168 */  sw         $t5, 0x168($s0)
/* 953F8 800947F8 8DF80FD8 */  lw         $t8, 0xfd8($t7)
/* 953FC 800947FC 3C038018 */  lui        $v1, %hi(D_801826B4)
/* 95400 80094800 2B0100D3 */  slti       $at, $t8, 0xd3
/* 95404 80094804 14200007 */  bnez       $at, .L80094824
/* 95408 80094808 246326B4 */   addiu     $v1, $v1, %lo(D_801826B4)
/* 9540C 8009480C 94620000 */  lhu        $v0, ($v1)
/* 95410 80094810 00000000 */  nop
/* 95414 80094814 284100FF */  slti       $at, $v0, 0xff
/* 95418 80094818 10200002 */  beqz       $at, .L80094824
/* 9541C 8009481C 24480001 */   addiu     $t0, $v0, 1
/* 95420 80094820 A4680000 */  sh         $t0, ($v1)
.L80094824:
/* 95424 80094824 97A40032 */  lhu        $a0, 0x32($sp)
/* 95428 80094828 0C0253C9 */  jal        func_80094F24
/* 9542C 8009482C 00002825 */   or        $a1, $zero, $zero
/* 95430 80094830 8FA90020 */  lw         $t1, 0x20($sp)
/* 95434 80094834 24010168 */  addiu      $at, $zero, 0x168
/* 95438 80094838 8D230FD8 */  lw         $v1, 0xfd8($t1)
/* 9543C 8009483C 00000000 */  nop
/* 95440 80094840 14610008 */  bne        $v1, $at, .L80094864
/* 95444 80094844 24010168 */   addiu     $at, $zero, 0x168
/* 95448 80094848 0C000CD3 */  jal        func_8000334C
/* 9544C 8009484C 240400A6 */   addiu     $a0, $zero, 0xa6
/* 95450 80094850 8FAC0020 */  lw         $t4, 0x20($sp)
/* 95454 80094854 00000000 */  nop
/* 95458 80094858 8D830FD8 */  lw         $v1, 0xfd8($t4)
/* 9545C 8009485C 00000000 */  nop
/* 95460 80094860 24010168 */  addiu      $at, $zero, 0x168
.L80094864:
/* 95464 80094864 146100F2 */  bne        $v1, $at, .L80094C30
/* 95468 80094868 00000000 */   nop
/* 9546C 8009486C 961900D0 */  lhu        $t9, 0xd0($s0)
/* 95470 80094870 00000000 */  nop
/* 95474 80094874 272A0001 */  addiu      $t2, $t9, 1
/* 95478 80094878 100000ED */  b          .L80094C30
/* 9547C 8009487C A60A00D0 */   sh        $t2, 0xd0($s0)
/* 95480 80094880 8FAE0020 */  lw         $t6, 0x20($sp)
/* 95484 80094884 2401003C */  addiu      $at, $zero, 0x3c
/* 95488 80094888 8DCB0FD8 */  lw         $t3, 0xfd8($t6)
/* 9548C 8009488C 97A40032 */  lhu        $a0, 0x32($sp)
/* 95490 80094890 156100E7 */  bne        $t3, $at, .L80094C30
/* 95494 80094894 3C05800E */   lui       $a1, %hi(D_800E5E48)
/* 95498 80094898 24A55E48 */  addiu      $a1, $a1, %lo(D_800E5E48)
/* 9549C 8009489C 0C0205AB */  jal        func_800816AC
/* 954A0 800948A0 24060003 */   addiu     $a2, $zero, 3
/* 954A4 800948A4 960D00D8 */  lhu        $t5, 0xd8($s0)
/* 954A8 800948A8 8FAF0020 */  lw         $t7, 0x20($sp)
/* 954AC 800948AC 00000000 */  nop
/* 954B0 800948B0 A5ED0270 */  sh         $t5, 0x270($t7)
/* 954B4 800948B4 97A40032 */  lhu        $a0, 0x32($sp)
/* 954B8 800948B8 0C0241F9 */  jal        func_800907E4
/* 954BC 800948BC 00000000 */   nop
/* 954C0 800948C0 241800F6 */  addiu      $t8, $zero, 0xf6
/* 954C4 800948C4 97A40032 */  lhu        $a0, 0x32($sp)
/* 954C8 800948C8 3C05800E */  lui        $a1, %hi(D_800E5E48)
/* 954CC 800948CC A61800D0 */  sh         $t8, 0xd0($s0)
/* 954D0 800948D0 24A55E48 */  addiu      $a1, $a1, %lo(D_800E5E48)
/* 954D4 800948D4 0C02051E */  jal        func_80081478
/* 954D8 800948D8 2406005C */   addiu     $a2, $zero, 0x5c
/* 954DC 800948DC 97A40032 */  lhu        $a0, 0x32($sp)
/* 954E0 800948E0 3C05800F */  lui        $a1, %hi(D_800E8EAC)
/* 954E4 800948E4 0C0205E4 */  jal        func_80081790
/* 954E8 800948E8 24A58EAC */   addiu     $a1, $a1, %lo(D_800E8EAC)
/* 954EC 800948EC 3C013F80 */  lui        $at, 0x3f80
/* 954F0 800948F0 44814000 */  mtc1       $at, $f8
/* 954F4 800948F4 8FA90020 */  lw         $t1, 0x20($sp)
/* 954F8 800948F8 A200009F */  sb         $zero, 0x9f($s0)
/* 954FC 800948FC 2408003C */  addiu      $t0, $zero, 0x3c
/* 95500 80094900 E6080120 */  swc1       $f8, 0x120($s0)
/* 95504 80094904 AD280FD8 */  sw         $t0, 0xfd8($t1)
/* 95508 80094908 960C0094 */  lhu        $t4, 0x94($s0)
/* 9550C 8009490C 97A40032 */  lhu        $a0, 0x32($sp)
/* 95510 80094910 3199FFEF */  andi       $t9, $t4, 0xffef
/* 95514 80094914 A6190094 */  sh         $t9, 0x94($s0)
/* 95518 80094918 0C00ABAD */  jal        func_8002AEB4
/* 9551C 8009491C 2405007F */   addiu     $a1, $zero, 0x7f
/* 95520 80094920 340AEA60 */  ori        $t2, $zero, 0xea60
/* 95524 80094924 AE0A0168 */  sw         $t2, 0x168($s0)
/* 95528 80094928 AE00018C */  sw         $zero, 0x18c($s0)
/* 9552C 8009492C 3C018018 */  lui        $at, %hi(D_801826B2)
/* 95530 80094930 A42026B2 */  sh         $zero, %lo(D_801826B2)($at)
/* 95534 80094934 0C000CD3 */  jal        func_8000334C
/* 95538 80094938 2404005B */   addiu     $a0, $zero, 0x5b
/* 9553C 8009493C 0C000CD3 */  jal        func_8000334C
/* 95540 80094940 2404012E */   addiu     $a0, $zero, 0x12e
/* 95544 80094944 100000BB */  b          .L80094C34
/* 95548 80094948 8E0A0080 */   lw        $t2, 0x80($s0)
/* 9554C 8009494C 8FAE0020 */  lw         $t6, 0x20($sp)
/* 95550 80094950 24054E20 */  addiu      $a1, $zero, 0x4e20
/* 95554 80094954 8DCB0FD8 */  lw         $t3, 0xfd8($t6)
/* 95558 80094958 00000000 */  nop
/* 9555C 8009495C 2961021D */  slti       $at, $t3, 0x21d
/* 95560 80094960 14200009 */  bnez       $at, .L80094988
/* 95564 80094964 00000000 */   nop
/* 95568 80094968 97A40032 */  lhu        $a0, 0x32($sp)
/* 9556C 8009496C 3C05800E */  lui        $a1, %hi(D_800E5E48)
/* 95570 80094970 AE000080 */  sw         $zero, 0x80($s0)
/* 95574 80094974 24A55E48 */  addiu      $a1, $a1, %lo(D_800E5E48)
/* 95578 80094978 0C0205C8 */  jal        func_80081720
/* 9557C 8009497C 24060003 */   addiu     $a2, $zero, 3
/* 95580 80094980 100000AC */  b          .L80094C34
/* 95584 80094984 8E0A0080 */   lw        $t2, 0x80($s0)
.L80094988:
/* 95588 80094988 8E040168 */  lw         $a0, 0x168($s0)
/* 9558C 8009498C 0C00A607 */  jal        func_8002981C
/* 95590 80094990 240607D0 */   addiu     $a2, $zero, 0x7d0
/* 95594 80094994 9204009C */  lbu        $a0, 0x9c($s0)
/* 95598 80094998 AE020168 */  sw         $v0, 0x168($s0)
/* 9559C 8009499C A6000088 */  sh         $zero, 0x88($s0)
/* 955A0 800949A0 A600008C */  sh         $zero, 0x8c($s0)
/* 955A4 800949A4 A6000090 */  sh         $zero, 0x90($s0)
/* 955A8 800949A8 24050020 */  addiu      $a1, $zero, 0x20
/* 955AC 800949AC 0C00A607 */  jal        func_8002981C
/* 955B0 800949B0 24060001 */   addiu     $a2, $zero, 1
/* 955B4 800949B4 97A40032 */  lhu        $a0, 0x32($sp)
/* 955B8 800949B8 A202009C */  sb         $v0, 0x9c($s0)
/* 955BC 800949BC 0C00ABAD */  jal        func_8002AEB4
/* 955C0 800949C0 304500FF */   andi      $a1, $v0, 0xff
/* 955C4 800949C4 9204009F */  lbu        $a0, 0x9f($s0)
/* 955C8 800949C8 240500FC */  addiu      $a1, $zero, 0xfc
/* 955CC 800949CC 0C00A607 */  jal        func_8002981C
/* 955D0 800949D0 24060010 */   addiu     $a2, $zero, 0x10
/* 955D4 800949D4 A202009F */  sb         $v0, 0x9f($s0)
/* 955D8 800949D8 3C048018 */  lui        $a0, %hi(D_801826B2)
/* 955DC 800949DC 948426B2 */  lhu        $a0, %lo(D_801826B2)($a0)
/* 955E0 800949E0 240500A0 */  addiu      $a1, $zero, 0xa0
/* 955E4 800949E4 0C00A607 */  jal        func_8002981C
/* 955E8 800949E8 24060008 */   addiu     $a2, $zero, 8
/* 955EC 800949EC 8FAD0020 */  lw         $t5, 0x20($sp)
/* 955F0 800949F0 3C018018 */  lui        $at, %hi(D_801826B2)
/* 955F4 800949F4 A42226B2 */  sh         $v0, %lo(D_801826B2)($at)
/* 955F8 800949F8 8DA40E40 */  lw         $a0, 0xe40($t5)
/* 955FC 800949FC 24050200 */  addiu      $a1, $zero, 0x200
/* 95600 80094A00 0C00A607 */  jal        func_8002981C
/* 95604 80094A04 24060010 */   addiu     $a2, $zero, 0x10
/* 95608 80094A08 8FAF0020 */  lw         $t7, 0x20($sp)
/* 9560C 80094A0C 3C18800C */  lui        $t8, 0x800c
/* 95610 80094A10 8DE30FD8 */  lw         $v1, 0xfd8($t7)
/* 95614 80094A14 ADE20E40 */  sw         $v0, 0xe40($t7)
/* 95618 80094A18 2861003D */  slti       $at, $v1, 0x3d
/* 9561C 80094A1C 14200037 */  bnez       $at, .L80094AFC
/* 95620 80094A20 24010172 */   addiu     $at, $zero, 0x172
/* 95624 80094A24 9718E4E0 */  lhu        $t8, -0x1b20($t8)
/* 95628 80094A28 00000000 */  nop
/* 9562C 80094A2C 3308000F */  andi       $t0, $t8, 0xf
/* 95630 80094A30 15000032 */  bnez       $t0, .L80094AFC
/* 95634 80094A34 24010172 */   addiu     $at, $zero, 0x172
/* 95638 80094A38 0C0005E3 */  jal        func_8000178C
/* 9563C 80094A3C 00000000 */   nop
/* 95640 80094A40 0C0005E3 */  jal        func_8000178C
/* 95644 80094A44 A7A2002A */   sh        $v0, 0x2a($sp)
/* 95648 80094A48 97A9002A */  lhu        $t1, 0x2a($sp)
/* 9564C 80094A4C 24030080 */  addiu      $v1, $zero, 0x80
/* 95650 80094A50 00696023 */  subu       $t4, $v1, $t1
/* 95654 80094A54 448C5000 */  mtc1       $t4, $f10
/* 95658 80094A58 3C01800F */  lui        $at, %hi(D_800ED4B8)
/* 9565C 80094A5C 46805420 */  cvt.s.w    $f16, $f10
/* 95660 80094A60 C421D4B8 */  lwc1       $f1, %lo(D_800ED4B8)($at)
/* 95664 80094A64 C420D4BC */  lwc1       $f0, -0x2b44($at)
/* 95668 80094A68 460084A1 */  cvt.d.s    $f18, $f16
/* 9566C 80094A6C 46209102 */  mul.d      $f4, $f18, $f0
/* 95670 80094A70 3C014000 */  lui        $at, 0x4000
/* 95674 80094A74 44816000 */  mtc1       $at, $f12
/* 95678 80094A78 00625823 */  subu       $t3, $v1, $v0
/* 9567C 80094A7C 448B4000 */  mtc1       $t3, $f8
/* 95680 80094A80 4459F800 */  cfc1       $t9, $31
/* 95684 80094A84 2407FFC0 */  addiu      $a3, $zero, -0x40
/* 95688 80094A88 37210003 */  ori        $at, $t9, 3
/* 9568C 80094A8C 38210002 */  xori       $at, $at, 2
/* 95690 80094A90 44C1F800 */  ctc1       $at, $31
/* 95694 80094A94 00000000 */  nop
/* 95698 80094A98 462021A4 */  cvt.w.d    $f6, $f4
/* 9569C 80094A9C 44D9F800 */  ctc1       $t9, $31
/* 956A0 80094AA0 44053000 */  mfc1       $a1, $f6
/* 956A4 80094AA4 468042A0 */  cvt.s.w    $f10, $f8
/* 956A8 80094AA8 00055400 */  sll        $t2, $a1, 0x10
/* 956AC 80094AAC 000A2C03 */  sra        $a1, $t2, 0x10
/* 956B0 80094AB0 46005421 */  cvt.d.s    $f16, $f10
/* 956B4 80094AB4 46208482 */  mul.d      $f18, $f16, $f0
/* 956B8 80094AB8 444DF800 */  cfc1       $t5, $31
/* 956BC 80094ABC 00000000 */  nop
/* 956C0 80094AC0 35A10003 */  ori        $at, $t5, 3
/* 956C4 80094AC4 38210002 */  xori       $at, $at, 2
/* 956C8 80094AC8 44C1F800 */  ctc1       $at, $31
/* 956CC 80094ACC 00000000 */  nop
/* 956D0 80094AD0 46209124 */  cvt.w.d    $f4, $f18
/* 956D4 80094AD4 44062000 */  mfc1       $a2, $f4
/* 956D8 80094AD8 44CDF800 */  ctc1       $t5, $31
/* 956DC 80094ADC 00067C00 */  sll        $t7, $a2, 0x10
/* 956E0 80094AE0 0C00FE2C */  jal        func_8003F8B0
/* 956E4 80094AE4 000F3403 */   sra       $a2, $t7, 0x10
/* 956E8 80094AE8 8FA80020 */  lw         $t0, 0x20($sp)
/* 956EC 80094AEC 00000000 */  nop
/* 956F0 80094AF0 8D030FD8 */  lw         $v1, 0xfd8($t0)
/* 956F4 80094AF4 00000000 */  nop
/* 956F8 80094AF8 24010172 */  addiu      $at, $zero, 0x172
.L80094AFC:
/* 956FC 80094AFC 14610004 */  bne        $v1, $at, .L80094B10
/* 95700 80094B00 3C05800F */   lui       $a1, %hi(D_800E8FF8)
/* 95704 80094B04 97A40032 */  lhu        $a0, 0x32($sp)
/* 95708 80094B08 0C0205E4 */  jal        func_80081790
/* 9570C 80094B0C 24A58FF8 */   addiu     $a1, $a1, %lo(D_800E8FF8)
.L80094B10:
/* 95710 80094B10 C606011C */  lwc1       $f6, 0x11c($s0)
/* 95714 80094B14 44804000 */  mtc1       $zero, $f8
/* 95718 80094B18 97A40032 */  lhu        $a0, 0x32($sp)
/* 9571C 80094B1C 4608303C */  c.lt.s     $f6, $f8
/* 95720 80094B20 3C05800F */  lui        $a1, %hi(D_800E8EAC)
/* 95724 80094B24 45000004 */  bc1f       .L80094B38
/* 95728 80094B28 8FA90020 */   lw        $t1, 0x20($sp)
/* 9572C 80094B2C 0C0205E4 */  jal        func_80081790
/* 95730 80094B30 24A58EAC */   addiu     $a1, $a1, %lo(D_800E8EAC)
/* 95734 80094B34 8FA90020 */  lw         $t1, 0x20($sp)
.L80094B38:
/* 95738 80094B38 00000000 */  nop
/* 9573C 80094B3C 8D230FD8 */  lw         $v1, 0xfd8($t1)
/* 95740 80094B40 00000000 */  nop
/* 95744 80094B44 28610078 */  slti       $at, $v1, 0x78
/* 95748 80094B48 14200018 */  bnez       $at, .L80094BAC
/* 9574C 80094B4C 286100F0 */   slti      $at, $v1, 0xf0
/* 95750 80094B50 10200016 */  beqz       $at, .L80094BAC
/* 95754 80094B54 286100B5 */   slti      $at, $v1, 0xb5
/* 95758 80094B58 14200008 */  bnez       $at, .L80094B7C
/* 9575C 80094B5C 3C068018 */   lui       $a2, 0x8018
/* 95760 80094B60 3C068018 */  lui        $a2, %hi(D_801826B0)
/* 95764 80094B64 24C626B0 */  addiu      $a2, $a2, %lo(D_801826B0)
/* 95768 80094B68 84CC0000 */  lh         $t4, ($a2)
/* 9576C 80094B6C 00000000 */  nop
/* 95770 80094B70 2599FFE0 */  addiu      $t9, $t4, -0x20
/* 95774 80094B74 10000006 */  b          .L80094B90
/* 95778 80094B78 A4D90000 */   sh        $t9, ($a2)
.L80094B7C:
/* 9577C 80094B7C 24C626B0 */  addiu      $a2, $a2, 0x26b0
/* 95780 80094B80 84CA0000 */  lh         $t2, ($a2)
/* 95784 80094B84 00000000 */  nop
/* 95788 80094B88 254E0020 */  addiu      $t6, $t2, 0x20
/* 9578C 80094B8C A4CE0000 */  sh         $t6, ($a2)
.L80094B90:
/* 95790 80094B90 97A40032 */  lhu        $a0, 0x32($sp)
/* 95794 80094B94 0C024C9D */  jal        func_80093274
/* 95798 80094B98 00002825 */   or        $a1, $zero, $zero
/* 9579C 80094B9C 8FAB0020 */  lw         $t3, 0x20($sp)
/* 957A0 80094BA0 00000000 */  nop
/* 957A4 80094BA4 8D630FD8 */  lw         $v1, 0xfd8($t3)
/* 957A8 80094BA8 00000000 */  nop
.L80094BAC:
/* 957AC 80094BAC 3C068018 */  lui        $a2, %hi(D_801826B0)
/* 957B0 80094BB0 286100F0 */  slti       $at, $v1, 0xf0
/* 957B4 80094BB4 14200016 */  bnez       $at, .L80094C10
/* 957B8 80094BB8 24C626B0 */   addiu     $a2, $a2, %lo(D_801826B0)
/* 957BC 80094BBC 28610168 */  slti       $at, $v1, 0x168
/* 957C0 80094BC0 10200013 */  beqz       $at, .L80094C10
/* 957C4 80094BC4 2861012D */   slti      $at, $v1, 0x12d
/* 957C8 80094BC8 14200006 */  bnez       $at, .L80094BE4
/* 957CC 80094BCC 00000000 */   nop
/* 957D0 80094BD0 84CD0000 */  lh         $t5, ($a2)
/* 957D4 80094BD4 00000000 */  nop
/* 957D8 80094BD8 25AFFFE0 */  addiu      $t7, $t5, -0x20
/* 957DC 80094BDC 10000005 */  b          .L80094BF4
/* 957E0 80094BE0 A4CF0000 */   sh        $t7, ($a2)
.L80094BE4:
/* 957E4 80094BE4 84D80000 */  lh         $t8, ($a2)
/* 957E8 80094BE8 00000000 */  nop
/* 957EC 80094BEC 27080020 */  addiu      $t0, $t8, 0x20
/* 957F0 80094BF0 A4C80000 */  sh         $t0, ($a2)
.L80094BF4:
/* 957F4 80094BF4 97A40032 */  lhu        $a0, 0x32($sp)
/* 957F8 80094BF8 0C024C9D */  jal        func_80093274
/* 957FC 80094BFC 24050001 */   addiu     $a1, $zero, 1
/* 95800 80094C00 8FA90020 */  lw         $t1, 0x20($sp)
/* 95804 80094C04 3C068018 */  lui        $a2, %hi(D_801826B0)
/* 95808 80094C08 8D230FD8 */  lw         $v1, 0xfd8($t1)
/* 9580C 80094C0C 24C626B0 */  addiu      $a2, $a2, %lo(D_801826B0)
.L80094C10:
/* 95810 80094C10 28610168 */  slti       $at, $v1, 0x168
/* 95814 80094C14 14200006 */  bnez       $at, .L80094C30
/* 95818 80094C18 24050002 */   addiu     $a1, $zero, 2
/* 9581C 80094C1C 84CC0000 */  lh         $t4, ($a2)
/* 95820 80094C20 97A40032 */  lhu        $a0, 0x32($sp)
/* 95824 80094C24 25990020 */  addiu      $t9, $t4, 0x20
/* 95828 80094C28 0C024C9D */  jal        func_80093274
/* 9582C 80094C2C A4D90000 */   sh        $t9, ($a2)
.L80094C30:
/* 95830 80094C30 8E0A0080 */  lw         $t2, 0x80($s0)
.L80094C34:
/* 95834 80094C34 3C01FFFC */  lui        $at, 0xfffc
/* 95838 80094C38 3421EAFF */  ori        $at, $at, 0xeaff
/* 9583C 80094C3C 97A40032 */  lhu        $a0, 0x32($sp)
/* 95840 80094C40 01417024 */  and        $t6, $t2, $at
/* 95844 80094C44 0C024DC1 */  jal        func_80093704
/* 95848 80094C48 AE0E0080 */   sw        $t6, 0x80($s0)
/* 9584C 80094C4C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 95850 80094C50 8FB00018 */  lw         $s0, 0x18($sp)
/* 95854 80094C54 03E00008 */  jr         $ra
/* 95858 80094C58 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80094C5C
/* 9585C 80094C5C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 95860 80094C60 AFA40018 */  sw         $a0, 0x18($sp)
/* 95864 80094C64 AFBF0014 */  sw         $ra, 0x14($sp)
/* 95868 80094C68 97A4001A */  lhu        $a0, 0x1a($sp)
/* 9586C 80094C6C 0C023DF8 */  jal        func_8008F7E0
/* 95870 80094C70 00000000 */   nop
/* 95874 80094C74 97A4001A */  lhu        $a0, 0x1a($sp)
/* 95878 80094C78 3C02800F */  lui        $v0, 0x800f
/* 9587C 80094C7C 00047080 */  sll        $t6, $a0, 2
/* 95880 80094C80 01C47023 */  subu       $t6, $t6, $a0
/* 95884 80094C84 000E7080 */  sll        $t6, $t6, 2
/* 95888 80094C88 01C47021 */  addu       $t6, $t6, $a0
/* 9588C 80094C8C 000E7080 */  sll        $t6, $t6, 2
/* 95890 80094C90 01C47023 */  subu       $t6, $t6, $a0
/* 95894 80094C94 000E70C0 */  sll        $t6, $t6, 3
/* 95898 80094C98 004E1021 */  addu       $v0, $v0, $t6
/* 9589C 80094C9C 9442F5E0 */  lhu        $v0, -0xa20($v0)
/* 958A0 80094CA0 3C19800F */  lui        $t9, 0x800f
/* 958A4 80094CA4 28414000 */  slti       $at, $v0, 0x4000
/* 958A8 80094CA8 1020000D */  beqz       $at, .L80094CE0
/* 958AC 80094CAC 00000000 */   nop
/* 958B0 80094CB0 04410003 */  bgez       $v0, .L80094CC0
/* 958B4 80094CB4 00027903 */   sra       $t7, $v0, 4
/* 958B8 80094CB8 2441000F */  addiu      $at, $v0, 0xf
/* 958BC 80094CBC 00017903 */  sra        $t7, $at, 4
.L80094CC0:
/* 958C0 80094CC0 000FC080 */  sll        $t8, $t7, 2
/* 958C4 80094CC4 0338C821 */  addu       $t9, $t9, $t8
/* 958C8 80094CC8 8F399320 */  lw         $t9, -0x6ce0($t9)
/* 958CC 80094CCC 00000000 */  nop
/* 958D0 80094CD0 0320F809 */  jalr       $t9
/* 958D4 80094CD4 00000000 */   nop
/* 958D8 80094CD8 97A4001A */  lhu        $a0, 0x1a($sp)
/* 958DC 80094CDC 00000000 */  nop
.L80094CE0:
/* 958E0 80094CE0 0C024156 */  jal        func_80090558
/* 958E4 80094CE4 00000000 */   nop
/* 958E8 80094CE8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 958EC 80094CEC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 958F0 80094CF0 03E00008 */  jr         $ra
/* 958F4 80094CF4 00000000 */   nop

glabel func_80094CF8
/* 958F8 80094CF8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 958FC 80094CFC 000E7880 */  sll        $t7, $t6, 2
/* 95900 80094D00 01EE7823 */  subu       $t7, $t7, $t6
/* 95904 80094D04 000F7880 */  sll        $t7, $t7, 2
/* 95908 80094D08 01EE7821 */  addu       $t7, $t7, $t6
/* 9590C 80094D0C 000F7880 */  sll        $t7, $t7, 2
/* 95910 80094D10 01EE7823 */  subu       $t7, $t7, $t6
/* 95914 80094D14 3C18800F */  lui        $t8, %hi(gActors)
/* 95918 80094D18 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 9591C 80094D1C 000F78C0 */  sll        $t7, $t7, 3
/* 95920 80094D20 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 95924 80094D24 01F81021 */  addu       $v0, $t7, $t8
/* 95928 80094D28 AFA5002C */  sw         $a1, 0x2c($sp)
/* 9592C 80094D2C 97A8002E */  lhu        $t0, 0x2e($sp)
/* 95930 80094D30 8C431170 */  lw         $v1, 0x1170($v0)
/* 95934 80094D34 8C491308 */  lw         $t1, 0x1308($v0)
/* 95938 80094D38 00683823 */  subu       $a3, $v1, $t0
/* 9593C 80094D3C AFBF0024 */  sw         $ra, 0x24($sp)
/* 95940 80094D40 AFA40028 */  sw         $a0, 0x28($sp)
/* 95944 80094D44 0007CC00 */  sll        $t9, $a3, 0x10
/* 95948 80094D48 00685821 */  addu       $t3, $v1, $t0
/* 9594C 80094D4C 252C0028 */  addiu      $t4, $t1, 0x28
/* 95950 80094D50 252DFFD8 */  addiu      $t5, $t1, -0x28
/* 95954 80094D54 01C02025 */  or         $a0, $t6, $zero
/* 95958 80094D58 AFAD0018 */  sw         $t5, 0x18($sp)
/* 9595C 80094D5C AFAC0014 */  sw         $t4, 0x14($sp)
/* 95960 80094D60 AFAB0010 */  sw         $t3, 0x10($sp)
/* 95964 80094D64 00193C03 */  sra        $a3, $t9, 0x10
/* 95968 80094D68 24050130 */  addiu      $a1, $zero, 0x130
/* 9596C 80094D6C 0C0239E4 */  jal        func_8008E790
/* 95970 80094D70 24060120 */   addiu     $a2, $zero, 0x120
/* 95974 80094D74 8FBF0024 */  lw         $ra, 0x24($sp)
/* 95978 80094D78 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9597C 80094D7C 03E00008 */  jr         $ra
/* 95980 80094D80 00000000 */   nop

glabel func_80094D84
/* 95984 80094D84 308EFFFF */  andi       $t6, $a0, 0xffff
/* 95988 80094D88 000E7880 */  sll        $t7, $t6, 2
/* 9598C 80094D8C 01EE7823 */  subu       $t7, $t7, $t6
/* 95990 80094D90 000F7880 */  sll        $t7, $t7, 2
/* 95994 80094D94 01EE7821 */  addu       $t7, $t7, $t6
/* 95998 80094D98 000F7880 */  sll        $t7, $t7, 2
/* 9599C 80094D9C 01EE7823 */  subu       $t7, $t7, $t6
/* 959A0 80094DA0 3C18800F */  lui        $t8, %hi(gActors)
/* 959A4 80094DA4 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 959A8 80094DA8 000F78C0 */  sll        $t7, $t7, 3
/* 959AC 80094DAC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 959B0 80094DB0 01F81021 */  addu       $v0, $t7, $t8
/* 959B4 80094DB4 AFA5002C */  sw         $a1, 0x2c($sp)
/* 959B8 80094DB8 97A8002E */  lhu        $t0, 0x2e($sp)
/* 959BC 80094DBC 8C431170 */  lw         $v1, 0x1170($v0)
/* 959C0 80094DC0 8C491308 */  lw         $t1, 0x1308($v0)
/* 959C4 80094DC4 00683823 */  subu       $a3, $v1, $t0
/* 959C8 80094DC8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 959CC 80094DCC AFA40028 */  sw         $a0, 0x28($sp)
/* 959D0 80094DD0 0007CC00 */  sll        $t9, $a3, 0x10
/* 959D4 80094DD4 00685821 */  addu       $t3, $v1, $t0
/* 959D8 80094DD8 252C0028 */  addiu      $t4, $t1, 0x28
/* 959DC 80094DDC 252DFFD8 */  addiu      $t5, $t1, -0x28
/* 959E0 80094DE0 01C02025 */  or         $a0, $t6, $zero
/* 959E4 80094DE4 AFAD0018 */  sw         $t5, 0x18($sp)
/* 959E8 80094DE8 AFAC0014 */  sw         $t4, 0x14($sp)
/* 959EC 80094DEC AFAB0010 */  sw         $t3, 0x10($sp)
/* 959F0 80094DF0 00193C03 */  sra        $a3, $t9, 0x10
/* 959F4 80094DF4 24050140 */  addiu      $a1, $zero, 0x140
/* 959F8 80094DF8 0C0239E4 */  jal        func_8008E790
/* 959FC 80094DFC 24060120 */   addiu     $a2, $zero, 0x120
/* 95A00 80094E00 8FBF0024 */  lw         $ra, 0x24($sp)
/* 95A04 80094E04 27BD0028 */  addiu      $sp, $sp, 0x28
/* 95A08 80094E08 03E00008 */  jr         $ra
/* 95A0C 80094E0C 00000000 */   nop

glabel func_80094E10
/* 95A10 80094E10 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 95A14 80094E14 AFBF001C */  sw         $ra, 0x1c($sp)
/* 95A18 80094E18 AFA40020 */  sw         $a0, 0x20($sp)
/* 95A1C 80094E1C AFA50024 */  sw         $a1, 0x24($sp)
/* 95A20 80094E20 24050040 */  addiu      $a1, $zero, 0x40
/* 95A24 80094E24 24040050 */  addiu      $a0, $zero, 0x50
/* 95A28 80094E28 0C00A6C0 */  jal        func_80029B00
/* 95A2C 80094E2C 2406FFC0 */   addiu     $a2, $zero, -0x40
/* 95A30 80094E30 97A50026 */  lhu        $a1, 0x26($sp)
/* 95A34 80094E34 1040001C */  beqz       $v0, .L80094EA8
/* 95A38 80094E38 00057080 */   sll       $t6, $a1, 2
/* 95A3C 80094E3C 01C57023 */  subu       $t6, $t6, $a1
/* 95A40 80094E40 000E7080 */  sll        $t6, $t6, 2
/* 95A44 80094E44 01C57021 */  addu       $t6, $t6, $a1
/* 95A48 80094E48 000E7080 */  sll        $t6, $t6, 2
/* 95A4C 80094E4C 01C57023 */  subu       $t6, $t6, $a1
/* 95A50 80094E50 000E70C0 */  sll        $t6, $t6, 3
/* 95A54 80094E54 3C01800F */  lui        $at, %hi(D_800EF7D8)
/* 95A58 80094E58 002E0821 */  addu       $at, $at, $t6
/* 95A5C 80094E5C C424F7D8 */  lwc1       $f4, %lo(D_800EF7D8)($at)
/* 95A60 80094E60 3C0141D0 */  lui        $at, 0x41d0
/* 95A64 80094E64 44813000 */  mtc1       $at, $f6
/* 95A68 80094E68 8FA40020 */  lw         $a0, 0x20($sp)
/* 95A6C 80094E6C 46062202 */  mul.s      $f8, $f4, $f6
/* 95A70 80094E70 2418000A */  addiu      $t8, $zero, 0xa
/* 95A74 80094E74 AFB80010 */  sw         $t8, 0x10($sp)
/* 95A78 80094E78 24070010 */  addiu      $a3, $zero, 0x10
/* 95A7C 80094E7C 444FF800 */  cfc1       $t7, $31
/* 95A80 80094E80 00000000 */  nop
/* 95A84 80094E84 35E10003 */  ori        $at, $t7, 3
/* 95A88 80094E88 38210002 */  xori       $at, $at, 2
/* 95A8C 80094E8C 44C1F800 */  ctc1       $at, $31
/* 95A90 80094E90 00000000 */  nop
/* 95A94 80094E94 460042A4 */  cvt.w.s    $f10, $f8
/* 95A98 80094E98 44065000 */  mfc1       $a2, $f10
/* 95A9C 80094E9C 44CFF800 */  ctc1       $t7, $31
/* 95AA0 80094EA0 0C0101A9 */  jal        func_800406A4
/* 95AA4 80094EA4 00000000 */   nop
.L80094EA8:
/* 95AA8 80094EA8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 95AAC 80094EAC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 95AB0 80094EB0 03E00008 */  jr         $ra
/* 95AB4 80094EB4 00000000 */   nop

glabel func_80094EB8
/* 95AB8 80094EB8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 95ABC 80094EBC AFBF0014 */  sw         $ra, 0x14($sp)
/* 95AC0 80094EC0 AFA40018 */  sw         $a0, 0x18($sp)
/* 95AC4 80094EC4 24040050 */  addiu      $a0, $zero, 0x50
/* 95AC8 80094EC8 24050040 */  addiu      $a1, $zero, 0x40
/* 95ACC 80094ECC 0C00A6C0 */  jal        func_80029B00
/* 95AD0 80094ED0 2406FFC0 */   addiu     $a2, $zero, -0x40
/* 95AD4 80094ED4 1040000F */  beqz       $v0, .L80094F14
/* 95AD8 80094ED8 3C18800F */   lui       $t8, %hi(gActors)
/* 95ADC 80094EDC 97AE001A */  lhu        $t6, 0x1a($sp)
/* 95AE0 80094EE0 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 95AE4 80094EE4 000E7880 */  sll        $t7, $t6, 2
/* 95AE8 80094EE8 01EE7823 */  subu       $t7, $t7, $t6
/* 95AEC 80094EEC 000F7880 */  sll        $t7, $t7, 2
/* 95AF0 80094EF0 01EE7821 */  addu       $t7, $t7, $t6
/* 95AF4 80094EF4 000F7880 */  sll        $t7, $t7, 2
/* 95AF8 80094EF8 01EE7823 */  subu       $t7, $t7, $t6
/* 95AFC 80094EFC 000F78C0 */  sll        $t7, $t7, 3
/* 95B00 80094F00 01F81021 */  addu       $v0, $t7, $t8
/* 95B04 80094F04 8C590098 */  lw         $t9, 0x98($v0)
/* 95B08 80094F08 3C010004 */  lui        $at, 4
/* 95B0C 80094F0C 03214025 */  or         $t0, $t9, $at
/* 95B10 80094F10 AC480098 */  sw         $t0, 0x98($v0)
.L80094F14:
/* 95B14 80094F14 8FBF0014 */  lw         $ra, 0x14($sp)
/* 95B18 80094F18 27BD0018 */  addiu      $sp, $sp, 0x18
/* 95B1C 80094F1C 03E00008 */  jr         $ra
/* 95B20 80094F20 00000000 */   nop

glabel func_80094F24
/* 95B24 80094F24 3C0E800C */  lui        $t6, %hi(D_800BE4E0)
/* 95B28 80094F28 95CEE4E0 */  lhu        $t6, %lo(D_800BE4E0)($t6)
/* 95B2C 80094F2C 24010007 */  addiu      $at, $zero, 7
/* 95B30 80094F30 01C1001A */  div        $zero, $t6, $at
/* 95B34 80094F34 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 95B38 80094F38 AFA40020 */  sw         $a0, 0x20($sp)
/* 95B3C 80094F3C AFBF0014 */  sw         $ra, 0x14($sp)
/* 95B40 80094F40 AFA50024 */  sw         $a1, 0x24($sp)
/* 95B44 80094F44 24040050 */  addiu      $a0, $zero, 0x50
/* 95B48 80094F48 00007810 */  mfhi       $t7
/* 95B4C 80094F4C 15E00022 */  bnez       $t7, .L80094FD8
/* 95B50 80094F50 8FBF0014 */   lw        $ra, 0x14($sp)
/* 95B54 80094F54 0C00A12E */  jal        func_800284B8
/* 95B58 80094F58 240500C0 */   addiu     $a1, $zero, 0xc0
/* 95B5C 80094F5C 1040001D */  beqz       $v0, .L80094FD4
/* 95B60 80094F60 3044FFFF */   andi      $a0, $v0, 0xffff
/* 95B64 80094F64 0004C080 */  sll        $t8, $a0, 2
/* 95B68 80094F68 0304C023 */  subu       $t8, $t8, $a0
/* 95B6C 80094F6C 0018C080 */  sll        $t8, $t8, 2
/* 95B70 80094F70 0304C021 */  addu       $t8, $t8, $a0
/* 95B74 80094F74 0018C080 */  sll        $t8, $t8, 2
/* 95B78 80094F78 0304C023 */  subu       $t8, $t8, $a0
/* 95B7C 80094F7C 3C19800F */  lui        $t9, %hi(gActors)
/* 95B80 80094F80 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 95B84 80094F84 0018C0C0 */  sll        $t8, $t8, 3
/* 95B88 80094F88 03191821 */  addu       $v1, $t8, $t9
/* 95B8C 80094F8C 2408006C */  addiu      $t0, $zero, 0x6c
/* 95B90 80094F90 A46800D2 */  sh         $t0, 0xd2($v1)
/* 95B94 80094F94 0C0078B4 */  jal        func_8001E2D0
/* 95B98 80094F98 AFA30018 */   sw        $v1, 0x18($sp)
/* 95B9C 80094F9C 8FA30018 */  lw         $v1, 0x18($sp)
/* 95BA0 80094FA0 97A90022 */  lhu        $t1, 0x22($sp)
/* 95BA4 80094FA4 3C0A800C */  lui        $t2, %hi(D_800BE4E0)
/* 95BA8 80094FA8 AC690150 */  sw         $t1, 0x150($v1)
/* 95BAC 80094FAC 954AE4E0 */  lhu        $t2, %lo(D_800BE4E0)($t2)
/* 95BB0 80094FB0 2401000E */  addiu      $at, $zero, 0xe
/* 95BB4 80094FB4 0141001A */  div        $zero, $t2, $at
/* 95BB8 80094FB8 3C013F80 */  lui        $at, 0x3f80
/* 95BBC 80094FBC 00005810 */  mfhi       $t3
/* 95BC0 80094FC0 15600005 */  bnez       $t3, .L80094FD8
/* 95BC4 80094FC4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 95BC8 80094FC8 44812000 */  mtc1       $at, $f4
/* 95BCC 80094FCC 00000000 */  nop
/* 95BD0 80094FD0 E4640110 */  swc1       $f4, 0x110($v1)
.L80094FD4:
/* 95BD4 80094FD4 8FBF0014 */  lw         $ra, 0x14($sp)
.L80094FD8:
/* 95BD8 80094FD8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 95BDC 80094FDC 03E00008 */  jr         $ra
/* 95BE0 80094FE0 00000000 */   nop

glabel func_80094FE4
/* 95BE4 80094FE4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 95BE8 80094FE8 000E7880 */  sll        $t7, $t6, 2
/* 95BEC 80094FEC 01EE7823 */  subu       $t7, $t7, $t6
/* 95BF0 80094FF0 000F7880 */  sll        $t7, $t7, 2
/* 95BF4 80094FF4 01EE7821 */  addu       $t7, $t7, $t6
/* 95BF8 80094FF8 000F7880 */  sll        $t7, $t7, 2
/* 95BFC 80094FFC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 95C00 80095000 01EE7823 */  subu       $t7, $t7, $t6
/* 95C04 80095004 3C18800F */  lui        $t8, %hi(gActors)
/* 95C08 80095008 AFB00018 */  sw         $s0, 0x18($sp)
/* 95C0C 8009500C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 95C10 80095010 000F78C0 */  sll        $t7, $t7, 3
/* 95C14 80095014 01F88021 */  addu       $s0, $t7, $t8
/* 95C18 80095018 8E190150 */  lw         $t9, 0x150($s0)
/* 95C1C 8009501C 240100F5 */  addiu      $at, $zero, 0xf5
/* 95C20 80095020 00194080 */  sll        $t0, $t9, 2
/* 95C24 80095024 01194023 */  subu       $t0, $t0, $t9
/* 95C28 80095028 00084080 */  sll        $t0, $t0, 2
/* 95C2C 8009502C 01194021 */  addu       $t0, $t0, $t9
/* 95C30 80095030 00084080 */  sll        $t0, $t0, 2
/* 95C34 80095034 01194023 */  subu       $t0, $t0, $t9
/* 95C38 80095038 000840C0 */  sll        $t0, $t0, 3
/* 95C3C 8009503C 01181821 */  addu       $v1, $t0, $t8
/* 95C40 80095040 946900D0 */  lhu        $t1, 0xd0($v1)
/* 95C44 80095044 AFBF001C */  sw         $ra, 0x1c($sp)
/* 95C48 80095048 15210003 */  bne        $t1, $at, .L80095058
/* 95C4C 8009504C AFA40020 */   sw        $a0, 0x20($sp)
/* 95C50 80095050 10000164 */  b          .L800955E4
/* 95C54 80095054 AE000080 */   sw        $zero, 0x80($s0)
.L80095058:
/* 95C58 80095058 960400D0 */  lhu        $a0, 0xd0($s0)
/* 95C5C 8009505C 3C050040 */  lui        $a1, 0x40
/* 95C60 80095060 1080000A */  beqz       $a0, .L8009508C
/* 95C64 80095064 00801025 */   or        $v0, $a0, $zero
/* 95C68 80095068 24010001 */  addiu      $at, $zero, 1
/* 95C6C 8009506C 10410020 */  beq        $v0, $at, .L800950F0
/* 95C70 80095070 24010002 */   addiu     $at, $zero, 2
/* 95C74 80095074 10410052 */  beq        $v0, $at, .L800951C0
/* 95C78 80095078 24010003 */   addiu     $at, $zero, 3
/* 95C7C 8009507C 10410048 */  beq        $v0, $at, .L800951A0
/* 95C80 80095080 00002825 */   or        $a1, $zero, $zero
/* 95C84 80095084 1000006F */  b          .L80095244
/* 95C88 80095088 86040090 */   lh        $a0, 0x90($s0)
.L8009508C:
/* 95C8C 8009508C 3C0142B4 */  lui        $at, 0x42b4
/* 95C90 80095090 44812000 */  mtc1       $at, $f4
/* 95C94 80095094 3C014000 */  lui        $at, 0x4000
/* 95C98 80095098 44813000 */  mtc1       $at, $f6
/* 95C9C 8009509C 248A0001 */  addiu      $t2, $a0, 1
/* 95CA0 800950A0 240B0307 */  addiu      $t3, $zero, 0x307
/* 95CA4 800950A4 240C000B */  addiu      $t4, $zero, 0xb
/* 95CA8 800950A8 240D01A8 */  addiu      $t5, $zero, 0x1a8
/* 95CAC 800950AC 3C0E0200 */  lui        $t6, 0x200
/* 95CB0 800950B0 3C0F00C0 */  lui        $t7, 0xc0
/* 95CB4 800950B4 3C19FFC0 */  lui        $t9, 0xffc0
/* 95CB8 800950B8 3C08FFB0 */  lui        $t0, 0xffb0
/* 95CBC 800950BC 34188000 */  ori        $t8, $zero, 0x8000
/* 95CC0 800950C0 A60A00D0 */  sh         $t2, 0xd0($s0)
/* 95CC4 800950C4 A60B0094 */  sh         $t3, 0x94($s0)
/* 95CC8 800950C8 AE0C0080 */  sw         $t4, 0x80($s0)
/* 95CCC 800950CC A60D0084 */  sh         $t5, 0x84($s0)
/* 95CD0 800950D0 AE0E0154 */  sw         $t6, 0x154($s0)
/* 95CD4 800950D4 AE0F0158 */  sw         $t7, 0x158($s0)
/* 95CD8 800950D8 AE190170 */  sw         $t9, 0x170($s0)
/* 95CDC 800950DC AE080174 */  sw         $t0, 0x174($s0)
/* 95CE0 800950E0 AE18017C */  sw         $t8, 0x17c($s0)
/* 95CE4 800950E4 A200009F */  sb         $zero, 0x9f($s0)
/* 95CE8 800950E8 E60400BC */  swc1       $f4, 0xbc($s0)
/* 95CEC 800950EC E60600B4 */  swc1       $f6, 0xb4($s0)
.L800950F0:
/* 95CF0 800950F0 8E040158 */  lw         $a0, 0x158($s0)
/* 95CF4 800950F4 3C060001 */  lui        $a2, 1
/* 95CF8 800950F8 0C00A607 */  jal        func_8002981C
/* 95CFC 800950FC 34C62492 */   ori       $a2, $a2, 0x2492
/* 95D00 80095100 8E040170 */  lw         $a0, 0x170($s0)
/* 95D04 80095104 AE020158 */  sw         $v0, 0x158($s0)
/* 95D08 80095108 00002825 */  or         $a1, $zero, $zero
/* 95D0C 8009510C 0C00A607 */  jal        func_8002981C
/* 95D10 80095110 34069249 */   ori       $a2, $zero, 0x9249
/* 95D14 80095114 8E040174 */  lw         $a0, 0x174($s0)
/* 95D18 80095118 AE020170 */  sw         $v0, 0x170($s0)
/* 95D1C 8009511C 00002825 */  or         $a1, $zero, $zero
/* 95D20 80095120 0C00A607 */  jal        func_8002981C
/* 95D24 80095124 3406B6DB */   ori       $a2, $zero, 0xb6db
/* 95D28 80095128 9204009F */  lbu        $a0, 0x9f($s0)
/* 95D2C 8009512C AE020174 */  sw         $v0, 0x174($s0)
/* 95D30 80095130 240500FF */  addiu      $a1, $zero, 0xff
/* 95D34 80095134 0C00A607 */  jal        func_8002981C
/* 95D38 80095138 24060008 */   addiu     $a2, $zero, 8
/* 95D3C 8009513C 8E040178 */  lw         $a0, 0x178($s0)
/* 95D40 80095140 3C05FFFB */  lui        $a1, 0xfffb
/* 95D44 80095144 8E06017C */  lw         $a2, 0x17c($s0)
/* 95D48 80095148 A202009F */  sb         $v0, 0x9f($s0)
/* 95D4C 8009514C 0C00A607 */  jal        func_8002981C
/* 95D50 80095150 34A56DB7 */   ori       $a1, $a1, 0x6db7
/* 95D54 80095154 8E090170 */  lw         $t1, 0x170($s0)
/* 95D58 80095158 AE020178 */  sw         $v0, 0x178($s0)
/* 95D5C 8009515C 15200005 */  bnez       $t1, .L80095174
/* 95D60 80095160 3C0E800F */   lui       $t6, 0x800f
/* 95D64 80095164 960A00D0 */  lhu        $t2, 0xd0($s0)
/* 95D68 80095168 00000000 */  nop
/* 95D6C 8009516C 254B0001 */  addiu      $t3, $t2, 1
/* 95D70 80095170 A60B00D0 */  sh         $t3, 0xd0($s0)
.L80095174:
/* 95D74 80095174 8E0C0150 */  lw         $t4, 0x150($s0)
/* 95D78 80095178 25CEF510 */  addiu      $t6, $t6, -0xaf0
/* 95D7C 8009517C 000C6880 */  sll        $t5, $t4, 2
/* 95D80 80095180 01AC6823 */  subu       $t5, $t5, $t4
/* 95D84 80095184 000D6880 */  sll        $t5, $t5, 2
/* 95D88 80095188 01AC6821 */  addu       $t5, $t5, $t4
/* 95D8C 8009518C 000D6880 */  sll        $t5, $t5, 2
/* 95D90 80095190 01AC6823 */  subu       $t5, $t5, $t4
/* 95D94 80095194 000D68C0 */  sll        $t5, $t5, 3
/* 95D98 80095198 10000029 */  b          .L80095240
/* 95D9C 8009519C 01AE1821 */   addu      $v1, $t5, $t6
.L800951A0:
/* 95DA0 800951A0 9204009F */  lbu        $a0, 0x9f($s0)
/* 95DA4 800951A4 0C00A607 */  jal        func_8002981C
/* 95DA8 800951A8 24060008 */   addiu     $a2, $zero, 8
/* 95DAC 800951AC 304F00FF */  andi       $t7, $v0, 0xff
/* 95DB0 800951B0 15E00003 */  bnez       $t7, .L800951C0
/* 95DB4 800951B4 A202009F */   sb        $v0, 0x9f($s0)
/* 95DB8 800951B8 1000010A */  b          .L800955E4
/* 95DBC 800951BC AE000080 */   sw        $zero, 0x80($s0)
.L800951C0:
/* 95DC0 800951C0 8E190158 */  lw         $t9, 0x158($s0)
/* 95DC4 800951C4 8E18017C */  lw         $t8, 0x17c($s0)
/* 95DC8 800951C8 24018000 */  addiu      $at, $zero, -0x8000
/* 95DCC 800951CC 8E040178 */  lw         $a0, 0x178($s0)
/* 95DD0 800951D0 03214021 */  addu       $t0, $t9, $at
/* 95DD4 800951D4 27060100 */  addiu      $a2, $t8, 0x100
/* 95DD8 800951D8 AE080158 */  sw         $t0, 0x158($s0)
/* 95DDC 800951DC AE06017C */  sw         $a2, 0x17c($s0)
/* 95DE0 800951E0 0C00A607 */  jal        func_8002981C
/* 95DE4 800951E4 3C05FFE0 */   lui       $a1, 0xffe0
/* 95DE8 800951E8 8E0A0174 */  lw         $t2, 0x174($s0)
/* 95DEC 800951EC 3C010002 */  lui        $at, 2
/* 95DF0 800951F0 01415821 */  addu       $t3, $t2, $at
/* 95DF4 800951F4 3C01FFE8 */  lui        $at, 0xffe8
/* 95DF8 800951F8 34210001 */  ori        $at, $at, 1
/* 95DFC 800951FC 0041082A */  slt        $at, $v0, $at
/* 95E00 80095200 AE020178 */  sw         $v0, 0x178($s0)
/* 95E04 80095204 10200003 */  beqz       $at, .L80095214
/* 95E08 80095208 AE0B0174 */   sw        $t3, 0x174($s0)
/* 95E0C 8009520C 240C0003 */  addiu      $t4, $zero, 3
/* 95E10 80095210 A60C00D0 */  sh         $t4, 0xd0($s0)
.L80095214:
/* 95E14 80095214 8E0D0150 */  lw         $t5, 0x150($s0)
/* 95E18 80095218 3C0F800F */  lui        $t7, 0x800f
/* 95E1C 8009521C 000D7080 */  sll        $t6, $t5, 2
/* 95E20 80095220 01CD7023 */  subu       $t6, $t6, $t5
/* 95E24 80095224 000E7080 */  sll        $t6, $t6, 2
/* 95E28 80095228 01CD7021 */  addu       $t6, $t6, $t5
/* 95E2C 8009522C 000E7080 */  sll        $t6, $t6, 2
/* 95E30 80095230 01CD7023 */  subu       $t6, $t6, $t5
/* 95E34 80095234 000E70C0 */  sll        $t6, $t6, 3
/* 95E38 80095238 25EFF510 */  addiu      $t7, $t7, -0xaf0
/* 95E3C 8009523C 01CF1821 */  addu       $v1, $t6, $t7
.L80095240:
/* 95E40 80095240 86040090 */  lh         $a0, 0x90($s0)
.L80095244:
/* 95E44 80095244 84790090 */  lh         $t9, 0x90($v1)
/* 95E48 80095248 240E0001 */  addiu      $t6, $zero, 1
/* 95E4C 8009524C 00991023 */  subu       $v0, $a0, $t9
/* 95E50 80095250 04410003 */  bgez       $v0, .L80095260
/* 95E54 80095254 00024043 */   sra       $t0, $v0, 1
/* 95E58 80095258 24410001 */  addiu      $at, $v0, 1
/* 95E5C 8009525C 00014043 */  sra        $t0, $at, 1
.L80095260:
/* 95E60 80095260 05010002 */  bgez       $t0, .L8009526C
/* 95E64 80095264 01001025 */   or        $v0, $t0, $zero
/* 95E68 80095268 00081023 */  negu       $v0, $t0
.L8009526C:
/* 95E6C 8009526C 28410080 */  slti       $at, $v0, 0x80
/* 95E70 80095270 14200002 */  bnez       $at, .L8009527C
/* 95E74 80095274 00000000 */   nop
/* 95E78 80095278 2402007F */  addiu      $v0, $zero, 0x7f
.L8009527C:
/* 95E7C 8009527C A202009C */  sb         $v0, 0x9c($s0)
/* 95E80 80095280 84780090 */  lh         $t8, 0x90($v1)
/* 95E84 80095284 00000000 */  nop
/* 95E88 80095288 0098082A */  slt        $at, $a0, $t8
/* 95E8C 8009528C 14200006 */  bnez       $at, .L800952A8
/* 95E90 80095290 00000000 */   nop
/* 95E94 80095294 96090094 */  lhu        $t1, 0x94($s0)
/* 95E98 80095298 00000000 */  nop
/* 95E9C 8009529C 312AFFEF */  andi       $t2, $t1, 0xffef
/* 95EA0 800952A0 10000005 */  b          .L800952B8
/* 95EA4 800952A4 A60A0094 */   sh        $t2, 0x94($s0)
.L800952A8:
/* 95EA8 800952A8 960B0094 */  lhu        $t3, 0x94($s0)
/* 95EAC 800952AC 00000000 */  nop
/* 95EB0 800952B0 356C0010 */  ori        $t4, $t3, 0x10
/* 95EB4 800952B4 A60C0094 */  sh         $t4, 0x94($s0)
.L800952B8:
/* 95EB8 800952B8 444DF800 */  cfc1       $t5, $31
/* 95EBC 800952BC 44CEF800 */  ctc1       $t6, $31
/* 95EC0 800952C0 C6080110 */  lwc1       $f8, 0x110($s0)
/* 95EC4 800952C4 A202009D */  sb         $v0, 0x9d($s0)
/* 95EC8 800952C8 460042A4 */  cvt.w.s    $f10, $f8
/* 95ECC 800952CC A202009E */  sb         $v0, 0x9e($s0)
/* 95ED0 800952D0 444EF800 */  cfc1       $t6, $31
/* 95ED4 800952D4 3C014F00 */  lui        $at, 0x4f00
/* 95ED8 800952D8 31CE0078 */  andi       $t6, $t6, 0x78
/* 95EDC 800952DC 11C00012 */  beqz       $t6, .L80095328
/* 95EE0 800952E0 3C0A800C */   lui       $t2, 0x800c
/* 95EE4 800952E4 44815000 */  mtc1       $at, $f10
/* 95EE8 800952E8 240E0001 */  addiu      $t6, $zero, 1
/* 95EEC 800952EC 460A4281 */  sub.s      $f10, $f8, $f10
/* 95EF0 800952F0 3C018000 */  lui        $at, 0x8000
/* 95EF4 800952F4 44CEF800 */  ctc1       $t6, $31
/* 95EF8 800952F8 00000000 */  nop
/* 95EFC 800952FC 460052A4 */  cvt.w.s    $f10, $f10
/* 95F00 80095300 444EF800 */  cfc1       $t6, $31
/* 95F04 80095304 00000000 */  nop
/* 95F08 80095308 31CE0078 */  andi       $t6, $t6, 0x78
/* 95F0C 8009530C 15C00004 */  bnez       $t6, .L80095320
/* 95F10 80095310 00000000 */   nop
/* 95F14 80095314 440E5000 */  mfc1       $t6, $f10
/* 95F18 80095318 10000007 */  b          .L80095338
/* 95F1C 8009531C 01C17025 */   or        $t6, $t6, $at
.L80095320:
/* 95F20 80095320 10000005 */  b          .L80095338
/* 95F24 80095324 240EFFFF */   addiu     $t6, $zero, -1
.L80095328:
/* 95F28 80095328 440E5000 */  mfc1       $t6, $f10
/* 95F2C 8009532C 00000000 */  nop
/* 95F30 80095330 05C0FFFB */  bltz       $t6, .L80095320
/* 95F34 80095334 00000000 */   nop
.L80095338:
/* 95F38 80095338 44CDF800 */  ctc1       $t5, $31
/* 95F3C 8009533C 31CFFFFF */  andi       $t7, $t6, 0xffff
/* 95F40 80095340 11E0000C */  beqz       $t7, .L80095374
/* 95F44 80095344 3C19800C */   lui       $t9, %hi(D_800BE4E0)
/* 95F48 80095348 9739E4E0 */  lhu        $t9, %lo(D_800BE4E0)($t9)
/* 95F4C 8009534C 3C098022 */  lui        $t1, 0x8022
/* 95F50 80095350 33280002 */  andi       $t0, $t9, 2
/* 95F54 80095354 11000005 */  beqz       $t0, .L8009536C
/* 95F58 80095358 3529D4E8 */   ori       $t1, $t1, 0xd4e8
/* 95F5C 8009535C 3C188022 */  lui        $t8, 0x8022
/* 95F60 80095360 3718D528 */  ori        $t8, $t8, 0xd528
/* 95F64 80095364 1000000D */  b          .L8009539C
/* 95F68 80095368 AE18018C */   sw        $t8, 0x18c($s0)
.L8009536C:
/* 95F6C 8009536C 1000000B */  b          .L8009539C
/* 95F70 80095370 AE09018C */   sw        $t1, 0x18c($s0)
.L80095374:
/* 95F74 80095374 954AE4E0 */  lhu        $t2, -0x1b20($t2)
/* 95F78 80095378 3C0D8022 */  lui        $t5, 0x8022
/* 95F7C 8009537C 314B0002 */  andi       $t3, $t2, 2
/* 95F80 80095380 11600005 */  beqz       $t3, .L80095398
/* 95F84 80095384 35ADD568 */   ori       $t5, $t5, 0xd568
/* 95F88 80095388 3C0C8022 */  lui        $t4, 0x8022
/* 95F8C 8009538C 358CD548 */  ori        $t4, $t4, 0xd548
/* 95F90 80095390 10000002 */  b          .L8009539C
/* 95F94 80095394 AE0C018C */   sw        $t4, 0x18c($s0)
.L80095398:
/* 95F98 80095398 AE0D018C */  sw         $t5, 0x18c($s0)
.L8009539C:
/* 95F9C 8009539C C60C00BC */  lwc1       $f12, 0xbc($s0)
/* 95FA0 800953A0 44807000 */  mtc1       $zero, $f14
/* 95FA4 800953A4 0C00A618 */  jal        func_80029860
/* 95FA8 800953A8 3C063F00 */   lui       $a2, 0x3f00
/* 95FAC 800953AC 8E090150 */  lw         $t1, 0x150($s0)
/* 95FB0 800953B0 8E0E0154 */  lw         $t6, 0x154($s0)
/* 95FB4 800953B4 8E0F0178 */  lw         $t7, 0x178($s0)
/* 95FB8 800953B8 00095080 */  sll        $t2, $t1, 2
/* 95FBC 800953BC 01495023 */  subu       $t2, $t2, $t1
/* 95FC0 800953C0 01CFC821 */  addu       $t9, $t6, $t7
/* 95FC4 800953C4 03201025 */  or         $v0, $t9, $zero
/* 95FC8 800953C8 000A5080 */  sll        $t2, $t2, 2
/* 95FCC 800953CC 01495021 */  addu       $t2, $t2, $t1
/* 95FD0 800953D0 000A5080 */  sll        $t2, $t2, 2
/* 95FD4 800953D4 8E040158 */  lw         $a0, 0x158($s0)
/* 95FD8 800953D8 3C0B800F */  lui        $t3, %hi(gActors)
/* 95FDC 800953DC 01495023 */  subu       $t2, $t2, $t1
/* 95FE0 800953E0 AE190154 */  sw         $t9, 0x154($s0)
/* 95FE4 800953E4 000A50C0 */  sll        $t2, $t2, 3
/* 95FE8 800953E8 256BF510 */  addiu      $t3, $t3, %lo(gActors)
/* 95FEC 800953EC 44848000 */  mtc1       $a0, $f16
/* 95FF0 800953F0 3C07800C */  lui        $a3, %hi(D_800BCCD0)
/* 95FF4 800953F4 E60000BC */  swc1       $f0, 0xbc($s0)
/* 95FF8 800953F8 014B1821 */  addu       $v1, $t2, $t3
/* 95FFC 800953FC 8C6C0088 */  lw         $t4, 0x88($v1)
/* 96000 80095400 8E0D0170 */  lw         $t5, 0x170($s0)
/* 96004 80095404 24E7CCD0 */  addiu      $a3, $a3, %lo(D_800BCCD0)
/* 96008 80095408 04410004 */  bgez       $v0, .L8009541C
/* 9600C 8009540C 00024403 */   sra       $t0, $v0, 0x10
/* 96010 80095410 3401FFFF */  ori        $at, $zero, 0xffff
/* 96014 80095414 00220821 */  addu       $at, $at, $v0
/* 96018 80095418 00014403 */  sra        $t0, $at, 0x10
.L8009541C:
/* 9601C 8009541C 3105FFFF */  andi       $a1, $t0, 0xffff
/* 96020 80095420 30AF03FF */  andi       $t7, $a1, 0x3ff
/* 96024 80095424 000FC880 */  sll        $t9, $t7, 2
/* 96028 80095428 468080A0 */  cvt.s.w    $f2, $f16
/* 9602C 8009542C 00F94021 */  addu       $t0, $a3, $t9
/* 96030 80095430 C5060000 */  lwc1       $f6, ($t0)
/* 96034 80095434 018D7021 */  addu       $t6, $t4, $t5
/* 96038 80095438 448E9000 */  mtc1       $t6, $f18
/* 9603C 8009543C 46023202 */  mul.s      $f8, $f6, $f2
/* 96040 80095440 24AA0100 */  addiu      $t2, $a1, 0x100
/* 96044 80095444 314B03FF */  andi       $t3, $t2, 0x3ff
/* 96048 80095448 240D0001 */  addiu      $t5, $zero, 1
/* 9604C 8009544C 46809120 */  cvt.s.w    $f4, $f18
/* 96050 80095450 448B9000 */  mtc1       $t3, $f18
/* 96054 80095454 46044280 */  add.s      $f10, $f8, $f4
/* 96058 80095458 4458F800 */  cfc1       $t8, $31
/* 9605C 8009545C 00000000 */  nop
/* 96060 80095460 37010003 */  ori        $at, $t8, 3
/* 96064 80095464 38210002 */  xori       $at, $at, 2
/* 96068 80095468 44C1F800 */  ctc1       $at, $31
/* 9606C 8009546C 3C01800F */  lui        $at, 0x800f
/* 96070 80095470 46005424 */  cvt.w.s    $f16, $f10
/* 96074 80095474 44098000 */  mfc1       $t1, $f16
/* 96078 80095478 44D8F800 */  ctc1       $t8, $31
/* 9607C 8009547C AE090088 */  sw         $t1, 0x88($s0)
/* 96080 80095480 468091A1 */  cvt.d.w    $f6, $f18
/* 96084 80095484 C428D4C4 */  lwc1       $f8, -0x2b3c($at)
/* 96088 80095488 C429D4C0 */  lwc1       $f9, -0x2b40($at)
/* 9608C 8009548C C6100110 */  lwc1       $f16, 0x110($s0)
/* 96090 80095490 46283102 */  mul.d      $f4, $f6, $f8
/* 96094 80095494 3C09800F */  lui        $t1, %hi(gActors)
/* 96098 80095498 3C014F00 */  lui        $at, 0x4f00
/* 9609C 8009549C 2529F510 */  addiu      $t1, $t1, %lo(gActors)
/* 960A0 800954A0 462022A0 */  cvt.s.d    $f10, $f4
/* 960A4 800954A4 444CF800 */  cfc1       $t4, $31
/* 960A8 800954A8 44CDF800 */  ctc1       $t5, $31
/* 960AC 800954AC E60A00C0 */  swc1       $f10, 0xc0($s0)
/* 960B0 800954B0 460084A4 */  cvt.w.s    $f18, $f16
/* 960B4 800954B4 444DF800 */  cfc1       $t5, $31
/* 960B8 800954B8 00000000 */  nop
/* 960BC 800954BC 31AD0078 */  andi       $t5, $t5, 0x78
/* 960C0 800954C0 11A00012 */  beqz       $t5, .L8009550C
/* 960C4 800954C4 00000000 */   nop
/* 960C8 800954C8 44819000 */  mtc1       $at, $f18
/* 960CC 800954CC 240D0001 */  addiu      $t5, $zero, 1
/* 960D0 800954D0 46128481 */  sub.s      $f18, $f16, $f18
/* 960D4 800954D4 3C018000 */  lui        $at, 0x8000
/* 960D8 800954D8 44CDF800 */  ctc1       $t5, $31
/* 960DC 800954DC 00000000 */  nop
/* 960E0 800954E0 460094A4 */  cvt.w.s    $f18, $f18
/* 960E4 800954E4 444DF800 */  cfc1       $t5, $31
/* 960E8 800954E8 00000000 */  nop
/* 960EC 800954EC 31AD0078 */  andi       $t5, $t5, 0x78
/* 960F0 800954F0 15A00004 */  bnez       $t5, .L80095504
/* 960F4 800954F4 00000000 */   nop
/* 960F8 800954F8 440D9000 */  mfc1       $t5, $f18
/* 960FC 800954FC 10000007 */  b          .L8009551C
/* 96100 80095500 01A16825 */   or        $t5, $t5, $at
.L80095504:
/* 96104 80095504 10000005 */  b          .L8009551C
/* 96108 80095508 240DFFFF */   addiu     $t5, $zero, -1
.L8009550C:
/* 9610C 8009550C 440D9000 */  mfc1       $t5, $f18
/* 96110 80095510 00000000 */  nop
/* 96114 80095514 05A0FFFB */  bltz       $t5, .L80095504
/* 96118 80095518 00000000 */   nop
.L8009551C:
/* 9611C 8009551C 44CCF800 */  ctc1       $t4, $31
/* 96120 80095520 31AEFFFF */  andi       $t6, $t5, 0xffff
/* 96124 80095524 11C00011 */  beqz       $t6, .L8009556C
/* 96128 80095528 24ADFF00 */   addiu     $t5, $a1, -0x100
/* 9612C 8009552C 8E080150 */  lw         $t0, 0x150($s0)
/* 96130 80095530 44803000 */  mtc1       $zero, $f6
/* 96134 80095534 0008C080 */  sll        $t8, $t0, 2
/* 96138 80095538 0308C023 */  subu       $t8, $t8, $t0
/* 9613C 8009553C 0018C080 */  sll        $t8, $t8, 2
/* 96140 80095540 C60800C0 */  lwc1       $f8, 0xc0($s0)
/* 96144 80095544 0308C021 */  addu       $t8, $t8, $t0
/* 96148 80095548 8E0F0088 */  lw         $t7, 0x88($s0)
/* 9614C 8009554C 0018C080 */  sll        $t8, $t8, 2
/* 96150 80095550 46083101 */  sub.s      $f4, $f6, $f8
/* 96154 80095554 0308C023 */  subu       $t8, $t8, $t0
/* 96158 80095558 0018C0C0 */  sll        $t8, $t8, 3
/* 9615C 8009555C 000FC823 */  negu       $t9, $t7
/* 96160 80095560 AE190088 */  sw         $t9, 0x88($s0)
/* 96164 80095564 03091821 */  addu       $v1, $t8, $t1
/* 96168 80095568 E60400C0 */  swc1       $f4, 0xc0($s0)
.L8009556C:
/* 9616C 8009556C 8E0A0174 */  lw         $t2, 0x174($s0)
/* 96170 80095570 8C6B008C */  lw         $t3, 0x8c($v1)
/* 96174 80095574 31AE03FF */  andi       $t6, $t5, 0x3ff
/* 96178 80095578 014B6021 */  addu       $t4, $t2, $t3
/* 9617C 8009557C AE0C008C */  sw         $t4, 0x8c($s0)
/* 96180 80095580 000E7880 */  sll        $t7, $t6, 2
/* 96184 80095584 8C680090 */  lw         $t0, 0x90($v1)
/* 96188 80095588 00EFC821 */  addu       $t9, $a3, $t7
/* 9618C 8009558C C72A0000 */  lwc1       $f10, ($t9)
/* 96190 80095590 44889000 */  mtc1       $t0, $f18
/* 96194 80095594 46025402 */  mul.s      $f16, $f10, $f2
/* 96198 80095598 C60C00B4 */  lwc1       $f12, 0xb4($s0)
/* 9619C 8009559C 3C063C23 */  lui        $a2, 0x3c23
/* 961A0 800955A0 34C6D70A */  ori        $a2, $a2, 0xd70a
/* 961A4 800955A4 468091A0 */  cvt.s.w    $f6, $f18
/* 961A8 800955A8 46068200 */  add.s      $f8, $f16, $f6
/* 961AC 800955AC 4458F800 */  cfc1       $t8, $31
/* 961B0 800955B0 00000000 */  nop
/* 961B4 800955B4 37010003 */  ori        $at, $t8, 3
/* 961B8 800955B8 38210002 */  xori       $at, $at, 2
/* 961BC 800955BC 44C1F800 */  ctc1       $at, $31
/* 961C0 800955C0 3C013F80 */  lui        $at, 0x3f80
/* 961C4 800955C4 46004124 */  cvt.w.s    $f4, $f8
/* 961C8 800955C8 44817000 */  mtc1       $at, $f14
/* 961CC 800955CC 44092000 */  mfc1       $t1, $f4
/* 961D0 800955D0 44D8F800 */  ctc1       $t8, $31
/* 961D4 800955D4 0C00A618 */  jal        func_80029860
/* 961D8 800955D8 AE090090 */   sw        $t1, 0x90($s0)
/* 961DC 800955DC E60000B4 */  swc1       $f0, 0xb4($s0)
/* 961E0 800955E0 E60000B8 */  swc1       $f0, 0xb8($s0)
.L800955E4:
/* 961E4 800955E4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 961E8 800955E8 8FB00018 */  lw         $s0, 0x18($sp)
/* 961EC 800955EC 03E00008 */  jr         $ra
/* 961F0 800955F0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800955F4
/* 961F4 800955F4 3C02800C */  lui        $v0, %hi(D_800BE4FC)
/* 961F8 800955F8 3C0F800C */  lui        $t7, %hi(D_800BE524)
/* 961FC 800955FC 95EFE524 */  lhu        $t7, %lo(D_800BE524)($t7)
/* 96200 80095600 9442E4FC */  lhu        $v0, %lo(D_800BE4FC)($v0)
/* 96204 80095604 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 96208 80095608 AFA40030 */  sw         $a0, 0x30($sp)
/* 9620C 8009560C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 96210 80095610 004FC024 */  and        $t8, $v0, $t7
/* 96214 80095614 01C02025 */  or         $a0, $t6, $zero
/* 96218 80095618 13000014 */  beqz       $t8, .L8009566C
/* 9621C 8009561C AFBF0014 */   sw        $ra, 0x14($sp)
/* 96220 80095620 3C03800F */  lui        $v1, %hi(D_800E93BC)
/* 96224 80095624 246393BC */  addiu      $v1, $v1, %lo(D_800E93BC)
/* 96228 80095628 94790000 */  lhu        $t9, ($v1)
/* 9622C 8009562C 00045080 */  sll        $t2, $a0, 2
/* 96230 80095630 27280001 */  addiu      $t0, $t9, 1
/* 96234 80095634 3109FFFF */  andi       $t1, $t0, 0xffff
/* 96238 80095638 29210005 */  slti       $at, $t1, 5
/* 9623C 8009563C 14200002 */  bnez       $at, .L80095648
/* 96240 80095640 A4680000 */   sh        $t0, ($v1)
/* 96244 80095644 A4600000 */  sh         $zero, ($v1)
.L80095648:
/* 96248 80095648 01445023 */  subu       $t2, $t2, $a0
/* 9624C 8009564C 000A5080 */  sll        $t2, $t2, 2
/* 96250 80095650 01445021 */  addu       $t2, $t2, $a0
/* 96254 80095654 000A5080 */  sll        $t2, $t2, 2
/* 96258 80095658 01445023 */  subu       $t2, $t2, $a0
/* 9625C 8009565C 000A50C0 */  sll        $t2, $t2, 3
/* 96260 80095660 3C01800F */  lui        $at, %hi(D_800EF5E0)
/* 96264 80095664 002A0821 */  addu       $at, $at, $t2
/* 96268 80095668 A420F5E0 */  sh         $zero, %lo(D_800EF5E0)($at)
.L8009566C:
/* 9626C 8009566C 00045880 */  sll        $t3, $a0, 2
/* 96270 80095670 01645823 */  subu       $t3, $t3, $a0
/* 96274 80095674 000B5880 */  sll        $t3, $t3, 2
/* 96278 80095678 01645821 */  addu       $t3, $t3, $a0
/* 9627C 8009567C 3C0D800C */  lui        $t5, %hi(D_800BE51C)
/* 96280 80095680 95ADE51C */  lhu        $t5, %lo(D_800BE51C)($t5)
/* 96284 80095684 000B5880 */  sll        $t3, $t3, 2
/* 96288 80095688 01645823 */  subu       $t3, $t3, $a0
/* 9628C 8009568C 3C05800F */  lui        $a1, %hi(D_800E93BC)
/* 96290 80095690 3C0C800F */  lui        $t4, %hi(gActors)
/* 96294 80095694 258CF510 */  addiu      $t4, $t4, %lo(gActors)
/* 96298 80095698 94A593BC */  lhu        $a1, %lo(D_800E93BC)($a1)
/* 9629C 8009569C 000B58C0 */  sll        $t3, $t3, 3
/* 962A0 800956A0 004D7024 */  and        $t6, $v0, $t5
/* 962A4 800956A4 11C0000B */  beqz       $t6, .L800956D4
/* 962A8 800956A8 016C1821 */   addu      $v1, $t3, $t4
/* 962AC 800956AC 3C02800F */  lui        $v0, %hi(D_800E93C0)
/* 962B0 800956B0 244293C0 */  addiu      $v0, $v0, %lo(D_800E93C0)
/* 962B4 800956B4 944F0000 */  lhu        $t7, ($v0)
/* 962B8 800956B8 00000000 */  nop
/* 962BC 800956BC 25F80001 */  addiu      $t8, $t7, 1
/* 962C0 800956C0 3319FFFF */  andi       $t9, $t8, 0xffff
/* 962C4 800956C4 2B210004 */  slti       $at, $t9, 4
/* 962C8 800956C8 14200002 */  bnez       $at, .L800956D4
/* 962CC 800956CC A4580000 */   sh        $t8, ($v0)
/* 962D0 800956D0 A4400000 */  sh         $zero, ($v0)
.L800956D4:
/* 962D4 800956D4 00044080 */  sll        $t0, $a0, 2
/* 962D8 800956D8 01044023 */  subu       $t0, $t0, $a0
/* 962DC 800956DC 00084080 */  sll        $t0, $t0, 2
/* 962E0 800956E0 01044021 */  addu       $t0, $t0, $a0
/* 962E4 800956E4 00084080 */  sll        $t0, $t0, 2
/* 962E8 800956E8 01044023 */  subu       $t0, $t0, $a0
/* 962EC 800956EC 3C09800F */  lui        $t1, %hi(gActors)
/* 962F0 800956F0 2529F510 */  addiu      $t1, $t1, %lo(gActors)
/* 962F4 800956F4 000840C0 */  sll        $t0, $t0, 3
/* 962F8 800956F8 01093021 */  addu       $a2, $t0, $t1
/* 962FC 800956FC A4C50270 */  sh         $a1, 0x270($a2)
/* 96300 80095700 AFA60018 */  sw         $a2, 0x18($sp)
/* 96304 80095704 AFA3001C */  sw         $v1, 0x1c($sp)
/* 96308 80095708 0C025317 */  jal        func_80094C5C
/* 9630C 8009570C A7A40032 */   sh        $a0, 0x32($sp)
/* 96310 80095710 3C02800F */  lui        $v0, %hi(D_800E93C0)
/* 96314 80095714 244293C0 */  addiu      $v0, $v0, %lo(D_800E93C0)
/* 96318 80095718 94450000 */  lhu        $a1, ($v0)
/* 9631C 8009571C 97A40032 */  lhu        $a0, 0x32($sp)
/* 96320 80095720 00055100 */  sll        $t2, $a1, 4
/* 96324 80095724 0C023D26 */  jal        func_8008F498
/* 96328 80095728 3145FFFF */   andi      $a1, $t2, 0xffff
/* 9632C 8009572C 8FA3001C */  lw         $v1, 0x1c($sp)
/* 96330 80095730 8FA60018 */  lw         $a2, 0x18($sp)
/* 96334 80095734 946200D0 */  lhu        $v0, 0xd0($v1)
/* 96338 80095738 24010111 */  addiu      $at, $zero, 0x111
/* 9633C 8009573C 1040000B */  beqz       $v0, .L8009576C
/* 96340 80095740 240C0110 */   addiu     $t4, $zero, 0x110
/* 96344 80095744 1041000B */  beq        $v0, $at, .L80095774
/* 96348 80095748 3C0D800C */   lui       $t5, 0x800c
/* 9634C 8009574C 24010131 */  addiu      $at, $zero, 0x131
/* 96350 80095750 1041003D */  beq        $v0, $at, .L80095848
/* 96354 80095754 3C0A800C */   lui       $t2, 0x800c
/* 96358 80095758 24010141 */  addiu      $at, $zero, 0x141
/* 9635C 8009575C 10410057 */  beq        $v0, $at, .L800958BC
/* 96360 80095760 3C09800C */   lui       $t1, 0x800c
/* 96364 80095764 1000006D */  b          .L8009591C
/* 96368 80095768 8FBF0014 */   lw        $ra, 0x14($sp)
.L8009576C:
/* 9636C 8009576C 1000006A */  b          .L80095918
/* 96370 80095770 A46C00D0 */   sh        $t4, 0xd0($v1)
.L80095774:
/* 96374 80095774 3C02800C */  lui        $v0, %hi(D_800BE4FC)
/* 96378 80095778 9442E4FC */  lhu        $v0, %lo(D_800BE4FC)($v0)
/* 9637C 8009577C 95ADE514 */  lhu        $t5, -0x1aec($t5)
/* 96380 80095780 3C08800C */  lui        $t0, 0x800c
/* 96384 80095784 004D7024 */  and        $t6, $v0, $t5
/* 96388 80095788 11C00007 */  beqz       $t6, .L800957A8
/* 9638C 8009578C 3C0C800C */   lui       $t4, 0x800c
/* 96390 80095790 240F0180 */  addiu      $t7, $zero, 0x180
/* 96394 80095794 A46F00D0 */  sh         $t7, 0xd0($v1)
/* 96398 80095798 3C180004 */  lui        $t8, 4
/* 9639C 8009579C 3C190008 */  lui        $t9, 8
/* 963A0 800957A0 ACD804B0 */  sw         $t8, 0x4b0($a2)
/* 963A4 800957A4 ACD90648 */  sw         $t9, 0x648($a2)
.L800957A8:
/* 963A8 800957A8 9508E518 */  lhu        $t0, -0x1ae8($t0)
/* 963AC 800957AC 240A0170 */  addiu      $t2, $zero, 0x170
/* 963B0 800957B0 00484824 */  and        $t1, $v0, $t0
/* 963B4 800957B4 11200006 */  beqz       $t1, .L800957D0
/* 963B8 800957B8 3C02800C */   lui       $v0, 0x800c
/* 963BC 800957BC A46A00D0 */  sh         $t2, 0xd0($v1)
/* 963C0 800957C0 3C0B0006 */  lui        $t3, 6
/* 963C4 800957C4 356B8000 */  ori        $t3, $t3, 0x8000
/* 963C8 800957C8 ACC004B0 */  sw         $zero, 0x4b0($a2)
/* 963CC 800957CC ACCB0648 */  sw         $t3, 0x648($a2)
.L800957D0:
/* 963D0 800957D0 9442E4F8 */  lhu        $v0, -0x1b08($v0)
/* 963D4 800957D4 958CE50C */  lhu        $t4, -0x1af4($t4)
/* 963D8 800957D8 3C0D800C */  lui        $t5, %hi(D_800BE510)
/* 963DC 800957DC 004C2824 */  and        $a1, $v0, $t4
/* 963E0 800957E0 14A00006 */  bnez       $a1, .L800957FC
/* 963E4 800957E4 00000000 */   nop
/* 963E8 800957E8 95ADE510 */  lhu        $t5, %lo(D_800BE510)($t5)
/* 963EC 800957EC 00000000 */  nop
/* 963F0 800957F0 004D7024 */  and        $t6, $v0, $t5
/* 963F4 800957F4 11C00049 */  beqz       $t6, .L8009591C
/* 963F8 800957F8 8FBF0014 */   lw        $ra, 0x14($sp)
.L800957FC:
/* 963FC 800957FC 8C640080 */  lw         $a0, 0x80($v1)
/* 96400 80095800 3C18800C */  lui        $t8, %hi(D_800BE510)
/* 96404 80095804 308F0020 */  andi       $t7, $a0, 0x20
/* 96408 80095808 11E00006 */  beqz       $t7, .L80095824
/* 9640C 8009580C 01E02025 */   or        $a0, $t7, $zero
/* 96410 80095810 9718E510 */  lhu        $t8, %lo(D_800BE510)($t8)
/* 96414 80095814 00000000 */  nop
/* 96418 80095818 0058C824 */  and        $t9, $v0, $t8
/* 9641C 8009581C 17200005 */  bnez       $t9, .L80095834
/* 96420 80095820 24080120 */   addiu     $t0, $zero, 0x120
.L80095824:
/* 96424 80095824 14800005 */  bnez       $a0, .L8009583C
/* 96428 80095828 24090140 */   addiu     $t1, $zero, 0x140
/* 9642C 8009582C 10A00003 */  beqz       $a1, .L8009583C
/* 96430 80095830 24080120 */   addiu     $t0, $zero, 0x120
.L80095834:
/* 96434 80095834 10000038 */  b          .L80095918
/* 96438 80095838 A46800D0 */   sh        $t0, 0xd0($v1)
.L8009583C:
/* 9643C 8009583C A46900D0 */  sh         $t1, 0xd0($v1)
/* 96440 80095840 10000035 */  b          .L80095918
/* 96444 80095844 ACC00648 */   sw        $zero, 0x648($a2)
.L80095848:
/* 96448 80095848 3C02800C */  lui        $v0, %hi(D_800BE4F8)
/* 9644C 8009584C 9442E4F8 */  lhu        $v0, %lo(D_800BE4F8)($v0)
/* 96450 80095850 954AE50C */  lhu        $t2, -0x1af4($t2)
/* 96454 80095854 3C01BF80 */  lui        $at, 0xbf80
/* 96458 80095858 004A5824 */  and        $t3, $v0, $t2
/* 9645C 8009585C 11600007 */  beqz       $t3, .L8009587C
/* 96460 80095860 3C0E800C */   lui       $t6, 0x800c
/* 96464 80095864 8C6C0080 */  lw         $t4, 0x80($v1)
/* 96468 80095868 44812000 */  mtc1       $at, $f4
/* 9646C 8009586C 358D0020 */  ori        $t5, $t4, 0x20
/* 96470 80095870 AC6D0080 */  sw         $t5, 0x80($v1)
/* 96474 80095874 10000028 */  b          .L80095918
/* 96478 80095878 E4C402C8 */   swc1      $f4, 0x2c8($a2)
.L8009587C:
/* 9647C 8009587C 95CEE510 */  lhu        $t6, -0x1af0($t6)
/* 96480 80095880 00000000 */  nop
/* 96484 80095884 004E7824 */  and        $t7, $v0, $t6
/* 96488 80095888 11E0000A */  beqz       $t7, .L800958B4
/* 9648C 8009588C 24080110 */   addiu     $t0, $zero, 0x110
/* 96490 80095890 8C780080 */  lw         $t8, 0x80($v1)
/* 96494 80095894 2401FFDF */  addiu      $at, $zero, -0x21
/* 96498 80095898 0301C824 */  and        $t9, $t8, $at
/* 9649C 8009589C 3C013F80 */  lui        $at, 0x3f80
/* 964A0 800958A0 44813000 */  mtc1       $at, $f6
/* 964A4 800958A4 AC790080 */  sw         $t9, 0x80($v1)
/* 964A8 800958A8 1000001B */  b          .L80095918
/* 964AC 800958AC E4C602C8 */   swc1      $f6, 0x2c8($a2)
/* 964B0 800958B0 24080110 */  addiu      $t0, $zero, 0x110
.L800958B4:
/* 964B4 800958B4 10000018 */  b          .L80095918
/* 964B8 800958B8 A46800D0 */   sh        $t0, 0xd0($v1)
.L800958BC:
/* 964BC 800958BC 3C02800C */  lui        $v0, %hi(D_800BE4F8)
/* 964C0 800958C0 9442E4F8 */  lhu        $v0, %lo(D_800BE4F8)($v0)
/* 964C4 800958C4 9529E50C */  lhu        $t1, -0x1af4($t1)
/* 964C8 800958C8 3C0D800C */  lui        $t5, 0x800c
/* 964CC 800958CC 00495024 */  and        $t2, $v0, $t1
/* 964D0 800958D0 11400006 */  beqz       $t2, .L800958EC
/* 964D4 800958D4 00000000 */   nop
/* 964D8 800958D8 8C6B0080 */  lw         $t3, 0x80($v1)
/* 964DC 800958DC 00000000 */  nop
/* 964E0 800958E0 356C0020 */  ori        $t4, $t3, 0x20
/* 964E4 800958E4 1000000C */  b          .L80095918
/* 964E8 800958E8 AC6C0080 */   sw        $t4, 0x80($v1)
.L800958EC:
/* 964EC 800958EC 95ADE510 */  lhu        $t5, -0x1af0($t5)
/* 964F0 800958F0 24190110 */  addiu      $t9, $zero, 0x110
/* 964F4 800958F4 004D7024 */  and        $t6, $v0, $t5
/* 964F8 800958F8 11C00006 */  beqz       $t6, .L80095914
/* 964FC 800958FC 00000000 */   nop
/* 96500 80095900 8C6F0080 */  lw         $t7, 0x80($v1)
/* 96504 80095904 2401FFDF */  addiu      $at, $zero, -0x21
/* 96508 80095908 01E1C024 */  and        $t8, $t7, $at
/* 9650C 8009590C 10000002 */  b          .L80095918
/* 96510 80095910 AC780080 */   sw        $t8, 0x80($v1)
.L80095914:
/* 96514 80095914 A47900D0 */  sh         $t9, 0xd0($v1)
.L80095918:
/* 96518 80095918 8FBF0014 */  lw         $ra, 0x14($sp)
.L8009591C:
/* 9651C 8009591C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 96520 80095920 03E00008 */  jr         $ra
/* 96524 80095924 00000000 */   nop

glabel func_80095928
/* 96528 80095928 308EFFFF */  andi       $t6, $a0, 0xffff
/* 9652C 8009592C 000E7880 */  sll        $t7, $t6, 2
/* 96530 80095930 01EE7823 */  subu       $t7, $t7, $t6
/* 96534 80095934 000F7880 */  sll        $t7, $t7, 2
/* 96538 80095938 01EE7821 */  addu       $t7, $t7, $t6
/* 9653C 8009593C 000F7880 */  sll        $t7, $t7, 2
/* 96540 80095940 3C05800F */  lui        $a1, %hi(gActors)
/* 96544 80095944 01EE7823 */  subu       $t7, $t7, $t6
/* 96548 80095948 24A5F510 */  addiu      $a1, $a1, %lo(gActors)
/* 9654C 8009594C 000F78C0 */  sll        $t7, $t7, 3
/* 96550 80095950 00AF1821 */  addu       $v1, $a1, $t7
/* 96554 80095954 947800D0 */  lhu        $t8, 0xd0($v1)
/* 96558 80095958 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9655C 8009595C AFA40028 */  sw         $a0, 0x28($sp)
/* 96560 80095960 2B0100F6 */  slti       $at, $t8, 0xf6
/* 96564 80095964 01C02025 */  or         $a0, $t6, $zero
/* 96568 80095968 1420000C */  bnez       $at, .L8009599C
/* 9656C 8009596C AFBF0014 */   sw        $ra, 0x14($sp)
/* 96570 80095970 000EC880 */  sll        $t9, $t6, 2
/* 96574 80095974 032EC823 */  subu       $t9, $t9, $t6
/* 96578 80095978 0019C880 */  sll        $t9, $t9, 2
/* 9657C 8009597C 032EC821 */  addu       $t9, $t9, $t6
/* 96580 80095980 0019C880 */  sll        $t9, $t9, 2
/* 96584 80095984 032EC823 */  subu       $t9, $t9, $t6
/* 96588 80095988 946800D8 */  lhu        $t0, 0xd8($v1)
/* 9658C 8009598C 0019C8C0 */  sll        $t9, $t9, 3
/* 96590 80095990 00B91021 */  addu       $v0, $a1, $t9
/* 96594 80095994 1000000B */  b          .L800959C4
/* 96598 80095998 A4480270 */   sh        $t0, 0x270($v0)
.L8009599C:
/* 9659C 8009599C 00044880 */  sll        $t1, $a0, 2
/* 965A0 800959A0 01244823 */  subu       $t1, $t1, $a0
/* 965A4 800959A4 00094880 */  sll        $t1, $t1, 2
/* 965A8 800959A8 01244821 */  addu       $t1, $t1, $a0
/* 965AC 800959AC 00094880 */  sll        $t1, $t1, 2
/* 965B0 800959B0 01244823 */  subu       $t1, $t1, $a0
/* 965B4 800959B4 000948C0 */  sll        $t1, $t1, 3
/* 965B8 800959B8 00A91021 */  addu       $v0, $a1, $t1
/* 965BC 800959BC 240A0003 */  addiu      $t2, $zero, 3
/* 965C0 800959C0 A44A0270 */  sh         $t2, 0x270($v0)
.L800959C4:
/* 965C4 800959C4 AFA2001C */  sw         $v0, 0x1c($sp)
/* 965C8 800959C8 0C025317 */  jal        func_80094C5C
/* 965CC 800959CC AFA30020 */   sw        $v1, 0x20($sp)
/* 965D0 800959D0 8FA30020 */  lw         $v1, 0x20($sp)
/* 965D4 800959D4 8FA2001C */  lw         $v0, 0x1c($sp)
/* 965D8 800959D8 946B00D0 */  lhu        $t3, 0xd0($v1)
/* 965DC 800959DC 240C00E0 */  addiu      $t4, $zero, 0xe0
/* 965E0 800959E0 15600007 */  bnez       $t3, .L80095A00
/* 965E4 800959E4 3C01FFFC */   lui       $at, 0xfffc
/* 965E8 800959E8 8C6D0080 */  lw         $t5, 0x80($v1)
/* 965EC 800959EC 3421E07F */  ori        $at, $at, 0xe07f
/* 965F0 800959F0 01A17024 */  and        $t6, $t5, $at
/* 965F4 800959F4 A46C00D0 */  sh         $t4, 0xd0($v1)
/* 965F8 800959F8 AC6E0080 */  sw         $t6, 0x80($v1)
/* 965FC 800959FC A4400408 */  sh         $zero, 0x408($v0)
.L80095A00:
/* 96600 80095A00 8FBF0014 */  lw         $ra, 0x14($sp)
/* 96604 80095A04 27BD0028 */  addiu      $sp, $sp, 0x28
/* 96608 80095A08 03E00008 */  jr         $ra
/* 9660C 80095A0C 00000000 */   nop

glabel func_80095A10
/* 96610 80095A10 308EFFFF */  andi       $t6, $a0, 0xffff
/* 96614 80095A14 000E7880 */  sll        $t7, $t6, 2
/* 96618 80095A18 01EE7823 */  subu       $t7, $t7, $t6
/* 9661C 80095A1C 000F7880 */  sll        $t7, $t7, 2
/* 96620 80095A20 01EE7821 */  addu       $t7, $t7, $t6
/* 96624 80095A24 000F7880 */  sll        $t7, $t7, 2
/* 96628 80095A28 01EE7823 */  subu       $t7, $t7, $t6
/* 9662C 80095A2C 3C18800F */  lui        $t8, %hi(gActors)
/* 96630 80095A30 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 96634 80095A34 000F78C0 */  sll        $t7, $t7, 3
/* 96638 80095A38 01F81021 */  addu       $v0, $t7, $t8
/* 9663C 80095A3C C4440118 */  lwc1       $f4, 0x118($v0)
/* 96640 80095A40 C4460114 */  lwc1       $f6, 0x114($v0)
/* 96644 80095A44 3C0143B4 */  lui        $at, 0x43b4
/* 96648 80095A48 46062200 */  add.s      $f8, $f4, $f6
/* 9664C 80095A4C 44811000 */  mtc1       $at, $f2
/* 96650 80095A50 E4480118 */  swc1       $f8, 0x118($v0)
/* 96654 80095A54 C4400118 */  lwc1       $f0, 0x118($v0)
/* 96658 80095A58 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9665C 80095A5C 4600103C */  c.lt.s     $f2, $f0
/* 96660 80095A60 AFBF0014 */  sw         $ra, 0x14($sp)
/* 96664 80095A64 45000005 */  bc1f       .L80095A7C
/* 96668 80095A68 AFA40018 */   sw        $a0, 0x18($sp)
/* 9666C 80095A6C 46020281 */  sub.s      $f10, $f0, $f2
/* 96670 80095A70 24040116 */  addiu      $a0, $zero, 0x116
/* 96674 80095A74 0C000CE0 */  jal        func_80003380
/* 96678 80095A78 E44A0118 */   swc1      $f10, 0x118($v0)
.L80095A7C:
/* 9667C 80095A7C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 96680 80095A80 27BD0018 */  addiu      $sp, $sp, 0x18
/* 96684 80095A84 03E00008 */  jr         $ra
/* 96688 80095A88 00000000 */   nop

glabel func_80095A8C
/* 9668C 80095A8C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 96690 80095A90 24090198 */  addiu      $t1, $zero, 0x198
/* 96694 80095A94 01C90019 */  multu      $t6, $t1
/* 96698 80095A98 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9669C 80095A9C 3C08800F */  lui        $t0, %hi(gActors)
/* 966A0 80095AA0 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 966A4 80095AA4 AFB00020 */  sw         $s0, 0x20($sp)
/* 966A8 80095AA8 3C013F80 */  lui        $at, 0x3f80
/* 966AC 80095AAC 44813000 */  mtc1       $at, $f6
/* 966B0 80095AB0 AFA40030 */  sw         $a0, 0x30($sp)
/* 966B4 80095AB4 01C02025 */  or         $a0, $t6, $zero
/* 966B8 80095AB8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 966BC 80095ABC 24190109 */  addiu      $t9, $zero, 0x109
/* 966C0 80095AC0 240A000B */  addiu      $t2, $zero, 0xb
/* 966C4 80095AC4 00007812 */  mflo       $t7
/* 966C8 80095AC8 010F8021 */  addu       $s0, $t0, $t7
/* 966CC 80095ACC C604014C */  lwc1       $f4, 0x14c($s0)
/* 966D0 80095AD0 960300D0 */  lhu        $v1, 0xd0($s0)
/* 966D4 80095AD4 46062200 */  add.s      $f8, $f4, $f6
/* 966D8 80095AD8 00601025 */  or         $v0, $v1, $zero
/* 966DC 80095ADC 1060000F */  beqz       $v1, .L80095B1C
/* 966E0 80095AE0 E608014C */   swc1      $f8, 0x14c($s0)
/* 966E4 80095AE4 24010001 */  addiu      $at, $zero, 1
/* 966E8 80095AE8 1041012E */  beq        $v0, $at, .L80095FA4
/* 966EC 80095AEC 24010100 */   addiu     $at, $zero, 0x100
/* 966F0 80095AF0 10410030 */  beq        $v0, $at, .L80095BB4
/* 966F4 80095AF4 3C063CF5 */   lui       $a2, 0x3cf5
/* 966F8 80095AF8 24010101 */  addiu      $at, $zero, 0x101
/* 966FC 80095AFC 104100C9 */  beq        $v0, $at, .L80095E24
/* 96700 80095B00 24010110 */   addiu     $at, $zero, 0x110
/* 96704 80095B04 104100D1 */  beq        $v0, $at, .L80095E4C
/* 96708 80095B08 24010111 */   addiu     $at, $zero, 0x111
/* 9670C 80095B0C 10410122 */  beq        $v0, $at, .L80095F98
/* 96710 80095B10 00000000 */   nop
/* 96714 80095B14 10000124 */  b          .L80095FA8
/* 96718 80095B18 9202009C */   lbu       $v0, 0x9c($s0)
.L80095B1C:
/* 9671C 80095B1C 960200D8 */  lhu        $v0, 0xd8($s0)
/* 96720 80095B20 24780001 */  addiu      $t8, $v1, 1
/* 96724 80095B24 240B1098 */  addiu      $t3, $zero, 0x1098
/* 96728 80095B28 A61800D0 */  sh         $t8, 0xd0($s0)
/* 9672C 80095B2C A6190094 */  sh         $t9, 0x94($s0)
/* 96730 80095B30 AE0A0080 */  sw         $t2, 0x80($s0)
/* 96734 80095B34 10400009 */  beqz       $v0, .L80095B5C
/* 96738 80095B38 A60B0084 */   sh        $t3, 0x84($s0)
/* 9673C 80095B3C 24010001 */  addiu      $at, $zero, 1
/* 96740 80095B40 1041000B */  beq        $v0, $at, .L80095B70
/* 96744 80095B44 240C0100 */   addiu     $t4, $zero, 0x100
/* 96748 80095B48 24010002 */  addiu      $at, $zero, 2
/* 9674C 80095B4C 10410013 */  beq        $v0, $at, .L80095B9C
/* 96750 80095B50 24180110 */   addiu     $t8, $zero, 0x110
/* 96754 80095B54 10000114 */  b          .L80095FA8
/* 96758 80095B58 9202009C */   lbu       $v0, 0x9c($s0)
.L80095B5C:
/* 9675C 80095B5C 3C01800F */  lui        $at, %hi(D_800ED4C8)
/* 96760 80095B60 C42AD4C8 */  lwc1       $f10, %lo(D_800ED4C8)($at)
/* 96764 80095B64 A6000088 */  sh         $zero, 0x88($s0)
/* 96768 80095B68 1000010E */  b          .L80095FA4
/* 9676C 80095B6C E60A00B4 */   swc1      $f10, 0xb4($s0)
.L80095B70:
/* 96770 80095B70 3C014080 */  lui        $at, 0x4080
/* 96774 80095B74 44818000 */  mtc1       $at, $f16
/* 96778 80095B78 240D00C0 */  addiu      $t5, $zero, 0xc0
/* 9677C 80095B7C 240EFFD0 */  addiu      $t6, $zero, -0x30
/* 96780 80095B80 3C0F0002 */  lui        $t7, 2
/* 96784 80095B84 A60C00D0 */  sh         $t4, 0xd0($s0)
/* 96788 80095B88 A60D0090 */  sh         $t5, 0x90($s0)
/* 9678C 80095B8C A60E008C */  sh         $t6, 0x8c($s0)
/* 96790 80095B90 AE0F00F0 */  sw         $t7, 0xf0($s0)
/* 96794 80095B94 10000103 */  b          .L80095FA4
/* 96798 80095B98 E61000B4 */   swc1      $f16, 0xb4($s0)
.L80095B9C:
/* 9679C 80095B9C 8E190080 */  lw         $t9, 0x80($s0)
/* 967A0 80095BA0 2401FFFE */  addiu      $at, $zero, -2
/* 967A4 80095BA4 03215024 */  and        $t2, $t9, $at
/* 967A8 80095BA8 A61800D0 */  sh         $t8, 0xd0($s0)
/* 967AC 80095BAC 100000FD */  b          .L80095FA4
/* 967B0 80095BB0 AE0A0080 */   sw        $t2, 0x80($s0)
.L80095BB4:
/* 967B4 80095BB4 3C013FC0 */  lui        $at, 0x3fc0
/* 967B8 80095BB8 44817000 */  mtc1       $at, $f14
/* 967BC 80095BBC C60C00B4 */  lwc1       $f12, 0xb4($s0)
/* 967C0 80095BC0 A6000088 */  sh         $zero, 0x88($s0)
/* 967C4 80095BC4 34C6C28F */  ori        $a2, $a2, 0xc28f
/* 967C8 80095BC8 0C00A618 */  jal        func_80029860
/* 967CC 80095BCC A7A40032 */   sh        $a0, 0x32($sp)
/* 967D0 80095BD0 E60000B4 */  swc1       $f0, 0xb4($s0)
/* 967D4 80095BD4 3C01800F */  lui        $at, %hi(D_800ED4D0)
/* 967D8 80095BD8 C433D4D0 */  lwc1       $f19, %lo(D_800ED4D0)($at)
/* 967DC 80095BDC C432D4D4 */  lwc1       $f18, -0x2b2c($at)
/* 967E0 80095BE0 46000121 */  cvt.d.s    $f4, $f0
/* 967E4 80095BE4 4632203E */  c.le.d     $f4, $f18
/* 967E8 80095BE8 3C0141F0 */  lui        $at, 0x41f0
/* 967EC 80095BEC 45000016 */  bc1f       .L80095C48
/* 967F0 80095BF0 3C063DCC */   lui       $a2, 0x3dcc
/* 967F4 80095BF4 C60C0114 */  lwc1       $f12, 0x114($s0)
/* 967F8 80095BF8 C60600C4 */  lwc1       $f6, 0xc4($s0)
/* 967FC 80095BFC 44817000 */  mtc1       $at, $f14
/* 96800 80095C00 460C3200 */  add.s      $f8, $f6, $f12
/* 96804 80095C04 34C6CCCD */  ori        $a2, $a2, 0xcccd
/* 96808 80095C08 0C00A618 */  jal        func_80029860
/* 9680C 80095C0C E60800C4 */   swc1      $f8, 0xc4($s0)
/* 96810 80095C10 97A40032 */  lhu        $a0, 0x32($sp)
/* 96814 80095C14 0C025684 */  jal        func_80095A10
/* 96818 80095C18 E6000114 */   swc1      $f0, 0x114($s0)
/* 9681C 80095C1C 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 96820 80095C20 00002825 */  or         $a1, $zero, $zero
/* 96824 80095C24 0C00A607 */  jal        func_8002981C
/* 96828 80095C28 24064000 */   addiu     $a2, $zero, 0x4000
/* 9682C 80095C2C 9204009C */  lbu        $a0, 0x9c($s0)
/* 96830 80095C30 AE0200F0 */  sw         $v0, 0xf0($s0)
/* 96834 80095C34 2405007F */  addiu      $a1, $zero, 0x7f
/* 96838 80095C38 0C00A607 */  jal        func_8002981C
/* 9683C 80095C3C 24060001 */   addiu     $a2, $zero, 1
/* 96840 80095C40 10000007 */  b          .L80095C60
/* 96844 80095C44 A202009C */   sb        $v0, 0x9c($s0)
.L80095C48:
/* 96848 80095C48 860B0090 */  lh         $t3, 0x90($s0)
/* 9684C 80095C4C 8E0D00F0 */  lw         $t5, 0xf0($s0)
/* 96850 80095C50 256CFFFF */  addiu      $t4, $t3, -1
/* 96854 80095C54 25AEF800 */  addiu      $t6, $t5, -0x800
/* 96858 80095C58 A60C0090 */  sh         $t4, 0x90($s0)
/* 9685C 80095C5C AE0E00F0 */  sw         $t6, 0xf0($s0)
.L80095C60:
/* 96860 80095C60 3C0F800C */  lui        $t7, %hi(D_800BE4E0)
/* 96864 80095C64 95EFE4E0 */  lhu        $t7, %lo(D_800BE4E0)($t7)
/* 96868 80095C68 3C014970 */  lui        $at, 0x4970
/* 9686C 80095C6C 31F80007 */  andi       $t8, $t7, 7
/* 96870 80095C70 170000CC */  bnez       $t8, .L80095FA4
/* 96874 80095C74 00000000 */   nop
/* 96878 80095C78 44811000 */  mtc1       $at, $f2
/* 9687C 80095C7C 3C014780 */  lui        $at, 0x4780
/* 96880 80095C80 44816000 */  mtc1       $at, $f12
/* 96884 80095C84 3C01800F */  lui        $at, %hi(D_800ED4D8)
/* 96888 80095C88 C60A00C4 */  lwc1       $f10, 0xc4($s0)
/* 9688C 80095C8C C433D4D8 */  lwc1       $f19, %lo(D_800ED4D8)($at)
/* 96890 80095C90 C432D4DC */  lwc1       $f18, -0x2b24($at)
/* 96894 80095C94 46005421 */  cvt.d.s    $f16, $f10
/* 96898 80095C98 00000000 */  nop
/* 9689C 80095C9C 46328103 */  div.d      $f4, $f16, $f18
/* 968A0 80095CA0 3C014380 */  lui        $at, 0x4380
/* 968A4 80095CA4 44814000 */  mtc1       $at, $f8
/* 968A8 80095CA8 24020001 */  addiu      $v0, $zero, 1
/* 968AC 80095CAC 3C03800C */  lui        $v1, %hi(D_800BCCD0)
/* 968B0 80095CB0 2463CCD0 */  addiu      $v1, $v1, %lo(D_800BCCD0)
/* 968B4 80095CB4 3C014F00 */  lui        $at, 0x4f00
/* 968B8 80095CB8 462021A0 */  cvt.s.d    $f6, $f4
/* 968BC 80095CBC 46083280 */  add.s      $f10, $f6, $f8
/* 968C0 80095CC0 4459F800 */  cfc1       $t9, $31
/* 968C4 80095CC4 44C2F800 */  ctc1       $v0, $31
/* 968C8 80095CC8 00000000 */  nop
/* 968CC 80095CCC 46005424 */  cvt.w.s    $f16, $f10
/* 968D0 80095CD0 4442F800 */  cfc1       $v0, $31
/* 968D4 80095CD4 00000000 */  nop
/* 968D8 80095CD8 30420078 */  andi       $v0, $v0, 0x78
/* 968DC 80095CDC 10400012 */  beqz       $v0, .L80095D28
/* 968E0 80095CE0 00000000 */   nop
/* 968E4 80095CE4 44818000 */  mtc1       $at, $f16
/* 968E8 80095CE8 24020001 */  addiu      $v0, $zero, 1
/* 968EC 80095CEC 46105401 */  sub.s      $f16, $f10, $f16
/* 968F0 80095CF0 3C018000 */  lui        $at, 0x8000
/* 968F4 80095CF4 44C2F800 */  ctc1       $v0, $31
/* 968F8 80095CF8 00000000 */  nop
/* 968FC 80095CFC 46008424 */  cvt.w.s    $f16, $f16
/* 96900 80095D00 4442F800 */  cfc1       $v0, $31
/* 96904 80095D04 00000000 */  nop
/* 96908 80095D08 30420078 */  andi       $v0, $v0, 0x78
/* 9690C 80095D0C 14400004 */  bnez       $v0, .L80095D20
/* 96910 80095D10 00000000 */   nop
/* 96914 80095D14 44028000 */  mfc1       $v0, $f16
/* 96918 80095D18 10000007 */  b          .L80095D38
/* 9691C 80095D1C 00411025 */   or        $v0, $v0, $at
.L80095D20:
/* 96920 80095D20 10000005 */  b          .L80095D38
/* 96924 80095D24 2402FFFF */   addiu     $v0, $zero, -1
.L80095D28:
/* 96928 80095D28 44028000 */  mfc1       $v0, $f16
/* 9692C 80095D2C 00000000 */  nop
/* 96930 80095D30 0440FFFB */  bltz       $v0, .L80095D20
/* 96934 80095D34 00000000 */   nop
.L80095D38:
/* 96938 80095D38 44D9F800 */  ctc1       $t9, $31
/* 9693C 80095D3C C60000B4 */  lwc1       $f0, 0xb4($s0)
/* 96940 80095D40 3C013FE0 */  lui        $at, 0x3fe0
/* 96944 80095D44 44812800 */  mtc1       $at, $f5
/* 96948 80095D48 44802000 */  mtc1       $zero, $f4
/* 9694C 80095D4C 304C03FF */  andi       $t4, $v0, 0x3ff
/* 96950 80095D50 000C6880 */  sll        $t5, $t4, 2
/* 96954 80095D54 460004A1 */  cvt.d.s    $f18, $f0
/* 96958 80095D58 46249182 */  mul.d      $f6, $f18, $f4
/* 9695C 80095D5C 006D7021 */  addu       $t6, $v1, $t5
/* 96960 80095D60 C5CA0000 */  lwc1       $f10, ($t6)
/* 96964 80095D64 860F0088 */  lh         $t7, 0x88($s0)
/* 96968 80095D68 244BFF00 */  addiu      $t3, $v0, -0x100
/* 9696C 80095D6C 460A0402 */  mul.s      $f16, $f0, $f10
/* 96970 80095D70 46203220 */  cvt.s.d    $f8, $f6
/* 96974 80095D74 448F3000 */  mtc1       $t7, $f6
/* 96978 80095D78 44064000 */  mfc1       $a2, $f8
/* 9697C 80095D7C 46028482 */  mul.s      $f18, $f16, $f2
/* 96980 80095D80 316C03FF */  andi       $t4, $t3, 0x3ff
/* 96984 80095D84 000C6880 */  sll        $t5, $t4, 2
/* 96988 80095D88 006D7021 */  addu       $t6, $v1, $t5
/* 9698C 80095D8C 460C9103 */  div.s      $f4, $f18, $f12
/* 96990 80095D90 46803220 */  cvt.s.w    $f8, $f6
/* 96994 80095D94 C5D20000 */  lwc1       $f18, ($t6)
/* 96998 80095D98 860F008C */  lh         $t7, 0x8c($s0)
/* 9699C 80095D9C 860A0090 */  lh         $t2, 0x90($s0)
/* 969A0 80095DA0 97A40032 */  lhu        $a0, 0x32($sp)
/* 969A4 80095DA4 254B0010 */  addiu      $t3, $t2, 0x10
/* 969A8 80095DA8 AFAB0014 */  sw         $t3, 0x14($sp)
/* 969AC 80095DAC 00002825 */  or         $a1, $zero, $zero
/* 969B0 80095DB0 46082280 */  add.s      $f10, $f4, $f8
/* 969B4 80095DB4 4458F800 */  cfc1       $t8, $31
/* 969B8 80095DB8 00000000 */  nop
/* 969BC 80095DBC 37010003 */  ori        $at, $t8, 3
/* 969C0 80095DC0 38210002 */  xori       $at, $at, 2
/* 969C4 80095DC4 44C1F800 */  ctc1       $at, $31
/* 969C8 80095DC8 37010003 */  ori        $at, $t8, 3
/* 969CC 80095DCC 46005424 */  cvt.w.s    $f16, $f10
/* 969D0 80095DD0 448F5000 */  mtc1       $t7, $f10
/* 969D4 80095DD4 44D8F800 */  ctc1       $t8, $31
/* 969D8 80095DD8 44078000 */  mfc1       $a3, $f16
/* 969DC 80095DDC 46120182 */  mul.s      $f6, $f0, $f18
/* 969E0 80095DE0 38210002 */  xori       $at, $at, 2
/* 969E4 80095DE4 0007CC00 */  sll        $t9, $a3, 0x10
/* 969E8 80095DE8 00193C03 */  sra        $a3, $t9, 0x10
/* 969EC 80095DEC 46023102 */  mul.s      $f4, $f6, $f2
/* 969F0 80095DF0 00000000 */  nop
/* 969F4 80095DF4 460C2203 */  div.s      $f8, $f4, $f12
/* 969F8 80095DF8 46805420 */  cvt.s.w    $f16, $f10
/* 969FC 80095DFC 46104480 */  add.s      $f18, $f8, $f16
/* 96A00 80095E00 44C1F800 */  ctc1       $at, $31
/* 96A04 80095E04 00000000 */  nop
/* 96A08 80095E08 460091A4 */  cvt.w.s    $f6, $f18
/* 96A0C 80095E0C 44193000 */  mfc1       $t9, $f6
/* 96A10 80095E10 44D8F800 */  ctc1       $t8, $31
/* 96A14 80095E14 0C00FEC8 */  jal        func_8003FB20
/* 96A18 80095E18 AFB90010 */   sw        $t9, 0x10($sp)
/* 96A1C 80095E1C 10000062 */  b          .L80095FA8
/* 96A20 80095E20 9202009C */   lbu       $v0, 0x9c($s0)
.L80095E24:
/* 96A24 80095E24 C60400C4 */  lwc1       $f4, 0xc4($s0)
/* 96A28 80095E28 C60A0114 */  lwc1       $f10, 0x114($s0)
/* 96A2C 80095E2C 8E0C00F0 */  lw         $t4, 0xf0($s0)
/* 96A30 80095E30 460A2200 */  add.s      $f8, $f4, $f10
/* 96A34 80095E34 258D2000 */  addiu      $t5, $t4, 0x2000
/* 96A38 80095E38 E60800C4 */  swc1       $f8, 0xc4($s0)
/* 96A3C 80095E3C 0C025684 */  jal        func_80095A10
/* 96A40 80095E40 AE0D00F0 */   sw        $t5, 0xf0($s0)
/* 96A44 80095E44 10000058 */  b          .L80095FA8
/* 96A48 80095E48 9202009C */   lbu       $v0, 0x9c($s0)
.L80095E4C:
/* 96A4C 80095E4C 4458F800 */  cfc1       $t8, $31
/* 96A50 80095E50 24020001 */  addiu      $v0, $zero, 1
/* 96A54 80095E54 44C2F800 */  ctc1       $v0, $31
/* 96A58 80095E58 C6100110 */  lwc1       $f16, 0x110($s0)
/* 96A5C 80095E5C 8E0E0080 */  lw         $t6, 0x80($s0)
/* 96A60 80095E60 460084A4 */  cvt.w.s    $f18, $f16
/* 96A64 80095E64 35CF0001 */  ori        $t7, $t6, 1
/* 96A68 80095E68 4442F800 */  cfc1       $v0, $31
/* 96A6C 80095E6C AE0F0080 */  sw         $t7, 0x80($s0)
/* 96A70 80095E70 30420078 */  andi       $v0, $v0, 0x78
/* 96A74 80095E74 10400012 */  beqz       $v0, .L80095EC0
/* 96A78 80095E78 3C014F00 */   lui       $at, 0x4f00
/* 96A7C 80095E7C 44819000 */  mtc1       $at, $f18
/* 96A80 80095E80 24020001 */  addiu      $v0, $zero, 1
/* 96A84 80095E84 46128481 */  sub.s      $f18, $f16, $f18
/* 96A88 80095E88 3C018000 */  lui        $at, 0x8000
/* 96A8C 80095E8C 44C2F800 */  ctc1       $v0, $31
/* 96A90 80095E90 00000000 */  nop
/* 96A94 80095E94 460094A4 */  cvt.w.s    $f18, $f18
/* 96A98 80095E98 4442F800 */  cfc1       $v0, $31
/* 96A9C 80095E9C 00000000 */  nop
/* 96AA0 80095EA0 30420078 */  andi       $v0, $v0, 0x78
/* 96AA4 80095EA4 14400004 */  bnez       $v0, .L80095EB8
/* 96AA8 80095EA8 00000000 */   nop
/* 96AAC 80095EAC 44029000 */  mfc1       $v0, $f18
/* 96AB0 80095EB0 10000007 */  b          .L80095ED0
/* 96AB4 80095EB4 00411025 */   or        $v0, $v0, $at
.L80095EB8:
/* 96AB8 80095EB8 10000005 */  b          .L80095ED0
/* 96ABC 80095EBC 2402FFFF */   addiu     $v0, $zero, -1
.L80095EC0:
/* 96AC0 80095EC0 44029000 */  mfc1       $v0, $f18
/* 96AC4 80095EC4 00000000 */  nop
/* 96AC8 80095EC8 0440FFFB */  bltz       $v0, .L80095EB8
/* 96ACC 80095ECC 00000000 */   nop
.L80095ED0:
/* 96AD0 80095ED0 3059FFFF */  andi       $t9, $v0, 0xffff
/* 96AD4 80095ED4 03290019 */  multu      $t9, $t1
/* 96AD8 80095ED8 24012710 */  addiu      $at, $zero, 0x2710
/* 96ADC 80095EDC 44D8F800 */  ctc1       $t8, $31
/* 96AE0 80095EE0 44808000 */  mtc1       $zero, $f16
/* 96AE4 80095EE4 2725000B */  addiu      $a1, $t9, 0xb
/* 96AE8 80095EE8 30AAFFFF */  andi       $t2, $a1, 0xffff
/* 96AEC 80095EEC 01402825 */  or         $a1, $t2, $zero
/* 96AF0 80095EF0 00003025 */  or         $a2, $zero, $zero
/* 96AF4 80095EF4 00005812 */  mflo       $t3
/* 96AF8 80095EF8 010B6021 */  addu       $t4, $t0, $t3
/* 96AFC 80095EFC 8D8D0168 */  lw         $t5, 0x168($t4)
/* 96B00 80095F00 A7AA002E */  sh         $t2, 0x2e($sp)
/* 96B04 80095F04 01A1001A */  div        $zero, $t5, $at
/* 96B08 80095F08 3C013FE8 */  lui        $at, 0x3fe8
/* 96B0C 80095F0C 44818800 */  mtc1       $at, $f17
/* 96B10 80095F10 3C014080 */  lui        $at, 0x4080
/* 96B14 80095F14 00007012 */  mflo       $t6
/* 96B18 80095F18 448E3000 */  mtc1       $t6, $f6
/* 96B1C 80095F1C 00000000 */  nop
/* 96B20 80095F20 46803120 */  cvt.s.w    $f4, $f6
/* 96B24 80095F24 E60400B4 */  swc1       $f4, 0xb4($s0)
/* 96B28 80095F28 C60A00B4 */  lwc1       $f10, 0xb4($s0)
/* 96B2C 80095F2C 00000000 */  nop
/* 96B30 80095F30 46005221 */  cvt.d.s    $f8, $f10
/* 96B34 80095F34 46304482 */  mul.d      $f18, $f8, $f16
/* 96B38 80095F38 44815000 */  mtc1       $at, $f10
/* 96B3C 80095F3C 462091A0 */  cvt.s.d    $f6, $f18
/* 96B40 80095F40 E60600B4 */  swc1       $f6, 0xb4($s0)
/* 96B44 80095F44 C60400B4 */  lwc1       $f4, 0xb4($s0)
/* 96B48 80095F48 00000000 */  nop
/* 96B4C 80095F4C 460A2202 */  mul.s      $f8, $f4, $f10
/* 96B50 80095F50 44074000 */  mfc1       $a3, $f8
/* 96B54 80095F54 0C00CC29 */  jal        func_800330A4
/* 96B58 80095F58 00000000 */   nop
/* 96B5C 80095F5C 97A5002E */  lhu        $a1, 0x2e($sp)
/* 96B60 80095F60 3C18800F */  lui        $t8, 0x800f
/* 96B64 80095F64 00057880 */  sll        $t7, $a1, 2
/* 96B68 80095F68 01E57823 */  subu       $t7, $t7, $a1
/* 96B6C 80095F6C 000F7880 */  sll        $t7, $t7, 2
/* 96B70 80095F70 01E57821 */  addu       $t7, $t7, $a1
/* 96B74 80095F74 000F7880 */  sll        $t7, $t7, 2
/* 96B78 80095F78 01E57823 */  subu       $t7, $t7, $a1
/* 96B7C 80095F7C 000F78C0 */  sll        $t7, $t7, 3
/* 96B80 80095F80 030FC021 */  addu       $t8, $t8, $t7
/* 96B84 80095F84 8718F5A0 */  lh         $t8, -0xa60($t8)
/* 96B88 80095F88 00000000 */  nop
/* 96B8C 80095F8C 2719FFFF */  addiu      $t9, $t8, -1
/* 96B90 80095F90 10000004 */  b          .L80095FA4
/* 96B94 80095F94 A6190090 */   sh        $t9, 0x90($s0)
.L80095F98:
/* 96B98 80095F98 44808000 */  mtc1       $zero, $f16
/* 96B9C 80095F9C 00000000 */  nop
/* 96BA0 80095FA0 E61000C4 */  swc1       $f16, 0xc4($s0)
.L80095FA4:
/* 96BA4 80095FA4 9202009C */  lbu        $v0, 0x9c($s0)
.L80095FA8:
/* 96BA8 80095FA8 C61200B4 */  lwc1       $f18, 0xb4($s0)
/* 96BAC 80095FAC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 96BB0 80095FB0 A202009D */  sb         $v0, 0x9d($s0)
/* 96BB4 80095FB4 A202009E */  sb         $v0, 0x9e($s0)
/* 96BB8 80095FB8 E61200B8 */  swc1       $f18, 0xb8($s0)
/* 96BBC 80095FBC 8FB00020 */  lw         $s0, 0x20($sp)
/* 96BC0 80095FC0 03E00008 */  jr         $ra
/* 96BC4 80095FC4 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80095FC8
/* 96BC8 80095FC8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 96BCC 80095FCC 000E7880 */  sll        $t7, $t6, 2
/* 96BD0 80095FD0 01EE7823 */  subu       $t7, $t7, $t6
/* 96BD4 80095FD4 000F7880 */  sll        $t7, $t7, 2
/* 96BD8 80095FD8 01EE7821 */  addu       $t7, $t7, $t6
/* 96BDC 80095FDC 000F7880 */  sll        $t7, $t7, 2
/* 96BE0 80095FE0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 96BE4 80095FE4 01EE7823 */  subu       $t7, $t7, $t6
/* 96BE8 80095FE8 3C18800F */  lui        $t8, %hi(gActors)
/* 96BEC 80095FEC 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 96BF0 80095FF0 000F78C0 */  sll        $t7, $t7, 3
/* 96BF4 80095FF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 96BF8 80095FF8 AFA40020 */  sw         $a0, 0x20($sp)
/* 96BFC 80095FFC 01F81021 */  addu       $v0, $t7, $t8
/* 96C00 80096000 24190001 */  addiu      $t9, $zero, 1
/* 96C04 80096004 3C05800F */  lui        $a1, %hi(D_800E9414)
/* 96C08 80096008 3C06800F */  lui        $a2, %hi(D_800E93C4)
/* 96C0C 8009600C 01C02025 */  or         $a0, $t6, $zero
/* 96C10 80096010 A4590094 */  sh         $t9, 0x94($v0)
/* 96C14 80096014 24C693C4 */  addiu      $a2, $a2, %lo(D_800E93C4)
/* 96C18 80096018 24A59414 */  addiu      $a1, $a1, %lo(D_800E9414)
/* 96C1C 8009601C AFA2001C */  sw         $v0, 0x1c($sp)
/* 96C20 80096020 0C020417 */  jal        func_8008105C
/* 96C24 80096024 A7AE0022 */   sh        $t6, 0x22($sp)
/* 96C28 80096028 8FA2001C */  lw         $v0, 0x1c($sp)
/* 96C2C 8009602C 3C08800F */  lui        $t0, %hi(D_800E961C)
/* 96C30 80096030 97A40022 */  lhu        $a0, 0x22($sp)
/* 96C34 80096034 2508961C */  addiu      $t0, $t0, %lo(D_800E961C)
/* 96C38 80096038 3C05800F */  lui        $a1, %hi(D_800E95E8)
/* 96C3C 8009603C 24A595E8 */  addiu      $a1, $a1, %lo(D_800E95E8)
/* 96C40 80096040 0C0205E4 */  jal        func_80081790
/* 96C44 80096044 AC480178 */   sw        $t0, 0x178($v0)
/* 96C48 80096048 8FBF0014 */  lw         $ra, 0x14($sp)
/* 96C4C 8009604C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 96C50 80096050 03E00008 */  jr         $ra
/* 96C54 80096054 00000000 */   nop

glabel func_80096058
/* 96C58 80096058 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 96C5C 8009605C AFB00018 */  sw         $s0, 0x18($sp)
/* 96C60 80096060 3090FFFF */  andi       $s0, $a0, 0xffff
/* 96C64 80096064 AFBF001C */  sw         $ra, 0x1c($sp)
/* 96C68 80096068 AFA40020 */  sw         $a0, 0x20($sp)
/* 96C6C 8009606C 3C05800F */  lui        $a1, %hi(D_800E9414)
/* 96C70 80096070 24A59414 */  addiu      $a1, $a1, %lo(D_800E9414)
/* 96C74 80096074 0C02066A */  jal        func_800819A8
/* 96C78 80096078 3204FFFF */   andi      $a0, $s0, 0xffff
/* 96C7C 8009607C 3204FFFF */  andi       $a0, $s0, 0xffff
/* 96C80 80096080 24050003 */  addiu      $a1, $zero, 3
/* 96C84 80096084 0C0205F6 */  jal        func_800817D8
/* 96C88 80096088 24060004 */   addiu     $a2, $zero, 4
/* 96C8C 8009608C 3204FFFF */  andi       $a0, $s0, 0xffff
/* 96C90 80096090 24050005 */  addiu      $a1, $zero, 5
/* 96C94 80096094 0C0205F6 */  jal        func_800817D8
/* 96C98 80096098 24060004 */   addiu     $a2, $zero, 4
/* 96C9C 8009609C 3204FFFF */  andi       $a0, $s0, 0xffff
/* 96CA0 800960A0 24050009 */  addiu      $a1, $zero, 9
/* 96CA4 800960A4 0C0205F6 */  jal        func_800817D8
/* 96CA8 800960A8 24060004 */   addiu     $a2, $zero, 4
/* 96CAC 800960AC 3204FFFF */  andi       $a0, $s0, 0xffff
/* 96CB0 800960B0 2405000B */  addiu      $a1, $zero, 0xb
/* 96CB4 800960B4 0C0205F6 */  jal        func_800817D8
/* 96CB8 800960B8 24060004 */   addiu     $a2, $zero, 4
/* 96CBC 800960BC 00107080 */  sll        $t6, $s0, 2
/* 96CC0 800960C0 01D07023 */  subu       $t6, $t6, $s0
/* 96CC4 800960C4 000E7080 */  sll        $t6, $t6, 2
/* 96CC8 800960C8 01D07021 */  addu       $t6, $t6, $s0
/* 96CCC 800960CC 3C013F00 */  lui        $at, 0x3f00
/* 96CD0 800960D0 000E7080 */  sll        $t6, $t6, 2
/* 96CD4 800960D4 44810000 */  mtc1       $at, $f0
/* 96CD8 800960D8 01D07023 */  subu       $t6, $t6, $s0
/* 96CDC 800960DC 3C0F800F */  lui        $t7, %hi(gActors)
/* 96CE0 800960E0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 96CE4 800960E4 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 96CE8 800960E8 000E70C0 */  sll        $t6, $t6, 3
/* 96CEC 800960EC 01CF1021 */  addu       $v0, $t6, $t7
/* 96CF0 800960F0 8FB00018 */  lw         $s0, 0x18($sp)
/* 96CF4 800960F4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 96CF8 800960F8 E4400BE0 */  swc1       $f0, 0xbe0($v0)
/* 96CFC 800960FC 03E00008 */  jr         $ra
/* 96D00 80096100 E4401570 */   swc1      $f0, 0x1570($v0)

glabel func_80096104
/* 96D04 80096104 308EFFFF */  andi       $t6, $a0, 0xffff
/* 96D08 80096108 000E7880 */  sll        $t7, $t6, 2
/* 96D0C 8009610C 01EE7823 */  subu       $t7, $t7, $t6
/* 96D10 80096110 000F7880 */  sll        $t7, $t7, 2
/* 96D14 80096114 01EE7821 */  addu       $t7, $t7, $t6
/* 96D18 80096118 000F7880 */  sll        $t7, $t7, 2
/* 96D1C 8009611C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 96D20 80096120 01EE7823 */  subu       $t7, $t7, $t6
/* 96D24 80096124 3C18800F */  lui        $t8, %hi(gActors)
/* 96D28 80096128 AFB00018 */  sw         $s0, 0x18($sp)
/* 96D2C 8009612C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 96D30 80096130 000F78C0 */  sll        $t7, $t7, 3
/* 96D34 80096134 01F88021 */  addu       $s0, $t7, $t8
/* 96D38 80096138 960200D0 */  lhu        $v0, 0xd0($s0)
/* 96D3C 8009613C AFA40020 */  sw         $a0, 0x20($sp)
/* 96D40 80096140 01C02025 */  or         $a0, $t6, $zero
/* 96D44 80096144 1040000A */  beqz       $v0, .L80096170
/* 96D48 80096148 AFBF001C */   sw        $ra, 0x1c($sp)
/* 96D4C 8009614C 24010001 */  addiu      $at, $zero, 1
/* 96D50 80096150 10410017 */  beq        $v0, $at, .L800961B0
/* 96D54 80096154 24010080 */   addiu     $at, $zero, 0x80
/* 96D58 80096158 1041003A */  beq        $v0, $at, .L80096244
/* 96D5C 8009615C 24010100 */   addiu     $at, $zero, 0x100
/* 96D60 80096160 1041004A */  beq        $v0, $at, .L8009628C
/* 96D64 80096164 00000000 */   nop
/* 96D68 80096168 10000052 */  b          .L800962B4
/* 96D6C 8009616C 8FBF001C */   lw        $ra, 0x1c($sp)
.L80096170:
/* 96D70 80096170 0C0257F2 */  jal        func_80095FC8
/* 96D74 80096174 A7A40022 */   sh        $a0, 0x22($sp)
/* 96D78 80096178 8E080080 */  lw         $t0, 0x80($s0)
/* 96D7C 8009617C 24020010 */  addiu      $v0, $zero, 0x10
/* 96D80 80096180 2403FFF0 */  addiu      $v1, $zero, -0x10
/* 96D84 80096184 24190001 */  addiu      $t9, $zero, 1
/* 96D88 80096188 240A0064 */  addiu      $t2, $zero, 0x64
/* 96D8C 8009618C 35091400 */  ori        $t1, $t0, 0x1400
/* 96D90 80096190 97A40022 */  lhu        $a0, 0x22($sp)
/* 96D94 80096194 A61900D0 */  sh         $t9, 0xd0($s0)
/* 96D98 80096198 AE090080 */  sw         $t1, 0x80($s0)
/* 96D9C 8009619C A60A00E0 */  sh         $t2, 0xe0($s0)
/* 96DA0 800961A0 A60200AE */  sh         $v0, 0xae($s0)
/* 96DA4 800961A4 A60300B0 */  sh         $v1, 0xb0($s0)
/* 96DA8 800961A8 A60300AA */  sh         $v1, 0xaa($s0)
/* 96DAC 800961AC A60200AC */  sh         $v0, 0xac($s0)
.L800961B0:
/* 96DB0 800961B0 0C025816 */  jal        func_80096058
/* 96DB4 800961B4 A7A40022 */   sh        $a0, 0x22($sp)
/* 96DB8 800961B8 8E020098 */  lw         $v0, 0x98($s0)
/* 96DBC 800961BC 97A40022 */  lhu        $a0, 0x22($sp)
/* 96DC0 800961C0 304B0200 */  andi       $t3, $v0, 0x200
/* 96DC4 800961C4 11600006 */  beqz       $t3, .L800961E0
/* 96DC8 800961C8 304E0002 */   andi      $t6, $v0, 2
/* 96DCC 800961CC 240C0080 */  addiu      $t4, $zero, 0x80
/* 96DD0 800961D0 240D0003 */  addiu      $t5, $zero, 3
/* 96DD4 800961D4 A60C00D0 */  sh         $t4, 0xd0($s0)
/* 96DD8 800961D8 10000035 */  b          .L800962B0
/* 96DDC 800961DC AE0D0080 */   sw        $t5, 0x80($s0)
.L800961E0:
/* 96DE0 800961E0 11C0000C */  beqz       $t6, .L80096214
/* 96DE4 800961E4 00000000 */   nop
/* 96DE8 800961E8 920F00DD */  lbu        $t7, 0xdd($s0)
/* 96DEC 800961EC 24010014 */  addiu      $at, $zero, 0x14
/* 96DF0 800961F0 15E10008 */  bne        $t7, $at, .L80096214
/* 96DF4 800961F4 00000000 */   nop
/* 96DF8 800961F8 960500D6 */  lhu        $a1, 0xd6($s0)
/* 96DFC 800961FC 0C00D633 */  jal        func_800358CC
/* 96E00 80096200 00000000 */   nop
/* 96E04 80096204 10400003 */  beqz       $v0, .L80096214
/* 96E08 80096208 24180100 */   addiu     $t8, $zero, 0x100
/* 96E0C 8009620C 10000028 */  b          .L800962B0
/* 96E10 80096210 A61800D0 */   sh        $t8, 0xd0($s0)
.L80096214:
/* 96E14 80096214 8605008C */  lh         $a1, 0x8c($s0)
/* 96E18 80096218 86060090 */  lh         $a2, 0x90($s0)
/* 96E1C 8009621C 24A50008 */  addiu      $a1, $a1, 8
/* 96E20 80096220 24C60001 */  addiu      $a2, $a2, 1
/* 96E24 80096224 00064C00 */  sll        $t1, $a2, 0x10
/* 96E28 80096228 0005CC00 */  sll        $t9, $a1, 0x10
/* 96E2C 8009622C 86040088 */  lh         $a0, 0x88($s0)
/* 96E30 80096230 00192C03 */  sra        $a1, $t9, 0x10
/* 96E34 80096234 0C00CE3D */  jal        func_800338F4
/* 96E38 80096238 00093403 */   sra       $a2, $t1, 0x10
/* 96E3C 8009623C 1000001D */  b          .L800962B4
/* 96E40 80096240 8FBF001C */   lw        $ra, 0x1c($sp)
.L80096244:
/* 96E44 80096244 8E020098 */  lw         $v0, 0x98($s0)
/* 96E48 80096248 AE0000EC */  sw         $zero, 0xec($s0)
/* 96E4C 8009624C 304B0200 */  andi       $t3, $v0, 0x200
/* 96E50 80096250 11600006 */  beqz       $t3, .L8009626C
/* 96E54 80096254 AE0000F0 */   sw        $zero, 0xf0($s0)
/* 96E58 80096258 8E0C0104 */  lw         $t4, 0x104($s0)
/* 96E5C 8009625C 8E0D0108 */  lw         $t5, 0x108($s0)
/* 96E60 80096260 AE0C0088 */  sw         $t4, 0x88($s0)
/* 96E64 80096264 10000005 */  b          .L8009627C
/* 96E68 80096268 AE0D008C */   sw        $t5, 0x8c($s0)
.L8009626C:
/* 96E6C 8009626C 240E0001 */  addiu      $t6, $zero, 1
/* 96E70 80096270 240F1403 */  addiu      $t7, $zero, 0x1403
/* 96E74 80096274 A60E00D0 */  sh         $t6, 0xd0($s0)
/* 96E78 80096278 AE0F0080 */  sw         $t7, 0x80($s0)
.L8009627C:
/* 96E7C 8009627C 0C025816 */  jal        func_80096058
/* 96E80 80096280 00000000 */   nop
/* 96E84 80096284 1000000B */  b          .L800962B4
/* 96E88 80096288 8FBF001C */   lw        $ra, 0x1c($sp)
.L8009628C:
/* 96E8C 8009628C 8E180098 */  lw         $t8, 0x98($s0)
/* 96E90 80096290 24080001 */  addiu      $t0, $zero, 1
/* 96E94 80096294 33190200 */  andi       $t9, $t8, 0x200
/* 96E98 80096298 13200003 */  beqz       $t9, .L800962A8
/* 96E9C 8009629C 24091403 */   addiu     $t1, $zero, 0x1403
/* 96EA0 800962A0 A60800D0 */  sh         $t0, 0xd0($s0)
/* 96EA4 800962A4 AE090080 */  sw         $t1, 0x80($s0)
.L800962A8:
/* 96EA8 800962A8 0C025816 */  jal        func_80096058
/* 96EAC 800962AC 00000000 */   nop
.L800962B0:
/* 96EB0 800962B0 8FBF001C */  lw         $ra, 0x1c($sp)
.L800962B4:
/* 96EB4 800962B4 AE000098 */  sw         $zero, 0x98($s0)
/* 96EB8 800962B8 8FB00018 */  lw         $s0, 0x18($sp)
/* 96EBC 800962BC 03E00008 */  jr         $ra
/* 96EC0 800962C0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800962C4
/* 96EC4 800962C4 3C0E800C */  lui        $t6, %hi(D_800BE4E0)
/* 96EC8 800962C8 95CEE4E0 */  lhu        $t6, %lo(D_800BE4E0)($t6)
/* 96ECC 800962CC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 96ED0 800962D0 31CF000F */  andi       $t7, $t6, 0xf
/* 96ED4 800962D4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 96ED8 800962D8 AFB00018 */  sw         $s0, 0x18($sp)
/* 96EDC 800962DC 11E00017 */  beqz       $t7, .L8009633C
/* 96EE0 800962E0 AFA40028 */   sw        $a0, 0x28($sp)
/* 96EE4 800962E4 0C0005E3 */  jal        func_8000178C
/* 96EE8 800962E8 00000000 */   nop
/* 96EEC 800962EC 97B8002A */  lhu        $t8, 0x2a($sp)
/* 96EF0 800962F0 3C08800F */  lui        $t0, 0x800f
/* 96EF4 800962F4 0018C880 */  sll        $t9, $t8, 2
/* 96EF8 800962F8 0338C823 */  subu       $t9, $t9, $t8
/* 96EFC 800962FC 0019C880 */  sll        $t9, $t9, 2
/* 96F00 80096300 0338C821 */  addu       $t9, $t9, $t8
/* 96F04 80096304 0019C880 */  sll        $t9, $t9, 2
/* 96F08 80096308 0338C823 */  subu       $t9, $t9, $t8
/* 96F0C 8009630C 0019C8C0 */  sll        $t9, $t9, 3
/* 96F10 80096310 2508F510 */  addiu      $t0, $t0, -0xaf0
/* 96F14 80096314 03288021 */  addu       $s0, $t9, $t0
/* 96F18 80096318 8E0A0164 */  lw         $t2, 0x164($s0)
/* 96F1C 8009631C 3049007F */  andi       $t1, $v0, 0x7f
/* 96F20 80096320 012A5821 */  addu       $t3, $t1, $t2
/* 96F24 80096324 0C0005E3 */  jal        func_8000178C
/* 96F28 80096328 AE0B0170 */   sw        $t3, 0x170($s0)
/* 96F2C 8009632C 8E0D0168 */  lw         $t5, 0x168($s0)
/* 96F30 80096330 304C007F */  andi       $t4, $v0, 0x7f
/* 96F34 80096334 018D7021 */  addu       $t6, $t4, $t5
/* 96F38 80096338 AE0E0174 */  sw         $t6, 0x174($s0)
.L8009633C:
/* 96F3C 8009633C 97AF002A */  lhu        $t7, 0x2a($sp)
/* 96F40 80096340 3C19800F */  lui        $t9, 0x800f
/* 96F44 80096344 000FC080 */  sll        $t8, $t7, 2
/* 96F48 80096348 030FC023 */  subu       $t8, $t8, $t7
/* 96F4C 8009634C 0018C080 */  sll        $t8, $t8, 2
/* 96F50 80096350 030FC021 */  addu       $t8, $t8, $t7
/* 96F54 80096354 0018C080 */  sll        $t8, $t8, 2
/* 96F58 80096358 030FC023 */  subu       $t8, $t8, $t7
/* 96F5C 8009635C 0018C0C0 */  sll        $t8, $t8, 3
/* 96F60 80096360 2739F510 */  addiu      $t9, $t9, -0xaf0
/* 96F64 80096364 03198021 */  addu       $s0, $t8, $t9
/* 96F68 80096368 8E080170 */  lw         $t0, 0x170($s0)
/* 96F6C 8009636C 8E090180 */  lw         $t1, 0x180($s0)
/* 96F70 80096370 8E0A0174 */  lw         $t2, 0x174($s0)
/* 96F74 80096374 8E0B0184 */  lw         $t3, 0x184($s0)
/* 96F78 80096378 01092023 */  subu       $a0, $t0, $t1
/* 96F7C 8009637C 0C00A538 */  jal        func_800294E0
/* 96F80 80096380 014B2823 */   subu      $a1, $t2, $t3
/* 96F84 80096384 8E05016C */  lw         $a1, 0x16c($s0)
/* 96F88 80096388 00022400 */  sll        $a0, $v0, 0x10
/* 96F8C 8009638C 0C00A634 */  jal        func_800298D0
/* 96F90 80096390 3C060018 */   lui       $a2, 0x18
/* 96F94 80096394 AE02016C */  sw         $v0, 0x16c($s0)
/* 96F98 80096398 04410004 */  bgez       $v0, .L800963AC
/* 96F9C 8009639C 00021C03 */   sra       $v1, $v0, 0x10
/* 96FA0 800963A0 3401FFFF */  ori        $at, $zero, 0xffff
/* 96FA4 800963A4 00220821 */  addu       $at, $at, $v0
/* 96FA8 800963A8 00011C03 */  sra        $v1, $at, 0x10
.L800963AC:
/* 96FAC 800963AC 306C03FF */  andi       $t4, $v1, 0x3ff
/* 96FB0 800963B0 000C6880 */  sll        $t5, $t4, 2
/* 96FB4 800963B4 3C01800C */  lui        $at, %hi(D_800BCCD0)
/* 96FB8 800963B8 002D0821 */  addu       $at, $at, $t5
/* 96FBC 800963BC C424CCD0 */  lwc1       $f4, %lo(D_800BCCD0)($at)
/* 96FC0 800963C0 3C0147C0 */  lui        $at, 0x47c0
/* 96FC4 800963C4 44813000 */  mtc1       $at, $f6
/* 96FC8 800963C8 8E0400EC */  lw         $a0, 0xec($s0)
/* 96FCC 800963CC 46062202 */  mul.s      $f8, $f4, $f6
/* 96FD0 800963D0 AFA30024 */  sw         $v1, 0x24($sp)
/* 96FD4 800963D4 24062000 */  addiu      $a2, $zero, 0x2000
/* 96FD8 800963D8 444EF800 */  cfc1       $t6, $31
/* 96FDC 800963DC 00000000 */  nop
/* 96FE0 800963E0 35C10003 */  ori        $at, $t6, 3
/* 96FE4 800963E4 38210002 */  xori       $at, $at, 2
/* 96FE8 800963E8 44C1F800 */  ctc1       $at, $31
/* 96FEC 800963EC 00000000 */  nop
/* 96FF0 800963F0 460042A4 */  cvt.w.s    $f10, $f8
/* 96FF4 800963F4 44055000 */  mfc1       $a1, $f10
/* 96FF8 800963F8 44CEF800 */  ctc1       $t6, $31
/* 96FFC 800963FC 0C00A607 */  jal        func_8002981C
/* 97000 80096400 00000000 */   nop
/* 97004 80096404 8FAF0024 */  lw         $t7, 0x24($sp)
/* 97008 80096408 3C01800C */  lui        $at, 0x800c
/* 9700C 8009640C 25F8FF00 */  addiu      $t8, $t7, -0x100
/* 97010 80096410 331903FF */  andi       $t9, $t8, 0x3ff
/* 97014 80096414 00194080 */  sll        $t0, $t9, 2
/* 97018 80096418 AE0200EC */  sw         $v0, 0xec($s0)
/* 9701C 8009641C 00280821 */  addu       $at, $at, $t0
/* 97020 80096420 C430CCD0 */  lwc1       $f16, -0x3330($at)
/* 97024 80096424 3C014780 */  lui        $at, 0x4780
/* 97028 80096428 44819000 */  mtc1       $at, $f18
/* 9702C 8009642C 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 97030 80096430 46128102 */  mul.s      $f4, $f16, $f18
/* 97034 80096434 24062000 */  addiu      $a2, $zero, 0x2000
/* 97038 80096438 4449F800 */  cfc1       $t1, $31
/* 9703C 8009643C 00000000 */  nop
/* 97040 80096440 35210003 */  ori        $at, $t1, 3
/* 97044 80096444 38210002 */  xori       $at, $at, 2
/* 97048 80096448 44C1F800 */  ctc1       $at, $31
/* 9704C 8009644C 00000000 */  nop
/* 97050 80096450 460021A4 */  cvt.w.s    $f6, $f4
/* 97054 80096454 44053000 */  mfc1       $a1, $f6
/* 97058 80096458 44C9F800 */  ctc1       $t1, $31
/* 9705C 8009645C 0C00A607 */  jal        func_8002981C
/* 97060 80096460 00000000 */   nop
/* 97064 80096464 8FBF001C */  lw         $ra, 0x1c($sp)
/* 97068 80096468 AE0200F0 */  sw         $v0, 0xf0($s0)
/* 9706C 8009646C 8FB00018 */  lw         $s0, 0x18($sp)
/* 97070 80096470 03E00008 */  jr         $ra
/* 97074 80096474 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80096478
/* 97078 80096478 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 9707C 8009647C AFBE0068 */  sw         $fp, 0x68($sp)
/* 97080 80096480 309EFFFF */  andi       $fp, $a0, 0xffff
/* 97084 80096484 001E7080 */  sll        $t6, $fp, 2
/* 97088 80096488 01DE7023 */  subu       $t6, $t6, $fp
/* 9708C 8009648C 000E7080 */  sll        $t6, $t6, 2
/* 97090 80096490 01DE7021 */  addu       $t6, $t6, $fp
/* 97094 80096494 000E7080 */  sll        $t6, $t6, 2
/* 97098 80096498 01DE7023 */  subu       $t6, $t6, $fp
/* 9709C 8009649C 3C0F800F */  lui        $t7, %hi(gActors)
/* 970A0 800964A0 AFB1004C */  sw         $s1, 0x4c($sp)
/* 970A4 800964A4 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 970A8 800964A8 000E70C0 */  sll        $t6, $t6, 3
/* 970AC 800964AC 01CF8821 */  addu       $s1, $t6, $t7
/* 970B0 800964B0 8E380188 */  lw         $t8, 0x188($s1)
/* 970B4 800964B4 AFBF006C */  sw         $ra, 0x6c($sp)
/* 970B8 800964B8 AFB70064 */  sw         $s7, 0x64($sp)
/* 970BC 800964BC AFB60060 */  sw         $s6, 0x60($sp)
/* 970C0 800964C0 AFB5005C */  sw         $s5, 0x5c($sp)
/* 970C4 800964C4 AFB40058 */  sw         $s4, 0x58($sp)
/* 970C8 800964C8 AFB30054 */  sw         $s3, 0x54($sp)
/* 970CC 800964CC AFB20050 */  sw         $s2, 0x50($sp)
/* 970D0 800964D0 AFB00048 */  sw         $s0, 0x48($sp)
/* 970D4 800964D4 E7BF0040 */  swc1       $f31, 0x40($sp)
/* 970D8 800964D8 E7BE0044 */  swc1       $f30, 0x44($sp)
/* 970DC 800964DC E7BD0038 */  swc1       $f29, 0x38($sp)
/* 970E0 800964E0 E7BC003C */  swc1       $f28, 0x3c($sp)
/* 970E4 800964E4 E7BB0030 */  swc1       $f27, 0x30($sp)
/* 970E8 800964E8 E7BA0034 */  swc1       $f26, 0x34($sp)
/* 970EC 800964EC E7B90028 */  swc1       $f25, 0x28($sp)
/* 970F0 800964F0 E7B8002C */  swc1       $f24, 0x2c($sp)
/* 970F4 800964F4 E7B70020 */  swc1       $f23, 0x20($sp)
/* 970F8 800964F8 E7B60024 */  swc1       $f22, 0x24($sp)
/* 970FC 800964FC E7B50018 */  swc1       $f21, 0x18($sp)
/* 97100 80096500 E7B4001C */  swc1       $f20, 0x1c($sp)
/* 97104 80096504 1300000A */  beqz       $t8, .L80096530
/* 97108 80096508 AFA40070 */   sw        $a0, 0x70($sp)
/* 9710C 8009650C 8E240178 */  lw         $a0, 0x178($s1)
/* 97110 80096510 24050032 */  addiu      $a1, $zero, 0x32
/* 97114 80096514 0C00A607 */  jal        func_8002981C
/* 97118 80096518 24060006 */   addiu     $a2, $zero, 6
/* 9711C 8009651C 24010032 */  addiu      $at, $zero, 0x32
/* 97120 80096520 1441000E */  bne        $v0, $at, .L8009655C
/* 97124 80096524 AE220178 */   sw        $v0, 0x178($s1)
/* 97128 80096528 1000000C */  b          .L8009655C
/* 9712C 8009652C AE200188 */   sw        $zero, 0x188($s1)
.L80096530:
/* 97130 80096530 8E240178 */  lw         $a0, 0x178($s1)
/* 97134 80096534 2405000A */  addiu      $a1, $zero, 0xa
/* 97138 80096538 0C00A607 */  jal        func_8002981C
/* 9713C 8009653C 2406000A */   addiu     $a2, $zero, 0xa
/* 97140 80096540 2401000A */  addiu      $at, $zero, 0xa
/* 97144 80096544 14410005 */  bne        $v0, $at, .L8009655C
/* 97148 80096548 AE220178 */   sw        $v0, 0x178($s1)
/* 9714C 8009654C 8E390188 */  lw         $t9, 0x188($s1)
/* 97150 80096550 00000000 */  nop
/* 97154 80096554 27280001 */  addiu      $t0, $t9, 1
/* 97158 80096558 AE280188 */  sw         $t0, 0x188($s1)
.L8009655C:
/* 9715C 8009655C 3C0140C0 */  lui        $at, 0x40c0
/* 97160 80096560 4481F000 */  mtc1       $at, $f30
/* 97164 80096564 3C01C080 */  lui        $at, 0xc080
/* 97168 80096568 4481E000 */  mtc1       $at, $f28
/* 9716C 8009656C 3C01800F */  lui        $at, %hi(D_800ED4E0)
/* 97170 80096570 C43AD4E0 */  lwc1       $f26, %lo(D_800ED4E0)($at)
/* 97174 80096574 3C0141F0 */  lui        $at, 0x41f0
/* 97178 80096578 4481C000 */  mtc1       $at, $f24
/* 9717C 8009657C 3C014080 */  lui        $at, 0x4080
/* 97180 80096580 4481B000 */  mtc1       $at, $f22
/* 97184 80096584 3C01800F */  lui        $at, %hi(D_800ED4E8)
/* 97188 80096588 3C12800E */  lui        $s2, %hi(D_800E1380)
/* 9718C 8009658C C435D4E8 */  lwc1       $f21, %lo(D_800ED4E8)($at)
/* 97190 80096590 C434D4EC */  lwc1       $f20, -0x2b14($at)
/* 97194 80096594 26521380 */  addiu      $s2, $s2, %lo(D_800E1380)
/* 97198 80096598 00008025 */  or         $s0, $zero, $zero
/* 9719C 8009659C 3C170300 */  lui        $s7, 0x300
/* 971A0 800965A0 3C160100 */  lui        $s6, 0x100
/* 971A4 800965A4 241500C0 */  addiu      $s5, $zero, 0xc0
/* 971A8 800965A8 24140132 */  addiu      $s4, $zero, 0x132
/* 971AC 800965AC 24130009 */  addiu      $s3, $zero, 9
.L800965B0:
/* 971B0 800965B0 86250088 */  lh         $a1, 0x88($s1)
/* 971B4 800965B4 8626008C */  lh         $a2, 0x8c($s1)
/* 971B8 800965B8 86270090 */  lh         $a3, 0x90($s1)
/* 971BC 800965BC 0C00C48F */  jal        func_8003123C
/* 971C0 800965C0 02402025 */   or        $a0, $s2, $zero
/* 971C4 800965C4 1040003C */  beqz       $v0, .L800966B8
/* 971C8 800965C8 3049FFFF */   andi      $t1, $v0, 0xffff
/* 971CC 800965CC 00095080 */  sll        $t2, $t1, 2
/* 971D0 800965D0 01495023 */  subu       $t2, $t2, $t1
/* 971D4 800965D4 000A5080 */  sll        $t2, $t2, 2
/* 971D8 800965D8 01495021 */  addu       $t2, $t2, $t1
/* 971DC 800965DC 000A5080 */  sll        $t2, $t2, 2
/* 971E0 800965E0 01495023 */  subu       $t2, $t2, $t1
/* 971E4 800965E4 3C0B800F */  lui        $t3, %hi(gActors)
/* 971E8 800965E8 256BF510 */  addiu      $t3, $t3, %lo(gActors)
/* 971EC 800965EC 000A50C0 */  sll        $t2, $t2, 3
/* 971F0 800965F0 014B1821 */  addu       $v1, $t2, $t3
/* 971F4 800965F4 A4730094 */  sh         $s3, 0x94($v1)
/* 971F8 800965F8 A4740084 */  sh         $s4, 0x84($v1)
/* 971FC 800965FC 8E2C0178 */  lw         $t4, 0x178($s1)
/* 97200 80096600 E47A00B4 */  swc1       $f26, 0xb4($v1)
/* 97204 80096604 448C2000 */  mtc1       $t4, $f4
/* 97208 80096608 A075009F */  sb         $s5, 0x9f($v1)
/* 9720C 8009660C 468021A0 */  cvt.s.w    $f6, $f4
/* 97210 80096610 449E2000 */  mtc1       $fp, $f4
/* 97214 80096614 3C014F80 */  lui        $at, 0x4f80
/* 97218 80096618 46183203 */  div.s      $f8, $f6, $f24
/* 9721C 8009661C 46802020 */  cvt.s.w    $f0, $f4
/* 97220 80096620 44802000 */  mtc1       $zero, $f4
/* 97224 80096624 460042A1 */  cvt.d.s    $f10, $f8
/* 97228 80096628 46345402 */  mul.d      $f16, $f10, $f20
/* 9722C 8009662C 462084A0 */  cvt.s.d    $f18, $f16
/* 97230 80096630 07C10004 */  bgez       $fp, .L80096644
/* 97234 80096634 E47200B8 */   swc1      $f18, 0xb8($v1)
/* 97238 80096638 44813000 */  mtc1       $at, $f6
/* 9723C 8009663C 00000000 */  nop
/* 97240 80096640 46060000 */  add.s      $f0, $f0, $f6
.L80096644:
/* 97244 80096644 16000007 */  bnez       $s0, .L80096664
/* 97248 80096648 3C014F80 */   lui       $at, 0x4f80
/* 9724C 8009664C 8C6D0080 */  lw         $t5, 0x80($v1)
/* 97250 80096650 E47C0134 */  swc1       $f28, 0x134($v1)
/* 97254 80096654 35AE8000 */  ori        $t6, $t5, 0x8000
/* 97258 80096658 AC6E0080 */  sw         $t6, 0x80($v1)
/* 9725C 8009665C 10000006 */  b          .L80096678
/* 97260 80096660 AC760160 */   sw        $s6, 0x160($v1)
.L80096664:
/* 97264 80096664 8C6F0080 */  lw         $t7, 0x80($v1)
/* 97268 80096668 E4760134 */  swc1       $f22, 0x134($v1)
/* 9726C 8009666C 35F88020 */  ori        $t8, $t7, 0x8020
/* 97270 80096670 AC780080 */  sw         $t8, 0x80($v1)
/* 97274 80096674 AC770160 */  sw         $s7, 0x160($v1)
.L80096678:
/* 97278 80096678 E4600130 */  swc1       $f0, 0x130($v1)
/* 9727C 8009667C 963900D2 */  lhu        $t9, 0xd2($s1)
/* 97280 80096680 00000000 */  nop
/* 97284 80096684 44994000 */  mtc1       $t9, $f8
/* 97288 80096688 07210004 */  bgez       $t9, .L8009669C
/* 9728C 8009668C 468042A0 */   cvt.s.w   $f10, $f8
/* 97290 80096690 44818000 */  mtc1       $at, $f16
/* 97294 80096694 00000000 */  nop
/* 97298 80096698 46105280 */  add.s      $f10, $f10, $f16
.L8009669C:
/* 9729C 8009669C 3C01BF80 */  lui        $at, 0xbf80
/* 972A0 800966A0 44819000 */  mtc1       $at, $f18
/* 972A4 800966A4 E46A014C */  swc1       $f10, 0x14c($v1)
/* 972A8 800966A8 E47E0138 */  swc1       $f30, 0x138($v1)
/* 972AC 800966AC E4760144 */  swc1       $f22, 0x144($v1)
/* 972B0 800966B0 E4640148 */  swc1       $f4, 0x148($v1)
/* 972B4 800966B4 E472013C */  swc1       $f18, 0x13c($v1)
.L800966B8:
/* 972B8 800966B8 26100001 */  addiu      $s0, $s0, 1
/* 972BC 800966BC 3208FFFF */  andi       $t0, $s0, 0xffff
/* 972C0 800966C0 29010002 */  slti       $at, $t0, 2
/* 972C4 800966C4 1420FFBA */  bnez       $at, .L800965B0
/* 972C8 800966C8 01008025 */   or        $s0, $t0, $zero
/* 972CC 800966CC 8FBF006C */  lw         $ra, 0x6c($sp)
/* 972D0 800966D0 C7B50018 */  lwc1       $f21, 0x18($sp)
/* 972D4 800966D4 C7B4001C */  lwc1       $f20, 0x1c($sp)
/* 972D8 800966D8 C7B70020 */  lwc1       $f23, 0x20($sp)
/* 972DC 800966DC C7B60024 */  lwc1       $f22, 0x24($sp)
/* 972E0 800966E0 C7B90028 */  lwc1       $f25, 0x28($sp)
/* 972E4 800966E4 C7B8002C */  lwc1       $f24, 0x2c($sp)
/* 972E8 800966E8 C7BB0030 */  lwc1       $f27, 0x30($sp)
/* 972EC 800966EC C7BA0034 */  lwc1       $f26, 0x34($sp)
/* 972F0 800966F0 C7BD0038 */  lwc1       $f29, 0x38($sp)
/* 972F4 800966F4 C7BC003C */  lwc1       $f28, 0x3c($sp)
/* 972F8 800966F8 C7BF0040 */  lwc1       $f31, 0x40($sp)
/* 972FC 800966FC C7BE0044 */  lwc1       $f30, 0x44($sp)
/* 97300 80096700 8FB00048 */  lw         $s0, 0x48($sp)
/* 97304 80096704 8FB1004C */  lw         $s1, 0x4c($sp)
/* 97308 80096708 8FB20050 */  lw         $s2, 0x50($sp)
/* 9730C 8009670C 8FB30054 */  lw         $s3, 0x54($sp)
/* 97310 80096710 8FB40058 */  lw         $s4, 0x58($sp)
/* 97314 80096714 8FB5005C */  lw         $s5, 0x5c($sp)
/* 97318 80096718 8FB60060 */  lw         $s6, 0x60($sp)
/* 9731C 8009671C 8FB70064 */  lw         $s7, 0x64($sp)
/* 97320 80096720 8FBE0068 */  lw         $fp, 0x68($sp)
/* 97324 80096724 03E00008 */  jr         $ra
/* 97328 80096728 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_8009672C
/* 9732C 8009672C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 97330 80096730 000E7880 */  sll        $t7, $t6, 2
/* 97334 80096734 01EE7823 */  subu       $t7, $t7, $t6
/* 97338 80096738 000F7880 */  sll        $t7, $t7, 2
/* 9733C 8009673C 01EE7821 */  addu       $t7, $t7, $t6
/* 97340 80096740 000F7880 */  sll        $t7, $t7, 2
/* 97344 80096744 01EE7823 */  subu       $t7, $t7, $t6
/* 97348 80096748 3C18800F */  lui        $t8, %hi(gActors)
/* 9734C 8009674C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 97350 80096750 000F78C0 */  sll        $t7, $t7, 3
/* 97354 80096754 01F81021 */  addu       $v0, $t7, $t8
/* 97358 80096758 3C08800C */  lui        $t0, %hi(D_800BE558)
/* 9735C 8009675C 8508E558 */  lh         $t0, %lo(D_800BE558)($t0)
/* 97360 80096760 84590088 */  lh         $t9, 0x88($v0)
/* 97364 80096764 3C0A800C */  lui        $t2, %hi(D_800BE55C)
/* 97368 80096768 03281821 */  addu       $v1, $t9, $t0
/* 9736C 8009676C AC430180 */  sw         $v1, 0x180($v0)
/* 97370 80096770 854AE55C */  lh         $t2, %lo(D_800BE55C)($t2)
/* 97374 80096774 8449008C */  lh         $t1, 0x8c($v0)
/* 97378 80096778 C44400B4 */  lwc1       $f4, 0xb4($v0)
/* 9737C 8009677C 944700D0 */  lhu        $a3, 0xd0($v0)
/* 97380 80096780 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 97384 80096784 AFA40018 */  sw         $a0, 0x18($sp)
/* 97388 80096788 012A2821 */  addu       $a1, $t1, $t2
/* 9738C 8009678C 01C02025 */  or         $a0, $t6, $zero
/* 97390 80096790 AFBF0014 */  sw         $ra, 0x14($sp)
/* 97394 80096794 AC450184 */  sw         $a1, 0x184($v0)
/* 97398 80096798 E44400B8 */  swc1       $f4, 0xb8($v0)
/* 9739C 8009679C 10E00006 */  beqz       $a3, .L800967B8
/* 973A0 800967A0 00E03025 */   or        $a2, $a3, $zero
/* 973A4 800967A4 24010001 */  addiu      $at, $zero, 1
/* 973A8 800967A8 10C10014 */  beq        $a2, $at, .L800967FC
/* 973AC 800967AC 00000000 */   nop
/* 973B0 800967B0 10000027 */  b          .L80096850
/* 973B4 800967B4 8FBF0014 */   lw        $ra, 0x14($sp)
.L800967B8:
/* 973B8 800967B8 3C01800F */  lui        $at, %hi(D_800ED4F0)
/* 973BC 800967BC C420D4F0 */  lwc1       $f0, %lo(D_800ED4F0)($at)
/* 973C0 800967C0 3C0E800E */  lui        $t6, %hi(D_800E2364)
/* 973C4 800967C4 24EB0001 */  addiu      $t3, $a3, 1
/* 973C8 800967C8 240C0001 */  addiu      $t4, $zero, 1
/* 973CC 800967CC 240D0003 */  addiu      $t5, $zero, 3
/* 973D0 800967D0 25CE2364 */  addiu      $t6, $t6, %lo(D_800E2364)
/* 973D4 800967D4 240F0001 */  addiu      $t7, $zero, 1
/* 973D8 800967D8 A44B00D0 */  sh         $t3, 0xd0($v0)
/* 973DC 800967DC A44C0094 */  sh         $t4, 0x94($v0)
/* 973E0 800967E0 AC4D0080 */  sw         $t5, 0x80($v0)
/* 973E4 800967E4 AC4E00E8 */  sw         $t6, 0xe8($v0)
/* 973E8 800967E8 A44F00E6 */  sh         $t7, 0xe6($v0)
/* 973EC 800967EC AC430164 */  sw         $v1, 0x164($v0)
/* 973F0 800967F0 AC450168 */  sw         $a1, 0x168($v0)
/* 973F4 800967F4 E44000B4 */  swc1       $f0, 0xb4($v0)
/* 973F8 800967F8 E44000B8 */  swc1       $f0, 0xb8($v0)
.L800967FC:
/* 973FC 800967FC 3C18800C */  lui        $t8, %hi(D_800BE4E0)
/* 97400 80096800 9718E4E0 */  lhu        $t8, %lo(D_800BE4E0)($t8)
/* 97404 80096804 00000000 */  nop
/* 97408 80096808 33190008 */  andi       $t9, $t8, 8
/* 9740C 8009680C 13200006 */  beqz       $t9, .L80096828
/* 97410 80096810 00000000 */   nop
/* 97414 80096814 8C480080 */  lw         $t0, 0x80($v0)
/* 97418 80096818 00000000 */  nop
/* 9741C 8009681C 35090020 */  ori        $t1, $t0, 0x20
/* 97420 80096820 10000005 */  b          .L80096838
/* 97424 80096824 AC490080 */   sw        $t1, 0x80($v0)
.L80096828:
/* 97428 80096828 8C4A0080 */  lw         $t2, 0x80($v0)
/* 9742C 8009682C 2401FFDF */  addiu      $at, $zero, -0x21
/* 97430 80096830 01415824 */  and        $t3, $t2, $at
/* 97434 80096834 AC4B0080 */  sw         $t3, 0x80($v0)
.L80096838:
/* 97438 80096838 0C02591E */  jal        func_80096478
/* 9743C 8009683C A7A4001A */   sh        $a0, 0x1a($sp)
/* 97440 80096840 97A4001A */  lhu        $a0, 0x1a($sp)
/* 97444 80096844 0C0258B1 */  jal        func_800962C4
/* 97448 80096848 00000000 */   nop
/* 9744C 8009684C 8FBF0014 */  lw         $ra, 0x14($sp)
.L80096850:
/* 97450 80096850 27BD0018 */  addiu      $sp, $sp, 0x18
/* 97454 80096854 03E00008 */  jr         $ra
/* 97458 80096858 00000000 */   nop

glabel func_8009685C
/* 9745C 8009685C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 97460 80096860 000E7880 */  sll        $t7, $t6, 2
/* 97464 80096864 01EE7823 */  subu       $t7, $t7, $t6
/* 97468 80096868 000F7880 */  sll        $t7, $t7, 2
/* 9746C 8009686C 01EE7821 */  addu       $t7, $t7, $t6
/* 97470 80096870 000F7880 */  sll        $t7, $t7, 2
/* 97474 80096874 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 97478 80096878 01EE7823 */  subu       $t7, $t7, $t6
/* 9747C 8009687C 3C18800F */  lui        $t8, %hi(gActors)
/* 97480 80096880 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 97484 80096884 000F78C0 */  sll        $t7, $t7, 3
/* 97488 80096888 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9748C 8009688C AFA40020 */  sw         $a0, 0x20($sp)
/* 97490 80096890 01F81021 */  addu       $v0, $t7, $t8
/* 97494 80096894 24190001 */  addiu      $t9, $zero, 1
/* 97498 80096898 3C05800F */  lui        $a1, %hi(D_800E9654)
/* 9749C 8009689C 3C06800F */  lui        $a2, %hi(D_800E9634)
/* 974A0 800968A0 01C02025 */  or         $a0, $t6, $zero
/* 974A4 800968A4 A4590094 */  sh         $t9, 0x94($v0)
/* 974A8 800968A8 24C69634 */  addiu      $a2, $a2, %lo(D_800E9634)
/* 974AC 800968AC 24A59654 */  addiu      $a1, $a1, %lo(D_800E9654)
/* 974B0 800968B0 AFA2001C */  sw         $v0, 0x1c($sp)
/* 974B4 800968B4 0C020417 */  jal        func_8008105C
/* 974B8 800968B8 A7AE0022 */   sh        $t6, 0x22($sp)
/* 974BC 800968BC 8FA2001C */  lw         $v0, 0x1c($sp)
/* 974C0 800968C0 3C08800F */  lui        $t0, %hi(D_800E9720)
/* 974C4 800968C4 97A40022 */  lhu        $a0, 0x22($sp)
/* 974C8 800968C8 25089720 */  addiu      $t0, $t0, %lo(D_800E9720)
/* 974CC 800968CC 3C05800F */  lui        $a1, %hi(D_800E9700)
/* 974D0 800968D0 24A59700 */  addiu      $a1, $a1, %lo(D_800E9700)
/* 974D4 800968D4 0C0205E4 */  jal        func_80081790
/* 974D8 800968D8 AC480178 */   sw        $t0, 0x178($v0)
/* 974DC 800968DC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 974E0 800968E0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 974E4 800968E4 03E00008 */  jr         $ra
/* 974E8 800968E8 00000000 */   nop

glabel func_800968EC
/* 974EC 800968EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 974F0 800968F0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 974F4 800968F4 AFA40018 */  sw         $a0, 0x18($sp)
/* 974F8 800968F8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 974FC 800968FC 3C05800F */  lui        $a1, %hi(D_800E9654)
/* 97500 80096900 01C02025 */  or         $a0, $t6, $zero
/* 97504 80096904 0C02066A */  jal        func_800819A8
/* 97508 80096908 24A59654 */   addiu     $a1, $a1, %lo(D_800E9654)
/* 9750C 8009690C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 97510 80096910 27BD0018 */  addiu      $sp, $sp, 0x18
/* 97514 80096914 03E00008 */  jr         $ra
/* 97518 80096918 00000000 */   nop

glabel func_8009691C
/* 9751C 8009691C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 97520 80096920 000E7880 */  sll        $t7, $t6, 2
/* 97524 80096924 01EE7823 */  subu       $t7, $t7, $t6
/* 97528 80096928 000F7880 */  sll        $t7, $t7, 2
/* 9752C 8009692C 01EE7821 */  addu       $t7, $t7, $t6
/* 97530 80096930 000F7880 */  sll        $t7, $t7, 2
/* 97534 80096934 01EE7823 */  subu       $t7, $t7, $t6
/* 97538 80096938 3C18800F */  lui        $t8, %hi(gActors)
/* 9753C 8009693C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 97540 80096940 000F78C0 */  sll        $t7, $t7, 3
/* 97544 80096944 01F81021 */  addu       $v0, $t7, $t8
/* 97548 80096948 944300D0 */  lhu        $v1, 0xd0($v0)
/* 9754C 8009694C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 97550 80096950 AFA40028 */  sw         $a0, 0x28($sp)
/* 97554 80096954 01C02025 */  or         $a0, $t6, $zero
/* 97558 80096958 10600006 */  beqz       $v1, .L80096974
/* 9755C 8009695C AFBF0014 */   sw        $ra, 0x14($sp)
/* 97560 80096960 24010001 */  addiu      $at, $zero, 1
/* 97564 80096964 10610013 */  beq        $v1, $at, .L800969B4
/* 97568 80096968 00000000 */   nop
/* 9756C 8009696C 10000014 */  b          .L800969C0
/* 97570 80096970 8FBF0014 */   lw        $ra, 0x14($sp)
.L80096974:
/* 97574 80096974 AFA2001C */  sw         $v0, 0x1c($sp)
/* 97578 80096978 0C025A17 */  jal        func_8009685C
/* 9757C 8009697C A7A4002A */   sh        $a0, 0x2a($sp)
/* 97580 80096980 4448F800 */  cfc1       $t0, $31
/* 97584 80096984 8FA2001C */  lw         $v0, 0x1c($sp)
/* 97588 80096988 35010003 */  ori        $at, $t0, 3
/* 9758C 8009698C 38210002 */  xori       $at, $at, 2
/* 97590 80096990 44C1F800 */  ctc1       $at, $31
/* 97594 80096994 C4440110 */  lwc1       $f4, 0x110($v0)
/* 97598 80096998 24190001 */  addiu      $t9, $zero, 1
/* 9759C 8009699C 460021A4 */  cvt.w.s    $f6, $f4
/* 975A0 800969A0 97A4002A */  lhu        $a0, 0x2a($sp)
/* 975A4 800969A4 44093000 */  mfc1       $t1, $f6
/* 975A8 800969A8 44C8F800 */  ctc1       $t0, $31
/* 975AC 800969AC A45900D0 */  sh         $t9, 0xd0($v0)
/* 975B0 800969B0 AC490168 */  sw         $t1, 0x168($v0)
.L800969B4:
/* 975B4 800969B4 0C025A3B */  jal        func_800968EC
/* 975B8 800969B8 00000000 */   nop
/* 975BC 800969BC 8FBF0014 */  lw         $ra, 0x14($sp)
.L800969C0:
/* 975C0 800969C0 27BD0028 */  addiu      $sp, $sp, 0x28
/* 975C4 800969C4 03E00008 */  jr         $ra
/* 975C8 800969C8 00000000 */   nop

glabel func_800969CC
/* 975CC 800969CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 975D0 800969D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 975D4 800969D4 AFA40018 */  sw         $a0, 0x18($sp)
/* 975D8 800969D8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 975DC 800969DC 0C024156 */  jal        func_80090558
/* 975E0 800969E0 01C02025 */   or        $a0, $t6, $zero
/* 975E4 800969E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 975E8 800969E8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 975EC 800969EC 03E00008 */  jr         $ra
/* 975F0 800969F0 00000000 */   nop

glabel func_800969F4
/* 975F4 800969F4 03E00008 */  jr         $ra
/* 975F8 800969F8 AFA40000 */   sw        $a0, ($sp)

glabel func_800969FC
/* 975FC 800969FC 03E00008 */  jr         $ra
/* 97600 80096A00 AFA40000 */   sw        $a0, ($sp)

glabel func_80096A04
/* 97604 80096A04 03E00008 */  jr         $ra
/* 97608 80096A08 AFA40000 */   sw        $a0, ($sp)

glabel func_80096A0C
/* 9760C 80096A0C 03E00008 */  jr         $ra
/* 97610 80096A10 AFA40000 */   sw        $a0, ($sp)

glabel func_80096A14
/* 97614 80096A14 03E00008 */  jr         $ra
/* 97618 80096A18 AFA40000 */   sw        $a0, ($sp)

glabel func_80096A1C
/* 9761C 80096A1C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 97620 80096A20 000EC080 */  sll        $t8, $t6, 2
/* 97624 80096A24 030EC023 */  subu       $t8, $t8, $t6
/* 97628 80096A28 0018C080 */  sll        $t8, $t8, 2
/* 9762C 80096A2C 030EC021 */  addu       $t8, $t8, $t6
/* 97630 80096A30 0018C080 */  sll        $t8, $t8, 2
/* 97634 80096A34 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 97638 80096A38 030EC023 */  subu       $t8, $t8, $t6
/* 9763C 80096A3C 0018C0C0 */  sll        $t8, $t8, 3
/* 97640 80096A40 3C01800F */  lui        $at, 0x800f
/* 97644 80096A44 AFBF0014 */  sw         $ra, 0x14($sp)
/* 97648 80096A48 AFA40018 */  sw         $a0, 0x18($sp)
/* 9764C 80096A4C 00380821 */  addu       $at, $at, $t8
/* 97650 80096A50 240F0001 */  addiu      $t7, $zero, 1
/* 97654 80096A54 01C02025 */  or         $a0, $t6, $zero
/* 97658 80096A58 0C023EC8 */  jal        func_8008FB20
/* 9765C 80096A5C A42FF780 */   sh        $t7, -0x880($at)
/* 97660 80096A60 8FBF0014 */  lw         $ra, 0x14($sp)
/* 97664 80096A64 27BD0018 */  addiu      $sp, $sp, 0x18
/* 97668 80096A68 03E00008 */  jr         $ra
/* 9766C 80096A6C 00000000 */   nop

glabel func_80096A70
/* 97670 80096A70 308EFFFF */  andi       $t6, $a0, 0xffff
/* 97674 80096A74 000EC080 */  sll        $t8, $t6, 2
/* 97678 80096A78 030EC023 */  subu       $t8, $t8, $t6
/* 9767C 80096A7C 0018C080 */  sll        $t8, $t8, 2
/* 97680 80096A80 030EC021 */  addu       $t8, $t8, $t6
/* 97684 80096A84 0018C080 */  sll        $t8, $t8, 2
/* 97688 80096A88 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9768C 80096A8C 030EC023 */  subu       $t8, $t8, $t6
/* 97690 80096A90 0018C0C0 */  sll        $t8, $t8, 3
/* 97694 80096A94 3C01800F */  lui        $at, 0x800f
/* 97698 80096A98 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9769C 80096A9C AFA40018 */  sw         $a0, 0x18($sp)
/* 976A0 80096AA0 00380821 */  addu       $at, $at, $t8
/* 976A4 80096AA4 240F0002 */  addiu      $t7, $zero, 2
/* 976A8 80096AA8 01C02025 */  or         $a0, $t6, $zero
/* 976AC 80096AAC 0C023F42 */  jal        func_8008FD08
/* 976B0 80096AB0 A42FF780 */   sh        $t7, -0x880($at)
/* 976B4 80096AB4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 976B8 80096AB8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 976BC 80096ABC 03E00008 */  jr         $ra
/* 976C0 80096AC0 00000000 */   nop

glabel func_80096AC4
/* 976C4 80096AC4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 976C8 80096AC8 000EC080 */  sll        $t8, $t6, 2
/* 976CC 80096ACC 030EC023 */  subu       $t8, $t8, $t6
/* 976D0 80096AD0 0018C080 */  sll        $t8, $t8, 2
/* 976D4 80096AD4 030EC021 */  addu       $t8, $t8, $t6
/* 976D8 80096AD8 0018C080 */  sll        $t8, $t8, 2
/* 976DC 80096ADC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 976E0 80096AE0 030EC023 */  subu       $t8, $t8, $t6
/* 976E4 80096AE4 0018C0C0 */  sll        $t8, $t8, 3
/* 976E8 80096AE8 3C01800F */  lui        $at, 0x800f
/* 976EC 80096AEC AFBF0014 */  sw         $ra, 0x14($sp)
/* 976F0 80096AF0 AFA40018 */  sw         $a0, 0x18($sp)
/* 976F4 80096AF4 00380821 */  addu       $at, $at, $t8
/* 976F8 80096AF8 240F0003 */  addiu      $t7, $zero, 3
/* 976FC 80096AFC 01C02025 */  or         $a0, $t6, $zero
/* 97700 80096B00 0C024019 */  jal        func_80090064
/* 97704 80096B04 A42FF780 */   sh        $t7, -0x880($at)
/* 97708 80096B08 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9770C 80096B0C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 97710 80096B10 03E00008 */  jr         $ra
/* 97714 80096B14 00000000 */   nop

glabel func_80096B18
/* 97718 80096B18 308EFFFF */  andi       $t6, $a0, 0xffff
/* 9771C 80096B1C 000EC080 */  sll        $t8, $t6, 2
/* 97720 80096B20 030EC023 */  subu       $t8, $t8, $t6
/* 97724 80096B24 0018C080 */  sll        $t8, $t8, 2
/* 97728 80096B28 030EC021 */  addu       $t8, $t8, $t6
/* 9772C 80096B2C 0018C080 */  sll        $t8, $t8, 2
/* 97730 80096B30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 97734 80096B34 030EC023 */  subu       $t8, $t8, $t6
/* 97738 80096B38 0018C0C0 */  sll        $t8, $t8, 3
/* 9773C 80096B3C 3C01800F */  lui        $at, 0x800f
/* 97740 80096B40 AFBF0014 */  sw         $ra, 0x14($sp)
/* 97744 80096B44 AFA40018 */  sw         $a0, 0x18($sp)
/* 97748 80096B48 00380821 */  addu       $at, $at, $t8
/* 9774C 80096B4C 240F0005 */  addiu      $t7, $zero, 5
/* 97750 80096B50 01C02025 */  or         $a0, $t6, $zero
/* 97754 80096B54 0C0240AC */  jal        func_800902B0
/* 97758 80096B58 A42FF780 */   sh        $t7, -0x880($at)
/* 9775C 80096B5C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 97760 80096B60 27BD0018 */  addiu      $sp, $sp, 0x18
/* 97764 80096B64 03E00008 */  jr         $ra
/* 97768 80096B68 00000000 */   nop
/* 9776C 80096B6C 00000000 */  nop
