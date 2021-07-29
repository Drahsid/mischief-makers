.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osError
/* A6AD0 800A5ED0 3C08800F */  lui        $t0, %hi(__osCommonHandler)
/* A6AD4 800A5ED4 8D08AA84 */  lw         $t0, %lo(__osCommonHandler)($t0)
/* A6AD8 800A5ED8 11000003 */  beqz       $t0, .L800A5EE8
/* A6ADC 800A5EDC 00000000 */   nop
/* A6AE0 800A5EE0 01000008 */  jr         $t0
/* A6AE4 800A5EE4 00000000 */   nop
.L800A5EE8:
/* A6AE8 800A5EE8 03E00008 */  jr         $ra
/* A6AEC 800A5EEC 00000000 */   nop

glabel func_800A5EF0
/* A6AF0 800A5EF0 3C1A800A */  lui        $k0, %hi(__osException)
/* A6AF4 800A5EF4 275A5FC8 */  addiu      $k0, $k0, %lo(__osException)
/* A6AF8 800A5EF8 03400008 */  jr         $k0
/* A6AFC 800A5EFC 00000000 */   nop

glabel func_800A5F00
/* A6B00 800A5F00 AFBAFFF0 */  sw         $k0, -0x10($sp)
/* A6B04 800A5F04 10000003 */  b          .L800A5F14
/* A6B08 800A5F08 00000000 */   nop
/* A6B0C 800A5F0C 00000000 */  nop
/* A6B10 800A5F10 00000000 */  nop
.L800A5F14:
/* A6B14 800A5F14 3C1A800A */  lui        $k0, %hi(__ptException)
/* A6B18 800A5F18 275A5F24 */  addiu      $k0, $k0, %lo(__ptException)
/* A6B1C 800A5F1C 03400008 */  jr         $k0
/* A6B20 800A5F20 00000000 */   nop

