glabel func_800472D4
/* 47ED4 800472D4 3C02800D */  lui        $v0, %hi(D_800D28E8)
/* 47ED8 800472D8 244228E8 */  addiu      $v0, $v0, %lo(D_800D28E8)
/* 47EDC 800472DC 944E0000 */  lhu        $t6, ($v0)
/* 47EE0 800472E0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 47EE4 800472E4 25CF0001 */  addiu      $t7, $t6, 1
/* 47EE8 800472E8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 47EEC 800472EC A44F0000 */  sh         $t7, ($v0)
/* 47EF0 800472F0 241800A0 */  addiu      $t8, $zero, 0xa0
/* 47EF4 800472F4 3C01800D */  lui        $at, %hi(D_800D2928)
/* 47EF8 800472F8 24190078 */  addiu      $t9, $zero, 0x78
/* 47EFC 800472FC AC382928 */  sw         $t8, %lo(D_800D2928)($at)
/* 47F00 80047300 AFB90014 */  sw         $t9, 0x14($sp)
/* 47F04 80047304 AFA00010 */  sw         $zero, 0x10($sp)
/* 47F08 80047308 240400C7 */  addiu      $a0, $zero, 0xc7
/* 47F0C 8004730C 24050005 */  addiu      $a1, $zero, 5
/* 47F10 80047310 2406FFD8 */  addiu      $a2, $zero, -0x28
/* 47F14 80047314 0C01F3F8 */  jal        func_8007CFE0
/* 47F18 80047318 00003825 */   or        $a3, $zero, $zero
/* 47F1C 8004731C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 47F20 80047320 27BD0020 */  addiu      $sp, $sp, 0x20
/* 47F24 80047324 03E00008 */  jr         $ra
/* 47F28 80047328 00000000 */   nop
