glabel func_80046EBC
/* 47ABC 80046EBC 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 47AC0 80046EC0 3C02800D */  lui        $v0, %hi(D_800D2938)
/* 47AC4 80046EC4 8C422938 */  lw         $v0, %lo(D_800D2938)($v0)
/* 47AC8 80046EC8 3C01800D */  lui        $at, %hi(D_800D2944)
/* 47ACC 80046ECC AC202944 */  sw         $zero, %lo(D_800D2944)($at)
/* 47AD0 80046ED0 2C410006 */  sltiu      $at, $v0, 6
/* 47AD4 80046ED4 AFBF0034 */  sw         $ra, 0x34($sp)
/* 47AD8 80046ED8 AFB40030 */  sw         $s4, 0x30($sp)
/* 47ADC 80046EDC AFB3002C */  sw         $s3, 0x2c($sp)
/* 47AE0 80046EE0 AFB20028 */  sw         $s2, 0x28($sp)
/* 47AE4 80046EE4 AFB10024 */  sw         $s1, 0x24($sp)
/* 47AE8 80046EE8 AFB00020 */  sw         $s0, 0x20($sp)
/* 47AEC 80046EEC E7B50018 */  swc1       $f21, 0x18($sp)
/* 47AF0 80046EF0 102000ED */  beqz       $at, .L800472A8
/* 47AF4 80046EF4 E7B4001C */   swc1      $f20, 0x1c($sp)
/* 47AF8 80046EF8 00027080 */  sll        $t6, $v0, 2
/* 47AFC 80046EFC 3C01800F */  lui        $at, %hi(D_800EBD40)
/* 47B00 80046F00 002E0821 */  addu       $at, $at, $t6
/* 47B04 80046F04 8C2EBD40 */  lw         $t6, %lo(D_800EBD40)($at)
/* 47B08 80046F08 00000000 */  nop
/* 47B0C 80046F0C 01C00008 */  jr         $t6
/* 47B10 80046F10 00000000 */   nop
/* 47B14 80046F14 3C10800D */  lui        $s0, %hi(D_800D2940)
/* 47B18 80046F18 3C14800D */  lui        $s4, %hi(D_800D293C)
/* 47B1C 80046F1C 244F0001 */  addiu      $t7, $v0, 1
/* 47B20 80046F20 3C01800D */  lui        $at, %hi(D_800D2938)
/* 47B24 80046F24 2694293C */  addiu      $s4, $s4, %lo(D_800D293C)
/* 47B28 80046F28 26102940 */  addiu      $s0, $s0, %lo(D_800D2940)
/* 47B2C 80046F2C AC2F2938 */  sw         $t7, %lo(D_800D2938)($at)
/* 47B30 80046F30 24180012 */  addiu      $t8, $zero, 0x12
/* 47B34 80046F34 AE800000 */  sw         $zero, ($s4)
/* 47B38 80046F38 0C011A8C */  jal        func_80046A30
/* 47B3C 80046F3C AE180000 */   sw        $t8, ($s0)
/* 47B40 80046F40 0C0005E3 */  jal        func_8000178C
/* 47B44 80046F44 00000000 */   nop
/* 47B48 80046F48 24060023 */  addiu      $a2, $zero, 0x23
/* 47B4C 80046F4C 30590003 */  andi       $t9, $v0, 3
/* 47B50 80046F50 03260019 */  multu      $t9, $a2
/* 47B54 80046F54 3C013F80 */  lui        $at, 0x3f80
/* 47B58 80046F58 3C128010 */  lui        $s2, %hi(D_80104098)
/* 47B5C 80046F5C 4481A000 */  mtc1       $at, $f20
/* 47B60 80046F60 26524098 */  addiu      $s2, $s2, %lo(D_80104098)
/* 47B64 80046F64 00008825 */  or         $s1, $zero, $zero
/* 47B68 80046F68 00002025 */  or         $a0, $zero, $zero
/* 47B6C 80046F6C 241300A0 */  addiu      $s3, $zero, 0xa0
/* 47B70 80046F70 00001812 */  mflo       $v1
/* 47B74 80046F74 3065FFFF */  andi       $a1, $v1, 0xffff
/* 47B78 80046F78 00000000 */  nop
.L80046F7C:
/* 47B7C 80046F7C 02330019 */  multu      $s1, $s3
/* 47B80 80046F80 240A4003 */  addiu      $t2, $zero, 0x4003
/* 47B84 80046F84 AFA40038 */  sw         $a0, 0x38($sp)
/* 47B88 80046F88 AFA5003C */  sw         $a1, 0x3c($sp)
/* 47B8C 80046F8C 00004812 */  mflo       $t1
/* 47B90 80046F90 02498021 */  addu       $s0, $s2, $t1
/* 47B94 80046F94 A60A0080 */  sh         $t2, 0x80($s0)
/* 47B98 80046F98 0C0005E3 */  jal        func_8000178C
/* 47B9C 80046F9C AE000098 */   sw        $zero, 0x98($s0)
/* 47BA0 80046FA0 3C0D800D */  lui        $t5, %hi(D_800D2944)
/* 47BA4 80046FA4 8DAD2944 */  lw         $t5, %lo(D_800D2944)($t5)
/* 47BA8 80046FA8 304B003F */  andi       $t3, $v0, 0x3f
/* 47BAC 80046FAC 000B6040 */  sll        $t4, $t3, 1
/* 47BB0 80046FB0 000D7040 */  sll        $t6, $t5, 1
/* 47BB4 80046FB4 8FA40038 */  lw         $a0, 0x38($sp)
/* 47BB8 80046FB8 8FA5003C */  lw         $a1, 0x3c($sp)
/* 47BBC 80046FBC 018E7821 */  addu       $t7, $t4, $t6
/* 47BC0 80046FC0 3C18800D */  lui        $t8, %hi(D_800D3AE8)
/* 47BC4 80046FC4 030FC021 */  addu       $t8, $t8, $t7
/* 47BC8 80046FC8 87183AE8 */  lh         $t8, %lo(D_800D3AE8)($t8)
/* 47BCC 80046FCC 3C0A800D */  lui        $t2, %hi(D_800D38B8)
/* 47BD0 80046FD0 00A44021 */  addu       $t0, $a1, $a0
/* 47BD4 80046FD4 00084880 */  sll        $t1, $t0, 2
/* 47BD8 80046FD8 254A38B8 */  addiu      $t2, $t2, %lo(D_800D38B8)
/* 47BDC 80046FDC 012A1821 */  addu       $v1, $t1, $t2
/* 47BE0 80046FE0 846D0002 */  lh         $t5, 2($v1)
/* 47BE4 80046FE4 846B0000 */  lh         $t3, ($v1)
/* 47BE8 80046FE8 44802000 */  mtc1       $zero, $f4
/* 47BEC 80046FEC 26310001 */  addiu      $s1, $s1, 1
/* 47BF0 80046FF0 3224FFFF */  andi       $a0, $s1, 0xffff
/* 47BF4 80046FF4 24060023 */  addiu      $a2, $zero, 0x23
/* 47BF8 80046FF8 25AC0002 */  addiu      $t4, $t5, 2
/* 47BFC 80046FFC 00808825 */  or         $s1, $a0, $zero
/* 47C00 80047000 A2000094 */  sb         $zero, 0x94($s0)
/* 47C04 80047004 A60C0088 */  sh         $t4, 0x88($s0)
/* 47C08 80047008 E6140090 */  swc1       $f20, 0x90($s0)
/* 47C0C 8004700C A6180082 */  sh         $t8, 0x82($s0)
/* 47C10 80047010 A60B0084 */  sh         $t3, 0x84($s0)
/* 47C14 80047014 14C4FFD9 */  bne        $a2, $a0, .L80046F7C
/* 47C18 80047018 E604008C */   swc1      $f4, 0x8c($s0)
/* 47C1C 8004701C 3C0F800D */  lui        $t7, %hi(D_800D28FC)
/* 47C20 80047020 8DEF28FC */  lw         $t7, %lo(D_800D28FC)($t7)
/* 47C24 80047024 00000000 */  nop
/* 47C28 80047028 31F80004 */  andi       $t8, $t7, 4
/* 47C2C 8004702C 1700009F */  bnez       $t8, .L800472AC
/* 47C30 80047030 00001025 */   or        $v0, $zero, $zero
/* 47C34 80047034 0C000CD3 */  jal        func_8000334C
/* 47C38 80047038 240400BB */   addiu     $a0, $zero, 0xbb
/* 47C3C 8004703C 3C19800D */  lui        $t9, %hi(D_800CBF40)
/* 47C40 80047040 9739BF40 */  lhu        $t9, %lo(D_800CBF40)($t9)
/* 47C44 80047044 3C14800D */  lui        $s4, %hi(D_800D2938)
/* 47C48 80047048 17200003 */  bnez       $t9, .L80047058
/* 47C4C 8004704C 26942938 */   addiu     $s4, $s4, %lo(D_800D2938)
/* 47C50 80047050 0C000AD4 */  jal        func_80002B50
/* 47C54 80047054 24040019 */   addiu     $a0, $zero, 0x19
.L80047058:
/* 47C58 80047058 8E880000 */  lw         $t0, ($s4)
/* 47C5C 8004705C 00000000 */  nop
/* 47C60 80047060 25090001 */  addiu      $t1, $t0, 1
/* 47C64 80047064 10000090 */  b          .L800472A8
/* 47C68 80047068 AE890000 */   sw        $t1, ($s4)
/* 47C6C 8004706C 3C14800D */  lui        $s4, %hi(D_800D293C)
/* 47C70 80047070 240A0004 */  addiu      $t2, $zero, 4
/* 47C74 80047074 3C018013 */  lui        $at, %hi(D_80137D90)
/* 47C78 80047078 2694293C */  addiu      $s4, $s4, %lo(D_800D293C)
/* 47C7C 8004707C A42A7D90 */  sh         $t2, %lo(D_80137D90)($at)
/* 47C80 80047080 8E820000 */  lw         $v0, ($s4)
/* 47C84 80047084 24060023 */  addiu      $a2, $zero, 0x23
/* 47C88 80047088 14C2001E */  bne        $a2, $v0, .L80047104
/* 47C8C 8004708C 3C10800D */   lui       $s0, %hi(D_800D2940)
/* 47C90 80047090 26102940 */  addiu      $s0, $s0, %lo(D_800D2940)
/* 47C94 80047094 8E0B0000 */  lw         $t3, ($s0)
/* 47C98 80047098 00000000 */  nop
/* 47C9C 8004709C 256DFFFF */  addiu      $t5, $t3, -1
/* 47CA0 800470A0 05A10018 */  bgez       $t5, .L80047104
/* 47CA4 800470A4 AE0D0000 */   sw        $t5, ($s0)
/* 47CA8 800470A8 0C000E99 */  jal        func_80003A64
/* 47CAC 800470AC 00000000 */   nop
/* 47CB0 800470B0 3C0E800D */  lui        $t6, %hi(D_800CBF40)
/* 47CB4 800470B4 95CEBF40 */  lhu        $t6, %lo(D_800CBF40)($t6)
/* 47CB8 800470B8 3C14800D */  lui        $s4, %hi(D_800D2938)
/* 47CBC 800470BC 11C0000B */  beqz       $t6, .L800470EC
/* 47CC0 800470C0 26942938 */   addiu     $s4, $s4, %lo(D_800D2938)
/* 47CC4 800470C4 240F0014 */  addiu      $t7, $zero, 0x14
/* 47CC8 800470C8 AE0F0000 */  sw         $t7, ($s0)
/* 47CCC 800470CC 24040041 */  addiu      $a0, $zero, 0x41
/* 47CD0 800470D0 0C000FC9 */  jal        func_80003F24
/* 47CD4 800470D4 24050014 */   addiu     $a1, $zero, 0x14
/* 47CD8 800470D8 8E980000 */  lw         $t8, ($s4)
/* 47CDC 800470DC 00000000 */  nop
/* 47CE0 800470E0 27190002 */  addiu      $t9, $t8, 2
/* 47CE4 800470E4 10000070 */  b          .L800472A8
/* 47CE8 800470E8 AE990000 */   sw        $t9, ($s4)
.L800470EC:
/* 47CEC 800470EC 8E890000 */  lw         $t1, ($s4)
/* 47CF0 800470F0 24080078 */  addiu      $t0, $zero, 0x78
/* 47CF4 800470F4 252A0001 */  addiu      $t2, $t1, 1
/* 47CF8 800470F8 AE080000 */  sw         $t0, ($s0)
/* 47CFC 800470FC 1000006A */  b          .L800472A8
/* 47D00 80047100 AE8A0000 */   sw        $t2, ($s4)
.L80047104:
/* 47D04 80047104 3C0B800C */  lui        $t3, %hi(D_800BE4E4)
/* 47D08 80047108 956BE4E4 */  lhu        $t3, %lo(D_800BE4E4)($t3)
/* 47D0C 8004710C 244C0002 */  addiu      $t4, $v0, 2
/* 47D10 80047110 316D0003 */  andi       $t5, $t3, 3
/* 47D14 80047114 15A00006 */  bnez       $t5, .L80047130
/* 47D18 80047118 29810023 */   slti      $at, $t4, 0x23
/* 47D1C 8004711C AE8C0000 */  sw         $t4, ($s4)
/* 47D20 80047120 14200003 */  bnez       $at, .L80047130
/* 47D24 80047124 01801025 */   or        $v0, $t4, $zero
/* 47D28 80047128 AE860000 */  sw         $a2, ($s4)
/* 47D2C 8004712C 00C01025 */  or         $v0, $a2, $zero
.L80047130:
/* 47D30 80047130 1040005D */  beqz       $v0, .L800472A8
/* 47D34 80047134 00008825 */   or        $s1, $zero, $zero
/* 47D38 80047138 3C013F80 */  lui        $at, 0x3f80
/* 47D3C 8004713C 3C128010 */  lui        $s2, %hi(D_80104098)
/* 47D40 80047140 4481A000 */  mtc1       $at, $f20
/* 47D44 80047144 26524098 */  addiu      $s2, $s2, %lo(D_80104098)
/* 47D48 80047148 241300A0 */  addiu      $s3, $zero, 0xa0
.L8004714C:
/* 47D4C 8004714C 02330019 */  multu      $s1, $s3
/* 47D50 80047150 3C063DA3 */  lui        $a2, 0x3da3
/* 47D54 80047154 34C6D70A */  ori        $a2, $a2, 0xd70a
/* 47D58 80047158 4600A386 */  mov.s      $f14, $f20
/* 47D5C 8004715C 00007012 */  mflo       $t6
/* 47D60 80047160 024E8021 */  addu       $s0, $s2, $t6
/* 47D64 80047164 C60C008C */  lwc1       $f12, 0x8c($s0)
/* 47D68 80047168 0C00A618 */  jal        func_80029860
/* 47D6C 8004716C 00000000 */   nop
/* 47D70 80047170 92040094 */  lbu        $a0, 0x94($s0)
/* 47D74 80047174 E600008C */  swc1       $f0, 0x8c($s0)
/* 47D78 80047178 240500FF */  addiu      $a1, $zero, 0xff
/* 47D7C 8004717C 0C00A607 */  jal        func_8002981C
/* 47D80 80047180 24060010 */   addiu     $a2, $zero, 0x10
/* 47D84 80047184 8E980000 */  lw         $t8, ($s4)
/* 47D88 80047188 26310001 */  addiu      $s1, $s1, 1
/* 47D8C 8004718C 322FFFFF */  andi       $t7, $s1, 0xffff
/* 47D90 80047190 01E08825 */  or         $s1, $t7, $zero
/* 47D94 80047194 170FFFED */  bne        $t8, $t7, .L8004714C
/* 47D98 80047198 A2020094 */   sb        $v0, 0x94($s0)
/* 47D9C 8004719C 10000043 */  b          .L800472AC
/* 47DA0 800471A0 00001025 */   or        $v0, $zero, $zero
/* 47DA4 800471A4 3C02800C */  lui        $v0, %hi(D_800BE4FC)
/* 47DA8 800471A8 3C08800C */  lui        $t0, %hi(D_800BE500)
/* 47DAC 800471AC 9508E500 */  lhu        $t0, %lo(D_800BE500)($t0)
/* 47DB0 800471B0 9442E4FC */  lhu        $v0, %lo(D_800BE4FC)($v0)
/* 47DB4 800471B4 24190004 */  addiu      $t9, $zero, 4
/* 47DB8 800471B8 3C018013 */  lui        $at, %hi(D_80137D90)
/* 47DBC 800471BC 00484824 */  and        $t1, $v0, $t0
/* 47DC0 800471C0 15200006 */  bnez       $t1, .L800471DC
/* 47DC4 800471C4 A4397D90 */   sh        $t9, %lo(D_80137D90)($at)
/* 47DC8 800471C8 3C0A800C */  lui        $t2, %hi(D_800BE518)
/* 47DCC 800471CC 954AE518 */  lhu        $t2, %lo(D_800BE518)($t2)
/* 47DD0 800471D0 00000000 */  nop
/* 47DD4 800471D4 004A5824 */  and        $t3, $v0, $t2
/* 47DD8 800471D8 1160000F */  beqz       $t3, .L80047218
.L800471DC:
/* 47DDC 800471DC 3C0D8013 */   lui       $t5, %hi(D_80137DA0)
/* 47DE0 800471E0 8DAD7DA0 */  lw         $t5, %lo(D_80137DA0)($t5)
/* 47DE4 800471E4 24040001 */  addiu      $a0, $zero, 1
/* 47DE8 800471E8 2DA100F8 */  sltiu      $at, $t5, 0xf8
/* 47DEC 800471EC 1020000A */  beqz       $at, .L80047218
/* 47DF0 800471F0 00000000 */   nop
/* 47DF4 800471F4 0C000FC9 */  jal        func_80003F24
/* 47DF8 800471F8 24050028 */   addiu     $a1, $zero, 0x28
/* 47DFC 800471FC 3C14800D */  lui        $s4, %hi(D_800D2938)
/* 47E00 80047200 26942938 */  addiu      $s4, $s4, %lo(D_800D2938)
/* 47E04 80047204 8E8C0000 */  lw         $t4, ($s4)
/* 47E08 80047208 00000000 */  nop
/* 47E0C 8004720C 258E0001 */  addiu      $t6, $t4, 1
/* 47E10 80047210 10000025 */  b          .L800472A8
/* 47E14 80047214 AE8E0000 */   sw        $t6, ($s4)
.L80047218:
/* 47E18 80047218 3C0F8013 */  lui        $t7, %hi(D_80137DA0)
/* 47E1C 8004721C 8DEF7DA0 */  lw         $t7, %lo(D_80137DA0)($t7)
/* 47E20 80047220 00000000 */  nop
/* 47E24 80047224 2DE10121 */  sltiu      $at, $t7, 0x121
/* 47E28 80047228 14200020 */  bnez       $at, .L800472AC
/* 47E2C 8004722C 00001025 */   or        $v0, $zero, $zero
/* 47E30 80047230 0C000E99 */  jal        func_80003A64
/* 47E34 80047234 00000000 */   nop
/* 47E38 80047238 1000001C */  b          .L800472AC
/* 47E3C 8004723C 24020001 */   addiu     $v0, $zero, 1
/* 47E40 80047240 3C188013 */  lui        $t8, %hi(D_80137D90)
/* 47E44 80047244 97187D90 */  lhu        $t8, %lo(D_80137D90)($t8)
/* 47E48 80047248 24010003 */  addiu      $at, $zero, 3
/* 47E4C 8004724C 17010017 */  bne        $t8, $at, .L800472AC
/* 47E50 80047250 00001025 */   or        $v0, $zero, $zero
/* 47E54 80047254 0C000E99 */  jal        func_80003A64
/* 47E58 80047258 00000000 */   nop
/* 47E5C 8004725C 3C14800D */  lui        $s4, %hi(D_800D2938)
/* 47E60 80047260 26942938 */  addiu      $s4, $s4, %lo(D_800D2938)
/* 47E64 80047264 8E880000 */  lw         $t0, ($s4)
/* 47E68 80047268 3C10800D */  lui        $s0, %hi(D_800D2940)
/* 47E6C 8004726C 26102940 */  addiu      $s0, $s0, %lo(D_800D2940)
/* 47E70 80047270 24190014 */  addiu      $t9, $zero, 0x14
/* 47E74 80047274 25090001 */  addiu      $t1, $t0, 1
/* 47E78 80047278 AE190000 */  sw         $t9, ($s0)
/* 47E7C 8004727C 1000000A */  b          .L800472A8
/* 47E80 80047280 AE890000 */   sw        $t1, ($s4)
/* 47E84 80047284 3C10800D */  lui        $s0, %hi(D_800D2940)
/* 47E88 80047288 26102940 */  addiu      $s0, $s0, %lo(D_800D2940)
/* 47E8C 8004728C 8E020000 */  lw         $v0, ($s0)
/* 47E90 80047290 00000000 */  nop
/* 47E94 80047294 244AFFFF */  addiu      $t2, $v0, -1
/* 47E98 80047298 04410003 */  bgez       $v0, .L800472A8
/* 47E9C 8004729C AE0A0000 */   sw        $t2, ($s0)
/* 47EA0 800472A0 10000002 */  b          .L800472AC
/* 47EA4 800472A4 24020001 */   addiu     $v0, $zero, 1
.L800472A8:
/* 47EA8 800472A8 00001025 */  or         $v0, $zero, $zero
.L800472AC:
/* 47EAC 800472AC 8FBF0034 */  lw         $ra, 0x34($sp)
/* 47EB0 800472B0 C7B50018 */  lwc1       $f21, 0x18($sp)
/* 47EB4 800472B4 C7B4001C */  lwc1       $f20, 0x1c($sp)
/* 47EB8 800472B8 8FB00020 */  lw         $s0, 0x20($sp)
/* 47EBC 800472BC 8FB10024 */  lw         $s1, 0x24($sp)
/* 47EC0 800472C0 8FB20028 */  lw         $s2, 0x28($sp)
/* 47EC4 800472C4 8FB3002C */  lw         $s3, 0x2c($sp)
/* 47EC8 800472C8 8FB40030 */  lw         $s4, 0x30($sp)
/* 47ECC 800472CC 03E00008 */  jr         $ra
/* 47ED0 800472D0 27BD0050 */   addiu     $sp, $sp, 0x50
