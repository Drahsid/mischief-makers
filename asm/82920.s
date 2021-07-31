.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80081D20
/* 82920 80081D20 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 82924 80081D24 AFB00018 */  sw         $s0, 0x18($sp)
/* 82928 80081D28 3090FFFF */  andi       $s0, $a0, 0xffff
/* 8292C 80081D2C AFBF001C */  sw         $ra, 0x1c($sp)
/* 82930 80081D30 AFA40020 */  sw         $a0, 0x20($sp)
/* 82934 80081D34 0C0078B4 */  jal        func_8001E2D0
/* 82938 80081D38 3204FFFF */   andi      $a0, $s0, 0xffff
/* 8293C 80081D3C 3C05800E */  lui        $a1, %hi(D_800E2600)
/* 82940 80081D40 3C06800E */  lui        $a2, %hi(D_800E25B0)
/* 82944 80081D44 24C625B0 */  addiu      $a2, $a2, %lo(D_800E25B0)
/* 82948 80081D48 24A52600 */  addiu      $a1, $a1, %lo(D_800E2600)
/* 8294C 80081D4C 0C020417 */  jal        func_8008105C
/* 82950 80081D50 3204FFFF */   andi      $a0, $s0, 0xffff
/* 82954 80081D54 00107880 */  sll        $t7, $s0, 2
/* 82958 80081D58 01F07823 */  subu       $t7, $t7, $s0
/* 8295C 80081D5C 000F7880 */  sll        $t7, $t7, 2
/* 82960 80081D60 01F07821 */  addu       $t7, $t7, $s0
/* 82964 80081D64 000F7880 */  sll        $t7, $t7, 2
/* 82968 80081D68 01F07823 */  subu       $t7, $t7, $s0
/* 8296C 80081D6C 000F78C0 */  sll        $t7, $t7, 3
/* 82970 80081D70 3C0E800E */  lui        $t6, %hi(D_800E31EC)
/* 82974 80081D74 3C01800F */  lui        $at, %hi(gActors+0x178)
/* 82978 80081D78 002F0821 */  addu       $at, $at, $t7
/* 8297C 80081D7C 25CE31EC */  addiu      $t6, $t6, %lo(D_800E31EC)
/* 82980 80081D80 3C05800E */  lui        $a1, %hi(D_800E2600)
/* 82984 80081D84 AC2EF688 */  sw         $t6, %lo(gActors+0x178)($at)
/* 82988 80081D88 24A52600 */  addiu      $a1, $a1, %lo(D_800E2600)
/* 8298C 80081D8C 3204FFFF */  andi       $a0, $s0, 0xffff
/* 82990 80081D90 0C02051E */  jal        func_80081478
/* 82994 80081D94 24060001 */   addiu     $a2, $zero, 1
/* 82998 80081D98 3C05800E */  lui        $a1, %hi(D_800E334C)
/* 8299C 80081D9C 24A5334C */  addiu      $a1, $a1, %lo(D_800E334C)
/* 829A0 80081DA0 0C0205E4 */  jal        func_80081790
/* 829A4 80081DA4 3204FFFF */   andi      $a0, $s0, 0xffff
/* 829A8 80081DA8 3C05800E */  lui        $a1, %hi(D_800E2600)
/* 829AC 80081DAC 24A52600 */  addiu      $a1, $a1, %lo(D_800E2600)
/* 829B0 80081DB0 0C02066A */  jal        func_800819A8
/* 829B4 80081DB4 3204FFFF */   andi      $a0, $s0, 0xffff
/* 829B8 80081DB8 0010C080 */  sll        $t8, $s0, 2
/* 829BC 80081DBC 0310C023 */  subu       $t8, $t8, $s0
/* 829C0 80081DC0 0018C080 */  sll        $t8, $t8, 2
/* 829C4 80081DC4 0310C021 */  addu       $t8, $t8, $s0
/* 829C8 80081DC8 0018C080 */  sll        $t8, $t8, 2
/* 829CC 80081DCC 0310C023 */  subu       $t8, $t8, $s0
/* 829D0 80081DD0 3C19800F */  lui        $t9, %hi(gActors)
/* 829D4 80081DD4 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 829D8 80081DD8 0018C0C0 */  sll        $t8, $t8, 3
/* 829DC 80081DDC 03191021 */  addu       $v0, $t8, $t9
/* 829E0 80081DE0 9448022C */  lhu        $t0, 0x22c($v0)
/* 829E4 80081DE4 944A088C */  lhu        $t2, 0x88c($v0)
/* 829E8 80081DE8 35090001 */  ori        $t1, $t0, 1
/* 829EC 80081DEC 944C0BBC */  lhu        $t4, 0xbbc($v0)
/* 829F0 80081DF0 944E0EEC */  lhu        $t6, 0xeec($v0)
/* 829F4 80081DF4 9458121C */  lhu        $t8, 0x121c($v0)
/* 829F8 80081DF8 9448154C */  lhu        $t0, 0x154c($v0)
/* 829FC 80081DFC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 82A00 80081E00 A449022C */  sh         $t1, 0x22c($v0)
/* 82A04 80081E04 8FB00018 */  lw         $s0, 0x18($sp)
/* 82A08 80081E08 354B0001 */  ori        $t3, $t2, 1
/* 82A0C 80081E0C 358D0001 */  ori        $t5, $t4, 1
/* 82A10 80081E10 35CF0001 */  ori        $t7, $t6, 1
/* 82A14 80081E14 37190001 */  ori        $t9, $t8, 1
/* 82A18 80081E18 35090001 */  ori        $t1, $t0, 1
/* 82A1C 80081E1C A44B088C */  sh         $t3, 0x88c($v0)
/* 82A20 80081E20 A44D0BBC */  sh         $t5, 0xbbc($v0)
/* 82A24 80081E24 A44F0EEC */  sh         $t7, 0xeec($v0)
/* 82A28 80081E28 A459121C */  sh         $t9, 0x121c($v0)
/* 82A2C 80081E2C A449154C */  sh         $t1, 0x154c($v0)
/* 82A30 80081E30 03E00008 */  jr         $ra
/* 82A34 80081E34 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80081E38
/* 82A38 80081E38 44809000 */  mtc1       $zero, $f18
/* 82A3C 80081E3C 3086FFFF */  andi       $a2, $a0, 0xffff
/* 82A40 80081E40 3C013FE0 */  lui        $at, 0x3fe0
/* 82A44 80081E44 44819800 */  mtc1       $at, $f19
/* 82A48 80081E48 3C01800F */  lui        $at, %hi(D_800ED050)
/* 82A4C 80081E4C C431D050 */  lwc1       $f17, %lo(D_800ED050)($at)
/* 82A50 80081E50 C430D054 */  lwc1       $f16, -0x2fac($at)
/* 82A54 80081E54 00067080 */  sll        $t6, $a2, 2
/* 82A58 80081E58 01C67023 */  subu       $t6, $t6, $a2
/* 82A5C 80081E5C 000E7080 */  sll        $t6, $t6, 2
/* 82A60 80081E60 01C67021 */  addu       $t6, $t6, $a2
/* 82A64 80081E64 000E7080 */  sll        $t6, $t6, 2
/* 82A68 80081E68 01C67023 */  subu       $t6, $t6, $a2
/* 82A6C 80081E6C 000E70C0 */  sll        $t6, $t6, 3
/* 82A70 80081E70 3C0F800F */  lui        $t7, %hi(gActors)
/* 82A74 80081E74 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 82A78 80081E78 01CF1021 */  addu       $v0, $t6, $t7
/* 82A7C 80081E7C C44E024C */  lwc1       $f14, 0x24c($v0)
/* 82A80 80081E80 C44C0250 */  lwc1       $f12, 0x250($v0)
/* 82A84 80081E84 3C01800F */  lui        $at, %hi(D_800ED058)
/* 82A88 80081E88 C42BD058 */  lwc1       $f11, %lo(D_800ED058)($at)
/* 82A8C 80081E8C C42AD05C */  lwc1       $f10, -0x2fa4($at)
/* 82A90 80081E90 460073A1 */  cvt.d.s    $f14, $f14
/* 82A94 80081E94 462A7282 */  mul.d      $f10, $f14, $f10
/* 82A98 80081E98 C44E08AC */  lwc1       $f14, 0x8ac($v0)
/* 82A9C 80081E9C 3C01800F */  lui        $at, 0x800f
/* 82AA0 80081EA0 C4480BDC */  lwc1       $f8, 0xbdc($v0)
/* 82AA4 80081EA4 C4460F0C */  lwc1       $f6, 0xf0c($v0)
/* 82AA8 80081EA8 462052A0 */  cvt.s.d    $f10, $f10
/* 82AAC 80081EAC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 82AB0 80081EB0 E44A024C */  swc1       $f10, 0x24c($v0)
/* 82AB4 80081EB4 C42BD060 */  lwc1       $f11, -0x2fa0($at)
/* 82AB8 80081EB8 C42AD064 */  lwc1       $f10, -0x2f9c($at)
/* 82ABC 80081EBC 46006321 */  cvt.d.s    $f12, $f12
/* 82AC0 80081EC0 462A6282 */  mul.d      $f10, $f12, $f10
/* 82AC4 80081EC4 460073A1 */  cvt.d.s    $f14, $f14
/* 82AC8 80081EC8 C44C123C */  lwc1       $f12, 0x123c($v0)
/* 82ACC 80081ECC AFA40020 */  sw         $a0, 0x20($sp)
/* 82AD0 80081ED0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 82AD4 80081ED4 46327382 */  mul.d      $f14, $f14, $f18
/* 82AD8 80081ED8 462052A0 */  cvt.s.d    $f10, $f10
/* 82ADC 80081EDC C444156C */  lwc1       $f4, 0x156c($v0)
/* 82AE0 80081EE0 46004221 */  cvt.d.s    $f8, $f8
/* 82AE4 80081EE4 C4421570 */  lwc1       $f2, 0x1570($v0)
/* 82AE8 80081EE8 46324202 */  mul.d      $f8, $f8, $f18
/* 82AEC 80081EEC 462073A0 */  cvt.s.d    $f14, $f14
/* 82AF0 80081EF0 94580BBC */  lhu        $t8, 0xbbc($v0)
/* 82AF4 80081EF4 460031A1 */  cvt.d.s    $f6, $f6
/* 82AF8 80081EF8 24C40007 */  addiu      $a0, $a2, 7
/* 82AFC 80081EFC 46323182 */  mul.d      $f6, $f6, $f18
/* 82B00 80081F00 46204220 */  cvt.s.d    $f8, $f8
/* 82B04 80081F04 37190010 */  ori        $t9, $t8, 0x10
/* 82B08 80081F08 46006321 */  cvt.d.s    $f12, $f12
/* 82B0C 80081F0C 3088FFFF */  andi       $t0, $a0, 0xffff
/* 82B10 80081F10 46326482 */  mul.d      $f18, $f12, $f18
/* 82B14 80081F14 462031A0 */  cvt.s.d    $f6, $f6
/* 82B18 80081F18 E44A0250 */  swc1       $f10, 0x250($v0)
/* 82B1C 80081F1C 46002121 */  cvt.d.s    $f4, $f4
/* 82B20 80081F20 E44E08AC */  swc1       $f14, 0x8ac($v0)
/* 82B24 80081F24 46302102 */  mul.d      $f4, $f4, $f16
/* 82B28 80081F28 462094A0 */  cvt.s.d    $f18, $f18
/* 82B2C 80081F2C E4480BDC */  swc1       $f8, 0xbdc($v0)
/* 82B30 80081F30 460010A1 */  cvt.d.s    $f2, $f2
/* 82B34 80081F34 E4460F0C */  swc1       $f6, 0xf0c($v0)
/* 82B38 80081F38 46301402 */  mul.d      $f16, $f2, $f16
/* 82B3C 80081F3C 46202120 */  cvt.s.d    $f4, $f4
/* 82B40 80081F40 E452123C */  swc1       $f18, 0x123c($v0)
/* 82B44 80081F44 E444156C */  swc1       $f4, 0x156c($v0)
/* 82B48 80081F48 A4590BBC */  sh         $t9, 0xbbc($v0)
/* 82B4C 80081F4C 46208420 */  cvt.s.d    $f16, $f16
/* 82B50 80081F50 01002025 */  or         $a0, $t0, $zero
/* 82B54 80081F54 E4501570 */  swc1       $f16, 0x1570($v0)
/* 82B58 80081F58 24050020 */  addiu      $a1, $zero, 0x20
/* 82B5C 80081F5C AFA20018 */  sw         $v0, 0x18($sp)
/* 82B60 80081F60 0C00ABAD */  jal        func_8002AEB4
/* 82B64 80081F64 AFA6001C */   sw        $a2, 0x1c($sp)
/* 82B68 80081F68 8FA20018 */  lw         $v0, 0x18($sp)
/* 82B6C 80081F6C 8FA3001C */  lw         $v1, 0x1c($sp)
/* 82B70 80081F70 9449121C */  lhu        $t1, 0x121c($v0)
/* 82B74 80081F74 2464000B */  addiu      $a0, $v1, 0xb
/* 82B78 80081F78 308BFFFF */  andi       $t3, $a0, 0xffff
/* 82B7C 80081F7C 352A0010 */  ori        $t2, $t1, 0x10
/* 82B80 80081F80 01602025 */  or         $a0, $t3, $zero
/* 82B84 80081F84 24050020 */  addiu      $a1, $zero, 0x20
/* 82B88 80081F88 0C00ABAD */  jal        func_8002AEB4
/* 82B8C 80081F8C A44A121C */   sh        $t2, 0x121c($v0)
/* 82B90 80081F90 8FA20018 */  lw         $v0, 0x18($sp)
/* 82B94 80081F94 8FA3001C */  lw         $v1, 0x1c($sp)
/* 82B98 80081F98 944C154C */  lhu        $t4, 0x154c($v0)
/* 82B9C 80081F9C 2464000D */  addiu      $a0, $v1, 0xd
/* 82BA0 80081FA0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 82BA4 80081FA4 358D0010 */  ori        $t5, $t4, 0x10
/* 82BA8 80081FA8 01C02025 */  or         $a0, $t6, $zero
/* 82BAC 80081FAC 24050010 */  addiu      $a1, $zero, 0x10
/* 82BB0 80081FB0 0C00ABAD */  jal        func_8002AEB4
/* 82BB4 80081FB4 A44D154C */   sh        $t5, 0x154c($v0)
/* 82BB8 80081FB8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 82BBC 80081FBC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 82BC0 80081FC0 03E00008 */  jr         $ra
/* 82BC4 80081FC4 00000000 */   nop

