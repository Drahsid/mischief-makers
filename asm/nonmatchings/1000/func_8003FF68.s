glabel func_8003FF68
/* 40B68 8003FF68 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 40B6C 8003FF6C 44857000 */  mtc1       $a1, $f14
/* 40B70 8003FF70 AFBF0014 */  sw         $ra, 0x14($sp)
/* 40B74 8003FF74 AFA40018 */  sw         $a0, 0x18($sp)
/* 40B78 8003FF78 2404018E */  addiu      $a0, $zero, 0x18e
/* 40B7C 8003FF7C 00002825 */  or         $a1, $zero, $zero
/* 40B80 8003FF80 00003025 */  or         $a2, $zero, $zero
/* 40B84 8003FF84 00003825 */  or         $a3, $zero, $zero
/* 40B88 8003FF88 0C00C4A1 */  jal        func_80031284
/* 40B8C 8003FF8C E7AE001C */   swc1      $f14, 0x1c($sp)
/* 40B90 8003FF90 C7AE001C */  lwc1       $f14, 0x1c($sp)
/* 40B94 8003FF94 1040003C */  beqz       $v0, .L80040088
/* 40B98 8003FF98 3044FFFF */   andi      $a0, $v0, 0xffff
/* 40B9C 8003FF9C 24060198 */  addiu      $a2, $zero, 0x198
/* 40BA0 8003FFA0 00460019 */  multu      $v0, $a2
/* 40BA4 8003FFA4 97A8001A */  lhu        $t0, 0x1a($sp)
/* 40BA8 8003FFA8 3C0141A0 */  lui        $at, 0x41a0
/* 40BAC 8003FFAC 44818000 */  mtc1       $at, $f16
/* 40BB0 8003FFB0 3C013FF8 */  lui        $at, 0x3ff8
/* 40BB4 8003FFB4 44812800 */  mtc1       $at, $f5
/* 40BB8 8003FFB8 44802000 */  mtc1       $zero, $f4
/* 40BBC 8003FFBC 46007021 */  cvt.d.s    $f0, $f14
/* 40BC0 8003FFC0 46240182 */  mul.d      $f6, $f0, $f4
/* 40BC4 8003FFC4 3C013FE8 */  lui        $at, 0x3fe8
/* 40BC8 8003FFC8 44815800 */  mtc1       $at, $f11
/* 40BCC 8003FFCC 44805000 */  mtc1       $zero, $f10
/* 40BD0 8003FFD0 00007012 */  mflo       $t6
/* 40BD4 8003FFD4 3C05800F */  lui        $a1, %hi(D_800EF510)
/* 40BD8 8003FFD8 462A0482 */  mul.d      $f18, $f0, $f10
/* 40BDC 8003FFDC 24A5F510 */  addiu      $a1, $a1, %lo(D_800EF510)
/* 40BE0 8003FFE0 01060019 */  multu      $t0, $a2
/* 40BE4 8003FFE4 00AE1821 */  addu       $v1, $a1, $t6
/* 40BE8 8003FFE8 240F0201 */  addiu      $t7, $zero, 0x201
/* 40BEC 8003FFEC 46203220 */  cvt.s.d    $f8, $f6
/* 40BF0 8003FFF0 34188003 */  ori        $t8, $zero, 0x8003
/* 40BF4 8003FFF4 46209120 */  cvt.s.d    $f4, $f18
/* 40BF8 8003FFF8 2419FFF6 */  addiu      $t9, $zero, -0xa
/* 40BFC 8003FFFC A46F0094 */  sh         $t7, 0x94($v1)
/* 40C00 80040000 AC780080 */  sw         $t8, 0x80($v1)
/* 40C04 80040004 E46800B4 */  swc1       $f8, 0xb4($v1)
/* 40C08 80040008 E46400B8 */  swc1       $f4, 0xb8($v1)
/* 40C0C 8004000C AC790154 */  sw         $t9, 0x154($v1)
/* 40C10 80040010 00004812 */  mflo       $t1
/* 40C14 80040014 00A95021 */  addu       $t2, $a1, $t1
/* 40C18 80040018 E4700148 */  swc1       $f16, 0x148($v1)
/* 40C1C 8004001C 8D4B0088 */  lw         $t3, 0x88($t2)
/* 40C20 80040020 3C014080 */  lui        $at, 0x4080
/* 40C24 80040024 44813000 */  mtc1       $at, $f6
/* 40C28 80040028 3C0CFFB0 */  lui        $t4, 0xffb0
/* 40C2C 8004002C AC6C0188 */  sw         $t4, 0x188($v1)
/* 40C30 80040030 3C01800F */  lui        $at, %hi(D_800EBCB4)
/* 40C34 80040034 AC6B0184 */  sw         $t3, 0x184($v1)
/* 40C38 80040038 E4660144 */  swc1       $f6, 0x144($v1)
/* 40C3C 8004003C C428BCB4 */  lwc1       $f8, %lo(D_800EBCB4)($at)
/* 40C40 80040040 C429BCB0 */  lwc1       $f9, -0x4350($at)
/* 40C44 80040044 3C014120 */  lui        $at, 0x4120
/* 40C48 80040048 46280282 */  mul.d      $f10, $f0, $f8
/* 40C4C 8004004C 44813000 */  mtc1       $at, $f6
/* 40C50 80040050 3C0D8022 */  lui        $t5, 0x8022
/* 40C54 80040054 35ADD4E8 */  ori        $t5, $t5, 0xd4e8
/* 40C58 80040058 AC6D018C */  sw         $t5, 0x18c($v1)
/* 40C5C 8004005C 462050A0 */  cvt.s.d    $f2, $f10
/* 40C60 80040060 46001307 */  neg.s      $f12, $f2
/* 40C64 80040064 00000000 */  nop
/* 40C68 80040068 46106483 */  div.s      $f18, $f12, $f16
/* 40C6C 8004006C E4620110 */  swc1       $f2, 0x110($v1)
/* 40C70 80040070 E4620114 */  swc1       $f2, 0x114($v1)
/* 40C74 80040074 46066203 */  div.s      $f8, $f12, $f6
/* 40C78 80040078 460E9102 */  mul.s      $f4, $f18, $f14
/* 40C7C 8004007C E4640118 */  swc1       $f4, 0x118($v1)
/* 40C80 80040080 460E4282 */  mul.s      $f10, $f8, $f14
/* 40C84 80040084 E46A011C */  swc1       $f10, 0x11c($v1)
.L80040088:
/* 40C88 80040088 8FBF0014 */  lw         $ra, 0x14($sp)
/* 40C8C 8004008C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 40C90 80040090 03E00008 */  jr         $ra
/* 40C94 80040094 00801025 */   or        $v0, $a0, $zero
