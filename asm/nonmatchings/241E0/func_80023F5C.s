glabel func_80023F5C
/* 24B5C 80023F5C 3C0E800C */  lui        $t6, %hi(D_800BE6AC)
/* 24B60 80023F60 95CEE6AC */  lhu        $t6, %lo(D_800BE6AC)($t6)
/* 24B64 80023F64 3C02800F */  lui        $v0, %hi(gActors)
/* 24B68 80023F68 31CFA400 */  andi       $t7, $t6, 0xa400
/* 24B6C 80023F6C 15E00023 */  bnez       $t7, .L80023FFC
/* 24B70 80023F70 2442F510 */   addiu     $v0, $v0, %lo(gActors)
/* 24B74 80023F74 34188000 */  ori        $t8, $zero, 0x8000
/* 24B78 80023F78 3C01800C */  lui        $at, %hi(D_800BE544)
/* 24B7C 80023F7C 3C19800C */  lui        $t9, %hi(gPlayerPosXMirror)
/* 24B80 80023F80 8F39E5D8 */  lw         $t9, %lo(gPlayerPosXMirror)($t9)
/* 24B84 80023F84 A438E544 */  sh         $t8, %lo(D_800BE544)($at)
/* 24B88 80023F88 3C01800C */  lui        $at, %hi(D_800BE550)
/* 24B8C 80023F8C AC39E550 */  sw         $t9, %lo(D_800BE550)($at)
/* 24B90 80023F90 944800D6 */  lhu        $t0, 0xd6($v0)
/* 24B94 80023F94 24010031 */  addiu      $at, $zero, 0x31
/* 24B98 80023F98 15010012 */  bne        $t0, $at, .L80023FE4
/* 24B9C 80023F9C 00000000 */   nop
/* 24BA0 80023FA0 94494D52 */  lhu        $t1, 0x4d52($v0)
/* 24BA4 80023FA4 24010907 */  addiu      $at, $zero, 0x907
/* 24BA8 80023FA8 1521000E */  bne        $t1, $at, .L80023FE4
/* 24BAC 80023FAC 00000000 */   nop
/* 24BB0 80023FB0 8C4A5130 */  lw         $t2, 0x5130($v0)
/* 24BB4 80023FB4 3C0D800C */  lui        $t5, %hi(D_800BE55C)
/* 24BB8 80023FB8 314B8000 */  andi       $t3, $t2, 0x8000
/* 24BBC 80023FBC 11600009 */  beqz       $t3, .L80023FE4
/* 24BC0 80023FC0 00000000 */   nop
/* 24BC4 80023FC4 8C4C4D0C */  lw         $t4, 0x4d0c($v0)
/* 24BC8 80023FC8 8DADE55C */  lw         $t5, %lo(D_800BE55C)($t5)
/* 24BCC 80023FCC 3C010018 */  lui        $at, 0x18
/* 24BD0 80023FD0 018D7021 */  addu       $t6, $t4, $t5
/* 24BD4 80023FD4 01C17821 */  addu       $t7, $t6, $at
/* 24BD8 80023FD8 3C01800C */  lui        $at, %hi(D_800BE554)
/* 24BDC 80023FDC 03E00008 */  jr         $ra
/* 24BE0 80023FE0 AC2FE554 */   sw        $t7, %lo(D_800BE554)($at)
.L80023FE4:
/* 24BE4 80023FE4 3C18800C */  lui        $t8, %hi(gPlayerPosYMirror)
/* 24BE8 80023FE8 8F18E5DC */  lw         $t8, %lo(gPlayerPosYMirror)($t8)
/* 24BEC 80023FEC 3C010028 */  lui        $at, 0x28
/* 24BF0 80023FF0 0301C821 */  addu       $t9, $t8, $at
/* 24BF4 80023FF4 3C01800C */  lui        $at, %hi(D_800BE554)
/* 24BF8 80023FF8 AC39E554 */  sw         $t9, %lo(D_800BE554)($at)
.L80023FFC:
/* 24BFC 80023FFC 03E00008 */  jr         $ra
/* 24C00 80024000 00000000 */   nop