glabel func_800A5F24
/* A6B24 800A5F24 401A6800 */  mfc0       $k0, $13
/* A6B28 800A5F28 335A007C */  andi       $k0, $k0, 0x7c
/* A6B2C 800A5F2C 17400008 */  bnez       $k0, .L800A5F50
/* A6B30 800A5F30 001AD082 */   srl       $k0, $k0, 2
/* A6B34 800A5F34 401A6800 */  mfc0       $k0, $13
/* A6B38 800A5F38 00000000 */  nop
/* A6B3C 800A5F3C 335A4000 */  andi       $k0, $k0, 0x4000
/* A6B40 800A5F40 13400021 */  beqz       $k0, .L800A5FC8
/* A6B44 800A5F44 00000000 */   nop
/* A6B48 800A5F48 080297DB */  j          .L800A5F6C
/* A6B4C 800A5F4C 00000000 */   nop
.L800A5F50:
/* A6B50 800A5F50 AFBBFFF8 */  sw         $k1, -8($sp)
/* A6B54 800A5F54 3C1B800F */  lui        $k1, %hi(__osCauseTable_pt)
/* A6B58 800A5F58 277BDAC4 */  addiu      $k1, $k1, %lo(__osCauseTable_pt)
/* A6B5C 800A5F5C 037AD820 */  add        $k1, $k1, $k0
/* A6B60 800A5F60 937A0000 */  lbu        $k0, ($k1)
/* A6B64 800A5F64 13400018 */  beqz       $k0, .L800A5FC8
/* A6B68 800A5F68 00000000 */   nop
.L800A5F6C:
/* A6B6C 800A5F6C 3C1AA460 */  lui        $k0, %hi(PI_STATUS)
/* A6B70 800A5F70 8F5A0010 */  lw         $k0, %lo(PI_STATUS)($k0)
/* A6B74 800A5F74 00000000 */  nop
/* A6B78 800A5F78 335A0003 */  andi       $k0, $k0, 3
/* A6B7C 800A5F7C 1740FFFB */  bnez       $k0, .L800A5F6C
/* A6B80 800A5F80 00000000 */   nop
/* A6B84 800A5F84 3C1ABFF1 */  lui        $k0, %hi(D_BFF08004)
/* A6B88 800A5F88 8F5A8004 */  lw         $k0, %lo(D_BFF08004)($k0)
/* A6B8C 800A5F8C 00000000 */  nop
/* A6B90 800A5F90 335A0008 */  andi       $k0, $k0, 8
/* A6B94 800A5F94 17400005 */  bnez       $k0, .L800A5FAC
/* A6B98 800A5F98 3C1ABFF0 */   lui       $k0, 0xbff0
/* A6B9C 800A5F9C 375A0014 */  ori        $k0, $k0, 0x14
/* A6BA0 800A5FA0 8FBBFFF8 */  lw         $k1, -8($sp)
/* A6BA4 800A5FA4 03400008 */  jr         $k0
/* A6BA8 800A5FA8 27BDFFA0 */   addiu     $sp, $sp, -0x60
.L800A5FAC:
/* A6BAC 800A5FAC 401A7000 */  mfc0       $k0, $14
/* A6BB0 800A5FB0 3C1BBFF1 */  lui        $k1, %hi(D_BFF08000)
/* A6BB4 800A5FB4 AF7A8000 */  sw         $k0, %lo(D_BFF08000)($k1)
/* A6BB8 800A5FB8 8FBBFFF8 */  lw         $k1, -8($sp)
/* A6BBC 800A5FBC 8FBAFFF0 */  lw         $k0, -0x10($sp)
/* A6BC0 800A5FC0 42000018 */  eret
/* A6BC4 800A5FC4 00000000 */  nop
.L800A5FC8:
/* A6BC8 800A5FC8 3C1A8019 */  lui        $k0, %hi(D_8018A550)
/* A6BCC 800A5FCC 275AA550 */  addiu      $k0, $k0, %lo(D_8018A550)
/* A6BD0 800A5FD0 FF410020 */  sd         $at, 0x20($k0)
/* A6BD4 800A5FD4 401B6000 */  mfc0       $k1, $12
/* A6BD8 800A5FD8 AF5B0118 */  sw         $k1, 0x118($k0)
/* A6BDC 800A5FDC 2401FFFC */  addiu      $at, $zero, -4
/* A6BE0 800A5FE0 0361D824 */  and        $k1, $k1, $at
/* A6BE4 800A5FE4 409B6000 */  mtc0       $k1, $12
/* A6BE8 800A5FE8 FF480058 */  sd         $t0, 0x58($k0)
/* A6BEC 800A5FEC FF490060 */  sd         $t1, 0x60($k0)
/* A6BF0 800A5FF0 FF4A0068 */  sd         $t2, 0x68($k0)
/* A6BF4 800A5FF4 AF400018 */  sw         $zero, 0x18($k0)
/* A6BF8 800A5FF8 40086800 */  mfc0       $t0, $13
/* A6BFC 800A5FFC 3C0A8018 */  lui        $t2, %hi(__kmc_pt_mode)
/* A6C00 800A6000 8D4A26C0 */  lw         $t2, %lo(__kmc_pt_mode)($t2)
/* A6C04 800A6004 154000EB */  bnez       $t2, .L800A63B4
/* A6C08 800A6008 00000000 */   nop
/* A6C0C 800A600C 3109007C */  andi       $t1, $t0, 0x7c
/* A6C10 800A6010 240A0000 */  addiu      $t2, $zero, 0
/* A6C14 800A6014 152A00E7 */  bne        $t1, $t2, .L800A63B4
/* A6C18 800A6018 00000000 */   nop
/* A6C1C 800A601C 03684824 */  and        $t1, $k1, $t0
/* A6C20 800A6020 312A4000 */  andi       $t2, $t1, 0x4000
/* A6C24 800A6024 114000AF */  beqz       $t2, .L800A62E4
/* A6C28 800A6028 00000000 */   nop
/* A6C2C 800A602C 3C09C000 */  lui        $t1, %hi(D_C0000008)
/* A6C30 800A6030 25290008 */  addiu      $t1, $t1, %lo(D_C0000008)
/* A6C34 800A6034 AD200000 */  sw         $zero, ($t1)
.L800A6038:
/* A6C38 800A6038 40086800 */  mfc0       $t0, $13
/* A6C3C 800A603C 31084000 */  andi       $t0, $t0, 0x4000
/* A6C40 800A6040 1408FFFD */  bne        $zero, $t0, .L800A6038
/* A6C44 800A6044 00000000 */   nop
/* A6C48 800A6048 3C0AC000 */  lui        $t2, %hi(D_C0000000)
/* A6C4C 800A604C 254A0000 */  addiu      $t2, $t2, %lo(D_C0000000)
/* A6C50 800A6050 8D480000 */  lw         $t0, ($t2)
/* A6C54 800A6054 00084E82 */  srl        $t1, $t0, 0x1a
/* A6C58 800A6058 3129003F */  andi       $t1, $t1, 0x3f
/* A6C5C 800A605C 240A0010 */  addiu      $t2, $zero, 0x10
/* A6C60 800A6060 112A0049 */  beq        $t1, $t2, .L800A6188
/* A6C64 800A6064 00000000 */   nop
/* A6C68 800A6068 240A000E */  addiu      $t2, $zero, 0xe
/* A6C6C 800A606C 112A006F */  beq        $t1, $t2, .L800A622C
/* A6C70 800A6070 00000000 */   nop
/* A6C74 800A6074 240A0014 */  addiu      $t2, $zero, 0x14
/* A6C78 800A6078 112A0024 */  beq        $t1, $t2, .L800A610C
/* A6C7C 800A607C 00000000 */   nop
/* A6C80 800A6080 240A000F */  addiu      $t2, $zero, 0xf
/* A6C84 800A6084 112A0025 */  beq        $t1, $t2, .L800A611C
/* A6C88 800A6088 00000000 */   nop
/* A6C8C 800A608C 240A0011 */  addiu      $t2, $zero, 0x11
/* A6C90 800A6090 112A0029 */  beq        $t1, $t2, .L800A6138
/* A6C94 800A6094 00000000 */   nop
/* A6C98 800A6098 240A000D */  addiu      $t2, $zero, 0xd
/* A6C9C 800A609C 112A002B */  beq        $t1, $t2, .L800A614C
/* A6CA0 800A60A0 00000000 */   nop
/* A6CA4 800A60A4 240A0012 */  addiu      $t2, $zero, 0x12
/* A6CA8 800A60A8 112A002D */  beq        $t1, $t2, .L800A6160
/* A6CAC 800A60AC 00000000 */   nop
/* A6CB0 800A60B0 240A0013 */  addiu      $t2, $zero, 0x13
/* A6CB4 800A60B4 112A002F */  beq        $t1, $t2, .L800A6174
/* A6CB8 800A60B8 00000000 */   nop
/* A6CBC 800A60BC 240A0015 */  addiu      $t2, $zero, 0x15
/* A6CC0 800A60C0 112A0003 */  beq        $t1, $t2, .L800A60D0
/* A6CC4 800A60C4 00000000 */   nop
/* A6CC8 800A60C8 100000AF */  b          .L800A6388
/* A6CCC 800A60CC 00000000 */   nop
.L800A60D0:
/* A6CD0 800A60D0 240A0001 */  addiu      $t2, $zero, 1
/* A6CD4 800A60D4 00084C02 */  srl        $t1, $t0, 0x10
/* A6CD8 800A60D8 312900FF */  andi       $t1, $t1, 0xff
/* A6CDC 800A60DC 112A0006 */  beq        $t1, $t2, .L800A60F8
/* A6CE0 800A60E0 00000000 */   nop
/* A6CE4 800A60E4 240A00A8 */  addiu      $t2, $zero, 0xa8
/* A6CE8 800A60E8 3C01800F */  lui        $at, %hi(D_800EA5F8)
/* A6CEC 800A60EC AC2AA5F8 */  sw         $t2, %lo(D_800EA5F8)($at)
/* A6CF0 800A60F0 100000B0 */  b          .L800A63B4
/* A6CF4 800A60F4 00000000 */   nop
.L800A60F8:
/* A6CF8 800A60F8 240A00B0 */  addiu      $t2, $zero, 0xb0
/* A6CFC 800A60FC 3C01800F */  lui        $at, %hi(D_800EA5F8)
/* A6D00 800A6100 AC2AA5F8 */  sw         $t2, %lo(D_800EA5F8)($at)
/* A6D04 800A6104 100000AB */  b          .L800A63B4
/* A6D08 800A6108 00000000 */   nop
.L800A610C:
/* A6D0C 800A610C 3C01800F */  lui        $at, %hi(D_800EA5FC)
/* A6D10 800A6110 AC28A5FC */  sw         $t0, %lo(D_800EA5FC)($at)
/* A6D14 800A6114 100000A7 */  b          .L800A63B4
/* A6D18 800A6118 00000000 */   nop
.L800A611C:
/* A6D1C 800A611C 3C0A00FF */  lui        $t2, 0xff
/* A6D20 800A6120 354AFFFF */  ori        $t2, $t2, 0xffff
/* A6D24 800A6124 010A4824 */  and        $t1, $t0, $t2
/* A6D28 800A6128 3C01800F */  lui        $at, %hi(D_800EA5F4)
/* A6D2C 800A612C AC29A5F4 */  sw         $t1, %lo(D_800EA5F4)($at)
/* A6D30 800A6130 10000095 */  b          .L800A6388
/* A6D34 800A6134 00000000 */   nop
.L800A6138:
/* A6D38 800A6138 240A0088 */  addiu      $t2, $zero, 0x88
/* A6D3C 800A613C 3C01800F */  lui        $at, %hi(D_800EA5F8)
/* A6D40 800A6140 AC2AA5F8 */  sw         $t2, %lo(D_800EA5F8)($at)
/* A6D44 800A6144 1000009B */  b          .L800A63B4
/* A6D48 800A6148 00000000 */   nop
.L800A614C:
/* A6D4C 800A614C 240A0080 */  addiu      $t2, $zero, 0x80
/* A6D50 800A6150 3C01800F */  lui        $at, %hi(D_800EA5F8)
/* A6D54 800A6154 AC2AA5F8 */  sw         $t2, %lo(D_800EA5F8)($at)
/* A6D58 800A6158 10000096 */  b          .L800A63B4
/* A6D5C 800A615C 00000000 */   nop
.L800A6160:
/* A6D60 800A6160 240A0090 */  addiu      $t2, $zero, 0x90
/* A6D64 800A6164 3C01800F */  lui        $at, %hi(D_800EA5F8)
/* A6D68 800A6168 AC2AA5F8 */  sw         $t2, %lo(D_800EA5F8)($at)
/* A6D6C 800A616C 10000091 */  b          .L800A63B4
/* A6D70 800A6170 00000000 */   nop
.L800A6174:
/* A6D74 800A6174 240A0098 */  addiu      $t2, $zero, 0x98
/* A6D78 800A6178 3C01800F */  lui        $at, %hi(D_800EA5F8)
/* A6D7C 800A617C AC2AA5F8 */  sw         $t2, %lo(D_800EA5F8)($at)
/* A6D80 800A6180 1000008C */  b          .L800A63B4
/* A6D84 800A6184 00000000 */   nop
.L800A6188:
/* A6D88 800A6188 00084E02 */  srl        $t1, $t0, 0x18
/* A6D8C 800A618C 31290003 */  andi       $t1, $t1, 3
/* A6D90 800A6190 1009007D */  beq        $zero, $t1, .L800A6388
/* A6D94 800A6194 00000000 */   nop
/* A6D98 800A6198 3C0A8019 */  lui        $t2, %hi(__osRdb_Read_Data_Ct)
/* A6D9C 800A619C 8D4AA730 */  lw         $t2, %lo(__osRdb_Read_Data_Ct)($t2)
/* A6DA0 800A61A0 01495023 */  subu       $t2, $t2, $t1
/* A6DA4 800A61A4 3C018019 */  lui        $at, %hi(__osRdb_Read_Data_Ct)
/* A6DA8 800A61A8 AC2AA730 */  sw         $t2, %lo(__osRdb_Read_Data_Ct)($at)
/* A6DAC 800A61AC FF4B0070 */  sd         $t3, 0x70($k0)
/* A6DB0 800A61B0 3C0B8019 */  lui        $t3, %hi(__osRdb_Read_Data_Buf)
/* A6DB4 800A61B4 8D6BA72C */  lw         $t3, %lo(__osRdb_Read_Data_Buf)($t3)
/* A6DB8 800A61B8 00085402 */  srl        $t2, $t0, 0x10
/* A6DBC 800A61BC 314A00FF */  andi       $t2, $t2, 0xff
/* A6DC0 800A61C0 A16A0000 */  sb         $t2, ($t3)
/* A6DC4 800A61C4 216B0001 */  addi       $t3, $t3, 1
/* A6DC8 800A61C8 2129FFFF */  addi       $t1, $t1, -1
/* A6DCC 800A61CC 1009000B */  beq        $zero, $t1, .L800A61FC
/* A6DD0 800A61D0 00000000 */   nop
/* A6DD4 800A61D4 00085202 */  srl        $t2, $t0, 8
/* A6DD8 800A61D8 314A00FF */  andi       $t2, $t2, 0xff
/* A6DDC 800A61DC A16A0000 */  sb         $t2, ($t3)
/* A6DE0 800A61E0 216B0001 */  addi       $t3, $t3, 1
/* A6DE4 800A61E4 2129FFFF */  addi       $t1, $t1, -1
/* A6DE8 800A61E8 10090004 */  beq        $zero, $t1, .L800A61FC
/* A6DEC 800A61EC 00000000 */   nop
/* A6DF0 800A61F0 310800FF */  andi       $t0, $t0, 0xff
/* A6DF4 800A61F4 A1680000 */  sb         $t0, ($t3)
/* A6DF8 800A61F8 216B0001 */  addi       $t3, $t3, 1
.L800A61FC:
/* A6DFC 800A61FC 3C018019 */  lui        $at, %hi(__osRdb_Read_Data_Buf)
/* A6E00 800A6200 AC2BA72C */  sw         $t3, %lo(__osRdb_Read_Data_Buf)($at)
/* A6E04 800A6204 DF4B0070 */  ld         $t3, 0x70($k0)
/* A6E08 800A6208 3C0A8019 */  lui        $t2, %hi(__osRdb_Read_Data_Ct)
/* A6E0C 800A620C 8D4AA730 */  lw         $t2, %lo(__osRdb_Read_Data_Ct)($t2)
/* A6E10 800A6210 140A005D */  bne        $zero, $t2, .L800A6388
/* A6E14 800A6214 00000000 */   nop
/* A6E18 800A6218 240A0078 */  addiu      $t2, $zero, 0x78
/* A6E1C 800A621C 3C01800F */  lui        $at, %hi(D_800EA5F8)
/* A6E20 800A6220 AC2AA5F8 */  sw         $t2, %lo(D_800EA5F8)($at)
/* A6E24 800A6224 10000063 */  b          .L800A63B4
/* A6E28 800A6228 00000000 */   nop
.L800A622C:
/* A6E2C 800A622C 00084E02 */  srl        $t1, $t0, 0x18
/* A6E30 800A6230 31290003 */  andi       $t1, $t1, 3
/* A6E34 800A6234 10090054 */  beq        $zero, $t1, .L800A6388
/* A6E38 800A6238 00000000 */   nop
/* A6E3C 800A623C 3C0A800F */  lui        $t2, %hi(D_800EA5F4)
/* A6E40 800A6240 8D4AA5F4 */  lw         $t2, %lo(D_800EA5F4)($t2)
/* A6E44 800A6244 01495023 */  subu       $t2, $t2, $t1
/* A6E48 800A6248 3C01800F */  lui        $at, %hi(D_800EA5F4)
/* A6E4C 800A624C AC2AA5F4 */  sw         $t2, %lo(D_800EA5F4)($at)
/* A6E50 800A6250 FF4B0070 */  sd         $t3, 0x70($k0)
/* A6E54 800A6254 3C0B8019 */  lui        $t3, %hi(__osRdb_DbgRead_Buf)
/* A6E58 800A6258 8D6B9A8C */  lw         $t3, %lo(__osRdb_DbgRead_Buf)($t3)
/* A6E5C 800A625C 140B0004 */  bne        $zero, $t3, .L800A6270
/* A6E60 800A6260 00000000 */   nop
/* A6E64 800A6264 DF4B0070 */  ld         $t3, 0x70($k0)
/* A6E68 800A6268 10000047 */  b          .L800A6388
/* A6E6C 800A626C 00000000 */   nop
.L800A6270:
/* A6E70 800A6270 00085402 */  srl        $t2, $t0, 0x10
/* A6E74 800A6274 314A00FF */  andi       $t2, $t2, 0xff
/* A6E78 800A6278 A16A0000 */  sb         $t2, ($t3)
/* A6E7C 800A627C 216B0001 */  addi       $t3, $t3, 1
/* A6E80 800A6280 2129FFFF */  addi       $t1, $t1, -1
/* A6E84 800A6284 1009000B */  beq        $zero, $t1, .L800A62B4
/* A6E88 800A6288 00000000 */   nop
/* A6E8C 800A628C 00085202 */  srl        $t2, $t0, 8
/* A6E90 800A6290 314A00FF */  andi       $t2, $t2, 0xff
/* A6E94 800A6294 A16A0000 */  sb         $t2, ($t3)
/* A6E98 800A6298 216B0001 */  addi       $t3, $t3, 1
/* A6E9C 800A629C 2129FFFF */  addi       $t1, $t1, -1
/* A6EA0 800A62A0 10090004 */  beq        $zero, $t1, .L800A62B4
/* A6EA4 800A62A4 00000000 */   nop
/* A6EA8 800A62A8 310800FF */  andi       $t0, $t0, 0xff
/* A6EAC 800A62AC A1680000 */  sb         $t0, ($t3)
/* A6EB0 800A62B0 216B0001 */  addi       $t3, $t3, 1
.L800A62B4:
/* A6EB4 800A62B4 3C018019 */  lui        $at, %hi(__osRdb_DbgRead_Buf)
/* A6EB8 800A62B8 AC2B9A8C */  sw         $t3, %lo(__osRdb_DbgRead_Buf)($at)
/* A6EBC 800A62BC DF4B0070 */  ld         $t3, 0x70($k0)
/* A6EC0 800A62C0 3C0A800F */  lui        $t2, %hi(D_800EA5F4)
/* A6EC4 800A62C4 8D4AA5F4 */  lw         $t2, %lo(D_800EA5F4)($t2)
/* A6EC8 800A62C8 140A002F */  bne        $zero, $t2, .L800A6388
/* A6ECC 800A62CC 00000000 */   nop
/* A6ED0 800A62D0 240A00A0 */  addiu      $t2, $zero, 0xa0
/* A6ED4 800A62D4 3C01800F */  lui        $at, %hi(D_800EA5F8)
/* A6ED8 800A62D8 AC2AA5F8 */  sw         $t2, %lo(D_800EA5F8)($at)
/* A6EDC 800A62DC 10000035 */  b          .L800A63B4
/* A6EE0 800A62E0 00000000 */   nop
.L800A62E4:
/* A6EE4 800A62E4 312A2000 */  andi       $t2, $t1, 0x2000
/* A6EE8 800A62E8 11400032 */  beqz       $t2, .L800A63B4
/* A6EEC 800A62EC 00000000 */   nop
/* A6EF0 800A62F0 3C09C000 */  lui        $t1, %hi(D_C000000C)
/* A6EF4 800A62F4 2529000C */  addiu      $t1, $t1, %lo(D_C000000C)
/* A6EF8 800A62F8 AD200000 */  sw         $zero, ($t1)
/* A6EFC 800A62FC 3C0A8019 */  lui        $t2, %hi(__osRdb_IP6_Ct)
/* A6F00 800A6300 8D4AA748 */  lw         $t2, %lo(__osRdb_IP6_Ct)($t2)
/* A6F04 800A6304 15400006 */  bnez       $t2, .L800A6320
/* A6F08 800A6308 00000000 */   nop
/* A6F0C 800A630C 240A0001 */  addiu      $t2, $zero, 1
/* A6F10 800A6310 3C01800F */  lui        $at, %hi(__osRdb_IP6_Empty)
/* A6F14 800A6314 AC2AA640 */  sw         $t2, %lo(__osRdb_IP6_Empty)($at)
/* A6F18 800A6318 1000001B */  b          .L800A6388
/* A6F1C 800A631C 00000000 */   nop
.L800A6320:
/* A6F20 800A6320 214AFFFF */  addi       $t2, $t2, -1
/* A6F24 800A6324 3C018019 */  lui        $at, %hi(__osRdb_IP6_Ct)
/* A6F28 800A6328 AC2AA748 */  sw         $t2, %lo(__osRdb_IP6_Ct)($at)
/* A6F2C 800A632C 3C088019 */  lui        $t0, %hi(__osRdb_IP6_Data)
/* A6F30 800A6330 8D08A740 */  lw         $t0, %lo(__osRdb_IP6_Data)($t0)
/* A6F34 800A6334 3C098019 */  lui        $t1, %hi(__osRdb_IP6_CurSend)
/* A6F38 800A6338 8D29A750 */  lw         $t1, %lo(__osRdb_IP6_CurSend)($t1)
/* A6F3C 800A633C 00095080 */  sll        $t2, $t1, 2
/* A6F40 800A6340 01484020 */  add        $t0, $t2, $t0
/* A6F44 800A6344 8D0A0000 */  lw         $t2, ($t0)
/* A6F48 800A6348 21290001 */  addi       $t1, $t1, 1
/* A6F4C 800A634C 3C088019 */  lui        $t0, %hi(__osRdb_IP6_Size)
/* A6F50 800A6350 8D08A744 */  lw         $t0, %lo(__osRdb_IP6_Size)($t0)
/* A6F54 800A6354 01094022 */  sub        $t0, $t0, $t1
/* A6F58 800A6358 1D000002 */  bgtz       $t0, .L800A6364
/* A6F5C 800A635C 00000000 */   nop
/* A6F60 800A6360 24090000 */  addiu      $t1, $zero, 0
.L800A6364:
/* A6F64 800A6364 3C018019 */  lui        $at, %hi(__osRdb_IP6_CurSend)
/* A6F68 800A6368 AC29A750 */  sw         $t1, %lo(__osRdb_IP6_CurSend)($at)
.L800A636C:
/* A6F6C 800A636C 40086800 */  mfc0       $t0, $13
/* A6F70 800A6370 31082000 */  andi       $t0, $t0, 0x2000
/* A6F74 800A6374 1408FFFD */  bne        $zero, $t0, .L800A636C
/* A6F78 800A6378 00000000 */   nop
/* A6F7C 800A637C 3C08C000 */  lui        $t0, %hi(D_C0000000)
/* A6F80 800A6380 25080000 */  addiu      $t0, $t0, %lo(D_C0000000)
/* A6F84 800A6384 AD0A0000 */  sw         $t2, ($t0)
.L800A6388:
/* A6F88 800A6388 DF480058 */  ld         $t0, 0x58($k0)
/* A6F8C 800A638C DF490060 */  ld         $t1, 0x60($k0)
/* A6F90 800A6390 DF4A0068 */  ld         $t2, 0x68($k0)
/* A6F94 800A6394 DF410020 */  ld         $at, 0x20($k0)
/* A6F98 800A6398 8F5B0118 */  lw         $k1, 0x118($k0)
/* A6F9C 800A639C 409B6000 */  mtc0       $k1, $12
/* A6FA0 800A63A0 00000000 */  nop
/* A6FA4 800A63A4 00000000 */  nop
/* A6FA8 800A63A8 00000000 */  nop
/* A6FAC 800A63AC 00000000 */  nop
/* A6FB0 800A63B0 42000018 */  eret
.L800A63B4:
/* A6FB4 800A63B4 03404025 */  or         $t0, $k0, $zero
/* A6FB8 800A63B8 3C1A800F */  lui        $k0, %hi(__osRunningThread)
/* A6FBC 800A63BC 8F5AA610 */  lw         $k0, %lo(__osRunningThread)($k0)
/* A6FC0 800A63C0 DD090020 */  ld         $t1, 0x20($t0)
/* A6FC4 800A63C4 FF490020 */  sd         $t1, 0x20($k0)
/* A6FC8 800A63C8 DD090118 */  ld         $t1, 0x118($t0)
/* A6FCC 800A63CC FF490118 */  sd         $t1, 0x118($k0)
/* A6FD0 800A63D0 DD090058 */  ld         $t1, 0x58($t0)
/* A6FD4 800A63D4 FF490058 */  sd         $t1, 0x58($k0)
/* A6FD8 800A63D8 DD090060 */  ld         $t1, 0x60($t0)
/* A6FDC 800A63DC FF490060 */  sd         $t1, 0x60($k0)
/* A6FE0 800A63E0 DD090068 */  ld         $t1, 0x68($t0)
/* A6FE4 800A63E4 FF490068 */  sd         $t1, 0x68($k0)
/* A6FE8 800A63E8 FF420028 */  sd         $v0, 0x28($k0)
/* A6FEC 800A63EC FF430030 */  sd         $v1, 0x30($k0)
/* A6FF0 800A63F0 FF440038 */  sd         $a0, 0x38($k0)
/* A6FF4 800A63F4 FF450040 */  sd         $a1, 0x40($k0)
/* A6FF8 800A63F8 FF460048 */  sd         $a2, 0x48($k0)
/* A6FFC 800A63FC FF470050 */  sd         $a3, 0x50($k0)
/* A7000 800A6400 FF4B0070 */  sd         $t3, 0x70($k0)
/* A7004 800A6404 FF4C0078 */  sd         $t4, 0x78($k0)
/* A7008 800A6408 FF4D0080 */  sd         $t5, 0x80($k0)
/* A700C 800A640C FF4E0088 */  sd         $t6, 0x88($k0)
/* A7010 800A6410 FF4F0090 */  sd         $t7, 0x90($k0)
/* A7014 800A6414 FF500098 */  sd         $s0, 0x98($k0)
/* A7018 800A6418 FF5100A0 */  sd         $s1, 0xa0($k0)
/* A701C 800A641C FF5200A8 */  sd         $s2, 0xa8($k0)
/* A7020 800A6420 FF5300B0 */  sd         $s3, 0xb0($k0)
/* A7024 800A6424 FF5400B8 */  sd         $s4, 0xb8($k0)
/* A7028 800A6428 FF5500C0 */  sd         $s5, 0xc0($k0)
/* A702C 800A642C FF5600C8 */  sd         $s6, 0xc8($k0)
/* A7030 800A6430 FF5700D0 */  sd         $s7, 0xd0($k0)
/* A7034 800A6434 FF5800D8 */  sd         $t8, 0xd8($k0)
/* A7038 800A6438 FF5900E0 */  sd         $t9, 0xe0($k0)
/* A703C 800A643C FF5C00E8 */  sd         $gp, 0xe8($k0)
/* A7040 800A6440 FF5D00F0 */  sd         $sp, 0xf0($k0)
/* A7044 800A6444 FF5E00F8 */  sd         $fp, 0xf8($k0)
/* A7048 800A6448 FF5F0100 */  sd         $ra, 0x100($k0)
/* A704C 800A644C 00004012 */  mflo       $t0
/* A7050 800A6450 00000000 */  nop
/* A7054 800A6454 00000000 */  nop
/* A7058 800A6458 FF480108 */  sd         $t0, 0x108($k0)
/* A705C 800A645C 00004010 */  mfhi       $t0
/* A7060 800A6460 00000000 */  nop
/* A7064 800A6464 00000000 */  nop
/* A7068 800A6468 FF480110 */  sd         $t0, 0x110($k0)
/* A706C 800A646C 8F5B0118 */  lw         $k1, 0x118($k0)
/* A7070 800A6470 3369FF00 */  andi       $t1, $k1, 0xff00
/* A7074 800A6474 11200013 */  beqz       $t1, .L800A64C4
/* A7078 800A6478 00000000 */   nop
/* A707C 800A647C 3C08800F */  lui        $t0, %hi(__OSGlobalIntMask)
/* A7080 800A6480 25089780 */  addiu      $t0, $t0, %lo(__OSGlobalIntMask)
/* A7084 800A6484 8D080000 */  lw         $t0, ($t0)
/* A7088 800A6488 2401FFFF */  addiu      $at, $zero, -1
/* A708C 800A648C 01015026 */  xor        $t2, $t0, $at
/* A7090 800A6490 314AFF00 */  andi       $t2, $t2, 0xff00
/* A7094 800A6494 012A6025 */  or         $t4, $t1, $t2
/* A7098 800A6498 3C01FFFF */  lui        $at, 0xffff
/* A709C 800A649C 342100FF */  ori        $at, $at, 0xff
/* A70A0 800A64A0 03615824 */  and        $t3, $k1, $at
/* A70A4 800A64A4 016C5825 */  or         $t3, $t3, $t4
/* A70A8 800A64A8 AF4B0118 */  sw         $t3, 0x118($k0)
/* A70AC 800A64AC 3108FF00 */  andi       $t0, $t0, 0xff00
/* A70B0 800A64B0 01284824 */  and        $t1, $t1, $t0
/* A70B4 800A64B4 3C01FFFF */  lui        $at, 0xffff
/* A70B8 800A64B8 342100FF */  ori        $at, $at, 0xff
/* A70BC 800A64BC 0361D824 */  and        $k1, $k1, $at
/* A70C0 800A64C0 0369D825 */  or         $k1, $k1, $t1
.L800A64C4:
/* A70C4 800A64C4 3C09A430 */  lui        $t1, %hi(MI_INTR_MASK)
/* A70C8 800A64C8 8D29000C */  lw         $t1, %lo(MI_INTR_MASK)($t1)
/* A70CC 800A64CC 1120000B */  beqz       $t1, .L800A64FC
/* A70D0 800A64D0 00000000 */   nop
/* A70D4 800A64D4 3C08800F */  lui        $t0, %hi(__OSGlobalIntMask)
/* A70D8 800A64D8 25089780 */  addiu      $t0, $t0, %lo(__OSGlobalIntMask)
/* A70DC 800A64DC 8D080000 */  lw         $t0, ($t0)
/* A70E0 800A64E0 00084402 */  srl        $t0, $t0, 0x10
/* A70E4 800A64E4 2401FFFF */  addiu      $at, $zero, -1
/* A70E8 800A64E8 01014026 */  xor        $t0, $t0, $at
/* A70EC 800A64EC 3108003F */  andi       $t0, $t0, 0x3f
/* A70F0 800A64F0 8F4C0128 */  lw         $t4, 0x128($k0)
/* A70F4 800A64F4 010C4024 */  and        $t0, $t0, $t4
/* A70F8 800A64F8 01284825 */  or         $t1, $t1, $t0
.L800A64FC:
/* A70FC 800A64FC AF490128 */  sw         $t1, 0x128($k0)
/* A7100 800A6500 40087000 */  mfc0       $t0, $14
/* A7104 800A6504 AF48011C */  sw         $t0, 0x11c($k0)
/* A7108 800A6508 8F480018 */  lw         $t0, 0x18($k0)
/* A710C 800A650C 11000014 */  beqz       $t0, .L800A6560
/* A7110 800A6510 00000000 */   nop
/* A7114 800A6514 4448F800 */  cfc1       $t0, $31
/* A7118 800A6518 00000000 */  nop
/* A711C 800A651C AF48012C */  sw         $t0, 0x12c($k0)
/* A7120 800A6520 F7400130 */  sdc1       $f0, 0x130($k0)
/* A7124 800A6524 F7420138 */  sdc1       $f2, 0x138($k0)
/* A7128 800A6528 F7440140 */  sdc1       $f4, 0x140($k0)
/* A712C 800A652C F7460148 */  sdc1       $f6, 0x148($k0)
/* A7130 800A6530 F7480150 */  sdc1       $f8, 0x150($k0)
/* A7134 800A6534 F74A0158 */  sdc1       $f10, 0x158($k0)
/* A7138 800A6538 F74C0160 */  sdc1       $f12, 0x160($k0)
/* A713C 800A653C F74E0168 */  sdc1       $f14, 0x168($k0)
/* A7140 800A6540 F7500170 */  sdc1       $f16, 0x170($k0)
/* A7144 800A6544 F7520178 */  sdc1       $f18, 0x178($k0)
/* A7148 800A6548 F7540180 */  sdc1       $f20, 0x180($k0)
/* A714C 800A654C F7560188 */  sdc1       $f22, 0x188($k0)
/* A7150 800A6550 F7580190 */  sdc1       $f24, 0x190($k0)
/* A7154 800A6554 F75A0198 */  sdc1       $f26, 0x198($k0)
/* A7158 800A6558 F75C01A0 */  sdc1       $f28, 0x1a0($k0)
/* A715C 800A655C F75E01A8 */  sdc1       $f30, 0x1a8($k0)
.L800A6560:
/* A7160 800A6560 40086800 */  mfc0       $t0, $13
/* A7164 800A6564 AF480120 */  sw         $t0, 0x120($k0)
/* A7168 800A6568 24090002 */  addiu      $t1, $zero, 2
/* A716C 800A656C A7490010 */  sh         $t1, 0x10($k0)
/* A7170 800A6570 3C04800F */  lui        $a0, %hi(D_800EA5FC)
/* A7174 800A6574 8C84A5FC */  lw         $a0, %lo(D_800EA5FC)($a0)
/* A7178 800A6578 10800007 */  beqz       $a0, .L800A6598
/* A717C 800A657C 00000000 */   nop
/* A7180 800A6580 3C01800F */  lui        $at, %hi(D_800EA5FC)
/* A7184 800A6584 AC20A5FC */  sw         $zero, %lo(D_800EA5FC)($at)
/* A7188 800A6588 0C02D1FF */  jal        kdebugserver
/* A718C 800A658C 00000000 */   nop
/* A7190 800A6590 100001A4 */  b          .L800A6C24
/* A7194 800A6594 00000000 */   nop
.L800A6598:
/* A7198 800A6598 3C04800F */  lui        $a0, %hi(D_800EA5F8)
/* A719C 800A659C 8C84A5F8 */  lw         $a0, %lo(D_800EA5F8)($a0)
/* A71A0 800A65A0 10800006 */  beqz       $a0, .L800A65BC
/* A71A4 800A65A4 00000000 */   nop
/* A71A8 800A65A8 3C01800F */  lui        $at, %hi(D_800EA5F8)
/* A71AC 800A65AC AC20A5F8 */  sw         $zero, %lo(D_800EA5F8)($at)
/* A71B0 800A65B0 0C029A65 */  jal        send_mesg
/* A71B4 800A65B4 00000000 */   nop
/* A71B8 800A65B8 8F480120 */  lw         $t0, 0x120($k0)
.L800A65BC:
/* A71BC 800A65BC 3109007C */  andi       $t1, $t0, 0x7c
/* A71C0 800A65C0 240A0024 */  addiu      $t2, $zero, 0x24
/* A71C4 800A65C4 112A00CA */  beq        $t1, $t2, .L800A68F0
/* A71C8 800A65C8 00000000 */   nop
/* A71CC 800A65CC 240A002C */  addiu      $t2, $zero, 0x2c
/* A71D0 800A65D0 112A0121 */  beq        $t1, $t2, .L800A6A58
/* A71D4 800A65D4 00000000 */   nop
/* A71D8 800A65D8 240A0000 */  addiu      $t2, $zero, 0
/* A71DC 800A65DC 152A00E0 */  bne        $t1, $t2, .L800A6960
/* A71E0 800A65E0 00000000 */   nop
/* A71E4 800A65E4 03688024 */  and        $s0, $k1, $t0
.L800A65E8:
/* A71E8 800A65E8 3209FF00 */  andi       $t1, $s0, 0xff00
/* A71EC 800A65EC 00095302 */  srl        $t2, $t1, 0xc
/* A71F0 800A65F0 15400003 */  bnez       $t2, .L800A6600
/* A71F4 800A65F4 00000000 */   nop
/* A71F8 800A65F8 00095202 */  srl        $t2, $t1, 8
/* A71FC 800A65FC 214A0010 */  addi       $t2, $t2, 0x10
.L800A6600:
/* A7200 800A6600 3C01800F */  lui        $at, %hi(D_800EDA80)
/* A7204 800A6604 002A0821 */  addu       $at, $at, $t2
/* A7208 800A6608 902ADA80 */  lbu        $t2, %lo(D_800EDA80)($at)
/* A720C 800A660C 3C01800F */  lui        $at, %hi(D_800EDAA0)
/* A7210 800A6610 002A0821 */  addu       $at, $at, $t2
/* A7214 800A6614 8C2ADAA0 */  lw         $t2, %lo(D_800EDAA0)($at)
/* A7218 800A6618 01400008 */  jr         $t2
/* A721C 800A661C 00000000 */   nop
/* A7220 800A6620 2401DFFF */  addiu      $at, $zero, -0x2001
/* A7224 800A6624 02018024 */  and        $s0, $s0, $at
/* A7228 800A6628 1000FFEF */  b          .L800A65E8
/* A722C 800A662C 00000000 */   nop
/* A7230 800A6630 2401BFFF */  addiu      $at, $zero, -0x4001
/* A7234 800A6634 02018024 */  and        $s0, $s0, $at
/* A7238 800A6638 1000FFEB */  b          .L800A65E8
/* A723C 800A663C 00000000 */   nop
/* A7240 800A6640 40095800 */  mfc0       $t1, $11
/* A7244 800A6644 40895800 */  mtc0       $t1, $11
/* A7248 800A6648 24040018 */  addiu      $a0, $zero, 0x18
/* A724C 800A664C 0C029A65 */  jal        send_mesg
/* A7250 800A6650 00000000 */   nop
/* A7254 800A6654 3C01FFFF */  lui        $at, 0xffff
/* A7258 800A6658 34217FFF */  ori        $at, $at, 0x7fff
/* A725C 800A665C 02018024 */  and        $s0, $s0, $at
/* A7260 800A6660 1000FFE1 */  b          .L800A65E8
/* A7264 800A6664 00000000 */   nop
/* A7268 800A6668 24040010 */  addiu      $a0, $zero, 0x10
/* A726C 800A666C 2401F7FF */  addiu      $at, $zero, -0x801
/* A7270 800A6670 02018024 */  and        $s0, $s0, $at
/* A7274 800A6674 3C1D8019 */  lui        $sp, %hi(D_8018A760)
/* A7278 800A6678 27BDA760 */  addiu      $sp, $sp, %lo(D_8018A760)
/* A727C 800A667C 27BD0FF0 */  addiu      $sp, $sp, 0xff0
/* A7280 800A6680 240A0004 */  addiu      $t2, $zero, 4
/* A7284 800A6684 3C01800F */  lui        $at, %hi(D_800EA5E0)
/* A7288 800A6688 002A0821 */  addu       $at, $at, $t2
/* A728C 800A668C 8C2AA5E0 */  lw         $t2, %lo(D_800EA5E0)($at)
/* A7290 800A6690 11400008 */  beqz       $t2, .L800A66B4
/* A7294 800A6694 00000000 */   nop
/* A7298 800A6698 0140F809 */  jalr       $t2
/* A729C 800A669C 00000000 */   nop
/* A72A0 800A66A0 24040010 */  addiu      $a0, $zero, 0x10
/* A72A4 800A66A4 10400003 */  beqz       $v0, .L800A66B4
/* A72A8 800A66A8 00000000 */   nop
/* A72AC 800A66AC 10000097 */  b          .L800A690C
/* A72B0 800A66B0 00000000 */   nop
.L800A66B4:
/* A72B4 800A66B4 0C029A65 */  jal        send_mesg
/* A72B8 800A66B8 00000000 */   nop
/* A72BC 800A66BC 1000FFCA */  b          .L800A65E8
/* A72C0 800A66C0 00000000 */   nop
/* A72C4 800A66C4 3C11A430 */  lui        $s1, %hi(MI_INTR)
/* A72C8 800A66C8 8E310008 */  lw         $s1, %lo(MI_INTR)($s1)
/* A72CC 800A66CC 3C08800F */  lui        $t0, %hi(__OSGlobalIntMask)
/* A72D0 800A66D0 25089780 */  addiu      $t0, $t0, %lo(__OSGlobalIntMask)
/* A72D4 800A66D4 8D080000 */  lw         $t0, ($t0)
/* A72D8 800A66D8 00084402 */  srl        $t0, $t0, 0x10
/* A72DC 800A66DC 02288824 */  and        $s1, $s1, $t0
/* A72E0 800A66E0 32290001 */  andi       $t1, $s1, 1
/* A72E4 800A66E4 11200016 */  beqz       $t1, .L800A6740
/* A72E8 800A66E8 00000000 */   nop
/* A72EC 800A66EC 3231003E */  andi       $s1, $s1, 0x3e
/* A72F0 800A66F0 3C0CA404 */  lui        $t4, %hi(SP_STATUS)
/* A72F4 800A66F4 8D8C0010 */  lw         $t4, %lo(SP_STATUS)($t4)
/* A72F8 800A66F8 24090008 */  addiu      $t1, $zero, 8
/* A72FC 800A66FC 3C01A404 */  lui        $at, %hi(SP_STATUS)
/* A7300 800A6700 AC290010 */  sw         $t1, %lo(SP_STATUS)($at)
/* A7304 800A6704 318C0300 */  andi       $t4, $t4, 0x300
/* A7308 800A6708 11800008 */  beqz       $t4, .L800A672C
/* A730C 800A670C 00000000 */   nop
/* A7310 800A6710 24040020 */  addiu      $a0, $zero, 0x20
/* A7314 800A6714 0C029A65 */  jal        send_mesg
/* A7318 800A6718 00000000 */   nop
/* A731C 800A671C 12200040 */  beqz       $s1, .L800A6820
/* A7320 800A6720 00000000 */   nop
/* A7324 800A6724 10000006 */  b          .L800A6740
/* A7328 800A6728 00000000 */   nop
.L800A672C:
/* A732C 800A672C 24040058 */  addiu      $a0, $zero, 0x58
/* A7330 800A6730 0C029A65 */  jal        send_mesg
/* A7334 800A6734 00000000 */   nop
/* A7338 800A6738 12200039 */  beqz       $s1, .L800A6820
/* A733C 800A673C 00000000 */   nop
.L800A6740:
/* A7340 800A6740 32290008 */  andi       $t1, $s1, 8
/* A7344 800A6744 11200009 */  beqz       $t1, .L800A676C
/* A7348 800A6748 00000000 */   nop
/* A734C 800A674C 32310037 */  andi       $s1, $s1, 0x37
/* A7350 800A6750 3C01A440 */  lui        $at, %hi(VI_CURRENT)
/* A7354 800A6754 AC200010 */  sw         $zero, %lo(VI_CURRENT)($at)
/* A7358 800A6758 24040038 */  addiu      $a0, $zero, 0x38
/* A735C 800A675C 0C029A65 */  jal        send_mesg
/* A7360 800A6760 00000000 */   nop
/* A7364 800A6764 1220002E */  beqz       $s1, .L800A6820
/* A7368 800A6768 00000000 */   nop
.L800A676C:
/* A736C 800A676C 32290004 */  andi       $t1, $s1, 4
/* A7370 800A6770 1120000A */  beqz       $t1, .L800A679C
/* A7374 800A6774 00000000 */   nop
/* A7378 800A6778 3231003B */  andi       $s1, $s1, 0x3b
/* A737C 800A677C 24090001 */  addiu      $t1, $zero, 1
/* A7380 800A6780 3C01A450 */  lui        $at, %hi(AI_STATUS)
/* A7384 800A6784 AC29000C */  sw         $t1, %lo(AI_STATUS)($at)
/* A7388 800A6788 24040030 */  addiu      $a0, $zero, 0x30
/* A738C 800A678C 0C029A65 */  jal        send_mesg
/* A7390 800A6790 00000000 */   nop
/* A7394 800A6794 12200022 */  beqz       $s1, .L800A6820
/* A7398 800A6798 00000000 */   nop
.L800A679C:
/* A739C 800A679C 32290002 */  andi       $t1, $s1, 2
/* A73A0 800A67A0 11200009 */  beqz       $t1, .L800A67C8
/* A73A4 800A67A4 00000000 */   nop
/* A73A8 800A67A8 3231003D */  andi       $s1, $s1, 0x3d
/* A73AC 800A67AC 3C01A480 */  lui        $at, %hi(SI_STATUS)
/* A73B0 800A67B0 AC200018 */  sw         $zero, %lo(SI_STATUS)($at)
/* A73B4 800A67B4 24040028 */  addiu      $a0, $zero, 0x28
/* A73B8 800A67B8 0C029A65 */  jal        send_mesg
/* A73BC 800A67BC 00000000 */   nop
/* A73C0 800A67C0 12200017 */  beqz       $s1, .L800A6820
/* A73C4 800A67C4 00000000 */   nop
.L800A67C8:
/* A73C8 800A67C8 32290010 */  andi       $t1, $s1, 0x10
/* A73CC 800A67CC 1120000A */  beqz       $t1, .L800A67F8
/* A73D0 800A67D0 00000000 */   nop
/* A73D4 800A67D4 3231002F */  andi       $s1, $s1, 0x2f
/* A73D8 800A67D8 24090002 */  addiu      $t1, $zero, 2
/* A73DC 800A67DC 3C01A460 */  lui        $at, %hi(PI_STATUS)
/* A73E0 800A67E0 AC290010 */  sw         $t1, %lo(PI_STATUS)($at)
/* A73E4 800A67E4 24040040 */  addiu      $a0, $zero, 0x40
/* A73E8 800A67E8 0C029A65 */  jal        send_mesg
/* A73EC 800A67EC 00000000 */   nop
/* A73F0 800A67F0 1220000B */  beqz       $s1, .L800A6820
/* A73F4 800A67F4 00000000 */   nop
.L800A67F8:
/* A73F8 800A67F8 32290020 */  andi       $t1, $s1, 0x20
/* A73FC 800A67FC 11200008 */  beqz       $t1, .L800A6820
/* A7400 800A6800 00000000 */   nop
/* A7404 800A6804 3231001F */  andi       $s1, $s1, 0x1f
/* A7408 800A6808 24090800 */  addiu      $t1, $zero, 0x800
/* A740C 800A680C 3C01A430 */  lui        $at, 0xa430
/* A7410 800A6810 AC290000 */  sw         $t1, ($at)
/* A7414 800A6814 24040048 */  addiu      $a0, $zero, 0x48
/* A7418 800A6818 0C029A65 */  jal        send_mesg
/* A741C 800A681C 00000000 */   nop
.L800A6820:
/* A7420 800A6820 2401FBFF */  addiu      $at, $zero, -0x401
/* A7424 800A6824 02018024 */  and        $s0, $s0, $at
/* A7428 800A6828 1000FF6F */  b          .L800A65E8
/* A742C 800A682C 00000000 */   nop
/* A7430 800A6830 8F5B0118 */  lw         $k1, 0x118($k0)
/* A7434 800A6834 2401EFFF */  addiu      $at, $zero, -0x1001
/* A7438 800A6838 0361D824 */  and        $k1, $k1, $at
/* A743C 800A683C AF5B0118 */  sw         $k1, 0x118($k0)
/* A7440 800A6840 3C09800F */  lui        $t1, %hi(D_800E977C)
/* A7444 800A6844 2529977C */  addiu      $t1, $t1, %lo(D_800E977C)
/* A7448 800A6848 8D2A0000 */  lw         $t2, ($t1)
/* A744C 800A684C 11400005 */  beqz       $t2, .L800A6864
/* A7450 800A6850 00000000 */   nop
/* A7454 800A6854 2401EFFF */  addiu      $at, $zero, -0x1001
/* A7458 800A6858 02018024 */  and        $s0, $s0, $at
/* A745C 800A685C 1000002B */  b          .L800A690C
/* A7460 800A6860 00000000 */   nop
.L800A6864:
/* A7464 800A6864 240A0001 */  addiu      $t2, $zero, 1
/* A7468 800A6868 AD2A0000 */  sw         $t2, ($t1)
/* A746C 800A686C 24040070 */  addiu      $a0, $zero, 0x70
/* A7470 800A6870 0C029A65 */  jal        send_mesg
/* A7474 800A6874 00000000 */   nop
/* A7478 800A6878 2401EFFF */  addiu      $at, $zero, -0x1001
/* A747C 800A687C 02018024 */  and        $s0, $s0, $at
/* A7480 800A6880 3C0A800F */  lui        $t2, %hi(__osRunQueue)
/* A7484 800A6884 8D4AA608 */  lw         $t2, %lo(__osRunQueue)($t2)
/* A7488 800A6888 8D5B0118 */  lw         $k1, 0x118($t2)
/* A748C 800A688C 2401EFFF */  addiu      $at, $zero, -0x1001
/* A7490 800A6890 0361D824 */  and        $k1, $k1, $at
/* A7494 800A6894 AD5B0118 */  sw         $k1, 0x118($t2)
/* A7498 800A6898 1000001C */  b          .L800A690C
/* A749C 800A689C 00000000 */   nop
/* A74A0 800A68A0 2401FDFF */  addiu      $at, $zero, -0x201
/* A74A4 800A68A4 01014024 */  and        $t0, $t0, $at
/* A74A8 800A68A8 40886800 */  mtc0       $t0, $13
/* A74AC 800A68AC 24040008 */  addiu      $a0, $zero, 8
/* A74B0 800A68B0 0C029A65 */  jal        send_mesg
/* A74B4 800A68B4 00000000 */   nop
/* A74B8 800A68B8 2401FDFF */  addiu      $at, $zero, -0x201
/* A74BC 800A68BC 02018024 */  and        $s0, $s0, $at
/* A74C0 800A68C0 1000FF49 */  b          .L800A65E8
/* A74C4 800A68C4 00000000 */   nop
/* A74C8 800A68C8 2401FEFF */  addiu      $at, $zero, -0x101
/* A74CC 800A68CC 01014024 */  and        $t0, $t0, $at
/* A74D0 800A68D0 40886800 */  mtc0       $t0, $13
/* A74D4 800A68D4 24040000 */  addiu      $a0, $zero, 0
/* A74D8 800A68D8 0C029A65 */  jal        send_mesg
/* A74DC 800A68DC 00000000 */   nop
/* A74E0 800A68E0 2401FEFF */  addiu      $at, $zero, -0x101
/* A74E4 800A68E4 02018024 */  and        $s0, $s0, $at
/* A74E8 800A68E8 1000FF3F */  b          .L800A65E8
/* A74EC 800A68EC 00000000 */   nop
.L800A68F0:
/* A74F0 800A68F0 24090001 */  addiu      $t1, $zero, 1
/* A74F4 800A68F4 A7490012 */  sh         $t1, 0x12($k0)
/* A74F8 800A68F8 24040050 */  addiu      $a0, $zero, 0x50
/* A74FC 800A68FC 0C029A65 */  jal        send_mesg
/* A7500 800A6900 00000000 */   nop
/* A7504 800A6904 10000001 */  b          .L800A690C
/* A7508 800A6908 00000000 */   nop
.L800A690C:
/* A750C 800A690C 8F490004 */  lw         $t1, 4($k0)
/* A7510 800A6910 3C0A800F */  lui        $t2, %hi(__osRunQueue)
/* A7514 800A6914 8D4AA608 */  lw         $t2, %lo(__osRunQueue)($t2)
/* A7518 800A6918 8D4B0004 */  lw         $t3, 4($t2)
/* A751C 800A691C 012B082A */  slt        $at, $t1, $t3
/* A7520 800A6920 10200008 */  beqz       $at, .L800A6944
/* A7524 800A6924 00000000 */   nop
/* A7528 800A6928 03402825 */  or         $a1, $k0, $zero
/* A752C 800A692C 3C04800F */  lui        $a0, %hi(__osRunQueue)
/* A7530 800A6930 2484A608 */  addiu      $a0, $a0, %lo(__osRunQueue)
/* A7534 800A6934 0C029AE7 */  jal        __osEnqueueThread
/* A7538 800A6938 00000000 */   nop
/* A753C 800A693C 08029B00 */  j          .L800A6C00
/* A7540 800A6940 00000000 */   nop
.L800A6944:
/* A7544 800A6944 3C09800F */  lui        $t1, %hi(__osRunQueue)
/* A7548 800A6948 2529A608 */  addiu      $t1, $t1, %lo(__osRunQueue)
/* A754C 800A694C 8D2A0000 */  lw         $t2, ($t1)
/* A7550 800A6950 AF4A0000 */  sw         $t2, ($k0)
/* A7554 800A6954 AD3A0000 */  sw         $k0, ($t1)
/* A7558 800A6958 08029B00 */  j          .L800A6C00
/* A755C 800A695C 00000000 */   nop
.L800A6960:
/* A7560 800A6960 3C01800F */  lui        $at, %hi(D_800EA614)
/* A7564 800A6964 AC3AA614 */  sw         $k0, %lo(D_800EA614)($at)
/* A7568 800A6968 24090001 */  addiu      $t1, $zero, 1
/* A756C 800A696C A7490010 */  sh         $t1, 0x10($k0)
/* A7570 800A6970 24090002 */  addiu      $t1, $zero, 2
/* A7574 800A6974 A7490012 */  sh         $t1, 0x12($k0)
/* A7578 800A6978 400A4000 */  mfc0       $t2, $8
/* A757C 800A697C AF4A0124 */  sw         $t2, 0x124($k0)
/* A7580 800A6980 24040060 */  addiu      $a0, $zero, 0x60
/* A7584 800A6984 0C029A65 */  jal        send_mesg
/* A7588 800A6988 00000000 */   nop
/* A758C 800A698C 08029B00 */  j          .L800A6C00
/* A7590 800A6990 00000000 */   nop

