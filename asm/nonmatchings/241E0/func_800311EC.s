glabel func_800311EC
/* 31DEC 800311EC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 31DF0 800311F0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 31DF4 800311F4 AFA40020 */  sw         $a0, 0x20($sp)
/* 31DF8 800311F8 AFA50024 */  sw         $a1, 0x24($sp)
/* 31DFC 800311FC AFA60028 */  sw         $a2, 0x28($sp)
/* 31E00 80031200 AFA7002C */  sw         $a3, 0x2c($sp)
/* 31E04 80031204 2405002D */  addiu      $a1, $zero, 0x2d
/* 31E08 80031208 0C00A12E */  jal        func_800284B8
/* 31E0C 8003120C 24040010 */   addiu     $a0, $zero, 0x10
/* 31E10 80031210 8FAE002C */  lw         $t6, 0x2c($sp)
/* 31E14 80031214 97A50022 */  lhu        $a1, 0x22($sp)
/* 31E18 80031218 8FA60024 */  lw         $a2, 0x24($sp)
/* 31E1C 8003121C 8FA70028 */  lw         $a3, 0x28($sp)
/* 31E20 80031220 3044FFFF */  andi       $a0, $v0, 0xffff
/* 31E24 80031224 0C00C429 */  jal        func_800310A4
/* 31E28 80031228 AFAE0010 */   sw        $t6, 0x10($sp)
/* 31E2C 8003122C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 31E30 80031230 27BD0020 */  addiu      $sp, $sp, 0x20
/* 31E34 80031234 03E00008 */  jr         $ra
/* 31E38 80031238 00000000 */   nop
