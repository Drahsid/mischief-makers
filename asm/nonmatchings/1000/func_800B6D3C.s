glabel func_800B6D3C
/* B793C 800B6D3C 27BDFF98 */  addiu      $sp, $sp, -0x68
/* B7940 800B6D40 AFBF0014 */  sw         $ra, 0x14($sp)
/* B7944 800B6D44 AFA40068 */  sw         $a0, 0x68($sp)
/* B7948 800B6D48 8FAE0068 */  lw         $t6, 0x68($sp)
/* B794C 800B6D4C AFAE0064 */  sw         $t6, 0x64($sp)
/* B7950 800B6D50 8FAF0068 */  lw         $t7, 0x68($sp)
/* B7954 800B6D54 8FB80064 */  lw         $t8, 0x64($sp)
/* B7958 800B6D58 27A60018 */  addiu      $a2, $sp, 0x18
/* B795C 800B6D5C 91E40009 */  lbu        $a0, 9($t7)
/* B7960 800B6D60 0C02DA89 */  jal        func_800B6A24
/* B7964 800B6D64 8F05000C */   lw        $a1, 0xc($t8)
/* B7968 800B6D68 10400003 */  beqz       $v0, .L800B6D78
/* B796C 800B6D6C 00000000 */   nop
/* B7970 800B6D70 1000000D */  b          .L800B6DA8
/* B7974 800B6D74 2402FFFE */   addiu     $v0, $zero, -2
.L800B6D78:
/* B7978 800B6D78 8FB90064 */  lw         $t9, 0x64($sp)
/* B797C 800B6D7C 93280004 */  lbu        $t0, 4($t9)
/* B7980 800B6D80 A3A8001C */  sb         $t0, 0x1c($sp)
/* B7984 800B6D84 A7A0001E */  sh         $zero, 0x1e($sp)
/* B7988 800B6D88 27A40018 */  addiu      $a0, $sp, 0x18
/* B798C 800B6D8C 2405004C */  addiu      $a1, $zero, 0x4c
/* B7990 800B6D90 0C026833 */  jal        func_8009A0CC
/* B7994 800B6D94 24060001 */   addiu     $a2, $zero, 1
/* B7998 800B6D98 10000003 */  b          .L800B6DA8
/* B799C 800B6D9C 00001025 */   or        $v0, $zero, $zero
/* B79A0 800B6DA0 10000001 */  b          .L800B6DA8
/* B79A4 800B6DA4 00000000 */   nop
.L800B6DA8:
/* B79A8 800B6DA8 8FBF0014 */  lw         $ra, 0x14($sp)
/* B79AC 800B6DAC 27BD0068 */  addiu      $sp, $sp, 0x68
/* B79B0 800B6DB0 03E00008 */  jr         $ra
/* B79B4 800B6DB4 00000000 */   nop
