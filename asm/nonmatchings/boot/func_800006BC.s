glabel mainproc
/* 12BC 800006BC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 12C0 800006C0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 12C4 800006C4 0C0263D4 */  jal        func_80098F50
/* 12C8 800006C8 AFA40020 */   sw        $a0, 0x20($sp)
/* 12CC 800006CC 3C0E8012 */  lui        $t6, %hi(D_80126670)
/* 12D0 800006D0 25CE6670 */  addiu      $t6, $t6, %lo(D_80126670)
/* 12D4 800006D4 3C048013 */  lui        $a0, %hi(D_8012A698)
/* 12D8 800006D8 3C068000 */  lui        $a2, %hi(func_80000718)
/* 12DC 800006DC 240F000A */  addiu      $t7, $zero, 0xa
/* 12E0 800006E0 AFAF0014 */  sw         $t7, 0x14($sp)
/* 12E4 800006E4 24C60718 */  addiu      $a2, $a2, %lo(func_80000718)
/* 12E8 800006E8 2484A698 */  addiu      $a0, $a0, %lo(D_8012A698)
/* 12EC 800006EC AFAE0010 */  sw         $t6, 0x10($sp)
/* 12F0 800006F0 24050001 */  addiu      $a1, $zero, 1
/* 12F4 800006F4 0C02651C */  jal        func_80099470
/* 12F8 800006F8 00003825 */   or        $a3, $zero, $zero
/* 12FC 800006FC 3C048013 */  lui        $a0, %hi(D_8012A698)
/* 1300 80000700 0C026588 */  jal        func_80099620
/* 1304 80000704 2484A698 */   addiu     $a0, $a0, %lo(D_8012A698)
/* 1308 80000708 8FBF001C */  lw         $ra, 0x1c($sp)
/* 130C 8000070C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1310 80000710 03E00008 */  jr         $ra
/* 1314 80000714 00000000 */   nop