glabel func_80081FC8
/* 82BC8 80081FC8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 82BCC 80081FCC 000E7880 */  sll        $t7, $t6, 2
/* 82BD0 80081FD0 01EE7823 */  subu       $t7, $t7, $t6
/* 82BD4 80081FD4 000F7880 */  sll        $t7, $t7, 2
/* 82BD8 80081FD8 01EE7821 */  addu       $t7, $t7, $t6
/* 82BDC 80081FDC 000F7880 */  sll        $t7, $t7, 2
/* 82BE0 80081FE0 01EE7823 */  subu       $t7, $t7, $t6
/* 82BE4 80081FE4 000F78C0 */  sll        $t7, $t7, 3
/* 82BE8 80081FE8 3C18800F */  lui        $t8, %hi(gActors+0xD0)
/* 82BEC 80081FEC 030FC021 */  addu       $t8, $t8, $t7
/* 82BF0 80081FF0 9718F5E0 */  lhu        $t8, %lo(gActors+0xD0)($t8)
/* 82BF4 80081FF4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 82BF8 80081FF8 AFA40018 */  sw         $a0, 0x18($sp)
/* 82BFC 80081FFC 01C02025 */  or         $a0, $t6, $zero
/* 82C00 80082000 13000004 */  beqz       $t8, .L80082014
/* 82C04 80082004 AFBF0014 */   sw        $ra, 0x14($sp)
/* 82C08 80082008 3C05800E */  lui        $a1, %hi(D_800E2600)
/* 82C0C 8008200C 0C02066A */  jal        func_800819A8
/* 82C10 80082010 24A52600 */   addiu     $a1, $a1, %lo(D_800E2600)
.L80082014:
/* 82C14 80082014 8FBF0014 */  lw         $ra, 0x14($sp)
/* 82C18 80082018 27BD0018 */  addiu      $sp, $sp, 0x18
/* 82C1C 8008201C 03E00008 */  jr         $ra
/* 82C20 80082020 00000000 */   nop

