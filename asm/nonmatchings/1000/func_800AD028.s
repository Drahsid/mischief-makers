glabel func_800AD028
/* ADC28 800AD028 27BDFFF8 */  addiu      $sp, $sp, -8
/* ADC2C 800AD02C 908F0031 */  lbu        $t7, 0x31($a0)
/* ADC30 800AD030 8CAE0060 */  lw         $t6, 0x60($a1)
/* ADC34 800AD034 8C890020 */  lw         $t1, 0x20($a0)
/* ADC38 800AD038 000FC100 */  sll        $t8, $t7, 4
/* ADC3C 800AD03C 01D8C821 */  addu       $t9, $t6, $t8
/* ADC40 800AD040 93280007 */  lbu        $t0, 7($t9)
/* ADC44 800AD044 912A000C */  lbu        $t2, 0xc($t1)
/* ADC48 800AD048 010A5821 */  addu       $t3, $t0, $t2
/* ADC4C 800AD04C 256CFFC0 */  addiu      $t4, $t3, -0x40
/* ADC50 800AD050 AFAC0004 */  sw         $t4, 4($sp)
/* ADC54 800AD054 8FAD0004 */  lw         $t5, 4($sp)
/* ADC58 800AD058 19A00003 */  blez       $t5, .L800AD068
/* ADC5C 800AD05C 00000000 */   nop
/* ADC60 800AD060 10000002 */  b          .L800AD06C
/* ADC64 800AD064 00000000 */   nop
.L800AD068:
/* ADC68 800AD068 AFA00004 */  sw         $zero, 4($sp)
.L800AD06C:
/* ADC6C 800AD06C 8FAF0004 */  lw         $t7, 4($sp)
/* ADC70 800AD070 29E1007F */  slti       $at, $t7, 0x7f
/* ADC74 800AD074 10200003 */  beqz       $at, .L800AD084
/* ADC78 800AD078 00000000 */   nop
/* ADC7C 800AD07C 10000003 */  b          .L800AD08C
/* ADC80 800AD080 00000000 */   nop
.L800AD084:
/* ADC84 800AD084 240E007F */  addiu      $t6, $zero, 0x7f
/* ADC88 800AD088 AFAE0004 */  sw         $t6, 4($sp)
.L800AD08C:
/* ADC8C 800AD08C 10000003 */  b          .L800AD09C
/* ADC90 800AD090 93A20007 */   lbu       $v0, 7($sp)
/* ADC94 800AD094 10000001 */  b          .L800AD09C
/* ADC98 800AD098 00000000 */   nop
.L800AD09C:
/* ADC9C 800AD09C 03E00008 */  jr         $ra
/* ADCA0 800AD0A0 27BD0008 */   addiu     $sp, $sp, 8
