glabel func_8005B164
/* 5BD64 8005B164 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5BD68 8005B168 000E7880 */  sll        $t7, $t6, 2
/* 5BD6C 8005B16C 01EE7823 */  subu       $t7, $t7, $t6
/* 5BD70 8005B170 000F7880 */  sll        $t7, $t7, 2
/* 5BD74 8005B174 01EE7821 */  addu       $t7, $t7, $t6
/* 5BD78 8005B178 000F7880 */  sll        $t7, $t7, 2
/* 5BD7C 8005B17C 01EE7823 */  subu       $t7, $t7, $t6
/* 5BD80 8005B180 3C18800F */  lui        $t8, %hi(gActors)
/* 5BD84 8005B184 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 5BD88 8005B188 000F78C0 */  sll        $t7, $t7, 3
/* 5BD8C 8005B18C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5BD90 8005B190 01F81021 */  addu       $v0, $t7, $t8
/* 5BD94 8005B194 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5BD98 8005B198 AFA40020 */  sw         $a0, 0x20($sp)
/* 5BD9C 8005B19C 90450182 */  lbu        $a1, 0x182($v0)
/* 5BDA0 8005B1A0 90460180 */  lbu        $a2, 0x180($v0)
/* 5BDA4 8005B1A4 01C02025 */  or         $a0, $t6, $zero
/* 5BDA8 8005B1A8 0C016B2C */  jal        func_8005ACB0
/* 5BDAC 8005B1AC AFA2001C */   sw        $v0, 0x1c($sp)
/* 5BDB0 8005B1B0 8FA2001C */  lw         $v0, 0x1c($sp)
/* 5BDB4 8005B1B4 00000000 */  nop
/* 5BDB8 8005B1B8 90590180 */  lbu        $t9, 0x180($v0)
/* 5BDBC 8005B1BC 00000000 */  nop
/* 5BDC0 8005B1C0 27280001 */  addiu      $t0, $t9, 1
/* 5BDC4 8005B1C4 310900FF */  andi       $t1, $t0, 0xff
/* 5BDC8 8005B1C8 29210010 */  slti       $at, $t1, 0x10
/* 5BDCC 8005B1CC 14200002 */  bnez       $at, .L8005B1D8
/* 5BDD0 8005B1D0 A0480180 */   sb        $t0, 0x180($v0)
/* 5BDD4 8005B1D4 A4400180 */  sh         $zero, 0x180($v0)
.L8005B1D8:
/* 5BDD8 8005B1D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5BDDC 8005B1DC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 5BDE0 8005B1E0 03E00008 */  jr         $ra
/* 5BDE4 8005B1E4 00000000 */   nop
