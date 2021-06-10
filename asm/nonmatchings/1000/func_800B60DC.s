glabel func_800B60DC
/* B6CDC 800B60DC 27BDFF28 */  addiu      $sp, $sp, -0xd8
/* B6CE0 800B60E0 AFBF001C */  sw         $ra, 0x1c($sp)
/* B6CE4 800B60E4 AFA400D8 */  sw         $a0, 0xd8($sp)
/* B6CE8 800B60E8 AFB10018 */  sw         $s1, 0x18($sp)
/* B6CEC 800B60EC AFB00014 */  sw         $s0, 0x14($sp)
/* B6CF0 800B60F0 8FB000D8 */  lw         $s0, 0xd8($sp)
/* B6CF4 800B60F4 0C02E998 */  jal        func_800BA660
/* B6CF8 800B60F8 00000000 */   nop
/* B6CFC 800B60FC 10400003 */  beqz       $v0, .L800B610C
/* B6D00 800B6100 00000000 */   nop
/* B6D04 800B6104 1000004D */  b          .L800B623C
/* B6D08 800B6108 2402FFFC */   addiu     $v0, $zero, -4
.L800B610C:
/* B6D0C 800B610C 8E0E000C */  lw         $t6, 0xc($s0)
/* B6D10 800B6110 AFAE0030 */  sw         $t6, 0x30($sp)
/* B6D14 800B6114 920F0004 */  lbu        $t7, 4($s0)
/* B6D18 800B6118 A3AF0028 */  sb         $t7, 0x28($sp)
/* B6D1C 800B611C A7A0002A */  sh         $zero, 0x2a($sp)
/* B6D20 800B6120 0C02D6AE */  jal        func_800B5AB8
/* B6D24 800B6124 00002025 */   or        $a0, $zero, $zero
/* B6D28 800B6128 00008825 */  or         $s1, $zero, $zero
/* B6D2C 800B612C 2A210020 */  slti       $at, $s1, 0x20
/* B6D30 800B6130 1020000F */  beqz       $at, .L800B6170
/* B6D34 800B6134 00000000 */   nop
.L800B6138:
/* B6D38 800B6138 2404002B */  addiu      $a0, $zero, 0x2b
/* B6D3C 800B613C 0C02D664 */  jal        func_800B5990
/* B6D40 800B6140 02202825 */   or        $a1, $s1, $zero
/* B6D44 800B6144 0C02E9B2 */  jal        func_800BA6C8
/* B6D48 800B6148 00000000 */   nop
/* B6D4C 800B614C 0C02A45C */  jal        func_800A9170
/* B6D50 800B6150 3C040400 */   lui       $a0, 0x400
/* B6D54 800B6154 0011C080 */  sll        $t8, $s1, 2
/* B6D58 800B6158 03B8C821 */  addu       $t9, $sp, $t8
/* B6D5C 800B615C AF220034 */  sw         $v0, 0x34($t9)
/* B6D60 800B6160 26310001 */  addiu      $s1, $s1, 1
/* B6D64 800B6164 2A210020 */  slti       $at, $s1, 0x20
/* B6D68 800B6168 1420FFF3 */  bnez       $at, .L800B6138
/* B6D6C 800B616C 00000000 */   nop
.L800B6170:
/* B6D70 800B6170 0C02D6DA */  jal        func_800B5B68
/* B6D74 800B6174 00002025 */   or        $a0, $zero, $zero
/* B6D78 800B6178 3C040404 */  lui        $a0, 0x404
/* B6D7C 800B617C 0C02A45C */  jal        func_800A9170
/* B6D80 800B6180 34840004 */   ori       $a0, $a0, 4
/* B6D84 800B6184 27A80024 */  addiu      $t0, $sp, 0x24
/* B6D88 800B6188 AD020090 */  sw         $v0, 0x90($t0)
/* B6D8C 800B618C 0C02A45C */  jal        func_800A9170
/* B6D90 800B6190 3C040404 */   lui       $a0, 0x404
/* B6D94 800B6194 27A90024 */  addiu      $t1, $sp, 0x24
/* B6D98 800B6198 AD220094 */  sw         $v0, 0x94($t1)
/* B6D9C 800B619C 3C040404 */  lui        $a0, 0x404
/* B6DA0 800B61A0 0C02A45C */  jal        func_800A9170
/* B6DA4 800B61A4 34840008 */   ori       $a0, $a0, 8
/* B6DA8 800B61A8 27AA0024 */  addiu      $t2, $sp, 0x24
/* B6DAC 800B61AC AD420098 */  sw         $v0, 0x98($t2)
/* B6DB0 800B61B0 0C02A45C */  jal        func_800A9170
/* B6DB4 800B61B4 3C040408 */   lui       $a0, 0x408
/* B6DB8 800B61B8 3C010400 */  lui        $at, 0x400
/* B6DBC 800B61BC 34211000 */  ori        $at, $at, 0x1000
/* B6DC0 800B61C0 00415821 */  addu       $t3, $v0, $at
/* B6DC4 800B61C4 27AC0024 */  addiu      $t4, $sp, 0x24
/* B6DC8 800B61C8 AD8B009C */  sw         $t3, 0x9c($t4)
/* B6DCC 800B61CC 3C040404 */  lui        $a0, 0x404
/* B6DD0 800B61D0 0C02A45C */  jal        func_800A9170
/* B6DD4 800B61D4 3484000C */   ori       $a0, $a0, 0xc
/* B6DD8 800B61D8 27AD0024 */  addiu      $t5, $sp, 0x24
/* B6DDC 800B61DC ADA200A0 */  sw         $v0, 0xa0($t5)
/* B6DE0 800B61E0 3C040404 */  lui        $a0, 0x404
/* B6DE4 800B61E4 0C02A45C */  jal        func_800A9170
/* B6DE8 800B61E8 34840010 */   ori       $a0, $a0, 0x10
/* B6DEC 800B61EC 27AE0024 */  addiu      $t6, $sp, 0x24
/* B6DF0 800B61F0 ADC200A4 */  sw         $v0, 0xa4($t6)
/* B6DF4 800B61F4 3C040404 */  lui        $a0, 0x404
/* B6DF8 800B61F8 0C02A45C */  jal        func_800A9170
/* B6DFC 800B61FC 34840014 */   ori       $a0, $a0, 0x14
/* B6E00 800B6200 27AF0024 */  addiu      $t7, $sp, 0x24
/* B6E04 800B6204 ADE200A8 */  sw         $v0, 0xa8($t7)
/* B6E08 800B6208 3C040404 */  lui        $a0, 0x404
/* B6E0C 800B620C 0C02A45C */  jal        func_800A9170
/* B6E10 800B6210 34840018 */   ori       $a0, $a0, 0x18
/* B6E14 800B6214 27B80024 */  addiu      $t8, $sp, 0x24
/* B6E18 800B6218 AF0200AC */  sw         $v0, 0xac($t8)
/* B6E1C 800B621C 27A40024 */  addiu      $a0, $sp, 0x24
/* B6E20 800B6220 240500B0 */  addiu      $a1, $zero, 0xb0
/* B6E24 800B6224 0C026833 */  jal        func_8009A0CC
/* B6E28 800B6228 24060001 */   addiu     $a2, $zero, 1
/* B6E2C 800B622C 10000003 */  b          .L800B623C
/* B6E30 800B6230 00001025 */   or        $v0, $zero, $zero
/* B6E34 800B6234 10000001 */  b          .L800B623C
/* B6E38 800B6238 00000000 */   nop
.L800B623C:
/* B6E3C 800B623C 8FBF001C */  lw         $ra, 0x1c($sp)
/* B6E40 800B6240 8FB00014 */  lw         $s0, 0x14($sp)
/* B6E44 800B6244 8FB10018 */  lw         $s1, 0x18($sp)
/* B6E48 800B6248 03E00008 */  jr         $ra
/* B6E4C 800B624C 27BD00D8 */   addiu     $sp, $sp, 0xd8
