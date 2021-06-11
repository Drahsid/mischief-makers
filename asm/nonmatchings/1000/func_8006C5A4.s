glabel func_8006C5A4
/* 6D1A4 8006C5A4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6D1A8 8006C5A8 AFB10018 */  sw         $s1, 0x18($sp)
/* 6D1AC 8006C5AC 3091FFFF */  andi       $s1, $a0, 0xffff
/* 6D1B0 8006C5B0 00117080 */  sll        $t6, $s1, 2
/* 6D1B4 8006C5B4 01D17023 */  subu       $t6, $t6, $s1
/* 6D1B8 8006C5B8 000E7080 */  sll        $t6, $t6, 2
/* 6D1BC 8006C5BC 01D17021 */  addu       $t6, $t6, $s1
/* 6D1C0 8006C5C0 000E7080 */  sll        $t6, $t6, 2
/* 6D1C4 8006C5C4 01D17023 */  subu       $t6, $t6, $s1
/* 6D1C8 8006C5C8 3C0F800F */  lui        $t7, %hi(gActors)
/* 6D1CC 8006C5CC AFB00014 */  sw         $s0, 0x14($sp)
/* 6D1D0 8006C5D0 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 6D1D4 8006C5D4 000E70C0 */  sll        $t6, $t6, 3
/* 6D1D8 8006C5D8 01CF8021 */  addu       $s0, $t6, $t7
/* 6D1DC 8006C5DC 960200D0 */  lhu        $v0, 0xd0($s0)
/* 6D1E0 8006C5E0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 6D1E4 8006C5E4 28410051 */  slti       $at, $v0, 0x51
/* 6D1E8 8006C5E8 14200035 */  bnez       $at, .L8006C6C0
/* 6D1EC 8006C5EC AFA40020 */   sw        $a0, 0x20($sp)
/* 6D1F0 8006C5F0 3401FFFF */  ori        $at, $zero, 0xffff
/* 6D1F4 8006C5F4 10410032 */  beq        $v0, $at, .L8006C6C0
/* 6D1F8 8006C5F8 00000000 */   nop
/* 6D1FC 8006C5FC 861800E0 */  lh         $t8, 0xe0($s0)
/* 6D200 8006C600 00000000 */  nop
/* 6D204 8006C604 17000005 */  bnez       $t8, .L8006C61C
/* 6D208 8006C608 00000000 */   nop
/* 6D20C 8006C60C 8E190080 */  lw         $t9, 0x80($s0)
/* 6D210 8006C610 2401FBFF */  addiu      $at, $zero, -0x401
/* 6D214 8006C614 03214024 */  and        $t0, $t9, $at
/* 6D218 8006C618 AE080080 */  sw         $t0, 0x80($s0)
.L8006C61C:
/* 6D21C 8006C61C 960200D4 */  lhu        $v0, 0xd4($s0)
/* 6D220 8006C620 00000000 */  nop
/* 6D224 8006C624 10400002 */  beqz       $v0, .L8006C630
/* 6D228 8006C628 2449FFFF */   addiu     $t1, $v0, -1
/* 6D22C 8006C62C A60900D4 */  sh         $t1, 0xd4($s0)
.L8006C630:
/* 6D230 8006C630 960500D8 */  lhu        $a1, 0xd8($s0)
/* 6D234 8006C634 3224FFFF */  andi       $a0, $s1, 0xffff
/* 6D238 8006C638 30AA7000 */  andi       $t2, $a1, 0x7000
/* 6D23C 8006C63C 01402825 */  or         $a1, $t2, $zero
/* 6D240 8006C640 04A10003 */  bgez       $a1, .L8006C650
/* 6D244 8006C644 00055B03 */   sra       $t3, $a1, 0xc
/* 6D248 8006C648 24A10FFF */  addiu      $at, $a1, 0xfff
/* 6D24C 8006C64C 00015B03 */  sra        $t3, $at, 0xc
.L8006C650:
/* 6D250 8006C650 0C019A59 */  jal        func_80066964
/* 6D254 8006C654 3165FFFF */   andi      $a1, $t3, 0xffff
/* 6D258 8006C658 0C019A84 */  jal        func_80066A10
/* 6D25C 8006C65C 3224FFFF */   andi      $a0, $s1, 0xffff
/* 6D260 8006C660 8E0D0080 */  lw         $t5, 0x80($s0)
/* 6D264 8006C664 3C19800D */  lui        $t9, 0x800d
/* 6D268 8006C668 31AE0020 */  andi       $t6, $t5, 0x20
/* 6D26C 8006C66C 11C00006 */  beqz       $t6, .L8006C688
/* 6D270 8006C670 00000000 */   nop
/* 6D274 8006C674 C60400B4 */  lwc1       $f4, 0xb4($s0)
/* 6D278 8006C678 00000000 */  nop
/* 6D27C 8006C67C 46002187 */  neg.s      $f6, $f4
/* 6D280 8006C680 10000004 */  b          .L8006C694
/* 6D284 8006C684 E6060148 */   swc1      $f6, 0x148($s0)
.L8006C688:
/* 6D288 8006C688 C60800B4 */  lwc1       $f8, 0xb4($s0)
/* 6D28C 8006C68C 00000000 */  nop
/* 6D290 8006C690 E6080148 */  swc1       $f8, 0x148($s0)
.L8006C694:
/* 6D294 8006C694 8E0F0098 */  lw         $t7, 0x98($s0)
/* 6D298 8006C698 00000000 */  nop
/* 6D29C 8006C69C 31F80200 */  andi       $t8, $t7, 0x200
/* 6D2A0 8006C6A0 17000007 */  bnez       $t8, .L8006C6C0
/* 6D2A4 8006C6A4 00000000 */   nop
/* 6D2A8 8006C6A8 97392950 */  lhu        $t9, 0x2950($t9)
/* 6D2AC 8006C6AC 00000000 */  nop
/* 6D2B0 8006C6B0 12390003 */  beq        $s1, $t9, .L8006C6C0
/* 6D2B4 8006C6B4 00000000 */   nop
/* 6D2B8 8006C6B8 0C00A300 */  jal        func_80028C00
/* 6D2BC 8006C6BC 3224FFFF */   andi      $a0, $s1, 0xffff
.L8006C6C0:
/* 6D2C0 8006C6C0 0C019AF3 */  jal        func_80066BCC
/* 6D2C4 8006C6C4 3224FFFF */   andi      $a0, $s1, 0xffff
/* 6D2C8 8006C6C8 8E080098 */  lw         $t0, 0x98($s0)
/* 6D2CC 8006C6CC 3C01FFDF */  lui        $at, 0xffdf
/* 6D2D0 8006C6D0 3421F9FF */  ori        $at, $at, 0xf9ff
/* 6D2D4 8006C6D4 01014824 */  and        $t1, $t0, $at
/* 6D2D8 8006C6D8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 6D2DC 8006C6DC AE090098 */  sw         $t1, 0x98($s0)
/* 6D2E0 8006C6E0 8FB00014 */  lw         $s0, 0x14($sp)
/* 6D2E4 8006C6E4 8FB10018 */  lw         $s1, 0x18($sp)
/* 6D2E8 8006C6E8 03E00008 */  jr         $ra
/* 6D2EC 8006C6EC 27BD0020 */   addiu     $sp, $sp, 0x20
