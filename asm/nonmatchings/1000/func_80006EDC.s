glabel func_80006EDC
/* 7ADC 80006EDC 3C08800F */  lui        $t0, %hi(gActors)
/* 7AE0 80006EE0 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 7AE4 80006EE4 8D020488 */  lw         $v0, 0x488($t0)
/* 7AE8 80006EE8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 7AEC 80006EEC 304E0001 */  andi       $t6, $v0, 1
/* 7AF0 80006EF0 AFBF0024 */  sw         $ra, 0x24($sp)
/* 7AF4 80006EF4 11C00007 */  beqz       $t6, .L80006F14
/* 7AF8 80006EF8 AFA40030 */   sw        $a0, 0x30($sp)
/* 7AFC 80006EFC 244FFFF0 */  addiu      $t7, $v0, -0x10
/* 7B00 80006F00 240100FF */  addiu      $at, $zero, 0xff
/* 7B04 80006F04 15E10009 */  bne        $t7, $at, .L80006F2C
/* 7B08 80006F08 AD0F0488 */   sw        $t7, 0x488($t0)
/* 7B0C 80006F0C 10000007 */  b          .L80006F2C
/* 7B10 80006F10 AD000488 */   sw        $zero, 0x488($t0)
.L80006F14:
/* 7B14 80006F14 24590010 */  addiu      $t9, $v0, 0x10
/* 7B18 80006F18 24010080 */  addiu      $at, $zero, 0x80
/* 7B1C 80006F1C 17210003 */  bne        $t9, $at, .L80006F2C
/* 7B20 80006F20 AD190488 */   sw        $t9, 0x488($t0)
/* 7B24 80006F24 240A007F */  addiu      $t2, $zero, 0x7f
/* 7B28 80006F28 AD0A0488 */  sw         $t2, 0x488($t0)
.L80006F2C:
/* 7B2C 80006F2C 3C04800C */  lui        $a0, %hi(D_800C500C)
/* 7B30 80006F30 3C03800C */  lui        $v1, %hi(D_800C5008)
/* 7B34 80006F34 90635008 */  lbu        $v1, %lo(D_800C5008)($v1)
/* 7B38 80006F38 9084500C */  lbu        $a0, %lo(D_800C500C)($a0)
/* 7B3C 80006F3C 00000000 */  nop
/* 7B40 80006F40 1083009F */  beq        $a0, $v1, .L800071C0
/* 7B44 80006F44 00000000 */   nop
/* 7B48 80006F48 10800009 */  beqz       $a0, .L80006F70
/* 7B4C 80006F4C 3C05800C */   lui       $a1, 0x800c
/* 7B50 80006F50 24010001 */  addiu      $at, $zero, 1
/* 7B54 80006F54 10810021 */  beq        $a0, $at, .L80006FDC
/* 7B58 80006F58 3C05800C */   lui       $a1, 0x800c
/* 7B5C 80006F5C 24010002 */  addiu      $at, $zero, 2
/* 7B60 80006F60 10810039 */  beq        $a0, $at, .L80007048
/* 7B64 80006F64 3C05800C */   lui       $a1, %hi(D_800C5024)
/* 7B68 80006F68 10000047 */  b          .L80007088
/* 7B6C 80006F6C 00000000 */   nop
.L80006F70:
/* 7B70 80006F70 97A30032 */  lhu        $v1, 0x32($sp)
/* 7B74 80006F74 24A55024 */  addiu      $a1, $a1, %lo(D_800C5024)
/* 7B78 80006F78 2464000C */  addiu      $a0, $v1, 0xc
/* 7B7C 80006F7C 308BFFFF */  andi       $t3, $a0, 0xffff
/* 7B80 80006F80 01602025 */  or         $a0, $t3, $zero
/* 7B84 80006F84 3406FF9C */  ori        $a2, $zero, 0xff9c
/* 7B88 80006F88 2407002B */  addiu      $a3, $zero, 0x2b
/* 7B8C 80006F8C AFA00010 */  sw         $zero, 0x10($sp)
/* 7B90 80006F90 AFA00014 */  sw         $zero, 0x14($sp)
/* 7B94 80006F94 AFA00018 */  sw         $zero, 0x18($sp)
/* 7B98 80006F98 AFA0001C */  sw         $zero, 0x1c($sp)
/* 7B9C 80006F9C 0C009F10 */  jal        func_80027C40
/* 7BA0 80006FA0 AFA30028 */   sw        $v1, 0x28($sp)
/* 7BA4 80006FA4 8FA30028 */  lw         $v1, 0x28($sp)
/* 7BA8 80006FA8 240500F4 */  addiu      $a1, $zero, 0xf4
/* 7BAC 80006FAC 24640008 */  addiu      $a0, $v1, 8
/* 7BB0 80006FB0 308CFFFF */  andi       $t4, $a0, 0xffff
/* 7BB4 80006FB4 01802025 */  or         $a0, $t4, $zero
/* 7BB8 80006FB8 3406FF80 */  ori        $a2, $zero, 0xff80
/* 7BBC 80006FBC 2407002B */  addiu      $a3, $zero, 0x2b
/* 7BC0 80006FC0 0C009CFF */  jal        func_800273FC
/* 7BC4 80006FC4 AFA00010 */   sw        $zero, 0x10($sp)
/* 7BC8 80006FC8 3C03800C */  lui        $v1, %hi(D_800C5008)
/* 7BCC 80006FCC 3C08800F */  lui        $t0, %hi(gActors)
/* 7BD0 80006FD0 90635008 */  lbu        $v1, %lo(D_800C5008)($v1)
/* 7BD4 80006FD4 1000002C */  b          .L80007088
/* 7BD8 80006FD8 2508F510 */   addiu     $t0, $t0, %lo(gActors)
.L80006FDC:
/* 7BDC 80006FDC 97A30032 */  lhu        $v1, 0x32($sp)
/* 7BE0 80006FE0 24A55028 */  addiu      $a1, $a1, 0x5028
/* 7BE4 80006FE4 24640012 */  addiu      $a0, $v1, 0x12
/* 7BE8 80006FE8 308DFFFF */  andi       $t5, $a0, 0xffff
/* 7BEC 80006FEC 01A02025 */  or         $a0, $t5, $zero
/* 7BF0 80006FF0 3406FF9C */  ori        $a2, $zero, 0xff9c
/* 7BF4 80006FF4 3407FFE0 */  ori        $a3, $zero, 0xffe0
/* 7BF8 80006FF8 AFA00010 */  sw         $zero, 0x10($sp)
/* 7BFC 80006FFC AFA00014 */  sw         $zero, 0x14($sp)
/* 7C00 80007000 AFA00018 */  sw         $zero, 0x18($sp)
/* 7C04 80007004 AFA0001C */  sw         $zero, 0x1c($sp)
/* 7C08 80007008 0C009F10 */  jal        func_80027C40
/* 7C0C 8000700C AFA30028 */   sw        $v1, 0x28($sp)
/* 7C10 80007010 8FA30028 */  lw         $v1, 0x28($sp)
/* 7C14 80007014 240500F4 */  addiu      $a1, $zero, 0xf4
/* 7C18 80007018 24640009 */  addiu      $a0, $v1, 9
/* 7C1C 8000701C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 7C20 80007020 01C02025 */  or         $a0, $t6, $zero
/* 7C24 80007024 3406FF80 */  ori        $a2, $zero, 0xff80
/* 7C28 80007028 3407FFE0 */  ori        $a3, $zero, 0xffe0
/* 7C2C 8000702C 0C009CFF */  jal        func_800273FC
/* 7C30 80007030 AFA00010 */   sw        $zero, 0x10($sp)
/* 7C34 80007034 3C03800C */  lui        $v1, %hi(D_800C5008)
/* 7C38 80007038 3C08800F */  lui        $t0, %hi(gActors)
/* 7C3C 8000703C 90635008 */  lbu        $v1, %lo(D_800C5008)($v1)
/* 7C40 80007040 10000011 */  b          .L80007088
/* 7C44 80007044 2508F510 */   addiu     $t0, $t0, %lo(gActors)
.L80007048:
/* 7C48 80007048 97A40032 */  lhu        $a0, 0x32($sp)
/* 7C4C 8000704C 24A5505C */  addiu      $a1, $a1, 0x505c
/* 7C50 80007050 24840099 */  addiu      $a0, $a0, 0x99
/* 7C54 80007054 308FFFFF */  andi       $t7, $a0, 0xffff
/* 7C58 80007058 01E02025 */  or         $a0, $t7, $zero
/* 7C5C 8000705C 3406FF96 */  ori        $a2, $zero, 0xff96
/* 7C60 80007060 3407FFAE */  ori        $a3, $zero, 0xffae
/* 7C64 80007064 AFA00010 */  sw         $zero, 0x10($sp)
/* 7C68 80007068 AFA00014 */  sw         $zero, 0x14($sp)
/* 7C6C 8000706C AFA00018 */  sw         $zero, 0x18($sp)
/* 7C70 80007070 0C009F10 */  jal        func_80027C40
/* 7C74 80007074 AFA0001C */   sw        $zero, 0x1c($sp)
/* 7C78 80007078 3C03800C */  lui        $v1, %hi(D_800C5008)
/* 7C7C 8000707C 3C08800F */  lui        $t0, %hi(gActors)
/* 7C80 80007080 90635008 */  lbu        $v1, %lo(D_800C5008)($v1)
/* 7C84 80007084 2508F510 */  addiu      $t0, $t0, %lo(gActors)
.L80007088:
/* 7C88 80007088 10600009 */  beqz       $v1, .L800070B0
/* 7C8C 8000708C 24190028 */   addiu     $t9, $zero, 0x28
/* 7C90 80007090 24010001 */  addiu      $at, $zero, 1
/* 7C94 80007094 10610021 */  beq        $v1, $at, .L8000711C
/* 7C98 80007098 240BFFE1 */   addiu     $t3, $zero, -0x1f
/* 7C9C 8000709C 24010002 */  addiu      $at, $zero, 2
/* 7CA0 800070A0 10610039 */  beq        $v1, $at, .L80007188
/* 7CA4 800070A4 240FFFAE */   addiu     $t7, $zero, -0x52
/* 7CA8 800070A8 10000045 */  b          .L800071C0
/* 7CAC 800070AC 00000000 */   nop
.L800070B0:
/* 7CB0 800070B0 97A30032 */  lhu        $v1, 0x32($sp)
/* 7CB4 800070B4 3C014080 */  lui        $at, 0x4080
/* 7CB8 800070B8 0003C080 */  sll        $t8, $v1, 2
/* 7CBC 800070BC 0303C023 */  subu       $t8, $t8, $v1
/* 7CC0 800070C0 0018C080 */  sll        $t8, $t8, 2
/* 7CC4 800070C4 0303C021 */  addu       $t8, $t8, $v1
/* 7CC8 800070C8 0018C080 */  sll        $t8, $t8, 2
/* 7CCC 800070CC 0303C023 */  subu       $t8, $t8, $v1
/* 7CD0 800070D0 44812000 */  mtc1       $at, $f4
/* 7CD4 800070D4 0018C0C0 */  sll        $t8, $t8, 3
/* 7CD8 800070D8 24640008 */  addiu      $a0, $v1, 8
/* 7CDC 800070DC 01181021 */  addu       $v0, $t0, $t8
/* 7CE0 800070E0 3089FFFF */  andi       $t1, $a0, 0xffff
/* 7CE4 800070E4 3C05800E */  lui        $a1, %hi(D_800E13FC)
/* 7CE8 800070E8 A459437C */  sh         $t9, 0x437c($v0)
/* 7CEC 800070EC 24A513FC */  addiu      $a1, $a1, %lo(D_800E13FC)
/* 7CF0 800070F0 01202025 */  or         $a0, $t1, $zero
/* 7CF4 800070F4 3406FF80 */  ori        $a2, $zero, 0xff80
/* 7CF8 800070F8 2407002B */  addiu      $a3, $zero, 0x2b
/* 7CFC 800070FC AFA00010 */  sw         $zero, 0x10($sp)
/* 7D00 80007100 0C009D44 */  jal        func_80027510
/* 7D04 80007104 E44443A8 */   swc1      $f4, 0x43a8($v0)
/* 7D08 80007108 3C03800C */  lui        $v1, %hi(D_800C5008)
/* 7D0C 8000710C 3C08800F */  lui        $t0, %hi(gActors)
/* 7D10 80007110 90635008 */  lbu        $v1, %lo(D_800C5008)($v1)
/* 7D14 80007114 1000002A */  b          .L800071C0
/* 7D18 80007118 2508F510 */   addiu     $t0, $t0, %lo(gActors)
.L8000711C:
/* 7D1C 8000711C 97A30032 */  lhu        $v1, 0x32($sp)
/* 7D20 80007120 3C014080 */  lui        $at, 0x4080
/* 7D24 80007124 00035080 */  sll        $t2, $v1, 2
/* 7D28 80007128 01435023 */  subu       $t2, $t2, $v1
/* 7D2C 8000712C 000A5080 */  sll        $t2, $t2, 2
/* 7D30 80007130 01435021 */  addu       $t2, $t2, $v1
/* 7D34 80007134 000A5080 */  sll        $t2, $t2, 2
/* 7D38 80007138 01435023 */  subu       $t2, $t2, $v1
/* 7D3C 8000713C 44813000 */  mtc1       $at, $f6
/* 7D40 80007140 000A50C0 */  sll        $t2, $t2, 3
/* 7D44 80007144 24640009 */  addiu      $a0, $v1, 9
/* 7D48 80007148 010A1021 */  addu       $v0, $t0, $t2
/* 7D4C 8000714C 308CFFFF */  andi       $t4, $a0, 0xffff
/* 7D50 80007150 3C05800E */  lui        $a1, %hi(D_800E13FC)
/* 7D54 80007154 A44B437C */  sh         $t3, 0x437c($v0)
/* 7D58 80007158 24A513FC */  addiu      $a1, $a1, %lo(D_800E13FC)
/* 7D5C 8000715C 01802025 */  or         $a0, $t4, $zero
/* 7D60 80007160 3406FF80 */  ori        $a2, $zero, 0xff80
/* 7D64 80007164 3407FFE0 */  ori        $a3, $zero, 0xffe0
/* 7D68 80007168 AFA00010 */  sw         $zero, 0x10($sp)
/* 7D6C 8000716C 0C009D44 */  jal        func_80027510
/* 7D70 80007170 E44643A8 */   swc1      $f6, 0x43a8($v0)
/* 7D74 80007174 3C03800C */  lui        $v1, %hi(D_800C5008)
/* 7D78 80007178 3C08800F */  lui        $t0, %hi(gActors)
/* 7D7C 8000717C 90635008 */  lbu        $v1, %lo(D_800C5008)($v1)
/* 7D80 80007180 1000000F */  b          .L800071C0
/* 7D84 80007184 2508F510 */   addiu     $t0, $t0, %lo(gActors)
.L80007188:
/* 7D88 80007188 97AD0032 */  lhu        $t5, 0x32($sp)
/* 7D8C 8000718C 3C01800F */  lui        $at, 0x800f
/* 7D90 80007190 000D7080 */  sll        $t6, $t5, 2
/* 7D94 80007194 01CD7023 */  subu       $t6, $t6, $t5
/* 7D98 80007198 000E7080 */  sll        $t6, $t6, 2
/* 7D9C 8000719C 01CD7021 */  addu       $t6, $t6, $t5
/* 7DA0 800071A0 000E7080 */  sll        $t6, $t6, 2
/* 7DA4 800071A4 01CD7023 */  subu       $t6, $t6, $t5
/* 7DA8 800071A8 000E70C0 */  sll        $t6, $t6, 3
/* 7DAC 800071AC 010E1021 */  addu       $v0, $t0, $t6
/* 7DB0 800071B0 A44F437C */  sh         $t7, 0x437c($v0)
/* 7DB4 800071B4 C428AF28 */  lwc1       $f8, -0x50d8($at)
/* 7DB8 800071B8 00000000 */  nop
/* 7DBC 800071BC E44843A8 */  swc1       $f8, 0x43a8($v0)
.L800071C0:
/* 7DC0 800071C0 10600009 */  beqz       $v1, .L800071E8
/* 7DC4 800071C4 3C05800C */   lui       $a1, 0x800c
/* 7DC8 800071C8 24010001 */  addiu      $at, $zero, 1
/* 7DCC 800071CC 10610015 */  beq        $v1, $at, .L80007224
/* 7DD0 800071D0 3C05800C */   lui       $a1, 0x800c
/* 7DD4 800071D4 24010002 */  addiu      $at, $zero, 2
/* 7DD8 800071D8 10610021 */  beq        $v1, $at, .L80007260
/* 7DDC 800071DC 3C05800C */   lui       $a1, 0x800c
/* 7DE0 800071E0 1000002D */  b          .L80007298
/* 7DE4 800071E4 8FBF0024 */   lw        $ra, 0x24($sp)
.L800071E8:
/* 7DE8 800071E8 97A40032 */  lhu        $a0, 0x32($sp)
/* 7DEC 800071EC 9102048B */  lbu        $v0, 0x48b($t0)
/* 7DF0 800071F0 2484000C */  addiu      $a0, $a0, 0xc
/* 7DF4 800071F4 3098FFFF */  andi       $t8, $a0, 0xffff
/* 7DF8 800071F8 03002025 */  or         $a0, $t8, $zero
/* 7DFC 800071FC 24A55024 */  addiu      $a1, $a1, 0x5024
/* 7E00 80007200 3406FF9C */  ori        $a2, $zero, 0xff9c
/* 7E04 80007204 2407002B */  addiu      $a3, $zero, 0x2b
/* 7E08 80007208 AFA00010 */  sw         $zero, 0x10($sp)
/* 7E0C 8000720C AFA0001C */  sw         $zero, 0x1c($sp)
/* 7E10 80007210 AFA20014 */  sw         $v0, 0x14($sp)
/* 7E14 80007214 0C009F10 */  jal        func_80027C40
/* 7E18 80007218 AFA20018 */   sw        $v0, 0x18($sp)
/* 7E1C 8000721C 1000001E */  b          .L80007298
/* 7E20 80007220 8FBF0024 */   lw        $ra, 0x24($sp)
.L80007224:
/* 7E24 80007224 97A40032 */  lhu        $a0, 0x32($sp)
/* 7E28 80007228 9102048B */  lbu        $v0, 0x48b($t0)
/* 7E2C 8000722C 24840012 */  addiu      $a0, $a0, 0x12
/* 7E30 80007230 3099FFFF */  andi       $t9, $a0, 0xffff
/* 7E34 80007234 03202025 */  or         $a0, $t9, $zero
/* 7E38 80007238 24A55028 */  addiu      $a1, $a1, 0x5028
/* 7E3C 8000723C 3406FF9C */  ori        $a2, $zero, 0xff9c
/* 7E40 80007240 3407FFE0 */  ori        $a3, $zero, 0xffe0
/* 7E44 80007244 AFA00010 */  sw         $zero, 0x10($sp)
/* 7E48 80007248 AFA0001C */  sw         $zero, 0x1c($sp)
/* 7E4C 8000724C AFA20014 */  sw         $v0, 0x14($sp)
/* 7E50 80007250 0C009F10 */  jal        func_80027C40
/* 7E54 80007254 AFA20018 */   sw        $v0, 0x18($sp)
/* 7E58 80007258 1000000F */  b          .L80007298
/* 7E5C 8000725C 8FBF0024 */   lw        $ra, 0x24($sp)
.L80007260:
/* 7E60 80007260 97A40032 */  lhu        $a0, 0x32($sp)
/* 7E64 80007264 9102048B */  lbu        $v0, 0x48b($t0)
/* 7E68 80007268 24840099 */  addiu      $a0, $a0, 0x99
/* 7E6C 8000726C 3089FFFF */  andi       $t1, $a0, 0xffff
/* 7E70 80007270 01202025 */  or         $a0, $t1, $zero
/* 7E74 80007274 24A5505C */  addiu      $a1, $a1, 0x505c
/* 7E78 80007278 3406FF96 */  ori        $a2, $zero, 0xff96
/* 7E7C 8000727C 3407FFAE */  ori        $a3, $zero, 0xffae
/* 7E80 80007280 AFA00010 */  sw         $zero, 0x10($sp)
/* 7E84 80007284 AFA0001C */  sw         $zero, 0x1c($sp)
/* 7E88 80007288 AFA20014 */  sw         $v0, 0x14($sp)
/* 7E8C 8000728C 0C009F10 */  jal        func_80027C40
/* 7E90 80007290 AFA20018 */   sw        $v0, 0x18($sp)
/* 7E94 80007294 8FBF0024 */  lw         $ra, 0x24($sp)
.L80007298:
/* 7E98 80007298 27BD0030 */  addiu      $sp, $sp, 0x30
/* 7E9C 8000729C 03E00008 */  jr         $ra
/* 7EA0 800072A0 00000000 */   nop
