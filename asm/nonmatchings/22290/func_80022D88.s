glabel func_80022D88
/* 23988 80022D88 3C01800C */  lui        $at, %hi(D_800BE4E8)
/* 2398C 80022D8C A420E4E8 */  sh         $zero, %lo(D_800BE4E8)($at)
/* 23990 80022D90 3C018013 */  lui        $at, %hi(D_80137D90)
/* 23994 80022D94 A4207D90 */  sh         $zero, %lo(D_80137D90)($at)
/* 23998 80022D98 3C01800D */  lui        $at, %hi(D_800CBF40)
/* 2399C 80022D9C A420BF40 */  sh         $zero, %lo(D_800CBF40)($at)
/* 239A0 80022DA0 3C01800D */  lui        $at, %hi(D_800CA230)
/* 239A4 80022DA4 A420A230 */  sh         $zero, %lo(D_800CA230)($at)
/* 239A8 80022DA8 3C01800C */  lui        $at, %hi(D_800BE4EC)
/* 239AC 80022DAC A420E4EC */  sh         $zero, %lo(D_800BE4EC)($at)
/* 239B0 80022DB0 3C01800C */  lui        $at, %hi(D_800BE670)
/* 239B4 80022DB4 A420E670 */  sh         $zero, %lo(D_800BE670)($at)
/* 239B8 80022DB8 3C01800C */  lui        $at, %hi(D_800BE66C)
/* 239BC 80022DBC A420E66C */  sh         $zero, %lo(D_800BE66C)($at)
/* 239C0 80022DC0 3C01800C */  lui        $at, %hi(D_800BE674)
/* 239C4 80022DC4 A420E674 */  sh         $zero, %lo(D_800BE674)($at)
/* 239C8 80022DC8 3C018013 */  lui        $at, %hi(D_8013747C)
/* 239CC 80022DCC A420747C */  sh         $zero, %lo(D_8013747C)($at)
/* 239D0 80022DD0 3C01800C */  lui        $at, %hi(D_800BE6FC)
/* 239D4 80022DD4 A420E6FC */  sh         $zero, %lo(D_800BE6FC)($at)
/* 239D8 80022DD8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 239DC 80022DDC 3C01800C */  lui        $at, %hi(D_800BE6AC)
/* 239E0 80022DE0 240E0004 */  addiu      $t6, $zero, 4
/* 239E4 80022DE4 AFB10020 */  sw         $s1, 0x20($sp)
/* 239E8 80022DE8 A42EE6AC */  sh         $t6, %lo(D_800BE6AC)($at)
/* 239EC 80022DEC 24110001 */  addiu      $s1, $zero, 1
/* 239F0 80022DF0 3C01800C */  lui        $at, %hi(D_800BE6B4)
/* 239F4 80022DF4 A431E6B4 */  sh         $s1, %lo(D_800BE6B4)($at)
/* 239F8 80022DF8 3C01800C */  lui        $at, %hi(D_800BE5A4)
/* 239FC 80022DFC 240F1234 */  addiu      $t7, $zero, 0x1234
/* 23A00 80022E00 A42FE5A4 */  sh         $t7, %lo(D_800BE5A4)($at)
/* 23A04 80022E04 3C01800C */  lui        $at, %hi(D_800BE594)
/* 23A08 80022E08 A420E594 */  sh         $zero, %lo(D_800BE594)($at)
/* 23A0C 80022E0C 3C01800C */  lui        $at, %hi(D_800BE590)
/* 23A10 80022E10 A420E590 */  sh         $zero, %lo(D_800BE590)($at)
/* 23A14 80022E14 3C01800C */  lui        $at, %hi(D_800BE678)
/* 23A18 80022E18 AFB0001C */  sw         $s0, 0x1c($sp)
/* 23A1C 80022E1C A420E678 */  sh         $zero, %lo(D_800BE678)($at)
/* 23A20 80022E20 241000FF */  addiu      $s0, $zero, 0xff
/* 23A24 80022E24 3C01800C */  lui        $at, %hi(D_800BE6F0)
/* 23A28 80022E28 3C18800F */  lui        $t8, %hi(D_800EF5F0)
/* 23A2C 80022E2C 8718F5F0 */  lh         $t8, %lo(D_800EF5F0)($t8)
/* 23A30 80022E30 A030E6F0 */  sb         $s0, %lo(D_800BE6F0)($at)
/* 23A34 80022E34 AFBF0024 */  sw         $ra, 0x24($sp)
/* 23A38 80022E38 3C01800C */  lui        $at, %hi(D_800BE63C)
/* 23A3C 80022E3C 0C000E8E */  jal        func_80003A38
/* 23A40 80022E40 A438E63C */   sh        $t8, %lo(D_800BE63C)($at)
/* 23A44 80022E44 0C000E99 */  jal        func_80003A64
/* 23A48 80022E48 00000000 */   nop
/* 23A4C 80022E4C 0C008C2E */  jal        func_800230B8
/* 23A50 80022E50 00000000 */   nop
/* 23A54 80022E54 0C008C4B */  jal        func_8002312C
/* 23A58 80022E58 00000000 */   nop
/* 23A5C 80022E5C 0C008C5A */  jal        func_80023168
/* 23A60 80022E60 00000000 */   nop
/* 23A64 80022E64 0C004284 */  jal        func_80010A10
/* 23A68 80022E68 00000000 */   nop
/* 23A6C 80022E6C 0C020C43 */  jal        func_8008310C
/* 23A70 80022E70 00000000 */   nop
/* 23A74 80022E74 24190015 */  addiu      $t9, $zero, 0x15
/* 23A78 80022E78 3C01800C */  lui        $at, %hi(D_800BE5D0)
/* 23A7C 80022E7C 0C00970E */  jal        func_80025C38
/* 23A80 80022E80 A439E5D0 */   sh        $t9, %lo(D_800BE5D0)($at)
/* 23A84 80022E84 0C010E46 */  jal        func_80043918
/* 23A88 80022E88 00000000 */   nop
/* 23A8C 80022E8C 3C04800C */  lui        $a0, %hi(D_800BE5D0)
/* 23A90 80022E90 9484E5D0 */  lhu        $a0, %lo(D_800BE5D0)($a0)
/* 23A94 80022E94 0C004308 */  jal        func_80010C20
/* 23A98 80022E98 00000000 */   nop
/* 23A9C 80022E9C 3C028038 */  lui        $v0, 0x8038
/* 23AA0 80022EA0 34420200 */  ori        $v0, $v0, 0x200
/* 23AA4 80022EA4 A4510004 */  sh         $s1, 4($v0)
/* 23AA8 80022EA8 A4510002 */  sh         $s1, 2($v0)
/* 23AAC 80022EAC AFA00010 */  sw         $zero, 0x10($sp)
/* 23AB0 80022EB0 24040002 */  addiu      $a0, $zero, 2
/* 23AB4 80022EB4 3225FFFF */  andi       $a1, $s1, 0xffff
/* 23AB8 80022EB8 00003025 */  or         $a2, $zero, $zero
/* 23ABC 80022EBC 0C00A098 */  jal        func_80028260
/* 23AC0 80022EC0 00003825 */   or        $a3, $zero, $zero
/* 23AC4 80022EC4 24040002 */  addiu      $a0, $zero, 2
/* 23AC8 80022EC8 24050002 */  addiu      $a1, $zero, 2
/* 23ACC 80022ECC 00003025 */  or         $a2, $zero, $zero
/* 23AD0 80022ED0 00003825 */  or         $a3, $zero, $zero
/* 23AD4 80022ED4 0C00A098 */  jal        func_80028260
/* 23AD8 80022ED8 AFA00010 */   sw        $zero, 0x10($sp)
/* 23ADC 80022EDC 3C068013 */  lui        $a2, 0x8013
/* 23AE0 80022EE0 3C058013 */  lui        $a1, %hi(D_801376AC)
/* 23AE4 80022EE4 3C048013 */  lui        $a0, %hi(D_801376A8)
/* 23AE8 80022EE8 3C038013 */  lui        $v1, %hi(D_801376BC)
/* 23AEC 80022EEC 246376BC */  addiu      $v1, $v1, %lo(D_801376BC)
/* 23AF0 80022EF0 248476A8 */  addiu      $a0, $a0, %lo(D_801376A8)
/* 23AF4 80022EF4 24A576AC */  addiu      $a1, $a1, %lo(D_801376AC)
/* 23AF8 80022EF8 24C676B0 */  addiu      $a2, $a2, 0x76b0
/* 23AFC 80022EFC 00001025 */  or         $v0, $zero, $zero
.L80022F00:
/* 23B00 80022F00 00624821 */  addu       $t1, $v1, $v0
/* 23B04 80022F04 00825021 */  addu       $t2, $a0, $v0
/* 23B08 80022F08 00A25821 */  addu       $t3, $a1, $v0
/* 23B0C 80022F0C 00C26021 */  addu       $t4, $a2, $v0
/* 23B10 80022F10 24420001 */  addiu      $v0, $v0, 1
/* 23B14 80022F14 A1310000 */  sb         $s1, ($t1)
/* 23B18 80022F18 304DFFFF */  andi       $t5, $v0, 0xffff
/* 23B1C 80022F1C A1500000 */  sb         $s0, ($t2)
/* 23B20 80022F20 29A10004 */  slti       $at, $t5, 4
/* 23B24 80022F24 A1700000 */  sb         $s0, ($t3)
/* 23B28 80022F28 01A01025 */  or         $v0, $t5, $zero
/* 23B2C 80022F2C 1420FFF4 */  bnez       $at, .L80022F00
/* 23B30 80022F30 A1900000 */   sb        $s0, ($t4)
/* 23B34 80022F34 8FBF0024 */  lw         $ra, 0x24($sp)
/* 23B38 80022F38 8FB0001C */  lw         $s0, 0x1c($sp)
/* 23B3C 80022F3C 8FB10020 */  lw         $s1, 0x20($sp)
/* 23B40 80022F40 03E00008 */  jr         $ra
/* 23B44 80022F44 27BD0028 */   addiu     $sp, $sp, 0x28
