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
