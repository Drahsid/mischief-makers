glabel func_8001B2F4
/* 1BEF4 8001B2F4 3C048018 */  lui        $a0, %hi(gCurrentStage)
/* 1BEF8 8001B2F8 94848162 */  lhu        $a0, %lo(gCurrentStage)($a0)
/* 1BEFC 8001B2FC 3C0F800C */  lui        $t7, %hi(gTimeRecords)
/* 1BF00 8001B300 25EF4F28 */  addiu      $t7, $t7, %lo(gTimeRecords)
/* 1BF04 8001B304 00047040 */  sll        $t6, $a0, 1
/* 1BF08 8001B308 3C078017 */  lui        $a3, %hi(gWorldProgress)
/* 1BF0C 8001B30C 01CF2821 */  addu       $a1, $t6, $t7
/* 1BF10 8001B310 94A20000 */  lhu        $v0, ($a1)
/* 1BF14 8001B314 24E71B18 */  addiu      $a3, $a3, %lo(gWorldProgress)
/* 1BF18 8001B318 3C068018 */  lui        $a2, %hi(gStageTime)
/* 1BF1C 8001B31C 90E30000 */  lbu        $v1, ($a3)
/* 1BF20 8001B320 94C681E0 */  lhu        $a2, %lo(gStageTime)($a2)
/* 1BF24 8001B324 3C018018 */  lui        $at, %hi(D_80178150)
/* 1BF28 8001B328 A4228150 */  sh         $v0, %lo(D_80178150)($at)
/* 1BF2C 8001B32C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1BF30 8001B330 00C2082A */  slt        $at, $a2, $v0
/* 1BF34 8001B334 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1BF38 8001B338 10200002 */  beqz       $at, .L8001B344
/* 1BF3C 8001B33C A7A3001E */   sh        $v1, 0x1e($sp)
/* 1BF40 8001B340 A4A60000 */  sh         $a2, ($a1)
.L8001B344:
/* 1BF44 8001B344 14640003 */  bne        $v1, $a0, .L8001B354
/* 1BF48 8001B348 3C198018 */   lui       $t9, %hi(gRedGems)
/* 1BF4C 8001B34C 24980001 */  addiu      $t8, $a0, 1
/* 1BF50 8001B350 A0F80000 */  sb         $t8, ($a3)
.L8001B354:
/* 1BF54 8001B354 3C08800C */  lui        $t0, %hi(D_800C5008)
/* 1BF58 8001B358 91085008 */  lbu        $t0, %lo(D_800C5008)($t0)
/* 1BF5C 8001B35C 97398136 */  lhu        $t9, %lo(gRedGems)($t9)
/* 1BF60 8001B360 3C018017 */  lui        $at, %hi(D_80171AD0)
/* 1BF64 8001B364 00084840 */  sll        $t1, $t0, 1
/* 1BF68 8001B368 00290821 */  addu       $at, $at, $t1
/* 1BF6C 8001B36C 0C006C91 */  jal        func_8001B244
/* 1BF70 8001B370 A4391AD0 */   sh        $t9, %lo(D_80171AD0)($at)
/* 1BF74 8001B374 3C03800C */  lui        $v1, %hi(D_800C5008)
/* 1BF78 8001B378 90635008 */  lbu        $v1, %lo(D_800C5008)($v1)
/* 1BF7C 8001B37C 3C018017 */  lui        $at, %hi(D_80171AD4)
/* 1BF80 8001B380 00035040 */  sll        $t2, $v1, 1
/* 1BF84 8001B384 002A0821 */  addu       $at, $at, $t2
/* 1BF88 8001B388 A4221AD4 */  sh         $v0, %lo(D_80171AD4)($at)
/* 1BF8C 8001B38C 3C018017 */  lui        $at, %hi(D_80171AD8)
/* 1BF90 8001B390 000370C0 */  sll        $t6, $v1, 3
/* 1BF94 8001B394 002E0821 */  addu       $at, $at, $t6
/* 1BF98 8001B398 240C0000 */  addiu      $t4, $zero, 0
/* 1BF9C 8001B39C AC2C1AD8 */  sw         $t4, %lo(D_80171AD8)($at)
/* 1BFA0 8001B3A0 3C0B8013 */  lui        $t3, %hi(gPlayTime)
/* 1BFA4 8001B3A4 8D6B70C8 */  lw         $t3, %lo(gPlayTime)($t3)
/* 1BFA8 8001B3A8 3C018017 */  lui        $at, %hi(D_80171ADC)
/* 1BFAC 8001B3AC 002E0821 */  addu       $at, $at, $t6
/* 1BFB0 8001B3B0 0C0015DC */  jal        func_80005770
/* 1BFB4 8001B3B4 AC2B1ADC */   sw        $t3, %lo(D_80171ADC)($at)
/* 1BFB8 8001B3B8 87AF001E */  lh         $t7, 0x1e($sp)
/* 1BFBC 8001B3BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1BFC0 8001B3C0 3C018017 */  lui        $at, %hi(gWorldProgress)
/* 1BFC4 8001B3C4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1BFC8 8001B3C8 03E00008 */  jr         $ra
/* 1BFCC 8001B3CC A02F1B18 */   sb        $t7, %lo(gWorldProgress)($at)
