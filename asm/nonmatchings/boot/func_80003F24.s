glabel func_80003F24
/* 4B24 80003F24 3082FFFF */  andi       $v0, $a0, 0xffff
/* 4B28 80003F28 AFA40000 */  sw         $a0, ($sp)
/* 4B2C 80003F2C AFA50004 */  sw         $a1, 4($sp)
/* 4B30 80003F30 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 4B34 80003F34 30580001 */  andi       $t8, $v0, 1
/* 4B38 80003F38 24010001 */  addiu      $at, $zero, 1
/* 4B3C 80003F3C 01E02825 */  or         $a1, $t7, $zero
/* 4B40 80003F40 17010004 */  bne        $t8, $at, .L80003F54
/* 4B44 80003F44 00402025 */   or        $a0, $v0, $zero
/* 4B48 80003F48 3C018013 */  lui        $at, %hi(D_80137D94)
/* 4B4C 80003F4C 10000003 */  b          .L80003F5C
/* 4B50 80003F50 A42F7D94 */   sh        $t7, %lo(D_80137D94)($at)
.L80003F54:
/* 4B54 80003F54 3C018013 */  lui        $at, %hi(D_80137D94)
/* 4B58 80003F58 A4207D94 */  sh         $zero, %lo(D_80137D94)($at)
.L80003F5C:
/* 4B5C 80003F5C 3C018013 */  lui        $at, %hi(D_80137D92)
/* 4B60 80003F60 A4257D92 */  sh         $a1, %lo(D_80137D92)($at)
/* 4B64 80003F64 24010041 */  addiu      $at, $zero, 0x41
/* 4B68 80003F68 14410028 */  bne        $v0, $at, .L8000400C
/* 4B6C 80003F6C 3C0B800F */   lui       $t3, 0x800f
/* 4B70 80003F70 3C08800F */  lui        $t0, %hi(D_800EF4D8)
/* 4B74 80003F74 8D08F4D8 */  lw         $t0, %lo(D_800EF4D8)($t0)
/* 4B78 80003F78 3C0A800C */  lui        $t2, %hi(D_800C0AD8)
/* 4B7C 80003F7C 000848C0 */  sll        $t1, $t0, 3
/* 4B80 80003F80 01284821 */  addu       $t1, $t1, $t0
/* 4B84 80003F84 00094840 */  sll        $t1, $t1, 1
/* 4B88 80003F88 01495021 */  addu       $t2, $t2, $t1
/* 4B8C 80003F8C 914A0AD8 */  lbu        $t2, %lo(D_800C0AD8)($t2)
/* 4B90 80003F90 24190001 */  addiu      $t9, $zero, 1
/* 4B94 80003F94 3C018013 */  lui        $at, %hi(D_80137D90)
/* 4B98 80003F98 A4397D90 */  sh         $t9, %lo(D_80137D90)($at)
/* 4B9C 80003F9C 3C018013 */  lui        $at, %hi(D_80137D96)
/* 4BA0 80003FA0 304C0080 */  andi       $t4, $v0, 0x80
/* 4BA4 80003FA4 000A59C0 */  sll        $t3, $t2, 7
/* 4BA8 80003FA8 1580003B */  bnez       $t4, .L80004098
/* 4BAC 80003FAC A42B7D96 */   sh        $t3, %lo(D_80137D96)($at)
/* 4BB0 80003FB0 3C06800F */  lui        $a2, %hi(D_800EF508)
/* 4BB4 80003FB4 3C05800C */  lui        $a1, %hi(D_800C2968)
/* 4BB8 80003FB8 3C048013 */  lui        $a0, %hi(D_80137D98)
/* 4BBC 80003FBC 24847D98 */  addiu      $a0, $a0, %lo(D_80137D98)
/* 4BC0 80003FC0 24A52968 */  addiu      $a1, $a1, %lo(D_800C2968)
/* 4BC4 80003FC4 24C6F508 */  addiu      $a2, $a2, %lo(D_800EF508)
/* 4BC8 80003FC8 00001025 */  or         $v0, $zero, $zero
.L80003FCC:
/* 4BCC 80003FCC 00021840 */  sll        $v1, $v0, 1
/* 4BD0 80003FD0 00C36821 */  addu       $t5, $a2, $v1
/* 4BD4 80003FD4 95AE0000 */  lhu        $t6, ($t5)
/* 4BD8 80003FD8 24420001 */  addiu      $v0, $v0, 1
/* 4BDC 80003FDC 000E7840 */  sll        $t7, $t6, 1
/* 4BE0 80003FE0 00AFC021 */  addu       $t8, $a1, $t7
/* 4BE4 80003FE4 9319FFBE */  lbu        $t9, -0x42($t8)
/* 4BE8 80003FE8 304AFFFF */  andi       $t2, $v0, 0xffff
/* 4BEC 80003FEC 29410004 */  slti       $at, $t2, 4
/* 4BF0 80003FF0 00834821 */  addu       $t1, $a0, $v1
/* 4BF4 80003FF4 001941C0 */  sll        $t0, $t9, 7
/* 4BF8 80003FF8 01401025 */  or         $v0, $t2, $zero
/* 4BFC 80003FFC 1420FFF3 */  bnez       $at, .L80003FCC
/* 4C00 80004000 A5280000 */   sh        $t0, ($t1)
/* 4C04 80004004 03E00008 */  jr         $ra
/* 4C08 80004008 00000000 */   nop
.L8000400C:
/* 4C0C 8000400C 8D6BF4D8 */  lw         $t3, -0xb28($t3)
/* 4C10 80004010 3C0D800C */  lui        $t5, %hi(D_800C0AD8)
/* 4C14 80004014 000B60C0 */  sll        $t4, $t3, 3
/* 4C18 80004018 018B6021 */  addu       $t4, $t4, $t3
/* 4C1C 8000401C 000C6040 */  sll        $t4, $t4, 1
/* 4C20 80004020 01AC6821 */  addu       $t5, $t5, $t4
/* 4C24 80004024 91AD0AD8 */  lbu        $t5, %lo(D_800C0AD8)($t5)
/* 4C28 80004028 3C018013 */  lui        $at, %hi(D_80137D90)
/* 4C2C 8000402C A4247D90 */  sh         $a0, %lo(D_80137D90)($at)
/* 4C30 80004030 3C018013 */  lui        $at, %hi(D_80137D96)
/* 4C34 80004034 304F0080 */  andi       $t7, $v0, 0x80
/* 4C38 80004038 000D7200 */  sll        $t6, $t5, 8
/* 4C3C 8000403C 15E00016 */  bnez       $t7, .L80004098
/* 4C40 80004040 A42E7D96 */   sh        $t6, %lo(D_80137D96)($at)
/* 4C44 80004044 3C06800F */  lui        $a2, %hi(D_800EF508)
/* 4C48 80004048 3C05800C */  lui        $a1, %hi(D_800C2968)
/* 4C4C 8000404C 3C048013 */  lui        $a0, %hi(D_80137D98)
/* 4C50 80004050 24847D98 */  addiu      $a0, $a0, %lo(D_80137D98)
/* 4C54 80004054 24A52968 */  addiu      $a1, $a1, %lo(D_800C2968)
/* 4C58 80004058 24C6F508 */  addiu      $a2, $a2, %lo(D_800EF508)
/* 4C5C 8000405C 00001025 */  or         $v0, $zero, $zero
.L80004060:
/* 4C60 80004060 00021840 */  sll        $v1, $v0, 1
/* 4C64 80004064 00C3C021 */  addu       $t8, $a2, $v1
/* 4C68 80004068 97190000 */  lhu        $t9, ($t8)
/* 4C6C 8000406C 24420001 */  addiu      $v0, $v0, 1
/* 4C70 80004070 00194040 */  sll        $t0, $t9, 1
/* 4C74 80004074 00A84821 */  addu       $t1, $a1, $t0
/* 4C78 80004078 912AFFBE */  lbu        $t2, -0x42($t1)
/* 4C7C 8000407C 304DFFFF */  andi       $t5, $v0, 0xffff
/* 4C80 80004080 29A10004 */  slti       $at, $t5, 4
/* 4C84 80004084 00836021 */  addu       $t4, $a0, $v1
/* 4C88 80004088 000A5A00 */  sll        $t3, $t2, 8
/* 4C8C 8000408C 01A01025 */  or         $v0, $t5, $zero
/* 4C90 80004090 1420FFF3 */  bnez       $at, .L80004060
/* 4C94 80004094 A58B0000 */   sh        $t3, ($t4)
.L80004098:
/* 4C98 80004098 03E00008 */  jr         $ra
/* 4C9C 8000409C 00000000 */   nop