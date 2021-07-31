glabel func_8001CE04
/* 1DA04 8001CE04 3C0E800C */  lui        $t6, %hi(gGameSubState)
/* 1DA08 8001CE08 95CEE4F4 */  lhu        $t6, %lo(gGameSubState)($t6)
/* 1DA0C 8001CE0C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1DA10 8001CE10 29C10081 */  slti       $at, $t6, 0x81
/* 1DA14 8001CE14 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1DA18 8001CE18 AFB10018 */  sw         $s1, 0x18($sp)
/* 1DA1C 8001CE1C 14200038 */  bnez       $at, .L8001CF00
/* 1DA20 8001CE20 AFB00014 */   sw        $s0, 0x14($sp)
/* 1DA24 8001CE24 3C02800C */  lui        $v0, %hi(gButtonPress)
/* 1DA28 8001CE28 3C0F800C */  lui        $t7, %hi(gButton_Start)
/* 1DA2C 8001CE2C 95EFE500 */  lhu        $t7, %lo(gButton_Start)($t7)
/* 1DA30 8001CE30 9442E4FC */  lhu        $v0, %lo(gButtonPress)($v0)
/* 1DA34 8001CE34 3C19800C */  lui        $t9, %hi(gButton_A)
/* 1DA38 8001CE38 004FC024 */  and        $t8, $v0, $t7
/* 1DA3C 8001CE3C 1700000B */  bnez       $t8, .L8001CE6C
/* 1DA40 8001CE40 00000000 */   nop
/* 1DA44 8001CE44 9739E518 */  lhu        $t9, %lo(gButton_A)($t9)
/* 1DA48 8001CE48 3C09800C */  lui        $t1, %hi(gButton_B)
/* 1DA4C 8001CE4C 00594024 */  and        $t0, $v0, $t9
/* 1DA50 8001CE50 15000006 */  bnez       $t0, .L8001CE6C
/* 1DA54 8001CE54 00000000 */   nop
/* 1DA58 8001CE58 9529E514 */  lhu        $t1, %lo(gButton_B)($t1)
/* 1DA5C 8001CE5C 00000000 */  nop
/* 1DA60 8001CE60 00495024 */  and        $t2, $v0, $t1
/* 1DA64 8001CE64 11400027 */  beqz       $t2, .L8001CF04
/* 1DA68 8001CE68 8FBF001C */   lw        $ra, 0x1c($sp)
.L8001CE6C:
/* 1DA6C 8001CE6C 0C00729A */  jal        func_8001CA68
/* 1DA70 8001CE70 00000000 */   nop
/* 1DA74 8001CE74 0C00730D */  jal        func_8001CC34
/* 1DA78 8001CE78 00000000 */   nop
/* 1DA7C 8001CE7C 3C10800F */  lui        $s0, %hi(D_800F7510)
/* 1DA80 8001CE80 26107510 */  addiu      $s0, $s0, %lo(D_800F7510)
/* 1DA84 8001CE84 244BFFF8 */  addiu      $t3, $v0, -8
/* 1DA88 8001CE88 A7A20026 */  sh         $v0, 0x26($sp)
/* 1DA8C 8001CE8C 0C007323 */  jal        func_8001CC8C
/* 1DA90 8001CE90 AE0B33D4 */   sw        $t3, 0x33d4($s0)
/* 1DA94 8001CE94 97B10026 */  lhu        $s1, 0x26($sp)
/* 1DA98 8001CE98 00000000 */  nop
/* 1DA9C 8001CE9C 0051082A */  slt        $at, $v0, $s1
/* 1DAA0 8001CEA0 10200009 */  beqz       $at, .L8001CEC8
/* 1DAA4 8001CEA4 00000000 */   nop
.L8001CEA8:
/* 1DAA8 8001CEA8 8E0C33D4 */  lw         $t4, 0x33d4($s0)
/* 1DAAC 8001CEAC 00000000 */  nop
/* 1DAB0 8001CEB0 258D0001 */  addiu      $t5, $t4, 1
/* 1DAB4 8001CEB4 0C007323 */  jal        func_8001CC8C
/* 1DAB8 8001CEB8 AE0D33D4 */   sw        $t5, 0x33d4($s0)
/* 1DABC 8001CEBC 0051082A */  slt        $at, $v0, $s1
/* 1DAC0 8001CEC0 1420FFF9 */  bnez       $at, .L8001CEA8
/* 1DAC4 8001CEC4 00000000 */   nop
.L8001CEC8:
/* 1DAC8 8001CEC8 960433D6 */  lhu        $a0, 0x33d6($s0)
/* 1DACC 8001CECC 0C00734C */  jal        func_8001CD30
/* 1DAD0 8001CED0 00000000 */   nop
/* 1DAD4 8001CED4 3C02800F */  lui        $v0, %hi(gActors)
/* 1DAD8 8001CED8 2442F510 */  addiu      $v0, $v0, %lo(gActors)
/* 1DADC 8001CEDC 240E0020 */  addiu      $t6, $zero, 0x20
/* 1DAE0 8001CEE0 240FFFE4 */  addiu      $t7, $zero, -0x1c
/* 1DAE4 8001CEE4 A44E503C */  sh         $t6, 0x503c($v0)
/* 1DAE8 8001CEE8 A44F51D4 */  sh         $t7, 0x51d4($v0)
/* 1DAEC 8001CEEC 0C000CD3 */  jal        SFX_Play_1
/* 1DAF0 8001CEF0 24040023 */   addiu     $a0, $zero, 0x23
/* 1DAF4 8001CEF4 24180010 */  addiu      $t8, $zero, 0x10
/* 1DAF8 8001CEF8 3C01800C */  lui        $at, %hi(gGameSubState)
/* 1DAFC 8001CEFC A438E4F4 */  sh         $t8, %lo(gGameSubState)($at)
.L8001CF00:
/* 1DB00 8001CF00 8FBF001C */  lw         $ra, 0x1c($sp)
.L8001CF04:
/* 1DB04 8001CF04 8FB00014 */  lw         $s0, 0x14($sp)
/* 1DB08 8001CF08 8FB10018 */  lw         $s1, 0x18($sp)
/* 1DB0C 8001CF0C 03E00008 */  jr         $ra
/* 1DB10 8001CF10 27BD0028 */   addiu     $sp, $sp, 0x28
