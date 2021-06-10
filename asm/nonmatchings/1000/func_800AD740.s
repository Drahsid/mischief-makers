glabel func_800AD740
/* AE340 800AD740 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AE344 800AD744 AFBF0014 */  sw         $ra, 0x14($sp)
/* AE348 800AD748 AFA40020 */  sw         $a0, 0x20($sp)
/* AE34C 800AD74C AFA50024 */  sw         $a1, 0x24($sp)
/* AE350 800AD750 AFA60028 */  sw         $a2, 0x28($sp)
/* AE354 800AD754 8FAE0020 */  lw         $t6, 0x20($sp)
/* AE358 800AD758 ADC00010 */  sw         $zero, 0x10($t6)
/* AE35C 800AD75C 8FAF0020 */  lw         $t7, 0x20($sp)
/* AE360 800AD760 ADE00008 */  sw         $zero, 8($t7)
/* AE364 800AD764 8FB80020 */  lw         $t8, 0x20($sp)
/* AE368 800AD768 AF00000C */  sw         $zero, 0xc($t8)
/* AE36C 800AD76C 8FB90020 */  lw         $t9, 0x20($sp)
/* AE370 800AD770 AF200000 */  sw         $zero, ($t9)
/* AE374 800AD774 8FA80020 */  lw         $t0, 0x20($sp)
/* AE378 800AD778 AD000004 */  sw         $zero, 4($t0)
/* AE37C 800AD77C 8FA90028 */  lw         $t1, 0x28($sp)
/* AE380 800AD780 AFA0001C */  sw         $zero, 0x1c($sp)
/* AE384 800AD784 1920000F */  blez       $t1, .L800AD7C4
/* AE388 800AD788 00000000 */   nop
.L800AD78C:
/* AE38C 800AD78C 8FAA001C */  lw         $t2, 0x1c($sp)
/* AE390 800AD790 8FAC0024 */  lw         $t4, 0x24($sp)
/* AE394 800AD794 8FA50020 */  lw         $a1, 0x20($sp)
/* AE398 800AD798 000A58C0 */  sll        $t3, $t2, 3
/* AE39C 800AD79C 016A5823 */  subu       $t3, $t3, $t2
/* AE3A0 800AD7A0 000B5880 */  sll        $t3, $t3, 2
/* AE3A4 800AD7A4 0C026EAE */  jal        func_8009BAB8
/* AE3A8 800AD7A8 016C2021 */   addu      $a0, $t3, $t4
/* AE3AC 800AD7AC 8FAD001C */  lw         $t5, 0x1c($sp)
/* AE3B0 800AD7B0 8FAF0028 */  lw         $t7, 0x28($sp)
/* AE3B4 800AD7B4 25AE0001 */  addiu      $t6, $t5, 1
/* AE3B8 800AD7B8 01CF082A */  slt        $at, $t6, $t7
/* AE3BC 800AD7BC 1420FFF3 */  bnez       $at, .L800AD78C
/* AE3C0 800AD7C0 AFAE001C */   sw        $t6, 0x1c($sp)
.L800AD7C4:
/* AE3C4 800AD7C4 10000001 */  b          .L800AD7CC
/* AE3C8 800AD7C8 00000000 */   nop
.L800AD7CC:
/* AE3CC 800AD7CC 8FBF0014 */  lw         $ra, 0x14($sp)
/* AE3D0 800AD7D0 27BD0020 */  addiu      $sp, $sp, 0x20
/* AE3D4 800AD7D4 03E00008 */  jr         $ra
/* AE3D8 800AD7D8 00000000 */   nop
