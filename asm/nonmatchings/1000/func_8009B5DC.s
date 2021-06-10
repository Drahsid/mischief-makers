glabel func_8009B5DC
/* 9C1DC 8009B5DC 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 9C1E0 8009B5E0 308400FF */  andi       $a0, $a0, 0xff
/* 9C1E4 8009B5E4 AFA00000 */  sw         $zero, ($sp)
.L8009B5E8:
/* 9C1E8 8009B5E8 8FAE0000 */  lw         $t6, ($sp)
/* 9C1EC 8009B5EC 3C018018 */  lui        $at, %hi(D_80185630)
/* 9C1F0 8009B5F0 000E7880 */  sll        $t7, $t6, 2
/* 9C1F4 8009B5F4 002F0821 */  addu       $at, $at, $t7
/* 9C1F8 8009B5F8 AC205630 */  sw         $zero, %lo(D_80185630)($at)
/* 9C1FC 8009B5FC 8FB80000 */  lw         $t8, ($sp)
/* 9C200 8009B600 27190001 */  addiu      $t9, $t8, 1
/* 9C204 8009B604 2B210010 */  slti       $at, $t9, 0x10
/* 9C208 8009B608 1420FFF7 */  bnez       $at, .L8009B5E8
/* 9C20C 8009B60C AFB90000 */   sw        $t9, ($sp)
/* 9C210 8009B610 24080001 */  addiu      $t0, $zero, 1
/* 9C214 8009B614 3C018018 */  lui        $at, %hi(D_8018566C)
/* 9C218 8009B618 AC28566C */  sw         $t0, %lo(D_8018566C)($at)
/* 9C21C 8009B61C 3C098018 */  lui        $t1, %hi(D_80185630)
/* 9C220 8009B620 25295630 */  addiu      $t1, $t1, %lo(D_80185630)
/* 9C224 8009B624 AFA9000C */  sw         $t1, 0xc($sp)
/* 9C228 8009B628 240A00FF */  addiu      $t2, $zero, 0xff
/* 9C22C 8009B62C A3AA0004 */  sb         $t2, 4($sp)
/* 9C230 8009B630 240B0001 */  addiu      $t3, $zero, 1
/* 9C234 8009B634 A3AB0005 */  sb         $t3, 5($sp)
/* 9C238 8009B638 240C0003 */  addiu      $t4, $zero, 3
/* 9C23C 8009B63C A3AC0006 */  sb         $t4, 6($sp)
/* 9C240 8009B640 A3A40007 */  sb         $a0, 7($sp)
/* 9C244 8009B644 240D00FF */  addiu      $t5, $zero, 0xff
/* 9C248 8009B648 A3AD0008 */  sb         $t5, 8($sp)
/* 9C24C 8009B64C 240E00FF */  addiu      $t6, $zero, 0xff
/* 9C250 8009B650 A3AE0009 */  sb         $t6, 9($sp)
/* 9C254 8009B654 240F00FF */  addiu      $t7, $zero, 0xff
/* 9C258 8009B658 A3AF000A */  sb         $t7, 0xa($sp)
/* 9C25C 8009B65C 241800FF */  addiu      $t8, $zero, 0xff
/* 9C260 8009B660 A3B8000B */  sb         $t8, 0xb($sp)
/* 9C264 8009B664 3C198018 */  lui        $t9, %hi(D_80185671)
/* 9C268 8009B668 93395671 */  lbu        $t9, %lo(D_80185671)($t9)
/* 9C26C 8009B66C AFA00000 */  sw         $zero, ($sp)
/* 9C270 8009B670 1B200014 */  blez       $t9, .L8009B6C4
/* 9C274 8009B674 00000000 */   nop
.L8009B678:
/* 9C278 8009B678 27A90004 */  addiu      $t1, $sp, 4
/* 9C27C 8009B67C 8D210000 */  lw         $at, ($t1)
/* 9C280 8009B680 8FA8000C */  lw         $t0, 0xc($sp)
/* 9C284 8009B684 A9010000 */  swl        $at, ($t0)
/* 9C288 8009B688 B9010003 */  swr        $at, 3($t0)
/* 9C28C 8009B68C 8D2B0004 */  lw         $t3, 4($t1)
/* 9C290 8009B690 A90B0004 */  swl        $t3, 4($t0)
/* 9C294 8009B694 B90B0007 */  swr        $t3, 7($t0)
/* 9C298 8009B698 8FAC000C */  lw         $t4, 0xc($sp)
/* 9C29C 8009B69C 258D0008 */  addiu      $t5, $t4, 8
/* 9C2A0 8009B6A0 AFAD000C */  sw         $t5, 0xc($sp)
/* 9C2A4 8009B6A4 8FAE0000 */  lw         $t6, ($sp)
/* 9C2A8 8009B6A8 3C188018 */  lui        $t8, %hi(D_80185671)
/* 9C2AC 8009B6AC 93185671 */  lbu        $t8, %lo(D_80185671)($t8)
/* 9C2B0 8009B6B0 25CF0001 */  addiu      $t7, $t6, 1
/* 9C2B4 8009B6B4 AFAF0000 */  sw         $t7, ($sp)
/* 9C2B8 8009B6B8 01F8082A */  slt        $at, $t7, $t8
/* 9C2BC 8009B6BC 1420FFEE */  bnez       $at, .L8009B678
/* 9C2C0 8009B6C0 00000000 */   nop
.L8009B6C4:
/* 9C2C4 8009B6C4 8FAA000C */  lw         $t2, 0xc($sp)
/* 9C2C8 8009B6C8 241900FE */  addiu      $t9, $zero, 0xfe
/* 9C2CC 8009B6CC A1590000 */  sb         $t9, ($t2)
/* 9C2D0 8009B6D0 10000001 */  b          .L8009B6D8
/* 9C2D4 8009B6D4 00000000 */   nop
.L8009B6D8:
/* 9C2D8 8009B6D8 03E00008 */  jr         $ra
/* 9C2DC 8009B6DC 27BD0010 */   addiu     $sp, $sp, 0x10
