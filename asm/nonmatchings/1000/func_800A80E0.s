glabel func_800A80E0
/* A8CE0 800A80E0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A8CE4 800A80E4 AFBF001C */  sw         $ra, 0x1c($sp)
/* A8CE8 800A80E8 AFA40030 */  sw         $a0, 0x30($sp)
/* A8CEC 800A80EC AFA50034 */  sw         $a1, 0x34($sp)
/* A8CF0 800A80F0 AFA60038 */  sw         $a2, 0x38($sp)
/* A8CF4 800A80F4 AFA7003C */  sw         $a3, 0x3c($sp)
/* A8CF8 800A80F8 AFB00018 */  sw         $s0, 0x18($sp)
/* A8CFC 800A80FC 8FAE0034 */  lw         $t6, 0x34($sp)
/* A8D00 800A8100 11C0000A */  beqz       $t6, .L800A812C
/* A8D04 800A8104 00000000 */   nop
/* A8D08 800A8108 24010001 */  addiu      $at, $zero, 1
/* A8D0C 800A810C 11C10007 */  beq        $t6, $at, .L800A812C
/* A8D10 800A8110 00000000 */   nop
/* A8D14 800A8114 24040015 */  addiu      $a0, $zero, 0x15
/* A8D18 800A8118 24050001 */  addiu      $a1, $zero, 1
/* A8D1C 800A811C 0C0297B4 */  jal        func_800A5ED0
/* A8D20 800A8120 8FA60034 */   lw        $a2, 0x34($sp)
/* A8D24 800A8124 100000CE */  b          .L800A8460
/* A8D28 800A8128 2402FFFF */   addiu     $v0, $zero, -1
.L800A812C:
/* A8D2C 800A812C 8FAF0038 */  lw         $t7, 0x38($sp)
/* A8D30 800A8130 31F80001 */  andi       $t8, $t7, 1
/* A8D34 800A8134 13000007 */  beqz       $t8, .L800A8154
/* A8D38 800A8138 00000000 */   nop
/* A8D3C 800A813C 24040016 */  addiu      $a0, $zero, 0x16
/* A8D40 800A8140 24050001 */  addiu      $a1, $zero, 1
/* A8D44 800A8144 0C0297B4 */  jal        func_800A5ED0
/* A8D48 800A8148 8FA60038 */   lw        $a2, 0x38($sp)
/* A8D4C 800A814C 100000C4 */  b          .L800A8460
/* A8D50 800A8150 2402FFFF */   addiu     $v0, $zero, -1
.L800A8154:
/* A8D54 800A8154 8FB9003C */  lw         $t9, 0x3c($sp)
/* A8D58 800A8158 33280007 */  andi       $t0, $t9, 7
/* A8D5C 800A815C 11000007 */  beqz       $t0, .L800A817C
/* A8D60 800A8160 00000000 */   nop
/* A8D64 800A8164 24040017 */  addiu      $a0, $zero, 0x17
/* A8D68 800A8168 24050001 */  addiu      $a1, $zero, 1
/* A8D6C 800A816C 0C0297B4 */  jal        func_800A5ED0
/* A8D70 800A8170 8FA6003C */   lw        $a2, 0x3c($sp)
/* A8D74 800A8174 100000BA */  b          .L800A8460
/* A8D78 800A8178 2402FFFF */   addiu     $v0, $zero, -1
.L800A817C:
/* A8D7C 800A817C 8FA90040 */  lw         $t1, 0x40($sp)
/* A8D80 800A8180 312A0001 */  andi       $t2, $t1, 1
/* A8D84 800A8184 11400007 */  beqz       $t2, .L800A81A4
/* A8D88 800A8188 00000000 */   nop
/* A8D8C 800A818C 24040018 */  addiu      $a0, $zero, 0x18
/* A8D90 800A8190 24050001 */  addiu      $a1, $zero, 1
/* A8D94 800A8194 0C0297B4 */  jal        func_800A5ED0
/* A8D98 800A8198 8FA60040 */   lw        $a2, 0x40($sp)
/* A8D9C 800A819C 100000B0 */  b          .L800A8460
/* A8DA0 800A81A0 2402FFFF */   addiu     $v0, $zero, -1
.L800A81A4:
/* A8DA4 800A81A4 8FAB0040 */  lw         $t3, 0x40($sp)
/* A8DA8 800A81A8 11600006 */  beqz       $t3, .L800A81C4
/* A8DAC 800A81AC 00000000 */   nop
/* A8DB0 800A81B0 3C010100 */  lui        $at, 0x100
/* A8DB4 800A81B4 34210001 */  ori        $at, $at, 1
/* A8DB8 800A81B8 0161082B */  sltu       $at, $t3, $at
/* A8DBC 800A81BC 14200007 */  bnez       $at, .L800A81DC
/* A8DC0 800A81C0 00000000 */   nop
.L800A81C4:
/* A8DC4 800A81C4 24040019 */  addiu      $a0, $zero, 0x19
/* A8DC8 800A81C8 24050001 */  addiu      $a1, $zero, 1
/* A8DCC 800A81CC 0C0297B4 */  jal        func_800A5ED0
/* A8DD0 800A81D0 8FA60040 */   lw        $a2, 0x40($sp)
/* A8DD4 800A81D4 100000A2 */  b          .L800A8460
/* A8DD8 800A81D8 2402FFFF */   addiu     $v0, $zero, -1
.L800A81DC:
/* A8DDC 800A81DC 3C0CA460 */  lui        $t4, %hi(D_A4600010)
/* A8DE0 800A81E0 8D8D0010 */  lw         $t5, %lo(D_A4600010)($t4)
/* A8DE4 800A81E4 AFAD002C */  sw         $t5, 0x2c($sp)
/* A8DE8 800A81E8 8FAE002C */  lw         $t6, 0x2c($sp)
/* A8DEC 800A81EC 31CF0003 */  andi       $t7, $t6, 3
/* A8DF0 800A81F0 11E00008 */  beqz       $t7, .L800A8214
/* A8DF4 800A81F4 00000000 */   nop
.L800A81F8:
/* A8DF8 800A81F8 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* A8DFC 800A81FC 8F190010 */  lw         $t9, %lo(D_A4600010)($t8)
/* A8E00 800A8200 AFB9002C */  sw         $t9, 0x2c($sp)
/* A8E04 800A8204 8FA8002C */  lw         $t0, 0x2c($sp)
/* A8E08 800A8208 31090003 */  andi       $t1, $t0, 3
/* A8E0C 800A820C 1520FFFA */  bnez       $t1, .L800A81F8
/* A8E10 800A8210 00000000 */   nop
.L800A8214:
/* A8E14 800A8214 8FAA0030 */  lw         $t2, 0x30($sp)
/* A8E18 800A8218 914B0009 */  lbu        $t3, 9($t2)
/* A8E1C 800A821C AFAB0028 */  sw         $t3, 0x28($sp)
/* A8E20 800A8220 8FAC0028 */  lw         $t4, 0x28($sp)
/* A8E24 800A8224 3C0E800F */  lui        $t6, %hi(D_800EA4F0)
/* A8E28 800A8228 8FAF0030 */  lw         $t7, 0x30($sp)
/* A8E2C 800A822C 000C6880 */  sll        $t5, $t4, 2
/* A8E30 800A8230 01CD7021 */  addu       $t6, $t6, $t5
/* A8E34 800A8234 8DCEA4F0 */  lw         $t6, %lo(D_800EA4F0)($t6)
/* A8E38 800A8238 11CF0062 */  beq        $t6, $t7, .L800A83C4
/* A8E3C 800A823C 00000000 */   nop
/* A8E40 800A8240 8FB80028 */  lw         $t8, 0x28($sp)
/* A8E44 800A8244 3C08800F */  lui        $t0, %hi(D_800EA4F0)
/* A8E48 800A8248 0018C880 */  sll        $t9, $t8, 2
/* A8E4C 800A824C 01194021 */  addu       $t0, $t0, $t9
/* A8E50 800A8250 8D08A4F0 */  lw         $t0, %lo(D_800EA4F0)($t0)
/* A8E54 800A8254 AFA80024 */  sw         $t0, 0x24($sp)
/* A8E58 800A8258 8FA90028 */  lw         $t1, 0x28($sp)
/* A8E5C 800A825C 1520002B */  bnez       $t1, .L800A830C
/* A8E60 800A8260 00000000 */   nop
/* A8E64 800A8264 8FAA0024 */  lw         $t2, 0x24($sp)
/* A8E68 800A8268 8FAC0030 */  lw         $t4, 0x30($sp)
/* A8E6C 800A826C 914B0005 */  lbu        $t3, 5($t2)
/* A8E70 800A8270 918D0005 */  lbu        $t5, 5($t4)
/* A8E74 800A8274 116D0005 */  beq        $t3, $t5, .L800A828C
/* A8E78 800A8278 00000000 */   nop
/* A8E7C 800A827C 8FAE0030 */  lw         $t6, 0x30($sp)
/* A8E80 800A8280 3C18A460 */  lui        $t8, %hi(D_A4600014)
/* A8E84 800A8284 91CF0005 */  lbu        $t7, 5($t6)
/* A8E88 800A8288 AF0F0014 */  sw         $t7, %lo(D_A4600014)($t8)
.L800A828C:
/* A8E8C 800A828C 8FB90024 */  lw         $t9, 0x24($sp)
/* A8E90 800A8290 8FA90030 */  lw         $t1, 0x30($sp)
/* A8E94 800A8294 93280006 */  lbu        $t0, 6($t9)
/* A8E98 800A8298 912A0006 */  lbu        $t2, 6($t1)
/* A8E9C 800A829C 110A0005 */  beq        $t0, $t2, .L800A82B4
/* A8EA0 800A82A0 00000000 */   nop
/* A8EA4 800A82A4 8FAC0030 */  lw         $t4, 0x30($sp)
/* A8EA8 800A82A8 3C0DA460 */  lui        $t5, %hi(D_A460001C)
/* A8EAC 800A82AC 918B0006 */  lbu        $t3, 6($t4)
/* A8EB0 800A82B0 ADAB001C */  sw         $t3, %lo(D_A460001C)($t5)
.L800A82B4:
/* A8EB4 800A82B4 8FAE0024 */  lw         $t6, 0x24($sp)
/* A8EB8 800A82B8 8FB80030 */  lw         $t8, 0x30($sp)
/* A8EBC 800A82BC 91CF0007 */  lbu        $t7, 7($t6)
/* A8EC0 800A82C0 93190007 */  lbu        $t9, 7($t8)
/* A8EC4 800A82C4 11F90005 */  beq        $t7, $t9, .L800A82DC
/* A8EC8 800A82C8 00000000 */   nop
/* A8ECC 800A82CC 8FA90030 */  lw         $t1, 0x30($sp)
/* A8ED0 800A82D0 3C0AA460 */  lui        $t2, %hi(D_A4600020)
/* A8ED4 800A82D4 91280007 */  lbu        $t0, 7($t1)
/* A8ED8 800A82D8 AD480020 */  sw         $t0, %lo(D_A4600020)($t2)
.L800A82DC:
/* A8EDC 800A82DC 8FAC0024 */  lw         $t4, 0x24($sp)
/* A8EE0 800A82E0 8FAD0030 */  lw         $t5, 0x30($sp)
/* A8EE4 800A82E4 918B0008 */  lbu        $t3, 8($t4)
/* A8EE8 800A82E8 91AE0008 */  lbu        $t6, 8($t5)
/* A8EEC 800A82EC 116E0005 */  beq        $t3, $t6, .L800A8304
/* A8EF0 800A82F0 00000000 */   nop
/* A8EF4 800A82F4 8FB80030 */  lw         $t8, 0x30($sp)
/* A8EF8 800A82F8 3C19A460 */  lui        $t9, %hi(D_A4600018)
/* A8EFC 800A82FC 930F0008 */  lbu        $t7, 8($t8)
/* A8F00 800A8300 AF2F0018 */  sw         $t7, %lo(D_A4600018)($t9)
.L800A8304:
/* A8F04 800A8304 10000029 */  b          .L800A83AC
/* A8F08 800A8308 00000000 */   nop
.L800A830C:
/* A8F0C 800A830C 8FA90024 */  lw         $t1, 0x24($sp)
/* A8F10 800A8310 8FAA0030 */  lw         $t2, 0x30($sp)
/* A8F14 800A8314 91280005 */  lbu        $t0, 5($t1)
/* A8F18 800A8318 914C0005 */  lbu        $t4, 5($t2)
/* A8F1C 800A831C 110C0005 */  beq        $t0, $t4, .L800A8334
/* A8F20 800A8320 00000000 */   nop
/* A8F24 800A8324 8FAD0030 */  lw         $t5, 0x30($sp)
/* A8F28 800A8328 3C0EA460 */  lui        $t6, %hi(D_A4600024)
/* A8F2C 800A832C 91AB0005 */  lbu        $t3, 5($t5)
/* A8F30 800A8330 ADCB0024 */  sw         $t3, %lo(D_A4600024)($t6)
.L800A8334:
/* A8F34 800A8334 8FB80024 */  lw         $t8, 0x24($sp)
/* A8F38 800A8338 8FB90030 */  lw         $t9, 0x30($sp)
/* A8F3C 800A833C 930F0006 */  lbu        $t7, 6($t8)
/* A8F40 800A8340 93290006 */  lbu        $t1, 6($t9)
/* A8F44 800A8344 11E90005 */  beq        $t7, $t1, .L800A835C
/* A8F48 800A8348 00000000 */   nop
/* A8F4C 800A834C 8FAA0030 */  lw         $t2, 0x30($sp)
/* A8F50 800A8350 3C0CA460 */  lui        $t4, %hi(D_A460002C)
/* A8F54 800A8354 91480006 */  lbu        $t0, 6($t2)
/* A8F58 800A8358 AD88002C */  sw         $t0, %lo(D_A460002C)($t4)
.L800A835C:
/* A8F5C 800A835C 8FAD0024 */  lw         $t5, 0x24($sp)
/* A8F60 800A8360 8FAE0030 */  lw         $t6, 0x30($sp)
/* A8F64 800A8364 91AB0007 */  lbu        $t3, 7($t5)
/* A8F68 800A8368 91D80007 */  lbu        $t8, 7($t6)
/* A8F6C 800A836C 11780005 */  beq        $t3, $t8, .L800A8384
/* A8F70 800A8370 00000000 */   nop
/* A8F74 800A8374 8FB90030 */  lw         $t9, 0x30($sp)
/* A8F78 800A8378 3C09A460 */  lui        $t1, %hi(D_A4600030)
/* A8F7C 800A837C 932F0007 */  lbu        $t7, 7($t9)
/* A8F80 800A8380 AD2F0030 */  sw         $t7, %lo(D_A4600030)($t1)
.L800A8384:
/* A8F84 800A8384 8FAA0024 */  lw         $t2, 0x24($sp)
/* A8F88 800A8388 8FAC0030 */  lw         $t4, 0x30($sp)
/* A8F8C 800A838C 91480008 */  lbu        $t0, 8($t2)
/* A8F90 800A8390 918D0008 */  lbu        $t5, 8($t4)
/* A8F94 800A8394 110D0005 */  beq        $t0, $t5, .L800A83AC
/* A8F98 800A8398 00000000 */   nop
/* A8F9C 800A839C 8FAE0030 */  lw         $t6, 0x30($sp)
/* A8FA0 800A83A0 3C18A460 */  lui        $t8, %hi(D_A4600028)
/* A8FA4 800A83A4 91CB0008 */  lbu        $t3, 8($t6)
/* A8FA8 800A83A8 AF0B0028 */  sw         $t3, %lo(D_A4600028)($t8)
.L800A83AC:
/* A8FAC 800A83AC 8FAF0028 */  lw         $t7, 0x28($sp)
/* A8FB0 800A83B0 8FB90030 */  lw         $t9, 0x30($sp)
/* A8FB4 800A83B4 3C01800F */  lui        $at, %hi(D_800EA4F0)
/* A8FB8 800A83B8 000F4880 */  sll        $t1, $t7, 2
/* A8FBC 800A83BC 00290821 */  addu       $at, $at, $t1
/* A8FC0 800A83C0 AC39A4F0 */  sw         $t9, %lo(D_800EA4F0)($at)
.L800A83C4:
/* A8FC4 800A83C4 0C026964 */  jal        func_8009A590
/* A8FC8 800A83C8 8FA4003C */   lw        $a0, 0x3c($sp)
/* A8FCC 800A83CC 3C0AA460 */  lui        $t2, 0xa460
/* A8FD0 800A83D0 AD420000 */  sw         $v0, ($t2)
/* A8FD4 800A83D4 8FAC0030 */  lw         $t4, 0x30($sp)
/* A8FD8 800A83D8 8FAD0038 */  lw         $t5, 0x38($sp)
/* A8FDC 800A83DC 3C011FFF */  lui        $at, 0x1fff
/* A8FE0 800A83E0 8D88000C */  lw         $t0, 0xc($t4)
/* A8FE4 800A83E4 3421FFFF */  ori        $at, $at, 0xffff
/* A8FE8 800A83E8 3C18A460 */  lui        $t8, %hi(D_A4600004)
/* A8FEC 800A83EC 010D7025 */  or         $t6, $t0, $t5
/* A8FF0 800A83F0 01C15824 */  and        $t3, $t6, $at
/* A8FF4 800A83F4 AF0B0004 */  sw         $t3, %lo(D_A4600004)($t8)
/* A8FF8 800A83F8 8FB00034 */  lw         $s0, 0x34($sp)
/* A8FFC 800A83FC 12000006 */  beqz       $s0, .L800A8418
/* A9000 800A8400 00000000 */   nop
/* A9004 800A8404 24010001 */  addiu      $at, $zero, 1
/* A9008 800A8408 12010009 */  beq        $s0, $at, .L800A8430
/* A900C 800A840C 00000000 */   nop
/* A9010 800A8410 1000000D */  b          .L800A8448
/* A9014 800A8414 00000000 */   nop
.L800A8418:
/* A9018 800A8418 8FAF0040 */  lw         $t7, 0x40($sp)
/* A901C 800A841C 3C09A460 */  lui        $t1, %hi(D_A460000C)
/* A9020 800A8420 25F9FFFF */  addiu      $t9, $t7, -1
/* A9024 800A8424 AD39000C */  sw         $t9, %lo(D_A460000C)($t1)
/* A9028 800A8428 10000009 */  b          .L800A8450
/* A902C 800A842C 00000000 */   nop
.L800A8430:
/* A9030 800A8430 8FAA0040 */  lw         $t2, 0x40($sp)
/* A9034 800A8434 3C08A460 */  lui        $t0, %hi(D_A4600008)
/* A9038 800A8438 254CFFFF */  addiu      $t4, $t2, -1
/* A903C 800A843C AD0C0008 */  sw         $t4, %lo(D_A4600008)($t0)
/* A9040 800A8440 10000003 */  b          .L800A8450
/* A9044 800A8444 00000000 */   nop
.L800A8448:
/* A9048 800A8448 10000005 */  b          .L800A8460
/* A904C 800A844C 2402FFFF */   addiu     $v0, $zero, -1
.L800A8450:
/* A9050 800A8450 10000003 */  b          .L800A8460
/* A9054 800A8454 00001025 */   or        $v0, $zero, $zero
/* A9058 800A8458 10000001 */  b          .L800A8460
/* A905C 800A845C 00000000 */   nop
.L800A8460:
/* A9060 800A8460 8FBF001C */  lw         $ra, 0x1c($sp)
/* A9064 800A8464 8FB00018 */  lw         $s0, 0x18($sp)
/* A9068 800A8468 27BD0030 */  addiu      $sp, $sp, 0x30
/* A906C 800A846C 03E00008 */  jr         $ra
/* A9070 800A8470 00000000 */   nop
/* A9074 800A8474 00000000 */  nop
/* A9078 800A8478 00000000 */  nop
/* A907C 800A847C 00000000 */  nop