glabel func_80082024
/* 82C24 80082024 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 82C28 80082028 AFA40018 */  sw         $a0, 0x18($sp)
/* 82C2C 8008202C AFBF0014 */  sw         $ra, 0x14($sp)
/* 82C30 80082030 97A4001A */  lhu        $a0, 0x1a($sp)
/* 82C34 80082034 0C02078E */  jal        func_80081E38
/* 82C38 80082038 00000000 */   nop
/* 82C3C 8008203C 97AE001A */  lhu        $t6, 0x1a($sp)
/* 82C40 80082040 3C18800F */  lui        $t8, 0x800f
/* 82C44 80082044 000E7880 */  sll        $t7, $t6, 2
/* 82C48 80082048 01EE7823 */  subu       $t7, $t7, $t6
/* 82C4C 8008204C 000F7880 */  sll        $t7, $t7, 2
/* 82C50 80082050 01EE7821 */  addu       $t7, $t7, $t6
/* 82C54 80082054 000F7880 */  sll        $t7, $t7, 2
/* 82C58 80082058 01EE7823 */  subu       $t7, $t7, $t6
/* 82C5C 8008205C 000F78C0 */  sll        $t7, $t7, 3
/* 82C60 80082060 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 82C64 80082064 01F81021 */  addu       $v0, $t7, $t8
/* 82C68 80082068 8C590098 */  lw         $t9, 0x98($v0)
/* 82C6C 8008206C 3C01FFDF */  lui        $at, 0xffdf
/* 82C70 80082070 8FBF0014 */  lw         $ra, 0x14($sp)
/* 82C74 80082074 3421F9FF */  ori        $at, $at, 0xf9ff
/* 82C78 80082078 03214024 */  and        $t0, $t9, $at
/* 82C7C 8008207C AC480098 */  sw         $t0, 0x98($v0)
/* 82C80 80082080 03E00008 */  jr         $ra
/* 82C84 80082084 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80082088
/* 82C88 80082088 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 82C8C 8008208C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 82C90 80082090 AFA40030 */  sw         $a0, 0x30($sp)
/* 82C94 80082094 24010040 */  addiu      $at, $zero, 0x40
/* 82C98 80082098 01C02025 */  or         $a0, $t6, $zero
/* 82C9C 8008209C AFBF0014 */  sw         $ra, 0x14($sp)
/* 82CA0 800820A0 15C1000C */  bne        $t6, $at, .L800820D4
/* 82CA4 800820A4 01C01025 */   or        $v0, $t6, $zero
/* 82CA8 800820A8 000EC080 */  sll        $t8, $t6, 2
/* 82CAC 800820AC 030EC023 */  subu       $t8, $t8, $t6
/* 82CB0 800820B0 0018C080 */  sll        $t8, $t8, 2
/* 82CB4 800820B4 030EC021 */  addu       $t8, $t8, $t6
/* 82CB8 800820B8 0018C080 */  sll        $t8, $t8, 2
/* 82CBC 800820BC 030EC023 */  subu       $t8, $t8, $t6
/* 82CC0 800820C0 0018C0C0 */  sll        $t8, $t8, 3
/* 82CC4 800820C4 3C01800F */  lui        $at, %hi(gActors+0x90)
/* 82CC8 800820C8 00380821 */  addu       $at, $at, $t8
/* 82CCC 800820CC 240F0010 */  addiu      $t7, $zero, 0x10
/* 82CD0 800820D0 A42FF5A0 */  sh         $t7, %lo(gActors+0x90)($at)
.L800820D4:
/* 82CD4 800820D4 0004C880 */  sll        $t9, $a0, 2
/* 82CD8 800820D8 0324C823 */  subu       $t9, $t9, $a0
/* 82CDC 800820DC 0019C880 */  sll        $t9, $t9, 2
/* 82CE0 800820E0 0324C821 */  addu       $t9, $t9, $a0
/* 82CE4 800820E4 0019C880 */  sll        $t9, $t9, 2
/* 82CE8 800820E8 0324C823 */  subu       $t9, $t9, $a0
/* 82CEC 800820EC 3C08800F */  lui        $t0, %hi(gActors)
/* 82CF0 800820F0 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 82CF4 800820F4 0019C8C0 */  sll        $t9, $t9, 3
/* 82CF8 800820F8 24010050 */  addiu      $at, $zero, 0x50
/* 82CFC 800820FC 14410003 */  bne        $v0, $at, .L8008210C
/* 82D00 80082100 03281821 */   addu      $v1, $t9, $t0
/* 82D04 80082104 2409FEFF */  addiu      $t1, $zero, -0x101
/* 82D08 80082108 A4690090 */  sh         $t1, 0x90($v1)
.L8008210C:
/* 82D0C 8008210C 24010060 */  addiu      $at, $zero, 0x60
/* 82D10 80082110 14410002 */  bne        $v0, $at, .L8008211C
/* 82D14 80082114 240AFF7F */   addiu     $t2, $zero, -0x81
/* 82D18 80082118 A46A0090 */  sh         $t2, 0x90($v1)
.L8008211C:
/* 82D1C 8008211C AFA3001C */  sw         $v1, 0x1c($sp)
/* 82D20 80082120 0C0207F2 */  jal        func_80081FC8
/* 82D24 80082124 A7A40032 */   sh        $a0, 0x32($sp)
/* 82D28 80082128 8FA3001C */  lw         $v1, 0x1c($sp)
/* 82D2C 8008212C 97A40032 */  lhu        $a0, 0x32($sp)
/* 82D30 80082130 946200D0 */  lhu        $v0, 0xd0($v1)
/* 82D34 80082134 24010001 */  addiu      $at, $zero, 1
/* 82D38 80082138 10400005 */  beqz       $v0, .L80082150
/* 82D3C 8008213C 00000000 */   nop
/* 82D40 80082140 1041000A */  beq        $v0, $at, .L8008216C
/* 82D44 80082144 00000000 */   nop
/* 82D48 80082148 10000008 */  b          .L8008216C
/* 82D4C 8008214C 00000000 */   nop
.L80082150:
/* 82D50 80082150 AFA3001C */  sw         $v1, 0x1c($sp)
/* 82D54 80082154 0C020748 */  jal        func_80081D20
/* 82D58 80082158 A7A40032 */   sh        $a0, 0x32($sp)
/* 82D5C 8008215C 8FA3001C */  lw         $v1, 0x1c($sp)
/* 82D60 80082160 240B0001 */  addiu      $t3, $zero, 1
/* 82D64 80082164 97A40032 */  lhu        $a0, 0x32($sp)
/* 82D68 80082168 A46B00D0 */  sh         $t3, 0xd0($v1)
.L8008216C:
/* 82D6C 8008216C 0C020809 */  jal        func_80082024
/* 82D70 80082170 00000000 */   nop
/* 82D74 80082174 8FBF0014 */  lw         $ra, 0x14($sp)
/* 82D78 80082178 27BD0030 */  addiu      $sp, $sp, 0x30
/* 82D7C 8008217C 03E00008 */  jr         $ra
/* 82D80 80082180 00000000 */   nop

glabel func_80082184
/* 82D84 80082184 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 82D88 80082188 AFBF0014 */  sw         $ra, 0x14($sp)
/* 82D8C 8008218C AFA40018 */  sw         $a0, 0x18($sp)
/* 82D90 80082190 308EFFFF */  andi       $t6, $a0, 0xffff
/* 82D94 80082194 0C02078E */  jal        func_80081E38
/* 82D98 80082198 01C02025 */   or        $a0, $t6, $zero
/* 82D9C 8008219C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 82DA0 800821A0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 82DA4 800821A4 03E00008 */  jr         $ra
/* 82DA8 800821A8 00000000 */   nop
/* 82DAC 800821AC 00000000 */  nop
