glabel func_8002C5C4
/* 2D1C4 8002C5C4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2D1C8 8002C5C8 000E4080 */  sll        $t0, $t6, 2
/* 2D1CC 8002C5CC 010E4023 */  subu       $t0, $t0, $t6
/* 2D1D0 8002C5D0 00084080 */  sll        $t0, $t0, 2
/* 2D1D4 8002C5D4 010E4021 */  addu       $t0, $t0, $t6
/* 2D1D8 8002C5D8 00084080 */  sll        $t0, $t0, 2
/* 2D1DC 8002C5DC 44876000 */  mtc1       $a3, $f12
/* 2D1E0 8002C5E0 010E4023 */  subu       $t0, $t0, $t6
/* 2D1E4 8002C5E4 3C09800F */  lui        $t1, %hi(gActors)
/* 2D1E8 8002C5E8 3C013FF0 */  lui        $at, 0x3ff0
/* 2D1EC 8002C5EC 44812800 */  mtc1       $at, $f5
/* 2D1F0 8002C5F0 44802000 */  mtc1       $zero, $f4
/* 2D1F4 8002C5F4 2529F510 */  addiu      $t1, $t1, %lo(gActors)
/* 2D1F8 8002C5F8 000840C0 */  sll        $t0, $t0, 3
/* 2D1FC 8002C5FC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2D200 8002C600 01091021 */  addu       $v0, $t0, $t1
/* 2D204 8002C604 460061A1 */  cvt.d.s    $f6, $f12
/* 2D208 8002C608 46262032 */  c.eq.d     $f4, $f6
/* 2D20C 8002C60C 3C0C0001 */  lui        $t4, 1
/* 2D210 8002C610 AFA40020 */  sw         $a0, 0x20($sp)
/* 2D214 8002C614 AFA60028 */  sw         $a2, 0x28($sp)
/* 2D218 8002C618 0006C400 */  sll        $t8, $a2, 0x10
/* 2D21C 8002C61C 240A0010 */  addiu      $t2, $zero, 0x10
/* 2D220 8002C620 240B0008 */  addiu      $t3, $zero, 8
/* 2D224 8002C624 358C1403 */  ori        $t4, $t4, 0x1403
/* 2D228 8002C628 00183403 */  sra        $a2, $t8, 0x10
/* 2D22C 8002C62C 01C02025 */  or         $a0, $t6, $zero
/* 2D230 8002C630 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2D234 8002C634 AFA50024 */  sw         $a1, 0x24($sp)
/* 2D238 8002C638 A44A00D0 */  sh         $t2, 0xd0($v0)
/* 2D23C 8002C63C A44B0094 */  sh         $t3, 0x94($v0)
/* 2D240 8002C640 AC4C0080 */  sw         $t4, 0x80($v0)
/* 2D244 8002C644 45010005 */  bc1t       .L8002C65C
/* 2D248 8002C648 A4450084 */   sh        $a1, 0x84($v0)
/* 2D24C 8002C64C 356E0001 */  ori        $t6, $t3, 1
/* 2D250 8002C650 A44E0094 */  sh         $t6, 0x94($v0)
/* 2D254 8002C654 E44C00B4 */  swc1       $f12, 0xb4($v0)
/* 2D258 8002C658 E44C00B8 */  swc1       $f12, 0xb8($v0)
.L8002C65C:
/* 2D25C 8002C65C AC460158 */  sw         $a2, 0x158($v0)
/* 2D260 8002C660 0C00B144 */  jal        func_8002C510
/* 2D264 8002C664 AFA2001C */   sw        $v0, 0x1c($sp)
/* 2D268 8002C668 8FA30030 */  lw         $v1, 0x30($sp)
/* 2D26C 8002C66C 8FA2001C */  lw         $v0, 0x1c($sp)
/* 2D270 8002C670 10600005 */  beqz       $v1, .L8002C688
/* 2D274 8002C674 2408000A */   addiu     $t0, $zero, 0xa
/* 2D278 8002C678 944F0094 */  lhu        $t7, 0x94($v0)
/* 2D27C 8002C67C AC43018C */  sw         $v1, 0x18c($v0)
/* 2D280 8002C680 35F80200 */  ori        $t8, $t7, 0x200
/* 2D284 8002C684 A4580094 */  sh         $t8, 0x94($v0)
.L8002C688:
/* 2D288 8002C688 87A30036 */  lh         $v1, 0x36($sp)
/* 2D28C 8002C68C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2D290 8002C690 2409000A */  addiu      $t1, $zero, 0xa
/* 2D294 8002C694 240A0002 */  addiu      $t2, $zero, 2
/* 2D298 8002C698 240B0200 */  addiu      $t3, $zero, 0x200
/* 2D29C 8002C69C AC43015C */  sw         $v1, 0x15c($v0)
/* 2D2A0 8002C6A0 04610003 */  bgez       $v1, .L8002C6B0
/* 2D2A4 8002C6A4 0003CB43 */   sra       $t9, $v1, 0xd
/* 2D2A8 8002C6A8 24611FFF */  addiu      $at, $v1, 0x1fff
/* 2D2AC 8002C6AC 0001CB43 */  sra        $t9, $at, 0xd
.L8002C6B0:
/* 2D2B0 8002C6B0 44999000 */  mtc1       $t9, $f18
/* 2D2B4 8002C6B4 A44800CE */  sh         $t0, 0xce($v0)
/* 2D2B8 8002C6B8 468094A0 */  cvt.s.w    $f18, $f18
/* 2D2BC 8002C6BC A44900E0 */  sh         $t1, 0xe0($v0)
/* 2D2C0 8002C6C0 A44000E4 */  sh         $zero, 0xe4($v0)
/* 2D2C4 8002C6C4 E4520118 */  swc1       $f18, 0x118($v0)
/* 2D2C8 8002C6C8 A04A00DB */  sb         $t2, 0xdb($v0)
/* 2D2CC 8002C6CC A04000DF */  sb         $zero, 0xdf($v0)
/* 2D2D0 8002C6D0 AC4B0178 */  sw         $t3, 0x178($v0)
/* 2D2D4 8002C6D4 03E00008 */  jr         $ra
/* 2D2D8 8002C6D8 27BD0020 */   addiu     $sp, $sp, 0x20
