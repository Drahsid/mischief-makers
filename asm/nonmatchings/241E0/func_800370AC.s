glabel func_800370AC
/* 37CAC 800370AC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 37CB0 800370B0 AFA40028 */  sw         $a0, 0x28($sp)
/* 37CB4 800370B4 97AE002A */  lhu        $t6, 0x2a($sp)
/* 37CB8 800370B8 AFB1001C */  sw         $s1, 0x1c($sp)
/* 37CBC 800370BC 000E7880 */  sll        $t7, $t6, 2
/* 37CC0 800370C0 01EE7823 */  subu       $t7, $t7, $t6
/* 37CC4 800370C4 000F7880 */  sll        $t7, $t7, 2
/* 37CC8 800370C8 01EE7821 */  addu       $t7, $t7, $t6
/* 37CCC 800370CC 000F7880 */  sll        $t7, $t7, 2
/* 37CD0 800370D0 3C11800F */  lui        $s1, %hi(gActors)
/* 37CD4 800370D4 01EE7823 */  subu       $t7, $t7, $t6
/* 37CD8 800370D8 2631F510 */  addiu      $s1, $s1, %lo(gActors)
/* 37CDC 800370DC AFB00018 */  sw         $s0, 0x18($sp)
/* 37CE0 800370E0 000F78C0 */  sll        $t7, $t7, 3
/* 37CE4 800370E4 022F8021 */  addu       $s0, $s1, $t7
/* 37CE8 800370E8 8E020154 */  lw         $v0, 0x154($s0)
/* 37CEC 800370EC AFBF0024 */  sw         $ra, 0x24($sp)
/* 37CF0 800370F0 04400010 */  bltz       $v0, .L80037134
/* 37CF4 800370F4 AFB20020 */   sw        $s2, 0x20($sp)
/* 37CF8 800370F8 0C00DC1F */  jal        func_8003707C
/* 37CFC 800370FC 3044FFFF */   andi      $a0, $v0, 0xffff
/* 37D00 80037100 96040152 */  lhu        $a0, 0x152($s0)
/* 37D04 80037104 86050156 */  lh         $a1, 0x156($s0)
/* 37D08 80037108 0C00D4B0 */  jal        func_800352C0
/* 37D0C 8003710C 00000000 */   nop
/* 37D10 80037110 8E180150 */  lw         $t8, 0x150($s0)
/* 37D14 80037114 24120198 */  addiu      $s2, $zero, 0x198
/* 37D18 80037118 03120019 */  multu      $t8, $s2
/* 37D1C 8003711C 0000C812 */  mflo       $t9
/* 37D20 80037120 02391821 */  addu       $v1, $s1, $t9
/* 37D24 80037124 8C680170 */  lw         $t0, 0x170($v1)
/* 37D28 80037128 00000000 */  nop
/* 37D2C 8003712C 25090005 */  addiu      $t1, $t0, 5
/* 37D30 80037130 AC690170 */  sw         $t1, 0x170($v1)
.L80037134:
/* 37D34 80037134 8E020158 */  lw         $v0, 0x158($s0)
/* 37D38 80037138 24120198 */  addiu      $s2, $zero, 0x198
/* 37D3C 8003713C 04400010 */  bltz       $v0, .L80037180
/* 37D40 80037140 00000000 */   nop
/* 37D44 80037144 0C00DC1F */  jal        func_8003707C
/* 37D48 80037148 3044FFFF */   andi      $a0, $v0, 0xffff
/* 37D4C 8003714C 96040152 */  lhu        $a0, 0x152($s0)
/* 37D50 80037150 8605015A */  lh         $a1, 0x15a($s0)
/* 37D54 80037154 0C00D4B0 */  jal        func_800352C0
/* 37D58 80037158 00000000 */   nop
/* 37D5C 8003715C 8E0A0150 */  lw         $t2, 0x150($s0)
/* 37D60 80037160 00000000 */  nop
/* 37D64 80037164 01520019 */  multu      $t2, $s2
/* 37D68 80037168 00005812 */  mflo       $t3
/* 37D6C 8003716C 022B1821 */  addu       $v1, $s1, $t3
/* 37D70 80037170 8C6C0170 */  lw         $t4, 0x170($v1)
/* 37D74 80037174 00000000 */  nop
/* 37D78 80037178 258D0005 */  addiu      $t5, $t4, 5
/* 37D7C 8003717C AC6D0170 */  sw         $t5, 0x170($v1)
.L80037180:
/* 37D80 80037180 8E02015C */  lw         $v0, 0x15c($s0)
/* 37D84 80037184 00000000 */  nop
/* 37D88 80037188 04400010 */  bltz       $v0, .L800371CC
/* 37D8C 8003718C 00000000 */   nop
/* 37D90 80037190 0C00DC1F */  jal        func_8003707C
/* 37D94 80037194 3044FFFF */   andi      $a0, $v0, 0xffff
/* 37D98 80037198 96040152 */  lhu        $a0, 0x152($s0)
/* 37D9C 8003719C 8605015E */  lh         $a1, 0x15e($s0)
/* 37DA0 800371A0 0C00D4B0 */  jal        func_800352C0
/* 37DA4 800371A4 00000000 */   nop
/* 37DA8 800371A8 8E0E0150 */  lw         $t6, 0x150($s0)
/* 37DAC 800371AC 00000000 */  nop
/* 37DB0 800371B0 01D20019 */  multu      $t6, $s2
/* 37DB4 800371B4 00007812 */  mflo       $t7
/* 37DB8 800371B8 022F1821 */  addu       $v1, $s1, $t7
/* 37DBC 800371BC 8C780170 */  lw         $t8, 0x170($v1)
/* 37DC0 800371C0 00000000 */  nop
/* 37DC4 800371C4 27190005 */  addiu      $t9, $t8, 5
/* 37DC8 800371C8 AC790170 */  sw         $t9, 0x170($v1)
.L800371CC:
/* 37DCC 800371CC 8E020160 */  lw         $v0, 0x160($s0)
/* 37DD0 800371D0 00000000 */  nop
/* 37DD4 800371D4 04400010 */  bltz       $v0, .L80037218
/* 37DD8 800371D8 00000000 */   nop
/* 37DDC 800371DC 0C00DC1F */  jal        func_8003707C
/* 37DE0 800371E0 3044FFFF */   andi      $a0, $v0, 0xffff
/* 37DE4 800371E4 96040152 */  lhu        $a0, 0x152($s0)
/* 37DE8 800371E8 86050162 */  lh         $a1, 0x162($s0)
/* 37DEC 800371EC 0C00D4B0 */  jal        func_800352C0
/* 37DF0 800371F0 00000000 */   nop
/* 37DF4 800371F4 8E080150 */  lw         $t0, 0x150($s0)
/* 37DF8 800371F8 00000000 */  nop
/* 37DFC 800371FC 01120019 */  multu      $t0, $s2
/* 37E00 80037200 00004812 */  mflo       $t1
/* 37E04 80037204 02291821 */  addu       $v1, $s1, $t1
/* 37E08 80037208 8C6A0170 */  lw         $t2, 0x170($v1)
/* 37E0C 8003720C 00000000 */  nop
/* 37E10 80037210 254B0005 */  addiu      $t3, $t2, 5
/* 37E14 80037214 AC6B0170 */  sw         $t3, 0x170($v1)
.L80037218:
/* 37E18 80037218 8E020164 */  lw         $v0, 0x164($s0)
/* 37E1C 8003721C 00000000 */  nop
/* 37E20 80037220 04400010 */  bltz       $v0, .L80037264
/* 37E24 80037224 00000000 */   nop
/* 37E28 80037228 0C00DC1F */  jal        func_8003707C
/* 37E2C 8003722C 3044FFFF */   andi      $a0, $v0, 0xffff
/* 37E30 80037230 96040152 */  lhu        $a0, 0x152($s0)
/* 37E34 80037234 86050166 */  lh         $a1, 0x166($s0)
/* 37E38 80037238 0C00D4B0 */  jal        func_800352C0
/* 37E3C 8003723C 00000000 */   nop
/* 37E40 80037240 8E0C0150 */  lw         $t4, 0x150($s0)
/* 37E44 80037244 00000000 */  nop
/* 37E48 80037248 01920019 */  multu      $t4, $s2
/* 37E4C 8003724C 00006812 */  mflo       $t5
/* 37E50 80037250 022D1821 */  addu       $v1, $s1, $t5
/* 37E54 80037254 8C6E0170 */  lw         $t6, 0x170($v1)
/* 37E58 80037258 00000000 */  nop
/* 37E5C 8003725C 25CF0005 */  addiu      $t7, $t6, 5
/* 37E60 80037260 AC6F0170 */  sw         $t7, 0x170($v1)
.L80037264:
/* 37E64 80037264 8E020168 */  lw         $v0, 0x168($s0)
/* 37E68 80037268 00000000 */  nop
/* 37E6C 8003726C 04400010 */  bltz       $v0, .L800372B0
/* 37E70 80037270 00000000 */   nop
/* 37E74 80037274 0C00DC1F */  jal        func_8003707C
/* 37E78 80037278 3044FFFF */   andi      $a0, $v0, 0xffff
/* 37E7C 8003727C 96040152 */  lhu        $a0, 0x152($s0)
/* 37E80 80037280 8605016A */  lh         $a1, 0x16a($s0)
/* 37E84 80037284 0C00D4B0 */  jal        func_800352C0
/* 37E88 80037288 00000000 */   nop
/* 37E8C 8003728C 8E180150 */  lw         $t8, 0x150($s0)
/* 37E90 80037290 00000000 */  nop
/* 37E94 80037294 03120019 */  multu      $t8, $s2
/* 37E98 80037298 0000C812 */  mflo       $t9
/* 37E9C 8003729C 02391821 */  addu       $v1, $s1, $t9
/* 37EA0 800372A0 8C680170 */  lw         $t0, 0x170($v1)
/* 37EA4 800372A4 00000000 */  nop
/* 37EA8 800372A8 25090005 */  addiu      $t1, $t0, 5
/* 37EAC 800372AC AC690170 */  sw         $t1, 0x170($v1)
.L800372B0:
/* 37EB0 800372B0 8E0A0174 */  lw         $t2, 0x174($s0)
/* 37EB4 800372B4 00000000 */  nop
/* 37EB8 800372B8 314B0100 */  andi       $t3, $t2, 0x100
/* 37EBC 800372BC 11600028 */  beqz       $t3, .L80037360
/* 37EC0 800372C0 00000000 */   nop
/* 37EC4 800372C4 8E0C0150 */  lw         $t4, 0x150($s0)
/* 37EC8 800372C8 97A4002A */  lhu        $a0, 0x2a($sp)
/* 37ECC 800372CC 01920019 */  multu      $t4, $s2
/* 37ED0 800372D0 00006812 */  mflo       $t5
/* 37ED4 800372D4 022D1821 */  addu       $v1, $s1, $t5
/* 37ED8 800372D8 8C6E0170 */  lw         $t6, 0x170($v1)
/* 37EDC 800372DC 0C00D4E5 */  jal        func_80035394
/* 37EE0 800372E0 AC6E0178 */   sw        $t6, 0x178($v1)
/* 37EE4 800372E4 97A5002A */  lhu        $a1, 0x2a($sp)
/* 37EE8 800372E8 0C000DB2 */  jal        func_800036C8
/* 37EEC 800372EC 24040130 */   addiu     $a0, $zero, 0x130
/* 37EF0 800372F0 8E0F0150 */  lw         $t7, 0x150($s0)
/* 37EF4 800372F4 3C013F80 */  lui        $at, 0x3f80
/* 37EF8 800372F8 01F20019 */  multu      $t7, $s2
/* 37EFC 800372FC 44816000 */  mtc1       $at, $f12
/* 37F00 80037300 86070090 */  lh         $a3, 0x90($s0)
/* 37F04 80037304 0000C012 */  mflo       $t8
/* 37F08 80037308 02381821 */  addu       $v1, $s1, $t8
/* 37F0C 8003730C 8466008C */  lh         $a2, 0x8c($v1)
/* 37F10 80037310 84650088 */  lh         $a1, 0x88($v1)
/* 37F14 80037314 24C60022 */  addiu      $a2, $a2, 0x22
/* 37F18 80037318 0006CC00 */  sll        $t9, $a2, 0x10
/* 37F1C 8003731C 0C00FF93 */  jal        func_8003FE4C
/* 37F20 80037320 00193403 */   sra       $a2, $t9, 0x10
/* 37F24 80037324 8E090150 */  lw         $t1, 0x150($s0)
/* 37F28 80037328 3C01BF00 */  lui        $at, 0xbf00
/* 37F2C 8003732C 01320019 */  multu      $t1, $s2
/* 37F30 80037330 44816000 */  mtc1       $at, $f12
/* 37F34 80037334 86070090 */  lh         $a3, 0x90($s0)
/* 37F38 80037338 00005012 */  mflo       $t2
/* 37F3C 8003733C 022A1821 */  addu       $v1, $s1, $t2
/* 37F40 80037340 8466008C */  lh         $a2, 0x8c($v1)
/* 37F44 80037344 84650088 */  lh         $a1, 0x88($v1)
/* 37F48 80037348 24C60022 */  addiu      $a2, $a2, 0x22
/* 37F4C 8003734C 00065C00 */  sll        $t3, $a2, 0x10
/* 37F50 80037350 0C00FF93 */  jal        func_8003FE4C
/* 37F54 80037354 000B3403 */   sra       $a2, $t3, 0x10
/* 37F58 80037358 1000005A */  b          .L800374C4
/* 37F5C 8003735C 8FBF0024 */   lw        $ra, 0x24($sp)
.L80037360:
/* 37F60 80037360 8E0D0150 */  lw         $t5, 0x150($s0)
/* 37F64 80037364 00000000 */  nop
/* 37F68 80037368 01B20019 */  multu      $t5, $s2
/* 37F6C 8003736C 3C0D800D */  lui        $t5, %hi(D_800D22BC)
/* 37F70 80037370 25AD22BC */  addiu      $t5, $t5, %lo(D_800D22BC)
/* 37F74 80037374 00007012 */  mflo       $t6
/* 37F78 80037378 022E1821 */  addu       $v1, $s1, $t6
/* 37F7C 8003737C 8C6F0170 */  lw         $t7, 0x170($v1)
/* 37F80 80037380 00000000 */  nop
/* 37F84 80037384 25F8FFFB */  addiu      $t8, $t7, -5
/* 37F88 80037388 AC780170 */  sw         $t8, 0x170($v1)
/* 37F8C 8003738C 8E190150 */  lw         $t9, 0x150($s0)
/* 37F90 80037390 00000000 */  nop
/* 37F94 80037394 03320019 */  multu      $t9, $s2
/* 37F98 80037398 00004012 */  mflo       $t0
/* 37F9C 8003739C 02281821 */  addu       $v1, $s1, $t0
/* 37FA0 800373A0 8C690170 */  lw         $t1, 0x170($v1)
/* 37FA4 800373A4 00000000 */  nop
/* 37FA8 800373A8 AC690178 */  sw         $t1, 0x178($v1)
/* 37FAC 800373AC 8E050150 */  lw         $a1, 0x150($s0)
/* 37FB0 800373B0 8E0E0174 */  lw         $t6, 0x174($s0)
/* 37FB4 800373B4 00B20019 */  multu      $a1, $s2
/* 37FB8 800373B8 8E0F0178 */  lw         $t7, 0x178($s0)
/* 37FBC 800373BC 8E18017C */  lw         $t8, 0x17c($s0)
/* 37FC0 800373C0 8E190180 */  lw         $t9, 0x180($s0)
/* 37FC4 800373C4 8E080184 */  lw         $t0, 0x184($s0)
/* 37FC8 800373C8 30A4FFFF */  andi       $a0, $a1, 0xffff
/* 37FCC 800373CC 00005012 */  mflo       $t2
/* 37FD0 800373D0 022A5821 */  addu       $t3, $s1, $t2
/* 37FD4 800373D4 95660172 */  lhu        $a2, 0x172($t3)
/* 37FD8 800373D8 00000000 */  nop
/* 37FDC 800373DC 00066040 */  sll        $t4, $a2, 1
/* 37FE0 800373E0 018D1021 */  addu       $v0, $t4, $t5
/* 37FE4 800373E4 A44E0000 */  sh         $t6, ($v0)
/* 37FE8 800373E8 A44F0002 */  sh         $t7, 2($v0)
/* 37FEC 800373EC A4580004 */  sh         $t8, 4($v0)
/* 37FF0 800373F0 A4590006 */  sh         $t9, 6($v0)
/* 37FF4 800373F4 0C00D9B9 */  jal        func_800366E4
/* 37FF8 800373F8 A4480008 */   sh        $t0, 8($v0)
/* 37FFC 800373FC 10400013 */  beqz       $v0, .L8003744C
/* 38000 80037400 00024880 */   sll       $t1, $v0, 2
/* 38004 80037404 01224823 */  subu       $t1, $t1, $v0
/* 38008 80037408 00094880 */  sll        $t1, $t1, 2
/* 3800C 8003740C 01224821 */  addu       $t1, $t1, $v0
/* 38010 80037410 00094880 */  sll        $t1, $t1, 2
/* 38014 80037414 01224823 */  subu       $t1, $t1, $v0
/* 38018 80037418 000948C0 */  sll        $t1, $t1, 3
/* 3801C 8003741C 02291821 */  addu       $v1, $s1, $t1
/* 38020 80037420 240A002F */  addiu      $t2, $zero, 0x2f
/* 38024 80037424 A46A00D0 */  sh         $t2, 0xd0($v1)
/* 38028 80037428 8E0B0150 */  lw         $t3, 0x150($s0)
/* 3802C 8003742C 846F008C */  lh         $t7, 0x8c($v1)
/* 38030 80037430 01720019 */  multu      $t3, $s2
/* 38034 80037434 25F80010 */  addiu      $t8, $t7, 0x10
/* 38038 80037438 00006012 */  mflo       $t4
/* 3803C 8003743C 022C6821 */  addu       $t5, $s1, $t4
/* 38040 80037440 85AE0088 */  lh         $t6, 0x88($t5)
/* 38044 80037444 A478008C */  sh         $t8, 0x8c($v1)
/* 38048 80037448 A46E0088 */  sh         $t6, 0x88($v1)
.L8003744C:
/* 3804C 8003744C 97A5002A */  lhu        $a1, 0x2a($sp)
/* 38050 80037450 0C000DB2 */  jal        func_800036C8
/* 38054 80037454 240400E3 */   addiu     $a0, $zero, 0xe3
/* 38058 80037458 8E190150 */  lw         $t9, 0x150($s0)
/* 3805C 8003745C 3C013F80 */  lui        $at, 0x3f80
/* 38060 80037460 03320019 */  multu      $t9, $s2
/* 38064 80037464 44816000 */  mtc1       $at, $f12
/* 38068 80037468 86070090 */  lh         $a3, 0x90($s0)
/* 3806C 8003746C 00004012 */  mflo       $t0
/* 38070 80037470 02281821 */  addu       $v1, $s1, $t0
/* 38074 80037474 8466008C */  lh         $a2, 0x8c($v1)
/* 38078 80037478 84650088 */  lh         $a1, 0x88($v1)
/* 3807C 8003747C 24C60022 */  addiu      $a2, $a2, 0x22
/* 38080 80037480 00064C00 */  sll        $t1, $a2, 0x10
/* 38084 80037484 0C00FF93 */  jal        func_8003FE4C
/* 38088 80037488 00093403 */   sra       $a2, $t1, 0x10
/* 3808C 8003748C 8E0B0150 */  lw         $t3, 0x150($s0)
/* 38090 80037490 3C01BF00 */  lui        $at, 0xbf00
/* 38094 80037494 01720019 */  multu      $t3, $s2
/* 38098 80037498 44816000 */  mtc1       $at, $f12
/* 3809C 8003749C 86070090 */  lh         $a3, 0x90($s0)
/* 380A0 800374A0 00006012 */  mflo       $t4
/* 380A4 800374A4 022C1821 */  addu       $v1, $s1, $t4
/* 380A8 800374A8 8466008C */  lh         $a2, 0x8c($v1)
/* 380AC 800374AC 84650088 */  lh         $a1, 0x88($v1)
/* 380B0 800374B0 24C60022 */  addiu      $a2, $a2, 0x22
/* 380B4 800374B4 00066C00 */  sll        $t5, $a2, 0x10
/* 380B8 800374B8 0C00FF93 */  jal        func_8003FE4C
/* 380BC 800374BC 000D3403 */   sra       $a2, $t5, 0x10
/* 380C0 800374C0 8FBF0024 */  lw         $ra, 0x24($sp)
.L800374C4:
/* 380C4 800374C4 8FB00018 */  lw         $s0, 0x18($sp)
/* 380C8 800374C8 8FB1001C */  lw         $s1, 0x1c($sp)
/* 380CC 800374CC 8FB20020 */  lw         $s2, 0x20($sp)
/* 380D0 800374D0 03E00008 */  jr         $ra
/* 380D4 800374D4 27BD0028 */   addiu     $sp, $sp, 0x28