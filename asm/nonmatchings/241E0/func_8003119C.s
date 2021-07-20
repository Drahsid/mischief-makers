glabel func_8003119C
/* 31D9C 8003119C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 31DA0 800311A0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 31DA4 800311A4 AFA40020 */  sw         $a0, 0x20($sp)
/* 31DA8 800311A8 AFA50024 */  sw         $a1, 0x24($sp)
/* 31DAC 800311AC AFA60028 */  sw         $a2, 0x28($sp)
/* 31DB0 800311B0 AFA7002C */  sw         $a3, 0x2c($sp)
/* 31DB4 800311B4 2405002D */  addiu      $a1, $zero, 0x2d
/* 31DB8 800311B8 0C00A12E */  jal        func_800284B8
/* 31DBC 800311BC 24040010 */   addiu     $a0, $zero, 0x10
/* 31DC0 800311C0 8FAE002C */  lw         $t6, 0x2c($sp)
/* 31DC4 800311C4 8FA50020 */  lw         $a1, 0x20($sp)
/* 31DC8 800311C8 8FA60024 */  lw         $a2, 0x24($sp)
/* 31DCC 800311CC 8FA70028 */  lw         $a3, 0x28($sp)
/* 31DD0 800311D0 3044FFFF */  andi       $a0, $v0, 0xffff
/* 31DD4 800311D4 0C00C3E5 */  jal        func_80030F94
/* 31DD8 800311D8 AFAE0010 */   sw        $t6, 0x10($sp)
/* 31DDC 800311DC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 31DE0 800311E0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 31DE4 800311E4 03E00008 */  jr         $ra
/* 31DE8 800311E8 00000000 */   nop
