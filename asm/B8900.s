.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

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

glabel func_800B8260
/* B8E60 800B8260 27BDFFF8 */  addiu      $sp, $sp, -8
/* B8E64 800B8264 24010001 */  addiu      $at, $zero, 1
/* B8E68 800B8268 14A10004 */  bne        $a1, $at, .L800B827C
/* B8E6C 800B826C 00000000 */   nop
/* B8E70 800B8270 AFA40004 */  sw         $a0, 4($sp)
/* B8E74 800B8274 8FAE0004 */  lw         $t6, 4($sp)
/* B8E78 800B8278 ADC60000 */  sw         $a2, ($t6)
.L800B827C:
/* B8E7C 800B827C 10000003 */  b          .L800B828C
/* B8E80 800B8280 00001025 */   or        $v0, $zero, $zero
/* B8E84 800B8284 10000001 */  b          .L800B828C
/* B8E88 800B8288 00000000 */   nop
.L800B828C:
/* B8E8C 800B828C 03E00008 */  jr         $ra
/* B8E90 800B8290 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800B8294
/* B8E94 800B8294 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B8E98 800B8298 AFBF0014 */  sw         $ra, 0x14($sp)
/* B8E9C 800B829C AFA40028 */  sw         $a0, 0x28($sp)
/* B8EA0 800B82A0 AFA5002C */  sw         $a1, 0x2c($sp)
/* B8EA4 800B82A4 AFA60030 */  sw         $a2, 0x30($sp)
/* B8EA8 800B82A8 8FAE0028 */  lw         $t6, 0x28($sp)
/* B8EAC 800B82AC AFAE0024 */  sw         $t6, 0x24($sp)
/* B8EB0 800B82B0 8FAF002C */  lw         $t7, 0x2c($sp)
/* B8EB4 800B82B4 25F8FFFE */  addiu      $t8, $t7, -2
/* B8EB8 800B82B8 07010004 */  bgez       $t8, .L800B82CC
/* B8EBC 800B82BC 33190007 */   andi      $t9, $t8, 7
/* B8EC0 800B82C0 13200002 */  beqz       $t9, .L800B82CC
/* B8EC4 800B82C4 00000000 */   nop
/* B8EC8 800B82C8 2739FFF8 */  addiu      $t9, $t9, -8
.L800B82CC:
/* B8ECC 800B82CC AFB90020 */  sw         $t9, 0x20($sp)
/* B8ED0 800B82D0 8FA8002C */  lw         $t0, 0x2c($sp)
/* B8ED4 800B82D4 2509FFFE */  addiu      $t1, $t0, -2
/* B8ED8 800B82D8 05210003 */  bgez       $t1, .L800B82E8
/* B8EDC 800B82DC 000950C3 */   sra       $t2, $t1, 3
/* B8EE0 800B82E0 25210007 */  addiu      $at, $t1, 7
/* B8EE4 800B82E4 000150C3 */  sra        $t2, $at, 3
.L800B82E8:
/* B8EE8 800B82E8 AFAA001C */  sw         $t2, 0x1c($sp)
/* B8EEC 800B82EC 8FAB0030 */  lw         $t3, 0x30($sp)
/* B8EF0 800B82F0 8D6C0000 */  lw         $t4, ($t3)
/* B8EF4 800B82F4 AFAC0018 */  sw         $t4, 0x18($sp)
/* B8EF8 800B82F8 8FAD0020 */  lw         $t5, 0x20($sp)
/* B8EFC 800B82FC 2DA10008 */  sltiu      $at, $t5, 8
/* B8F00 800B8300 1020009C */  beqz       $at, .L800B8574
/* B8F04 800B8304 00000000 */   nop
/* B8F08 800B8308 000D6880 */  sll        $t5, $t5, 2
/* B8F0C 800B830C 3C01800F */  lui        $at, %hi(D_800EE96C)
/* B8F10 800B8310 002D0821 */  addu       $at, $at, $t5
/* B8F14 800B8314 8C2DE96C */  lw         $t5, %lo(D_800EE96C)($at)
/* B8F18 800B8318 01A00008 */  jr         $t5
/* B8F1C 800B831C 00000000 */   nop
/* B8F20 800B8320 8FB80024 */  lw         $t8, 0x24($sp)
/* B8F24 800B8324 8FA8001C */  lw         $t0, 0x1c($sp)
/* B8F28 800B8328 8FAE0018 */  lw         $t6, 0x18($sp)
/* B8F2C 800B832C 8F190020 */  lw         $t9, 0x20($t8)
/* B8F30 800B8330 00084880 */  sll        $t1, $t0, 2
/* B8F34 800B8334 01284821 */  addu       $t1, $t1, $t0
/* B8F38 800B8338 000948C0 */  sll        $t1, $t1, 3
/* B8F3C 800B833C 2401FFF8 */  addiu      $at, $zero, -8
/* B8F40 800B8340 01C17824 */  and        $t7, $t6, $at
/* B8F44 800B8344 03295021 */  addu       $t2, $t9, $t1
/* B8F48 800B8348 AD4F0000 */  sw         $t7, ($t2)
/* B8F4C 800B834C 10000089 */  b          .L800B8574
/* B8F50 800B8350 00000000 */   nop
/* B8F54 800B8354 8FAD0024 */  lw         $t5, 0x24($sp)
/* B8F58 800B8358 8FB8001C */  lw         $t8, 0x1c($sp)
/* B8F5C 800B835C 8FAB0018 */  lw         $t3, 0x18($sp)
/* B8F60 800B8360 8DAE0020 */  lw         $t6, 0x20($t5)
/* B8F64 800B8364 00184080 */  sll        $t0, $t8, 2
/* B8F68 800B8368 01184021 */  addu       $t0, $t0, $t8
/* B8F6C 800B836C 000840C0 */  sll        $t0, $t0, 3
/* B8F70 800B8370 2401FFF8 */  addiu      $at, $zero, -8
/* B8F74 800B8374 01616024 */  and        $t4, $t3, $at
/* B8F78 800B8378 01C8C821 */  addu       $t9, $t6, $t0
/* B8F7C 800B837C AF2C0004 */  sw         $t4, 4($t9)
/* B8F80 800B8380 1000007C */  b          .L800B8574
/* B8F84 800B8384 00000000 */   nop
/* B8F88 800B8388 8FAF0024 */  lw         $t7, 0x24($sp)
/* B8F8C 800B838C 8FAB001C */  lw         $t3, 0x1c($sp)
/* B8F90 800B8390 8FA90018 */  lw         $t1, 0x18($sp)
/* B8F94 800B8394 8DEA0020 */  lw         $t2, 0x20($t7)
/* B8F98 800B8398 000B6880 */  sll        $t5, $t3, 2
/* B8F9C 800B839C 01AB6821 */  addu       $t5, $t5, $t3
/* B8FA0 800B83A0 000D68C0 */  sll        $t5, $t5, 3
/* B8FA4 800B83A4 014DC021 */  addu       $t8, $t2, $t5
/* B8FA8 800B83A8 A7090008 */  sh         $t1, 8($t8)
/* B8FAC 800B83AC 10000071 */  b          .L800B8574
/* B8FB0 800B83B0 00000000 */   nop
/* B8FB4 800B83B4 8FA80024 */  lw         $t0, 0x24($sp)
/* B8FB8 800B83B8 8FB9001C */  lw         $t9, 0x1c($sp)
/* B8FBC 800B83BC 8FAE0018 */  lw         $t6, 0x18($sp)
/* B8FC0 800B83C0 8D0C0020 */  lw         $t4, 0x20($t0)
/* B8FC4 800B83C4 00197880 */  sll        $t7, $t9, 2
/* B8FC8 800B83C8 01F97821 */  addu       $t7, $t7, $t9
/* B8FCC 800B83CC 000F78C0 */  sll        $t7, $t7, 3
/* B8FD0 800B83D0 018F5821 */  addu       $t3, $t4, $t7
/* B8FD4 800B83D4 A56E000A */  sh         $t6, 0xa($t3)
/* B8FD8 800B83D8 10000066 */  b          .L800B8574
/* B8FDC 800B83DC 00000000 */   nop
/* B8FE0 800B83E0 8FAD0024 */  lw         $t5, 0x24($sp)
/* B8FE4 800B83E4 8FB8001C */  lw         $t8, 0x1c($sp)
/* B8FE8 800B83E8 8FAA0018 */  lw         $t2, 0x18($sp)
/* B8FEC 800B83EC 8DA90020 */  lw         $t1, 0x20($t5)
/* B8FF0 800B83F0 00184080 */  sll        $t0, $t8, 2
/* B8FF4 800B83F4 01184021 */  addu       $t0, $t0, $t8
/* B8FF8 800B83F8 000840C0 */  sll        $t0, $t0, 3
/* B8FFC 800B83FC 0128C821 */  addu       $t9, $t1, $t0
/* B9000 800B8400 A72A000C */  sh         $t2, 0xc($t9)
/* B9004 800B8404 1000005B */  b          .L800B8574
/* B9008 800B8408 00000000 */   nop
/* B900C 800B840C 8FAC0018 */  lw         $t4, 0x18($sp)
/* B9010 800B8410 3C01447A */  lui        $at, 0x447a
/* B9014 800B8414 44814000 */  mtc1       $at, $f8
/* B9018 800B8418 448C2000 */  mtc1       $t4, $f4
/* B901C 800B841C 3C0F800F */  lui        $t7, %hi(D_800EA520)
/* B9020 800B8420 8DEFA520 */  lw         $t7, %lo(D_800EA520)($t7)
/* B9024 800B8424 468021A0 */  cvt.s.w    $f6, $f4
/* B9028 800B8428 3C014000 */  lui        $at, 0x4000
/* B902C 800B842C 44819800 */  mtc1       $at, $f19
/* B9030 800B8430 44809000 */  mtc1       $zero, $f18
/* B9034 800B8434 8DEE0044 */  lw         $t6, 0x44($t7)
/* B9038 800B8438 8FAB0024 */  lw         $t3, 0x24($sp)
/* B903C 800B843C 46083283 */  div.s      $f10, $f6, $f8
/* B9040 800B8440 448E3000 */  mtc1       $t6, $f6
/* B9044 800B8444 8FB8001C */  lw         $t8, 0x1c($sp)
/* B9048 800B8448 8D6D0020 */  lw         $t5, 0x20($t3)
/* B904C 800B844C 46803221 */  cvt.d.w    $f8, $f6
/* B9050 800B8450 00184880 */  sll        $t1, $t8, 2
/* B9054 800B8454 01384821 */  addu       $t1, $t1, $t8
/* B9058 800B8458 000948C0 */  sll        $t1, $t1, 3
/* B905C 800B845C 01A94021 */  addu       $t0, $t5, $t1
/* B9060 800B8460 46005421 */  cvt.d.s    $f16, $f10
/* B9064 800B8464 46328102 */  mul.d      $f4, $f16, $f18
/* B9068 800B8468 46282283 */  div.d      $f10, $f4, $f8
/* B906C 800B846C 46205420 */  cvt.s.d    $f16, $f10
/* B9070 800B8470 E5100010 */  swc1       $f16, 0x10($t0)
/* B9074 800B8474 1000003F */  b          .L800B8574
/* B9078 800B8478 00000000 */   nop
/* B907C 800B847C 8FAA0024 */  lw         $t2, 0x24($sp)
/* B9080 800B8480 8FAC001C */  lw         $t4, 0x1c($sp)
/* B9084 800B8484 8D590020 */  lw         $t9, 0x20($t2)
/* B9088 800B8488 000C7880 */  sll        $t7, $t4, 2
/* B908C 800B848C 01EC7821 */  addu       $t7, $t7, $t4
/* B9090 800B8490 000F78C0 */  sll        $t7, $t7, 3
/* B9094 800B8494 032F7021 */  addu       $t6, $t9, $t7
/* B9098 800B8498 8DCB0004 */  lw         $t3, 4($t6)
/* B909C 800B849C 8DD80000 */  lw         $t8, ($t6)
/* B90A0 800B84A0 01786823 */  subu       $t5, $t3, $t8
/* B90A4 800B84A4 448D9000 */  mtc1       $t5, $f18
/* B90A8 800B84A8 05A10006 */  bgez       $t5, .L800B84C4
/* B90AC 800B84AC 468091A1 */   cvt.d.w   $f6, $f18
/* B90B0 800B84B0 3C0141F0 */  lui        $at, 0x41f0
/* B90B4 800B84B4 44812800 */  mtc1       $at, $f5
/* B90B8 800B84B8 44802000 */  mtc1       $zero, $f4
/* B90BC 800B84BC 00000000 */  nop
/* B90C0 800B84C0 46243180 */  add.d      $f6, $f6, $f4
.L800B84C4:
/* B90C4 800B84C4 8FA90018 */  lw         $t1, 0x18($sp)
/* B90C8 800B84C8 3C01800F */  lui        $at, %hi(D_800EE990)
/* B90CC 800B84CC D432E990 */  ldc1       $f18, %lo(D_800EE990)($at)
/* B90D0 800B84D0 44894000 */  mtc1       $t1, $f8
/* B90D4 800B84D4 00000000 */  nop
/* B90D8 800B84D8 468042A0 */  cvt.s.w    $f10, $f8
/* B90DC 800B84DC 46005421 */  cvt.d.s    $f16, $f10
/* B90E0 800B84E0 46328103 */  div.d      $f4, $f16, $f18
/* B90E4 800B84E4 46243202 */  mul.d      $f8, $f6, $f4
/* B90E8 800B84E8 462042A0 */  cvt.s.d    $f10, $f8
/* B90EC 800B84EC E5CA001C */  swc1       $f10, 0x1c($t6)
/* B90F0 800B84F0 10000020 */  b          .L800B8574
/* B90F4 800B84F4 00000000 */   nop
/* B90F8 800B84F8 8FA80024 */  lw         $t0, 0x24($sp)
/* B90FC 800B84FC 8FAC001C */  lw         $t4, 0x1c($sp)
/* B9100 800B8500 8D0A0020 */  lw         $t2, 0x20($t0)
/* B9104 800B8504 000CC880 */  sll        $t9, $t4, 2
/* B9108 800B8508 032CC821 */  addu       $t9, $t9, $t4
/* B910C 800B850C 0019C8C0 */  sll        $t9, $t9, 3
/* B9110 800B8510 01597821 */  addu       $t7, $t2, $t9
/* B9114 800B8514 8DEB0020 */  lw         $t3, 0x20($t7)
/* B9118 800B8518 11600014 */  beqz       $t3, .L800B856C
/* B911C 800B851C 00000000 */   nop
/* B9120 800B8520 8FAD0024 */  lw         $t5, 0x24($sp)
/* B9124 800B8524 8FAE001C */  lw         $t6, 0x1c($sp)
/* B9128 800B8528 8FB80018 */  lw         $t8, 0x18($sp)
/* B912C 800B852C 8DA90020 */  lw         $t1, 0x20($t5)
/* B9130 800B8530 000E4080 */  sll        $t0, $t6, 2
/* B9134 800B8534 010E4021 */  addu       $t0, $t0, $t6
/* B9138 800B8538 000840C0 */  sll        $t0, $t0, 3
/* B913C 800B853C 01286021 */  addu       $t4, $t1, $t0
/* B9140 800B8540 8D8A0020 */  lw         $t2, 0x20($t4)
/* B9144 800B8544 A5580000 */  sh         $t8, ($t2)
/* B9148 800B8548 8FB90024 */  lw         $t9, 0x24($sp)
/* B914C 800B854C 8FAB001C */  lw         $t3, 0x1c($sp)
/* B9150 800B8550 8F2F0020 */  lw         $t7, 0x20($t9)
/* B9154 800B8554 000B6880 */  sll        $t5, $t3, 2
/* B9158 800B8558 01AB6821 */  addu       $t5, $t5, $t3
/* B915C 800B855C 000D68C0 */  sll        $t5, $t5, 3
/* B9160 800B8560 01ED7021 */  addu       $t6, $t7, $t5
/* B9164 800B8564 0C02B9D0 */  jal        func_800AE740
/* B9168 800B8568 8DC40020 */   lw        $a0, 0x20($t6)
.L800B856C:
/* B916C 800B856C 10000001 */  b          .L800B8574
/* B9170 800B8570 00000000 */   nop
.L800B8574:
/* B9174 800B8574 10000003 */  b          .L800B8584
/* B9178 800B8578 00001025 */   or        $v0, $zero, $zero
/* B917C 800B857C 10000001 */  b          .L800B8584
/* B9180 800B8580 00000000 */   nop
.L800B8584:
/* B9184 800B8584 8FBF0014 */  lw         $ra, 0x14($sp)
/* B9188 800B8588 27BD0028 */  addiu      $sp, $sp, 0x28
/* B918C 800B858C 03E00008 */  jr         $ra
/* B9190 800B8590 00000000 */   nop

