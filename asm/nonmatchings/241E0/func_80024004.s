glabel func_80024004
/* 24C04 80024004 3C0E800C */  lui        $t6, %hi(D_800BE6AC)
/* 24C08 80024008 95CEE6AC */  lhu        $t6, %lo(D_800BE6AC)($t6)
/* 24C0C 8002400C 34188000 */  ori        $t8, $zero, 0x8000
/* 24C10 80024010 31CFA400 */  andi       $t7, $t6, 0xa400
/* 24C14 80024014 15E00015 */  bnez       $t7, .L8002406C
/* 24C18 80024018 3C01800C */   lui       $at, %hi(D_800BE544)
/* 24C1C 8002401C 3C19800D */  lui        $t9, %hi(D_800D28E8)
/* 24C20 80024020 973928E8 */  lhu        $t9, %lo(D_800D28E8)($t9)
/* 24C24 80024024 A438E544 */  sh         $t8, %lo(D_800BE544)($at)
/* 24C28 80024028 2B210003 */  slti       $at, $t9, 3
/* 24C2C 8002402C 10200008 */  beqz       $at, .L80024050
/* 24C30 80024030 3C0B800C */   lui       $t3, 0x800c
/* 24C34 80024034 3C08800C */  lui        $t0, %hi(gPlayerPosYMirror)
/* 24C38 80024038 8D08E5DC */  lw         $t0, %lo(gPlayerPosYMirror)($t0)
/* 24C3C 8002403C 3C010028 */  lui        $at, 0x28
/* 24C40 80024040 01014821 */  addu       $t1, $t0, $at
/* 24C44 80024044 3C01800C */  lui        $at, %hi(D_800BE554)
/* 24C48 80024048 10000005 */  b          .L80024060
/* 24C4C 8002404C AC29E554 */   sw        $t1, %lo(D_800BE554)($at)
.L80024050:
/* 24C50 80024050 3C0A800C */  lui        $t2, %hi(gPlayerPosYMirror)
/* 24C54 80024054 8D4AE5DC */  lw         $t2, %lo(gPlayerPosYMirror)($t2)
/* 24C58 80024058 3C01800C */  lui        $at, %hi(D_800BE554)
/* 24C5C 8002405C AC2AE554 */  sw         $t2, %lo(D_800BE554)($at)
.L80024060:
/* 24C60 80024060 8D6BE5D8 */  lw         $t3, -0x1a28($t3)
/* 24C64 80024064 3C01800C */  lui        $at, %hi(D_800BE550)
/* 24C68 80024068 AC2BE550 */  sw         $t3, %lo(D_800BE550)($at)
.L8002406C:
/* 24C6C 8002406C 03E00008 */  jr         $ra
/* 24C70 80024070 00000000 */   nop
