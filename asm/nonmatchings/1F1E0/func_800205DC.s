glabel func_800205DC
/* 211DC 800205DC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 211E0 800205E0 AFB1001C */  sw         $s1, 0x1c($sp)
/* 211E4 800205E4 3C118018 */  lui        $s1, %hi(D_80178136)
/* 211E8 800205E8 96318136 */  lhu        $s1, %lo(D_80178136)($s1)
/* 211EC 800205EC AFB20020 */  sw         $s2, 0x20($sp)
/* 211F0 800205F0 2412000A */  addiu      $s2, $zero, 0xa
/* 211F4 800205F4 0232001A */  div        $zero, $s1, $s2
/* 211F8 800205F8 AFB00018 */  sw         $s0, 0x18($sp)
/* 211FC 800205FC 02208025 */  or         $s0, $s1, $zero
/* 21200 80020600 AFBF0024 */  sw         $ra, 0x24($sp)
/* 21204 80020604 24040006 */  addiu      $a0, $zero, 6
/* 21208 80020608 24050001 */  addiu      $a1, $zero, 1
/* 2120C 8002060C 16400002 */  bnez       $s2, .L80020618
/* 21210 80020610 00000000 */   nop
/* 21214 80020614 0007000D */  break      7
.L80020618:
/* 21218 80020618 2401FFFF */   addiu     $at, $zero, -1
/* 2121C 8002061C 16410004 */  bne        $s2, $at, .L80020630
/* 21220 80020620 3C018000 */   lui       $at, 0x8000
/* 21224 80020624 16010002 */  bne        $s0, $at, .L80020630
/* 21228 80020628 00000000 */   nop
/* 2122C 8002062C 0006000D */  break      6
.L80020630:
/* 21230 80020630 00003825 */   or        $a3, $zero, $zero
/* 21234 80020634 00003010 */  mfhi       $a2
/* 21238 80020638 24C60051 */  addiu      $a2, $a2, 0x51
/* 2123C 8002063C 00067400 */  sll        $t6, $a2, 0x10
/* 21240 80020640 0C020D46 */  jal        func_80083518
/* 21244 80020644 000E3403 */   sra       $a2, $t6, 0x10
/* 21248 80020648 0212001A */  div        $zero, $s0, $s2
/* 2124C 8002064C 24040005 */  addiu      $a0, $zero, 5
/* 21250 80020650 16400002 */  bnez       $s2, .L8002065C
/* 21254 80020654 00000000 */   nop
/* 21258 80020658 0007000D */  break      7
.L8002065C:
/* 2125C 8002065C 2401FFFF */   addiu     $at, $zero, -1
/* 21260 80020660 16410004 */  bne        $s2, $at, .L80020674
/* 21264 80020664 3C018000 */   lui       $at, 0x8000
/* 21268 80020668 16010002 */  bne        $s0, $at, .L80020674
/* 2126C 8002066C 00000000 */   nop
/* 21270 80020670 0006000D */  break      6
.L80020674:
/* 21274 80020674 24050001 */   addiu     $a1, $zero, 1
/* 21278 80020678 00003825 */  or         $a3, $zero, $zero
/* 2127C 8002067C 00008812 */  mflo       $s1
/* 21280 80020680 3238FFFF */  andi       $t8, $s1, 0xffff
/* 21284 80020684 03008025 */  or         $s0, $t8, $zero
/* 21288 80020688 0312001A */  div        $zero, $t8, $s2
/* 2128C 8002068C 03008825 */  or         $s1, $t8, $zero
/* 21290 80020690 16400002 */  bnez       $s2, .L8002069C
/* 21294 80020694 00000000 */   nop
/* 21298 80020698 0007000D */  break      7
.L8002069C:
/* 2129C 8002069C 2401FFFF */   addiu     $at, $zero, -1
/* 212A0 800206A0 16410004 */  bne        $s2, $at, .L800206B4
/* 212A4 800206A4 3C018000 */   lui       $at, 0x8000
/* 212A8 800206A8 16010002 */  bne        $s0, $at, .L800206B4
/* 212AC 800206AC 00000000 */   nop
/* 212B0 800206B0 0006000D */  break      6
.L800206B4:
/* 212B4 800206B4 00003010 */   mfhi      $a2
/* 212B8 800206B8 24C60051 */  addiu      $a2, $a2, 0x51
/* 212BC 800206BC 0006CC00 */  sll        $t9, $a2, 0x10
/* 212C0 800206C0 0C020D46 */  jal        func_80083518
/* 212C4 800206C4 00193403 */   sra       $a2, $t9, 0x10
/* 212C8 800206C8 0212001A */  div        $zero, $s0, $s2
/* 212CC 800206CC 24040004 */  addiu      $a0, $zero, 4
/* 212D0 800206D0 16400002 */  bnez       $s2, .L800206DC
/* 212D4 800206D4 00000000 */   nop
/* 212D8 800206D8 0007000D */  break      7
.L800206DC:
/* 212DC 800206DC 2401FFFF */   addiu     $at, $zero, -1
/* 212E0 800206E0 16410004 */  bne        $s2, $at, .L800206F4
/* 212E4 800206E4 3C018000 */   lui       $at, 0x8000
/* 212E8 800206E8 16010002 */  bne        $s0, $at, .L800206F4
/* 212EC 800206EC 00000000 */   nop
/* 212F0 800206F0 0006000D */  break      6
.L800206F4:
/* 212F4 800206F4 24050001 */   addiu     $a1, $zero, 1
/* 212F8 800206F8 00003825 */  or         $a3, $zero, $zero
/* 212FC 800206FC 00008812 */  mflo       $s1
/* 21300 80020700 3229FFFF */  andi       $t1, $s1, 0xffff
/* 21304 80020704 01208025 */  or         $s0, $t1, $zero
/* 21308 80020708 0132001A */  div        $zero, $t1, $s2
/* 2130C 8002070C 01208825 */  or         $s1, $t1, $zero
/* 21310 80020710 16400002 */  bnez       $s2, .L8002071C
/* 21314 80020714 00000000 */   nop
/* 21318 80020718 0007000D */  break      7
.L8002071C:
/* 2131C 8002071C 2401FFFF */   addiu     $at, $zero, -1
/* 21320 80020720 16410004 */  bne        $s2, $at, .L80020734
/* 21324 80020724 3C018000 */   lui       $at, 0x8000
/* 21328 80020728 16010002 */  bne        $s0, $at, .L80020734
/* 2132C 8002072C 00000000 */   nop
/* 21330 80020730 0006000D */  break      6
.L80020734:
/* 21334 80020734 00003010 */   mfhi      $a2
/* 21338 80020738 24C60051 */  addiu      $a2, $a2, 0x51
/* 2133C 8002073C 00065400 */  sll        $t2, $a2, 0x10
/* 21340 80020740 0C020D46 */  jal        func_80083518
/* 21344 80020744 000A3403 */   sra       $a2, $t2, 0x10
/* 21348 80020748 0212001A */  div        $zero, $s0, $s2
/* 2134C 8002074C 24040003 */  addiu      $a0, $zero, 3
/* 21350 80020750 16400002 */  bnez       $s2, .L8002075C
/* 21354 80020754 00000000 */   nop
/* 21358 80020758 0007000D */  break      7
.L8002075C:
/* 2135C 8002075C 2401FFFF */   addiu     $at, $zero, -1
/* 21360 80020760 16410004 */  bne        $s2, $at, .L80020774
/* 21364 80020764 3C018000 */   lui       $at, 0x8000
/* 21368 80020768 16010002 */  bne        $s0, $at, .L80020774
/* 2136C 8002076C 00000000 */   nop
/* 21370 80020770 0006000D */  break      6
.L80020774:
/* 21374 80020774 24050001 */   addiu     $a1, $zero, 1
/* 21378 80020778 00003825 */  or         $a3, $zero, $zero
/* 2137C 8002077C 00008812 */  mflo       $s1
/* 21380 80020780 322CFFFF */  andi       $t4, $s1, 0xffff
/* 21384 80020784 01808825 */  or         $s1, $t4, $zero
/* 21388 80020788 0192001A */  div        $zero, $t4, $s2
/* 2138C 8002078C 16400002 */  bnez       $s2, .L80020798
/* 21390 80020790 00000000 */   nop
/* 21394 80020794 0007000D */  break      7
.L80020798:
/* 21398 80020798 2401FFFF */   addiu     $at, $zero, -1
/* 2139C 8002079C 16410004 */  bne        $s2, $at, .L800207B0
/* 213A0 800207A0 3C018000 */   lui       $at, 0x8000
/* 213A4 800207A4 16210002 */  bne        $s1, $at, .L800207B0
/* 213A8 800207A8 00000000 */   nop
/* 213AC 800207AC 0006000D */  break      6
.L800207B0:
/* 213B0 800207B0 00003010 */   mfhi      $a2
/* 213B4 800207B4 24C60051 */  addiu      $a2, $a2, 0x51
/* 213B8 800207B8 00066C00 */  sll        $t5, $a2, 0x10
/* 213BC 800207BC 0C020D46 */  jal        func_80083518
/* 213C0 800207C0 000D3403 */   sra       $a2, $t5, 0x10
/* 213C4 800207C4 8FBF0024 */  lw         $ra, 0x24($sp)
/* 213C8 800207C8 8FB00018 */  lw         $s0, 0x18($sp)
/* 213CC 800207CC 8FB1001C */  lw         $s1, 0x1c($sp)
/* 213D0 800207D0 8FB20020 */  lw         $s2, 0x20($sp)
/* 213D4 800207D4 03E00008 */  jr         $ra
/* 213D8 800207D8 27BD0028 */   addiu     $sp, $sp, 0x28