glabel func_800B8594
/* B9194 800B8594 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* B9198 800B8598 AFBF001C */  sw         $ra, 0x1c($sp)
/* B919C 800B859C AFA40050 */  sw         $a0, 0x50($sp)
/* B91A0 800B85A0 AFA50054 */  sw         $a1, 0x54($sp)
/* B91A4 800B85A4 AFA60058 */  sw         $a2, 0x58($sp)
/* B91A8 800B85A8 AFA7005C */  sw         $a3, 0x5c($sp)
/* B91AC 800B85AC 8FAE0060 */  lw         $t6, 0x60($sp)
/* B91B0 800B85B0 AFAE004C */  sw         $t6, 0x4c($sp)
/* B91B4 800B85B4 240F0280 */  addiu      $t7, $zero, 0x280
/* B91B8 800B85B8 AFAF0040 */  sw         $t7, 0x40($sp)
/* B91BC 800B85BC AFA0002C */  sw         $zero, 0x2c($sp)
/* B91C0 800B85C0 8FB80054 */  lw         $t8, 0x54($sp)
/* B91C4 800B85C4 8F190024 */  lw         $t9, 0x24($t8)
/* B91C8 800B85C8 13200099 */  beqz       $t9, .L800B8830
/* B91CC 800B85CC 00000000 */   nop
/* B91D0 800B85D0 8FA80054 */  lw         $t0, 0x54($sp)
/* B91D4 800B85D4 8D090004 */  lw         $t1, 4($t0)
/* B91D8 800B85D8 8D0A0000 */  lw         $t2, ($t0)
/* B91DC 800B85DC 012A5823 */  subu       $t3, $t1, $t2
/* B91E0 800B85E0 AFAB0028 */  sw         $t3, 0x28($sp)
/* B91E4 800B85E4 8FA40054 */  lw         $a0, 0x54($sp)
/* B91E8 800B85E8 0C02E3A6 */  jal        func_800B8E98
/* B91EC 800B85EC 8FA5005C */   lw        $a1, 0x5c($sp)
/* B91F0 800B85F0 E7A00030 */  swc1       $f0, 0x30($sp)
/* B91F4 800B85F4 8FAC0028 */  lw         $t4, 0x28($sp)
/* B91F8 800B85F8 C7A40030 */  lwc1       $f4, 0x30($sp)
/* B91FC 800B85FC 448C3000 */  mtc1       $t4, $f6
/* B9200 800B8600 00000000 */  nop
/* B9204 800B8604 46803220 */  cvt.s.w    $f8, $f6
/* B9208 800B8608 46082283 */  div.s      $f10, $f4, $f8
/* B920C 800B860C E7AA0030 */  swc1       $f10, 0x30($sp)
/* B9210 800B8610 3C014700 */  lui        $at, 0x4700
/* B9214 800B8614 44819000 */  mtc1       $at, $f18
/* B9218 800B8618 C7B00030 */  lwc1       $f16, 0x30($sp)
/* B921C 800B861C 46128182 */  mul.s      $f6, $f16, $f18
/* B9220 800B8620 4600310D */  trunc.w.s  $f4, $f6
/* B9224 800B8624 440E2000 */  mfc1       $t6, $f4
/* B9228 800B8628 00000000 */  nop
/* B922C 800B862C 448E4000 */  mtc1       $t6, $f8
/* B9230 800B8630 00000000 */  nop
/* B9234 800B8634 468042A0 */  cvt.s.w    $f10, $f8
/* B9238 800B8638 E7AA0030 */  swc1       $f10, 0x30($sp)
/* B923C 800B863C 3C014700 */  lui        $at, 0x4700
/* B9240 800B8640 44819000 */  mtc1       $at, $f18
/* B9244 800B8644 C7B00030 */  lwc1       $f16, 0x30($sp)
/* B9248 800B8648 46128183 */  div.s      $f6, $f16, $f18
/* B924C 800B864C E7A60030 */  swc1       $f6, 0x30($sp)
/* B9250 800B8650 C7A80030 */  lwc1       $f8, 0x30($sp)
/* B9254 800B8654 3C013FF0 */  lui        $at, 0x3ff0
/* B9258 800B8658 44812800 */  mtc1       $at, $f5
/* B925C 800B865C 44802000 */  mtc1       $zero, $f4
/* B9260 800B8660 460042A1 */  cvt.d.s    $f10, $f8
/* B9264 800B8664 462A2401 */  sub.d      $f16, $f4, $f10
/* B9268 800B8668 462084A0 */  cvt.s.d    $f18, $f16
/* B926C 800B866C E7B20034 */  swc1       $f18, 0x34($sp)
/* B9270 800B8670 8FAF005C */  lw         $t7, 0x5c($sp)
/* B9274 800B8674 C7A60034 */  lwc1       $f6, 0x34($sp)
/* B9278 800B8678 8FB80054 */  lw         $t8, 0x54($sp)
/* B927C 800B867C 448F4000 */  mtc1       $t7, $f8
/* B9280 800B8680 8F190024 */  lw         $t9, 0x24($t8)
/* B9284 800B8684 46804120 */  cvt.s.w    $f4, $f8
/* B9288 800B8688 C7300020 */  lwc1       $f16, 0x20($t9)
/* B928C 800B868C 46043282 */  mul.s      $f10, $f6, $f4
/* B9290 800B8690 460A8480 */  add.s      $f18, $f16, $f10
/* B9294 800B8694 E7B20038 */  swc1       $f18, 0x38($sp)
/* B9298 800B8698 C7A80038 */  lwc1       $f8, 0x38($sp)
/* B929C 800B869C 4600418D */  trunc.w.s  $f6, $f8
/* B92A0 800B86A0 44093000 */  mfc1       $t1, $f6
/* B92A4 800B86A4 00000000 */  nop
/* B92A8 800B86A8 AFA90044 */  sw         $t1, 0x44($sp)
/* B92AC 800B86AC 8FAA0044 */  lw         $t2, 0x44($sp)
/* B92B0 800B86B0 C7A40038 */  lwc1       $f4, 0x38($sp)
/* B92B4 800B86B4 8FAB0054 */  lw         $t3, 0x54($sp)
/* B92B8 800B86B8 448A8000 */  mtc1       $t2, $f16
/* B92BC 800B86BC 8D6C0024 */  lw         $t4, 0x24($t3)
/* B92C0 800B86C0 468082A0 */  cvt.s.w    $f10, $f16
/* B92C4 800B86C4 460A2481 */  sub.s      $f18, $f4, $f10
/* B92C8 800B86C8 E5920020 */  swc1       $f18, 0x20($t4)
/* B92CC 800B86CC 8FAD0054 */  lw         $t5, 0x54($sp)
/* B92D0 800B86D0 8FA90050 */  lw         $t1, 0x50($sp)
/* B92D4 800B86D4 8DAE0004 */  lw         $t6, 4($t5)
/* B92D8 800B86D8 8DAF0018 */  lw         $t7, 0x18($t5)
/* B92DC 800B86DC 8D2A0018 */  lw         $t2, 0x18($t1)
/* B92E0 800B86E0 01CFC023 */  subu       $t8, $t6, $t7
/* B92E4 800B86E4 0018C823 */  negu       $t9, $t8
/* B92E8 800B86E8 00194040 */  sll        $t0, $t9, 1
/* B92EC 800B86EC 01485821 */  addu       $t3, $t2, $t0
/* B92F0 800B86F0 AFAB003C */  sw         $t3, 0x3c($sp)
/* B92F4 800B86F4 8FAC003C */  lw         $t4, 0x3c($sp)
/* B92F8 800B86F8 318D0007 */  andi       $t5, $t4, 7
/* B92FC 800B86FC 000D7043 */  sra        $t6, $t5, 1
/* B9300 800B8700 AFAE002C */  sw         $t6, 0x2c($sp)
/* B9304 800B8704 8FB8002C */  lw         $t8, 0x2c($sp)
/* B9308 800B8708 8FAF003C */  lw         $t7, 0x3c($sp)
/* B930C 800B870C 8FA90044 */  lw         $t1, 0x44($sp)
/* B9310 800B8710 8FAA004C */  lw         $t2, 0x4c($sp)
/* B9314 800B8714 0018C840 */  sll        $t9, $t8, 1
/* B9318 800B8718 8FA40050 */  lw         $a0, 0x50($sp)
/* B931C 800B871C 8FA60040 */  lw         $a2, 0x40($sp)
/* B9320 800B8720 01F92823 */  subu       $a1, $t7, $t9
/* B9324 800B8724 01383821 */  addu       $a3, $t1, $t8
/* B9328 800B8728 0C02E224 */  jal        func_800B8890
/* B932C 800B872C AFAA0010 */   sw        $t2, 0x10($sp)
/* B9330 800B8730 AFA2004C */  sw         $v0, 0x4c($sp)
/* B9334 800B8734 3C014700 */  lui        $at, 0x4700
/* B9338 800B8738 44813000 */  mtc1       $at, $f6
/* B933C 800B873C C7A80034 */  lwc1       $f8, 0x34($sp)
/* B9340 800B8740 46064402 */  mul.s      $f16, $f8, $f6
/* B9344 800B8744 4600810D */  trunc.w.s  $f4, $f16
/* B9348 800B8748 440B2000 */  mfc1       $t3, $f4
/* B934C 800B874C 00000000 */  nop
/* B9350 800B8750 AFAB0048 */  sw         $t3, 0x48($sp)
/* B9354 800B8754 8FAC004C */  lw         $t4, 0x4c($sp)
/* B9358 800B8758 258D0008 */  addiu      $t5, $t4, 8
/* B935C 800B875C AFAD004C */  sw         $t5, 0x4c($sp)
/* B9360 800B8760 AFAC0024 */  sw         $t4, 0x24($sp)
/* B9364 800B8764 8FAE002C */  lw         $t6, 0x2c($sp)
/* B9368 800B8768 8FB90040 */  lw         $t9, 0x40($sp)
/* B936C 800B876C 8FA80024 */  lw         $t0, 0x24($sp)
/* B9370 800B8770 000E7840 */  sll        $t7, $t6, 1
/* B9374 800B8774 01F94821 */  addu       $t1, $t7, $t9
/* B9378 800B8778 3138FFFF */  andi       $t8, $t1, 0xffff
/* B937C 800B877C 3C010800 */  lui        $at, 0x800
/* B9380 800B8780 03015025 */  or         $t2, $t8, $at
/* B9384 800B8784 AD0A0000 */  sw         $t2, ($t0)
/* B9388 800B8788 8FAB0058 */  lw         $t3, 0x58($sp)
/* B938C 800B878C 8FAE005C */  lw         $t6, 0x5c($sp)
/* B9390 800B8790 8FB80024 */  lw         $t8, 0x24($sp)
/* B9394 800B8794 316CFFFF */  andi       $t4, $t3, 0xffff
/* B9398 800B8798 000E7840 */  sll        $t7, $t6, 1
/* B939C 800B879C 31F9FFFF */  andi       $t9, $t7, 0xffff
/* B93A0 800B87A0 000C6C00 */  sll        $t5, $t4, 0x10
/* B93A4 800B87A4 01B94825 */  or         $t1, $t5, $t9
/* B93A8 800B87A8 AF090004 */  sw         $t1, 4($t8)
/* B93AC 800B87AC 8FAA004C */  lw         $t2, 0x4c($sp)
/* B93B0 800B87B0 25480008 */  addiu      $t0, $t2, 8
/* B93B4 800B87B4 AFA8004C */  sw         $t0, 0x4c($sp)
/* B93B8 800B87B8 AFAA0020 */  sw         $t2, 0x20($sp)
/* B93BC 800B87BC 8FAB0054 */  lw         $t3, 0x54($sp)
/* B93C0 800B87C0 8FA90048 */  lw         $t1, 0x48($sp)
/* B93C4 800B87C4 8FA80020 */  lw         $t0, 0x20($sp)
/* B93C8 800B87C8 8D6C0024 */  lw         $t4, 0x24($t3)
/* B93CC 800B87CC 3C010500 */  lui        $at, 0x500
/* B93D0 800B87D0 3138FFFF */  andi       $t8, $t1, 0xffff
/* B93D4 800B87D4 8D8E0024 */  lw         $t6, 0x24($t4)
/* B93D8 800B87D8 31CF00FF */  andi       $t7, $t6, 0xff
/* B93DC 800B87DC 000F6C00 */  sll        $t5, $t7, 0x10
/* B93E0 800B87E0 01A1C825 */  or         $t9, $t5, $at
/* B93E4 800B87E4 03385025 */  or         $t2, $t9, $t8
/* B93E8 800B87E8 AD0A0000 */  sw         $t2, ($t0)
/* B93EC 800B87EC 8FAB0054 */  lw         $t3, 0x54($sp)
/* B93F0 800B87F0 8D6C0024 */  lw         $t4, 0x24($t3)
/* B93F4 800B87F4 0C026964 */  jal        func_8009A590
/* B93F8 800B87F8 8D840014 */   lw        $a0, 0x14($t4)
/* B93FC 800B87FC 8FAE0020 */  lw         $t6, 0x20($sp)
/* B9400 800B8800 ADC20004 */  sw         $v0, 4($t6)
/* B9404 800B8804 8FAF0054 */  lw         $t7, 0x54($sp)
/* B9408 800B8808 8DED0024 */  lw         $t5, 0x24($t7)
/* B940C 800B880C ADA00024 */  sw         $zero, 0x24($t5)
/* B9410 800B8810 8FAA0054 */  lw         $t2, 0x54($sp)
/* B9414 800B8814 8FA90044 */  lw         $t1, 0x44($sp)
/* B9418 800B8818 8FB9005C */  lw         $t9, 0x5c($sp)
/* B941C 800B881C 8D480018 */  lw         $t0, 0x18($t2)
/* B9420 800B8820 0139C023 */  subu       $t8, $t1, $t9
/* B9424 800B8824 01185821 */  addu       $t3, $t0, $t8
/* B9428 800B8828 10000011 */  b          .L800B8870
/* B942C 800B882C AD4B0018 */   sw        $t3, 0x18($t2)
.L800B8830:
/* B9430 800B8830 8FAF0054 */  lw         $t7, 0x54($sp)
/* B9434 800B8834 8FAC0050 */  lw         $t4, 0x50($sp)
/* B9438 800B8838 8DED0004 */  lw         $t5, 4($t7)
/* B943C 800B883C 8D8E0018 */  lw         $t6, 0x18($t4)
/* B9440 800B8840 000D4823 */  negu       $t1, $t5
/* B9444 800B8844 0009C840 */  sll        $t9, $t1, 1
/* B9448 800B8848 01D94021 */  addu       $t0, $t6, $t9
/* B944C 800B884C AFA8003C */  sw         $t0, 0x3c($sp)
/* B9450 800B8850 8FB8004C */  lw         $t8, 0x4c($sp)
/* B9454 800B8854 8FA40050 */  lw         $a0, 0x50($sp)
/* B9458 800B8858 8FA5003C */  lw         $a1, 0x3c($sp)
/* B945C 800B885C 8FA60058 */  lw         $a2, 0x58($sp)
/* B9460 800B8860 8FA7005C */  lw         $a3, 0x5c($sp)
/* B9464 800B8864 0C02E224 */  jal        func_800B8890
/* B9468 800B8868 AFB80010 */   sw        $t8, 0x10($sp)
/* B946C 800B886C AFA2004C */  sw         $v0, 0x4c($sp)
.L800B8870:
/* B9470 800B8870 10000003 */  b          .L800B8880
/* B9474 800B8874 8FA2004C */   lw        $v0, 0x4c($sp)
/* B9478 800B8878 10000001 */  b          .L800B8880
/* B947C 800B887C 00000000 */   nop
.L800B8880:
/* B9480 800B8880 8FBF001C */  lw         $ra, 0x1c($sp)
/* B9484 800B8884 27BD0050 */  addiu      $sp, $sp, 0x50
/* B9488 800B8888 03E00008 */  jr         $ra
/* B948C 800B888C 00000000 */   nop

