.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osLeoInterrupt
/* B56B0 800B4AB0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* B56B4 800B4AB4 AFBF001C */  sw         $ra, 0x1c($sp)
/* B56B8 800B4AB8 AFA0003C */  sw         $zero, 0x3c($sp)
/* B56BC 800B4ABC 3C0E8018 */  lui        $t6, %hi(__osDiskHandle)
/* B56C0 800B4AC0 8DCE57B0 */  lw         $t6, %lo(__osDiskHandle)($t6)
/* B56C4 800B4AC4 25CF0014 */  addiu      $t7, $t6, 0x14
/* B56C8 800B4AC8 AFAF0030 */  sw         $t7, 0x30($sp)
/* B56CC 800B4ACC 8FB80030 */  lw         $t8, 0x30($sp)
/* B56D0 800B4AD0 97190006 */  lhu        $t9, 6($t8)
/* B56D4 800B4AD4 001940C0 */  sll        $t0, $t9, 3
/* B56D8 800B4AD8 01194021 */  addu       $t0, $t0, $t9
/* B56DC 800B4ADC 00084080 */  sll        $t0, $t0, 2
/* B56E0 800B4AE0 03084821 */  addu       $t1, $t8, $t0
/* B56E4 800B4AE4 252A0018 */  addiu      $t2, $t1, 0x18
/* B56E8 800B4AE8 AFAA002C */  sw         $t2, 0x2c($sp)
/* B56EC 800B4AEC 3C0BA460 */  lui        $t3, %hi(PI_STATUS)
/* B56F0 800B4AF0 8D6C0010 */  lw         $t4, %lo(PI_STATUS)($t3)
/* B56F4 800B4AF4 AFAC0038 */  sw         $t4, 0x38($sp)
/* B56F8 800B4AF8 8FAD0038 */  lw         $t5, 0x38($sp)
/* B56FC 800B4AFC 31AE0001 */  andi       $t6, $t5, 1
/* B5700 800B4B00 11C0000E */  beqz       $t6, .L800B4B3C
/* B5704 800B4B04 00000000 */   nop
/* B5708 800B4B08 3C0F800F */  lui        $t7, %hi(__OSGlobalIntMask)
/* B570C 800B4B0C 8DEF9780 */  lw         $t7, %lo(__OSGlobalIntMask)($t7)
/* B5710 800B4B10 2401F7FF */  addiu      $at, $zero, -0x801
/* B5714 800B4B14 01E1C824 */  and        $t9, $t7, $at
/* B5718 800B4B18 3C01800F */  lui        $at, %hi(__OSGlobalIntMask)
/* B571C 800B4B1C AC399780 */  sw         $t9, %lo(__OSGlobalIntMask)($at)
/* B5720 800B4B20 8FA8002C */  lw         $t0, 0x2c($sp)
/* B5724 800B4B24 2418001D */  addiu      $t8, $zero, 0x1d
/* B5728 800B4B28 AD180000 */  sw         $t8, ($t0)
/* B572C 800B4B2C 0C02D4BD */  jal        func_800B52F4
/* B5730 800B4B30 00000000 */   nop
/* B5734 800B4B34 100001AD */  b          .L800B51EC
/* B5738 800B4B38 24020001 */   addiu     $v0, $zero, 1
.L800B4B3C:
/* B573C 800B4B3C 3C09A460 */  lui        $t1, %hi(PI_STATUS)
/* B5740 800B4B40 8D2A0010 */  lw         $t2, %lo(PI_STATUS)($t1)
/* B5744 800B4B44 AFAA0038 */  sw         $t2, 0x38($sp)
/* B5748 800B4B48 8FAB0038 */  lw         $t3, 0x38($sp)
/* B574C 800B4B4C 316C0003 */  andi       $t4, $t3, 3
/* B5750 800B4B50 11800008 */  beqz       $t4, .L800B4B74
/* B5754 800B4B54 00000000 */   nop
.L800B4B58:
/* B5758 800B4B58 3C0DA460 */  lui        $t5, %hi(PI_STATUS)
/* B575C 800B4B5C 8DAE0010 */  lw         $t6, %lo(PI_STATUS)($t5)
/* B5760 800B4B60 AFAE0038 */  sw         $t6, 0x38($sp)
/* B5764 800B4B64 8FAF0038 */  lw         $t7, 0x38($sp)
/* B5768 800B4B68 31F90003 */  andi       $t9, $t7, 3
/* B576C 800B4B6C 1720FFFA */  bnez       $t9, .L800B4B58
/* B5770 800B4B70 00000000 */   nop
.L800B4B74:
/* B5774 800B4B74 3C18A500 */  lui        $t8, %hi(D_A5000508)
/* B5778 800B4B78 8F080508 */  lw         $t0, %lo(D_A5000508)($t8)
/* B577C 800B4B7C AFA8003C */  sw         $t0, 0x3c($sp)
/* B5780 800B4B80 8FA9003C */  lw         $t1, 0x3c($sp)
/* B5784 800B4B84 3C010200 */  lui        $at, 0x200
/* B5788 800B4B88 01215024 */  and        $t2, $t1, $at
/* B578C 800B4B8C 11400019 */  beqz       $t2, .L800B4BF4
/* B5790 800B4B90 00000000 */   nop
/* B5794 800B4B94 3C0BA460 */  lui        $t3, %hi(PI_STATUS)
/* B5798 800B4B98 8D6C0010 */  lw         $t4, %lo(PI_STATUS)($t3)
/* B579C 800B4B9C AFAC0038 */  sw         $t4, 0x38($sp)
/* B57A0 800B4BA0 8FAD0038 */  lw         $t5, 0x38($sp)
/* B57A4 800B4BA4 31AE0003 */  andi       $t6, $t5, 3
/* B57A8 800B4BA8 11C00008 */  beqz       $t6, .L800B4BCC
/* B57AC 800B4BAC 00000000 */   nop
.L800B4BB0:
/* B57B0 800B4BB0 3C0FA460 */  lui        $t7, %hi(PI_STATUS)
/* B57B4 800B4BB4 8DF90010 */  lw         $t9, %lo(PI_STATUS)($t7)
/* B57B8 800B4BB8 AFB90038 */  sw         $t9, 0x38($sp)
/* B57BC 800B4BBC 8FB80038 */  lw         $t8, 0x38($sp)
/* B57C0 800B4BC0 33080003 */  andi       $t0, $t8, 3
/* B57C4 800B4BC4 1500FFFA */  bnez       $t0, .L800B4BB0
/* B57C8 800B4BC8 00000000 */   nop
.L800B4BCC:
/* B57CC 800B4BCC 8FA90030 */  lw         $t1, 0x30($sp)
/* B57D0 800B4BD0 3C010100 */  lui        $at, 0x100
/* B57D4 800B4BD4 3C0CA500 */  lui        $t4, %hi(D_A5000510)
/* B57D8 800B4BD8 8D2A0010 */  lw         $t2, 0x10($t1)
/* B57DC 800B4BDC 01415825 */  or         $t3, $t2, $at
/* B57E0 800B4BE0 AD8B0510 */  sw         $t3, %lo(D_A5000510)($t4)
/* B57E4 800B4BE4 8FAD002C */  lw         $t5, 0x2c($sp)
/* B57E8 800B4BE8 ADA00000 */  sw         $zero, ($t5)
/* B57EC 800B4BEC 1000017F */  b          .L800B51EC
/* B57F0 800B4BF0 00001025 */   or        $v0, $zero, $zero
.L800B4BF4:
/* B57F4 800B4BF4 8FAE0030 */  lw         $t6, 0x30($sp)
/* B57F8 800B4BF8 24010002 */  addiu      $at, $zero, 2
/* B57FC 800B4BFC 8DCF0000 */  lw         $t7, ($t6)
/* B5800 800B4C00 15E10003 */  bne        $t7, $at, .L800B4C10
/* B5804 800B4C04 00000000 */   nop
/* B5808 800B4C08 10000178 */  b          .L800B51EC
/* B580C 800B4C0C 24020001 */   addiu     $v0, $zero, 1
.L800B4C10:
/* B5810 800B4C10 8FB9003C */  lw         $t9, 0x3c($sp)
/* B5814 800B4C14 3C010800 */  lui        $at, 0x800
/* B5818 800B4C18 0321C024 */  and        $t8, $t9, $at
/* B581C 800B4C1C 13000023 */  beqz       $t8, .L800B4CAC
/* B5820 800B4C20 00000000 */   nop
/* B5824 800B4C24 3C08A460 */  lui        $t0, %hi(PI_STATUS)
/* B5828 800B4C28 8D090010 */  lw         $t1, %lo(PI_STATUS)($t0)
/* B582C 800B4C2C AFA90038 */  sw         $t1, 0x38($sp)
/* B5830 800B4C30 8FAA0038 */  lw         $t2, 0x38($sp)
/* B5834 800B4C34 314B0003 */  andi       $t3, $t2, 3
/* B5838 800B4C38 11600008 */  beqz       $t3, .L800B4C5C
/* B583C 800B4C3C 00000000 */   nop
.L800B4C40:
/* B5840 800B4C40 3C0CA460 */  lui        $t4, %hi(PI_STATUS)
/* B5844 800B4C44 8D8D0010 */  lw         $t5, %lo(PI_STATUS)($t4)
/* B5848 800B4C48 AFAD0038 */  sw         $t5, 0x38($sp)
/* B584C 800B4C4C 8FAE0038 */  lw         $t6, 0x38($sp)
/* B5850 800B4C50 31CF0003 */  andi       $t7, $t6, 3
/* B5854 800B4C54 15E0FFFA */  bnez       $t7, .L800B4C40
/* B5858 800B4C58 00000000 */   nop
.L800B4C5C:
/* B585C 800B4C5C 3C19A500 */  lui        $t9, %hi(D_A5000508)
/* B5860 800B4C60 8F380508 */  lw         $t8, %lo(D_A5000508)($t9)
/* B5864 800B4C64 AFB8003C */  sw         $t8, 0x3c($sp)
/* B5868 800B4C68 8FA9002C */  lw         $t1, 0x2c($sp)
/* B586C 800B4C6C 24080016 */  addiu      $t0, $zero, 0x16
/* B5870 800B4C70 AD280000 */  sw         $t0, ($t1)
/* B5874 800B4C74 0C02D4BD */  jal        func_800B52F4
/* B5878 800B4C78 00000000 */   nop
/* B587C 800B4C7C 240A0002 */  addiu      $t2, $zero, 2
/* B5880 800B4C80 3C0BA460 */  lui        $t3, %hi(PI_STATUS)
/* B5884 800B4C84 AD6A0010 */  sw         $t2, %lo(PI_STATUS)($t3)
/* B5888 800B4C88 3C0C800F */  lui        $t4, %hi(__OSGlobalIntMask)
/* B588C 800B4C8C 8D8C9780 */  lw         $t4, %lo(__OSGlobalIntMask)($t4)
/* B5890 800B4C90 3C010010 */  lui        $at, 0x10
/* B5894 800B4C94 34210401 */  ori        $at, $at, 0x401
/* B5898 800B4C98 01816825 */  or         $t5, $t4, $at
/* B589C 800B4C9C 3C01800F */  lui        $at, %hi(__OSGlobalIntMask)
/* B58A0 800B4CA0 AC2D9780 */  sw         $t5, %lo(__OSGlobalIntMask)($at)
/* B58A4 800B4CA4 10000151 */  b          .L800B51EC
/* B58A8 800B4CA8 24020001 */   addiu     $v0, $zero, 1
.L800B4CAC:
/* B58AC 800B4CAC 8FAE0030 */  lw         $t6, 0x30($sp)
/* B58B0 800B4CB0 24010001 */  addiu      $at, $zero, 1
/* B58B4 800B4CB4 8DCF0000 */  lw         $t7, ($t6)
/* B58B8 800B4CB8 15E10042 */  bne        $t7, $at, .L800B4DC4
/* B58BC 800B4CBC 00000000 */   nop
/* B58C0 800B4CC0 8FB9003C */  lw         $t9, 0x3c($sp)
/* B58C4 800B4CC4 3C014000 */  lui        $at, 0x4000
/* B58C8 800B4CC8 0321C024 */  and        $t8, $t9, $at
/* B58CC 800B4CCC 17000026 */  bnez       $t8, .L800B4D68
/* B58D0 800B4CD0 00000000 */   nop
/* B58D4 800B4CD4 8FA80030 */  lw         $t0, 0x30($sp)
/* B58D8 800B4CD8 950B0004 */  lhu        $t3, 4($t0)
/* B58DC 800B4CDC 8D090008 */  lw         $t1, 8($t0)
/* B58E0 800B4CE0 000B6080 */  sll        $t4, $t3, 2
/* B58E4 800B4CE4 018B6021 */  addu       $t4, $t4, $t3
/* B58E8 800B4CE8 000C6080 */  sll        $t4, $t4, 2
/* B58EC 800B4CEC 018B6021 */  addu       $t4, $t4, $t3
/* B58F0 800B4CF0 000C6080 */  sll        $t4, $t4, 2
/* B58F4 800B4CF4 018B6021 */  addu       $t4, $t4, $t3
/* B58F8 800B4CF8 252A0001 */  addiu      $t2, $t1, 1
/* B58FC 800B4CFC 114C0008 */  beq        $t2, $t4, .L800B4D20
/* B5900 800B4D00 00000000 */   nop
/* B5904 800B4D04 8FAE002C */  lw         $t6, 0x2c($sp)
/* B5908 800B4D08 240D0018 */  addiu      $t5, $zero, 0x18
/* B590C 800B4D0C ADCD0000 */  sw         $t5, ($t6)
/* B5910 800B4D10 0C02D47F */  jal        func_800B51FC
/* B5914 800B4D14 00000000 */   nop
/* B5918 800B4D18 10000134 */  b          .L800B51EC
/* B591C 800B4D1C 24020001 */   addiu     $v0, $zero, 1
.L800B4D20:
/* B5920 800B4D20 240F0002 */  addiu      $t7, $zero, 2
/* B5924 800B4D24 3C19A460 */  lui        $t9, %hi(PI_STATUS)
/* B5928 800B4D28 AF2F0010 */  sw         $t7, %lo(PI_STATUS)($t9)
/* B592C 800B4D2C 3C18800F */  lui        $t8, %hi(__OSGlobalIntMask)
/* B5930 800B4D30 8F189780 */  lw         $t8, %lo(__OSGlobalIntMask)($t8)
/* B5934 800B4D34 3C010010 */  lui        $at, 0x10
/* B5938 800B4D38 34210401 */  ori        $at, $at, 0x401
/* B593C 800B4D3C 03014825 */  or         $t1, $t8, $at
/* B5940 800B4D40 3C01800F */  lui        $at, %hi(__OSGlobalIntMask)
/* B5944 800B4D44 AC299780 */  sw         $t1, %lo(__OSGlobalIntMask)($at)
/* B5948 800B4D48 8FA8002C */  lw         $t0, 0x2c($sp)
/* B594C 800B4D4C AD000000 */  sw         $zero, ($t0)
/* B5950 800B4D50 0C02D4BD */  jal        func_800B52F4
/* B5954 800B4D54 00000000 */   nop
/* B5958 800B4D58 10000124 */  b          .L800B51EC
/* B595C 800B4D5C 24020001 */   addiu     $v0, $zero, 1
/* B5960 800B4D60 10000016 */  b          .L800B4DBC
/* B5964 800B4D64 00000000 */   nop
.L800B4D68:
/* B5968 800B4D68 8FAB002C */  lw         $t3, 0x2c($sp)
/* B596C 800B4D6C 8D6A0004 */  lw         $t2, 4($t3)
/* B5970 800B4D70 8D6C000C */  lw         $t4, 0xc($t3)
/* B5974 800B4D74 014C6821 */  addu       $t5, $t2, $t4
/* B5978 800B4D78 AD6D0004 */  sw         $t5, 4($t3)
/* B597C 800B4D7C 8FAE0030 */  lw         $t6, 0x30($sp)
/* B5980 800B4D80 8DCF0008 */  lw         $t7, 8($t6)
/* B5984 800B4D84 25F90001 */  addiu      $t9, $t7, 1
/* B5988 800B4D88 ADD90008 */  sw         $t9, 8($t6)
/* B598C 800B4D8C 8FB8002C */  lw         $t8, 0x2c($sp)
/* B5990 800B4D90 3C048018 */  lui        $a0, %hi(__osDiskHandle)
/* B5994 800B4D94 3C060500 */  lui        $a2, 0x500
/* B5998 800B4D98 8F09000C */  lw         $t1, 0xc($t8)
/* B599C 800B4D9C 8F070004 */  lw         $a3, 4($t8)
/* B59A0 800B4DA0 34C60400 */  ori        $a2, $a2, 0x400
/* B59A4 800B4DA4 8C8457B0 */  lw         $a0, %lo(__osDiskHandle)($a0)
/* B59A8 800B4DA8 24050001 */  addiu      $a1, $zero, 1
/* B59AC 800B4DAC 0C02A038 */  jal        osEPiRawStartDma
/* B59B0 800B4DB0 AFA90010 */   sw        $t1, 0x10($sp)
/* B59B4 800B4DB4 1000010D */  b          .L800B51EC
/* B59B8 800B4DB8 24020001 */   addiu     $v0, $zero, 1
.L800B4DBC:
/* B59BC 800B4DBC 10000109 */  b          .L800B51E4
/* B59C0 800B4DC0 00000000 */   nop
.L800B4DC4:
/* B59C4 800B4DC4 8FA80030 */  lw         $t0, 0x30($sp)
/* B59C8 800B4DC8 8D0A0000 */  lw         $t2, ($t0)
/* B59CC 800B4DCC 154000FE */  bnez       $t2, .L800B51C8
/* B59D0 800B4DD0 00000000 */   nop
/* B59D4 800B4DD4 8FAC0030 */  lw         $t4, 0x30($sp)
/* B59D8 800B4DD8 24010003 */  addiu      $at, $zero, 3
/* B59DC 800B4DDC 958D0004 */  lhu        $t5, 4($t4)
/* B59E0 800B4DE0 15A1001D */  bne        $t5, $at, .L800B4E58
/* B59E4 800B4DE4 00000000 */   nop
/* B59E8 800B4DE8 8FB9002C */  lw         $t9, 0x2c($sp)
/* B59EC 800B4DEC 8FAB0030 */  lw         $t3, 0x30($sp)
/* B59F0 800B4DF0 8F2E0010 */  lw         $t6, 0x10($t9)
/* B59F4 800B4DF4 8D6F0008 */  lw         $t7, 8($t3)
/* B59F8 800B4DF8 25D80011 */  addiu      $t8, $t6, 0x11
/* B59FC 800B4DFC 030F082A */  slt        $at, $t8, $t7
/* B5A00 800B4E00 10200007 */  beqz       $at, .L800B4E20
/* B5A04 800B4E04 00000000 */   nop
/* B5A08 800B4E08 8FA9002C */  lw         $t1, 0x2c($sp)
/* B5A0C 800B4E0C AD200000 */  sw         $zero, ($t1)
/* B5A10 800B4E10 0C02D47F */  jal        func_800B51FC
/* B5A14 800B4E14 00000000 */   nop
/* B5A18 800B4E18 100000F4 */  b          .L800B51EC
/* B5A1C 800B4E1C 24020001 */   addiu     $v0, $zero, 1
.L800B4E20:
/* B5A20 800B4E20 8FA8003C */  lw         $t0, 0x3c($sp)
/* B5A24 800B4E24 3C014000 */  lui        $at, 0x4000
/* B5A28 800B4E28 01015024 */  and        $t2, $t0, $at
/* B5A2C 800B4E2C 15400008 */  bnez       $t2, .L800B4E50
/* B5A30 800B4E30 00000000 */   nop
/* B5A34 800B4E34 8FAD002C */  lw         $t5, 0x2c($sp)
/* B5A38 800B4E38 240C0017 */  addiu      $t4, $zero, 0x17
/* B5A3C 800B4E3C ADAC0000 */  sw         $t4, ($t5)
/* B5A40 800B4E40 0C02D47F */  jal        func_800B51FC
/* B5A44 800B4E44 00000000 */   nop
/* B5A48 800B4E48 100000E8 */  b          .L800B51EC
/* B5A4C 800B4E4C 24020001 */   addiu     $v0, $zero, 1
.L800B4E50:
/* B5A50 800B4E50 10000006 */  b          .L800B4E6C
/* B5A54 800B4E54 00000000 */   nop
.L800B4E58:
/* B5A58 800B4E58 8FAB002C */  lw         $t3, 0x2c($sp)
/* B5A5C 800B4E5C 8D790004 */  lw         $t9, 4($t3)
/* B5A60 800B4E60 8D6E000C */  lw         $t6, 0xc($t3)
/* B5A64 800B4E64 032E7821 */  addu       $t7, $t9, $t6
/* B5A68 800B4E68 AD6F0004 */  sw         $t7, 4($t3)
.L800B4E6C:
/* B5A6C 800B4E6C 3C18A500 */  lui        $t8, %hi(D_A5000510)
/* B5A70 800B4E70 8F090510 */  lw         $t1, %lo(D_A5000510)($t8)
/* B5A74 800B4E74 AFA90034 */  sw         $t1, 0x34($sp)
/* B5A78 800B4E78 8FA80034 */  lw         $t0, 0x34($sp)
/* B5A7C 800B4E7C 3C010020 */  lui        $at, 0x20
/* B5A80 800B4E80 01015024 */  and        $t2, $t0, $at
/* B5A84 800B4E84 11400005 */  beqz       $t2, .L800B4E9C
/* B5A88 800B4E88 00000000 */   nop
/* B5A8C 800B4E8C 3C010040 */  lui        $at, 0x40
/* B5A90 800B4E90 01016024 */  and        $t4, $t0, $at
/* B5A94 800B4E94 15800006 */  bnez       $t4, .L800B4EB0
/* B5A98 800B4E98 00000000 */   nop
.L800B4E9C:
/* B5A9C 800B4E9C 8FAD0034 */  lw         $t5, 0x34($sp)
/* B5AA0 800B4EA0 3C010200 */  lui        $at, 0x200
/* B5AA4 800B4EA4 01A1C824 */  and        $t9, $t5, $at
/* B5AA8 800B4EA8 13200027 */  beqz       $t9, .L800B4F48
/* B5AAC 800B4EAC 00000000 */   nop
.L800B4EB0:
/* B5AB0 800B4EB0 8FAE002C */  lw         $t6, 0x2c($sp)
/* B5AB4 800B4EB4 8DCF0010 */  lw         $t7, 0x10($t6)
/* B5AB8 800B4EB8 2DE10004 */  sltiu      $at, $t7, 4
/* B5ABC 800B4EBC 14200013 */  bnez       $at, .L800B4F0C
/* B5AC0 800B4EC0 00000000 */   nop
/* B5AC4 800B4EC4 8FAB0030 */  lw         $t3, 0x30($sp)
/* B5AC8 800B4EC8 24010003 */  addiu      $at, $zero, 3
/* B5ACC 800B4ECC 95780004 */  lhu        $t8, 4($t3)
/* B5AD0 800B4ED0 17010005 */  bne        $t8, $at, .L800B4EE8
/* B5AD4 800B4ED4 00000000 */   nop
/* B5AD8 800B4ED8 8D690008 */  lw         $t1, 8($t3)
/* B5ADC 800B4EDC 29210053 */  slti       $at, $t1, 0x53
/* B5AE0 800B4EE0 14200008 */  bnez       $at, .L800B4F04
/* B5AE4 800B4EE4 00000000 */   nop
.L800B4EE8:
/* B5AE8 800B4EE8 8FA8002C */  lw         $t0, 0x2c($sp)
/* B5AEC 800B4EEC 240A0017 */  addiu      $t2, $zero, 0x17
/* B5AF0 800B4EF0 AD0A0000 */  sw         $t2, ($t0)
/* B5AF4 800B4EF4 0C02D47F */  jal        func_800B51FC
/* B5AF8 800B4EF8 00000000 */   nop
/* B5AFC 800B4EFC 100000BB */  b          .L800B51EC
/* B5B00 800B4F00 24020001 */   addiu     $v0, $zero, 1
.L800B4F04:
/* B5B04 800B4F04 1000000C */  b          .L800B4F38
/* B5B08 800B4F08 00000000 */   nop
.L800B4F0C:
/* B5B0C 800B4F0C 8FAC002C */  lw         $t4, 0x2c($sp)
/* B5B10 800B4F10 8D8D0010 */  lw         $t5, 0x10($t4)
/* B5B14 800B4F14 AFAD0028 */  sw         $t5, 0x28($sp)
/* B5B18 800B4F18 8FB90030 */  lw         $t9, 0x30($sp)
/* B5B1C 800B4F1C 8FAB0028 */  lw         $t3, 0x28($sp)
/* B5B20 800B4F20 8FB8002C */  lw         $t8, 0x2c($sp)
/* B5B24 800B4F24 8F2E0008 */  lw         $t6, 8($t9)
/* B5B28 800B4F28 000B4880 */  sll        $t1, $t3, 2
/* B5B2C 800B4F2C 03095021 */  addu       $t2, $t8, $t1
/* B5B30 800B4F30 25CF0001 */  addiu      $t7, $t6, 1
/* B5B34 800B4F34 AD4F0014 */  sw         $t7, 0x14($t2)
.L800B4F38:
/* B5B38 800B4F38 8FA8002C */  lw         $t0, 0x2c($sp)
/* B5B3C 800B4F3C 8D0C0010 */  lw         $t4, 0x10($t0)
/* B5B40 800B4F40 258D0001 */  addiu      $t5, $t4, 1
/* B5B44 800B4F44 AD0D0010 */  sw         $t5, 0x10($t0)
.L800B4F48:
/* B5B48 800B4F48 8FB9003C */  lw         $t9, 0x3c($sp)
/* B5B4C 800B4F4C 3C011000 */  lui        $at, 0x1000
/* B5B50 800B4F50 03217024 */  and        $t6, $t9, $at
/* B5B54 800B4F54 11C0003D */  beqz       $t6, .L800B504C
/* B5B58 800B4F58 00000000 */   nop
/* B5B5C 800B4F5C 8FAB0030 */  lw         $t3, 0x30($sp)
/* B5B60 800B4F60 24010057 */  addiu      $at, $zero, 0x57
/* B5B64 800B4F64 8D780008 */  lw         $t8, 8($t3)
/* B5B68 800B4F68 13010006 */  beq        $t8, $at, .L800B4F84
/* B5B6C 800B4F6C 00000000 */   nop
/* B5B70 800B4F70 8FAF002C */  lw         $t7, 0x2c($sp)
/* B5B74 800B4F74 24090018 */  addiu      $t1, $zero, 0x18
/* B5B78 800B4F78 ADE90000 */  sw         $t1, ($t7)
/* B5B7C 800B4F7C 0C02D47F */  jal        func_800B51FC
/* B5B80 800B4F80 00000000 */   nop
.L800B4F84:
/* B5B84 800B4F84 8FAA0030 */  lw         $t2, 0x30($sp)
/* B5B88 800B4F88 24010002 */  addiu      $at, $zero, 2
/* B5B8C 800B4F8C 954C0004 */  lhu        $t4, 4($t2)
/* B5B90 800B4F90 15810013 */  bne        $t4, $at, .L800B4FE0
/* B5B94 800B4F94 00000000 */   nop
/* B5B98 800B4F98 954D0006 */  lhu        $t5, 6($t2)
/* B5B9C 800B4F9C 15A00010 */  bnez       $t5, .L800B4FE0
/* B5BA0 800B4FA0 00000000 */   nop
/* B5BA4 800B4FA4 8FB90030 */  lw         $t9, 0x30($sp)
/* B5BA8 800B4FA8 24080001 */  addiu      $t0, $zero, 1
/* B5BAC 800B4FAC A7280006 */  sh         $t0, 6($t9)
/* B5BB0 800B4FB0 8FAB0030 */  lw         $t3, 0x30($sp)
/* B5BB4 800B4FB4 240EFFFF */  addiu      $t6, $zero, -1
/* B5BB8 800B4FB8 AD6E0008 */  sw         $t6, 8($t3)
/* B5BBC 800B4FBC 8FB80030 */  lw         $t8, 0x30($sp)
/* B5BC0 800B4FC0 8F090040 */  lw         $t1, 0x40($t8)
/* B5BC4 800B4FC4 8F0F0048 */  lw         $t7, 0x48($t8)
/* B5BC8 800B4FC8 012F6023 */  subu       $t4, $t1, $t7
/* B5BCC 800B4FCC AF0C0040 */  sw         $t4, 0x40($t8)
/* B5BD0 800B4FD0 8FAD002C */  lw         $t5, 0x2c($sp)
/* B5BD4 800B4FD4 240A0016 */  addiu      $t2, $zero, 0x16
/* B5BD8 800B4FD8 10000010 */  b          .L800B501C
/* B5BDC 800B4FDC ADAA0000 */   sw        $t2, ($t5)
.L800B4FE0:
/* B5BE0 800B4FE0 24080002 */  addiu      $t0, $zero, 2
/* B5BE4 800B4FE4 3C19A460 */  lui        $t9, %hi(PI_STATUS)
/* B5BE8 800B4FE8 AF280010 */  sw         $t0, %lo(PI_STATUS)($t9)
/* B5BEC 800B4FEC 3C0E800F */  lui        $t6, %hi(__OSGlobalIntMask)
/* B5BF0 800B4FF0 8DCE9780 */  lw         $t6, %lo(__OSGlobalIntMask)($t6)
/* B5BF4 800B4FF4 3C010010 */  lui        $at, 0x10
/* B5BF8 800B4FF8 34210401 */  ori        $at, $at, 0x401
/* B5BFC 800B4FFC 01C15825 */  or         $t3, $t6, $at
/* B5C00 800B5000 3C01800F */  lui        $at, %hi(__OSGlobalIntMask)
/* B5C04 800B5004 AC2B9780 */  sw         $t3, %lo(__OSGlobalIntMask)($at)
/* B5C08 800B5008 8FAF0030 */  lw         $t7, 0x30($sp)
/* B5C0C 800B500C 24090002 */  addiu      $t1, $zero, 2
/* B5C10 800B5010 ADE90000 */  sw         $t1, ($t7)
/* B5C14 800B5014 8FAC002C */  lw         $t4, 0x2c($sp)
/* B5C18 800B5018 AD800000 */  sw         $zero, ($t4)
.L800B501C:
/* B5C1C 800B501C 8FB8002C */  lw         $t8, 0x2c($sp)
/* B5C20 800B5020 3C048018 */  lui        $a0, %hi(__osDiskHandle)
/* B5C24 800B5024 8C8457B0 */  lw         $a0, %lo(__osDiskHandle)($a0)
/* B5C28 800B5028 8F0A000C */  lw         $t2, 0xc($t8)
/* B5C2C 800B502C 8F070008 */  lw         $a3, 8($t8)
/* B5C30 800B5030 00002825 */  or         $a1, $zero, $zero
/* B5C34 800B5034 000A6880 */  sll        $t5, $t2, 2
/* B5C38 800B5038 AFAD0010 */  sw         $t5, 0x10($sp)
/* B5C3C 800B503C 0C02A038 */  jal        osEPiRawStartDma
/* B5C40 800B5040 3C060500 */   lui       $a2, 0x500
/* B5C44 800B5044 10000069 */  b          .L800B51EC
/* B5C48 800B5048 24020001 */   addiu     $v0, $zero, 1
.L800B504C:
/* B5C4C 800B504C 8FA80030 */  lw         $t0, 0x30($sp)
/* B5C50 800B5050 2401FFFF */  addiu      $at, $zero, -1
/* B5C54 800B5054 8D190008 */  lw         $t9, 8($t0)
/* B5C58 800B5058 17210026 */  bne        $t9, $at, .L800B50F4
/* B5C5C 800B505C 00000000 */   nop
/* B5C60 800B5060 950E0004 */  lhu        $t6, 4($t0)
/* B5C64 800B5064 24010002 */  addiu      $at, $zero, 2
/* B5C68 800B5068 15C10022 */  bne        $t6, $at, .L800B50F4
/* B5C6C 800B506C 00000000 */   nop
/* B5C70 800B5070 950B0006 */  lhu        $t3, 6($t0)
/* B5C74 800B5074 24010001 */  addiu      $at, $zero, 1
/* B5C78 800B5078 1561001E */  bne        $t3, $at, .L800B50F4
/* B5C7C 800B507C 00000000 */   nop
/* B5C80 800B5080 8FA90030 */  lw         $t1, 0x30($sp)
/* B5C84 800B5084 252F0018 */  addiu      $t7, $t1, 0x18
/* B5C88 800B5088 AFAF0024 */  sw         $t7, 0x24($sp)
/* B5C8C 800B508C 8FAC0024 */  lw         $t4, 0x24($sp)
/* B5C90 800B5090 8D980010 */  lw         $t8, 0x10($t4)
/* B5C94 800B5094 17000013 */  bnez       $t8, .L800B50E4
/* B5C98 800B5098 00000000 */   nop
/* B5C9C 800B509C 8FAA0024 */  lw         $t2, 0x24($sp)
/* B5CA0 800B50A0 8D4D0008 */  lw         $t5, 8($t2)
/* B5CA4 800B50A4 8DB90000 */  lw         $t9, ($t5)
/* B5CA8 800B50A8 8DAE0004 */  lw         $t6, 4($t5)
/* B5CAC 800B50AC 8DAB0008 */  lw         $t3, 8($t5)
/* B5CB0 800B50B0 8DAF000C */  lw         $t7, 0xc($t5)
/* B5CB4 800B50B4 032E4025 */  or         $t0, $t9, $t6
/* B5CB8 800B50B8 010B4825 */  or         $t1, $t0, $t3
/* B5CBC 800B50BC 01E96025 */  or         $t4, $t7, $t1
/* B5CC0 800B50C0 11800008 */  beqz       $t4, .L800B50E4
/* B5CC4 800B50C4 00000000 */   nop
/* B5CC8 800B50C8 8FAA0024 */  lw         $t2, 0x24($sp)
/* B5CCC 800B50CC 24180018 */  addiu      $t8, $zero, 0x18
/* B5CD0 800B50D0 AD580000 */  sw         $t8, ($t2)
/* B5CD4 800B50D4 0C02D47F */  jal        func_800B51FC
/* B5CD8 800B50D8 00000000 */   nop
/* B5CDC 800B50DC 10000043 */  b          .L800B51EC
/* B5CE0 800B50E0 24020001 */   addiu     $v0, $zero, 1
.L800B50E4:
/* B5CE4 800B50E4 8FB90024 */  lw         $t9, 0x24($sp)
/* B5CE8 800B50E8 AF200000 */  sw         $zero, ($t9)
/* B5CEC 800B50EC 0C02D4BD */  jal        func_800B52F4
/* B5CF0 800B50F0 00000000 */   nop
.L800B50F4:
/* B5CF4 800B50F4 8FAE0030 */  lw         $t6, 0x30($sp)
/* B5CF8 800B50F8 8DC80008 */  lw         $t0, 8($t6)
/* B5CFC 800B50FC 250B0001 */  addiu      $t3, $t0, 1
/* B5D00 800B5100 ADCB0008 */  sw         $t3, 8($t6)
/* B5D04 800B5104 8FAD003C */  lw         $t5, 0x3c($sp)
/* B5D08 800B5108 3C014000 */  lui        $at, 0x4000
/* B5D0C 800B510C 01A17824 */  and        $t7, $t5, $at
/* B5D10 800B5110 11E0001D */  beqz       $t7, .L800B5188
/* B5D14 800B5114 00000000 */   nop
/* B5D18 800B5118 8FA90030 */  lw         $t1, 0x30($sp)
/* B5D1C 800B511C 8D2C0008 */  lw         $t4, 8($t1)
/* B5D20 800B5120 29810055 */  slti       $at, $t4, 0x55
/* B5D24 800B5124 14200008 */  bnez       $at, .L800B5148
/* B5D28 800B5128 00000000 */   nop
/* B5D2C 800B512C 8FAA002C */  lw         $t2, 0x2c($sp)
/* B5D30 800B5130 24180018 */  addiu      $t8, $zero, 0x18
/* B5D34 800B5134 AD580000 */  sw         $t8, ($t2)
/* B5D38 800B5138 0C02D47F */  jal        func_800B51FC
/* B5D3C 800B513C 00000000 */   nop
/* B5D40 800B5140 1000002A */  b          .L800B51EC
/* B5D44 800B5144 24020001 */   addiu     $v0, $zero, 1
.L800B5148:
/* B5D48 800B5148 8FB9002C */  lw         $t9, 0x2c($sp)
/* B5D4C 800B514C 3C048018 */  lui        $a0, %hi(__osDiskHandle)
/* B5D50 800B5150 3C060500 */  lui        $a2, 0x500
/* B5D54 800B5154 8F28000C */  lw         $t0, 0xc($t9)
/* B5D58 800B5158 8F270004 */  lw         $a3, 4($t9)
/* B5D5C 800B515C 34C60400 */  ori        $a2, $a2, 0x400
/* B5D60 800B5160 8C8457B0 */  lw         $a0, %lo(__osDiskHandle)($a0)
/* B5D64 800B5164 00002825 */  or         $a1, $zero, $zero
/* B5D68 800B5168 0C02A038 */  jal        osEPiRawStartDma
/* B5D6C 800B516C AFA80010 */   sw        $t0, 0x10($sp)
/* B5D70 800B5170 8FAB002C */  lw         $t3, 0x2c($sp)
/* B5D74 800B5174 AD600000 */  sw         $zero, ($t3)
/* B5D78 800B5178 1000001C */  b          .L800B51EC
/* B5D7C 800B517C 24020001 */   addiu     $v0, $zero, 1
/* B5D80 800B5180 1000000D */  b          .L800B51B8
/* B5D84 800B5184 00000000 */   nop
.L800B5188:
/* B5D88 800B5188 8FAE0030 */  lw         $t6, 0x30($sp)
/* B5D8C 800B518C 8DCD0008 */  lw         $t5, 8($t6)
/* B5D90 800B5190 29A10055 */  slti       $at, $t5, 0x55
/* B5D94 800B5194 10200008 */  beqz       $at, .L800B51B8
/* B5D98 800B5198 00000000 */   nop
/* B5D9C 800B519C 8FA9002C */  lw         $t1, 0x2c($sp)
/* B5DA0 800B51A0 240F0018 */  addiu      $t7, $zero, 0x18
/* B5DA4 800B51A4 AD2F0000 */  sw         $t7, ($t1)
/* B5DA8 800B51A8 0C02D47F */  jal        func_800B51FC
/* B5DAC 800B51AC 00000000 */   nop
/* B5DB0 800B51B0 1000000E */  b          .L800B51EC
/* B5DB4 800B51B4 24020001 */   addiu     $v0, $zero, 1
.L800B51B8:
/* B5DB8 800B51B8 1000000C */  b          .L800B51EC
/* B5DBC 800B51BC 24020001 */   addiu     $v0, $zero, 1
/* B5DC0 800B51C0 10000008 */  b          .L800B51E4
/* B5DC4 800B51C4 00000000 */   nop
.L800B51C8:
/* B5DC8 800B51C8 8FB8002C */  lw         $t8, 0x2c($sp)
/* B5DCC 800B51CC 240C0004 */  addiu      $t4, $zero, 4
/* B5DD0 800B51D0 AF0C0000 */  sw         $t4, ($t8)
/* B5DD4 800B51D4 0C02D47F */  jal        func_800B51FC
/* B5DD8 800B51D8 00000000 */   nop
/* B5DDC 800B51DC 10000003 */  b          .L800B51EC
/* B5DE0 800B51E0 24020001 */   addiu     $v0, $zero, 1
.L800B51E4:
/* B5DE4 800B51E4 10000001 */  b          .L800B51EC
/* B5DE8 800B51E8 00000000 */   nop
.L800B51EC:
/* B5DEC 800B51EC 8FBF001C */  lw         $ra, 0x1c($sp)
/* B5DF0 800B51F0 27BD0040 */  addiu      $sp, $sp, 0x40
/* B5DF4 800B51F4 03E00008 */  jr         $ra
/* B5DF8 800B51F8 00000000 */   nop

