glabel func_80016E70
/* 17A70 80016E70 308EFFFF */  andi       $t6, $a0, 0xffff
/* 17A74 80016E74 000E7880 */  sll        $t7, $t6, 2
/* 17A78 80016E78 01EE7823 */  subu       $t7, $t7, $t6
/* 17A7C 80016E7C 000F7880 */  sll        $t7, $t7, 2
/* 17A80 80016E80 01EE7821 */  addu       $t7, $t7, $t6
/* 17A84 80016E84 000F7880 */  sll        $t7, $t7, 2
/* 17A88 80016E88 01EE7823 */  subu       $t7, $t7, $t6
/* 17A8C 80016E8C 000F78C0 */  sll        $t7, $t7, 3
/* 17A90 80016E90 3C03800F */  lui        $v1, %hi(D_800EF5E2)
/* 17A94 80016E94 006F1821 */  addu       $v1, $v1, $t7
/* 17A98 80016E98 9463F5E2 */  lhu        $v1, %lo(D_800EF5E2)($v1)
/* 17A9C 80016E9C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 17AA0 80016EA0 0003CA03 */  sra        $t9, $v1, 8
/* 17AA4 80016EA4 2728FFFF */  addiu      $t0, $t9, -1
/* 17AA8 80016EA8 00601025 */  or         $v0, $v1, $zero
/* 17AAC 80016EAC AFA40018 */  sw         $a0, 0x18($sp)
/* 17AB0 80016EB0 305800FF */  andi       $t8, $v0, 0xff
/* 17AB4 80016EB4 2D01002C */  sltiu      $at, $t0, 0x2c
/* 17AB8 80016EB8 01C02025 */  or         $a0, $t6, $zero
/* 17ABC 80016EBC AFBF0014 */  sw         $ra, 0x14($sp)
/* 17AC0 80016EC0 10200192 */  beqz       $at, .L8001750C
/* 17AC4 80016EC4 03001025 */   or        $v0, $t8, $zero
/* 17AC8 80016EC8 00084080 */  sll        $t0, $t0, 2
/* 17ACC 80016ECC 3C01800F */  lui        $at, %hi(jtbl_800EB050)
/* 17AD0 80016ED0 00280821 */  addu       $at, $at, $t0
/* 17AD4 80016ED4 8C28B050 */  lw         $t0, %lo(jtbl_800EB050)($at)
/* 17AD8 80016ED8 00000000 */  nop
/* 17ADC 80016EDC 01000008 */  jr         $t0
/* 17AE0 80016EE0 00000000 */   nop
glabel L80016EE4_17AE4
/* 17AE4 80016EE4 00024880 */  sll        $t1, $v0, 2
/* 17AE8 80016EE8 3C19801B */  lui        $t9, %hi(D_801B0800)
/* 17AEC 80016EEC 0329C821 */  addu       $t9, $t9, $t1
/* 17AF0 80016EF0 8F390800 */  lw         $t9, %lo(D_801B0800)($t9)
/* 17AF4 80016EF4 00000000 */  nop
/* 17AF8 80016EF8 0320F809 */  jalr       $t9
/* 17AFC 80016EFC 00000000 */   nop
/* 17B00 80016F00 10000183 */  b          .L80017510
/* 17B04 80016F04 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80016F08_17B08
/* 17B08 80016F08 00025080 */  sll        $t2, $v0, 2
/* 17B0C 80016F0C 3C19801A */  lui        $t9, %hi(D_8019B000)
/* 17B10 80016F10 032AC821 */  addu       $t9, $t9, $t2
/* 17B14 80016F14 8F39B000 */  lw         $t9, %lo(D_8019B000)($t9)
/* 17B18 80016F18 00000000 */  nop
/* 17B1C 80016F1C 0320F809 */  jalr       $t9
/* 17B20 80016F20 00000000 */   nop
/* 17B24 80016F24 1000017A */  b          .L80017510
/* 17B28 80016F28 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80016F2C_17B2C
/* 17B2C 80016F2C 00025880 */  sll        $t3, $v0, 2
/* 17B30 80016F30 3C19801A */  lui        $t9, %hi(D_8019B000)
/* 17B34 80016F34 032BC821 */  addu       $t9, $t9, $t3
/* 17B38 80016F38 8F39B000 */  lw         $t9, %lo(D_8019B000)($t9)
/* 17B3C 80016F3C 00000000 */  nop
/* 17B40 80016F40 0320F809 */  jalr       $t9
/* 17B44 80016F44 00000000 */   nop
/* 17B48 80016F48 10000171 */  b          .L80017510
/* 17B4C 80016F4C 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80016F50_17B50
/* 17B50 80016F50 00026080 */  sll        $t4, $v0, 2
/* 17B54 80016F54 3C19801B */  lui        $t9, %hi(D_801B0800)
/* 17B58 80016F58 032CC821 */  addu       $t9, $t9, $t4
/* 17B5C 80016F5C 8F390800 */  lw         $t9, %lo(D_801B0800)($t9)
/* 17B60 80016F60 00000000 */  nop
/* 17B64 80016F64 0320F809 */  jalr       $t9
/* 17B68 80016F68 00000000 */   nop
/* 17B6C 80016F6C 10000168 */  b          .L80017510
/* 17B70 80016F70 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80016F74_17B74
/* 17B74 80016F74 00026880 */  sll        $t5, $v0, 2
/* 17B78 80016F78 3C19801B */  lui        $t9, %hi(D_801B0800)
/* 17B7C 80016F7C 032DC821 */  addu       $t9, $t9, $t5
/* 17B80 80016F80 8F390800 */  lw         $t9, %lo(D_801B0800)($t9)
/* 17B84 80016F84 00000000 */  nop
/* 17B88 80016F88 0320F809 */  jalr       $t9
/* 17B8C 80016F8C 00000000 */   nop
/* 17B90 80016F90 1000015F */  b          .L80017510
/* 17B94 80016F94 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80016F98_17B98
/* 17B98 80016F98 00027080 */  sll        $t6, $v0, 2
/* 17B9C 80016F9C 3C198019 */  lui        $t9, %hi(D_80192000)
/* 17BA0 80016FA0 032EC821 */  addu       $t9, $t9, $t6
/* 17BA4 80016FA4 8F392000 */  lw         $t9, %lo(D_80192000)($t9)
/* 17BA8 80016FA8 00000000 */  nop
/* 17BAC 80016FAC 0320F809 */  jalr       $t9
/* 17BB0 80016FB0 00000000 */   nop
/* 17BB4 80016FB4 10000156 */  b          .L80017510
/* 17BB8 80016FB8 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80016FBC_17BBC
/* 17BBC 80016FBC 00027880 */  sll        $t7, $v0, 2
/* 17BC0 80016FC0 3C19801B */  lui        $t9, %hi(D_801B0800)
/* 17BC4 80016FC4 032FC821 */  addu       $t9, $t9, $t7
/* 17BC8 80016FC8 8F390800 */  lw         $t9, %lo(D_801B0800)($t9)
/* 17BCC 80016FCC 00000000 */  nop
/* 17BD0 80016FD0 0320F809 */  jalr       $t9
/* 17BD4 80016FD4 00000000 */   nop
/* 17BD8 80016FD8 1000014D */  b          .L80017510
/* 17BDC 80016FDC 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80016FE0_17BE0
/* 17BE0 80016FE0 0002C080 */  sll        $t8, $v0, 2
/* 17BE4 80016FE4 3C19800E */  lui        $t9, %hi(D_800E5AC0)
/* 17BE8 80016FE8 0338C821 */  addu       $t9, $t9, $t8
/* 17BEC 80016FEC 8F395AC0 */  lw         $t9, %lo(D_800E5AC0)($t9)
/* 17BF0 80016FF0 00000000 */  nop
/* 17BF4 80016FF4 0320F809 */  jalr       $t9
/* 17BF8 80016FF8 00000000 */   nop
/* 17BFC 80016FFC 10000144 */  b          .L80017510
/* 17C00 80017000 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80017004_17C04
/* 17C04 80017004 00024080 */  sll        $t0, $v0, 2
/* 17C08 80017008 3C19801A */  lui        $t9, %hi(D_8019B000)
/* 17C0C 8001700C 0328C821 */  addu       $t9, $t9, $t0
/* 17C10 80017010 8F39B000 */  lw         $t9, %lo(D_8019B000)($t9)
/* 17C14 80017014 00000000 */  nop
/* 17C18 80017018 0320F809 */  jalr       $t9
/* 17C1C 8001701C 00000000 */   nop
/* 17C20 80017020 1000013B */  b          .L80017510
/* 17C24 80017024 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80017028_17C28
/* 17C28 80017028 00024880 */  sll        $t1, $v0, 2
/* 17C2C 8001702C 3C19801A */  lui        $t9, %hi(D_8019B000)
/* 17C30 80017030 0329C821 */  addu       $t9, $t9, $t1
/* 17C34 80017034 8F39B000 */  lw         $t9, %lo(D_8019B000)($t9)
/* 17C38 80017038 00000000 */  nop
/* 17C3C 8001703C 0320F809 */  jalr       $t9
/* 17C40 80017040 00000000 */   nop
/* 17C44 80017044 10000132 */  b          .L80017510
/* 17C48 80017048 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L8001704C_17C4C
/* 17C4C 8001704C 00025080 */  sll        $t2, $v0, 2
/* 17C50 80017050 3C19801A */  lui        $t9, %hi(D_8019B000)
/* 17C54 80017054 032AC821 */  addu       $t9, $t9, $t2
/* 17C58 80017058 8F39B000 */  lw         $t9, %lo(D_8019B000)($t9)
/* 17C5C 8001705C 00000000 */  nop
/* 17C60 80017060 0320F809 */  jalr       $t9
/* 17C64 80017064 00000000 */   nop
/* 17C68 80017068 10000129 */  b          .L80017510
/* 17C6C 8001706C 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80017070_17C70
/* 17C70 80017070 00025880 */  sll        $t3, $v0, 2
/* 17C74 80017074 3C19801A */  lui        $t9, %hi(D_8019B000)
/* 17C78 80017078 032BC821 */  addu       $t9, $t9, $t3
/* 17C7C 8001707C 8F39B000 */  lw         $t9, %lo(D_8019B000)($t9)
/* 17C80 80017080 00000000 */  nop
/* 17C84 80017084 0320F809 */  jalr       $t9
/* 17C88 80017088 00000000 */   nop
/* 17C8C 8001708C 10000120 */  b          .L80017510
/* 17C90 80017090 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80017094_17C94
/* 17C94 80017094 00026080 */  sll        $t4, $v0, 2
/* 17C98 80017098 3C19801A */  lui        $t9, %hi(D_8019B000)
/* 17C9C 8001709C 032CC821 */  addu       $t9, $t9, $t4
/* 17CA0 800170A0 8F39B000 */  lw         $t9, %lo(D_8019B000)($t9)
/* 17CA4 800170A4 00000000 */  nop
/* 17CA8 800170A8 0320F809 */  jalr       $t9
/* 17CAC 800170AC 00000000 */   nop
/* 17CB0 800170B0 10000117 */  b          .L80017510
/* 17CB4 800170B4 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800170B8_17CB8
/* 17CB8 800170B8 00026880 */  sll        $t5, $v0, 2
/* 17CBC 800170BC 3C19801B */  lui        $t9, %hi(D_801B0800)
/* 17CC0 800170C0 032DC821 */  addu       $t9, $t9, $t5
/* 17CC4 800170C4 8F390800 */  lw         $t9, %lo(D_801B0800)($t9)
/* 17CC8 800170C8 00000000 */  nop
/* 17CCC 800170CC 0320F809 */  jalr       $t9
/* 17CD0 800170D0 00000000 */   nop
/* 17CD4 800170D4 1000010E */  b          .L80017510
/* 17CD8 800170D8 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800170DC_17CDC
/* 17CDC 800170DC 00027080 */  sll        $t6, $v0, 2
/* 17CE0 800170E0 3C198019 */  lui        $t9, %hi(D_80192000)
/* 17CE4 800170E4 032EC821 */  addu       $t9, $t9, $t6
/* 17CE8 800170E8 8F392000 */  lw         $t9, %lo(D_80192000)($t9)
/* 17CEC 800170EC 00000000 */  nop
/* 17CF0 800170F0 0320F809 */  jalr       $t9
/* 17CF4 800170F4 00000000 */   nop
/* 17CF8 800170F8 10000105 */  b          .L80017510
/* 17CFC 800170FC 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80017100_17D00
/* 17D00 80017100 00027880 */  sll        $t7, $v0, 2
/* 17D04 80017104 3C198019 */  lui        $t9, %hi(D_80192000)
/* 17D08 80017108 032FC821 */  addu       $t9, $t9, $t7
/* 17D0C 8001710C 8F392000 */  lw         $t9, %lo(D_80192000)($t9)
/* 17D10 80017110 00000000 */  nop
/* 17D14 80017114 0320F809 */  jalr       $t9
/* 17D18 80017118 00000000 */   nop
/* 17D1C 8001711C 100000FC */  b          .L80017510
/* 17D20 80017120 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80017124_17D24
/* 17D24 80017124 0002C080 */  sll        $t8, $v0, 2
/* 17D28 80017128 3C19801A */  lui        $t9, %hi(D_8019B000)
/* 17D2C 8001712C 0338C821 */  addu       $t9, $t9, $t8
/* 17D30 80017130 8F39B000 */  lw         $t9, %lo(D_8019B000)($t9)
/* 17D34 80017134 00000000 */  nop
/* 17D38 80017138 0320F809 */  jalr       $t9
/* 17D3C 8001713C 00000000 */   nop
/* 17D40 80017140 100000F3 */  b          .L80017510
/* 17D44 80017144 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80017148_17D48
/* 17D48 80017148 00024080 */  sll        $t0, $v0, 2
/* 17D4C 8001714C 3C19801A */  lui        $t9, %hi(D_8019B000)
/* 17D50 80017150 0328C821 */  addu       $t9, $t9, $t0
/* 17D54 80017154 8F39B000 */  lw         $t9, %lo(D_8019B000)($t9)
/* 17D58 80017158 00000000 */  nop
/* 17D5C 8001715C 0320F809 */  jalr       $t9
/* 17D60 80017160 00000000 */   nop
/* 17D64 80017164 100000EA */  b          .L80017510
/* 17D68 80017168 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L8001716C_17D6C
/* 17D6C 8001716C 00024880 */  sll        $t1, $v0, 2
/* 17D70 80017170 3C19801A */  lui        $t9, %hi(D_8019B000)
/* 17D74 80017174 0329C821 */  addu       $t9, $t9, $t1
/* 17D78 80017178 8F39B000 */  lw         $t9, %lo(D_8019B000)($t9)
/* 17D7C 8001717C 00000000 */  nop
/* 17D80 80017180 0320F809 */  jalr       $t9
/* 17D84 80017184 00000000 */   nop
/* 17D88 80017188 100000E1 */  b          .L80017510
/* 17D8C 8001718C 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80017190_17D90
/* 17D90 80017190 00025080 */  sll        $t2, $v0, 2
/* 17D94 80017194 3C198019 */  lui        $t9, %hi(D_80192000)
/* 17D98 80017198 032AC821 */  addu       $t9, $t9, $t2
/* 17D9C 8001719C 8F392000 */  lw         $t9, %lo(D_80192000)($t9)
/* 17DA0 800171A0 00000000 */  nop
/* 17DA4 800171A4 0320F809 */  jalr       $t9
/* 17DA8 800171A8 00000000 */   nop
/* 17DAC 800171AC 100000D8 */  b          .L80017510
/* 17DB0 800171B0 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800171B4_17DB4
/* 17DB4 800171B4 00025880 */  sll        $t3, $v0, 2
/* 17DB8 800171B8 3C198019 */  lui        $t9, %hi(D_80192000)
/* 17DBC 800171BC 032BC821 */  addu       $t9, $t9, $t3
/* 17DC0 800171C0 8F392000 */  lw         $t9, %lo(D_80192000)($t9)
/* 17DC4 800171C4 00000000 */  nop
/* 17DC8 800171C8 0320F809 */  jalr       $t9
/* 17DCC 800171CC 00000000 */   nop
/* 17DD0 800171D0 100000CF */  b          .L80017510
/* 17DD4 800171D4 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800171D8_17DD8
/* 17DD8 800171D8 00026080 */  sll        $t4, $v0, 2
/* 17DDC 800171DC 3C198019 */  lui        $t9, %hi(D_80192000)
/* 17DE0 800171E0 032CC821 */  addu       $t9, $t9, $t4
/* 17DE4 800171E4 8F392000 */  lw         $t9, %lo(D_80192000)($t9)
/* 17DE8 800171E8 00000000 */  nop
/* 17DEC 800171EC 0320F809 */  jalr       $t9
/* 17DF0 800171F0 00000000 */   nop
/* 17DF4 800171F4 100000C6 */  b          .L80017510
/* 17DF8 800171F8 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800171FC_17DFC
/* 17DFC 800171FC 00026880 */  sll        $t5, $v0, 2
/* 17E00 80017200 3C19801A */  lui        $t9, %hi(D_801A6800)
/* 17E04 80017204 032DC821 */  addu       $t9, $t9, $t5
/* 17E08 80017208 8F396800 */  lw         $t9, %lo(D_801A6800)($t9)
/* 17E0C 8001720C 00000000 */  nop
/* 17E10 80017210 0320F809 */  jalr       $t9
/* 17E14 80017214 00000000 */   nop
/* 17E18 80017218 100000BD */  b          .L80017510
/* 17E1C 8001721C 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80017220_17E20
/* 17E20 80017220 00027080 */  sll        $t6, $v0, 2
/* 17E24 80017224 3C19801A */  lui        $t9, %hi(D_801A6800)
/* 17E28 80017228 032EC821 */  addu       $t9, $t9, $t6
/* 17E2C 8001722C 8F396800 */  lw         $t9, %lo(D_801A6800)($t9)
/* 17E30 80017230 00000000 */  nop
/* 17E34 80017234 0320F809 */  jalr       $t9
/* 17E38 80017238 00000000 */   nop
/* 17E3C 8001723C 100000B4 */  b          .L80017510
/* 17E40 80017240 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80017244_17E44
/* 17E44 80017244 00027880 */  sll        $t7, $v0, 2
/* 17E48 80017248 3C198019 */  lui        $t9, %hi(D_80192000)
/* 17E4C 8001724C 032FC821 */  addu       $t9, $t9, $t7
/* 17E50 80017250 8F392000 */  lw         $t9, %lo(D_80192000)($t9)
/* 17E54 80017254 00000000 */  nop
/* 17E58 80017258 0320F809 */  jalr       $t9
/* 17E5C 8001725C 00000000 */   nop
/* 17E60 80017260 100000AB */  b          .L80017510
/* 17E64 80017264 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80017268_17E68
/* 17E68 80017268 0002C080 */  sll        $t8, $v0, 2
/* 17E6C 8001726C 3C19801A */  lui        $t9, %hi(D_801A6800)
/* 17E70 80017270 0338C821 */  addu       $t9, $t9, $t8
/* 17E74 80017274 8F396800 */  lw         $t9, %lo(D_801A6800)($t9)
/* 17E78 80017278 00000000 */  nop
/* 17E7C 8001727C 0320F809 */  jalr       $t9
/* 17E80 80017280 00000000 */   nop
/* 17E84 80017284 100000A2 */  b          .L80017510
/* 17E88 80017288 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L8001728C_17E8C
/* 17E8C 8001728C 00024080 */  sll        $t0, $v0, 2
/* 17E90 80017290 3C19801B */  lui        $t9, %hi(D_801B0800)
/* 17E94 80017294 0328C821 */  addu       $t9, $t9, $t0
/* 17E98 80017298 8F390800 */  lw         $t9, %lo(D_801B0800)($t9)
/* 17E9C 8001729C 00000000 */  nop
/* 17EA0 800172A0 0320F809 */  jalr       $t9
/* 17EA4 800172A4 00000000 */   nop
/* 17EA8 800172A8 10000099 */  b          .L80017510
/* 17EAC 800172AC 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800172B0_17EB0
/* 17EB0 800172B0 00024880 */  sll        $t1, $v0, 2
/* 17EB4 800172B4 3C19801A */  lui        $t9, %hi(D_801A6800)
/* 17EB8 800172B8 0329C821 */  addu       $t9, $t9, $t1
/* 17EBC 800172BC 8F396800 */  lw         $t9, %lo(D_801A6800)($t9)
/* 17EC0 800172C0 00000000 */  nop
/* 17EC4 800172C4 0320F809 */  jalr       $t9
/* 17EC8 800172C8 00000000 */   nop
/* 17ECC 800172CC 10000090 */  b          .L80017510
/* 17ED0 800172D0 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800172D4_17ED4
/* 17ED4 800172D4 00025080 */  sll        $t2, $v0, 2
/* 17ED8 800172D8 3C19801A */  lui        $t9, %hi(D_801A6800)
/* 17EDC 800172DC 032AC821 */  addu       $t9, $t9, $t2
/* 17EE0 800172E0 8F396800 */  lw         $t9, %lo(D_801A6800)($t9)
/* 17EE4 800172E4 00000000 */  nop
/* 17EE8 800172E8 0320F809 */  jalr       $t9
/* 17EEC 800172EC 00000000 */   nop
/* 17EF0 800172F0 10000087 */  b          .L80017510
/* 17EF4 800172F4 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800172F8_17EF8
/* 17EF8 800172F8 00025880 */  sll        $t3, $v0, 2
/* 17EFC 800172FC 3C19801A */  lui        $t9, %hi(D_801A6800)
/* 17F00 80017300 032BC821 */  addu       $t9, $t9, $t3
/* 17F04 80017304 8F396800 */  lw         $t9, %lo(D_801A6800)($t9)
/* 17F08 80017308 00000000 */  nop
/* 17F0C 8001730C 0320F809 */  jalr       $t9
/* 17F10 80017310 00000000 */   nop
/* 17F14 80017314 1000007E */  b          .L80017510
/* 17F18 80017318 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L8001731C_17F1C
/* 17F1C 8001731C 00026080 */  sll        $t4, $v0, 2
/* 17F20 80017320 3C19801A */  lui        $t9, %hi(D_801A6800)
/* 17F24 80017324 032CC821 */  addu       $t9, $t9, $t4
/* 17F28 80017328 8F396800 */  lw         $t9, %lo(D_801A6800)($t9)
/* 17F2C 8001732C 00000000 */  nop
/* 17F30 80017330 0320F809 */  jalr       $t9
/* 17F34 80017334 00000000 */   nop
/* 17F38 80017338 10000075 */  b          .L80017510
/* 17F3C 8001733C 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80017340_17F40
/* 17F40 80017340 00026880 */  sll        $t5, $v0, 2
/* 17F44 80017344 3C19801A */  lui        $t9, %hi(D_801A6800)
/* 17F48 80017348 032DC821 */  addu       $t9, $t9, $t5
/* 17F4C 8001734C 8F396800 */  lw         $t9, %lo(D_801A6800)($t9)
/* 17F50 80017350 00000000 */  nop
/* 17F54 80017354 0320F809 */  jalr       $t9
/* 17F58 80017358 00000000 */   nop
/* 17F5C 8001735C 1000006C */  b          .L80017510
/* 17F60 80017360 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80017364_17F64
/* 17F64 80017364 00027080 */  sll        $t6, $v0, 2
/* 17F68 80017368 3C198019 */  lui        $t9, %hi(D_80192000)
/* 17F6C 8001736C 032EC821 */  addu       $t9, $t9, $t6
/* 17F70 80017370 8F392000 */  lw         $t9, %lo(D_80192000)($t9)
/* 17F74 80017374 00000000 */  nop
/* 17F78 80017378 0320F809 */  jalr       $t9
/* 17F7C 8001737C 00000000 */   nop
/* 17F80 80017380 10000063 */  b          .L80017510
/* 17F84 80017384 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80017388_17F88
/* 17F88 80017388 00027880 */  sll        $t7, $v0, 2
/* 17F8C 8001738C 3C198019 */  lui        $t9, %hi(D_80192000)
/* 17F90 80017390 032FC821 */  addu       $t9, $t9, $t7
/* 17F94 80017394 8F392000 */  lw         $t9, %lo(D_80192000)($t9)
/* 17F98 80017398 00000000 */  nop
/* 17F9C 8001739C 0320F809 */  jalr       $t9
/* 17FA0 800173A0 00000000 */   nop
/* 17FA4 800173A4 1000005A */  b          .L80017510
/* 17FA8 800173A8 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800173AC_17FAC
/* 17FAC 800173AC 0002C080 */  sll        $t8, $v0, 2
/* 17FB0 800173B0 3C198019 */  lui        $t9, %hi(D_80192000)
/* 17FB4 800173B4 0338C821 */  addu       $t9, $t9, $t8
/* 17FB8 800173B8 8F392000 */  lw         $t9, %lo(D_80192000)($t9)
/* 17FBC 800173BC 00000000 */  nop
/* 17FC0 800173C0 0320F809 */  jalr       $t9
/* 17FC4 800173C4 00000000 */   nop
/* 17FC8 800173C8 10000051 */  b          .L80017510
/* 17FCC 800173CC 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800173D0_17FD0
/* 17FD0 800173D0 00024080 */  sll        $t0, $v0, 2
/* 17FD4 800173D4 3C198019 */  lui        $t9, %hi(D_80192000)
/* 17FD8 800173D8 0328C821 */  addu       $t9, $t9, $t0
/* 17FDC 800173DC 8F392000 */  lw         $t9, %lo(D_80192000)($t9)
/* 17FE0 800173E0 00000000 */  nop
/* 17FE4 800173E4 0320F809 */  jalr       $t9
/* 17FE8 800173E8 00000000 */   nop
/* 17FEC 800173EC 10000048 */  b          .L80017510
/* 17FF0 800173F0 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800173F4_17FF4
/* 17FF4 800173F4 00024880 */  sll        $t1, $v0, 2
/* 17FF8 800173F8 3C19801A */  lui        $t9, %hi(D_801A6800)
/* 17FFC 800173FC 0329C821 */  addu       $t9, $t9, $t1
/* 18000 80017400 8F396800 */  lw         $t9, %lo(D_801A6800)($t9)
/* 18004 80017404 00000000 */  nop
/* 18008 80017408 0320F809 */  jalr       $t9
/* 1800C 8001740C 00000000 */   nop
/* 18010 80017410 1000003F */  b          .L80017510
/* 18014 80017414 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80017418_18018
/* 18018 80017418 00025080 */  sll        $t2, $v0, 2
/* 1801C 8001741C 3C198019 */  lui        $t9, %hi(D_80192000)
/* 18020 80017420 032AC821 */  addu       $t9, $t9, $t2
/* 18024 80017424 8F392000 */  lw         $t9, %lo(D_80192000)($t9)
/* 18028 80017428 00000000 */  nop
/* 1802C 8001742C 0320F809 */  jalr       $t9
/* 18030 80017430 00000000 */   nop
/* 18034 80017434 10000036 */  b          .L80017510
/* 18038 80017438 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L8001743C_1803C
/* 1803C 8001743C 00025880 */  sll        $t3, $v0, 2
/* 18040 80017440 3C19801B */  lui        $t9, %hi(D_801B0800)
/* 18044 80017444 032BC821 */  addu       $t9, $t9, $t3
/* 18048 80017448 8F390800 */  lw         $t9, %lo(D_801B0800)($t9)
/* 1804C 8001744C 00000000 */  nop
/* 18050 80017450 0320F809 */  jalr       $t9
/* 18054 80017454 00000000 */   nop
/* 18058 80017458 1000002D */  b          .L80017510
/* 1805C 8001745C 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80017460_18060
/* 18060 80017460 00026080 */  sll        $t4, $v0, 2
/* 18064 80017464 3C19801B */  lui        $t9, %hi(D_801B0800)
/* 18068 80017468 032CC821 */  addu       $t9, $t9, $t4
/* 1806C 8001746C 8F390800 */  lw         $t9, %lo(D_801B0800)($t9)
/* 18070 80017470 00000000 */  nop
/* 18074 80017474 0320F809 */  jalr       $t9
/* 18078 80017478 00000000 */   nop
/* 1807C 8001747C 10000024 */  b          .L80017510
/* 18080 80017480 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80017484_18084
/* 18084 80017484 00026880 */  sll        $t5, $v0, 2
/* 18088 80017488 3C19801B */  lui        $t9, %hi(D_801B0800)
/* 1808C 8001748C 032DC821 */  addu       $t9, $t9, $t5
/* 18090 80017490 8F390800 */  lw         $t9, %lo(D_801B0800)($t9)
/* 18094 80017494 00000000 */  nop
/* 18098 80017498 0320F809 */  jalr       $t9
/* 1809C 8001749C 00000000 */   nop
/* 180A0 800174A0 1000001B */  b          .L80017510
/* 180A4 800174A4 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800174A8_180A8
/* 180A8 800174A8 00027080 */  sll        $t6, $v0, 2
/* 180AC 800174AC 3C19801B */  lui        $t9, %hi(D_801B0800)
/* 180B0 800174B0 032EC821 */  addu       $t9, $t9, $t6
/* 180B4 800174B4 8F390800 */  lw         $t9, %lo(D_801B0800)($t9)
/* 180B8 800174B8 00000000 */  nop
/* 180BC 800174BC 0320F809 */  jalr       $t9
/* 180C0 800174C0 00000000 */   nop
/* 180C4 800174C4 10000012 */  b          .L80017510
/* 180C8 800174C8 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800174CC_180CC
/* 180CC 800174CC 00027880 */  sll        $t7, $v0, 2
/* 180D0 800174D0 3C198019 */  lui        $t9, %hi(D_80192000)
/* 180D4 800174D4 032FC821 */  addu       $t9, $t9, $t7
/* 180D8 800174D8 8F392000 */  lw         $t9, %lo(D_80192000)($t9)
/* 180DC 800174DC 00000000 */  nop
/* 180E0 800174E0 0320F809 */  jalr       $t9
/* 180E4 800174E4 00000000 */   nop
/* 180E8 800174E8 10000009 */  b          .L80017510
/* 180EC 800174EC 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800174F0_180F0
/* 180F0 800174F0 0002C080 */  sll        $t8, $v0, 2
/* 180F4 800174F4 3C198019 */  lui        $t9, %hi(D_80192000)
/* 180F8 800174F8 0338C821 */  addu       $t9, $t9, $t8
/* 180FC 800174FC 8F392000 */  lw         $t9, %lo(D_80192000)($t9)
/* 18100 80017500 00000000 */  nop
/* 18104 80017504 0320F809 */  jalr       $t9
/* 18108 80017508 00000000 */   nop
.L8001750C:
/* 1810C 8001750C 8FBF0014 */  lw         $ra, 0x14($sp)
.L80017510:
/* 18110 80017510 27BD0018 */  addiu      $sp, $sp, 0x18
/* 18114 80017514 03E00008 */  jr         $ra
/* 18118 80017518 00000000 */   nop