glabel func_800B8890
/* B9490 800B8890 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* B9494 800B8894 AFBF0014 */  sw         $ra, 0x14($sp)
/* B9498 800B8898 AFA40048 */  sw         $a0, 0x48($sp)
/* B949C 800B889C AFA5004C */  sw         $a1, 0x4c($sp)
/* B94A0 800B88A0 AFA60050 */  sw         $a2, 0x50($sp)
/* B94A4 800B88A4 AFA70054 */  sw         $a3, 0x54($sp)
/* B94A8 800B88A8 8FAE0058 */  lw         $t6, 0x58($sp)
/* B94AC 800B88AC AFAE0044 */  sw         $t6, 0x44($sp)
/* B94B0 800B88B0 8FAF0048 */  lw         $t7, 0x48($sp)
/* B94B4 800B88B4 8DF9001C */  lw         $t9, 0x1c($t7)
/* B94B8 800B88B8 8DF80014 */  lw         $t8, 0x14($t7)
/* B94BC 800B88BC 00194040 */  sll        $t0, $t9, 1
/* B94C0 800B88C0 03084821 */  addu       $t1, $t8, $t0
/* B94C4 800B88C4 AFA90034 */  sw         $t1, 0x34($sp)
/* B94C8 800B88C8 8FAA004C */  lw         $t2, 0x4c($sp)
/* B94CC 800B88CC 8FAB0034 */  lw         $t3, 0x34($sp)
/* B94D0 800B88D0 016A082B */  sltu       $at, $t3, $t2
/* B94D4 800B88D4 10200009 */  beqz       $at, .L800B88FC
/* B94D8 800B88D8 00000000 */   nop
/* B94DC 800B88DC 8FAC0034 */  lw         $t4, 0x34($sp)
/* B94E0 800B88E0 8FAD004C */  lw         $t5, 0x4c($sp)
/* B94E4 800B88E4 24040085 */  addiu      $a0, $zero, 0x85
/* B94E8 800B88E8 24050001 */  addiu      $a1, $zero, 1
/* B94EC 800B88EC 018D3023 */  subu       $a2, $t4, $t5
/* B94F0 800B88F0 00067043 */  sra        $t6, $a2, 1
/* B94F4 800B88F4 0C0297B4 */  jal        func_800A5ED0
/* B94F8 800B88F8 01C03025 */   or        $a2, $t6, $zero
.L800B88FC:
/* B94FC 800B88FC 8FB90048 */  lw         $t9, 0x48($sp)
/* B9500 800B8900 8FAF004C */  lw         $t7, 0x4c($sp)
/* B9504 800B8904 8F380014 */  lw         $t8, 0x14($t9)
/* B9508 800B8908 01F8082B */  sltu       $at, $t7, $t8
/* B950C 800B890C 10200007 */  beqz       $at, .L800B892C
/* B9510 800B8910 00000000 */   nop
/* B9514 800B8914 8FA90048 */  lw         $t1, 0x48($sp)
/* B9518 800B8918 8FA8004C */  lw         $t0, 0x4c($sp)
/* B951C 800B891C 8D2A001C */  lw         $t2, 0x1c($t1)
/* B9520 800B8920 000A5840 */  sll        $t3, $t2, 1
/* B9524 800B8924 010B6021 */  addu       $t4, $t0, $t3
/* B9528 800B8928 AFAC004C */  sw         $t4, 0x4c($sp)
.L800B892C:
/* B952C 800B892C 8FAD0054 */  lw         $t5, 0x54($sp)
/* B9530 800B8930 8FB9004C */  lw         $t9, 0x4c($sp)
/* B9534 800B8934 000D7040 */  sll        $t6, $t5, 1
/* B9538 800B8938 01D97821 */  addu       $t7, $t6, $t9
/* B953C 800B893C AFAF0038 */  sw         $t7, 0x38($sp)
/* B9540 800B8940 8FB80038 */  lw         $t8, 0x38($sp)
/* B9544 800B8944 8FA90034 */  lw         $t1, 0x34($sp)
/* B9548 800B8948 0138082B */  sltu       $at, $t1, $t8
/* B954C 800B894C 10200045 */  beqz       $at, .L800B8A64
/* B9550 800B8950 00000000 */   nop
/* B9554 800B8954 8FAA0038 */  lw         $t2, 0x38($sp)
/* B9558 800B8958 8FA80034 */  lw         $t0, 0x34($sp)
/* B955C 800B895C 01485823 */  subu       $t3, $t2, $t0
/* B9560 800B8960 000B6043 */  sra        $t4, $t3, 1
/* B9564 800B8964 AFAC0040 */  sw         $t4, 0x40($sp)
/* B9568 800B8968 8FAD0034 */  lw         $t5, 0x34($sp)
/* B956C 800B896C 8FAE004C */  lw         $t6, 0x4c($sp)
/* B9570 800B8970 01AEC823 */  subu       $t9, $t5, $t6
/* B9574 800B8974 00197843 */  sra        $t7, $t9, 1
/* B9578 800B8978 AFAF003C */  sw         $t7, 0x3c($sp)
/* B957C 800B897C 8FB80044 */  lw         $t8, 0x44($sp)
/* B9580 800B8980 27090008 */  addiu      $t1, $t8, 8
/* B9584 800B8984 AFA90044 */  sw         $t1, 0x44($sp)
/* B9588 800B8988 AFB80030 */  sw         $t8, 0x30($sp)
/* B958C 800B898C 8FAA0050 */  lw         $t2, 0x50($sp)
/* B9590 800B8990 8FAC0030 */  lw         $t4, 0x30($sp)
/* B9594 800B8994 3C010800 */  lui        $at, 0x800
/* B9598 800B8998 3148FFFF */  andi       $t0, $t2, 0xffff
/* B959C 800B899C 01015825 */  or         $t3, $t0, $at
/* B95A0 800B89A0 AD8B0000 */  sw         $t3, ($t4)
/* B95A4 800B89A4 8FAD003C */  lw         $t5, 0x3c($sp)
/* B95A8 800B89A8 8FAF0030 */  lw         $t7, 0x30($sp)
/* B95AC 800B89AC 000D7040 */  sll        $t6, $t5, 1
/* B95B0 800B89B0 31D9FFFF */  andi       $t9, $t6, 0xffff
/* B95B4 800B89B4 ADF90004 */  sw         $t9, 4($t7)
/* B95B8 800B89B8 8FB80044 */  lw         $t8, 0x44($sp)
/* B95BC 800B89BC 27090008 */  addiu      $t1, $t8, 8
/* B95C0 800B89C0 AFA90044 */  sw         $t1, 0x44($sp)
/* B95C4 800B89C4 AFB8002C */  sw         $t8, 0x2c($sp)
/* B95C8 800B89C8 8FA8002C */  lw         $t0, 0x2c($sp)
/* B95CC 800B89CC 3C0A0400 */  lui        $t2, 0x400
/* B95D0 800B89D0 AD0A0000 */  sw         $t2, ($t0)
/* B95D4 800B89D4 0C026964 */  jal        func_8009A590
/* B95D8 800B89D8 8FA4004C */   lw        $a0, 0x4c($sp)
/* B95DC 800B89DC 8FAB002C */  lw         $t3, 0x2c($sp)
/* B95E0 800B89E0 AD620004 */  sw         $v0, 4($t3)
/* B95E4 800B89E4 8FAC0044 */  lw         $t4, 0x44($sp)
/* B95E8 800B89E8 258D0008 */  addiu      $t5, $t4, 8
/* B95EC 800B89EC AFAD0044 */  sw         $t5, 0x44($sp)
/* B95F0 800B89F0 AFAC0028 */  sw         $t4, 0x28($sp)
/* B95F4 800B89F4 8FAE003C */  lw         $t6, 0x3c($sp)
/* B95F8 800B89F8 8FAF0050 */  lw         $t7, 0x50($sp)
/* B95FC 800B89FC 8FA80028 */  lw         $t0, 0x28($sp)
/* B9600 800B8A00 000EC840 */  sll        $t9, $t6, 1
/* B9604 800B8A04 032FC021 */  addu       $t8, $t9, $t7
/* B9608 800B8A08 3309FFFF */  andi       $t1, $t8, 0xffff
/* B960C 800B8A0C 3C010800 */  lui        $at, 0x800
/* B9610 800B8A10 01215025 */  or         $t2, $t1, $at
/* B9614 800B8A14 AD0A0000 */  sw         $t2, ($t0)
/* B9618 800B8A18 8FAB0040 */  lw         $t3, 0x40($sp)
/* B961C 800B8A1C 8FAE0028 */  lw         $t6, 0x28($sp)
/* B9620 800B8A20 000B6040 */  sll        $t4, $t3, 1
/* B9624 800B8A24 318DFFFF */  andi       $t5, $t4, 0xffff
/* B9628 800B8A28 ADCD0004 */  sw         $t5, 4($t6)
/* B962C 800B8A2C 8FB90044 */  lw         $t9, 0x44($sp)
/* B9630 800B8A30 272F0008 */  addiu      $t7, $t9, 8
/* B9634 800B8A34 AFAF0044 */  sw         $t7, 0x44($sp)
/* B9638 800B8A38 AFB90024 */  sw         $t9, 0x24($sp)
/* B963C 800B8A3C 8FA90024 */  lw         $t1, 0x24($sp)
/* B9640 800B8A40 3C180400 */  lui        $t8, 0x400
/* B9644 800B8A44 AD380000 */  sw         $t8, ($t1)
/* B9648 800B8A48 8FAA0048 */  lw         $t2, 0x48($sp)
/* B964C 800B8A4C 0C026964 */  jal        func_8009A590
/* B9650 800B8A50 8D440014 */   lw        $a0, 0x14($t2)
/* B9654 800B8A54 8FA80024 */  lw         $t0, 0x24($sp)
/* B9658 800B8A58 AD020004 */  sw         $v0, 4($t0)
/* B965C 800B8A5C 1000001B */  b          .L800B8ACC
/* B9660 800B8A60 00000000 */   nop
.L800B8A64:
/* B9664 800B8A64 8FAB0044 */  lw         $t3, 0x44($sp)
/* B9668 800B8A68 256C0008 */  addiu      $t4, $t3, 8
/* B966C 800B8A6C AFAC0044 */  sw         $t4, 0x44($sp)
/* B9670 800B8A70 AFAB0020 */  sw         $t3, 0x20($sp)
/* B9674 800B8A74 8FAD0050 */  lw         $t5, 0x50($sp)
/* B9678 800B8A78 8FAF0020 */  lw         $t7, 0x20($sp)
/* B967C 800B8A7C 3C010800 */  lui        $at, 0x800
/* B9680 800B8A80 31AEFFFF */  andi       $t6, $t5, 0xffff
/* B9684 800B8A84 01C1C825 */  or         $t9, $t6, $at
/* B9688 800B8A88 ADF90000 */  sw         $t9, ($t7)
/* B968C 800B8A8C 8FB80054 */  lw         $t8, 0x54($sp)
/* B9690 800B8A90 8FA80020 */  lw         $t0, 0x20($sp)
/* B9694 800B8A94 00184840 */  sll        $t1, $t8, 1
/* B9698 800B8A98 312AFFFF */  andi       $t2, $t1, 0xffff
/* B969C 800B8A9C AD0A0004 */  sw         $t2, 4($t0)
/* B96A0 800B8AA0 8FAB0044 */  lw         $t3, 0x44($sp)
/* B96A4 800B8AA4 256C0008 */  addiu      $t4, $t3, 8
/* B96A8 800B8AA8 AFAC0044 */  sw         $t4, 0x44($sp)
/* B96AC 800B8AAC AFAB001C */  sw         $t3, 0x1c($sp)
/* B96B0 800B8AB0 8FAE001C */  lw         $t6, 0x1c($sp)
/* B96B4 800B8AB4 3C0D0400 */  lui        $t5, 0x400
/* B96B8 800B8AB8 ADCD0000 */  sw         $t5, ($t6)
/* B96BC 800B8ABC 0C026964 */  jal        func_8009A590
/* B96C0 800B8AC0 8FA4004C */   lw        $a0, 0x4c($sp)
/* B96C4 800B8AC4 8FB9001C */  lw         $t9, 0x1c($sp)
/* B96C8 800B8AC8 AF220004 */  sw         $v0, 4($t9)
.L800B8ACC:
/* B96CC 800B8ACC 8FAF0044 */  lw         $t7, 0x44($sp)
/* B96D0 800B8AD0 25F80008 */  addiu      $t8, $t7, 8
/* B96D4 800B8AD4 AFB80044 */  sw         $t8, 0x44($sp)
/* B96D8 800B8AD8 AFAF0018 */  sw         $t7, 0x18($sp)
/* B96DC 800B8ADC 8FAA0018 */  lw         $t2, 0x18($sp)
/* B96E0 800B8AE0 3C090800 */  lui        $t1, 0x800
/* B96E4 800B8AE4 AD490000 */  sw         $t1, ($t2)
/* B96E8 800B8AE8 8FA80054 */  lw         $t0, 0x54($sp)
/* B96EC 800B8AEC 8FAD0018 */  lw         $t5, 0x18($sp)
/* B96F0 800B8AF0 00085840 */  sll        $t3, $t0, 1
/* B96F4 800B8AF4 316CFFFF */  andi       $t4, $t3, 0xffff
/* B96F8 800B8AF8 ADAC0004 */  sw         $t4, 4($t5)
/* B96FC 800B8AFC 10000003 */  b          .L800B8B0C
/* B9700 800B8B00 8FA20044 */   lw        $v0, 0x44($sp)
/* B9704 800B8B04 10000001 */  b          .L800B8B0C
/* B9708 800B8B08 00000000 */   nop
.L800B8B0C:
/* B970C 800B8B0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B9710 800B8B10 27BD0048 */  addiu      $sp, $sp, 0x48
/* B9714 800B8B14 03E00008 */  jr         $ra
/* B9718 800B8B18 00000000 */   nop