glabel func_800B51FC
/* B5DFC 800B51FC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B5E00 800B5200 AFBF0014 */  sw         $ra, 0x14($sp)
/* B5E04 800B5204 3C0E8018 */  lui        $t6, %hi(__osDiskHandle)
/* B5E08 800B5208 8DCE57B0 */  lw         $t6, %lo(__osDiskHandle)($t6)
/* B5E0C 800B520C 25CF0014 */  addiu      $t7, $t6, 0x14
/* B5E10 800B5210 AFAF001C */  sw         $t7, 0x1c($sp)
/* B5E14 800B5214 3C18A460 */  lui        $t8, %hi(PI_STATUS)
/* B5E18 800B5218 8F190010 */  lw         $t9, %lo(PI_STATUS)($t8)
/* B5E1C 800B521C AFB90018 */  sw         $t9, 0x18($sp)
/* B5E20 800B5220 8FA80018 */  lw         $t0, 0x18($sp)
/* B5E24 800B5224 31090003 */  andi       $t1, $t0, 3
/* B5E28 800B5228 11200008 */  beqz       $t1, .L800B524C
/* B5E2C 800B522C 00000000 */   nop
.L800B5230:
/* B5E30 800B5230 3C0AA460 */  lui        $t2, %hi(PI_STATUS)
/* B5E34 800B5234 8D4B0010 */  lw         $t3, %lo(PI_STATUS)($t2)
/* B5E38 800B5238 AFAB0018 */  sw         $t3, 0x18($sp)
/* B5E3C 800B523C 8FAC0018 */  lw         $t4, 0x18($sp)
/* B5E40 800B5240 318D0003 */  andi       $t5, $t4, 3
/* B5E44 800B5244 15A0FFFA */  bnez       $t5, .L800B5230
/* B5E48 800B5248 00000000 */   nop
.L800B524C:
/* B5E4C 800B524C 8FAE001C */  lw         $t6, 0x1c($sp)
/* B5E50 800B5250 3C011000 */  lui        $at, 0x1000
/* B5E54 800B5254 3C19A500 */  lui        $t9, %hi(D_A5000510)
/* B5E58 800B5258 8DCF0010 */  lw         $t7, 0x10($t6)
/* B5E5C 800B525C 01E1C025 */  or         $t8, $t7, $at
/* B5E60 800B5260 AF380510 */  sw         $t8, %lo(D_A5000510)($t9)
/* B5E64 800B5264 3C08A460 */  lui        $t0, %hi(PI_STATUS)
/* B5E68 800B5268 8D090010 */  lw         $t1, %lo(PI_STATUS)($t0)
/* B5E6C 800B526C AFA90018 */  sw         $t1, 0x18($sp)
/* B5E70 800B5270 8FAA0018 */  lw         $t2, 0x18($sp)
/* B5E74 800B5274 314B0003 */  andi       $t3, $t2, 3
/* B5E78 800B5278 11600008 */  beqz       $t3, .L800B529C
/* B5E7C 800B527C 00000000 */   nop
.L800B5280:
/* B5E80 800B5280 3C0CA460 */  lui        $t4, %hi(PI_STATUS)
/* B5E84 800B5284 8D8D0010 */  lw         $t5, %lo(PI_STATUS)($t4)
/* B5E88 800B5288 AFAD0018 */  sw         $t5, 0x18($sp)
/* B5E8C 800B528C 8FAE0018 */  lw         $t6, 0x18($sp)
/* B5E90 800B5290 31CF0003 */  andi       $t7, $t6, 3
/* B5E94 800B5294 15E0FFFA */  bnez       $t7, .L800B5280
/* B5E98 800B5298 00000000 */   nop
.L800B529C:
/* B5E9C 800B529C 8FB8001C */  lw         $t8, 0x1c($sp)
/* B5EA0 800B52A0 3C08A500 */  lui        $t0, %hi(D_A5000510)
/* B5EA4 800B52A4 8F190010 */  lw         $t9, 0x10($t8)
/* B5EA8 800B52A8 AD190510 */  sw         $t9, %lo(D_A5000510)($t0)
/* B5EAC 800B52AC 0C02D4BD */  jal        func_800B52F4
/* B5EB0 800B52B0 00000000 */   nop
/* B5EB4 800B52B4 24090002 */  addiu      $t1, $zero, 2
/* B5EB8 800B52B8 3C0AA460 */  lui        $t2, %hi(PI_STATUS)
/* B5EBC 800B52BC AD490010 */  sw         $t1, %lo(PI_STATUS)($t2)
/* B5EC0 800B52C0 3C0B800F */  lui        $t3, %hi(__OSGlobalIntMask)
/* B5EC4 800B52C4 8D6B9780 */  lw         $t3, %lo(__OSGlobalIntMask)($t3)
/* B5EC8 800B52C8 3C010010 */  lui        $at, 0x10
/* B5ECC 800B52CC 34210401 */  ori        $at, $at, 0x401
/* B5ED0 800B52D0 01616025 */  or         $t4, $t3, $at
/* B5ED4 800B52D4 3C01800F */  lui        $at, %hi(__OSGlobalIntMask)
/* B5ED8 800B52D8 AC2C9780 */  sw         $t4, %lo(__OSGlobalIntMask)($at)
/* B5EDC 800B52DC 10000001 */  b          .L800B52E4
/* B5EE0 800B52E0 00000000 */   nop
.L800B52E4:
/* B5EE4 800B52E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* B5EE8 800B52E8 27BD0020 */  addiu      $sp, $sp, 0x20
/* B5EEC 800B52EC 03E00008 */  jr         $ra
/* B5EF0 800B52F0 00000000 */   nop

