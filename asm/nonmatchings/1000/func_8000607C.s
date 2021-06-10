glabel func_8000607C
/* 6C7C 8000607C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 6C80 80006080 AFA40028 */  sw         $a0, 0x28($sp)
/* 6C84 80006084 97A3002A */  lhu        $v1, 0x2a($sp)
/* 6C88 80006088 3C0F800F */  lui        $t7, 0x800f
/* 6C8C 8000608C 00037080 */  sll        $t6, $v1, 2
/* 6C90 80006090 01C37023 */  subu       $t6, $t6, $v1
/* 6C94 80006094 000E7080 */  sll        $t6, $t6, 2
/* 6C98 80006098 01C37021 */  addu       $t6, $t6, $v1
/* 6C9C 8000609C 000E7080 */  sll        $t6, $t6, 2
/* 6CA0 800060A0 01C37023 */  subu       $t6, $t6, $v1
/* 6CA4 800060A4 000E70C0 */  sll        $t6, $t6, 3
/* 6CA8 800060A8 25EFF510 */  addiu      $t7, $t7, -0xaf0
/* 6CAC 800060AC 01CF1021 */  addu       $v0, $t6, $t7
/* 6CB0 800060B0 24640003 */  addiu      $a0, $v1, 3
/* 6CB4 800060B4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 6CB8 800060B8 2408FFE0 */  addiu      $t0, $zero, -0x20
/* 6CBC 800060BC 24090010 */  addiu      $t1, $zero, 0x10
/* 6CC0 800060C0 3098FFFF */  andi       $t8, $a0, 0xffff
/* 6CC4 800060C4 3C05800C */  lui        $a1, 0x800c
/* 6CC8 800060C8 24190080 */  addiu      $t9, $zero, 0x80
/* 6CCC 800060CC 240A0080 */  addiu      $t2, $zero, 0x80
/* 6CD0 800060D0 A4480088 */  sh         $t0, 0x88($v0)
/* 6CD4 800060D4 A449008C */  sh         $t1, 0x8c($v0)
/* 6CD8 800060D8 A4480220 */  sh         $t0, 0x220($v0)
/* 6CDC 800060DC A4490224 */  sh         $t1, 0x224($v0)
/* 6CE0 800060E0 AFAA001C */  sw         $t2, 0x1c($sp)
/* 6CE4 800060E4 AFB90014 */  sw         $t9, 0x14($sp)
/* 6CE8 800060E8 24A55210 */  addiu      $a1, $a1, 0x5210
/* 6CEC 800060EC 03002025 */  or         $a0, $t8, $zero
/* 6CF0 800060F0 AFA00010 */  sw         $zero, 0x10($sp)
/* 6CF4 800060F4 AFA00018 */  sw         $zero, 0x18($sp)
/* 6CF8 800060F8 3406FFE0 */  ori        $a2, $zero, 0xffe0
/* 6CFC 800060FC 0C009F10 */  jal        func_80027C40
/* 6D00 80006100 24070058 */   addiu     $a3, $zero, 0x58
/* 6D04 80006104 00025880 */  sll        $t3, $v0, 2
/* 6D08 80006108 01625823 */  subu       $t3, $t3, $v0
/* 6D0C 8000610C 000B5880 */  sll        $t3, $t3, 2
/* 6D10 80006110 01625821 */  addu       $t3, $t3, $v0
/* 6D14 80006114 000B5880 */  sll        $t3, $t3, 2
/* 6D18 80006118 01625823 */  subu       $t3, $t3, $v0
/* 6D1C 8000611C 3C0C800F */  lui        $t4, %hi(D_800EF510)
/* 6D20 80006120 258CF510 */  addiu      $t4, $t4, %lo(D_800EF510)
/* 6D24 80006124 000B58C0 */  sll        $t3, $t3, 3
/* 6D28 80006128 016C1821 */  addu       $v1, $t3, $t4
/* 6D2C 8000612C 846DFA28 */  lh         $t5, -0x5d8($v1)
/* 6D30 80006130 846FFBC0 */  lh         $t7, -0x440($v1)
/* 6D34 80006134 25AEFFF8 */  addiu      $t6, $t5, -8
/* 6D38 80006138 8479FD58 */  lh         $t9, -0x2a8($v1)
/* 6D3C 8000613C 846BFEF0 */  lh         $t3, -0x110($v1)
/* 6D40 80006140 A46EFA28 */  sh         $t6, -0x5d8($v1)
/* 6D44 80006144 240E0080 */  addiu      $t6, $zero, 0x80
/* 6D48 80006148 240D0080 */  addiu      $t5, $zero, 0x80
/* 6D4C 8000614C 3C05800C */  lui        $a1, 0x800c
/* 6D50 80006150 25F8FFF8 */  addiu      $t8, $t7, -8
/* 6D54 80006154 272AFFF0 */  addiu      $t2, $t9, -0x10
/* 6D58 80006158 256CFFF0 */  addiu      $t4, $t3, -0x10
/* 6D5C 8000615C A478FBC0 */  sh         $t8, -0x440($v1)
/* 6D60 80006160 A46AFD58 */  sh         $t2, -0x2a8($v1)
/* 6D64 80006164 A46CFEF0 */  sh         $t4, -0x110($v1)
/* 6D68 80006168 24A552C8 */  addiu      $a1, $a1, 0x52c8
/* 6D6C 8000616C AFAD0014 */  sw         $t5, 0x14($sp)
/* 6D70 80006170 AFAE001C */  sw         $t6, 0x1c($sp)
/* 6D74 80006174 3044FFFF */  andi       $a0, $v0, 0xffff
/* 6D78 80006178 3406FF90 */  ori        $a2, $zero, 0xff90
/* 6D7C 8000617C 24070030 */  addiu      $a3, $zero, 0x30
/* 6D80 80006180 AFA00010 */  sw         $zero, 0x10($sp)
/* 6D84 80006184 0C009F10 */  jal        func_80027C40
/* 6D88 80006188 AFA00018 */   sw        $zero, 0x18($sp)
/* 6D8C 8000618C 3C018017 */  lui        $at, %hi(D_80171B1A)
/* 6D90 80006190 3C05800C */  lui        $a1, 0x800c
/* 6D94 80006194 240F0040 */  addiu      $t7, $zero, 0x40
/* 6D98 80006198 24180020 */  addiu      $t8, $zero, 0x20
/* 6D9C 8000619C 241900FF */  addiu      $t9, $zero, 0xff
/* 6DA0 800061A0 A4221B1A */  sh         $v0, %lo(D_80171B1A)($at)
/* 6DA4 800061A4 AFB9001C */  sw         $t9, 0x1c($sp)
/* 6DA8 800061A8 AFB80018 */  sw         $t8, 0x18($sp)
/* 6DAC 800061AC AFAF0014 */  sw         $t7, 0x14($sp)
/* 6DB0 800061B0 24A54FE8 */  addiu      $a1, $a1, 0x4fe8
/* 6DB4 800061B4 3044FFFF */  andi       $a0, $v0, 0xffff
/* 6DB8 800061B8 3406FFE0 */  ori        $a2, $zero, 0xffe0
/* 6DBC 800061BC 24070030 */  addiu      $a3, $zero, 0x30
/* 6DC0 800061C0 0C009F10 */  jal        func_80027C40
/* 6DC4 800061C4 AFA00010 */   sw        $zero, 0x10($sp)
/* 6DC8 800061C8 3C018017 */  lui        $at, %hi(D_80171B1C)
/* 6DCC 800061CC 3C05800C */  lui        $a1, 0x800c
/* 6DD0 800061D0 240A0080 */  addiu      $t2, $zero, 0x80
/* 6DD4 800061D4 240B0080 */  addiu      $t3, $zero, 0x80
/* 6DD8 800061D8 A4221B1C */  sh         $v0, %lo(D_80171B1C)($at)
/* 6DDC 800061DC AFAB001C */  sw         $t3, 0x1c($sp)
/* 6DE0 800061E0 AFAA0014 */  sw         $t2, 0x14($sp)
/* 6DE4 800061E4 24A552D4 */  addiu      $a1, $a1, 0x52d4
/* 6DE8 800061E8 3044FFFF */  andi       $a0, $v0, 0xffff
/* 6DEC 800061EC 3406FF8A */  ori        $a2, $zero, 0xff8a
/* 6DF0 800061F0 24070010 */  addiu      $a3, $zero, 0x10
/* 6DF4 800061F4 AFA00010 */  sw         $zero, 0x10($sp)
/* 6DF8 800061F8 0C009F10 */  jal        func_80027C40
/* 6DFC 800061FC AFA00018 */   sw        $zero, 0x18($sp)
/* 6E00 80006200 00026080 */  sll        $t4, $v0, 2
/* 6E04 80006204 01826023 */  subu       $t4, $t4, $v0
/* 6E08 80006208 000C6080 */  sll        $t4, $t4, 2
/* 6E0C 8000620C 01826021 */  addu       $t4, $t4, $v0
/* 6E10 80006210 000C6080 */  sll        $t4, $t4, 2
/* 6E14 80006214 01826023 */  subu       $t4, $t4, $v0
/* 6E18 80006218 3C0D800F */  lui        $t5, %hi(D_800EF510)
/* 6E1C 8000621C 25ADF510 */  addiu      $t5, $t5, %lo(D_800EF510)
/* 6E20 80006220 000C60C0 */  sll        $t4, $t4, 3
/* 6E24 80006224 018D1821 */  addu       $v1, $t4, $t5
/* 6E28 80006228 846EFBC0 */  lh         $t6, -0x440($v1)
/* 6E2C 8000622C 8478FD58 */  lh         $t8, -0x2a8($v1)
/* 6E30 80006230 846AFEF0 */  lh         $t2, -0x110($v1)
/* 6E34 80006234 25CFFFF8 */  addiu      $t7, $t6, -8
/* 6E38 80006238 2719FFF8 */  addiu      $t9, $t8, -8
/* 6E3C 8000623C 254BFFF0 */  addiu      $t3, $t2, -0x10
/* 6E40 80006240 A46FFBC0 */  sh         $t7, -0x440($v1)
/* 6E44 80006244 A479FD58 */  sh         $t9, -0x2a8($v1)
/* 6E48 80006248 A46BFEF0 */  sh         $t3, -0x110($v1)
/* 6E4C 8000624C 3C018017 */  lui        $at, %hi(D_80171B1E)
/* 6E50 80006250 240E00FF */  addiu      $t6, $zero, 0xff
/* 6E54 80006254 240D0020 */  addiu      $t5, $zero, 0x20
/* 6E58 80006258 240C0040 */  addiu      $t4, $zero, 0x40
/* 6E5C 8000625C 3C05800C */  lui        $a1, %hi(D_800C52E4)
/* 6E60 80006260 A4221B1E */  sh         $v0, %lo(D_80171B1E)($at)
/* 6E64 80006264 24A552E4 */  addiu      $a1, $a1, %lo(D_800C52E4)
/* 6E68 80006268 AFAC0014 */  sw         $t4, 0x14($sp)
/* 6E6C 8000626C AFAD0018 */  sw         $t5, 0x18($sp)
/* 6E70 80006270 AFAE001C */  sw         $t6, 0x1c($sp)
/* 6E74 80006274 3044FFFF */  andi       $a0, $v0, 0xffff
/* 6E78 80006278 3406FFE0 */  ori        $a2, $zero, 0xffe0
/* 6E7C 8000627C 24070010 */  addiu      $a3, $zero, 0x10
/* 6E80 80006280 0C009F10 */  jal        func_80027C40
/* 6E84 80006284 AFA00010 */   sw        $zero, 0x10($sp)
/* 6E88 80006288 3C05800C */  lui        $a1, 0x800c
/* 6E8C 8000628C 240F0040 */  addiu      $t7, $zero, 0x40
/* 6E90 80006290 24180020 */  addiu      $t8, $zero, 0x20
/* 6E94 80006294 241900FF */  addiu      $t9, $zero, 0xff
/* 6E98 80006298 AFB9001C */  sw         $t9, 0x1c($sp)
/* 6E9C 8000629C AFB80018 */  sw         $t8, 0x18($sp)
/* 6EA0 800062A0 AFAF0014 */  sw         $t7, 0x14($sp)
/* 6EA4 800062A4 24A552E8 */  addiu      $a1, $a1, 0x52e8
/* 6EA8 800062A8 3044FFFF */  andi       $a0, $v0, 0xffff
/* 6EAC 800062AC 00003025 */  or         $a2, $zero, $zero
/* 6EB0 800062B0 24070010 */  addiu      $a3, $zero, 0x10
/* 6EB4 800062B4 0C009F10 */  jal        func_80027C40
/* 6EB8 800062B8 AFA00010 */   sw        $zero, 0x10($sp)
/* 6EBC 800062BC 3C05800C */  lui        $a1, %hi(D_800C52EC)
/* 6EC0 800062C0 240A0080 */  addiu      $t2, $zero, 0x80
/* 6EC4 800062C4 240B0080 */  addiu      $t3, $zero, 0x80
/* 6EC8 800062C8 AFAB001C */  sw         $t3, 0x1c($sp)
/* 6ECC 800062CC AFAA0014 */  sw         $t2, 0x14($sp)
/* 6ED0 800062D0 24A552EC */  addiu      $a1, $a1, %lo(D_800C52EC)
/* 6ED4 800062D4 3044FFFF */  andi       $a0, $v0, 0xffff
/* 6ED8 800062D8 3406FF98 */  ori        $a2, $zero, 0xff98
/* 6EDC 800062DC 3407FFF0 */  ori        $a3, $zero, 0xfff0
/* 6EE0 800062E0 AFA00010 */  sw         $zero, 0x10($sp)
/* 6EE4 800062E4 0C009F10 */  jal        func_80027C40
/* 6EE8 800062E8 AFA00018 */   sw        $zero, 0x18($sp)
/* 6EEC 800062EC 3C05800C */  lui        $a1, %hi(D_800C52F4)
/* 6EF0 800062F0 240C0080 */  addiu      $t4, $zero, 0x80
/* 6EF4 800062F4 AFAC0014 */  sw         $t4, 0x14($sp)
/* 6EF8 800062F8 24A552F4 */  addiu      $a1, $a1, %lo(D_800C52F4)
/* 6EFC 800062FC 3044FFFF */  andi       $a0, $v0, 0xffff
/* 6F00 80006300 3406FFF6 */  ori        $a2, $zero, 0xfff6
/* 6F04 80006304 3407FFEF */  ori        $a3, $zero, 0xffef
/* 6F08 80006308 AFA00010 */  sw         $zero, 0x10($sp)
/* 6F0C 8000630C AFA00018 */  sw         $zero, 0x18($sp)
/* 6F10 80006310 0C009F10 */  jal        func_80027C40
/* 6F14 80006314 AFA0001C */   sw        $zero, 0x1c($sp)
/* 6F18 80006318 3C018010 */  lui        $at, %hi(D_80101958)
/* 6F1C 8000631C A0221958 */  sb         $v0, %lo(D_80101958)($at)
/* 6F20 80006320 3C05800C */  lui        $a1, %hi(D_800C5004)
/* 6F24 80006324 3C0D800D */  lui        $t5, %hi(D_800D17A0)
/* 6F28 80006328 3C018017 */  lui        $at, %hi(D_80171B20)
/* 6F2C 8000632C 25AD17A0 */  addiu      $t5, $t5, %lo(D_800D17A0)
/* 6F30 80006330 90A55004 */  lbu        $a1, %lo(D_800C5004)($a1)
/* 6F34 80006334 A4221B20 */  sh         $v0, %lo(D_80171B20)($at)
/* 6F38 80006338 AFAD0014 */  sw         $t5, 0x14($sp)
/* 6F3C 8000633C 3044FFFF */  andi       $a0, $v0, 0xffff
/* 6F40 80006340 3406FFE0 */  ori        $a2, $zero, 0xffe0
/* 6F44 80006344 3407FFF0 */  ori        $a3, $zero, 0xfff0
/* 6F48 80006348 0C009E00 */  jal        func_80027800
/* 6F4C 8000634C AFA00010 */   sw        $zero, 0x10($sp)
/* 6F50 80006350 8FBF0024 */  lw         $ra, 0x24($sp)
/* 6F54 80006354 27BD0028 */  addiu      $sp, $sp, 0x28
/* 6F58 80006358 03E00008 */  jr         $ra
/* 6F5C 8000635C 00000000 */   nop
