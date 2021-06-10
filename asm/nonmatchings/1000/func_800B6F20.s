glabel func_800B6F20
/* B7B20 800B6F20 27BDFF68 */  addiu      $sp, $sp, -0x98
/* B7B24 800B6F24 AFBF0024 */  sw         $ra, 0x24($sp)
/* B7B28 800B6F28 AFA40098 */  sw         $a0, 0x98($sp)
/* B7B2C 800B6F2C AFB20020 */  sw         $s2, 0x20($sp)
/* B7B30 800B6F30 AFB1001C */  sw         $s1, 0x1c($sp)
/* B7B34 800B6F34 AFB00018 */  sw         $s0, 0x18($sp)
/* B7B38 800B6F38 8FAE0098 */  lw         $t6, 0x98($sp)
/* B7B3C 800B6F3C AFAE0094 */  sw         $t6, 0x94($sp)
/* B7B40 800B6F40 00008825 */  or         $s1, $zero, $zero
/* B7B44 800B6F44 8FAF0098 */  lw         $t7, 0x98($sp)
/* B7B48 800B6F48 91F20009 */  lbu        $s2, 9($t7)
/* B7B4C 800B6F4C 12400006 */  beqz       $s2, .L800B6F68
/* B7B50 800B6F50 00000000 */   nop
/* B7B54 800B6F54 24010001 */  addiu      $at, $zero, 1
/* B7B58 800B6F58 1241003E */  beq        $s2, $at, .L800B7054
/* B7B5C 800B6F5C 00000000 */   nop
/* B7B60 800B6F60 10000087 */  b          .L800B7180
/* B7B64 800B6F64 00000000 */   nop
.L800B6F68:
/* B7B68 800B6F68 0C02DC7C */  jal        func_800B71F0
/* B7B6C 800B6F6C 00000000 */   nop
/* B7B70 800B6F70 00408025 */  or         $s0, $v0, $zero
/* B7B74 800B6F74 8E180004 */  lw         $t8, 4($s0)
/* B7B78 800B6F78 2401FFFF */  addiu      $at, $zero, -1
/* B7B7C 800B6F7C 1301000D */  beq        $t8, $at, .L800B6FB4
/* B7B80 800B6F80 00000000 */   nop
.L800B6F84:
/* B7B84 800B6F84 8FA80094 */  lw         $t0, 0x94($sp)
/* B7B88 800B6F88 8E190014 */  lw         $t9, 0x14($s0)
/* B7B8C 800B6F8C 8D09000C */  lw         $t1, 0xc($t0)
/* B7B90 800B6F90 17290003 */  bne        $t9, $t1, .L800B6FA0
/* B7B94 800B6F94 00000000 */   nop
/* B7B98 800B6F98 10000006 */  b          .L800B6FB4
/* B7B9C 800B6F9C 00000000 */   nop
.L800B6FA0:
/* B7BA0 800B6FA0 8E10000C */  lw         $s0, 0xc($s0)
/* B7BA4 800B6FA4 8E0A0004 */  lw         $t2, 4($s0)
/* B7BA8 800B6FA8 2401FFFF */  addiu      $at, $zero, -1
/* B7BAC 800B6FAC 1541FFF5 */  bne        $t2, $at, .L800B6F84
/* B7BB0 800B6FB0 00000000 */   nop
.L800B6FB4:
/* B7BB4 800B6FB4 8E0B0004 */  lw         $t3, 4($s0)
/* B7BB8 800B6FB8 2401FFFF */  addiu      $at, $zero, -1
/* B7BBC 800B6FBC 15610003 */  bne        $t3, $at, .L800B6FCC
/* B7BC0 800B6FC0 00000000 */   nop
/* B7BC4 800B6FC4 10000083 */  b          .L800B71D4
/* B7BC8 800B6FC8 2402FFFE */   addiu     $v0, $zero, -2
.L800B6FCC:
/* B7BCC 800B6FCC 960C0010 */  lhu        $t4, 0x10($s0)
/* B7BD0 800B6FD0 24010001 */  addiu      $at, $zero, 1
/* B7BD4 800B6FD4 11810003 */  beq        $t4, $at, .L800B6FE4
/* B7BD8 800B6FD8 00000000 */   nop
/* B7BDC 800B6FDC 1000007D */  b          .L800B71D4
/* B7BE0 800B6FE0 2402FFFC */   addiu     $v0, $zero, -4
.L800B6FE4:
/* B7BE4 800B6FE4 960D0012 */  lhu        $t5, 0x12($s0)
/* B7BE8 800B6FE8 2401FFFC */  addiu      $at, $zero, -4
/* B7BEC 800B6FEC 01A17024 */  and        $t6, $t5, $at
/* B7BF0 800B6FF0 A60E0012 */  sh         $t6, 0x12($s0)
/* B7BF4 800B6FF4 8FAF0094 */  lw         $t7, 0x94($sp)
/* B7BF8 800B6FF8 8DF80010 */  lw         $t8, 0x10($t7)
/* B7BFC 800B6FFC 33080002 */  andi       $t0, $t8, 2
/* B7C00 800B7000 11000004 */  beqz       $t0, .L800B7014
/* B7C04 800B7004 00000000 */   nop
/* B7C08 800B7008 8FB90094 */  lw         $t9, 0x94($sp)
/* B7C0C 800B700C 8F290014 */  lw         $t1, 0x14($t9)
/* B7C10 800B7010 AE09011C */  sw         $t1, 0x11c($s0)
.L800B7014:
/* B7C14 800B7014 8FAA0094 */  lw         $t2, 0x94($sp)
/* B7C18 800B7018 8D4B0010 */  lw         $t3, 0x10($t2)
/* B7C1C 800B701C 316C0001 */  andi       $t4, $t3, 1
/* B7C20 800B7020 11800009 */  beqz       $t4, .L800B7048
/* B7C24 800B7024 00000000 */   nop
/* B7C28 800B7028 8FAD0094 */  lw         $t5, 0x94($sp)
/* B7C2C 800B702C 8E05011C */  lw         $a1, 0x11c($s0)
/* B7C30 800B7030 0C02A8ED */  jal        func_800AA3B4
/* B7C34 800B7034 8DA4000C */   lw        $a0, 0xc($t5)
/* B7C38 800B7038 14400003 */  bnez       $v0, .L800B7048
/* B7C3C 800B703C 00000000 */   nop
/* B7C40 800B7040 10000064 */  b          .L800B71D4
/* B7C44 800B7044 2402FFFC */   addiu     $v0, $zero, -4
.L800B7048:
/* B7C48 800B7048 24110001 */  addiu      $s1, $zero, 1
/* B7C4C 800B704C 1000004E */  b          .L800B7188
/* B7C50 800B7050 00000000 */   nop
.L800B7054:
/* B7C54 800B7054 0C02E998 */  jal        func_800BA660
/* B7C58 800B7058 00000000 */   nop
/* B7C5C 800B705C 10400003 */  beqz       $v0, .L800B706C
/* B7C60 800B7060 00000000 */   nop
/* B7C64 800B7064 1000005B */  b          .L800B71D4
/* B7C68 800B7068 2402FFFC */   addiu     $v0, $zero, -4
.L800B706C:
/* B7C6C 800B706C 8FAE0094 */  lw         $t6, 0x94($sp)
/* B7C70 800B7070 8DCF0010 */  lw         $t7, 0x10($t6)
/* B7C74 800B7074 31F80002 */  andi       $t8, $t7, 2
/* B7C78 800B7078 13000008 */  beqz       $t8, .L800B709C
/* B7C7C 800B707C 00000000 */   nop
/* B7C80 800B7080 8FA80094 */  lw         $t0, 0x94($sp)
/* B7C84 800B7084 3C01FBFF */  lui        $at, 0xfbff
/* B7C88 800B7088 3421F000 */  ori        $at, $at, 0xf000
/* B7C8C 800B708C 8D050014 */  lw         $a1, 0x14($t0)
/* B7C90 800B7090 3C040408 */  lui        $a0, 0x408
/* B7C94 800B7094 0C02A448 */  jal        func_800A9120
/* B7C98 800B7098 00A12821 */   addu      $a1, $a1, $at
.L800B709C:
/* B7C9C 800B709C 8FB90094 */  lw         $t9, 0x94($sp)
/* B7CA0 800B70A0 8F290010 */  lw         $t1, 0x10($t9)
/* B7CA4 800B70A4 312A0001 */  andi       $t2, $t1, 1
/* B7CA8 800B70A8 11400015 */  beqz       $t2, .L800B7100
/* B7CAC 800B70AC 00000000 */   nop
/* B7CB0 800B70B0 0C02A45C */  jal        func_800A9170
/* B7CB4 800B70B4 3C040408 */   lui       $a0, 0x408
/* B7CB8 800B70B8 3C010400 */  lui        $at, 0x400
/* B7CBC 800B70BC 34211000 */  ori        $at, $at, 0x1000
/* B7CC0 800B70C0 00409025 */  or         $s2, $v0, $zero
/* B7CC4 800B70C4 02413021 */  addu       $a2, $s2, $at
/* B7CC8 800B70C8 24040001 */  addiu      $a0, $zero, 1
/* B7CCC 800B70CC 0C02A81F */  jal        func_800AA07C
/* B7CD0 800B70D0 240503E8 */   addiu     $a1, $zero, 0x3e8
/* B7CD4 800B70D4 304B0003 */  andi       $t3, $v0, 3
/* B7CD8 800B70D8 15600003 */  bnez       $t3, .L800B70E8
/* B7CDC 800B70DC 00000000 */   nop
/* B7CE0 800B70E0 0C02E9B2 */  jal        func_800BA6C8
/* B7CE4 800B70E4 00000000 */   nop
.L800B70E8:
/* B7CE8 800B70E8 0C02E9B2 */  jal        func_800BA6C8
/* B7CEC 800B70EC 00000000 */   nop
/* B7CF0 800B70F0 240C0001 */  addiu      $t4, $zero, 1
/* B7CF4 800B70F4 3C018019 */  lui        $at, %hi(D_8018A390)
/* B7CF8 800B70F8 10000005 */  b          .L800B7110
/* B7CFC 800B70FC A02CA390 */   sb        $t4, %lo(D_8018A390)($at)
.L800B7100:
/* B7D00 800B7100 3C018019 */  lui        $at, %hi(D_8018A390)
/* B7D04 800B7104 A020A390 */  sb         $zero, %lo(D_8018A390)($at)
/* B7D08 800B7108 0C02E9B8 */  jal        func_800BA6E0
/* B7D0C 800B710C 00000000 */   nop
.L800B7110:
/* B7D10 800B7110 8FAD0094 */  lw         $t5, 0x94($sp)
/* B7D14 800B7114 91AE0004 */  lbu        $t6, 4($t5)
/* B7D18 800B7118 A3AE0088 */  sb         $t6, 0x88($sp)
/* B7D1C 800B711C A7A0008A */  sh         $zero, 0x8a($sp)
/* B7D20 800B7120 8FAF0094 */  lw         $t7, 0x94($sp)
/* B7D24 800B7124 8DF8000C */  lw         $t8, 0xc($t7)
/* B7D28 800B7128 AFB80090 */  sw         $t8, 0x90($sp)
/* B7D2C 800B712C 27A40084 */  addiu      $a0, $sp, 0x84
/* B7D30 800B7130 24050010 */  addiu      $a1, $zero, 0x10
/* B7D34 800B7134 0C026833 */  jal        func_8009A0CC
/* B7D38 800B7138 24060001 */   addiu     $a2, $zero, 1
/* B7D3C 800B713C 8FA80094 */  lw         $t0, 0x94($sp)
/* B7D40 800B7140 8D190010 */  lw         $t9, 0x10($t0)
/* B7D44 800B7144 33290001 */  andi       $t1, $t9, 1
/* B7D48 800B7148 1120000B */  beqz       $t1, .L800B7178
/* B7D4C 800B714C 00000000 */   nop
/* B7D50 800B7150 24040001 */  addiu      $a0, $zero, 1
/* B7D54 800B7154 240503E8 */  addiu      $a1, $zero, 0x3e8
/* B7D58 800B7158 0C02DA89 */  jal        func_800B6A24
/* B7D5C 800B715C 27A60038 */   addiu     $a2, $sp, 0x38
/* B7D60 800B7160 0C02A923 */  jal        func_800AA48C
/* B7D64 800B7164 27A40038 */   addiu     $a0, $sp, 0x38
/* B7D68 800B7168 27A40038 */  addiu      $a0, $sp, 0x38
/* B7D6C 800B716C 2405004C */  addiu      $a1, $zero, 0x4c
/* B7D70 800B7170 0C026833 */  jal        func_8009A0CC
/* B7D74 800B7174 24060002 */   addiu     $a2, $zero, 2
.L800B7178:
/* B7D78 800B7178 10000016 */  b          .L800B71D4
/* B7D7C 800B717C 00001025 */   or        $v0, $zero, $zero
.L800B7180:
/* B7D80 800B7180 10000014 */  b          .L800B71D4
/* B7D84 800B7184 2402FFFC */   addiu     $v0, $zero, -4
.L800B7188:
/* B7D88 800B7188 8FAA0094 */  lw         $t2, 0x94($sp)
/* B7D8C 800B718C 914B0004 */  lbu        $t3, 4($t2)
/* B7D90 800B7190 A3AB0088 */  sb         $t3, 0x88($sp)
/* B7D94 800B7194 A7A0008A */  sh         $zero, 0x8a($sp)
/* B7D98 800B7198 8FAC0094 */  lw         $t4, 0x94($sp)
/* B7D9C 800B719C 8D8D000C */  lw         $t5, 0xc($t4)
/* B7DA0 800B71A0 AFAD0090 */  sw         $t5, 0x90($sp)
/* B7DA4 800B71A4 27A40084 */  addiu      $a0, $sp, 0x84
/* B7DA8 800B71A8 24050010 */  addiu      $a1, $zero, 0x10
/* B7DAC 800B71AC 0C026833 */  jal        func_8009A0CC
/* B7DB0 800B71B0 24060001 */   addiu     $a2, $zero, 1
/* B7DB4 800B71B4 12200003 */  beqz       $s1, .L800B71C4
/* B7DB8 800B71B8 00000000 */   nop
/* B7DBC 800B71BC 0C026588 */  jal        func_80099620
/* B7DC0 800B71C0 02002025 */   or        $a0, $s0, $zero
.L800B71C4:
/* B7DC4 800B71C4 10000003 */  b          .L800B71D4
/* B7DC8 800B71C8 24020001 */   addiu     $v0, $zero, 1
/* B7DCC 800B71CC 10000001 */  b          .L800B71D4
/* B7DD0 800B71D0 00000000 */   nop
.L800B71D4:
/* B7DD4 800B71D4 8FBF0024 */  lw         $ra, 0x24($sp)
/* B7DD8 800B71D8 8FB00018 */  lw         $s0, 0x18($sp)
/* B7DDC 800B71DC 8FB1001C */  lw         $s1, 0x1c($sp)
/* B7DE0 800B71E0 8FB20020 */  lw         $s2, 0x20($sp)
/* B7DE4 800B71E4 03E00008 */  jr         $ra
/* B7DE8 800B71E8 27BD0098 */   addiu     $sp, $sp, 0x98
/* B7DEC 800B71EC 00000000 */  nop
