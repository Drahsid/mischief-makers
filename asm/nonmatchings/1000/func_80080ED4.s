glabel func_80080ED4
/* 81AD4 80080ED4 27BDFFF8 */  addiu      $sp, $sp, -8
/* 81AD8 80080ED8 AFB00004 */  sw         $s0, 4($sp)
/* 81ADC 80080EDC AFA40008 */  sw         $a0, 8($sp)
/* 81AE0 80080EE0 84A30000 */  lh         $v1, ($a1)
/* 81AE4 80080EE4 240B7FFF */  addiu      $t3, $zero, 0x7fff
/* 81AE8 80080EE8 3086FFFF */  andi       $a2, $a0, 0xffff
/* 81AEC 80080EEC 11630016 */  beq        $t3, $v1, .L80080F48
/* 81AF0 80080EF0 00A01025 */   or        $v0, $a1, $zero
/* 81AF4 80080EF4 3C0C800F */  lui        $t4, %hi(gActors)
/* 81AF8 80080EF8 84440000 */  lh         $a0, ($v0)
/* 81AFC 80080EFC 258CF510 */  addiu      $t4, $t4, %lo(gActors)
/* 81B00 80080F00 00C03825 */  or         $a3, $a2, $zero
/* 81B04 80080F04 240D0198 */  addiu      $t5, $zero, 0x198
/* 81B08 80080F08 00871821 */  addu       $v1, $a0, $a3
.L80080F0C:
/* 81B0C 80080F0C 306EFFFF */  andi       $t6, $v1, 0xffff
/* 81B10 80080F10 01CD0019 */  multu      $t6, $t5
/* 81B14 80080F14 2442000A */  addiu      $v0, $v0, 0xa
/* 81B18 80080F18 00007812 */  mflo       $t7
/* 81B1C 80080F1C 018F4021 */  addu       $t0, $t4, $t7
/* 81B20 80080F20 8D180174 */  lw         $t8, 0x174($t0)
/* 81B24 80080F24 8D190154 */  lw         $t9, 0x154($t0)
/* 81B28 80080F28 AD180178 */  sw         $t8, 0x178($t0)
/* 81B2C 80080F2C AD19017C */  sw         $t9, 0x17c($t0)
/* 81B30 80080F30 84440000 */  lh         $a0, ($v0)
/* 81B34 80080F34 00000000 */  nop
/* 81B38 80080F38 1564FFF4 */  bne        $t3, $a0, .L80080F0C
/* 81B3C 80080F3C 00871821 */   addu      $v1, $a0, $a3
/* 81B40 80080F40 84A30000 */  lh         $v1, ($a1)
/* 81B44 80080F44 00A01025 */  or         $v0, $a1, $zero
.L80080F48:
/* 81B48 80080F48 3C0C800F */  lui        $t4, %hi(gActors)
/* 81B4C 80080F4C 258CF510 */  addiu      $t4, $t4, %lo(gActors)
/* 81B50 80080F50 11630026 */  beq        $t3, $v1, .L80080FEC
/* 81B54 80080F54 240D0198 */   addiu     $t5, $zero, 0x198
/* 81B58 80080F58 84440000 */  lh         $a0, ($v0)
/* 81B5C 80080F5C 00C03825 */  or         $a3, $a2, $zero
/* 81B60 80080F60 24100005 */  addiu      $s0, $zero, 5
.L80080F64:
/* 81B64 80080F64 844F0008 */  lh         $t7, 8($v0)
/* 81B68 80080F68 00871821 */  addu       $v1, $a0, $a3
/* 81B6C 80080F6C 306EFFFF */  andi       $t6, $v1, 0xffff
/* 81B70 80080F70 01C01825 */  or         $v1, $t6, $zero
/* 81B74 80080F74 05E10003 */  bgez       $t7, .L80080F84
/* 81B78 80080F78 000FC043 */   sra       $t8, $t7, 1
/* 81B7C 80080F7C 25E10001 */  addiu      $at, $t7, 1
/* 81B80 80080F80 0001C043 */  sra        $t8, $at, 1
.L80080F84:
/* 81B84 80080F84 03100019 */  multu      $t8, $s0
/* 81B88 80080F88 2442000A */  addiu      $v0, $v0, 0xa
/* 81B8C 80080F8C 00003012 */  mflo       $a2
/* 81B90 80080F90 0006C840 */  sll        $t9, $a2, 1
/* 81B94 80080F94 00B97021 */  addu       $t6, $a1, $t9
/* 81B98 80080F98 006D0019 */  multu      $v1, $t5
/* 81B9C 80080F9C 85CF0000 */  lh         $t7, ($t6)
/* 81BA0 80080FA0 00000000 */  nop
/* 81BA4 80080FA4 01E74821 */  addu       $t1, $t7, $a3
/* 81BA8 80080FA8 3138FFFF */  andi       $t8, $t1, 0xffff
/* 81BAC 80080FAC 0000C812 */  mflo       $t9
/* 81BB0 80080FB0 01994021 */  addu       $t0, $t4, $t9
/* 81BB4 80080FB4 00000000 */  nop
/* 81BB8 80080FB8 030D0019 */  multu      $t8, $t5
/* 81BBC 80080FBC 00007012 */  mflo       $t6
/* 81BC0 80080FC0 018E5021 */  addu       $t2, $t4, $t6
/* 81BC4 80080FC4 8D4F0178 */  lw         $t7, 0x178($t2)
/* 81BC8 80080FC8 00000000 */  nop
/* 81BCC 80080FCC AD0F0174 */  sw         $t7, 0x174($t0)
/* 81BD0 80080FD0 8D58017C */  lw         $t8, 0x17c($t2)
/* 81BD4 80080FD4 00000000 */  nop
/* 81BD8 80080FD8 AD180154 */  sw         $t8, 0x154($t0)
/* 81BDC 80080FDC 84440000 */  lh         $a0, ($v0)
/* 81BE0 80080FE0 00000000 */  nop
/* 81BE4 80080FE4 1564FFDF */  bne        $t3, $a0, .L80080F64
/* 81BE8 80080FE8 00000000 */   nop
.L80080FEC:
/* 81BEC 80080FEC 8FB00004 */  lw         $s0, 4($sp)
/* 81BF0 80080FF0 03E00008 */  jr         $ra
/* 81BF4 80080FF4 27BD0008 */   addiu     $sp, $sp, 8
