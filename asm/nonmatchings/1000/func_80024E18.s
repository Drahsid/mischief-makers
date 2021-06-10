glabel func_80024E18
/* 25A18 80024E18 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 25A1C 80024E1C 3C038038 */  lui        $v1, 0x8038
/* 25A20 80024E20 3C04803D */  lui        $a0, 0x803d
/* 25A24 80024E24 AFBF002C */  sw         $ra, 0x2c($sp)
/* 25A28 80024E28 3484A600 */  ori        $a0, $a0, 0xa600
/* 25A2C 80024E2C 34630400 */  ori        $v1, $v1, 0x400
/* 25A30 80024E30 00001025 */  or         $v0, $zero, $zero
.L80024E34:
/* 25A34 80024E34 24420001 */  addiu      $v0, $v0, 1
/* 25A38 80024E38 8C6E0000 */  lw         $t6, ($v1)
/* 25A3C 80024E3C 304FFFFF */  andi       $t7, $v0, 0xffff
/* 25A40 80024E40 29E10080 */  slti       $at, $t7, 0x80
/* 25A44 80024E44 01E01025 */  or         $v0, $t7, $zero
/* 25A48 80024E48 24840004 */  addiu      $a0, $a0, 4
/* 25A4C 80024E4C 24630004 */  addiu      $v1, $v1, 4
/* 25A50 80024E50 1420FFF8 */  bnez       $at, .L80024E34
/* 25A54 80024E54 AC8EFFFC */   sw        $t6, -4($a0)
/* 25A58 80024E58 24180001 */  addiu      $t8, $zero, 1
/* 25A5C 80024E5C 24190002 */  addiu      $t9, $zero, 2
/* 25A60 80024E60 24080002 */  addiu      $t0, $zero, 2
/* 25A64 80024E64 24090001 */  addiu      $t1, $zero, 1
/* 25A68 80024E68 AFA9001C */  sw         $t1, 0x1c($sp)
/* 25A6C 80024E6C AFA80018 */  sw         $t0, 0x18($sp)
/* 25A70 80024E70 AFB90014 */  sw         $t9, 0x14($sp)
/* 25A74 80024E74 AFB80010 */  sw         $t8, 0x10($sp)
/* 25A78 80024E78 24040001 */  addiu      $a0, $zero, 1
/* 25A7C 80024E7C 24050002 */  addiu      $a1, $zero, 2
/* 25A80 80024E80 00003025 */  or         $a2, $zero, $zero
/* 25A84 80024E84 00003825 */  or         $a3, $zero, $zero
/* 25A88 80024E88 0C010BA1 */  jal        func_80042E84
/* 25A8C 80024E8C AFA00020 */   sw        $zero, 0x20($sp)
/* 25A90 80024E90 8FBF002C */  lw         $ra, 0x2c($sp)
/* 25A94 80024E94 27BD0030 */  addiu      $sp, $sp, 0x30
/* 25A98 80024E98 03E00008 */  jr         $ra
/* 25A9C 80024E9C 00000000 */   nop
