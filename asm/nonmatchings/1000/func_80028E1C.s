glabel func_80028E1C
/* 29A1C 80028E1C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 29A20 80028E20 AFB2001C */  sw         $s2, 0x1c($sp)
/* 29A24 80028E24 3092FFFF */  andi       $s2, $a0, 0xffff
/* 29A28 80028E28 00127080 */  sll        $t6, $s2, 2
/* 29A2C 80028E2C 01D27023 */  subu       $t6, $t6, $s2
/* 29A30 80028E30 000E7080 */  sll        $t6, $t6, 2
/* 29A34 80028E34 01D27021 */  addu       $t6, $t6, $s2
/* 29A38 80028E38 AFB30020 */  sw         $s3, 0x20($sp)
/* 29A3C 80028E3C 000E7080 */  sll        $t6, $t6, 2
/* 29A40 80028E40 3C13800F */  lui        $s3, %hi(D_800EF510)
/* 29A44 80028E44 01D27023 */  subu       $t6, $t6, $s2
/* 29A48 80028E48 2673F510 */  addiu      $s3, $s3, %lo(D_800EF510)
/* 29A4C 80028E4C AFB10018 */  sw         $s1, 0x18($sp)
/* 29A50 80028E50 000E70C0 */  sll        $t6, $t6, 3
/* 29A54 80028E54 026E8821 */  addu       $s1, $s3, $t6
/* 29A58 80028E58 8E2F0098 */  lw         $t7, 0x98($s1)
/* 29A5C 80028E5C AFBF0024 */  sw         $ra, 0x24($sp)
/* 29A60 80028E60 31F80200 */  andi       $t8, $t7, 0x200
/* 29A64 80028E64 AFB00014 */  sw         $s0, 0x14($sp)
/* 29A68 80028E68 1300006E */  beqz       $t8, .L80029024
/* 29A6C 80028E6C AFA40028 */   sw        $a0, 0x28($sp)
/* 29A70 80028E70 3C198013 */  lui        $t9, %hi(D_80137450)
/* 29A74 80028E74 97397450 */  lhu        $t9, %lo(D_80137450)($t9)
/* 29A78 80028E78 00000000 */  nop
/* 29A7C 80028E7C 1659006A */  bne        $s2, $t9, .L80029028
/* 29A80 80028E80 00001025 */   or        $v0, $zero, $zero
/* 29A84 80028E84 92620140 */  lbu        $v0, 0x140($s3)
/* 29A88 80028E88 00000000 */  nop
/* 29A8C 80028E8C 14400024 */  bnez       $v0, .L80028F20
/* 29A90 80028E90 24010004 */   addiu     $at, $zero, 4
/* 29A94 80028E94 8663008C */  lh         $v1, 0x8c($s3)
/* 29A98 80028E98 8624008C */  lh         $a0, 0x8c($s1)
/* 29A9C 80028E9C 00038400 */  sll        $s0, $v1, 0x10
/* 29AA0 80028EA0 0064082A */  slt        $at, $v1, $a0
/* 29AA4 80028EA4 1020001D */  beqz       $at, .L80028F1C
/* 29AA8 80028EA8 00104403 */   sra       $t0, $s0, 0x10
/* 29AAC 80028EAC 0104082A */  slt        $at, $t0, $a0
/* 29AB0 80028EB0 1020005C */  beqz       $at, .L80029024
/* 29AB4 80028EB4 01008025 */   or        $s0, $t0, $zero
.L80028EB8:
/* 29AB8 80028EB8 86650088 */  lh         $a1, 0x88($s3)
/* 29ABC 80028EBC 3244FFFF */  andi       $a0, $s2, 0xffff
/* 29AC0 80028EC0 0C007F28 */  jal        func_8001FCA0
/* 29AC4 80028EC4 02003025 */   or        $a2, $s0, $zero
/* 29AC8 80028EC8 30490080 */  andi       $t1, $v0, 0x80
/* 29ACC 80028ECC 1120000B */  beqz       $t1, .L80028EFC
/* 29AD0 80028ED0 26100010 */   addiu     $s0, $s0, 0x10
/* 29AD4 80028ED4 3C0A0001 */  lui        $t2, 1
/* 29AD8 80028ED8 3C0BFFFD */  lui        $t3, 0xfffd
/* 29ADC 80028EDC AE6A0098 */  sw         $t2, 0x98($s3)
/* 29AE0 80028EE0 AE6000F8 */  sw         $zero, 0xf8($s3)
/* 29AE4 80028EE4 AE6B00FC */  sw         $t3, 0xfc($s3)
/* 29AE8 80028EE8 24040064 */  addiu      $a0, $zero, 0x64
/* 29AEC 80028EEC 0C000DB2 */  jal        func_800036C8
/* 29AF0 80028EF0 3245FFFF */   andi      $a1, $s2, 0xffff
/* 29AF4 80028EF4 1000004C */  b          .L80029028
/* 29AF8 80028EF8 24020001 */   addiu     $v0, $zero, 1
.L80028EFC:
/* 29AFC 80028EFC 862E008C */  lh         $t6, 0x8c($s1)
/* 29B00 80028F00 00106400 */  sll        $t4, $s0, 0x10
/* 29B04 80028F04 000C8403 */  sra        $s0, $t4, 0x10
/* 29B08 80028F08 020E082A */  slt        $at, $s0, $t6
/* 29B0C 80028F0C 1420FFEA */  bnez       $at, .L80028EB8
/* 29B10 80028F10 00000000 */   nop
/* 29B14 80028F14 10000044 */  b          .L80029028
/* 29B18 80028F18 00001025 */   or        $v0, $zero, $zero
.L80028F1C:
/* 29B1C 80028F1C 24010004 */  addiu      $at, $zero, 4
.L80028F20:
/* 29B20 80028F20 14410041 */  bne        $v0, $at, .L80029028
/* 29B24 80028F24 00001025 */   or        $v0, $zero, $zero
/* 29B28 80028F28 8E6F0080 */  lw         $t7, 0x80($s3)
/* 29B2C 80028F2C 00000000 */  nop
/* 29B30 80028F30 31F80020 */  andi       $t8, $t7, 0x20
/* 29B34 80028F34 1300001F */  beqz       $t8, .L80028FB4
/* 29B38 80028F38 00000000 */   nop
/* 29B3C 80028F3C 86700088 */  lh         $s0, 0x88($s3)
/* 29B40 80028F40 86390088 */  lh         $t9, 0x88($s1)
/* 29B44 80028F44 00000000 */  nop
/* 29B48 80028F48 0330082A */  slt        $at, $t9, $s0
/* 29B4C 80028F4C 10200035 */  beqz       $at, .L80029024
/* 29B50 80028F50 00102C00 */   sll       $a1, $s0, 0x10
.L80028F54:
/* 29B54 80028F54 00054403 */  sra        $t0, $a1, 0x10
/* 29B58 80028F58 01002825 */  or         $a1, $t0, $zero
/* 29B5C 80028F5C 0C00A36B */  jal        func_80028DAC
/* 29B60 80028F60 3244FFFF */   andi      $a0, $s2, 0xffff
/* 29B64 80028F64 1040000B */  beqz       $v0, .L80028F94
/* 29B68 80028F68 2610FFF0 */   addiu     $s0, $s0, -0x10
/* 29B6C 80028F6C 3C090001 */  lui        $t1, 1
/* 29B70 80028F70 3C0A0003 */  lui        $t2, 3
/* 29B74 80028F74 AE690098 */  sw         $t1, 0x98($s3)
/* 29B78 80028F78 AE6A00F8 */  sw         $t2, 0xf8($s3)
/* 29B7C 80028F7C AE6000FC */  sw         $zero, 0xfc($s3)
/* 29B80 80028F80 24040064 */  addiu      $a0, $zero, 0x64
/* 29B84 80028F84 0C000DB2 */  jal        func_800036C8
/* 29B88 80028F88 3245FFFF */   andi      $a1, $s2, 0xffff
/* 29B8C 80028F8C 10000026 */  b          .L80029028
/* 29B90 80028F90 24020001 */   addiu     $v0, $zero, 1
.L80028F94:
/* 29B94 80028F94 862D0088 */  lh         $t5, 0x88($s1)
/* 29B98 80028F98 00105C00 */  sll        $t3, $s0, 0x10
/* 29B9C 80028F9C 000B8403 */  sra        $s0, $t3, 0x10
/* 29BA0 80028FA0 01B0082A */  slt        $at, $t5, $s0
/* 29BA4 80028FA4 1420FFEB */  bnez       $at, .L80028F54
/* 29BA8 80028FA8 00102C00 */   sll       $a1, $s0, 0x10
/* 29BAC 80028FAC 1000001E */  b          .L80029028
/* 29BB0 80028FB0 00001025 */   or        $v0, $zero, $zero
.L80028FB4:
/* 29BB4 80028FB4 86700088 */  lh         $s0, 0x88($s3)
/* 29BB8 80028FB8 862E0088 */  lh         $t6, 0x88($s1)
/* 29BBC 80028FBC 00000000 */  nop
/* 29BC0 80028FC0 020E082A */  slt        $at, $s0, $t6
/* 29BC4 80028FC4 10200017 */  beqz       $at, .L80029024
/* 29BC8 80028FC8 00102C00 */   sll       $a1, $s0, 0x10
.L80028FCC:
/* 29BCC 80028FCC 00057C03 */  sra        $t7, $a1, 0x10
/* 29BD0 80028FD0 01E02825 */  or         $a1, $t7, $zero
/* 29BD4 80028FD4 0C00A36B */  jal        func_80028DAC
/* 29BD8 80028FD8 3244FFFF */   andi      $a0, $s2, 0xffff
/* 29BDC 80028FDC 1040000B */  beqz       $v0, .L8002900C
/* 29BE0 80028FE0 26100010 */   addiu     $s0, $s0, 0x10
/* 29BE4 80028FE4 3C180001 */  lui        $t8, 1
/* 29BE8 80028FE8 3C19FFFD */  lui        $t9, 0xfffd
/* 29BEC 80028FEC AE780098 */  sw         $t8, 0x98($s3)
/* 29BF0 80028FF0 AE7900F8 */  sw         $t9, 0xf8($s3)
/* 29BF4 80028FF4 AE6000FC */  sw         $zero, 0xfc($s3)
/* 29BF8 80028FF8 24040064 */  addiu      $a0, $zero, 0x64
/* 29BFC 80028FFC 0C000DB2 */  jal        func_800036C8
/* 29C00 80029000 3245FFFF */   andi      $a1, $s2, 0xffff
/* 29C04 80029004 10000008 */  b          .L80029028
/* 29C08 80029008 24020001 */   addiu     $v0, $zero, 1
.L8002900C:
/* 29C0C 8002900C 862A0088 */  lh         $t2, 0x88($s1)
/* 29C10 80029010 00104400 */  sll        $t0, $s0, 0x10
/* 29C14 80029014 00088403 */  sra        $s0, $t0, 0x10
/* 29C18 80029018 020A082A */  slt        $at, $s0, $t2
/* 29C1C 8002901C 1420FFEB */  bnez       $at, .L80028FCC
/* 29C20 80029020 00102C00 */   sll       $a1, $s0, 0x10
.L80029024:
/* 29C24 80029024 00001025 */  or         $v0, $zero, $zero
.L80029028:
/* 29C28 80029028 8FBF0024 */  lw         $ra, 0x24($sp)
/* 29C2C 8002902C 8FB00014 */  lw         $s0, 0x14($sp)
/* 29C30 80029030 8FB10018 */  lw         $s1, 0x18($sp)
/* 29C34 80029034 8FB2001C */  lw         $s2, 0x1c($sp)
/* 29C38 80029038 8FB30020 */  lw         $s3, 0x20($sp)
/* 29C3C 8002903C 03E00008 */  jr         $ra
/* 29C40 80029040 27BD0028 */   addiu     $sp, $sp, 0x28
