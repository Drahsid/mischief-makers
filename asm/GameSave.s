.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80004E70
/* 5A70 80004E70 00051880 */  sll        $v1, $a1, 2
/* 5A74 80004E74 240E000F */  addiu      $t6, $zero, 0xf
/* 5A78 80004E78 006E7804 */  sllv       $t7, $t6, $v1
/* 5A7C 80004E7C 008FC024 */  and        $t8, $a0, $t7
/* 5A80 80004E80 00781006 */  srlv       $v0, $t8, $v1
/* 5A84 80004E84 3059FFFF */  andi       $t9, $v0, 0xffff
/* 5A88 80004E88 03E00008 */  jr         $ra
/* 5A8C 80004E8C 03201025 */   or        $v0, $t9, $zero

glabel func_80004E90
/* 5A90 80004E90 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5A94 80004E94 AFB20020 */  sw         $s2, 0x20($sp)
/* 5A98 80004E98 AFB1001C */  sw         $s1, 0x1c($sp)
/* 5A9C 80004E9C AFB00018 */  sw         $s0, 0x18($sp)
/* 5AA0 80004EA0 3C12800C */  lui        $s2, %hi(D_800C5010)
/* 5AA4 80004EA4 00808825 */  or         $s1, $a0, $zero
/* 5AA8 80004EA8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 5AAC 80004EAC 26525010 */  addiu      $s2, $s2, %lo(D_800C5010)
/* 5AB0 80004EB0 00008025 */  or         $s0, $zero, $zero
.L80004EB4:
/* 5AB4 80004EB4 02202025 */  or         $a0, $s1, $zero
/* 5AB8 80004EB8 0C00139C */  jal        func_80004E70
/* 5ABC 80004EBC 02002825 */   or        $a1, $s0, $zero
/* 5AC0 80004EC0 02507021 */  addu       $t6, $s2, $s0
/* 5AC4 80004EC4 91CF0000 */  lbu        $t7, ($t6)
/* 5AC8 80004EC8 26100001 */  addiu      $s0, $s0, 1
/* 5ACC 80004ECC 01E2082A */  slt        $at, $t7, $v0
/* 5AD0 80004ED0 10200003 */  beqz       $at, .L80004EE0
/* 5AD4 80004ED4 3218FFFF */   andi      $t8, $s0, 0xffff
/* 5AD8 80004ED8 10000005 */  b          .L80004EF0
/* 5ADC 80004EDC 24020001 */   addiu     $v0, $zero, 1
.L80004EE0:
/* 5AE0 80004EE0 2B010008 */  slti       $at, $t8, 8
/* 5AE4 80004EE4 1420FFF3 */  bnez       $at, .L80004EB4
/* 5AE8 80004EE8 03008025 */   or        $s0, $t8, $zero
/* 5AEC 80004EEC 00001025 */  or         $v0, $zero, $zero
.L80004EF0:
/* 5AF0 80004EF0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 5AF4 80004EF4 8FB00018 */  lw         $s0, 0x18($sp)
/* 5AF8 80004EF8 8FB1001C */  lw         $s1, 0x1c($sp)
/* 5AFC 80004EFC 8FB20020 */  lw         $s2, 0x20($sp)
/* 5B00 80004F00 03E00008 */  jr         $ra
/* 5B04 80004F04 27BD0028 */   addiu     $sp, $sp, 0x28

glabel IsOver999
/* 5B08 80004F08 2C8103E8 */  sltiu      $at, $a0, 0x3e8
/* 5B0C 80004F0C 14200003 */  bnez       $at, .L80004F1C
/* 5B10 80004F10 00001025 */   or        $v0, $zero, $zero
/* 5B14 80004F14 03E00008 */  jr         $ra
/* 5B18 80004F18 24020001 */   addiu     $v0, $zero, 1
.L80004F1C:
/* 5B1C 80004F1C 03E00008 */  jr         $ra
/* 5B20 80004F20 00000000 */   nop

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
/* 5B88 80004F88 0C0013C2 */  jal        IsOver999
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

glabel GameSave_Initialize
/* 5BFC 80004FFC 308E00FF */  andi       $t6, $a0, 0xff
/* 5C00 80005000 000E7880 */  sll        $t7, $t6, 2
/* 5C04 80005004 01EE7823 */  subu       $t7, $t7, $t6
/* 5C08 80005008 000F7880 */  sll        $t7, $t7, 2
/* 5C0C 8000500C 01EE7823 */  subu       $t7, $t7, $t6
/* 5C10 80005010 3C188017 */  lui        $t8, %hi(GameSave_Names)
/* 5C14 80005014 AFA40000 */  sw         $a0, ($sp)
/* 5C18 80005018 27181AA0 */  addiu      $t8, $t8, %lo(GameSave_Names)
/* 5C1C 8000501C 000F7840 */  sll        $t7, $t7, 1
/* 5C20 80005020 3C06800C */  lui        $a2, %hi(D_800C4FA8)
/* 5C24 80005024 01C02025 */  or         $a0, $t6, $zero
/* 5C28 80005028 24C64FA8 */  addiu      $a2, $a2, %lo(D_800C4FA8)
/* 5C2C 8000502C 01F81821 */  addu       $v1, $t7, $t8
/* 5C30 80005030 00001025 */  or         $v0, $zero, $zero
.L80005034:
/* 5C34 80005034 00022840 */  sll        $a1, $v0, 1
/* 5C38 80005038 24420001 */  addiu      $v0, $v0, 1
/* 5C3C 8000503C 00C5C821 */  addu       $t9, $a2, $a1
/* 5C40 80005040 97280000 */  lhu        $t0, ($t9)
/* 5C44 80005044 304AFFFF */  andi       $t2, $v0, 0xffff
/* 5C48 80005048 2941000B */  slti       $at, $t2, 0xb
/* 5C4C 8000504C 00654821 */  addu       $t1, $v1, $a1
/* 5C50 80005050 01401025 */  or         $v0, $t2, $zero
/* 5C54 80005054 1420FFF7 */  bnez       $at, .L80005034
/* 5C58 80005058 A5280000 */   sh        $t0, ($t1)
/* 5C5C 8000505C 3C018017 */  lui        $at, %hi(GameSave_Age)
/* 5C60 80005060 00240821 */  addu       $at, $at, $a0
/* 5C64 80005064 A0201ACC */  sb         $zero, %lo(GameSave_Age)($at)
/* 5C68 80005068 3C018017 */  lui        $at, %hi(GameSave_Sex)
/* 5C6C 8000506C 00240821 */  addu       $at, $at, $a0
/* 5C70 80005070 A0201ACE */  sb         $zero, %lo(GameSave_Sex)($at)
/* 5C74 80005074 3C018017 */  lui        $at, %hi(GameSave_RedGems)
/* 5C78 80005078 00041040 */  sll        $v0, $a0, 1
/* 5C7C 8000507C 00220821 */  addu       $at, $at, $v0
/* 5C80 80005080 240B001E */  addiu      $t3, $zero, 0x1e
/* 5C84 80005084 A42B1AD0 */  sh         $t3, %lo(GameSave_RedGems)($at)
/* 5C88 80005088 3C018017 */  lui        $at, %hi(GameSave_YellowGems)
/* 5C8C 8000508C 00220821 */  addu       $at, $at, $v0
/* 5C90 80005090 A4201AD4 */  sh         $zero, %lo(GameSave_YellowGems)($at)
/* 5C94 80005094 3C018017 */  lui        $at, %hi(D_80171ADC)
/* 5C98 80005098 000470C0 */  sll        $t6, $a0, 3
/* 5C9C 8000509C 002E0821 */  addu       $at, $at, $t6
/* 5CA0 800050A0 240C0000 */  addiu      $t4, $zero, 0
/* 5CA4 800050A4 240D0000 */  addiu      $t5, $zero, 0
/* 5CA8 800050A8 AC2D1ADC */  sw         $t5, %lo(D_80171ADC)($at)
/* 5CAC 800050AC 03E00008 */  jr         $ra
/* 5CB0 800050B0 AC2C1AD8 */   sw        $t4, 0x1ad8($at)

glabel GameSave_SetDefaults
/* 5CB4 800050B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5CB8 800050B8 3C05800C */  lui        $a1, %hi(D_800C4FC0)
/* 5CBC 800050BC 3C038017 */  lui        $v1, %hi(D_80171AE8)
/* 5CC0 800050C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5CC4 800050C4 24631AE8 */  addiu      $v1, $v1, %lo(D_80171AE8)
/* 5CC8 800050C8 24A54FC0 */  addiu      $a1, $a1, %lo(D_800C4FC0)
/* 5CCC 800050CC 00002025 */  or         $a0, $zero, $zero
.L800050D0:
/* 5CD0 800050D0 00041080 */  sll        $v0, $a0, 2
/* 5CD4 800050D4 00A27021 */  addu       $t6, $a1, $v0
/* 5CD8 800050D8 24840001 */  addiu      $a0, $a0, 1
/* 5CDC 800050DC 8DCF0000 */  lw         $t7, ($t6)
/* 5CE0 800050E0 3099FFFF */  andi       $t9, $a0, 0xffff
/* 5CE4 800050E4 2B21000A */  slti       $at, $t9, 0xa
/* 5CE8 800050E8 0062C021 */  addu       $t8, $v1, $v0
/* 5CEC 800050EC 03202025 */  or         $a0, $t9, $zero
/* 5CF0 800050F0 1420FFF7 */  bnez       $at, .L800050D0
/* 5CF4 800050F4 AF0F0000 */   sw        $t7, ($t8)
/* 5CF8 800050F8 3C028017 */  lui        $v0, %hi(gYellowGemBitfeild)
/* 5CFC 800050FC 24421B10 */  addiu      $v0, $v0, %lo(gYellowGemBitfeild)
/* 5D00 80005100 24040000 */  addiu      $a0, $zero, 0
/* 5D04 80005104 24050000 */  addiu      $a1, $zero, 0
/* 5D08 80005108 AC450004 */  sw         $a1, 4($v0)
/* 5D0C 8000510C AC440000 */  sw         $a0, ($v0)
/* 5D10 80005110 24060000 */  addiu      $a2, $zero, 0
/* 5D14 80005114 0C0290D5 */  jal        __ll_lshift
/* 5D18 80005118 24070020 */   addiu     $a3, $zero, 0x20
/* 5D1C 8000511C 3C018017 */  lui        $at, %hi(gYellowGemBitfeild)
/* 5D20 80005120 AC221B10 */  sw         $v0, %lo(gYellowGemBitfeild)($at)
/* 5D24 80005124 AC231B14 */  sw         $v1, 0x1b14($at)
/* 5D28 80005128 240A0000 */  addiu      $t2, $zero, 0
/* 5D2C 8000512C 240B0000 */  addiu      $t3, $zero, 0
/* 5D30 80005130 AC2B1B14 */  sw         $t3, 0x1b14($at)
/* 5D34 80005134 AC2A1B10 */  sw         $t2, 0x1b10($at)
/* 5D38 80005138 3C018017 */  lui        $at, %hi(gWorldProgress)
/* 5D3C 8000513C A0201B18 */  sb         $zero, %lo(gWorldProgress)($at)
/* 5D40 80005140 3C018017 */  lui        $at, %hi(D_80171B19)
/* 5D44 80005144 3C02800C */  lui        $v0, %hi(gTimeRecords)
/* 5D48 80005148 A0201B19 */  sb         $zero, %lo(D_80171B19)($at)
/* 5D4C 8000514C 24424F28 */  addiu      $v0, $v0, %lo(gTimeRecords)
/* 5D50 80005150 34038CA0 */  ori        $v1, $zero, 0x8ca0
/* 5D54 80005154 00002025 */  or         $a0, $zero, $zero
.L80005158:
/* 5D58 80005158 00046040 */  sll        $t4, $a0, 1
/* 5D5C 8000515C 24840001 */  addiu      $a0, $a0, 1
/* 5D60 80005160 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5D64 80005164 29C10040 */  slti       $at, $t6, 0x40
/* 5D68 80005168 004C6821 */  addu       $t5, $v0, $t4
/* 5D6C 8000516C A5A30000 */  sh         $v1, ($t5)
/* 5D70 80005170 1420FFF9 */  bnez       $at, .L80005158
/* 5D74 80005174 01C02025 */   or        $a0, $t6, $zero
/* 5D78 80005178 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5D7C 8000517C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5D80 80005180 03E00008 */  jr         $ra
/* 5D84 80005184 00000000 */   nop

glabel GameSave_CheckAndWipe
/* 5D88 80005188 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 5D8C 8000518C AFBF001C */  sw         $ra, 0x1c($sp)
/* 5D90 80005190 3C048013 */  lui        $a0, %hi(D_8012ADA0)
/* 5D94 80005194 AFB00018 */  sw         $s0, 0x18($sp)
/* 5D98 80005198 0C02917C */  jal        osEepromProbe
/* 5D9C 8000519C 2484ADA0 */   addiu     $a0, $a0, %lo(D_8012ADA0)
/* 5DA0 800051A0 3C048013 */  lui        $a0, %hi(D_8012ADA0)
/* 5DA4 800051A4 27A6002C */  addiu      $a2, $sp, 0x2c
/* 5DA8 800051A8 2484ADA0 */  addiu      $a0, $a0, %lo(D_8012ADA0)
/* 5DAC 800051AC 00002825 */  or         $a1, $zero, $zero
/* 5DB0 800051B0 0C02919C */  jal        osEepromLongRead
/* 5DB4 800051B4 24070008 */   addiu     $a3, $zero, 8
/* 5DB8 800051B8 3C02800C */  lui        $v0, %hi(D_800C4F20)
/* 5DBC 800051BC 27A6002C */  addiu      $a2, $sp, 0x2c
/* 5DC0 800051C0 24424F20 */  addiu      $v0, $v0, %lo(D_800C4F20)
/* 5DC4 800051C4 00001825 */  or         $v1, $zero, $zero
/* 5DC8 800051C8 00004825 */  or         $t1, $zero, $zero
.L800051CC:
/* 5DCC 800051CC 00C37021 */  addu       $t6, $a2, $v1
/* 5DD0 800051D0 0043C021 */  addu       $t8, $v0, $v1
/* 5DD4 800051D4 93190000 */  lbu        $t9, ($t8)
/* 5DD8 800051D8 91CF0000 */  lbu        $t7, ($t6)
/* 5DDC 800051DC 24630001 */  addiu      $v1, $v1, 1
/* 5DE0 800051E0 11F90004 */  beq        $t7, $t9, .L800051F4
/* 5DE4 800051E4 306CFFFF */   andi      $t4, $v1, 0xffff
/* 5DE8 800051E8 25290001 */  addiu      $t1, $t1, 1
/* 5DEC 800051EC 312B00FF */  andi       $t3, $t1, 0xff
/* 5DF0 800051F0 01604825 */  or         $t1, $t3, $zero
.L800051F4:
/* 5DF4 800051F4 29810008 */  slti       $at, $t4, 8
/* 5DF8 800051F8 1420FFF4 */  bnez       $at, .L800051CC
/* 5DFC 800051FC 01801825 */   or        $v1, $t4, $zero
/* 5E00 80005200 11200033 */  beqz       $t1, .L800052D0
/* 5E04 80005204 3C108017 */   lui       $s0, 0x8017
/* 5E08 80005208 0C0013FF */  jal        GameSave_Initialize
/* 5E0C 8000520C 00002025 */   or        $a0, $zero, $zero
/* 5E10 80005210 0C0013FF */  jal        GameSave_Initialize
/* 5E14 80005214 24040001 */   addiu     $a0, $zero, 1
/* 5E18 80005218 3C108017 */  lui        $s0, %hi(GameSave_Names)
/* 5E1C 8000521C 3C048013 */  lui        $a0, %hi(D_8012ADA0)
/* 5E20 80005220 26061AA0 */  addiu      $a2, $s0, %lo(GameSave_Names)
/* 5E24 80005224 2484ADA0 */  addiu      $a0, $a0, %lo(D_8012ADA0)
/* 5E28 80005228 24050002 */  addiu      $a1, $zero, 2
/* 5E2C 8000522C 0C0291F0 */  jal        osEepromLongWrite
/* 5E30 80005230 24070048 */   addiu     $a3, $zero, 0x48
/* 5E34 80005234 0C00142D */  jal        GameSave_SetDefaults
/* 5E38 80005238 00000000 */   nop
/* 5E3C 8000523C 3C048013 */  lui        $a0, %hi(D_8012ADA0)
/* 5E40 80005240 3C068017 */  lui        $a2, %hi(D_80171AE8)
/* 5E44 80005244 24C61AE8 */  addiu      $a2, $a2, %lo(D_80171AE8)
/* 5E48 80005248 2484ADA0 */  addiu      $a0, $a0, %lo(D_8012ADA0)
/* 5E4C 8000524C 2405000C */  addiu      $a1, $zero, 0xc
/* 5E50 80005250 0C0291F0 */  jal        osEepromLongWrite
/* 5E54 80005254 24070032 */   addiu     $a3, $zero, 0x32
/* 5E58 80005258 3C10800C */  lui        $s0, %hi(gTimeRecords)
/* 5E5C 8000525C 26104F28 */  addiu      $s0, $s0, %lo(gTimeRecords)
/* 5E60 80005260 3C048013 */  lui        $a0, %hi(D_8012ADA0)
/* 5E64 80005264 2484ADA0 */  addiu      $a0, $a0, %lo(D_8012ADA0)
/* 5E68 80005268 02003025 */  or         $a2, $s0, $zero
/* 5E6C 8000526C 24050014 */  addiu      $a1, $zero, 0x14
/* 5E70 80005270 0C0291F0 */  jal        osEepromLongWrite
/* 5E74 80005274 24070080 */   addiu     $a3, $zero, 0x80
/* 5E78 80005278 3C048013 */  lui        $a0, %hi(D_8012ADA0)
/* 5E7C 8000527C 3C068017 */  lui        $a2, %hi(D_80171AE8)
/* 5E80 80005280 24C61AE8 */  addiu      $a2, $a2, %lo(D_80171AE8)
/* 5E84 80005284 2484ADA0 */  addiu      $a0, $a0, %lo(D_8012ADA0)
/* 5E88 80005288 24050024 */  addiu      $a1, $zero, 0x24
/* 5E8C 8000528C 0C0291F0 */  jal        osEepromLongWrite
/* 5E90 80005290 24070032 */   addiu     $a3, $zero, 0x32
/* 5E94 80005294 3C048013 */  lui        $a0, %hi(D_8012ADA0)
/* 5E98 80005298 2484ADA0 */  addiu      $a0, $a0, %lo(D_8012ADA0)
/* 5E9C 8000529C 2405002C */  addiu      $a1, $zero, 0x2c
/* 5EA0 800052A0 02003025 */  or         $a2, $s0, $zero
/* 5EA4 800052A4 0C0291F0 */  jal        osEepromLongWrite
/* 5EA8 800052A8 24070080 */   addiu     $a3, $zero, 0x80
/* 5EAC 800052AC 3C048013 */  lui        $a0, %hi(D_8012ADA0)
/* 5EB0 800052B0 3C06800C */  lui        $a2, %hi(D_800C4F20)
/* 5EB4 800052B4 24C64F20 */  addiu      $a2, $a2, %lo(D_800C4F20)
/* 5EB8 800052B8 2484ADA0 */  addiu      $a0, $a0, %lo(D_8012ADA0)
/* 5EBC 800052BC 00002825 */  or         $a1, $zero, $zero
/* 5EC0 800052C0 0C0291F0 */  jal        osEepromLongWrite
/* 5EC4 800052C4 24070008 */   addiu     $a3, $zero, 8
/* 5EC8 800052C8 100000E1 */  b          .L80005650
/* 5ECC 800052CC 8FBF001C */   lw        $ra, 0x1c($sp)
.L800052D0:
/* 5ED0 800052D0 26101AA0 */  addiu      $s0, $s0, 0x1aa0
/* 5ED4 800052D4 3C048013 */  lui        $a0, %hi(D_8012ADA0)
/* 5ED8 800052D8 2484ADA0 */  addiu      $a0, $a0, %lo(D_8012ADA0)
/* 5EDC 800052DC 02003025 */  or         $a2, $s0, $zero
/* 5EE0 800052E0 24050002 */  addiu      $a1, $zero, 2
/* 5EE4 800052E4 24070048 */  addiu      $a3, $zero, 0x48
/* 5EE8 800052E8 00004825 */  or         $t1, $zero, $zero
/* 5EEC 800052EC 0C02919C */  jal        osEepromLongRead
/* 5EF0 800052F0 A3A0002B */   sb        $zero, 0x2b($sp)
/* 5EF4 800052F4 3C048013 */  lui        $a0, %hi(D_8012ADA0)
/* 5EF8 800052F8 3C068017 */  lui        $a2, %hi(D_80171AE8)
/* 5EFC 800052FC 24C61AE8 */  addiu      $a2, $a2, %lo(D_80171AE8)
/* 5F00 80005300 2484ADA0 */  addiu      $a0, $a0, %lo(D_8012ADA0)
/* 5F04 80005304 2405000C */  addiu      $a1, $zero, 0xc
/* 5F08 80005308 0C02919C */  jal        osEepromLongRead
/* 5F0C 8000530C 24070032 */   addiu     $a3, $zero, 0x32
/* 5F10 80005310 93A9002B */  lbu        $t1, 0x2b($sp)
/* 5F14 80005314 00001825 */  or         $v1, $zero, $zero
/* 5F18 80005318 34088FFF */  ori        $t0, $zero, 0x8fff
.L8000531C:
/* 5F1C 8000531C 00036840 */  sll        $t5, $v1, 1
/* 5F20 80005320 020D7021 */  addu       $t6, $s0, $t5
/* 5F24 80005324 95C20000 */  lhu        $v0, ($t6)
/* 5F28 80005328 24630001 */  addiu      $v1, $v1, 1
/* 5F2C 8000532C 10400003 */  beqz       $v0, .L8000533C
/* 5F30 80005330 3078FFFF */   andi      $t8, $v1, 0xffff
/* 5F34 80005334 28410051 */  slti       $at, $v0, 0x51
/* 5F38 80005338 14200005 */  bnez       $at, .L80005350
.L8000533C:
/* 5F3C 8000533C 28410152 */   slti      $at, $v0, 0x152
/* 5F40 80005340 14200005 */  bnez       $at, .L80005358
/* 5F44 80005344 2B01000B */   slti      $at, $t8, 0xb
/* 5F48 80005348 11020003 */  beq        $t0, $v0, .L80005358
/* 5F4C 8000534C 2B01000B */   slti      $at, $t8, 0xb
.L80005350:
/* 5F50 80005350 24090001 */  addiu      $t1, $zero, 1
/* 5F54 80005354 2B01000B */  slti       $at, $t8, 0xb
.L80005358:
/* 5F58 80005358 1420FFF0 */  bnez       $at, .L8000531C
/* 5F5C 8000535C 03001825 */   or        $v1, $t8, $zero
/* 5F60 80005360 00005025 */  or         $t2, $zero, $zero
/* 5F64 80005364 00001825 */  or         $v1, $zero, $zero
.L80005368:
/* 5F68 80005368 00037840 */  sll        $t7, $v1, 1
/* 5F6C 8000536C 020FC821 */  addu       $t9, $s0, $t7
/* 5F70 80005370 972B0000 */  lhu        $t3, ($t9)
/* 5F74 80005374 24630001 */  addiu      $v1, $v1, 1
/* 5F78 80005378 150B0002 */  bne        $t0, $t3, .L80005384
/* 5F7C 8000537C 306CFFFF */   andi      $t4, $v1, 0xffff
/* 5F80 80005380 240A0001 */  addiu      $t2, $zero, 1
.L80005384:
/* 5F84 80005384 2981000B */  slti       $at, $t4, 0xb
/* 5F88 80005388 1420FFF7 */  bnez       $at, .L80005368
/* 5F8C 8000538C 01801825 */   or        $v1, $t4, $zero
/* 5F90 80005390 39220001 */  xori       $v0, $t1, 1
/* 5F94 80005394 1040002B */  beqz       $v0, .L80005444
/* 5F98 80005398 00004825 */   or        $t1, $zero, $zero
/* 5F9C 8000539C 11400029 */  beqz       $t2, .L80005444
/* 5FA0 800053A0 3C0D8017 */   lui       $t5, %hi(GameSave_Age)
/* 5FA4 800053A4 91AD1ACC */  lbu        $t5, %lo(GameSave_Age)($t5)
/* 5FA8 800053A8 3C0E8017 */  lui        $t6, %hi(GameSave_Sex)
/* 5FAC 800053AC 29A10064 */  slti       $at, $t5, 0x64
/* 5FB0 800053B0 10200025 */  beqz       $at, .L80005448
/* 5FB4 800053B4 00002025 */   or        $a0, $zero, $zero
/* 5FB8 800053B8 91CE1ACE */  lbu        $t6, %lo(GameSave_Sex)($t6)
/* 5FBC 800053BC 3C188017 */  lui        $t8, %hi(GameSave_RedGems)
/* 5FC0 800053C0 29C10002 */  slti       $at, $t6, 2
/* 5FC4 800053C4 10200020 */  beqz       $at, .L80005448
/* 5FC8 800053C8 00002025 */   or        $a0, $zero, $zero
/* 5FCC 800053CC 97181AD0 */  lhu        $t8, %lo(GameSave_RedGems)($t8)
/* 5FD0 800053D0 3C0F8017 */  lui        $t7, %hi(GameSave_YellowGems)
/* 5FD4 800053D4 2B012710 */  slti       $at, $t8, 0x2710
/* 5FD8 800053D8 1020001B */  beqz       $at, .L80005448
/* 5FDC 800053DC 00002025 */   or        $a0, $zero, $zero
/* 5FE0 800053E0 95EF1AD4 */  lhu        $t7, %lo(GameSave_YellowGems)($t7)
/* 5FE4 800053E4 00000000 */  nop
/* 5FE8 800053E8 29E10036 */  slti       $at, $t7, 0x36
/* 5FEC 800053EC 10200016 */  beqz       $at, .L80005448
/* 5FF0 800053F0 00002025 */   or        $a0, $zero, $zero
/* 5FF4 800053F4 0C006C91 */  jal        YellowGem_Count
/* 5FF8 800053F8 A3A0002B */   sb        $zero, 0x2b($sp)
/* 5FFC 800053FC 3C198017 */  lui        $t9, %hi(GameSave_YellowGems)
/* 6000 80005400 97391AD4 */  lhu        $t9, %lo(GameSave_YellowGems)($t9)
/* 6004 80005404 93A9002B */  lbu        $t1, 0x2b($sp)
/* 6008 80005408 1459000E */  bne        $v0, $t9, .L80005444
/* 600C 8000540C 3C0C8017 */   lui       $t4, %hi(D_80171AD8)
/* 6010 80005410 8D8C1AD8 */  lw         $t4, %lo(D_80171AD8)($t4)
/* 6014 80005414 3C0D8017 */  lui        $t5, %hi(D_80171ADC)
/* 6018 80005418 8DAD1ADC */  lw         $t5, %lo(D_80171ADC)($t5)
/* 601C 8000541C 15800009 */  bnez       $t4, .L80005444
/* 6020 80005420 3C011EE6 */   lui       $at, 0x1ee6
/* 6024 80005424 34212800 */  ori        $at, $at, 0x2800
/* 6028 80005428 01A1082B */  sltu       $at, $t5, $at
/* 602C 8000542C 10200005 */  beqz       $at, .L80005444
/* 6030 80005430 3C0B8017 */   lui       $t3, %hi(gWorldProgress)
/* 6034 80005434 916B1B18 */  lbu        $t3, %lo(gWorldProgress)($t3)
/* 6038 80005438 00000000 */  nop
/* 603C 8000543C 2961003C */  slti       $at, $t3, 0x3c
/* 6040 80005440 14200014 */  bnez       $at, .L80005494
.L80005444:
/* 6044 80005444 00002025 */   or        $a0, $zero, $zero
.L80005448:
/* 6048 80005448 0C0013FF */  jal        GameSave_Initialize
/* 604C 8000544C A3A9002B */   sb        $t1, 0x2b($sp)
/* 6050 80005450 3C048013 */  lui        $a0, %hi(D_8012ADA0)
/* 6054 80005454 2484ADA0 */  addiu      $a0, $a0, %lo(D_8012ADA0)
/* 6058 80005458 24050002 */  addiu      $a1, $zero, 2
/* 605C 8000545C 02003025 */  or         $a2, $s0, $zero
/* 6060 80005460 0C0291F0 */  jal        osEepromLongWrite
/* 6064 80005464 24070048 */   addiu     $a3, $zero, 0x48
/* 6068 80005468 0C00142D */  jal        GameSave_SetDefaults
/* 606C 8000546C 00000000 */   nop
/* 6070 80005470 3C048013 */  lui        $a0, %hi(D_8012ADA0)
/* 6074 80005474 3C068017 */  lui        $a2, %hi(D_80171AE8)
/* 6078 80005478 24C61AE8 */  addiu      $a2, $a2, %lo(D_80171AE8)
/* 607C 8000547C 2484ADA0 */  addiu      $a0, $a0, %lo(D_8012ADA0)
/* 6080 80005480 2405000C */  addiu      $a1, $zero, 0xc
/* 6084 80005484 0C0291F0 */  jal        osEepromLongWrite
/* 6088 80005488 24070032 */   addiu     $a3, $zero, 0x32
/* 608C 8000548C 93A9002B */  lbu        $t1, 0x2b($sp)
/* 6090 80005490 00000000 */  nop
.L80005494:
/* 6094 80005494 3C048013 */  lui        $a0, %hi(D_8012ADA0)
/* 6098 80005498 2484ADA0 */  addiu      $a0, $a0, %lo(D_8012ADA0)
/* 609C 8000549C 24050002 */  addiu      $a1, $zero, 2
/* 60A0 800054A0 02003025 */  or         $a2, $s0, $zero
/* 60A4 800054A4 24070048 */  addiu      $a3, $zero, 0x48
/* 60A8 800054A8 00005025 */  or         $t2, $zero, $zero
/* 60AC 800054AC A3A9002B */  sb         $t1, 0x2b($sp)
/* 60B0 800054B0 0C02919C */  jal        osEepromLongRead
/* 60B4 800054B4 A3A0002A */   sb        $zero, 0x2a($sp)
/* 60B8 800054B8 3C048013 */  lui        $a0, %hi(D_8012ADA0)
/* 60BC 800054BC 3C068017 */  lui        $a2, %hi(D_80171AE8)
/* 60C0 800054C0 24C61AE8 */  addiu      $a2, $a2, %lo(D_80171AE8)
/* 60C4 800054C4 2484ADA0 */  addiu      $a0, $a0, %lo(D_8012ADA0)
/* 60C8 800054C8 24050024 */  addiu      $a1, $zero, 0x24
/* 60CC 800054CC 0C02919C */  jal        osEepromLongRead
/* 60D0 800054D0 24070032 */   addiu     $a3, $zero, 0x32
/* 60D4 800054D4 93A9002B */  lbu        $t1, 0x2b($sp)
/* 60D8 800054D8 93AA002A */  lbu        $t2, 0x2a($sp)
/* 60DC 800054DC 34088FFF */  ori        $t0, $zero, 0x8fff
/* 60E0 800054E0 00001825 */  or         $v1, $zero, $zero
.L800054E4:
/* 60E4 800054E4 00037040 */  sll        $t6, $v1, 1
/* 60E8 800054E8 020EC021 */  addu       $t8, $s0, $t6
/* 60EC 800054EC 97020016 */  lhu        $v0, 0x16($t8)
/* 60F0 800054F0 24630001 */  addiu      $v1, $v1, 1
/* 60F4 800054F4 10400003 */  beqz       $v0, .L80005504
/* 60F8 800054F8 306FFFFF */   andi      $t7, $v1, 0xffff
/* 60FC 800054FC 28410051 */  slti       $at, $v0, 0x51
/* 6100 80005500 14200005 */  bnez       $at, .L80005518
.L80005504:
/* 6104 80005504 28410152 */   slti      $at, $v0, 0x152
/* 6108 80005508 14200005 */  bnez       $at, .L80005520
/* 610C 8000550C 29E1000B */   slti      $at, $t7, 0xb
/* 6110 80005510 11020003 */  beq        $t0, $v0, .L80005520
/* 6114 80005514 29E1000B */   slti      $at, $t7, 0xb
.L80005518:
/* 6118 80005518 24090001 */  addiu      $t1, $zero, 1
/* 611C 8000551C 29E1000B */  slti       $at, $t7, 0xb
.L80005520:
/* 6120 80005520 1420FFF0 */  bnez       $at, .L800054E4
/* 6124 80005524 01E01825 */   or        $v1, $t7, $zero
/* 6128 80005528 00001825 */  or         $v1, $zero, $zero
.L8000552C:
/* 612C 8000552C 0003C840 */  sll        $t9, $v1, 1
/* 6130 80005530 02196021 */  addu       $t4, $s0, $t9
/* 6134 80005534 958D0016 */  lhu        $t5, 0x16($t4)
/* 6138 80005538 24630001 */  addiu      $v1, $v1, 1
/* 613C 8000553C 150D0002 */  bne        $t0, $t5, .L80005548
/* 6140 80005540 306BFFFF */   andi      $t3, $v1, 0xffff
/* 6144 80005544 240A0001 */  addiu      $t2, $zero, 1
.L80005548:
/* 6148 80005548 2961000B */  slti       $at, $t3, 0xb
/* 614C 8000554C 1420FFF7 */  bnez       $at, .L8000552C
/* 6150 80005550 01601825 */   or        $v1, $t3, $zero
/* 6154 80005554 24010001 */  addiu      $at, $zero, 1
/* 6158 80005558 1121002B */  beq        $t1, $at, .L80005608
/* 615C 8000555C 00000000 */   nop
/* 6160 80005560 11400029 */  beqz       $t2, .L80005608
/* 6164 80005564 3C0E8017 */   lui       $t6, %hi(D_80171ACD)
/* 6168 80005568 91CE1ACD */  lbu        $t6, %lo(D_80171ACD)($t6)
/* 616C 8000556C 3C188017 */  lui        $t8, %hi(D_80171ACF)
/* 6170 80005570 29C10064 */  slti       $at, $t6, 0x64
/* 6174 80005574 10200024 */  beqz       $at, .L80005608
/* 6178 80005578 00000000 */   nop
/* 617C 8000557C 93181ACF */  lbu        $t8, %lo(D_80171ACF)($t8)
/* 6180 80005580 3C0F8017 */  lui        $t7, %hi(D_80171AD2)
/* 6184 80005584 2B010002 */  slti       $at, $t8, 2
/* 6188 80005588 1020001F */  beqz       $at, .L80005608
/* 618C 8000558C 00000000 */   nop
/* 6190 80005590 95EF1AD2 */  lhu        $t7, %lo(D_80171AD2)($t7)
/* 6194 80005594 3C198017 */  lui        $t9, %hi(D_80171AD6)
/* 6198 80005598 29E12710 */  slti       $at, $t7, 0x2710
/* 619C 8000559C 1020001A */  beqz       $at, .L80005608
/* 61A0 800055A0 00000000 */   nop
/* 61A4 800055A4 97391AD6 */  lhu        $t9, %lo(D_80171AD6)($t9)
/* 61A8 800055A8 00000000 */  nop
/* 61AC 800055AC 2B210036 */  slti       $at, $t9, 0x36
/* 61B0 800055B0 10200015 */  beqz       $at, .L80005608
/* 61B4 800055B4 00000000 */   nop
/* 61B8 800055B8 0C006C91 */  jal        YellowGem_Count
/* 61BC 800055BC 00000000 */   nop
/* 61C0 800055C0 3C0C8017 */  lui        $t4, %hi(D_80171AD6)
/* 61C4 800055C4 958C1AD6 */  lhu        $t4, %lo(D_80171AD6)($t4)
/* 61C8 800055C8 3C0E8017 */  lui        $t6, %hi(D_80171AE0)
/* 61CC 800055CC 144C000E */  bne        $v0, $t4, .L80005608
/* 61D0 800055D0 3C0F8017 */   lui       $t7, %hi(D_80171AE4)
/* 61D4 800055D4 8DCE1AE0 */  lw         $t6, %lo(D_80171AE0)($t6)
/* 61D8 800055D8 8DEF1AE4 */  lw         $t7, %lo(D_80171AE4)($t7)
/* 61DC 800055DC 15C0000A */  bnez       $t6, .L80005608
/* 61E0 800055E0 3C011EE6 */   lui       $at, 0x1ee6
/* 61E4 800055E4 34212800 */  ori        $at, $at, 0x2800
/* 61E8 800055E8 01E1082B */  sltu       $at, $t7, $at
/* 61EC 800055EC 10200006 */  beqz       $at, .L80005608
/* 61F0 800055F0 3C0D8017 */   lui       $t5, %hi(gWorldProgress)
/* 61F4 800055F4 91AD1B18 */  lbu        $t5, %lo(gWorldProgress)($t5)
/* 61F8 800055F8 00000000 */  nop
/* 61FC 800055FC 29A1003C */  slti       $at, $t5, 0x3c
/* 6200 80005600 14200013 */  bnez       $at, .L80005650
/* 6204 80005604 8FBF001C */   lw        $ra, 0x1c($sp)
.L80005608:
/* 6208 80005608 0C0013FF */  jal        GameSave_Initialize
/* 620C 8000560C 24040001 */   addiu     $a0, $zero, 1
/* 6210 80005610 3C048013 */  lui        $a0, %hi(D_8012ADA0)
/* 6214 80005614 2484ADA0 */  addiu      $a0, $a0, %lo(D_8012ADA0)
/* 6218 80005618 24050002 */  addiu      $a1, $zero, 2
/* 621C 8000561C 02003025 */  or         $a2, $s0, $zero
/* 6220 80005620 0C0291F0 */  jal        osEepromLongWrite
/* 6224 80005624 24070048 */   addiu     $a3, $zero, 0x48
/* 6228 80005628 0C00142D */  jal        GameSave_SetDefaults
/* 622C 8000562C 00000000 */   nop
/* 6230 80005630 3C048013 */  lui        $a0, %hi(D_8012ADA0)
/* 6234 80005634 3C068017 */  lui        $a2, %hi(D_80171AE8)
/* 6238 80005638 24C61AE8 */  addiu      $a2, $a2, %lo(D_80171AE8)
/* 623C 8000563C 2484ADA0 */  addiu      $a0, $a0, %lo(D_8012ADA0)
/* 6240 80005640 24050024 */  addiu      $a1, $zero, 0x24
/* 6244 80005644 0C0291F0 */  jal        osEepromLongWrite
/* 6248 80005648 24070032 */   addiu     $a3, $zero, 0x32
/* 624C 8000564C 8FBF001C */  lw         $ra, 0x1c($sp)
.L80005650:
/* 6250 80005650 8FB00018 */  lw         $s0, 0x18($sp)
/* 6254 80005654 03E00008 */  jr         $ra
/* 6258 80005658 27BD0038 */   addiu     $sp, $sp, 0x38

glabel GameSave_LoadRecords
/* 625C 8000565C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6260 80005660 AFBF001C */  sw         $ra, 0x1c($sp)
/* 6264 80005664 3C048013 */  lui        $a0, %hi(D_8012ADA0)
/* 6268 80005668 AFB00018 */  sw         $s0, 0x18($sp)
/* 626C 8000566C 0C02917C */  jal        osEepromProbe
/* 6270 80005670 2484ADA0 */   addiu     $a0, $a0, %lo(D_8012ADA0)
/* 6274 80005674 3C0E800C */  lui        $t6, %hi(gSaveSlotIndex)
/* 6278 80005678 91CE5008 */  lbu        $t6, %lo(gSaveSlotIndex)($t6)
/* 627C 8000567C 3C048013 */  lui        $a0, %hi(D_8012ADA0)
/* 6280 80005680 11C00012 */  beqz       $t6, .L800056CC
/* 6284 80005684 2484ADA0 */   addiu     $a0, $a0, %lo(D_8012ADA0)
/* 6288 80005688 3C048013 */  lui        $a0, %hi(D_8012ADA0)
/* 628C 8000568C 3C068017 */  lui        $a2, %hi(D_80171AE8)
/* 6290 80005690 24C61AE8 */  addiu      $a2, $a2, %lo(D_80171AE8)
/* 6294 80005694 2484ADA0 */  addiu      $a0, $a0, %lo(D_8012ADA0)
/* 6298 80005698 24050024 */  addiu      $a1, $zero, 0x24
/* 629C 8000569C 0C02919C */  jal        osEepromLongRead
/* 62A0 800056A0 24070032 */   addiu     $a3, $zero, 0x32
/* 62A4 800056A4 3C10800C */  lui        $s0, %hi(gTimeRecords)
/* 62A8 800056A8 26104F28 */  addiu      $s0, $s0, %lo(gTimeRecords)
/* 62AC 800056AC 3C048013 */  lui        $a0, %hi(D_8012ADA0)
/* 62B0 800056B0 2484ADA0 */  addiu      $a0, $a0, %lo(D_8012ADA0)
/* 62B4 800056B4 02003025 */  or         $a2, $s0, $zero
/* 62B8 800056B8 2405002C */  addiu      $a1, $zero, 0x2c
/* 62BC 800056BC 0C02919C */  jal        osEepromLongRead
/* 62C0 800056C0 24070080 */   addiu     $a3, $zero, 0x80
/* 62C4 800056C4 1000000E */  b          .L80005700
/* 62C8 800056C8 00000000 */   nop
.L800056CC:
/* 62CC 800056CC 3C068017 */  lui        $a2, %hi(D_80171AE8)
/* 62D0 800056D0 24C61AE8 */  addiu      $a2, $a2, %lo(D_80171AE8)
/* 62D4 800056D4 2405000C */  addiu      $a1, $zero, 0xc
/* 62D8 800056D8 0C02919C */  jal        osEepromLongRead
/* 62DC 800056DC 24070032 */   addiu     $a3, $zero, 0x32
/* 62E0 800056E0 3C10800C */  lui        $s0, %hi(gTimeRecords)
/* 62E4 800056E4 26104F28 */  addiu      $s0, $s0, %lo(gTimeRecords)
/* 62E8 800056E8 3C048013 */  lui        $a0, %hi(D_8012ADA0)
/* 62EC 800056EC 2484ADA0 */  addiu      $a0, $a0, %lo(D_8012ADA0)
/* 62F0 800056F0 02003025 */  or         $a2, $s0, $zero
/* 62F4 800056F4 24050014 */  addiu      $a1, $zero, 0x14
/* 62F8 800056F8 0C02919C */  jal        osEepromLongRead
/* 62FC 800056FC 24070080 */   addiu     $a3, $zero, 0x80
.L80005700:
/* 6300 80005700 3C028017 */  lui        $v0, %hi(D_80171B19)
/* 6304 80005704 24421B19 */  addiu      $v0, $v0, %lo(D_80171B19)
/* 6308 80005708 904F0000 */  lbu        $t7, ($v0)
/* 630C 8000570C 00000000 */  nop
/* 6310 80005710 29E10002 */  slti       $at, $t7, 2
/* 6314 80005714 14200002 */  bnez       $at, .L80005720
/* 6318 80005718 00000000 */   nop
/* 631C 8000571C A0400000 */  sb         $zero, ($v0)
.L80005720:
/* 6320 80005720 0C0013C9 */  jal        func_80004F24
/* 6324 80005724 00000000 */   nop
/* 6328 80005728 00001025 */  or         $v0, $zero, $zero
/* 632C 8000572C 34058CA0 */  ori        $a1, $zero, 0x8ca0
/* 6330 80005730 34048CA1 */  ori        $a0, $zero, 0x8ca1
.L80005734:
/* 6334 80005734 0002C040 */  sll        $t8, $v0, 1
/* 6338 80005738 02181821 */  addu       $v1, $s0, $t8
/* 633C 8000573C 94790000 */  lhu        $t9, ($v1)
/* 6340 80005740 24420001 */  addiu      $v0, $v0, 1
/* 6344 80005744 0324082A */  slt        $at, $t9, $a0
/* 6348 80005748 14200002 */  bnez       $at, .L80005754
/* 634C 8000574C 3048FFFF */   andi      $t0, $v0, 0xffff
/* 6350 80005750 A4650000 */  sh         $a1, ($v1)
.L80005754:
/* 6354 80005754 29010040 */  slti       $at, $t0, 0x40
/* 6358 80005758 1420FFF6 */  bnez       $at, .L80005734
/* 635C 8000575C 01001025 */   or        $v0, $t0, $zero
/* 6360 80005760 8FBF001C */  lw         $ra, 0x1c($sp)
/* 6364 80005764 8FB00018 */  lw         $s0, 0x18($sp)
/* 6368 80005768 03E00008 */  jr         $ra
/* 636C 8000576C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80005770
/* 6370 80005770 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6374 80005774 AFB00018 */  sw         $s0, 0x18($sp)
/* 6378 80005778 3C108013 */  lui        $s0, %hi(D_8012ADA0)
/* 637C 8000577C 2610ADA0 */  addiu      $s0, $s0, %lo(D_8012ADA0)
/* 6380 80005780 AFBF001C */  sw         $ra, 0x1c($sp)
/* 6384 80005784 0C02917C */  jal        osEepromProbe
/* 6388 80005788 02002025 */   or        $a0, $s0, $zero
/* 638C 8000578C 3C068017 */  lui        $a2, %hi(GameSave_Names)
/* 6390 80005790 24C61AA0 */  addiu      $a2, $a2, %lo(GameSave_Names)
/* 6394 80005794 02002025 */  or         $a0, $s0, $zero
/* 6398 80005798 24050002 */  addiu      $a1, $zero, 2
/* 639C 8000579C 0C0291F0 */  jal        osEepromLongWrite
/* 63A0 800057A0 24070048 */   addiu     $a3, $zero, 0x48
/* 63A4 800057A4 3C0E800C */  lui        $t6, %hi(gSaveSlotIndex)
/* 63A8 800057A8 91CE5008 */  lbu        $t6, %lo(gSaveSlotIndex)($t6)
/* 63AC 800057AC 02002025 */  or         $a0, $s0, $zero
/* 63B0 800057B0 11C0000F */  beqz       $t6, .L800057F0
/* 63B4 800057B4 2405000C */   addiu     $a1, $zero, 0xc
/* 63B8 800057B8 3C068017 */  lui        $a2, %hi(D_80171AE8)
/* 63BC 800057BC 24C61AE8 */  addiu      $a2, $a2, %lo(D_80171AE8)
/* 63C0 800057C0 02002025 */  or         $a0, $s0, $zero
/* 63C4 800057C4 24050024 */  addiu      $a1, $zero, 0x24
/* 63C8 800057C8 0C0291F0 */  jal        osEepromLongWrite
/* 63CC 800057CC 24070032 */   addiu     $a3, $zero, 0x32
/* 63D0 800057D0 3C06800C */  lui        $a2, %hi(gTimeRecords)
/* 63D4 800057D4 24C64F28 */  addiu      $a2, $a2, %lo(gTimeRecords)
/* 63D8 800057D8 02002025 */  or         $a0, $s0, $zero
/* 63DC 800057DC 2405002C */  addiu      $a1, $zero, 0x2c
/* 63E0 800057E0 0C0291F0 */  jal        osEepromLongWrite
/* 63E4 800057E4 24070080 */   addiu     $a3, $zero, 0x80
/* 63E8 800057E8 1000000C */  b          .L8000581C
/* 63EC 800057EC 8FBF001C */   lw        $ra, 0x1c($sp)
.L800057F0:
/* 63F0 800057F0 3C068017 */  lui        $a2, %hi(D_80171AE8)
/* 63F4 800057F4 24C61AE8 */  addiu      $a2, $a2, %lo(D_80171AE8)
/* 63F8 800057F8 0C0291F0 */  jal        osEepromLongWrite
/* 63FC 800057FC 24070032 */   addiu     $a3, $zero, 0x32
/* 6400 80005800 3C06800C */  lui        $a2, %hi(gTimeRecords)
/* 6404 80005804 24C64F28 */  addiu      $a2, $a2, %lo(gTimeRecords)
/* 6408 80005808 02002025 */  or         $a0, $s0, $zero
/* 640C 8000580C 24050014 */  addiu      $a1, $zero, 0x14
/* 6410 80005810 0C0291F0 */  jal        osEepromLongWrite
/* 6414 80005814 24070080 */   addiu     $a3, $zero, 0x80
/* 6418 80005818 8FBF001C */  lw         $ra, 0x1c($sp)
.L8000581C:
/* 641C 8000581C 8FB00018 */  lw         $s0, 0x18($sp)
/* 6420 80005820 03E00008 */  jr         $ra
/* 6424 80005824 27BD0020 */   addiu     $sp, $sp, 0x20

glabel GameSave_Erase
/* 6428 80005828 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 642C 8000582C 3C04800C */  lui        $a0, %hi(gSaveSlotIndex)
/* 6430 80005830 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6434 80005834 90845008 */  lbu        $a0, %lo(gSaveSlotIndex)($a0)
/* 6438 80005838 0C0013FF */  jal        GameSave_Initialize
/* 643C 8000583C 00000000 */   nop
/* 6440 80005840 0C00142D */  jal        GameSave_SetDefaults
/* 6444 80005844 00000000 */   nop
/* 6448 80005848 0C0015DC */  jal        func_80005770
/* 644C 8000584C 00000000 */   nop
/* 6450 80005850 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6454 80005854 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6458 80005858 03E00008 */  jr         $ra
/* 645C 8000585C 00000000 */   nop

glabel func_80005860
/* 6460 80005860 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6464 80005864 AFA50024 */  sw         $a1, 0x24($sp)
/* 6468 80005868 AFA60028 */  sw         $a2, 0x28($sp)
/* 646C 8000586C AFA40020 */  sw         $a0, 0x20($sp)
/* 6470 80005870 AFA7002C */  sw         $a3, 0x2c($sp)
/* 6474 80005874 97A7002A */  lhu        $a3, 0x2a($sp)
/* 6478 80005878 97A60026 */  lhu        $a2, 0x26($sp)
/* 647C 8000587C AFBF001C */  sw         $ra, 0x1c($sp)
/* 6480 80005880 97A40022 */  lhu        $a0, 0x22($sp)
/* 6484 80005884 3C05800E */  lui        $a1, %hi(D_800E13DC)
/* 6488 80005888 24A513DC */  addiu      $a1, $a1, %lo(D_800E13DC)
/* 648C 8000588C 0C009D44 */  jal        func_80027510
/* 6490 80005890 AFA00010 */   sw        $zero, 0x10($sp)
/* 6494 80005894 97AE0022 */  lhu        $t6, 0x22($sp)
/* 6498 80005898 3C18800F */  lui        $t8, 0x800f
/* 649C 8000589C 000E7880 */  sll        $t7, $t6, 2
/* 64A0 800058A0 01EE7823 */  subu       $t7, $t7, $t6
/* 64A4 800058A4 000F7880 */  sll        $t7, $t7, 2
/* 64A8 800058A8 01EE7821 */  addu       $t7, $t7, $t6
/* 64AC 800058AC 000F7880 */  sll        $t7, $t7, 2
/* 64B0 800058B0 01EE7823 */  subu       $t7, $t7, $t6
/* 64B4 800058B4 000F78C0 */  sll        $t7, $t7, 3
/* 64B8 800058B8 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 64BC 800058BC 01F81021 */  addu       $v0, $t7, $t8
/* 64C0 800058C0 94590094 */  lhu        $t9, 0x94($v0)
/* 64C4 800058C4 8FA9002C */  lw         $t1, 0x2c($sp)
/* 64C8 800058C8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 64CC 800058CC 37280200 */  ori        $t0, $t9, 0x200
/* 64D0 800058D0 A4480094 */  sh         $t0, 0x94($v0)
/* 64D4 800058D4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 64D8 800058D8 03E00008 */  jr         $ra
/* 64DC 800058DC AC49018C */   sw        $t1, 0x18c($v0)

glabel func_800058E0
/* 64E0 800058E0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 64E4 800058E4 AFA70034 */  sw         $a3, 0x34($sp)
/* 64E8 800058E8 97AE0036 */  lhu        $t6, 0x36($sp)
/* 64EC 800058EC 3C188017 */  lui        $t8, %hi(GameSave_RedGems)
/* 64F0 800058F0 27181AD0 */  addiu      $t8, $t8, %lo(GameSave_RedGems)
/* 64F4 800058F4 000E7840 */  sll        $t7, $t6, 1
/* 64F8 800058F8 AFA5002C */  sw         $a1, 0x2c($sp)
/* 64FC 800058FC 01F81021 */  addu       $v0, $t7, $t8
/* 6500 80005900 94450000 */  lhu        $a1, ($v0)
/* 6504 80005904 24010064 */  addiu      $at, $zero, 0x64
/* 6508 80005908 00A1001A */  div        $zero, $a1, $at
/* 650C 8000590C AFA60030 */  sw         $a2, 0x30($sp)
/* 6510 80005910 8FA90038 */  lw         $t1, 0x38($sp)
/* 6514 80005914 AFA40028 */  sw         $a0, 0x28($sp)
/* 6518 80005918 AFBF001C */  sw         $ra, 0x1c($sp)
/* 651C 8000591C 97A4002A */  lhu        $a0, 0x2a($sp)
/* 6520 80005920 97A70032 */  lhu        $a3, 0x32($sp)
/* 6524 80005924 97A6002E */  lhu        $a2, 0x2e($sp)
/* 6528 80005928 AFA20020 */  sw         $v0, 0x20($sp)
/* 652C 8000592C AFA00010 */  sw         $zero, 0x10($sp)
/* 6530 80005930 AFA90014 */  sw         $t1, 0x14($sp)
/* 6534 80005934 0000C812 */  mflo       $t9
/* 6538 80005938 3325FFFF */  andi       $a1, $t9, 0xffff
/* 653C 8000593C 0C009E00 */  jal        func_80027800
/* 6540 80005940 00000000 */   nop
/* 6544 80005944 8FA20020 */  lw         $v0, 0x20($sp)
/* 6548 80005948 24010064 */  addiu      $at, $zero, 0x64
/* 654C 8000594C 94450000 */  lhu        $a1, ($v0)
/* 6550 80005950 97A4002A */  lhu        $a0, 0x2a($sp)
/* 6554 80005954 00A1001A */  div        $zero, $a1, $at
/* 6558 80005958 97A6002E */  lhu        $a2, 0x2e($sp)
/* 655C 8000595C 8FAE0038 */  lw         $t6, 0x38($sp)
/* 6560 80005960 24840002 */  addiu      $a0, $a0, 2
/* 6564 80005964 24C60012 */  addiu      $a2, $a2, 0x12
/* 6568 80005968 30CDFFFF */  andi       $t5, $a2, 0xffff
/* 656C 8000596C 308AFFFF */  andi       $t2, $a0, 0xffff
/* 6570 80005970 97A70032 */  lhu        $a3, 0x32($sp)
/* 6574 80005974 01402025 */  or         $a0, $t2, $zero
/* 6578 80005978 01A03025 */  or         $a2, $t5, $zero
/* 657C 8000597C AFA00010 */  sw         $zero, 0x10($sp)
/* 6580 80005980 AFAE0014 */  sw         $t6, 0x14($sp)
/* 6584 80005984 00005810 */  mfhi       $t3
/* 6588 80005988 3165FFFF */  andi       $a1, $t3, 0xffff
/* 658C 8000598C 0C009E00 */  jal        func_80027800
/* 6590 80005990 00000000 */   nop
/* 6594 80005994 8FBF001C */  lw         $ra, 0x1c($sp)
/* 6598 80005998 27BD0028 */  addiu      $sp, $sp, 0x28
/* 659C 8000599C 03E00008 */  jr         $ra
/* 65A0 800059A0 00000000 */   nop

glabel func_800059A4
/* 65A4 800059A4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 65A8 800059A8 AFB00020 */  sw         $s0, 0x20($sp)
/* 65AC 800059AC 30F0FFFF */  andi       $s0, $a3, 0xffff
/* 65B0 800059B0 AFA40030 */  sw         $a0, 0x30($sp)
/* 65B4 800059B4 AFA50034 */  sw         $a1, 0x34($sp)
/* 65B8 800059B8 001070C0 */  sll        $t6, $s0, 3
/* 65BC 800059BC 3C058017 */  lui        $a1, 0x8017
/* 65C0 800059C0 3C048017 */  lui        $a0, 0x8017
/* 65C4 800059C4 008E2021 */  addu       $a0, $a0, $t6
/* 65C8 800059C8 00AE2821 */  addu       $a1, $a1, $t6
/* 65CC 800059CC AFBF002C */  sw         $ra, 0x2c($sp)
/* 65D0 800059D0 AFA60038 */  sw         $a2, 0x38($sp)
/* 65D4 800059D4 AFA7003C */  sw         $a3, 0x3c($sp)
/* 65D8 800059D8 8CA51ADC */  lw         $a1, 0x1adc($a1)
/* 65DC 800059DC 8C841AD8 */  lw         $a0, 0x1ad8($a0)
/* 65E0 800059E0 AFB20028 */  sw         $s2, 0x28($sp)
/* 65E4 800059E4 AFB10024 */  sw         $s1, 0x24($sp)
/* 65E8 800059E8 2407003C */  addiu      $a3, $zero, 0x3c
/* 65EC 800059EC 0C0290C2 */  jal        __ull_div
/* 65F0 800059F0 24060000 */   addiu     $a2, $zero, 0
/* 65F4 800059F4 3C050083 */  lui        $a1, 0x83
/* 65F8 800059F8 34A5D5FF */  ori        $a1, $a1, 0xd5ff
/* 65FC 800059FC 0065082B */  sltu       $at, $v1, $a1
/* 6600 80005A00 14200002 */  bnez       $at, .L80005A0C
/* 6604 80005A04 00609025 */   or        $s2, $v1, $zero
/* 6608 80005A08 00A09025 */  or         $s2, $a1, $zero
.L80005A0C:
/* 660C 80005A0C 3C010001 */  lui        $at, 1
/* 6610 80005A10 34215180 */  ori        $at, $at, 0x5180
/* 6614 80005A14 0241001B */  divu       $zero, $s2, $at
/* 6618 80005A18 97B00032 */  lhu        $s0, 0x32($sp)
/* 661C 80005A1C 97B10036 */  lhu        $s1, 0x36($sp)
/* 6620 80005A20 3C18800D */  lui        $t8, %hi(D_800D1798)
/* 6624 80005A24 27181798 */  addiu      $t8, $t8, %lo(D_800D1798)
/* 6628 80005A28 97A7003A */  lhu        $a3, 0x3a($sp)
/* 662C 80005A2C AFB80014 */  sw         $t8, 0x14($sp)
/* 6630 80005A30 AFA00010 */  sw         $zero, 0x10($sp)
/* 6634 80005A34 02002025 */  or         $a0, $s0, $zero
/* 6638 80005A38 02203025 */  or         $a2, $s1, $zero
/* 663C 80005A3C 00002812 */  mflo       $a1
/* 6640 80005A40 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 6644 80005A44 0C009E00 */  jal        func_80027800
/* 6648 80005A48 01E02825 */   or        $a1, $t7, $zero
/* 664C 80005A4C 3C010001 */  lui        $at, 1
/* 6650 80005A50 34215180 */  ori        $at, $at, 0x5180
/* 6654 80005A54 0241001B */  divu       $zero, $s2, $at
/* 6658 80005A58 24010E10 */  addiu      $at, $zero, 0xe10
/* 665C 80005A5C 26040004 */  addiu      $a0, $s0, 4
/* 6660 80005A60 26260030 */  addiu      $a2, $s1, 0x30
/* 6664 80005A64 3C0B800D */  lui        $t3, %hi(D_800D1798)
/* 6668 80005A68 256B1798 */  addiu      $t3, $t3, %lo(D_800D1798)
/* 666C 80005A6C 30CAFFFF */  andi       $t2, $a2, 0xffff
/* 6670 80005A70 3099FFFF */  andi       $t9, $a0, 0xffff
/* 6674 80005A74 97A7003A */  lhu        $a3, 0x3a($sp)
/* 6678 80005A78 03202025 */  or         $a0, $t9, $zero
/* 667C 80005A7C 01403025 */  or         $a2, $t2, $zero
/* 6680 80005A80 AFAB0014 */  sw         $t3, 0x14($sp)
/* 6684 80005A84 AFA00010 */  sw         $zero, 0x10($sp)
/* 6688 80005A88 00002810 */  mfhi       $a1
/* 668C 80005A8C 00000000 */  nop
/* 6690 80005A90 00000000 */  nop
/* 6694 80005A94 00A1001B */  divu       $zero, $a1, $at
/* 6698 80005A98 00004012 */  mflo       $t0
/* 669C 80005A9C 3105FFFF */  andi       $a1, $t0, 0xffff
/* 66A0 80005AA0 0C009E00 */  jal        func_80027800
/* 66A4 80005AA4 00000000 */   nop
/* 66A8 80005AA8 24010E10 */  addiu      $at, $zero, 0xe10
/* 66AC 80005AAC 0241001B */  divu       $zero, $s2, $at
/* 66B0 80005AB0 2401003C */  addiu      $at, $zero, 0x3c
/* 66B4 80005AB4 26040008 */  addiu      $a0, $s0, 8
/* 66B8 80005AB8 26260060 */  addiu      $a2, $s1, 0x60
/* 66BC 80005ABC 3C18800D */  lui        $t8, %hi(D_800D1798)
/* 66C0 80005AC0 27181798 */  addiu      $t8, $t8, %lo(D_800D1798)
/* 66C4 80005AC4 30CFFFFF */  andi       $t7, $a2, 0xffff
/* 66C8 80005AC8 308CFFFF */  andi       $t4, $a0, 0xffff
/* 66CC 80005ACC 97A7003A */  lhu        $a3, 0x3a($sp)
/* 66D0 80005AD0 01802025 */  or         $a0, $t4, $zero
/* 66D4 80005AD4 01E03025 */  or         $a2, $t7, $zero
/* 66D8 80005AD8 AFB80014 */  sw         $t8, 0x14($sp)
/* 66DC 80005ADC AFA00010 */  sw         $zero, 0x10($sp)
/* 66E0 80005AE0 00002810 */  mfhi       $a1
/* 66E4 80005AE4 00000000 */  nop
/* 66E8 80005AE8 00000000 */  nop
/* 66EC 80005AEC 00A1001B */  divu       $zero, $a1, $at
/* 66F0 80005AF0 00006812 */  mflo       $t5
/* 66F4 80005AF4 31A5FFFF */  andi       $a1, $t5, 0xffff
/* 66F8 80005AF8 0C009E00 */  jal        func_80027800
/* 66FC 80005AFC 00000000 */   nop
/* 6700 80005B00 2401003C */  addiu      $at, $zero, 0x3c
/* 6704 80005B04 0241001B */  divu       $zero, $s2, $at
/* 6708 80005B08 2604000B */  addiu      $a0, $s0, 0xb
/* 670C 80005B0C 26260090 */  addiu      $a2, $s1, 0x90
/* 6710 80005B10 3C0A800D */  lui        $t2, %hi(D_800D1798)
/* 6714 80005B14 254A1798 */  addiu      $t2, $t2, %lo(D_800D1798)
/* 6718 80005B18 30C9FFFF */  andi       $t1, $a2, 0xffff
/* 671C 80005B1C 3099FFFF */  andi       $t9, $a0, 0xffff
/* 6720 80005B20 97A7003A */  lhu        $a3, 0x3a($sp)
/* 6724 80005B24 03202025 */  or         $a0, $t9, $zero
/* 6728 80005B28 01203025 */  or         $a2, $t1, $zero
/* 672C 80005B2C AFAA0014 */  sw         $t2, 0x14($sp)
/* 6730 80005B30 AFA00010 */  sw         $zero, 0x10($sp)
/* 6734 80005B34 00002810 */  mfhi       $a1
/* 6738 80005B38 30A8FFFF */  andi       $t0, $a1, 0xffff
/* 673C 80005B3C 0C009E00 */  jal        func_80027800
/* 6740 80005B40 01002825 */   or        $a1, $t0, $zero
/* 6744 80005B44 2602000E */  addiu      $v0, $s0, 0xe
/* 6748 80005B48 8FBF002C */  lw         $ra, 0x2c($sp)
/* 674C 80005B4C 304BFFFF */  andi       $t3, $v0, 0xffff
/* 6750 80005B50 8FB00020 */  lw         $s0, 0x20($sp)
/* 6754 80005B54 8FB10024 */  lw         $s1, 0x24($sp)
/* 6758 80005B58 8FB20028 */  lw         $s2, 0x28($sp)
/* 675C 80005B5C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 6760 80005B60 03E00008 */  jr         $ra
/* 6764 80005B64 01601025 */   or        $v0, $t3, $zero

glabel func_80005B68
/* 6768 80005B68 3C028010 */  lui        $v0, %hi(nameEntryLanguage)
/* 676C 80005B6C 90421C88 */  lbu        $v0, %lo(nameEntryLanguage)($v0)
/* 6770 80005B70 AFA40000 */  sw         $a0, ($sp)
/* 6774 80005B74 308E00FF */  andi       $t6, $a0, 0xff
/* 6778 80005B78 AFA50004 */  sw         $a1, 4($sp)
/* 677C 80005B7C 30AF00FF */  andi       $t7, $a1, 0xff
/* 6780 80005B80 01E02825 */  or         $a1, $t7, $zero
/* 6784 80005B84 10400008 */  beqz       $v0, .L80005BA8
/* 6788 80005B88 01C02025 */   or        $a0, $t6, $zero
/* 678C 80005B8C 24010001 */  addiu      $at, $zero, 1
/* 6790 80005B90 1041000C */  beq        $v0, $at, .L80005BC4
/* 6794 80005B94 24010002 */   addiu     $at, $zero, 2
/* 6798 80005B98 10410022 */  beq        $v0, $at, .L80005C24
/* 679C 80005B9C 2401000D */   addiu     $at, $zero, 0xd
/* 67A0 80005BA0 03E00008 */  jr         $ra
/* 67A4 80005BA4 00000000 */   nop
.L80005BA8:
/* 67A8 80005BA8 24010010 */  addiu      $at, $zero, 0x10
/* 67AC 80005BAC 14810005 */  bne        $a0, $at, .L80005BC4
/* 67B0 80005BB0 24010003 */   addiu     $at, $zero, 3
/* 67B4 80005BB4 14A10004 */  bne        $a1, $at, .L80005BC8
/* 67B8 80005BB8 24030007 */   addiu     $v1, $zero, 7
/* 67BC 80005BBC 03E00008 */  jr         $ra
/* 67C0 80005BC0 24020001 */   addiu     $v0, $zero, 1
.L80005BC4:
/* 67C4 80005BC4 24030007 */  addiu      $v1, $zero, 7
.L80005BC8:
/* 67C8 80005BC8 14640006 */  bne        $v1, $a0, .L80005BE4
/* 67CC 80005BCC 00801025 */   or        $v0, $a0, $zero
/* 67D0 80005BD0 24010001 */  addiu      $at, $zero, 1
/* 67D4 80005BD4 14A10003 */  bne        $a1, $at, .L80005BE4
/* 67D8 80005BD8 00000000 */   nop
/* 67DC 80005BDC 03E00008 */  jr         $ra
/* 67E0 80005BE0 24020001 */   addiu     $v0, $zero, 1
.L80005BE4:
/* 67E4 80005BE4 14620005 */  bne        $v1, $v0, .L80005BFC
/* 67E8 80005BE8 24010003 */   addiu     $at, $zero, 3
/* 67EC 80005BEC 14A10004 */  bne        $a1, $at, .L80005C00
/* 67F0 80005BF0 24010009 */   addiu     $at, $zero, 9
/* 67F4 80005BF4 03E00008 */  jr         $ra
/* 67F8 80005BF8 24020001 */   addiu     $v0, $zero, 1
.L80005BFC:
/* 67FC 80005BFC 24010009 */  addiu      $at, $zero, 9
.L80005C00:
/* 6800 80005C00 14410005 */  bne        $v0, $at, .L80005C18
/* 6804 80005C04 24010003 */   addiu     $at, $zero, 3
/* 6808 80005C08 14A10003 */  bne        $a1, $at, .L80005C18
/* 680C 80005C0C 00000000 */   nop
/* 6810 80005C10 03E00008 */  jr         $ra
/* 6814 80005C14 24020001 */   addiu     $v0, $zero, 1
.L80005C18:
/* 6818 80005C18 03E00008 */  jr         $ra
/* 681C 80005C1C 00001025 */   or        $v0, $zero, $zero
/* 6820 80005C20 2401000D */  addiu      $at, $zero, 0xd
.L80005C24:
/* 6824 80005C24 14810003 */  bne        $a0, $at, .L80005C34
/* 6828 80005C28 00001025 */   or        $v0, $zero, $zero
/* 682C 80005C2C 03E00008 */  jr         $ra
/* 6830 80005C30 24020001 */   addiu     $v0, $zero, 1
.L80005C34:
/* 6834 80005C34 03E00008 */  jr         $ra
/* 6838 80005C38 00000000 */   nop

glabel func_80005C3C
/* 683C 80005C3C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6840 80005C40 000E7880 */  sll        $t7, $t6, 2
/* 6844 80005C44 01EE7823 */  subu       $t7, $t7, $t6
/* 6848 80005C48 000F7880 */  sll        $t7, $t7, 2
/* 684C 80005C4C 01EE7821 */  addu       $t7, $t7, $t6
/* 6850 80005C50 000F7880 */  sll        $t7, $t7, 2
/* 6854 80005C54 01EE7823 */  subu       $t7, $t7, $t6
/* 6858 80005C58 3C18800F */  lui        $t8, %hi(gActors)
/* 685C 80005C5C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 6860 80005C60 000F78C0 */  sll        $t7, $t7, 3
/* 6864 80005C64 01F81821 */  addu       $v1, $t7, $t8
/* 6868 80005C68 946500D0 */  lhu        $a1, 0xd0($v1)
/* 686C 80005C6C AFA40000 */  sw         $a0, ($sp)
/* 6870 80005C70 01C02025 */  or         $a0, $t6, $zero
/* 6874 80005C74 10A00008 */  beqz       $a1, .L80005C98
/* 6878 80005C78 00A01025 */   or        $v0, $a1, $zero
/* 687C 80005C7C 24060001 */  addiu      $a2, $zero, 1
/* 6880 80005C80 1046001C */  beq        $v0, $a2, .L80005CF4
/* 6884 80005C84 24010002 */   addiu     $at, $zero, 2
/* 6888 80005C88 104100FA */  beq        $v0, $at, .L80006074
/* 688C 80005C8C 00000000 */   nop
/* 6890 80005C90 03E00008 */  jr         $ra
/* 6894 80005C94 00000000 */   nop
.L80005C98:
/* 6898 80005C98 24190010 */  addiu      $t9, $zero, 0x10
/* 689C 80005C9C AC790154 */  sw         $t9, 0x154($v1)
/* 68A0 80005CA0 3C088010 */  lui        $t0, %hi(D_80101958)
/* 68A4 80005CA4 91081958 */  lbu        $t0, %lo(D_80101958)($t0)
/* 68A8 80005CA8 846B0088 */  lh         $t3, 0x88($v1)
/* 68AC 80005CAC 00884823 */  subu       $t1, $a0, $t0
/* 68B0 80005CB0 00095100 */  sll        $t2, $t1, 4
/* 68B4 80005CB4 3C01FFFB */  lui        $at, 0xfffb
/* 68B8 80005CB8 014B6023 */  subu       $t4, $t2, $t3
/* 68BC 80005CBC 846F008C */  lh         $t7, 0x8c($v1)
/* 68C0 80005CC0 000C6B00 */  sll        $t5, $t4, 0xc
/* 68C4 80005CC4 34218000 */  ori        $at, $at, 0x8000
/* 68C8 80005CC8 01A17021 */  addu       $t6, $t5, $at
/* 68CC 80005CCC 3C01FFFC */  lui        $at, 0xfffc
/* 68D0 80005CD0 000FC023 */  negu       $t8, $t7
/* 68D4 80005CD4 0018CB00 */  sll        $t9, $t8, 0xc
/* 68D8 80005CD8 3421C000 */  ori        $at, $at, 0xc000
/* 68DC 80005CDC 03214021 */  addu       $t0, $t9, $at
/* 68E0 80005CE0 24A90001 */  addiu      $t1, $a1, 1
/* 68E4 80005CE4 AC6E00EC */  sw         $t6, 0xec($v1)
/* 68E8 80005CE8 AC6800F0 */  sw         $t0, 0xf0($v1)
/* 68EC 80005CEC 03E00008 */  jr         $ra
/* 68F0 80005CF0 A46900D0 */   sh        $t1, 0xd0($v1)
.L80005CF4:
/* 68F4 80005CF4 8C650154 */  lw         $a1, 0x154($v1)
/* 68F8 80005CF8 3C0B8010 */  lui        $t3, %hi(D_80101958)
/* 68FC 80005CFC 2CA20001 */  sltiu      $v0, $a1, 1
/* 6900 80005D00 24AAFFFF */  addiu      $t2, $a1, -1
/* 6904 80005D04 1040000E */  beqz       $v0, .L80005D40
/* 6908 80005D08 AC6A0154 */   sw        $t2, 0x154($v1)
/* 690C 80005D0C 916B1958 */  lbu        $t3, %lo(D_80101958)($t3)
/* 6910 80005D10 947800D0 */  lhu        $t8, 0xd0($v1)
/* 6914 80005D14 008B6023 */  subu       $t4, $a0, $t3
/* 6918 80005D18 000C6900 */  sll        $t5, $t4, 4
/* 691C 80005D1C 25AEFFB8 */  addiu      $t6, $t5, -0x48
/* 6920 80005D20 240FFFCC */  addiu      $t7, $zero, -0x34
/* 6924 80005D24 27190001 */  addiu      $t9, $t8, 1
/* 6928 80005D28 A46E0088 */  sh         $t6, 0x88($v1)
/* 692C 80005D2C A46F008C */  sh         $t7, 0x8c($v1)
/* 6930 80005D30 AC6000EC */  sw         $zero, 0xec($v1)
/* 6934 80005D34 AC6000F0 */  sw         $zero, 0xf0($v1)
/* 6938 80005D38 03E00008 */  jr         $ra
/* 693C 80005D3C A47900D0 */   sh        $t9, 0xd0($v1)
.L80005D40:
/* 6940 80005D40 8C680088 */  lw         $t0, 0x88($v1)
/* 6944 80005D44 8C6900EC */  lw         $t1, 0xec($v1)
/* 6948 80005D48 8C6B008C */  lw         $t3, 0x8c($v1)
/* 694C 80005D4C 8C6C00F0 */  lw         $t4, 0xf0($v1)
/* 6950 80005D50 01095021 */  addu       $t2, $t0, $t1
/* 6954 80005D54 016C6821 */  addu       $t5, $t3, $t4
/* 6958 80005D58 AC6A0088 */  sw         $t2, 0x88($v1)
/* 695C 80005D5C AC6D008C */  sw         $t5, 0x8c($v1)
/* 6960 80005D60 04810004 */  bgez       $a0, .L80005D74
/* 6964 80005D64 30820003 */   andi      $v0, $a0, 3
/* 6968 80005D68 10400002 */  beqz       $v0, .L80005D74
/* 696C 80005D6C 00000000 */   nop
/* 6970 80005D70 2442FFFC */  addiu      $v0, $v0, -4
.L80005D74:
/* 6974 80005D74 1040000B */  beqz       $v0, .L80005DA4
/* 6978 80005D78 3C04800C */   lui       $a0, 0x800c
/* 697C 80005D7C 10460035 */  beq        $v0, $a2, .L80005E54
/* 6980 80005D80 3C04800C */   lui       $a0, 0x800c
/* 6984 80005D84 24010002 */  addiu      $at, $zero, 2
/* 6988 80005D88 10410060 */  beq        $v0, $at, .L80005F0C
/* 698C 80005D8C 3C04800C */   lui       $a0, 0x800c
/* 6990 80005D90 24010003 */  addiu      $at, $zero, 3
/* 6994 80005D94 10410089 */  beq        $v0, $at, .L80005FBC
/* 6998 80005D98 3C04800C */   lui       $a0, %hi(D_800BCCD0)
/* 699C 80005D9C 03E00008 */  jr         $ra
/* 69A0 80005DA0 00000000 */   nop
.L80005DA4:
/* 69A4 80005DA4 8C620154 */  lw         $v0, 0x154($v1)
/* 69A8 80005DA8 2484CCD0 */  addiu      $a0, $a0, %lo(D_800BCCD0)
/* 69AC 80005DAC 00027180 */  sll        $t6, $v0, 6
/* 69B0 80005DB0 31D803FF */  andi       $t8, $t6, 0x3ff
/* 69B4 80005DB4 0018C880 */  sll        $t9, $t8, 2
/* 69B8 80005DB8 8C6F0088 */  lw         $t7, 0x88($v1)
/* 69BC 80005DBC 3C014980 */  lui        $at, 0x4980
/* 69C0 80005DC0 00994021 */  addu       $t0, $a0, $t9
/* 69C4 80005DC4 44810000 */  mtc1       $at, $f0
/* 69C8 80005DC8 C5080000 */  lwc1       $f8, ($t0)
/* 69CC 80005DCC 448F2000 */  mtc1       $t7, $f4
/* 69D0 80005DD0 46004282 */  mul.s      $f10, $f8, $f0
/* 69D4 80005DD4 25CCFF00 */  addiu      $t4, $t6, -0x100
/* 69D8 80005DD8 318D03FF */  andi       $t5, $t4, 0x3ff
/* 69DC 80005DDC 000D7080 */  sll        $t6, $t5, 2
/* 69E0 80005DE0 468021A0 */  cvt.s.w    $f6, $f4
/* 69E4 80005DE4 8C6B008C */  lw         $t3, 0x8c($v1)
/* 69E8 80005DE8 008E7821 */  addu       $t7, $a0, $t6
/* 69EC 80005DEC 460A3400 */  add.s      $f16, $f6, $f10
/* 69F0 80005DF0 C5E60000 */  lwc1       $f6, ($t7)
/* 69F4 80005DF4 4449F800 */  cfc1       $t1, $31
/* 69F8 80005DF8 448B2000 */  mtc1       $t3, $f4
/* 69FC 80005DFC 35210003 */  ori        $at, $t1, 3
/* 6A00 80005E00 38210002 */  xori       $at, $at, 2
/* 6A04 80005E04 44C1F800 */  ctc1       $at, $31
/* 6A08 80005E08 00000000 */  nop
/* 6A0C 80005E0C 460084A4 */  cvt.w.s    $f18, $f16
/* 6A10 80005E10 44C9F800 */  ctc1       $t1, $31
/* 6A14 80005E14 440A9000 */  mfc1       $t2, $f18
/* 6A18 80005E18 46003282 */  mul.s      $f10, $f6, $f0
/* 6A1C 80005E1C AC6A0088 */  sw         $t2, 0x88($v1)
/* 6A20 80005E20 46802220 */  cvt.s.w    $f8, $f4
/* 6A24 80005E24 460A4400 */  add.s      $f16, $f8, $f10
/* 6A28 80005E28 4458F800 */  cfc1       $t8, $31
/* 6A2C 80005E2C 00000000 */  nop
/* 6A30 80005E30 37010003 */  ori        $at, $t8, 3
/* 6A34 80005E34 38210002 */  xori       $at, $at, 2
/* 6A38 80005E38 44C1F800 */  ctc1       $at, $31
/* 6A3C 80005E3C 00000000 */  nop
/* 6A40 80005E40 460084A4 */  cvt.w.s    $f18, $f16
/* 6A44 80005E44 44199000 */  mfc1       $t9, $f18
/* 6A48 80005E48 44D8F800 */  ctc1       $t8, $31
/* 6A4C 80005E4C 03E00008 */  jr         $ra
/* 6A50 80005E50 AC79008C */   sw        $t9, 0x8c($v1)
.L80005E54:
/* 6A54 80005E54 8C620154 */  lw         $v0, 0x154($v1)
/* 6A58 80005E58 2484CCD0 */  addiu      $a0, $a0, -0x3330
/* 6A5C 80005E5C 00021023 */  negu       $v0, $v0
/* 6A60 80005E60 00024180 */  sll        $t0, $v0, 6
/* 6A64 80005E64 25020400 */  addiu      $v0, $t0, 0x400
/* 6A68 80005E68 304A03FF */  andi       $t2, $v0, 0x3ff
/* 6A6C 80005E6C 000A5880 */  sll        $t3, $t2, 2
/* 6A70 80005E70 8C690088 */  lw         $t1, 0x88($v1)
/* 6A74 80005E74 3C014980 */  lui        $at, 0x4980
/* 6A78 80005E78 008B6021 */  addu       $t4, $a0, $t3
/* 6A7C 80005E7C 44810000 */  mtc1       $at, $f0
/* 6A80 80005E80 C5880000 */  lwc1       $f8, ($t4)
/* 6A84 80005E84 44892000 */  mtc1       $t1, $f4
/* 6A88 80005E88 46004282 */  mul.s      $f10, $f8, $f0
/* 6A8C 80005E8C 2458FF00 */  addiu      $t8, $v0, -0x100
/* 6A90 80005E90 331903FF */  andi       $t9, $t8, 0x3ff
/* 6A94 80005E94 00194080 */  sll        $t0, $t9, 2
/* 6A98 80005E98 468021A0 */  cvt.s.w    $f6, $f4
/* 6A9C 80005E9C 8C6F008C */  lw         $t7, 0x8c($v1)
/* 6AA0 80005EA0 00884821 */  addu       $t1, $a0, $t0
/* 6AA4 80005EA4 460A3400 */  add.s      $f16, $f6, $f10
/* 6AA8 80005EA8 C5260000 */  lwc1       $f6, ($t1)
/* 6AAC 80005EAC 444DF800 */  cfc1       $t5, $31
/* 6AB0 80005EB0 448F2000 */  mtc1       $t7, $f4
/* 6AB4 80005EB4 35A10003 */  ori        $at, $t5, 3
/* 6AB8 80005EB8 38210002 */  xori       $at, $at, 2
/* 6ABC 80005EBC 44C1F800 */  ctc1       $at, $31
/* 6AC0 80005EC0 00000000 */  nop
/* 6AC4 80005EC4 460084A4 */  cvt.w.s    $f18, $f16
/* 6AC8 80005EC8 44CDF800 */  ctc1       $t5, $31
/* 6ACC 80005ECC 440E9000 */  mfc1       $t6, $f18
/* 6AD0 80005ED0 46003282 */  mul.s      $f10, $f6, $f0
/* 6AD4 80005ED4 AC6E0088 */  sw         $t6, 0x88($v1)
/* 6AD8 80005ED8 46802220 */  cvt.s.w    $f8, $f4
/* 6ADC 80005EDC 460A4400 */  add.s      $f16, $f8, $f10
/* 6AE0 80005EE0 444AF800 */  cfc1       $t2, $31
/* 6AE4 80005EE4 00000000 */  nop
/* 6AE8 80005EE8 35410003 */  ori        $at, $t2, 3
/* 6AEC 80005EEC 38210002 */  xori       $at, $at, 2
/* 6AF0 80005EF0 44C1F800 */  ctc1       $at, $31
/* 6AF4 80005EF4 00000000 */  nop
/* 6AF8 80005EF8 460084A4 */  cvt.w.s    $f18, $f16
/* 6AFC 80005EFC 440B9000 */  mfc1       $t3, $f18
/* 6B00 80005F00 44CAF800 */  ctc1       $t2, $31
/* 6B04 80005F04 03E00008 */  jr         $ra
/* 6B08 80005F08 AC6B008C */   sw        $t3, 0x8c($v1)
.L80005F0C:
/* 6B0C 80005F0C 8C620154 */  lw         $v0, 0x154($v1)
/* 6B10 80005F10 2484CCD0 */  addiu      $a0, $a0, -0x3330
/* 6B14 80005F14 00026180 */  sll        $t4, $v0, 6
/* 6B18 80005F18 318E03FF */  andi       $t6, $t4, 0x3ff
/* 6B1C 80005F1C 000E7880 */  sll        $t7, $t6, 2
/* 6B20 80005F20 8C6D0088 */  lw         $t5, 0x88($v1)
/* 6B24 80005F24 3C014980 */  lui        $at, 0x4980
/* 6B28 80005F28 008FC021 */  addu       $t8, $a0, $t7
/* 6B2C 80005F2C 44810000 */  mtc1       $at, $f0
/* 6B30 80005F30 C7080000 */  lwc1       $f8, ($t8)
/* 6B34 80005F34 448D2000 */  mtc1       $t5, $f4
/* 6B38 80005F38 46004282 */  mul.s      $f10, $f8, $f0
/* 6B3C 80005F3C 258AFF00 */  addiu      $t2, $t4, -0x100
/* 6B40 80005F40 314B03FF */  andi       $t3, $t2, 0x3ff
/* 6B44 80005F44 000B6080 */  sll        $t4, $t3, 2
/* 6B48 80005F48 468021A0 */  cvt.s.w    $f6, $f4
/* 6B4C 80005F4C 8C69008C */  lw         $t1, 0x8c($v1)
/* 6B50 80005F50 008C6821 */  addu       $t5, $a0, $t4
/* 6B54 80005F54 460A3401 */  sub.s      $f16, $f6, $f10
/* 6B58 80005F58 C5A60000 */  lwc1       $f6, ($t5)
/* 6B5C 80005F5C 4459F800 */  cfc1       $t9, $31
/* 6B60 80005F60 44892000 */  mtc1       $t1, $f4
/* 6B64 80005F64 37210003 */  ori        $at, $t9, 3
/* 6B68 80005F68 38210002 */  xori       $at, $at, 2
/* 6B6C 80005F6C 44C1F800 */  ctc1       $at, $31
/* 6B70 80005F70 00000000 */  nop
/* 6B74 80005F74 460084A4 */  cvt.w.s    $f18, $f16
/* 6B78 80005F78 44D9F800 */  ctc1       $t9, $31
/* 6B7C 80005F7C 44089000 */  mfc1       $t0, $f18
/* 6B80 80005F80 46003282 */  mul.s      $f10, $f6, $f0
/* 6B84 80005F84 AC680088 */  sw         $t0, 0x88($v1)
/* 6B88 80005F88 46802220 */  cvt.s.w    $f8, $f4
/* 6B8C 80005F8C 460A4401 */  sub.s      $f16, $f8, $f10
/* 6B90 80005F90 444EF800 */  cfc1       $t6, $31
/* 6B94 80005F94 00000000 */  nop
/* 6B98 80005F98 35C10003 */  ori        $at, $t6, 3
/* 6B9C 80005F9C 38210002 */  xori       $at, $at, 2
/* 6BA0 80005FA0 44C1F800 */  ctc1       $at, $31
/* 6BA4 80005FA4 00000000 */  nop
/* 6BA8 80005FA8 460084A4 */  cvt.w.s    $f18, $f16
/* 6BAC 80005FAC 440F9000 */  mfc1       $t7, $f18
/* 6BB0 80005FB0 44CEF800 */  ctc1       $t6, $31
/* 6BB4 80005FB4 03E00008 */  jr         $ra
/* 6BB8 80005FB8 AC6F008C */   sw        $t7, 0x8c($v1)
.L80005FBC:
/* 6BBC 80005FBC 8C620154 */  lw         $v0, 0x154($v1)
/* 6BC0 80005FC0 2484CCD0 */  addiu      $a0, $a0, -0x3330
/* 6BC4 80005FC4 00021023 */  negu       $v0, $v0
/* 6BC8 80005FC8 0002C180 */  sll        $t8, $v0, 6
/* 6BCC 80005FCC 27020400 */  addiu      $v0, $t8, 0x400
/* 6BD0 80005FD0 304803FF */  andi       $t0, $v0, 0x3ff
/* 6BD4 80005FD4 00084880 */  sll        $t1, $t0, 2
/* 6BD8 80005FD8 8C790088 */  lw         $t9, 0x88($v1)
/* 6BDC 80005FDC 3C014980 */  lui        $at, 0x4980
/* 6BE0 80005FE0 00895021 */  addu       $t2, $a0, $t1
/* 6BE4 80005FE4 44810000 */  mtc1       $at, $f0
/* 6BE8 80005FE8 C5480000 */  lwc1       $f8, ($t2)
/* 6BEC 80005FEC 44992000 */  mtc1       $t9, $f4
/* 6BF0 80005FF0 46004282 */  mul.s      $f10, $f8, $f0
/* 6BF4 80005FF4 244EFF00 */  addiu      $t6, $v0, -0x100
/* 6BF8 80005FF8 31CF03FF */  andi       $t7, $t6, 0x3ff
/* 6BFC 80005FFC 000FC080 */  sll        $t8, $t7, 2
/* 6C00 80006000 468021A0 */  cvt.s.w    $f6, $f4
/* 6C04 80006004 8C6D008C */  lw         $t5, 0x8c($v1)
/* 6C08 80006008 0098C821 */  addu       $t9, $a0, $t8
/* 6C0C 8000600C 460A3401 */  sub.s      $f16, $f6, $f10
/* 6C10 80006010 C7260000 */  lwc1       $f6, ($t9)
/* 6C14 80006014 444BF800 */  cfc1       $t3, $31
/* 6C18 80006018 448D2000 */  mtc1       $t5, $f4
/* 6C1C 8000601C 35610003 */  ori        $at, $t3, 3
/* 6C20 80006020 38210002 */  xori       $at, $at, 2
/* 6C24 80006024 44C1F800 */  ctc1       $at, $31
/* 6C28 80006028 00000000 */  nop
/* 6C2C 8000602C 460084A4 */  cvt.w.s    $f18, $f16
/* 6C30 80006030 44CBF800 */  ctc1       $t3, $31
/* 6C34 80006034 440C9000 */  mfc1       $t4, $f18
/* 6C38 80006038 46003282 */  mul.s      $f10, $f6, $f0
/* 6C3C 8000603C AC6C0088 */  sw         $t4, 0x88($v1)
/* 6C40 80006040 46802220 */  cvt.s.w    $f8, $f4
/* 6C44 80006044 460A4401 */  sub.s      $f16, $f8, $f10
/* 6C48 80006048 4448F800 */  cfc1       $t0, $31
/* 6C4C 8000604C 00000000 */  nop
/* 6C50 80006050 35010003 */  ori        $at, $t0, 3
/* 6C54 80006054 38210002 */  xori       $at, $at, 2
/* 6C58 80006058 44C1F800 */  ctc1       $at, $31
/* 6C5C 8000605C 00000000 */  nop
/* 6C60 80006060 460084A4 */  cvt.w.s    $f18, $f16
/* 6C64 80006064 44099000 */  mfc1       $t1, $f18
/* 6C68 80006068 44C8F800 */  ctc1       $t0, $31
/* 6C6C 8000606C AC69008C */  sw         $t1, 0x8c($v1)
/* 6C70 80006070 00000000 */  nop
.L80006074:
/* 6C74 80006074 03E00008 */  jr         $ra
/* 6C78 80006078 00000000 */   nop

glabel func_8000607C
/* 6C7C 8000607C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 6C80 80006080 AFA40028 */  sw         $a0, 0x28($sp)
/* 6C84 80006084 97A3002A */  lhu        $v1, 0x2a($sp)
/* 6C88 80006088 3C0F800F */  lui        $t7, 0x800f
/* 6C8C 8000608C 00037080 */  sll        $t6, $v1, 2
/* 6C90 80006090 01C37023 */  subu       $t6, $t6, $v1
/* 6C94 80006094 000E7080 */  sll        $t6, $t6, 2
/* 6C98 80006098 01C37021 */  addu       $t6, $t6, $v1
/* 6C9C 8000609C 000E7080 */  sll        $t6, $t6, 2
/* 6CA0 800060A0 01C37023 */  subu       $t6, $t6, $v1
/* 6CA4 800060A4 000E70C0 */  sll        $t6, $t6, 3
/* 6CA8 800060A8 25EFF510 */  addiu      $t7, $t7, -0xaf0
/* 6CAC 800060AC 01CF1021 */  addu       $v0, $t6, $t7
/* 6CB0 800060B0 24640003 */  addiu      $a0, $v1, 3
/* 6CB4 800060B4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 6CB8 800060B8 2408FFE0 */  addiu      $t0, $zero, -0x20
/* 6CBC 800060BC 24090010 */  addiu      $t1, $zero, 0x10
/* 6CC0 800060C0 3098FFFF */  andi       $t8, $a0, 0xffff
/* 6CC4 800060C4 3C05800C */  lui        $a1, 0x800c
/* 6CC8 800060C8 24190080 */  addiu      $t9, $zero, 0x80
/* 6CCC 800060CC 240A0080 */  addiu      $t2, $zero, 0x80
/* 6CD0 800060D0 A4480088 */  sh         $t0, 0x88($v0)
/* 6CD4 800060D4 A449008C */  sh         $t1, 0x8c($v0)
/* 6CD8 800060D8 A4480220 */  sh         $t0, 0x220($v0)
/* 6CDC 800060DC A4490224 */  sh         $t1, 0x224($v0)
/* 6CE0 800060E0 AFAA001C */  sw         $t2, 0x1c($sp)
/* 6CE4 800060E4 AFB90014 */  sw         $t9, 0x14($sp)
/* 6CE8 800060E8 24A55210 */  addiu      $a1, $a1, 0x5210
/* 6CEC 800060EC 03002025 */  or         $a0, $t8, $zero
/* 6CF0 800060F0 AFA00010 */  sw         $zero, 0x10($sp)
/* 6CF4 800060F4 AFA00018 */  sw         $zero, 0x18($sp)
/* 6CF8 800060F8 3406FFE0 */  ori        $a2, $zero, 0xffe0
/* 6CFC 800060FC 0C009F10 */  jal        func_80027C40
/* 6D00 80006100 24070058 */   addiu     $a3, $zero, 0x58
/* 6D04 80006104 00025880 */  sll        $t3, $v0, 2
/* 6D08 80006108 01625823 */  subu       $t3, $t3, $v0
/* 6D0C 8000610C 000B5880 */  sll        $t3, $t3, 2
/* 6D10 80006110 01625821 */  addu       $t3, $t3, $v0
/* 6D14 80006114 000B5880 */  sll        $t3, $t3, 2
/* 6D18 80006118 01625823 */  subu       $t3, $t3, $v0
/* 6D1C 8000611C 3C0C800F */  lui        $t4, %hi(gActors)
/* 6D20 80006120 258CF510 */  addiu      $t4, $t4, %lo(gActors)
/* 6D24 80006124 000B58C0 */  sll        $t3, $t3, 3
/* 6D28 80006128 016C1821 */  addu       $v1, $t3, $t4
/* 6D2C 8000612C 846DFA28 */  lh         $t5, -0x5d8($v1)
/* 6D30 80006130 846FFBC0 */  lh         $t7, -0x440($v1)
/* 6D34 80006134 25AEFFF8 */  addiu      $t6, $t5, -8
/* 6D38 80006138 8479FD58 */  lh         $t9, -0x2a8($v1)
/* 6D3C 8000613C 846BFEF0 */  lh         $t3, -0x110($v1)
/* 6D40 80006140 A46EFA28 */  sh         $t6, -0x5d8($v1)
/* 6D44 80006144 240E0080 */  addiu      $t6, $zero, 0x80
/* 6D48 80006148 240D0080 */  addiu      $t5, $zero, 0x80
/* 6D4C 8000614C 3C05800C */  lui        $a1, 0x800c
/* 6D50 80006150 25F8FFF8 */  addiu      $t8, $t7, -8
/* 6D54 80006154 272AFFF0 */  addiu      $t2, $t9, -0x10
/* 6D58 80006158 256CFFF0 */  addiu      $t4, $t3, -0x10
/* 6D5C 8000615C A478FBC0 */  sh         $t8, -0x440($v1)
/* 6D60 80006160 A46AFD58 */  sh         $t2, -0x2a8($v1)
/* 6D64 80006164 A46CFEF0 */  sh         $t4, -0x110($v1)
/* 6D68 80006168 24A552C8 */  addiu      $a1, $a1, 0x52c8
/* 6D6C 8000616C AFAD0014 */  sw         $t5, 0x14($sp)
/* 6D70 80006170 AFAE001C */  sw         $t6, 0x1c($sp)
/* 6D74 80006174 3044FFFF */  andi       $a0, $v0, 0xffff
/* 6D78 80006178 3406FF90 */  ori        $a2, $zero, 0xff90
/* 6D7C 8000617C 24070030 */  addiu      $a3, $zero, 0x30
/* 6D80 80006180 AFA00010 */  sw         $zero, 0x10($sp)
/* 6D84 80006184 0C009F10 */  jal        func_80027C40
/* 6D88 80006188 AFA00018 */   sw        $zero, 0x18($sp)
/* 6D8C 8000618C 3C018017 */  lui        $at, %hi(D_80171B1A)
/* 6D90 80006190 3C05800C */  lui        $a1, 0x800c
/* 6D94 80006194 240F0040 */  addiu      $t7, $zero, 0x40
/* 6D98 80006198 24180020 */  addiu      $t8, $zero, 0x20
/* 6D9C 8000619C 241900FF */  addiu      $t9, $zero, 0xff
/* 6DA0 800061A0 A4221B1A */  sh         $v0, %lo(D_80171B1A)($at)
/* 6DA4 800061A4 AFB9001C */  sw         $t9, 0x1c($sp)
/* 6DA8 800061A8 AFB80018 */  sw         $t8, 0x18($sp)
/* 6DAC 800061AC AFAF0014 */  sw         $t7, 0x14($sp)
/* 6DB0 800061B0 24A54FE8 */  addiu      $a1, $a1, 0x4fe8
/* 6DB4 800061B4 3044FFFF */  andi       $a0, $v0, 0xffff
/* 6DB8 800061B8 3406FFE0 */  ori        $a2, $zero, 0xffe0
/* 6DBC 800061BC 24070030 */  addiu      $a3, $zero, 0x30
/* 6DC0 800061C0 0C009F10 */  jal        func_80027C40
/* 6DC4 800061C4 AFA00010 */   sw        $zero, 0x10($sp)
/* 6DC8 800061C8 3C018017 */  lui        $at, %hi(D_80171B1C)
/* 6DCC 800061CC 3C05800C */  lui        $a1, 0x800c
/* 6DD0 800061D0 240A0080 */  addiu      $t2, $zero, 0x80
/* 6DD4 800061D4 240B0080 */  addiu      $t3, $zero, 0x80
/* 6DD8 800061D8 A4221B1C */  sh         $v0, %lo(D_80171B1C)($at)
/* 6DDC 800061DC AFAB001C */  sw         $t3, 0x1c($sp)
/* 6DE0 800061E0 AFAA0014 */  sw         $t2, 0x14($sp)
/* 6DE4 800061E4 24A552D4 */  addiu      $a1, $a1, 0x52d4
/* 6DE8 800061E8 3044FFFF */  andi       $a0, $v0, 0xffff
/* 6DEC 800061EC 3406FF8A */  ori        $a2, $zero, 0xff8a
/* 6DF0 800061F0 24070010 */  addiu      $a3, $zero, 0x10
/* 6DF4 800061F4 AFA00010 */  sw         $zero, 0x10($sp)
/* 6DF8 800061F8 0C009F10 */  jal        func_80027C40
/* 6DFC 800061FC AFA00018 */   sw        $zero, 0x18($sp)
/* 6E00 80006200 00026080 */  sll        $t4, $v0, 2
/* 6E04 80006204 01826023 */  subu       $t4, $t4, $v0
/* 6E08 80006208 000C6080 */  sll        $t4, $t4, 2
/* 6E0C 8000620C 01826021 */  addu       $t4, $t4, $v0
/* 6E10 80006210 000C6080 */  sll        $t4, $t4, 2
/* 6E14 80006214 01826023 */  subu       $t4, $t4, $v0
/* 6E18 80006218 3C0D800F */  lui        $t5, %hi(gActors)
/* 6E1C 8000621C 25ADF510 */  addiu      $t5, $t5, %lo(gActors)
/* 6E20 80006220 000C60C0 */  sll        $t4, $t4, 3
/* 6E24 80006224 018D1821 */  addu       $v1, $t4, $t5
/* 6E28 80006228 846EFBC0 */  lh         $t6, -0x440($v1)
/* 6E2C 8000622C 8478FD58 */  lh         $t8, -0x2a8($v1)
/* 6E30 80006230 846AFEF0 */  lh         $t2, -0x110($v1)
/* 6E34 80006234 25CFFFF8 */  addiu      $t7, $t6, -8
/* 6E38 80006238 2719FFF8 */  addiu      $t9, $t8, -8
/* 6E3C 8000623C 254BFFF0 */  addiu      $t3, $t2, -0x10
/* 6E40 80006240 A46FFBC0 */  sh         $t7, -0x440($v1)
/* 6E44 80006244 A479FD58 */  sh         $t9, -0x2a8($v1)
/* 6E48 80006248 A46BFEF0 */  sh         $t3, -0x110($v1)
/* 6E4C 8000624C 3C018017 */  lui        $at, %hi(D_80171B1E)
/* 6E50 80006250 240E00FF */  addiu      $t6, $zero, 0xff
/* 6E54 80006254 240D0020 */  addiu      $t5, $zero, 0x20
/* 6E58 80006258 240C0040 */  addiu      $t4, $zero, 0x40
/* 6E5C 8000625C 3C05800C */  lui        $a1, %hi(D_800C52E4)
/* 6E60 80006260 A4221B1E */  sh         $v0, %lo(D_80171B1E)($at)
/* 6E64 80006264 24A552E4 */  addiu      $a1, $a1, %lo(D_800C52E4)
/* 6E68 80006268 AFAC0014 */  sw         $t4, 0x14($sp)
/* 6E6C 8000626C AFAD0018 */  sw         $t5, 0x18($sp)
/* 6E70 80006270 AFAE001C */  sw         $t6, 0x1c($sp)
/* 6E74 80006274 3044FFFF */  andi       $a0, $v0, 0xffff
/* 6E78 80006278 3406FFE0 */  ori        $a2, $zero, 0xffe0
/* 6E7C 8000627C 24070010 */  addiu      $a3, $zero, 0x10
/* 6E80 80006280 0C009F10 */  jal        func_80027C40
/* 6E84 80006284 AFA00010 */   sw        $zero, 0x10($sp)
/* 6E88 80006288 3C05800C */  lui        $a1, 0x800c
/* 6E8C 8000628C 240F0040 */  addiu      $t7, $zero, 0x40
/* 6E90 80006290 24180020 */  addiu      $t8, $zero, 0x20
/* 6E94 80006294 241900FF */  addiu      $t9, $zero, 0xff
/* 6E98 80006298 AFB9001C */  sw         $t9, 0x1c($sp)
/* 6E9C 8000629C AFB80018 */  sw         $t8, 0x18($sp)
/* 6EA0 800062A0 AFAF0014 */  sw         $t7, 0x14($sp)
/* 6EA4 800062A4 24A552E8 */  addiu      $a1, $a1, 0x52e8
/* 6EA8 800062A8 3044FFFF */  andi       $a0, $v0, 0xffff
/* 6EAC 800062AC 00003025 */  or         $a2, $zero, $zero
/* 6EB0 800062B0 24070010 */  addiu      $a3, $zero, 0x10
/* 6EB4 800062B4 0C009F10 */  jal        func_80027C40
/* 6EB8 800062B8 AFA00010 */   sw        $zero, 0x10($sp)
/* 6EBC 800062BC 3C05800C */  lui        $a1, %hi(D_800C52EC)
/* 6EC0 800062C0 240A0080 */  addiu      $t2, $zero, 0x80
/* 6EC4 800062C4 240B0080 */  addiu      $t3, $zero, 0x80
/* 6EC8 800062C8 AFAB001C */  sw         $t3, 0x1c($sp)
/* 6ECC 800062CC AFAA0014 */  sw         $t2, 0x14($sp)
/* 6ED0 800062D0 24A552EC */  addiu      $a1, $a1, %lo(D_800C52EC)
/* 6ED4 800062D4 3044FFFF */  andi       $a0, $v0, 0xffff
/* 6ED8 800062D8 3406FF98 */  ori        $a2, $zero, 0xff98
/* 6EDC 800062DC 3407FFF0 */  ori        $a3, $zero, 0xfff0
/* 6EE0 800062E0 AFA00010 */  sw         $zero, 0x10($sp)
/* 6EE4 800062E4 0C009F10 */  jal        func_80027C40
/* 6EE8 800062E8 AFA00018 */   sw        $zero, 0x18($sp)
/* 6EEC 800062EC 3C05800C */  lui        $a1, %hi(D_800C52F4)
/* 6EF0 800062F0 240C0080 */  addiu      $t4, $zero, 0x80
/* 6EF4 800062F4 AFAC0014 */  sw         $t4, 0x14($sp)
/* 6EF8 800062F8 24A552F4 */  addiu      $a1, $a1, %lo(D_800C52F4)
/* 6EFC 800062FC 3044FFFF */  andi       $a0, $v0, 0xffff
/* 6F00 80006300 3406FFF6 */  ori        $a2, $zero, 0xfff6
/* 6F04 80006304 3407FFEF */  ori        $a3, $zero, 0xffef
/* 6F08 80006308 AFA00010 */  sw         $zero, 0x10($sp)
/* 6F0C 8000630C AFA00018 */  sw         $zero, 0x18($sp)
/* 6F10 80006310 0C009F10 */  jal        func_80027C40
/* 6F14 80006314 AFA0001C */   sw        $zero, 0x1c($sp)
/* 6F18 80006318 3C018010 */  lui        $at, %hi(D_80101958)
/* 6F1C 8000631C A0221958 */  sb         $v0, %lo(D_80101958)($at)
/* 6F20 80006320 3C05800C */  lui        $a1, %hi(D_800C5004)
/* 6F24 80006324 3C0D800D */  lui        $t5, %hi(D_800D17A0)
/* 6F28 80006328 3C018017 */  lui        $at, %hi(D_80171B20)
/* 6F2C 8000632C 25AD17A0 */  addiu      $t5, $t5, %lo(D_800D17A0)
/* 6F30 80006330 90A55004 */  lbu        $a1, %lo(D_800C5004)($a1)
/* 6F34 80006334 A4221B20 */  sh         $v0, %lo(D_80171B20)($at)
/* 6F38 80006338 AFAD0014 */  sw         $t5, 0x14($sp)
/* 6F3C 8000633C 3044FFFF */  andi       $a0, $v0, 0xffff
/* 6F40 80006340 3406FFE0 */  ori        $a2, $zero, 0xffe0
/* 6F44 80006344 3407FFF0 */  ori        $a3, $zero, 0xfff0
/* 6F48 80006348 0C009E00 */  jal        func_80027800
/* 6F4C 8000634C AFA00010 */   sw        $zero, 0x10($sp)
/* 6F50 80006350 8FBF0024 */  lw         $ra, 0x24($sp)
/* 6F54 80006354 27BD0028 */  addiu      $sp, $sp, 0x28
/* 6F58 80006358 03E00008 */  jr         $ra
/* 6F5C 8000635C 00000000 */   nop

glabel func_80006360
/* 6F60 80006360 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 6F64 80006364 AFB00024 */  sw         $s0, 0x24($sp)
/* 6F68 80006368 3090FFFF */  andi       $s0, $a0, 0xffff
/* 6F6C 8000636C AFBF002C */  sw         $ra, 0x2c($sp)
/* 6F70 80006370 AFA40050 */  sw         $a0, 0x50($sp)
/* 6F74 80006374 AFB10028 */  sw         $s1, 0x28($sp)
/* 6F78 80006378 00002025 */  or         $a0, $zero, $zero
/* 6F7C 8000637C 24050010 */  addiu      $a1, $zero, 0x10
/* 6F80 80006380 2406001F */  addiu      $a2, $zero, 0x1f
/* 6F84 80006384 0C009D62 */  jal        func_80027588
/* 6F88 80006388 2407001F */   addiu     $a3, $zero, 0x1f
/* 6F8C 8000638C 24040006 */  addiu      $a0, $zero, 6
/* 6F90 80006390 2405001F */  addiu      $a1, $zero, 0x1f
/* 6F94 80006394 2406001F */  addiu      $a2, $zero, 0x1f
/* 6F98 80006398 0C009D62 */  jal        func_80027588
/* 6F9C 8000639C 24070010 */   addiu     $a3, $zero, 0x10
/* 6FA0 800063A0 24040002 */  addiu      $a0, $zero, 2
/* 6FA4 800063A4 24050010 */  addiu      $a1, $zero, 0x10
/* 6FA8 800063A8 2406001F */  addiu      $a2, $zero, 0x1f
/* 6FAC 800063AC 0C009D62 */  jal        func_80027588
/* 6FB0 800063B0 24070010 */   addiu     $a3, $zero, 0x10
/* 6FB4 800063B4 24040003 */  addiu      $a0, $zero, 3
/* 6FB8 800063B8 24050018 */  addiu      $a1, $zero, 0x18
/* 6FBC 800063BC 2406001C */  addiu      $a2, $zero, 0x1c
/* 6FC0 800063C0 0C009D62 */  jal        func_80027588
/* 6FC4 800063C4 00003825 */   or        $a3, $zero, $zero
/* 6FC8 800063C8 24040004 */  addiu      $a0, $zero, 4
/* 6FCC 800063CC 2405001F */  addiu      $a1, $zero, 0x1f
/* 6FD0 800063D0 24060010 */  addiu      $a2, $zero, 0x10
/* 6FD4 800063D4 0C009D62 */  jal        func_80027588
/* 6FD8 800063D8 24070010 */   addiu     $a3, $zero, 0x10
/* 6FDC 800063DC 24040005 */  addiu      $a0, $zero, 5
/* 6FE0 800063E0 2405001F */  addiu      $a1, $zero, 0x1f
/* 6FE4 800063E4 2406001F */  addiu      $a2, $zero, 0x1f
/* 6FE8 800063E8 0C009D62 */  jal        func_80027588
/* 6FEC 800063EC 2407001F */   addiu     $a3, $zero, 0x1f
/* 6FF0 800063F0 3C03800F */  lui        $v1, %hi(gActors)
/* 6FF4 800063F4 2463F510 */  addiu      $v1, $v1, %lo(gActors)
/* 6FF8 800063F8 24080001 */  addiu      $t0, $zero, 1
/* 6FFC 800063FC 24020198 */  addiu      $v0, $zero, 0x198
.L80006400:
/* 7000 80006400 01020019 */  multu      $t0, $v0
/* 7004 80006404 25080001 */  addiu      $t0, $t0, 1
/* 7008 80006408 3118FFFF */  andi       $t8, $t0, 0xffff
/* 700C 8000640C 2B0100B9 */  slti       $at, $t8, 0xb9
/* 7010 80006410 03004025 */  or         $t0, $t8, $zero
/* 7014 80006414 00007012 */  mflo       $t6
/* 7018 80006418 006E7821 */  addu       $t7, $v1, $t6
/* 701C 8000641C 1420FFF8 */  bnez       $at, .L80006400
/* 7020 80006420 ADE00080 */   sw        $zero, 0x80($t7)
/* 7024 80006424 0C020C43 */  jal        func_8008310C
/* 7028 80006428 00000000 */   nop
/* 702C 8000642C 0C020D15 */  jal        func_80083454
/* 7030 80006430 00000000 */   nop
/* 7034 80006434 26040025 */  addiu      $a0, $s0, 0x25
/* 7038 80006438 3099FFFF */  andi       $t9, $a0, 0xffff
/* 703C 8000643C 240A0001 */  addiu      $t2, $zero, 1
/* 7040 80006440 AFAA0010 */  sw         $t2, 0x10($sp)
/* 7044 80006444 03202025 */  or         $a0, $t9, $zero
/* 7048 80006448 02008825 */  or         $s1, $s0, $zero
/* 704C 8000644C 00002825 */  or         $a1, $zero, $zero
/* 7050 80006450 00003025 */  or         $a2, $zero, $zero
/* 7054 80006454 0C009CFF */  jal        func_800273FC
/* 7058 80006458 24070028 */   addiu     $a3, $zero, 0x28
/* 705C 8000645C 00115880 */  sll        $t3, $s1, 2
/* 7060 80006460 01715823 */  subu       $t3, $t3, $s1
/* 7064 80006464 000B5880 */  sll        $t3, $t3, 2
/* 7068 80006468 01715821 */  addu       $t3, $t3, $s1
/* 706C 8000646C 000B5880 */  sll        $t3, $t3, 2
/* 7070 80006470 3C03800F */  lui        $v1, %hi(gActors)
/* 7074 80006474 01715823 */  subu       $t3, $t3, $s1
/* 7078 80006478 2463F510 */  addiu      $v1, $v1, %lo(gActors)
/* 707C 8000647C 000B58C0 */  sll        $t3, $t3, 3
/* 7080 80006480 006B1021 */  addu       $v0, $v1, $t3
/* 7084 80006484 8C4C3B78 */  lw         $t4, 0x3b78($v0)
/* 7088 80006488 3C015000 */  lui        $at, 0x5000
/* 708C 8000648C 26240024 */  addiu      $a0, $s1, 0x24
/* 7090 80006490 308EFFFF */  andi       $t6, $a0, 0xffff
/* 7094 80006494 240F0001 */  addiu      $t7, $zero, 1
/* 7098 80006498 01816825 */  or         $t5, $t4, $at
/* 709C 8000649C AC4D3B78 */  sw         $t5, 0x3b78($v0)
/* 70A0 800064A0 AFAF0010 */  sw         $t7, 0x10($sp)
/* 70A4 800064A4 01C02025 */  or         $a0, $t6, $zero
/* 70A8 800064A8 AFA2003C */  sw         $v0, 0x3c($sp)
/* 70AC 800064AC 00002825 */  or         $a1, $zero, $zero
/* 70B0 800064B0 00003025 */  or         $a2, $zero, $zero
/* 70B4 800064B4 0C009CFF */  jal        func_800273FC
/* 70B8 800064B8 3407FFE1 */   ori       $a3, $zero, 0xffe1
/* 70BC 800064BC 8FA2003C */  lw         $v0, 0x3c($sp)
/* 70C0 800064C0 3C017000 */  lui        $at, 0x7000
/* 70C4 800064C4 8C5839E0 */  lw         $t8, 0x39e0($v0)
/* 70C8 800064C8 2624002A */  addiu      $a0, $s1, 0x2a
/* 70CC 800064CC 308AFFFF */  andi       $t2, $a0, 0xffff
/* 70D0 800064D0 340BFFFF */  ori        $t3, $zero, 0xffff
/* 70D4 800064D4 0301C825 */  or         $t9, $t8, $at
/* 70D8 800064D8 AFAB0010 */  sw         $t3, 0x10($sp)
/* 70DC 800064DC 01402025 */  or         $a0, $t2, $zero
/* 70E0 800064E0 240502D0 */  addiu      $a1, $zero, 0x2d0
/* 70E4 800064E4 00003025 */  or         $a2, $zero, $zero
/* 70E8 800064E8 24070028 */  addiu      $a3, $zero, 0x28
/* 70EC 800064EC 0C009CFF */  jal        func_800273FC
/* 70F0 800064F0 AC5939E0 */   sw        $t9, 0x39e0($v0)
/* 70F4 800064F4 8FA3003C */  lw         $v1, 0x3c($sp)
/* 70F8 800064F8 3C014190 */  lui        $at, 0x4190
/* 70FC 800064FC 44812000 */  mtc1       $at, $f4
/* 7100 80006500 946C4384 */  lhu        $t4, 0x4384($v1)
/* 7104 80006504 3C014080 */  lui        $at, 0x4080
/* 7108 80006508 44813000 */  mtc1       $at, $f6
/* 710C 8000650C 24020040 */  addiu      $v0, $zero, 0x40
/* 7110 80006510 26240042 */  addiu      $a0, $s1, 0x42
/* 7114 80006514 240E0080 */  addiu      $t6, $zero, 0x80
/* 7118 80006518 308FFFFF */  andi       $t7, $a0, 0xffff
/* 711C 8000651C 3C05800C */  lui        $a1, %hi(Aplha_Which)
/* 7120 80006520 358D0001 */  ori        $t5, $t4, 1
/* 7124 80006524 24A55230 */  addiu      $a1, $a1, %lo(Aplha_Which)
/* 7128 80006528 01E02025 */  or         $a0, $t7, $zero
/* 712C 8000652C 3406FFD0 */  ori        $a2, $zero, 0xffd0
/* 7130 80006530 24070058 */  addiu      $a3, $zero, 0x58
/* 7134 80006534 AFA00010 */  sw         $zero, 0x10($sp)
/* 7138 80006538 A46D4384 */  sh         $t5, 0x4384($v1)
/* 713C 8000653C A062438C */  sb         $v0, 0x438c($v1)
/* 7140 80006540 A062438D */  sb         $v0, 0x438d($v1)
/* 7144 80006544 A062438E */  sb         $v0, 0x438e($v1)
/* 7148 80006548 A06E438F */  sb         $t6, 0x438f($v1)
/* 714C 8000654C E46443A4 */  swc1       $f4, 0x43a4($v1)
/* 7150 80006550 0C009ECA */  jal        func_80027B28
/* 7154 80006554 E46643A8 */   swc1      $f6, 0x43a8($v1)
/* 7158 80006558 26240008 */  addiu      $a0, $s1, 8
/* 715C 8000655C 3098FFFF */  andi       $t8, $a0, 0xffff
/* 7160 80006560 3C05800E */  lui        $a1, %hi(D_800E13FC)
/* 7164 80006564 24A513FC */  addiu      $a1, $a1, %lo(D_800E13FC)
/* 7168 80006568 03002025 */  or         $a0, $t8, $zero
/* 716C 8000656C 3406FF80 */  ori        $a2, $zero, 0xff80
/* 7170 80006570 2407002B */  addiu      $a3, $zero, 0x2b
/* 7174 80006574 0C009D44 */  jal        func_80027510
/* 7178 80006578 AFA00010 */   sw        $zero, 0x10($sp)
/* 717C 8000657C 2624000C */  addiu      $a0, $s1, 0xc
/* 7180 80006580 3099FFFF */  andi       $t9, $a0, 0xffff
/* 7184 80006584 3C05800C */  lui        $a1, %hi(Alphabet_num1)
/* 7188 80006588 24A55024 */  addiu      $a1, $a1, %lo(Alphabet_num1)
/* 718C 8000658C 03202025 */  or         $a0, $t9, $zero
/* 7190 80006590 3406FF9C */  ori        $a2, $zero, 0xff9c
/* 7194 80006594 2407002B */  addiu      $a3, $zero, 0x2b
/* 7198 80006598 AFA00010 */  sw         $zero, 0x10($sp)
/* 719C 8000659C AFA00014 */  sw         $zero, 0x14($sp)
/* 71A0 800065A0 AFA00018 */  sw         $zero, 0x18($sp)
/* 71A4 800065A4 0C009F10 */  jal        func_80027C40
/* 71A8 800065A8 AFA0001C */   sw        $zero, 0x1c($sp)
/* 71AC 800065AC 3C108017 */  lui        $s0, %hi(GameSave_Names)
/* 71B0 800065B0 3C09800C */  lui        $t1, %hi(D_800C4FA8)
/* 71B4 800065B4 25294FA8 */  addiu      $t1, $t1, %lo(D_800C4FA8)
/* 71B8 800065B8 26101AA0 */  addiu      $s0, $s0, %lo(GameSave_Names)
/* 71BC 800065BC 00001825 */  or         $v1, $zero, $zero
/* 71C0 800065C0 00004025 */  or         $t0, $zero, $zero
.L800065C4:
/* 71C4 800065C4 00031040 */  sll        $v0, $v1, 1
/* 71C8 800065C8 01225021 */  addu       $t2, $t1, $v0
/* 71CC 800065CC 02026021 */  addu       $t4, $s0, $v0
/* 71D0 800065D0 958D0000 */  lhu        $t5, ($t4)
/* 71D4 800065D4 954B0000 */  lhu        $t3, ($t2)
/* 71D8 800065D8 24630001 */  addiu      $v1, $v1, 1
/* 71DC 800065DC 116D0004 */  beq        $t3, $t5, .L800065F0
/* 71E0 800065E0 306FFFFF */   andi      $t7, $v1, 0xffff
/* 71E4 800065E4 25080001 */  addiu      $t0, $t0, 1
/* 71E8 800065E8 310EFFFF */  andi       $t6, $t0, 0xffff
/* 71EC 800065EC 01C04025 */  or         $t0, $t6, $zero
.L800065F0:
/* 71F0 800065F0 29E1000B */  slti       $at, $t7, 0xb
/* 71F4 800065F4 1420FFF3 */  bnez       $at, .L800065C4
/* 71F8 800065F8 01E01825 */   or        $v1, $t7, $zero
/* 71FC 800065FC 0008102B */  sltu       $v0, $zero, $t0
/* 7200 80006600 10400073 */  beqz       $v0, .L800067D0
/* 7204 80006604 00004025 */   or        $t0, $zero, $zero
/* 7208 80006608 24180001 */  addiu      $t8, $zero, 1
/* 720C 8000660C 3C018010 */  lui        $at, %hi(D_80102150)
/* 7210 80006610 A0382150 */  sb         $t8, %lo(D_80102150)($at)
/* 7214 80006614 24040003 */  addiu      $a0, $zero, 3
/* 7218 80006618 00002825 */  or         $a1, $zero, $zero
/* 721C 8000661C 02003025 */  or         $a2, $s0, $zero
/* 7220 80006620 00003825 */  or         $a3, $zero, $zero
/* 7224 80006624 0C020CD6 */  jal        func_80083358
/* 7228 80006628 A7A0004C */   sh        $zero, 0x4c($sp)
/* 722C 8000662C 3C198017 */  lui        $t9, %hi(GameSave_Sex)
/* 7230 80006630 93391ACE */  lbu        $t9, %lo(GameSave_Sex)($t9)
/* 7234 80006634 97A8004C */  lhu        $t0, 0x4c($sp)
/* 7238 80006638 13200003 */  beqz       $t9, .L80006648
/* 723C 8000663C 24040003 */   addiu     $a0, $zero, 3
/* 7240 80006640 10000002 */  b          .L8000664C
/* 7244 80006644 240200ED */   addiu     $v0, $zero, 0xed
.L80006648:
/* 7248 80006648 240200F4 */  addiu      $v0, $zero, 0xf4
.L8000664C:
/* 724C 8000664C 00023400 */  sll        $a2, $v0, 0x10
/* 7250 80006650 00065403 */  sra        $t2, $a2, 0x10
/* 7254 80006654 01403025 */  or         $a2, $t2, $zero
/* 7258 80006658 24050001 */  addiu      $a1, $zero, 1
/* 725C 8000665C 24070001 */  addiu      $a3, $zero, 1
/* 7260 80006660 0C020C74 */  jal        func_800831D0
/* 7264 80006664 A7A8004C */   sh        $t0, 0x4c($sp)
/* 7268 80006668 3C06800C */  lui        $a2, %hi(D_800C52F8)
/* 726C 8000666C 24C652F8 */  addiu      $a2, $a2, %lo(D_800C52F8)
/* 7270 80006670 24040004 */  addiu      $a0, $zero, 4
/* 7274 80006674 24050001 */  addiu      $a1, $zero, 1
/* 7278 80006678 0C020CD6 */  jal        func_80083358
/* 727C 8000667C 24070001 */   addiu     $a3, $zero, 1
/* 7280 80006680 3C06800C */  lui        $a2, %hi(D_800C502C)
/* 7284 80006684 24C6502C */  addiu      $a2, $a2, %lo(D_800C502C)
/* 7288 80006688 24040004 */  addiu      $a0, $zero, 4
/* 728C 8000668C 24050002 */  addiu      $a1, $zero, 2
/* 7290 80006690 0C020CD6 */  jal        func_80083358
/* 7294 80006694 24070002 */   addiu     $a3, $zero, 2
/* 7298 80006698 3C06800C */  lui        $a2, %hi(D_800C5038)
/* 729C 8000669C 24C65038 */  addiu      $a2, $a2, %lo(D_800C5038)
/* 72A0 800066A0 24040007 */  addiu      $a0, $zero, 7
/* 72A4 800066A4 24050002 */  addiu      $a1, $zero, 2
/* 72A8 800066A8 0C020CD6 */  jal        func_80083358
/* 72AC 800066AC 24070002 */   addiu     $a3, $zero, 2
/* 72B0 800066B0 3C06800C */  lui        $a2, %hi(D_800C5044)
/* 72B4 800066B4 24C65044 */  addiu      $a2, $a2, %lo(D_800C5044)
/* 72B8 800066B8 2404000A */  addiu      $a0, $zero, 0xa
/* 72BC 800066BC 24050002 */  addiu      $a1, $zero, 2
/* 72C0 800066C0 0C020CD6 */  jal        func_80083358
/* 72C4 800066C4 24070002 */   addiu     $a3, $zero, 2
/* 72C8 800066C8 3C06800C */  lui        $a2, %hi(D_800C5050)
/* 72CC 800066CC 24C65050 */  addiu      $a2, $a2, %lo(D_800C5050)
/* 72D0 800066D0 2404000D */  addiu      $a0, $zero, 0xd
/* 72D4 800066D4 24050002 */  addiu      $a1, $zero, 2
/* 72D8 800066D8 0C020CD6 */  jal        func_80083358
/* 72DC 800066DC 24070002 */   addiu     $a3, $zero, 2
/* 72E0 800066E0 262400A2 */  addiu      $a0, $s1, 0xa2
/* 72E4 800066E4 3C058017 */  lui        $a1, %hi(GameSave_Age)
/* 72E8 800066E8 3C0B800D */  lui        $t3, %hi(D_800D17B8)
/* 72EC 800066EC 256B17B8 */  addiu      $t3, $t3, %lo(D_800D17B8)
/* 72F0 800066F0 90A51ACC */  lbu        $a1, %lo(GameSave_Age)($a1)
/* 72F4 800066F4 308CFFFF */  andi       $t4, $a0, 0xffff
/* 72F8 800066F8 01802025 */  or         $a0, $t4, $zero
/* 72FC 800066FC AFAB0014 */  sw         $t3, 0x14($sp)
/* 7300 80006700 3406FFE6 */  ori        $a2, $zero, 0xffe6
/* 7304 80006704 24070029 */  addiu      $a3, $zero, 0x29
/* 7308 80006708 0C009E00 */  jal        func_80027800
/* 730C 8000670C AFA00010 */   sw        $zero, 0x10($sp)
/* 7310 80006710 2624004C */  addiu      $a0, $s1, 0x4c
/* 7314 80006714 308DFFFF */  andi       $t5, $a0, 0xffff
/* 7318 80006718 3C07800E */  lui        $a3, %hi(Data_RedGem)
/* 731C 8000671C 24E788B8 */  addiu      $a3, $a3, %lo(Data_RedGem)
/* 7320 80006720 01A02025 */  or         $a0, $t5, $zero
/* 7324 80006724 24050008 */  addiu      $a1, $zero, 8
/* 7328 80006728 0C001618 */  jal        func_80005860
/* 732C 8000672C 24060029 */   addiu     $a2, $zero, 0x29
/* 7330 80006730 26240050 */  addiu      $a0, $s1, 0x50
/* 7334 80006734 3C0F800D */  lui        $t7, %hi(D_800D17A8)
/* 7338 80006738 25EF17A8 */  addiu      $t7, $t7, %lo(D_800D17A8)
/* 733C 8000673C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 7340 80006740 01C02025 */  or         $a0, $t6, $zero
/* 7344 80006744 AFAF0010 */  sw         $t7, 0x10($sp)
/* 7348 80006748 24050018 */  addiu      $a1, $zero, 0x18
/* 734C 8000674C 24060029 */  addiu      $a2, $zero, 0x29
/* 7350 80006750 0C001638 */  jal        func_800058E0
/* 7354 80006754 00003825 */   or        $a3, $zero, $zero
/* 7358 80006758 2624004E */  addiu      $a0, $s1, 0x4e
/* 735C 8000675C 3098FFFF */  andi       $t8, $a0, 0xffff
/* 7360 80006760 3C07800E */  lui        $a3, %hi(Data_YellowGem)
/* 7364 80006764 24E78C78 */  addiu      $a3, $a3, %lo(Data_YellowGem)
/* 7368 80006768 03002025 */  or         $a0, $t8, $zero
/* 736C 8000676C 24050050 */  addiu      $a1, $zero, 0x50
/* 7370 80006770 0C001618 */  jal        func_80005860
/* 7374 80006774 24060029 */   addiu     $a2, $zero, 0x29
/* 7378 80006778 26240026 */  addiu      $a0, $s1, 0x26
/* 737C 8000677C 3C058017 */  lui        $a1, %hi(GameSave_YellowGems)
/* 7380 80006780 3C0A800D */  lui        $t2, %hi(D_800D17B8)
/* 7384 80006784 254A17B8 */  addiu      $t2, $t2, %lo(D_800D17B8)
/* 7388 80006788 94A51AD4 */  lhu        $a1, %lo(GameSave_YellowGems)($a1)
/* 738C 8000678C 3099FFFF */  andi       $t9, $a0, 0xffff
/* 7390 80006790 03202025 */  or         $a0, $t9, $zero
/* 7394 80006794 AFAA0014 */  sw         $t2, 0x14($sp)
/* 7398 80006798 24060060 */  addiu      $a2, $zero, 0x60
/* 739C 8000679C 24070029 */  addiu      $a3, $zero, 0x29
/* 73A0 800067A0 0C009E00 */  jal        func_80027800
/* 73A4 800067A4 AFA00010 */   sw        $zero, 0x10($sp)
/* 73A8 800067A8 26240060 */  addiu      $a0, $s1, 0x60
/* 73AC 800067AC 308CFFFF */  andi       $t4, $a0, 0xffff
/* 73B0 800067B0 01802025 */  or         $a0, $t4, $zero
/* 73B4 800067B4 3405FFB7 */  ori        $a1, $zero, 0xffb7
/* 73B8 800067B8 24060015 */  addiu      $a2, $zero, 0x15
/* 73BC 800067BC 0C001669 */  jal        func_800059A4
/* 73C0 800067C0 00003825 */   or        $a3, $zero, $zero
/* 73C4 800067C4 97A8004C */  lhu        $t0, 0x4c($sp)
/* 73C8 800067C8 1000000C */  b          .L800067FC
/* 73CC 800067CC 26240009 */   addiu     $a0, $s1, 9
.L800067D0:
/* 73D0 800067D0 3C018010 */  lui        $at, %hi(D_80102150)
/* 73D4 800067D4 A0202150 */  sb         $zero, %lo(D_80102150)($at)
/* 73D8 800067D8 24040003 */  addiu      $a0, $zero, 3
/* 73DC 800067DC 24050001 */  addiu      $a1, $zero, 1
/* 73E0 800067E0 02003025 */  or         $a2, $s0, $zero
/* 73E4 800067E4 24070003 */  addiu      $a3, $zero, 3
/* 73E8 800067E8 0C020CD6 */  jal        func_80083358
/* 73EC 800067EC A7A8004C */   sh        $t0, 0x4c($sp)
/* 73F0 800067F0 97A8004C */  lhu        $t0, 0x4c($sp)
/* 73F4 800067F4 00000000 */  nop
/* 73F8 800067F8 26240009 */  addiu      $a0, $s1, 9
.L800067FC:
/* 73FC 800067FC 308BFFFF */  andi       $t3, $a0, 0xffff
/* 7400 80006800 3C05800E */  lui        $a1, %hi(D_800E13FC)
/* 7404 80006804 24A513FC */  addiu      $a1, $a1, %lo(D_800E13FC)
/* 7408 80006808 01602025 */  or         $a0, $t3, $zero
/* 740C 8000680C 3406FF80 */  ori        $a2, $zero, 0xff80
/* 7410 80006810 3407FFE0 */  ori        $a3, $zero, 0xffe0
/* 7414 80006814 AFA00010 */  sw         $zero, 0x10($sp)
/* 7418 80006818 0C009D44 */  jal        func_80027510
/* 741C 8000681C A7A8004C */   sh        $t0, 0x4c($sp)
/* 7420 80006820 26240012 */  addiu      $a0, $s1, 0x12
/* 7424 80006824 308DFFFF */  andi       $t5, $a0, 0xffff
/* 7428 80006828 3C05800C */  lui        $a1, %hi(Alphabet_Num2)
/* 742C 8000682C 24A55028 */  addiu      $a1, $a1, %lo(Alphabet_Num2)
/* 7430 80006830 01A02025 */  or         $a0, $t5, $zero
/* 7434 80006834 3406FF9C */  ori        $a2, $zero, 0xff9c
/* 7438 80006838 3407FFE0 */  ori        $a3, $zero, 0xffe0
/* 743C 8000683C AFA00010 */  sw         $zero, 0x10($sp)
/* 7440 80006840 AFA00014 */  sw         $zero, 0x14($sp)
/* 7444 80006844 AFA00018 */  sw         $zero, 0x18($sp)
/* 7448 80006848 0C009F10 */  jal        func_80027C40
/* 744C 8000684C AFA0001C */   sw        $zero, 0x1c($sp)
/* 7450 80006850 3C09800C */  lui        $t1, %hi(D_800C4FA8)
/* 7454 80006854 97A8004C */  lhu        $t0, 0x4c($sp)
/* 7458 80006858 25294FA8 */  addiu      $t1, $t1, %lo(D_800C4FA8)
/* 745C 8000685C 00001825 */  or         $v1, $zero, $zero
.L80006860:
/* 7460 80006860 00031040 */  sll        $v0, $v1, 1
/* 7464 80006864 01227021 */  addu       $t6, $t1, $v0
/* 7468 80006868 0202C021 */  addu       $t8, $s0, $v0
/* 746C 8000686C 97190016 */  lhu        $t9, 0x16($t8)
/* 7470 80006870 95CF0000 */  lhu        $t7, ($t6)
/* 7474 80006874 24630001 */  addiu      $v1, $v1, 1
/* 7478 80006878 11F90004 */  beq        $t7, $t9, .L8000688C
/* 747C 8000687C 306CFFFF */   andi      $t4, $v1, 0xffff
/* 7480 80006880 25080001 */  addiu      $t0, $t0, 1
/* 7484 80006884 310AFFFF */  andi       $t2, $t0, 0xffff
/* 7488 80006888 01404025 */  or         $t0, $t2, $zero
.L8000688C:
/* 748C 8000688C 2981000B */  slti       $at, $t4, 0xb
/* 7490 80006890 1420FFF3 */  bnez       $at, .L80006860
/* 7494 80006894 01801825 */   or        $v1, $t4, $zero
/* 7498 80006898 11000073 */  beqz       $t0, .L80006A68
/* 749C 8000689C 3C018010 */   lui       $at, 0x8010
/* 74A0 800068A0 3C0D800E */  lui        $t5, %hi(Data_YellowGem)
/* 74A4 800068A4 240B0001 */  addiu      $t3, $zero, 1
/* 74A8 800068A8 3C018010 */  lui        $at, %hi(D_801022E8)
/* 74AC 800068AC 25AD8C78 */  addiu      $t5, $t5, %lo(Data_YellowGem)
/* 74B0 800068B0 3C068017 */  lui        $a2, %hi(GameSave_Names+0x16)
/* 74B4 800068B4 3C10800E */  lui        $s0, %hi(Data_RedGem)
/* 74B8 800068B8 A02B22E8 */  sb         $t3, %lo(D_801022E8)($at)
/* 74BC 800068BC 261088B8 */  addiu      $s0, $s0, %lo(Data_RedGem)
/* 74C0 800068C0 24C61AB6 */  addiu      $a2, $a2, %lo(GameSave_Names+0x16)
/* 74C4 800068C4 AFAD0034 */  sw         $t5, 0x34($sp)
/* 74C8 800068C8 24040003 */  addiu      $a0, $zero, 3
/* 74CC 800068CC 00002825 */  or         $a1, $zero, $zero
/* 74D0 800068D0 0C020DA8 */  jal        func_800836A0
/* 74D4 800068D4 00003825 */   or        $a3, $zero, $zero
/* 74D8 800068D8 3C0E8017 */  lui        $t6, %hi(D_80171ACF)
/* 74DC 800068DC 91CE1ACF */  lbu        $t6, %lo(D_80171ACF)($t6)
/* 74E0 800068E0 24040003 */  addiu      $a0, $zero, 3
/* 74E4 800068E4 11C00003 */  beqz       $t6, .L800068F4
/* 74E8 800068E8 24050001 */   addiu     $a1, $zero, 1
/* 74EC 800068EC 10000002 */  b          .L800068F8
/* 74F0 800068F0 240200ED */   addiu     $v0, $zero, 0xed
.L800068F4:
/* 74F4 800068F4 240200F4 */  addiu      $v0, $zero, 0xf4
.L800068F8:
/* 74F8 800068F8 00023400 */  sll        $a2, $v0, 0x10
/* 74FC 800068FC 0006C403 */  sra        $t8, $a2, 0x10
/* 7500 80006900 03003025 */  or         $a2, $t8, $zero
/* 7504 80006904 0C020D46 */  jal        func_80083518
/* 7508 80006908 24070001 */   addiu     $a3, $zero, 1
/* 750C 8000690C 3C06800C */  lui        $a2, %hi(D_800C52F8)
/* 7510 80006910 24C652F8 */  addiu      $a2, $a2, %lo(D_800C52F8)
/* 7514 80006914 24040004 */  addiu      $a0, $zero, 4
/* 7518 80006918 24050001 */  addiu      $a1, $zero, 1
/* 751C 8000691C 0C020DA8 */  jal        func_800836A0
/* 7520 80006920 24070001 */   addiu     $a3, $zero, 1
/* 7524 80006924 3C06800C */  lui        $a2, %hi(D_800C502C)
/* 7528 80006928 24C6502C */  addiu      $a2, $a2, %lo(D_800C502C)
/* 752C 8000692C 24040004 */  addiu      $a0, $zero, 4
/* 7530 80006930 24050002 */  addiu      $a1, $zero, 2
/* 7534 80006934 0C020DA8 */  jal        func_800836A0
/* 7538 80006938 24070002 */   addiu     $a3, $zero, 2
/* 753C 8000693C 3C06800C */  lui        $a2, %hi(D_800C5038)
/* 7540 80006940 24C65038 */  addiu      $a2, $a2, %lo(D_800C5038)
/* 7544 80006944 24040007 */  addiu      $a0, $zero, 7
/* 7548 80006948 24050002 */  addiu      $a1, $zero, 2
/* 754C 8000694C 0C020DA8 */  jal        func_800836A0
/* 7550 80006950 24070002 */   addiu     $a3, $zero, 2
/* 7554 80006954 3C06800C */  lui        $a2, %hi(D_800C5044)
/* 7558 80006958 24C65044 */  addiu      $a2, $a2, %lo(D_800C5044)
/* 755C 8000695C 2404000A */  addiu      $a0, $zero, 0xa
/* 7560 80006960 24050002 */  addiu      $a1, $zero, 2
/* 7564 80006964 0C020DA8 */  jal        func_800836A0
/* 7568 80006968 24070002 */   addiu     $a3, $zero, 2
/* 756C 8000696C 3C06800C */  lui        $a2, %hi(D_800C5050)
/* 7570 80006970 24C65050 */  addiu      $a2, $a2, %lo(D_800C5050)
/* 7574 80006974 2404000D */  addiu      $a0, $zero, 0xd
/* 7578 80006978 24050002 */  addiu      $a1, $zero, 2
/* 757C 8000697C 0C020DA8 */  jal        func_800836A0
/* 7580 80006980 24070002 */   addiu     $a3, $zero, 2
/* 7584 80006984 262400A4 */  addiu      $a0, $s1, 0xa4
/* 7588 80006988 3C058017 */  lui        $a1, %hi(D_80171ACD)
/* 758C 8000698C 3C19800D */  lui        $t9, %hi(D_800D17B8)
/* 7590 80006990 273917B8 */  addiu      $t9, $t9, %lo(D_800D17B8)
/* 7594 80006994 90A51ACD */  lbu        $a1, %lo(D_80171ACD)($a1)
/* 7598 80006998 308FFFFF */  andi       $t7, $a0, 0xffff
/* 759C 8000699C 01E02025 */  or         $a0, $t7, $zero
/* 75A0 800069A0 AFB90014 */  sw         $t9, 0x14($sp)
/* 75A4 800069A4 3406FFE6 */  ori        $a2, $zero, 0xffe6
/* 75A8 800069A8 3407FFE2 */  ori        $a3, $zero, 0xffe2
/* 75AC 800069AC 0C009E00 */  jal        func_80027800
/* 75B0 800069B0 AFA00010 */   sw        $zero, 0x10($sp)
/* 75B4 800069B4 2624004D */  addiu      $a0, $s1, 0x4d
/* 75B8 800069B8 308AFFFF */  andi       $t2, $a0, 0xffff
/* 75BC 800069BC 01402025 */  or         $a0, $t2, $zero
/* 75C0 800069C0 24050008 */  addiu      $a1, $zero, 8
/* 75C4 800069C4 3406FFE2 */  ori        $a2, $zero, 0xffe2
/* 75C8 800069C8 0C001618 */  jal        func_80005860
/* 75CC 800069CC 02003825 */   or        $a3, $s0, $zero
/* 75D0 800069D0 26240054 */  addiu      $a0, $s1, 0x54
/* 75D4 800069D4 3C0B800D */  lui        $t3, %hi(D_800D17A8)
/* 75D8 800069D8 256B17A8 */  addiu      $t3, $t3, %lo(D_800D17A8)
/* 75DC 800069DC 308CFFFF */  andi       $t4, $a0, 0xffff
/* 75E0 800069E0 01802025 */  or         $a0, $t4, $zero
/* 75E4 800069E4 AFAB0010 */  sw         $t3, 0x10($sp)
/* 75E8 800069E8 24050018 */  addiu      $a1, $zero, 0x18
/* 75EC 800069EC 3406FFE2 */  ori        $a2, $zero, 0xffe2
/* 75F0 800069F0 0C001638 */  jal        func_800058E0
/* 75F4 800069F4 24070001 */   addiu     $a3, $zero, 1
/* 75F8 800069F8 2624004F */  addiu      $a0, $s1, 0x4f
/* 75FC 800069FC 308DFFFF */  andi       $t5, $a0, 0xffff
/* 7600 80006A00 8FA70034 */  lw         $a3, 0x34($sp)
/* 7604 80006A04 01A02025 */  or         $a0, $t5, $zero
/* 7608 80006A08 24050050 */  addiu      $a1, $zero, 0x50
/* 760C 80006A0C 0C001618 */  jal        func_80005860
/* 7610 80006A10 3406FFE2 */   ori       $a2, $zero, 0xffe2
/* 7614 80006A14 26240028 */  addiu      $a0, $s1, 0x28
/* 7618 80006A18 3C058017 */  lui        $a1, %hi(D_80171AD6)
/* 761C 80006A1C 3C18800D */  lui        $t8, %hi(D_800D17B8)
/* 7620 80006A20 271817B8 */  addiu      $t8, $t8, %lo(D_800D17B8)
/* 7624 80006A24 94A51AD6 */  lhu        $a1, %lo(D_80171AD6)($a1)
/* 7628 80006A28 308EFFFF */  andi       $t6, $a0, 0xffff
/* 762C 80006A2C 01C02025 */  or         $a0, $t6, $zero
/* 7630 80006A30 AFB80014 */  sw         $t8, 0x14($sp)
/* 7634 80006A34 24060060 */  addiu      $a2, $zero, 0x60
/* 7638 80006A38 3407FFE2 */  ori        $a3, $zero, 0xffe2
/* 763C 80006A3C 0C009E00 */  jal        func_80027800
/* 7640 80006A40 AFA00010 */   sw        $zero, 0x10($sp)
/* 7644 80006A44 26240070 */  addiu      $a0, $s1, 0x70
/* 7648 80006A48 308FFFFF */  andi       $t7, $a0, 0xffff
/* 764C 80006A4C 01E02025 */  or         $a0, $t7, $zero
/* 7650 80006A50 3405FFB7 */  ori        $a1, $zero, 0xffb7
/* 7654 80006A54 3406FFCE */  ori        $a2, $zero, 0xffce
/* 7658 80006A58 0C001669 */  jal        func_800059A4
/* 765C 80006A5C 24070001 */   addiu     $a3, $zero, 1
/* 7660 80006A60 10000009 */  b          .L80006A88
/* 7664 80006A64 262400AA */   addiu     $a0, $s1, 0xaa
.L80006A68:
/* 7668 80006A68 3C068017 */  lui        $a2, %hi(GameSave_Names+0x16)
/* 766C 80006A6C A02022E8 */  sb         $zero, 0x22e8($at)
/* 7670 80006A70 24C61AB6 */  addiu      $a2, $a2, %lo(GameSave_Names+0x16)
/* 7674 80006A74 24040003 */  addiu      $a0, $zero, 3
/* 7678 80006A78 24050001 */  addiu      $a1, $zero, 1
/* 767C 80006A7C 0C020DA8 */  jal        func_800836A0
/* 7680 80006A80 24070003 */   addiu     $a3, $zero, 3
/* 7684 80006A84 262400AA */  addiu      $a0, $s1, 0xaa
.L80006A88:
/* 7688 80006A88 3099FFFF */  andi       $t9, $a0, 0xffff
/* 768C 80006A8C 03202025 */  or         $a0, $t9, $zero
/* 7690 80006A90 240501A8 */  addiu      $a1, $zero, 0x1a8
/* 7694 80006A94 3406FF80 */  ori        $a2, $zero, 0xff80
/* 7698 80006A98 3407FFAE */  ori        $a3, $zero, 0xffae
/* 769C 80006A9C 0C009CFF */  jal        func_800273FC
/* 76A0 80006AA0 AFA00010 */   sw        $zero, 0x10($sp)
/* 76A4 80006AA4 3C01800F */  lui        $at, %hi(D_800EAF10)
/* 76A8 80006AA8 C420AF10 */  lwc1       $f0, %lo(D_800EAF10)($at)
/* 76AC 80006AAC 8FA2003C */  lw         $v0, 0x3c($sp)
/* 76B0 80006AB0 3C010001 */  lui        $at, 1
/* 76B4 80006AB4 00411021 */  addu       $v0, $v0, $at
/* 76B8 80006AB8 944A0F84 */  lhu        $t2, 0xf84($v0)
/* 76BC 80006ABC 3C0B800E */  lui        $t3, %hi(D_800D8548)
/* 76C0 80006AC0 26240099 */  addiu      $a0, $s1, 0x99
/* 76C4 80006AC4 256B8548 */  addiu      $t3, $t3, %lo(D_800D8548)
/* 76C8 80006AC8 308DFFFF */  andi       $t5, $a0, 0xffff
/* 76CC 80006ACC 3C05800C */  lui        $a1, %hi(D_800C505C)
/* 76D0 80006AD0 354C0201 */  ori        $t4, $t2, 0x201
/* 76D4 80006AD4 A44C0F84 */  sh         $t4, 0xf84($v0)
/* 76D8 80006AD8 AC4B107C */  sw         $t3, 0x107c($v0)
/* 76DC 80006ADC 24A5505C */  addiu      $a1, $a1, %lo(D_800C505C)
/* 76E0 80006AE0 01A02025 */  or         $a0, $t5, $zero
/* 76E4 80006AE4 3406FF96 */  ori        $a2, $zero, 0xff96
/* 76E8 80006AE8 3407FFAE */  ori        $a3, $zero, 0xffae
/* 76EC 80006AEC AFA00010 */  sw         $zero, 0x10($sp)
/* 76F0 80006AF0 AFA00014 */  sw         $zero, 0x14($sp)
/* 76F4 80006AF4 AFA00018 */  sw         $zero, 0x18($sp)
/* 76F8 80006AF8 AFA0001C */  sw         $zero, 0x1c($sp)
/* 76FC 80006AFC E4400FA8 */  swc1       $f0, 0xfa8($v0)
/* 7700 80006B00 0C009F10 */  jal        func_80027C40
/* 7704 80006B04 E4400FA4 */   swc1      $f0, 0xfa4($v0)
/* 7708 80006B08 8FBF002C */  lw         $ra, 0x2c($sp)
/* 770C 80006B0C 8FB00024 */  lw         $s0, 0x24($sp)
/* 7710 80006B10 8FB10028 */  lw         $s1, 0x28($sp)
/* 7714 80006B14 03E00008 */  jr         $ra
/* 7718 80006B18 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_80006B1C
/* 771C 80006B1C 3087FFFF */  andi       $a3, $a0, 0xffff
/* 7720 80006B20 24E600AB */  addiu      $a2, $a3, 0xab
/* 7724 80006B24 30CEFFFF */  andi       $t6, $a2, 0xffff
/* 7728 80006B28 24E500BD */  addiu      $a1, $a3, 0xbd
/* 772C 80006B2C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7730 80006B30 01C5082A */  slt        $at, $t6, $a1
/* 7734 80006B34 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7738 80006B38 AFA40018 */  sw         $a0, 0x18($sp)
/* 773C 80006B3C 1020000D */  beqz       $at, .L80006B74
/* 7740 80006B40 30C2FFFF */   andi      $v0, $a2, 0xffff
/* 7744 80006B44 3C03800F */  lui        $v1, %hi(gActors)
/* 7748 80006B48 2463F510 */  addiu      $v1, $v1, %lo(gActors)
/* 774C 80006B4C 24040198 */  addiu      $a0, $zero, 0x198
.L80006B50:
/* 7750 80006B50 00440019 */  multu      $v0, $a0
/* 7754 80006B54 24420001 */  addiu      $v0, $v0, 1
/* 7758 80006B58 3059FFFF */  andi       $t9, $v0, 0xffff
/* 775C 80006B5C 0325082A */  slt        $at, $t9, $a1
/* 7760 80006B60 03201025 */  or         $v0, $t9, $zero
/* 7764 80006B64 00007812 */  mflo       $t7
/* 7768 80006B68 006FC021 */  addu       $t8, $v1, $t7
/* 776C 80006B6C 1420FFF8 */  bnez       $at, .L80006B50
/* 7770 80006B70 AF000080 */   sw        $zero, 0x80($t8)
.L80006B74:
/* 7774 80006B74 0C0018D8 */  jal        func_80006360
/* 7778 80006B78 30E4FFFF */   andi      $a0, $a3, 0xffff
/* 777C 80006B7C 3C01800C */  lui        $at, %hi(gSaveSlotIndex)
/* 7780 80006B80 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7784 80006B84 A0205008 */  sb         $zero, %lo(gSaveSlotIndex)($at)
/* 7788 80006B88 3C01800C */  lui        $at, %hi(gGameSubState)
/* 778C 80006B8C 24080001 */  addiu      $t0, $zero, 1
/* 7790 80006B90 A428E4F4 */  sh         $t0, %lo(gGameSubState)($at)
/* 7794 80006B94 03E00008 */  jr         $ra
/* 7798 80006B98 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80006B9C
/* 779C 80006B9C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 77A0 80006BA0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 77A4 80006BA4 AFA40020 */  sw         $a0, 0x20($sp)
/* 77A8 80006BA8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 77AC 80006BAC 01C02025 */  or         $a0, $t6, $zero
/* 77B0 80006BB0 A7AE0022 */  sh         $t6, 0x22($sp)
/* 77B4 80006BB4 AFA00010 */  sw         $zero, 0x10($sp)
/* 77B8 80006BB8 240500CA */  addiu      $a1, $zero, 0xca
/* 77BC 80006BBC 3406FF80 */  ori        $a2, $zero, 0xff80
/* 77C0 80006BC0 0C009CFF */  jal        func_800273FC
/* 77C4 80006BC4 24070030 */   addiu     $a3, $zero, 0x30
/* 77C8 80006BC8 97A40022 */  lhu        $a0, 0x22($sp)
/* 77CC 80006BCC 3C18800F */  lui        $t8, 0x800f
/* 77D0 80006BD0 00047880 */  sll        $t7, $a0, 2
/* 77D4 80006BD4 01E47823 */  subu       $t7, $t7, $a0
/* 77D8 80006BD8 000F7880 */  sll        $t7, $t7, 2
/* 77DC 80006BDC 01E47821 */  addu       $t7, $t7, $a0
/* 77E0 80006BE0 000F7880 */  sll        $t7, $t7, 2
/* 77E4 80006BE4 01E47823 */  subu       $t7, $t7, $a0
/* 77E8 80006BE8 000F78C0 */  sll        $t7, $t7, 3
/* 77EC 80006BEC 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 77F0 80006BF0 01F81821 */  addu       $v1, $t7, $t8
/* 77F4 80006BF4 94790094 */  lhu        $t9, 0x94($v1)
/* 77F8 80006BF8 24090080 */  addiu      $t1, $zero, 0x80
/* 77FC 80006BFC 3728000F */  ori        $t0, $t9, 0xf
/* 7800 80006C00 A4680094 */  sh         $t0, 0x94($v1)
/* 7804 80006C04 A069009F */  sb         $t1, 0x9f($v1)
/* 7808 80006C08 3C01800F */  lui        $at, %hi(D_800EAF14)
/* 780C 80006C0C C424AF14 */  lwc1       $f4, %lo(D_800EAF14)($at)
/* 7810 80006C10 3C01800F */  lui        $at, %hi(D_800EAF18)
/* 7814 80006C14 E46400B4 */  swc1       $f4, 0xb4($v1)
/* 7818 80006C18 C426AF18 */  lwc1       $f6, %lo(D_800EAF18)($at)
/* 781C 80006C1C 3C01800F */  lui        $at, %hi(D_800EAF1C)
/* 7820 80006C20 E46600B8 */  swc1       $f6, 0xb8($v1)
/* 7824 80006C24 C428AF1C */  lwc1       $f8, %lo(D_800EAF1C)($at)
/* 7828 80006C28 24840001 */  addiu      $a0, $a0, 1
/* 782C 80006C2C 308AFFFF */  andi       $t2, $a0, 0xffff
/* 7830 80006C30 01402025 */  or         $a0, $t2, $zero
/* 7834 80006C34 A7AA0022 */  sh         $t2, 0x22($sp)
/* 7838 80006C38 240500CA */  addiu      $a1, $zero, 0xca
/* 783C 80006C3C 3406FF80 */  ori        $a2, $zero, 0xff80
/* 7840 80006C40 24070030 */  addiu      $a3, $zero, 0x30
/* 7844 80006C44 AFA00010 */  sw         $zero, 0x10($sp)
/* 7848 80006C48 0C009CFF */  jal        func_800273FC
/* 784C 80006C4C E46800C4 */   swc1      $f8, 0xc4($v1)
/* 7850 80006C50 97A40022 */  lhu        $a0, 0x22($sp)
/* 7854 80006C54 3C0C800F */  lui        $t4, 0x800f
/* 7858 80006C58 00045880 */  sll        $t3, $a0, 2
/* 785C 80006C5C 01645823 */  subu       $t3, $t3, $a0
/* 7860 80006C60 000B5880 */  sll        $t3, $t3, 2
/* 7864 80006C64 01645821 */  addu       $t3, $t3, $a0
/* 7868 80006C68 000B5880 */  sll        $t3, $t3, 2
/* 786C 80006C6C 01645823 */  subu       $t3, $t3, $a0
/* 7870 80006C70 000B58C0 */  sll        $t3, $t3, 3
/* 7874 80006C74 258CF510 */  addiu      $t4, $t4, -0xaf0
/* 7878 80006C78 016C1821 */  addu       $v1, $t3, $t4
/* 787C 80006C7C 946D0094 */  lhu        $t5, 0x94($v1)
/* 7880 80006C80 240F0080 */  addiu      $t7, $zero, 0x80
/* 7884 80006C84 35AE000F */  ori        $t6, $t5, 0xf
/* 7888 80006C88 A46E0094 */  sh         $t6, 0x94($v1)
/* 788C 80006C8C A06F009F */  sb         $t7, 0x9f($v1)
/* 7890 80006C90 3C01800F */  lui        $at, %hi(D_800EAF20)
/* 7894 80006C94 C42AAF20 */  lwc1       $f10, %lo(D_800EAF20)($at)
/* 7898 80006C98 3C01800F */  lui        $at, %hi(D_800EAF24)
/* 789C 80006C9C E46A00B4 */  swc1       $f10, 0xb4($v1)
/* 78A0 80006CA0 C430AF24 */  lwc1       $f16, %lo(D_800EAF24)($at)
/* 78A4 80006CA4 3C014234 */  lui        $at, 0x4234
/* 78A8 80006CA8 44819000 */  mtc1       $at, $f18
/* 78AC 80006CAC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 78B0 80006CB0 24840001 */  addiu      $a0, $a0, 1
/* 78B4 80006CB4 3082FFFF */  andi       $v0, $a0, 0xffff
/* 78B8 80006CB8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 78BC 80006CBC E47000B8 */  swc1       $f16, 0xb8($v1)
/* 78C0 80006CC0 03E00008 */  jr         $ra
/* 78C4 80006CC4 E47200C4 */   swc1      $f18, 0xc4($v1)

glabel func_80006CC8
/* 78C8 80006CC8 3C03800C */  lui        $v1, %hi(gButtonPress)
/* 78CC 80006CCC 3C0E800C */  lui        $t6, %hi(gButton_DLeft)
/* 78D0 80006CD0 95CEE50C */  lhu        $t6, %lo(gButton_DLeft)($t6)
/* 78D4 80006CD4 9463E4FC */  lhu        $v1, %lo(gButtonPress)($v1)
/* 78D8 80006CD8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 78DC 80006CDC 006E7824 */  and        $t7, $v1, $t6
/* 78E0 80006CE0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 78E4 80006CE4 AFA40028 */  sw         $a0, 0x28($sp)
/* 78E8 80006CE8 AFA5002C */  sw         $a1, 0x2c($sp)
/* 78EC 80006CEC 3087FFFF */  andi       $a3, $a0, 0xffff
/* 78F0 80006CF0 11E0001D */  beqz       $t7, .L80006D68
/* 78F4 80006CF4 30A6FFFF */   andi      $a2, $a1, 0xffff
/* 78F8 80006CF8 3C188010 */  lui        $t8, %hi(D_80101E20)
/* 78FC 80006CFC 93181E20 */  lbu        $t8, %lo(D_80101E20)($t8)
/* 7900 80006D00 24040022 */  addiu      $a0, $zero, 0x22
/* 7904 80006D04 17000018 */  bnez       $t8, .L80006D68
/* 7908 80006D08 00000000 */   nop
/* 790C 80006D0C A7A6002E */  sh         $a2, 0x2e($sp)
/* 7910 80006D10 0C000CE0 */  jal        SFX_Play_2
/* 7914 80006D14 A7A7002A */   sh        $a3, 0x2a($sp)
/* 7918 80006D18 97A7002A */  lhu        $a3, 0x2a($sp)
/* 791C 80006D1C 3C09800F */  lui        $t1, 0x800f
/* 7920 80006D20 00074080 */  sll        $t0, $a3, 2
/* 7924 80006D24 01074023 */  subu       $t0, $t0, $a3
/* 7928 80006D28 00084080 */  sll        $t0, $t0, 2
/* 792C 80006D2C 01074021 */  addu       $t0, $t0, $a3
/* 7930 80006D30 00084080 */  sll        $t0, $t0, 2
/* 7934 80006D34 01074023 */  subu       $t0, $t0, $a3
/* 7938 80006D38 97A6002E */  lhu        $a2, 0x2e($sp)
/* 793C 80006D3C 24190001 */  addiu      $t9, $zero, 1
/* 7940 80006D40 3C018010 */  lui        $at, %hi(D_80101E20)
/* 7944 80006D44 000840C0 */  sll        $t0, $t0, 3
/* 7948 80006D48 2529F510 */  addiu      $t1, $t1, -0xaf0
/* 794C 80006D4C A0391E20 */  sb         $t9, %lo(D_80101E20)($at)
/* 7950 80006D50 01091021 */  addu       $v0, $t0, $t1
/* 7954 80006D54 3C03800C */  lui        $v1, %hi(gButtonPress)
/* 7958 80006D58 A4460220 */  sh         $a2, 0x220($v0)
/* 795C 80006D5C A4460088 */  sh         $a2, 0x88($v0)
/* 7960 80006D60 9463E4FC */  lhu        $v1, %lo(gButtonPress)($v1)
/* 7964 80006D64 00000000 */  nop
.L80006D68:
/* 7968 80006D68 3C0A800C */  lui        $t2, %hi(gButton_DRight)
/* 796C 80006D6C 954AE510 */  lhu        $t2, %lo(gButton_DRight)($t2)
/* 7970 80006D70 3C0C8010 */  lui        $t4, %hi(D_80101E20)
/* 7974 80006D74 006A5824 */  and        $t3, $v1, $t2
/* 7978 80006D78 1160001B */  beqz       $t3, .L80006DE8
/* 797C 80006D7C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 7980 80006D80 918C1E20 */  lbu        $t4, %lo(D_80101E20)($t4)
/* 7984 80006D84 24010001 */  addiu      $at, $zero, 1
/* 7988 80006D88 15810016 */  bne        $t4, $at, .L80006DE4
/* 798C 80006D8C 24040022 */   addiu     $a0, $zero, 0x22
/* 7990 80006D90 00076880 */  sll        $t5, $a3, 2
/* 7994 80006D94 01A76823 */  subu       $t5, $t5, $a3
/* 7998 80006D98 000D6880 */  sll        $t5, $t5, 2
/* 799C 80006D9C 01A76821 */  addu       $t5, $t5, $a3
/* 79A0 80006DA0 000D6880 */  sll        $t5, $t5, 2
/* 79A4 80006DA4 01A76823 */  subu       $t5, $t5, $a3
/* 79A8 80006DA8 3C0E800F */  lui        $t6, %hi(gActors)
/* 79AC 80006DAC 25CEF510 */  addiu      $t6, $t6, %lo(gActors)
/* 79B0 80006DB0 000D68C0 */  sll        $t5, $t5, 3
/* 79B4 80006DB4 01AE1021 */  addu       $v0, $t5, $t6
/* 79B8 80006DB8 AFA2001C */  sw         $v0, 0x1c($sp)
/* 79BC 80006DBC 00C02825 */  or         $a1, $a2, $zero
/* 79C0 80006DC0 0C000CE0 */  jal        SFX_Play_2
/* 79C4 80006DC4 AFA60020 */   sw        $a2, 0x20($sp)
/* 79C8 80006DC8 8FA50020 */  lw         $a1, 0x20($sp)
/* 79CC 80006DCC 8FA2001C */  lw         $v0, 0x1c($sp)
/* 79D0 80006DD0 3C018010 */  lui        $at, %hi(D_80101E20)
/* 79D4 80006DD4 A0201E20 */  sb         $zero, %lo(D_80101E20)($at)
/* 79D8 80006DD8 24A3002A */  addiu      $v1, $a1, 0x2a
/* 79DC 80006DDC A4430220 */  sh         $v1, 0x220($v0)
/* 79E0 80006DE0 A4430088 */  sh         $v1, 0x88($v0)
.L80006DE4:
/* 79E4 80006DE4 8FBF0014 */  lw         $ra, 0x14($sp)
.L80006DE8:
/* 79E8 80006DE8 27BD0028 */  addiu      $sp, $sp, 0x28
/* 79EC 80006DEC 03E00008 */  jr         $ra
/* 79F0 80006DF0 00000000 */   nop

glabel func_80006DF4
/* 79F4 80006DF4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 79F8 80006DF8 000E7880 */  sll        $t7, $t6, 2
/* 79FC 80006DFC 01EE7823 */  subu       $t7, $t7, $t6
/* 7A00 80006E00 000F7880 */  sll        $t7, $t7, 2
/* 7A04 80006E04 01EE7821 */  addu       $t7, $t7, $t6
/* 7A08 80006E08 000F7880 */  sll        $t7, $t7, 2
/* 7A0C 80006E0C 01EE7823 */  subu       $t7, $t7, $t6
/* 7A10 80006E10 3C18800F */  lui        $t8, %hi(gActors)
/* 7A14 80006E14 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 7A18 80006E18 000F78C0 */  sll        $t7, $t7, 3
/* 7A1C 80006E1C 3C014100 */  lui        $at, 0x4100
/* 7A20 80006E20 01F81021 */  addu       $v0, $t7, $t8
/* 7A24 80006E24 44810000 */  mtc1       $at, $f0
/* 7A28 80006E28 C44400BC */  lwc1       $f4, 0xbc($v0)
/* 7A2C 80006E2C C44800C0 */  lwc1       $f8, 0xc0($v0)
/* 7A30 80006E30 46002180 */  add.s      $f6, $f4, $f0
/* 7A34 80006E34 C4500254 */  lwc1       $f16, 0x254($v0)
/* 7A38 80006E38 C4440258 */  lwc1       $f4, 0x258($v0)
/* 7A3C 80006E3C E44600BC */  swc1       $f6, 0xbc($v0)
/* 7A40 80006E40 46004280 */  add.s      $f10, $f8, $f0
/* 7A44 80006E44 AFA40000 */  sw         $a0, ($sp)
/* 7A48 80006E48 46008481 */  sub.s      $f18, $f16, $f0
/* 7A4C 80006E4C E44A00C0 */  swc1       $f10, 0xc0($v0)
/* 7A50 80006E50 46002181 */  sub.s      $f6, $f4, $f0
/* 7A54 80006E54 E4520254 */  swc1       $f18, 0x254($v0)
/* 7A58 80006E58 03E00008 */  jr         $ra
/* 7A5C 80006E5C E4460258 */   swc1      $f6, 0x258($v0)

glabel func_80006E60
/* 7A60 80006E60 3C0E8017 */  lui        $t6, %hi(gWorldProgress)
/* 7A64 80006E64 91CE1B18 */  lbu        $t6, %lo(gWorldProgress)($t6)
/* 7A68 80006E68 3C038018 */  lui        $v1, %hi(gCurrentStage)
/* 7A6C 80006E6C 31C2FFFF */  andi       $v0, $t6, 0xffff
/* 7A70 80006E70 24638162 */  addiu      $v1, $v1, %lo(gCurrentStage)
/* 7A74 80006E74 00027840 */  sll        $t7, $v0, 1
/* 7A78 80006E78 3C18800D */  lui        $t8, %hi(D_800C8378)
/* 7A7C 80006E7C 030FC021 */  addu       $t8, $t8, $t7
/* 7A80 80006E80 A46E0000 */  sh         $t6, ($v1)
/* 7A84 80006E84 97188378 */  lhu        $t8, %lo(D_800C8378)($t8)
/* 7A88 80006E88 3C19800D */  lui        $t9, %hi(D_800C83F8)
/* 7A8C 80006E8C 3C01800C */  lui        $at, %hi(D_800BE5D0)
/* 7A90 80006E90 032FC821 */  addu       $t9, $t9, $t7
/* 7A94 80006E94 973983F8 */  lhu        $t9, %lo(D_800C83F8)($t9)
/* 7A98 80006E98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7A9C 80006E9C A438E5D0 */  sh         $t8, %lo(D_800BE5D0)($at)
/* 7AA0 80006EA0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7AA4 80006EA4 3C01800D */  lui        $at, %hi(D_800D28E4)
/* 7AA8 80006EA8 0C010E46 */  jal        func_80043918
/* 7AAC 80006EAC A43928E4 */   sh        $t9, %lo(D_800D28E4)($at)
/* 7AB0 80006EB0 24080001 */  addiu      $t0, $zero, 1
/* 7AB4 80006EB4 3C01800D */  lui        $at, %hi(D_800CBF40)
/* 7AB8 80006EB8 A428BF40 */  sh         $t0, %lo(D_800CBF40)($at)
/* 7ABC 80006EBC 3C01800C */  lui        $at, %hi(gGameState)
/* 7AC0 80006EC0 2409000C */  addiu      $t1, $zero, 0xc
/* 7AC4 80006EC4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7AC8 80006EC8 A429E4F0 */  sh         $t1, %lo(gGameState)($at)
/* 7ACC 80006ECC 3C01800C */  lui        $at, %hi(gGameSubState)
/* 7AD0 80006ED0 A420E4F4 */  sh         $zero, %lo(gGameSubState)($at)
/* 7AD4 80006ED4 03E00008 */  jr         $ra
/* 7AD8 80006ED8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80006EDC
/* 7ADC 80006EDC 3C08800F */  lui        $t0, %hi(gActors)
/* 7AE0 80006EE0 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 7AE4 80006EE4 8D020488 */  lw         $v0, 0x488($t0)
/* 7AE8 80006EE8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 7AEC 80006EEC 304E0001 */  andi       $t6, $v0, 1
/* 7AF0 80006EF0 AFBF0024 */  sw         $ra, 0x24($sp)
/* 7AF4 80006EF4 11C00007 */  beqz       $t6, .L80006F14
/* 7AF8 80006EF8 AFA40030 */   sw        $a0, 0x30($sp)
/* 7AFC 80006EFC 244FFFF0 */  addiu      $t7, $v0, -0x10
/* 7B00 80006F00 240100FF */  addiu      $at, $zero, 0xff
/* 7B04 80006F04 15E10009 */  bne        $t7, $at, .L80006F2C
/* 7B08 80006F08 AD0F0488 */   sw        $t7, 0x488($t0)
/* 7B0C 80006F0C 10000007 */  b          .L80006F2C
/* 7B10 80006F10 AD000488 */   sw        $zero, 0x488($t0)
.L80006F14:
/* 7B14 80006F14 24590010 */  addiu      $t9, $v0, 0x10
/* 7B18 80006F18 24010080 */  addiu      $at, $zero, 0x80
/* 7B1C 80006F1C 17210003 */  bne        $t9, $at, .L80006F2C
/* 7B20 80006F20 AD190488 */   sw        $t9, 0x488($t0)
/* 7B24 80006F24 240A007F */  addiu      $t2, $zero, 0x7f
/* 7B28 80006F28 AD0A0488 */  sw         $t2, 0x488($t0)
.L80006F2C:
/* 7B2C 80006F2C 3C04800C */  lui        $a0, %hi(D_800C500C)
/* 7B30 80006F30 3C03800C */  lui        $v1, %hi(gSaveSlotIndex)
/* 7B34 80006F34 90635008 */  lbu        $v1, %lo(gSaveSlotIndex)($v1)
/* 7B38 80006F38 9084500C */  lbu        $a0, %lo(D_800C500C)($a0)
/* 7B3C 80006F3C 00000000 */  nop
/* 7B40 80006F40 1083009F */  beq        $a0, $v1, .L800071C0
/* 7B44 80006F44 00000000 */   nop
/* 7B48 80006F48 10800009 */  beqz       $a0, .L80006F70
/* 7B4C 80006F4C 3C05800C */   lui       $a1, 0x800c
/* 7B50 80006F50 24010001 */  addiu      $at, $zero, 1
/* 7B54 80006F54 10810021 */  beq        $a0, $at, .L80006FDC
/* 7B58 80006F58 3C05800C */   lui       $a1, 0x800c
/* 7B5C 80006F5C 24010002 */  addiu      $at, $zero, 2
/* 7B60 80006F60 10810039 */  beq        $a0, $at, .L80007048
/* 7B64 80006F64 3C05800C */   lui       $a1, %hi(Alphabet_num1)
/* 7B68 80006F68 10000047 */  b          .L80007088
/* 7B6C 80006F6C 00000000 */   nop
.L80006F70:
/* 7B70 80006F70 97A30032 */  lhu        $v1, 0x32($sp)
/* 7B74 80006F74 24A55024 */  addiu      $a1, $a1, %lo(Alphabet_num1)
/* 7B78 80006F78 2464000C */  addiu      $a0, $v1, 0xc
/* 7B7C 80006F7C 308BFFFF */  andi       $t3, $a0, 0xffff
/* 7B80 80006F80 01602025 */  or         $a0, $t3, $zero
/* 7B84 80006F84 3406FF9C */  ori        $a2, $zero, 0xff9c
/* 7B88 80006F88 2407002B */  addiu      $a3, $zero, 0x2b
/* 7B8C 80006F8C AFA00010 */  sw         $zero, 0x10($sp)
/* 7B90 80006F90 AFA00014 */  sw         $zero, 0x14($sp)
/* 7B94 80006F94 AFA00018 */  sw         $zero, 0x18($sp)
/* 7B98 80006F98 AFA0001C */  sw         $zero, 0x1c($sp)
/* 7B9C 80006F9C 0C009F10 */  jal        func_80027C40
/* 7BA0 80006FA0 AFA30028 */   sw        $v1, 0x28($sp)
/* 7BA4 80006FA4 8FA30028 */  lw         $v1, 0x28($sp)
/* 7BA8 80006FA8 240500F4 */  addiu      $a1, $zero, 0xf4
/* 7BAC 80006FAC 24640008 */  addiu      $a0, $v1, 8
/* 7BB0 80006FB0 308CFFFF */  andi       $t4, $a0, 0xffff
/* 7BB4 80006FB4 01802025 */  or         $a0, $t4, $zero
/* 7BB8 80006FB8 3406FF80 */  ori        $a2, $zero, 0xff80
/* 7BBC 80006FBC 2407002B */  addiu      $a3, $zero, 0x2b
/* 7BC0 80006FC0 0C009CFF */  jal        func_800273FC
/* 7BC4 80006FC4 AFA00010 */   sw        $zero, 0x10($sp)
/* 7BC8 80006FC8 3C03800C */  lui        $v1, %hi(gSaveSlotIndex)
/* 7BCC 80006FCC 3C08800F */  lui        $t0, %hi(gActors)
/* 7BD0 80006FD0 90635008 */  lbu        $v1, %lo(gSaveSlotIndex)($v1)
/* 7BD4 80006FD4 1000002C */  b          .L80007088
/* 7BD8 80006FD8 2508F510 */   addiu     $t0, $t0, %lo(gActors)
.L80006FDC:
/* 7BDC 80006FDC 97A30032 */  lhu        $v1, 0x32($sp)
/* 7BE0 80006FE0 24A55028 */  addiu      $a1, $a1, 0x5028
/* 7BE4 80006FE4 24640012 */  addiu      $a0, $v1, 0x12
/* 7BE8 80006FE8 308DFFFF */  andi       $t5, $a0, 0xffff
/* 7BEC 80006FEC 01A02025 */  or         $a0, $t5, $zero
/* 7BF0 80006FF0 3406FF9C */  ori        $a2, $zero, 0xff9c
/* 7BF4 80006FF4 3407FFE0 */  ori        $a3, $zero, 0xffe0
/* 7BF8 80006FF8 AFA00010 */  sw         $zero, 0x10($sp)
/* 7BFC 80006FFC AFA00014 */  sw         $zero, 0x14($sp)
/* 7C00 80007000 AFA00018 */  sw         $zero, 0x18($sp)
/* 7C04 80007004 AFA0001C */  sw         $zero, 0x1c($sp)
/* 7C08 80007008 0C009F10 */  jal        func_80027C40
/* 7C0C 8000700C AFA30028 */   sw        $v1, 0x28($sp)
/* 7C10 80007010 8FA30028 */  lw         $v1, 0x28($sp)
/* 7C14 80007014 240500F4 */  addiu      $a1, $zero, 0xf4
/* 7C18 80007018 24640009 */  addiu      $a0, $v1, 9
/* 7C1C 8000701C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 7C20 80007020 01C02025 */  or         $a0, $t6, $zero
/* 7C24 80007024 3406FF80 */  ori        $a2, $zero, 0xff80
/* 7C28 80007028 3407FFE0 */  ori        $a3, $zero, 0xffe0
/* 7C2C 8000702C 0C009CFF */  jal        func_800273FC
/* 7C30 80007030 AFA00010 */   sw        $zero, 0x10($sp)
/* 7C34 80007034 3C03800C */  lui        $v1, %hi(gSaveSlotIndex)
/* 7C38 80007038 3C08800F */  lui        $t0, %hi(gActors)
/* 7C3C 8000703C 90635008 */  lbu        $v1, %lo(gSaveSlotIndex)($v1)
/* 7C40 80007040 10000011 */  b          .L80007088
/* 7C44 80007044 2508F510 */   addiu     $t0, $t0, %lo(gActors)
.L80007048:
/* 7C48 80007048 97A40032 */  lhu        $a0, 0x32($sp)
/* 7C4C 8000704C 24A5505C */  addiu      $a1, $a1, 0x505c
/* 7C50 80007050 24840099 */  addiu      $a0, $a0, 0x99
/* 7C54 80007054 308FFFFF */  andi       $t7, $a0, 0xffff
/* 7C58 80007058 01E02025 */  or         $a0, $t7, $zero
/* 7C5C 8000705C 3406FF96 */  ori        $a2, $zero, 0xff96
/* 7C60 80007060 3407FFAE */  ori        $a3, $zero, 0xffae
/* 7C64 80007064 AFA00010 */  sw         $zero, 0x10($sp)
/* 7C68 80007068 AFA00014 */  sw         $zero, 0x14($sp)
/* 7C6C 8000706C AFA00018 */  sw         $zero, 0x18($sp)
/* 7C70 80007070 0C009F10 */  jal        func_80027C40
/* 7C74 80007074 AFA0001C */   sw        $zero, 0x1c($sp)
/* 7C78 80007078 3C03800C */  lui        $v1, %hi(gSaveSlotIndex)
/* 7C7C 8000707C 3C08800F */  lui        $t0, %hi(gActors)
/* 7C80 80007080 90635008 */  lbu        $v1, %lo(gSaveSlotIndex)($v1)
/* 7C84 80007084 2508F510 */  addiu      $t0, $t0, %lo(gActors)
.L80007088:
/* 7C88 80007088 10600009 */  beqz       $v1, .L800070B0
/* 7C8C 8000708C 24190028 */   addiu     $t9, $zero, 0x28
/* 7C90 80007090 24010001 */  addiu      $at, $zero, 1
/* 7C94 80007094 10610021 */  beq        $v1, $at, .L8000711C
/* 7C98 80007098 240BFFE1 */   addiu     $t3, $zero, -0x1f
/* 7C9C 8000709C 24010002 */  addiu      $at, $zero, 2
/* 7CA0 800070A0 10610039 */  beq        $v1, $at, .L80007188
/* 7CA4 800070A4 240FFFAE */   addiu     $t7, $zero, -0x52
/* 7CA8 800070A8 10000045 */  b          .L800071C0
/* 7CAC 800070AC 00000000 */   nop
.L800070B0:
/* 7CB0 800070B0 97A30032 */  lhu        $v1, 0x32($sp)
/* 7CB4 800070B4 3C014080 */  lui        $at, 0x4080
/* 7CB8 800070B8 0003C080 */  sll        $t8, $v1, 2
/* 7CBC 800070BC 0303C023 */  subu       $t8, $t8, $v1
/* 7CC0 800070C0 0018C080 */  sll        $t8, $t8, 2
/* 7CC4 800070C4 0303C021 */  addu       $t8, $t8, $v1
/* 7CC8 800070C8 0018C080 */  sll        $t8, $t8, 2
/* 7CCC 800070CC 0303C023 */  subu       $t8, $t8, $v1
/* 7CD0 800070D0 44812000 */  mtc1       $at, $f4
/* 7CD4 800070D4 0018C0C0 */  sll        $t8, $t8, 3
/* 7CD8 800070D8 24640008 */  addiu      $a0, $v1, 8
/* 7CDC 800070DC 01181021 */  addu       $v0, $t0, $t8
/* 7CE0 800070E0 3089FFFF */  andi       $t1, $a0, 0xffff
/* 7CE4 800070E4 3C05800E */  lui        $a1, %hi(D_800E13FC)
/* 7CE8 800070E8 A459437C */  sh         $t9, 0x437c($v0)
/* 7CEC 800070EC 24A513FC */  addiu      $a1, $a1, %lo(D_800E13FC)
/* 7CF0 800070F0 01202025 */  or         $a0, $t1, $zero
/* 7CF4 800070F4 3406FF80 */  ori        $a2, $zero, 0xff80
/* 7CF8 800070F8 2407002B */  addiu      $a3, $zero, 0x2b
/* 7CFC 800070FC AFA00010 */  sw         $zero, 0x10($sp)
/* 7D00 80007100 0C009D44 */  jal        func_80027510
/* 7D04 80007104 E44443A8 */   swc1      $f4, 0x43a8($v0)
/* 7D08 80007108 3C03800C */  lui        $v1, %hi(gSaveSlotIndex)
/* 7D0C 8000710C 3C08800F */  lui        $t0, %hi(gActors)
/* 7D10 80007110 90635008 */  lbu        $v1, %lo(gSaveSlotIndex)($v1)
/* 7D14 80007114 1000002A */  b          .L800071C0
/* 7D18 80007118 2508F510 */   addiu     $t0, $t0, %lo(gActors)
.L8000711C:
/* 7D1C 8000711C 97A30032 */  lhu        $v1, 0x32($sp)
/* 7D20 80007120 3C014080 */  lui        $at, 0x4080
/* 7D24 80007124 00035080 */  sll        $t2, $v1, 2
/* 7D28 80007128 01435023 */  subu       $t2, $t2, $v1
/* 7D2C 8000712C 000A5080 */  sll        $t2, $t2, 2
/* 7D30 80007130 01435021 */  addu       $t2, $t2, $v1
/* 7D34 80007134 000A5080 */  sll        $t2, $t2, 2
/* 7D38 80007138 01435023 */  subu       $t2, $t2, $v1
/* 7D3C 8000713C 44813000 */  mtc1       $at, $f6
/* 7D40 80007140 000A50C0 */  sll        $t2, $t2, 3
/* 7D44 80007144 24640009 */  addiu      $a0, $v1, 9
/* 7D48 80007148 010A1021 */  addu       $v0, $t0, $t2
/* 7D4C 8000714C 308CFFFF */  andi       $t4, $a0, 0xffff
/* 7D50 80007150 3C05800E */  lui        $a1, %hi(D_800E13FC)
/* 7D54 80007154 A44B437C */  sh         $t3, 0x437c($v0)
/* 7D58 80007158 24A513FC */  addiu      $a1, $a1, %lo(D_800E13FC)
/* 7D5C 8000715C 01802025 */  or         $a0, $t4, $zero
/* 7D60 80007160 3406FF80 */  ori        $a2, $zero, 0xff80
/* 7D64 80007164 3407FFE0 */  ori        $a3, $zero, 0xffe0
/* 7D68 80007168 AFA00010 */  sw         $zero, 0x10($sp)
/* 7D6C 8000716C 0C009D44 */  jal        func_80027510
/* 7D70 80007170 E44643A8 */   swc1      $f6, 0x43a8($v0)
/* 7D74 80007174 3C03800C */  lui        $v1, %hi(gSaveSlotIndex)
/* 7D78 80007178 3C08800F */  lui        $t0, %hi(gActors)
/* 7D7C 8000717C 90635008 */  lbu        $v1, %lo(gSaveSlotIndex)($v1)
/* 7D80 80007180 1000000F */  b          .L800071C0
/* 7D84 80007184 2508F510 */   addiu     $t0, $t0, %lo(gActors)
.L80007188:
/* 7D88 80007188 97AD0032 */  lhu        $t5, 0x32($sp)
/* 7D8C 8000718C 3C01800F */  lui        $at, 0x800f
/* 7D90 80007190 000D7080 */  sll        $t6, $t5, 2
/* 7D94 80007194 01CD7023 */  subu       $t6, $t6, $t5
/* 7D98 80007198 000E7080 */  sll        $t6, $t6, 2
/* 7D9C 8000719C 01CD7021 */  addu       $t6, $t6, $t5
/* 7DA0 800071A0 000E7080 */  sll        $t6, $t6, 2
/* 7DA4 800071A4 01CD7023 */  subu       $t6, $t6, $t5
/* 7DA8 800071A8 000E70C0 */  sll        $t6, $t6, 3
/* 7DAC 800071AC 010E1021 */  addu       $v0, $t0, $t6
/* 7DB0 800071B0 A44F437C */  sh         $t7, 0x437c($v0)
/* 7DB4 800071B4 C428AF28 */  lwc1       $f8, -0x50d8($at)
/* 7DB8 800071B8 00000000 */  nop
/* 7DBC 800071BC E44843A8 */  swc1       $f8, 0x43a8($v0)
.L800071C0:
/* 7DC0 800071C0 10600009 */  beqz       $v1, .L800071E8
/* 7DC4 800071C4 3C05800C */   lui       $a1, 0x800c
/* 7DC8 800071C8 24010001 */  addiu      $at, $zero, 1
/* 7DCC 800071CC 10610015 */  beq        $v1, $at, .L80007224
/* 7DD0 800071D0 3C05800C */   lui       $a1, 0x800c
/* 7DD4 800071D4 24010002 */  addiu      $at, $zero, 2
/* 7DD8 800071D8 10610021 */  beq        $v1, $at, .L80007260
/* 7DDC 800071DC 3C05800C */   lui       $a1, 0x800c
/* 7DE0 800071E0 1000002D */  b          .L80007298
/* 7DE4 800071E4 8FBF0024 */   lw        $ra, 0x24($sp)
.L800071E8:
/* 7DE8 800071E8 97A40032 */  lhu        $a0, 0x32($sp)
/* 7DEC 800071EC 9102048B */  lbu        $v0, 0x48b($t0)
/* 7DF0 800071F0 2484000C */  addiu      $a0, $a0, 0xc
/* 7DF4 800071F4 3098FFFF */  andi       $t8, $a0, 0xffff
/* 7DF8 800071F8 03002025 */  or         $a0, $t8, $zero
/* 7DFC 800071FC 24A55024 */  addiu      $a1, $a1, 0x5024
/* 7E00 80007200 3406FF9C */  ori        $a2, $zero, 0xff9c
/* 7E04 80007204 2407002B */  addiu      $a3, $zero, 0x2b
/* 7E08 80007208 AFA00010 */  sw         $zero, 0x10($sp)
/* 7E0C 8000720C AFA0001C */  sw         $zero, 0x1c($sp)
/* 7E10 80007210 AFA20014 */  sw         $v0, 0x14($sp)
/* 7E14 80007214 0C009F10 */  jal        func_80027C40
/* 7E18 80007218 AFA20018 */   sw        $v0, 0x18($sp)
/* 7E1C 8000721C 1000001E */  b          .L80007298
/* 7E20 80007220 8FBF0024 */   lw        $ra, 0x24($sp)
.L80007224:
/* 7E24 80007224 97A40032 */  lhu        $a0, 0x32($sp)
/* 7E28 80007228 9102048B */  lbu        $v0, 0x48b($t0)
/* 7E2C 8000722C 24840012 */  addiu      $a0, $a0, 0x12
/* 7E30 80007230 3099FFFF */  andi       $t9, $a0, 0xffff
/* 7E34 80007234 03202025 */  or         $a0, $t9, $zero
/* 7E38 80007238 24A55028 */  addiu      $a1, $a1, 0x5028
/* 7E3C 8000723C 3406FF9C */  ori        $a2, $zero, 0xff9c
/* 7E40 80007240 3407FFE0 */  ori        $a3, $zero, 0xffe0
/* 7E44 80007244 AFA00010 */  sw         $zero, 0x10($sp)
/* 7E48 80007248 AFA0001C */  sw         $zero, 0x1c($sp)
/* 7E4C 8000724C AFA20014 */  sw         $v0, 0x14($sp)
/* 7E50 80007250 0C009F10 */  jal        func_80027C40
/* 7E54 80007254 AFA20018 */   sw        $v0, 0x18($sp)
/* 7E58 80007258 1000000F */  b          .L80007298
/* 7E5C 8000725C 8FBF0024 */   lw        $ra, 0x24($sp)
.L80007260:
/* 7E60 80007260 97A40032 */  lhu        $a0, 0x32($sp)
/* 7E64 80007264 9102048B */  lbu        $v0, 0x48b($t0)
/* 7E68 80007268 24840099 */  addiu      $a0, $a0, 0x99
/* 7E6C 8000726C 3089FFFF */  andi       $t1, $a0, 0xffff
/* 7E70 80007270 01202025 */  or         $a0, $t1, $zero
/* 7E74 80007274 24A5505C */  addiu      $a1, $a1, 0x505c
/* 7E78 80007278 3406FF96 */  ori        $a2, $zero, 0xff96
/* 7E7C 8000727C 3407FFAE */  ori        $a3, $zero, 0xffae
/* 7E80 80007280 AFA00010 */  sw         $zero, 0x10($sp)
/* 7E84 80007284 AFA0001C */  sw         $zero, 0x1c($sp)
/* 7E88 80007288 AFA20014 */  sw         $v0, 0x14($sp)
/* 7E8C 8000728C 0C009F10 */  jal        func_80027C40
/* 7E90 80007290 AFA20018 */   sw        $v0, 0x18($sp)
/* 7E94 80007294 8FBF0024 */  lw         $ra, 0x24($sp)
.L80007298:
/* 7E98 80007298 27BD0030 */  addiu      $sp, $sp, 0x30
/* 7E9C 8000729C 03E00008 */  jr         $ra
/* 7EA0 800072A0 00000000 */   nop

glabel func_800072A4
/* 7EA4 800072A4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7EA8 800072A8 3C04800C */  lui        $a0, %hi(nameEntrySpace)
/* 7EAC 800072AC AFBF001C */  sw         $ra, 0x1c($sp)
/* 7EB0 800072B0 24844FE8 */  addiu      $a0, $a0, %lo(nameEntrySpace)
/* 7EB4 800072B4 00001825 */  or         $v1, $zero, $zero
/* 7EB8 800072B8 00001025 */  or         $v0, $zero, $zero
.L800072BC:
/* 7EBC 800072BC 00027040 */  sll        $t6, $v0, 1
/* 7EC0 800072C0 008E7821 */  addu       $t7, $a0, $t6
/* 7EC4 800072C4 95F80000 */  lhu        $t8, ($t7)
/* 7EC8 800072C8 24420001 */  addiu      $v0, $v0, 1
/* 7ECC 800072CC 13000004 */  beqz       $t8, .L800072E0
/* 7ED0 800072D0 3049FFFF */   andi      $t1, $v0, 0xffff
/* 7ED4 800072D4 24630001 */  addiu      $v1, $v1, 1
/* 7ED8 800072D8 3079FFFF */  andi       $t9, $v1, 0xffff
/* 7EDC 800072DC 03201825 */  or         $v1, $t9, $zero
.L800072E0:
/* 7EE0 800072E0 2921000A */  slti       $at, $t1, 0xa
/* 7EE4 800072E4 1420FFF5 */  bnez       $at, .L800072BC
/* 7EE8 800072E8 01201025 */   or        $v0, $t1, $zero
/* 7EEC 800072EC 10600031 */  beqz       $v1, .L800073B4
/* 7EF0 800072F0 3C088010 */   lui       $t0, %hi(D_800FF510)
/* 7EF4 800072F4 2508F510 */  addiu      $t0, $t0, %lo(D_800FF510)
/* 7EF8 800072F8 910A2448 */  lbu        $t2, 0x2448($t0)
/* 7EFC 800072FC 3C03800F */  lui        $v1, 0x800f
/* 7F00 80007300 000A5880 */  sll        $t3, $t2, 2
/* 7F04 80007304 016A5823 */  subu       $t3, $t3, $t2
/* 7F08 80007308 000B5880 */  sll        $t3, $t3, 2
/* 7F0C 8000730C 016A5821 */  addu       $t3, $t3, $t2
/* 7F10 80007310 000B5880 */  sll        $t3, $t3, 2
/* 7F14 80007314 016A5823 */  subu       $t3, $t3, $t2
/* 7F18 80007318 2463F510 */  addiu      $v1, $v1, -0xaf0
/* 7F1C 8000731C 000B58C0 */  sll        $t3, $t3, 3
/* 7F20 80007320 006B1021 */  addu       $v0, $v1, $t3
/* 7F24 80007324 8C4CFEE8 */  lw         $t4, -0x118($v0)
/* 7F28 80007328 2401FFFE */  addiu      $at, $zero, -2
/* 7F2C 8000732C 01816824 */  and        $t5, $t4, $at
/* 7F30 80007330 AC4DFEE8 */  sw         $t5, -0x118($v0)
/* 7F34 80007334 91042448 */  lbu        $a0, 0x2448($t0)
/* 7F38 80007338 3C05800C */  lui        $a1, %hi(D_800C526C)
/* 7F3C 8000733C 2484000A */  addiu      $a0, $a0, 0xa
/* 7F40 80007340 308EFFFF */  andi       $t6, $a0, 0xffff
/* 7F44 80007344 01C02025 */  or         $a0, $t6, $zero
/* 7F48 80007348 24A5526C */  addiu      $a1, $a1, %lo(D_800C526C)
/* 7F4C 8000734C 3406FFA0 */  ori        $a2, $zero, 0xffa0
/* 7F50 80007350 3407FFB0 */  ori        $a3, $zero, 0xffb0
/* 7F54 80007354 0C009ECA */  jal        func_80027B28
/* 7F58 80007358 AFA00010 */   sw        $zero, 0x10($sp)
/* 7F5C 8000735C 3C03800F */  lui        $v1, %hi(gActors)
/* 7F60 80007360 2463F510 */  addiu      $v1, $v1, %lo(gActors)
/* 7F64 80007364 240F002E */  addiu      $t7, $zero, 0x2e
/* 7F68 80007368 2419FFB0 */  addiu      $t9, $zero, -0x50
/* 7F6C 8000736C A46F03B8 */  sh         $t7, 0x3b8($v1)
/* 7F70 80007370 A47903BC */  sh         $t9, 0x3bc($v1)
/* 7F74 80007374 847803B8 */  lh         $t8, 0x3b8($v1)
/* 7F78 80007378 846903BC */  lh         $t1, 0x3bc($v1)
/* 7F7C 8000737C 240A0001 */  addiu      $t2, $zero, 1
/* 7F80 80007380 3C018010 */  lui        $at, %hi(D_80101E20)
/* 7F84 80007384 A4780220 */  sh         $t8, 0x220($v1)
/* 7F88 80007388 A4690224 */  sh         $t1, 0x224($v1)
/* 7F8C 8000738C A02A1E20 */  sb         $t2, %lo(D_80101E20)($at)
/* 7F90 80007390 0C000CD3 */  jal        SFX_Play_1
/* 7F94 80007394 24040023 */   addiu     $a0, $zero, 0x23
/* 7F98 80007398 3C02800C */  lui        $v0, %hi(gGameSubState)
/* 7F9C 8000739C 2442E4F4 */  addiu      $v0, $v0, %lo(gGameSubState)
/* 7FA0 800073A0 944B0000 */  lhu        $t3, ($v0)
/* 7FA4 800073A4 00000000 */  nop
/* 7FA8 800073A8 256C0001 */  addiu      $t4, $t3, 1
/* 7FAC 800073AC 10000003 */  b          .L800073BC
/* 7FB0 800073B0 A44C0000 */   sh        $t4, ($v0)
.L800073B4:
/* 7FB4 800073B4 0C000CD3 */  jal        SFX_Play_1
/* 7FB8 800073B8 24040134 */   addiu     $a0, $zero, 0x134
.L800073BC:
/* 7FBC 800073BC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 7FC0 800073C0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7FC4 800073C4 03E00008 */  jr         $ra
/* 7FC8 800073C8 00000000 */   nop

glabel func_800073CC
/* 7FCC 800073CC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 7FD0 800073D0 AFB00028 */  sw         $s0, 0x28($sp)
/* 7FD4 800073D4 00808025 */  or         $s0, $a0, $zero
/* 7FD8 800073D8 AFA40038 */  sw         $a0, 0x38($sp)
/* 7FDC 800073DC 3204FFFF */  andi       $a0, $s0, 0xffff
/* 7FE0 800073E0 26100001 */  addiu      $s0, $s0, 1
/* 7FE4 800073E4 AFBF0034 */  sw         $ra, 0x34($sp)
/* 7FE8 800073E8 320EFFFF */  andi       $t6, $s0, 0xffff
/* 7FEC 800073EC AFB20030 */  sw         $s2, 0x30($sp)
/* 7FF0 800073F0 AFB1002C */  sw         $s1, 0x2c($sp)
/* 7FF4 800073F4 01C08025 */  or         $s0, $t6, $zero
/* 7FF8 800073F8 AFA00010 */  sw         $zero, 0x10($sp)
/* 7FFC 800073FC 2405011E */  addiu      $a1, $zero, 0x11e
/* 8000 80007400 24060080 */  addiu      $a2, $zero, 0x80
/* 8004 80007404 0C009CFF */  jal        func_800273FC
/* 8008 80007408 24070044 */   addiu     $a3, $zero, 0x44
/* 800C 8000740C 24120198 */  addiu      $s2, $zero, 0x198
/* 8010 80007410 02120019 */  multu      $s0, $s2
/* 8014 80007414 3C11800F */  lui        $s1, %hi(gActors)
/* 8018 80007418 2631F510 */  addiu      $s1, $s1, %lo(gActors)
/* 801C 8000741C 26190001 */  addiu      $t9, $s0, 1
/* 8020 80007420 3C05800C */  lui        $a1, %hi(D_800C52B0)
/* 8024 80007424 240A0080 */  addiu      $t2, $zero, 0x80
/* 8028 80007428 24A552B0 */  addiu      $a1, $a1, %lo(D_800C52B0)
/* 802C 8000742C 3324FFFF */  andi       $a0, $t9, 0xffff
/* 8030 80007430 24060040 */  addiu      $a2, $zero, 0x40
/* 8034 80007434 24070044 */  addiu      $a3, $zero, 0x44
/* 8038 80007438 00007812 */  mflo       $t7
/* 803C 8000743C 022FC021 */  addu       $t8, $s1, $t7
/* 8040 80007440 AF000080 */  sw         $zero, 0x80($t8)
/* 8044 80007444 AFA0001C */  sw         $zero, 0x1c($sp)
/* 8048 80007448 AFA00018 */  sw         $zero, 0x18($sp)
/* 804C 8000744C AFAA0014 */  sw         $t2, 0x14($sp)
/* 8050 80007450 0C009F10 */  jal        func_80027C40
/* 8054 80007454 AFA00010 */   sw        $zero, 0x10($sp)
/* 8058 80007458 00520019 */  multu      $v0, $s2
/* 805C 8000745C 24430001 */  addiu      $v1, $v0, 1
/* 8060 80007460 306DFFFF */  andi       $t5, $v1, 0xffff
/* 8064 80007464 25A80001 */  addiu      $t0, $t5, 1
/* 8068 80007468 3118FFFF */  andi       $t8, $t0, 0xffff
/* 806C 8000746C 27090001 */  addiu      $t1, $t8, 1
/* 8070 80007470 3C05800C */  lui        $a1, %hi(D_800C5084)
/* 8074 80007474 24A55084 */  addiu      $a1, $a1, %lo(D_800C5084)
/* 8078 80007478 3406FF80 */  ori        $a2, $zero, 0xff80
/* 807C 8000747C 24070030 */  addiu      $a3, $zero, 0x30
/* 8080 80007480 00005812 */  mflo       $t3
/* 8084 80007484 022B6021 */  addu       $t4, $s1, $t3
/* 8088 80007488 312BFFFF */  andi       $t3, $t1, 0xffff
/* 808C 8000748C 01B20019 */  multu      $t5, $s2
/* 8090 80007490 AD800080 */  sw         $zero, 0x80($t4)
/* 8094 80007494 25640001 */  addiu      $a0, $t3, 1
/* 8098 80007498 00007012 */  mflo       $t6
/* 809C 8000749C 022E7821 */  addu       $t7, $s1, $t6
/* 80A0 800074A0 ADE00080 */  sw         $zero, 0x80($t7)
/* 80A4 800074A4 03120019 */  multu      $t8, $s2
/* 80A8 800074A8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 80AC 800074AC 01C02025 */  or         $a0, $t6, $zero
/* 80B0 800074B0 0000C812 */  mflo       $t9
/* 80B4 800074B4 02395021 */  addu       $t2, $s1, $t9
/* 80B8 800074B8 AD400080 */  sw         $zero, 0x80($t2)
/* 80BC 800074BC 01720019 */  multu      $t3, $s2
/* 80C0 800074C0 00006012 */  mflo       $t4
/* 80C4 800074C4 022C6821 */  addu       $t5, $s1, $t4
/* 80C8 800074C8 ADA00080 */  sw         $zero, 0x80($t5)
/* 80CC 800074CC 0C009ECA */  jal        func_80027B28
/* 80D0 800074D0 AFA00010 */   sw        $zero, 0x10($sp)
/* 80D4 800074D4 3C05800C */  lui        $a1, %hi(D_800C50A8)
/* 80D8 800074D8 24A550A8 */  addiu      $a1, $a1, %lo(D_800C50A8)
/* 80DC 800074DC 3044FFFF */  andi       $a0, $v0, 0xffff
/* 80E0 800074E0 3406FF80 */  ori        $a2, $zero, 0xff80
/* 80E4 800074E4 24070020 */  addiu      $a3, $zero, 0x20
/* 80E8 800074E8 0C009ECA */  jal        func_80027B28
/* 80EC 800074EC AFA00010 */   sw        $zero, 0x10($sp)
/* 80F0 800074F0 3C05800C */  lui        $a1, %hi(D_800C50CC)
/* 80F4 800074F4 24A550CC */  addiu      $a1, $a1, %lo(D_800C50CC)
/* 80F8 800074F8 3044FFFF */  andi       $a0, $v0, 0xffff
/* 80FC 800074FC 3406FF80 */  ori        $a2, $zero, 0xff80
/* 8100 80007500 24070010 */  addiu      $a3, $zero, 0x10
/* 8104 80007504 0C009ECA */  jal        func_80027B28
/* 8108 80007508 AFA00010 */   sw        $zero, 0x10($sp)
/* 810C 8000750C 3C05800C */  lui        $a1, %hi(D_800C50F0)
/* 8110 80007510 24A550F0 */  addiu      $a1, $a1, %lo(D_800C50F0)
/* 8114 80007514 3044FFFF */  andi       $a0, $v0, 0xffff
/* 8118 80007518 3406FF80 */  ori        $a2, $zero, 0xff80
/* 811C 8000751C 00003825 */  or         $a3, $zero, $zero
/* 8120 80007520 0C009ECA */  jal        func_80027B28
/* 8124 80007524 AFA00010 */   sw        $zero, 0x10($sp)
/* 8128 80007528 3C05800C */  lui        $a1, %hi(D_800C5114)
/* 812C 8000752C 24A55114 */  addiu      $a1, $a1, %lo(D_800C5114)
/* 8130 80007530 3044FFFF */  andi       $a0, $v0, 0xffff
/* 8134 80007534 3406FF80 */  ori        $a2, $zero, 0xff80
/* 8138 80007538 3407FFF0 */  ori        $a3, $zero, 0xfff0
/* 813C 8000753C 0C009ECA */  jal        func_80027B28
/* 8140 80007540 AFA00010 */   sw        $zero, 0x10($sp)
/* 8144 80007544 00520019 */  multu      $v0, $s2
/* 8148 80007548 24420001 */  addiu      $v0, $v0, 1
/* 814C 8000754C 3059FFFF */  andi       $t9, $v0, 0xffff
/* 8150 80007550 03201025 */  or         $v0, $t9, $zero
/* 8154 80007554 00007812 */  mflo       $t7
/* 8158 80007558 022FC021 */  addu       $t8, $s1, $t7
/* 815C 8000755C AF000080 */  sw         $zero, 0x80($t8)
/* 8160 80007560 8FBF0034 */  lw         $ra, 0x34($sp)
/* 8164 80007564 8FB20030 */  lw         $s2, 0x30($sp)
/* 8168 80007568 8FB1002C */  lw         $s1, 0x2c($sp)
/* 816C 8000756C 8FB00028 */  lw         $s0, 0x28($sp)
/* 8170 80007570 03E00008 */  jr         $ra
/* 8174 80007574 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80007578
/* 8178 80007578 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 817C 8000757C AFBF0014 */  sw         $ra, 0x14($sp)
/* 8180 80007580 0C000CE0 */  jal        SFX_Play_2
/* 8184 80007584 24040022 */   addiu     $a0, $zero, 0x22
/* 8188 80007588 3C018010 */  lui        $at, %hi(nameEntryLanguage)
/* 818C 8000758C A0201C88 */  sb         $zero, %lo(nameEntryLanguage)($at)
/* 8190 80007590 0C001CF3 */  jal        func_800073CC
/* 8194 80007594 2404000C */   addiu     $a0, $zero, 0xc
/* 8198 80007598 8FBF0014 */  lw         $ra, 0x14($sp)
/* 819C 8000759C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 81A0 800075A0 03E00008 */  jr         $ra
/* 81A4 800075A4 00000000 */   nop

glabel func_800075A8
/* 81A8 800075A8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 81AC 800075AC AFBF0024 */  sw         $ra, 0x24($sp)
/* 81B0 800075B0 0C000CE0 */  jal        SFX_Play_2
/* 81B4 800075B4 24040022 */   addiu     $a0, $zero, 0x22
/* 81B8 800075B8 240E0001 */  addiu      $t6, $zero, 1
/* 81BC 800075BC 3C018010 */  lui        $at, %hi(nameEntryLanguage)
/* 81C0 800075C0 A02E1C88 */  sb         $t6, %lo(nameEntryLanguage)($at)
/* 81C4 800075C4 2404000C */  addiu      $a0, $zero, 0xc
/* 81C8 800075C8 2405011A */  addiu      $a1, $zero, 0x11a
/* 81CC 800075CC 3406FF80 */  ori        $a2, $zero, 0xff80
/* 81D0 800075D0 24070044 */  addiu      $a3, $zero, 0x44
/* 81D4 800075D4 0C009CFF */  jal        func_800273FC
/* 81D8 800075D8 AFA00010 */   sw        $zero, 0x10($sp)
/* 81DC 800075DC 240F000E */  addiu      $t7, $zero, 0xe
/* 81E0 800075E0 A7AF002E */  sh         $t7, 0x2e($sp)
/* 81E4 800075E4 2404000D */  addiu      $a0, $zero, 0xd
/* 81E8 800075E8 2405011E */  addiu      $a1, $zero, 0x11e
/* 81EC 800075EC 24060080 */  addiu      $a2, $zero, 0x80
/* 81F0 800075F0 24070044 */  addiu      $a3, $zero, 0x44
/* 81F4 800075F4 0C009CFF */  jal        func_800273FC
/* 81F8 800075F8 AFA00010 */   sw        $zero, 0x10($sp)
/* 81FC 800075FC 97A4002E */  lhu        $a0, 0x2e($sp)
/* 8200 80007600 3C05800C */  lui        $a1, %hi(D_800C52A4)
/* 8204 80007604 24180080 */  addiu      $t8, $zero, 0x80
/* 8208 80007608 AFB80014 */  sw         $t8, 0x14($sp)
/* 820C 8000760C 24A552A4 */  addiu      $a1, $a1, %lo(D_800C52A4)
/* 8210 80007610 3406FF90 */  ori        $a2, $zero, 0xff90
/* 8214 80007614 24070044 */  addiu      $a3, $zero, 0x44
/* 8218 80007618 AFA00010 */  sw         $zero, 0x10($sp)
/* 821C 8000761C AFA00018 */  sw         $zero, 0x18($sp)
/* 8220 80007620 0C009F10 */  jal        func_80027C40
/* 8224 80007624 AFA0001C */   sw        $zero, 0x1c($sp)
/* 8228 80007628 3C05800C */  lui        $a1, %hi(D_800C52BC)
/* 822C 8000762C 24190080 */  addiu      $t9, $zero, 0x80
/* 8230 80007630 AFB90014 */  sw         $t9, 0x14($sp)
/* 8234 80007634 24A552BC */  addiu      $a1, $a1, %lo(D_800C52BC)
/* 8238 80007638 3044FFFF */  andi       $a0, $v0, 0xffff
/* 823C 8000763C 24060040 */  addiu      $a2, $zero, 0x40
/* 8240 80007640 24070044 */  addiu      $a3, $zero, 0x44
/* 8244 80007644 AFA00010 */  sw         $zero, 0x10($sp)
/* 8248 80007648 AFA00018 */  sw         $zero, 0x18($sp)
/* 824C 8000764C 0C009F10 */  jal        func_80027C40
/* 8250 80007650 AFA0001C */   sw        $zero, 0x1c($sp)
/* 8254 80007654 3C05800C */  lui        $a1, %hi(D_800C515C)
/* 8258 80007658 24A5515C */  addiu      $a1, $a1, %lo(D_800C515C)
/* 825C 8000765C 3044FFFF */  andi       $a0, $v0, 0xffff
/* 8260 80007660 3406FF80 */  ori        $a2, $zero, 0xff80
/* 8264 80007664 24070030 */  addiu      $a3, $zero, 0x30
/* 8268 80007668 0C009ECA */  jal        func_80027B28
/* 826C 8000766C AFA00010 */   sw        $zero, 0x10($sp)
/* 8270 80007670 3C05800C */  lui        $a1, %hi(D_800C5180)
/* 8274 80007674 24A55180 */  addiu      $a1, $a1, %lo(D_800C5180)
/* 8278 80007678 3044FFFF */  andi       $a0, $v0, 0xffff
/* 827C 8000767C 3406FF80 */  ori        $a2, $zero, 0xff80
/* 8280 80007680 24070020 */  addiu      $a3, $zero, 0x20
/* 8284 80007684 0C009ECA */  jal        func_80027B28
/* 8288 80007688 AFA00010 */   sw        $zero, 0x10($sp)
/* 828C 8000768C 3C05800C */  lui        $a1, %hi(D_800C51A4)
/* 8290 80007690 24A551A4 */  addiu      $a1, $a1, %lo(D_800C51A4)
/* 8294 80007694 3044FFFF */  andi       $a0, $v0, 0xffff
/* 8298 80007698 3406FF80 */  ori        $a2, $zero, 0xff80
/* 829C 8000769C 24070010 */  addiu      $a3, $zero, 0x10
/* 82A0 800076A0 0C009ECA */  jal        func_80027B28
/* 82A4 800076A4 AFA00010 */   sw        $zero, 0x10($sp)
/* 82A8 800076A8 3C05800C */  lui        $a1, %hi(D_800C51C8)
/* 82AC 800076AC 24A551C8 */  addiu      $a1, $a1, %lo(D_800C51C8)
/* 82B0 800076B0 3044FFFF */  andi       $a0, $v0, 0xffff
/* 82B4 800076B4 3406FF80 */  ori        $a2, $zero, 0xff80
/* 82B8 800076B8 00003825 */  or         $a3, $zero, $zero
/* 82BC 800076BC 0C009ECA */  jal        func_80027B28
/* 82C0 800076C0 AFA00010 */   sw        $zero, 0x10($sp)
/* 82C4 800076C4 3C05800C */  lui        $a1, %hi(D_800C51EC)
/* 82C8 800076C8 24A551EC */  addiu      $a1, $a1, %lo(D_800C51EC)
/* 82CC 800076CC 3044FFFF */  andi       $a0, $v0, 0xffff
/* 82D0 800076D0 3406FF80 */  ori        $a2, $zero, 0xff80
/* 82D4 800076D4 3407FFF0 */  ori        $a3, $zero, 0xfff0
/* 82D8 800076D8 0C009ECA */  jal        func_80027B28
/* 82DC 800076DC AFA00010 */   sw        $zero, 0x10($sp)
/* 82E0 800076E0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 82E4 800076E4 27BD0030 */  addiu      $sp, $sp, 0x30
/* 82E8 800076E8 03E00008 */  jr         $ra
/* 82EC 800076EC 00000000 */   nop

glabel NameEntry_printKeyboard
/* 82F0 800076F0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 82F4 800076F4 AFBF0034 */  sw         $ra, 0x34($sp)
/* 82F8 800076F8 E7B50028 */  swc1       $f21, 0x28($sp)
/* 82FC 800076FC E7B4002C */  swc1       $f20, 0x2c($sp)
/* 8300 80007700 0C000CE0 */  jal        SFX_Play_2
/* 8304 80007704 24040022 */   addiu     $a0, $zero, 0x22
/* 8308 80007708 3C013F80 */  lui        $at, 0x3f80
/* 830C 8000770C 4481A000 */  mtc1       $at, $f20
/* 8310 80007710 3C018010 */  lui        $at, %hi(nameEntryLanguage)
/* 8314 80007714 240E0002 */  addiu      $t6, $zero, 2
/* 8318 80007718 A02E1C88 */  sb         $t6, %lo(nameEntryLanguage)($at)
/* 831C 8000771C 3C01800F */  lui        $at, %hi(D_800F08B0)
/* 8320 80007720 AC2008B0 */  sw         $zero, %lo(D_800F08B0)($at)
/* 8324 80007724 3C01800F */  lui        $at, %hi(D_800F0A48)
/* 8328 80007728 AC200A48 */  sw         $zero, %lo(D_800F0A48)($at)
/* 832C 8000772C 3C01800F */  lui        $at, %hi(D_800F0BE0)
/* 8330 80007730 AC200BE0 */  sw         $zero, %lo(D_800F0BE0)($at)
/* 8334 80007734 3C01800F */  lui        $at, %hi(D_800F0D78)
/* 8338 80007738 AC200D78 */  sw         $zero, %lo(D_800F0D78)($at)
/* 833C 8000773C 3C01800F */  lui        $at, %hi(D_800F0F10)
/* 8340 80007740 AC200F10 */  sw         $zero, %lo(D_800F0F10)($at)
/* 8344 80007744 3C01800F */  lui        $at, %hi(D_800F10A8)
/* 8348 80007748 AC2010A8 */  sw         $zero, %lo(D_800F10A8)($at)
/* 834C 8000774C 3C01800F */  lui        $at, %hi(D_800F1240)
/* 8350 80007750 AC201240 */  sw         $zero, %lo(D_800F1240)($at)
/* 8354 80007754 3C01800F */  lui        $at, %hi(D_800F13D8)
/* 8358 80007758 AC2013D8 */  sw         $zero, %lo(D_800F13D8)($at)
/* 835C 8000775C 3C01800F */  lui        $at, %hi(D_800F1570)
/* 8360 80007760 AC201570 */  sw         $zero, %lo(D_800F1570)($at)
/* 8364 80007764 3C01800F */  lui        $at, %hi(D_800F1708)
/* 8368 80007768 3C05800C */  lui        $a1, %hi(nameEntryRow0ENG)
/* 836C 8000776C AC201708 */  sw         $zero, %lo(D_800F1708)($at)
/* 8370 80007770 24040016 */  addiu      $a0, $zero, 0x16
/* 8374 80007774 24A55304 */  addiu      $a1, $a1, %lo(nameEntryRow0ENG)
/* 8378 80007778 3406FF80 */  ori        $a2, $zero, 0xff80
/* 837C 8000777C 24070030 */  addiu      $a3, $zero, 0x30
/* 8380 80007780 AFA00010 */  sw         $zero, 0x10($sp)
/* 8384 80007784 AFA00014 */  sw         $zero, 0x14($sp)
/* 8388 80007788 AFA00018 */  sw         $zero, 0x18($sp)
/* 838C 8000778C AFA0001C */  sw         $zero, 0x1c($sp)
/* 8390 80007790 E7B40020 */  swc1       $f20, 0x20($sp)
/* 8394 80007794 0C009F65 */  jal        func_80027D94
/* 8398 80007798 E7B40024 */   swc1      $f20, 0x24($sp)
/* 839C 8000779C 3C05800C */  lui        $a1, %hi(nameEntryRow1ENG)
/* 83A0 800077A0 24A55328 */  addiu      $a1, $a1, %lo(nameEntryRow1ENG)
/* 83A4 800077A4 3044FFFF */  andi       $a0, $v0, 0xffff
/* 83A8 800077A8 3406FF80 */  ori        $a2, $zero, 0xff80
/* 83AC 800077AC 24070020 */  addiu      $a3, $zero, 0x20
/* 83B0 800077B0 AFA00010 */  sw         $zero, 0x10($sp)
/* 83B4 800077B4 AFA00014 */  sw         $zero, 0x14($sp)
/* 83B8 800077B8 AFA00018 */  sw         $zero, 0x18($sp)
/* 83BC 800077BC AFA0001C */  sw         $zero, 0x1c($sp)
/* 83C0 800077C0 E7B40020 */  swc1       $f20, 0x20($sp)
/* 83C4 800077C4 0C009F65 */  jal        func_80027D94
/* 83C8 800077C8 E7B40024 */   swc1      $f20, 0x24($sp)
/* 83CC 800077CC 3C05800C */  lui        $a1, %hi(nameEntryRow2ENG)
/* 83D0 800077D0 24A5534C */  addiu      $a1, $a1, %lo(nameEntryRow2ENG)
/* 83D4 800077D4 3044FFFF */  andi       $a0, $v0, 0xffff
/* 83D8 800077D8 3406FF80 */  ori        $a2, $zero, 0xff80
/* 83DC 800077DC 24070010 */  addiu      $a3, $zero, 0x10
/* 83E0 800077E0 AFA00010 */  sw         $zero, 0x10($sp)
/* 83E4 800077E4 AFA00014 */  sw         $zero, 0x14($sp)
/* 83E8 800077E8 AFA00018 */  sw         $zero, 0x18($sp)
/* 83EC 800077EC AFA0001C */  sw         $zero, 0x1c($sp)
/* 83F0 800077F0 E7B40020 */  swc1       $f20, 0x20($sp)
/* 83F4 800077F4 0C009F65 */  jal        func_80027D94
/* 83F8 800077F8 E7B40024 */   swc1      $f20, 0x24($sp)
/* 83FC 800077FC 3C05800C */  lui        $a1, %hi(nameEntryRow3ENG)
/* 8400 80007800 24A55370 */  addiu      $a1, $a1, %lo(nameEntryRow3ENG)
/* 8404 80007804 3044FFFF */  andi       $a0, $v0, 0xffff
/* 8408 80007808 3406FF80 */  ori        $a2, $zero, 0xff80
/* 840C 8000780C 00003825 */  or         $a3, $zero, $zero
/* 8410 80007810 AFA00010 */  sw         $zero, 0x10($sp)
/* 8414 80007814 AFA00014 */  sw         $zero, 0x14($sp)
/* 8418 80007818 AFA00018 */  sw         $zero, 0x18($sp)
/* 841C 8000781C AFA0001C */  sw         $zero, 0x1c($sp)
/* 8420 80007820 E7B40020 */  swc1       $f20, 0x20($sp)
/* 8424 80007824 0C009F65 */  jal        func_80027D94
/* 8428 80007828 E7B40024 */   swc1      $f20, 0x24($sp)
/* 842C 8000782C 3C05800C */  lui        $a1, %hi(nameEntryRow4ENG)
/* 8430 80007830 24A55394 */  addiu      $a1, $a1, %lo(nameEntryRow4ENG)
/* 8434 80007834 3044FFFF */  andi       $a0, $v0, 0xffff
/* 8438 80007838 3406FF80 */  ori        $a2, $zero, 0xff80
/* 843C 8000783C 3407FFF0 */  ori        $a3, $zero, 0xfff0
/* 8440 80007840 AFA00010 */  sw         $zero, 0x10($sp)
/* 8444 80007844 AFA00014 */  sw         $zero, 0x14($sp)
/* 8448 80007848 AFA00018 */  sw         $zero, 0x18($sp)
/* 844C 8000784C AFA0001C */  sw         $zero, 0x1c($sp)
/* 8450 80007850 E7B40020 */  swc1       $f20, 0x20($sp)
/* 8454 80007854 0C009F65 */  jal        func_80027D94
/* 8458 80007858 E7B40024 */   swc1      $f20, 0x24($sp)
/* 845C 8000785C 24040198 */  addiu      $a0, $zero, 0x198
/* 8460 80007860 00440019 */  multu      $v0, $a0
/* 8464 80007864 24590001 */  addiu      $t9, $v0, 1
/* 8468 80007868 3328FFFF */  andi       $t0, $t9, 0xffff
/* 846C 8000786C 3C03800F */  lui        $v1, %hi(gActors)
/* 8470 80007870 2463F510 */  addiu      $v1, $v1, %lo(gActors)
/* 8474 80007874 00007812 */  mflo       $t7
/* 8478 80007878 006FC021 */  addu       $t8, $v1, $t7
/* 847C 8000787C AF000080 */  sw         $zero, 0x80($t8)
/* 8480 80007880 01040019 */  multu      $t0, $a0
/* 8484 80007884 00004812 */  mflo       $t1
/* 8488 80007888 00695021 */  addu       $t2, $v1, $t1
/* 848C 8000788C AD400080 */  sw         $zero, 0x80($t2)
/* 8490 80007890 8FBF0034 */  lw         $ra, 0x34($sp)
/* 8494 80007894 C7B4002C */  lwc1       $f20, 0x2c($sp)
/* 8498 80007898 C7B50028 */  lwc1       $f21, 0x28($sp)
/* 849C 8000789C 03E00008 */  jr         $ra
/* 84A0 800078A0 27BD0038 */   addiu     $sp, $sp, 0x38

glabel NameEntry_setup
/* 84A4 800078A4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 84A8 800078A8 AFBF0034 */  sw         $ra, 0x34($sp)
/* 84AC 800078AC AFB00030 */  sw         $s0, 0x30($sp)
/* 84B0 800078B0 3090FFFF */  andi       $s0, $a0, 0xffff
/* 84B4 800078B4 0C008C2E */  jal        func_800230B8
/* 84B8 800078B8 AFA40038 */   sw        $a0, 0x38($sp)
/* 84BC 800078BC 0C001AE7 */  jal        func_80006B9C
/* 84C0 800078C0 3204FFFF */   andi      $a0, $s0, 0xffff
/* 84C4 800078C4 24500001 */  addiu      $s0, $v0, 1
/* 84C8 800078C8 320EFFFF */  andi       $t6, $s0, 0xffff
/* 84CC 800078CC 3C05800E */  lui        $a1, %hi(D_800E13FC)
/* 84D0 800078D0 24A513FC */  addiu      $a1, $a1, %lo(D_800E13FC)
/* 84D4 800078D4 01C08025 */  or         $s0, $t6, $zero
/* 84D8 800078D8 3044FFFF */  andi       $a0, $v0, 0xffff
/* 84DC 800078DC 3406FFC4 */  ori        $a2, $zero, 0xffc4
/* 84E0 800078E0 24070058 */  addiu      $a3, $zero, 0x58
/* 84E4 800078E4 0C009D44 */  jal        func_80027510
/* 84E8 800078E8 AFA00010 */   sw        $zero, 0x10($sp)
/* 84EC 800078EC 3C05800C */  lui        $a1, %hi(D_800C5078)
/* 84F0 800078F0 240F0080 */  addiu      $t7, $zero, 0x80
/* 84F4 800078F4 24180080 */  addiu      $t8, $zero, 0x80
/* 84F8 800078F8 AFB8001C */  sw         $t8, 0x1c($sp)
/* 84FC 800078FC AFAF0014 */  sw         $t7, 0x14($sp)
/* 8500 80007900 24A55078 */  addiu      $a1, $a1, %lo(D_800C5078)
/* 8504 80007904 3204FFFF */  andi       $a0, $s0, 0xffff
/* 8508 80007908 3406FFDC */  ori        $a2, $zero, 0xffdc
/* 850C 8000790C 24070058 */  addiu      $a3, $zero, 0x58
/* 8510 80007910 AFA00010 */  sw         $zero, 0x10($sp)
/* 8514 80007914 0C009F10 */  jal        func_80027C40
/* 8518 80007918 AFA00018 */   sw        $zero, 0x18($sp)
/* 851C 8000791C 24440003 */  addiu      $a0, $v0, 3
/* 8520 80007920 3099FFFF */  andi       $t9, $a0, 0xffff
/* 8524 80007924 0C001CF3 */  jal        func_800073CC
/* 8528 80007928 03202025 */   or        $a0, $t9, $zero
/* 852C 8000792C 3C05800C */  lui        $a1, %hi(D_800C5138)
/* 8530 80007930 24080080 */  addiu      $t0, $zero, 0x80
/* 8534 80007934 AFA80014 */  sw         $t0, 0x14($sp)
/* 8538 80007938 24A55138 */  addiu      $a1, $a1, %lo(D_800C5138)
/* 853C 8000793C 3044FFFF */  andi       $a0, $v0, 0xffff
/* 8540 80007940 24060038 */  addiu      $a2, $zero, 0x38
/* 8544 80007944 3407FFE0 */  ori        $a3, $zero, 0xffe0
/* 8548 80007948 AFA00010 */  sw         $zero, 0x10($sp)
/* 854C 8000794C AFA00018 */  sw         $zero, 0x18($sp)
/* 8550 80007950 0C009F10 */  jal        func_80027C40
/* 8554 80007954 AFA0001C */   sw        $zero, 0x1c($sp)
/* 8558 80007958 3C05800C */  lui        $a1, %hi(D_800C513C)
/* 855C 8000795C 24090080 */  addiu      $t1, $zero, 0x80
/* 8560 80007960 AFA90014 */  sw         $t1, 0x14($sp)
/* 8564 80007964 24A5513C */  addiu      $a1, $a1, %lo(D_800C513C)
/* 8568 80007968 3044FFFF */  andi       $a0, $v0, 0xffff
/* 856C 8000796C 24060058 */  addiu      $a2, $zero, 0x58
/* 8570 80007970 3407FFE0 */  ori        $a3, $zero, 0xffe0
/* 8574 80007974 AFA00010 */  sw         $zero, 0x10($sp)
/* 8578 80007978 AFA00018 */  sw         $zero, 0x18($sp)
/* 857C 8000797C 0C009F10 */  jal        func_80027C40
/* 8580 80007980 AFA0001C */   sw        $zero, 0x1c($sp)
/* 8584 80007984 3C05800C */  lui        $a1, %hi(D_800C5140)
/* 8588 80007988 240A0080 */  addiu      $t2, $zero, 0x80
/* 858C 8000798C AFAA0014 */  sw         $t2, 0x14($sp)
/* 8590 80007990 24A55140 */  addiu      $a1, $a1, %lo(D_800C5140)
/* 8594 80007994 3044FFFF */  andi       $a0, $v0, 0xffff
/* 8598 80007998 24060078 */  addiu      $a2, $zero, 0x78
/* 859C 8000799C 3407FFE0 */  ori        $a3, $zero, 0xffe0
/* 85A0 800079A0 AFA00010 */  sw         $zero, 0x10($sp)
/* 85A4 800079A4 AFA00018 */  sw         $zero, 0x18($sp)
/* 85A8 800079A8 0C009F10 */  jal        func_80027C40
/* 85AC 800079AC AFA0001C */   sw        $zero, 0x1c($sp)
/* 85B0 800079B0 3C013F80 */  lui        $at, 0x3f80
/* 85B4 800079B4 44810000 */  mtc1       $at, $f0
/* 85B8 800079B8 3C05800C */  lui        $a1, %hi(D_800C5144)
/* 85BC 800079BC 240B0060 */  addiu      $t3, $zero, 0x60
/* 85C0 800079C0 AFAB0018 */  sw         $t3, 0x18($sp)
/* 85C4 800079C4 24A55144 */  addiu      $a1, $a1, %lo(D_800C5144)
/* 85C8 800079C8 3044FFFF */  andi       $a0, $v0, 0xffff
/* 85CC 800079CC 3406FFB8 */  ori        $a2, $zero, 0xffb8
/* 85D0 800079D0 3407FFC4 */  ori        $a3, $zero, 0xffc4
/* 85D4 800079D4 AFA00010 */  sw         $zero, 0x10($sp)
/* 85D8 800079D8 AFA00014 */  sw         $zero, 0x14($sp)
/* 85DC 800079DC AFA0001C */  sw         $zero, 0x1c($sp)
/* 85E0 800079E0 E7A00020 */  swc1       $f0, 0x20($sp)
/* 85E4 800079E4 0C009F65 */  jal        func_80027D94
/* 85E8 800079E8 E7A00024 */   swc1      $f0, 0x24($sp)
/* 85EC 800079EC 24500001 */  addiu      $s0, $v0, 1
/* 85F0 800079F0 320EFFFF */  andi       $t6, $s0, 0xffff
/* 85F4 800079F4 240C0060 */  addiu      $t4, $zero, 0x60
/* 85F8 800079F8 240D00C0 */  addiu      $t5, $zero, 0xc0
/* 85FC 800079FC AFAD0018 */  sw         $t5, 0x18($sp)
/* 8600 80007A00 AFAC0014 */  sw         $t4, 0x14($sp)
/* 8604 80007A04 01C08025 */  or         $s0, $t6, $zero
/* 8608 80007A08 3044FFFF */  andi       $a0, $v0, 0xffff
/* 860C 80007A0C 24050464 */  addiu      $a1, $zero, 0x464
/* 8610 80007A10 3406FFB8 */  ori        $a2, $zero, 0xffb8
/* 8614 80007A14 3407FFBC */  ori        $a3, $zero, 0xffbc
/* 8618 80007A18 AFA00010 */  sw         $zero, 0x10($sp)
/* 861C 80007A1C 0C009D1A */  jal        func_80027468
/* 8620 80007A20 AFA0001C */   sw        $zero, 0x1c($sp)
/* 8624 80007A24 3C048010 */  lui        $a0, %hi(D_800FF510)
/* 8628 80007A28 2484F510 */  addiu      $a0, $a0, %lo(D_800FF510)
/* 862C 80007A2C A0902448 */  sb         $s0, 0x2448($a0)
/* 8630 80007A30 A0801AB8 */  sb         $zero, 0x1ab8($a0)
/* 8634 80007A34 A0801C50 */  sb         $zero, 0x1c50($a0)
/* 8638 80007A38 0C001DBC */  jal        NameEntry_printKeyboard
/* 863C 80007A3C A0802778 */   sb        $zero, 0x2778($a0)
/* 8640 80007A40 3C048010 */  lui        $a0, %hi(D_800FF510)
/* 8644 80007A44 2484F510 */  addiu      $a0, $a0, %lo(D_800FF510)
/* 8648 80007A48 240F0002 */  addiu      $t7, $zero, 2
/* 864C 80007A4C 3C03800C */  lui        $v1, %hi(nameEntrySpace)
/* 8650 80007A50 A08F2778 */  sb         $t7, 0x2778($a0)
/* 8654 80007A54 24634FE8 */  addiu      $v1, $v1, %lo(nameEntrySpace)
/* 8658 80007A58 00001025 */  or         $v0, $zero, $zero
.L80007A5C:
/* 865C 80007A5C 0002C040 */  sll        $t8, $v0, 1
/* 8660 80007A60 24420001 */  addiu      $v0, $v0, 1
/* 8664 80007A64 3048FFFF */  andi       $t0, $v0, 0xffff
/* 8668 80007A68 2901000A */  slti       $at, $t0, 0xa
/* 866C 80007A6C 0078C821 */  addu       $t9, $v1, $t8
/* 8670 80007A70 A7200000 */  sh         $zero, ($t9)
/* 8674 80007A74 1420FFF9 */  bnez       $at, .L80007A5C
/* 8678 80007A78 01001025 */   or        $v0, $t0, $zero
/* 867C 80007A7C 8FBF0034 */  lw         $ra, 0x34($sp)
/* 8680 80007A80 8FB00030 */  lw         $s0, 0x30($sp)
/* 8684 80007A84 A08025E0 */  sb         $zero, 0x25e0($a0)
/* 8688 80007A88 03E00008 */  jr         $ra
/* 868C 80007A8C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel isNameEntryMaxed
/* 8690 80007A90 3C028010 */  lui        $v0, %hi(D_800FF510)
/* 8694 80007A94 2442F510 */  addiu      $v0, $v0, %lo(D_800FF510)
/* 8698 80007A98 904E25E0 */  lbu        $t6, 0x25e0($v0)
/* 869C 80007A9C 2401000A */  addiu      $at, $zero, 0xa
/* 86A0 80007AA0 15C10004 */  bne        $t6, $at, .L80007AB4
/* 86A4 80007AA4 240F0002 */   addiu     $t7, $zero, 2
/* 86A8 80007AA8 24180005 */  addiu      $t8, $zero, 5
/* 86AC 80007AAC A04F1AB8 */  sb         $t7, 0x1ab8($v0)
/* 86B0 80007AB0 A0581C50 */  sb         $t8, 0x1c50($v0)
.L80007AB4:
/* 86B4 80007AB4 03E00008 */  jr         $ra
/* 86B8 80007AB8 00000000 */   nop

glabel func_80007ABC
/* 86BC 80007ABC 3C038010 */  lui        $v1, %hi(D_800FF510)
/* 86C0 80007AC0 2463F510 */  addiu      $v1, $v1, %lo(D_800FF510)
/* 86C4 80007AC4 906225E0 */  lbu        $v0, 0x25e0($v1)
/* 86C8 80007AC8 3C05800C */  lui        $a1, %hi(nameEntrySpace)
/* 86CC 80007ACC 0002C040 */  sll        $t8, $v0, 1
/* 86D0 80007AD0 906E2448 */  lbu        $t6, 0x2448($v1)
/* 86D4 80007AD4 90671C50 */  lbu        $a3, 0x1c50($v1)
/* 86D8 80007AD8 00B82821 */  addu       $a1, $a1, $t8
/* 86DC 80007ADC 94A54FE8 */  lhu        $a1, %lo(nameEntrySpace)($a1)
/* 86E0 80007AE0 90661AB8 */  lbu        $a2, 0x1ab8($v1)
/* 86E4 80007AE4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 86E8 80007AE8 004E2021 */  addu       $a0, $v0, $t6
/* 86EC 80007AEC 00073823 */  negu       $a3, $a3
/* 86F0 80007AF0 00075900 */  sll        $t3, $a3, 4
/* 86F4 80007AF4 308FFFFF */  andi       $t7, $a0, 0xffff
/* 86F8 80007AF8 0005C840 */  sll        $t9, $a1, 1
/* 86FC 80007AFC 00064900 */  sll        $t1, $a2, 4
/* 8700 80007B00 2526FF80 */  addiu      $a2, $t1, -0x80
/* 8704 80007B04 272502D2 */  addiu      $a1, $t9, 0x2d2
/* 8708 80007B08 01E02025 */  or         $a0, $t7, $zero
/* 870C 80007B0C 25670030 */  addiu      $a3, $t3, 0x30
/* 8710 80007B10 AFBF0024 */  sw         $ra, 0x24($sp)
/* 8714 80007B14 30ECFFFF */  andi       $t4, $a3, 0xffff
/* 8718 80007B18 240F00FF */  addiu      $t7, $zero, 0xff
/* 871C 80007B1C 30A8FFFF */  andi       $t0, $a1, 0xffff
/* 8720 80007B20 30CAFFFF */  andi       $t2, $a2, 0xffff
/* 8724 80007B24 240E0020 */  addiu      $t6, $zero, 0x20
/* 8728 80007B28 240D0040 */  addiu      $t5, $zero, 0x40
/* 872C 80007B2C 24580001 */  addiu      $t8, $v0, 1
/* 8730 80007B30 A07825E0 */  sb         $t8, 0x25e0($v1)
/* 8734 80007B34 AFAD0014 */  sw         $t5, 0x14($sp)
/* 8738 80007B38 AFAE0018 */  sw         $t6, 0x18($sp)
/* 873C 80007B3C 01403025 */  or         $a2, $t2, $zero
/* 8740 80007B40 01002825 */  or         $a1, $t0, $zero
/* 8744 80007B44 AFAF001C */  sw         $t7, 0x1c($sp)
/* 8748 80007B48 01803825 */  or         $a3, $t4, $zero
/* 874C 80007B4C 0C009D1A */  jal        func_80027468
/* 8750 80007B50 AFA00010 */   sw        $zero, 0x10($sp)
/* 8754 80007B54 3C038010 */  lui        $v1, %hi(D_800FF510)
/* 8758 80007B58 2463F510 */  addiu      $v1, $v1, %lo(D_800FF510)
/* 875C 80007B5C 90792448 */  lbu        $t9, 0x2448($v1)
/* 8760 80007B60 906925E0 */  lbu        $t1, 0x25e0($v1)
/* 8764 80007B64 00194080 */  sll        $t0, $t9, 2
/* 8768 80007B68 00095080 */  sll        $t2, $t1, 2
/* 876C 80007B6C 01194023 */  subu       $t0, $t0, $t9
/* 8770 80007B70 01495023 */  subu       $t2, $t2, $t1
/* 8774 80007B74 000A5080 */  sll        $t2, $t2, 2
/* 8778 80007B78 00084080 */  sll        $t0, $t0, 2
/* 877C 80007B7C 01194021 */  addu       $t0, $t0, $t9
/* 8780 80007B80 01495021 */  addu       $t2, $t2, $t1
/* 8784 80007B84 000A5080 */  sll        $t2, $t2, 2
/* 8788 80007B88 00084080 */  sll        $t0, $t0, 2
/* 878C 80007B8C 01194023 */  subu       $t0, $t0, $t9
/* 8790 80007B90 01495023 */  subu       $t2, $t2, $t1
/* 8794 80007B94 000A50C0 */  sll        $t2, $t2, 3
/* 8798 80007B98 000840C0 */  sll        $t0, $t0, 3
/* 879C 80007B9C 010A5821 */  addu       $t3, $t0, $t2
/* 87A0 80007BA0 3C01800F */  lui        $at, %hi(gActors+0xD0)
/* 87A4 80007BA4 002B0821 */  addu       $at, $at, $t3
/* 87A8 80007BA8 0C001EA4 */  jal        isNameEntryMaxed
/* 87AC 80007BAC A420F5E0 */   sh        $zero, %lo(gActors+0xD0)($at)
/* 87B0 80007BB0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 87B4 80007BB4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 87B8 80007BB8 03E00008 */  jr         $ra
/* 87BC 80007BBC 00000000 */   nop

glabel nameEntry_enter_char
/* 87C0 80007BC0 3C078010 */  lui        $a3, %hi(D_800FF510)
/* 87C4 80007BC4 24E7F510 */  addiu      $a3, $a3, %lo(D_800FF510)
/* 87C8 80007BC8 90E325E0 */  lbu        $v1, 0x25e0($a3)
/* 87CC 80007BCC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 87D0 80007BD0 2861000A */  slti       $at, $v1, 0xa
/* 87D4 80007BD4 10200029 */  beqz       $at, .L80007C7C
/* 87D8 80007BD8 AFBF0014 */   sw        $ra, 0x14($sp)
/* 87DC 80007BDC 90E22778 */  lbu        $v0, 0x2778($a3)
/* 87E0 80007BE0 00034040 */  sll        $t0, $v1, 1
/* 87E4 80007BE4 10400009 */  beqz       $v0, .L80007C0C
/* 87E8 80007BE8 3C01800C */   lui       $at, 0x800c
/* 87EC 80007BEC 24010001 */  addiu      $at, $zero, 1
/* 87F0 80007BF0 1041000D */  beq        $v0, $at, .L80007C28
/* 87F4 80007BF4 00036840 */   sll       $t5, $v1, 1
/* 87F8 80007BF8 24010002 */  addiu      $at, $zero, 2
/* 87FC 80007BFC 10410012 */  beq        $v0, $at, .L80007C48
/* 8800 80007C00 00034040 */   sll       $t0, $v1, 1
/* 8804 80007C04 10000017 */  b          .L80007C64
/* 8808 80007C08 00000000 */   nop
.L80007C0C:
/* 880C 80007C0C 90EE1AB8 */  lbu        $t6, 0x1ab8($a3)
/* 8810 80007C10 00280821 */  addu       $at, $at, $t0
/* 8814 80007C14 000E7840 */  sll        $t7, $t6, 1
/* 8818 80007C18 008FC021 */  addu       $t8, $a0, $t7
/* 881C 80007C1C 97190000 */  lhu        $t9, ($t8)
/* 8820 80007C20 10000010 */  b          .L80007C64
/* 8824 80007C24 A4394FE8 */   sh        $t9, 0x4fe8($at)
.L80007C28:
/* 8828 80007C28 90E91AB8 */  lbu        $t1, 0x1ab8($a3)
/* 882C 80007C2C 3C01800C */  lui        $at, 0x800c
/* 8830 80007C30 00095040 */  sll        $t2, $t1, 1
/* 8834 80007C34 00AA5821 */  addu       $t3, $a1, $t2
/* 8838 80007C38 956C0000 */  lhu        $t4, ($t3)
/* 883C 80007C3C 002D0821 */  addu       $at, $at, $t5
/* 8840 80007C40 10000008 */  b          .L80007C64
/* 8844 80007C44 A42C4FE8 */   sh        $t4, 0x4fe8($at)
.L80007C48:
/* 8848 80007C48 90EE1AB8 */  lbu        $t6, 0x1ab8($a3)
/* 884C 80007C4C 3C01800C */  lui        $at, %hi(nameEntrySpace)
/* 8850 80007C50 000E7840 */  sll        $t7, $t6, 1
/* 8854 80007C54 00CFC021 */  addu       $t8, $a2, $t7
/* 8858 80007C58 97190000 */  lhu        $t9, ($t8)
/* 885C 80007C5C 00280821 */  addu       $at, $at, $t0
/* 8860 80007C60 A4394FE8 */  sh         $t9, %lo(nameEntrySpace)($at)
.L80007C64:
/* 8864 80007C64 0C000CD3 */  jal        SFX_Play_1
/* 8868 80007C68 24040023 */   addiu     $a0, $zero, 0x23
/* 886C 80007C6C 0C000CD3 */  jal        SFX_Play_1
/* 8870 80007C70 2404010D */   addiu     $a0, $zero, 0x10d
/* 8874 80007C74 0C001EAF */  jal        func_80007ABC
/* 8878 80007C78 00000000 */   nop
.L80007C7C:
/* 887C 80007C7C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8880 80007C80 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8884 80007C84 03E00008 */  jr         $ra
/* 8888 80007C88 00000000 */   nop

glabel func_80007C8C
/* 888C 80007C8C 3C04800C */  lui        $a0, %hi(gGameSubState)
/* 8890 80007C90 9484E4F4 */  lhu        $a0, %lo(gGameSubState)($a0)
/* 8894 80007C94 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 8898 80007C98 2C81001F */  sltiu      $at, $a0, 0x1f
/* 889C 80007C9C AFBF0034 */  sw         $ra, 0x34($sp)
/* 88A0 80007CA0 10200722 */  beqz       $at, L8000992C_A52C
/* 88A4 80007CA4 AFB00030 */   sw        $s0, 0x30($sp)
/* 88A8 80007CA8 00047080 */  sll        $t6, $a0, 2
/* 88AC 80007CAC 3C01800F */  lui        $at, %hi(jtbl_800EAF2C)
/* 88B0 80007CB0 002E0821 */  addu       $at, $at, $t6
/* 88B4 80007CB4 8C2EAF2C */  lw         $t6, %lo(jtbl_800EAF2C)($at)
/* 88B8 80007CB8 00000000 */  nop
/* 88BC 80007CBC 01C00008 */  jr         $t6
/* 88C0 80007CC0 00000000 */   nop
glabel L80007CC4_88C4
/* 88C4 80007CC4 0C001462 */  jal        GameSave_CheckAndWipe
/* 88C8 80007CC8 00000000 */   nop
/* 88CC 80007CCC 0C0018D8 */  jal        func_80006360
/* 88D0 80007CD0 24040001 */   addiu     $a0, $zero, 1
/* 88D4 80007CD4 3C018013 */  lui        $at, %hi(D_801376BD)
/* 88D8 80007CD8 A02076BD */  sb         $zero, %lo(D_801376BD)($at)
/* 88DC 80007CDC 3C018013 */  lui        $at, %hi(D_801376B9)
/* 88E0 80007CE0 240F0001 */  addiu      $t7, $zero, 1
/* 88E4 80007CE4 A02F76B9 */  sb         $t7, %lo(D_801376B9)($at)
/* 88E8 80007CE8 24020060 */  addiu      $v0, $zero, 0x60
/* 88EC 80007CEC 3C018013 */  lui        $at, %hi(D_801376A9)
/* 88F0 80007CF0 A02276A9 */  sb         $v0, %lo(D_801376A9)($at)
/* 88F4 80007CF4 3C018013 */  lui        $at, %hi(D_801376AD)
/* 88F8 80007CF8 A02276AD */  sb         $v0, %lo(D_801376AD)($at)
/* 88FC 80007CFC 3C018013 */  lui        $at, %hi(D_801376B1)
/* 8900 80007D00 A02276B1 */  sb         $v0, %lo(D_801376B1)($at)
/* 8904 80007D04 3C018013 */  lui        $at, %hi(D_801376B5)
/* 8908 80007D08 241800FF */  addiu      $t8, $zero, 0xff
/* 890C 80007D0C A03876B5 */  sb         $t8, %lo(D_801376B5)($at)
/* 8910 80007D10 3C08800F */  lui        $t0, %hi(gActors)
/* 8914 80007D14 3C01800C */  lui        $at, %hi(gSaveSlotIndex)
/* 8918 80007D18 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 891C 80007D1C A0205008 */  sb         $zero, %lo(gSaveSlotIndex)($at)
/* 8920 80007D20 AD000488 */  sw         $zero, 0x488($t0)
/* 8924 80007D24 3C19800C */  lui        $t9, %hi(gGameSubState)
/* 8928 80007D28 9739E4F4 */  lhu        $t9, %lo(gGameSubState)($t9)
/* 892C 80007D2C 3C01800C */  lui        $at, %hi(gGameSubState)
/* 8930 80007D30 272B0001 */  addiu      $t3, $t9, 1
/* 8934 80007D34 100006FD */  b          L8000992C_A52C
/* 8938 80007D38 A42BE4F4 */   sh        $t3, %lo(gGameSubState)($at)
glabel L80007D3C_893C
/* 893C 80007D3C 3C05800C */  lui        $a1, %hi(gSaveSlotIndex)
/* 8940 80007D40 24A55008 */  addiu      $a1, $a1, %lo(gSaveSlotIndex)
/* 8944 80007D44 90A60000 */  lbu        $a2, ($a1)
/* 8948 80007D48 3C07800C */  lui        $a3, %hi(D_800C500C)
/* 894C 80007D4C 24E7500C */  addiu      $a3, $a3, %lo(D_800C500C)
/* 8950 80007D50 A0E60000 */  sb         $a2, ($a3)
/* 8954 80007D54 3C03800C */  lui        $v1, %hi(gButtonPress)
/* 8958 80007D58 3C0C800C */  lui        $t4, %hi(gButton_DUp)
/* 895C 80007D5C 958CE504 */  lhu        $t4, %lo(gButton_DUp)($t4)
/* 8960 80007D60 9463E4FC */  lhu        $v1, %lo(gButtonPress)($v1)
/* 8964 80007D64 24010001 */  addiu      $at, $zero, 1
/* 8968 80007D68 006C6824 */  and        $t5, $v1, $t4
/* 896C 80007D6C 11A00005 */  beqz       $t5, .L80007D84
/* 8970 80007D70 3C0B800C */   lui       $t3, 0x800c
/* 8974 80007D74 18C00003 */  blez       $a2, .L80007D84
/* 8978 80007D78 24CEFFFF */   addiu     $t6, $a2, -1
/* 897C 80007D7C A0AE0000 */  sb         $t6, ($a1)
/* 8980 80007D80 31C600FF */  andi       $a2, $t6, 0xff
.L80007D84:
/* 8984 80007D84 1481000C */  bne        $a0, $at, .L80007DB8
/* 8988 80007D88 00C01025 */   or        $v0, $a2, $zero
/* 898C 80007D8C 3C0F800C */  lui        $t7, %hi(gButton_DDown)
/* 8990 80007D90 95EFE508 */  lhu        $t7, %lo(gButton_DDown)($t7)
/* 8994 80007D94 28410002 */  slti       $at, $v0, 2
/* 8998 80007D98 006FC024 */  and        $t8, $v1, $t7
/* 899C 80007D9C 1300000F */  beqz       $t8, .L80007DDC
/* 89A0 80007DA0 00000000 */   nop
/* 89A4 80007DA4 1020000D */  beqz       $at, .L80007DDC
/* 89A8 80007DA8 24D90001 */   addiu     $t9, $a2, 1
/* 89AC 80007DAC A0B90000 */  sb         $t9, ($a1)
/* 89B0 80007DB0 1000000A */  b          .L80007DDC
/* 89B4 80007DB4 332200FF */   andi      $v0, $t9, 0xff
.L80007DB8:
/* 89B8 80007DB8 956BE508 */  lhu        $t3, -0x1af8($t3)
/* 89BC 80007DBC 00000000 */  nop
/* 89C0 80007DC0 006B6024 */  and        $t4, $v1, $t3
/* 89C4 80007DC4 11800005 */  beqz       $t4, .L80007DDC
/* 89C8 80007DC8 00000000 */   nop
/* 89CC 80007DCC 1C400003 */  bgtz       $v0, .L80007DDC
/* 89D0 80007DD0 24CD0001 */   addiu     $t5, $a2, 1
/* 89D4 80007DD4 A0AD0000 */  sb         $t5, ($a1)
/* 89D8 80007DD8 31A200FF */  andi       $v0, $t5, 0xff
.L80007DDC:
/* 89DC 80007DDC 90EE0000 */  lbu        $t6, ($a3)
/* 89E0 80007DE0 00000000 */  nop
/* 89E4 80007DE4 11C20003 */  beq        $t6, $v0, .L80007DF4
/* 89E8 80007DE8 00000000 */   nop
/* 89EC 80007DEC 0C000CE0 */  jal        SFX_Play_2
/* 89F0 80007DF0 24040022 */   addiu     $a0, $zero, 0x22
.L80007DF4:
/* 89F4 80007DF4 0C001BB7 */  jal        func_80006EDC
/* 89F8 80007DF8 24040001 */   addiu     $a0, $zero, 1
/* 89FC 80007DFC 3C03800C */  lui        $v1, %hi(gButtonPress)
/* 8A00 80007E00 3C0F800C */  lui        $t7, %hi(gButton_B)
/* 8A04 80007E04 95EFE514 */  lhu        $t7, %lo(gButton_B)($t7)
/* 8A08 80007E08 9463E4FC */  lhu        $v1, %lo(gButtonPress)($v1)
/* 8A0C 80007E0C 3C19800C */  lui        $t9, %hi(gGameSubState)
/* 8A10 80007E10 006FC024 */  and        $t8, $v1, $t7
/* 8A14 80007E14 13000015 */  beqz       $t8, .L80007E6C
/* 8A18 80007E18 00000000 */   nop
/* 8A1C 80007E1C 9739E4F4 */  lhu        $t9, %lo(gGameSubState)($t9)
/* 8A20 80007E20 24010007 */  addiu      $at, $zero, 7
/* 8A24 80007E24 17210011 */  bne        $t9, $at, .L80007E6C
/* 8A28 80007E28 24040043 */   addiu     $a0, $zero, 0x43
/* 8A2C 80007E2C 3C05800C */  lui        $a1, %hi(Aplha_Which)
/* 8A30 80007E30 240B0080 */  addiu      $t3, $zero, 0x80
/* 8A34 80007E34 240C0080 */  addiu      $t4, $zero, 0x80
/* 8A38 80007E38 AFAC001C */  sw         $t4, 0x1c($sp)
/* 8A3C 80007E3C AFAB0014 */  sw         $t3, 0x14($sp)
/* 8A40 80007E40 24A55230 */  addiu      $a1, $a1, %lo(Aplha_Which)
/* 8A44 80007E44 3406FFD0 */  ori        $a2, $zero, 0xffd0
/* 8A48 80007E48 24070058 */  addiu      $a3, $zero, 0x58
/* 8A4C 80007E4C AFA00010 */  sw         $zero, 0x10($sp)
/* 8A50 80007E50 0C009F10 */  jal        func_80027C40
/* 8A54 80007E54 AFA00018 */   sw        $zero, 0x18($sp)
/* 8A58 80007E58 3C03800C */  lui        $v1, %hi(gButtonPress)
/* 8A5C 80007E5C 240D0001 */  addiu      $t5, $zero, 1
/* 8A60 80007E60 3C01800C */  lui        $at, %hi(gGameSubState)
/* 8A64 80007E64 9463E4FC */  lhu        $v1, %lo(gButtonPress)($v1)
/* 8A68 80007E68 A42DE4F4 */  sh         $t5, %lo(gGameSubState)($at)
.L80007E6C:
/* 8A6C 80007E6C 3C0E800C */  lui        $t6, %hi(gButton_Start)
/* 8A70 80007E70 95CEE500 */  lhu        $t6, %lo(gButton_Start)($t6)
/* 8A74 80007E74 3C18800C */  lui        $t8, %hi(gButton_A)
/* 8A78 80007E78 006E7824 */  and        $t7, $v1, $t6
/* 8A7C 80007E7C 15E00006 */  bnez       $t7, .L80007E98
/* 8A80 80007E80 00000000 */   nop
/* 8A84 80007E84 9718E518 */  lhu        $t8, %lo(gButton_A)($t8)
/* 8A88 80007E88 00000000 */  nop
/* 8A8C 80007E8C 0078C824 */  and        $t9, $v1, $t8
/* 8A90 80007E90 132006A7 */  beqz       $t9, .L80009930
/* 8A94 80007E94 8FBF0034 */   lw        $ra, 0x34($sp)
.L80007E98:
/* 8A98 80007E98 0C000CD3 */  jal        SFX_Play_1
/* 8A9C 80007E9C 24040023 */   addiu     $a0, $zero, 0x23
/* 8AA0 80007EA0 3C08800C */  lui        $t0, %hi(gGameSubState)
/* 8AA4 80007EA4 2508E4F4 */  addiu      $t0, $t0, %lo(gGameSubState)
/* 8AA8 80007EA8 950B0000 */  lhu        $t3, ($t0)
/* 8AAC 80007EAC 24010007 */  addiu      $at, $zero, 7
/* 8AB0 80007EB0 15610081 */  bne        $t3, $at, .L800080B8
/* 8AB4 80007EB4 3C06800C */   lui       $a2, 0x800c
/* 8AB8 80007EB8 3C0C800C */  lui        $t4, %hi(gSaveSlotIndex)
/* 8ABC 80007EBC 918C5008 */  lbu        $t4, %lo(gSaveSlotIndex)($t4)
/* 8AC0 80007EC0 3C0E8017 */  lui        $t6, 0x8017
/* 8AC4 80007EC4 000C6880 */  sll        $t5, $t4, 2
/* 8AC8 80007EC8 01AC6823 */  subu       $t5, $t5, $t4
/* 8ACC 80007ECC 000D6880 */  sll        $t5, $t5, 2
/* 8AD0 80007ED0 01AC6823 */  subu       $t5, $t5, $t4
/* 8AD4 80007ED4 000D6840 */  sll        $t5, $t5, 1
/* 8AD8 80007ED8 25CE1AA0 */  addiu      $t6, $t6, 0x1aa0
/* 8ADC 80007EDC 3C06800C */  lui        $a2, %hi(D_800C4FA8)
/* 8AE0 80007EE0 24C64FA8 */  addiu      $a2, $a2, %lo(D_800C4FA8)
/* 8AE4 80007EE4 01AE2821 */  addu       $a1, $t5, $t6
/* 8AE8 80007EE8 00001825 */  or         $v1, $zero, $zero
/* 8AEC 80007EEC 00002025 */  or         $a0, $zero, $zero
.L80007EF0:
/* 8AF0 80007EF0 00031040 */  sll        $v0, $v1, 1
/* 8AF4 80007EF4 00C27821 */  addu       $t7, $a2, $v0
/* 8AF8 80007EF8 00A2C821 */  addu       $t9, $a1, $v0
/* 8AFC 80007EFC 972B0000 */  lhu        $t3, ($t9)
/* 8B00 80007F00 95F80000 */  lhu        $t8, ($t7)
/* 8B04 80007F04 24630001 */  addiu      $v1, $v1, 1
/* 8B08 80007F08 130B0004 */  beq        $t8, $t3, .L80007F1C
/* 8B0C 80007F0C 306DFFFF */   andi      $t5, $v1, 0xffff
/* 8B10 80007F10 24840001 */  addiu      $a0, $a0, 1
/* 8B14 80007F14 308CFFFF */  andi       $t4, $a0, 0xffff
/* 8B18 80007F18 01802025 */  or         $a0, $t4, $zero
.L80007F1C:
/* 8B1C 80007F1C 29A1000B */  slti       $at, $t5, 0xb
/* 8B20 80007F20 1420FFF3 */  bnez       $at, .L80007EF0
/* 8B24 80007F24 01A01825 */   or        $v1, $t5, $zero
/* 8B28 80007F28 1080005F */  beqz       $a0, .L800080A8
/* 8B2C 80007F2C 3C05800C */   lui       $a1, %hi(Aplha_Which)
/* 8B30 80007F30 24040043 */  addiu      $a0, $zero, 0x43
/* 8B34 80007F34 0C009EB2 */  jal        func_80027AC8
/* 8B38 80007F38 24A55230 */   addiu     $a1, $a1, %lo(Aplha_Which)
/* 8B3C 80007F3C 0C001AE7 */  jal        func_80006B9C
/* 8B40 80007F40 240400AC */   addiu     $a0, $zero, 0xac
/* 8B44 80007F44 00027080 */  sll        $t6, $v0, 2
/* 8B48 80007F48 01C27023 */  subu       $t6, $t6, $v0
/* 8B4C 80007F4C 000E7080 */  sll        $t6, $t6, 2
/* 8B50 80007F50 01C27021 */  addu       $t6, $t6, $v0
/* 8B54 80007F54 000E7080 */  sll        $t6, $t6, 2
/* 8B58 80007F58 3C08800F */  lui        $t0, %hi(gActors)
/* 8B5C 80007F5C 01C27023 */  subu       $t6, $t6, $v0
/* 8B60 80007F60 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 8B64 80007F64 000E70C0 */  sll        $t6, $t6, 3
/* 8B68 80007F68 010E1821 */  addu       $v1, $t0, $t6
/* 8B6C 80007F6C 240F0028 */  addiu      $t7, $zero, 0x28
/* 8B70 80007F70 24180058 */  addiu      $t8, $zero, 0x58
/* 8B74 80007F74 A46FFD58 */  sh         $t7, -0x2a8($v1)
/* 8B78 80007F78 A478FD5C */  sh         $t8, -0x2a4($v1)
/* 8B7C 80007F7C 8479FD58 */  lh         $t9, -0x2a8($v1)
/* 8B80 80007F80 846BFD5C */  lh         $t3, -0x2a4($v1)
/* 8B84 80007F84 3C04800C */  lui        $a0, %hi(gSaveSlotIndex)
/* 8B88 80007F88 A479FEF0 */  sh         $t9, -0x110($v1)
/* 8B8C 80007F8C A46BFEF4 */  sh         $t3, -0x10c($v1)
/* 8B90 80007F90 90845008 */  lbu        $a0, %lo(gSaveSlotIndex)($a0)
/* 8B94 80007F94 3050FFFF */  andi       $s0, $v0, 0xffff
/* 8B98 80007F98 10800006 */  beqz       $a0, .L80007FB4
/* 8B9C 80007F9C 3C05800C */   lui       $a1, 0x800c
/* 8BA0 80007FA0 24010001 */  addiu      $at, $zero, 1
/* 8BA4 80007FA4 10810011 */  beq        $a0, $at, .L80007FEC
/* 8BA8 80007FA8 3C05800C */   lui       $a1, 0x800c
/* 8BAC 80007FAC 1000001C */  b          .L80008020
/* 8BB0 80007FB0 00000000 */   nop
.L80007FB4:
/* 8BB4 80007FB4 240C00FF */  addiu      $t4, $zero, 0xff
/* 8BB8 80007FB8 240D00FF */  addiu      $t5, $zero, 0xff
/* 8BBC 80007FBC AFAD001C */  sw         $t5, 0x1c($sp)
/* 8BC0 80007FC0 AFAC0018 */  sw         $t4, 0x18($sp)
/* 8BC4 80007FC4 3204FFFF */  andi       $a0, $s0, 0xffff
/* 8BC8 80007FC8 24A55024 */  addiu      $a1, $a1, 0x5024
/* 8BCC 80007FCC 3406FFE0 */  ori        $a2, $zero, 0xffe0
/* 8BD0 80007FD0 24070058 */  addiu      $a3, $zero, 0x58
/* 8BD4 80007FD4 AFA00010 */  sw         $zero, 0x10($sp)
/* 8BD8 80007FD8 0C009F10 */  jal        func_80027C40
/* 8BDC 80007FDC AFA00014 */   sw        $zero, 0x14($sp)
/* 8BE0 80007FE0 A7A2003C */  sh         $v0, 0x3c($sp)
/* 8BE4 80007FE4 1000000E */  b          .L80008020
/* 8BE8 80007FE8 3050FFFF */   andi      $s0, $v0, 0xffff
.L80007FEC:
/* 8BEC 80007FEC 240E00FF */  addiu      $t6, $zero, 0xff
/* 8BF0 80007FF0 240F00FF */  addiu      $t7, $zero, 0xff
/* 8BF4 80007FF4 AFAF001C */  sw         $t7, 0x1c($sp)
/* 8BF8 80007FF8 AFAE0018 */  sw         $t6, 0x18($sp)
/* 8BFC 80007FFC 3204FFFF */  andi       $a0, $s0, 0xffff
/* 8C00 80008000 24A55028 */  addiu      $a1, $a1, 0x5028
/* 8C04 80008004 3406FFE0 */  ori        $a2, $zero, 0xffe0
/* 8C08 80008008 24070058 */  addiu      $a3, $zero, 0x58
/* 8C0C 8000800C AFA00010 */  sw         $zero, 0x10($sp)
/* 8C10 80008010 0C009F10 */  jal        func_80027C40
/* 8C14 80008014 AFA00014 */   sw        $zero, 0x14($sp)
/* 8C18 80008018 A7A2003C */  sh         $v0, 0x3c($sp)
/* 8C1C 8000801C 3050FFFF */  andi       $s0, $v0, 0xffff
.L80008020:
/* 8C20 80008020 3C05800C */  lui        $a1, %hi(Alpha_Erase_question)
/* 8C24 80008024 241900FF */  addiu      $t9, $zero, 0xff
/* 8C28 80008028 241800FF */  addiu      $t8, $zero, 0xff
/* 8C2C 8000802C AFB8001C */  sw         $t8, 0x1c($sp)
/* 8C30 80008030 AFB90018 */  sw         $t9, 0x18($sp)
/* 8C34 80008034 24A55240 */  addiu      $a1, $a1, %lo(Alpha_Erase_question)
/* 8C38 80008038 3204FFFF */  andi       $a0, $s0, 0xffff
/* 8C3C 8000803C 3406FFAC */  ori        $a2, $zero, 0xffac
/* 8C40 80008040 24070058 */  addiu      $a3, $zero, 0x58
/* 8C44 80008044 AFA00010 */  sw         $zero, 0x10($sp)
/* 8C48 80008048 0C009F10 */  jal        func_80027C40
/* 8C4C 8000804C AFA00014 */   sw        $zero, 0x14($sp)
/* 8C50 80008050 3C05800C */  lui        $a1, %hi(D_800C5294)
/* 8C54 80008054 240B00FF */  addiu      $t3, $zero, 0xff
/* 8C58 80008058 240C00FF */  addiu      $t4, $zero, 0xff
/* 8C5C 8000805C AFAC001C */  sw         $t4, 0x1c($sp)
/* 8C60 80008060 AFAB0018 */  sw         $t3, 0x18($sp)
/* 8C64 80008064 24A55294 */  addiu      $a1, $a1, %lo(D_800C5294)
/* 8C68 80008068 3044FFFF */  andi       $a0, $v0, 0xffff
/* 8C6C 8000806C 2406001E */  addiu      $a2, $zero, 0x1e
/* 8C70 80008070 24070058 */  addiu      $a3, $zero, 0x58
/* 8C74 80008074 AFA00010 */  sw         $zero, 0x10($sp)
/* 8C78 80008078 0C009F10 */  jal        func_80027C40
/* 8C7C 8000807C AFA00014 */   sw        $zero, 0x14($sp)
/* 8C80 80008080 3C03800C */  lui        $v1, %hi(gGameSubState)
/* 8C84 80008084 2463E4F4 */  addiu      $v1, $v1, %lo(gGameSubState)
/* 8C88 80008088 946E0000 */  lhu        $t6, ($v1)
/* 8C8C 8000808C 3C108010 */  lui        $s0, %hi(D_800FF510)
/* 8C90 80008090 2610F510 */  addiu      $s0, $s0, %lo(D_800FF510)
/* 8C94 80008094 240D0001 */  addiu      $t5, $zero, 1
/* 8C98 80008098 25CF0001 */  addiu      $t7, $t6, 1
/* 8C9C 8000809C A20D2910 */  sb         $t5, 0x2910($s0)
/* 8CA0 800080A0 10000622 */  b          L8000992C_A52C
/* 8CA4 800080A4 A46F0000 */   sh        $t7, ($v1)
.L800080A8:
/* 8CA8 800080A8 0C001AC7 */  jal        func_80006B1C
/* 8CAC 800080AC 24040001 */   addiu     $a0, $zero, 1
/* 8CB0 800080B0 1000061F */  b          .L80009930
/* 8CB4 800080B4 8FBF0034 */   lw        $ra, 0x34($sp)
.L800080B8:
/* 8CB8 800080B8 90C65008 */  lbu        $a2, 0x5008($a2)
/* 8CBC 800080BC 24010002 */  addiu      $at, $zero, 2
/* 8CC0 800080C0 14C10025 */  bne        $a2, $at, .L80008158
/* 8CC4 800080C4 00001825 */   or        $v1, $zero, $zero
/* 8CC8 800080C8 3C013F00 */  lui        $at, 0x3f00
/* 8CCC 800080CC 44812000 */  mtc1       $at, $f4
/* 8CD0 800080D0 3C013F80 */  lui        $at, 0x3f80
/* 8CD4 800080D4 44813000 */  mtc1       $at, $f6
/* 8CD8 800080D8 3C05800C */  lui        $a1, %hi(D_800C505C)
/* 8CDC 800080DC 24A5505C */  addiu      $a1, $a1, %lo(D_800C505C)
/* 8CE0 800080E0 2404009A */  addiu      $a0, $zero, 0x9a
/* 8CE4 800080E4 3406FF96 */  ori        $a2, $zero, 0xff96
/* 8CE8 800080E8 3407FFAE */  ori        $a3, $zero, 0xffae
/* 8CEC 800080EC AFA00010 */  sw         $zero, 0x10($sp)
/* 8CF0 800080F0 AFA00014 */  sw         $zero, 0x14($sp)
/* 8CF4 800080F4 AFA00018 */  sw         $zero, 0x18($sp)
/* 8CF8 800080F8 AFA0001C */  sw         $zero, 0x1c($sp)
/* 8CFC 800080FC E7A40020 */  swc1       $f4, 0x20($sp)
/* 8D00 80008100 0C009F65 */  jal        func_80027D94
/* 8D04 80008104 E7A60024 */   swc1      $f6, 0x24($sp)
/* 8D08 80008108 3C05800C */  lui        $a1, %hi(D_800C5068)
/* 8D0C 8000810C 241900FF */  addiu      $t9, $zero, 0xff
/* 8D10 80008110 241800FF */  addiu      $t8, $zero, 0xff
/* 8D14 80008114 AFB8001C */  sw         $t8, 0x1c($sp)
/* 8D18 80008118 AFB90018 */  sw         $t9, 0x18($sp)
/* 8D1C 8000811C 24A55068 */  addiu      $a1, $a1, %lo(D_800C5068)
/* 8D20 80008120 24040043 */  addiu      $a0, $zero, 0x43
/* 8D24 80008124 3406FFD0 */  ori        $a2, $zero, 0xffd0
/* 8D28 80008128 24070058 */  addiu      $a3, $zero, 0x58
/* 8D2C 8000812C AFA00010 */  sw         $zero, 0x10($sp)
/* 8D30 80008130 0C009F10 */  jal        func_80027C40
/* 8D34 80008134 AFA00014 */   sw        $zero, 0x14($sp)
/* 8D38 80008138 3C01800C */  lui        $at, %hi(gSaveSlotIndex)
/* 8D3C 8000813C A0205008 */  sb         $zero, %lo(gSaveSlotIndex)($at)
/* 8D40 80008140 0C001BB7 */  jal        func_80006EDC
/* 8D44 80008144 24040001 */   addiu     $a0, $zero, 1
/* 8D48 80008148 240B0007 */  addiu      $t3, $zero, 7
/* 8D4C 8000814C 3C01800C */  lui        $at, %hi(gGameSubState)
/* 8D50 80008150 100005F6 */  b          L8000992C_A52C
/* 8D54 80008154 A42BE4F4 */   sh        $t3, %lo(gGameSubState)($at)
.L80008158:
/* 8D58 80008158 00066080 */  sll        $t4, $a2, 2
/* 8D5C 8000815C 01866023 */  subu       $t4, $t4, $a2
/* 8D60 80008160 000C6080 */  sll        $t4, $t4, 2
/* 8D64 80008164 01866023 */  subu       $t4, $t4, $a2
/* 8D68 80008168 3C0D8017 */  lui        $t5, %hi(GameSave_Names)
/* 8D6C 8000816C 25AD1AA0 */  addiu      $t5, $t5, %lo(GameSave_Names)
/* 8D70 80008170 000C6040 */  sll        $t4, $t4, 1
/* 8D74 80008174 3C06800C */  lui        $a2, %hi(D_800C4FA8)
/* 8D78 80008178 24C64FA8 */  addiu      $a2, $a2, %lo(D_800C4FA8)
/* 8D7C 8000817C 018D2821 */  addu       $a1, $t4, $t5
/* 8D80 80008180 00002025 */  or         $a0, $zero, $zero
.L80008184:
/* 8D84 80008184 00031040 */  sll        $v0, $v1, 1
/* 8D88 80008188 00A27021 */  addu       $t6, $a1, $v0
/* 8D8C 8000818C 00C2C821 */  addu       $t9, $a2, $v0
/* 8D90 80008190 97380000 */  lhu        $t8, ($t9)
/* 8D94 80008194 95CF0000 */  lhu        $t7, ($t6)
/* 8D98 80008198 24630001 */  addiu      $v1, $v1, 1
/* 8D9C 8000819C 11F80004 */  beq        $t7, $t8, .L800081B0
/* 8DA0 800081A0 306CFFFF */   andi      $t4, $v1, 0xffff
/* 8DA4 800081A4 24840001 */  addiu      $a0, $a0, 1
/* 8DA8 800081A8 308BFFFF */  andi       $t3, $a0, 0xffff
/* 8DAC 800081AC 01602025 */  or         $a0, $t3, $zero
.L800081B0:
/* 8DB0 800081B0 2981000B */  slti       $at, $t4, 0xb
/* 8DB4 800081B4 1420FFF3 */  bnez       $at, .L80008184
/* 8DB8 800081B8 01801825 */   or        $v1, $t4, $zero
/* 8DBC 800081BC 10800007 */  beqz       $a0, .L800081DC
/* 8DC0 800081C0 3C098017 */   lui       $t1, %hi(D_80171B22)
/* 8DC4 800081C4 25291B22 */  addiu      $t1, $t1, %lo(D_80171B22)
/* 8DC8 800081C8 2410001E */  addiu      $s0, $zero, 0x1e
/* 8DCC 800081CC 240D003A */  addiu      $t5, $zero, 0x3a
/* 8DD0 800081D0 A52D0000 */  sh         $t5, ($t1)
/* 8DD4 800081D4 100005D5 */  b          L8000992C_A52C
/* 8DD8 800081D8 A5100000 */   sh        $s0, ($t0)
.L800081DC:
/* 8DDC 800081DC 0C001E29 */  jal        NameEntry_setup
/* 8DE0 800081E0 24040001 */   addiu     $a0, $zero, 1
/* 8DE4 800081E4 3C02800C */  lui        $v0, %hi(gGameSubState)
/* 8DE8 800081E8 2442E4F4 */  addiu      $v0, $v0, %lo(gGameSubState)
/* 8DEC 800081EC 944E0000 */  lhu        $t6, ($v0)
/* 8DF0 800081F0 00000000 */  nop
/* 8DF4 800081F4 25D90001 */  addiu      $t9, $t6, 1
/* 8DF8 800081F8 100005CC */  b          L8000992C_A52C
/* 8DFC 800081FC A4590000 */   sh        $t9, ($v0)
glabel L80008200_8E00
/* 8E00 80008200 0C001B7D */  jal        func_80006DF4
/* 8E04 80008204 240400AC */   addiu     $a0, $zero, 0xac
/* 8E08 80008208 240400AC */  addiu      $a0, $zero, 0xac
/* 8E0C 8000820C 0C001B32 */  jal        func_80006CC8
/* 8E10 80008210 24050028 */   addiu     $a1, $zero, 0x28
/* 8E14 80008214 0C001BB7 */  jal        func_80006EDC
/* 8E18 80008218 24040001 */   addiu     $a0, $zero, 1
/* 8E1C 8000821C 3C03800C */  lui        $v1, %hi(gButtonPress)
/* 8E20 80008220 3C0F800C */  lui        $t7, %hi(gButton_Start)
/* 8E24 80008224 95EFE500 */  lhu        $t7, %lo(gButton_Start)($t7)
/* 8E28 80008228 9463E4FC */  lhu        $v1, %lo(gButtonPress)($v1)
/* 8E2C 8000822C 3C0B800C */  lui        $t3, %hi(gButton_A)
/* 8E30 80008230 006FC024 */  and        $t8, $v1, $t7
/* 8E34 80008234 17000006 */  bnez       $t8, .L80008250
/* 8E38 80008238 00000000 */   nop
/* 8E3C 8000823C 956BE518 */  lhu        $t3, %lo(gButton_A)($t3)
/* 8E40 80008240 00000000 */  nop
/* 8E44 80008244 006B6024 */  and        $t4, $v1, $t3
/* 8E48 80008248 118005B9 */  beqz       $t4, .L80009930
/* 8E4C 8000824C 8FBF0034 */   lw        $ra, 0x34($sp)
.L80008250:
/* 8E50 80008250 0C000CD3 */  jal        SFX_Play_1
/* 8E54 80008254 24040023 */   addiu     $a0, $zero, 0x23
/* 8E58 80008258 3C108010 */  lui        $s0, %hi(D_800FF510)
/* 8E5C 8000825C 2610F510 */  addiu      $s0, $s0, %lo(D_800FF510)
/* 8E60 80008260 920D2910 */  lbu        $t5, 0x2910($s0)
/* 8E64 80008264 240400AE */  addiu      $a0, $zero, 0xae
/* 8E68 80008268 11A0001F */  beqz       $t5, .L800082E8
/* 8E6C 8000826C 3C05800C */   lui       $a1, %hi(D_800C5250)
/* 8E70 80008270 240E00FF */  addiu      $t6, $zero, 0xff
/* 8E74 80008274 241900FF */  addiu      $t9, $zero, 0xff
/* 8E78 80008278 AFB9001C */  sw         $t9, 0x1c($sp)
/* 8E7C 8000827C AFAE0018 */  sw         $t6, 0x18($sp)
/* 8E80 80008280 24A55250 */  addiu      $a1, $a1, %lo(D_800C5250)
/* 8E84 80008284 3406FFAC */  ori        $a2, $zero, 0xffac
/* 8E88 80008288 24070058 */  addiu      $a3, $zero, 0x58
/* 8E8C 8000828C AFA00010 */  sw         $zero, 0x10($sp)
/* 8E90 80008290 0C009F10 */  jal        func_80027C40
/* 8E94 80008294 AFA00014 */   sw        $zero, 0x14($sp)
/* 8E98 80008298 3C05800C */  lui        $a1, %hi(D_800C5294)
/* 8E9C 8000829C 240F00FF */  addiu      $t7, $zero, 0xff
/* 8EA0 800082A0 241800FF */  addiu      $t8, $zero, 0xff
/* 8EA4 800082A4 AFB8001C */  sw         $t8, 0x1c($sp)
/* 8EA8 800082A8 AFAF0018 */  sw         $t7, 0x18($sp)
/* 8EAC 800082AC 24A55294 */  addiu      $a1, $a1, %lo(D_800C5294)
/* 8EB0 800082B0 3044FFFF */  andi       $a0, $v0, 0xffff
/* 8EB4 800082B4 2406001E */  addiu      $a2, $zero, 0x1e
/* 8EB8 800082B8 24070058 */  addiu      $a3, $zero, 0x58
/* 8EBC 800082BC AFA00010 */  sw         $zero, 0x10($sp)
/* 8EC0 800082C0 0C009F10 */  jal        func_80027C40
/* 8EC4 800082C4 AFA00014 */   sw        $zero, 0x14($sp)
/* 8EC8 800082C8 3C03800C */  lui        $v1, %hi(gGameSubState)
/* 8ECC 800082CC 2463E4F4 */  addiu      $v1, $v1, %lo(gGameSubState)
/* 8ED0 800082D0 946C0000 */  lhu        $t4, ($v1)
/* 8ED4 800082D4 240B0001 */  addiu      $t3, $zero, 1
/* 8ED8 800082D8 258D0001 */  addiu      $t5, $t4, 1
/* 8EDC 800082DC A20B2910 */  sb         $t3, 0x2910($s0)
/* 8EE0 800082E0 10000592 */  b          L8000992C_A52C
/* 8EE4 800082E4 A46D0000 */   sh        $t5, ($v1)
.L800082E8:
/* 8EE8 800082E8 0C001AC7 */  jal        func_80006B1C
/* 8EEC 800082EC 24040001 */   addiu     $a0, $zero, 1
/* 8EF0 800082F0 1000058F */  b          .L80009930
/* 8EF4 800082F4 8FBF0034 */   lw        $ra, 0x34($sp)
glabel L800082F8_8EF8
/* 8EF8 800082F8 0C001B7D */  jal        func_80006DF4
/* 8EFC 800082FC 240400AC */   addiu     $a0, $zero, 0xac
/* 8F00 80008300 240400AC */  addiu      $a0, $zero, 0xac
/* 8F04 80008304 0C001B32 */  jal        func_80006CC8
/* 8F08 80008308 24050028 */   addiu     $a1, $zero, 0x28
/* 8F0C 8000830C 0C001BB7 */  jal        func_80006EDC
/* 8F10 80008310 24040001 */   addiu     $a0, $zero, 1
/* 8F14 80008314 3C03800C */  lui        $v1, %hi(gButtonPress)
/* 8F18 80008318 3C0E800C */  lui        $t6, %hi(gButton_Start)
/* 8F1C 8000831C 95CEE500 */  lhu        $t6, %lo(gButton_Start)($t6)
/* 8F20 80008320 9463E4FC */  lhu        $v1, %lo(gButtonPress)($v1)
/* 8F24 80008324 3C0F800C */  lui        $t7, %hi(gButton_A)
/* 8F28 80008328 006EC824 */  and        $t9, $v1, $t6
/* 8F2C 8000832C 17200006 */  bnez       $t9, .L80008348
/* 8F30 80008330 00000000 */   nop
/* 8F34 80008334 95EFE518 */  lhu        $t7, %lo(gButton_A)($t7)
/* 8F38 80008338 00000000 */  nop
/* 8F3C 8000833C 006FC024 */  and        $t8, $v1, $t7
/* 8F40 80008340 1300057B */  beqz       $t8, .L80009930
/* 8F44 80008344 8FBF0034 */   lw        $ra, 0x34($sp)
.L80008348:
/* 8F48 80008348 0C000CD3 */  jal        SFX_Play_1
/* 8F4C 8000834C 24040023 */   addiu     $a0, $zero, 0x23
/* 8F50 80008350 3C108010 */  lui        $s0, %hi(D_800FF510)
/* 8F54 80008354 2610F510 */  addiu      $s0, $s0, %lo(D_800FF510)
/* 8F58 80008358 920B2910 */  lbu        $t3, 0x2910($s0)
/* 8F5C 8000835C 240400AE */  addiu      $a0, $zero, 0xae
/* 8F60 80008360 1160001F */  beqz       $t3, .L800083E0
/* 8F64 80008364 3C05800C */   lui       $a1, %hi(D_800C5260)
/* 8F68 80008368 240C00FF */  addiu      $t4, $zero, 0xff
/* 8F6C 8000836C 240D00FF */  addiu      $t5, $zero, 0xff
/* 8F70 80008370 AFAD001C */  sw         $t5, 0x1c($sp)
/* 8F74 80008374 AFAC0018 */  sw         $t4, 0x18($sp)
/* 8F78 80008378 24A55260 */  addiu      $a1, $a1, %lo(D_800C5260)
/* 8F7C 8000837C 3406FFAC */  ori        $a2, $zero, 0xffac
/* 8F80 80008380 24070058 */  addiu      $a3, $zero, 0x58
/* 8F84 80008384 AFA00010 */  sw         $zero, 0x10($sp)
/* 8F88 80008388 0C009F10 */  jal        func_80027C40
/* 8F8C 8000838C AFA00014 */   sw        $zero, 0x14($sp)
/* 8F90 80008390 3C05800C */  lui        $a1, %hi(D_800C5294)
/* 8F94 80008394 240E00FF */  addiu      $t6, $zero, 0xff
/* 8F98 80008398 241900FF */  addiu      $t9, $zero, 0xff
/* 8F9C 8000839C AFB9001C */  sw         $t9, 0x1c($sp)
/* 8FA0 800083A0 AFAE0018 */  sw         $t6, 0x18($sp)
/* 8FA4 800083A4 24A55294 */  addiu      $a1, $a1, %lo(D_800C5294)
/* 8FA8 800083A8 3044FFFF */  andi       $a0, $v0, 0xffff
/* 8FAC 800083AC 2406001E */  addiu      $a2, $zero, 0x1e
/* 8FB0 800083B0 24070058 */  addiu      $a3, $zero, 0x58
/* 8FB4 800083B4 AFA00010 */  sw         $zero, 0x10($sp)
/* 8FB8 800083B8 0C009F10 */  jal        func_80027C40
/* 8FBC 800083BC AFA00014 */   sw        $zero, 0x14($sp)
/* 8FC0 800083C0 3C03800C */  lui        $v1, %hi(gGameSubState)
/* 8FC4 800083C4 2463E4F4 */  addiu      $v1, $v1, %lo(gGameSubState)
/* 8FC8 800083C8 94780000 */  lhu        $t8, ($v1)
/* 8FCC 800083CC 240F0001 */  addiu      $t7, $zero, 1
/* 8FD0 800083D0 270B0001 */  addiu      $t3, $t8, 1
/* 8FD4 800083D4 A20F2910 */  sb         $t7, 0x2910($s0)
/* 8FD8 800083D8 10000554 */  b          L8000992C_A52C
/* 8FDC 800083DC A46B0000 */   sh        $t3, ($v1)
.L800083E0:
/* 8FE0 800083E0 0C001AC7 */  jal        func_80006B1C
/* 8FE4 800083E4 24040001 */   addiu     $a0, $zero, 1
/* 8FE8 800083E8 10000551 */  b          .L80009930
/* 8FEC 800083EC 8FBF0034 */   lw        $ra, 0x34($sp)
glabel L800083F0_8FF0
/* 8FF0 800083F0 0C001B7D */  jal        func_80006DF4
/* 8FF4 800083F4 240400AC */   addiu     $a0, $zero, 0xac
/* 8FF8 800083F8 240400AC */  addiu      $a0, $zero, 0xac
/* 8FFC 800083FC 0C001B32 */  jal        func_80006CC8
/* 9000 80008400 24050028 */   addiu     $a1, $zero, 0x28
/* 9004 80008404 0C001BB7 */  jal        func_80006EDC
/* 9008 80008408 24040001 */   addiu     $a0, $zero, 1
/* 900C 8000840C 3C03800C */  lui        $v1, %hi(gButtonPress)
/* 9010 80008410 3C0C800C */  lui        $t4, %hi(gButton_Start)
/* 9014 80008414 958CE500 */  lhu        $t4, %lo(gButton_Start)($t4)
/* 9018 80008418 9463E4FC */  lhu        $v1, %lo(gButtonPress)($v1)
/* 901C 8000841C 3C0E800C */  lui        $t6, %hi(gButton_A)
/* 9020 80008420 006C6824 */  and        $t5, $v1, $t4
/* 9024 80008424 15A00005 */  bnez       $t5, .L8000843C
/* 9028 80008428 3C108010 */   lui       $s0, %hi(D_800FF510)
/* 902C 8000842C 95CEE518 */  lhu        $t6, %lo(gButton_A)($t6)
/* 9030 80008430 00000000 */  nop
/* 9034 80008434 006EC824 */  and        $t9, $v1, $t6
/* 9038 80008438 1320053C */  beqz       $t9, L8000992C_A52C
.L8000843C:
/* 903C 8000843C 2610F510 */   addiu     $s0, $s0, %lo(D_800FF510)
/* 9040 80008440 920F2910 */  lbu        $t7, 0x2910($s0)
/* 9044 80008444 00000000 */  nop
/* 9048 80008448 15E0000D */  bnez       $t7, .L80008480
/* 904C 8000844C 00000000 */   nop
/* 9050 80008450 0C000CD3 */  jal        SFX_Play_1
/* 9054 80008454 24040023 */   addiu     $a0, $zero, 0x23
/* 9058 80008458 3C03800C */  lui        $v1, %hi(gGameSubState)
/* 905C 8000845C 2463E4F4 */  addiu      $v1, $v1, %lo(gGameSubState)
/* 9060 80008460 946B0000 */  lhu        $t3, ($v1)
/* 9064 80008464 3C098017 */  lui        $t1, %hi(D_80171B22)
/* 9068 80008468 25291B22 */  addiu      $t1, $t1, %lo(D_80171B22)
/* 906C 8000846C 2418003A */  addiu      $t8, $zero, 0x3a
/* 9070 80008470 256C0001 */  addiu      $t4, $t3, 1
/* 9074 80008474 A5380000 */  sh         $t8, ($t1)
/* 9078 80008478 1000052C */  b          L8000992C_A52C
/* 907C 8000847C A46C0000 */   sh        $t4, ($v1)
.L80008480:
/* 9080 80008480 0C000CD3 */  jal        SFX_Play_1
/* 9084 80008484 24040023 */   addiu     $a0, $zero, 0x23
/* 9088 80008488 0C001AC7 */  jal        func_80006B1C
/* 908C 8000848C 24040001 */   addiu     $a0, $zero, 1
/* 9090 80008490 10000527 */  b          .L80009930
/* 9094 80008494 8FBF0034 */   lw        $ra, 0x34($sp)
glabel L80008498_9098
/* 9098 80008498 0C001B7D */  jal        func_80006DF4
/* 909C 8000849C 240400AC */   addiu     $a0, $zero, 0xac
/* 90A0 800084A0 240400AC */  addiu      $a0, $zero, 0xac
/* 90A4 800084A4 0C001B32 */  jal        func_80006CC8
/* 90A8 800084A8 24050028 */   addiu     $a1, $zero, 0x28
/* 90AC 800084AC 0C001BB7 */  jal        func_80006EDC
/* 90B0 800084B0 24040001 */   addiu     $a0, $zero, 1
/* 90B4 800084B4 3C098017 */  lui        $t1, %hi(D_80171B22)
/* 90B8 800084B8 25291B22 */  addiu      $t1, $t1, %lo(D_80171B22)
/* 90BC 800084BC 95260000 */  lhu        $a2, ($t1)
/* 90C0 800084C0 24010002 */  addiu      $at, $zero, 2
/* 90C4 800084C4 30CD0003 */  andi       $t5, $a2, 3
/* 90C8 800084C8 15A10007 */  bne        $t5, $at, .L800084E8
/* 90CC 800084CC 00C03825 */   or        $a3, $a2, $zero
/* 90D0 800084D0 3C08800F */  lui        $t0, %hi(gActors)
/* 90D4 800084D4 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 90D8 800084D8 8D0E4508 */  lw         $t6, 0x4508($t0)
/* 90DC 800084DC 00000000 */  nop
/* 90E0 800084E0 39D90001 */  xori       $t9, $t6, 1
/* 90E4 800084E4 AD194508 */  sw         $t9, 0x4508($t0)
.L800084E8:
/* 90E8 800084E8 2CE40001 */  sltiu      $a0, $a3, 1
/* 90EC 800084EC 24CFFFFF */  addiu      $t7, $a2, -1
/* 90F0 800084F0 1080050E */  beqz       $a0, L8000992C_A52C
/* 90F4 800084F4 A52F0000 */   sh        $t7, ($t1)
/* 90F8 800084F8 0C00160A */  jal        GameSave_Erase
/* 90FC 800084FC 00000000 */   nop
/* 9100 80008500 0C001AC7 */  jal        func_80006B1C
/* 9104 80008504 24040001 */   addiu     $a0, $zero, 1
/* 9108 80008508 10000509 */  b          .L80009930
/* 910C 8000850C 8FBF0034 */   lw        $ra, 0x34($sp)
glabel L80008510_9110
/* 9110 80008510 3C108010 */  lui        $s0, %hi(D_800FF510)
/* 9114 80008514 2610F510 */  addiu      $s0, $s0, %lo(D_800FF510)
/* 9118 80008518 921825E0 */  lbu        $t8, 0x25e0($s0)
/* 911C 8000851C 2401000A */  addiu      $at, $zero, 0xa
/* 9120 80008520 17010020 */  bne        $t8, $at, .L800085A4
/* 9124 80008524 3C04800C */   lui       $a0, 0x800c
/* 9128 80008528 92021AB8 */  lbu        $v0, 0x1ab8($s0)
/* 912C 8000852C 24010001 */  addiu      $at, $zero, 1
/* 9130 80008530 1441000D */  bne        $v0, $at, .L80008568
/* 9134 80008534 3C0B800C */   lui       $t3, %hi(gButtonPress)
/* 9138 80008538 3C0C800C */  lui        $t4, %hi(gButton_DRight)
/* 913C 8000853C 958CE510 */  lhu        $t4, %lo(gButton_DRight)($t4)
/* 9140 80008540 956BE4FC */  lhu        $t3, %lo(gButtonPress)($t3)
/* 9144 80008544 00000000 */  nop
/* 9148 80008548 016C6824 */  and        $t5, $t3, $t4
/* 914C 8000854C 11A00007 */  beqz       $t5, .L8000856C
/* 9150 80008550 24010002 */   addiu     $at, $zero, 2
/* 9154 80008554 0C000CE0 */  jal        SFX_Play_2
/* 9158 80008558 24040022 */   addiu     $a0, $zero, 0x22
/* 915C 8000855C 240E0002 */  addiu      $t6, $zero, 2
/* 9160 80008560 100000E6 */  b          .L800088FC
/* 9164 80008564 A20E1AB8 */   sb        $t6, 0x1ab8($s0)
.L80008568:
/* 9168 80008568 24010002 */  addiu      $at, $zero, 2
.L8000856C:
/* 916C 8000856C 144100E3 */  bne        $v0, $at, .L800088FC
/* 9170 80008570 3C19800C */   lui       $t9, %hi(gButtonPress)
/* 9174 80008574 3C0F800C */  lui        $t7, %hi(gButton_DLeft)
/* 9178 80008578 95EFE50C */  lhu        $t7, %lo(gButton_DLeft)($t7)
/* 917C 8000857C 9739E4FC */  lhu        $t9, %lo(gButtonPress)($t9)
/* 9180 80008580 00000000 */  nop
/* 9184 80008584 032FC024 */  and        $t8, $t9, $t7
/* 9188 80008588 130000DC */  beqz       $t8, .L800088FC
/* 918C 8000858C 00000000 */   nop
/* 9190 80008590 0C000CE0 */  jal        SFX_Play_2
/* 9194 80008594 24040022 */   addiu     $a0, $zero, 0x22
/* 9198 80008598 240B0001 */  addiu      $t3, $zero, 1
/* 919C 8000859C 100000D7 */  b          .L800088FC
/* 91A0 800085A0 A20B1AB8 */   sb        $t3, 0x1ab8($s0)
.L800085A4:
/* 91A4 800085A4 9484E50C */  lhu        $a0, -0x1af4($a0)
/* 91A8 800085A8 3C058010 */  lui        $a1, %hi(D_80101628)
/* 91AC 800085AC 0C005DBE */  jal        func_800176F8
/* 91B0 800085B0 24A51628 */   addiu     $a1, $a1, %lo(D_80101628)
/* 91B4 800085B4 1040002B */  beqz       $v0, .L80008664
/* 91B8 800085B8 3C04800C */   lui       $a0, 0x800c
/* 91BC 800085BC 0C000CE0 */  jal        SFX_Play_2
/* 91C0 800085C0 24040022 */   addiu     $a0, $zero, 0x22
/* 91C4 800085C4 920C1AB8 */  lbu        $t4, 0x1ab8($s0)
/* 91C8 800085C8 92051C50 */  lbu        $a1, 0x1c50($s0)
/* 91CC 800085CC 258DFFFF */  addiu      $t5, $t4, -1
/* 91D0 800085D0 A20D1AB8 */  sb         $t5, 0x1ab8($s0)
/* 91D4 800085D4 0C0016DA */  jal        func_80005B68
/* 91D8 800085D8 31A400FF */   andi      $a0, $t5, 0xff
/* 91DC 800085DC 10400005 */  beqz       $v0, .L800085F4
/* 91E0 800085E0 00000000 */   nop
/* 91E4 800085E4 920E1AB8 */  lbu        $t6, 0x1ab8($s0)
/* 91E8 800085E8 00000000 */  nop
/* 91EC 800085EC 25D9FFFF */  addiu      $t9, $t6, -1
/* 91F0 800085F0 A2191AB8 */  sb         $t9, 0x1ab8($s0)
.L800085F4:
/* 91F4 800085F4 92051C50 */  lbu        $a1, 0x1c50($s0)
/* 91F8 800085F8 24010005 */  addiu      $at, $zero, 5
/* 91FC 800085FC 10A10009 */  beq        $a1, $at, .L80008624
/* 9200 80008600 00000000 */   nop
/* 9204 80008604 92041AB8 */  lbu        $a0, 0x1ab8($s0)
/* 9208 80008608 240100FF */  addiu      $at, $zero, 0xff
/* 920C 8000860C 1481000C */  bne        $a0, $at, .L80008640
/* 9210 80008610 240F0010 */   addiu     $t7, $zero, 0x10
/* 9214 80008614 92051C50 */  lbu        $a1, 0x1c50($s0)
/* 9218 80008618 A20F1AB8 */  sb         $t7, 0x1ab8($s0)
/* 921C 8000861C 10000008 */  b          .L80008640
/* 9220 80008620 31E400FF */   andi      $a0, $t7, 0xff
.L80008624:
/* 9224 80008624 92041AB8 */  lbu        $a0, 0x1ab8($s0)
/* 9228 80008628 240100FF */  addiu      $at, $zero, 0xff
/* 922C 8000862C 14810004 */  bne        $a0, $at, .L80008640
/* 9230 80008630 24180002 */   addiu     $t8, $zero, 2
/* 9234 80008634 92051C50 */  lbu        $a1, 0x1c50($s0)
/* 9238 80008638 A2181AB8 */  sb         $t8, 0x1ab8($s0)
/* 923C 8000863C 330400FF */  andi       $a0, $t8, 0xff
.L80008640:
/* 9240 80008640 0C0016DA */  jal        func_80005B68
/* 9244 80008644 00000000 */   nop
/* 9248 80008648 104000AC */  beqz       $v0, .L800088FC
/* 924C 8000864C 00000000 */   nop
/* 9250 80008650 920B1AB8 */  lbu        $t3, 0x1ab8($s0)
/* 9254 80008654 00000000 */  nop
/* 9258 80008658 256CFFFF */  addiu      $t4, $t3, -1
/* 925C 8000865C 100000A7 */  b          .L800088FC
/* 9260 80008660 A20C1AB8 */   sb        $t4, 0x1ab8($s0)
.L80008664:
/* 9264 80008664 9484E510 */  lhu        $a0, -0x1af0($a0)
/* 9268 80008668 3C058010 */  lui        $a1, %hi(D_801017C0)
/* 926C 8000866C 0C005DBE */  jal        func_800176F8
/* 9270 80008670 24A517C0 */   addiu     $a1, $a1, %lo(D_801017C0)
/* 9274 80008674 1040001F */  beqz       $v0, .L800086F4
/* 9278 80008678 3C04800C */   lui       $a0, 0x800c
/* 927C 8000867C 0C000CE0 */  jal        SFX_Play_2
/* 9280 80008680 24040022 */   addiu     $a0, $zero, 0x22
/* 9284 80008684 920D1AB8 */  lbu        $t5, 0x1ab8($s0)
/* 9288 80008688 92051C50 */  lbu        $a1, 0x1c50($s0)
/* 928C 8000868C 25AE0001 */  addiu      $t6, $t5, 1
/* 9290 80008690 A20E1AB8 */  sb         $t6, 0x1ab8($s0)
/* 9294 80008694 0C0016DA */  jal        func_80005B68
/* 9298 80008698 31C400FF */   andi      $a0, $t6, 0xff
/* 929C 8000869C 10400005 */  beqz       $v0, .L800086B4
/* 92A0 800086A0 00000000 */   nop
/* 92A4 800086A4 92191AB8 */  lbu        $t9, 0x1ab8($s0)
/* 92A8 800086A8 00000000 */  nop
/* 92AC 800086AC 272F0001 */  addiu      $t7, $t9, 1
/* 92B0 800086B0 A20F1AB8 */  sb         $t7, 0x1ab8($s0)
.L800086B4:
/* 92B4 800086B4 92181C50 */  lbu        $t8, 0x1c50($s0)
/* 92B8 800086B8 24010005 */  addiu      $at, $zero, 5
/* 92BC 800086BC 13010007 */  beq        $t8, $at, .L800086DC
/* 92C0 800086C0 00000000 */   nop
/* 92C4 800086C4 920B1AB8 */  lbu        $t3, 0x1ab8($s0)
/* 92C8 800086C8 24010011 */  addiu      $at, $zero, 0x11
/* 92CC 800086CC 1561008B */  bne        $t3, $at, .L800088FC
/* 92D0 800086D0 00000000 */   nop
/* 92D4 800086D4 10000089 */  b          .L800088FC
/* 92D8 800086D8 A2001AB8 */   sb        $zero, 0x1ab8($s0)
.L800086DC:
/* 92DC 800086DC 920C1AB8 */  lbu        $t4, 0x1ab8($s0)
/* 92E0 800086E0 24010003 */  addiu      $at, $zero, 3
/* 92E4 800086E4 15810085 */  bne        $t4, $at, .L800088FC
/* 92E8 800086E8 00000000 */   nop
/* 92EC 800086EC 10000083 */  b          .L800088FC
/* 92F0 800086F0 A2001AB8 */   sb        $zero, 0x1ab8($s0)
.L800086F4:
/* 92F4 800086F4 9484E504 */  lhu        $a0, -0x1afc($a0)
/* 92F8 800086F8 3C058010 */  lui        $a1, %hi(D_801012F8)
/* 92FC 800086FC 0C005DBE */  jal        func_800176F8
/* 9300 80008700 24A512F8 */   addiu     $a1, $a1, %lo(D_801012F8)
/* 9304 80008704 1040003B */  beqz       $v0, .L800087F4
/* 9308 80008708 3C04800C */   lui       $a0, 0x800c
/* 930C 8000870C 0C000CE0 */  jal        SFX_Play_2
/* 9310 80008710 24040022 */   addiu     $a0, $zero, 0x22
/* 9314 80008714 920D1C50 */  lbu        $t5, 0x1c50($s0)
/* 9318 80008718 92041AB8 */  lbu        $a0, 0x1ab8($s0)
/* 931C 8000871C 25AEFFFF */  addiu      $t6, $t5, -1
/* 9320 80008720 A20E1C50 */  sb         $t6, 0x1c50($s0)
/* 9324 80008724 0C0016DA */  jal        func_80005B68
/* 9328 80008728 31C500FF */   andi      $a1, $t6, 0xff
/* 932C 8000872C 10400005 */  beqz       $v0, .L80008744
/* 9330 80008730 00000000 */   nop
/* 9334 80008734 92191C50 */  lbu        $t9, 0x1c50($s0)
/* 9338 80008738 00000000 */  nop
/* 933C 8000873C 272FFFFF */  addiu      $t7, $t9, -1
/* 9340 80008740 A20F1C50 */  sb         $t7, 0x1c50($s0)
.L80008744:
/* 9344 80008744 92021C50 */  lbu        $v0, 0x1c50($s0)
/* 9348 80008748 24010004 */  addiu      $at, $zero, 4
/* 934C 8000874C 14410013 */  bne        $v0, $at, .L8000879C
/* 9350 80008750 240100FF */   addiu     $at, $zero, 0xff
/* 9354 80008754 92041AB8 */  lbu        $a0, 0x1ab8($s0)
/* 9358 80008758 24010001 */  addiu      $at, $zero, 1
/* 935C 8000875C 10800008 */  beqz       $a0, .L80008780
/* 9360 80008760 2418000C */   addiu     $t8, $zero, 0xc
/* 9364 80008764 10810008 */  beq        $a0, $at, .L80008788
/* 9368 80008768 240B000E */   addiu     $t3, $zero, 0xe
/* 936C 8000876C 24010002 */  addiu      $at, $zero, 2
/* 9370 80008770 10810007 */  beq        $a0, $at, .L80008790
/* 9374 80008774 240C0010 */   addiu     $t4, $zero, 0x10
/* 9378 80008778 10000060 */  b          .L800088FC
/* 937C 8000877C 00000000 */   nop
.L80008780:
/* 9380 80008780 1000005E */  b          .L800088FC
/* 9384 80008784 A2181AB8 */   sb        $t8, 0x1ab8($s0)
.L80008788:
/* 9388 80008788 1000005C */  b          .L800088FC
/* 938C 8000878C A20B1AB8 */   sb        $t3, 0x1ab8($s0)
.L80008790:
/* 9390 80008790 1000005A */  b          .L800088FC
/* 9394 80008794 A20C1AB8 */   sb        $t4, 0x1ab8($s0)
/* 9398 80008798 240100FF */  addiu      $at, $zero, 0xff
.L8000879C:
/* 939C 8000879C 14410057 */  bne        $v0, $at, .L800088FC
/* 93A0 800087A0 00000000 */   nop
/* 93A4 800087A4 92021AB8 */  lbu        $v0, 0x1ab8($s0)
/* 93A8 800087A8 240D0004 */  addiu      $t5, $zero, 4
/* 93AC 800087AC 2841000A */  slti       $at, $v0, 0xa
/* 93B0 800087B0 10200003 */  beqz       $at, .L800087C0
/* 93B4 800087B4 240E0005 */   addiu     $t6, $zero, 5
/* 93B8 800087B8 10000050 */  b          .L800088FC
/* 93BC 800087BC A20D1C50 */   sb        $t5, 0x1c50($s0)
.L800087C0:
/* 93C0 800087C0 2841000D */  slti       $at, $v0, 0xd
/* 93C4 800087C4 10200003 */  beqz       $at, .L800087D4
/* 93C8 800087C8 A20E1C50 */   sb        $t6, 0x1c50($s0)
/* 93CC 800087CC 1000004B */  b          .L800088FC
/* 93D0 800087D0 A2001AB8 */   sb        $zero, 0x1ab8($s0)
.L800087D4:
/* 93D4 800087D4 2841000F */  slti       $at, $v0, 0xf
/* 93D8 800087D8 10200004 */  beqz       $at, .L800087EC
/* 93DC 800087DC 240F0002 */   addiu     $t7, $zero, 2
/* 93E0 800087E0 24190001 */  addiu      $t9, $zero, 1
/* 93E4 800087E4 10000045 */  b          .L800088FC
/* 93E8 800087E8 A2191AB8 */   sb        $t9, 0x1ab8($s0)
.L800087EC:
/* 93EC 800087EC 10000043 */  b          .L800088FC
/* 93F0 800087F0 A20F1AB8 */   sb        $t7, 0x1ab8($s0)
.L800087F4:
/* 93F4 800087F4 9484E508 */  lhu        $a0, -0x1af8($a0)
/* 93F8 800087F8 3C058010 */  lui        $a1, %hi(D_80101490)
/* 93FC 800087FC 0C005DBE */  jal        func_800176F8
/* 9400 80008800 24A51490 */   addiu     $a1, $a1, %lo(D_80101490)
/* 9404 80008804 1040003D */  beqz       $v0, .L800088FC
/* 9408 80008808 00000000 */   nop
/* 940C 8000880C 0C000CE0 */  jal        SFX_Play_2
/* 9410 80008810 24040022 */   addiu     $a0, $zero, 0x22
/* 9414 80008814 92181C50 */  lbu        $t8, 0x1c50($s0)
/* 9418 80008818 92041AB8 */  lbu        $a0, 0x1ab8($s0)
/* 941C 8000881C 270B0001 */  addiu      $t3, $t8, 1
/* 9420 80008820 A20B1C50 */  sb         $t3, 0x1c50($s0)
/* 9424 80008824 0C0016DA */  jal        func_80005B68
/* 9428 80008828 316500FF */   andi      $a1, $t3, 0xff
/* 942C 8000882C 10400005 */  beqz       $v0, .L80008844
/* 9430 80008830 00000000 */   nop
/* 9434 80008834 920C1C50 */  lbu        $t4, 0x1c50($s0)
/* 9438 80008838 00000000 */  nop
/* 943C 8000883C 258D0001 */  addiu      $t5, $t4, 1
/* 9440 80008840 A20D1C50 */  sb         $t5, 0x1c50($s0)
.L80008844:
/* 9444 80008844 92021C50 */  lbu        $v0, 0x1c50($s0)
/* 9448 80008848 24010006 */  addiu      $at, $zero, 6
/* 944C 8000884C 14410003 */  bne        $v0, $at, .L8000885C
/* 9450 80008850 00000000 */   nop
/* 9454 80008854 A2001C50 */  sb         $zero, 0x1c50($s0)
/* 9458 80008858 300200FF */  andi       $v0, $zero, 0xff
.L8000885C:
/* 945C 8000885C 14400012 */  bnez       $v0, .L800088A8
/* 9460 80008860 24010005 */   addiu     $at, $zero, 5
/* 9464 80008864 92041AB8 */  lbu        $a0, 0x1ab8($s0)
/* 9468 80008868 24010001 */  addiu      $at, $zero, 1
/* 946C 8000886C 10800008 */  beqz       $a0, .L80008890
/* 9470 80008870 240E000C */   addiu     $t6, $zero, 0xc
/* 9474 80008874 10810008 */  beq        $a0, $at, .L80008898
/* 9478 80008878 2419000E */   addiu     $t9, $zero, 0xe
/* 947C 8000887C 24010002 */  addiu      $at, $zero, 2
/* 9480 80008880 10810007 */  beq        $a0, $at, .L800088A0
/* 9484 80008884 240F0010 */   addiu     $t7, $zero, 0x10
/* 9488 80008888 1000001C */  b          .L800088FC
/* 948C 8000888C 00000000 */   nop
.L80008890:
/* 9490 80008890 1000001A */  b          .L800088FC
/* 9494 80008894 A20E1AB8 */   sb        $t6, 0x1ab8($s0)
.L80008898:
/* 9498 80008898 10000018 */  b          .L800088FC
/* 949C 8000889C A2191AB8 */   sb        $t9, 0x1ab8($s0)
.L800088A0:
/* 94A0 800088A0 10000016 */  b          .L800088FC
/* 94A4 800088A4 A20F1AB8 */   sb        $t7, 0x1ab8($s0)
.L800088A8:
/* 94A8 800088A8 14410014 */  bne        $v0, $at, .L800088FC
/* 94AC 800088AC 00000000 */   nop
/* 94B0 800088B0 92021AB8 */  lbu        $v0, 0x1ab8($s0)
/* 94B4 800088B4 24180005 */  addiu      $t8, $zero, 5
/* 94B8 800088B8 2841000A */  slti       $at, $v0, 0xa
/* 94BC 800088BC 10200004 */  beqz       $at, .L800088D0
/* 94C0 800088C0 2841000D */   slti      $at, $v0, 0xd
/* 94C4 800088C4 1000000D */  b          .L800088FC
/* 94C8 800088C8 A2001C50 */   sb        $zero, 0x1c50($s0)
/* 94CC 800088CC 2841000D */  slti       $at, $v0, 0xd
.L800088D0:
/* 94D0 800088D0 10200003 */  beqz       $at, .L800088E0
/* 94D4 800088D4 A2181C50 */   sb        $t8, 0x1c50($s0)
/* 94D8 800088D8 10000008 */  b          .L800088FC
/* 94DC 800088DC A2001AB8 */   sb        $zero, 0x1ab8($s0)
.L800088E0:
/* 94E0 800088E0 2841000F */  slti       $at, $v0, 0xf
/* 94E4 800088E4 10200004 */  beqz       $at, .L800088F8
/* 94E8 800088E8 240C0002 */   addiu     $t4, $zero, 2
/* 94EC 800088EC 240B0001 */  addiu      $t3, $zero, 1
/* 94F0 800088F0 10000002 */  b          .L800088FC
/* 94F4 800088F4 A20B1AB8 */   sb        $t3, 0x1ab8($s0)
.L800088F8:
/* 94F8 800088F8 A20C1AB8 */  sb         $t4, 0x1ab8($s0)
.L800088FC:
/* 94FC 800088FC 0C001B7D */  jal        func_80006DF4
/* 9500 80008900 24040001 */   addiu     $a0, $zero, 1
/* 9504 80008904 920D2448 */  lbu        $t5, 0x2448($s0)
/* 9508 80008908 3C08800F */  lui        $t0, 0x800f
/* 950C 8000890C 000D7080 */  sll        $t6, $t5, 2
/* 9510 80008910 01CD7023 */  subu       $t6, $t6, $t5
/* 9514 80008914 000E7080 */  sll        $t6, $t6, 2
/* 9518 80008918 01CD7021 */  addu       $t6, $t6, $t5
/* 951C 8000891C 000E7080 */  sll        $t6, $t6, 2
/* 9520 80008920 01CD7023 */  subu       $t6, $t6, $t5
/* 9524 80008924 2508F510 */  addiu      $t0, $t0, -0xaf0
/* 9528 80008928 000E70C0 */  sll        $t6, $t6, 3
/* 952C 8000892C 010E1821 */  addu       $v1, $t0, $t6
/* 9530 80008930 8C79FEE8 */  lw         $t9, -0x118($v1)
/* 9534 80008934 24020005 */  addiu      $v0, $zero, 5
/* 9538 80008938 3B2F0001 */  xori       $t7, $t9, 1
/* 953C 8000893C AC6FFEE8 */  sw         $t7, -0x118($v1)
/* 9540 80008940 92181C50 */  lbu        $t8, 0x1c50($s0)
/* 9544 80008944 3C01800F */  lui        $at, 0x800f
/* 9548 80008948 1058000D */  beq        $v0, $t8, .L80008980
/* 954C 8000894C 24030198 */   addiu     $v1, $zero, 0x198
/* 9550 80008950 920B1AB8 */  lbu        $t3, 0x1ab8($s0)
/* 9554 80008954 3C01800F */  lui        $at, %hi(gActors+0x220)
/* 9558 80008958 000B6100 */  sll        $t4, $t3, 4
/* 955C 8000895C 258DFF80 */  addiu      $t5, $t4, -0x80
/* 9560 80008960 A42DF730 */  sh         $t5, %lo(gActors+0x220)($at)
/* 9564 80008964 920E1C50 */  lbu        $t6, 0x1c50($s0)
/* 9568 80008968 3C01800F */  lui        $at, %hi(gActors+0x224)
/* 956C 8000896C 000EC823 */  negu       $t9, $t6
/* 9570 80008970 00197900 */  sll        $t7, $t9, 4
/* 9574 80008974 25F80030 */  addiu      $t8, $t7, 0x30
/* 9578 80008978 10000008 */  b          .L8000899C
/* 957C 8000897C A438F734 */   sh        $t8, %lo(gActors+0x224)($at)
.L80008980:
/* 9580 80008980 920B1AB8 */  lbu        $t3, 0x1ab8($s0)
/* 9584 80008984 240EFFE0 */  addiu      $t6, $zero, -0x20
/* 9588 80008988 000B6140 */  sll        $t4, $t3, 5
/* 958C 8000898C 258D0038 */  addiu      $t5, $t4, 0x38
/* 9590 80008990 A42DF730 */  sh         $t5, -0x8d0($at)
/* 9594 80008994 3C01800F */  lui        $at, %hi(gActors+0x224)
/* 9598 80008998 A42EF734 */  sh         $t6, %lo(gActors+0x224)($at)
.L8000899C:
/* 959C 8000899C 92191C50 */  lbu        $t9, 0x1c50($s0)
/* 95A0 800089A0 24090002 */  addiu      $t1, $zero, 2
/* 95A4 800089A4 10590011 */  beq        $v0, $t9, .L800089EC
/* 95A8 800089A8 00000000 */   nop
/* 95AC 800089AC 24030198 */  addiu      $v1, $zero, 0x198
/* 95B0 800089B0 01230019 */  multu      $t1, $v1
/* 95B4 800089B4 92181AB8 */  lbu        $t8, 0x1ab8($s0)
/* 95B8 800089B8 00000000 */  nop
/* 95BC 800089BC 00185900 */  sll        $t3, $t8, 4
/* 95C0 800089C0 256CFF80 */  addiu      $t4, $t3, -0x80
/* 95C4 800089C4 00007812 */  mflo       $t7
/* 95C8 800089C8 010F1021 */  addu       $v0, $t0, $t7
/* 95CC 800089CC A44C0088 */  sh         $t4, 0x88($v0)
/* 95D0 800089D0 920D1C50 */  lbu        $t5, 0x1c50($s0)
/* 95D4 800089D4 00000000 */  nop
/* 95D8 800089D8 000D7023 */  negu       $t6, $t5
/* 95DC 800089DC 000EC900 */  sll        $t9, $t6, 4
/* 95E0 800089E0 272F0030 */  addiu      $t7, $t9, 0x30
/* 95E4 800089E4 1000000A */  b          .L80008A10
/* 95E8 800089E8 A44F008C */   sh        $t7, 0x8c($v0)
.L800089EC:
/* 95EC 800089EC 01230019 */  multu      $t1, $v1
/* 95F0 800089F0 920B1AB8 */  lbu        $t3, 0x1ab8($s0)
/* 95F4 800089F4 240EFFE0 */  addiu      $t6, $zero, -0x20
/* 95F8 800089F8 000B6140 */  sll        $t4, $t3, 5
/* 95FC 800089FC 258D0038 */  addiu      $t5, $t4, 0x38
/* 9600 80008A00 0000C012 */  mflo       $t8
/* 9604 80008A04 01181021 */  addu       $v0, $t0, $t8
/* 9608 80008A08 A44D0088 */  sh         $t5, 0x88($v0)
/* 960C 80008A0C A44E008C */  sh         $t6, 0x8c($v0)
.L80008A10:
/* 9610 80008A10 3C03800C */  lui        $v1, %hi(gButtonPress)
/* 9614 80008A14 3C19800C */  lui        $t9, %hi(gButton_A)
/* 9618 80008A18 9739E518 */  lhu        $t9, %lo(gButton_A)($t9)
/* 961C 80008A1C 9463E4FC */  lhu        $v1, %lo(gButtonPress)($v1)
/* 9620 80008A20 00000000 */  nop
/* 9624 80008A24 00797824 */  and        $t7, $v1, $t9
/* 9628 80008A28 11E0009A */  beqz       $t7, .L80008C94
/* 962C 80008A2C 00000000 */   nop
/* 9630 80008A30 92181C50 */  lbu        $t8, 0x1c50($s0)
/* 9634 80008A34 00000000 */  nop
/* 9638 80008A38 2F010006 */  sltiu      $at, $t8, 6
/* 963C 80008A3C 10200095 */  beqz       $at, .L80008C94
/* 9640 80008A40 0018C080 */   sll       $t8, $t8, 2
/* 9644 80008A44 3C01800F */  lui        $at, %hi(jtbl_800EAFA8)
/* 9648 80008A48 00380821 */  addu       $at, $at, $t8
/* 964C 80008A4C 8C38AFA8 */  lw         $t8, %lo(jtbl_800EAFA8)($at)
/* 9650 80008A50 00000000 */  nop
/* 9654 80008A54 03000008 */  jr         $t8
/* 9658 80008A58 00000000 */   nop
glabel L80008A5C_965C
/* 965C 80008A5C 3C04800C */  lui        $a0, 0x800c
/* 9660 80008A60 3C05800C */  lui        $a1, %hi(D_800C515C)
/* 9664 80008A64 3C06800C */  lui        $a2, %hi(nameEntryRow0ENG)
/* 9668 80008A68 24C65304 */  addiu      $a2, $a2, %lo(nameEntryRow0ENG)
/* 966C 80008A6C 24A5515C */  addiu      $a1, $a1, %lo(D_800C515C)
/* 9670 80008A70 0C001EF0 */  jal        nameEntry_enter_char
/* 9674 80008A74 24845084 */   addiu     $a0, $a0, 0x5084
/* 9678 80008A78 3C03800C */  lui        $v1, %hi(gButtonPress)
/* 967C 80008A7C 9463E4FC */  lhu        $v1, %lo(gButtonPress)($v1)
/* 9680 80008A80 3C08800F */  lui        $t0, %hi(gActors)
/* 9684 80008A84 10000083 */  b          .L80008C94
/* 9688 80008A88 2508F510 */   addiu     $t0, $t0, %lo(gActors)
glabel L80008A8C_968C
/* 968C 80008A8C 3C04800C */  lui        $a0, 0x800c
/* 9690 80008A90 3C05800C */  lui        $a1, %hi(D_800C5180)
/* 9694 80008A94 3C06800C */  lui        $a2, %hi(nameEntryRow1ENG)
/* 9698 80008A98 24C65328 */  addiu      $a2, $a2, %lo(nameEntryRow1ENG)
/* 969C 80008A9C 24A55180 */  addiu      $a1, $a1, %lo(D_800C5180)
/* 96A0 80008AA0 0C001EF0 */  jal        nameEntry_enter_char
/* 96A4 80008AA4 248450A8 */   addiu     $a0, $a0, 0x50a8
/* 96A8 80008AA8 3C03800C */  lui        $v1, %hi(gButtonPress)
/* 96AC 80008AAC 9463E4FC */  lhu        $v1, %lo(gButtonPress)($v1)
/* 96B0 80008AB0 3C08800F */  lui        $t0, %hi(gActors)
/* 96B4 80008AB4 10000077 */  b          .L80008C94
/* 96B8 80008AB8 2508F510 */   addiu     $t0, $t0, %lo(gActors)
glabel L80008ABC_96BC
/* 96BC 80008ABC 3C04800C */  lui        $a0, 0x800c
/* 96C0 80008AC0 3C05800C */  lui        $a1, %hi(D_800C51A4)
/* 96C4 80008AC4 3C06800C */  lui        $a2, %hi(nameEntryRow2ENG)
/* 96C8 80008AC8 24C6534C */  addiu      $a2, $a2, %lo(nameEntryRow2ENG)
/* 96CC 80008ACC 24A551A4 */  addiu      $a1, $a1, %lo(D_800C51A4)
/* 96D0 80008AD0 0C001EF0 */  jal        nameEntry_enter_char
/* 96D4 80008AD4 248450CC */   addiu     $a0, $a0, 0x50cc
/* 96D8 80008AD8 3C03800C */  lui        $v1, %hi(gButtonPress)
/* 96DC 80008ADC 9463E4FC */  lhu        $v1, %lo(gButtonPress)($v1)
/* 96E0 80008AE0 3C08800F */  lui        $t0, %hi(gActors)
/* 96E4 80008AE4 1000006B */  b          .L80008C94
/* 96E8 80008AE8 2508F510 */   addiu     $t0, $t0, %lo(gActors)
glabel L80008AEC_96EC
/* 96EC 80008AEC 3C04800C */  lui        $a0, 0x800c
/* 96F0 80008AF0 3C05800C */  lui        $a1, %hi(D_800C51C8)
/* 96F4 80008AF4 3C06800C */  lui        $a2, %hi(nameEntryRow3ENG)
/* 96F8 80008AF8 24C65370 */  addiu      $a2, $a2, %lo(nameEntryRow3ENG)
/* 96FC 80008AFC 24A551C8 */  addiu      $a1, $a1, %lo(D_800C51C8)
/* 9700 80008B00 0C001EF0 */  jal        nameEntry_enter_char
/* 9704 80008B04 248450F0 */   addiu     $a0, $a0, 0x50f0
/* 9708 80008B08 3C03800C */  lui        $v1, %hi(gButtonPress)
/* 970C 80008B0C 9463E4FC */  lhu        $v1, %lo(gButtonPress)($v1)
/* 9710 80008B10 3C08800F */  lui        $t0, %hi(gActors)
/* 9714 80008B14 1000005F */  b          .L80008C94
/* 9718 80008B18 2508F510 */   addiu     $t0, $t0, %lo(gActors)
glabel L80008B1C_971C
/* 971C 80008B1C 3C04800C */  lui        $a0, 0x800c
/* 9720 80008B20 3C05800C */  lui        $a1, %hi(D_800C51EC)
/* 9724 80008B24 3C06800C */  lui        $a2, %hi(nameEntryRow4ENG)
/* 9728 80008B28 24C65394 */  addiu      $a2, $a2, %lo(nameEntryRow4ENG)
/* 972C 80008B2C 24A551EC */  addiu      $a1, $a1, %lo(D_800C51EC)
/* 9730 80008B30 0C001EF0 */  jal        nameEntry_enter_char
/* 9734 80008B34 24845114 */   addiu     $a0, $a0, 0x5114
/* 9738 80008B38 3C03800C */  lui        $v1, %hi(gButtonPress)
/* 973C 80008B3C 9463E4FC */  lhu        $v1, %lo(gButtonPress)($v1)
/* 9740 80008B40 3C08800F */  lui        $t0, %hi(gActors)
/* 9744 80008B44 10000053 */  b          .L80008C94
/* 9748 80008B48 2508F510 */   addiu     $t0, $t0, %lo(gActors)
glabel L80008B4C_974C
/* 974C 80008B4C 92041AB8 */  lbu        $a0, 0x1ab8($s0)
/* 9750 80008B50 24010001 */  addiu      $at, $zero, 1
/* 9754 80008B54 10800007 */  beqz       $a0, .L80008B74
/* 9758 80008B58 00000000 */   nop
/* 975C 80008B5C 1081001D */  beq        $a0, $at, .L80008BD4
/* 9760 80008B60 24010002 */   addiu     $at, $zero, 2
/* 9764 80008B64 10810045 */  beq        $a0, $at, .L80008C7C
/* 9768 80008B68 00000000 */   nop
/* 976C 80008B6C 10000049 */  b          .L80008C94
/* 9770 80008B70 00000000 */   nop
.L80008B74:
/* 9774 80008B74 920225E0 */  lbu        $v0, 0x25e0($s0)
/* 9778 80008B78 3C07800C */  lui        $a3, %hi(nameEntrySpace)
/* 977C 80008B7C 2841000A */  slti       $at, $v0, 0xa
/* 9780 80008B80 1020000C */  beqz       $at, .L80008BB4
/* 9784 80008B84 24E74FE8 */   addiu     $a3, $a3, %lo(nameEntrySpace)
/* 9788 80008B88 00025840 */  sll        $t3, $v0, 1
/* 978C 80008B8C 00EB6021 */  addu       $t4, $a3, $t3
/* 9790 80008B90 A5800000 */  sh         $zero, ($t4)
/* 9794 80008B94 244D0001 */  addiu      $t5, $v0, 1
/* 9798 80008B98 0C001EA4 */  jal        isNameEntryMaxed
/* 979C 80008B9C A20D25E0 */   sb        $t5, 0x25e0($s0)
/* 97A0 80008BA0 0C000CD3 */  jal        SFX_Play_1
/* 97A4 80008BA4 2404010F */   addiu     $a0, $zero, 0x10f
/* 97A8 80008BA8 3C08800F */  lui        $t0, %hi(gActors)
/* 97AC 80008BAC 10000005 */  b          .L80008BC4
/* 97B0 80008BB0 2508F510 */   addiu     $t0, $t0, %lo(gActors)
.L80008BB4:
/* 97B4 80008BB4 0C000CD3 */  jal        SFX_Play_1
/* 97B8 80008BB8 24040134 */   addiu     $a0, $zero, 0x134
/* 97BC 80008BBC 3C08800F */  lui        $t0, %hi(gActors)
/* 97C0 80008BC0 2508F510 */  addiu      $t0, $t0, %lo(gActors)
.L80008BC4:
/* 97C4 80008BC4 3C03800C */  lui        $v1, %hi(gButtonPress)
/* 97C8 80008BC8 9463E4FC */  lhu        $v1, %lo(gButtonPress)($v1)
/* 97CC 80008BCC 10000031 */  b          .L80008C94
/* 97D0 80008BD0 00000000 */   nop
.L80008BD4:
/* 97D4 80008BD4 920225E0 */  lbu        $v0, 0x25e0($s0)
/* 97D8 80008BD8 3C07800C */  lui        $a3, %hi(nameEntrySpace)
/* 97DC 80008BDC 1840001F */  blez       $v0, .L80008C5C
/* 97E0 80008BE0 24E74FE8 */   addiu     $a3, $a3, %lo(nameEntrySpace)
/* 97E4 80008BE4 2443FFFF */  addiu      $v1, $v0, -1
/* 97E8 80008BE8 306E00FF */  andi       $t6, $v1, 0xff
/* 97EC 80008BEC 000EC840 */  sll        $t9, $t6, 1
/* 97F0 80008BF0 00F97821 */  addu       $t7, $a3, $t9
/* 97F4 80008BF4 A5E00000 */  sh         $zero, ($t7)
/* 97F8 80008BF8 92182448 */  lbu        $t8, 0x2448($s0)
/* 97FC 80008BFC A20E25E0 */  sb         $t6, 0x25e0($s0)
/* 9800 80008C00 31CD00FF */  andi       $t5, $t6, 0xff
/* 9804 80008C04 00185880 */  sll        $t3, $t8, 2
/* 9808 80008C08 000D7080 */  sll        $t6, $t5, 2
/* 980C 80008C0C 01785823 */  subu       $t3, $t3, $t8
/* 9810 80008C10 000B5880 */  sll        $t3, $t3, 2
/* 9814 80008C14 01CD7023 */  subu       $t6, $t6, $t5
/* 9818 80008C18 000E7080 */  sll        $t6, $t6, 2
/* 981C 80008C1C 01785821 */  addu       $t3, $t3, $t8
/* 9820 80008C20 000B5880 */  sll        $t3, $t3, 2
/* 9824 80008C24 01CD7021 */  addu       $t6, $t6, $t5
/* 9828 80008C28 000E7080 */  sll        $t6, $t6, 2
/* 982C 80008C2C 01785823 */  subu       $t3, $t3, $t8
/* 9830 80008C30 000B58C0 */  sll        $t3, $t3, 3
/* 9834 80008C34 01CD7023 */  subu       $t6, $t6, $t5
/* 9838 80008C38 000E70C0 */  sll        $t6, $t6, 3
/* 983C 80008C3C 010B6021 */  addu       $t4, $t0, $t3
/* 9840 80008C40 018EC821 */  addu       $t9, $t4, $t6
/* 9844 80008C44 AF200080 */  sw         $zero, 0x80($t9)
/* 9848 80008C48 0C000CD3 */  jal        SFX_Play_1
/* 984C 80008C4C 2404010F */   addiu     $a0, $zero, 0x10f
/* 9850 80008C50 3C08800F */  lui        $t0, %hi(gActors)
/* 9854 80008C54 10000005 */  b          .L80008C6C
/* 9858 80008C58 2508F510 */   addiu     $t0, $t0, %lo(gActors)
.L80008C5C:
/* 985C 80008C5C 0C000CD3 */  jal        SFX_Play_1
/* 9860 80008C60 24040134 */   addiu     $a0, $zero, 0x134
/* 9864 80008C64 3C08800F */  lui        $t0, %hi(gActors)
/* 9868 80008C68 2508F510 */  addiu      $t0, $t0, %lo(gActors)
.L80008C6C:
/* 986C 80008C6C 3C03800C */  lui        $v1, %hi(gButtonPress)
/* 9870 80008C70 9463E4FC */  lhu        $v1, %lo(gButtonPress)($v1)
/* 9874 80008C74 10000007 */  b          .L80008C94
/* 9878 80008C78 00000000 */   nop
.L80008C7C:
/* 987C 80008C7C 0C001CA9 */  jal        func_800072A4
/* 9880 80008C80 00000000 */   nop
/* 9884 80008C84 3C03800C */  lui        $v1, %hi(gButtonPress)
/* 9888 80008C88 3C08800F */  lui        $t0, %hi(gActors)
/* 988C 80008C8C 9463E4FC */  lhu        $v1, %lo(gButtonPress)($v1)
/* 9890 80008C90 2508F510 */  addiu      $t0, $t0, %lo(gActors)
.L80008C94:
/* 9894 80008C94 3C0F800C */  lui        $t7, %hi(gButton_B)
/* 9898 80008C98 95EFE514 */  lhu        $t7, %lo(gButton_B)($t7)
/* 989C 80008C9C 3C07800C */  lui        $a3, %hi(nameEntrySpace)
/* 98A0 80008CA0 006FC024 */  and        $t8, $v1, $t7
/* 98A4 80008CA4 13000029 */  beqz       $t8, .L80008D4C
/* 98A8 80008CA8 24E74FE8 */   addiu     $a3, $a3, %lo(nameEntrySpace)
/* 98AC 80008CAC 920225E0 */  lbu        $v0, 0x25e0($s0)
/* 98B0 80008CB0 2404010F */  addiu      $a0, $zero, 0x10f
/* 98B4 80008CB4 1840001F */  blez       $v0, .L80008D34
/* 98B8 80008CB8 2443FFFF */   addiu     $v1, $v0, -1
/* 98BC 80008CBC 306B00FF */  andi       $t3, $v1, 0xff
/* 98C0 80008CC0 000B6840 */  sll        $t5, $t3, 1
/* 98C4 80008CC4 00ED6021 */  addu       $t4, $a3, $t5
/* 98C8 80008CC8 A5800000 */  sh         $zero, ($t4)
/* 98CC 80008CCC 920E2448 */  lbu        $t6, 0x2448($s0)
/* 98D0 80008CD0 A20B25E0 */  sb         $t3, 0x25e0($s0)
/* 98D4 80008CD4 317800FF */  andi       $t8, $t3, 0xff
/* 98D8 80008CD8 000EC880 */  sll        $t9, $t6, 2
/* 98DC 80008CDC 00185880 */  sll        $t3, $t8, 2
/* 98E0 80008CE0 032EC823 */  subu       $t9, $t9, $t6
/* 98E4 80008CE4 0019C880 */  sll        $t9, $t9, 2
/* 98E8 80008CE8 01785823 */  subu       $t3, $t3, $t8
/* 98EC 80008CEC 000B5880 */  sll        $t3, $t3, 2
/* 98F0 80008CF0 032EC821 */  addu       $t9, $t9, $t6
/* 98F4 80008CF4 0019C880 */  sll        $t9, $t9, 2
/* 98F8 80008CF8 01785821 */  addu       $t3, $t3, $t8
/* 98FC 80008CFC 000B5880 */  sll        $t3, $t3, 2
/* 9900 80008D00 032EC823 */  subu       $t9, $t9, $t6
/* 9904 80008D04 0019C8C0 */  sll        $t9, $t9, 3
/* 9908 80008D08 01785823 */  subu       $t3, $t3, $t8
/* 990C 80008D0C 000B58C0 */  sll        $t3, $t3, 3
/* 9910 80008D10 01197821 */  addu       $t7, $t0, $t9
/* 9914 80008D14 01EB6821 */  addu       $t5, $t7, $t3
/* 9918 80008D18 0C000CD3 */  jal        SFX_Play_1
/* 991C 80008D1C ADA00080 */   sw        $zero, 0x80($t5)
/* 9920 80008D20 3C03800C */  lui        $v1, %hi(gButtonPress)
/* 9924 80008D24 9463E4FC */  lhu        $v1, %lo(gButtonPress)($v1)
/* 9928 80008D28 3C08800F */  lui        $t0, %hi(gActors)
/* 992C 80008D2C 10000007 */  b          .L80008D4C
/* 9930 80008D30 2508F510 */   addiu     $t0, $t0, %lo(gActors)
.L80008D34:
/* 9934 80008D34 0C000CD3 */  jal        SFX_Play_1
/* 9938 80008D38 24040134 */   addiu     $a0, $zero, 0x134
/* 993C 80008D3C 3C03800C */  lui        $v1, %hi(gButtonPress)
/* 9940 80008D40 3C08800F */  lui        $t0, %hi(gActors)
/* 9944 80008D44 9463E4FC */  lhu        $v1, %lo(gButtonPress)($v1)
/* 9948 80008D48 2508F510 */  addiu      $t0, $t0, %lo(gActors)
.L80008D4C:
/* 994C 80008D4C 3C0C800C */  lui        $t4, %hi(gButton_Start)
/* 9950 80008D50 958CE500 */  lhu        $t4, %lo(gButton_Start)($t4)
/* 9954 80008D54 00000000 */  nop
/* 9958 80008D58 006C7024 */  and        $t6, $v1, $t4
/* 995C 80008D5C 11C00005 */  beqz       $t6, .L80008D74
/* 9960 80008D60 00000000 */   nop
/* 9964 80008D64 0C001CA9 */  jal        func_800072A4
/* 9968 80008D68 00000000 */   nop
/* 996C 80008D6C 3C08800F */  lui        $t0, %hi(gActors)
/* 9970 80008D70 2508F510 */  addiu      $t0, $t0, %lo(gActors)
.L80008D74:
/* 9974 80008D74 920B2448 */  lbu        $t3, 0x2448($s0)
/* 9978 80008D78 921925E0 */  lbu        $t9, 0x25e0($s0)
/* 997C 80008D7C 000B6880 */  sll        $t5, $t3, 2
/* 9980 80008D80 01AB6823 */  subu       $t5, $t5, $t3
/* 9984 80008D84 000D6880 */  sll        $t5, $t5, 2
/* 9988 80008D88 01AB6821 */  addu       $t5, $t5, $t3
/* 998C 80008D8C 000D6880 */  sll        $t5, $t5, 2
/* 9990 80008D90 01AB6823 */  subu       $t5, $t5, $t3
/* 9994 80008D94 000D68C0 */  sll        $t5, $t5, 3
/* 9998 80008D98 0019C100 */  sll        $t8, $t9, 4
/* 999C 80008D9C 270FFFB8 */  addiu      $t7, $t8, -0x48
/* 99A0 80008DA0 010D6021 */  addu       $t4, $t0, $t5
/* 99A4 80008DA4 A58FFEF0 */  sh         $t7, -0x110($t4)
/* 99A8 80008DA8 92042448 */  lbu        $a0, 0x2448($s0)
/* 99AC 80008DAC 00000000 */  nop
/* 99B0 80008DB0 248E000A */  addiu      $t6, $a0, 0xa
/* 99B4 80008DB4 008E082A */  slt        $at, $a0, $t6
/* 99B8 80008DB8 102002DD */  beqz       $at, .L80009930
/* 99BC 80008DBC 8FBF0034 */   lw        $ra, 0x34($sp)
.L80008DC0:
/* 99C0 80008DC0 0C00170F */  jal        func_80005C3C
/* 99C4 80008DC4 A7A4003A */   sh        $a0, 0x3a($sp)
/* 99C8 80008DC8 97A4003A */  lhu        $a0, 0x3a($sp)
/* 99CC 80008DCC 92182448 */  lbu        $t8, 0x2448($s0)
/* 99D0 80008DD0 24840001 */  addiu      $a0, $a0, 1
/* 99D4 80008DD4 3099FFFF */  andi       $t9, $a0, 0xffff
/* 99D8 80008DD8 270B000A */  addiu      $t3, $t8, 0xa
/* 99DC 80008DDC 032B082A */  slt        $at, $t9, $t3
/* 99E0 80008DE0 1420FFF7 */  bnez       $at, .L80008DC0
/* 99E4 80008DE4 03202025 */   or        $a0, $t9, $zero
/* 99E8 80008DE8 100002D1 */  b          .L80009930
/* 99EC 80008DEC 8FBF0034 */   lw        $ra, 0x34($sp)
glabel L80008DF0_99F0
/* 99F0 80008DF0 0C001B7D */  jal        func_80006DF4
/* 99F4 80008DF4 24040001 */   addiu     $a0, $zero, 1
/* 99F8 80008DF8 24040001 */  addiu      $a0, $zero, 1
/* 99FC 80008DFC 0C001B32 */  jal        func_80006CC8
/* 9A00 80008E00 2405002E */   addiu     $a1, $zero, 0x2e
/* 9A04 80008E04 3C108010 */  lui        $s0, %hi(D_800FF510)
/* 9A08 80008E08 2610F510 */  addiu      $s0, $s0, %lo(D_800FF510)
/* 9A0C 80008E0C 92042448 */  lbu        $a0, 0x2448($s0)
/* 9A10 80008E10 00000000 */  nop
/* 9A14 80008E14 248D000A */  addiu      $t5, $a0, 0xa
/* 9A18 80008E18 008D082A */  slt        $at, $a0, $t5
/* 9A1C 80008E1C 1020000B */  beqz       $at, .L80008E4C
/* 9A20 80008E20 00000000 */   nop
.L80008E24:
/* 9A24 80008E24 0C00170F */  jal        func_80005C3C
/* 9A28 80008E28 A7A4003A */   sh        $a0, 0x3a($sp)
/* 9A2C 80008E2C 97A4003A */  lhu        $a0, 0x3a($sp)
/* 9A30 80008E30 920C2448 */  lbu        $t4, 0x2448($s0)
/* 9A34 80008E34 24840001 */  addiu      $a0, $a0, 1
/* 9A38 80008E38 308FFFFF */  andi       $t7, $a0, 0xffff
/* 9A3C 80008E3C 258E000A */  addiu      $t6, $t4, 0xa
/* 9A40 80008E40 01EE082A */  slt        $at, $t7, $t6
/* 9A44 80008E44 1420FFF7 */  bnez       $at, .L80008E24
/* 9A48 80008E48 01E02025 */   or        $a0, $t7, $zero
.L80008E4C:
/* 9A4C 80008E4C 3C03800C */  lui        $v1, %hi(gButtonPress)
/* 9A50 80008E50 3C19800C */  lui        $t9, %hi(gButton_A)
/* 9A54 80008E54 9739E518 */  lhu        $t9, %lo(gButton_A)($t9)
/* 9A58 80008E58 9463E4FC */  lhu        $v1, %lo(gButtonPress)($v1)
/* 9A5C 80008E5C 3C0B800C */  lui        $t3, %hi(gButton_Start)
/* 9A60 80008E60 0079C024 */  and        $t8, $v1, $t9
/* 9A64 80008E64 17000006 */  bnez       $t8, .L80008E80
/* 9A68 80008E68 00000000 */   nop
/* 9A6C 80008E6C 956BE500 */  lhu        $t3, %lo(gButton_Start)($t3)
/* 9A70 80008E70 00000000 */  nop
/* 9A74 80008E74 006B6824 */  and        $t5, $v1, $t3
/* 9A78 80008E78 11A002AD */  beqz       $t5, .L80009930
/* 9A7C 80008E7C 8FBF0034 */   lw        $ra, 0x34($sp)
.L80008E80:
/* 9A80 80008E80 0C000CD3 */  jal        SFX_Play_1
/* 9A84 80008E84 24040023 */   addiu     $a0, $zero, 0x23
/* 9A88 80008E88 920F2910 */  lbu        $t7, 0x2910($s0)
/* 9A8C 80008E8C 3C07800C */  lui        $a3, %hi(nameEntrySpace)
/* 9A90 80008E90 11E00028 */  beqz       $t7, .L80008F34
/* 9A94 80008E94 24E74FE8 */   addiu     $a3, $a3, %lo(nameEntrySpace)
/* 9A98 80008E98 920C2448 */  lbu        $t4, 0x2448($s0)
/* 9A9C 80008E9C 24040004 */  addiu      $a0, $zero, 4
/* 9AA0 80008EA0 258E001A */  addiu      $t6, $t4, 0x1a
/* 9AA4 80008EA4 29C10005 */  slti       $at, $t6, 5
/* 9AA8 80008EA8 14200011 */  bnez       $at, .L80008EF0
/* 9AAC 80008EAC 340C8FFF */   ori       $t4, $zero, 0x8fff
/* 9AB0 80008EB0 3C08800F */  lui        $t0, %hi(gActors)
/* 9AB4 80008EB4 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 9AB8 80008EB8 24030198 */  addiu      $v1, $zero, 0x198
.L80008EBC:
/* 9ABC 80008EBC 00830019 */  multu      $a0, $v1
/* 9AC0 80008EC0 24840001 */  addiu      $a0, $a0, 1
/* 9AC4 80008EC4 308BFFFF */  andi       $t3, $a0, 0xffff
/* 9AC8 80008EC8 01602025 */  or         $a0, $t3, $zero
/* 9ACC 80008ECC 0000C812 */  mflo       $t9
/* 9AD0 80008ED0 0119C021 */  addu       $t8, $t0, $t9
/* 9AD4 80008ED4 AF000080 */  sw         $zero, 0x80($t8)
/* 9AD8 80008ED8 920D2448 */  lbu        $t5, 0x2448($s0)
/* 9ADC 80008EDC 00000000 */  nop
/* 9AE0 80008EE0 25AF001A */  addiu      $t7, $t5, 0x1a
/* 9AE4 80008EE4 016F082A */  slt        $at, $t3, $t7
/* 9AE8 80008EE8 1420FFF4 */  bnez       $at, .L80008EBC
/* 9AEC 80008EEC 00000000 */   nop
.L80008EF0:
/* 9AF0 80008EF0 3C01800C */  lui        $at, %hi(D_800C5000)
/* 9AF4 80008EF4 A0205000 */  sb         $zero, %lo(D_800C5000)($at)
/* 9AF8 80008EF8 920E25E0 */  lbu        $t6, 0x25e0($s0)
/* 9AFC 80008EFC 3C03800C */  lui        $v1, %hi(D_800C5004)
/* 9B00 80008F00 000EC840 */  sll        $t9, $t6, 1
/* 9B04 80008F04 00F9C021 */  addu       $t8, $a3, $t9
/* 9B08 80008F08 24635004 */  addiu      $v1, $v1, %lo(D_800C5004)
/* 9B0C 80008F0C A70C0000 */  sh         $t4, ($t8)
/* 9B10 80008F10 A0600000 */  sb         $zero, ($v1)
/* 9B14 80008F14 0C00181F */  jal        func_8000607C
/* 9B18 80008F18 24040001 */   addiu     $a0, $zero, 1
/* 9B1C 80008F1C 3C0B800C */  lui        $t3, %hi(gGameSubState)
/* 9B20 80008F20 956BE4F4 */  lhu        $t3, %lo(gGameSubState)($t3)
/* 9B24 80008F24 3C01800C */  lui        $at, %hi(gGameSubState)
/* 9B28 80008F28 256D0001 */  addiu      $t5, $t3, 1
/* 9B2C 80008F2C 1000027F */  b          L8000992C_A52C
/* 9B30 80008F30 A42DE4F4 */   sh        $t5, %lo(gGameSubState)($at)
.L80008F34:
/* 9B34 80008F34 92022448 */  lbu        $v0, 0x2448($s0)
/* 9B38 80008F38 3C08800F */  lui        $t0, 0x800f
/* 9B3C 80008F3C 2444000A */  addiu      $a0, $v0, 0xa
/* 9B40 80008F40 308FFFFF */  andi       $t7, $a0, 0xffff
/* 9B44 80008F44 244E001A */  addiu      $t6, $v0, 0x1a
/* 9B48 80008F48 01EE082A */  slt        $at, $t7, $t6
/* 9B4C 80008F4C 10200010 */  beqz       $at, .L80008F90
/* 9B50 80008F50 01E02025 */   or        $a0, $t7, $zero
/* 9B54 80008F54 2508F510 */  addiu      $t0, $t0, -0xaf0
/* 9B58 80008F58 24030198 */  addiu      $v1, $zero, 0x198
.L80008F5C:
/* 9B5C 80008F5C 00830019 */  multu      $a0, $v1
/* 9B60 80008F60 24840001 */  addiu      $a0, $a0, 1
/* 9B64 80008F64 3098FFFF */  andi       $t8, $a0, 0xffff
/* 9B68 80008F68 03002025 */  or         $a0, $t8, $zero
/* 9B6C 80008F6C 0000C812 */  mflo       $t9
/* 9B70 80008F70 01196021 */  addu       $t4, $t0, $t9
/* 9B74 80008F74 AD800080 */  sw         $zero, 0x80($t4)
/* 9B78 80008F78 920B2448 */  lbu        $t3, 0x2448($s0)
/* 9B7C 80008F7C 00000000 */  nop
/* 9B80 80008F80 256D001A */  addiu      $t5, $t3, 0x1a
/* 9B84 80008F84 030D082A */  slt        $at, $t8, $t5
/* 9B88 80008F88 1420FFF4 */  bnez       $at, .L80008F5C
/* 9B8C 80008F8C 00000000 */   nop
.L80008F90:
/* 9B90 80008F90 3C0F800C */  lui        $t7, %hi(gGameSubState)
/* 9B94 80008F94 95EFE4F4 */  lhu        $t7, %lo(gGameSubState)($t7)
/* 9B98 80008F98 3C01800C */  lui        $at, %hi(gGameSubState)
/* 9B9C 80008F9C 25EEFFFF */  addiu      $t6, $t7, -1
/* 9BA0 80008FA0 10000262 */  b          L8000992C_A52C
/* 9BA4 80008FA4 A42EE4F4 */   sh        $t6, %lo(gGameSubState)($at)
glabel L80008FA8_9BA8
/* 9BA8 80008FA8 0C001B7D */  jal        func_80006DF4
/* 9BAC 80008FAC 24040001 */   addiu     $a0, $zero, 1
/* 9BB0 80008FB0 3C03800C */  lui        $v1, %hi(gButtonPress)
/* 9BB4 80008FB4 3C19800C */  lui        $t9, %hi(gButton_DLeft)
/* 9BB8 80008FB8 9739E50C */  lhu        $t9, %lo(gButton_DLeft)($t9)
/* 9BBC 80008FBC 9463E4FC */  lhu        $v1, %lo(gButtonPress)($v1)
/* 9BC0 80008FC0 3C18800C */  lui        $t8, %hi(D_800C5000)
/* 9BC4 80008FC4 00796024 */  and        $t4, $v1, $t9
/* 9BC8 80008FC8 1180000B */  beqz       $t4, .L80008FF8
/* 9BCC 80008FCC 00000000 */   nop
/* 9BD0 80008FD0 93185000 */  lbu        $t8, %lo(D_800C5000)($t8)
/* 9BD4 80008FD4 24010001 */  addiu      $at, $zero, 1
/* 9BD8 80008FD8 17010007 */  bne        $t8, $at, .L80008FF8
/* 9BDC 80008FDC 00000000 */   nop
/* 9BE0 80008FE0 0C000CE0 */  jal        SFX_Play_2
/* 9BE4 80008FE4 24040022 */   addiu     $a0, $zero, 0x22
/* 9BE8 80008FE8 3C03800C */  lui        $v1, %hi(gButtonPress)
/* 9BEC 80008FEC 3C01800C */  lui        $at, %hi(D_800C5000)
/* 9BF0 80008FF0 9463E4FC */  lhu        $v1, %lo(gButtonPress)($v1)
/* 9BF4 80008FF4 A0205000 */  sb         $zero, %lo(D_800C5000)($at)
.L80008FF8:
/* 9BF8 80008FF8 3C0B800C */  lui        $t3, %hi(gButton_DRight)
/* 9BFC 80008FFC 956BE510 */  lhu        $t3, %lo(gButton_DRight)($t3)
/* 9C00 80009000 3C04800C */  lui        $a0, %hi(D_800C5000)
/* 9C04 80009004 90845000 */  lbu        $a0, %lo(D_800C5000)($a0)
/* 9C08 80009008 006B6824 */  and        $t5, $v1, $t3
/* 9C0C 8000900C 11A0000B */  beqz       $t5, .L8000903C
/* 9C10 80009010 00000000 */   nop
/* 9C14 80009014 14800009 */  bnez       $a0, .L8000903C
/* 9C18 80009018 00000000 */   nop
/* 9C1C 8000901C 0C000CE0 */  jal        SFX_Play_2
/* 9C20 80009020 24040022 */   addiu     $a0, $zero, 0x22
/* 9C24 80009024 3C03800C */  lui        $v1, %hi(gButtonPress)
/* 9C28 80009028 240F0001 */  addiu      $t7, $zero, 1
/* 9C2C 8000902C 3C01800C */  lui        $at, %hi(D_800C5000)
/* 9C30 80009030 9463E4FC */  lhu        $v1, %lo(gButtonPress)($v1)
/* 9C34 80009034 A02F5000 */  sb         $t7, %lo(D_800C5000)($at)
/* 9C38 80009038 24040001 */  addiu      $a0, $zero, 1
.L8000903C:
/* 9C3C 8000903C 10800006 */  beqz       $a0, .L80009058
/* 9C40 80009040 3C0E800C */   lui       $t6, 0x800c
/* 9C44 80009044 3C01800F */  lui        $at, %hi(gActors+0x220)
/* 9C48 80009048 A420F730 */  sh         $zero, %lo(gActors+0x220)($at)
/* 9C4C 8000904C 3C01800F */  lui        $at, %hi(D_800EF8C8)
/* 9C50 80009050 10000006 */  b          .L8000906C
/* 9C54 80009054 A420F8C8 */   sh        $zero, %lo(D_800EF8C8)($at)
.L80009058:
/* 9C58 80009058 2402FFE0 */  addiu      $v0, $zero, -0x20
/* 9C5C 8000905C 3C01800F */  lui        $at, %hi(gActors+0x220)
/* 9C60 80009060 A422F730 */  sh         $v0, %lo(gActors+0x220)($at)
/* 9C64 80009064 3C01800F */  lui        $at, %hi(D_800EF8C8)
/* 9C68 80009068 A422F8C8 */  sh         $v0, %lo(D_800EF8C8)($at)
.L8000906C:
/* 9C6C 8000906C 95CEE500 */  lhu        $t6, -0x1b00($t6)
/* 9C70 80009070 3C0C800C */  lui        $t4, %hi(gButton_A)
/* 9C74 80009074 006EC824 */  and        $t9, $v1, $t6
/* 9C78 80009078 17200006 */  bnez       $t9, .L80009094
/* 9C7C 8000907C 00000000 */   nop
/* 9C80 80009080 958CE518 */  lhu        $t4, %lo(gButton_A)($t4)
/* 9C84 80009084 00000000 */  nop
/* 9C88 80009088 006CC024 */  and        $t8, $v1, $t4
/* 9C8C 8000908C 13000228 */  beqz       $t8, .L80009930
/* 9C90 80009090 8FBF0034 */   lw        $ra, 0x34($sp)
.L80009094:
/* 9C94 80009094 0C000CD3 */  jal        SFX_Play_1
/* 9C98 80009098 24040023 */   addiu     $a0, $zero, 0x23
/* 9C9C 8000909C 3C0B800C */  lui        $t3, %hi(D_800C5000)
/* 9CA0 800090A0 916B5000 */  lbu        $t3, %lo(D_800C5000)($t3)
/* 9CA4 800090A4 3C01800F */  lui        $at, 0x800f
/* 9CA8 800090A8 11600013 */  beqz       $t3, .L800090F8
/* 9CAC 800090AC 24040004 */   addiu     $a0, $zero, 4
/* 9CB0 800090B0 3C108010 */  lui        $s0, %hi(D_800FF510)
/* 9CB4 800090B4 2610F510 */  addiu      $s0, $s0, %lo(D_800FF510)
/* 9CB8 800090B8 920F2448 */  lbu        $t7, 0x2448($s0)
/* 9CBC 800090BC 24020198 */  addiu      $v0, $zero, 0x198
/* 9CC0 800090C0 01E20019 */  multu      $t7, $v0
/* 9CC4 800090C4 3C08800F */  lui        $t0, %hi(gActors)
/* 9CC8 800090C8 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 9CCC 800090CC 240DFFE0 */  addiu      $t5, $zero, -0x20
/* 9CD0 800090D0 00007012 */  mflo       $t6
/* 9CD4 800090D4 010EC821 */  addu       $t9, $t0, $t6
/* 9CD8 800090D8 A72DFA28 */  sh         $t5, -0x5d8($t9)
/* 9CDC 800090DC 920C2448 */  lbu        $t4, 0x2448($s0)
/* 9CE0 800090E0 00000000 */  nop
/* 9CE4 800090E4 01820019 */  multu      $t4, $v0
/* 9CE8 800090E8 0000C012 */  mflo       $t8
/* 9CEC 800090EC 01185821 */  addu       $t3, $t0, $t8
/* 9CF0 800090F0 10000012 */  b          .L8000913C
/* 9CF4 800090F4 AD60F888 */   sw        $zero, -0x778($t3)
.L800090F8:
/* 9CF8 800090F8 3C108010 */  lui        $s0, %hi(D_800FF510)
/* 9CFC 800090FC 2610F510 */  addiu      $s0, $s0, %lo(D_800FF510)
/* 9D00 80009100 920E2448 */  lbu        $t6, 0x2448($s0)
/* 9D04 80009104 24020198 */  addiu      $v0, $zero, 0x198
/* 9D08 80009108 01C20019 */  multu      $t6, $v0
/* 9D0C 8000910C 3C08800F */  lui        $t0, %hi(gActors)
/* 9D10 80009110 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 9D14 80009114 240FFFE0 */  addiu      $t7, $zero, -0x20
/* 9D18 80009118 00006812 */  mflo       $t5
/* 9D1C 8000911C 010DC821 */  addu       $t9, $t0, $t5
/* 9D20 80009120 A72FF890 */  sh         $t7, -0x770($t9)
/* 9D24 80009124 920C2448 */  lbu        $t4, 0x2448($s0)
/* 9D28 80009128 00000000 */  nop
/* 9D2C 8000912C 01820019 */  multu      $t4, $v0
/* 9D30 80009130 0000C012 */  mflo       $t8
/* 9D34 80009134 01185821 */  addu       $t3, $t0, $t8
/* 9D38 80009138 AD60FA20 */  sw         $zero, -0x5e0($t3)
.L8000913C:
/* 9D3C 8000913C A2002AA8 */  sb         $zero, 0x2aa8($s0)
/* 9D40 80009140 240EFFD4 */  addiu      $t6, $zero, -0x2c
/* 9D44 80009144 A42EF730 */  sh         $t6, -0x8d0($at)
/* 9D48 80009148 3C01800F */  lui        $at, %hi(D_800EF8C8)
/* 9D4C 8000914C 240DFFD4 */  addiu      $t5, $zero, -0x2c
/* 9D50 80009150 A42DF8C8 */  sh         $t5, %lo(D_800EF8C8)($at)
/* 9D54 80009154 3C01800F */  lui        $at, %hi(gActors+0x224)
/* 9D58 80009158 240FFFF0 */  addiu      $t7, $zero, -0x10
/* 9D5C 8000915C A42FF734 */  sh         $t7, %lo(gActors+0x224)($at)
/* 9D60 80009160 3C01800F */  lui        $at, %hi(D_800EF8CC)
/* 9D64 80009164 2419FFF0 */  addiu      $t9, $zero, -0x10
/* 9D68 80009168 3C05800C */  lui        $a1, 0x800c
/* 9D6C 8000916C 240C0080 */  addiu      $t4, $zero, 0x80
/* 9D70 80009170 24180080 */  addiu      $t8, $zero, 0x80
/* 9D74 80009174 A439F8CC */  sh         $t9, %lo(D_800EF8CC)($at)
/* 9D78 80009178 AFB8001C */  sw         $t8, 0x1c($sp)
/* 9D7C 8000917C AFAC0014 */  sw         $t4, 0x14($sp)
/* 9D80 80009180 24A55220 */  addiu      $a1, $a1, 0x5220
/* 9D84 80009184 3406FFD0 */  ori        $a2, $zero, 0xffd0
/* 9D88 80009188 24070058 */  addiu      $a3, $zero, 0x58
/* 9D8C 8000918C AFA00010 */  sw         $zero, 0x10($sp)
/* 9D90 80009190 0C009F10 */  jal        func_80027C40
/* 9D94 80009194 AFA00018 */   sw        $zero, 0x18($sp)
/* 9D98 80009198 3C0B800C */  lui        $t3, %hi(gGameSubState)
/* 9D9C 8000919C 956BE4F4 */  lhu        $t3, %lo(gGameSubState)($t3)
/* 9DA0 800091A0 3C01800C */  lui        $at, %hi(gGameSubState)
/* 9DA4 800091A4 256E0001 */  addiu      $t6, $t3, 1
/* 9DA8 800091A8 100001E0 */  b          L8000992C_A52C
/* 9DAC 800091AC A42EE4F4 */   sh        $t6, %lo(gGameSubState)($at)
glabel L800091B0_9DB0
/* 9DB0 800091B0 0C001B7D */  jal        func_80006DF4
/* 9DB4 800091B4 24040001 */   addiu     $a0, $zero, 1
/* 9DB8 800091B8 3C03800C */  lui        $v1, %hi(gButtonPress)
/* 9DBC 800091BC 3C0D800C */  lui        $t5, %hi(gButton_DLeft)
/* 9DC0 800091C0 95ADE50C */  lhu        $t5, %lo(gButton_DLeft)($t5)
/* 9DC4 800091C4 9463E4FC */  lhu        $v1, %lo(gButtonPress)($v1)
/* 9DC8 800091C8 3C19800C */  lui        $t9, %hi(gButton_DRight)
/* 9DCC 800091CC 006D7824 */  and        $t7, $v1, $t5
/* 9DD0 800091D0 15E00006 */  bnez       $t7, .L800091EC
/* 9DD4 800091D4 00000000 */   nop
/* 9DD8 800091D8 9739E510 */  lhu        $t9, %lo(gButton_DRight)($t9)
/* 9DDC 800091DC 00000000 */  nop
/* 9DE0 800091E0 00796024 */  and        $t4, $v1, $t9
/* 9DE4 800091E4 11800009 */  beqz       $t4, .L8000920C
/* 9DE8 800091E8 00000000 */   nop
.L800091EC:
/* 9DEC 800091EC 0C000CE0 */  jal        SFX_Play_2
/* 9DF0 800091F0 24040022 */   addiu     $a0, $zero, 0x22
/* 9DF4 800091F4 3C108010 */  lui        $s0, %hi(D_800FF510)
/* 9DF8 800091F8 2610F510 */  addiu      $s0, $s0, %lo(D_800FF510)
/* 9DFC 800091FC 92182AA8 */  lbu        $t8, 0x2aa8($s0)
/* 9E00 80009200 00000000 */  nop
/* 9E04 80009204 3B0B0001 */  xori       $t3, $t8, 1
/* 9E08 80009208 A20B2AA8 */  sb         $t3, 0x2aa8($s0)
.L8000920C:
/* 9E0C 8000920C 3C04800C */  lui        $a0, %hi(gButton_DDown)
/* 9E10 80009210 3C108010 */  lui        $s0, %hi(D_800FF510)
/* 9E14 80009214 9484E508 */  lhu        $a0, %lo(gButton_DDown)($a0)
/* 9E18 80009218 3C058010 */  lui        $a1, %hi(D_80101490)
/* 9E1C 8000921C 2610F510 */  addiu      $s0, $s0, %lo(D_800FF510)
/* 9E20 80009220 0C005DBE */  jal        func_800176F8
/* 9E24 80009224 24A51490 */   addiu     $a1, $a1, %lo(D_80101490)
/* 9E28 80009228 10400020 */  beqz       $v0, .L800092AC
/* 9E2C 8000922C 00000000 */   nop
/* 9E30 80009230 0C000CE0 */  jal        SFX_Play_2
/* 9E34 80009234 24040022 */   addiu     $a0, $zero, 0x22
/* 9E38 80009238 920E2AA8 */  lbu        $t6, 0x2aa8($s0)
/* 9E3C 8000923C 3C03800C */  lui        $v1, %hi(D_800C5004)
/* 9E40 80009240 11C0000F */  beqz       $t6, .L80009280
/* 9E44 80009244 24635004 */   addiu     $v1, $v1, %lo(D_800C5004)
/* 9E48 80009248 3C03800C */  lui        $v1, %hi(D_800C5004)
/* 9E4C 8000924C 24635004 */  addiu      $v1, $v1, %lo(D_800C5004)
/* 9E50 80009250 90620000 */  lbu        $v0, ($v1)
/* 9E54 80009254 2401000A */  addiu      $at, $zero, 0xa
/* 9E58 80009258 0041001A */  div        $zero, $v0, $at
/* 9E5C 8000925C 244F0009 */  addiu      $t7, $v0, 9
/* 9E60 80009260 2459FFFF */  addiu      $t9, $v0, -1
/* 9E64 80009264 00006810 */  mfhi       $t5
/* 9E68 80009268 15A00003 */  bnez       $t5, .L80009278
/* 9E6C 8000926C 00000000 */   nop
/* 9E70 80009270 1000000E */  b          .L800092AC
/* 9E74 80009274 A06F0000 */   sb        $t7, ($v1)
.L80009278:
/* 9E78 80009278 1000000C */  b          .L800092AC
/* 9E7C 8000927C A0790000 */   sb        $t9, ($v1)
.L80009280:
/* 9E80 80009280 90620000 */  lbu        $v0, ($v1)
/* 9E84 80009284 2401000A */  addiu      $at, $zero, 0xa
/* 9E88 80009288 0041001A */  div        $zero, $v0, $at
/* 9E8C 8000928C 2458005A */  addiu      $t8, $v0, 0x5a
/* 9E90 80009290 244BFFF6 */  addiu      $t3, $v0, -0xa
/* 9E94 80009294 00006012 */  mflo       $t4
/* 9E98 80009298 15800003 */  bnez       $t4, .L800092A8
/* 9E9C 8000929C 00000000 */   nop
/* 9EA0 800092A0 10000002 */  b          .L800092AC
/* 9EA4 800092A4 A0780000 */   sb        $t8, ($v1)
.L800092A8:
/* 9EA8 800092A8 A06B0000 */  sb         $t3, ($v1)
.L800092AC:
/* 9EAC 800092AC 3C04800C */  lui        $a0, %hi(gButton_DUp)
/* 9EB0 800092B0 9484E504 */  lhu        $a0, %lo(gButton_DUp)($a0)
/* 9EB4 800092B4 3C058010 */  lui        $a1, %hi(D_801012F8)
/* 9EB8 800092B8 0C005DBE */  jal        func_800176F8
/* 9EBC 800092BC 24A512F8 */   addiu     $a1, $a1, %lo(D_801012F8)
/* 9EC0 800092C0 3C03800C */  lui        $v1, %hi(D_800C5004)
/* 9EC4 800092C4 10400020 */  beqz       $v0, .L80009348
/* 9EC8 800092C8 24635004 */   addiu     $v1, $v1, %lo(D_800C5004)
/* 9ECC 800092CC 0C000CE0 */  jal        SFX_Play_2
/* 9ED0 800092D0 24040022 */   addiu     $a0, $zero, 0x22
/* 9ED4 800092D4 920E2AA8 */  lbu        $t6, 0x2aa8($s0)
/* 9ED8 800092D8 3C03800C */  lui        $v1, %hi(D_800C5004)
/* 9EDC 800092DC 11C0000E */  beqz       $t6, .L80009318
/* 9EE0 800092E0 24635004 */   addiu     $v1, $v1, %lo(D_800C5004)
/* 9EE4 800092E4 90620000 */  lbu        $v0, ($v1)
/* 9EE8 800092E8 2401000A */  addiu      $at, $zero, 0xa
/* 9EEC 800092EC 0041001A */  div        $zero, $v0, $at
/* 9EF0 800092F0 24010009 */  addiu      $at, $zero, 9
/* 9EF4 800092F4 244FFFF7 */  addiu      $t7, $v0, -9
/* 9EF8 800092F8 24590001 */  addiu      $t9, $v0, 1
/* 9EFC 800092FC 00006810 */  mfhi       $t5
/* 9F00 80009300 15A10003 */  bne        $t5, $at, .L80009310
/* 9F04 80009304 00000000 */   nop
/* 9F08 80009308 1000000F */  b          .L80009348
/* 9F0C 8000930C A06F0000 */   sb        $t7, ($v1)
.L80009310:
/* 9F10 80009310 1000000D */  b          .L80009348
/* 9F14 80009314 A0790000 */   sb        $t9, ($v1)
.L80009318:
/* 9F18 80009318 90620000 */  lbu        $v0, ($v1)
/* 9F1C 8000931C 2401000A */  addiu      $at, $zero, 0xa
/* 9F20 80009320 0041001A */  div        $zero, $v0, $at
/* 9F24 80009324 24010009 */  addiu      $at, $zero, 9
/* 9F28 80009328 2458FFA6 */  addiu      $t8, $v0, -0x5a
/* 9F2C 8000932C 244B000A */  addiu      $t3, $v0, 0xa
/* 9F30 80009330 00006012 */  mflo       $t4
/* 9F34 80009334 15810003 */  bne        $t4, $at, .L80009344
/* 9F38 80009338 00000000 */   nop
/* 9F3C 8000933C 10000002 */  b          .L80009348
/* 9F40 80009340 A0780000 */   sb        $t8, ($v1)
.L80009344:
/* 9F44 80009344 A06B0000 */  sb         $t3, ($v1)
.L80009348:
/* 9F48 80009348 3C0E800D */  lui        $t6, %hi(D_800D17A0)
/* 9F4C 8000934C 25CE17A0 */  addiu      $t6, $t6, %lo(D_800D17A0)
/* 9F50 80009350 92042448 */  lbu        $a0, 0x2448($s0)
/* 9F54 80009354 90650000 */  lbu        $a1, ($v1)
/* 9F58 80009358 AFAE0014 */  sw         $t6, 0x14($sp)
/* 9F5C 8000935C 3406FFE0 */  ori        $a2, $zero, 0xffe0
/* 9F60 80009360 3407FFF0 */  ori        $a3, $zero, 0xfff0
/* 9F64 80009364 0C009E00 */  jal        func_80027800
/* 9F68 80009368 AFA00010 */   sw        $zero, 0x10($sp)
/* 9F6C 8000936C 920D2AA8 */  lbu        $t5, 0x2aa8($s0)
/* 9F70 80009370 3C08800F */  lui        $t0, %hi(gActors)
/* 9F74 80009374 11A00027 */  beqz       $t5, .L80009414
/* 9F78 80009378 00000000 */   nop
/* 9F7C 8000937C 920F2448 */  lbu        $t7, 0x2448($s0)
/* 9F80 80009380 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 9F84 80009384 000FC880 */  sll        $t9, $t7, 2
/* 9F88 80009388 032FC823 */  subu       $t9, $t9, $t7
/* 9F8C 8000938C 0019C880 */  sll        $t9, $t9, 2
/* 9F90 80009390 032FC821 */  addu       $t9, $t9, $t7
/* 9F94 80009394 0019C880 */  sll        $t9, $t9, 2
/* 9F98 80009398 032FC823 */  subu       $t9, $t9, $t7
/* 9F9C 8000939C 0019C8C0 */  sll        $t9, $t9, 3
/* 9FA0 800093A0 01191821 */  addu       $v1, $t0, $t9
/* 9FA4 800093A4 8C6C0080 */  lw         $t4, 0x80($v1)
/* 9FA8 800093A8 3C0B800C */  lui        $t3, %hi(D_800BE4E4)
/* 9FAC 800093AC 35980001 */  ori        $t8, $t4, 1
/* 9FB0 800093B0 AC780080 */  sw         $t8, 0x80($v1)
/* 9FB4 800093B4 956BE4E4 */  lhu        $t3, %lo(D_800BE4E4)($t3)
/* 9FB8 800093B8 00000000 */  nop
/* 9FBC 800093BC 05610004 */  bgez       $t3, .L800093D0
/* 9FC0 800093C0 316E0001 */   andi      $t6, $t3, 1
/* 9FC4 800093C4 11C00002 */  beqz       $t6, .L800093D0
/* 9FC8 800093C8 00000000 */   nop
/* 9FCC 800093CC 25CEFFFE */  addiu      $t6, $t6, -2
.L800093D0:
/* 9FD0 800093D0 11C00038 */  beqz       $t6, .L800094B4
/* 9FD4 800093D4 00000000 */   nop
/* 9FD8 800093D8 920D2448 */  lbu        $t5, 0x2448($s0)
/* 9FDC 800093DC 2401FFFE */  addiu      $at, $zero, -2
/* 9FE0 800093E0 000D7880 */  sll        $t7, $t5, 2
/* 9FE4 800093E4 01ED7823 */  subu       $t7, $t7, $t5
/* 9FE8 800093E8 000F7880 */  sll        $t7, $t7, 2
/* 9FEC 800093EC 01ED7821 */  addu       $t7, $t7, $t5
/* 9FF0 800093F0 000F7880 */  sll        $t7, $t7, 2
/* 9FF4 800093F4 01ED7823 */  subu       $t7, $t7, $t5
/* 9FF8 800093F8 000F78C0 */  sll        $t7, $t7, 3
/* 9FFC 800093FC 010F1821 */  addu       $v1, $t0, $t7
/* A000 80009400 8C790218 */  lw         $t9, 0x218($v1)
/* A004 80009404 00000000 */  nop
/* A008 80009408 03216024 */  and        $t4, $t9, $at
/* A00C 8000940C 10000029 */  b          .L800094B4
/* A010 80009410 AC6C0218 */   sw        $t4, 0x218($v1)
.L80009414:
/* A014 80009414 3C18800C */  lui        $t8, %hi(D_800BE4E4)
/* A018 80009418 9718E4E4 */  lhu        $t8, %lo(D_800BE4E4)($t8)
/* A01C 8000941C 00000000 */  nop
/* A020 80009420 07010004 */  bgez       $t8, .L80009434
/* A024 80009424 330B0001 */   andi      $t3, $t8, 1
/* A028 80009428 11600002 */  beqz       $t3, .L80009434
/* A02C 8000942C 00000000 */   nop
/* A030 80009430 256BFFFE */  addiu      $t3, $t3, -2
.L80009434:
/* A034 80009434 11600010 */  beqz       $t3, .L80009478
/* A038 80009438 00000000 */   nop
/* A03C 8000943C 920E2448 */  lbu        $t6, 0x2448($s0)
/* A040 80009440 3C08800F */  lui        $t0, 0x800f
/* A044 80009444 000E6880 */  sll        $t5, $t6, 2
/* A048 80009448 01AE6823 */  subu       $t5, $t5, $t6
/* A04C 8000944C 000D6880 */  sll        $t5, $t5, 2
/* A050 80009450 01AE6821 */  addu       $t5, $t5, $t6
/* A054 80009454 000D6880 */  sll        $t5, $t5, 2
/* A058 80009458 01AE6823 */  subu       $t5, $t5, $t6
/* A05C 8000945C 000D68C0 */  sll        $t5, $t5, 3
/* A060 80009460 2508F510 */  addiu      $t0, $t0, -0xaf0
/* A064 80009464 010D1821 */  addu       $v1, $t0, $t5
/* A068 80009468 8C6F0080 */  lw         $t7, 0x80($v1)
/* A06C 8000946C 2401FFFE */  addiu      $at, $zero, -2
/* A070 80009470 01E1C824 */  and        $t9, $t7, $at
/* A074 80009474 AC790080 */  sw         $t9, 0x80($v1)
.L80009478:
/* A078 80009478 920C2448 */  lbu        $t4, 0x2448($s0)
/* A07C 8000947C 3C08800F */  lui        $t0, 0x800f
/* A080 80009480 000CC080 */  sll        $t8, $t4, 2
/* A084 80009484 030CC023 */  subu       $t8, $t8, $t4
/* A088 80009488 0018C080 */  sll        $t8, $t8, 2
/* A08C 8000948C 030CC021 */  addu       $t8, $t8, $t4
/* A090 80009490 0018C080 */  sll        $t8, $t8, 2
/* A094 80009494 030CC023 */  subu       $t8, $t8, $t4
/* A098 80009498 2508F510 */  addiu      $t0, $t0, -0xaf0
/* A09C 8000949C 0018C0C0 */  sll        $t8, $t8, 3
/* A0A0 800094A0 01181821 */  addu       $v1, $t0, $t8
/* A0A4 800094A4 8C6B0218 */  lw         $t3, 0x218($v1)
/* A0A8 800094A8 00000000 */  nop
/* A0AC 800094AC 356E0001 */  ori        $t6, $t3, 1
/* A0B0 800094B0 AC6E0218 */  sw         $t6, 0x218($v1)
.L800094B4:
/* A0B4 800094B4 3C03800C */  lui        $v1, %hi(gButtonPress)
/* A0B8 800094B8 3C0D800C */  lui        $t5, %hi(gButton_Start)
/* A0BC 800094BC 95ADE500 */  lhu        $t5, %lo(gButton_Start)($t5)
/* A0C0 800094C0 9463E4FC */  lhu        $v1, %lo(gButtonPress)($v1)
/* A0C4 800094C4 3C19800C */  lui        $t9, %hi(gButton_A)
/* A0C8 800094C8 006D7824 */  and        $t7, $v1, $t5
/* A0CC 800094CC 15E00006 */  bnez       $t7, .L800094E8
/* A0D0 800094D0 00000000 */   nop
/* A0D4 800094D4 9739E518 */  lhu        $t9, %lo(gButton_A)($t9)
/* A0D8 800094D8 00000000 */  nop
/* A0DC 800094DC 00796024 */  and        $t4, $v1, $t9
/* A0E0 800094E0 11800113 */  beqz       $t4, .L80009930
/* A0E4 800094E4 8FBF0034 */   lw        $ra, 0x34($sp)
.L800094E8:
/* A0E8 800094E8 0C000CD3 */  jal        SFX_Play_1
/* A0EC 800094EC 24040023 */   addiu     $a0, $zero, 0x23
/* A0F0 800094F0 92182448 */  lbu        $t8, 0x2448($s0)
/* A0F4 800094F4 240A0198 */  addiu      $t2, $zero, 0x198
/* A0F8 800094F8 030A0019 */  multu      $t8, $t2
/* A0FC 800094FC 3C08800F */  lui        $t0, %hi(gActors)
/* A100 80009500 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* A104 80009504 3C05800C */  lui        $a1, %hi(D_800C526C)
/* A108 80009508 24A5526C */  addiu      $a1, $a1, %lo(D_800C526C)
/* A10C 8000950C 3406FFA0 */  ori        $a2, $zero, 0xffa0
/* A110 80009510 3407FFB0 */  ori        $a3, $zero, 0xffb0
/* A114 80009514 AFA00010 */  sw         $zero, 0x10($sp)
/* A118 80009518 00005812 */  mflo       $t3
/* A11C 8000951C 010B1821 */  addu       $v1, $t0, $t3
/* A120 80009520 8C6E0080 */  lw         $t6, 0x80($v1)
/* A124 80009524 00000000 */  nop
/* A128 80009528 35CD0001 */  ori        $t5, $t6, 1
/* A12C 8000952C AC6D0080 */  sw         $t5, 0x80($v1)
/* A130 80009530 920F2448 */  lbu        $t7, 0x2448($s0)
/* A134 80009534 00000000 */  nop
/* A138 80009538 01EA0019 */  multu      $t7, $t2
/* A13C 8000953C 0000C812 */  mflo       $t9
/* A140 80009540 01191821 */  addu       $v1, $t0, $t9
/* A144 80009544 8C6C0218 */  lw         $t4, 0x218($v1)
/* A148 80009548 2419FFB0 */  addiu      $t9, $zero, -0x50
/* A14C 8000954C 35980001 */  ori        $t8, $t4, 1
/* A150 80009550 AC780218 */  sw         $t8, 0x218($v1)
/* A154 80009554 8D0B0218 */  lw         $t3, 0x218($t0)
/* A158 80009558 8D0D03B0 */  lw         $t5, 0x3b0($t0)
/* A15C 8000955C A51903BC */  sh         $t9, 0x3bc($t0)
/* A160 80009560 850C03BC */  lh         $t4, 0x3bc($t0)
/* A164 80009564 356E0001 */  ori        $t6, $t3, 1
/* A168 80009568 AD0E0218 */  sw         $t6, 0x218($t0)
/* A16C 8000956C 35AF0001 */  ori        $t7, $t5, 1
/* A170 80009570 AD0F03B0 */  sw         $t7, 0x3b0($t0)
/* A174 80009574 A50C0224 */  sh         $t4, 0x224($t0)
/* A178 80009578 920B2448 */  lbu        $t3, 0x2448($s0)
/* A17C 8000957C 24180001 */  addiu      $t8, $zero, 1
/* A180 80009580 A2182910 */  sb         $t8, 0x2910($s0)
/* A184 80009584 240E002E */  addiu      $t6, $zero, 0x2e
/* A188 80009588 A50E03B8 */  sh         $t6, 0x3b8($t0)
/* A18C 8000958C 850D03B8 */  lh         $t5, 0x3b8($t0)
/* A190 80009590 25640004 */  addiu      $a0, $t3, 4
/* A194 80009594 308FFFFF */  andi       $t7, $a0, 0xffff
/* A198 80009598 01E02025 */  or         $a0, $t7, $zero
/* A19C 8000959C 0C009ECA */  jal        func_80027B28
/* A1A0 800095A0 A50D0220 */   sh        $t5, 0x220($t0)
/* A1A4 800095A4 3C19800C */  lui        $t9, %hi(gGameSubState)
/* A1A8 800095A8 9739E4F4 */  lhu        $t9, %lo(gGameSubState)($t9)
/* A1AC 800095AC 3C01800C */  lui        $at, %hi(gGameSubState)
/* A1B0 800095B0 272C0001 */  addiu      $t4, $t9, 1
/* A1B4 800095B4 100000DD */  b          L8000992C_A52C
/* A1B8 800095B8 A42CE4F4 */   sh        $t4, %lo(gGameSubState)($at)
glabel L800095BC_A1BC
/* A1BC 800095BC 0C001B7D */  jal        func_80006DF4
/* A1C0 800095C0 24040001 */   addiu     $a0, $zero, 1
/* A1C4 800095C4 24040001 */  addiu      $a0, $zero, 1
/* A1C8 800095C8 0C001B32 */  jal        func_80006CC8
/* A1CC 800095CC 2405002E */   addiu     $a1, $zero, 0x2e
/* A1D0 800095D0 3C03800C */  lui        $v1, %hi(gButtonPress)
/* A1D4 800095D4 3C18800C */  lui        $t8, %hi(gButton_A)
/* A1D8 800095D8 9718E518 */  lhu        $t8, %lo(gButton_A)($t8)
/* A1DC 800095DC 9463E4FC */  lhu        $v1, %lo(gButtonPress)($v1)
/* A1E0 800095E0 3C0E800C */  lui        $t6, %hi(gButton_Start)
/* A1E4 800095E4 00785824 */  and        $t3, $v1, $t8
/* A1E8 800095E8 15600005 */  bnez       $t3, .L80009600
/* A1EC 800095EC 3C108010 */   lui       $s0, %hi(D_800FF510)
/* A1F0 800095F0 95CEE500 */  lhu        $t6, %lo(gButton_Start)($t6)
/* A1F4 800095F4 00000000 */  nop
/* A1F8 800095F8 006E6824 */  and        $t5, $v1, $t6
/* A1FC 800095FC 11A000CB */  beqz       $t5, L8000992C_A52C
.L80009600:
/* A200 80009600 2610F510 */   addiu     $s0, $s0, %lo(D_800FF510)
/* A204 80009604 920F2910 */  lbu        $t7, 0x2910($s0)
/* A208 80009608 00000000 */  nop
/* A20C 8000960C 11E0000F */  beqz       $t7, .L8000964C
/* A210 80009610 00000000 */   nop
/* A214 80009614 0C000CD3 */  jal        SFX_Play_1
/* A218 80009618 24040023 */   addiu     $a0, $zero, 0x23
/* A21C 8000961C 3C08800F */  lui        $t0, %hi(gActors)
/* A220 80009620 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* A224 80009624 3C098017 */  lui        $t1, %hi(D_80171B22)
/* A228 80009628 25291B22 */  addiu      $t1, $t1, %lo(D_80171B22)
/* A22C 8000962C 240C003A */  addiu      $t4, $zero, 0x3a
/* A230 80009630 AD0003B0 */  sw         $zero, 0x3b0($t0)
/* A234 80009634 AD000218 */  sw         $zero, 0x218($t0)
/* A238 80009638 A52C0000 */  sh         $t4, ($t1)
/* A23C 8000963C 24180014 */  addiu      $t8, $zero, 0x14
/* A240 80009640 3C01800C */  lui        $at, %hi(gGameSubState)
/* A244 80009644 100000B9 */  b          L8000992C_A52C
/* A248 80009648 A438E4F4 */   sh        $t8, %lo(gGameSubState)($at)
.L8000964C:
/* A24C 8000964C 0C00181F */  jal        func_8000607C
/* A250 80009650 24040001 */   addiu     $a0, $zero, 1
/* A254 80009654 3C0B800C */  lui        $t3, %hi(gGameSubState)
/* A258 80009658 956BE4F4 */  lhu        $t3, %lo(gGameSubState)($t3)
/* A25C 8000965C 3C01800C */  lui        $at, %hi(gGameSubState)
/* A260 80009660 256EFFFE */  addiu      $t6, $t3, -2
/* A264 80009664 100000B1 */  b          L8000992C_A52C
/* A268 80009668 A42EE4F4 */   sh        $t6, %lo(gGameSubState)($at)
glabel L8000966C_A26C
/* A26C 8000966C 3C098017 */  lui        $t1, %hi(D_80171B22)
/* A270 80009670 25291B22 */  addiu      $t1, $t1, %lo(D_80171B22)
/* A274 80009674 95260000 */  lhu        $a2, ($t1)
/* A278 80009678 3C048017 */  lui        $a0, 0x8017
/* A27C 8000967C 30CD0003 */  andi       $t5, $a2, 3
/* A280 80009680 15A0004A */  bnez       $t5, .L800097AC
/* A284 80009684 00C03825 */   or        $a3, $a2, $zero
/* A288 80009688 3C058017 */  lui        $a1, %hi(D_80171B1C)
/* A28C 8000968C 94A51B1C */  lhu        $a1, %lo(D_80171B1C)($a1)
/* A290 80009690 94841B1A */  lhu        $a0, 0x1b1a($a0)
/* A294 80009694 3C08800F */  lui        $t0, %hi(gActors)
/* A298 80009698 0085082A */  slt        $at, $a0, $a1
/* A29C 8000969C 1020000F */  beqz       $at, .L800096DC
/* A2A0 800096A0 3C0B800C */   lui       $t3, 0x800c
/* A2A4 800096A4 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* A2A8 800096A8 24030198 */  addiu      $v1, $zero, 0x198
.L800096AC:
/* A2AC 800096AC 00830019 */  multu      $a0, $v1
/* A2B0 800096B0 24840001 */  addiu      $a0, $a0, 1
/* A2B4 800096B4 3098FFFF */  andi       $t8, $a0, 0xffff
/* A2B8 800096B8 0305082A */  slt        $at, $t8, $a1
/* A2BC 800096BC 03002025 */  or         $a0, $t8, $zero
/* A2C0 800096C0 00007812 */  mflo       $t7
/* A2C4 800096C4 010F1021 */  addu       $v0, $t0, $t7
/* A2C8 800096C8 8C590080 */  lw         $t9, 0x80($v0)
/* A2CC 800096CC 00000000 */  nop
/* A2D0 800096D0 3B2C0001 */  xori       $t4, $t9, 1
/* A2D4 800096D4 1420FFF5 */  bnez       $at, .L800096AC
/* A2D8 800096D8 AC4C0080 */   sw        $t4, 0x80($v0)
.L800096DC:
/* A2DC 800096DC 916B5000 */  lbu        $t3, 0x5000($t3)
/* A2E0 800096E0 3C08800F */  lui        $t0, %hi(gActors)
/* A2E4 800096E4 11600011 */  beqz       $t3, .L8000972C
/* A2E8 800096E8 2508F510 */   addiu     $t0, $t0, %lo(gActors)
/* A2EC 800096EC 3C0E8017 */  lui        $t6, %hi(D_80171B1E)
/* A2F0 800096F0 95CE1B1E */  lhu        $t6, %lo(D_80171B1E)($t6)
/* A2F4 800096F4 00000000 */  nop
/* A2F8 800096F8 000E6880 */  sll        $t5, $t6, 2
/* A2FC 800096FC 01AE6823 */  subu       $t5, $t5, $t6
/* A300 80009700 000D6880 */  sll        $t5, $t5, 2
/* A304 80009704 01AE6821 */  addu       $t5, $t5, $t6
/* A308 80009708 000D6880 */  sll        $t5, $t5, 2
/* A30C 8000970C 01AE6823 */  subu       $t5, $t5, $t6
/* A310 80009710 000D68C0 */  sll        $t5, $t5, 3
/* A314 80009714 010D1021 */  addu       $v0, $t0, $t5
/* A318 80009718 8C4F0218 */  lw         $t7, 0x218($v0)
/* A31C 8000971C 00000000 */  nop
/* A320 80009720 39F90001 */  xori       $t9, $t7, 1
/* A324 80009724 10000010 */  b          .L80009768
/* A328 80009728 AC590218 */   sw        $t9, 0x218($v0)
.L8000972C:
/* A32C 8000972C 3C0C8017 */  lui        $t4, %hi(D_80171B1E)
/* A330 80009730 958C1B1E */  lhu        $t4, %lo(D_80171B1E)($t4)
/* A334 80009734 00000000 */  nop
/* A338 80009738 000CC080 */  sll        $t8, $t4, 2
/* A33C 8000973C 030CC023 */  subu       $t8, $t8, $t4
/* A340 80009740 0018C080 */  sll        $t8, $t8, 2
/* A344 80009744 030CC021 */  addu       $t8, $t8, $t4
/* A348 80009748 0018C080 */  sll        $t8, $t8, 2
/* A34C 8000974C 030CC023 */  subu       $t8, $t8, $t4
/* A350 80009750 0018C0C0 */  sll        $t8, $t8, 3
/* A354 80009754 01181021 */  addu       $v0, $t0, $t8
/* A358 80009758 8C4B0080 */  lw         $t3, 0x80($v0)
/* A35C 8000975C 00000000 */  nop
/* A360 80009760 396E0001 */  xori       $t6, $t3, 1
/* A364 80009764 AC4E0080 */  sw         $t6, 0x80($v0)
.L80009768:
/* A368 80009768 3C0D8017 */  lui        $t5, %hi(D_80171B20)
/* A36C 8000976C 95AD1B20 */  lhu        $t5, %lo(D_80171B20)($t5)
/* A370 80009770 00000000 */  nop
/* A374 80009774 000D7880 */  sll        $t7, $t5, 2
/* A378 80009778 01ED7823 */  subu       $t7, $t7, $t5
/* A37C 8000977C 000F7880 */  sll        $t7, $t7, 2
/* A380 80009780 01ED7821 */  addu       $t7, $t7, $t5
/* A384 80009784 000F7880 */  sll        $t7, $t7, 2
/* A388 80009788 01ED7823 */  subu       $t7, $t7, $t5
/* A38C 8000978C 000F78C0 */  sll        $t7, $t7, 3
/* A390 80009790 010F1021 */  addu       $v0, $t0, $t7
/* A394 80009794 8C590080 */  lw         $t9, 0x80($v0)
/* A398 80009798 8C580218 */  lw         $t8, 0x218($v0)
/* A39C 8000979C 3B2C0001 */  xori       $t4, $t9, 1
/* A3A0 800097A0 3B0B0001 */  xori       $t3, $t8, 1
/* A3A4 800097A4 AC4C0080 */  sw         $t4, 0x80($v0)
/* A3A8 800097A8 AC4B0218 */  sw         $t3, 0x218($v0)
.L800097AC:
/* A3AC 800097AC 38E40002 */  xori       $a0, $a3, 2
/* A3B0 800097B0 24CEFFFF */  addiu      $t6, $a2, -1
/* A3B4 800097B4 1480005D */  bnez       $a0, L8000992C_A52C
/* A3B8 800097B8 A52E0000 */   sh        $t6, ($t1)
/* A3BC 800097BC 3C06800C */  lui        $a2, %hi(gSaveSlotIndex)
/* A3C0 800097C0 90C65008 */  lbu        $a2, %lo(gSaveSlotIndex)($a2)
/* A3C4 800097C4 3C0F8017 */  lui        $t7, 0x8017
/* A3C8 800097C8 00066880 */  sll        $t5, $a2, 2
/* A3CC 800097CC 01A66823 */  subu       $t5, $t5, $a2
/* A3D0 800097D0 000D6880 */  sll        $t5, $t5, 2
/* A3D4 800097D4 3C04800C */  lui        $a0, %hi(D_800C5000)
/* A3D8 800097D8 01A66823 */  subu       $t5, $t5, $a2
/* A3DC 800097DC 000D6840 */  sll        $t5, $t5, 1
/* A3E0 800097E0 25EF1AA0 */  addiu      $t7, $t7, 0x1aa0
/* A3E4 800097E4 3C07800C */  lui        $a3, %hi(nameEntrySpace)
/* A3E8 800097E8 90845000 */  lbu        $a0, %lo(D_800C5000)($a0)
/* A3EC 800097EC 24E74FE8 */  addiu      $a3, $a3, %lo(nameEntrySpace)
/* A3F0 800097F0 01AF2821 */  addu       $a1, $t5, $t7
/* A3F4 800097F4 00001825 */  or         $v1, $zero, $zero
.L800097F8:
/* A3F8 800097F8 00031040 */  sll        $v0, $v1, 1
/* A3FC 800097FC 24630001 */  addiu      $v1, $v1, 1
/* A400 80009800 00E2C821 */  addu       $t9, $a3, $v0
/* A404 80009804 972C0000 */  lhu        $t4, ($t9)
/* A408 80009808 306BFFFF */  andi       $t3, $v1, 0xffff
/* A40C 8000980C 2961000B */  slti       $at, $t3, 0xb
/* A410 80009810 00A2C021 */  addu       $t8, $a1, $v0
/* A414 80009814 01601825 */  or         $v1, $t3, $zero
/* A418 80009818 1420FFF7 */  bnez       $at, .L800097F8
/* A41C 8000981C A70C0000 */   sh        $t4, ($t8)
/* A420 80009820 3C03800C */  lui        $v1, %hi(D_800C5004)
/* A424 80009824 24635004 */  addiu      $v1, $v1, %lo(D_800C5004)
/* A428 80009828 906E0000 */  lbu        $t6, ($v1)
/* A42C 8000982C 3C018017 */  lui        $at, %hi(GameSave_Age)
/* A430 80009830 00260821 */  addu       $at, $at, $a2
/* A434 80009834 A02E1ACC */  sb         $t6, %lo(GameSave_Age)($at)
/* A438 80009838 3C018017 */  lui        $at, %hi(GameSave_Sex)
/* A43C 8000983C 00260821 */  addu       $at, $at, $a2
/* A440 80009840 A0241ACE */  sb         $a0, %lo(GameSave_Sex)($at)
/* A444 80009844 3C018017 */  lui        $at, %hi(GameSave_RedGems)
/* A448 80009848 00061040 */  sll        $v0, $a2, 1
/* A44C 8000984C 2410001E */  addiu      $s0, $zero, 0x1e
/* A450 80009850 00220821 */  addu       $at, $at, $v0
/* A454 80009854 A4301AD0 */  sh         $s0, %lo(GameSave_RedGems)($at)
/* A458 80009858 3C018017 */  lui        $at, %hi(GameSave_YellowGems)
/* A45C 8000985C 00220821 */  addu       $at, $at, $v0
/* A460 80009860 A4201AD4 */  sh         $zero, %lo(GameSave_YellowGems)($at)
/* A464 80009864 3C018017 */  lui        $at, %hi(D_80171ADC)
/* A468 80009868 000678C0 */  sll        $t7, $a2, 3
/* A46C 8000986C 002F0821 */  addu       $at, $at, $t7
/* A470 80009870 240C0000 */  addiu      $t4, $zero, 0
/* A474 80009874 240D0000 */  addiu      $t5, $zero, 0
/* A478 80009878 AC2D1ADC */  sw         $t5, %lo(D_80171ADC)($at)
/* A47C 8000987C 0C00142D */  jal        GameSave_SetDefaults
/* A480 80009880 AC2C1AD8 */   sw        $t4, 0x1ad8($at)
/* A484 80009884 3C018018 */  lui        $at, %hi(gRedGems)
/* A488 80009888 A4308136 */  sh         $s0, %lo(gRedGems)($at)
/* A48C 8000988C 3C018013 */  lui        $at, %hi(gPlayTime)
/* A490 80009890 0C0015DC */  jal        func_80005770
/* A494 80009894 AC2070C8 */   sw        $zero, %lo(gPlayTime)($at)
/* A498 80009898 0C001B98 */  jal        func_80006E60
/* A49C 8000989C 00000000 */   nop
/* A4A0 800098A0 10000023 */  b          .L80009930
/* A4A4 800098A4 8FBF0034 */   lw        $ra, 0x34($sp)
glabel L800098A8_A4A8
/* A4A8 800098A8 3C098017 */  lui        $t1, %hi(D_80171B22)
/* A4AC 800098AC 25291B22 */  addiu      $t1, $t1, %lo(D_80171B22)
/* A4B0 800098B0 95260000 */  lhu        $a2, ($t1)
/* A4B4 800098B4 3C08800F */  lui        $t0, %hi(gActors)
/* A4B8 800098B8 30D90003 */  andi       $t9, $a2, 3
/* A4BC 800098BC 17200006 */  bnez       $t9, .L800098D8
/* A4C0 800098C0 00C03825 */   or        $a3, $a2, $zero
/* A4C4 800098C4 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* A4C8 800098C8 8D184508 */  lw         $t8, 0x4508($t0)
/* A4CC 800098CC 00000000 */  nop
/* A4D0 800098D0 3B0B0001 */  xori       $t3, $t8, 1
/* A4D4 800098D4 AD0B4508 */  sw         $t3, 0x4508($t0)
.L800098D8:
/* A4D8 800098D8 38E40002 */  xori       $a0, $a3, 2
/* A4DC 800098DC 24CEFFFF */  addiu      $t6, $a2, -1
/* A4E0 800098E0 14800012 */  bnez       $a0, L8000992C_A52C
/* A4E4 800098E4 A52E0000 */   sh        $t6, ($t1)
/* A4E8 800098E8 0C001597 */  jal        GameSave_LoadRecords
/* A4EC 800098EC 00000000 */   nop
/* A4F0 800098F0 3C06800C */  lui        $a2, %hi(gSaveSlotIndex)
/* A4F4 800098F4 90C65008 */  lbu        $a2, %lo(gSaveSlotIndex)($a2)
/* A4F8 800098F8 3C0D8017 */  lui        $t5, %hi(GameSave_RedGems)
/* A4FC 800098FC 00066040 */  sll        $t4, $a2, 1
/* A500 80009900 01AC6821 */  addu       $t5, $t5, $t4
/* A504 80009904 95AD1AD0 */  lhu        $t5, %lo(GameSave_RedGems)($t5)
/* A508 80009908 3C198017 */  lui        $t9, %hi(D_80171ADC)
/* A50C 8000990C 000678C0 */  sll        $t7, $a2, 3
/* A510 80009910 3C018018 */  lui        $at, %hi(gRedGems)
/* A514 80009914 032FC821 */  addu       $t9, $t9, $t7
/* A518 80009918 8F391ADC */  lw         $t9, %lo(D_80171ADC)($t9)
/* A51C 8000991C A42D8136 */  sh         $t5, %lo(gRedGems)($at)
/* A520 80009920 3C018013 */  lui        $at, %hi(gPlayTime)
/* A524 80009924 0C001B98 */  jal        func_80006E60
/* A528 80009928 AC3970C8 */   sw        $t9, %lo(gPlayTime)($at)
glabel L8000992C_A52C
/* A52C 8000992C 8FBF0034 */  lw         $ra, 0x34($sp)
.L80009930:
/* A530 80009930 8FB00030 */  lw         $s0, 0x30($sp)
/* A534 80009934 03E00008 */  jr         $ra
/* A538 80009938 27BD0040 */   addiu     $sp, $sp, 0x40
/* A53C 8000993C 00000000 */  nop