glabel func_800B8B1C
/* B971C 800B8B1C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* B9720 800B8B20 AFBF0014 */  sw         $ra, 0x14($sp)
/* B9724 800B8B24 AFA40048 */  sw         $a0, 0x48($sp)
/* B9728 800B8B28 AFA5004C */  sw         $a1, 0x4c($sp)
/* B972C 800B8B2C AFA60050 */  sw         $a2, 0x50($sp)
/* B9730 800B8B30 AFA70054 */  sw         $a3, 0x54($sp)
/* B9734 800B8B34 8FAE0058 */  lw         $t6, 0x58($sp)
/* B9738 800B8B38 AFAE0044 */  sw         $t6, 0x44($sp)
/* B973C 800B8B3C 8FAF0048 */  lw         $t7, 0x48($sp)
/* B9740 800B8B40 8DF9001C */  lw         $t9, 0x1c($t7)
/* B9744 800B8B44 8DF80014 */  lw         $t8, 0x14($t7)
/* B9748 800B8B48 00194040 */  sll        $t0, $t9, 1
/* B974C 800B8B4C 03084821 */  addu       $t1, $t8, $t0
/* B9750 800B8B50 AFA90034 */  sw         $t1, 0x34($sp)
/* B9754 800B8B54 8FAB0048 */  lw         $t3, 0x48($sp)
/* B9758 800B8B58 8FAA004C */  lw         $t2, 0x4c($sp)
/* B975C 800B8B5C 8D6C0014 */  lw         $t4, 0x14($t3)
/* B9760 800B8B60 014C082B */  sltu       $at, $t2, $t4
/* B9764 800B8B64 10200007 */  beqz       $at, .L800B8B84
/* B9768 800B8B68 00000000 */   nop
/* B976C 800B8B6C 8FAE0048 */  lw         $t6, 0x48($sp)
/* B9770 800B8B70 8FAD004C */  lw         $t5, 0x4c($sp)
/* B9774 800B8B74 8DCF001C */  lw         $t7, 0x1c($t6)
/* B9778 800B8B78 000FC840 */  sll        $t9, $t7, 1
/* B977C 800B8B7C 01B9C021 */  addu       $t8, $t5, $t9
/* B9780 800B8B80 AFB8004C */  sw         $t8, 0x4c($sp)
.L800B8B84:
/* B9784 800B8B84 8FA80054 */  lw         $t0, 0x54($sp)
/* B9788 800B8B88 8FAB004C */  lw         $t3, 0x4c($sp)
/* B978C 800B8B8C 00084840 */  sll        $t1, $t0, 1
/* B9790 800B8B90 012B5021 */  addu       $t2, $t1, $t3
/* B9794 800B8B94 AFAA0038 */  sw         $t2, 0x38($sp)
/* B9798 800B8B98 8FAC0038 */  lw         $t4, 0x38($sp)
/* B979C 800B8B9C 8FAE0034 */  lw         $t6, 0x34($sp)
/* B97A0 800B8BA0 01CC082B */  sltu       $at, $t6, $t4
/* B97A4 800B8BA4 10200053 */  beqz       $at, .L800B8CF4
/* B97A8 800B8BA8 00000000 */   nop
/* B97AC 800B8BAC 8FAF0038 */  lw         $t7, 0x38($sp)
/* B97B0 800B8BB0 8FAD0034 */  lw         $t5, 0x34($sp)
/* B97B4 800B8BB4 01EDC823 */  subu       $t9, $t7, $t5
/* B97B8 800B8BB8 0019C043 */  sra        $t8, $t9, 1
/* B97BC 800B8BBC AFB80040 */  sw         $t8, 0x40($sp)
/* B97C0 800B8BC0 8FA80034 */  lw         $t0, 0x34($sp)
/* B97C4 800B8BC4 8FA9004C */  lw         $t1, 0x4c($sp)
/* B97C8 800B8BC8 01095823 */  subu       $t3, $t0, $t1
/* B97CC 800B8BCC 000B5043 */  sra        $t2, $t3, 1
/* B97D0 800B8BD0 AFAA003C */  sw         $t2, 0x3c($sp)
/* B97D4 800B8BD4 8FAC0044 */  lw         $t4, 0x44($sp)
/* B97D8 800B8BD8 258E0008 */  addiu      $t6, $t4, 8
/* B97DC 800B8BDC AFAE0044 */  sw         $t6, 0x44($sp)
/* B97E0 800B8BE0 AFAC0030 */  sw         $t4, 0x30($sp)
/* B97E4 800B8BE4 8FAD0030 */  lw         $t5, 0x30($sp)
/* B97E8 800B8BE8 3C0F0800 */  lui        $t7, 0x800
/* B97EC 800B8BEC ADAF0000 */  sw         $t7, ($t5)
/* B97F0 800B8BF0 8FB90050 */  lw         $t9, 0x50($sp)
/* B97F4 800B8BF4 8FA9003C */  lw         $t1, 0x3c($sp)
/* B97F8 800B8BF8 8FAE0030 */  lw         $t6, 0x30($sp)
/* B97FC 800B8BFC 3338FFFF */  andi       $t8, $t9, 0xffff
/* B9800 800B8C00 00095840 */  sll        $t3, $t1, 1
/* B9804 800B8C04 316AFFFF */  andi       $t2, $t3, 0xffff
/* B9808 800B8C08 00184400 */  sll        $t0, $t8, 0x10
/* B980C 800B8C0C 010A6025 */  or         $t4, $t0, $t2
/* B9810 800B8C10 ADCC0004 */  sw         $t4, 4($t6)
/* B9814 800B8C14 8FAF0044 */  lw         $t7, 0x44($sp)
/* B9818 800B8C18 25ED0008 */  addiu      $t5, $t7, 8
/* B981C 800B8C1C AFAD0044 */  sw         $t5, 0x44($sp)
/* B9820 800B8C20 AFAF002C */  sw         $t7, 0x2c($sp)
/* B9824 800B8C24 8FB8002C */  lw         $t8, 0x2c($sp)
/* B9828 800B8C28 3C190600 */  lui        $t9, 0x600
/* B982C 800B8C2C AF190000 */  sw         $t9, ($t8)
/* B9830 800B8C30 0C026964 */  jal        func_8009A590
/* B9834 800B8C34 8FA4004C */   lw        $a0, 0x4c($sp)
/* B9838 800B8C38 8FA9002C */  lw         $t1, 0x2c($sp)
/* B983C 800B8C3C AD220004 */  sw         $v0, 4($t1)
/* B9840 800B8C40 8FAB0044 */  lw         $t3, 0x44($sp)
/* B9844 800B8C44 25680008 */  addiu      $t0, $t3, 8
/* B9848 800B8C48 AFA80044 */  sw         $t0, 0x44($sp)
/* B984C 800B8C4C AFAB0028 */  sw         $t3, 0x28($sp)
/* B9850 800B8C50 8FAC0028 */  lw         $t4, 0x28($sp)
/* B9854 800B8C54 3C0A0800 */  lui        $t2, 0x800
/* B9858 800B8C58 AD8A0000 */  sw         $t2, ($t4)
/* B985C 800B8C5C 8FAE003C */  lw         $t6, 0x3c($sp)
/* B9860 800B8C60 8FAD0050 */  lw         $t5, 0x50($sp)
/* B9864 800B8C64 8FAB0040 */  lw         $t3, 0x40($sp)
/* B9868 800B8C68 000E7840 */  sll        $t7, $t6, 1
/* B986C 800B8C6C 01EDC821 */  addu       $t9, $t7, $t5
/* B9870 800B8C70 8FAE0028 */  lw         $t6, 0x28($sp)
/* B9874 800B8C74 3338FFFF */  andi       $t8, $t9, 0xffff
/* B9878 800B8C78 000B4040 */  sll        $t0, $t3, 1
/* B987C 800B8C7C 310AFFFF */  andi       $t2, $t0, 0xffff
/* B9880 800B8C80 00184C00 */  sll        $t1, $t8, 0x10
/* B9884 800B8C84 012A6025 */  or         $t4, $t1, $t2
/* B9888 800B8C88 ADCC0004 */  sw         $t4, 4($t6)
/* B988C 800B8C8C 8FAF0044 */  lw         $t7, 0x44($sp)
/* B9890 800B8C90 25ED0008 */  addiu      $t5, $t7, 8
/* B9894 800B8C94 AFAD0044 */  sw         $t5, 0x44($sp)
/* B9898 800B8C98 AFAF0024 */  sw         $t7, 0x24($sp)
/* B989C 800B8C9C 8FB80024 */  lw         $t8, 0x24($sp)
/* B98A0 800B8CA0 3C190600 */  lui        $t9, 0x600
/* B98A4 800B8CA4 AF190000 */  sw         $t9, ($t8)
/* B98A8 800B8CA8 8FAB0048 */  lw         $t3, 0x48($sp)
/* B98AC 800B8CAC 0C026964 */  jal        func_8009A590
/* B98B0 800B8CB0 8D640014 */   lw        $a0, 0x14($t3)
/* B98B4 800B8CB4 8FA80024 */  lw         $t0, 0x24($sp)
/* B98B8 800B8CB8 AD020004 */  sw         $v0, 4($t0)
/* B98BC 800B8CBC 8FA90044 */  lw         $t1, 0x44($sp)
/* B98C0 800B8CC0 252A0008 */  addiu      $t2, $t1, 8
/* B98C4 800B8CC4 AFAA0044 */  sw         $t2, 0x44($sp)
/* B98C8 800B8CC8 AFA90020 */  sw         $t1, 0x20($sp)
/* B98CC 800B8CCC 8FAE0020 */  lw         $t6, 0x20($sp)
/* B98D0 800B8CD0 3C0C0800 */  lui        $t4, 0x800
/* B98D4 800B8CD4 ADCC0000 */  sw         $t4, ($t6)
/* B98D8 800B8CD8 8FAF0054 */  lw         $t7, 0x54($sp)
/* B98DC 800B8CDC 8FB80020 */  lw         $t8, 0x20($sp)
/* B98E0 800B8CE0 000F6840 */  sll        $t5, $t7, 1
/* B98E4 800B8CE4 31B9FFFF */  andi       $t9, $t5, 0xffff
/* B98E8 800B8CE8 AF190004 */  sw         $t9, 4($t8)
/* B98EC 800B8CEC 1000001C */  b          .L800B8D60
/* B98F0 800B8CF0 00000000 */   nop
.L800B8CF4:
/* B98F4 800B8CF4 8FAB0044 */  lw         $t3, 0x44($sp)
/* B98F8 800B8CF8 25680008 */  addiu      $t0, $t3, 8
/* B98FC 800B8CFC AFA80044 */  sw         $t0, 0x44($sp)
/* B9900 800B8D00 AFAB001C */  sw         $t3, 0x1c($sp)
/* B9904 800B8D04 8FAA001C */  lw         $t2, 0x1c($sp)
/* B9908 800B8D08 3C090800 */  lui        $t1, 0x800
/* B990C 800B8D0C AD490000 */  sw         $t1, ($t2)
/* B9910 800B8D10 8FAC0050 */  lw         $t4, 0x50($sp)
/* B9914 800B8D14 8FAD0054 */  lw         $t5, 0x54($sp)
/* B9918 800B8D18 8FA8001C */  lw         $t0, 0x1c($sp)
/* B991C 800B8D1C 318EFFFF */  andi       $t6, $t4, 0xffff
/* B9920 800B8D20 000DC840 */  sll        $t9, $t5, 1
/* B9924 800B8D24 3338FFFF */  andi       $t8, $t9, 0xffff
/* B9928 800B8D28 000E7C00 */  sll        $t7, $t6, 0x10
/* B992C 800B8D2C 01F85825 */  or         $t3, $t7, $t8
/* B9930 800B8D30 AD0B0004 */  sw         $t3, 4($t0)
/* B9934 800B8D34 8FA90044 */  lw         $t1, 0x44($sp)
/* B9938 800B8D38 252A0008 */  addiu      $t2, $t1, 8
/* B993C 800B8D3C AFAA0044 */  sw         $t2, 0x44($sp)
/* B9940 800B8D40 AFA90018 */  sw         $t1, 0x18($sp)
/* B9944 800B8D44 8FAE0018 */  lw         $t6, 0x18($sp)
/* B9948 800B8D48 3C0C0600 */  lui        $t4, 0x600
/* B994C 800B8D4C ADCC0000 */  sw         $t4, ($t6)
/* B9950 800B8D50 0C026964 */  jal        func_8009A590
/* B9954 800B8D54 8FA4004C */   lw        $a0, 0x4c($sp)
/* B9958 800B8D58 8FAD0018 */  lw         $t5, 0x18($sp)
/* B995C 800B8D5C ADA20004 */  sw         $v0, 4($t5)
.L800B8D60:
/* B9960 800B8D60 10000003 */  b          .L800B8D70
/* B9964 800B8D64 8FA20044 */   lw        $v0, 0x44($sp)
/* B9968 800B8D68 10000001 */  b          .L800B8D70
/* B996C 800B8D6C 00000000 */   nop
.L800B8D70:
/* B9970 800B8D70 8FBF0014 */  lw         $ra, 0x14($sp)
/* B9974 800B8D74 27BD0048 */  addiu      $sp, $sp, 0x48
/* B9978 800B8D78 03E00008 */  jr         $ra
/* B997C 800B8D7C 00000000 */   nop

