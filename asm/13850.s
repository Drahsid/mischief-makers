.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80012C50
/* 13850 80012C50 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13854 80012C54 AFA50024 */  sw         $a1, 0x24($sp)
/* 13858 80012C58 AFA40020 */  sw         $a0, 0x20($sp)
/* 1385C 80012C5C AFA60028 */  sw         $a2, 0x28($sp)
/* 13860 80012C60 30C7FFFF */  andi       $a3, $a2, 0xffff
/* 13864 80012C64 97A60026 */  lhu        $a2, 0x26($sp)
/* 13868 80012C68 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1386C 80012C6C 97A40022 */  lhu        $a0, 0x22($sp)
/* 13870 80012C70 3C05800E */  lui        $a1, %hi(D_800E13DC)
/* 13874 80012C74 240E0403 */  addiu      $t6, $zero, 0x403
/* 13878 80012C78 AFAE0010 */  sw         $t6, 0x10($sp)
/* 1387C 80012C7C 0C009D44 */  jal        func_80027510
/* 13880 80012C80 24A513DC */   addiu     $a1, $a1, %lo(D_800E13DC)
/* 13884 80012C84 97AF0022 */  lhu        $t7, 0x22($sp)
/* 13888 80012C88 3C19800F */  lui        $t9, 0x800f
/* 1388C 80012C8C 000FC080 */  sll        $t8, $t7, 2
/* 13890 80012C90 030FC023 */  subu       $t8, $t8, $t7
/* 13894 80012C94 0018C080 */  sll        $t8, $t8, 2
/* 13898 80012C98 030FC021 */  addu       $t8, $t8, $t7
/* 1389C 80012C9C 0018C080 */  sll        $t8, $t8, 2
/* 138A0 80012CA0 030FC023 */  subu       $t8, $t8, $t7
/* 138A4 80012CA4 0018C0C0 */  sll        $t8, $t8, 3
/* 138A8 80012CA8 2739F510 */  addiu      $t9, $t9, -0xaf0
/* 138AC 80012CAC 03191021 */  addu       $v0, $t8, $t9
/* 138B0 80012CB0 94480094 */  lhu        $t0, 0x94($v0)
/* 138B4 80012CB4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 138B8 80012CB8 3C0A800E */  lui        $t2, %hi(D_800D88B8)
/* 138BC 80012CBC 254A88B8 */  addiu      $t2, $t2, %lo(D_800D88B8)
/* 138C0 80012CC0 35090200 */  ori        $t1, $t0, 0x200
/* 138C4 80012CC4 A4490094 */  sh         $t1, 0x94($v0)
/* 138C8 80012CC8 AC4A018C */  sw         $t2, 0x18c($v0)
/* 138CC 80012CCC 03E00008 */  jr         $ra
/* 138D0 80012CD0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80012CD4
/* 138D4 80012CD4 3C04800F */  lui        $a0, %hi(gActors)
/* 138D8 80012CD8 2484F510 */  addiu      $a0, $a0, %lo(gActors)
/* 138DC 80012CDC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 138E0 80012CE0 AFBF002C */  sw         $ra, 0x2c($sp)
/* 138E4 80012CE4 AC805030 */  sw         $zero, 0x5030($a0)
/* 138E8 80012CE8 AC804E98 */  sw         $zero, 0x4e98($a0)
/* 138EC 80012CEC 24020041 */  addiu      $v0, $zero, 0x41
/* 138F0 80012CF0 24030198 */  addiu      $v1, $zero, 0x198
.L80012CF4:
/* 138F4 80012CF4 00430019 */  multu      $v0, $v1
/* 138F8 80012CF8 24420001 */  addiu      $v0, $v0, 1
/* 138FC 80012CFC 3059FFFF */  andi       $t9, $v0, 0xffff
/* 13900 80012D00 2B210062 */  slti       $at, $t9, 0x62
/* 13904 80012D04 03201025 */  or         $v0, $t9, $zero
/* 13908 80012D08 00007812 */  mflo       $t7
/* 1390C 80012D0C 008FC021 */  addu       $t8, $a0, $t7
/* 13910 80012D10 1420FFF8 */  bnez       $at, .L80012CF4
/* 13914 80012D14 AF000080 */   sw        $zero, 0x80($t8)
/* 13918 80012D18 3C013F80 */  lui        $at, 0x3f80
/* 1391C 80012D1C 44810000 */  mtc1       $at, $f0
/* 13920 80012D20 3C05800C */  lui        $a1, 0x800c
/* 13924 80012D24 24080403 */  addiu      $t0, $zero, 0x403
/* 13928 80012D28 24090040 */  addiu      $t1, $zero, 0x40
/* 1392C 80012D2C 240A0040 */  addiu      $t2, $zero, 0x40
/* 13930 80012D30 AFAA001C */  sw         $t2, 0x1c($sp)
/* 13934 80012D34 AFA90018 */  sw         $t1, 0x18($sp)
/* 13938 80012D38 AFA80010 */  sw         $t0, 0x10($sp)
/* 1393C 80012D3C 24A57E14 */  addiu      $a1, $a1, 0x7e14
/* 13940 80012D40 24040033 */  addiu      $a0, $zero, 0x33
/* 13944 80012D44 3406FFA0 */  ori        $a2, $zero, 0xffa0
/* 13948 80012D48 24070050 */  addiu      $a3, $zero, 0x50
/* 1394C 80012D4C AFA00014 */  sw         $zero, 0x14($sp)
/* 13950 80012D50 E7A00020 */  swc1       $f0, 0x20($sp)
/* 13954 80012D54 0C009F65 */  jal        func_80027D94
/* 13958 80012D58 E7A00024 */   swc1      $f0, 0x24($sp)
/* 1395C 80012D5C 240B0402 */  addiu      $t3, $zero, 0x402
/* 13960 80012D60 AFAB0010 */  sw         $t3, 0x10($sp)
/* 13964 80012D64 24040030 */  addiu      $a0, $zero, 0x30
/* 13968 80012D68 24050262 */  addiu      $a1, $zero, 0x262
/* 1396C 80012D6C 3406FFFE */  ori        $a2, $zero, 0xfffe
/* 13970 80012D70 0C009CFF */  jal        func_800273FC
/* 13974 80012D74 24070003 */   addiu     $a3, $zero, 3
/* 13978 80012D78 3C0C800F */  lui        $t4, %hi(D_800F4224)
/* 1397C 80012D7C 958C4224 */  lhu        $t4, %lo(D_800F4224)($t4)
/* 13980 80012D80 3C0140C0 */  lui        $at, 0x40c0
/* 13984 80012D84 44810000 */  mtc1       $at, $f0
/* 13988 80012D88 3C01800F */  lui        $at, %hi(D_800F4224)
/* 1398C 80012D8C 358D100F */  ori        $t5, $t4, 0x100f
/* 13990 80012D90 A42D4224 */  sh         $t5, %lo(D_800F4224)($at)
/* 13994 80012D94 3C01800F */  lui        $at, %hi(D_800F4244)
/* 13998 80012D98 E4204244 */  swc1       $f0, %lo(D_800F4244)($at)
/* 1399C 80012D9C 3C01800F */  lui        $at, %hi(D_800F42BC)
/* 139A0 80012DA0 E42042BC */  swc1       $f0, %lo(D_800F42BC)($at)
/* 139A4 80012DA4 3C0142B4 */  lui        $at, 0x42b4
/* 139A8 80012DA8 44812000 */  mtc1       $at, $f4
/* 139AC 80012DAC 3C01800F */  lui        $at, %hi(D_800F424C)
/* 139B0 80012DB0 E424424C */  swc1       $f4, %lo(D_800F424C)($at)
/* 139B4 80012DB4 3C01800F */  lui        $at, %hi(D_800F422F)
/* 139B8 80012DB8 A020422F */  sb         $zero, %lo(D_800F422F)($at)
/* 139BC 80012DBC 0C000AD4 */  jal        func_80002B50
/* 139C0 80012DC0 24040019 */   addiu     $a0, $zero, 0x19
/* 139C4 80012DC4 3C02800C */  lui        $v0, %hi(gGameSubState)
/* 139C8 80012DC8 240E02C0 */  addiu      $t6, $zero, 0x2c0
/* 139CC 80012DCC 3C018018 */  lui        $at, %hi(D_80178130)
/* 139D0 80012DD0 2442E4F4 */  addiu      $v0, $v0, %lo(gGameSubState)
/* 139D4 80012DD4 A42E8130 */  sh         $t6, %lo(D_80178130)($at)
/* 139D8 80012DD8 944F0000 */  lhu        $t7, ($v0)
/* 139DC 80012DDC 8FBF002C */  lw         $ra, 0x2c($sp)
/* 139E0 80012DE0 25F80001 */  addiu      $t8, $t7, 1
/* 139E4 80012DE4 A4580000 */  sh         $t8, ($v0)
/* 139E8 80012DE8 03E00008 */  jr         $ra
/* 139EC 80012DEC 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80012DF0
/* 139F0 80012DF0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 139F4 80012DF4 3C0F8018 */  lui        $t7, %hi(gRedGems)
/* 139F8 80012DF8 95EF8136 */  lhu        $t7, %lo(gRedGems)($t7)
/* 139FC 80012DFC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 13A00 80012E00 01EE082A */  slt        $at, $t7, $t6
/* 13A04 80012E04 AFBF0044 */  sw         $ra, 0x44($sp)
/* 13A08 80012E08 AFBE0040 */  sw         $fp, 0x40($sp)
/* 13A0C 80012E0C AFB7003C */  sw         $s7, 0x3c($sp)
/* 13A10 80012E10 AFB60038 */  sw         $s6, 0x38($sp)
/* 13A14 80012E14 AFB50034 */  sw         $s5, 0x34($sp)
/* 13A18 80012E18 AFB40030 */  sw         $s4, 0x30($sp)
/* 13A1C 80012E1C AFB3002C */  sw         $s3, 0x2c($sp)
/* 13A20 80012E20 AFB20028 */  sw         $s2, 0x28($sp)
/* 13A24 80012E24 AFB10024 */  sw         $s1, 0x24($sp)
/* 13A28 80012E28 AFB00020 */  sw         $s0, 0x20($sp)
/* 13A2C 80012E2C 1420004C */  bnez       $at, .L80012F60
/* 13A30 80012E30 AFA40048 */   sw        $a0, 0x48($sp)
/* 13A34 80012E34 2401000A */  addiu      $at, $zero, 0xa
/* 13A38 80012E38 01C1001A */  div        $zero, $t6, $at
/* 13A3C 80012E3C 3C018018 */  lui        $at, 0x8018
/* 13A40 80012E40 3C12800F */  lui        $s2, %hi(gActors)
/* 13A44 80012E44 3C14800E */  lui        $s4, 0x800e
/* 13A48 80012E48 3C1EFFFE */  lui        $fp, 0xfffe
/* 13A4C 80012E4C 3C15800E */  lui        $s5, %hi(D_800E13DC)
/* 13A50 80012E50 2652F510 */  addiu      $s2, $s2, %lo(gActors)
/* 13A54 80012E54 24100030 */  addiu      $s0, $zero, 0x30
/* 13A58 80012E58 24130198 */  addiu      $s3, $zero, 0x198
/* 13A5C 80012E5C 26B513DC */  addiu      $s5, $s5, %lo(D_800E13DC)
/* 13A60 80012E60 37DEFC41 */  ori        $fp, $fp, 0xfc41
/* 13A64 80012E64 269488B8 */  addiu      $s4, $s4, -0x7748
/* 13A68 80012E68 24110041 */  addiu      $s1, $zero, 0x41
/* 13A6C 80012E6C 241703FF */  addiu      $s7, $zero, 0x3ff
/* 13A70 80012E70 241600C0 */  addiu      $s6, $zero, 0xc0
/* 13A74 80012E74 0000C012 */  mflo       $t8
/* 13A78 80012E78 A4388138 */  sh         $t8, -0x7ec8($at)
/* 13A7C 80012E7C 00000000 */  nop
.L80012E80:
/* 13A80 80012E80 02130019 */  multu      $s0, $s3
/* 13A84 80012E84 26100001 */  addiu      $s0, $s0, 1
/* 13A88 80012E88 3209FFFF */  andi       $t1, $s0, 0xffff
/* 13A8C 80012E8C 29210031 */  slti       $at, $t1, 0x31
/* 13A90 80012E90 01208025 */  or         $s0, $t1, $zero
/* 13A94 80012E94 0000C812 */  mflo       $t9
/* 13A98 80012E98 02594021 */  addu       $t0, $s2, $t9
/* 13A9C 80012E9C 1420FFF8 */  bnez       $at, .L80012E80
/* 13AA0 80012EA0 AD000080 */   sw        $zero, 0x80($t0)
/* 13AA4 80012EA4 24100032 */  addiu      $s0, $zero, 0x32
.L80012EA8:
/* 13AA8 80012EA8 02130019 */  multu      $s0, $s3
/* 13AAC 80012EAC 26100001 */  addiu      $s0, $s0, 1
/* 13AB0 80012EB0 320CFFFF */  andi       $t4, $s0, 0xffff
/* 13AB4 80012EB4 2981005E */  slti       $at, $t4, 0x5e
/* 13AB8 80012EB8 01808025 */  or         $s0, $t4, $zero
/* 13ABC 80012EBC 00005012 */  mflo       $t2
/* 13AC0 80012EC0 024A5821 */  addu       $t3, $s2, $t2
/* 13AC4 80012EC4 1420FFF8 */  bnez       $at, .L80012EA8
/* 13AC8 80012EC8 AD600080 */   sw        $zero, 0x80($t3)
/* 13ACC 80012ECC 24100041 */  addiu      $s0, $zero, 0x41
/* 13AD0 80012ED0 240D0403 */  addiu      $t5, $zero, 0x403
.L80012ED4:
/* 13AD4 80012ED4 AFAD0010 */  sw         $t5, 0x10($sp)
/* 13AD8 80012ED8 3204FFFF */  andi       $a0, $s0, 0xffff
/* 13ADC 80012EDC 02A02825 */  or         $a1, $s5, $zero
/* 13AE0 80012EE0 00003025 */  or         $a2, $zero, $zero
/* 13AE4 80012EE4 0C009D44 */  jal        func_80027510
/* 13AE8 80012EE8 240700A0 */   addiu     $a3, $zero, 0xa0
/* 13AEC 80012EEC 02130019 */  multu      $s0, $s3
/* 13AF0 80012EF0 2401000A */  addiu      $at, $zero, 0xa
/* 13AF4 80012EF4 26100001 */  addiu      $s0, $s0, 1
/* 13AF8 80012EF8 00007012 */  mflo       $t6
/* 13AFC 80012EFC 024E1021 */  addu       $v0, $s2, $t6
/* 13B00 80012F00 944F0094 */  lhu        $t7, 0x94($v0)
/* 13B04 80012F04 02370019 */  multu      $s1, $s7
/* 13B08 80012F08 3211FFFF */  andi       $s1, $s0, 0xffff
/* 13B0C 80012F0C 35F80200 */  ori        $t8, $t7, 0x200
/* 13B10 80012F10 02208025 */  or         $s0, $s1, $zero
/* 13B14 80012F14 A4580094 */  sh         $t8, 0x94($v0)
/* 13B18 80012F18 AC54018C */  sw         $s4, 0x18c($v0)
/* 13B1C 80012F1C AC560154 */  sw         $s6, 0x154($v0)
/* 13B20 80012F20 0000C812 */  mflo       $t9
/* 13B24 80012F24 033E4021 */  addu       $t0, $t9, $fp
/* 13B28 80012F28 00000000 */  nop
/* 13B2C 80012F2C 0101001A */  div        $zero, $t0, $at
/* 13B30 80012F30 2A21004B */  slti       $at, $s1, 0x4b
/* 13B34 80012F34 00004812 */  mflo       $t1
/* 13B38 80012F38 AC490158 */  sw         $t1, 0x158($v0)
/* 13B3C 80012F3C 1420FFE5 */  bnez       $at, .L80012ED4
/* 13B40 80012F40 240D0403 */   addiu     $t5, $zero, 0x403
/* 13B44 80012F44 240B0180 */  addiu      $t3, $zero, 0x180
/* 13B48 80012F48 3C018018 */  lui        $at, %hi(D_80178130)
/* 13B4C 80012F4C A42B8130 */  sh         $t3, %lo(D_80178130)($at)
/* 13B50 80012F50 3C01800C */  lui        $at, %hi(gGameSubState)
/* 13B54 80012F54 240C0006 */  addiu      $t4, $zero, 6
/* 13B58 80012F58 10000003 */  b          .L80012F68
/* 13B5C 80012F5C A42CE4F4 */   sh        $t4, %lo(gGameSubState)($at)
.L80012F60:
/* 13B60 80012F60 0C000CD3 */  jal        SFX_Play_1
/* 13B64 80012F64 24040134 */   addiu     $a0, $zero, 0x134
.L80012F68:
/* 13B68 80012F68 8FBF0044 */  lw         $ra, 0x44($sp)
/* 13B6C 80012F6C 8FB00020 */  lw         $s0, 0x20($sp)
/* 13B70 80012F70 8FB10024 */  lw         $s1, 0x24($sp)
/* 13B74 80012F74 8FB20028 */  lw         $s2, 0x28($sp)
/* 13B78 80012F78 8FB3002C */  lw         $s3, 0x2c($sp)
/* 13B7C 80012F7C 8FB40030 */  lw         $s4, 0x30($sp)
/* 13B80 80012F80 8FB50034 */  lw         $s5, 0x34($sp)
/* 13B84 80012F84 8FB60038 */  lw         $s6, 0x38($sp)
/* 13B88 80012F88 8FB7003C */  lw         $s7, 0x3c($sp)
/* 13B8C 80012F8C 8FBE0040 */  lw         $fp, 0x40($sp)
/* 13B90 80012F90 03E00008 */  jr         $ra
/* 13B94 80012F94 27BD0048 */   addiu     $sp, $sp, 0x48