glabel send_mesg
/* A7594 800A6994 03E09025 */  or         $s2, $ra, $zero
/* A7598 800A6998 3C0A8018 */  lui        $t2, %hi(__osEventStateTab)
/* A759C 800A699C 254A5530 */  addiu      $t2, $t2, %lo(__osEventStateTab)
/* A75A0 800A69A0 01445021 */  addu       $t2, $t2, $a0
/* A75A4 800A69A4 8D490000 */  lw         $t1, ($t2)
/* A75A8 800A69A8 11200029 */  beqz       $t1, .L800A6A50
/* A75AC 800A69AC 00000000 */   nop
/* A75B0 800A69B0 8D2B0008 */  lw         $t3, 8($t1)
/* A75B4 800A69B4 8D2C0010 */  lw         $t4, 0x10($t1)
/* A75B8 800A69B8 016C082A */  slt        $at, $t3, $t4
/* A75BC 800A69BC 10200024 */  beqz       $at, .L800A6A50
/* A75C0 800A69C0 00000000 */   nop
/* A75C4 800A69C4 8D2D000C */  lw         $t5, 0xc($t1)
/* A75C8 800A69C8 01AB6821 */  addu       $t5, $t5, $t3
/* A75CC 800A69CC 01AC001A */  div        $zero, $t5, $t4
/* A75D0 800A69D0 15800002 */  bnez       $t4, .L800A69DC
/* A75D4 800A69D4 00000000 */   nop
/* A75D8 800A69D8 0007000D */  break      7
.L800A69DC:
/* A75DC 800A69DC 2401FFFF */   addiu     $at, $zero, -1
/* A75E0 800A69E0 15810004 */  bne        $t4, $at, .L800A69F4
/* A75E4 800A69E4 3C018000 */   lui       $at, 0x8000
/* A75E8 800A69E8 15A10002 */  bne        $t5, $at, .L800A69F4
/* A75EC 800A69EC 00000000 */   nop
/* A75F0 800A69F0 0006000D */  break      6
.L800A69F4:
/* A75F4 800A69F4 00006810 */   mfhi      $t5
/* A75F8 800A69F8 00000000 */  nop
/* A75FC 800A69FC 00000000 */  nop
/* A7600 800A6A00 8D2C0014 */  lw         $t4, 0x14($t1)
/* A7604 800A6A04 000D6880 */  sll        $t5, $t5, 2
/* A7608 800A6A08 018D6021 */  addu       $t4, $t4, $t5
/* A760C 800A6A0C 8D4D0004 */  lw         $t5, 4($t2)
/* A7610 800A6A10 AD8D0000 */  sw         $t5, ($t4)
/* A7614 800A6A14 256A0001 */  addiu      $t2, $t3, 1
/* A7618 800A6A18 AD2A0008 */  sw         $t2, 8($t1)
/* A761C 800A6A1C 8D2A0000 */  lw         $t2, ($t1)
/* A7620 800A6A20 8D4B0000 */  lw         $t3, ($t2)
/* A7624 800A6A24 1160000A */  beqz       $t3, .L800A6A50
/* A7628 800A6A28 00000000 */   nop
/* A762C 800A6A2C 01202025 */  or         $a0, $t1, $zero
/* A7630 800A6A30 0C029AFA */  jal        __osPopThread
/* A7634 800A6A34 00000000 */   nop
/* A7638 800A6A38 00405025 */  or         $t2, $v0, $zero
/* A763C 800A6A3C 01402825 */  or         $a1, $t2, $zero
/* A7640 800A6A40 3C04800F */  lui        $a0, %hi(__osRunQueue)
/* A7644 800A6A44 2484A608 */  addiu      $a0, $a0, %lo(__osRunQueue)
/* A7648 800A6A48 0C029AE7 */  jal        __osEnqueueThread
/* A764C 800A6A4C 00000000 */   nop
.L800A6A50:
/* A7650 800A6A50 02400008 */  jr         $s2
/* A7654 800A6A54 00000000 */   nop
.L800A6A58:
/* A7658 800A6A58 3C013000 */  lui        $at, 0x3000
/* A765C 800A6A5C 01014824 */  and        $t1, $t0, $at
/* A7660 800A6A60 00094F02 */  srl        $t1, $t1, 0x1c
/* A7664 800A6A64 240A0001 */  addiu      $t2, $zero, 1
/* A7668 800A6A68 152AFFBD */  bne        $t1, $t2, .L800A6960
/* A766C 800A6A6C 00000000 */   nop
/* A7670 800A6A70 24090001 */  addiu      $t1, $zero, 1
/* A7674 800A6A74 AF490018 */  sw         $t1, 0x18($k0)
/* A7678 800A6A78 8F5B0118 */  lw         $k1, 0x118($k0)
/* A767C 800A6A7C 3C012000 */  lui        $at, 0x2000
/* A7680 800A6A80 0361D825 */  or         $k1, $k1, $at
/* A7684 800A6A84 AF5B0118 */  sw         $k1, 0x118($k0)
/* A7688 800A6A88 1000FFAE */  b          .L800A6944
/* A768C 800A6A8C 00000000 */   nop

