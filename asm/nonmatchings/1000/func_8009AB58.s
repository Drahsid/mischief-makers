glabel func_8009AB58
/* 9B758 8009AB58 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 9B75C 8009AB5C 3C0E8018 */  lui        $t6, %hi(D_80185630)
/* 9B760 8009AB60 25CE5630 */  addiu      $t6, $t6, %lo(D_80185630)
/* 9B764 8009AB64 AFAE000C */  sw         $t6, 0xc($sp)
/* 9B768 8009AB68 3C0F8018 */  lui        $t7, %hi(D_80185671)
/* 9B76C 8009AB6C 91EF5671 */  lbu        $t7, %lo(D_80185671)($t7)
/* 9B770 8009AB70 AFA00000 */  sw         $zero, ($sp)
/* 9B774 8009AB74 19E00023 */  blez       $t7, .L8009AC04
/* 9B778 8009AB78 00000000 */   nop
.L8009AB7C:
/* 9B77C 8009AB7C 8FB9000C */  lw         $t9, 0xc($sp)
/* 9B780 8009AB80 27B80004 */  addiu      $t8, $sp, 4
/* 9B784 8009AB84 8B210000 */  lwl        $at, ($t9)
/* 9B788 8009AB88 9B210003 */  lwr        $at, 3($t9)
/* 9B78C 8009AB8C AF010000 */  sw         $at, ($t8)
/* 9B790 8009AB90 8B290004 */  lwl        $t1, 4($t9)
/* 9B794 8009AB94 9B290007 */  lwr        $t1, 7($t9)
/* 9B798 8009AB98 AF090004 */  sw         $t1, 4($t8)
/* 9B79C 8009AB9C 93AA0006 */  lbu        $t2, 6($sp)
/* 9B7A0 8009ABA0 314B00C0 */  andi       $t3, $t2, 0xc0
/* 9B7A4 8009ABA4 000B6103 */  sra        $t4, $t3, 4
/* 9B7A8 8009ABA8 A08C0004 */  sb         $t4, 4($a0)
/* 9B7AC 8009ABAC 908D0004 */  lbu        $t5, 4($a0)
/* 9B7B0 8009ABB0 11A00003 */  beqz       $t5, .L8009ABC0
/* 9B7B4 8009ABB4 00000000 */   nop
/* 9B7B8 8009ABB8 10000007 */  b          .L8009ABD8
/* 9B7BC 8009ABBC 00000000 */   nop
.L8009ABC0:
/* 9B7C0 8009ABC0 97AE0008 */  lhu        $t6, 8($sp)
/* 9B7C4 8009ABC4 A48E0000 */  sh         $t6, ($a0)
/* 9B7C8 8009ABC8 83AF000A */  lb         $t7, 0xa($sp)
/* 9B7CC 8009ABCC A08F0002 */  sb         $t7, 2($a0)
/* 9B7D0 8009ABD0 83A8000B */  lb         $t0, 0xb($sp)
/* 9B7D4 8009ABD4 A0880003 */  sb         $t0, 3($a0)
.L8009ABD8:
/* 9B7D8 8009ABD8 8FB80000 */  lw         $t8, ($sp)
/* 9B7DC 8009ABDC 3C0B8018 */  lui        $t3, %hi(D_80185671)
/* 9B7E0 8009ABE0 916B5671 */  lbu        $t3, %lo(D_80185671)($t3)
/* 9B7E4 8009ABE4 8FA9000C */  lw         $t1, 0xc($sp)
/* 9B7E8 8009ABE8 27190001 */  addiu      $t9, $t8, 1
/* 9B7EC 8009ABEC 032B082A */  slt        $at, $t9, $t3
/* 9B7F0 8009ABF0 252A0008 */  addiu      $t2, $t1, 8
/* 9B7F4 8009ABF4 AFAA000C */  sw         $t2, 0xc($sp)
/* 9B7F8 8009ABF8 AFB90000 */  sw         $t9, ($sp)
/* 9B7FC 8009ABFC 1420FFDF */  bnez       $at, .L8009AB7C
/* 9B800 8009AC00 24840006 */   addiu     $a0, $a0, 6
.L8009AC04:
/* 9B804 8009AC04 10000001 */  b          .L8009AC0C
/* 9B808 8009AC08 00000000 */   nop
.L8009AC0C:
/* 9B80C 8009AC0C 03E00008 */  jr         $ra
/* 9B810 8009AC10 27BD0010 */   addiu     $sp, $sp, 0x10
