glabel func_80001098
/* 1C98 80001098 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1C9C 8000109C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1CA0 800010A0 3C048013 */  lui        $a0, %hi(D_8012AC20)
/* 1CA4 800010A4 3C058013 */  lui        $a1, %hi(D_8012AC7C)
/* 1CA8 800010A8 24A5AC7C */  addiu      $a1, $a1, %lo(D_8012AC7C)
/* 1CAC 800010AC 2484AC20 */  addiu      $a0, $a0, %lo(D_8012AC20)
/* 1CB0 800010B0 0C026994 */  jal        osCreateMesgQueue
/* 1CB4 800010B4 24060001 */   addiu     $a2, $zero, 1
/* 1CB8 800010B8 3C058013 */  lui        $a1, %hi(D_8012AC20)
/* 1CBC 800010BC 24A5AC20 */  addiu      $a1, $a1, %lo(D_8012AC20)
/* 1CC0 800010C0 24040005 */  addiu      $a0, $zero, 5
/* 1CC4 800010C4 0C0269BC */  jal        osSetEventMesg
/* 1CC8 800010C8 24060001 */   addiu     $a2, $zero, 1
/* 1CCC 800010CC 3C048013 */  lui        $a0, %hi(D_8012AC20)
/* 1CD0 800010D0 3C068013 */  lui        $a2, %hi(D_8012AD60)
/* 1CD4 800010D4 24C6AD60 */  addiu      $a2, $a2, %lo(D_8012AD60)
/* 1CD8 800010D8 2484AC20 */  addiu      $a0, $a0, %lo(D_8012AC20)
/* 1CDC 800010DC 0C026CB8 */  jal        func_8009B2E0
/* 1CE0 800010E0 27A50023 */   addiu     $a1, $sp, 0x23
/* 1CE4 800010E4 3C048013 */  lui        $a0, %hi(D_8012AC08)
/* 1CE8 800010E8 3C058013 */  lui        $a1, %hi(D_8012AC78)
/* 1CEC 800010EC 24A5AC78 */  addiu      $a1, $a1, %lo(D_8012AC78)
/* 1CF0 800010F0 2484AC08 */  addiu      $a0, $a0, %lo(D_8012AC08)
/* 1CF4 800010F4 0C026994 */  jal        osCreateMesgQueue
/* 1CF8 800010F8 24060001 */   addiu     $a2, $zero, 1
/* 1CFC 800010FC 3C058013 */  lui        $a1, %hi(D_8012AC08)
/* 1D00 80001100 24A5AC08 */  addiu      $a1, $a1, %lo(D_8012AC08)
/* 1D04 80001104 24040005 */  addiu      $a0, $zero, 5
/* 1D08 80001108 0C0269BC */  jal        osSetEventMesg
/* 1D0C 8000110C 00003025 */   or        $a2, $zero, $zero
/* 1D10 80001110 3C048013 */  lui        $a0, %hi(D_8012ADA0)
/* 1D14 80001114 3C058013 */  lui        $a1, %hi(D_8012ADB8)
/* 1D18 80001118 24A5ADB8 */  addiu      $a1, $a1, %lo(D_8012ADB8)
/* 1D1C 8000111C 2484ADA0 */  addiu      $a0, $a0, %lo(D_8012ADA0)
/* 1D20 80001120 0C026994 */  jal        osCreateMesgQueue
/* 1D24 80001124 24060002 */   addiu     $a2, $zero, 2
/* 1D28 80001128 3C058013 */  lui        $a1, %hi(D_8012ADA0)
/* 1D2C 8000112C 24A5ADA0 */  addiu      $a1, $a1, %lo(D_8012ADA0)
/* 1D30 80001130 24040005 */  addiu      $a0, $zero, 5
/* 1D34 80001134 0C0269BC */  jal        osSetEventMesg
/* 1D38 80001138 24060002 */   addiu     $a2, $zero, 2
/* 1D3C 8000113C 93A20023 */  lbu        $v0, 0x23($sp)
/* 1D40 80001140 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1D44 80001144 304E0001 */  andi       $t6, $v0, 1
/* 1D48 80001148 11C00008 */  beqz       $t6, .L8000116C
/* 1D4C 8000114C 3C0F8013 */   lui       $t7, %hi(D_8012AD63)
/* 1D50 80001150 91EFAD63 */  lbu        $t7, %lo(D_8012AD63)($t7)
/* 1D54 80001154 00000000 */  nop
/* 1D58 80001158 31F80008 */  andi       $t8, $t7, 8
/* 1D5C 8000115C 17000004 */  bnez       $t8, .L80001170
/* 1D60 80001160 30590002 */   andi      $t9, $v0, 2
/* 1D64 80001164 10000020 */  b          .L800011E8
/* 1D68 80001168 00001025 */   or        $v0, $zero, $zero
.L8000116C:
/* 1D6C 8000116C 30590002 */  andi       $t9, $v0, 2
.L80001170:
/* 1D70 80001170 13200008 */  beqz       $t9, .L80001194
/* 1D74 80001174 3C088013 */   lui       $t0, %hi(D_8012AD67)
/* 1D78 80001178 9108AD67 */  lbu        $t0, %lo(D_8012AD67)($t0)
/* 1D7C 8000117C 00000000 */  nop
/* 1D80 80001180 31090008 */  andi       $t1, $t0, 8
/* 1D84 80001184 15200004 */  bnez       $t1, .L80001198
/* 1D88 80001188 304A0004 */   andi      $t2, $v0, 4
/* 1D8C 8000118C 10000016 */  b          .L800011E8
/* 1D90 80001190 24020001 */   addiu     $v0, $zero, 1
.L80001194:
/* 1D94 80001194 304A0004 */  andi       $t2, $v0, 4
.L80001198:
/* 1D98 80001198 11400008 */  beqz       $t2, .L800011BC
/* 1D9C 8000119C 3C0B8013 */   lui       $t3, %hi(D_8012AD6B)
/* 1DA0 800011A0 916BAD6B */  lbu        $t3, %lo(D_8012AD6B)($t3)
/* 1DA4 800011A4 00000000 */  nop
/* 1DA8 800011A8 316C0008 */  andi       $t4, $t3, 8
/* 1DAC 800011AC 15800004 */  bnez       $t4, .L800011C0
/* 1DB0 800011B0 304D0008 */   andi      $t5, $v0, 8
/* 1DB4 800011B4 1000000C */  b          .L800011E8
/* 1DB8 800011B8 24020002 */   addiu     $v0, $zero, 2
.L800011BC:
/* 1DBC 800011BC 304D0008 */  andi       $t5, $v0, 8
.L800011C0:
/* 1DC0 800011C0 11A00008 */  beqz       $t5, .L800011E4
/* 1DC4 800011C4 3C0E8013 */   lui       $t6, %hi(D_8012AD6F)
/* 1DC8 800011C8 91CEAD6F */  lbu        $t6, %lo(D_8012AD6F)($t6)
/* 1DCC 800011CC 00000000 */  nop
/* 1DD0 800011D0 31CF0008 */  andi       $t7, $t6, 8
/* 1DD4 800011D4 15E00004 */  bnez       $t7, .L800011E8
/* 1DD8 800011D8 2402FFFF */   addiu     $v0, $zero, -1
/* 1DDC 800011DC 10000002 */  b          .L800011E8
/* 1DE0 800011E0 24020003 */   addiu     $v0, $zero, 3
.L800011E4:
/* 1DE4 800011E4 2402FFFF */  addiu      $v0, $zero, -1
.L800011E8:
/* 1DE8 800011E8 03E00008 */  jr         $ra
/* 1DEC 800011EC 27BD0028 */   addiu     $sp, $sp, 0x28