glabel GamePlay_Tick_Continue
/* 13B98 80012F98 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 13B9C 80012F9C 3C03800C */  lui        $v1, %hi(gButtonPress)
/* 13BA0 80012FA0 2463E4FC */  addiu      $v1, $v1, %lo(gButtonPress)
/* 13BA4 80012FA4 AFB60050 */  sw         $s6, 0x50($sp)
/* 13BA8 80012FA8 94760000 */  lhu        $s6, ($v1)
/* 13BAC 80012FAC 3C01800C */  lui        $at, %hi(gButtonHold)
/* 13BB0 80012FB0 A420E4F8 */  sh         $zero, %lo(gButtonHold)($at)
/* 13BB4 80012FB4 A4600000 */  sh         $zero, ($v1)
/* 13BB8 80012FB8 3C01800C */  lui        $at, %hi(gJoyX)
/* 13BBC 80012FBC A020E53C */  sb         $zero, %lo(gJoyX)($at)
/* 13BC0 80012FC0 3C02800C */  lui        $v0, %hi(gGameSubState)
/* 13BC4 80012FC4 9442E4F4 */  lhu        $v0, %lo(gGameSubState)($v0)
/* 13BC8 80012FC8 3C01800C */  lui        $at, %hi(gJoyY)
/* 13BCC 80012FCC A020E540 */  sb         $zero, %lo(gJoyY)($at)
/* 13BD0 80012FD0 28410002 */  slti       $at, $v0, 2
/* 13BD4 80012FD4 AFBF005C */  sw         $ra, 0x5c($sp)
/* 13BD8 80012FD8 AFBE0058 */  sw         $fp, 0x58($sp)
/* 13BDC 80012FDC AFB70054 */  sw         $s7, 0x54($sp)
/* 13BE0 80012FE0 AFB5004C */  sw         $s5, 0x4c($sp)
/* 13BE4 80012FE4 AFB40048 */  sw         $s4, 0x48($sp)
/* 13BE8 80012FE8 AFB30044 */  sw         $s3, 0x44($sp)
/* 13BEC 80012FEC AFB20040 */  sw         $s2, 0x40($sp)
/* 13BF0 80012FF0 AFB1003C */  sw         $s1, 0x3c($sp)
/* 13BF4 80012FF4 AFB00038 */  sw         $s0, 0x38($sp)
/* 13BF8 80012FF8 E7B50030 */  swc1       $f21, 0x30($sp)
/* 13BFC 80012FFC 14200006 */  bnez       $at, .L80013018
/* 13C00 80013000 E7B40034 */   swc1      $f20, 0x34($sp)
/* 13C04 80013004 0C017514 */  jal        func_8005D450
/* 13C08 80013008 00002025 */   or        $a0, $zero, $zero
/* 13C0C 8001300C 3C02800C */  lui        $v0, %hi(gGameSubState)
/* 13C10 80013010 9442E4F4 */  lhu        $v0, %lo(gGameSubState)($v0)
/* 13C14 80013014 00000000 */  nop
.L80013018:
/* 13C18 80013018 2C410008 */  sltiu      $at, $v0, 8
/* 13C1C 8001301C 102006A3 */  beqz       $at, .L80014AAC
/* 13C20 80013020 00027080 */   sll       $t6, $v0, 2
/* 13C24 80013024 3C01800F */  lui        $at, %hi(jtbl_800EB000)
/* 13C28 80013028 002E0821 */  addu       $at, $at, $t6
/* 13C2C 8001302C 8C2EB000 */  lw         $t6, %lo(jtbl_800EB000)($at)
/* 13C30 80013030 00000000 */  nop
/* 13C34 80013034 01C00008 */  jr         $t6
/* 13C38 80013038 00000000 */   nop
glabel L8001303C_13C3C
/* 13C3C 8001303C 3C028010 */  lui        $v0, %hi(D_80104098)
/* 13C40 80013040 24424098 */  addiu      $v0, $v0, %lo(D_80104098)
/* 13C44 80013044 A4402880 */  sh         $zero, 0x2880($v0)
/* 13C48 80013048 A4402920 */  sh         $zero, 0x2920($v0)
/* 13C4C 8001304C 24040001 */  addiu      $a0, $zero, 1
/* 13C50 80013050 0C000FC9 */  jal        func_80003F24
/* 13C54 80013054 24050060 */   addiu     $a1, $zero, 0x60
/* 13C58 80013058 0C00824B */  jal        func_8002092C
/* 13C5C 8001305C 00000000 */   nop
/* 13C60 80013060 3C02800C */  lui        $v0, %hi(gGameSubState)
/* 13C64 80013064 240F0060 */  addiu      $t7, $zero, 0x60
/* 13C68 80013068 3C018018 */  lui        $at, %hi(D_80178130)
/* 13C6C 8001306C 2442E4F4 */  addiu      $v0, $v0, %lo(gGameSubState)
/* 13C70 80013070 A42F8130 */  sh         $t7, %lo(D_80178130)($at)
/* 13C74 80013074 94580000 */  lhu        $t8, ($v0)
/* 13C78 80013078 00000000 */  nop
/* 13C7C 8001307C 27190001 */  addiu      $t9, $t8, 1
/* 13C80 80013080 A4590000 */  sh         $t9, ($v0)
glabel L80013084_13C84
/* 13C84 80013084 0C00840D */  jal        GamePlay_Tick
/* 13C88 80013088 00000000 */   nop
/* 13C8C 8001308C 3C028010 */  lui        $v0, %hi(D_801033D0)
/* 13C90 80013090 244233D0 */  addiu      $v0, $v0, %lo(D_801033D0)
/* 13C94 80013094 844B03DA */  lh         $t3, 0x3da($v0)
/* 13C98 80013098 844C0574 */  lh         $t4, 0x574($v0)
/* 13C9C 8001309C 3C05800C */  lui        $a1, %hi(D_800BE6E4)
/* 13CA0 800130A0 156C0053 */  bne        $t3, $t4, .L800131F0
/* 13CA4 800130A4 24A5E6E4 */   addiu     $a1, $a1, %lo(D_800BE6E4)
/* 13CA8 800130A8 90AD0000 */  lbu        $t5, ($a1)
/* 13CAC 800130AC 3C06800C */  lui        $a2, %hi(D_800BE6E8)
/* 13CB0 800130B0 3C018018 */  lui        $at, %hi(D_80178132)
/* 13CB4 800130B4 24C6E6E8 */  addiu      $a2, $a2, %lo(D_800BE6E8)
/* 13CB8 800130B8 A02D8132 */  sb         $t5, %lo(D_80178132)($at)
/* 13CBC 800130BC 90CE0000 */  lbu        $t6, ($a2)
/* 13CC0 800130C0 3C07800C */  lui        $a3, %hi(D_800BE6EC)
/* 13CC4 800130C4 3C018018 */  lui        $at, %hi(D_80178133)
/* 13CC8 800130C8 24E7E6EC */  addiu      $a3, $a3, %lo(D_800BE6EC)
/* 13CCC 800130CC A02E8133 */  sb         $t6, %lo(D_80178133)($at)
/* 13CD0 800130D0 90EF0000 */  lbu        $t7, ($a3)
/* 13CD4 800130D4 3C018018 */  lui        $at, %hi(D_80178134)
/* 13CD8 800130D8 A02F8134 */  sb         $t7, %lo(D_80178134)($at)
/* 13CDC 800130DC 3C04800F */  lui        $a0, %hi(gActors)
/* 13CE0 800130E0 A0A00000 */  sb         $zero, ($a1)
/* 13CE4 800130E4 A0C00000 */  sb         $zero, ($a2)
/* 13CE8 800130E8 A0E00000 */  sb         $zero, ($a3)
/* 13CEC 800130EC 2484F510 */  addiu      $a0, $a0, %lo(gActors)
/* 13CF0 800130F0 24150001 */  addiu      $s5, $zero, 1
/* 13CF4 800130F4 24020198 */  addiu      $v0, $zero, 0x198
.L800130F8:
/* 13CF8 800130F8 02A20019 */  multu      $s5, $v0
/* 13CFC 800130FC 26B50001 */  addiu      $s5, $s5, 1
/* 13D00 80013100 32ABFFFF */  andi       $t3, $s5, 0xffff
/* 13D04 80013104 296100C0 */  slti       $at, $t3, 0xc0
/* 13D08 80013108 0160A825 */  or         $s5, $t3, $zero
/* 13D0C 8001310C 0000C012 */  mflo       $t8
/* 13D10 80013110 0098C821 */  addu       $t9, $a0, $t8
/* 13D14 80013114 1420FFF8 */  bnez       $at, .L800130F8
/* 13D18 80013118 AF200080 */   sw        $zero, 0x80($t9)
/* 13D1C 8001311C 3C013F80 */  lui        $at, 0x3f80
/* 13D20 80013120 000B6880 */  sll        $t5, $t3, 2
/* 13D24 80013124 44811000 */  mtc1       $at, $f2
/* 13D28 80013128 01AB6823 */  subu       $t5, $t5, $t3
/* 13D2C 8001312C 3C018018 */  lui        $at, %hi(D_80178130)
/* 13D30 80013130 240C0BB9 */  addiu      $t4, $zero, 0xbb9
/* 13D34 80013134 000D6880 */  sll        $t5, $t5, 2
/* 13D38 80013138 A42C8130 */  sh         $t4, %lo(D_80178130)($at)
/* 13D3C 8001313C 01AB6821 */  addu       $t5, $t5, $t3
/* 13D40 80013140 000D6880 */  sll        $t5, $t5, 2
/* 13D44 80013144 01AB6823 */  subu       $t5, $t5, $t3
/* 13D48 80013148 000D68C0 */  sll        $t5, $t5, 3
/* 13D4C 8001314C 008D1021 */  addu       $v0, $a0, $t5
/* 13D50 80013150 3C05800C */  lui        $a1, %hi(gGameSubState)
/* 13D54 80013154 24A5E4F4 */  addiu      $a1, $a1, %lo(gGameSubState)
/* 13D58 80013158 94AB0000 */  lhu        $t3, ($a1)
/* 13D5C 8001315C 240EFF50 */  addiu      $t6, $zero, -0xb0
/* 13D60 80013160 240F00B0 */  addiu      $t7, $zero, 0xb0
/* 13D64 80013164 2418FF80 */  addiu      $t8, $zero, -0x80
/* 13D68 80013168 24190080 */  addiu      $t9, $zero, 0x80
/* 13D6C 8001316C 256C0001 */  addiu      $t4, $t3, 1
/* 13D70 80013170 AC400548 */  sw         $zero, 0x548($v0)
/* 13D74 80013174 AC4003B0 */  sw         $zero, 0x3b0($v0)
/* 13D78 80013178 AC400218 */  sw         $zero, 0x218($v0)
/* 13D7C 8001317C A44E00AA */  sh         $t6, 0xaa($v0)
/* 13D80 80013180 A44F00AC */  sh         $t7, 0xac($v0)
/* 13D84 80013184 A45800B0 */  sh         $t8, 0xb0($v0)
/* 13D88 80013188 A45900AE */  sh         $t9, 0xae($v0)
/* 13D8C 8001318C A4AC0000 */  sh         $t4, ($a1)
/* 13D90 80013190 3C01800C */  lui        $at, %hi(D_800BE6A8)
/* 13D94 80013194 44800000 */  mtc1       $zero, $f0
/* 13D98 80013198 A420E6A8 */  sh         $zero, %lo(D_800BE6A8)($at)
/* 13D9C 8001319C 3C01800C */  lui        $at, %hi(gEyeX)
/* 13DA0 800131A0 E420E5A8 */  swc1       $f0, %lo(gEyeX)($at)
/* 13DA4 800131A4 3C01800C */  lui        $at, %hi(gEyeY)
/* 13DA8 800131A8 E420E5AC */  swc1       $f0, %lo(gEyeY)($at)
/* 13DAC 800131AC 3C0143E0 */  lui        $at, 0x43e0
/* 13DB0 800131B0 44812000 */  mtc1       $at, $f4
/* 13DB4 800131B4 3C01800C */  lui        $at, %hi(gEyeZ)
/* 13DB8 800131B8 E424E5B0 */  swc1       $f4, %lo(gEyeZ)($at)
/* 13DBC 800131BC 3C01800C */  lui        $at, %hi(gAtX)
/* 13DC0 800131C0 E420E5B4 */  swc1       $f0, %lo(gAtX)($at)
/* 13DC4 800131C4 3C01800C */  lui        $at, %hi(gAtY)
/* 13DC8 800131C8 E420E5B8 */  swc1       $f0, %lo(gAtY)($at)
/* 13DCC 800131CC 3C01800C */  lui        $at, %hi(gAtZ)
/* 13DD0 800131D0 E420E5BC */  swc1       $f0, %lo(gAtZ)($at)
/* 13DD4 800131D4 3C01800C */  lui        $at, %hi(gUpX)
/* 13DD8 800131D8 E420E5C0 */  swc1       $f0, %lo(gUpX)($at)
/* 13DDC 800131DC 3C01800C */  lui        $at, %hi(gUpY)
/* 13DE0 800131E0 E422E5C4 */  swc1       $f2, %lo(gUpY)($at)
/* 13DE4 800131E4 3C01800C */  lui        $at, %hi(gUpZ)
/* 13DE8 800131E8 10000630 */  b          .L80014AAC
/* 13DEC 800131EC E420E5C8 */   swc1      $f0, %lo(gUpZ)($at)
.L800131F0:
/* 13DF0 800131F0 3C0D8010 */  lui        $t5, %hi(D_80103480)
/* 13DF4 800131F4 85AD3480 */  lh         $t5, %lo(D_80103480)($t5)
/* 13DF8 800131F8 3C018010 */  lui        $at, %hi(D_80103480)
/* 13DFC 800131FC 25AEFFFF */  addiu      $t6, $t5, -1
/* 13E00 80013200 A42E3480 */  sh         $t6, %lo(D_80103480)($at)
/* 13E04 80013204 3C0F8010 */  lui        $t7, %hi(D_80103616)
/* 13E08 80013208 85EF3616 */  lh         $t7, %lo(D_80103616)($t7)
/* 13E0C 8001320C 3C048018 */  lui        $a0, %hi(D_80178130)
/* 13E10 80013210 3C018010 */  lui        $at, %hi(D_80103616)
/* 13E14 80013214 25F80001 */  addiu      $t8, $t7, 1
/* 13E18 80013218 24848130 */  addiu      $a0, $a0, %lo(D_80178130)
/* 13E1C 8001321C A4383616 */  sh         $t8, %lo(D_80103616)($at)
/* 13E20 80013220 94820000 */  lhu        $v0, ($a0)
/* 13E24 80013224 00000000 */  nop
/* 13E28 80013228 04410004 */  bgez       $v0, .L8001323C
/* 13E2C 8001322C 30430001 */   andi      $v1, $v0, 1
/* 13E30 80013230 10600002 */  beqz       $v1, .L8001323C
/* 13E34 80013234 00000000 */   nop
/* 13E38 80013238 2463FFFE */  addiu      $v1, $v1, -2
.L8001323C:
/* 13E3C 8001323C 2459FFFF */  addiu      $t9, $v0, -1
/* 13E40 80013240 1060000C */  beqz       $v1, .L80013274
/* 13E44 80013244 A4990000 */   sh        $t9, ($a0)
/* 13E48 80013248 3C0B8010 */  lui        $t3, %hi(D_801037AA)
/* 13E4C 8001324C 856B37AA */  lh         $t3, %lo(D_801037AA)($t3)
/* 13E50 80013250 3C018010 */  lui        $at, %hi(D_801037AA)
/* 13E54 80013254 256CFFFE */  addiu      $t4, $t3, -2
/* 13E58 80013258 A42C37AA */  sh         $t4, %lo(D_801037AA)($at)
/* 13E5C 8001325C 3C0D8010 */  lui        $t5, %hi(D_80103944)
/* 13E60 80013260 85AD3944 */  lh         $t5, %lo(D_80103944)($t5)
/* 13E64 80013264 3C018010 */  lui        $at, %hi(D_80103944)
/* 13E68 80013268 25AE0002 */  addiu      $t6, $t5, 2
/* 13E6C 8001326C 1000060F */  b          .L80014AAC
/* 13E70 80013270 A42E3944 */   sh        $t6, %lo(D_80103944)($at)
.L80013274:
/* 13E74 80013274 3C0F8010 */  lui        $t7, %hi(D_801037AA)
/* 13E78 80013278 85EF37AA */  lh         $t7, %lo(D_801037AA)($t7)
/* 13E7C 8001327C 3C018010 */  lui        $at, %hi(D_801037AA)
/* 13E80 80013280 25F8FFFF */  addiu      $t8, $t7, -1
/* 13E84 80013284 A43837AA */  sh         $t8, %lo(D_801037AA)($at)
/* 13E88 80013288 3C198010 */  lui        $t9, %hi(D_80103944)
/* 13E8C 8001328C 87393944 */  lh         $t9, %lo(D_80103944)($t9)
/* 13E90 80013290 3C018010 */  lui        $at, %hi(D_80103944)
/* 13E94 80013294 272B0001 */  addiu      $t3, $t9, 1
/* 13E98 80013298 10000604 */  b          .L80014AAC
/* 13E9C 8001329C A42B3944 */   sh        $t3, %lo(D_80103944)($at)
glabel L800132A0_13EA0
/* 13EA0 800132A0 3C0C8018 */  lui        $t4, %hi(D_80178130)
/* 13EA4 800132A4 958C8130 */  lhu        $t4, %lo(D_80178130)($t4)
/* 13EA8 800132A8 3C018018 */  lui        $at, %hi(D_80178130)
/* 13EAC 800132AC 258DFFFF */  addiu      $t5, $t4, -1
/* 13EB0 800132B0 A42D8130 */  sh         $t5, %lo(D_80178130)($at)
/* 13EB4 800132B4 31A3FFFF */  andi       $v1, $t5, 0xffff
/* 13EB8 800132B8 286109C4 */  slti       $at, $v1, 0x9c4
/* 13EBC 800132BC 10200027 */  beqz       $at, .L8001335C
/* 13EC0 800132C0 24120064 */   addiu     $s2, $zero, 0x64
/* 13EC4 800132C4 0072001A */  div        $zero, $v1, $s2
/* 13EC8 800132C8 00002025 */  or         $a0, $zero, $zero
/* 13ECC 800132CC 16400002 */  bnez       $s2, .L800132D8
/* 13ED0 800132D0 00000000 */   nop
/* 13ED4 800132D4 0007000D */  break      7
.L800132D8:
/* 13ED8 800132D8 2401FFFF */   addiu     $at, $zero, -1
/* 13EDC 800132DC 16410004 */  bne        $s2, $at, .L800132F0
/* 13EE0 800132E0 3C018000 */   lui       $at, 0x8000
/* 13EE4 800132E4 14610002 */  bne        $v1, $at, .L800132F0
/* 13EE8 800132E8 00000000 */   nop
/* 13EEC 800132EC 0006000D */  break      6
.L800132F0:
/* 13EF0 800132F0 24030040 */   addiu     $v1, $zero, 0x40
/* 13EF4 800132F4 2419001F */  addiu      $t9, $zero, 0x1f
/* 13EF8 800132F8 2407001F */  addiu      $a3, $zero, 0x1f
/* 13EFC 800132FC 00001010 */  mfhi       $v0
/* 13F00 80013300 2841005D */  slti       $at, $v0, 0x5d
/* 13F04 80013304 14200007 */  bnez       $at, .L80013324
/* 13F08 80013308 00000000 */   nop
/* 13F0C 8001330C 00021823 */  negu       $v1, $v0
/* 13F10 80013310 000370C0 */  sll        $t6, $v1, 3
/* 13F14 80013314 25C30318 */  addiu      $v1, $t6, 0x318
/* 13F18 80013318 306F00FF */  andi       $t7, $v1, 0xff
/* 13F1C 8001331C 10000001 */  b          .L80013324
/* 13F20 80013320 01E01825 */   or        $v1, $t7, $zero
.L80013324:
/* 13F24 80013324 04610003 */  bgez       $v1, .L80013334
/* 13F28 80013328 0003C083 */   sra       $t8, $v1, 2
/* 13F2C 8001332C 24610003 */  addiu      $at, $v1, 3
/* 13F30 80013330 0001C083 */  sra        $t8, $at, 2
.L80013334:
/* 13F34 80013334 03382823 */  subu       $a1, $t9, $t8
/* 13F38 80013338 30AB00FF */  andi       $t3, $a1, 0xff
/* 13F3C 8001333C 01602825 */  or         $a1, $t3, $zero
/* 13F40 80013340 0C009D62 */  jal        func_80027588
/* 13F44 80013344 316600FF */   andi      $a2, $t3, 0xff
/* 13F48 80013348 24040001 */  addiu      $a0, $zero, 1
/* 13F4C 8001334C 2405001F */  addiu      $a1, $zero, 0x1f
/* 13F50 80013350 2406001F */  addiu      $a2, $zero, 0x1f
/* 13F54 80013354 0C009D62 */  jal        func_80027588
/* 13F58 80013358 24070008 */   addiu     $a3, $zero, 8
.L8001335C:
/* 13F5C 8001335C 3C10800D */  lui        $s0, %hi(D_800D1788)
/* 13F60 80013360 26101788 */  addiu      $s0, $s0, %lo(D_800D1788)
/* 13F64 80013364 3C05800C */  lui        $a1, %hi(D_800C7D1C)
/* 13F68 80013368 240C0403 */  addiu      $t4, $zero, 0x403
/* 13F6C 8001336C 24120064 */  addiu      $s2, $zero, 0x64
/* 13F70 80013370 AFAC0010 */  sw         $t4, 0x10($sp)
/* 13F74 80013374 24A57D1C */  addiu      $a1, $a1, %lo(D_800C7D1C)
/* 13F78 80013378 AFB00014 */  sw         $s0, 0x14($sp)
/* 13F7C 8001337C 24040055 */  addiu      $a0, $zero, 0x55
/* 13F80 80013380 24060028 */  addiu      $a2, $zero, 0x28
/* 13F84 80013384 0C009DB7 */  jal        func_800276DC
/* 13F88 80013388 24070020 */   addiu     $a3, $zero, 0x20
/* 13F8C 8001338C 3C05800C */  lui        $a1, %hi(D_800C7D24)
/* 13F90 80013390 240D0403 */  addiu      $t5, $zero, 0x403
/* 13F94 80013394 AFAD0010 */  sw         $t5, 0x10($sp)
/* 13F98 80013398 24A57D24 */  addiu      $a1, $a1, %lo(D_800C7D24)
/* 13F9C 8001339C 24040059 */  addiu      $a0, $zero, 0x59
/* 13FA0 800133A0 24060068 */  addiu      $a2, $zero, 0x68
/* 13FA4 800133A4 24070020 */  addiu      $a3, $zero, 0x20
/* 13FA8 800133A8 0C009DB7 */  jal        func_800276DC
/* 13FAC 800133AC AFB00014 */   sw        $s0, 0x14($sp)
/* 13FB0 800133B0 3C0E8018 */  lui        $t6, %hi(D_80178130)
/* 13FB4 800133B4 95CE8130 */  lhu        $t6, %lo(D_80178130)($t6)
/* 13FB8 800133B8 24190403 */  addiu      $t9, $zero, 0x403
/* 13FBC 800133BC 01D2001A */  div        $zero, $t6, $s2
/* 13FC0 800133C0 AFB90010 */  sw         $t9, 0x10($sp)
/* 13FC4 800133C4 2404005A */  addiu      $a0, $zero, 0x5a
/* 13FC8 800133C8 16400002 */  bnez       $s2, .L800133D4
/* 13FCC 800133CC 00000000 */   nop
/* 13FD0 800133D0 0007000D */  break      7
.L800133D4:
/* 13FD4 800133D4 2401FFFF */   addiu     $at, $zero, -1
/* 13FD8 800133D8 16410004 */  bne        $s2, $at, .L800133EC
/* 13FDC 800133DC 3C018000 */   lui       $at, 0x8000
/* 13FE0 800133E0 15C10002 */  bne        $t6, $at, .L800133EC
/* 13FE4 800133E4 00000000 */   nop
/* 13FE8 800133E8 0006000D */  break      6
.L800133EC:
/* 13FEC 800133EC 24060058 */   addiu     $a2, $zero, 0x58
/* 13FF0 800133F0 24070020 */  addiu      $a3, $zero, 0x20
/* 13FF4 800133F4 AFB00014 */  sw         $s0, 0x14($sp)
/* 13FF8 800133F8 00002812 */  mflo       $a1
/* 13FFC 800133FC 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 14000 80013400 0C009E00 */  jal        func_80027800
/* 14004 80013404 01E02825 */   or        $a1, $t7, $zero
/* 14008 80013408 3C188018 */  lui        $t8, %hi(D_80178130)
/* 1400C 8001340C 97188130 */  lhu        $t8, %lo(D_80178130)($t8)
/* 14010 80013410 240C0403 */  addiu      $t4, $zero, 0x403
/* 14014 80013414 0312001A */  div        $zero, $t8, $s2
/* 14018 80013418 AFAC0010 */  sw         $t4, 0x10($sp)
/* 1401C 8001341C 2404005C */  addiu      $a0, $zero, 0x5c
/* 14020 80013420 16400002 */  bnez       $s2, .L8001342C
/* 14024 80013424 00000000 */   nop
/* 14028 80013428 0007000D */  break      7
.L8001342C:
/* 1402C 8001342C 2401FFFF */   addiu     $at, $zero, -1
/* 14030 80013430 16410004 */  bne        $s2, $at, .L80013444
/* 14034 80013434 3C018000 */   lui       $at, 0x8000
/* 14038 80013438 17010002 */  bne        $t8, $at, .L80013444
/* 1403C 8001343C 00000000 */   nop
/* 14040 80013440 0006000D */  break      6
.L80013444:
/* 14044 80013444 24060070 */   addiu     $a2, $zero, 0x70
/* 14048 80013448 24070020 */  addiu      $a3, $zero, 0x20
/* 1404C 8001344C AFB00014 */  sw         $s0, 0x14($sp)
/* 14050 80013450 00002810 */  mfhi       $a1
/* 14054 80013454 30ABFFFF */  andi       $t3, $a1, 0xffff
/* 14058 80013458 0C009E00 */  jal        func_80027800
/* 1405C 8001345C 01602825 */   or        $a1, $t3, $zero
/* 14060 80013460 3C038018 */  lui        $v1, %hi(D_80178130)
/* 14064 80013464 94638130 */  lhu        $v1, %lo(D_80178130)($v1)
/* 14068 80013468 24010BB8 */  addiu      $at, $zero, 0xbb8
/* 1406C 8001346C 14610105 */  bne        $v1, $at, .L80013884
/* 14070 80013470 286109C5 */   slti      $at, $v1, 0x9c5
/* 14074 80013474 0C009B62 */  jal        func_80026D88
/* 14078 80013478 00002025 */   or        $a0, $zero, $zero
/* 1407C 8001347C 3C018013 */  lui        $at, %hi(D_80137D90)
/* 14080 80013480 3C0D800F */  lui        $t5, %hi(D_800EF4D8)
/* 14084 80013484 8DADF4D8 */  lw         $t5, %lo(D_800EF4D8)($t5)
/* 14088 80013488 A4207D90 */  sh         $zero, %lo(D_80137D90)($at)
/* 1408C 8001348C 3C018018 */  lui        $at, %hi(D_8017813C)
/* 14090 80013490 24040016 */  addiu      $a0, $zero, 0x16
/* 14094 80013494 0C000AD4 */  jal        func_80002B50
/* 14098 80013498 AC2D813C */   sw        $t5, %lo(D_8017813C)($at)
/* 1409C 8001349C 3C108018 */  lui        $s0, %hi(D_80178140)
/* 140A0 800134A0 240E00A4 */  addiu      $t6, $zero, 0xa4
/* 140A4 800134A4 3C01800F */  lui        $at, %hi(gActors+0x170)
/* 140A8 800134A8 26108140 */  addiu      $s0, $s0, %lo(D_80178140)
/* 140AC 800134AC 24130001 */  addiu      $s3, $zero, 1
/* 140B0 800134B0 AC2EF680 */  sw         $t6, %lo(gActors+0x170)($at)
/* 140B4 800134B4 A2130000 */  sb         $s3, ($s0)
/* 140B8 800134B8 3C0F800F */  lui        $t7, %hi(gActors+0x94)
/* 140BC 800134BC 95EFF5A4 */  lhu        $t7, %lo(gActors+0x94)($t7)
/* 140C0 800134C0 3C01800F */  lui        $at, %hi(gActors+0x94)
/* 140C4 800134C4 35F90800 */  ori        $t9, $t7, 0x800
/* 140C8 800134C8 A439F5A4 */  sh         $t9, %lo(gActors+0x94)($at)
/* 140CC 800134CC 3C18800F */  lui        $t8, %hi(gActors+0x80)
/* 140D0 800134D0 8F18F590 */  lw         $t8, %lo(gActors+0x80)($t8)
/* 140D4 800134D4 3C01800F */  lui        $at, %hi(gActors+0x80)
/* 140D8 800134D8 370B0001 */  ori        $t3, $t8, 1
/* 140DC 800134DC AC2BF590 */  sw         $t3, %lo(gActors+0x80)($at)
/* 140E0 800134E0 3C01800F */  lui        $at, %hi(FB_BGCOLOR)
/* 140E4 800134E4 240CFFFC */  addiu      $t4, $zero, -4
/* 140E8 800134E8 A42CF598 */  sh         $t4, %lo(FB_BGCOLOR)($at)
/* 140EC 800134EC 3C01800F */  lui        $at, %hi(gActors+0x8C)
/* 140F0 800134F0 240D0014 */  addiu      $t5, $zero, 0x14
/* 140F4 800134F4 A42DF59C */  sh         $t5, %lo(gActors+0x8C)($at)
/* 140F8 800134F8 3C01800F */  lui        $at, %hi(gActors+0x90)
/* 140FC 800134FC 240E0403 */  addiu      $t6, $zero, 0x403
/* 14100 80013500 3C11800C */  lui        $s1, %hi(D_800C7D10)
/* 14104 80013504 A42EF5A0 */  sh         $t6, %lo(gActors+0x90)($at)
/* 14108 80013508 26317D10 */  addiu      $s1, $s1, %lo(D_800C7D10)
/* 1410C 8001350C 3C01800F */  lui        $at, %hi(gActors+0x9F)
/* 14110 80013510 240F0403 */  addiu      $t7, $zero, 0x403
/* 14114 80013514 A020F5AF */  sb         $zero, %lo(gActors+0x9F)($at)
/* 14118 80013518 AFAF0010 */  sw         $t7, 0x10($sp)
/* 1411C 8001351C 02202825 */  or         $a1, $s1, $zero
/* 14120 80013520 24040030 */  addiu      $a0, $zero, 0x30
/* 14124 80013524 3406FF88 */  ori        $a2, $zero, 0xff88
/* 14128 80013528 0C009D44 */  jal        func_80027510
/* 1412C 8001352C 24070050 */   addiu     $a3, $zero, 0x50
/* 14130 80013530 3C05800E */  lui        $a1, %hi(D_800E13FC)
/* 14134 80013534 24190403 */  addiu      $t9, $zero, 0x403
/* 14138 80013538 AFB90010 */  sw         $t9, 0x10($sp)
/* 1413C 8001353C 24A513FC */  addiu      $a1, $a1, %lo(D_800E13FC)
/* 14140 80013540 24040032 */  addiu      $a0, $zero, 0x32
/* 14144 80013544 3406FF80 */  ori        $a2, $zero, 0xff80
/* 14148 80013548 0C009D44 */  jal        func_80027510
/* 1414C 8001354C 3407FFED */   ori       $a3, $zero, 0xffed
/* 14150 80013550 3C013F80 */  lui        $at, 0x3f80
/* 14154 80013554 44811000 */  mtc1       $at, $f2
/* 14158 80013558 3C05800C */  lui        $a1, 0x800c
/* 1415C 8001355C 24180403 */  addiu      $t8, $zero, 0x403
/* 14160 80013560 240B0040 */  addiu      $t3, $zero, 0x40
/* 14164 80013564 240C0040 */  addiu      $t4, $zero, 0x40
/* 14168 80013568 AFAC001C */  sw         $t4, 0x1c($sp)
/* 1416C 8001356C AFAB0014 */  sw         $t3, 0x14($sp)
/* 14170 80013570 AFB80010 */  sw         $t8, 0x10($sp)
/* 14174 80013574 24A57D54 */  addiu      $a1, $a1, 0x7d54
/* 14178 80013578 24040033 */  addiu      $a0, $zero, 0x33
/* 1417C 8001357C 3406FFA0 */  ori        $a2, $zero, 0xffa0
/* 14180 80013580 24070050 */  addiu      $a3, $zero, 0x50
/* 14184 80013584 AFA00018 */  sw         $zero, 0x18($sp)
/* 14188 80013588 E7A20020 */  swc1       $f2, 0x20($sp)
/* 1418C 8001358C 0C009F65 */  jal        func_80027D94
/* 14190 80013590 E7A20024 */   swc1      $f2, 0x24($sp)
/* 14194 80013594 240D0403 */  addiu      $t5, $zero, 0x403
/* 14198 80013598 AFAD0010 */  sw         $t5, 0x10($sp)
/* 1419C 8001359C 24040030 */  addiu      $a0, $zero, 0x30
/* 141A0 800135A0 02202825 */  or         $a1, $s1, $zero
/* 141A4 800135A4 3406FF88 */  ori        $a2, $zero, 0xff88
/* 141A8 800135A8 0C009D44 */  jal        func_80027510
/* 141AC 800135AC 24070050 */   addiu     $a3, $zero, 0x50
/* 141B0 800135B0 240E0403 */  addiu      $t6, $zero, 0x403
/* 141B4 800135B4 AFAE0010 */  sw         $t6, 0x10($sp)
/* 141B8 800135B8 24040041 */  addiu      $a0, $zero, 0x41
/* 141BC 800135BC 00002825 */  or         $a1, $zero, $zero
/* 141C0 800135C0 2406001C */  addiu      $a2, $zero, 0x1c
/* 141C4 800135C4 0C009CFF */  jal        func_800273FC
/* 141C8 800135C8 3407FFD8 */   ori       $a3, $zero, 0xffd8
/* 141CC 800135CC 3C0F800F */  lui        $t7, %hi(D_800F5D28)
/* 141D0 800135D0 8DEF5D28 */  lw         $t7, %lo(D_800F5D28)($t7)
/* 141D4 800135D4 3C017000 */  lui        $at, 0x7000
/* 141D8 800135D8 34210008 */  ori        $at, $at, 8
/* 141DC 800135DC 01E1C825 */  or         $t9, $t7, $at
/* 141E0 800135E0 3C028018 */  lui        $v0, %hi(D_80178142)
/* 141E4 800135E4 3C01800F */  lui        $at, %hi(D_800F5D28)
/* 141E8 800135E8 24428142 */  addiu      $v0, $v0, %lo(D_80178142)
/* 141EC 800135EC AC395D28 */  sw         $t9, %lo(D_800F5D28)($at)
/* 141F0 800135F0 2418FFE1 */  addiu      $t8, $zero, -0x1f
/* 141F4 800135F4 A4580000 */  sh         $t8, ($v0)
/* 141F8 800135F8 84470000 */  lh         $a3, ($v0)
/* 141FC 800135FC 3C04800C */  lui        $a0, %hi(D_800C7F04)
/* 14200 80013600 3C058026 */  lui        $a1, 0x8026
/* 14204 80013604 34A551F8 */  ori        $a1, $a1, 0x51f8
/* 14208 80013608 24847F04 */  addiu      $a0, $a0, %lo(D_800C7F04)
/* 1420C 8001360C 24060008 */  addiu      $a2, $zero, 8
/* 14210 80013610 AFA70010 */  sw         $a3, 0x10($sp)
/* 14214 80013614 0C00AE0B */  jal        func_8002B82C
/* 14218 80013618 AFA70014 */   sw        $a3, 0x14($sp)
/* 1421C 8001361C 0C020D15 */  jal        func_80083454
/* 14220 80013620 00000000 */   nop
/* 14224 80013624 3C06800C */  lui        $a2, %hi(D_800C7EB8)
/* 14228 80013628 24C67EB8 */  addiu      $a2, $a2, %lo(D_800C7EB8)
/* 1422C 8001362C 24040001 */  addiu      $a0, $zero, 1
/* 14230 80013630 00002825 */  or         $a1, $zero, $zero
/* 14234 80013634 0C020DA8 */  jal        func_800836A0
/* 14238 80013638 24070001 */   addiu     $a3, $zero, 1
/* 1423C 8001363C 3C06800C */  lui        $a2, %hi(D_800C7EC0)
/* 14240 80013640 24C67EC0 */  addiu      $a2, $a2, %lo(D_800C7EC0)
/* 14244 80013644 24040003 */  addiu      $a0, $zero, 3
/* 14248 80013648 00002825 */  or         $a1, $zero, $zero
/* 1424C 8001364C 0C020DA8 */  jal        func_800836A0
/* 14250 80013650 00003825 */   or        $a3, $zero, $zero
/* 14254 80013654 3C06800C */  lui        $a2, %hi(D_800C7E88)
/* 14258 80013658 24C67E88 */  addiu      $a2, $a2, %lo(D_800C7E88)
/* 1425C 8001365C 24040001 */  addiu      $a0, $zero, 1
/* 14260 80013660 24050001 */  addiu      $a1, $zero, 1
/* 14264 80013664 0C020DA8 */  jal        func_800836A0
/* 14268 80013668 24070001 */   addiu     $a3, $zero, 1
/* 1426C 8001366C 3C06800C */  lui        $a2, %hi(D_800C7E90)
/* 14270 80013670 24C67E90 */  addiu      $a2, $a2, %lo(D_800C7E90)
/* 14274 80013674 24040003 */  addiu      $a0, $zero, 3
/* 14278 80013678 24050001 */  addiu      $a1, $zero, 1
/* 1427C 8001367C 0C020DA8 */  jal        func_800836A0
/* 14280 80013680 00003825 */   or        $a3, $zero, $zero
/* 14284 80013684 3C06800C */  lui        $a2, %hi(D_800C7E54)
/* 14288 80013688 24C67E54 */  addiu      $a2, $a2, %lo(D_800C7E54)
/* 1428C 8001368C 00002025 */  or         $a0, $zero, $zero
/* 14290 80013690 24050002 */  addiu      $a1, $zero, 2
/* 14294 80013694 0C020DA8 */  jal        func_800836A0
/* 14298 80013698 24070001 */   addiu     $a3, $zero, 1
/* 1429C 8001369C 3C06800C */  lui        $a2, %hi(D_800C7E5C)
/* 142A0 800136A0 24C67E5C */  addiu      $a2, $a2, %lo(D_800C7E5C)
/* 142A4 800136A4 24040003 */  addiu      $a0, $zero, 3
/* 142A8 800136A8 24050002 */  addiu      $a1, $zero, 2
/* 142AC 800136AC 0C020DA8 */  jal        func_800836A0
/* 142B0 800136B0 00003825 */   or        $a3, $zero, $zero
/* 142B4 800136B4 3C06800C */  lui        $a2, %hi(D_800C7EE4)
/* 142B8 800136B8 24C67EE4 */  addiu      $a2, $a2, %lo(D_800C7EE4)
/* 142BC 800136BC 24040001 */  addiu      $a0, $zero, 1
/* 142C0 800136C0 24050003 */  addiu      $a1, $zero, 3
/* 142C4 800136C4 0C020DA8 */  jal        func_800836A0
/* 142C8 800136C8 24070001 */   addiu     $a3, $zero, 1
/* 142CC 800136CC 3C06800C */  lui        $a2, %hi(D_800C7EEC)
/* 142D0 800136D0 24C67EEC */  addiu      $a2, $a2, %lo(D_800C7EEC)
/* 142D4 800136D4 24040003 */  addiu      $a0, $zero, 3
/* 142D8 800136D8 24050003 */  addiu      $a1, $zero, 3
/* 142DC 800136DC 0C020DA8 */  jal        func_800836A0
/* 142E0 800136E0 00003825 */   or        $a3, $zero, $zero
/* 142E4 800136E4 24040031 */  addiu      $a0, $zero, 0x31
/* 142E8 800136E8 3405FF96 */  ori        $a1, $zero, 0xff96
/* 142EC 800136EC 0C004B14 */  jal        func_80012C50
/* 142F0 800136F0 24060020 */   addiu     $a2, $zero, 0x20
/* 142F4 800136F4 24040042 */  addiu      $a0, $zero, 0x42
/* 142F8 800136F8 3405FF96 */  ori        $a1, $zero, 0xff96
/* 142FC 800136FC 0C004B14 */  jal        func_80012C50
/* 14300 80013700 3406FFEC */   ori       $a2, $zero, 0xffec
/* 14304 80013704 24040043 */  addiu      $a0, $zero, 0x43
/* 14308 80013708 3405FF96 */  ori        $a1, $zero, 0xff96
/* 1430C 8001370C 0C004B14 */  jal        func_80012C50
/* 14310 80013710 3406FFD8 */   ori       $a2, $zero, 0xffd8
/* 14314 80013714 24040044 */  addiu      $a0, $zero, 0x44
/* 14318 80013718 3405FF96 */  ori        $a1, $zero, 0xff96
/* 1431C 8001371C 0C004B14 */  jal        func_80012C50
/* 14320 80013720 3406FFC4 */   ori       $a2, $zero, 0xffc4
/* 14324 80013724 24040045 */  addiu      $a0, $zero, 0x45
/* 14328 80013728 3405FF96 */  ori        $a1, $zero, 0xff96
/* 1432C 8001372C 0C004B14 */  jal        func_80012C50
/* 14330 80013730 3406FFB0 */   ori       $a2, $zero, 0xffb0
/* 14334 80013734 3C108018 */  lui        $s0, %hi(gRedGems)
/* 14338 80013738 26108136 */  addiu      $s0, $s0, %lo(gRedGems)
/* 1433C 8001373C 96020000 */  lhu        $v0, ($s0)
/* 14340 80013740 00000000 */  nop
/* 14344 80013744 28412710 */  slti       $at, $v0, 0x2710
/* 14348 80013748 14200004 */  bnez       $at, .L8001375C
/* 1434C 8001374C 00000000 */   nop
/* 14350 80013750 240B270F */  addiu      $t3, $zero, 0x270f
/* 14354 80013754 A60B0000 */  sh         $t3, ($s0)
/* 14358 80013758 3162FFFF */  andi       $v0, $t3, 0xffff
.L8001375C:
/* 1435C 8001375C 0052001A */  div        $zero, $v0, $s2
/* 14360 80013760 3C11800D */  lui        $s1, %hi(D_800D1790)
/* 14364 80013764 26311790 */  addiu      $s1, $s1, %lo(D_800D1790)
/* 14368 80013768 240D0403 */  addiu      $t5, $zero, 0x403
/* 1436C 8001376C AFAD0010 */  sw         $t5, 0x10($sp)
/* 14370 80013770 AFB10014 */  sw         $s1, 0x14($sp)
/* 14374 80013774 2404005E */  addiu      $a0, $zero, 0x5e
/* 14378 80013778 16400002 */  bnez       $s2, .L80013784
/* 1437C 8001377C 00000000 */   nop
/* 14380 80013780 0007000D */  break      7
.L80013784:
/* 14384 80013784 2401FFFF */   addiu     $at, $zero, -1
/* 14388 80013788 16410004 */  bne        $s2, $at, .L8001379C
/* 1438C 8001378C 3C018000 */   lui       $at, 0x8000
/* 14390 80013790 14410002 */  bne        $v0, $at, .L8001379C
/* 14394 80013794 00000000 */   nop
/* 14398 80013798 0006000D */  break      6
.L8001379C:
/* 1439C 8001379C 3406FFA6 */   ori       $a2, $zero, 0xffa6
/* 143A0 800137A0 24070020 */  addiu      $a3, $zero, 0x20
/* 143A4 800137A4 00002812 */  mflo       $a1
/* 143A8 800137A8 30ACFFFF */  andi       $t4, $a1, 0xffff
/* 143AC 800137AC 0C009E00 */  jal        func_80027800
/* 143B0 800137B0 01802825 */   or        $a1, $t4, $zero
/* 143B4 800137B4 960E0000 */  lhu        $t6, ($s0)
/* 143B8 800137B8 24190403 */  addiu      $t9, $zero, 0x403
/* 143BC 800137BC 01D2001A */  div        $zero, $t6, $s2
/* 143C0 800137C0 AFB90010 */  sw         $t9, 0x10($sp)
/* 143C4 800137C4 24040060 */  addiu      $a0, $zero, 0x60
/* 143C8 800137C8 16400002 */  bnez       $s2, .L800137D4
/* 143CC 800137CC 00000000 */   nop
/* 143D0 800137D0 0007000D */  break      7
.L800137D4:
/* 143D4 800137D4 2401FFFF */   addiu     $at, $zero, -1
/* 143D8 800137D8 16410004 */  bne        $s2, $at, .L800137EC
/* 143DC 800137DC 3C018000 */   lui       $at, 0x8000
/* 143E0 800137E0 15C10002 */  bne        $t6, $at, .L800137EC
/* 143E4 800137E4 00000000 */   nop
/* 143E8 800137E8 0006000D */  break      6
.L800137EC:
/* 143EC 800137EC 3406FFB8 */   ori       $a2, $zero, 0xffb8
/* 143F0 800137F0 24070020 */  addiu      $a3, $zero, 0x20
/* 143F4 800137F4 AFB10014 */  sw         $s1, 0x14($sp)
/* 143F8 800137F8 00002810 */  mfhi       $a1
/* 143FC 800137FC 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 14400 80013800 0C009E00 */  jal        func_80027800
/* 14404 80013804 01E02825 */   or        $a1, $t7, $zero
/* 14408 80013808 24150030 */  addiu      $s5, $zero, 0x30
.L8001380C:
/* 1440C 8001380C 0015C080 */  sll        $t8, $s5, 2
/* 14410 80013810 0315C023 */  subu       $t8, $t8, $s5
/* 14414 80013814 0018C080 */  sll        $t8, $t8, 2
/* 14418 80013818 0315C021 */  addu       $t8, $t8, $s5
/* 1441C 8001381C 0018C080 */  sll        $t8, $t8, 2
/* 14420 80013820 0315C023 */  subu       $t8, $t8, $s5
/* 14424 80013824 0018C0C0 */  sll        $t8, $t8, 3
/* 14428 80013828 3C01800F */  lui        $at, %hi(gActors+0x9F)
/* 1442C 8001382C 26B50001 */  addiu      $s5, $s5, 1
/* 14430 80013830 00380821 */  addu       $at, $at, $t8
/* 14434 80013834 32ABFFFF */  andi       $t3, $s5, 0xffff
/* 14438 80013838 A020F5AF */  sb         $zero, %lo(gActors+0x9F)($at)
/* 1443C 8001383C 29610062 */  slti       $at, $t3, 0x62
/* 14440 80013840 1420FFF2 */  bnez       $at, .L8001380C
/* 14444 80013844 0160A825 */   or        $s5, $t3, $zero
/* 14448 80013848 00002025 */  or         $a0, $zero, $zero
/* 1444C 8001384C 00002825 */  or         $a1, $zero, $zero
/* 14450 80013850 00003025 */  or         $a2, $zero, $zero
/* 14454 80013854 0C009D62 */  jal        func_80027588
/* 14458 80013858 00003825 */   or        $a3, $zero, $zero
/* 1445C 8001385C 24040001 */  addiu      $a0, $zero, 1
/* 14460 80013860 00002825 */  or         $a1, $zero, $zero
/* 14464 80013864 00003025 */  or         $a2, $zero, $zero
/* 14468 80013868 0C009D62 */  jal        func_80027588
/* 1446C 8001386C 00003825 */   or        $a3, $zero, $zero
/* 14470 80013870 3C038018 */  lui        $v1, %hi(D_80178130)
/* 14474 80013874 94638130 */  lhu        $v1, %lo(D_80178130)($v1)
/* 14478 80013878 100000F8 */  b          .L80013C5C
/* 1447C 8001387C 28610B5A */   slti      $at, $v1, 0xb5a
/* 14480 80013880 286109C5 */  slti       $at, $v1, 0x9c5
.L80013884:
/* 14484 80013884 14200073 */  bnez       $at, .L80013A54
/* 14488 80013888 24010B9A */   addiu     $at, $zero, 0xb9a
/* 1448C 8001388C 14610007 */  bne        $v1, $at, .L800138AC
/* 14490 80013890 28610B9A */   slti      $at, $v1, 0xb9a
/* 14494 80013894 0C000CD3 */  jal        SFX_Play_1
/* 14498 80013898 240400D9 */   addiu     $a0, $zero, 0xd9
/* 1449C 8001389C 3C038018 */  lui        $v1, %hi(D_80178130)
/* 144A0 800138A0 94638130 */  lhu        $v1, %lo(D_80178130)($v1)
/* 144A4 800138A4 00000000 */  nop
/* 144A8 800138A8 28610B9A */  slti       $at, $v1, 0xb9a
.L800138AC:
/* 144AC 800138AC 10200048 */  beqz       $at, .L800139D0
/* 144B0 800138B0 3C0C800F */   lui       $t4, %hi(gActors+0x9F)
/* 144B4 800138B4 918CF5AF */  lbu        $t4, %lo(gActors+0x9F)($t4)
/* 144B8 800138B8 3C03800F */  lui        $v1, 0x800f
/* 144BC 800138BC 298100FC */  slti       $at, $t4, 0xfc
/* 144C0 800138C0 10200005 */  beqz       $at, .L800138D8
/* 144C4 800138C4 241000FC */   addiu     $s0, $zero, 0xfc
/* 144C8 800138C8 25830004 */  addiu      $v1, $t4, 4
/* 144CC 800138CC 306200FF */  andi       $v0, $v1, 0xff
/* 144D0 800138D0 10000007 */  b          .L800138F0
/* 144D4 800138D4 00401825 */   or        $v1, $v0, $zero
.L800138D8:
/* 144D8 800138D8 9063F5AF */  lbu        $v1, -0xa51($v1)
/* 144DC 800138DC 241000FC */  addiu      $s0, $zero, 0xfc
/* 144E0 800138E0 16030003 */  bne        $s0, $v1, .L800138F0
/* 144E4 800138E4 00601025 */   or        $v0, $v1, $zero
/* 144E8 800138E8 240300FF */  addiu      $v1, $zero, 0xff
/* 144EC 800138EC 240200FF */  addiu      $v0, $zero, 0xff
.L800138F0:
/* 144F0 800138F0 284100FC */  slti       $at, $v0, 0xfc
/* 144F4 800138F4 1020000B */  beqz       $at, .L80013924
/* 144F8 800138F8 304E0007 */   andi      $t6, $v0, 7
/* 144FC 800138FC 15C00009 */  bnez       $t6, .L80013924
/* 14500 80013900 3C01800F */   lui       $at, %hi(gActors+0x9F)
/* 14504 80013904 3C028018 */  lui        $v0, %hi(D_80178142)
/* 14508 80013908 24428142 */  addiu      $v0, $v0, %lo(D_80178142)
/* 1450C 8001390C A023F5AF */  sb         $v1, %lo(gActors+0x9F)($at)
/* 14510 80013910 844F0000 */  lh         $t7, ($v0)
/* 14514 80013914 00000000 */  nop
/* 14518 80013918 25F90001 */  addiu      $t9, $t7, 1
/* 1451C 8001391C 10000007 */  b          .L8001393C
/* 14520 80013920 A4590000 */   sh        $t9, ($v0)
.L80013924:
/* 14524 80013924 3C01800F */  lui        $at, %hi(gActors+0x9F)
/* 14528 80013928 16020004 */  bne        $s0, $v0, .L8001393C
/* 1452C 8001392C A023F5AF */   sb        $v1, %lo(gActors+0x9F)($at)
/* 14530 80013930 3C028018 */  lui        $v0, %hi(D_80178142)
/* 14534 80013934 24428142 */  addiu      $v0, $v0, %lo(D_80178142)
/* 14538 80013938 A4400000 */  sh         $zero, ($v0)
.L8001393C:
/* 1453C 8001393C 3C028018 */  lui        $v0, %hi(D_80178142)
/* 14540 80013940 24428142 */  addiu      $v0, $v0, %lo(D_80178142)
/* 14544 80013944 84470000 */  lh         $a3, ($v0)
/* 14548 80013948 3C04800C */  lui        $a0, %hi(D_800C7F04)
/* 1454C 8001394C 3C058026 */  lui        $a1, 0x8026
/* 14550 80013950 34A551F8 */  ori        $a1, $a1, 0x51f8
/* 14554 80013954 24847F04 */  addiu      $a0, $a0, %lo(D_800C7F04)
/* 14558 80013958 24060008 */  addiu      $a2, $zero, 8
/* 1455C 8001395C AFA70010 */  sw         $a3, 0x10($sp)
/* 14560 80013960 0C00AE0B */  jal        func_8002B82C
/* 14564 80013964 AFA70014 */   sw        $a3, 0x14($sp)
/* 14568 80013968 24150030 */  addiu      $s5, $zero, 0x30
/* 1456C 8001396C 240300FF */  addiu      $v1, $zero, 0xff
.L80013970:
/* 14570 80013970 0015C080 */  sll        $t8, $s5, 2
/* 14574 80013974 0315C023 */  subu       $t8, $t8, $s5
/* 14578 80013978 0018C080 */  sll        $t8, $t8, 2
/* 1457C 8001397C 0315C021 */  addu       $t8, $t8, $s5
/* 14580 80013980 0018C080 */  sll        $t8, $t8, 2
/* 14584 80013984 0315C023 */  subu       $t8, $t8, $s5
/* 14588 80013988 3C0B800F */  lui        $t3, %hi(gActors)
/* 1458C 8001398C 256BF510 */  addiu      $t3, $t3, %lo(gActors)
/* 14590 80013990 0018C0C0 */  sll        $t8, $t8, 3
/* 14594 80013994 030BA021 */  addu       $s4, $t8, $t3
/* 14598 80013998 9282009F */  lbu        $v0, 0x9f($s4)
/* 1459C 8001399C 26B50001 */  addiu      $s5, $s5, 1
/* 145A0 800139A0 284100FC */  slti       $at, $v0, 0xfc
/* 145A4 800139A4 10200004 */  beqz       $at, .L800139B8
/* 145A8 800139A8 32ADFFFF */   andi      $t5, $s5, 0xffff
/* 145AC 800139AC 244C0004 */  addiu      $t4, $v0, 4
/* 145B0 800139B0 10000004 */  b          .L800139C4
/* 145B4 800139B4 A28C009F */   sb        $t4, 0x9f($s4)
.L800139B8:
/* 145B8 800139B8 16020003 */  bne        $s0, $v0, .L800139C8
/* 145BC 800139BC 29A10062 */   slti      $at, $t5, 0x62
/* 145C0 800139C0 A283009F */  sb         $v1, 0x9f($s4)
.L800139C4:
/* 145C4 800139C4 29A10062 */  slti       $at, $t5, 0x62
.L800139C8:
/* 145C8 800139C8 1420FFE9 */  bnez       $at, .L80013970
/* 145CC 800139CC 01A0A825 */   or        $s5, $t5, $zero
.L800139D0:
/* 145D0 800139D0 3C02800F */  lui        $v0, %hi(gActors+0x9F)
/* 145D4 800139D4 9042F5AF */  lbu        $v0, %lo(gActors+0x9F)($v0)
/* 145D8 800139D8 00002025 */  or         $a0, $zero, $zero
/* 145DC 800139DC 00408025 */  or         $s0, $v0, $zero
/* 145E0 800139E0 06010003 */  bgez       $s0, .L800139F0
/* 145E4 800139E4 00102903 */   sra       $a1, $s0, 4
/* 145E8 800139E8 2601000F */  addiu      $at, $s0, 0xf
/* 145EC 800139EC 00012903 */  sra        $a1, $at, 4
.L800139F0:
/* 145F0 800139F0 30AE00FF */  andi       $t6, $a1, 0xff
/* 145F4 800139F4 01C02825 */  or         $a1, $t6, $zero
/* 145F8 800139F8 31C600FF */  andi       $a2, $t6, 0xff
/* 145FC 800139FC 06010003 */  bgez       $s0, .L80013A0C
/* 14600 80013A00 001088C3 */   sra       $s1, $s0, 3
/* 14604 80013A04 26010007 */  addiu      $at, $s0, 7
/* 14608 80013A08 000188C3 */  sra        $s1, $at, 3
.L80013A0C:
/* 1460C 80013A0C 322F00FF */  andi       $t7, $s1, 0xff
/* 14610 80013A10 01E08825 */  or         $s1, $t7, $zero
/* 14614 80013A14 0C009D62 */  jal        func_80027588
/* 14618 80013A18 31E700FF */   andi      $a3, $t7, 0xff
/* 1461C 80013A1C 24040001 */  addiu      $a0, $zero, 1
/* 14620 80013A20 322500FF */  andi       $a1, $s1, 0xff
/* 14624 80013A24 322600FF */  andi       $a2, $s1, 0xff
/* 14628 80013A28 06010003 */  bgez       $s0, .L80013A38
/* 1462C 80013A2C 00103943 */   sra       $a3, $s0, 5
/* 14630 80013A30 2601001F */  addiu      $at, $s0, 0x1f
/* 14634 80013A34 00013943 */  sra        $a3, $at, 5
.L80013A38:
/* 14638 80013A38 30F900FF */  andi       $t9, $a3, 0xff
/* 1463C 80013A3C 0C009D62 */  jal        func_80027588
/* 14640 80013A40 03203825 */   or        $a3, $t9, $zero
/* 14644 80013A44 3C038018 */  lui        $v1, %hi(D_80178130)
/* 14648 80013A48 94638130 */  lhu        $v1, %lo(D_80178130)($v1)
/* 1464C 80013A4C 10000083 */  b          .L80013C5C
/* 14650 80013A50 28610B5A */   slti      $at, $v1, 0xb5a
.L80013A54:
/* 14654 80013A54 240109C4 */  addiu      $at, $zero, 0x9c4
/* 14658 80013A58 14610019 */  bne        $v1, $at, .L80013AC0
/* 1465C 80013A5C 240107D0 */   addiu     $at, $zero, 0x7d0
/* 14660 80013A60 0C000CD3 */  jal        SFX_Play_1
/* 14664 80013A64 240400DA */   addiu     $a0, $zero, 0xda
/* 14668 80013A68 3C013F80 */  lui        $at, 0x3f80
/* 1466C 80013A6C 44811000 */  mtc1       $at, $f2
/* 14670 80013A70 3C05800C */  lui        $a1, 0x800c
/* 14674 80013A74 24180403 */  addiu      $t8, $zero, 0x403
/* 14678 80013A78 240B0040 */  addiu      $t3, $zero, 0x40
/* 1467C 80013A7C 240C0040 */  addiu      $t4, $zero, 0x40
/* 14680 80013A80 AFAC001C */  sw         $t4, 0x1c($sp)
/* 14684 80013A84 AFAB0014 */  sw         $t3, 0x14($sp)
/* 14688 80013A88 AFB80010 */  sw         $t8, 0x10($sp)
/* 1468C 80013A8C 24A57D74 */  addiu      $a1, $a1, 0x7d74
/* 14690 80013A90 24040033 */  addiu      $a0, $zero, 0x33
/* 14694 80013A94 3406FFA0 */  ori        $a2, $zero, 0xffa0
/* 14698 80013A98 24070050 */  addiu      $a3, $zero, 0x50
/* 1469C 80013A9C AFA00018 */  sw         $zero, 0x18($sp)
/* 146A0 80013AA0 E7A20020 */  swc1       $f2, 0x20($sp)
/* 146A4 80013AA4 0C009F65 */  jal        func_80027D94
/* 146A8 80013AA8 E7A20024 */   swc1      $f2, 0x24($sp)
/* 146AC 80013AAC 3C038018 */  lui        $v1, %hi(D_80178130)
/* 146B0 80013AB0 94638130 */  lhu        $v1, %lo(D_80178130)($v1)
/* 146B4 80013AB4 10000069 */  b          .L80013C5C
/* 146B8 80013AB8 28610B5A */   slti      $at, $v1, 0xb5a
/* 146BC 80013ABC 240107D0 */  addiu      $at, $zero, 0x7d0
.L80013AC0:
/* 146C0 80013AC0 14610019 */  bne        $v1, $at, .L80013B28
/* 146C4 80013AC4 240105DC */   addiu     $at, $zero, 0x5dc
/* 146C8 80013AC8 0C000CD3 */  jal        SFX_Play_1
/* 146CC 80013ACC 240400DD */   addiu     $a0, $zero, 0xdd
/* 146D0 80013AD0 3C013F80 */  lui        $at, 0x3f80
/* 146D4 80013AD4 44811000 */  mtc1       $at, $f2
/* 146D8 80013AD8 3C05800C */  lui        $a1, 0x800c
/* 146DC 80013ADC 240D0403 */  addiu      $t5, $zero, 0x403
/* 146E0 80013AE0 240E0040 */  addiu      $t6, $zero, 0x40
/* 146E4 80013AE4 240F0040 */  addiu      $t7, $zero, 0x40
/* 146E8 80013AE8 AFAF001C */  sw         $t7, 0x1c($sp)
/* 146EC 80013AEC AFAE0014 */  sw         $t6, 0x14($sp)
/* 146F0 80013AF0 AFAD0010 */  sw         $t5, 0x10($sp)
/* 146F4 80013AF4 24A57D94 */  addiu      $a1, $a1, 0x7d94
/* 146F8 80013AF8 24040033 */  addiu      $a0, $zero, 0x33
/* 146FC 80013AFC 3406FFA0 */  ori        $a2, $zero, 0xffa0
/* 14700 80013B00 24070050 */  addiu      $a3, $zero, 0x50
/* 14704 80013B04 AFA00018 */  sw         $zero, 0x18($sp)
/* 14708 80013B08 E7A20020 */  swc1       $f2, 0x20($sp)
/* 1470C 80013B0C 0C009F65 */  jal        func_80027D94
/* 14710 80013B10 E7A20024 */   swc1      $f2, 0x24($sp)
/* 14714 80013B14 3C038018 */  lui        $v1, %hi(D_80178130)
/* 14718 80013B18 94638130 */  lhu        $v1, %lo(D_80178130)($v1)
/* 1471C 80013B1C 1000004F */  b          .L80013C5C
/* 14720 80013B20 28610B5A */   slti      $at, $v1, 0xb5a
/* 14724 80013B24 240105DC */  addiu      $at, $zero, 0x5dc
.L80013B28:
/* 14728 80013B28 14610019 */  bne        $v1, $at, .L80013B90
/* 1472C 80013B2C 240103E8 */   addiu     $at, $zero, 0x3e8
/* 14730 80013B30 0C000CD3 */  jal        SFX_Play_1
/* 14734 80013B34 240400DC */   addiu     $a0, $zero, 0xdc
/* 14738 80013B38 3C013F80 */  lui        $at, 0x3f80
/* 1473C 80013B3C 44811000 */  mtc1       $at, $f2
/* 14740 80013B40 3C05800C */  lui        $a1, 0x800c
/* 14744 80013B44 24190403 */  addiu      $t9, $zero, 0x403
/* 14748 80013B48 24180040 */  addiu      $t8, $zero, 0x40
/* 1474C 80013B4C 240B0040 */  addiu      $t3, $zero, 0x40
/* 14750 80013B50 AFAB001C */  sw         $t3, 0x1c($sp)
/* 14754 80013B54 AFB80014 */  sw         $t8, 0x14($sp)
/* 14758 80013B58 AFB90010 */  sw         $t9, 0x10($sp)
/* 1475C 80013B5C 24A57DB4 */  addiu      $a1, $a1, 0x7db4
/* 14760 80013B60 24040033 */  addiu      $a0, $zero, 0x33
/* 14764 80013B64 3406FFA0 */  ori        $a2, $zero, 0xffa0
/* 14768 80013B68 24070050 */  addiu      $a3, $zero, 0x50
/* 1476C 80013B6C AFA00018 */  sw         $zero, 0x18($sp)
/* 14770 80013B70 E7A20020 */  swc1       $f2, 0x20($sp)
/* 14774 80013B74 0C009F65 */  jal        func_80027D94
/* 14778 80013B78 E7A20024 */   swc1      $f2, 0x24($sp)
/* 1477C 80013B7C 3C038018 */  lui        $v1, %hi(D_80178130)
/* 14780 80013B80 94638130 */  lhu        $v1, %lo(D_80178130)($v1)
/* 14784 80013B84 10000035 */  b          .L80013C5C
/* 14788 80013B88 28610B5A */   slti      $at, $v1, 0xb5a
/* 1478C 80013B8C 240103E8 */  addiu      $at, $zero, 0x3e8
.L80013B90:
/* 14790 80013B90 14610019 */  bne        $v1, $at, .L80013BF8
/* 14794 80013B94 240101F4 */   addiu     $at, $zero, 0x1f4
/* 14798 80013B98 0C000CD3 */  jal        SFX_Play_1
/* 1479C 80013B9C 240400E4 */   addiu     $a0, $zero, 0xe4
/* 147A0 80013BA0 3C013F80 */  lui        $at, 0x3f80
/* 147A4 80013BA4 44811000 */  mtc1       $at, $f2
/* 147A8 80013BA8 3C05800C */  lui        $a1, 0x800c
/* 147AC 80013BAC 240C0403 */  addiu      $t4, $zero, 0x403
/* 147B0 80013BB0 240D0040 */  addiu      $t5, $zero, 0x40
/* 147B4 80013BB4 240E0040 */  addiu      $t6, $zero, 0x40
/* 147B8 80013BB8 AFAE001C */  sw         $t6, 0x1c($sp)
/* 147BC 80013BBC AFAD0014 */  sw         $t5, 0x14($sp)
/* 147C0 80013BC0 AFAC0010 */  sw         $t4, 0x10($sp)
/* 147C4 80013BC4 24A57DD4 */  addiu      $a1, $a1, 0x7dd4
/* 147C8 80013BC8 24040033 */  addiu      $a0, $zero, 0x33
/* 147CC 80013BCC 3406FFA0 */  ori        $a2, $zero, 0xffa0
/* 147D0 80013BD0 24070050 */  addiu      $a3, $zero, 0x50
/* 147D4 80013BD4 AFA00018 */  sw         $zero, 0x18($sp)
/* 147D8 80013BD8 E7A20020 */  swc1       $f2, 0x20($sp)
/* 147DC 80013BDC 0C009F65 */  jal        func_80027D94
/* 147E0 80013BE0 E7A20024 */   swc1      $f2, 0x24($sp)
/* 147E4 80013BE4 3C038018 */  lui        $v1, %hi(D_80178130)
/* 147E8 80013BE8 94638130 */  lhu        $v1, %lo(D_80178130)($v1)
/* 147EC 80013BEC 1000001B */  b          .L80013C5C
/* 147F0 80013BF0 28610B5A */   slti      $at, $v1, 0xb5a
/* 147F4 80013BF4 240101F4 */  addiu      $at, $zero, 0x1f4
.L80013BF8:
/* 147F8 80013BF8 14610018 */  bne        $v1, $at, .L80013C5C
/* 147FC 80013BFC 28610B5A */   slti      $at, $v1, 0xb5a
/* 14800 80013C00 0C000CD3 */  jal        SFX_Play_1
/* 14804 80013C04 240400DB */   addiu     $a0, $zero, 0xdb
/* 14808 80013C08 3C013F80 */  lui        $at, 0x3f80
/* 1480C 80013C0C 44811000 */  mtc1       $at, $f2
/* 14810 80013C10 3C05800C */  lui        $a1, 0x800c
/* 14814 80013C14 240F0403 */  addiu      $t7, $zero, 0x403
/* 14818 80013C18 24190040 */  addiu      $t9, $zero, 0x40
/* 1481C 80013C1C 24180040 */  addiu      $t8, $zero, 0x40
/* 14820 80013C20 AFB8001C */  sw         $t8, 0x1c($sp)
/* 14824 80013C24 AFB90014 */  sw         $t9, 0x14($sp)
/* 14828 80013C28 AFAF0010 */  sw         $t7, 0x10($sp)
/* 1482C 80013C2C 24A57DF4 */  addiu      $a1, $a1, 0x7df4
/* 14830 80013C30 24040033 */  addiu      $a0, $zero, 0x33
/* 14834 80013C34 3406FFA0 */  ori        $a2, $zero, 0xffa0
/* 14838 80013C38 24070050 */  addiu      $a3, $zero, 0x50
/* 1483C 80013C3C AFA00018 */  sw         $zero, 0x18($sp)
/* 14840 80013C40 E7A20020 */  swc1       $f2, 0x20($sp)
/* 14844 80013C44 0C009F65 */  jal        func_80027D94
/* 14848 80013C48 E7A20024 */   swc1      $f2, 0x24($sp)
/* 1484C 80013C4C 3C038018 */  lui        $v1, %hi(D_80178130)
/* 14850 80013C50 94638130 */  lhu        $v1, %lo(D_80178130)($v1)
/* 14854 80013C54 00000000 */  nop
/* 14858 80013C58 28610B5A */  slti       $at, $v1, 0xb5a
.L80013C5C:
/* 1485C 80013C5C 10200393 */  beqz       $at, .L80014AAC
/* 14860 80013C60 32CB0800 */   andi      $t3, $s6, 0x800
/* 14864 80013C64 1160000F */  beqz       $t3, .L80013CA4
/* 14868 80013C68 02C01025 */   or        $v0, $s6, $zero
/* 1486C 80013C6C 0C000CD3 */  jal        SFX_Play_1
/* 14870 80013C70 24040022 */   addiu     $a0, $zero, 0x22
/* 14874 80013C74 3C03800F */  lui        $v1, %hi(D_800F454C)
/* 14878 80013C78 8463454C */  lh         $v1, %lo(D_800F454C)($v1)
/* 1487C 80013C7C 2401FFED */  addiu      $at, $zero, -0x13
/* 14880 80013C80 14610005 */  bne        $v1, $at, .L80013C98
/* 14884 80013C84 246D0014 */   addiu     $t5, $v1, 0x14
/* 14888 80013C88 240CFFB1 */  addiu      $t4, $zero, -0x4f
/* 1488C 80013C8C 3C01800F */  lui        $at, %hi(D_800F454C)
/* 14890 80013C90 10000386 */  b          .L80014AAC
/* 14894 80013C94 A42C454C */   sh        $t4, %lo(D_800F454C)($at)
.L80013C98:
/* 14898 80013C98 3C01800F */  lui        $at, %hi(D_800F454C)
/* 1489C 80013C9C 10000383 */  b          .L80014AAC
/* 148A0 80013CA0 A42D454C */   sh        $t5, %lo(D_800F454C)($at)
.L80013CA4:
/* 148A4 80013CA4 304E0400 */  andi       $t6, $v0, 0x400
/* 148A8 80013CA8 11C0000F */  beqz       $t6, .L80013CE8
/* 148AC 80013CAC 30581000 */   andi      $t8, $v0, 0x1000
/* 148B0 80013CB0 0C000CD3 */  jal        SFX_Play_1
/* 148B4 80013CB4 24040022 */   addiu     $a0, $zero, 0x22
/* 148B8 80013CB8 3C03800F */  lui        $v1, %hi(D_800F454C)
/* 148BC 80013CBC 8463454C */  lh         $v1, %lo(D_800F454C)($v1)
/* 148C0 80013CC0 2401FFB1 */  addiu      $at, $zero, -0x4f
/* 148C4 80013CC4 14610005 */  bne        $v1, $at, .L80013CDC
/* 148C8 80013CC8 2479FFEC */   addiu     $t9, $v1, -0x14
/* 148CC 80013CCC 240FFFED */  addiu      $t7, $zero, -0x13
/* 148D0 80013CD0 3C01800F */  lui        $at, %hi(D_800F454C)
/* 148D4 80013CD4 10000375 */  b          .L80014AAC
/* 148D8 80013CD8 A42F454C */   sh        $t7, %lo(D_800F454C)($at)
.L80013CDC:
/* 148DC 80013CDC 3C01800F */  lui        $at, %hi(D_800F454C)
/* 148E0 80013CE0 10000372 */  b          .L80014AAC
/* 148E4 80013CE4 A439454C */   sh        $t9, %lo(D_800F454C)($at)
.L80013CE8:
/* 148E8 80013CE8 17000003 */  bnez       $t8, .L80013CF8
/* 148EC 80013CEC 304B8000 */   andi      $t3, $v0, 0x8000
/* 148F0 80013CF0 1160001F */  beqz       $t3, .L80013D70
/* 148F4 80013CF4 00000000 */   nop
.L80013CF8:
/* 148F8 80013CF8 3C03800F */  lui        $v1, %hi(D_800F454C)
/* 148FC 80013CFC 8463454C */  lh         $v1, %lo(D_800F454C)($v1)
/* 14900 80013D00 2401FFED */  addiu      $at, $zero, -0x13
/* 14904 80013D04 14610006 */  bne        $v1, $at, .L80013D20
/* 14908 80013D08 2401FFD9 */   addiu     $at, $zero, -0x27
/* 1490C 80013D0C 0C004B7C */  jal        func_80012DF0
/* 14910 80013D10 2404000A */   addiu     $a0, $zero, 0xa
/* 14914 80013D14 10000366 */  b          .L80014AB0
/* 14918 80013D18 8FBF005C */   lw        $ra, 0x5c($sp)
/* 1491C 80013D1C 2401FFD9 */  addiu      $at, $zero, -0x27
.L80013D20:
/* 14920 80013D20 14610006 */  bne        $v1, $at, .L80013D3C
/* 14924 80013D24 2401FFC5 */   addiu     $at, $zero, -0x3b
/* 14928 80013D28 0C004B7C */  jal        func_80012DF0
/* 1492C 80013D2C 2404001E */   addiu     $a0, $zero, 0x1e
/* 14930 80013D30 1000035F */  b          .L80014AB0
/* 14934 80013D34 8FBF005C */   lw        $ra, 0x5c($sp)
/* 14938 80013D38 2401FFC5 */  addiu      $at, $zero, -0x3b
.L80013D3C:
/* 1493C 80013D3C 14610006 */  bne        $v1, $at, .L80013D58
/* 14940 80013D40 2401FFB1 */   addiu     $at, $zero, -0x4f
/* 14944 80013D44 0C004B7C */  jal        func_80012DF0
/* 14948 80013D48 24040064 */   addiu     $a0, $zero, 0x64
/* 1494C 80013D4C 10000358 */  b          .L80014AB0
/* 14950 80013D50 8FBF005C */   lw        $ra, 0x5c($sp)
/* 14954 80013D54 2401FFB1 */  addiu      $at, $zero, -0x4f
.L80013D58:
/* 14958 80013D58 14610355 */  bne        $v1, $at, .L80014AB0
/* 1495C 80013D5C 8FBF005C */   lw        $ra, 0x5c($sp)
/* 14960 80013D60 0C004B35 */  jal        func_80012CD4
/* 14964 80013D64 00000000 */   nop
/* 14968 80013D68 10000351 */  b          .L80014AB0
/* 1496C 80013D6C 8FBF005C */   lw        $ra, 0x5c($sp)
.L80013D70:
/* 14970 80013D70 1460034F */  bnez       $v1, .L80014AB0
/* 14974 80013D74 8FBF005C */   lw        $ra, 0x5c($sp)
/* 14978 80013D78 0C004B35 */  jal        func_80012CD4
/* 1497C 80013D7C 00000000 */   nop
/* 14980 80013D80 1000034B */  b          .L80014AB0
/* 14984 80013D84 8FBF005C */   lw        $ra, 0x5c($sp)
glabel L80013D88_14988
/* 14988 80013D88 3C0C8018 */  lui        $t4, %hi(D_80178130)
/* 1498C 80013D8C 958C8130 */  lhu        $t4, %lo(D_80178130)($t4)
/* 14990 80013D90 3C014100 */  lui        $at, 0x4100
/* 14994 80013D94 44811000 */  mtc1       $at, $f2
/* 14998 80013D98 3C02800F */  lui        $v0, %hi(D_800F4190)
/* 1499C 80013D9C 3C018018 */  lui        $at, %hi(D_80178130)
/* 149A0 80013DA0 258DFFFF */  addiu      $t5, $t4, -1
/* 149A4 80013DA4 24424190 */  addiu      $v0, $v0, %lo(D_800F4190)
/* 149A8 80013DA8 A42D8130 */  sh         $t5, %lo(D_80178130)($at)
/* 149AC 80013DAC C44600C0 */  lwc1       $f6, 0xc0($v0)
/* 149B0 80013DB0 904E009F */  lbu        $t6, 0x9f($v0)
/* 149B4 80013DB4 46023200 */  add.s      $f8, $f6, $f2
/* 149B8 80013DB8 241000FC */  addiu      $s0, $zero, 0xfc
/* 149BC 80013DBC 120E0006 */  beq        $s0, $t6, .L80013DD8
/* 149C0 80013DC0 E44800C0 */   swc1      $f8, 0xc0($v0)
/* 149C4 80013DC4 3C04800F */  lui        $a0, %hi(D_800F422F)
/* 149C8 80013DC8 9084422F */  lbu        $a0, %lo(D_800F422F)($a0)
/* 149CC 80013DCC 3C01800F */  lui        $at, %hi(D_800F422F)
/* 149D0 80013DD0 248F0002 */  addiu      $t7, $a0, 2
/* 149D4 80013DD4 A02F422F */  sb         $t7, %lo(D_800F422F)($at)
.L80013DD8:
/* 149D8 80013DD8 3C038018 */  lui        $v1, %hi(D_80178130)
/* 149DC 80013DDC 94638130 */  lhu        $v1, %lo(D_80178130)($v1)
/* 149E0 80013DE0 24010280 */  addiu      $at, $zero, 0x280
/* 149E4 80013DE4 1461000B */  bne        $v1, $at, .L80013E14
/* 149E8 80013DE8 28610280 */   slti      $at, $v1, 0x280
/* 149EC 80013DEC 0C0174F6 */  jal        func_8005D3D8
/* 149F0 80013DF0 00002025 */   or        $a0, $zero, $zero
/* 149F4 80013DF4 3C108018 */  lui        $s0, %hi(D_80178140)
/* 149F8 80013DF8 26108140 */  addiu      $s0, $s0, %lo(D_80178140)
/* 149FC 80013DFC A2000000 */  sb         $zero, ($s0)
/* 14A00 80013E00 0C000CD3 */  jal        SFX_Play_1
/* 14A04 80013E04 240400C9 */   addiu     $a0, $zero, 0xc9
/* 14A08 80013E08 10000011 */  b          .L80013E50
/* 14A0C 80013E0C 00000000 */   nop
/* 14A10 80013E10 28610280 */  slti       $at, $v1, 0x280
.L80013E14:
/* 14A14 80013E14 1020000E */  beqz       $at, .L80013E50
/* 14A18 80013E18 3C108018 */   lui       $s0, %hi(D_80178140)
/* 14A1C 80013E1C 26108140 */  addiu      $s0, $s0, %lo(D_80178140)
/* 14A20 80013E20 92190000 */  lbu        $t9, ($s0)
/* 14A24 80013E24 00000000 */  nop
/* 14A28 80013E28 17200009 */  bnez       $t9, .L80013E50
/* 14A2C 80013E2C 00000000 */   nop
/* 14A30 80013E30 0C017506 */  jal        func_8005D418
/* 14A34 80013E34 00002025 */   or        $a0, $zero, $zero
/* 14A38 80013E38 10400005 */  beqz       $v0, .L80013E50
/* 14A3C 80013E3C 24130001 */   addiu     $s3, $zero, 1
/* 14A40 80013E40 241800A5 */  addiu      $t8, $zero, 0xa5
/* 14A44 80013E44 3C01800F */  lui        $at, %hi(gActors+0x170)
/* 14A48 80013E48 AC38F680 */  sw         $t8, %lo(gActors+0x170)($at)
/* 14A4C 80013E4C A2130000 */  sb         $s3, ($s0)
.L80013E50:
/* 14A50 80013E50 3C0B8018 */  lui        $t3, %hi(D_80178130)
/* 14A54 80013E54 956B8130 */  lhu        $t3, %lo(D_80178130)($t3)
/* 14A58 80013E58 24010200 */  addiu      $at, $zero, 0x200
/* 14A5C 80013E5C 15610313 */  bne        $t3, $at, .L80014AAC
/* 14A60 80013E60 3C02800C */   lui       $v0, %hi(gGameSubState)
/* 14A64 80013E64 9442E4F4 */  lhu        $v0, %lo(gGameSubState)($v0)
/* 14A68 80013E68 24150033 */  addiu      $s5, $zero, 0x33
.L80013E6C:
/* 14A6C 80013E6C 00156080 */  sll        $t4, $s5, 2
/* 14A70 80013E70 01956023 */  subu       $t4, $t4, $s5
/* 14A74 80013E74 000C6080 */  sll        $t4, $t4, 2
/* 14A78 80013E78 01956021 */  addu       $t4, $t4, $s5
/* 14A7C 80013E7C 000C6080 */  sll        $t4, $t4, 2
/* 14A80 80013E80 01956023 */  subu       $t4, $t4, $s5
/* 14A84 80013E84 000C60C0 */  sll        $t4, $t4, 3
/* 14A88 80013E88 3C01800F */  lui        $at, %hi(gActors+0x80)
/* 14A8C 80013E8C 002C0821 */  addu       $at, $at, $t4
/* 14A90 80013E90 26B50001 */  addiu      $s5, $s5, 1
/* 14A94 80013E94 32ADFFFF */  andi       $t5, $s5, 0xffff
/* 14A98 80013E98 AC20F590 */  sw         $zero, %lo(gActors+0x80)($at)
/* 14A9C 80013E9C 29A10041 */  slti       $at, $t5, 0x41
/* 14AA0 80013EA0 1420FFF2 */  bnez       $at, .L80013E6C
/* 14AA4 80013EA4 01A0A825 */   or        $s5, $t5, $zero
/* 14AA8 80013EA8 244E0001 */  addiu      $t6, $v0, 1
/* 14AAC 80013EAC 3C01800C */  lui        $at, %hi(gGameSubState)
/* 14AB0 80013EB0 100002FE */  b          .L80014AAC
/* 14AB4 80013EB4 A42EE4F4 */   sh        $t6, %lo(gGameSubState)($at)
glabel L80013EB8_14AB8
/* 14AB8 80013EB8 3C0F8018 */  lui        $t7, %hi(D_80178130)
/* 14ABC 80013EBC 95EF8130 */  lhu        $t7, %lo(D_80178130)($t7)
/* 14AC0 80013EC0 3C014100 */  lui        $at, 0x4100
/* 14AC4 80013EC4 44811000 */  mtc1       $at, $f2
/* 14AC8 80013EC8 3C02800F */  lui        $v0, %hi(D_800F4190)
/* 14ACC 80013ECC 3C018018 */  lui        $at, %hi(D_80178130)
/* 14AD0 80013ED0 25F9FFFF */  addiu      $t9, $t7, -1
/* 14AD4 80013ED4 24424190 */  addiu      $v0, $v0, %lo(D_800F4190)
/* 14AD8 80013ED8 A4398130 */  sh         $t9, %lo(D_80178130)($at)
/* 14ADC 80013EDC C44A00C0 */  lwc1       $f10, 0xc0($v0)
/* 14AE0 80013EE0 9058009F */  lbu        $t8, 0x9f($v0)
/* 14AE4 80013EE4 46025400 */  add.s      $f16, $f10, $f2
/* 14AE8 80013EE8 240100FE */  addiu      $at, $zero, 0xfe
/* 14AEC 80013EEC 13010006 */  beq        $t8, $at, .L80013F08
/* 14AF0 80013EF0 E45000C0 */   swc1      $f16, 0xc0($v0)
/* 14AF4 80013EF4 3C04800F */  lui        $a0, %hi(D_800F422F)
/* 14AF8 80013EF8 9084422F */  lbu        $a0, %lo(D_800F422F)($a0)
/* 14AFC 80013EFC 3C01800F */  lui        $at, %hi(D_800F422F)
/* 14B00 80013F00 248B0002 */  addiu      $t3, $a0, 2
/* 14B04 80013F04 A02B422F */  sb         $t3, %lo(D_800F422F)($at)
.L80013F08:
/* 14B08 80013F08 3C0C8018 */  lui        $t4, %hi(D_80178130)
/* 14B0C 80013F0C 958C8130 */  lhu        $t4, %lo(D_80178130)($t4)
/* 14B10 80013F10 240101C0 */  addiu      $at, $zero, 0x1c0
/* 14B14 80013F14 158102E5 */  bne        $t4, $at, .L80014AAC
/* 14B18 80013F18 3C11800C */   lui       $s1, %hi(D_800C7D10)
/* 14B1C 80013F1C 944D0094 */  lhu        $t5, 0x94($v0)
/* 14B20 80013F20 240F0403 */  addiu      $t7, $zero, 0x403
/* 14B24 80013F24 35AE0010 */  ori        $t6, $t5, 0x10
/* 14B28 80013F28 26257D10 */  addiu      $a1, $s1, %lo(D_800C7D10)
/* 14B2C 80013F2C A44E0094 */  sh         $t6, 0x94($v0)
/* 14B30 80013F30 AFAF0010 */  sw         $t7, 0x10($sp)
/* 14B34 80013F34 24040031 */  addiu      $a0, $zero, 0x31
/* 14B38 80013F38 00003025 */  or         $a2, $zero, $zero
/* 14B3C 80013F3C 0C009D44 */  jal        func_80027510
/* 14B40 80013F40 24070100 */   addiu     $a3, $zero, 0x100
/* 14B44 80013F44 3C19800F */  lui        $t9, %hi(D_800F43BC)
/* 14B48 80013F48 973943BC */  lhu        $t9, %lo(D_800F43BC)($t9)
/* 14B4C 80013F4C 3C014000 */  lui        $at, 0x4000
/* 14B50 80013F50 44810000 */  mtc1       $at, $f0
/* 14B54 80013F54 3C01800F */  lui        $at, %hi(D_800F43BC)
/* 14B58 80013F58 37380009 */  ori        $t8, $t9, 9
/* 14B5C 80013F5C A43843BC */  sh         $t8, %lo(D_800F43BC)($at)
/* 14B60 80013F60 3C01800F */  lui        $at, %hi(D_800F447C)
/* 14B64 80013F64 240B0100 */  addiu      $t3, $zero, 0x100
/* 14B68 80013F68 AC2B447C */  sw         $t3, %lo(D_800F447C)($at)
/* 14B6C 80013F6C 3C01800F */  lui        $at, %hi(D_800F4480)
/* 14B70 80013F70 AC204480 */  sw         $zero, %lo(D_800F4480)($at)
/* 14B74 80013F74 3C01800F */  lui        $at, %hi(D_800F43DC)
/* 14B78 80013F78 E42043DC */  swc1       $f0, %lo(D_800F43DC)($at)
/* 14B7C 80013F7C 3C01800F */  lui        $at, %hi(D_800F43E0)
/* 14B80 80013F80 3C0D800C */  lui        $t5, %hi(gGameSubState)
/* 14B84 80013F84 E42043E0 */  swc1       $f0, %lo(D_800F43E0)($at)
/* 14B88 80013F88 95ADE4F4 */  lhu        $t5, %lo(gGameSubState)($t5)
/* 14B8C 80013F8C 3C01800F */  lui        $at, %hi(D_800F43C7)
/* 14B90 80013F90 240C00FF */  addiu      $t4, $zero, 0xff
/* 14B94 80013F94 A02C43C7 */  sb         $t4, %lo(D_800F43C7)($at)
/* 14B98 80013F98 3C01800C */  lui        $at, %hi(gGameSubState)
/* 14B9C 80013F9C 25AE0001 */  addiu      $t6, $t5, 1
/* 14BA0 80013FA0 100002C2 */  b          .L80014AAC
/* 14BA4 80013FA4 A42EE4F4 */   sh        $t6, %lo(gGameSubState)($at)
glabel L80013FA8_14BA8
/* 14BA8 80013FA8 3C0F8018 */  lui        $t7, %hi(D_80178130)
/* 14BAC 80013FAC 95EF8130 */  lhu        $t7, %lo(D_80178130)($t7)
/* 14BB0 80013FB0 3C014100 */  lui        $at, 0x4100
/* 14BB4 80013FB4 44811000 */  mtc1       $at, $f2
/* 14BB8 80013FB8 3C02800F */  lui        $v0, %hi(D_800F4190)
/* 14BBC 80013FBC 3C018018 */  lui        $at, %hi(D_80178130)
/* 14BC0 80013FC0 25F9FFFF */  addiu      $t9, $t7, -1
/* 14BC4 80013FC4 24424190 */  addiu      $v0, $v0, %lo(D_800F4190)
/* 14BC8 80013FC8 A4398130 */  sh         $t9, %lo(D_80178130)($at)
/* 14BCC 80013FCC C45200C0 */  lwc1       $f18, 0xc0($v0)
/* 14BD0 80013FD0 3C03800F */  lui        $v1, %hi(gActors+0x9F)
/* 14BD4 80013FD4 46029100 */  add.s      $f4, $f18, $f2
/* 14BD8 80013FD8 3C01800F */  lui        $at, 0x800f
/* 14BDC 80013FDC E44400C0 */  swc1       $f4, 0xc0($v0)
/* 14BE0 80013FE0 9063F5AF */  lbu        $v1, %lo(gActors+0x9F)($v1)
/* 14BE4 80013FE4 3C04800F */  lui        $a0, 0x800f
/* 14BE8 80013FE8 10600005 */  beqz       $v1, .L80014000
/* 14BEC 80013FEC 24150031 */   addiu     $s5, $zero, 0x31
/* 14BF0 80013FF0 2478FFFF */  addiu      $t8, $v1, -1
/* 14BF4 80013FF4 3C01800F */  lui        $at, %hi(gActors+0x9F)
/* 14BF8 80013FF8 10000002 */  b          .L80014004
/* 14BFC 80013FFC A038F5AF */   sb        $t8, %lo(gActors+0x9F)($at)
.L80014000:
/* 14C00 80014000 AC20F590 */  sw         $zero, -0xa70($at)
.L80014004:
/* 14C04 80014004 9084422F */  lbu        $a0, 0x422f($a0)
/* 14C08 80014008 3C01800F */  lui        $at, 0x800f
/* 14C0C 8001400C 1080001D */  beqz       $a0, .L80014084
/* 14C10 80014010 3C038018 */   lui       $v1, 0x8018
/* 14C14 80014014 3C038018 */  lui        $v1, %hi(D_80178130)
/* 14C18 80014018 94638130 */  lhu        $v1, %lo(D_80178130)($v1)
/* 14C1C 8001401C 248BFFFF */  addiu      $t3, $a0, -1
/* 14C20 80014020 3C01800F */  lui        $at, %hi(D_800F422F)
/* 14C24 80014024 01602025 */  or         $a0, $t3, $zero
/* 14C28 80014028 A02B422F */  sb         $t3, %lo(D_800F422F)($at)
/* 14C2C 8001402C 04610004 */  bgez       $v1, .L80014040
/* 14C30 80014030 306C0001 */   andi      $t4, $v1, 1
/* 14C34 80014034 11800002 */  beqz       $t4, .L80014040
/* 14C38 80014038 00000000 */   nop
/* 14C3C 8001403C 258CFFFE */  addiu      $t4, $t4, -2
.L80014040:
/* 14C40 80014040 11800012 */  beqz       $t4, .L8001408C
/* 14C44 80014044 3C0D800F */   lui       $t5, %hi(D_800F422C)
/* 14C48 80014048 91AD422C */  lbu        $t5, %lo(D_800F422C)($t5)
/* 14C4C 8001404C 3C01800F */  lui        $at, %hi(D_800F422C)
/* 14C50 80014050 25AE0001 */  addiu      $t6, $t5, 1
/* 14C54 80014054 A02E422C */  sb         $t6, %lo(D_800F422C)($at)
/* 14C58 80014058 3C0F800F */  lui        $t7, %hi(D_800F422D)
/* 14C5C 8001405C 91EF422D */  lbu        $t7, %lo(D_800F422D)($t7)
/* 14C60 80014060 3C01800F */  lui        $at, %hi(D_800F422D)
/* 14C64 80014064 25F90001 */  addiu      $t9, $t7, 1
/* 14C68 80014068 A039422D */  sb         $t9, %lo(D_800F422D)($at)
/* 14C6C 8001406C 3C18800F */  lui        $t8, %hi(D_800F422E)
/* 14C70 80014070 9318422E */  lbu        $t8, %lo(D_800F422E)($t8)
/* 14C74 80014074 3C01800F */  lui        $at, %hi(D_800F422E)
/* 14C78 80014078 270B0001 */  addiu      $t3, $t8, 1
/* 14C7C 8001407C 10000003 */  b          .L8001408C
/* 14C80 80014080 A02B422E */   sb        $t3, %lo(D_800F422E)($at)
.L80014084:
/* 14C84 80014084 94638130 */  lhu        $v1, -0x7ed0($v1)
/* 14C88 80014088 AC204210 */  sw         $zero, 0x4210($at)
.L8001408C:
/* 14C8C 8001408C 00156080 */  sll        $t4, $s5, 2
/* 14C90 80014090 01956023 */  subu       $t4, $t4, $s5
/* 14C94 80014094 000C6080 */  sll        $t4, $t4, 2
/* 14C98 80014098 01956021 */  addu       $t4, $t4, $s5
/* 14C9C 8001409C 000C6080 */  sll        $t4, $t4, 2
/* 14CA0 800140A0 01956023 */  subu       $t4, $t4, $s5
/* 14CA4 800140A4 3C0D800F */  lui        $t5, %hi(gActors)
/* 14CA8 800140A8 25ADF510 */  addiu      $t5, $t5, %lo(gActors)
/* 14CAC 800140AC 000C60C0 */  sll        $t4, $t4, 3
/* 14CB0 800140B0 018DA021 */  addu       $s4, $t4, $t5
/* 14CB4 800140B4 9282009F */  lbu        $v0, 0x9f($s4)
/* 14CB8 800140B8 3C01800F */  lui        $at, 0x800f
/* 14CBC 800140BC 10400003 */  beqz       $v0, .L800140CC
/* 14CC0 800140C0 244EFFFF */   addiu     $t6, $v0, -1
/* 14CC4 800140C4 10000002 */  b          .L800140D0
/* 14CC8 800140C8 A28E009F */   sb        $t6, 0x9f($s4)
.L800140CC:
/* 14CCC 800140CC AE800080 */  sw         $zero, 0x80($s4)
.L800140D0:
/* 14CD0 800140D0 8E820154 */  lw         $v0, 0x154($s4)
/* 14CD4 800140D4 00000000 */  nop
/* 14CD8 800140D8 10400003 */  beqz       $v0, .L800140E8
/* 14CDC 800140DC 244FFFFF */   addiu     $t7, $v0, -1
/* 14CE0 800140E0 AE8F0154 */  sw         $t7, 0x154($s4)
/* 14CE4 800140E4 01E01025 */  or         $v0, $t7, $zero
.L800140E8:
/* 14CE8 800140E8 8E990158 */  lw         $t9, 0x158($s4)
/* 14CEC 800140EC C42DB020 */  lwc1       $f13, -0x4fe0($at)
/* 14CF0 800140F0 2738FFF2 */  addiu      $t8, $t9, -0xe
/* 14CF4 800140F4 270BFF00 */  addiu      $t3, $t8, -0x100
/* 14CF8 800140F8 C42CB024 */  lwc1       $f12, -0x4fdc($at)
/* 14CFC 800140FC 44823000 */  mtc1       $v0, $f6
/* 14D00 80014100 316C03FF */  andi       $t4, $t3, 0x3ff
/* 14D04 80014104 000C6880 */  sll        $t5, $t4, 2
/* 14D08 80014108 3C01800C */  lui        $at, %hi(D_800BCCD0)
/* 14D0C 8001410C 46803020 */  cvt.s.w    $f0, $f6
/* 14D10 80014110 AE980158 */  sw         $t8, 0x158($s4)
/* 14D14 80014114 002D0821 */  addu       $at, $at, $t5
/* 14D18 80014118 C428CCD0 */  lwc1       $f8, %lo(D_800BCCD0)($at)
/* 14D1C 8001411C 331903FF */  andi       $t9, $t8, 0x3ff
/* 14D20 80014120 46080282 */  mul.s      $f10, $f0, $f8
/* 14D24 80014124 0019C080 */  sll        $t8, $t9, 2
/* 14D28 80014128 C68800C4 */  lwc1       $f8, 0xc4($s4)
/* 14D2C 8001412C 3C0D800F */  lui        $t5, 0x800f
/* 14D30 80014130 444EF800 */  cfc1       $t6, $31
/* 14D34 80014134 00000000 */  nop
/* 14D38 80014138 35C10003 */  ori        $at, $t6, 3
/* 14D3C 8001413C 38210002 */  xori       $at, $at, 2
/* 14D40 80014140 44C1F800 */  ctc1       $at, $31
/* 14D44 80014144 3C01800C */  lui        $at, 0x800c
/* 14D48 80014148 46005424 */  cvt.w.s    $f16, $f10
/* 14D4C 8001414C 00380821 */  addu       $at, $at, $t8
/* 14D50 80014150 440F8000 */  mfc1       $t7, $f16
/* 14D54 80014154 44CEF800 */  ctc1       $t6, $31
/* 14D58 80014158 A68F0088 */  sh         $t7, 0x88($s4)
/* 14D5C 8001415C C432CCD0 */  lwc1       $f18, -0x3330($at)
/* 14D60 80014160 00000000 */  nop
/* 14D64 80014164 46120102 */  mul.s      $f4, $f0, $f18
/* 14D68 80014168 444BF800 */  cfc1       $t3, $31
/* 14D6C 8001416C 00000000 */  nop
/* 14D70 80014170 35610003 */  ori        $at, $t3, 3
/* 14D74 80014174 38210002 */  xori       $at, $at, 2
/* 14D78 80014178 44C1F800 */  ctc1       $at, $31
/* 14D7C 8001417C 3C014180 */  lui        $at, 0x4180
/* 14D80 80014180 460021A4 */  cvt.w.s    $f6, $f4
/* 14D84 80014184 44815000 */  mtc1       $at, $f10
/* 14D88 80014188 44CBF800 */  ctc1       $t3, $31
/* 14D8C 8001418C 440C3000 */  mfc1       $t4, $f6
/* 14D90 80014190 460A4400 */  add.s      $f16, $f8, $f10
/* 14D94 80014194 A68C008C */  sh         $t4, 0x8c($s4)
/* 14D98 80014198 E69000C4 */  swc1       $f16, 0xc4($s4)
/* 14D9C 8001419C 95ADF5A4 */  lhu        $t5, -0xa5c($t5)
/* 14DA0 800141A0 3C01800F */  lui        $at, %hi(gActors+0x94)
/* 14DA4 800141A4 35AE0009 */  ori        $t6, $t5, 9
/* 14DA8 800141A8 A42EF5A4 */  sh         $t6, %lo(gActors+0x94)($at)
/* 14DAC 800141AC 3C01800F */  lui        $at, %hi(gActors+0xC4)
/* 14DB0 800141B0 C432F5D4 */  lwc1       $f18, %lo(gActors+0xC4)($at)
/* 14DB4 800141B4 3C014120 */  lui        $at, 0x4120
/* 14DB8 800141B8 44812000 */  mtc1       $at, $f4
/* 14DBC 800141BC 3C01800F */  lui        $at, %hi(gActors+0xC4)
/* 14DC0 800141C0 46049180 */  add.s      $f6, $f18, $f4
/* 14DC4 800141C4 E426F5D4 */  swc1       $f6, %lo(gActors+0xC4)($at)
/* 14DC8 800141C8 C68800B4 */  lwc1       $f8, 0xb4($s4)
/* 14DCC 800141CC 3C01800F */  lui        $at, 0x800f
/* 14DD0 800141D0 460040A1 */  cvt.d.s    $f2, $f8
/* 14DD4 800141D4 4622603C */  c.lt.d     $f12, $f2
/* 14DD8 800141D8 00000000 */  nop
/* 14DDC 800141DC 45000019 */  bc1f       .L80014244
/* 14DE0 800141E0 00000000 */   nop
/* 14DE4 800141E4 C421B028 */  lwc1       $f1, -0x4fd8($at)
/* 14DE8 800141E8 C420B02C */  lwc1       $f0, -0x4fd4($at)
/* 14DEC 800141EC C69200B8 */  lwc1       $f18, 0xb8($s4)
/* 14DF0 800141F0 46201281 */  sub.d      $f10, $f2, $f0
/* 14DF4 800141F4 3C01800F */  lui        $at, 0x800f
/* 14DF8 800141F8 46009121 */  cvt.d.s    $f4, $f18
/* 14DFC 800141FC 46202181 */  sub.d      $f6, $f4, $f0
/* 14E00 80014200 46205420 */  cvt.s.d    $f16, $f10
/* 14E04 80014204 46203220 */  cvt.s.d    $f8, $f6
/* 14E08 80014208 E69000B4 */  swc1       $f16, 0xb4($s4)
/* 14E0C 8001420C E68800B8 */  swc1       $f8, 0xb8($s4)
/* 14E10 80014210 C42AF5C4 */  lwc1       $f10, -0xa3c($at)
/* 14E14 80014214 00000000 */  nop
/* 14E18 80014218 46005421 */  cvt.d.s    $f16, $f10
/* 14E1C 8001421C 462C8481 */  sub.d      $f18, $f16, $f12
/* 14E20 80014220 46209120 */  cvt.s.d    $f4, $f18
/* 14E24 80014224 E424F5C4 */  swc1       $f4, -0xa3c($at)
/* 14E28 80014228 3C01800F */  lui        $at, %hi(gActors+0xB8)
/* 14E2C 8001422C C426F5C8 */  lwc1       $f6, %lo(gActors+0xB8)($at)
/* 14E30 80014230 00000000 */  nop
/* 14E34 80014234 46003221 */  cvt.d.s    $f8, $f6
/* 14E38 80014238 462C4281 */  sub.d      $f10, $f8, $f12
/* 14E3C 8001423C 46205420 */  cvt.s.d    $f16, $f10
/* 14E40 80014240 E430F5C8 */  swc1       $f16, -0xa38($at)
.L80014244:
/* 14E44 80014244 24010180 */  addiu      $at, $zero, 0x180
/* 14E48 80014248 14610005 */  bne        $v1, $at, .L80014260
/* 14E4C 8001424C 00000000 */   nop
/* 14E50 80014250 0C000CD3 */  jal        SFX_Play_1
/* 14E54 80014254 240400DD */   addiu     $a0, $zero, 0xdd
/* 14E58 80014258 10000215 */  b          .L80014AB0
/* 14E5C 8001425C 8FBF005C */   lw        $ra, 0x5c($sp)
.L80014260:
/* 14E60 80014260 14600212 */  bnez       $v1, .L80014AAC
/* 14E64 80014264 3C01800C */   lui       $at, %hi(gGameState)
/* 14E68 80014268 A420E4F0 */  sh         $zero, %lo(gGameState)($at)
/* 14E6C 8001426C 3C01800C */  lui        $at, %hi(gGameSubState)
/* 14E70 80014270 1000020E */  b          .L80014AAC
/* 14E74 80014274 A420E4F4 */   sh        $zero, %lo(gGameSubState)($at)
glabel L80014278_14E78
/* 14E78 80014278 3C0F8018 */  lui        $t7, %hi(D_80178130)
/* 14E7C 8001427C 95EF8130 */  lhu        $t7, %lo(D_80178130)($t7)
/* 14E80 80014280 3C018018 */  lui        $at, %hi(D_80178130)
/* 14E84 80014284 25F9FFFF */  addiu      $t9, $t7, -1
/* 14E88 80014288 A4398130 */  sh         $t9, %lo(D_80178130)($at)
/* 14E8C 8001428C 3C01800F */  lui        $at, %hi(D_800EB030)
/* 14E90 80014290 3C1E8022 */  lui        $fp, 0x8022
/* 14E94 80014294 3C05800F */  lui        $a1, %hi(gActors)
/* 14E98 80014298 C434B030 */  lwc1       $f20, %lo(D_800EB030)($at)
/* 14E9C 8001429C 24A5F510 */  addiu      $a1, $a1, %lo(gActors)
/* 14EA0 800142A0 37DED528 */  ori        $fp, $fp, 0xd528
/* 14EA4 800142A4 24150041 */  addiu      $s5, $zero, 0x41
/* 14EA8 800142A8 24030041 */  addiu      $v1, $zero, 0x41
/* 14EAC 800142AC 24170A09 */  addiu      $s7, $zero, 0xa09
/* 14EB0 800142B0 24060198 */  addiu      $a2, $zero, 0x198
.L800142B4:
/* 14EB4 800142B4 02A60019 */  multu      $s5, $a2
/* 14EB8 800142B8 3C01800C */  lui        $at, 0x800c
/* 14EBC 800142BC 2462001F */  addiu      $v0, $v1, 0x1f
/* 14EC0 800142C0 24760047 */  addiu      $s6, $v1, 0x47
/* 14EC4 800142C4 3051FFFF */  andi       $s1, $v0, 0xffff
/* 14EC8 800142C8 02209025 */  or         $s2, $s1, $zero
/* 14ECC 800142CC 0000C012 */  mflo       $t8
/* 14ED0 800142D0 00B8A021 */  addu       $s4, $a1, $t8
/* 14ED4 800142D4 8E8B0154 */  lw         $t3, 0x154($s4)
/* 14ED8 800142D8 8E8D0158 */  lw         $t5, 0x158($s4)
/* 14EDC 800142DC 256FFFFF */  addiu      $t7, $t3, -1
/* 14EE0 800142E0 25A40008 */  addiu      $a0, $t5, 8
/* 14EE4 800142E4 2499FF00 */  addiu      $t9, $a0, -0x100
/* 14EE8 800142E8 448F9000 */  mtc1       $t7, $f18
/* 14EEC 800142EC 333803FF */  andi       $t8, $t9, 0x3ff
/* 14EF0 800142F0 AE8F0154 */  sw         $t7, 0x154($s4)
/* 14EF4 800142F4 AE840158 */  sw         $a0, 0x158($s4)
/* 14EF8 800142F8 00185880 */  sll        $t3, $t8, 2
/* 14EFC 800142FC 46809020 */  cvt.s.w    $f0, $f18
/* 14F00 80014300 84AC0088 */  lh         $t4, 0x88($a1)
/* 14F04 80014304 002B0821 */  addu       $at, $at, $t3
/* 14F08 80014308 C424CCD0 */  lwc1       $f4, -0x3330($at)
/* 14F0C 8001430C 448C4000 */  mtc1       $t4, $f8
/* 14F10 80014310 46040182 */  mul.s      $f6, $f0, $f4
/* 14F14 80014314 308F03FF */  andi       $t7, $a0, 0x3ff
/* 14F18 80014318 000FC880 */  sll        $t9, $t7, 2
/* 14F1C 8001431C 468042A0 */  cvt.s.w    $f10, $f8
/* 14F20 80014320 460A3400 */  add.s      $f16, $f6, $f10
/* 14F24 80014324 444DF800 */  cfc1       $t5, $31
/* 14F28 80014328 00000000 */  nop
/* 14F2C 8001432C 35A10003 */  ori        $at, $t5, 3
/* 14F30 80014330 38210002 */  xori       $at, $at, 2
/* 14F34 80014334 44C1F800 */  ctc1       $at, $31
/* 14F38 80014338 3C01800C */  lui        $at, 0x800c
/* 14F3C 8001433C 460084A4 */  cvt.w.s    $f18, $f16
/* 14F40 80014340 00390821 */  addu       $at, $at, $t9
/* 14F44 80014344 440E9000 */  mfc1       $t6, $f18
/* 14F48 80014348 44CDF800 */  ctc1       $t5, $31
/* 14F4C 8001434C A68E0088 */  sh         $t6, 0x88($s4)
/* 14F50 80014350 84B8008C */  lh         $t8, 0x8c($a1)
/* 14F54 80014354 C424CCD0 */  lwc1       $f4, -0x3330($at)
/* 14F58 80014358 44983000 */  mtc1       $t8, $f6
/* 14F5C 8001435C 46040202 */  mul.s      $f8, $f0, $f4
/* 14F60 80014360 304DFFFF */  andi       $t5, $v0, 0xffff
/* 14F64 80014364 468032A0 */  cvt.s.w    $f10, $f6
/* 14F68 80014368 460A4400 */  add.s      $f16, $f8, $f10
/* 14F6C 8001436C 444BF800 */  cfc1       $t3, $31
/* 14F70 80014370 00000000 */  nop
/* 14F74 80014374 35610003 */  ori        $at, $t3, 3
/* 14F78 80014378 38210002 */  xori       $at, $at, 2
/* 14F7C 8001437C 44C1F800 */  ctc1       $at, $31
/* 14F80 80014380 01B6082A */  slt        $at, $t5, $s6
/* 14F84 80014384 460084A4 */  cvt.w.s    $f18, $f16
/* 14F88 80014388 440C9000 */  mfc1       $t4, $f18
/* 14F8C 8001438C 44CBF800 */  ctc1       $t3, $31
/* 14F90 80014390 10200036 */  beqz       $at, .L8001446C
/* 14F94 80014394 A68C008C */   sh        $t4, 0x8c($s4)
.L80014398:
/* 14F98 80014398 02260019 */  multu      $s1, $a2
/* 14F9C 8001439C 00007012 */  mflo       $t6
/* 14FA0 800143A0 00AE8021 */  addu       $s0, $a1, $t6
/* 14FA4 800143A4 8E0F0080 */  lw         $t7, 0x80($s0)
/* 14FA8 800143A8 00000000 */  nop
/* 14FAC 800143AC 15E0002A */  bnez       $t7, .L80014458
/* 14FB0 800143B0 00000000 */   nop
/* 14FB4 800143B4 0C0005E3 */  jal        func_8000178C
/* 14FB8 800143B8 00000000 */   nop
/* 14FBC 800143BC 0C0005E3 */  jal        func_8000178C
/* 14FC0 800143C0 3053FFFF */   andi      $s3, $v0, 0xffff
/* 14FC4 800143C4 86980088 */  lh         $t8, 0x88($s4)
/* 14FC8 800143C8 868D008C */  lh         $t5, 0x8c($s4)
/* 14FCC 800143CC 3279000F */  andi       $t9, $s3, 0xf
/* 14FD0 800143D0 304C000F */  andi       $t4, $v0, 0xf
/* 14FD4 800143D4 03383021 */  addu       $a2, $t9, $t8
/* 14FD8 800143D8 018D3821 */  addu       $a3, $t4, $t5
/* 14FDC 800143DC 24E7FFF8 */  addiu      $a3, $a3, -8
/* 14FE0 800143E0 24C6FFF8 */  addiu      $a2, $a2, -8
/* 14FE4 800143E4 30CBFFFF */  andi       $t3, $a2, 0xffff
/* 14FE8 800143E8 30EEFFFF */  andi       $t6, $a3, 0xffff
/* 14FEC 800143EC 240F0404 */  addiu      $t7, $zero, 0x404
/* 14FF0 800143F0 AFAF0010 */  sw         $t7, 0x10($sp)
/* 14FF4 800143F4 01C03825 */  or         $a3, $t6, $zero
/* 14FF8 800143F8 01603025 */  or         $a2, $t3, $zero
/* 14FFC 800143FC 3224FFFF */  andi       $a0, $s1, 0xffff
/* 15000 80014400 0C009CFF */  jal        func_800273FC
/* 15004 80014404 240501D6 */   addiu     $a1, $zero, 0x1d6
/* 15008 80014408 0C0005E3 */  jal        func_8000178C
/* 1500C 8001440C 00000000 */   nop
/* 15010 80014410 305900FF */  andi       $t9, $v0, 0xff
/* 15014 80014414 44992000 */  mtc1       $t9, $f4
/* 15018 80014418 A6170094 */  sh         $s7, 0x94($s0)
/* 1501C 8001441C 468021A0 */  cvt.s.w    $f6, $f4
/* 15020 80014420 AE000188 */  sw         $zero, 0x188($s0)
/* 15024 80014424 0C0005E3 */  jal        func_8000178C
/* 15028 80014428 E60600C4 */   swc1      $f6, 0xc4($s0)
/* 1502C 8001442C 3058000F */  andi       $t8, $v0, 0xf
/* 15030 80014430 270B0008 */  addiu      $t3, $t8, 8
/* 15034 80014434 240C0080 */  addiu      $t4, $zero, 0x80
/* 15038 80014438 3C05800F */  lui        $a1, %hi(gActors)
/* 1503C 8001443C AE0B0154 */  sw         $t3, 0x154($s0)
/* 15040 80014440 AE1E018C */  sw         $fp, 0x18c($s0)
/* 15044 80014444 E61400B8 */  swc1       $f20, 0xb8($s0)
/* 15048 80014448 E61400B4 */  swc1       $f20, 0xb4($s0)
/* 1504C 8001444C 24A5F510 */  addiu      $a1, $a1, %lo(gActors)
/* 15050 80014450 A20C009F */  sb         $t4, 0x9f($s0)
/* 15054 80014454 24060198 */  addiu      $a2, $zero, 0x198
.L80014458:
/* 15058 80014458 2651000A */  addiu      $s1, $s2, 0xa
/* 1505C 8001445C 3232FFFF */  andi       $s2, $s1, 0xffff
/* 15060 80014460 0256082A */  slt        $at, $s2, $s6
/* 15064 80014464 1420FFCC */  bnez       $at, .L80014398
/* 15068 80014468 02408825 */   or        $s1, $s2, $zero
.L8001446C:
/* 1506C 8001446C 26B50001 */  addiu      $s5, $s5, 1
/* 15070 80014470 32A3FFFF */  andi       $v1, $s5, 0xffff
/* 15074 80014474 2861004B */  slti       $at, $v1, 0x4b
/* 15078 80014478 1420FF8E */  bnez       $at, .L800142B4
/* 1507C 8001447C 0060A825 */   or        $s5, $v1, $zero
/* 15080 80014480 3C014100 */  lui        $at, 0x4100
/* 15084 80014484 44811000 */  mtc1       $at, $f2
/* 15088 80014488 3C01800F */  lui        $at, %hi(D_800EB038)
/* 1508C 8001448C C421B038 */  lwc1       $f1, %lo(D_800EB038)($at)
/* 15090 80014490 C420B03C */  lwc1       $f0, -0x4fc4($at)
/* 15094 80014494 24150062 */  addiu      $s5, $zero, 0x62
.L80014498:
/* 15098 80014498 02A60019 */  multu      $s5, $a2
/* 1509C 8001449C 26B50001 */  addiu      $s5, $s5, 1
/* 150A0 800144A0 32ACFFFF */  andi       $t4, $s5, 0xffff
/* 150A4 800144A4 2981008A */  slti       $at, $t4, 0x8a
/* 150A8 800144A8 00007812 */  mflo       $t7
/* 150AC 800144AC 00AFA021 */  addu       $s4, $a1, $t7
/* 150B0 800144B0 C68800C4 */  lwc1       $f8, 0xc4($s4)
/* 150B4 800144B4 C69000B4 */  lwc1       $f16, 0xb4($s4)
/* 150B8 800144B8 46024280 */  add.s      $f10, $f8, $f2
/* 150BC 800144BC C68800B8 */  lwc1       $f8, 0xb8($s4)
/* 150C0 800144C0 E68A00C4 */  swc1       $f10, 0xc4($s4)
/* 150C4 800144C4 460084A1 */  cvt.d.s    $f18, $f16
/* 150C8 800144C8 8E820154 */  lw         $v0, 0x154($s4)
/* 150CC 800144CC 460042A1 */  cvt.d.s    $f10, $f8
/* 150D0 800144D0 46209101 */  sub.d      $f4, $f18, $f0
/* 150D4 800144D4 9299009F */  lbu        $t9, 0x9f($s4)
/* 150D8 800144D8 46205401 */  sub.d      $f16, $f10, $f0
/* 150DC 800144DC 2C430001 */  sltiu      $v1, $v0, 1
/* 150E0 800144E0 462021A0 */  cvt.s.d    $f6, $f4
/* 150E4 800144E4 244BFFFF */  addiu      $t3, $v0, -1
/* 150E8 800144E8 462084A0 */  cvt.s.d    $f18, $f16
/* 150EC 800144EC 2738FFFC */  addiu      $t8, $t9, -4
/* 150F0 800144F0 E68600B4 */  swc1       $f6, 0xb4($s4)
/* 150F4 800144F4 E69200B8 */  swc1       $f18, 0xb8($s4)
/* 150F8 800144F8 A298009F */  sb         $t8, 0x9f($s4)
/* 150FC 800144FC 10600002 */  beqz       $v1, .L80014508
/* 15100 80014500 AE8B0154 */   sw        $t3, 0x154($s4)
/* 15104 80014504 AE800080 */  sw         $zero, 0x80($s4)
.L80014508:
/* 15108 80014508 1420FFE3 */  bnez       $at, .L80014498
/* 1510C 8001450C 0180A825 */   or        $s5, $t4, $zero
/* 15110 80014510 3C038018 */  lui        $v1, %hi(D_80178130)
/* 15114 80014514 94638130 */  lhu        $v1, %lo(D_80178130)($v1)
/* 15118 80014518 00000000 */  nop
/* 1511C 8001451C 306D000F */  andi       $t5, $v1, 0xf
/* 15120 80014520 15A0003C */  bnez       $t5, .L80014614
/* 15124 80014524 286100E0 */   slti      $at, $v1, 0xe0
/* 15128 80014528 1420003B */  bnez       $at, .L80014618
/* 1512C 8001452C 240100E0 */   addiu     $at, $zero, 0xe0
/* 15130 80014530 0C000CD3 */  jal        SFX_Play_1
/* 15134 80014534 24040095 */   addiu     $a0, $zero, 0x95
/* 15138 80014538 3C108018 */  lui        $s0, %hi(gRedGems)
/* 1513C 8001453C 26108136 */  addiu      $s0, $s0, %lo(gRedGems)
/* 15140 80014540 3C0F8018 */  lui        $t7, %hi(conTinueChoice)
/* 15144 80014544 95EF8138 */  lhu        $t7, %lo(conTinueChoice)($t7)
/* 15148 80014548 960E0000 */  lhu        $t6, ($s0)
/* 1514C 8001454C 24120064 */  addiu      $s2, $zero, 0x64
/* 15150 80014550 01CFC823 */  subu       $t9, $t6, $t7
/* 15154 80014554 3338FFFF */  andi       $t8, $t9, 0xffff
/* 15158 80014558 0312001A */  div        $zero, $t8, $s2
/* 1515C 8001455C 3C11800D */  lui        $s1, %hi(D_800D1790)
/* 15160 80014560 26311790 */  addiu      $s1, $s1, %lo(D_800D1790)
/* 15164 80014564 240C0403 */  addiu      $t4, $zero, 0x403
/* 15168 80014568 A6190000 */  sh         $t9, ($s0)
/* 1516C 8001456C AFAC0010 */  sw         $t4, 0x10($sp)
/* 15170 80014570 AFB10014 */  sw         $s1, 0x14($sp)
/* 15174 80014574 2404005E */  addiu      $a0, $zero, 0x5e
/* 15178 80014578 16400002 */  bnez       $s2, .L80014584
/* 1517C 8001457C 00000000 */   nop
/* 15180 80014580 0007000D */  break      7
.L80014584:
/* 15184 80014584 2401FFFF */   addiu     $at, $zero, -1
/* 15188 80014588 16410004 */  bne        $s2, $at, .L8001459C
/* 1518C 8001458C 3C018000 */   lui       $at, 0x8000
/* 15190 80014590 17010002 */  bne        $t8, $at, .L8001459C
/* 15194 80014594 00000000 */   nop
/* 15198 80014598 0006000D */  break      6
.L8001459C:
/* 1519C 8001459C 3406FFA6 */   ori       $a2, $zero, 0xffa6
/* 151A0 800145A0 24070020 */  addiu      $a3, $zero, 0x20
/* 151A4 800145A4 00002812 */  mflo       $a1
/* 151A8 800145A8 30ABFFFF */  andi       $t3, $a1, 0xffff
/* 151AC 800145AC 0C009E00 */  jal        func_80027800
/* 151B0 800145B0 01602825 */   or        $a1, $t3, $zero
/* 151B4 800145B4 960D0000 */  lhu        $t5, ($s0)
/* 151B8 800145B8 240F0403 */  addiu      $t7, $zero, 0x403
/* 151BC 800145BC 01B2001A */  div        $zero, $t5, $s2
/* 151C0 800145C0 AFAF0010 */  sw         $t7, 0x10($sp)
/* 151C4 800145C4 24040060 */  addiu      $a0, $zero, 0x60
/* 151C8 800145C8 16400002 */  bnez       $s2, .L800145D4
/* 151CC 800145CC 00000000 */   nop
/* 151D0 800145D0 0007000D */  break      7
.L800145D4:
/* 151D4 800145D4 2401FFFF */   addiu     $at, $zero, -1
/* 151D8 800145D8 16410004 */  bne        $s2, $at, .L800145EC
/* 151DC 800145DC 3C018000 */   lui       $at, 0x8000
/* 151E0 800145E0 15A10002 */  bne        $t5, $at, .L800145EC
/* 151E4 800145E4 00000000 */   nop
/* 151E8 800145E8 0006000D */  break      6
.L800145EC:
/* 151EC 800145EC 3406FFB8 */   ori       $a2, $zero, 0xffb8
/* 151F0 800145F0 24070020 */  addiu      $a3, $zero, 0x20
/* 151F4 800145F4 AFB10014 */  sw         $s1, 0x14($sp)
/* 151F8 800145F8 00002810 */  mfhi       $a1
/* 151FC 800145FC 30AEFFFF */  andi       $t6, $a1, 0xffff
/* 15200 80014600 0C009E00 */  jal        func_80027800
/* 15204 80014604 01C02825 */   or        $a1, $t6, $zero
/* 15208 80014608 3C038018 */  lui        $v1, %hi(D_80178130)
/* 1520C 8001460C 94638130 */  lhu        $v1, %lo(D_80178130)($v1)
/* 15210 80014610 00000000 */  nop
.L80014614:
/* 15214 80014614 240100E0 */  addiu      $at, $zero, 0xe0
.L80014618:
/* 15218 80014618 14610004 */  bne        $v1, $at, .L8001462C
/* 1521C 8001461C 3C108018 */   lui       $s0, %hi(D_80178140)
/* 15220 80014620 26108140 */  addiu      $s0, $s0, %lo(D_80178140)
/* 15224 80014624 10000011 */  b          .L8001466C
/* 15228 80014628 A2000000 */   sb        $zero, ($s0)
.L8001462C:
/* 1522C 8001462C 286100E0 */  slti       $at, $v1, 0xe0
/* 15230 80014630 1020000E */  beqz       $at, .L8001466C
/* 15234 80014634 3C108018 */   lui       $s0, %hi(D_80178140)
/* 15238 80014638 26108140 */  addiu      $s0, $s0, %lo(D_80178140)
/* 1523C 8001463C 92190000 */  lbu        $t9, ($s0)
/* 15240 80014640 00000000 */  nop
/* 15244 80014644 17200009 */  bnez       $t9, .L8001466C
/* 15248 80014648 00000000 */   nop
/* 1524C 8001464C 0C017506 */  jal        func_8005D418
/* 15250 80014650 00002025 */   or        $a0, $zero, $zero
/* 15254 80014654 10400005 */  beqz       $v0, .L8001466C
/* 15258 80014658 24130001 */   addiu     $s3, $zero, 1
/* 1525C 8001465C 241800A6 */  addiu      $t8, $zero, 0xa6
/* 15260 80014660 3C01800F */  lui        $at, %hi(gActors+0x170)
/* 15264 80014664 AC38F680 */  sw         $t8, %lo(gActors+0x170)($at)
/* 15268 80014668 A2130000 */  sb         $s3, ($s0)
.L8001466C:
/* 1526C 8001466C 3C0B8018 */  lui        $t3, %hi(D_80178130)
/* 15270 80014670 956B8130 */  lhu        $t3, %lo(D_80178130)($t3)
/* 15274 80014674 240100C0 */  addiu      $at, $zero, 0xc0
/* 15278 80014678 1561010D */  bne        $t3, $at, .L80014AB0
/* 1527C 8001467C 8FBF005C */   lw        $ra, 0x5c($sp)
/* 15280 80014680 0C0005E3 */  jal        func_8000178C
/* 15284 80014684 00000000 */   nop
/* 15288 80014688 24010003 */  addiu      $at, $zero, 3
/* 1528C 8001468C 0041001A */  div        $zero, $v0, $at
/* 15290 80014690 24100001 */  addiu      $s0, $zero, 1
/* 15294 80014694 00001810 */  mfhi       $v1
/* 15298 80014698 10600007 */  beqz       $v1, .L800146B8
/* 1529C 8001469C 00000000 */   nop
/* 152A0 800146A0 10700009 */  beq        $v1, $s0, .L800146C8
/* 152A4 800146A4 24010002 */   addiu     $at, $zero, 2
/* 152A8 800146A8 1061000B */  beq        $v1, $at, .L800146D8
/* 152AC 800146AC 00000000 */   nop
/* 152B0 800146B0 1000000B */  b          .L800146E0
/* 152B4 800146B4 00000000 */   nop
.L800146B8:
/* 152B8 800146B8 0C000CD3 */  jal        SFX_Play_1
/* 152BC 800146BC 240400C8 */   addiu     $a0, $zero, 0xc8
/* 152C0 800146C0 10000007 */  b          .L800146E0
/* 152C4 800146C4 00000000 */   nop
.L800146C8:
/* 152C8 800146C8 0C000CD3 */  jal        SFX_Play_1
/* 152CC 800146CC 240400CE */   addiu     $a0, $zero, 0xce
/* 152D0 800146D0 10000003 */  b          .L800146E0
/* 152D4 800146D4 00000000 */   nop
.L800146D8:
/* 152D8 800146D8 0C000CD3 */  jal        SFX_Play_1
/* 152DC 800146DC 240400D4 */   addiu     $a0, $zero, 0xd4
.L800146E0:
/* 152E0 800146E0 3C0C800C */  lui        $t4, %hi(gGameSubState)
/* 152E4 800146E4 958CE4F4 */  lhu        $t4, %lo(gGameSubState)($t4)
/* 152E8 800146E8 3C01800C */  lui        $at, %hi(gGameSubState)
/* 152EC 800146EC 258D0001 */  addiu      $t5, $t4, 1
/* 152F0 800146F0 100000EE */  b          .L80014AAC
/* 152F4 800146F4 A42DE4F4 */   sh        $t5, %lo(gGameSubState)($at)
glabel L800146F8_152F8
/* 152F8 800146F8 3C058018 */  lui        $a1, %hi(D_80178130)
/* 152FC 800146FC 24A58130 */  addiu      $a1, $a1, %lo(D_80178130)
/* 15300 80014700 94AE0000 */  lhu        $t6, ($a1)
/* 15304 80014704 3C014100 */  lui        $at, 0x4100
/* 15308 80014708 44811000 */  mtc1       $at, $f2
/* 1530C 8001470C 25CFFFFF */  addiu      $t7, $t6, -1
/* 15310 80014710 A4AF0000 */  sh         $t7, ($a1)
/* 15314 80014714 3C01800F */  lui        $at, %hi(D_800EB040)
/* 15318 80014718 3C08800F */  lui        $t0, %hi(gActors)
/* 1531C 8001471C C421B040 */  lwc1       $f1, %lo(D_800EB040)($at)
/* 15320 80014720 C420B044 */  lwc1       $f0, -0x4fbc($at)
/* 15324 80014724 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 15328 80014728 24150062 */  addiu      $s5, $zero, 0x62
/* 1532C 8001472C 24040198 */  addiu      $a0, $zero, 0x198
.L80014730:
/* 15330 80014730 02A40019 */  multu      $s5, $a0
/* 15334 80014734 26B50001 */  addiu      $s5, $s5, 1
/* 15338 80014738 32ADFFFF */  andi       $t5, $s5, 0xffff
/* 1533C 8001473C 29A1008A */  slti       $at, $t5, 0x8a
/* 15340 80014740 0000C812 */  mflo       $t9
/* 15344 80014744 0119A021 */  addu       $s4, $t0, $t9
/* 15348 80014748 C68400C4 */  lwc1       $f4, 0xc4($s4)
/* 1534C 8001474C C68800B4 */  lwc1       $f8, 0xb4($s4)
/* 15350 80014750 46022180 */  add.s      $f6, $f4, $f2
/* 15354 80014754 C68400B8 */  lwc1       $f4, 0xb8($s4)
/* 15358 80014758 E68600C4 */  swc1       $f6, 0xc4($s4)
/* 1535C 8001475C 460042A1 */  cvt.d.s    $f10, $f8
/* 15360 80014760 8E820154 */  lw         $v0, 0x154($s4)
/* 15364 80014764 460021A1 */  cvt.d.s    $f6, $f4
/* 15368 80014768 46205401 */  sub.d      $f16, $f10, $f0
/* 1536C 8001476C 9298009F */  lbu        $t8, 0x9f($s4)
/* 15370 80014770 46203201 */  sub.d      $f8, $f6, $f0
/* 15374 80014774 2C430001 */  sltiu      $v1, $v0, 1
/* 15378 80014778 462084A0 */  cvt.s.d    $f18, $f16
/* 1537C 8001477C 244CFFFF */  addiu      $t4, $v0, -1
/* 15380 80014780 462042A0 */  cvt.s.d    $f10, $f8
/* 15384 80014784 270BFFFC */  addiu      $t3, $t8, -4
/* 15388 80014788 E69200B4 */  swc1       $f18, 0xb4($s4)
/* 1538C 8001478C E68A00B8 */  swc1       $f10, 0xb8($s4)
/* 15390 80014790 A28B009F */  sb         $t3, 0x9f($s4)
/* 15394 80014794 10600002 */  beqz       $v1, .L800147A0
/* 15398 80014798 AE8C0154 */   sw        $t4, 0x154($s4)
/* 1539C 8001479C AE800080 */  sw         $zero, 0x80($s4)
.L800147A0:
/* 153A0 800147A0 1420FFE3 */  bnez       $at, .L80014730
/* 153A4 800147A4 01A0A825 */   or        $s5, $t5, $zero
/* 153A8 800147A8 24150041 */  addiu      $s5, $zero, 0x41
/* 153AC 800147AC 2403000F */  addiu      $v1, $zero, 0xf
.L800147B0:
/* 153B0 800147B0 02A40019 */  multu      $s5, $a0
/* 153B4 800147B4 26B50001 */  addiu      $s5, $s5, 1
/* 153B8 800147B8 32B9FFFF */  andi       $t9, $s5, 0xffff
/* 153BC 800147BC 2B21004B */  slti       $at, $t9, 0x4b
/* 153C0 800147C0 00007012 */  mflo       $t6
/* 153C4 800147C4 010EA021 */  addu       $s4, $t0, $t6
/* 153C8 800147C8 9282009F */  lbu        $v0, 0x9f($s4)
/* 153CC 800147CC 00000000 */  nop
/* 153D0 800147D0 14620003 */  bne        $v1, $v0, .L800147E0
/* 153D4 800147D4 244FFFF0 */   addiu     $t7, $v0, -0x10
/* 153D8 800147D8 10000002 */  b          .L800147E4
/* 153DC 800147DC AE800080 */   sw        $zero, 0x80($s4)
.L800147E0:
/* 153E0 800147E0 A28F009F */  sb         $t7, 0x9f($s4)
.L800147E4:
/* 153E4 800147E4 1420FFF2 */  bnez       $at, .L800147B0
/* 153E8 800147E8 0320A825 */   or        $s5, $t9, $zero
/* 153EC 800147EC 94A30000 */  lhu        $v1, ($a1)
/* 153F0 800147F0 24010060 */  addiu      $at, $zero, 0x60
/* 153F4 800147F4 14610007 */  bne        $v1, $at, .L80014814
/* 153F8 800147F8 24040001 */   addiu     $a0, $zero, 1
/* 153FC 800147FC 0C000FC9 */  jal        func_80003F24
/* 15400 80014800 24050060 */   addiu     $a1, $zero, 0x60
/* 15404 80014804 3C038018 */  lui        $v1, %hi(D_80178130)
/* 15408 80014808 3C08800F */  lui        $t0, %hi(gActors)
/* 1540C 8001480C 94638130 */  lhu        $v1, %lo(D_80178130)($v1)
/* 15410 80014810 2508F510 */  addiu      $t0, $t0, %lo(gActors)
.L80014814:
/* 15414 80014814 28610020 */  slti       $at, $v1, 0x20
/* 15418 80014818 10200044 */  beqz       $at, .L8001492C
/* 1541C 8001481C 00000000 */   nop
/* 15420 80014820 91034EB7 */  lbu        $v1, 0x4eb7($t0)
/* 15424 80014824 3C02800F */  lui        $v0, %hi(D_800F7510)
/* 15428 80014828 28610008 */  slti       $at, $v1, 8
/* 1542C 8001482C 10200009 */  beqz       $at, .L80014854
/* 15430 80014830 24427510 */   addiu     $v0, $v0, %lo(D_800F7510)
/* 15434 80014834 3C02800F */  lui        $v0, %hi(D_800F7510)
/* 15438 80014838 24427510 */  addiu      $v0, $v0, %lo(D_800F7510)
/* 1543C 8001483C AD004E98 */  sw         $zero, 0x4e98($t0)
/* 15440 80014840 AC401650 */  sw         $zero, 0x1650($v0)
/* 15444 80014844 AC4017E8 */  sw         $zero, 0x17e8($v0)
/* 15448 80014848 AC401980 */  sw         $zero, 0x1980($v0)
/* 1544C 8001484C 1000000F */  b          .L8001488C
/* 15450 80014850 AC401B18 */   sw        $zero, 0x1b18($v0)
.L80014854:
/* 15454 80014854 2478FFF8 */  addiu      $t8, $v1, -8
/* 15458 80014858 A1184EB7 */  sb         $t8, 0x4eb7($t0)
/* 1545C 8001485C 904B166F */  lbu        $t3, 0x166f($v0)
/* 15460 80014860 904D1807 */  lbu        $t5, 0x1807($v0)
/* 15464 80014864 904F199F */  lbu        $t7, 0x199f($v0)
/* 15468 80014868 90581B37 */  lbu        $t8, 0x1b37($v0)
/* 1546C 8001486C 256CFFF8 */  addiu      $t4, $t3, -8
/* 15470 80014870 25AEFFF8 */  addiu      $t6, $t5, -8
/* 15474 80014874 25F9FFF8 */  addiu      $t9, $t7, -8
/* 15478 80014878 270BFFF8 */  addiu      $t3, $t8, -8
/* 1547C 8001487C A04C166F */  sb         $t4, 0x166f($v0)
/* 15480 80014880 A04E1807 */  sb         $t6, 0x1807($v0)
/* 15484 80014884 A059199F */  sb         $t9, 0x199f($v0)
/* 15488 80014888 A04B1B37 */  sb         $t3, 0x1b37($v0)
.L8001488C:
/* 1548C 8001488C 9102009F */  lbu        $v0, 0x9f($t0)
/* 15490 80014890 00000000 */  nop
/* 15494 80014894 28410008 */  slti       $at, $v0, 8
/* 15498 80014898 10200003 */  beqz       $at, .L800148A8
/* 1549C 8001489C 244CFFF8 */   addiu     $t4, $v0, -8
/* 154A0 800148A0 10000002 */  b          .L800148AC
/* 154A4 800148A4 A100009F */   sb        $zero, 0x9f($t0)
.L800148A8:
/* 154A8 800148A8 A10C009F */  sb         $t4, 0x9f($t0)
.L800148AC:
/* 154AC 800148AC 9102009F */  lbu        $v0, 0x9f($t0)
/* 154B0 800148B0 00002025 */  or         $a0, $zero, $zero
/* 154B4 800148B4 00408025 */  or         $s0, $v0, $zero
/* 154B8 800148B8 06010003 */  bgez       $s0, .L800148C8
/* 154BC 800148BC 00102903 */   sra       $a1, $s0, 4
/* 154C0 800148C0 2601000F */  addiu      $at, $s0, 0xf
/* 154C4 800148C4 00012903 */  sra        $a1, $at, 4
.L800148C8:
/* 154C8 800148C8 30AD00FF */  andi       $t5, $a1, 0xff
/* 154CC 800148CC 01A02825 */  or         $a1, $t5, $zero
/* 154D0 800148D0 31A600FF */  andi       $a2, $t5, 0xff
/* 154D4 800148D4 06010003 */  bgez       $s0, .L800148E4
/* 154D8 800148D8 001088C3 */   sra       $s1, $s0, 3
/* 154DC 800148DC 26010007 */  addiu      $at, $s0, 7
/* 154E0 800148E0 000188C3 */  sra        $s1, $at, 3
.L800148E4:
/* 154E4 800148E4 322E00FF */  andi       $t6, $s1, 0xff
/* 154E8 800148E8 01C08825 */  or         $s1, $t6, $zero
/* 154EC 800148EC 0C009D62 */  jal        func_80027588
/* 154F0 800148F0 31C700FF */   andi      $a3, $t6, 0xff
/* 154F4 800148F4 24040001 */  addiu      $a0, $zero, 1
/* 154F8 800148F8 322500FF */  andi       $a1, $s1, 0xff
/* 154FC 800148FC 322600FF */  andi       $a2, $s1, 0xff
/* 15500 80014900 06010003 */  bgez       $s0, .L80014910
/* 15504 80014904 00103943 */   sra       $a3, $s0, 5
/* 15508 80014908 2601001F */  addiu      $at, $s0, 0x1f
/* 1550C 8001490C 00013943 */  sra        $a3, $at, 5
.L80014910:
/* 15510 80014910 30EF00FF */  andi       $t7, $a3, 0xff
/* 15514 80014914 0C009D62 */  jal        func_80027588
/* 15518 80014918 01E03825 */   or        $a3, $t7, $zero
/* 1551C 8001491C 3C038018 */  lui        $v1, %hi(D_80178130)
/* 15520 80014920 3C08800F */  lui        $t0, %hi(gActors)
/* 15524 80014924 94638130 */  lhu        $v1, %lo(D_80178130)($v1)
/* 15528 80014928 2508F510 */  addiu      $t0, $t0, %lo(gActors)
.L8001492C:
/* 1552C 8001492C 1460005F */  bnez       $v1, .L80014AAC
/* 15530 80014930 3C0A800D */   lui       $t2, 0x800d
/* 15534 80014934 3C198018 */  lui        $t9, %hi(gCurrentStage)
/* 15538 80014938 97398162 */  lhu        $t9, %lo(gCurrentStage)($t9)
/* 1553C 8001493C 3C01800D */  lui        $at, %hi(D_800D2938)
/* 15540 80014940 3C0B800D */  lui        $t3, %hi(D_800C83F8)
/* 15544 80014944 0019C040 */  sll        $t8, $t9, 1
/* 15548 80014948 AC202938 */  sw         $zero, %lo(D_800D2938)($at)
/* 1554C 8001494C 01785821 */  addu       $t3, $t3, $t8
/* 15550 80014950 956B83F8 */  lhu        $t3, %lo(D_800C83F8)($t3)
/* 15554 80014954 3C01800D */  lui        $at, %hi(D_800D28E8)
/* 15558 80014958 254A28F0 */  addiu      $t2, $t2, 0x28f0
/* 1555C 8001495C A42028E8 */  sh         $zero, %lo(D_800D28E8)($at)
/* 15560 80014960 A54B0000 */  sh         $t3, ($t2)
/* 15564 80014964 3C01800D */  lui        $at, %hi(D_800D28E4)
/* 15568 80014968 240C0061 */  addiu      $t4, $zero, 0x61
/* 1556C 8001496C 3C028018 */  lui        $v0, %hi(conTinueChoice)
/* 15570 80014970 94428138 */  lhu        $v0, %lo(conTinueChoice)($v0)
/* 15574 80014974 A42C28E4 */  sh         $t4, %lo(D_800D28E4)($at)
/* 15578 80014978 24100001 */  addiu      $s0, $zero, 1
/* 1557C 8001497C 24130001 */  addiu      $s3, $zero, 1
/* 15580 80014980 3C01800D */  lui        $at, %hi(D_800D2908)
/* 15584 80014984 16020004 */  bne        $s0, $v0, .L80014998
/* 15588 80014988 A4332908 */   sh        $s3, %lo(D_800D2908)($at)
/* 1558C 8001498C 240D03E8 */  addiu      $t5, $zero, 0x3e8
/* 15590 80014990 10000008 */  b          .L800149B4
/* 15594 80014994 A50D00E0 */   sh        $t5, 0xe0($t0)
.L80014998:
/* 15598 80014998 24010003 */  addiu      $at, $zero, 3
/* 1559C 8001499C 14410004 */  bne        $v0, $at, .L800149B0
/* 155A0 800149A0 240F0BB8 */   addiu     $t7, $zero, 0xbb8
/* 155A4 800149A4 240E07D0 */  addiu      $t6, $zero, 0x7d0
/* 155A8 800149A8 10000002 */  b          .L800149B4
/* 155AC 800149AC A50E00E0 */   sh        $t6, 0xe0($t0)
.L800149B0:
/* 155B0 800149B0 A50F00E0 */  sh         $t7, 0xe0($t0)
.L800149B4:
/* 155B4 800149B4 851900E0 */  lh         $t9, 0xe0($t0)
/* 155B8 800149B8 3C188018 */  lui        $t8, %hi(D_80178132)
/* 155BC 800149BC 93188132 */  lbu        $t8, %lo(D_80178132)($t8)
/* 155C0 800149C0 3C05800C */  lui        $a1, %hi(D_800BE6E4)
/* 155C4 800149C4 3C01800C */  lui        $at, %hi(D_800BE63C)
/* 155C8 800149C8 24A5E6E4 */  addiu      $a1, $a1, %lo(D_800BE6E4)
/* 155CC 800149CC A439E63C */  sh         $t9, %lo(D_800BE63C)($at)
/* 155D0 800149D0 3C0B8018 */  lui        $t3, %hi(D_80178133)
/* 155D4 800149D4 A0B80000 */  sb         $t8, ($a1)
/* 155D8 800149D8 916B8133 */  lbu        $t3, %lo(D_80178133)($t3)
/* 155DC 800149DC 3C06800C */  lui        $a2, %hi(D_800BE6E8)
/* 155E0 800149E0 24C6E6E8 */  addiu      $a2, $a2, %lo(D_800BE6E8)
/* 155E4 800149E4 3C0C8018 */  lui        $t4, %hi(D_80178134)
/* 155E8 800149E8 A0CB0000 */  sb         $t3, ($a2)
/* 155EC 800149EC 918C8134 */  lbu        $t4, %lo(D_80178134)($t4)
/* 155F0 800149F0 950D0094 */  lhu        $t5, 0x94($t0)
/* 155F4 800149F4 3C07800C */  lui        $a3, %hi(D_800BE6EC)
/* 155F8 800149F8 24E7E6EC */  addiu      $a3, $a3, %lo(D_800BE6EC)
/* 155FC 800149FC 240300FF */  addiu      $v1, $zero, 0xff
/* 15600 80014A00 31AEF7FF */  andi       $t6, $t5, 0xf7ff
/* 15604 80014A04 3C09800C */  lui        $t1, 0x800c
/* 15608 80014A08 A5000090 */  sh         $zero, 0x90($t0)
/* 1560C 80014A0C A50E0094 */  sh         $t6, 0x94($t0)
/* 15610 80014A10 A103009F */  sb         $v1, 0x9f($t0)
/* 15614 80014A14 3C018013 */  lui        $at, %hi(D_80137D90)
/* 15618 80014A18 A0EC0000 */  sb         $t4, ($a3)
/* 1561C 80014A1C 2529E5D0 */  addiu      $t1, $t1, -0x1a30
/* 15620 80014A20 A4207D90 */  sh         $zero, %lo(D_80137D90)($at)
/* 15624 80014A24 95240000 */  lhu        $a0, ($t1)
/* 15628 80014A28 00000000 */  nop
/* 1562C 80014A2C 2881000F */  slti       $at, $a0, 0xf
/* 15630 80014A30 14200009 */  bnez       $at, .L80014A58
/* 15634 80014A34 00801025 */   or        $v0, $a0, $zero
/* 15638 80014A38 28410013 */  slti       $at, $v0, 0x13
/* 1563C 80014A3C 10200006 */  beqz       $at, .L80014A58
/* 15640 80014A40 240F001F */   addiu     $t7, $zero, 0x1f
/* 15644 80014A44 24190010 */  addiu      $t9, $zero, 0x10
/* 15648 80014A48 3324FFFF */  andi       $a0, $t9, 0xffff
/* 1564C 80014A4C A54F0000 */  sh         $t7, ($t2)
/* 15650 80014A50 00801025 */  or         $v0, $a0, $zero
/* 15654 80014A54 A5390000 */  sh         $t9, ($t1)
.L80014A58:
/* 15658 80014A58 24010038 */  addiu      $at, $zero, 0x38
/* 1565C 80014A5C 10410006 */  beq        $v0, $at, .L80014A78
/* 15660 80014A60 00000000 */   nop
/* 15664 80014A64 0C00955E */  jal        func_80025578
/* 15668 80014A68 00000000 */   nop
/* 1566C 80014A6C 3C04800C */  lui        $a0, %hi(D_800BE5D0)
/* 15670 80014A70 9484E5D0 */  lhu        $a0, %lo(D_800BE5D0)($a0)
/* 15674 80014A74 00000000 */  nop
.L80014A78:
/* 15678 80014A78 0C00956D */  jal        func_800255B4
/* 1567C 80014A7C 00000000 */   nop
/* 15680 80014A80 0C0096DF */  jal        func_80025B7C
/* 15684 80014A84 00000000 */   nop
/* 15688 80014A88 3C01800F */  lui        $at, %hi(gActors+0x170)
/* 1568C 80014A8C AC30F680 */  sw         $s0, %lo(gActors+0x170)($at)
/* 15690 80014A90 3C01800C */  lui        $at, %hi(D_800BE4EC)
/* 15694 80014A94 A433E4EC */  sh         $s3, %lo(D_800BE4EC)($at)
/* 15698 80014A98 3C01800C */  lui        $at, %hi(gGameState)
/* 1569C 80014A9C 24180006 */  addiu      $t8, $zero, 6
/* 156A0 80014AA0 A438E4F0 */  sh         $t8, %lo(gGameState)($at)
/* 156A4 80014AA4 3C01800C */  lui        $at, %hi(gGameSubState)
/* 156A8 80014AA8 A420E4F4 */  sh         $zero, %lo(gGameSubState)($at)
.L80014AAC:
/* 156AC 80014AAC 8FBF005C */  lw         $ra, 0x5c($sp)
.L80014AB0:
/* 156B0 80014AB0 C7B50030 */  lwc1       $f21, 0x30($sp)
/* 156B4 80014AB4 C7B40034 */  lwc1       $f20, 0x34($sp)
/* 156B8 80014AB8 8FB00038 */  lw         $s0, 0x38($sp)
/* 156BC 80014ABC 8FB1003C */  lw         $s1, 0x3c($sp)
/* 156C0 80014AC0 8FB20040 */  lw         $s2, 0x40($sp)
/* 156C4 80014AC4 8FB30044 */  lw         $s3, 0x44($sp)
/* 156C8 80014AC8 8FB40048 */  lw         $s4, 0x48($sp)
/* 156CC 80014ACC 8FB5004C */  lw         $s5, 0x4c($sp)
/* 156D0 80014AD0 8FB60050 */  lw         $s6, 0x50($sp)
/* 156D4 80014AD4 8FB70054 */  lw         $s7, 0x54($sp)
/* 156D8 80014AD8 8FBE0058 */  lw         $fp, 0x58($sp)
/* 156DC 80014ADC 03E00008 */  jr         $ra
/* 156E0 80014AE0 27BD0060 */   addiu     $sp, $sp, 0x60
/* 156E4 80014AE4 00000000 */  nop
/* 156E8 80014AE8 00000000 */  nop
/* 156EC 80014AEC 00000000 */  nop
