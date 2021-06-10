glabel func_800B585C
/* B645C 800B585C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B6460 800B5860 AFBF0014 */  sw         $ra, 0x14($sp)
/* B6464 800B5864 AFA40028 */  sw         $a0, 0x28($sp)
/* B6468 800B5868 8FAE0028 */  lw         $t6, 0x28($sp)
/* B646C 800B586C 91CF0004 */  lbu        $t7, 4($t6)
/* B6470 800B5870 29E10035 */  slti       $at, $t7, 0x35
/* B6474 800B5874 14200003 */  bnez       $at, .L800B5884
/* B6478 800B5878 00000000 */   nop
/* B647C 800B587C 1000001B */  b          .L800B58EC
/* B6480 800B5880 2402FFFF */   addiu     $v0, $zero, -1
.L800B5884:
/* B6484 800B5884 8FB80028 */  lw         $t8, 0x28($sp)
/* B6488 800B5888 93190004 */  lbu        $t9, 4($t8)
/* B648C 800B588C 03002025 */  or         $a0, $t8, $zero
/* B6490 800B5890 00194080 */  sll        $t0, $t9, 2
/* B6494 800B5894 3C19800F */  lui        $t9, %hi(D_800EAAB0)
/* B6498 800B5898 0328C821 */  addu       $t9, $t9, $t0
/* B649C 800B589C 8F39AAB0 */  lw         $t9, %lo(D_800EAAB0)($t9)
/* B64A0 800B58A0 0320F809 */  jalr       $t9
/* B64A4 800B58A4 00000000 */   nop
/* B64A8 800B58A8 AFA20024 */  sw         $v0, 0x24($sp)
/* B64AC 800B58AC 8FA90024 */  lw         $t1, 0x24($sp)
/* B64B0 800B58B0 0521000A */  bgez       $t1, .L800B58DC
/* B64B4 800B58B4 00000000 */   nop
/* B64B8 800B58B8 8FAA0028 */  lw         $t2, 0x28($sp)
/* B64BC 800B58BC 914B0004 */  lbu        $t3, 4($t2)
/* B64C0 800B58C0 A3AB001C */  sb         $t3, 0x1c($sp)
/* B64C4 800B58C4 8FAC0024 */  lw         $t4, 0x24($sp)
/* B64C8 800B58C8 A7AC001E */  sh         $t4, 0x1e($sp)
/* B64CC 800B58CC 27A40018 */  addiu      $a0, $sp, 0x18
/* B64D0 800B58D0 2405000C */  addiu      $a1, $zero, 0xc
/* B64D4 800B58D4 0C026833 */  jal        func_8009A0CC
/* B64D8 800B58D8 24060001 */   addiu     $a2, $zero, 1
.L800B58DC:
/* B64DC 800B58DC 10000003 */  b          .L800B58EC
/* B64E0 800B58E0 8FA20024 */   lw        $v0, 0x24($sp)
/* B64E4 800B58E4 10000001 */  b          .L800B58EC
/* B64E8 800B58E8 00000000 */   nop
.L800B58EC:
/* B64EC 800B58EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* B64F0 800B58F0 27BD0028 */  addiu      $sp, $sp, 0x28
/* B64F4 800B58F4 03E00008 */  jr         $ra
/* B64F8 800B58F8 00000000 */   nop
/* B64FC 800B58FC 00000000 */  nop
