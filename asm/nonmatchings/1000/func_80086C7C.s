glabel func_80086C7C
/* 8787C 80086C7C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 87880 80086C80 000E7880 */  sll        $t7, $t6, 2
/* 87884 80086C84 01EE7823 */  subu       $t7, $t7, $t6
/* 87888 80086C88 000F7880 */  sll        $t7, $t7, 2
/* 8788C 80086C8C 01EE7821 */  addu       $t7, $t7, $t6
/* 87890 80086C90 000F7880 */  sll        $t7, $t7, 2
/* 87894 80086C94 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 87898 80086C98 01EE7823 */  subu       $t7, $t7, $t6
/* 8789C 80086C9C 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 878A0 80086CA0 AFB00020 */  sw         $s0, 0x20($sp)
/* 878A4 80086CA4 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 878A8 80086CA8 000F78C0 */  sll        $t7, $t7, 3
/* 878AC 80086CAC 01F88021 */  addu       $s0, $t7, $t8
/* 878B0 80086CB0 96190084 */  lhu        $t9, 0x84($s0)
/* 878B4 80086CB4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 878B8 80086CB8 AFA40028 */  sw         $a0, 0x28($sp)
/* 878BC 80086CBC 01C02025 */  or         $a0, $t6, $zero
/* 878C0 80086CC0 A7AE002A */  sh         $t6, 0x2a($sp)
/* 878C4 80086CC4 00002825 */  or         $a1, $zero, $zero
/* 878C8 80086CC8 00003025 */  or         $a2, $zero, $zero
/* 878CC 80086CCC 00003825 */  or         $a3, $zero, $zero
/* 878D0 80086CD0 0C00D49B */  jal        func_8003526C
/* 878D4 80086CD4 AFB90010 */   sw        $t9, 0x10($sp)
/* 878D8 80086CD8 04400006 */  bltz       $v0, .L80086CF4
/* 878DC 80086CDC 3C0A800C */   lui       $t2, 0x800c
/* 878E0 80086CE0 2408000A */  addiu      $t0, $zero, 0xa
/* 878E4 80086CE4 24090002 */  addiu      $t1, $zero, 2
/* 878E8 80086CE8 A60800D0 */  sh         $t0, 0xd0($s0)
/* 878EC 80086CEC AE090080 */  sw         $t1, 0x80($s0)
/* 878F0 80086CF0 AE000168 */  sw         $zero, 0x168($s0)
.L80086CF4:
/* 878F4 80086CF4 954AE5D0 */  lhu        $t2, -0x1a30($t2)
/* 878F8 80086CF8 24010030 */  addiu      $at, $zero, 0x30
/* 878FC 80086CFC 11410004 */  beq        $t2, $at, .L80086D10
/* 87900 80086D00 00000000 */   nop
/* 87904 80086D04 97A4002A */  lhu        $a0, 0x2a($sp)
/* 87908 80086D08 0C00A1DF */  jal        func_8002877C
/* 8790C 80086D0C 00000000 */   nop
.L80086D10:
/* 87910 80086D10 8E0B0168 */  lw         $t3, 0x168($s0)
/* 87914 80086D14 97A4002A */  lhu        $a0, 0x2a($sp)
/* 87918 80086D18 1960002C */  blez       $t3, .L80086DCC
/* 8791C 80086D1C 00000000 */   nop
/* 87920 80086D20 0C021653 */  jal        func_8008594C
/* 87924 80086D24 24050001 */   addiu     $a1, $zero, 1
/* 87928 80086D28 960C00D0 */  lhu        $t4, 0xd0($s0)
/* 8792C 80086D2C 97A4002A */  lhu        $a0, 0x2a($sp)
/* 87930 80086D30 29810004 */  slti       $at, $t4, 4
/* 87934 80086D34 10200003 */  beqz       $at, .L80086D44
/* 87938 80086D38 00000000 */   nop
/* 8793C 80086D3C 0C021A88 */  jal        func_80086A20
/* 87940 80086D40 00000000 */   nop
.L80086D44:
/* 87944 80086D44 8E020168 */  lw         $v0, 0x168($s0)
/* 87948 80086D48 2401021C */  addiu      $at, $zero, 0x21c
/* 8794C 80086D4C 14410004 */  bne        $v0, $at, .L80086D60
/* 87950 80086D50 3C0D800E */   lui       $t5, %hi(D_800E3D78)
/* 87954 80086D54 25AD3D78 */  addiu      $t5, $t5, %lo(D_800E3D78)
/* 87958 80086D58 8E020168 */  lw         $v0, 0x168($s0)
/* 8795C 80086D5C AE0D00E8 */  sw         $t5, 0xe8($s0)
.L80086D60:
/* 87960 80086D60 240100B4 */  addiu      $at, $zero, 0xb4
/* 87964 80086D64 14410004 */  bne        $v0, $at, .L80086D78
/* 87968 80086D68 3C0E800E */   lui       $t6, %hi(D_800E3D8C)
/* 8796C 80086D6C 25CE3D8C */  addiu      $t6, $t6, %lo(D_800E3D8C)
/* 87970 80086D70 8E020168 */  lw         $v0, 0x168($s0)
/* 87974 80086D74 AE0E00E8 */  sw         $t6, 0xe8($s0)
.L80086D78:
/* 87978 80086D78 28410081 */  slti       $at, $v0, 0x81
/* 8797C 80086D7C 10200003 */  beqz       $at, .L80086D8C
/* 87980 80086D80 240F0080 */   addiu     $t7, $zero, 0x80
/* 87984 80086D84 01E2C023 */  subu       $t8, $t7, $v0
/* 87988 80086D88 A218009C */  sb         $t8, 0x9c($s0)
.L80086D8C:
/* 8798C 80086D8C 8E190150 */  lw         $t9, 0x150($s0)
/* 87990 80086D90 2401003C */  addiu      $at, $zero, 0x3c
/* 87994 80086D94 33280100 */  andi       $t0, $t9, 0x100
/* 87998 80086D98 15000008 */  bnez       $t0, .L80086DBC
/* 8799C 80086D9C 00000000 */   nop
/* 879A0 80086DA0 0041001A */  div        $zero, $v0, $at
/* 879A4 80086DA4 97A4002A */  lhu        $a0, 0x2a($sp)
/* 879A8 80086DA8 00004810 */  mfhi       $t1
/* 879AC 80086DAC 15200003 */  bnez       $t1, .L80086DBC
/* 879B0 80086DB0 00000000 */   nop
/* 879B4 80086DB4 0C021611 */  jal        func_80085844
/* 879B8 80086DB8 00000000 */   nop
.L80086DBC:
/* 879BC 80086DBC 8E0A0184 */  lw         $t2, 0x184($s0)
/* 879C0 80086DC0 00000000 */  nop
/* 879C4 80086DC4 254B0001 */  addiu      $t3, $t2, 1
/* 879C8 80086DC8 AE0B0184 */  sw         $t3, 0x184($s0)
.L80086DCC:
/* 879CC 80086DCC 8E0C0098 */  lw         $t4, 0x98($s0)
/* 879D0 80086DD0 97A4002A */  lhu        $a0, 0x2a($sp)
/* 879D4 80086DD4 318D0002 */  andi       $t5, $t4, 2
/* 879D8 80086DD8 11A00003 */  beqz       $t5, .L80086DE8
/* 879DC 80086DDC 00000000 */   nop
/* 879E0 80086DE0 0C021671 */  jal        func_800859C4
/* 879E4 80086DE4 00000000 */   nop
.L80086DE8:
/* 879E8 80086DE8 960200D0 */  lhu        $v0, 0xd0($s0)
/* 879EC 80086DEC 3C0EFFFC */  lui        $t6, 0xfffc
/* 879F0 80086DF0 2C410012 */  sltiu      $at, $v0, 0x12
/* 879F4 80086DF4 102001D3 */  beqz       $at, .L80087544
/* 879F8 80086DF8 AE0E0090 */   sw        $t6, 0x90($s0)
/* 879FC 80086DFC 00027880 */  sll        $t7, $v0, 2
/* 87A00 80086E00 3C01800F */  lui        $at, %hi(D_800ED198)
/* 87A04 80086E04 002F0821 */  addu       $at, $at, $t7
/* 87A08 80086E08 8C2FD198 */  lw         $t7, %lo(D_800ED198)($at)
/* 87A0C 80086E0C 00000000 */  nop
/* 87A10 80086E10 01E00008 */  jr         $t7
/* 87A14 80086E14 00000000 */   nop
/* 87A18 80086E18 920900DA */  lbu        $t1, 0xda($s0)
/* 87A1C 80086E1C 3C190001 */  lui        $t9, 1
/* 87A20 80086E20 24180001 */  addiu      $t8, $zero, 1
/* 87A24 80086E24 37391503 */  ori        $t9, $t9, 0x1503
/* 87A28 80086E28 24080001 */  addiu      $t0, $zero, 1
/* 87A2C 80086E2C 240B000B */  addiu      $t3, $zero, 0xb
/* 87A30 80086E30 240C001E */  addiu      $t4, $zero, 0x1e
/* 87A34 80086E34 97A4002A */  lhu        $a0, 0x2a($sp)
/* 87A38 80086E38 352A0081 */  ori        $t2, $t1, 0x81
/* 87A3C 80086E3C A6180094 */  sh         $t8, 0x94($s0)
/* 87A40 80086E40 AE190080 */  sw         $t9, 0x80($s0)
/* 87A44 80086E44 A60800E0 */  sh         $t0, 0xe0($s0)
/* 87A48 80086E48 A20A00DA */  sb         $t2, 0xda($s0)
/* 87A4C 80086E4C A20B00DB */  sb         $t3, 0xdb($s0)
/* 87A50 80086E50 0C0217AC */  jal        func_80085EB0
/* 87A54 80086E54 AE0C0160 */   sw        $t4, 0x160($s0)
/* 87A58 80086E58 97A4002A */  lhu        $a0, 0x2a($sp)
/* 87A5C 80086E5C 0C021740 */  jal        func_80085D00
/* 87A60 80086E60 00000000 */   nop
/* 87A64 80086E64 97A4002A */  lhu        $a0, 0x2a($sp)
/* 87A68 80086E68 0C021798 */  jal        func_80085E60
/* 87A6C 80086E6C 00000000 */   nop
/* 87A70 80086E70 444FF800 */  cfc1       $t7, $31
/* 87A74 80086E74 C6040110 */  lwc1       $f4, 0x110($s0)
/* 87A78 80086E78 35E10003 */  ori        $at, $t7, 3
/* 87A7C 80086E7C 38210002 */  xori       $at, $at, 2
/* 87A80 80086E80 44C1F800 */  ctc1       $at, $31
/* 87A84 80086E84 3C0D800E */  lui        $t5, %hi(D_800E3D64)
/* 87A88 80086E88 460021A4 */  cvt.w.s    $f6, $f4
/* 87A8C 80086E8C 25AD3D64 */  addiu      $t5, $t5, %lo(D_800E3D64)
/* 87A90 80086E90 44033000 */  mfc1       $v1, $f6
/* 87A94 80086E94 240E0001 */  addiu      $t6, $zero, 1
/* 87A98 80086E98 44CFF800 */  ctc1       $t7, $31
/* 87A9C 80086E9C 30788000 */  andi       $t8, $v1, 0x8000
/* 87AA0 80086EA0 AE0D00E8 */  sw         $t5, 0xe8($s0)
/* 87AA4 80086EA4 A60E00E6 */  sh         $t6, 0xe6($s0)
/* 87AA8 80086EA8 13000007 */  beqz       $t8, .L80086EC8
/* 87AAC 80086EAC AE030150 */   sw        $v1, 0x150($s0)
/* 87AB0 80086EB0 8E190080 */  lw         $t9, 0x80($s0)
/* 87AB4 80086EB4 3C010001 */  lui        $at, 1
/* 87AB8 80086EB8 00615025 */  or         $t2, $v1, $at
/* 87ABC 80086EBC 37280600 */  ori        $t0, $t9, 0x600
/* 87AC0 80086EC0 AE080080 */  sw         $t0, 0x80($s0)
/* 87AC4 80086EC4 AE0A0150 */  sw         $t2, 0x150($s0)
.L80086EC8:
/* 87AC8 80086EC8 8E0B0150 */  lw         $t3, 0x150($s0)
/* 87ACC 80086ECC 240D0014 */  addiu      $t5, $zero, 0x14
/* 87AD0 80086ED0 316C1000 */  andi       $t4, $t3, 0x1000
/* 87AD4 80086ED4 11800003 */  beqz       $t4, .L80086EE4
/* 87AD8 80086ED8 240E0064 */   addiu     $t6, $zero, 0x64
/* 87ADC 80086EDC 10000002 */  b          .L80086EE8
/* 87AE0 80086EE0 A60D00E4 */   sh        $t5, 0xe4($s0)
.L80086EE4:
/* 87AE4 80086EE4 A60E00E4 */  sh         $t6, 0xe4($s0)
.L80086EE8:
/* 87AE8 80086EE8 960F00D0 */  lhu        $t7, 0xd0($s0)
/* 87AEC 80086EEC 00000000 */  nop
/* 87AF0 80086EF0 25F80001 */  addiu      $t8, $t7, 1
/* 87AF4 80086EF4 A61800D0 */  sh         $t8, 0xd0($s0)
/* 87AF8 80086EF8 97A4002A */  lhu        $a0, 0x2a($sp)
/* 87AFC 80086EFC 0C0216B9 */  jal        func_80085AE4
/* 87B00 80086F00 00000000 */   nop
/* 87B04 80086F04 10400002 */  beqz       $v0, .L80086F10
/* 87B08 80086F08 24190003 */   addiu     $t9, $zero, 3
/* 87B0C 80086F0C A61900D0 */  sh         $t9, 0xd0($s0)
.L80086F10:
/* 87B10 80086F10 8E020160 */  lw         $v0, 0x160($s0)
/* 87B14 80086F14 00000000 */  nop
/* 87B18 80086F18 18400003 */  blez       $v0, .L80086F28
/* 87B1C 80086F1C 2448FFFF */   addiu     $t0, $v0, -1
/* 87B20 80086F20 AE080160 */  sw         $t0, 0x160($s0)
/* 87B24 80086F24 01001025 */  or         $v0, $t0, $zero
.L80086F28:
/* 87B28 80086F28 1440000C */  bnez       $v0, .L80086F5C
/* 87B2C 80086F2C 97A4002A */   lhu       $a0, 0x2a($sp)
/* 87B30 80086F30 86040088 */  lh         $a0, 0x88($s0)
/* 87B34 80086F34 8605008C */  lh         $a1, 0x8c($s0)
/* 87B38 80086F38 0C004AAD */  jal        func_80012AB4
/* 87B3C 80086F3C 00000000 */   nop
/* 87B40 80086F40 240100C0 */  addiu      $at, $zero, 0xc0
/* 87B44 80086F44 14410005 */  bne        $v0, $at, .L80086F5C
/* 87B48 80086F48 97A4002A */   lhu       $a0, 0x2a($sp)
/* 87B4C 80086F4C 97A4002A */  lhu        $a0, 0x2a($sp)
/* 87B50 80086F50 0C021671 */  jal        func_800859C4
/* 87B54 80086F54 00000000 */   nop
/* 87B58 80086F58 97A4002A */  lhu        $a0, 0x2a($sp)
.L80086F5C:
/* 87B5C 80086F5C 0C021A09 */  jal        func_80086824
/* 87B60 80086F60 00000000 */   nop
/* 87B64 80086F64 10000178 */  b          .L80087548
/* 87B68 80086F68 8E090098 */   lw        $t1, 0x98($s0)
/* 87B6C 80086F6C 3C060002 */  lui        $a2, 2
/* 87B70 80086F70 34C61003 */  ori        $a2, $a2, 0x1003
/* 87B74 80086F74 97A4002A */  lhu        $a0, 0x2a($sp)
/* 87B78 80086F78 AFA60010 */  sw         $a2, 0x10($sp)
/* 87B7C 80086F7C 24050003 */  addiu      $a1, $zero, 3
/* 87B80 80086F80 0C00A46B */  jal        func_800291AC
/* 87B84 80086F84 24070003 */   addiu     $a3, $zero, 3
/* 87B88 80086F88 10400009 */  beqz       $v0, .L80086FB0
/* 87B8C 80086F8C 24010001 */   addiu     $at, $zero, 1
/* 87B90 80086F90 10410020 */  beq        $v0, $at, .L80087014
/* 87B94 80086F94 24010002 */   addiu     $at, $zero, 2
/* 87B98 80086F98 10410023 */  beq        $v0, $at, .L80087028
/* 87B9C 80086F9C 24010003 */   addiu     $at, $zero, 3
/* 87BA0 80086FA0 1041002A */  beq        $v0, $at, .L8008704C
/* 87BA4 80086FA4 97A4002A */   lhu       $a0, 0x2a($sp)
/* 87BA8 80086FA8 10000167 */  b          .L80087548
/* 87BAC 80086FAC 8E090098 */   lw        $t1, 0x98($s0)
.L80086FB0:
/* 87BB0 80086FB0 8E090098 */  lw         $t1, 0x98($s0)
/* 87BB4 80086FB4 00000000 */  nop
/* 87BB8 80086FB8 00095380 */  sll        $t2, $t1, 0xe
/* 87BBC 80086FBC 0541000A */  bgez       $t2, .L80086FE8
/* 87BC0 80086FC0 00000000 */   nop
/* 87BC4 80086FC4 8E050168 */  lw         $a1, 0x168($s0)
/* 87BC8 80086FC8 2401003C */  addiu      $at, $zero, 0x3c
/* 87BCC 80086FCC 00A1001A */  div        $zero, $a1, $at
/* 87BD0 80086FD0 97A4002A */  lhu        $a0, 0x2a($sp)
/* 87BD4 80086FD4 00005810 */  mfhi       $t3
/* 87BD8 80086FD8 2565FFFF */  addiu      $a1, $t3, -1
/* 87BDC 80086FDC 30ACFFFF */  andi       $t4, $a1, 0xffff
/* 87BE0 80086FE0 0C021653 */  jal        func_8008594C
/* 87BE4 80086FE4 01802825 */   or        $a1, $t4, $zero
.L80086FE8:
/* 87BE8 80086FE8 8E020164 */  lw         $v0, 0x164($s0)
/* 87BEC 80086FEC 00000000 */  nop
/* 87BF0 80086FF0 18400154 */  blez       $v0, .L80087544
/* 87BF4 80086FF4 244DFFFF */   addiu     $t5, $v0, -1
/* 87BF8 80086FF8 15A00152 */  bnez       $t5, .L80087544
/* 87BFC 80086FFC AE0D0164 */   sw        $t5, 0x164($s0)
/* 87C00 80087000 8E0F0080 */  lw         $t7, 0x80($s0)
/* 87C04 80087004 3C010002 */  lui        $at, 2
/* 87C08 80087008 01E1C025 */  or         $t8, $t7, $at
/* 87C0C 8008700C 1000014D */  b          .L80087544
/* 87C10 80087010 AE180080 */   sw        $t8, 0x80($s0)
.L80087014:
/* 87C14 80087014 97A4002A */  lhu        $a0, 0x2a($sp)
/* 87C18 80087018 0C021671 */  jal        func_800859C4
/* 87C1C 8008701C 00000000 */   nop
/* 87C20 80087020 10000149 */  b          .L80087548
/* 87C24 80087024 8E090098 */   lw        $t1, 0x98($s0)
.L80087028:
/* 87C28 80087028 8E1900F8 */  lw         $t9, 0xf8($s0)
/* 87C2C 8008702C 8E0800FC */  lw         $t0, 0xfc($s0)
/* 87C30 80087030 97A4002A */  lhu        $a0, 0x2a($sp)
/* 87C34 80087034 AE1900EC */  sw         $t9, 0xec($s0)
/* 87C38 80087038 0C021740 */  jal        func_80085D00
/* 87C3C 8008703C AE0800F0 */   sw        $t0, 0xf0($s0)
/* 87C40 80087040 10000141 */  b          .L80087548
/* 87C44 80087044 8E090098 */   lw        $t1, 0x98($s0)
/* 87C48 80087048 97A4002A */  lhu        $a0, 0x2a($sp)
.L8008704C:
/* 87C4C 8008704C 0C021740 */  jal        func_80085D00
/* 87C50 80087050 00000000 */   nop
/* 87C54 80087054 97A4002A */  lhu        $a0, 0x2a($sp)
/* 87C58 80087058 0C0216B9 */  jal        func_80085AE4
/* 87C5C 8008705C 00000000 */   nop
/* 87C60 80087060 10000139 */  b          .L80087548
/* 87C64 80087064 8E090098 */   lw        $t1, 0x98($s0)
/* 87C68 80087068 960900D6 */  lhu        $t1, 0xd6($s0)
/* 87C6C 8008706C 3C0B0002 */  lui        $t3, 2
/* 87C70 80087070 15200005 */  bnez       $t1, .L80087088
/* 87C74 80087074 356B1403 */   ori       $t3, $t3, 0x1403
/* 87C78 80087078 3C0A0002 */  lui        $t2, 2
/* 87C7C 8008707C 354A1103 */  ori        $t2, $t2, 0x1103
/* 87C80 80087080 10000002 */  b          .L8008708C
/* 87C84 80087084 AE0A0080 */   sw        $t2, 0x80($s0)
.L80087088:
/* 87C88 80087088 AE0B0080 */  sw         $t3, 0x80($s0)
.L8008708C:
/* 87C8C 8008708C 97A4002A */  lhu        $a0, 0x2a($sp)
/* 87C90 80087090 0C021A09 */  jal        func_80086824
/* 87C94 80087094 00000000 */   nop
/* 87C98 80087098 1440012A */  bnez       $v0, .L80087544
/* 87C9C 8008709C 00000000 */   nop
/* 87CA0 800870A0 8E0C0150 */  lw         $t4, 0x150($s0)
/* 87CA4 800870A4 97A4002A */  lhu        $a0, 0x2a($sp)
/* 87CA8 800870A8 000C6BC0 */  sll        $t5, $t4, 0xf
/* 87CAC 800870AC 05A0000F */  bltz       $t5, .L800870EC
/* 87CB0 800870B0 3C01FFFC */   lui       $at, 0xfffc
/* 87CB4 800870B4 8E0200F0 */  lw         $v0, 0xf0($s0)
/* 87CB8 800870B8 34210001 */  ori        $at, $at, 1
/* 87CBC 800870BC 0041082A */  slt        $at, $v0, $at
/* 87CC0 800870C0 14200002 */  bnez       $at, .L800870CC
/* 87CC4 800870C4 244ED000 */   addiu     $t6, $v0, -0x3000
/* 87CC8 800870C8 AE0E00F0 */  sw         $t6, 0xf0($s0)
.L800870CC:
/* 87CCC 800870CC 97A4002A */  lhu        $a0, 0x2a($sp)
/* 87CD0 800870D0 0C0216B9 */  jal        func_80085AE4
/* 87CD4 800870D4 00000000 */   nop
/* 87CD8 800870D8 97A4002A */  lhu        $a0, 0x2a($sp)
/* 87CDC 800870DC 0C0216EB */  jal        func_80085BAC
/* 87CE0 800870E0 00000000 */   nop
/* 87CE4 800870E4 10000118 */  b          .L80087548
/* 87CE8 800870E8 8E090098 */   lw        $t1, 0x98($s0)
.L800870EC:
/* 87CEC 800870EC 0C0216B9 */  jal        func_80085AE4
/* 87CF0 800870F0 00000000 */   nop
/* 87CF4 800870F4 14400005 */  bnez       $v0, .L8008710C
/* 87CF8 800870F8 97A4002A */   lhu       $a0, 0x2a($sp)
/* 87CFC 800870FC 97A4002A */  lhu        $a0, 0x2a($sp)
/* 87D00 80087100 0C021671 */  jal        func_800859C4
/* 87D04 80087104 00000000 */   nop
/* 87D08 80087108 97A4002A */  lhu        $a0, 0x2a($sp)
.L8008710C:
/* 87D0C 8008710C 0C0216EB */  jal        func_80085BAC
/* 87D10 80087110 00000000 */   nop
/* 87D14 80087114 10400004 */  beqz       $v0, .L80087128
/* 87D18 80087118 00000000 */   nop
/* 87D1C 8008711C 97A4002A */  lhu        $a0, 0x2a($sp)
/* 87D20 80087120 0C021671 */  jal        func_800859C4
/* 87D24 80087124 00000000 */   nop
.L80087128:
/* 87D28 80087128 8E0F0098 */  lw         $t7, 0x98($s0)
/* 87D2C 8008712C 97A4002A */  lhu        $a0, 0x2a($sp)
/* 87D30 80087130 31F80001 */  andi       $t8, $t7, 1
/* 87D34 80087134 13000003 */  beqz       $t8, .L80087144
/* 87D38 80087138 00000000 */   nop
/* 87D3C 8008713C 0C021671 */  jal        func_800859C4
/* 87D40 80087140 00000000 */   nop
.L80087144:
/* 87D44 80087144 8E190080 */  lw         $t9, 0x80($s0)
/* 87D48 80087148 00000000 */  nop
/* 87D4C 8008714C 37280600 */  ori        $t0, $t9, 0x600
/* 87D50 80087150 100000FC */  b          .L80087544
/* 87D54 80087154 AE080080 */   sw        $t0, 0x80($s0)
/* 87D58 80087158 8E090150 */  lw         $t1, 0x150($s0)
/* 87D5C 8008715C 3C013F00 */  lui        $at, 0x3f00
/* 87D60 80087160 312A8000 */  andi       $t2, $t1, 0x8000
/* 87D64 80087164 15400009 */  bnez       $t2, .L8008718C
/* 87D68 80087168 00000000 */   nop
/* 87D6C 8008716C 3C013F80 */  lui        $at, 0x3f80
/* 87D70 80087170 44816000 */  mtc1       $at, $f12
/* 87D74 80087174 86050088 */  lh         $a1, 0x88($s0)
/* 87D78 80087178 8606008C */  lh         $a2, 0x8c($s0)
/* 87D7C 8008717C 0C00FC17 */  jal        func_8003F05C
/* 87D80 80087180 24070008 */   addiu     $a3, $zero, 8
/* 87D84 80087184 10000007 */  b          .L800871A4
/* 87D88 80087188 97A4002A */   lhu       $a0, 0x2a($sp)
.L8008718C:
/* 87D8C 8008718C 44816000 */  mtc1       $at, $f12
/* 87D90 80087190 86050088 */  lh         $a1, 0x88($s0)
/* 87D94 80087194 8606008C */  lh         $a2, 0x8c($s0)
/* 87D98 80087198 0C00FC17 */  jal        func_8003F05C
/* 87D9C 8008719C 24070008 */   addiu     $a3, $zero, 8
/* 87DA0 800871A0 97A4002A */  lhu        $a0, 0x2a($sp)
.L800871A4:
/* 87DA4 800871A4 0C0217C2 */  jal        func_80085F08
/* 87DA8 800871A8 00000000 */   nop
/* 87DAC 800871AC 960C00D0 */  lhu        $t4, 0xd0($s0)
/* 87DB0 800871B0 240B0014 */  addiu      $t3, $zero, 0x14
/* 87DB4 800871B4 258D0001 */  addiu      $t5, $t4, 1
/* 87DB8 800871B8 AE0B015C */  sw         $t3, 0x15c($s0)
/* 87DBC 800871BC A60D00D0 */  sh         $t5, 0xd0($s0)
/* 87DC0 800871C0 8E0E015C */  lw         $t6, 0x15c($s0)
/* 87DC4 800871C4 24190002 */  addiu      $t9, $zero, 2
/* 87DC8 800871C8 25CFFFFF */  addiu      $t7, $t6, -1
/* 87DCC 800871CC 15E00009 */  bnez       $t7, .L800871F4
/* 87DD0 800871D0 AE0F015C */   sw        $t7, 0x15c($s0)
/* 87DD4 800871D4 24080010 */  addiu      $t0, $zero, 0x10
/* 87DD8 800871D8 AE190080 */  sw         $t9, 0x80($s0)
/* 87DDC 800871DC AE000168 */  sw         $zero, 0x168($s0)
/* 87DE0 800871E0 A60800D0 */  sh         $t0, 0xd0($s0)
/* 87DE4 800871E4 3C09800E */  lui        $t1, %hi(D_800E3DB8)
/* 87DE8 800871E8 95293DB8 */  lhu        $t1, %lo(D_800E3DB8)($t1)
/* 87DEC 800871EC 00000000 */  nop
/* 87DF0 800871F0 AE090170 */  sw         $t1, 0x170($s0)
.L800871F4:
/* 87DF4 800871F4 8E0A0098 */  lw         $t2, 0x98($s0)
/* 87DF8 800871F8 00000000 */  nop
/* 87DFC 800871FC 314B0001 */  andi       $t3, $t2, 1
/* 87E00 80087200 11600006 */  beqz       $t3, .L8008721C
/* 87E04 80087204 00000000 */   nop
/* 87E08 80087208 960C00D6 */  lhu        $t4, 0xd6($s0)
/* 87E0C 8008720C 240D003C */  addiu      $t5, $zero, 0x3c
/* 87E10 80087210 15800002 */  bnez       $t4, .L8008721C
/* 87E14 80087214 3C01800F */   lui       $at, %hi(D_800EF5E4)
/* 87E18 80087218 A42DF5E4 */  sh         $t5, %lo(D_800EF5E4)($at)
.L8008721C:
/* 87E1C 8008721C 860E00A6 */  lh         $t6, 0xa6($s0)
/* 87E20 80087220 861800A8 */  lh         $t8, 0xa8($s0)
/* 87E24 80087224 860800A2 */  lh         $t0, 0xa2($s0)
/* 87E28 80087228 860A00A4 */  lh         $t2, 0xa4($s0)
/* 87E2C 8008722C 25CF0002 */  addiu      $t7, $t6, 2
/* 87E30 80087230 2719FFFE */  addiu      $t9, $t8, -2
/* 87E34 80087234 2509FFFE */  addiu      $t1, $t0, -2
/* 87E38 80087238 254B0002 */  addiu      $t3, $t2, 2
/* 87E3C 8008723C A60F00A6 */  sh         $t7, 0xa6($s0)
/* 87E40 80087240 A61900A8 */  sh         $t9, 0xa8($s0)
/* 87E44 80087244 A60900A2 */  sh         $t1, 0xa2($s0)
/* 87E48 80087248 100000BE */  b          .L80087544
/* 87E4C 8008724C A60B00A4 */   sh        $t3, 0xa4($s0)
/* 87E50 80087250 97A4002A */  lhu        $a0, 0x2a($sp)
/* 87E54 80087254 0C02196F */  jal        func_800865BC
/* 87E58 80087258 00000000 */   nop
/* 87E5C 8008725C 144000B9 */  bnez       $v0, .L80087544
/* 87E60 80087260 00000000 */   nop
/* 87E64 80087264 97A4002A */  lhu        $a0, 0x2a($sp)
/* 87E68 80087268 0C0217C2 */  jal        func_80085F08
/* 87E6C 8008726C 00000000 */   nop
/* 87E70 80087270 97A4002A */  lhu        $a0, 0x2a($sp)
/* 87E74 80087274 0C0219E4 */  jal        func_80086790
/* 87E78 80087278 00000000 */   nop
/* 87E7C 8008727C 104000B1 */  beqz       $v0, .L80087544
/* 87E80 80087280 00000000 */   nop
/* 87E84 80087284 960C00D0 */  lhu        $t4, 0xd0($s0)
/* 87E88 80087288 00000000 */  nop
/* 87E8C 8008728C 258D0001 */  addiu      $t5, $t4, 1
/* 87E90 80087290 100000AC */  b          .L80087544
/* 87E94 80087294 A60D00D0 */   sh        $t5, 0xd0($s0)
/* 87E98 80087298 8E0E0170 */  lw         $t6, 0x170($s0)
/* 87E9C 8008729C 3C19800E */  lui        $t9, %hi(D_800E3DB8)
/* 87EA0 800872A0 25CFFFFF */  addiu      $t7, $t6, -1
/* 87EA4 800872A4 1DE000A7 */  bgtz       $t7, .L80087544
/* 87EA8 800872A8 AE0F0170 */   sw        $t7, 0x170($s0)
/* 87EAC 800872AC 97393DB8 */  lhu        $t9, %lo(D_800E3DB8)($t9)
/* 87EB0 800872B0 97A4002A */  lhu        $a0, 0x2a($sp)
/* 87EB4 800872B4 0C02183F */  jal        func_800860FC
/* 87EB8 800872B8 AE190170 */   sw        $t9, 0x170($s0)
/* 87EBC 800872BC 10400006 */  beqz       $v0, .L800872D8
/* 87EC0 800872C0 00000000 */   nop
/* 87EC4 800872C4 97A5002A */  lhu        $a1, 0x2a($sp)
/* 87EC8 800872C8 0C000DDE */  jal        func_80003778
/* 87ECC 800872CC 24040093 */   addiu     $a0, $zero, 0x93
/* 87ED0 800872D0 1000009D */  b          .L80087548
/* 87ED4 800872D4 8E090098 */   lw        $t1, 0x98($s0)
.L800872D8:
/* 87ED8 800872D8 1000009A */  b          .L80087544
/* 87EDC 800872DC AE000080 */   sw        $zero, 0x80($s0)
/* 87EE0 800872E0 97A4002A */  lhu        $a0, 0x2a($sp)
/* 87EE4 800872E4 0C021A09 */  jal        func_80086824
/* 87EE8 800872E8 00000000 */   nop
/* 87EEC 800872EC 10000096 */  b          .L80087548
/* 87EF0 800872F0 8E090098 */   lw        $t1, 0x98($s0)
/* 87EF4 800872F4 97A4002A */  lhu        $a0, 0x2a($sp)
/* 87EF8 800872F8 0C021A40 */  jal        func_80086900
/* 87EFC 800872FC 00000000 */   nop
/* 87F00 80087300 8E080150 */  lw         $t0, 0x150($s0)
/* 87F04 80087304 240A0014 */  addiu      $t2, $zero, 0x14
/* 87F08 80087308 31098000 */  andi       $t1, $t0, 0x8000
/* 87F0C 8008730C 15200003 */  bnez       $t1, .L8008731C
/* 87F10 80087310 240B000A */   addiu     $t3, $zero, 0xa
/* 87F14 80087314 10000002 */  b          .L80087320
/* 87F18 80087318 AE0A015C */   sw        $t2, 0x15c($s0)
.L8008731C:
/* 87F1C 8008731C AE0B015C */  sw         $t3, 0x15c($s0)
.L80087320:
/* 87F20 80087320 960C00D0 */  lhu        $t4, 0xd0($s0)
/* 87F24 80087324 00000000 */  nop
/* 87F28 80087328 258D0001 */  addiu      $t5, $t4, 1
/* 87F2C 8008732C A60D00D0 */  sh         $t5, 0xd0($s0)
/* 87F30 80087330 8E0E0150 */  lw         $t6, 0x150($s0)
/* 87F34 80087334 3C014000 */  lui        $at, 0x4000
/* 87F38 80087338 31CF8000 */  andi       $t7, $t6, 0x8000
/* 87F3C 8008733C 15E0003D */  bnez       $t7, .L80087434
/* 87F40 80087340 00000000 */   nop
/* 87F44 80087344 861800A6 */  lh         $t8, 0xa6($s0)
/* 87F48 80087348 44814000 */  mtc1       $at, $f8
/* 87F4C 8008734C C60A00B4 */  lwc1       $f10, 0xb4($s0)
/* 87F50 80087350 44988000 */  mtc1       $t8, $f16
/* 87F54 80087354 460A4002 */  mul.s      $f0, $f8, $f10
/* 87F58 80087358 860900A8 */  lh         $t1, 0xa8($s0)
/* 87F5C 8008735C 860C00A2 */  lh         $t4, 0xa2($s0)
/* 87F60 80087360 44894000 */  mtc1       $t1, $f8
/* 87F64 80087364 468084A0 */  cvt.s.w    $f18, $f16
/* 87F68 80087368 860F00A4 */  lh         $t7, 0xa4($s0)
/* 87F6C 8008736C 46009100 */  add.s      $f4, $f18, $f0
/* 87F70 80087370 4459F800 */  cfc1       $t9, $31
/* 87F74 80087374 00000000 */  nop
/* 87F78 80087378 37210003 */  ori        $at, $t9, 3
/* 87F7C 8008737C 38210002 */  xori       $at, $at, 2
/* 87F80 80087380 44C1F800 */  ctc1       $at, $31
/* 87F84 80087384 00000000 */  nop
/* 87F88 80087388 460021A4 */  cvt.w.s    $f6, $f4
/* 87F8C 8008738C 448C2000 */  mtc1       $t4, $f4
/* 87F90 80087390 44D9F800 */  ctc1       $t9, $31
/* 87F94 80087394 44083000 */  mfc1       $t0, $f6
/* 87F98 80087398 468042A0 */  cvt.s.w    $f10, $f8
/* 87F9C 8008739C A60800A6 */  sh         $t0, 0xa6($s0)
/* 87FA0 800873A0 46005401 */  sub.s      $f16, $f10, $f0
/* 87FA4 800873A4 444AF800 */  cfc1       $t2, $31
/* 87FA8 800873A8 00000000 */  nop
/* 87FAC 800873AC 35410003 */  ori        $at, $t2, 3
/* 87FB0 800873B0 38210002 */  xori       $at, $at, 2
/* 87FB4 800873B4 44C1F800 */  ctc1       $at, $31
/* 87FB8 800873B8 00000000 */  nop
/* 87FBC 800873BC 460084A4 */  cvt.w.s    $f18, $f16
/* 87FC0 800873C0 448F8000 */  mtc1       $t7, $f16
/* 87FC4 800873C4 44CAF800 */  ctc1       $t2, $31
/* 87FC8 800873C8 440B9000 */  mfc1       $t3, $f18
/* 87FCC 800873CC 468021A0 */  cvt.s.w    $f6, $f4
/* 87FD0 800873D0 A60B00A8 */  sh         $t3, 0xa8($s0)
/* 87FD4 800873D4 46003201 */  sub.s      $f8, $f6, $f0
/* 87FD8 800873D8 444DF800 */  cfc1       $t5, $31
/* 87FDC 800873DC 00000000 */  nop
/* 87FE0 800873E0 35A10003 */  ori        $at, $t5, 3
/* 87FE4 800873E4 38210002 */  xori       $at, $at, 2
/* 87FE8 800873E8 44C1F800 */  ctc1       $at, $31
/* 87FEC 800873EC 00000000 */  nop
/* 87FF0 800873F0 460042A4 */  cvt.w.s    $f10, $f8
/* 87FF4 800873F4 44CDF800 */  ctc1       $t5, $31
/* 87FF8 800873F8 440E5000 */  mfc1       $t6, $f10
/* 87FFC 800873FC 468084A0 */  cvt.s.w    $f18, $f16
/* 88000 80087400 A60E00A2 */  sh         $t6, 0xa2($s0)
/* 88004 80087404 46009100 */  add.s      $f4, $f18, $f0
/* 88008 80087408 4458F800 */  cfc1       $t8, $31
/* 8800C 8008740C 00000000 */  nop
/* 88010 80087410 37010003 */  ori        $at, $t8, 3
/* 88014 80087414 38210002 */  xori       $at, $at, 2
/* 88018 80087418 44C1F800 */  ctc1       $at, $31
/* 8801C 8008741C 00000000 */  nop
/* 88020 80087420 460021A4 */  cvt.w.s    $f6, $f4
/* 88024 80087424 44193000 */  mfc1       $t9, $f6
/* 88028 80087428 44D8F800 */  ctc1       $t8, $31
/* 8802C 8008742C 1000000D */  b          .L80087464
/* 88030 80087430 A61900A4 */   sh        $t9, 0xa4($s0)
.L80087434:
/* 88034 80087434 860800A6 */  lh         $t0, 0xa6($s0)
/* 88038 80087438 860A00A8 */  lh         $t2, 0xa8($s0)
/* 8803C 8008743C 860C00A2 */  lh         $t4, 0xa2($s0)
/* 88040 80087440 860E00A4 */  lh         $t6, 0xa4($s0)
/* 88044 80087444 25090001 */  addiu      $t1, $t0, 1
/* 88048 80087448 254BFFFF */  addiu      $t3, $t2, -1
/* 8804C 8008744C 258DFFFF */  addiu      $t5, $t4, -1
/* 88050 80087450 25CF0001 */  addiu      $t7, $t6, 1
/* 88054 80087454 A60900A6 */  sh         $t1, 0xa6($s0)
/* 88058 80087458 A60B00A8 */  sh         $t3, 0xa8($s0)
/* 8805C 8008745C A60D00A2 */  sh         $t5, 0xa2($s0)
/* 88060 80087460 A60F00A4 */  sh         $t7, 0xa4($s0)
.L80087464:
/* 88064 80087464 8E020098 */  lw         $v0, 0x98($s0)
/* 88068 80087468 00000000 */  nop
/* 8806C 8008746C 30580001 */  andi       $t8, $v0, 1
/* 88070 80087470 13000009 */  beqz       $t8, .L80087498
/* 88074 80087474 03001025 */   or        $v0, $t8, $zero
/* 88078 80087478 961900D6 */  lhu        $t9, 0xd6($s0)
/* 8807C 8008747C 00000000 */  nop
/* 88080 80087480 17200005 */  bnez       $t9, .L80087498
/* 88084 80087484 00000000 */   nop
/* 88088 80087488 8E020098 */  lw         $v0, 0x98($s0)
/* 8808C 8008748C AE000080 */  sw         $zero, 0x80($s0)
/* 88090 80087490 30480001 */  andi       $t0, $v0, 1
/* 88094 80087494 01001025 */  or         $v0, $t0, $zero
.L80087498:
/* 88098 80087498 10400002 */  beqz       $v0, .L800874A4
/* 8809C 8008749C 00000000 */   nop
/* 880A0 800874A0 AE000080 */  sw         $zero, 0x80($s0)
.L800874A4:
/* 880A4 800874A4 8E09015C */  lw         $t1, 0x15c($s0)
/* 880A8 800874A8 00000000 */  nop
/* 880AC 800874AC 252AFFFF */  addiu      $t2, $t1, -1
/* 880B0 800874B0 1D400024 */  bgtz       $t2, .L80087544
/* 880B4 800874B4 AE0A015C */   sw        $t2, 0x15c($s0)
/* 880B8 800874B8 10000022 */  b          .L80087544
/* 880BC 800874BC AE000080 */   sw        $zero, 0x80($s0)
/* 880C0 800874C0 244C0001 */  addiu      $t4, $v0, 1
/* 880C4 800874C4 97A4002A */  lhu        $a0, 0x2a($sp)
/* 880C8 800874C8 0C022FF9 */  jal        func_8008BFE4
/* 880CC 800874CC A60C00D0 */   sh        $t4, 0xd0($s0)
/* 880D0 800874D0 240100FF */  addiu      $at, $zero, 0xff
/* 880D4 800874D4 14410003 */  bne        $v0, $at, .L800874E4
/* 880D8 800874D8 AE020154 */   sw        $v0, 0x154($s0)
/* 880DC 800874DC 10000019 */  b          .L80087544
/* 880E0 800874E0 AE000080 */   sw        $zero, 0x80($s0)
.L800874E4:
/* 880E4 800874E4 97A4002A */  lhu        $a0, 0x2a($sp)
/* 880E8 800874E8 0C021ADD */  jal        func_80086B74
/* 880EC 800874EC 00000000 */   nop
/* 880F0 800874F0 8E0D0170 */  lw         $t5, 0x170($s0)
/* 880F4 800874F4 3C18800E */  lui        $t8, %hi(D_800E3DB8)
/* 880F8 800874F8 25AEFFFF */  addiu      $t6, $t5, -1
/* 880FC 800874FC 1DC00011 */  bgtz       $t6, .L80087544
/* 88100 80087500 AE0E0170 */   sw        $t6, 0x170($s0)
/* 88104 80087504 97183DB8 */  lhu        $t8, %lo(D_800E3DB8)($t8)
/* 88108 80087508 97A4002A */  lhu        $a0, 0x2a($sp)
/* 8810C 8008750C 0C023048 */  jal        func_8008C120
/* 88110 80087510 AE180170 */   sw        $t8, 0x170($s0)
/* 88114 80087514 10400006 */  beqz       $v0, .L80087530
/* 88118 80087518 3C018018 */   lui       $at, 0x8018
/* 8811C 8008751C 97A5002A */  lhu        $a1, 0x2a($sp)
/* 88120 80087520 0C000DDE */  jal        func_80003778
/* 88124 80087524 24040093 */   addiu     $a0, $zero, 0x93
/* 88128 80087528 10000007 */  b          .L80087548
/* 8812C 8008752C 8E090098 */   lw        $t1, 0x98($s0)
.L80087530:
/* 88130 80087530 8E190154 */  lw         $t9, 0x154($s0)
/* 88134 80087534 AE000080 */  sw         $zero, 0x80($s0)
/* 88138 80087538 00194080 */  sll        $t0, $t9, 2
/* 8813C 8008753C 00280821 */  addu       $at, $at, $t0
/* 88140 80087540 AC2026A0 */  sw         $zero, 0x26a0($at)
.L80087544:
/* 88144 80087544 8E090098 */  lw         $t1, 0x98($s0)
.L80087548:
/* 88148 80087548 3C01FFDF */  lui        $at, 0xffdf
/* 8814C 8008754C 3421F9FF */  ori        $at, $at, 0xf9ff
/* 88150 80087550 01215024 */  and        $t2, $t1, $at
/* 88154 80087554 8FBF0024 */  lw         $ra, 0x24($sp)
/* 88158 80087558 AE0A0098 */  sw         $t2, 0x98($s0)
/* 8815C 8008755C 8FB00020 */  lw         $s0, 0x20($sp)
/* 88160 80087560 03E00008 */  jr         $ra
/* 88164 80087564 27BD0028 */   addiu     $sp, $sp, 0x28
