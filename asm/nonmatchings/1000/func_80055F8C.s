glabel func_80055F8C
/* 56B8C 80055F8C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 56B90 80055F90 AFA40020 */  sw         $a0, 0x20($sp)
/* 56B94 80055F94 97AF0022 */  lhu        $t7, 0x22($sp)
/* 56B98 80055F98 3C19800F */  lui        $t9, 0x800f
/* 56B9C 80055F9C 000FC080 */  sll        $t8, $t7, 2
/* 56BA0 80055FA0 030FC023 */  subu       $t8, $t8, $t7
/* 56BA4 80055FA4 0018C080 */  sll        $t8, $t8, 2
/* 56BA8 80055FA8 030FC021 */  addu       $t8, $t8, $t7
/* 56BAC 80055FAC 0018C080 */  sll        $t8, $t8, 2
/* 56BB0 80055FB0 030FC023 */  subu       $t8, $t8, $t7
/* 56BB4 80055FB4 AFB00018 */  sw         $s0, 0x18($sp)
/* 56BB8 80055FB8 0018C0C0 */  sll        $t8, $t8, 3
/* 56BBC 80055FBC 2739F510 */  addiu      $t9, $t9, -0xaf0
/* 56BC0 80055FC0 03198021 */  addu       $s0, $t8, $t9
/* 56BC4 80055FC4 920200D0 */  lbu        $v0, 0xd0($s0)
/* 56BC8 80055FC8 AFA50024 */  sw         $a1, 0x24($sp)
/* 56BCC 80055FCC 30AEFFFF */  andi       $t6, $a1, 0xffff
/* 56BD0 80055FD0 01C02825 */  or         $a1, $t6, $zero
/* 56BD4 80055FD4 10400008 */  beqz       $v0, .L80055FF8
/* 56BD8 80055FD8 AFBF001C */   sw        $ra, 0x1c($sp)
/* 56BDC 80055FDC 24010001 */  addiu      $at, $zero, 1
/* 56BE0 80055FE0 1041000F */  beq        $v0, $at, .L80056020
/* 56BE4 80055FE4 24010002 */   addiu     $at, $zero, 2
/* 56BE8 80055FE8 10410082 */  beq        $v0, $at, .L800561F4
/* 56BEC 80055FEC 00000000 */   nop
/* 56BF0 80055FF0 100000BB */  b          .L800562E0
/* 56BF4 80055FF4 8FBF001C */   lw        $ra, 0x1c($sp)
.L80055FF8:
/* 56BF8 80055FF8 92090140 */  lbu        $t1, 0x140($s0)
/* 56BFC 80055FFC 2408006A */  addiu      $t0, $zero, 0x6a
/* 56C00 80056000 29210004 */  slti       $at, $t1, 4
/* 56C04 80056004 10200003 */  beqz       $at, .L80056014
/* 56C08 80056008 AE080170 */   sw        $t0, 0x170($s0)
/* 56C0C 8005600C 250B0002 */  addiu      $t3, $t0, 2
/* 56C10 80056010 AE0B0170 */  sw         $t3, 0x170($s0)
.L80056014:
/* 56C14 80056014 240C0001 */  addiu      $t4, $zero, 1
/* 56C18 80056018 AE000150 */  sw         $zero, 0x150($s0)
/* 56C1C 8005601C A20C00D0 */  sb         $t4, 0xd0($s0)
.L80056020:
/* 56C20 80056020 97A40022 */  lhu        $a0, 0x22($sp)
/* 56C24 80056024 0C014DB3 */  jal        func_800536CC
/* 56C28 80056028 00000000 */   nop
/* 56C2C 8005602C 97A40022 */  lhu        $a0, 0x22($sp)
/* 56C30 80056030 0C013CD7 */  jal        func_8004F35C
/* 56C34 80056034 26050150 */   addiu     $a1, $s0, 0x150
/* 56C38 80056038 104000A9 */  beqz       $v0, .L800562E0
/* 56C3C 8005603C 8FBF001C */   lw        $ra, 0x1c($sp)
/* 56C40 80056040 97A40022 */  lhu        $a0, 0x22($sp)
/* 56C44 80056044 0C013D6C */  jal        func_8004F5B0
/* 56C48 80056048 00000000 */   nop
/* 56C4C 8005604C 97A40022 */  lhu        $a0, 0x22($sp)
/* 56C50 80056050 00002825 */  or         $a1, $zero, $zero
/* 56C54 80056054 00003025 */  or         $a2, $zero, $zero
/* 56C58 80056058 0C013D85 */  jal        func_8004F614
/* 56C5C 8005605C 00003825 */   or        $a3, $zero, $zero
/* 56C60 80056060 97A40022 */  lhu        $a0, 0x22($sp)
/* 56C64 80056064 0C0174CE */  jal        func_8005D338
/* 56C68 80056068 00000000 */   nop
/* 56C6C 8005606C 920E0140 */  lbu        $t6, 0x140($s0)
/* 56C70 80056070 244D0008 */  addiu      $t5, $v0, 8
/* 56C74 80056074 2DC10009 */  sltiu      $at, $t6, 9
/* 56C78 80056078 10200023 */  beqz       $at, .L80056108
/* 56C7C 8005607C AE0D0170 */   sw        $t5, 0x170($s0)
/* 56C80 80056080 000E7080 */  sll        $t6, $t6, 2
/* 56C84 80056084 3C01800F */  lui        $at, %hi(D_800EBE0C)
/* 56C88 80056088 002E0821 */  addu       $at, $at, $t6
/* 56C8C 8005608C 8C2EBE0C */  lw         $t6, %lo(D_800EBE0C)($at)
/* 56C90 80056090 00000000 */  nop
/* 56C94 80056094 01C00008 */  jr         $t6
/* 56C98 80056098 00000000 */   nop
/* 56C9C 8005609C 3C180008 */  lui        $t8, 8
/* 56CA0 800560A0 3C0F0002 */  lui        $t7, 2
/* 56CA4 800560A4 37188000 */  ori        $t8, $t8, 0x8000
/* 56CA8 800560A8 AE0F00EC */  sw         $t7, 0xec($s0)
/* 56CAC 800560AC 10000016 */  b          .L80056108
/* 56CB0 800560B0 AE1800F0 */   sw        $t8, 0xf0($s0)
/* 56CB4 800560B4 3C190002 */  lui        $t9, 2
/* 56CB8 800560B8 3C080007 */  lui        $t0, 7
/* 56CBC 800560BC 37398000 */  ori        $t9, $t9, 0x8000
/* 56CC0 800560C0 35084000 */  ori        $t0, $t0, 0x4000
/* 56CC4 800560C4 AE1900EC */  sw         $t9, 0xec($s0)
/* 56CC8 800560C8 1000000F */  b          .L80056108
/* 56CCC 800560CC AE0800F0 */   sw        $t0, 0xf0($s0)
/* 56CD0 800560D0 3C090003 */  lui        $t1, 3
/* 56CD4 800560D4 3C0A0002 */  lui        $t2, 2
/* 56CD8 800560D8 AE0900EC */  sw         $t1, 0xec($s0)
/* 56CDC 800560DC 1000000A */  b          .L80056108
/* 56CE0 800560E0 AE0A00F0 */   sw        $t2, 0xf0($s0)
/* 56CE4 800560E4 3C0B0002 */  lui        $t3, 2
/* 56CE8 800560E8 356B8000 */  ori        $t3, $t3, 0x8000
/* 56CEC 800560EC AE0B00EC */  sw         $t3, 0xec($s0)
/* 56CF0 800560F0 10000005 */  b          .L80056108
/* 56CF4 800560F4 AE0000F0 */   sw        $zero, 0xf0($s0)
/* 56CF8 800560F8 3C0C0002 */  lui        $t4, 2
/* 56CFC 800560FC 3C0DFFFF */  lui        $t5, 0xffff
/* 56D00 80056100 AE0C00EC */  sw         $t4, 0xec($s0)
/* 56D04 80056104 AE0D00F0 */  sw         $t5, 0xf0($s0)
.L80056108:
/* 56D08 80056108 8E0E0080 */  lw         $t6, 0x80($s0)
/* 56D0C 8005610C 00000000 */  nop
/* 56D10 80056110 31CF0020 */  andi       $t7, $t6, 0x20
/* 56D14 80056114 15E00005 */  bnez       $t7, .L8005612C
/* 56D18 80056118 00000000 */   nop
/* 56D1C 8005611C 8E1800EC */  lw         $t8, 0xec($s0)
/* 56D20 80056120 00000000 */  nop
/* 56D24 80056124 0018C823 */  negu       $t9, $t8
/* 56D28 80056128 AE1900EC */  sw         $t9, 0xec($s0)
.L8005612C:
/* 56D2C 8005612C 8E0800EC */  lw         $t0, 0xec($s0)
/* 56D30 80056130 3C02800F */  lui        $v0, %hi(gActors)
/* 56D34 80056134 44882000 */  mtc1       $t0, $f4
/* 56D38 80056138 2442F510 */  addiu      $v0, $v0, %lo(gActors)
/* 56D3C 8005613C 468021A0 */  cvt.s.w    $f6, $f4
/* 56D40 80056140 C4480120 */  lwc1       $f8, 0x120($v0)
/* 56D44 80056144 8E0B00F0 */  lw         $t3, 0xf0($s0)
/* 56D48 80056148 46083282 */  mul.s      $f10, $f6, $f8
/* 56D4C 8005614C 448B9000 */  mtc1       $t3, $f18
/* 56D50 80056150 24040024 */  addiu      $a0, $zero, 0x24
/* 56D54 80056154 4449F800 */  cfc1       $t1, $31
/* 56D58 80056158 00000000 */  nop
/* 56D5C 8005615C 35210003 */  ori        $at, $t1, 3
/* 56D60 80056160 38210002 */  xori       $at, $at, 2
/* 56D64 80056164 44C1F800 */  ctc1       $at, $31
/* 56D68 80056168 00000000 */  nop
/* 56D6C 8005616C 46005424 */  cvt.w.s    $f16, $f10
/* 56D70 80056170 44C9F800 */  ctc1       $t1, $31
/* 56D74 80056174 440A8000 */  mfc1       $t2, $f16
/* 56D78 80056178 46809120 */  cvt.s.w    $f4, $f18
/* 56D7C 8005617C AE0A00EC */  sw         $t2, 0xec($s0)
/* 56D80 80056180 C4460120 */  lwc1       $f6, 0x120($v0)
/* 56D84 80056184 00000000 */  nop
/* 56D88 80056188 46062202 */  mul.s      $f8, $f4, $f6
/* 56D8C 8005618C 444CF800 */  cfc1       $t4, $31
/* 56D90 80056190 00000000 */  nop
/* 56D94 80056194 35810003 */  ori        $at, $t4, 3
/* 56D98 80056198 38210002 */  xori       $at, $at, 2
/* 56D9C 8005619C 44C1F800 */  ctc1       $at, $31
/* 56DA0 800561A0 00000000 */  nop
/* 56DA4 800561A4 460042A4 */  cvt.w.s    $f10, $f8
/* 56DA8 800561A8 440D5000 */  mfc1       $t5, $f10
/* 56DAC 800561AC 44CCF800 */  ctc1       $t4, $31
/* 56DB0 800561B0 0C000CD3 */  jal        func_8000334C
/* 56DB4 800561B4 AE0D00F0 */   sw        $t5, 0xf0($s0)
/* 56DB8 800561B8 8E0F0080 */  lw         $t7, 0x80($s0)
/* 56DBC 800561BC 3C01FF3C */  lui        $at, 0xff3c
/* 56DC0 800561C0 3421FFFF */  ori        $at, $at, 0xffff
/* 56DC4 800561C4 01E1C024 */  and        $t8, $t7, $at
/* 56DC8 800561C8 3C010002 */  lui        $at, 2
/* 56DCC 800561CC 03014025 */  or         $t0, $t8, $at
/* 56DD0 800561D0 240E000A */  addiu      $t6, $zero, 0xa
/* 56DD4 800561D4 AE180080 */  sw         $t8, 0x80($s0)
/* 56DD8 800561D8 AE0E0150 */  sw         $t6, 0x150($s0)
/* 56DDC 800561DC AE080080 */  sw         $t0, 0x80($s0)
/* 56DE0 800561E0 3C018013 */  lui        $at, %hi(D_801373F3)
/* 56DE4 800561E4 A02073F3 */  sb         $zero, %lo(D_801373F3)($at)
/* 56DE8 800561E8 24090002 */  addiu      $t1, $zero, 2
/* 56DEC 800561EC 1000003B */  b          .L800562DC
/* 56DF0 800561F0 A20900D0 */   sb        $t1, 0xd0($s0)
.L800561F4:
/* 56DF4 800561F4 960A012C */  lhu        $t2, 0x12c($s0)
/* 56DF8 800561F8 920C0140 */  lbu        $t4, 0x140($s0)
/* 56DFC 800561FC 354B0004 */  ori        $t3, $t2, 4
/* 56E00 80056200 29810004 */  slti       $at, $t4, 4
/* 56E04 80056204 10200009 */  beqz       $at, .L8005622C
/* 56E08 80056208 A60B012C */   sh        $t3, 0x12c($s0)
/* 56E0C 8005620C 0C012325 */  jal        func_80048C94
/* 56E10 80056210 24040013 */   addiu     $a0, $zero, 0x13
/* 56E14 80056214 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 56E18 80056218 3C05FFFA */  lui        $a1, 0xfffa
/* 56E1C 8005621C 0C00A607 */  jal        func_8002981C
/* 56E20 80056220 00403025 */   or        $a2, $v0, $zero
/* 56E24 80056224 10000017 */  b          .L80056284
/* 56E28 80056228 AE0200F0 */   sw        $v0, 0xf0($s0)
.L8005622C:
/* 56E2C 8005622C 0C012325 */  jal        func_80048C94
/* 56E30 80056230 24040013 */   addiu     $a0, $zero, 0x13
/* 56E34 80056234 44828000 */  mtc1       $v0, $f16
/* 56E38 80056238 3C013FE0 */  lui        $at, 0x3fe0
/* 56E3C 8005623C 468084A1 */  cvt.d.w    $f18, $f16
/* 56E40 80056240 44812800 */  mtc1       $at, $f5
/* 56E44 80056244 44802000 */  mtc1       $zero, $f4
/* 56E48 80056248 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 56E4C 8005624C 46249182 */  mul.d      $f6, $f18, $f4
/* 56E50 80056250 3C05FFFA */  lui        $a1, 0xfffa
/* 56E54 80056254 444DF800 */  cfc1       $t5, $31
/* 56E58 80056258 00000000 */  nop
/* 56E5C 8005625C 35A10003 */  ori        $at, $t5, 3
/* 56E60 80056260 38210002 */  xori       $at, $at, 2
/* 56E64 80056264 44C1F800 */  ctc1       $at, $31
/* 56E68 80056268 00000000 */  nop
/* 56E6C 8005626C 46203224 */  cvt.w.d    $f8, $f6
/* 56E70 80056270 44064000 */  mfc1       $a2, $f8
/* 56E74 80056274 44CDF800 */  ctc1       $t5, $31
/* 56E78 80056278 0C00A607 */  jal        func_8002981C
/* 56E7C 8005627C 00000000 */   nop
/* 56E80 80056280 AE0200F0 */  sw         $v0, 0xf0($s0)
.L80056284:
/* 56E84 80056284 97A40022 */  lhu        $a0, 0x22($sp)
/* 56E88 80056288 00002825 */  or         $a1, $zero, $zero
/* 56E8C 8005628C 0C01246E */  jal        func_800491B8
/* 56E90 80056290 2406FFF2 */   addiu     $a2, $zero, -0xe
/* 56E94 80056294 10400003 */  beqz       $v0, .L800562A4
/* 56E98 80056298 240E0005 */   addiu     $t6, $zero, 5
/* 56E9C 8005629C 1000000F */  b          .L800562DC
/* 56EA0 800562A0 A60E00D0 */   sh        $t6, 0xd0($s0)
.L800562A4:
/* 56EA4 800562A4 97A40022 */  lhu        $a0, 0x22($sp)
/* 56EA8 800562A8 0C017506 */  jal        func_8005D418
/* 56EAC 800562AC 00000000 */   nop
/* 56EB0 800562B0 1040000B */  beqz       $v0, .L800562E0
/* 56EB4 800562B4 8FBF001C */   lw        $ra, 0x1c($sp)
/* 56EB8 800562B8 8E0F0150 */  lw         $t7, 0x150($s0)
/* 56EBC 800562BC 240A0016 */  addiu      $t2, $zero, 0x16
/* 56EC0 800562C0 25F8FFFF */  addiu      $t8, $t7, -1
/* 56EC4 800562C4 1F000005 */  bgtz       $t8, .L800562DC
/* 56EC8 800562C8 AE180150 */   sw        $t8, 0x150($s0)
/* 56ECC 800562CC 8E080080 */  lw         $t0, 0x80($s0)
/* 56ED0 800562D0 A60A00D0 */  sh         $t2, 0xd0($s0)
/* 56ED4 800562D4 39090020 */  xori       $t1, $t0, 0x20
/* 56ED8 800562D8 AE090080 */  sw         $t1, 0x80($s0)
.L800562DC:
/* 56EDC 800562DC 8FBF001C */  lw         $ra, 0x1c($sp)
.L800562E0:
/* 56EE0 800562E0 8FB00018 */  lw         $s0, 0x18($sp)
/* 56EE4 800562E4 03E00008 */  jr         $ra
/* 56EE8 800562E8 27BD0020 */   addiu     $sp, $sp, 0x20
