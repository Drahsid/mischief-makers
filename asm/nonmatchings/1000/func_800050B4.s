glabel func_800050B4
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
/* 5CF8 800050F8 3C028017 */  lui        $v0, %hi(D_80171B10)
/* 5CFC 800050FC 24421B10 */  addiu      $v0, $v0, %lo(D_80171B10)
/* 5D00 80005100 24040000 */  addiu      $a0, $zero, 0
/* 5D04 80005104 24050000 */  addiu      $a1, $zero, 0
/* 5D08 80005108 AC450004 */  sw         $a1, 4($v0)
/* 5D0C 8000510C AC440000 */  sw         $a0, ($v0)
/* 5D10 80005110 24060000 */  addiu      $a2, $zero, 0
/* 5D14 80005114 0C0290D5 */  jal        func_800A4354
/* 5D18 80005118 24070020 */   addiu     $a3, $zero, 0x20
/* 5D1C 8000511C 3C018017 */  lui        $at, %hi(D_80171B10)
/* 5D20 80005120 AC221B10 */  sw         $v0, %lo(D_80171B10)($at)
/* 5D24 80005124 AC231B14 */  sw         $v1, 0x1b14($at)
/* 5D28 80005128 240A0000 */  addiu      $t2, $zero, 0
/* 5D2C 8000512C 240B0000 */  addiu      $t3, $zero, 0
/* 5D30 80005130 AC2B1B14 */  sw         $t3, 0x1b14($at)
/* 5D34 80005134 AC2A1B10 */  sw         $t2, 0x1b10($at)
/* 5D38 80005138 3C018017 */  lui        $at, %hi(D_80171B18)
/* 5D3C 8000513C A0201B18 */  sb         $zero, %lo(D_80171B18)($at)
/* 5D40 80005140 3C018017 */  lui        $at, %hi(D_80171B19)
/* 5D44 80005144 3C02800C */  lui        $v0, %hi(D_800C4F28)
/* 5D48 80005148 A0201B19 */  sb         $zero, %lo(D_80171B19)($at)
/* 5D4C 8000514C 24424F28 */  addiu      $v0, $v0, %lo(D_800C4F28)
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
