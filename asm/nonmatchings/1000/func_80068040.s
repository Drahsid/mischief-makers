glabel func_80068040
/* 68C40 80068040 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 68C44 80068044 AFB30034 */  sw         $s3, 0x34($sp)
/* 68C48 80068048 30AEFFFF */  andi       $t6, $a1, 0xffff
/* 68C4C 8006804C 3093FFFF */  andi       $s3, $a0, 0xffff
/* 68C50 80068050 AFBF003C */  sw         $ra, 0x3c($sp)
/* 68C54 80068054 AFB40038 */  sw         $s4, 0x38($sp)
/* 68C58 80068058 AFB20030 */  sw         $s2, 0x30($sp)
/* 68C5C 8006805C AFB1002C */  sw         $s1, 0x2c($sp)
/* 68C60 80068060 AFB00028 */  sw         $s0, 0x28($sp)
/* 68C64 80068064 E7B70020 */  swc1       $f23, 0x20($sp)
/* 68C68 80068068 E7B60024 */  swc1       $f22, 0x24($sp)
/* 68C6C 8006806C E7B50018 */  swc1       $f21, 0x18($sp)
/* 68C70 80068070 E7B4001C */  swc1       $f20, 0x1c($sp)
/* 68C74 80068074 AFA40040 */  sw         $a0, 0x40($sp)
/* 68C78 80068078 11C0000F */  beqz       $t6, .L800680B8
/* 68C7C 8006807C AFA50044 */   sw        $a1, 0x44($sp)
/* 68C80 80068080 00137880 */  sll        $t7, $s3, 2
/* 68C84 80068084 01F37823 */  subu       $t7, $t7, $s3
/* 68C88 80068088 000F7880 */  sll        $t7, $t7, 2
/* 68C8C 8006808C 01F37821 */  addu       $t7, $t7, $s3
/* 68C90 80068090 000F7880 */  sll        $t7, $t7, 2
/* 68C94 80068094 01F37823 */  subu       $t7, $t7, $s3
/* 68C98 80068098 3C18800F */  lui        $t8, %hi(gActors)
/* 68C9C 8006809C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 68CA0 800680A0 000F78C0 */  sll        $t7, $t7, 3
/* 68CA4 800680A4 01F88021 */  addu       $s0, $t7, $t8
/* 68CA8 800680A8 861100AE */  lh         $s1, 0xae($s0)
/* 68CAC 800680AC 24140006 */  addiu      $s4, $zero, 6
/* 68CB0 800680B0 1000000E */  b          .L800680EC
/* 68CB4 800680B4 26310008 */   addiu     $s1, $s1, 8
.L800680B8:
/* 68CB8 800680B8 0013C880 */  sll        $t9, $s3, 2
/* 68CBC 800680BC 0333C823 */  subu       $t9, $t9, $s3
/* 68CC0 800680C0 0019C880 */  sll        $t9, $t9, 2
/* 68CC4 800680C4 0333C821 */  addu       $t9, $t9, $s3
/* 68CC8 800680C8 0019C880 */  sll        $t9, $t9, 2
/* 68CCC 800680CC 0333C823 */  subu       $t9, $t9, $s3
/* 68CD0 800680D0 3C08800F */  lui        $t0, %hi(gActors)
/* 68CD4 800680D4 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 68CD8 800680D8 0019C8C0 */  sll        $t9, $t9, 3
/* 68CDC 800680DC 03288021 */  addu       $s0, $t9, $t0
/* 68CE0 800680E0 861100AE */  lh         $s1, 0xae($s0)
/* 68CE4 800680E4 24140006 */  addiu      $s4, $zero, 6
/* 68CE8 800680E8 26310008 */  addiu      $s1, $s1, 8
.L800680EC:
/* 68CEC 800680EC 3C0141F0 */  lui        $at, 0x41f0
/* 68CF0 800680F0 4481B000 */  mtc1       $at, $f22
/* 68CF4 800680F4 3C014180 */  lui        $at, 0x4180
/* 68CF8 800680F8 4481A000 */  mtc1       $at, $f20
/* 68CFC 800680FC 00000000 */  nop
.L80068100:
/* 68D00 80068100 8609008C */  lh         $t1, 0x8c($s0)
/* 68D04 80068104 86050088 */  lh         $a1, 0x88($s0)
/* 68D08 80068108 3264FFFF */  andi       $a0, $s3, 0xffff
/* 68D0C 8006810C 0C007F28 */  jal        func_8001FCA0
/* 68D10 80068110 01313021 */   addu      $a2, $t1, $s1
/* 68D14 80068114 304A0080 */  andi       $t2, $v0, 0x80
/* 68D18 80068118 15400058 */  bnez       $t2, .L8006827C
/* 68D1C 8006811C 24020001 */   addiu     $v0, $zero, 1
/* 68D20 80068120 860B0088 */  lh         $t3, 0x88($s0)
/* 68D24 80068124 C6040148 */  lwc1       $f4, 0x148($s0)
/* 68D28 80068128 448B4000 */  mtc1       $t3, $f8
/* 68D2C 8006812C 46162182 */  mul.s      $f6, $f4, $f22
/* 68D30 80068130 860D008C */  lh         $t5, 0x8c($s0)
/* 68D34 80068134 3264FFFF */  andi       $a0, $s3, 0xffff
/* 68D38 80068138 01B13021 */  addu       $a2, $t5, $s1
/* 68D3C 8006813C 468042A0 */  cvt.s.w    $f10, $f8
/* 68D40 80068140 460A3400 */  add.s      $f16, $f6, $f10
/* 68D44 80068144 444CF800 */  cfc1       $t4, $31
/* 68D48 80068148 00000000 */  nop
/* 68D4C 8006814C 35810003 */  ori        $at, $t4, 3
/* 68D50 80068150 38210002 */  xori       $at, $at, 2
/* 68D54 80068154 44C1F800 */  ctc1       $at, $31
/* 68D58 80068158 00000000 */  nop
/* 68D5C 8006815C 460084A4 */  cvt.w.s    $f18, $f16
/* 68D60 80068160 44059000 */  mfc1       $a1, $f18
/* 68D64 80068164 44CCF800 */  ctc1       $t4, $31
/* 68D68 80068168 0C007F28 */  jal        func_8001FCA0
/* 68D6C 8006816C 00000000 */   nop
/* 68D70 80068170 860F0088 */  lh         $t7, 0x88($s0)
/* 68D74 80068174 C6040148 */  lwc1       $f4, 0x148($s0)
/* 68D78 80068178 448F3000 */  mtc1       $t7, $f6
/* 68D7C 8006817C 46142202 */  mul.s      $f8, $f4, $f20
/* 68D80 80068180 8619008C */  lh         $t9, 0x8c($s0)
/* 68D84 80068184 00409025 */  or         $s2, $v0, $zero
/* 68D88 80068188 324E0080 */  andi       $t6, $s2, 0x80
/* 68D8C 8006818C 468032A0 */  cvt.s.w    $f10, $f6
/* 68D90 80068190 01C09025 */  or         $s2, $t6, $zero
/* 68D94 80068194 3264FFFF */  andi       $a0, $s3, 0xffff
/* 68D98 80068198 460A4400 */  add.s      $f16, $f8, $f10
/* 68D9C 8006819C 03313021 */  addu       $a2, $t9, $s1
/* 68DA0 800681A0 4458F800 */  cfc1       $t8, $31
/* 68DA4 800681A4 00000000 */  nop
/* 68DA8 800681A8 37010003 */  ori        $at, $t8, 3
/* 68DAC 800681AC 38210002 */  xori       $at, $at, 2
/* 68DB0 800681B0 44C1F800 */  ctc1       $at, $31
/* 68DB4 800681B4 00000000 */  nop
/* 68DB8 800681B8 460084A4 */  cvt.w.s    $f18, $f16
/* 68DBC 800681BC 44059000 */  mfc1       $a1, $f18
/* 68DC0 800681C0 44D8F800 */  ctc1       $t8, $31
/* 68DC4 800681C4 0C007F28 */  jal        func_8001FCA0
/* 68DC8 800681C8 00000000 */   nop
/* 68DCC 800681CC 16400025 */  bnez       $s2, .L80068264
/* 68DD0 800681D0 30490080 */   andi      $t1, $v0, 0x80
/* 68DD4 800681D4 15200024 */  bnez       $t1, .L80068268
/* 68DD8 800681D8 2694FFFF */   addiu     $s4, $s4, -1
/* 68DDC 800681DC 26310014 */  addiu      $s1, $s1, 0x14
/* 68DE0 800681E0 00116100 */  sll        $t4, $s1, 4
/* 68DE4 800681E4 448C2000 */  mtc1       $t4, $f4
/* 68DE8 800681E8 3C014200 */  lui        $at, 0x4200
/* 68DEC 800681EC 468021A0 */  cvt.s.w    $f6, $f4
/* 68DF0 800681F0 44810000 */  mtc1       $at, $f0
/* 68DF4 800681F4 240A0120 */  addiu      $t2, $zero, 0x120
/* 68DF8 800681F8 46060202 */  mul.s      $f8, $f0, $f6
/* 68DFC 800681FC 240B0005 */  addiu      $t3, $zero, 5
/* 68E00 80068200 A60A00D0 */  sh         $t2, 0xd0($s0)
/* 68E04 80068204 AE0B0178 */  sw         $t3, 0x178($s0)
/* 68E08 80068208 46144300 */  add.s      $f12, $f8, $f20
/* 68E0C 8006820C 0C0295C4 */  jal        func_800A5710
/* 68E10 80068210 E6000118 */   swc1      $f0, 0x118($s0)
/* 68E14 80068214 3C014080 */  lui        $at, 0x4080
/* 68E18 80068218 44815000 */  mtc1       $at, $f10
/* 68E1C 8006821C 3C014100 */  lui        $at, 0x4100
/* 68E20 80068220 44819000 */  mtc1       $at, $f18
/* 68E24 80068224 460A0401 */  sub.s      $f16, $f0, $f10
/* 68E28 80068228 3C014688 */  lui        $at, 0x4688
/* 68E2C 8006822C 46128103 */  div.s      $f4, $f16, $f18
/* 68E30 80068230 44813000 */  mtc1       $at, $f6
/* 68E34 80068234 3C0147C0 */  lui        $at, 0x47c0
/* 68E38 80068238 44818000 */  mtc1       $at, $f16
/* 68E3C 8006823C C60A0148 */  lwc1       $f10, 0x148($s0)
/* 68E40 80068240 00001025 */  or         $v0, $zero, $zero
/* 68E44 80068244 46062202 */  mul.s      $f8, $f4, $f6
/* 68E48 80068248 44802000 */  mtc1       $zero, $f4
/* 68E4C 8006824C 00000000 */  nop
/* 68E50 80068250 E6040124 */  swc1       $f4, 0x124($s0)
/* 68E54 80068254 46105482 */  mul.s      $f18, $f10, $f16
/* 68E58 80068258 E608011C */  swc1       $f8, 0x11c($s0)
/* 68E5C 8006825C 10000007 */  b          .L8006827C
/* 68E60 80068260 E6120120 */   swc1      $f18, 0x120($s0)
.L80068264:
/* 68E64 80068264 2694FFFF */  addiu      $s4, $s4, -1
.L80068268:
/* 68E68 80068268 328DFFFF */  andi       $t5, $s4, 0xffff
/* 68E6C 8006826C 01A0A025 */  or         $s4, $t5, $zero
/* 68E70 80068270 1DA0FFA3 */  bgtz       $t5, .L80068100
/* 68E74 80068274 26310010 */   addiu     $s1, $s1, 0x10
/* 68E78 80068278 24020001 */  addiu      $v0, $zero, 1
.L8006827C:
/* 68E7C 8006827C 8FBF003C */  lw         $ra, 0x3c($sp)
/* 68E80 80068280 C7B50018 */  lwc1       $f21, 0x18($sp)
/* 68E84 80068284 C7B4001C */  lwc1       $f20, 0x1c($sp)
/* 68E88 80068288 C7B70020 */  lwc1       $f23, 0x20($sp)
/* 68E8C 8006828C C7B60024 */  lwc1       $f22, 0x24($sp)
/* 68E90 80068290 8FB00028 */  lw         $s0, 0x28($sp)
/* 68E94 80068294 8FB1002C */  lw         $s1, 0x2c($sp)
/* 68E98 80068298 8FB20030 */  lw         $s2, 0x30($sp)
/* 68E9C 8006829C 8FB30034 */  lw         $s3, 0x34($sp)
/* 68EA0 800682A0 8FB40038 */  lw         $s4, 0x38($sp)
/* 68EA4 800682A4 03E00008 */  jr         $ra
/* 68EA8 800682A8 27BD0040 */   addiu     $sp, $sp, 0x40
