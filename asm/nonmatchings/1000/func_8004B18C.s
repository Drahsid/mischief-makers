glabel func_8004B18C
/* 4BD8C 8004B18C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 4BD90 8004B190 AFA40028 */  sw         $a0, 0x28($sp)
/* 4BD94 8004B194 97AE002A */  lhu        $t6, 0x2a($sp)
/* 4BD98 8004B198 3C18800F */  lui        $t8, 0x800f
/* 4BD9C 8004B19C 000E7880 */  sll        $t7, $t6, 2
/* 4BDA0 8004B1A0 01EE7823 */  subu       $t7, $t7, $t6
/* 4BDA4 8004B1A4 000F7880 */  sll        $t7, $t7, 2
/* 4BDA8 8004B1A8 01EE7821 */  addu       $t7, $t7, $t6
/* 4BDAC 8004B1AC 000F7880 */  sll        $t7, $t7, 2
/* 4BDB0 8004B1B0 01EE7823 */  subu       $t7, $t7, $t6
/* 4BDB4 8004B1B4 AFB00018 */  sw         $s0, 0x18($sp)
/* 4BDB8 8004B1B8 000F78C0 */  sll        $t7, $t7, 3
/* 4BDBC 8004B1BC 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 4BDC0 8004B1C0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 4BDC4 8004B1C4 01F88021 */  addu       $s0, $t7, $t8
/* 4BDC8 8004B1C8 24190007 */  addiu      $t9, $zero, 7
/* 4BDCC 8004B1CC A619012C */  sh         $t9, 0x12c($s0)
/* 4BDD0 8004B1D0 0C012325 */  jal        func_80048C94
/* 4BDD4 8004B1D4 24040001 */   addiu     $a0, $zero, 1
/* 4BDD8 8004B1D8 8E080080 */  lw         $t0, 0x80($s0)
/* 4BDDC 8004B1DC 00402825 */  or         $a1, $v0, $zero
/* 4BDE0 8004B1E0 31090020 */  andi       $t1, $t0, 0x20
/* 4BDE4 8004B1E4 11200003 */  beqz       $t1, .L8004B1F4
/* 4BDE8 8004B1E8 00A02025 */   or        $a0, $a1, $zero
/* 4BDEC 8004B1EC 00022823 */  negu       $a1, $v0
/* 4BDF0 8004B1F0 00A02025 */  or         $a0, $a1, $zero
.L8004B1F4:
/* 4BDF4 8004B1F4 0C0171B4 */  jal        func_8005C6D0
/* 4BDF8 8004B1F8 AFA50024 */   sw        $a1, 0x24($sp)
/* 4BDFC 8004B1FC 8FA50024 */  lw         $a1, 0x24($sp)
/* 4BE00 8004B200 8E0400EC */  lw         $a0, 0xec($s0)
/* 4BE04 8004B204 04410003 */  bgez       $v0, .L8004B214
/* 4BE08 8004B208 000230C3 */   sra       $a2, $v0, 3
/* 4BE0C 8004B20C 24410007 */  addiu      $at, $v0, 7
/* 4BE10 8004B210 000130C3 */  sra        $a2, $at, 3
.L8004B214:
/* 4BE14 8004B214 0C00A607 */  jal        func_8002981C
/* 4BE18 8004B218 00000000 */   nop
/* 4BE1C 8004B21C 97A4002A */  lhu        $a0, 0x2a($sp)
/* 4BE20 8004B220 AE0200EC */  sw         $v0, 0xec($s0)
/* 4BE24 8004B224 0C0174DC */  jal        func_8005D370
/* 4BE28 8004B228 2405001D */   addiu     $a1, $zero, 0x1d
/* 4BE2C 8004B22C 820A0170 */  lb         $t2, 0x170($s0)
/* 4BE30 8004B230 00000000 */  nop
/* 4BE34 8004B234 15400009 */  bnez       $t2, .L8004B25C
/* 4BE38 8004B238 00000000 */   nop
/* 4BE3C 8004B23C 82020171 */  lb         $v0, 0x171($s0)
/* 4BE40 8004B240 24010002 */  addiu      $at, $zero, 2
/* 4BE44 8004B244 10410003 */  beq        $v0, $at, .L8004B254
/* 4BE48 8004B248 24010008 */   addiu     $at, $zero, 8
/* 4BE4C 8004B24C 14410003 */  bne        $v0, $at, .L8004B25C
/* 4BE50 8004B250 00000000 */   nop
.L8004B254:
/* 4BE54 8004B254 0C000CD3 */  jal        func_8000334C
/* 4BE58 8004B258 24040053 */   addiu     $a0, $zero, 0x53
.L8004B25C:
/* 4BE5C 8004B25C 3C028013 */  lui        $v0, %hi(D_801373D8)
/* 4BE60 8004B260 944273D8 */  lhu        $v0, %lo(D_801373D8)($v0)
/* 4BE64 8004B264 240D0003 */  addiu      $t5, $zero, 3
/* 4BE68 8004B268 304B0003 */  andi       $t3, $v0, 3
/* 4BE6C 8004B26C 11600003 */  beqz       $t3, .L8004B27C
/* 4BE70 8004B270 304C0080 */   andi      $t4, $v0, 0x80
/* 4BE74 8004B274 11800003 */  beqz       $t4, .L8004B284
/* 4BE78 8004B278 8FBF001C */   lw        $ra, 0x1c($sp)
.L8004B27C:
/* 4BE7C 8004B27C A60D00D0 */  sh         $t5, 0xd0($s0)
/* 4BE80 8004B280 8FBF001C */  lw         $ra, 0x1c($sp)
.L8004B284:
/* 4BE84 8004B284 8FB00018 */  lw         $s0, 0x18($sp)
/* 4BE88 8004B288 03E00008 */  jr         $ra
/* 4BE8C 8004B28C 27BD0028 */   addiu     $sp, $sp, 0x28
