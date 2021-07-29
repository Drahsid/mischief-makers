glabel func_8001B078
/* 1BC78 8001B078 AFA40000 */  sw         $a0, ($sp)
/* 1BC7C 8001B07C 3089FFFF */  andi       $t1, $a0, 0xffff
/* 1BC80 8001B080 3C04800D */  lui        $a0, %hi(D_800C823C)
/* 1BC84 8001B084 2484823C */  addiu      $a0, $a0, %lo(D_800C823C)
/* 1BC88 8001B088 00001025 */  or         $v0, $zero, $zero
/* 1BC8C 8001B08C 00004025 */  or         $t0, $zero, $zero
.L8001B090:
/* 1BC90 8001B090 00027840 */  sll        $t7, $v0, 1
/* 1BC94 8001B094 008FC021 */  addu       $t8, $a0, $t7
/* 1BC98 8001B098 97190000 */  lhu        $t9, ($t8)
/* 1BC9C 8001B09C 00000000 */  nop
/* 1BCA0 8001B0A0 01191821 */  addu       $v1, $t0, $t9
/* 1BCA4 8001B0A4 3068FFFF */  andi       $t0, $v1, 0xffff
/* 1BCA8 8001B0A8 0128082A */  slt        $at, $t1, $t0
/* 1BCAC 8001B0AC 10200003 */  beqz       $at, .L8001B0BC
/* 1BCB0 8001B0B0 00000000 */   nop
/* 1BCB4 8001B0B4 10000006 */  b          .L8001B0D0
/* 1BCB8 8001B0B8 00401825 */   or        $v1, $v0, $zero
.L8001B0BC:
/* 1BCBC 8001B0BC 24420001 */  addiu      $v0, $v0, 1
/* 1BCC0 8001B0C0 3043FFFF */  andi       $v1, $v0, 0xffff
/* 1BCC4 8001B0C4 28610016 */  slti       $at, $v1, 0x16
/* 1BCC8 8001B0C8 1420FFF1 */  bnez       $at, .L8001B090
/* 1BCCC 8001B0CC 00601025 */   or        $v0, $v1, $zero
.L8001B0D0:
/* 1BCD0 8001B0D0 246CFFFE */  addiu      $t4, $v1, -2
/* 1BCD4 8001B0D4 2D810012 */  sltiu      $at, $t4, 0x12
/* 1BCD8 8001B0D8 10200018 */  beqz       $at, L8001B13C_1BD3C
/* 1BCDC 8001B0DC 000C6080 */   sll       $t4, $t4, 2
/* 1BCE0 8001B0E0 3C01800F */  lui        $at, %hi(jtbl_800EB3AC)
/* 1BCE4 8001B0E4 002C0821 */  addu       $at, $at, $t4
/* 1BCE8 8001B0E8 8C2CB3AC */  lw         $t4, %lo(jtbl_800EB3AC)($at)
/* 1BCEC 8001B0EC 00000000 */  nop
/* 1BCF0 8001B0F0 01800008 */  jr         $t4
/* 1BCF4 8001B0F4 00000000 */   nop
glabel L8001B0F8_1BCF8
/* 1BCF8 8001B0F8 10000012 */  b          .L8001B144
/* 1BCFC 8001B0FC A4A00000 */   sh        $zero, ($a1)
glabel L8001B100_1BD00
/* 1BD00 8001B100 240D0001 */  addiu      $t5, $zero, 1
/* 1BD04 8001B104 1000000F */  b          .L8001B144
/* 1BD08 8001B108 A4AD0000 */   sh        $t5, ($a1)
glabel L8001B10C_1BD0C
/* 1BD0C 8001B10C 240E0002 */  addiu      $t6, $zero, 2
/* 1BD10 8001B110 1000000C */  b          .L8001B144
/* 1BD14 8001B114 A4AE0000 */   sh        $t6, ($a1)
glabel L8001B118_1BD18
/* 1BD18 8001B118 240F0003 */  addiu      $t7, $zero, 3
/* 1BD1C 8001B11C 10000009 */  b          .L8001B144
/* 1BD20 8001B120 A4AF0000 */   sh        $t7, ($a1)
glabel L8001B124_1BD24
/* 1BD24 8001B124 24180004 */  addiu      $t8, $zero, 4
/* 1BD28 8001B128 10000006 */  b          .L8001B144
/* 1BD2C 8001B12C A4B80000 */   sh        $t8, ($a1)
glabel L8001B130_1BD30
/* 1BD30 8001B130 24190005 */  addiu      $t9, $zero, 5
/* 1BD34 8001B134 10000003 */  b          .L8001B144
/* 1BD38 8001B138 A4B90000 */   sh        $t9, ($a1)
glabel L8001B13C_1BD3C
/* 1BD3C 8001B13C 240A0006 */  addiu      $t2, $zero, 6
/* 1BD40 8001B140 A4AA0000 */  sh         $t2, ($a1)
.L8001B144:
/* 1BD44 8001B144 94A20000 */  lhu        $v0, ($a1)
/* 1BD48 8001B148 24010005 */  addiu      $at, $zero, 5
/* 1BD4C 8001B14C 1441000B */  bne        $v0, $at, .L8001B17C
/* 1BD50 8001B150 0002C040 */   sll       $t8, $v0, 1
/* 1BD54 8001B154 240B0004 */  addiu      $t3, $zero, 4
/* 1BD58 8001B158 A4AB0000 */  sh         $t3, ($a1)
/* 1BD5C 8001B15C 3C0C800D */  lui        $t4, %hi(D_800C8270)
/* 1BD60 8001B160 958D8270 */  lhu        $t5, %lo(D_800C8270)($t4)
/* 1BD64 8001B164 00000000 */  nop
/* 1BD68 8001B168 012D7023 */  subu       $t6, $t1, $t5
/* 1BD6C 8001B16C 25CFFFFF */  addiu      $t7, $t6, -1
/* 1BD70 8001B170 A4ED0000 */  sh         $t5, ($a3)
/* 1BD74 8001B174 03E00008 */  jr         $ra
/* 1BD78 8001B178 A4CF0000 */   sh        $t7, ($a2)
.L8001B17C:
/* 1BD7C 8001B17C 3C19800D */  lui        $t9, %hi(D_800C8268)
/* 1BD80 8001B180 0338C821 */  addu       $t9, $t9, $t8
/* 1BD84 8001B184 972A8268 */  lhu        $t2, %lo(D_800C8268)($t9)
/* 1BD88 8001B188 00000000 */  nop
/* 1BD8C 8001B18C A4EA0000 */  sh         $t2, ($a3)
/* 1BD90 8001B190 012A5823 */  subu       $t3, $t1, $t2
/* 1BD94 8001B194 A4CB0000 */  sh         $t3, ($a2)
/* 1BD98 8001B198 03E00008 */  jr         $ra
/* 1BD9C 8001B19C 00000000 */   nop