glabel __osEnqueueAndYield
/* A7690 800A6A90 3C05800F */  lui        $a1, %hi(__osRunningThread)
/* A7694 800A6A94 8CA5A610 */  lw         $a1, %lo(__osRunningThread)($a1)
/* A7698 800A6A98 40086000 */  mfc0       $t0, $12
/* A769C 800A6A9C 35080002 */  ori        $t0, $t0, 2
/* A76A0 800A6AA0 ACA80118 */  sw         $t0, 0x118($a1)
/* A76A4 800A6AA4 FCB00098 */  sd         $s0, 0x98($a1)
/* A76A8 800A6AA8 FCB100A0 */  sd         $s1, 0xa0($a1)
/* A76AC 800A6AAC FCB200A8 */  sd         $s2, 0xa8($a1)
/* A76B0 800A6AB0 FCB300B0 */  sd         $s3, 0xb0($a1)
/* A76B4 800A6AB4 FCB400B8 */  sd         $s4, 0xb8($a1)
/* A76B8 800A6AB8 FCB500C0 */  sd         $s5, 0xc0($a1)
/* A76BC 800A6ABC FCB600C8 */  sd         $s6, 0xc8($a1)
/* A76C0 800A6AC0 FCB700D0 */  sd         $s7, 0xd0($a1)
/* A76C4 800A6AC4 FCBC00E8 */  sd         $gp, 0xe8($a1)
/* A76C8 800A6AC8 FCBD00F0 */  sd         $sp, 0xf0($a1)
/* A76CC 800A6ACC FCBE00F8 */  sd         $fp, 0xf8($a1)
/* A76D0 800A6AD0 FCBF0100 */  sd         $ra, 0x100($a1)
/* A76D4 800A6AD4 ACBF011C */  sw         $ra, 0x11c($a1)
/* A76D8 800A6AD8 8CBB0018 */  lw         $k1, 0x18($a1)
/* A76DC 800A6ADC 1360000A */  beqz       $k1, .L800A6B08
/* A76E0 800A6AE0 00000000 */   nop
/* A76E4 800A6AE4 445BF800 */  cfc1       $k1, $31
/* A76E8 800A6AE8 00000000 */  nop
/* A76EC 800A6AEC ACBB012C */  sw         $k1, 0x12c($a1)
/* A76F0 800A6AF0 F4B40180 */  sdc1       $f20, 0x180($a1)
/* A76F4 800A6AF4 F4B60188 */  sdc1       $f22, 0x188($a1)
/* A76F8 800A6AF8 F4B80190 */  sdc1       $f24, 0x190($a1)
/* A76FC 800A6AFC F4BA0198 */  sdc1       $f26, 0x198($a1)
/* A7700 800A6B00 F4BC01A0 */  sdc1       $f28, 0x1a0($a1)
/* A7704 800A6B04 F4BE01A8 */  sdc1       $f30, 0x1a8($a1)
.L800A6B08:
/* A7708 800A6B08 8CBB0118 */  lw         $k1, 0x118($a1)
/* A770C 800A6B0C 3369FF00 */  andi       $t1, $k1, 0xff00
/* A7710 800A6B10 1120000D */  beqz       $t1, .L800A6B48
/* A7714 800A6B14 00000000 */   nop
/* A7718 800A6B18 3C08800F */  lui        $t0, %hi(__OSGlobalIntMask)
/* A771C 800A6B1C 25089780 */  addiu      $t0, $t0, %lo(__OSGlobalIntMask)
/* A7720 800A6B20 8D080000 */  lw         $t0, ($t0)
/* A7724 800A6B24 2401FFFF */  addiu      $at, $zero, -1
/* A7728 800A6B28 01014026 */  xor        $t0, $t0, $at
/* A772C 800A6B2C 3108FF00 */  andi       $t0, $t0, 0xff00
/* A7730 800A6B30 01284825 */  or         $t1, $t1, $t0
/* A7734 800A6B34 3C01FFFF */  lui        $at, 0xffff
/* A7738 800A6B38 342100FF */  ori        $at, $at, 0xff
/* A773C 800A6B3C 0361D824 */  and        $k1, $k1, $at
/* A7740 800A6B40 0369D825 */  or         $k1, $k1, $t1
/* A7744 800A6B44 ACBB0118 */  sw         $k1, 0x118($a1)
.L800A6B48:
/* A7748 800A6B48 3C1BA430 */  lui        $k1, %hi(MI_INTR_MASK)
/* A774C 800A6B4C 8F7B000C */  lw         $k1, %lo(MI_INTR_MASK)($k1)
/* A7750 800A6B50 1360000B */  beqz       $k1, .L800A6B80
/* A7754 800A6B54 00000000 */   nop
/* A7758 800A6B58 3C1A800F */  lui        $k0, %hi(__OSGlobalIntMask)
/* A775C 800A6B5C 275A9780 */  addiu      $k0, $k0, %lo(__OSGlobalIntMask)
/* A7760 800A6B60 8F5A0000 */  lw         $k0, ($k0)
/* A7764 800A6B64 001AD402 */  srl        $k0, $k0, 0x10
/* A7768 800A6B68 2401FFFF */  addiu      $at, $zero, -1
/* A776C 800A6B6C 0341D026 */  xor        $k0, $k0, $at
/* A7770 800A6B70 335A003F */  andi       $k0, $k0, 0x3f
/* A7774 800A6B74 8CA80128 */  lw         $t0, 0x128($a1)
/* A7778 800A6B78 0348D024 */  and        $k0, $k0, $t0
/* A777C 800A6B7C 037AD825 */  or         $k1, $k1, $k0
.L800A6B80:
/* A7780 800A6B80 ACBB0128 */  sw         $k1, 0x128($a1)
/* A7784 800A6B84 10800003 */  beqz       $a0, .L800A6B94
/* A7788 800A6B88 00000000 */   nop
/* A778C 800A6B8C 0C029AE7 */  jal        __osEnqueueThread
/* A7790 800A6B90 00000000 */   nop
.L800A6B94:
/* A7794 800A6B94 08029B00 */  j          .L800A6C00
/* A7798 800A6B98 00000000 */   nop

