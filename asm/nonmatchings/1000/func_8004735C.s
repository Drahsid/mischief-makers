glabel func_8004735C
/* 47F5C 8004735C 3C02800D */  lui        $v0, %hi(D_800D2928)
/* 47F60 80047360 3C03800D */  lui        $v1, %hi(D_800D28FC)
/* 47F64 80047364 246328FC */  addiu      $v1, $v1, %lo(D_800D28FC)
/* 47F68 80047368 24422928 */  addiu      $v0, $v0, %lo(D_800D2928)
/* 47F6C 8004736C 8C6E0000 */  lw         $t6, ($v1)
/* 47F70 80047370 8C580000 */  lw         $t8, ($v0)
/* 47F74 80047374 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 47F78 80047378 35CF0008 */  ori        $t7, $t6, 8
/* 47F7C 8004737C 2719FFFF */  addiu      $t9, $t8, -1
/* 47F80 80047380 AFBF001C */  sw         $ra, 0x1c($sp)
/* 47F84 80047384 AFA40020 */  sw         $a0, 0x20($sp)
/* 47F88 80047388 AFA50024 */  sw         $a1, 0x24($sp)
/* 47F8C 8004738C AC6F0000 */  sw         $t7, ($v1)
/* 47F90 80047390 0721001A */  bgez       $t9, .L800473FC
/* 47F94 80047394 AC590000 */   sw        $t9, ($v0)
/* 47F98 80047398 2401FFF9 */  addiu      $at, $zero, -7
/* 47F9C 8004739C 01E15024 */  and        $t2, $t7, $at
/* 47FA0 800473A0 240B0078 */  addiu      $t3, $zero, 0x78
/* 47FA4 800473A4 AC6A0000 */  sw         $t2, ($v1)
/* 47FA8 800473A8 AFAB0014 */  sw         $t3, 0x14($sp)
/* 47FAC 800473AC 240400C7 */  addiu      $a0, $zero, 0xc7
/* 47FB0 800473B0 24050003 */  addiu      $a1, $zero, 3
/* 47FB4 800473B4 2406FFD8 */  addiu      $a2, $zero, -0x28
/* 47FB8 800473B8 00003825 */  or         $a3, $zero, $zero
/* 47FBC 800473BC 0C01F3F8 */  jal        func_8007CFE0
/* 47FC0 800473C0 AFA00010 */   sw        $zero, 0x10($sp)
/* 47FC4 800473C4 3C03800F */  lui        $v1, %hi(D_800EF510)
/* 47FC8 800473C8 2463F510 */  addiu      $v1, $v1, %lo(D_800EF510)
/* 47FCC 800473CC 8C6C0080 */  lw         $t4, 0x80($v1)
/* 47FD0 800473D0 8FAD0024 */  lw         $t5, 0x24($sp)
/* 47FD4 800473D4 240F0005 */  addiu      $t7, $zero, 5
/* 47FD8 800473D8 018D7025 */  or         $t6, $t4, $t5
/* 47FDC 800473DC AC6E0080 */  sw         $t6, 0x80($v1)
/* 47FE0 800473E0 3C01800C */  lui        $at, %hi(D_800BE5F4)
/* 47FE4 800473E4 97B80022 */  lhu        $t8, 0x22($sp)
/* 47FE8 800473E8 AC2FE5F4 */  sw         $t7, %lo(D_800BE5F4)($at)
/* 47FEC 800473EC 3C01800D */  lui        $at, %hi(D_800D28E8)
/* 47FF0 800473F0 24020001 */  addiu      $v0, $zero, 1
/* 47FF4 800473F4 10000002 */  b          .L80047400
/* 47FF8 800473F8 A43828E8 */   sh        $t8, %lo(D_800D28E8)($at)
.L800473FC:
/* 47FFC 800473FC 00001025 */  or         $v0, $zero, $zero
.L80047400:
/* 48000 80047400 8FBF001C */  lw         $ra, 0x1c($sp)
/* 48004 80047404 27BD0020 */  addiu      $sp, $sp, 0x20
/* 48008 80047408 03E00008 */  jr         $ra
/* 4800C 8004740C 00000000 */   nop
