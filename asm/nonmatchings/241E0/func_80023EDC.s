glabel func_80023EDC
/* 24ADC 80023EDC 3C0E800C */  lui        $t6, %hi(D_800BE6AC)
/* 24AE0 80023EE0 95CEE6AC */  lhu        $t6, %lo(D_800BE6AC)($t6)
/* 24AE4 80023EE4 34188000 */  ori        $t8, $zero, 0x8000
/* 24AE8 80023EE8 31CFA400 */  andi       $t7, $t6, 0xa400
/* 24AEC 80023EEC 15E00019 */  bnez       $t7, .L80023F54
/* 24AF0 80023EF0 3C19800F */   lui       $t9, %hi(D_800EF590)
/* 24AF4 80023EF4 8F39F590 */  lw         $t9, %lo(D_800EF590)($t9)
/* 24AF8 80023EF8 3C01800C */  lui        $at, %hi(D_800BE544)
/* 24AFC 80023EFC 33280020 */  andi       $t0, $t9, 0x20
/* 24B00 80023F00 11000008 */  beqz       $t0, .L80023F24
/* 24B04 80023F04 A438E544 */   sh        $t8, %lo(D_800BE544)($at)
/* 24B08 80023F08 3C09800C */  lui        $t1, %hi(D_800BE5D8)
/* 24B0C 80023F0C 8D29E5D8 */  lw         $t1, %lo(D_800BE5D8)($t1)
/* 24B10 80023F10 3C01FFD0 */  lui        $at, 0xffd0
/* 24B14 80023F14 01215021 */  addu       $t2, $t1, $at
/* 24B18 80023F18 3C01800C */  lui        $at, %hi(D_800BE550)
/* 24B1C 80023F1C 10000007 */  b          .L80023F3C
/* 24B20 80023F20 AC2AE550 */   sw        $t2, %lo(D_800BE550)($at)
.L80023F24:
/* 24B24 80023F24 3C0B800C */  lui        $t3, %hi(D_800BE5D8)
/* 24B28 80023F28 8D6BE5D8 */  lw         $t3, %lo(D_800BE5D8)($t3)
/* 24B2C 80023F2C 3C010030 */  lui        $at, 0x30
/* 24B30 80023F30 01616021 */  addu       $t4, $t3, $at
/* 24B34 80023F34 3C01800C */  lui        $at, %hi(D_800BE550)
/* 24B38 80023F38 AC2CE550 */  sw         $t4, %lo(D_800BE550)($at)
.L80023F3C:
/* 24B3C 80023F3C 3C0D800C */  lui        $t5, %hi(D_800BE5DC)
/* 24B40 80023F40 8DADE5DC */  lw         $t5, %lo(D_800BE5DC)($t5)
/* 24B44 80023F44 3C010028 */  lui        $at, 0x28
/* 24B48 80023F48 01A17021 */  addu       $t6, $t5, $at
/* 24B4C 80023F4C 3C01800C */  lui        $at, %hi(D_800BE554)
/* 24B50 80023F50 AC2EE554 */  sw         $t6, %lo(D_800BE554)($at)
.L80023F54:
/* 24B54 80023F54 03E00008 */  jr         $ra
/* 24B58 80023F58 00000000 */   nop
