glabel func_80004F24
/* 5B24 80004F24 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 5B28 80004F28 AFB5002C */  sw         $s5, 0x2c($sp)
/* 5B2C 80004F2C AFB40028 */  sw         $s4, 0x28($sp)
/* 5B30 80004F30 AFB30024 */  sw         $s3, 0x24($sp)
/* 5B34 80004F34 AFB60030 */  sw         $s6, 0x30($sp)
/* 5B38 80004F38 AFB00018 */  sw         $s0, 0x18($sp)
/* 5B3C 80004F3C 3C138017 */  lui        $s3, 0x8017
/* 5B40 80004F40 3C14800C */  lui        $s4, 0x800c
/* 5B44 80004F44 3C15800C */  lui        $s5, %hi(D_800C4FC0)
/* 5B48 80004F48 AFBF0034 */  sw         $ra, 0x34($sp)
/* 5B4C 80004F4C AFB20020 */  sw         $s2, 0x20($sp)
/* 5B50 80004F50 AFB1001C */  sw         $s1, 0x1c($sp)
/* 5B54 80004F54 0000B025 */  or         $s6, $zero, $zero
/* 5B58 80004F58 26B54FC0 */  addiu      $s5, $s5, %lo(D_800C4FC0)
/* 5B5C 80004F5C 26945018 */  addiu      $s4, $s4, 0x5018
/* 5B60 80004F60 26731AE8 */  addiu      $s3, $s3, 0x1ae8
/* 5B64 80004F64 00008025 */  or         $s0, $zero, $zero
.L80004F68:
/* 5B68 80004F68 02907021 */  addu       $t6, $s4, $s0
/* 5B6C 80004F6C 91CF0000 */  lbu        $t7, ($t6)
/* 5B70 80004F70 00108880 */  sll        $s1, $s0, 2
/* 5B74 80004F74 11E00008 */  beqz       $t7, .L80004F98
/* 5B78 80004F78 02719021 */   addu      $s2, $s3, $s1
/* 5B7C 80004F7C 00108880 */  sll        $s1, $s0, 2
/* 5B80 80004F80 02719021 */  addu       $s2, $s3, $s1
/* 5B84 80004F84 8E440000 */  lw         $a0, ($s2)
/* 5B88 80004F88 0C0013C2 */  jal        func_80004F08
/* 5B8C 80004F8C 00000000 */   nop
/* 5B90 80004F90 10000005 */  b          .L80004FA8
/* 5B94 80004F94 3058FFFF */   andi      $t8, $v0, 0xffff
.L80004F98:
/* 5B98 80004F98 8E440000 */  lw         $a0, ($s2)
/* 5B9C 80004F9C 0C0013A4 */  jal        func_80004E90
/* 5BA0 80004FA0 00000000 */   nop
/* 5BA4 80004FA4 3058FFFF */  andi       $t8, $v0, 0xffff
.L80004FA8:
/* 5BA8 80004FA8 13000005 */  beqz       $t8, .L80004FC0
/* 5BAC 80004FAC 26100001 */   addiu     $s0, $s0, 1
/* 5BB0 80004FB0 02B1C821 */  addu       $t9, $s5, $s1
/* 5BB4 80004FB4 8F280000 */  lw         $t0, ($t9)
/* 5BB8 80004FB8 24160001 */  addiu      $s6, $zero, 1
/* 5BBC 80004FBC AE480000 */  sw         $t0, ($s2)
.L80004FC0:
/* 5BC0 80004FC0 3209FFFF */  andi       $t1, $s0, 0xffff
/* 5BC4 80004FC4 29210007 */  slti       $at, $t1, 7
/* 5BC8 80004FC8 1420FFE7 */  bnez       $at, .L80004F68
/* 5BCC 80004FCC 01208025 */   or        $s0, $t1, $zero
/* 5BD0 80004FD0 8FBF0034 */  lw         $ra, 0x34($sp)
/* 5BD4 80004FD4 02C01025 */  or         $v0, $s6, $zero
/* 5BD8 80004FD8 8FB60030 */  lw         $s6, 0x30($sp)
/* 5BDC 80004FDC 8FB00018 */  lw         $s0, 0x18($sp)
/* 5BE0 80004FE0 8FB1001C */  lw         $s1, 0x1c($sp)
/* 5BE4 80004FE4 8FB20020 */  lw         $s2, 0x20($sp)
/* 5BE8 80004FE8 8FB30024 */  lw         $s3, 0x24($sp)
/* 5BEC 80004FEC 8FB40028 */  lw         $s4, 0x28($sp)
/* 5BF0 80004FF0 8FB5002C */  lw         $s5, 0x2c($sp)
/* 5BF4 80004FF4 03E00008 */  jr         $ra
/* 5BF8 80004FF8 27BD0038 */   addiu     $sp, $sp, 0x38