glabel __osEnqueueThread
/* A779C 800A6B9C 0080C825 */  or         $t9, $a0, $zero
/* A77A0 800A6BA0 8C980000 */  lw         $t8, ($a0)
/* A77A4 800A6BA4 8CAF0004 */  lw         $t7, 4($a1)
/* A77A8 800A6BA8 8F0E0004 */  lw         $t6, 4($t8)
/* A77AC 800A6BAC 01CF082A */  slt        $at, $t6, $t7
/* A77B0 800A6BB0 14200007 */  bnez       $at, .L800A6BD0
/* A77B4 800A6BB4 00000000 */   nop
.L800A6BB8:
/* A77B8 800A6BB8 0300C825 */  or         $t9, $t8, $zero
/* A77BC 800A6BBC 8F180000 */  lw         $t8, ($t8)
/* A77C0 800A6BC0 8F0E0004 */  lw         $t6, 4($t8)
/* A77C4 800A6BC4 01CF082A */  slt        $at, $t6, $t7
/* A77C8 800A6BC8 1020FFFB */  beqz       $at, .L800A6BB8
/* A77CC 800A6BCC 00000000 */   nop
.L800A6BD0:
/* A77D0 800A6BD0 8F380000 */  lw         $t8, ($t9)
/* A77D4 800A6BD4 ACB80000 */  sw         $t8, ($a1)
/* A77D8 800A6BD8 AF250000 */  sw         $a1, ($t9)
/* A77DC 800A6BDC ACA40008 */  sw         $a0, 8($a1)
/* A77E0 800A6BE0 03E00008 */  jr         $ra
/* A77E4 800A6BE4 00000000 */   nop