glabel func_800B8D80
/* B9980 800B8D80 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B9984 800B8D84 AFBF0014 */  sw         $ra, 0x14($sp)
/* B9988 800B8D88 AFA40028 */  sw         $a0, 0x28($sp)
/* B998C 800B8D8C AFA5002C */  sw         $a1, 0x2c($sp)
/* B9990 800B8D90 AFA60030 */  sw         $a2, 0x30($sp)
/* B9994 800B8D94 AFA70034 */  sw         $a3, 0x34($sp)
/* B9998 800B8D98 8FAE0034 */  lw         $t6, 0x34($sp)
/* B999C 800B8D9C AFAE0024 */  sw         $t6, 0x24($sp)
/* B99A0 800B8DA0 8FAF0024 */  lw         $t7, 0x24($sp)
/* B99A4 800B8DA4 25F80008 */  addiu      $t8, $t7, 8
/* B99A8 800B8DA8 AFB80024 */  sw         $t8, 0x24($sp)
/* B99AC 800B8DAC AFAF0020 */  sw         $t7, 0x20($sp)
/* B99B0 800B8DB0 8FB9002C */  lw         $t9, 0x2c($sp)
/* B99B4 800B8DB4 8FAA0020 */  lw         $t2, 0x20($sp)
/* B99B8 800B8DB8 3C010800 */  lui        $at, 0x800
/* B99BC 800B8DBC 3328FFFF */  andi       $t0, $t9, 0xffff
/* B99C0 800B8DC0 01014825 */  or         $t1, $t0, $at
/* B99C4 800B8DC4 AD490000 */  sw         $t1, ($t2)
/* B99C8 800B8DC8 8FAB002C */  lw         $t3, 0x2c($sp)
/* B99CC 800B8DCC 8FAE0030 */  lw         $t6, 0x30($sp)
/* B99D0 800B8DD0 8FA80020 */  lw         $t0, 0x20($sp)
/* B99D4 800B8DD4 316CFFFF */  andi       $t4, $t3, 0xffff
/* B99D8 800B8DD8 000E7840 */  sll        $t7, $t6, 1
/* B99DC 800B8DDC 31F8FFFF */  andi       $t8, $t7, 0xffff
/* B99E0 800B8DE0 000C6C00 */  sll        $t5, $t4, 0x10
/* B99E4 800B8DE4 01B8C825 */  or         $t9, $t5, $t8
/* B99E8 800B8DE8 AD190004 */  sw         $t9, 4($t0)
/* B99EC 800B8DEC 8FA90024 */  lw         $t1, 0x24($sp)
/* B99F0 800B8DF0 252A0008 */  addiu      $t2, $t1, 8
/* B99F4 800B8DF4 AFAA0024 */  sw         $t2, 0x24($sp)
/* B99F8 800B8DF8 AFA9001C */  sw         $t1, 0x1c($sp)
/* B99FC 800B8DFC 8FAC001C */  lw         $t4, 0x1c($sp)
/* B9A00 800B8E00 3C0B0B00 */  lui        $t3, 0xb00
/* B9A04 800B8E04 356B0020 */  ori        $t3, $t3, 0x20
/* B9A08 800B8E08 AD8B0000 */  sw         $t3, ($t4)
/* B9A0C 800B8E0C 8FA40028 */  lw         $a0, 0x28($sp)
/* B9A10 800B8E10 0C026964 */  jal        func_8009A590
/* B9A14 800B8E14 24840008 */   addiu     $a0, $a0, 8
/* B9A18 800B8E18 8FAE001C */  lw         $t6, 0x1c($sp)
/* B9A1C 800B8E1C ADC20004 */  sw         $v0, 4($t6)
/* B9A20 800B8E20 8FAF0024 */  lw         $t7, 0x24($sp)
/* B9A24 800B8E24 25ED0008 */  addiu      $t5, $t7, 8
/* B9A28 800B8E28 AFAD0024 */  sw         $t5, 0x24($sp)
/* B9A2C 800B8E2C AFAF0018 */  sw         $t7, 0x18($sp)
/* B9A30 800B8E30 8FB80028 */  lw         $t8, 0x28($sp)
/* B9A34 800B8E34 8FAF0018 */  lw         $t7, 0x18($sp)
/* B9A38 800B8E38 3C010E00 */  lui        $at, 0xe00
/* B9A3C 800B8E3C 8F19002C */  lw         $t9, 0x2c($t8)
/* B9A40 800B8E40 870B0002 */  lh         $t3, 2($t8)
/* B9A44 800B8E44 332800FF */  andi       $t0, $t9, 0xff
/* B9A48 800B8E48 00084C00 */  sll        $t1, $t0, 0x10
/* B9A4C 800B8E4C 01215025 */  or         $t2, $t1, $at
/* B9A50 800B8E50 316CFFFF */  andi       $t4, $t3, 0xffff
/* B9A54 800B8E54 014C7025 */  or         $t6, $t2, $t4
/* B9A58 800B8E58 ADEE0000 */  sw         $t6, ($t7)
/* B9A5C 800B8E5C 8FAD0028 */  lw         $t5, 0x28($sp)
/* B9A60 800B8E60 0C026964 */  jal        func_8009A590
/* B9A64 800B8E64 8DA40028 */   lw        $a0, 0x28($t5)
/* B9A68 800B8E68 8FB90018 */  lw         $t9, 0x18($sp)
/* B9A6C 800B8E6C AF220004 */  sw         $v0, 4($t9)
/* B9A70 800B8E70 8FA80028 */  lw         $t0, 0x28($sp)
/* B9A74 800B8E74 AD00002C */  sw         $zero, 0x2c($t0)
/* B9A78 800B8E78 10000003 */  b          .L800B8E88
/* B9A7C 800B8E7C 8FA20024 */   lw        $v0, 0x24($sp)
/* B9A80 800B8E80 10000001 */  b          .L800B8E88
/* B9A84 800B8E84 00000000 */   nop
.L800B8E88:
/* B9A88 800B8E88 8FBF0014 */  lw         $ra, 0x14($sp)
/* B9A8C 800B8E8C 27BD0028 */  addiu      $sp, $sp, 0x28
/* B9A90 800B8E90 03E00008 */  jr         $ra
/* B9A94 800B8E94 00000000 */   nop

