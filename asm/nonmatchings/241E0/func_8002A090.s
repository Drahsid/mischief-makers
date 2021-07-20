glabel func_8002A090
/* 2AC90 8002A090 04A10003 */  bgez       $a1, .L8002A0A0
/* 2AC94 8002A094 00A4082A */   slt       $at, $a1, $a0
/* 2AC98 8002A098 00052823 */  negu       $a1, $a1
/* 2AC9C 8002A09C 00A4082A */  slt        $at, $a1, $a0
.L8002A0A0:
/* 2ACA0 8002A0A0 10200002 */  beqz       $at, .L8002A0AC
/* 2ACA4 8002A0A4 00051023 */   negu      $v0, $a1
/* 2ACA8 8002A0A8 00A02025 */  or         $a0, $a1, $zero
.L8002A0AC:
/* 2ACAC 8002A0AC 0082082A */  slt        $at, $a0, $v0
/* 2ACB0 8002A0B0 10200002 */  beqz       $at, .L8002A0BC
/* 2ACB4 8002A0B4 00000000 */   nop
/* 2ACB8 8002A0B8 00402025 */  or         $a0, $v0, $zero
.L8002A0BC:
/* 2ACBC 8002A0BC 03E00008 */  jr         $ra
/* 2ACC0 8002A0C0 00801025 */   or        $v0, $a0, $zero
