glabel func_80015174
/* 15D74 80015174 308EFFFF */  andi       $t6, $a0, 0xffff
/* 15D78 80015178 000E7880 */  sll        $t7, $t6, 2
/* 15D7C 8001517C 01EE7823 */  subu       $t7, $t7, $t6
/* 15D80 80015180 000F7880 */  sll        $t7, $t7, 2
/* 15D84 80015184 01EE7821 */  addu       $t7, $t7, $t6
/* 15D88 80015188 000F7880 */  sll        $t7, $t7, 2
/* 15D8C 8001518C 01EE7823 */  subu       $t7, $t7, $t6
/* 15D90 80015190 000F78C0 */  sll        $t7, $t7, 3
/* 15D94 80015194 3C18800F */  lui        $t8, %hi(FB_BGCOLOR)
/* 15D98 80015198 030FC021 */  addu       $t8, $t8, $t7
/* 15D9C 8001519C 3C19800C */  lui        $t9, %hi(D_800BE558)
/* 15DA0 800151A0 8739E558 */  lh         $t9, %lo(D_800BE558)($t9)
/* 15DA4 800151A4 8718F598 */  lh         $t8, %lo(FB_BGCOLOR)($t8)
/* 15DA8 800151A8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 15DAC 800151AC 03192821 */  addu       $a1, $t8, $t9
/* 15DB0 800151B0 30A8000F */  andi       $t0, $a1, 0xf
/* 15DB4 800151B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 15DB8 800151B8 AFA40018 */  sw         $a0, 0x18($sp)
/* 15DBC 800151BC 01C02025 */  or         $a0, $t6, $zero
/* 15DC0 800151C0 0C0053F4 */  jal        func_80014FD0
/* 15DC4 800151C4 01002825 */   or        $a1, $t0, $zero
/* 15DC8 800151C8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 15DCC 800151CC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 15DD0 800151D0 03E00008 */  jr         $ra
/* 15DD4 800151D4 00000000 */   nop