glabel func_800B8E98
/* B9A98 800B8E98 27BDFFF8 */  addiu      $sp, $sp, -8
/* B9A9C 800B8E9C 44853000 */  mtc1       $a1, $f6
/* B9AA0 800B8EA0 C4840010 */  lwc1       $f4, 0x10($a0)
/* B9AA4 800B8EA4 C4900014 */  lwc1       $f16, 0x14($a0)
/* B9AA8 800B8EA8 46803220 */  cvt.s.w    $f8, $f6
/* B9AAC 800B8EAC 46082282 */  mul.s      $f10, $f4, $f8
/* B9AB0 800B8EB0 460A8480 */  add.s      $f18, $f16, $f10
/* B9AB4 800B8EB4 E4920014 */  swc1       $f18, 0x14($a0)
/* B9AB8 800B8EB8 C4860014 */  lwc1       $f6, 0x14($a0)
/* B9ABC 800B8EBC 3C014000 */  lui        $at, 0x4000
/* B9AC0 800B8EC0 44814800 */  mtc1       $at, $f9
/* B9AC4 800B8EC4 44804000 */  mtc1       $zero, $f8
/* B9AC8 800B8EC8 46003121 */  cvt.d.s    $f4, $f6
/* B9ACC 800B8ECC 4624403C */  c.lt.d     $f8, $f4
/* B9AD0 800B8ED0 00000000 */  nop
/* B9AD4 800B8ED4 4500000A */  bc1f       .L800B8F00
/* B9AD8 800B8ED8 00000000 */   nop
/* B9ADC 800B8EDC C4900014 */  lwc1       $f16, 0x14($a0)
/* B9AE0 800B8EE0 3C014010 */  lui        $at, 0x4010
/* B9AE4 800B8EE4 44819800 */  mtc1       $at, $f19
/* B9AE8 800B8EE8 44809000 */  mtc1       $zero, $f18
/* B9AEC 800B8EEC 460082A1 */  cvt.d.s    $f10, $f16
/* B9AF0 800B8EF0 46325181 */  sub.d      $f6, $f10, $f18
/* B9AF4 800B8EF4 46203120 */  cvt.s.d    $f4, $f6
/* B9AF8 800B8EF8 10000005 */  b          .L800B8F10
/* B9AFC 800B8EFC E4840014 */   swc1      $f4, 0x14($a0)
.L800B8F00:
/* B9B00 800B8F00 C4880014 */  lwc1       $f8, 0x14($a0)
/* B9B04 800B8F04 46004421 */  cvt.d.s    $f16, $f8
/* B9B08 800B8F08 462082A0 */  cvt.s.d    $f10, $f16
/* B9B0C 800B8F0C E48A0014 */  swc1       $f10, 0x14($a0)
.L800B8F10:
/* B9B10 800B8F10 C4920014 */  lwc1       $f18, 0x14($a0)
/* B9B14 800B8F14 E7B20004 */  swc1       $f18, 4($sp)
/* B9B18 800B8F18 C7A60004 */  lwc1       $f6, 4($sp)
/* B9B1C 800B8F1C 44802000 */  mtc1       $zero, $f4
/* B9B20 800B8F20 00000000 */  nop
/* B9B24 800B8F24 4604303C */  c.lt.s     $f6, $f4
/* B9B28 800B8F28 00000000 */  nop
/* B9B2C 800B8F2C 45000004 */  bc1f       .L800B8F40
/* B9B30 800B8F30 00000000 */   nop
/* B9B34 800B8F34 46003207 */  neg.s      $f8, $f6
/* B9B38 800B8F38 10000001 */  b          .L800B8F40
/* B9B3C 800B8F3C E7A80004 */   swc1      $f8, 4($sp)
.L800B8F40:
/* B9B40 800B8F40 C7B00004 */  lwc1       $f16, 4($sp)
/* B9B44 800B8F44 3C013FF0 */  lui        $at, 0x3ff0
/* B9B48 800B8F48 44819800 */  mtc1       $at, $f19
/* B9B4C 800B8F4C 44809000 */  mtc1       $zero, $f18
/* B9B50 800B8F50 460082A1 */  cvt.d.s    $f10, $f16
/* B9B54 800B8F54 46325101 */  sub.d      $f4, $f10, $f18
/* B9B58 800B8F58 462021A0 */  cvt.s.d    $f6, $f4
/* B9B5C 800B8F5C E7A60004 */  swc1       $f6, 4($sp)
/* B9B60 800B8F60 C488001C */  lwc1       $f8, 0x1c($a0)
/* B9B64 800B8F64 C7B00004 */  lwc1       $f16, 4($sp)
/* B9B68 800B8F68 46104002 */  mul.s      $f0, $f8, $f16
/* B9B6C 800B8F6C 10000003 */  b          .L800B8F7C
/* B9B70 800B8F70 00000000 */   nop
/* B9B74 800B8F74 10000001 */  b          .L800B8F7C
/* B9B78 800B8F78 00000000 */   nop
.L800B8F7C:
/* B9B7C 800B8F7C 03E00008 */  jr         $ra
/* B9B80 800B8F80 27BD0008 */   addiu     $sp, $sp, 8
/* B9B84 800B8F84 00000000 */  nop
/* B9B88 800B8F88 00000000 */  nop
/* B9B8C 800B8F8C 00000000 */  nop
