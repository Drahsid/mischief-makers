glabel func_800282F0
/* 28EF0 800282F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 28EF4 800282F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 28EF8 800282F8 AFA40018 */  sw         $a0, 0x18($sp)
/* 28EFC 800282FC 0C0048A2 */  jal        func_80012288
/* 28F00 80028300 AFA5001C */   sw        $a1, 0x1c($sp)
/* 28F04 80028304 3C02800F */  lui        $v0, %hi(gActors)
/* 28F08 80028308 3C038013 */  lui        $v1, %hi(D_801373E0)
/* 28F0C 8002830C 87A4001A */  lh         $a0, 0x1a($sp)
/* 28F10 80028310 87A5001E */  lh         $a1, 0x1e($sp)
/* 28F14 80028314 246373E0 */  addiu      $v1, $v1, %lo(D_801373E0)
/* 28F18 80028318 2442F510 */  addiu      $v0, $v0, %lo(gActors)
/* 28F1C 8002831C AC600020 */  sw         $zero, 0x20($v1)
/* 28F20 80028320 AC600024 */  sw         $zero, 0x24($v1)
/* 28F24 80028324 3C0E800C */  lui        $t6, %hi(D_800BE558)
/* 28F28 80028328 A4440088 */  sh         $a0, 0x88($v0)
/* 28F2C 8002832C A445008C */  sh         $a1, 0x8c($v0)
/* 28F30 80028330 85CEE558 */  lh         $t6, %lo(D_800BE558)($t6)
/* 28F34 80028334 3C18800C */  lui        $t8, %hi(D_800BE55C)
/* 28F38 80028338 8718E55C */  lh         $t8, %lo(D_800BE55C)($t8)
/* 28F3C 8002833C 3C01800C */  lui        $at, %hi(gPlayerPosXMirror)
/* 28F40 80028340 01C47821 */  addu       $t7, $t6, $a0
/* 28F44 80028344 A42FE5D8 */  sh         $t7, %lo(gPlayerPosXMirror)($at)
/* 28F48 80028348 3C01800C */  lui        $at, %hi(gPlayerPosYMirror)
/* 28F4C 8002834C 0305C821 */  addu       $t9, $t8, $a1
/* 28F50 80028350 A439E5DC */  sh         $t9, %lo(gPlayerPosYMirror)($at)
/* 28F54 80028354 3C01800D */  lui        $at, %hi(D_800CA230)
/* 28F58 80028358 A420A230 */  sh         $zero, %lo(D_800CA230)($at)
/* 28F5C 8002835C 844800E0 */  lh         $t0, 0xe0($v0)
/* 28F60 80028360 00000000 */  nop
/* 28F64 80028364 05010003 */  bgez       $t0, .L80028374
/* 28F68 80028368 8FBF0014 */   lw        $ra, 0x14($sp)
/* 28F6C 8002836C A44000E0 */  sh         $zero, 0xe0($v0)
/* 28F70 80028370 8FBF0014 */  lw         $ra, 0x14($sp)
.L80028374:
/* 28F74 80028374 27BD0018 */  addiu      $sp, $sp, 0x18
/* 28F78 80028378 03E00008 */  jr         $ra
/* 28F7C 8002837C 00000000 */   nop