glabel func_800B52F4
/* B5EF4 800B52F4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B5EF8 800B52F8 AFBF001C */  sw         $ra, 0x1c($sp)
/* B5EFC 800B52FC AFB00018 */  sw         $s0, 0x18($sp)
/* B5F00 800B5300 3C0E8018 */  lui        $t6, %hi(__osEventStateTab)
/* B5F04 800B5304 25CE5530 */  addiu      $t6, $t6, %lo(__osEventStateTab)
/* B5F08 800B5308 25CF0040 */  addiu      $t7, $t6, 0x40
/* B5F0C 800B530C AFAF002C */  sw         $t7, 0x2c($sp)
/* B5F10 800B5310 8FB8002C */  lw         $t8, 0x2c($sp)
/* B5F14 800B5314 8F190000 */  lw         $t9, ($t8)
/* B5F18 800B5318 AFB90028 */  sw         $t9, 0x28($sp)
/* B5F1C 800B531C 8FA80028 */  lw         $t0, 0x28($sp)
/* B5F20 800B5320 11000006 */  beqz       $t0, .L800B533C
/* B5F24 800B5324 00000000 */   nop
/* B5F28 800B5328 8D090008 */  lw         $t1, 8($t0)
/* B5F2C 800B532C 8D0A0010 */  lw         $t2, 0x10($t0)
/* B5F30 800B5330 012A082A */  slt        $at, $t1, $t2
/* B5F34 800B5334 14200003 */  bnez       $at, .L800B5344
/* B5F38 800B5338 00000000 */   nop
.L800B533C:
/* B5F3C 800B533C 1000002C */  b          .L800B53F0
/* B5F40 800B5340 00000000 */   nop
.L800B5344:
/* B5F44 800B5344 8FAB0028 */  lw         $t3, 0x28($sp)
/* B5F48 800B5348 8D6C000C */  lw         $t4, 0xc($t3)
/* B5F4C 800B534C 8D6D0008 */  lw         $t5, 8($t3)
/* B5F50 800B5350 8D6F0010 */  lw         $t7, 0x10($t3)
/* B5F54 800B5354 018D7021 */  addu       $t6, $t4, $t5
/* B5F58 800B5358 01CF001A */  div        $zero, $t6, $t7
/* B5F5C 800B535C 0000C010 */  mfhi       $t8
/* B5F60 800B5360 AFB80024 */  sw         $t8, 0x24($sp)
/* B5F64 800B5364 15E00002 */  bnez       $t7, .L800B5370
/* B5F68 800B5368 00000000 */   nop
/* B5F6C 800B536C 0007000D */  break      7
.L800B5370:
/* B5F70 800B5370 2401FFFF */   addiu     $at, $zero, -1
/* B5F74 800B5374 15E10004 */  bne        $t7, $at, .L800B5388
/* B5F78 800B5378 3C018000 */   lui       $at, 0x8000
/* B5F7C 800B537C 15C10002 */  bne        $t6, $at, .L800B5388
/* B5F80 800B5380 00000000 */   nop
/* B5F84 800B5384 0006000D */  break      6
.L800B5388:
/* B5F88 800B5388 8FA90028 */   lw        $t1, 0x28($sp)
/* B5F8C 800B538C 8FB9002C */  lw         $t9, 0x2c($sp)
/* B5F90 800B5390 8FAC0024 */  lw         $t4, 0x24($sp)
/* B5F94 800B5394 8D2A0014 */  lw         $t2, 0x14($t1)
/* B5F98 800B5398 8F280004 */  lw         $t0, 4($t9)
/* B5F9C 800B539C 000C6880 */  sll        $t5, $t4, 2
/* B5FA0 800B53A0 014D5821 */  addu       $t3, $t2, $t5
/* B5FA4 800B53A4 AD680000 */  sw         $t0, ($t3)
/* B5FA8 800B53A8 8FAE0028 */  lw         $t6, 0x28($sp)
/* B5FAC 800B53AC 8DCF0008 */  lw         $t7, 8($t6)
/* B5FB0 800B53B0 25F80001 */  addiu      $t8, $t7, 1
/* B5FB4 800B53B4 ADD80008 */  sw         $t8, 8($t6)
/* B5FB8 800B53B8 8FB90028 */  lw         $t9, 0x28($sp)
/* B5FBC 800B53BC 8F290000 */  lw         $t1, ($t9)
/* B5FC0 800B53C0 8D2C0000 */  lw         $t4, ($t1)
/* B5FC4 800B53C4 11800008 */  beqz       $t4, .L800B53E8
/* B5FC8 800B53C8 00000000 */   nop
/* B5FCC 800B53CC 0C029AFA */  jal        __osPopThread
/* B5FD0 800B53D0 8FA40028 */   lw        $a0, 0x28($sp)
/* B5FD4 800B53D4 00408025 */  or         $s0, $v0, $zero
/* B5FD8 800B53D8 3C04800F */  lui        $a0, %hi(__osRunQueue)
/* B5FDC 800B53DC 2484A608 */  addiu      $a0, $a0, %lo(__osRunQueue)
/* B5FE0 800B53E0 0C029AE7 */  jal        __osEnqueueThread
/* B5FE4 800B53E4 02002825 */   or        $a1, $s0, $zero
.L800B53E8:
/* B5FE8 800B53E8 10000001 */  b          .L800B53F0
/* B5FEC 800B53EC 00000000 */   nop
.L800B53F0:
/* B5FF0 800B53F0 8FBF001C */  lw         $ra, 0x1c($sp)
/* B5FF4 800B53F4 8FB00018 */  lw         $s0, 0x18($sp)
/* B5FF8 800B53F8 27BD0030 */  addiu      $sp, $sp, 0x30
/* B5FFC 800B53FC 03E00008 */  jr         $ra
/* B6000 800B5400 00000000 */   nop
/* B6004 800B5404 00000000 */  nop
/* B6008 800B5408 00000000 */  nop
/* B600C 800B540C 00000000 */  nop
