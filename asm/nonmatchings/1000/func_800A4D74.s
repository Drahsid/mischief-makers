glabel func_800A4D74
/* A5974 800A4D74 27BDFF98 */  addiu      $sp, $sp, -0x68
/* A5978 800A4D78 AFBF0024 */  sw         $ra, 0x24($sp)
/* A597C 800A4D7C AFA40068 */  sw         $a0, 0x68($sp)
/* A5980 800A4D80 AFA5006C */  sw         $a1, 0x6c($sp)
/* A5984 800A4D84 AFA60070 */  sw         $a2, 0x70($sp)
/* A5988 800A4D88 AFA70074 */  sw         $a3, 0x74($sp)
/* A598C 800A4D8C C7A40078 */  lwc1       $f4, 0x78($sp)
/* A5990 800A4D90 C7A6007C */  lwc1       $f6, 0x7c($sp)
/* A5994 800A4D94 C7A80080 */  lwc1       $f8, 0x80($sp)
/* A5998 800A4D98 C7AA0084 */  lwc1       $f10, 0x84($sp)
/* A599C 800A4D9C 27A40028 */  addiu      $a0, $sp, 0x28
/* A59A0 800A4DA0 8FA5006C */  lw         $a1, 0x6c($sp)
/* A59A4 800A4DA4 8FA60070 */  lw         $a2, 0x70($sp)
/* A59A8 800A4DA8 8FA70074 */  lw         $a3, 0x74($sp)
/* A59AC 800A4DAC E7A40010 */  swc1       $f4, 0x10($sp)
/* A59B0 800A4DB0 E7A60014 */  swc1       $f6, 0x14($sp)
/* A59B4 800A4DB4 E7A80018 */  swc1       $f8, 0x18($sp)
/* A59B8 800A4DB8 0C029304 */  jal        func_800A4C10
/* A59BC 800A4DBC E7AA001C */   swc1      $f10, 0x1c($sp)
/* A59C0 800A4DC0 27A40028 */  addiu      $a0, $sp, 0x28
/* A59C4 800A4DC4 0C02CA98 */  jal        func_800B2A60
/* A59C8 800A4DC8 8FA50068 */   lw        $a1, 0x68($sp)
/* A59CC 800A4DCC 10000001 */  b          .L800A4DD4
/* A59D0 800A4DD0 00000000 */   nop
.L800A4DD4:
/* A59D4 800A4DD4 8FBF0024 */  lw         $ra, 0x24($sp)
/* A59D8 800A4DD8 27BD0068 */  addiu      $sp, $sp, 0x68
/* A59DC 800A4DDC 03E00008 */  jr         $ra
/* A59E0 800A4DE0 00000000 */   nop
/* A59E4 800A4DE4 00000000 */  nop
/* A59E8 800A4DE8 00000000 */  nop
/* A59EC 800A4DEC 00000000 */  nop
