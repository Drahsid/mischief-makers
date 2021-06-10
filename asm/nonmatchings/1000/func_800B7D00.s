glabel func_800B7D00
/* B8900 800B7D00 27BDFF88 */  addiu      $sp, $sp, -0x78
/* B8904 800B7D04 AFBF001C */  sw         $ra, 0x1c($sp)
/* B8908 800B7D08 AFA40078 */  sw         $a0, 0x78($sp)
/* B890C 800B7D0C AFA5007C */  sw         $a1, 0x7c($sp)
/* B8910 800B7D10 AFA60080 */  sw         $a2, 0x80($sp)
/* B8914 800B7D14 AFA70084 */  sw         $a3, 0x84($sp)
/* B8918 800B7D18 8FAE0088 */  lw         $t6, 0x88($sp)
/* B891C 800B7D1C AFAE0074 */  sw         $t6, 0x74($sp)
/* B8920 800B7D20 8FAF0078 */  lw         $t7, 0x78($sp)
/* B8924 800B7D24 AFAF0070 */  sw         $t7, 0x70($sp)
/* B8928 800B7D28 8FB80070 */  lw         $t8, 0x70($sp)
/* B892C 800B7D2C 8F190000 */  lw         $t9, ($t8)
/* B8930 800B7D30 AFB9006C */  sw         $t9, 0x6c($sp)
/* B8934 800B7D34 AFA00050 */  sw         $zero, 0x50($sp)
/* B8938 800B7D38 8FA8006C */  lw         $t0, 0x6c($sp)
/* B893C 800B7D3C 11000003 */  beqz       $t0, .L800B7D4C
/* B8940 800B7D40 00000000 */   nop
/* B8944 800B7D44 10000007 */  b          .L800B7D64
/* B8948 800B7D48 00000000 */   nop
.L800B7D4C:
/* B894C 800B7D4C 3C04800F */  lui        $a0, %hi(D_800EE950)
/* B8950 800B7D50 3C05800F */  lui        $a1, %hi(D_800EE958)
/* B8954 800B7D54 24A5E958 */  addiu      $a1, $a1, %lo(D_800EE958)
/* B8958 800B7D58 2484E950 */  addiu      $a0, $a0, %lo(D_800EE950)
/* B895C 800B7D5C 0C026E74 */  jal        func_8009B9D0
/* B8960 800B7D60 2406004C */   addiu     $a2, $zero, 0x4c
.L800B7D64:
/* B8964 800B7D64 8FAA0088 */  lw         $t2, 0x88($sp)
/* B8968 800B7D68 8FA9006C */  lw         $t1, 0x6c($sp)
/* B896C 800B7D6C 8FA5007C */  lw         $a1, 0x7c($sp)
/* B8970 800B7D70 AFAA0010 */  sw         $t2, 0x10($sp)
/* B8974 800B7D74 8D390004 */  lw         $t9, 4($t1)
/* B8978 800B7D78 8FA60080 */  lw         $a2, 0x80($sp)
/* B897C 800B7D7C 8FA70084 */  lw         $a3, 0x84($sp)
/* B8980 800B7D80 0320F809 */  jalr       $t9
/* B8984 800B7D84 01202025 */   or        $a0, $t1, $zero
/* B8988 800B7D88 AFA20074 */  sw         $v0, 0x74($sp)
/* B898C 800B7D8C 240B06C0 */  addiu      $t3, $zero, 0x6c0
/* B8990 800B7D90 A7AB0064 */  sh         $t3, 0x64($sp)
/* B8994 800B7D94 240C0800 */  addiu      $t4, $zero, 0x800
/* B8998 800B7D98 A7AC0062 */  sh         $t4, 0x62($sp)
/* B899C 800B7D9C A7A00068 */  sh         $zero, 0x68($sp)
/* B89A0 800B7DA0 240D0140 */  addiu      $t5, $zero, 0x140
/* B89A4 800B7DA4 A7AD0066 */  sh         $t5, 0x66($sp)
/* B89A8 800B7DA8 8FAE0074 */  lw         $t6, 0x74($sp)
/* B89AC 800B7DAC 25CF0008 */  addiu      $t7, $t6, 8
/* B89B0 800B7DB0 AFAF0074 */  sw         $t7, 0x74($sp)
/* B89B4 800B7DB4 AFAE0044 */  sw         $t6, 0x44($sp)
/* B89B8 800B7DB8 8FA80044 */  lw         $t0, 0x44($sp)
/* B89BC 800B7DBC 3C180800 */  lui        $t8, 0x800
/* B89C0 800B7DC0 AD180000 */  sw         $t8, ($t0)
/* B89C4 800B7DC4 8FAA0080 */  lw         $t2, 0x80($sp)
/* B89C8 800B7DC8 8FAB0044 */  lw         $t3, 0x44($sp)
/* B89CC 800B7DCC 000A4840 */  sll        $t1, $t2, 1
/* B89D0 800B7DD0 3139FFFF */  andi       $t9, $t1, 0xffff
/* B89D4 800B7DD4 AD790004 */  sw         $t9, 4($t3)
/* B89D8 800B7DD8 8FAC0074 */  lw         $t4, 0x74($sp)
/* B89DC 800B7DDC 258D0008 */  addiu      $t5, $t4, 8
/* B89E0 800B7DE0 AFAD0074 */  sw         $t5, 0x74($sp)
/* B89E4 800B7DE4 AFAC0040 */  sw         $t4, 0x40($sp)
/* B89E8 800B7DE8 8FAF0040 */  lw         $t7, 0x40($sp)
/* B89EC 800B7DEC 3C0E0C00 */  lui        $t6, 0xc00
/* B89F0 800B7DF0 35CEDA83 */  ori        $t6, $t6, 0xda83
/* B89F4 800B7DF4 ADEE0000 */  sw         $t6, ($t7)
/* B89F8 800B7DF8 87B80064 */  lh         $t8, 0x64($sp)
/* B89FC 800B7DFC 8FA90040 */  lw         $t1, 0x40($sp)
/* B8A00 800B7E00 3C0106C0 */  lui        $at, 0x6c0
/* B8A04 800B7E04 3308FFFF */  andi       $t0, $t8, 0xffff
/* B8A08 800B7E08 01015025 */  or         $t2, $t0, $at
/* B8A0C 800B7E0C AD2A0004 */  sw         $t2, 4($t1)
/* B8A10 800B7E10 8FB90074 */  lw         $t9, 0x74($sp)
/* B8A14 800B7E14 272B0008 */  addiu      $t3, $t9, 8
/* B8A18 800B7E18 AFAB0074 */  sw         $t3, 0x74($sp)
/* B8A1C 800B7E1C AFB9003C */  sw         $t9, 0x3c($sp)
/* B8A20 800B7E20 8FAD003C */  lw         $t5, 0x3c($sp)
/* B8A24 800B7E24 3C0C0C00 */  lui        $t4, 0xc00
/* B8A28 800B7E28 358C5A82 */  ori        $t4, $t4, 0x5a82
/* B8A2C 800B7E2C ADAC0000 */  sw         $t4, ($t5)
/* B8A30 800B7E30 87AE0064 */  lh         $t6, 0x64($sp)
/* B8A34 800B7E34 8FA8003C */  lw         $t0, 0x3c($sp)
/* B8A38 800B7E38 3C010800 */  lui        $at, 0x800
/* B8A3C 800B7E3C 31CFFFFF */  andi       $t7, $t6, 0xffff
/* B8A40 800B7E40 01E1C025 */  or         $t8, $t7, $at
/* B8A44 800B7E44 AD180004 */  sw         $t8, 4($t0)
/* B8A48 800B7E48 8FAA0070 */  lw         $t2, 0x70($sp)
/* B8A4C 800B7E4C 8FA90074 */  lw         $t1, 0x74($sp)
/* B8A50 800B7E50 87A60064 */  lh         $a2, 0x64($sp)
/* B8A54 800B7E54 8D450018 */  lw         $a1, 0x18($t2)
/* B8A58 800B7E58 8FA70080 */  lw         $a3, 0x80($sp)
/* B8A5C 800B7E5C 01402025 */  or         $a0, $t2, $zero
/* B8A60 800B7E60 0C02E2C7 */  jal        func_800B8B1C
/* B8A64 800B7E64 AFA90010 */   sw        $t1, 0x10($sp)
/* B8A68 800B7E68 AFA20074 */  sw         $v0, 0x74($sp)
/* B8A6C 800B7E6C 8FB90074 */  lw         $t9, 0x74($sp)
/* B8A70 800B7E70 272B0008 */  addiu      $t3, $t9, 8
/* B8A74 800B7E74 AFAB0074 */  sw         $t3, 0x74($sp)
/* B8A78 800B7E78 AFB90038 */  sw         $t9, 0x38($sp)
/* B8A7C 800B7E7C 87AC0062 */  lh         $t4, 0x62($sp)
/* B8A80 800B7E80 3C0100FF */  lui        $at, 0xff
/* B8A84 800B7E84 3421FFFF */  ori        $at, $at, 0xffff
/* B8A88 800B7E88 8FAF0038 */  lw         $t7, 0x38($sp)
/* B8A8C 800B7E8C 01816824 */  and        $t5, $t4, $at
/* B8A90 800B7E90 3C010200 */  lui        $at, 0x200
/* B8A94 800B7E94 01A17025 */  or         $t6, $t5, $at
/* B8A98 800B7E98 ADEE0000 */  sw         $t6, ($t7)
/* B8A9C 800B7E9C 8FB80080 */  lw         $t8, 0x80($sp)
/* B8AA0 800B7EA0 8FAA0038 */  lw         $t2, 0x38($sp)
/* B8AA4 800B7EA4 00184040 */  sll        $t0, $t8, 1
/* B8AA8 800B7EA8 AD480004 */  sw         $t0, 4($t2)
/* B8AAC 800B7EAC 8FA90070 */  lw         $t1, 0x70($sp)
/* B8AB0 800B7EB0 A7A0006A */  sh         $zero, 0x6a($sp)
/* B8AB4 800B7EB4 91390024 */  lbu        $t9, 0x24($t1)
/* B8AB8 800B7EB8 1B2000B9 */  blez       $t9, .L800B81A0
/* B8ABC 800B7EBC 00000000 */   nop
.L800B7EC0:
/* B8AC0 800B7EC0 8FAB0070 */  lw         $t3, 0x70($sp)
/* B8AC4 800B7EC4 87AD006A */  lh         $t5, 0x6a($sp)
/* B8AC8 800B7EC8 8D6C0020 */  lw         $t4, 0x20($t3)
/* B8ACC 800B7ECC 000D7080 */  sll        $t6, $t5, 2
/* B8AD0 800B7ED0 01CD7021 */  addu       $t6, $t6, $t5
/* B8AD4 800B7ED4 000E70C0 */  sll        $t6, $t6, 3
/* B8AD8 800B7ED8 018E7821 */  addu       $t7, $t4, $t6
/* B8ADC 800B7EDC AFAF004C */  sw         $t7, 0x4c($sp)
/* B8AE0 800B7EE0 8FAA004C */  lw         $t2, 0x4c($sp)
/* B8AE4 800B7EE4 8FB80070 */  lw         $t8, 0x70($sp)
/* B8AE8 800B7EE8 8D490000 */  lw         $t1, ($t2)
/* B8AEC 800B7EEC 8F080018 */  lw         $t0, 0x18($t8)
/* B8AF0 800B7EF0 0009C823 */  negu       $t9, $t1
/* B8AF4 800B7EF4 00195840 */  sll        $t3, $t9, 1
/* B8AF8 800B7EF8 010B6821 */  addu       $t5, $t0, $t3
/* B8AFC 800B7EFC AFAD005C */  sw         $t5, 0x5c($sp)
/* B8B00 800B7F00 8FAF004C */  lw         $t7, 0x4c($sp)
/* B8B04 800B7F04 8FAC0070 */  lw         $t4, 0x70($sp)
/* B8B08 800B7F08 8DF80004 */  lw         $t8, 4($t7)
/* B8B0C 800B7F0C 8D8E0018 */  lw         $t6, 0x18($t4)
/* B8B10 800B7F10 00185023 */  negu       $t2, $t8
/* B8B14 800B7F14 000A4840 */  sll        $t1, $t2, 1
/* B8B18 800B7F18 01C9C821 */  addu       $t9, $t6, $t1
/* B8B1C 800B7F1C AFB90058 */  sw         $t9, 0x58($sp)
/* B8B20 800B7F20 8FA8005C */  lw         $t0, 0x5c($sp)
/* B8B24 800B7F24 8FAB0050 */  lw         $t3, 0x50($sp)
/* B8B28 800B7F28 150B0009 */  bne        $t0, $t3, .L800B7F50
/* B8B2C 800B7F2C 00000000 */   nop
/* B8B30 800B7F30 87AD0066 */  lh         $t5, 0x66($sp)
/* B8B34 800B7F34 A7AD0036 */  sh         $t5, 0x36($sp)
/* B8B38 800B7F38 87AC0068 */  lh         $t4, 0x68($sp)
/* B8B3C 800B7F3C A7AC0066 */  sh         $t4, 0x66($sp)
/* B8B40 800B7F40 87AF0036 */  lh         $t7, 0x36($sp)
/* B8B44 800B7F44 A7AF0068 */  sh         $t7, 0x68($sp)
/* B8B48 800B7F48 10000009 */  b          .L800B7F70
/* B8B4C 800B7F4C 00000000 */   nop
.L800B7F50:
/* B8B50 800B7F50 8FB80074 */  lw         $t8, 0x74($sp)
/* B8B54 800B7F54 8FA40070 */  lw         $a0, 0x70($sp)
/* B8B58 800B7F58 8FA5005C */  lw         $a1, 0x5c($sp)
/* B8B5C 800B7F5C 87A60068 */  lh         $a2, 0x68($sp)
/* B8B60 800B7F60 8FA70080 */  lw         $a3, 0x80($sp)
/* B8B64 800B7F64 0C02E224 */  jal        func_800B8890
/* B8B68 800B7F68 AFB80010 */   sw        $t8, 0x10($sp)
/* B8B6C 800B7F6C AFA20074 */  sw         $v0, 0x74($sp)
.L800B7F70:
/* B8B70 800B7F70 8FAA0074 */  lw         $t2, 0x74($sp)
/* B8B74 800B7F74 8FA40070 */  lw         $a0, 0x70($sp)
/* B8B78 800B7F78 8FA5004C */  lw         $a1, 0x4c($sp)
/* B8B7C 800B7F7C 87A60066 */  lh         $a2, 0x66($sp)
/* B8B80 800B7F80 8FA70080 */  lw         $a3, 0x80($sp)
/* B8B84 800B7F84 0C02E165 */  jal        func_800B8594
/* B8B88 800B7F88 AFAA0010 */   sw        $t2, 0x10($sp)
/* B8B8C 800B7F8C AFA20074 */  sw         $v0, 0x74($sp)
/* B8B90 800B7F90 8FAE004C */  lw         $t6, 0x4c($sp)
/* B8B94 800B7F94 85C90008 */  lh         $t1, 8($t6)
/* B8B98 800B7F98 11200023 */  beqz       $t1, .L800B8028
/* B8B9C 800B7F9C 00000000 */   nop
/* B8BA0 800B7FA0 8FB90074 */  lw         $t9, 0x74($sp)
/* B8BA4 800B7FA4 27280008 */  addiu      $t0, $t9, 8
/* B8BA8 800B7FA8 AFA80074 */  sw         $t0, 0x74($sp)
/* B8BAC 800B7FAC AFB90030 */  sw         $t9, 0x30($sp)
/* B8BB0 800B7FB0 8FAB004C */  lw         $t3, 0x4c($sp)
/* B8BB4 800B7FB4 8FB80030 */  lw         $t8, 0x30($sp)
/* B8BB8 800B7FB8 3C010C00 */  lui        $at, 0xc00
/* B8BBC 800B7FBC 956D0008 */  lhu        $t5, 8($t3)
/* B8BC0 800B7FC0 31ACFFFF */  andi       $t4, $t5, 0xffff
/* B8BC4 800B7FC4 01817825 */  or         $t7, $t4, $at
/* B8BC8 800B7FC8 AF0F0000 */  sw         $t7, ($t8)
/* B8BCC 800B7FCC 87AA0068 */  lh         $t2, 0x68($sp)
/* B8BD0 800B7FD0 87B90066 */  lh         $t9, 0x66($sp)
/* B8BD4 800B7FD4 8FAD0030 */  lw         $t5, 0x30($sp)
/* B8BD8 800B7FD8 314EFFFF */  andi       $t6, $t2, 0xffff
/* B8BDC 800B7FDC 000E4C00 */  sll        $t1, $t6, 0x10
/* B8BE0 800B7FE0 3328FFFF */  andi       $t0, $t9, 0xffff
/* B8BE4 800B7FE4 01285825 */  or         $t3, $t1, $t0
/* B8BE8 800B7FE8 ADAB0004 */  sw         $t3, 4($t5)
/* B8BEC 800B7FEC 8FAC004C */  lw         $t4, 0x4c($sp)
/* B8BF0 800B7FF0 8D8F0024 */  lw         $t7, 0x24($t4)
/* B8BF4 800B7FF4 15E0000C */  bnez       $t7, .L800B8028
/* B8BF8 800B7FF8 00000000 */   nop
/* B8BFC 800B7FFC 8D980020 */  lw         $t8, 0x20($t4)
/* B8C00 800B8000 17000009 */  bnez       $t8, .L800B8028
/* B8C04 800B8004 00000000 */   nop
/* B8C08 800B8008 8FAA0074 */  lw         $t2, 0x74($sp)
/* B8C0C 800B800C 8FA40070 */  lw         $a0, 0x70($sp)
/* B8C10 800B8010 8FA50058 */  lw         $a1, 0x58($sp)
/* B8C14 800B8014 87A60066 */  lh         $a2, 0x66($sp)
/* B8C18 800B8018 8FA70080 */  lw         $a3, 0x80($sp)
/* B8C1C 800B801C 0C02E2C7 */  jal        func_800B8B1C
/* B8C20 800B8020 AFAA0010 */   sw        $t2, 0x10($sp)
/* B8C24 800B8024 AFA20074 */  sw         $v0, 0x74($sp)
.L800B8028:
/* B8C28 800B8028 8FAE004C */  lw         $t6, 0x4c($sp)
/* B8C2C 800B802C 85D9000A */  lh         $t9, 0xa($t6)
/* B8C30 800B8030 1320001C */  beqz       $t9, .L800B80A4
/* B8C34 800B8034 00000000 */   nop
/* B8C38 800B8038 8FA90074 */  lw         $t1, 0x74($sp)
/* B8C3C 800B803C 25280008 */  addiu      $t0, $t1, 8
/* B8C40 800B8040 AFA80074 */  sw         $t0, 0x74($sp)
/* B8C44 800B8044 AFA9002C */  sw         $t1, 0x2c($sp)
/* B8C48 800B8048 8FAB004C */  lw         $t3, 0x4c($sp)
/* B8C4C 800B804C 8FB8002C */  lw         $t8, 0x2c($sp)
/* B8C50 800B8050 3C010C00 */  lui        $at, 0xc00
/* B8C54 800B8054 956D000A */  lhu        $t5, 0xa($t3)
/* B8C58 800B8058 31AFFFFF */  andi       $t7, $t5, 0xffff
/* B8C5C 800B805C 01E16025 */  or         $t4, $t7, $at
/* B8C60 800B8060 AF0C0000 */  sw         $t4, ($t8)
/* B8C64 800B8064 87AA0066 */  lh         $t2, 0x66($sp)
/* B8C68 800B8068 87A90068 */  lh         $t1, 0x68($sp)
/* B8C6C 800B806C 8FAD002C */  lw         $t5, 0x2c($sp)
/* B8C70 800B8070 314EFFFF */  andi       $t6, $t2, 0xffff
/* B8C74 800B8074 000ECC00 */  sll        $t9, $t6, 0x10
/* B8C78 800B8078 3128FFFF */  andi       $t0, $t1, 0xffff
/* B8C7C 800B807C 03285825 */  or         $t3, $t9, $t0
/* B8C80 800B8080 ADAB0004 */  sw         $t3, 4($t5)
/* B8C84 800B8084 8FAF0074 */  lw         $t7, 0x74($sp)
/* B8C88 800B8088 8FA40070 */  lw         $a0, 0x70($sp)
/* B8C8C 800B808C 8FA5005C */  lw         $a1, 0x5c($sp)
/* B8C90 800B8090 87A60068 */  lh         $a2, 0x68($sp)
/* B8C94 800B8094 8FA70080 */  lw         $a3, 0x80($sp)
/* B8C98 800B8098 0C02E2C7 */  jal        func_800B8B1C
/* B8C9C 800B809C AFAF0010 */   sw        $t7, 0x10($sp)
/* B8CA0 800B80A0 AFA20074 */  sw         $v0, 0x74($sp)
.L800B80A4:
/* B8CA4 800B80A4 8FAC004C */  lw         $t4, 0x4c($sp)
/* B8CA8 800B80A8 8D980020 */  lw         $t8, 0x20($t4)
/* B8CAC 800B80AC 13000008 */  beqz       $t8, .L800B80D0
/* B8CB0 800B80B0 00000000 */   nop
/* B8CB4 800B80B4 8FAA004C */  lw         $t2, 0x4c($sp)
/* B8CB8 800B80B8 87A50066 */  lh         $a1, 0x66($sp)
/* B8CBC 800B80BC 8FA60080 */  lw         $a2, 0x80($sp)
/* B8CC0 800B80C0 8FA70074 */  lw         $a3, 0x74($sp)
/* B8CC4 800B80C4 0C02E360 */  jal        func_800B8D80
/* B8CC8 800B80C8 8D440020 */   lw        $a0, 0x20($t2)
/* B8CCC 800B80CC AFA20074 */  sw         $v0, 0x74($sp)
.L800B80D0:
/* B8CD0 800B80D0 8FAE004C */  lw         $t6, 0x4c($sp)
/* B8CD4 800B80D4 8DC90024 */  lw         $t1, 0x24($t6)
/* B8CD8 800B80D8 15200009 */  bnez       $t1, .L800B8100
/* B8CDC 800B80DC 00000000 */   nop
/* B8CE0 800B80E0 8FB90074 */  lw         $t9, 0x74($sp)
/* B8CE4 800B80E4 8FA40070 */  lw         $a0, 0x70($sp)
/* B8CE8 800B80E8 8FA50058 */  lw         $a1, 0x58($sp)
/* B8CEC 800B80EC 87A60066 */  lh         $a2, 0x66($sp)
/* B8CF0 800B80F0 8FA70080 */  lw         $a3, 0x80($sp)
/* B8CF4 800B80F4 0C02E2C7 */  jal        func_800B8B1C
/* B8CF8 800B80F8 AFB90010 */   sw        $t9, 0x10($sp)
/* B8CFC 800B80FC AFA20074 */  sw         $v0, 0x74($sp)
.L800B8100:
/* B8D00 800B8100 8FA8004C */  lw         $t0, 0x4c($sp)
/* B8D04 800B8104 850B000C */  lh         $t3, 0xc($t0)
/* B8D08 800B8108 11600014 */  beqz       $t3, .L800B815C
/* B8D0C 800B810C 00000000 */   nop
/* B8D10 800B8110 8FAD0074 */  lw         $t5, 0x74($sp)
/* B8D14 800B8114 25AF0008 */  addiu      $t7, $t5, 8
/* B8D18 800B8118 AFAF0074 */  sw         $t7, 0x74($sp)
/* B8D1C 800B811C AFAD0028 */  sw         $t5, 0x28($sp)
/* B8D20 800B8120 8FAC004C */  lw         $t4, 0x4c($sp)
/* B8D24 800B8124 8FA90028 */  lw         $t1, 0x28($sp)
/* B8D28 800B8128 3C010C00 */  lui        $at, 0xc00
/* B8D2C 800B812C 9598000C */  lhu        $t8, 0xc($t4)
/* B8D30 800B8130 330AFFFF */  andi       $t2, $t8, 0xffff
/* B8D34 800B8134 01417025 */  or         $t6, $t2, $at
/* B8D38 800B8138 AD2E0000 */  sw         $t6, ($t1)
/* B8D3C 800B813C 87B90066 */  lh         $t9, 0x66($sp)
/* B8D40 800B8140 87AD0062 */  lh         $t5, 0x62($sp)
/* B8D44 800B8144 8FB80028 */  lw         $t8, 0x28($sp)
/* B8D48 800B8148 3328FFFF */  andi       $t0, $t9, 0xffff
/* B8D4C 800B814C 00085C00 */  sll        $t3, $t0, 0x10
/* B8D50 800B8150 31AFFFFF */  andi       $t7, $t5, 0xffff
/* B8D54 800B8154 016F6025 */  or         $t4, $t3, $t7
/* B8D58 800B8158 AF0C0004 */  sw         $t4, 4($t8)
.L800B815C:
/* B8D5C 800B815C 8FA9004C */  lw         $t1, 0x4c($sp)
/* B8D60 800B8160 8FAA0070 */  lw         $t2, 0x70($sp)
/* B8D64 800B8164 8D390004 */  lw         $t9, 4($t1)
/* B8D68 800B8168 8D4E0018 */  lw         $t6, 0x18($t2)
/* B8D6C 800B816C 00194040 */  sll        $t0, $t9, 1
/* B8D70 800B8170 01C86821 */  addu       $t5, $t6, $t0
/* B8D74 800B8174 AFAD0050 */  sw         $t5, 0x50($sp)
/* B8D78 800B8178 87AB006A */  lh         $t3, 0x6a($sp)
/* B8D7C 800B817C 8FAA0070 */  lw         $t2, 0x70($sp)
/* B8D80 800B8180 256F0001 */  addiu      $t7, $t3, 1
/* B8D84 800B8184 A7AF006A */  sh         $t7, 0x6a($sp)
/* B8D88 800B8188 91490024 */  lbu        $t1, 0x24($t2)
/* B8D8C 800B818C 000F6400 */  sll        $t4, $t7, 0x10
/* B8D90 800B8190 000CC403 */  sra        $t8, $t4, 0x10
/* B8D94 800B8194 0309082A */  slt        $at, $t8, $t1
/* B8D98 800B8198 1420FF49 */  bnez       $at, .L800B7EC0
/* B8D9C 800B819C 00000000 */   nop
.L800B81A0:
/* B8DA0 800B81A0 8FB90070 */  lw         $t9, 0x70($sp)
/* B8DA4 800B81A4 8FA80080 */  lw         $t0, 0x80($sp)
/* B8DA8 800B81A8 8F2E0018 */  lw         $t6, 0x18($t9)
/* B8DAC 800B81AC 00086840 */  sll        $t5, $t0, 1
/* B8DB0 800B81B0 01CD5821 */  addu       $t3, $t6, $t5
/* B8DB4 800B81B4 AF2B0018 */  sw         $t3, 0x18($t9)
/* B8DB8 800B81B8 8FAF0070 */  lw         $t7, 0x70($sp)
/* B8DBC 800B81BC 8DF8001C */  lw         $t8, 0x1c($t7)
/* B8DC0 800B81C0 8DEA0014 */  lw         $t2, 0x14($t7)
/* B8DC4 800B81C4 8DEC0018 */  lw         $t4, 0x18($t7)
/* B8DC8 800B81C8 00184840 */  sll        $t1, $t8, 1
/* B8DCC 800B81CC 01494021 */  addu       $t0, $t2, $t1
/* B8DD0 800B81D0 010C082B */  sltu       $at, $t0, $t4
/* B8DD4 800B81D4 10200007 */  beqz       $at, .L800B81F4
/* B8DD8 800B81D8 00000000 */   nop
/* B8DDC 800B81DC 8FAE0070 */  lw         $t6, 0x70($sp)
/* B8DE0 800B81E0 8DCB001C */  lw         $t3, 0x1c($t6)
/* B8DE4 800B81E4 8DCD0018 */  lw         $t5, 0x18($t6)
/* B8DE8 800B81E8 000BC840 */  sll        $t9, $t3, 1
/* B8DEC 800B81EC 01B97823 */  subu       $t7, $t5, $t9
/* B8DF0 800B81F0 ADCF0018 */  sw         $t7, 0x18($t6)
.L800B81F4:
/* B8DF4 800B81F4 8FB80074 */  lw         $t8, 0x74($sp)
/* B8DF8 800B81F8 270A0008 */  addiu      $t2, $t8, 8
/* B8DFC 800B81FC AFAA0074 */  sw         $t2, 0x74($sp)
/* B8E00 800B8200 AFB80024 */  sw         $t8, 0x24($sp)
/* B8E04 800B8204 87A90062 */  lh         $t1, 0x62($sp)
/* B8E08 800B8208 3C0100FF */  lui        $at, 0xff
/* B8E0C 800B820C 3421FFFF */  ori        $at, $at, 0xffff
/* B8E10 800B8210 8FAB0024 */  lw         $t3, 0x24($sp)
/* B8E14 800B8214 01216024 */  and        $t4, $t1, $at
/* B8E18 800B8218 3C010A00 */  lui        $at, 0xa00
/* B8E1C 800B821C 01814025 */  or         $t0, $t4, $at
/* B8E20 800B8220 AD680000 */  sw         $t0, ($t3)
/* B8E24 800B8224 8FAD0080 */  lw         $t5, 0x80($sp)
/* B8E28 800B8228 8FB80024 */  lw         $t8, 0x24($sp)
/* B8E2C 800B822C 3C0106C0 */  lui        $at, 0x6c0
/* B8E30 800B8230 000DC840 */  sll        $t9, $t5, 1
/* B8E34 800B8234 332FFFFF */  andi       $t7, $t9, 0xffff
/* B8E38 800B8238 01E17025 */  or         $t6, $t7, $at
/* B8E3C 800B823C AF0E0004 */  sw         $t6, 4($t8)
/* B8E40 800B8240 10000003 */  b          .L800B8250
/* B8E44 800B8244 8FA20074 */   lw        $v0, 0x74($sp)
/* B8E48 800B8248 10000001 */  b          .L800B8250
/* B8E4C 800B824C 00000000 */   nop
.L800B8250:
/* B8E50 800B8250 8FBF001C */  lw         $ra, 0x1c($sp)
/* B8E54 800B8254 27BD0078 */  addiu      $sp, $sp, 0x78
/* B8E58 800B8258 03E00008 */  jr         $ra
/* B8E5C 800B825C 00000000 */   nop