glabel __osPopThread
/* A77E8 800A6BE8 8C820000 */  lw         $v0, ($a0)
/* A77EC 800A6BEC 8C590000 */  lw         $t9, ($v0)
/* A77F0 800A6BF0 AC990000 */  sw         $t9, ($a0)
/* A77F4 800A6BF4 AC400000 */  sw         $zero, ($v0)
/* A77F8 800A6BF8 03E00008 */  jr         $ra
/* A77FC 800A6BFC 00000000 */   nop

glabel __osDispatchThread
.L800A6C00:
/* A7800 800A6C00 3C04800F */  lui        $a0, %hi(__osRunQueue)
/* A7804 800A6C04 2484A608 */  addiu      $a0, $a0, %lo(__osRunQueue)
/* A7808 800A6C08 0C029AFA */  jal        __osPopThread
/* A780C 800A6C0C 00000000 */   nop
/* A7810 800A6C10 3C01800F */  lui        $at, %hi(__osRunningThread)
/* A7814 800A6C14 AC22A610 */  sw         $v0, %lo(__osRunningThread)($at)
/* A7818 800A6C18 24080004 */  addiu      $t0, $zero, 4
/* A781C 800A6C1C A4480010 */  sh         $t0, 0x10($v0)
/* A7820 800A6C20 0040D025 */  or         $k0, $v0, $zero
.L800A6C24:
/* A7824 800A6C24 8F5B0118 */  lw         $k1, 0x118($k0)
/* A7828 800A6C28 3C08800F */  lui        $t0, %hi(__OSGlobalIntMask)
/* A782C 800A6C2C 25089780 */  addiu      $t0, $t0, %lo(__OSGlobalIntMask)
/* A7830 800A6C30 8D080000 */  lw         $t0, ($t0)
/* A7834 800A6C34 3108FF00 */  andi       $t0, $t0, 0xff00
/* A7838 800A6C38 3369FF00 */  andi       $t1, $k1, 0xff00
/* A783C 800A6C3C 01284824 */  and        $t1, $t1, $t0
/* A7840 800A6C40 3C01FFFF */  lui        $at, 0xffff
/* A7844 800A6C44 342100FF */  ori        $at, $at, 0xff
/* A7848 800A6C48 0361D824 */  and        $k1, $k1, $at
/* A784C 800A6C4C 0369D825 */  or         $k1, $k1, $t1
/* A7850 800A6C50 409B6000 */  mtc0       $k1, $12
/* A7854 800A6C54 DF410020 */  ld         $at, 0x20($k0)
/* A7858 800A6C58 DF420028 */  ld         $v0, 0x28($k0)
/* A785C 800A6C5C DF430030 */  ld         $v1, 0x30($k0)
/* A7860 800A6C60 DF440038 */  ld         $a0, 0x38($k0)
/* A7864 800A6C64 DF450040 */  ld         $a1, 0x40($k0)
/* A7868 800A6C68 DF460048 */  ld         $a2, 0x48($k0)
/* A786C 800A6C6C DF470050 */  ld         $a3, 0x50($k0)
/* A7870 800A6C70 DF480058 */  ld         $t0, 0x58($k0)
/* A7874 800A6C74 DF490060 */  ld         $t1, 0x60($k0)
/* A7878 800A6C78 DF4A0068 */  ld         $t2, 0x68($k0)
/* A787C 800A6C7C DF4B0070 */  ld         $t3, 0x70($k0)
/* A7880 800A6C80 DF4C0078 */  ld         $t4, 0x78($k0)
/* A7884 800A6C84 DF4D0080 */  ld         $t5, 0x80($k0)
/* A7888 800A6C88 DF4E0088 */  ld         $t6, 0x88($k0)
/* A788C 800A6C8C DF4F0090 */  ld         $t7, 0x90($k0)
/* A7890 800A6C90 DF500098 */  ld         $s0, 0x98($k0)
/* A7894 800A6C94 DF5100A0 */  ld         $s1, 0xa0($k0)
/* A7898 800A6C98 DF5200A8 */  ld         $s2, 0xa8($k0)
/* A789C 800A6C9C DF5300B0 */  ld         $s3, 0xb0($k0)
/* A78A0 800A6CA0 DF5400B8 */  ld         $s4, 0xb8($k0)
/* A78A4 800A6CA4 DF5500C0 */  ld         $s5, 0xc0($k0)
/* A78A8 800A6CA8 DF5600C8 */  ld         $s6, 0xc8($k0)
/* A78AC 800A6CAC DF5700D0 */  ld         $s7, 0xd0($k0)
/* A78B0 800A6CB0 DF5800D8 */  ld         $t8, 0xd8($k0)
/* A78B4 800A6CB4 DF5900E0 */  ld         $t9, 0xe0($k0)
/* A78B8 800A6CB8 DF5C00E8 */  ld         $gp, 0xe8($k0)
/* A78BC 800A6CBC DF5D00F0 */  ld         $sp, 0xf0($k0)
/* A78C0 800A6CC0 DF5E00F8 */  ld         $fp, 0xf8($k0)
/* A78C4 800A6CC4 DF5F0100 */  ld         $ra, 0x100($k0)
/* A78C8 800A6CC8 DF5B0108 */  ld         $k1, 0x108($k0)
/* A78CC 800A6CCC 03600013 */  mtlo       $k1
/* A78D0 800A6CD0 DF5B0110 */  ld         $k1, 0x110($k0)
/* A78D4 800A6CD4 03600011 */  mthi       $k1
/* A78D8 800A6CD8 8F5B011C */  lw         $k1, 0x11c($k0)
/* A78DC 800A6CDC 409B7000 */  mtc0       $k1, $14
/* A78E0 800A6CE0 8F5B0018 */  lw         $k1, 0x18($k0)
/* A78E4 800A6CE4 13600013 */  beqz       $k1, .L800A6D34
/* A78E8 800A6CE8 00000000 */   nop
/* A78EC 800A6CEC 8F5B012C */  lw         $k1, 0x12c($k0)
/* A78F0 800A6CF0 44DBF800 */  ctc1       $k1, $31
/* A78F4 800A6CF4 D7400130 */  ldc1       $f0, 0x130($k0)
/* A78F8 800A6CF8 D7420138 */  ldc1       $f2, 0x138($k0)
/* A78FC 800A6CFC D7440140 */  ldc1       $f4, 0x140($k0)
/* A7900 800A6D00 D7460148 */  ldc1       $f6, 0x148($k0)
/* A7904 800A6D04 D7480150 */  ldc1       $f8, 0x150($k0)
/* A7908 800A6D08 D74A0158 */  ldc1       $f10, 0x158($k0)
/* A790C 800A6D0C D74C0160 */  ldc1       $f12, 0x160($k0)
/* A7910 800A6D10 D74E0168 */  ldc1       $f14, 0x168($k0)
/* A7914 800A6D14 D7500170 */  ldc1       $f16, 0x170($k0)
/* A7918 800A6D18 D7520178 */  ldc1       $f18, 0x178($k0)
/* A791C 800A6D1C D7540180 */  ldc1       $f20, 0x180($k0)
/* A7920 800A6D20 D7560188 */  ldc1       $f22, 0x188($k0)
/* A7924 800A6D24 D7580190 */  ldc1       $f24, 0x190($k0)
/* A7928 800A6D28 D75A0198 */  ldc1       $f26, 0x198($k0)
/* A792C 800A6D2C D75C01A0 */  ldc1       $f28, 0x1a0($k0)
/* A7930 800A6D30 D75E01A8 */  ldc1       $f30, 0x1a8($k0)
.L800A6D34:
/* A7934 800A6D34 8F5B0128 */  lw         $k1, 0x128($k0)
/* A7938 800A6D38 3C1A800F */  lui        $k0, %hi(__OSGlobalIntMask)
/* A793C 800A6D3C 275A9780 */  addiu      $k0, $k0, %lo(__OSGlobalIntMask)
/* A7940 800A6D40 8F5A0000 */  lw         $k0, ($k0)
/* A7944 800A6D44 001AD402 */  srl        $k0, $k0, 0x10
/* A7948 800A6D48 037AD824 */  and        $k1, $k1, $k0
/* A794C 800A6D4C 001BD840 */  sll        $k1, $k1, 1
/* A7950 800A6D50 3C1A800F */  lui        $k0, %hi(__osRcpImTable)
/* A7954 800A6D54 275AE390 */  addiu      $k0, $k0, %lo(__osRcpImTable)
/* A7958 800A6D58 037AD821 */  addu       $k1, $k1, $k0
/* A795C 800A6D5C 977B0000 */  lhu        $k1, ($k1)
/* A7960 800A6D60 3C1AA430 */  lui        $k0, %hi(MI_INTR_MASK)
/* A7964 800A6D64 275A000C */  addiu      $k0, $k0, %lo(MI_INTR_MASK)
/* A7968 800A6D68 AF5B0000 */  sw         $k1, ($k0)
/* A796C 800A6D6C 00000000 */  nop
/* A7970 800A6D70 00000000 */  nop
/* A7974 800A6D74 00000000 */  nop
/* A7978 800A6D78 00000000 */  nop
/* A797C 800A6D7C 42000018 */  eret
/* A7980 800A6D80 00002025 */  or         $a0, $zero, $zero
/* A7984 800A6D84 0C02D504 */  jal        osDestroyThread
/* A7988 800A6D88 00000000 */   nop
/* A798C 800A6D8C 00000000 */  nop

glabel __osSetSR
/* A7990 800A6D90 40846000 */  mtc0       $a0, $12
/* A7994 800A6D94 00000000 */  nop
/* A7998 800A6D98 03E00008 */  jr         $ra
/* A799C 800A6D9C 00000000 */   nop

glabel __osGetSR
/* A79A0 800A6DA0 40026000 */  mfc0       $v0, $12
/* A79A4 800A6DA4 03E00008 */  jr         $ra
/* A79A8 800A6DA8 00000000 */   nop
/* A79AC 800A6DAC 00000000 */  nop